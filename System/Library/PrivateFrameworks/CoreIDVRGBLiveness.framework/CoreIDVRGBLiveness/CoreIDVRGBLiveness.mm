void *sub_2456E0180@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2456E01B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_245748700();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2456E01DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456E0214()
{
  v1 = sub_245747C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2456E02E0(uint64_t a1, int a2)
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

uint64_t sub_2456E0300(uint64_t result, int a2, int a3)
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

uint64_t sub_2456E0370()
{
  v1 = sub_245747C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_2456E0478()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2456E04B0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2456E04F8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2456E0530()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456E0580()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456E05B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456E0608()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2456E07A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456E07E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2456E0840()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2456E0888()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2456E08D0()
{
  v1 = sub_245747C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2456E09A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2456E0A68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2456E0F70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_245710320(v4);
}

uint64_t sub_2456E0FBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_24570FC54(v4);
}

void sub_2456E1080(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_24570E8B8(v2);
}

uint64_t sub_2456E1120()
{
  MEMORY[0x245D71370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456E115C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2456E119C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2456E11F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE250B8, &qword_24574C308);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2456E1288()
{
  MEMORY[0x245D71370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456E12C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456E12F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456E1330@<X0>(uint64_t a1@<X8>)
{
  result = RGBLivenessConfig.imageWidth.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2456E1364(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 24) = *result;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_2456E1378@<X0>(uint64_t a1@<X8>)
{
  result = RGBLivenessConfig.imageHeight.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2456E13AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 40) = *result;
  *(a2 + 48) = v2;
  return result;
}

uint64_t sub_2456E13C0@<X0>(void *a1@<X8>)
{
  result = RGBLivenessConfig.imageCompressionQuality.getter();
  *a1 = v3;
  return result;
}

void *sub_2456E13EC(void *result, uint64_t a2)
{
  *(a2 + 56) = *result;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_2456E13FC@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureTypes.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2456E1428(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 88);

  *(a2 + 88) = v3;
  return result;
}

unint64_t sub_2456E146C@<X0>(unint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.minRequiredGesturesCount.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1498(void *result, uint64_t a2)
{
  *(a2 + 96) = *result;
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_2456E14A8@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureSkipSoftTimeout.getter();
  *a1 = result;
  return result;
}

void *sub_2456E14D4(void *result, uint64_t a2)
{
  *(a2 + 112) = *result;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_2456E14E4@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureSkipSoftAccessible.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1510(void *result, uint64_t a2)
{
  *(a2 + 128) = *result;
  *(a2 + 136) = 0;
  return result;
}

uint64_t sub_2456E1520@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureSkipHardTimeout.getter();
  *a1 = result;
  return result;
}

void *sub_2456E154C(void *result, uint64_t a2)
{
  *(a2 + 144) = *result;
  *(a2 + 152) = 0;
  return result;
}

uint64_t sub_2456E155C@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureSkipHardAccessible.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1588(void *result, uint64_t a2)
{
  *(a2 + 160) = *result;
  *(a2 + 168) = 0;
  return result;
}

uint64_t sub_2456E1598@<X0>(uint64_t a1@<X8>)
{
  result = RGBLivenessActiveConfig.maxRetakeCount.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_2456E15C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 192) = *result;
  *(a2 + 200) = v2;
  return result;
}

uint64_t sub_2456E15DC@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.sessionTimeout.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1608(void *result, uint64_t a2)
{
  *(a2 + 176) = *result;
  *(a2 + 184) = 0;
  return result;
}

uint64_t sub_2456E1618@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.faceOutOfBoundFrames.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1644(void *result, uint64_t a2)
{
  *(a2 + 208) = *result;
  *(a2 + 216) = 0;
  return result;
}

uint64_t sub_2456E1654@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureCompletionDelay.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1680(void *result, uint64_t a2)
{
  *(a2 + 224) = *result;
  *(a2 + 232) = 0;
  return result;
}

uint64_t sub_2456E1690@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.tutorialVideoDelay.getter();
  *a1 = result;
  return result;
}

void *sub_2456E16BC(void *result, uint64_t a2)
{
  *(a2 + 240) = *result;
  *(a2 + 248) = 0;
  return result;
}

uint64_t sub_2456E16CC@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.tutorialVideoDuration.getter();
  *a1 = result;
  return result;
}

void *sub_2456E16F8(void *result, uint64_t a2)
{
  *(a2 + 256) = *result;
  *(a2 + 264) = 0;
  return result;
}

uint64_t sub_2456E1708@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.tutorialResumeDelay.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1734(void *result, uint64_t a2)
{
  *(a2 + 272) = *result;
  *(a2 + 280) = 0;
  return result;
}

uint64_t sub_2456E1744@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureDetectedSuccessDuration.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1770(void *result, uint64_t a2)
{
  *(a2 + 288) = *result;
  *(a2 + 296) = 0;
  return result;
}

uint64_t sub_2456E1780@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.lastGestureExtraFrameDuration.getter();
  *a1 = result;
  return result;
}

void *sub_2456E17AC(void *result, uint64_t a2)
{
  *(a2 + 304) = *result;
  *(a2 + 312) = 0;
  return result;
}

uint64_t sub_2456E17BC@<X0>(uint64_t a1@<X8>)
{
  result = RGBLivenessPassiveConfig.maxRetakeCount.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_2456E17EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 40) = *result;
  *(a2 + 48) = v2;
  return result;
}

uint64_t sub_2456E1800@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessPassiveConfig.sessionTimeout.getter();
  *a1 = result;
  return result;
}

void *sub_2456E182C(void *result, uint64_t a2)
{
  *(a2 + 56) = *result;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_2456E183C@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessPassiveConfig.faceOutOfBoundFrames.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1868(void *result, uint64_t a2)
{
  *(a2 + 72) = *result;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_2456E1878@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessPassiveConfig.totalFrameCount.getter();
  *a1 = result;
  return result;
}

void *sub_2456E18A4(void *result, uint64_t a2)
{
  *(a2 + 88) = *result;
  *(a2 + 96) = 0;
  return result;
}

uint64_t sub_2456E18B4@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessPassiveConfig.minimumValidFrameCount.getter();
  *a1 = result;
  return result;
}

void *sub_2456E18E0(void *result, uint64_t a2)
{
  *(a2 + 104) = *result;
  *(a2 + 112) = 0;
  return result;
}

uint64_t sub_2456E1900(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 112);

    return v9(v10, a2, v8);
  }
}

void *sub_2456E19BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 112);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2456E1B70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456E1BC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_24570EDE4(v2, v3);
}

uint64_t sub_2456E1C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_2457481B0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2456E1D5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_2457481B0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2456E1E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252D0, &qword_24574CCC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25318, &qword_24574CD40);
  sub_24573EB5C();
  sub_24573ED88();
  sub_24573EDDC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2456E1F7C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x245D6FE40]();
  *a1 = result;
  return result;
}

uint64_t sub_2456E1FA8(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x245D6FE50](v2);
}

uint64_t sub_2456E1FDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_245748080();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2456E2034()
{
  v1 = (type metadata accessor for RGBLivenessView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  v7 = v1[9];
  v8 = sub_2457481B0();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[16]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2456E2278@<X0>(_BYTE *a1@<X8>)
{
  result = sub_245748020();
  *a1 = result;
  return result;
}

uint64_t sub_2456E22CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_245748040();
  *a1 = result;
  return result;
}

uint64_t sub_2456E22F8(uint64_t *a1)
{
  v1 = *a1;

  return sub_245748050();
}

uint64_t sub_2456E23D4()
{
  v1 = v0;
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();

  v7 = sub_245747E50();
  v8 = sub_245748910();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136315138;
    v11 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp + 16);
    v16[0] = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp);
    v16[1] = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp + 8);
    v16[2] = v11;
    v17 = v10;
    type metadata accessor for CMTime(0);
    v12 = sub_245748730();
    v14 = sub_24572EDDC(v12, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2456DE000, v7, v8, "AVCaptureFileOutput start timestamp set to %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x245D712D0](v10, -1, -1);
    MEMORY[0x245D712D0](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2456E25B4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v95 = a1;
  v96 = a2;
  v5 = sub_245747DC0();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = *(v91 + 64);
  MEMORY[0x28223BE20](v5);
  v90 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v86 - v10;
  v101 = sub_245747C30();
  v11 = *(v101 - 8);
  v12 = *(v11 + 8);
  v13 = MEMORY[0x28223BE20](v101);
  v94 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v97 = &v86 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v86 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v86 - v20;
  v22 = sub_245747E60();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v86 - v28;
  v98 = v4;
  if (*(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording))
  {
    sub_245747CF0();
    v30 = sub_245747E50();
    v31 = sub_245748910();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2456DE000, v30, v31, "Unable to startRecording, a recording has already started.", v32, 2u);
      MEMORY[0x245D712D0](v32, -1, -1);
    }

    return (*(v23 + 8))(v27, v22);
  }

  else
  {
    v86 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording;
    v89 = v3;
    sub_245747CF0();
    v34 = sub_245747E50();
    v35 = sub_245748910();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v88 = v21;
      v37 = v11;
      v38 = v36;
      *v36 = 0;
      _os_log_impl(&dword_2456DE000, v34, v35, "Starting AV file recording.", v36, 2u);
      v39 = v38;
      v11 = v37;
      v21 = v88;
      MEMORY[0x245D712D0](v39, -1, -1);
    }

    (*(v23 + 8))(v29, v22);
    v40 = v98;
    v41 = [*(v98 + 24) URLsForDirectory:13 inDomains:1];
    v42 = sub_2457487A0();

    if (*(v42 + 16))
    {
      v43 = *(v11 + 2);
      v44 = v101;
      v43(v19, v42 + ((v11[80] + 32) & ~v11[80]), v101);
      v87 = v43;

      (*(v11 + 4))(v21, v19, v44);
      v45 = v97;
      sub_245747C00();
      v46 = v93;
      v43(v93, v45, v44);
      (*(v11 + 7))(v46, 0, 1, v44);
      v47 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_outputURL;
      swift_beginAccess();
      sub_2456E729C(v46, v40 + v47);
      swift_endAccess();
      sub_2456E5008();
      sub_2456E730C(0, &qword_27EE244E8, 0x277CE6460);
      v48 = v94;
      v87(v94, v45, v44);
      v49 = *(v40 + 16);
      v50 = v89;
      v51 = sub_2456E6E28(v48, v49);
      if (v50)
      {

        v52 = *(v11 + 1);
        v53 = v101;
        v52(v45, v101);
        return (v52)(v21, v53);
      }

      else
      {
        v54 = v51;
        v94 = v11;

        v55 = *MEMORY[0x277CE5EA8];
        v56 = *(v40 + 32);
        v88 = v21;
        if (v56)
        {
          v57 = sub_245748640();
        }

        else
        {
          v57 = 0;
        }

        v58 = [objc_allocWithZone(MEMORY[0x277CE6468]) initWithMediaType:v55 outputSettings:v57];

        [v58 setExpectsMediaDataInRealTime_];
        if ([v54 canAddInput_])
        {
          [v54 addInput_];
          [v54 startWriting];
          v59 = v98;
          v60 = *(v98 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writer);
          *(v98 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writer) = v54;
          v61 = v54;

          v62 = *(v59 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput);
          *(v59 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput) = v58;
          v63 = v58;

          v64 = *MEMORY[0x277CC08F0];
          v65 = v101;
          v89 = 0;
          v66 = *(MEMORY[0x277CC08F0] + 8);
          v67 = *(MEMORY[0x277CC08F0] + 12);
          v68 = *(MEMORY[0x277CC08F0] + 16);
          v69 = v59 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp;
          *v69 = v64;
          *(v69 + 8) = v66;
          *(v69 + 12) = v67;
          *(v69 + 16) = v68;
          sub_2456E23D4();

          v70 = *(v94 + 1);
          v70(v97, v65);
          v70(v88, v65);
          v71 = v59 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp;
          *v71 = v64;
          *(v71 + 8) = v66;
          *(v71 + 12) = v67;
          *(v71 + 16) = v68;
          *(v59 + v86) = 1;
          v72 = (v59 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName);
          v73 = *(v59 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName + 8);
          v74 = v96;
          *v72 = v95;
          v72[1] = v74;
        }

        else
        {
          v99 = 0;
          v100 = 0xE000000000000000;
          sub_245748AA0();

          v99 = 0xD000000000000014;
          v100 = 0x8000000245756EA0;
          v75 = [v58 debugDescription];
          v76 = sub_245748700();
          v93 = v54;
          v77 = v76;
          v79 = v78;

          MEMORY[0x245D70540](v77, v79);

          MEMORY[0x245D70540](0xD000000000000011, 0x8000000245756EC0);
          v80 = [v54 debugDescription];
          v81 = sub_245748700();
          v83 = v82;

          MEMORY[0x245D70540](v81, v83);

          v98 = v99;
          (*(v91 + 104))(v90, *MEMORY[0x277CFFC28], v92);
          v84 = v101;
          sub_245723158(MEMORY[0x277D84F90]);
          sub_245747DD0();
          sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30]);
          swift_allocError();
          sub_245747DE0();
          swift_willThrow();

          v85 = *(v94 + 1);
          v85(v97, v84);
          return (v85)(v88, v84);
        }
      }
    }

    else
    {

      (*(v91 + 104))(v90, *MEMORY[0x277CFFC20], v92);
      sub_245723158(MEMORY[0x277D84F90]);
      sub_245747DD0();
      sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30]);
      swift_allocError();
      sub_245747DE0();
      return swift_willThrow();
    }
  }
}

void sub_2456E3040(opaqueCMSampleBuffer *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v83 - v7;
  v9 = sub_245747E60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v83 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v18);
  if (*(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording) == 1 && (v21 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writer)) != 0 && (v22 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput)) != 0 && (v23 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName + 8)) != 0)
  {
    v86 = &v83 - v19;
    v87 = v20;
    v88 = v8;
    v89 = v9;
    v92 = v10;
    v93 = v2;
    v85 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName);
    v24 = (v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp);
    v25 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp);
    v26 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp + 16);
    v27 = *MEMORY[0x277CC08F0];
    v90 = *(MEMORY[0x277CC08F0] + 16);
    v28 = v23;
    v94 = v21;
    v29 = v22;
    v91 = v28;

    time1.value = v25;
    *&time1.timescale = v24[1];
    time1.epoch = v26;
    time2.value = v27;
    *&time2.timescale = *(MEMORY[0x277CC08F0] + 8);
    time2.epoch = v90;
    if (!CMTimeCompare(&time1, &time2))
    {
      CMSampleBufferGetPresentationTimeStamp(&time1, a1);
      epoch = time1.epoch;
      v31 = *&time1.timescale;
      *v24 = time1.value;
      v24[1] = v31;
      v24[2] = epoch;
      sub_2456E23D4();
      v32 = v24[2];
      time1.value = *v24;
      *&time1.timescale = v24[1];
      time1.epoch = v32;
      [v94 startSessionAtSourceTime_];
    }

    if (![v29 isReadyForMoreMediaData])
    {
      v42 = v29;

      sub_245747CF0();
      v43 = sub_245747E50();
      v44 = sub_245748910();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v92;
      if (v45)
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_2456DE000, v43, v44, "WriterInput is not ready for more media, skipping frame.", v47, 2u);
        MEMORY[0x245D712D0](v47, -1, -1);
      }

      else
      {
      }

      (*(v46 + 8))(v17, v89);
      return;
    }

    CMSampleBufferGetPresentationTimeStamp(&time1, a1);
    v33 = time1.epoch;
    v34 = *&time1.timescale;
    v35 = (v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp);
    *v35 = time1.value;
    v35[1] = v34;
    v35[2] = v33;
    v36 = [v29 appendSampleBuffer_];
    v37 = v92;
    v38 = v93;
    if (v36)
    {

      return;
    }

    v48 = [v94 error];
    v84 = v3;
    if (v48)
    {
      time1.value = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      type metadata accessor for AVError(0);
      v49 = swift_dynamicCast();
      v50 = v88;
      if (v49)
      {
        value = time2.value;
        time1.value = time2.value;
        sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError);
        sub_245747B70();

        if (time2.value == -11823)
        {
          v52 = v29;
          v53 = v86;
          sub_245747CF0();
          v54 = v94;
          v55 = sub_245747E50();
          v56 = sub_245748920();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            time1.value = v94;
            *v57 = 134218242;
            *(v57 + 4) = [v54 status];

            *(v57 + 12) = 2080;
            v58 = v54;
            v59 = [v54 &off_278E843F8];
            if (v59)
            {
              v60 = v59;
              swift_getErrorValue();
              v61 = sub_245748C20();
              v63 = v62;
            }

            else
            {
              v61 = 7104878;
              v63 = 0xE300000000000000;
            }

            v81 = sub_24572EDDC(v61, v63, &time1.value);

            *(v57 + 14) = v81;
            _os_log_impl(&dword_2456DE000, v55, v56, "Recording already exists at output URL, removing to enable new liveness recording (status: %ld, error: %s).", v57, 0x16u);
            v82 = v94;
            __swift_destroy_boxed_opaque_existential_0Tm(v94);
            MEMORY[0x245D712D0](v82, -1, -1);
            MEMORY[0x245D712D0](v57, -1, -1);

            (*(v37 + 8))(v86, v89);
            v38 = v93;
            v54 = v58;
          }

          else
          {

            (*(v37 + 8))(v53, v89);
          }

          sub_2456E3A24();
          sub_2456E25B4(v85, v91);
          if (v38)
          {
          }

          else
          {
          }

          return;
        }
      }
    }

    else
    {

      v50 = v88;
    }

    v64 = v87;
    sub_245747CF0();
    v65 = v94;
    v66 = sub_245747E50();
    v67 = sub_245748920();
    if (os_log_type_enabled(v66, v67))
    {
      LODWORD(v91) = v67;
      v68 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      time1.value = v90;
      *v68 = 134218242;
      *(v68 + 4) = [v65 status];

      *(v68 + 12) = 2080;
      v94 = v65;
      v69 = [v65 error];
      if (v69)
      {
        v70 = v69;
        swift_getErrorValue();
        v71 = sub_245748C20();
        v73 = v72;
      }

      else
      {
        v71 = 7104878;
        v73 = 0xE300000000000000;
      }

      v75 = sub_24572EDDC(v71, v73, &time1.value);

      *(v68 + 14) = v75;
      _os_log_impl(&dword_2456DE000, v66, v91, "Could not append sample buffer to writerInput (status: %ld, error: %s).", v68, 0x16u);
      v76 = v90;
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
      MEMORY[0x245D712D0](v76, -1, -1);
      MEMORY[0x245D712D0](v68, -1, -1);

      (*(v37 + 8))(v87, v89);
      v74 = v84;
      v50 = v88;
      v65 = v94;
    }

    else
    {

      (*(v37 + 8))(v64, v89);
      v74 = v84;
    }

    sub_2456E5008();
    sub_2456E71D8(v74 + 40, &time1);
    v77 = __swift_project_boxed_opaque_existential_1(&time1, v96);
    v78 = sub_245747C30();
    (*(*(v78 - 8) + 56))(v50, 1, 1, v78);
    v79 = [v65 error];
    v80 = *v77;
    sub_2456EC890(v50, v79);

    sub_2456E70B0(v50);
    __swift_destroy_boxed_opaque_existential_0Tm(&time1.value);
  }

  else
  {
    sub_245747CF0();
    v39 = sub_245747E50();
    v40 = sub_245748920();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2456DE000, v39, v40, "Failed to recordFrame, recording has not started yet.", v41, 2u);
      MEMORY[0x245D712D0](v41, -1, -1);
    }

    (*(v10 + 8))(v14, v9);
  }
}

void sub_2456E3A24()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording;
  if (*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording) == 1 && (v10 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writer)) != 0 && (v11 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput)) != 0)
  {
    v12 = v0;
    v13 = v10;
    v14 = v11;
    sub_245747CF0();
    v15 = sub_245747E50();
    v16 = sub_245748910();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2456DE000, v15, v16, "Invalidating AV file recording.", v17, 2u);
      MEMORY[0x245D712D0](v17, -1, -1);
    }

    (*(v2 + 8))(v8, v1);
    [v13 cancelWriting];
    [v14 markAsFinished];
    *(v12 + v9) = 0;
    v18 = *MEMORY[0x277CC08F0];
    v19 = *(MEMORY[0x277CC08F0] + 8);
    v20 = *(MEMORY[0x277CC08F0] + 12);
    v21 = *(MEMORY[0x277CC08F0] + 16);
    v22 = v12 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp;
    *v22 = *MEMORY[0x277CC08F0];
    *(v22 + 8) = v19;
    *(v22 + 12) = v20;
    *(v22 + 16) = v21;
    sub_2456E23D4();
    v23 = v12 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp;
    *v23 = v18;
    *(v23 + 8) = v19;
    *(v23 + 12) = v20;
    *(v23 + 16) = v21;
    sub_2456E5008();
  }

  else
  {
    sub_245747CF0();
    v24 = sub_245747E50();
    v25 = sub_245748920();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2456DE000, v24, v25, "Failed to invalidateRecording, recording has not started yet.", v26, 2u);
      MEMORY[0x245D712D0](v26, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
  }
}

uint64_t sub_2456E3CE4()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v51 - v11;
  v13 = sub_245747C30();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v20 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording;
  if (*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording) != 1 || (v21 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writer)) == 0 || !*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput))
  {
LABEL_6:
    sub_245747CF0();
    v25 = sub_245747E50();
    v26 = sub_245748920();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2456DE000, v25, v26, "Failed to stopRecording, recording has not started yet.", v27, 2u);
      MEMORY[0x245D712D0](v27, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }

  v55 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput);
  v56 = v19;
  v57 = v51 - v18;
  v58 = v1;
  v59 = v17;
  v22 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_outputURL;
  swift_beginAccess();
  v23 = v0 + v22;
  v24 = v59;
  sub_2456E7040(v23, v12);
  if ((*(v14 + 48))(v12, 1, v24) == 1)
  {
    sub_2456E70B0(v12);
    v1 = v58;
    goto LABEL_6;
  }

  v53 = v14;
  v54 = v0;
  v51[0] = *(v14 + 32);
  v51[1] = v14 + 32;
  (v51[0])(v57, v12, v24);
  v52 = v21;
  v29 = v55;
  sub_245747CF0();
  v30 = sub_245747E50();
  v31 = sub_245748910();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2456DE000, v30, v31, "Stopping AV file recording.", v32, 2u);
    MEMORY[0x245D712D0](v32, -1, -1);
  }

  (*(v2 + 8))(v8, v58);
  [v29 markAsFinished];
  v33 = v54;
  *(v54 + v20) = 0;
  v34 = v29;
  v35 = *MEMORY[0x277CC08F0];
  v36 = *(MEMORY[0x277CC08F0] + 8);
  v37 = *(MEMORY[0x277CC08F0] + 12);
  v38 = *(MEMORY[0x277CC08F0] + 16);
  v39 = v33 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp;
  *v39 = *MEMORY[0x277CC08F0];
  *(v39 + 8) = v36;
  *(v39 + 12) = v37;
  *(v39 + 16) = v38;
  sub_2456E23D4();
  v40 = v33 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp;
  *v40 = v35;
  *(v40 + 8) = v36;
  *(v40 + 12) = v37;
  *(v40 + 16) = v38;
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v53;
  v43 = v56;
  v44 = v57;
  v45 = v59;
  (*(v53 + 16))(v56, v57, v59);
  v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v47 = swift_allocObject();
  v48 = v52;
  *(v47 + 16) = v41;
  *(v47 + 24) = v48;
  (v51[0])(v47 + v46, v43, v45);
  aBlock[4] = sub_2456E7118;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456E7A28;
  aBlock[3] = &block_descriptor;
  v49 = _Block_copy(aBlock);
  v50 = v48;

  [v50 finishWritingWithCompletionHandler_];

  _Block_release(v49);
  return (*(v42 + 8))(v44, v45);
}

uint64_t sub_2456E424C(uint64_t a1, void *a2, uint64_t a3)
{
  v85 = a3;
  v90 = *MEMORY[0x277D85DE8];
  v4 = sub_245747E60();
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245747DC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_245747DD0();
  v83 = *(v13 - 8);
  v14 = *(v83 + 64);
  MEMORY[0x28223BE20](v13);
  v84 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v79 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    if ([a2 status] == 3)
    {
      sub_2456E71D8((v24 + 5), &v87);
      v25 = __swift_project_boxed_opaque_existential_1(&v87, v89);
      v26 = sub_245747C30();
      (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
      v27 = [a2 error];
      v28 = *v25;
      sub_2456EC890(v22, v27);

      sub_2456E70B0(v22);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v87);
      goto LABEL_18;
    }

    v80 = v13;
    v81 = v20;
    v29 = v24[3];
    sub_245747C20();
    v30 = sub_2457486C0();

    v87 = 0;
    v31 = [v29 attributesOfItemAtPath:v30 error:&v87];

    v32 = v87;
    if (v31)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_2456E6630(&qword_27EE244C0, type metadata accessor for FileAttributeKey);
      v33 = sub_245748660();
      v34 = v32;

      if (*(v33 + 16))
      {
        v35 = sub_24572F384(*MEMORY[0x277CCA1C0]);
        v36 = v81;
        if (v37)
        {
          sub_2456E6F9C(*(v33 + 56) + 32 * v35, &v87);

          sub_2456E730C(0, &qword_27EE24880, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            v38 = v86;
            v39 = [v86 integerValue];

            if (v39 + 0x4000000000000000 < 0)
            {
              __break(1u);
            }

            v40 = sub_2456E56A4();
            v41 = v85;
            if (v39 < 0 || 2 * v39 < v40)
            {
              v74 = __swift_project_boxed_opaque_existential_1(v24 + 5, v24[8]);
              v75 = sub_245747C30();
              v76 = *(v75 - 8);
              v77 = v81;
              (*(v76 + 16))(v81, v41, v75);
              (*(v76 + 56))(v77, 0, 1, v75);
              v78 = *v74;
              sub_2456EC890(v77, 0);
              sub_2456E70B0(v77);
            }

            else
            {
              (*(v9 + 104))(v12, *MEMORY[0x277CFFA00], v8);
              sub_245723158(MEMORY[0x277D84F90]);
              v42 = v84;
              sub_245747DE0();
              sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30]);
              v43 = v80;
              v44 = swift_allocError();
              v45 = v83;
              v46 = *(v83 + 16);
              v46(v47, v42, v43);
              sub_245747CF0();
              sub_245747D00();
              (*(v82 + 8))(v7, v4);

              v48 = __swift_project_boxed_opaque_existential_1(v24 + 5, v24[8]);
              v49 = sub_245747C30();
              v50 = v81;
              (*(*(v49 - 8) + 56))(v81, 1, 1, v49);
              v51 = swift_allocError();
              v52 = v84;
              v46(v53, v84, v43);
              v54 = *v48;
              sub_2456EC890(v50, v51);

              sub_2456E70B0(v50);
              (*(v45 + 8))(v52, v43);
            }

            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      else
      {

        v36 = v81;
      }

      (*(v9 + 104))(v12, *MEMORY[0x277CFFC88], v8);
      sub_245723158(MEMORY[0x277D84F90]);
      v59 = v84;
      sub_245747DE0();
      v68 = __swift_project_boxed_opaque_existential_1(v24 + 5, v24[8]);
      v69 = sub_245747C30();
      (*(*(v69 - 8) + 56))(v36, 1, 1, v69);
      sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30]);
      v62 = v80;
      v70 = swift_allocError();
      v64 = v83;
      (*(v83 + 16))(v71, v59, v62);
      v72 = *v68;
      sub_2456EC890(v36, v70);
      v67 = v70;
    }

    else
    {
      v55 = v87;
      v56 = sub_245747BB0();

      swift_willThrow();
      v87 = 0;
      v88 = 0xE000000000000000;
      sub_245748AA0();

      v87 = 0xD000000000000027;
      v88 = 0x8000000245756DF0;
      v57 = sub_245747C20();
      MEMORY[0x245D70540](v57);

      (*(v9 + 104))(v12, *MEMORY[0x277CFFD70], v8);
      v58 = v56;
      sub_245723158(MEMORY[0x277D84F90]);
      v59 = v84;
      sub_245747DE0();
      v60 = __swift_project_boxed_opaque_existential_1(v24 + 5, v24[8]);
      v61 = sub_245747C30();
      v36 = v81;
      (*(*(v61 - 8) + 56))(v81, 1, 1, v61);
      sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30]);
      v62 = v80;
      v63 = swift_allocError();
      v64 = v83;
      (*(v83 + 16))(v65, v59, v62);
      v66 = *v60;
      sub_2456EC890(v36, v63);

      v67 = v56;
    }

    sub_2456E70B0(v36);
    (*(v64 + 8))(v59, v62);
LABEL_17:
  }

LABEL_18:
  v73 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2456E4DB8()
{
  v1 = v0;
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName + 8);
  if (v10)
  {
    v11 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName);
    v12 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName + 8);

    sub_245747CF0();
    v13 = sub_245747E50();
    v14 = sub_245748910();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v23 = v11;
      v16 = v15;
      *v15 = 0;
      _os_log_impl(&dword_2456DE000, v13, v14, "Restarting AV file recording.", v15, 2u);
      v17 = v16;
      v11 = v23;
      MEMORY[0x245D712D0](v17, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    sub_2456E3A24();
    sub_2456E25B4(v11, v10);
  }

  else
  {
    sub_245747CF0();
    v19 = sub_245747E50();
    v20 = sub_245748920();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2456DE000, v19, v20, "Unable to restartRecording, a recording has not started yet.", v21, 2u);
      MEMORY[0x245D712D0](v21, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_2456E5008()
{
  v1 = v0;
  v73[4] = *MEMORY[0x277D85DE8];
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v70 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v71 = &v65 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v65 - v13;
  v15 = sub_245747C30();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v65 - v21;
  v23 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_outputURL;
  swift_beginAccess();
  sub_2456E7040(v1 + v23, v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v69 = v3;
    (*(v16 + 32))(v22, v14, v15);
    sub_245747CF0();
    v25 = *(v16 + 16);
    v72 = v22;
    v25(v20, v22, v15);
    v26 = sub_245747E50();
    v27 = sub_245748910();
    v28 = os_log_type_enabled(v26, v27);
    v68 = v16;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v66 = v2;
      v31 = v30;
      v73[0] = v30;
      *v29 = 136315138;
      v32 = sub_245747BE0();
      v33 = v16;
      v35 = v34;
      v67 = *(v33 + 8);
      v67(v20, v15);
      v36 = sub_24572EDDC(v32, v35, v73);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_2456DE000, v26, v27, "Removing output video file at %s if exists.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      v37 = v31;
      v2 = v66;
      MEMORY[0x245D712D0](v37, -1, -1);
      MEMORY[0x245D712D0](v29, -1, -1);
    }

    else
    {

      v67 = *(v16 + 8);
      v67(v20, v15);
    }

    v38 = *(v69 + 8);
    v38(v10, v2);
    v39 = *(v1 + 24);
    v40 = v72;
    sub_245747C20();
    v41 = sub_2457486C0();

    v42 = [v39 fileExistsAtPath_];

    if (v42)
    {
      v43 = sub_245747BF0();
      v73[0] = 0;
      v44 = [v39 removeItemAtURL:v43 error:v73];

      if (v44)
      {
        v45 = v73[0];
        result = (v67)(v40, v15);
        goto LABEL_14;
      }

      v53 = v73[0];
      v54 = sub_245747BB0();

      swift_willThrow();
      v55 = v70;
      sub_245747CF0();
      v56 = v54;
      v57 = sub_245747E50();
      v58 = sub_245748920();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v73[0] = v60;
        *v59 = 136315138;
        swift_getErrorValue();
        v61 = sub_245748C20();
        v63 = v2;
        v64 = sub_24572EDDC(v61, v62, v73);

        *(v59 + 4) = v64;
        _os_log_impl(&dword_2456DE000, v57, v58, "Failed to remove output video. Error: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x245D712D0](v60, -1, -1);
        MEMORY[0x245D712D0](v59, -1, -1);

        v50 = v70;
        v51 = v63;
        goto LABEL_13;
      }

      v50 = v55;
    }

    else
    {
      v46 = v71;
      sub_245747CF0();
      v47 = sub_245747E50();
      v48 = sub_245748910();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2456DE000, v47, v48, "Output video does not exist.", v49, 2u);
        MEMORY[0x245D712D0](v49, -1, -1);
      }

      v50 = v46;
    }

    v51 = v2;
LABEL_13:
    v38(v50, v51);
    result = (v67)(v72, v15);
    goto LABEL_14;
  }

  result = sub_2456E70B0(v14);
LABEL_14:
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2456E56A4()
{
  v31[4] = *MEMORY[0x277D85DE8];
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245747DC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 24);
  v12 = NSHomeDirectory();
  if (!v12)
  {
    sub_245748700();
    v12 = sub_2457486C0();
  }

  v31[0] = 0;
  v13 = [v11 attributesOfFileSystemForPath:v12 error:v31];

  v14 = v31[0];
  if (!v13)
  {
    v24 = v31[0];
    v25 = sub_245747BB0();

    swift_willThrow();
    (*(v7 + 104))(v10, *MEMORY[0x277CFFD70], v6);
    v26 = v25;
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30]);
    v27 = swift_allocError();
    sub_245747DE0();
    sub_245747CF0();
    sub_245747D00();

    (*(v2 + 8))(v5, v1);
    v23 = v27;
    goto LABEL_11;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_2456E6630(&qword_27EE244C0, type metadata accessor for FileAttributeKey);
  v15 = sub_245748660();
  v16 = v14;

  if (!*(v15 + 16) || (v17 = sub_24572F384(*MEMORY[0x277CCA1D0]), (v18 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_2456E6F9C(*(v15 + 56) + 32 * v17, v31);

  sub_2456E730C(0, &qword_27EE24880, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    (*(v7 + 104))(v10, *MEMORY[0x277CFFD70], v6);
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30]);
    v22 = swift_allocError();
    sub_245747DE0();
    sub_245747CF0();
    sub_245747D00();
    (*(v2 + 8))(v5, v1);
    v23 = v22;
LABEL_11:

    result = 0;
    goto LABEL_12;
  }

  v19 = v30;
  v20 = [v30 unsignedIntegerValue];

  result = v20;
LABEL_12:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2456E5C0C()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  sub_2456E70B0(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_outputURL);
  v2 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName + 8);

  return v0;
}

uint64_t sub_2456E5C88()
{
  sub_2456E5C0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AVCaptureFileOutput()
{
  result = qword_27EE24358;
  if (!qword_27EE24358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2456E5D34()
{
  sub_2456E5E10();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2456E5E10()
{
  if (!qword_27EE24368)
  {
    sub_245747C30();
    v0 = sub_245748A40();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE24368);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2456E5EA0(uint64_t a1, int a2)
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

uint64_t sub_2456E5EC0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2456E5F3C(uint64_t a1, int a2)
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

uint64_t sub_2456E5F5C(uint64_t result, int a2, int a3)
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

uint64_t sub_2456E5FB8(uint64_t a1, id *a2)
{
  result = sub_2457486E0();
  *a2 = 0;
  return result;
}

uint64_t sub_2456E6030(uint64_t a1, id *a2)
{
  v3 = sub_2457486F0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2456E60B0@<X0>(uint64_t *a1@<X8>)
{
  sub_245748700();
  v2 = sub_2457486C0();

  *a1 = v2;
  return result;
}

uint64_t sub_2456E60F4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_245747E10();
}

uint64_t sub_2456E6140()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_245747E00();
}

uint64_t sub_2456E6198()
{
  sub_245748C80();
  v1 = *v0;
  swift_getWitnessTable();
  sub_245747E00();
  return sub_245748CB0();
}

uint64_t sub_2456E6210(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2456E627C(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2456E62E8(void *a1, uint64_t a2)
{
  v4 = sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2456E639C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2456E6418()
{
  v2 = *v0;
  sub_245748C80();
  sub_245748680();
  return sub_245748CB0();
}

uint64_t sub_2456E6478(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_245747DF0();
}

uint64_t sub_2456E64E4(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE244A8, type metadata accessor for AVFileType);
  v3 = sub_2456E6630(&qword_27EE244B0, type metadata accessor for AVFileType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2456E6630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2456E6678(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE24590, type metadata accessor for AVError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2456E66E4(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE24590, type metadata accessor for AVError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2456E6754(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2456E67C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2456E6844(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE244C0, type metadata accessor for FileAttributeKey);
  v3 = sub_2456E6630(&qword_27EE245D8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2456E6900(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE245E0, type metadata accessor for ObjectType);
  v3 = sub_2456E6630(&qword_27EE245E8, type metadata accessor for ObjectType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2456E69BC(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE245F0, type metadata accessor for VNImageOption);
  v3 = sub_2456E6630(&qword_27EE245F8, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2456E6A78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2457486C0();

  *a2 = v5;
  return result;
}

uint64_t sub_2456E6AC0(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE24498, type metadata accessor for Category);
  v3 = sub_2456E6630(&qword_27EE244A0, type metadata accessor for Category);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2456E6B7C()
{
  v1 = *v0;
  v2 = sub_245748700();
  v3 = MEMORY[0x245D70560](v2);

  return v3;
}

uint64_t sub_2456E6BB8()
{
  v1 = *v0;
  sub_245748700();
  sub_245748750();
}

uint64_t sub_2456E6C0C()
{
  v1 = *v0;
  sub_245748700();
  sub_245748C80();
  sub_245748750();
  v2 = sub_245748CB0();

  return v2;
}

uint64_t sub_2456E6D58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_245748700();
  v6 = v5;
  if (v4 == sub_245748700() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_245748BC0();
  }

  return v9 & 1;
}

id sub_2456E6E28(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_245747BF0();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() assetWriterWithURL:v4 fileType:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_245747C30();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_245747BB0();

    swift_willThrow();
    v11 = sub_245747C30();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_2456E6F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_2456E7040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2456E70B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2456E7118()
{
  v1 = *(sub_245747C30() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_2456E424C(v2, v3, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2456E71D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2456E729C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2456E730C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_2456E73EC(uint64_t a1, unint64_t *a2)
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

unint64_t sub_2456E7874()
{
  result = qword_27EE245B8;
  if (!qword_27EE245B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE245B8);
  }

  return result;
}

uint64_t sub_2456E7A28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

char *sub_2456E7A6C()
{
  v1 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager____lazy_storage___fileOutput;
  if (*&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager____lazy_storage___fileOutput])
  {
    v2 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager____lazy_storage___fileOutput];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_videoOutput];
    v4 = type metadata accessor for AVSessionManager();
    v20[3] = v4;
    v20[4] = &off_285879FA8;
    v20[0] = v0;
    v5 = type metadata accessor for AVCaptureFileOutput();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v20, v4);
    v10 = *(*(v4 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    v12 = (&v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = v3;
    v16 = v0;
    v2 = sub_2456ECEC4(v15, v14, v8);

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v17 = *&v0[v1];
    *&v0[v1] = v2;
  }

  return v2;
}

id sub_2456E7BEC()
{
  v1 = sub_245748970();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20]();
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_245748960() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = sub_245748600();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_245748630() - 8) + 64);
  MEMORY[0x28223BE20]();
  v12 = &v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outputFileName];
  *v12 = 0xD00000000000001FLL;
  v12[1] = 0x8000000245757510;
  v13 = &v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_auxiliaryOutputFileName];
  *v13 = 0xD00000000000001FLL;
  v13[1] = 0x8000000245757530;
  v14 = &v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoTmpFileName];
  *v14 = 0xD00000000000001ALL;
  v14[1] = 0x8000000245757550;
  v23 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue;
  v22[1] = sub_2456E730C(0, &qword_27EE24838, 0x277D85C78);
  (*(v7 + 104))(v10, *MEMORY[0x277D851C0], v6);
  sub_245748620();
  v27 = MEMORY[0x277D84F90];
  sub_2456EEE8C(&qword_27EE24840, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24848, &qword_24574A938);
  sub_2456EEED4(&unk_27EE24850, &qword_27EE24848, &qword_24574A938);
  sub_245748A50();
  (*(v24 + 104))(v4, *MEMORY[0x277D85260], v25);
  *&v0[v23] = sub_2457489A0();
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session] = 0;
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_photoOutput;
  *&v0[v15] = [objc_allocWithZone(MEMORY[0x277CE5B28]) init];
  v16 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_videoOutput;
  *&v0[v16] = [objc_allocWithZone(MEMORY[0x277CE5B60]) init];
  v17 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_metadataOutput;
  *&v0[v17] = [objc_allocWithZone(MEMORY[0x277CE5B00]) init];
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager____lazy_storage___fileOutput] = 0;
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_dataSynchronizer] = 0;
  v18 = &v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoOutputFileName];
  *v18 = 0;
  v18[1] = 0;
  v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_shouldRecordFrame] = 0;
  v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_hasReceivedFirstFrame] = 0;
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outOfBuffersCount] = 0;
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_discontinuityCount] = 0;
  v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_isPassive] = 0;
  v19 = &v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_recordingStartTime];
  *v19 = 0;
  v19[8] = 1;
  v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_silenceShutter] = 0;
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_videoRotationAngle] = 0;
  v20 = type metadata accessor for AVSessionManager();
  v26.receiver = v0;
  v26.super_class = v20;
  return objc_msgSendSuper2(&v26, sel_init);
}

uint64_t sub_2456E80C0()
{
  v1 = sub_2457485F0();
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_245748630();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = *MEMORY[0x277CE5EA8];
  if ([v9 authorizationStatusForMediaType_] != 3)
  {
    v25 = sub_2456E8430;
    v26 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2456E856C;
    v24 = &block_descriptor_101;
    v11 = _Block_copy(&aBlock);
    [v9 requestAccessForMediaType:v10 completionHandler:v11];
    _Block_release(v11);
  }

  v12 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v25 = sub_2456EEE34;
  v26 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_2456E7A28;
  v24 = &block_descriptor_107;
  v14 = _Block_copy(&aBlock);
  v15 = v0;
  sub_245748610();
  v20 = MEMORY[0x277D84F90];
  sub_2456EEE8C(&qword_27EE24820, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
  sub_2456EEED4(&qword_27EE24830, &qword_27EE24828, &qword_24574A930);
  sub_245748A50();
  MEMORY[0x245D70770](0, v8, v4, v14);
  _Block_release(v14);
  (*(v19 + 8))(v4, v1);
  (*(v5 + 8))(v8, v18);
}

uint64_t sub_2456E8430(char a1)
{
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_245747CF0();
    v8 = sub_245747E50();
    v9 = sub_245748920();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2456DE000, v8, v9, "Must grant camera access.", v10, 2u);
      MEMORY[0x245D712D0](v10, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_2456E856C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_2456E85C0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CE5B38]) init];
  [v2 beginConfiguration];
  [v2 setSessionPreset_];
  sub_2456ED090(v2);
  sub_2456EB980(v2);
  sub_2456EBE6C();
  [v2 commitConfiguration];
  v3 = *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session);
  *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session) = v2;
  v4 = v2;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24570362C(v4);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_2456E8700(uint64_t a1)
{
  v2 = sub_245747DC0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_245747E60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session;
  v11 = *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session);
  if (v11 && ([v11 isRunning] & 1) != 0)
  {
    sub_245747CF0();
    v12 = sub_245747E50();
    v13 = sub_245748910();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2456DE000, v12, v13, "AVSession already started.", v14, 2u);
      MEMORY[0x245D712D0](v14, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    sub_2456E7A6C();
    sub_2456E25B4(*(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outputFileName), *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outputFileName + 8));

    *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_isPassive) = 0;
    sub_2456E9720();
    v16 = *(a1 + v10);

    return [v16 startRunning];
  }
}

uint64_t sub_2456E8AD0(char a1)
{
  v3 = sub_2457485F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_245748630();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_2456EEE20;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456E7A28;
  aBlock[3] = &block_descriptor_92;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  sub_245748610();
  v18 = MEMORY[0x277D84F90];
  sub_2456EEE8C(&qword_27EE24820, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
  sub_2456EEED4(&qword_27EE24830, &qword_27EE24828, &qword_24574A930);
  sub_245748A50();
  MEMORY[0x245D70770](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

id sub_2456E8D94(uint64_t a1, char a2)
{
  v4 = sub_245747DC0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_245747E60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session;
  v13 = *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session);
  if (v13 && ([v13 isRunning] & 1) != 0)
  {
    sub_245747CF0();
    v14 = sub_245747E50();
    v15 = sub_245748910();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2456DE000, v14, v15, "AVSession already started.", v16, 2u);
      MEMORY[0x245D712D0](v16, -1, -1);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    v26 = v6;
    sub_2456E7A6C();
    sub_2456E25B4(*(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoTmpFileName), *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoTmpFileName + 8));

    *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_isPassive) = 1;
    v18 = &OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_auxiliaryOutputFileName;
    if ((a2 & 1) == 0)
    {
      v18 = &OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outputFileName;
    }

    v19 = (a1 + *v18);
    v21 = *v19;
    v20 = v19[1];

    v23 = (a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoOutputFileName);
    v24 = *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoOutputFileName + 8);
    *v23 = v21;
    v23[1] = v22;

    sub_2456E9748(0, 0);
    v25 = *(a1 + v12);

    return [v25 startRunning];
  }
}

uint64_t sub_2456E91E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2457485F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_245748630();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456E7A28;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  sub_245748610();
  v21 = MEMORY[0x277D84F90];
  sub_2456EEE8C(&qword_27EE24820, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
  sub_2456EEED4(&qword_27EE24830, &qword_27EE24828, &qword_24574A930);
  sub_245748A50();
  MEMORY[0x245D70770](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

void sub_2456E9494(uint64_t a1)
{
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session;
  v8 = *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session);
  if (v8 && [v8 isRunning])
  {
    [*(a1 + v7) stopRunning];
    sub_2456E7A6C();
    sub_2456E3CE4();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2457037A4();
      swift_unknownObjectRelease();
    }

    v9 = *(a1 + v7);
    *(a1 + v7) = 0;
  }

  else
  {
    sub_245747CF0();
    v10 = sub_245747E50();
    v11 = sub_245748910();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2456DE000, v10, v11, "AVSession has not started yet.", v12, 2u);
      MEMORY[0x245D712D0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_2456E9690(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session;
  [*(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session) stopRunning];
  sub_2456E7A6C();
  sub_2456E3A24();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2457037A4();
    swift_unknownObjectRelease();
  }

  v3 = *(a1 + v2);
  *(a1 + v2) = 0;

  sub_2456EC194();
}

uint64_t sub_2456E9748(uint64_t a1, uint64_t a2)
{
  v5 = sub_2457485F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_245748630();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_2456EED80;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456E7A28;
  aBlock[3] = &block_descriptor_68;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  sub_2456EEDEC(a1);
  sub_245748610();
  v20 = MEMORY[0x277D84F90];
  sub_2456EEE8C(&qword_27EE24820, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
  sub_2456EEED4(&qword_27EE24830, &qword_27EE24828, &qword_24574A930);
  sub_245748A50();
  MEMORY[0x245D70770](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

void sub_2456E9A44(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_shouldRecordFrame) = 0;
  sub_2456E7A6C();
  sub_2456E3CE4();

  sub_2456EC194();
}

void sub_2456E9AB8()
{
  v0 = sub_245747E60();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_245747DC0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2456E7A6C();
  sub_2456E4DB8();

  sub_2456EC194();
}

uint64_t sub_2456E9D64(uint64_t a1, char a2)
{
  v5 = sub_2457485F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_245748630();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = v2;
  *(v14 + 32) = a1;
  aBlock[4] = sub_2456EED04;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456E7A28;
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  sub_245748610();
  v20 = MEMORY[0x277D84F90];
  sub_2456EEE8C(&qword_27EE24820, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
  sub_2456EEED4(&qword_27EE24830, &qword_27EE24828, &qword_24574A930);
  sub_245748A50();
  MEMORY[0x245D70770](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

void sub_2456EA02C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_245747E60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v11 = sub_245747E50();
  v12 = sub_245748910();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_24572EDDC(0xD000000000000023, 0x8000000245757410, &v28);
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1 & 1;
    _os_log_impl(&dword_2456DE000, v11, v12, "%s silenceShutter = %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x245D712D0](v14, -1, -1);
    MEMORY[0x245D712D0](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  *(a2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_silenceShutter) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE247F8, &unk_24574C320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24574A850;
  v16 = *MEMORY[0x277CC4E30];
  *(inited + 32) = sub_245748700();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v17;
  *(inited + 48) = 1111970369;
  sub_24572FB2C(inited);
  swift_setDeallocating();
  sub_2456EEF50(inited + 32, &unk_27EE24800, &unk_24574A900);
  v18 = sub_245748640();

  v19 = [objc_opt_self() photoSettingsWithFormat_];

  [v19 setPhotoQualityPrioritization_];
  v20 = *(a2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_photoOutput);
  v21 = sub_2457489C0();
  v22 = *(v21 + 16);
  v23 = 32;
  while (v22)
  {
    v24 = *(v21 + v23);
    v23 += 8;
    --v22;
    if (v24 == a3)
    {

      [v19 setFlashMode_];
      goto LABEL_8;
    }
  }

LABEL_8:
  v25 = [v20 connectionWithMediaType_];
  if (v25)
  {
    v26 = v25;
    [v25 setVideoRotationAngle_];
  }

  [v20 capturePhotoWithSettings:v19 delegate:a2];
}

void sub_2456EA3A4(uint64_t a1, __int128 *a2)
{
  v85 = a1;
  v91 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v88 = *a2;
  v89 = v2;
  v90 = a2[2];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A70, &unk_24574AEE0);
  v3 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v80 = (&v71 - v4);
  v5 = sub_245747DC0();
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = *(v82 + 64);
  MEMORY[0x28223BE20](v5);
  v84 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v71 - v10;
  v11 = sub_245747C30();
  v81 = *(v11 - 8);
  v12 = *(v81 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v75 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v74 = &v71 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v77 = &v71 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  v23 = sub_245747E60();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v28 = sub_245747E50();
  v29 = sub_245748910();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2456DE000, v28, v29, "Beginning the LivePhoto video trim.", v30, 2u);
    MEMORY[0x245D712D0](v30, -1, -1);
  }

  (*(v24 + 8))(v27, v23);
  v31 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v32 = sub_245747BF0();
  v33 = [v31 initWithURL:v32 options:0];

  v34 = [objc_allocWithZone(MEMORY[0x277CE6400]) initWithAsset:v33 presetName:*MEMORY[0x277CE5C78]];
  if (!v34)
  {
    (*(v82 + 104))(v84, *MEMORY[0x277CFFD18], v83);
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30]);
    v65 = swift_allocError();
    sub_245747DE0();
    swift_willThrow();

    goto LABEL_14;
  }

  v78 = v34;
  v35 = objc_opt_self();
  v36 = [v35 defaultManager];
  v37 = [v36 URLsForDirectory:13 inDomains:1];

  v38 = sub_2457487A0();
  if (!*(v38 + 16))
  {

LABEL_13:
    (*(v82 + 104))(v84, *MEMORY[0x277CFFC20], v83);
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30]);
    v65 = swift_allocError();
    sub_245747DE0();
    swift_willThrow();

    goto LABEL_14;
  }

  v73 = v33;
  v39 = v81;
  v40 = *(v81 + 80);
  v72 = *(v81 + 16);
  v72(v20, v38 + ((v40 + 32) & ~v40), v11);

  v41 = *(v39 + 32);
  v41(v22, v20, v11);
  if (!*&v86[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoOutputFileName + 8])
  {
    (*(v39 + 8))(v22, v11);
    v33 = v73;
    goto LABEL_13;
  }

  v84 = v41;
  v42 = *&v86[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoOutputFileName];

  v87[0] = v88;
  v87[1] = v89;
  v87[2] = v90;
  [v78 setTimeRange_];
  v43 = v77;
  sub_245747C00();

  v44 = v43;
  if ((sub_245747BC0() & 1) == 0)
  {
LABEL_9:
    v49 = sub_245748810();
    (*(*(v49 - 8) + 56))(v76, 1, 1, v49);
    v50 = v44;
    v51 = v74;
    v52 = v72;
    v72(v74, v50, v11);
    v83 = v22;
    v53 = v75;
    v52(v75, v85, v11);
    v54 = (v40 + 40) & ~v40;
    v55 = (v12 + v40 + v54) & ~v40;
    v56 = (v12 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    v58 = v78;
    v57[4] = v78;
    v59 = v57 + v54;
    v60 = v84;
    (v84)(v59, v51, v11);
    (v60)(v57 + v55, v53, v11);
    v61 = v86;
    *(v57 + v56) = v86;
    v62 = v58;
    v63 = v61;
    sub_245736B60(0, 0, v76, &unk_24574A920, v57);

    v64 = *(v81 + 8);
    v64(v77, v11);
    v64(v83, v11);
    goto LABEL_17;
  }

  v45 = [v35 defaultManager];
  v46 = sub_245747BF0();
  *&v87[0] = 0;
  v47 = [v45 removeItemAtURL:v46 error:v87];

  if (v47)
  {
    v48 = *&v87[0];
    goto LABEL_9;
  }

  v69 = *&v87[0];
  v65 = sub_245747BB0();

  swift_willThrow();
  v70 = *(v81 + 8);
  v70(v44, v11);
  v70(v22, v11);
LABEL_14:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v66 = v80;
    *v80 = v65;
    swift_storeEnumTagMultiPayload();
    v67 = v65;
    sub_245704888(v66);
    swift_unknownObjectRelease();

    sub_2456EEF50(v66, &qword_27EE24A70, &unk_24574AEE0);
  }

  else
  {
  }

LABEL_17:
  v68 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2456EAE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = *MEMORY[0x277D85DE8];
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_245747DC0();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v11 = sub_245747DD0();
  v7[14] = v11;
  v12 = *(v11 - 8);
  v7[15] = v12;
  v13 = *(v12 + 64) + 15;
  v7[16] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A70, &unk_24574AEE0);
  v7[17] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v16 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2456EAFF0, 0, 0);
}

uint64_t sub_2456EAFF0()
{
  v8 = *MEMORY[0x277D85DE8];
  *(v0 + 152) = CACurrentMediaTime();
  v1 = *(MEMORY[0x277D82DB8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_2456EB0D0;
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CE5D98];

  return MEMORY[0x2821FAED0](v3, v6, 0, 0);
}

uint64_t sub_2456EB0D0()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_2456EB6A0;
  }

  else
  {
    v3 = sub_2456EB210;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2456EB210()
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = (CACurrentMediaTime() - v1) * 1000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (v2 >= 9.22337204e18)
  {
    goto LABEL_16;
  }

  v3 = *(v0 + 72);
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_245747BF0();
  *(v0 + 48) = 0;
  v6 = [v4 removeItemAtURL:v5 error:v0 + 48];

  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = *(v0 + 80);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v0 + 136);
      v9 = *(v0 + 144);
      v11 = *(v0 + 64);
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24818, &qword_24574A928) + 48);
      v13 = sub_245747C30();
      (*(*(v13 - 8) + 16))(v9, v11, v13);
      *(v9 + v12) = v2;
      swift_storeEnumTagMultiPayload();
      v14 = v7;
      sub_245704888(v9);
      swift_unknownObjectRelease();
      sub_2456EEF50(v9, &qword_27EE24A70, &unk_24574AEE0);
    }

    else
    {
      v33 = v7;
    }
  }

  else
  {
    v15 = v7;
    v16 = sub_245747BB0();

    swift_willThrow();
    v17 = *(v0 + 128);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v21 = *(v0 + 80);
    v20 = *(v0 + 88);
    sub_245748AA0();
    MEMORY[0x245D70540](0xD00000000000003ALL, 0x80000002457573A0);
    swift_getErrorValue();
    v23 = *(v0 + 16);
    v22 = *(v0 + 24);
    v24 = *(v0 + 32);
    v25 = sub_245748C20();
    MEMORY[0x245D70540](v25);

    (*(v19 + 104))(v18, *MEMORY[0x277CFFBC8], v20);
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DE0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v0 + 136);
      v26 = *(v0 + 144);
      v29 = *(v0 + 120);
      v28 = *(v0 + 128);
      v30 = *(v0 + 112);
      sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30]);
      v31 = swift_allocError();
      (*(v29 + 16))(v32, v28, v30);
      *v26 = v31;
      swift_storeEnumTagMultiPayload();
      sub_245704888(v26);
      swift_unknownObjectRelease();

      sub_2456EEF50(v26, &qword_27EE24A70, &unk_24574AEE0);
      (*(v29 + 8))(v28, v30);
    }

    else
    {
      v35 = *(v0 + 120);
      v34 = *(v0 + 128);
      v36 = *(v0 + 112);

      (*(v35 + 8))(v34, v36);
    }
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 128);
  v39 = *(v0 + 104);

  v40 = *(v0 + 8);
  v41 = *MEMORY[0x277D85DE8];

  return v40();
}

uint64_t sub_2456EB6A0()
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = v0[21];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  sub_245748AA0();
  MEMORY[0x245D70540](0xD00000000000003ALL, 0x80000002457573A0);
  swift_getErrorValue();
  v8 = v0[2];
  v7 = v0[3];
  v9 = v0[4];
  v10 = sub_245748C20();
  MEMORY[0x245D70540](v10);

  (*(v4 + 104))(v3, *MEMORY[0x277CFFBC8], v5);
  sub_245723158(MEMORY[0x277D84F90]);
  sub_245747DE0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = v0[17];
    v11 = v0[18];
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[14];
    sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30]);
    v16 = swift_allocError();
    (*(v14 + 16))(v17, v13, v15);
    *v11 = v16;
    swift_storeEnumTagMultiPayload();
    sub_245704888(v11);
    swift_unknownObjectRelease();

    sub_2456EEF50(v11, &qword_27EE24A70, &unk_24574AEE0);
    (*(v14 + 8))(v13, v15);
  }

  else
  {
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[14];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[18];
  v22 = v0[16];
  v23 = v0[13];

  v24 = v0[1];
  v25 = *MEMORY[0x277D85DE8];

  return v24();
}

void sub_2456EB980(void *a1)
{
  v3 = sub_245747E60();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_videoOutput);
  [v6 setAlwaysDiscardsLateVideoFrames_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE247F8, &unk_24574C320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24574A850;
  v8 = *MEMORY[0x277CC4E30];
  *(inited + 32) = sub_245748700();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v9;
  *(inited + 48) = 1111970369;
  sub_24572FB2C(inited);
  swift_setDeallocating();
  sub_2456EEF50(inited + 32, &unk_27EE24800, &unk_24574A900);
  v10 = sub_245748640();

  [v6 setVideoSettings_];

  v11 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_photoOutput);
  [v11 setMaxPhotoQualityPrioritization_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE247E0, "v\x1B");
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_24574A860;
  v13 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_metadataOutput);
  *(v12 + 32) = v13;
  v41 = v12 + 32;
  *(v12 + 40) = v6;
  *(v12 + 48) = v11;
  v14 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_videoRotationAngle;
  v15 = *MEMORY[0x277CE5EA8];
  v16 = v13;
  v17 = v6;
  v18 = v11;
  v19 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x245D70890](v19, v12);
    }

    else
    {
      if (v19 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v20 = *(v12 + 8 * v19 + 32);
    }

    v21 = v20;
    if (![a1 canAddOutput_])
    {
      break;
    }

    [a1 addOutput_];
    v22 = [v21 connectionWithMediaType_];
    if (v22)
    {
      v23 = v22;
      if ([v22 isVideoMirroringSupported])
      {
        [v23 setAutomaticallyAdjustsVideoMirroring_];
        [v23 setVideoMirrored_];
      }

      if ([v23 isVideoRotationAngleSupported_])
      {
        [v23 setVideoRotationAngle_];
      }

      if ([v23 isCameraIntrinsicMatrixDeliverySupported])
      {
        [v23 setCameraIntrinsicMatrixDeliveryEnabled_];
      }
    }

    ++v19;

    if (v19 == 3)
    {
      swift_setDeallocating();
      v36 = *(v12 + 16);
      swift_arrayDestroy();
      return;
    }
  }

  swift_setDeallocating();
  v24 = *(v12 + 16);
  swift_arrayDestroy();
  v25 = v38;
  sub_245747CF0();
  v26 = v21;
  v27 = sub_245747E50();
  v28 = sub_245748930();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = v30;
    *v29 = 136315138;
    v31 = [v26 debugDescription];
    v32 = sub_245748700();
    v34 = v33;

    v35 = sub_24572EDDC(v32, v34, &v42);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_2456DE000, v27, v28, "Invalid session configuration. Cannot add output: %s.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x245D712D0](v30, -1, -1);
    MEMORY[0x245D712D0](v29, -1, -1);
  }

  else
  {
  }

  (*(v39 + 8))(v25, v40);
}

void sub_2456EBE6C()
{
  v1 = v0;
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_metadataOutput);
  v8 = [v7 availableMetadataObjectTypes];
  type metadata accessor for ObjectType(0);
  v9 = sub_2457487A0();

  v10 = *MEMORY[0x277CE5A50];
  v27 = *MEMORY[0x277CE5A50];
  v26 = &v27;
  LOBYTE(v8) = sub_2456EC758(sub_2456EEAAC, v25, v9);

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE247F0, &unk_24574A8F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_24574A850;
    *(v11 + 32) = v10;
    v12 = v10;
    v13 = sub_245748790();

    [v7 setMetadataObjectTypes_];
  }

  else
  {
    sub_245747CF0();
    v14 = sub_245747E50();
    v15 = sub_245748930();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2456DE000, v14, v15, "Could not add AVFoundation face detectors.", v16, 2u);
      MEMORY[0x245D712D0](v16, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE247E0, "v\x1B");
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24574A870;
  v18 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_videoOutput);
  *(v17 + 32) = v18;
  *(v17 + 40) = v7;
  v19 = objc_allocWithZone(MEMORY[0x277CE5AB8]);
  sub_2456E730C(0, &qword_27EE247E8, 0x277CE5B18);
  v20 = v18;
  v21 = v7;
  v22 = sub_245748790();

  v23 = [v19 initWithDataOutputs_];

  [v23 setDelegate:v1 queue:*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue)];
  v24 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_dataSynchronizer);
  *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_dataSynchronizer) = v23;
}

void sub_2456EC194()
{
  v1 = v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_recordingStartTime;
  if ((*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_recordingStartTime + 8) & 1) == 0)
  {
    v2 = round((CACurrentMediaTime() - *v1) * 30.0);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v2 > -9.22337204e18)
    {
      if (v2 < 9.22337204e18)
      {
        v3 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outOfBuffersCount;
        v4 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_discontinuityCount;
        sub_24571D7FC(*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_isPassive), *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outOfBuffersCount), *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_discontinuityCount), v2);
        *(v0 + v3) = 0;
        *(v0 + v4) = 0;
        *v1 = 0;
        *(v1 + 8) = 1;
        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

id sub_2456EC270()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVSessionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2456EC4C0(void *a1)
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_245748AA0();

  v6 = 0xD000000000000018;
  v7 = 0x8000000245757240;
  [a1 time];
  type metadata accessor for CMTime(0);
  v2 = sub_245748730();
  MEMORY[0x245D70540](v2);

  return v6;
}

uint64_t sub_2456EC578(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_245748AF0();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245748B70())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245D70890](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_245748AD0();
      v8 = *(v10 + 16);
      sub_245748B00();
      sub_245748B10();
      sub_245748AE0();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_245748B70();
    sub_245748AF0();
  }

  return v10;
}

uint64_t sub_2456EC758(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2456EC800(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_245748700();
  v6 = v5;
  if (v4 == sub_245748700() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_245748BC0();
  }

  return v9 & 1;
}

void sub_2456EC890(uint64_t a1, void *a2)
{
  v40 = a1;
  v3 = sub_245747DC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v12 = sub_245747C30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE24860, &unk_24574AF10);
  v17 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v42 = (&v39 - v18);
  v19 = sub_245747E60();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v25 = v22;
    v26 = a2;
    sub_245747CF0();
    v27 = a2;
    v28 = sub_245747E50();
    v29 = sub_245748920();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136315138;
      swift_getErrorValue();
      v32 = sub_245748C20();
      v34 = sub_24572EDDC(v32, v33, &v43);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2456DE000, v28, v29, "Could not record video. Error: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x245D712D0](v31, -1, -1);
      MEMORY[0x245D712D0](v30, -1, -1);
    }

    (*(v20 + 8))(v24, v25);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = v42;
      *v42 = a2;
      swift_storeEnumTagMultiPayload();
      v36 = a2;
      sub_24570439C(v35);
      swift_unknownObjectRelease();

LABEL_9:
      sub_2456EEF50(v35, qword_27EE24860, &unk_24574AF10);
      return;
    }
  }

  else
  {
    sub_2456E7040(v40, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_2456EEF50(v11, &qword_27EE244D0, &unk_245749FF0);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      (*(v4 + 104))(v7, *MEMORY[0x277CFFC18], v3);
      sub_245723158(MEMORY[0x277D84F90]);
      sub_245747DD0();
      sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30]);
      v37 = swift_allocError();
      sub_245747DE0();
      v35 = v42;
      *v42 = v37;
      swift_storeEnumTagMultiPayload();
      sub_24570439C(v35);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    (*(v13 + 32))(v16, v11, v12);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v38 = v42;
      (*(v13 + 16))(v42, v16, v12);
      swift_storeEnumTagMultiPayload();
      sub_24570439C(v38);
      swift_unknownObjectRelease();
      sub_2456EEF50(v38, qword_27EE24860, &unk_24574AF10);
    }

    (*(v13 + 8))(v16, v12);
  }
}

char *sub_2456ECEC4(void *a1, uint64_t a2, char *a3)
{
  v22[3] = type metadata accessor for AVSessionManager();
  v22[4] = &off_285879FA8;
  v22[0] = a2;
  v6 = *MEMORY[0x277CE5D98];
  *(a3 + 2) = *MEMORY[0x277CE5D98];
  v7 = objc_opt_self();
  v8 = v6;
  *(a3 + 3) = [v7 defaultManager];
  v9 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_outputURL;
  v10 = sub_245747C30();
  (*(*(v10 - 8) + 56))(&a3[v9], 1, 1, v10);
  v11 = &a3[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a3[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writer] = 0;
  *&a3[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput] = 0;
  v12 = [a1 recommendedVideoSettingsForAssetWriterWithOutputFileType_];
  if (v12)
  {
    v13 = v12;
    v14 = sub_245748660();
  }

  else
  {
    v14 = 0;
  }

  *(a3 + 4) = v14;
  sub_2456E71D8(v22, (a3 + 40));
  a3[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording] = 0;
  v15 = *MEMORY[0x277CC08F0];
  v16 = *(MEMORY[0x277CC08F0] + 8);
  v17 = *(MEMORY[0x277CC08F0] + 12);
  v18 = *(MEMORY[0x277CC08F0] + 16);
  v19 = &a3[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp];
  *v19 = *MEMORY[0x277CC08F0];
  *(v19 + 2) = v16;
  *(v19 + 3) = v17;
  *(v19 + 2) = v18;
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  v20 = &a3[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp];
  *v20 = v15;
  *(v20 + 2) = v16;
  *(v20 + 3) = v17;
  *(v20 + 2) = v18;
  return a3;
}

void sub_2456ED090(void *a1)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v47 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  v13 = [objc_opt_self() defaultDeviceWithDeviceType:*MEMORY[0x277CE5878] mediaType:*MEMORY[0x277CE5EA8] position:2];
  if (!v13)
  {
    sub_245747CF0();
    v20 = sub_245747E50();
    v21 = sub_245748930();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2456DE000, v20, v21, "Must use a device with a front facing camera.", v22, 2u);
      MEMORY[0x245D712D0](v22, -1, -1);
    }

    v23 = *(v3 + 8);
    v24 = v7;
    goto LABEL_14;
  }

  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CE5AD8]);
  v50[0] = 0;
  v16 = v14;
  v17 = [v15 initWithDevice:v16 error:v50];
  if (!v17)
  {
    v25 = v50[0];
    v26 = sub_245747BB0();

    swift_willThrow();
    sub_245747CF0();
    v27 = v26;
    v28 = sub_245747E50();
    v29 = sub_245748930();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v49 = v2;
      v31 = v30;
      v32 = swift_slowAlloc();
      v50[0] = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = sub_245748C20();
      v35 = sub_24572EDDC(v33, v34, v50);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_2456DE000, v28, v29, "Could not create device input. Error: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x245D712D0](v32, -1, -1);
      MEMORY[0x245D712D0](v31, -1, -1);

      (*(v3 + 8))(v12, v49);
      goto LABEL_15;
    }

    v23 = *(v3 + 8);
    v24 = v12;
LABEL_14:
    v23(v24, v2);
    goto LABEL_15;
  }

  v18 = v17;
  v19 = v50[0];

  if (([a1 canAddInput_] & 1) == 0)
  {
    sub_245747CF0();
    v36 = v18;
    v37 = sub_245747E50();
    v38 = sub_245748930();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50[0] = v48;
      *v39 = 136315138;
      v40 = [v36 debugDescription];
      v41 = sub_245748700();
      v49 = v2;
      v43 = v42;

      v44 = sub_24572EDDC(v41, v43, v50);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_2456DE000, v37, v38, "Invalid session configuration. Cannot add input: %s.", v39, 0xCu);
      v45 = v48;
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x245D712D0](v45, -1, -1);
      MEMORY[0x245D712D0](v39, -1, -1);

      (*(v3 + 8))(v10, v49);
      goto LABEL_15;
    }

    v23 = *(v3 + 8);
    v24 = v10;
    goto LABEL_14;
  }

  [a1 addInput_];

LABEL_15:
  v46 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2456ED59C()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v6 = v0;
  v7 = sub_245747E50();
  v8 = sub_245748910();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24572EDDC(0xD000000000000023, 0x80000002457572B0, &v13);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v6[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_silenceShutter];

    _os_log_impl(&dword_2456DE000, v7, v8, "%s %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x245D712D0](v10, -1, -1);
    MEMORY[0x245D712D0](v9, -1, -1);
  }

  else
  {
  }

  result = (*(v2 + 8))(v5, v1);
  if (v6[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_silenceShutter] == 1)
  {
    return AudioServicesDisposeSystemSoundID(0x454u);
  }

  return result;
}

uint64_t sub_2456ED788(uint64_t a1)
{
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277CD3410];
  v8 = sub_245748700();
  if (*(a1 + 16))
  {
    v10 = sub_24572F388(v8, v9);
    v12 = v11;

    if (v12)
    {
      sub_2456E6F9C(*(a1 + 56) + 32 * v10, v18);
      if (swift_dynamicCast())
      {
        return v17[3];
      }
    }
  }

  else
  {
  }

  sub_245747CF0();
  v14 = sub_245747E50();
  v15 = sub_245748910();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2456DE000, v14, v15, "Couldn't get orientation from capture photo metadata, defaulting to UP.", v16, 2u);
    MEMORY[0x245D712D0](v16, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 1;
}

void sub_2456ED950(void *a1, void *a2)
{
  v30 = a2;
  v3 = sub_245747DC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245747E60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v13 = sub_245747E50();
  v14 = sub_245748910();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a1;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_2456DE000, v13, v14, "Selfie photo captured.", v15, 2u);
    a1 = v29;
    MEMORY[0x245D712D0](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v17 = [a1 pixelBuffer];
  if (v17)
  {
    v18 = v17;
    v19 = [a1 resolvedSettings];
    v20 = [v19 isFlashEnabled];

    v21 = [objc_allocWithZone(MEMORY[0x277CFF230]) init];
    [a1 timestamp];
    [v21 setTime_];
    [v21 setBuffer_];
    v22 = [a1 metadata];
    v23 = sub_245748660();

    v24 = sub_2456ED788(v23);

    [v21 setOrientation_];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = v21;
      sub_245703918(v21, v20);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CFFC18], v3);
    v26 = v30;
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30]);
    v27 = swift_allocError();
    sub_245747DE0();
    sub_245703918(v27, 256);
    swift_unknownObjectRelease();
  }
}

void sub_2456EDE04(void *a1)
{
  v3 = sub_245747DC0();
  v81 = *(v3 - 8);
  v4 = v81[8];
  MEMORY[0x28223BE20](v3);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245747E60();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v78 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v78 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v78 - v19;
  v21 = [a1 synchronizedDataForCaptureOutput_];
  if (!v21)
  {
    goto LABEL_9;
  }

  v82 = v7;
  v83 = v21;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {

    v7 = v82;
LABEL_9:
    sub_245747CF0();
    v29 = sub_245747E50();
    v30 = sub_245748920();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v7;
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2456DE000, v29, v30, "SynchronizedData did not contain video buffer data.", v32, 2u);
      MEMORY[0x245D712D0](v32, -1, -1);

      (*(v8 + 8))(v12, v31);
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    return;
  }

  v23 = v22;
  v79 = a1;
  if (([v22 sampleBufferWasDropped] & 1) == 0)
  {
    v80 = v1;
    v33 = [v23 sampleBuffer];
    IsValid = CMSampleBufferIsValid(v33);

    if (!IsValid)
    {
      if (v80[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_hasReceivedFirstFrame] == 1)
      {
        sub_245747CF0();
        v37 = sub_245747E50();
        v38 = sub_245748920();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_2456DE000, v37, v38, "Video data buffer was invalid.", v39, 2u);
          MEMORY[0x245D712D0](v39, -1, -1);
        }

        else
        {
        }

        (*(v8 + 8))(v18, v82);
        return;
      }

      goto LABEL_21;
    }

    v35 = [v23 sampleBuffer];
    v36 = v80;
    if ((v80[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_hasReceivedFirstFrame] & 1) == 0)
    {
      v80[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_hasReceivedFirstFrame] = 1;
    }

    if (v36[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_shouldRecordFrame] == 1)
    {
      sub_2456E7A6C();
      sub_2456E3040(v35);
    }

    v47 = [objc_allocWithZone(MEMORY[0x277CFF230]) init];
    CMSampleBufferGetPresentationTimeStamp(&lhs, v35);
    value = lhs.value;
    epoch = lhs.epoch;
    v50 = *&lhs.timescale;
    v51 = sub_2456E7A6C();
    v52 = *&v51[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp];
    v53 = *&v51[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp + 16];
    v54 = *&v51[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp + 8];

    rhs.epoch = v53;
    lhs.value = value;
    *&lhs.timescale = v50;
    lhs.epoch = epoch;
    rhs.value = v52;
    *&rhs.timescale = v54;
    CMTimeSubtract(&v84, &lhs, &rhs);
    lhs = v84;
    [v47 setTime_];
    v55 = sub_245747CF0();
    MEMORY[0x28223BE20](v55);
    sub_245747E30();
    v56 = *(v8 + 8);
    v57 = v35;
    v56(v20, v82);
    v58 = CMSampleBufferGetImageBuffer(v35);
    if (!v58)
    {
      v80 = "CoreIDVRGBLiveness1";
      (v81[13])(v6, *MEMORY[0x277CFFD60], v3);
      sub_245723158(MEMORY[0x277D84F90]);
      sub_245747DD0();
      sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30]);
      v64 = swift_allocError();
      sub_245747DE0();
      sub_245747CF0();
      sub_245747D00();

      v56(v20, v82);
      return;
    }

    v82 = v58;
    [v47 setBuffer_];
    v59 = CMGetAttachment(v35, *MEMORY[0x277CD3410], 0);
    v60 = v47;
    if (v59)
    {
      lhs.value = v59;
      v61 = swift_dynamicCast();
      v62 = v80;
      if (v61)
      {
        value_low = LODWORD(rhs.value);
      }

      else
      {
        value_low = 1;
      }
    }

    else
    {
      value_low = 1;
      v62 = v80;
    }

    [v47 setOrientation_];
    v65 = [v79 synchronizedDataForCaptureOutput_];
    if (!v65)
    {
LABEL_57:
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_245704218(v60);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    v66 = v65;
    objc_opt_self();
    v67 = swift_dynamicCastObjCClass();
    if (!v67 || (v68 = [v67 metadataObjects], sub_2456E730C(0, &qword_27EE247D0, 0x277CE5B98), v69 = sub_2457487A0(), v68, v70 = sub_2456EC578(v69), , !v70))
    {
LABEL_56:

      goto LABEL_57;
    }

    if (v70 >> 62)
    {
      v71 = sub_245748B70();
      if (v71)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v71)
      {
LABEL_44:
        v79 = v66;
        v81 = v60;
        lhs.value = MEMORY[0x277D84F90];
        sub_245748AF0();
        if (v71 < 0)
        {
LABEL_62:
          __break(1u);
          return;
        }

        v72 = 0;
        do
        {
          if ((v70 & 0xC000000000000001) != 0)
          {
            v73 = MEMORY[0x245D70890](v72, v70);
          }

          else
          {
            v73 = *(v70 + 8 * v72 + 32);
          }

          v74 = v73;
          ++v72;
          v75 = [objc_allocWithZone(MEMORY[0x277CFF228]) init];
          [v74 bounds];
          CGRectAV2VN();
          [v75 setBounds_];

          sub_245748AD0();
          v76 = *(lhs.value + 16);
          sub_245748B00();
          sub_245748B10();
          sub_245748AE0();
        }

        while (v71 != v72);

        v57 = v35;
        v60 = v81;
        v66 = v79;
        goto LABEL_55;
      }
    }

LABEL_55:
    sub_2456E730C(0, &qword_27EE247D8, 0x277CFF228);
    v77 = sub_245748790();

    [v60 setFaces_];

    v66 = v77;
    goto LABEL_56;
  }

  if (v1[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_hasReceivedFirstFrame] != 1 || [v23 droppedReason] == 1)
  {
LABEL_21:
    v40 = v83;

    return;
  }

  v24 = v1;
  sub_245747CF0();
  v25 = v83;
  v26 = sub_245747E50();
  v27 = sub_245748920();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = [v23 droppedReason];

    _os_log_impl(&dword_2456DE000, v26, v27, "AVSession dropped video data (AVCaptureOutputDataDroppedReason = %ld", v28, 0xCu);
    MEMORY[0x245D712D0](v28, -1, -1);
  }

  else
  {

    v26 = v25;
  }

  (*(v8 + 8))(v15, v82);
  if ([v23 droppedReason] == 2)
  {

    v41 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outOfBuffersCount;
    v42 = *&v1[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outOfBuffersCount];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (!v43)
    {
      goto LABEL_31;
    }

    __break(1u);
  }

  v45 = [v23 droppedReason];

  if (v45 == 3)
  {
    v41 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_discontinuityCount;
    v46 = *&v24[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_discontinuityCount];
    v43 = __OFADD__(v46, 1);
    v44 = v46 + 1;
    if (!v43)
    {
LABEL_31:
      *&v24[v41] = v44;
      return;
    }

    __break(1u);
    goto LABEL_62;
  }
}

uint64_t sub_2456EEACC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_245747C30() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2456EEC10;

  return sub_2456EAE68(a1, v10, v11, v12, v1 + v7, v1 + v9, v13);
}

uint64_t sub_2456EEC10()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

void sub_2456EED80()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_shouldRecordFrame) = 1;
  v4 = v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_recordingStartTime;
  if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_recordingStartTime + 8) == 1)
  {
    *v4 = CACurrentMediaTime();
    *(v4 + 8) = 0;
  }

  if (v2)
  {
    v2();
  }
}

uint64_t sub_2456EEDEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2456EEE8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2456EEED4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2456EEF50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2456EF000(const void *a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 632) = 0x3FEFAE147AE147AELL;
  *(v1 + 640) = 0x3FD0000000000000;
  memcpy((v1 + 48), a1, 0x240uLL);
  *(v1 + 624) = PADClassifierInit();
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_stitchDetectedWithNotification_ name:*MEMORY[0x277CFF238] object:0];

  return v1;
}

uint64_t sub_2456EF0CC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CFF218]) init];
  swift_beginAccess();
  memcpy(__dst, (v0 + 48), sizeof(__dst));
  memcpy(v16, (v0 + 48), 0x240uLL);
  sub_2456F3944(__dst, aBlock);
  sub_24571F664();
  sub_2456E730C(0, &qword_27EE24880, 0x277CCABB0);
  v3 = sub_245748790();
  sub_2456F38F0(__dst);

  [v2 setGestures_];

  memcpy(v16, (v0 + 48), 0x240uLL);
  memcpy(aBlock, (v0 + 48), sizeof(aBlock));
  sub_2456F3944(v16, &v13);
  sub_24571F9A4();
  v4 = sub_245748790();
  sub_2456F38F0(v16);

  [v2 setGestureTypes_];

  memcpy(aBlock, (v0 + 48), sizeof(aBlock));
  [v2 setMinNumberOfGestures_];
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v1 + 624);
  aBlock[4] = sub_2456F39A0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456F0DB0;
  aBlock[3] = &block_descriptor_1;
  v9 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  aBlock[4] = sub_2456F39A8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456E7A28;
  aBlock[3] = &block_descriptor_6;
  v10 = _Block_copy(aBlock);

  aBlock[4] = sub_2456F39B0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456F0E18;
  aBlock[3] = &block_descriptor_9;
  v11 = _Block_copy(aBlock);

  [v8 startLiveness:v2 onGestureStart:v9 onIncorrectGestureDetected:v10 onGesturesFinished:v11];
  _Block_release(v11);
  _Block_release(v10);
  _Block_release(v9);

  return swift_unknownObjectRelease();
}

uint64_t sub_2456EF4A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = [a1 integerValue];
    if (*(v7 + 40) == 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = off_28587A640;
        type metadata accessor for RGBLivenessController();
        v9(v8);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = *(v7 + 32);
      v11 = sub_245748810();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v7;
      v12[5] = v10;
      v12[6] = v8;

      sub_24572A644(0, 0, v5, &unk_24574AA18, v12);
    }

    *(v7 + 32) = v8;
    *(v7 + 40) = 0;
  }

  return result;
}

uint64_t sub_2456EF664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_245748B30();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456EF728, 0, 0);
}

uint64_t sub_2456EF728()
{
  v11 = v0;
  v1 = v0[10];
  v2 = v0[5];
  swift_beginAccess();
  memcpy(__dst, (v2 + 48), sizeof(__dst));
  v3 = sub_24571FFD0();
  v4 = 1000000000000000 * v3;
  v5 = (v3 * 0x38D7EA4C68000uLL) >> 64;
  v6 = (v3 >> 63) & 0xFFFC72815B398000;
  sub_245748BF0();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_2456EF85C;
  v8 = v0[10];

  return sub_24572E84C(v4, v6 + v5, 0, 0, 1);
}

uint64_t sub_2456EF85C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2456EFA94;
  }

  else
  {
    v6 = sub_2456EF9CC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2456EF9CC()
{
  v1 = v0[5];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = off_28587A658;
    type metadata accessor for RGBLivenessController();
    v4(v3, v2);
    swift_unknownObjectRelease();
  }

  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2456EFA94()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_2456EFAF8()
{
  v0 = sub_2457485F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245748630();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_2456E730C(0, &qword_27EE24838, 0x277D85C78);
    v12 = sub_245748980();
    v15 = v5;
    v13 = v12;
    aBlock[4] = sub_2456F3B48;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2456E7A28;
    aBlock[3] = &block_descriptor_24;
    v14 = _Block_copy(aBlock);

    sub_245748610();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2456F39D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
    sub_2456F3A30();
    sub_245748A50();
    MEMORY[0x245D70770](0, v9, v4, v14);
    _Block_release(v14);

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v15);
  }

  return result;
}

uint64_t sub_2456EFDA8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2456FF120();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2456EFDF8(void *a1)
{
  v2 = sub_2457485F0();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245748630();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245747E60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    swift_beginAccess();
    if (*(v17 + 569) << 8 == 512)
    {
      sub_245747CE0();
      sub_2456E730C(0, &qword_27EE24838, 0x277D85C78);
      v18 = sub_245748980();
      v19 = swift_allocObject();
      *(v19 + 16) = a1;
      *(v19 + 24) = v17;
      aBlock[4] = sub_2456F39D0;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2456E7A28;
      aBlock[3] = &block_descriptor_15;
      v20 = _Block_copy(aBlock);
      v21 = a1;

      sub_245748610();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2456F39D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
      sub_2456F3A30();
      sub_245748A50();
      MEMORY[0x245D70770](0, v10, v5, v20);
      _Block_release(v20);

      (*(v26 + 8))(v5, v2);
      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      sub_245747CF0();
      v22 = sub_245747E50();
      v23 = sub_245748910();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2456DE000, v22, v23, "Performing passive liveness only, skipping gestureFinishedMonitoring", v24, 2u);
        MEMORY[0x245D712D0](v24, -1, -1);
      }

      else
      {
      }

      return (*(v12 + 8))(v15, v11);
    }
  }

  return result;
}

void sub_2456F0240(void *a1, uint64_t a2)
{
  v4 = sub_245747E60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  if (a1)
  {
    v13 = a1;
    sub_245747CF0();
    v14 = a1;
    v15 = sub_245747E50();
    v16 = sub_245748920();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = sub_245748C20();
      v22 = sub_24572EDDC(v20, v21, &v28);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2456DE000, v15, v16, "Gestures finished with error: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x245D712D0](v19, -1, -1);
      MEMORY[0x245D712D0](v18, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2456FF760(a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v23 = sub_245748810();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    sub_2457487F0();

    v24 = sub_2457487E0();
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = a2;
    sub_24572A644(0, 0, v12, &unk_24574A9F8, v25);
  }
}

uint64_t sub_2456F0554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for RGBLivenessModel.Event(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();
  v13 = sub_245748B30();
  v4[14] = v13;
  v14 = *(v13 - 8);
  v4[15] = v14;
  v15 = *(v14 + 64) + 15;
  v4[16] = swift_task_alloc();
  sub_2457487F0();
  v4[17] = sub_2457487E0();
  v17 = sub_2457487C0();
  v4[18] = v17;
  v4[19] = v16;

  return MEMORY[0x2822009F8](sub_2456F0748, v17, v16);
}

uint64_t sub_2456F0748()
{
  v29 = v0;
  v1 = v0[5];
  if (*(v1 + 40))
  {
    v2 = v0[17];

    v3 = v0[5];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = v0[12];
      v6 = v0[10];
      v26 = v0[13];
      v27 = v0[11];
      v8 = v0[8];
      v7 = v0[9];
      v10 = v0[6];
      v9 = v0[7];
      v11 = *(v0[5] + 40);
      v12 = Strong;
      (*(v7 + 16))(v6, Strong + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v8);
      memcpy(__dst, (v12 + 64), sizeof(__dst));
      *v9 = sub_245720B04() & 1;
      v9[1] = v11;
      swift_storeEnumTagMultiPayload();
      sub_2457488A0();
      swift_unknownObjectRelease();
      (*(v7 + 8))(v6, v8);
      (*(v5 + 8))(v26, v27);
    }

    v13 = v0[16];
    v14 = v0[13];
    v15 = v0[10];
    v16 = v0[7];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[16];
    swift_beginAccess();
    memcpy(__dst, (v1 + 48), sizeof(__dst));
    v20 = sub_24572027C();
    v21 = 1000000000000000 * v20;
    v22 = (v20 * 0x38D7EA4C68000uLL) >> 64;
    v23 = (v20 >> 63) & 0xFFFC72815B398000;
    sub_245748BF0();
    v24 = swift_task_alloc();
    v0[20] = v24;
    *v24 = v0;
    v24[1] = sub_2456F09EC;
    v25 = v0[16];

    return sub_24572E84C(v21, v23 + v22, 0, 0, 1);
  }
}

uint64_t sub_2456F09EC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 168) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 152);
  v9 = *(v2 + 144);
  if (v0)
  {
    v10 = sub_2456F0D18;
  }

  else
  {
    v10 = sub_2456F0B84;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2456F0B84()
{
  v21 = v0;
  v1 = v0[17];

  v2 = v0[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = v0[12];
    v5 = v0[10];
    v18 = v0[13];
    v19 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    v10 = *(v0[5] + 40);
    v11 = Strong;
    (*(v6 + 16))(v5, Strong + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v7);
    memcpy(__dst, (v11 + 64), sizeof(__dst));
    *v8 = sub_245720B04() & 1;
    v8[1] = v10;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v18, v19);
  }

  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2456F0D18()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];
  v7 = v0[21];

  return v6();
}

void sub_2456F0DB0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2456F0E18(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2456F0E84(void *__src)
{
  *(v2 + 1832) = v1;
  memcpy((v2 + 656), __src, 0x240uLL);

  return MEMORY[0x2822009F8](sub_2456F0EF8, 0, 0);
}

uint64_t sub_2456F0EF8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = (v0 + 154);
  v4 = v1[229];
  swift_beginAccess();
  memcpy(v1 + 10, (v4 + 48), 0x240uLL);
  memcpy((v4 + 48), v1 + 82, 0x240uLL);
  sub_2456F3944((v1 + 82), v3);
  sub_2456F38F0((v1 + 10));
  v1[230] = *(v4 + 624);
  v1[2] = v1;
  v1[3] = sub_2456F1064;
  v5 = swift_continuation_init();
  v1[161] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE248E0, &unk_24574AA68);
  v1[158] = v5;
  v1[154] = MEMORY[0x277D85DD0];
  v1[155] = 1107296256;
  v1[156] = sub_2456F3D64;
  v1[157] = &block_descriptor_58;
  [swift_unknownObjectRetain() cancelWithCompletion_];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2456F1064()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2456F1144, 0, 0);
}

uint64_t sub_2456F1144()
{
  v1 = v0[230];
  v2 = v0[229];
  swift_unknownObjectRelease();
  v3 = PADClassifierInit();
  v4 = *(v2 + 624);
  *(v2 + 624) = v3;
  swift_unknownObjectRelease();
  sub_2456EF0CC();
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_2456F11D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[75] = v4;
  v5[74] = a4;
  v5[73] = a3;
  v5[72] = a2;
  v5[71] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0) - 8) + 64) + 15;
  v5[76] = swift_task_alloc();
  v7 = type metadata accessor for RGBLivenessResult();
  v5[77] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[78] = swift_task_alloc();
  v9 = sub_245747E60();
  v5[79] = v9;
  v10 = *(v9 - 8);
  v5[80] = v10;
  v11 = *(v10 + 64) + 15;
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456F1318, 0, 0);
}

uint64_t sub_2456F1318()
{
  v1 = *(v0 + 656);
  sub_245747CF0();
  v2 = sub_245747E50();
  v3 = sub_245748910();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2456DE000, v2, v3, "Completing Liveness with selfie", v4, 2u);
    MEMORY[0x245D712D0](v4, -1, -1);
  }

  v5 = *(v0 + 656);
  v6 = *(v0 + 640);
  v7 = *(v0 + 632);
  v8 = *(v0 + 600);
  v9 = *(v0 + 568);

  v10 = *(v6 + 8);
  *(v0 + 664) = v10;
  v10(v5, v7);
  *(v0 + 672) = *(v8 + 624);
  swift_beginAccess();
  memcpy((v0 + 80), (v8 + 120), 0x14DuLL);
  LODWORD(v7) = sub_2456F3C64(v0 + 80) != 1;
  LODWORD(v6) = *(v0 + 410);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 552;
  *(v0 + 24) = sub_2456F1538;
  v11 = swift_continuation_init();
  *(v0 + 472) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248A8, &qword_24574AA30);
  *(v0 + 416) = MEMORY[0x277D85DD0];
  *(v0 + 424) = 1107296256;
  *(v0 + 432) = sub_2456F206C;
  *(v0 + 440) = &block_descriptor_33;
  *(v0 + 448) = v11;
  [swift_unknownObjectRetain() finishLivenessWithSelfie:v9 performIDMatching:v7 & v6 completion:v0 + 416];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2456F1538()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 680) = v2;
  if (v2)
  {
    v3 = sub_2456F1E18;
  }

  else
  {
    v3 = sub_2456F1648;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2456F1648()
{
  v1 = v0[84];
  v2 = v0[69];
  swift_unknownObjectRelease();
  sub_2456E730C(0, &qword_27EE248B0, 0x277CBEBD0);
  v3 = sub_245747D80();
  v4 = MEMORY[0x245D70730](v3);

  if (v4)
  {
    v5 = v0[75];
    sub_2456E730C(0, &unk_27EE248D0, 0x277CCA9B8);
    v6 = sub_245748A00();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = v6;
      sub_2456FF760(v7);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v8 = v0[78];
    v98 = v0[76];
    v99 = v0[77];
    v9 = v0[75];
    v97 = v0[74];
    v103 = v0[73];
    v102 = v0[72];
    v10 = v0[71];
    swift_beginAccess();
    RGBLivenessConfig.imageCompressionQuality.getter();
    v12 = v11;
    swift_endAccess();
    v13 = sub_245747DA0();
    v14 = MEMORY[0x245D70730](v13);

    if (v14)
    {
      v12 = 0.99;
    }

    v104 = sub_2456F2144(v10);
    v15 = sub_2456F2444(v104, v12);
    v100 = v16;
    v101 = v15;
    v17 = [v2 glassesLabel];
    v18 = sub_245748700();
    v95 = v19;
    v96 = v18;

    v20 = [v2 headgearLabel];
    v21 = sub_245748700();
    v93 = v22;
    v94 = v21;

    v23 = [v2 faceHairLabel];
    v24 = sub_245748700();
    v91 = v25;
    v92 = v24;

    v26 = [v2 ethnicityLabel];
    v27 = sub_245748700();
    v89 = v28;
    v90 = v27;

    v29 = [v2 skintoneLabel];
    v30 = sub_245748700();
    v87 = v31;
    v88 = v30;

    v32 = [v2 sexLabel];
    v33 = sub_245748700();
    v85 = v34;
    v86 = v33;

    v35 = [v2 ageLabel];
    v36 = sub_245748700();
    v83 = v37;
    v84 = v36;

    v38 = [v2 timestampsID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248B8, &qword_24574AA38);
    v82 = sub_2457487A0();

    v39 = [v2 assessmentID];
    [v39 floatValue];
    v41 = v40;

    v42 = [v2 assessmentLivePRD];
    [v42 floatValue];
    v44 = v43;

    v45 = [v2 assessmentFakePRD];
    [v45 floatValue];
    v47 = v46;

    v48 = [v2 assessmentsPRD];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248C0, &qword_24574AA40);
    v81 = sub_2457487A0();

    v49 = [v2 ignoredStitches];
    v80 = [v49 integerValue];

    v50 = [v2 maxNccHigh];
    [v50 floatValue];
    v52 = v51;

    v53 = [v2 maxNccLow];
    [v53 floatValue];
    v55 = v54;

    v56 = [v2 assessmentTA];
    v79 = [v56 integerValue];

    v57 = [v2 assessmentsTA];
    v78 = sub_2457487A0();

    v58 = [v2 assessmentFAC];
    [v58 floatValue];
    v60 = v59;

    v61 = [v2 timestampsFAC];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248C8, &qword_24574AA48);
    v77 = sub_2457487A0();

    v62 = [v2 assessmentsFAC];
    sub_2456E730C(0, &qword_27EE24880, 0x277CCABB0);
    v63 = sub_2457487A0();

    v64 = [v2 gestureSequence];
    v65 = sub_2457487A0();

    v66 = [v2 livenessLabel];
    v67 = [v66 integerValue];

    sub_2456E7040(v97, v98);
    v68 = *(v99 + 112);
    v69 = sub_245747C30();
    (*(*(v69 - 8) + 56))(v8 + v68, 1, 1, v69);
    *v8 = v102;
    *(v8 + 8) = v96;
    *(v8 + 16) = v95;
    *(v8 + 24) = v94;
    *(v8 + 32) = v93;
    *(v8 + 40) = v92;
    *(v8 + 48) = v91;
    *(v8 + 56) = v90;
    *(v8 + 64) = v89;
    *(v8 + 72) = v88;
    *(v8 + 80) = v87;
    *(v8 + 88) = v86;
    *(v8 + 96) = v85;
    *(v8 + 104) = v84;
    *(v8 + 112) = v83;
    *(v8 + 120) = v103;
    *(v8 + 128) = v82;
    *(v8 + 136) = v41;
    *(v8 + 140) = v44;
    *(v8 + 144) = v47;
    *(v8 + 152) = v81;
    *(v8 + 160) = v80;
    *(v8 + 168) = v52;
    *(v8 + 172) = v55;
    *(v8 + 176) = v79;
    *(v8 + 184) = v78;
    *(v8 + 192) = v60;
    *(v8 + 200) = v77;
    *(v8 + 208) = v63;
    *(v8 + 216) = v65;
    *(v8 + 224) = v67;

    sub_2456E729C(v98, v8 + v68);
    v70 = (v8 + *(v99 + 116));
    *v70 = v101;
    v70[1] = v100;
    sub_245747CE0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2456FF3B0(v0[78]);
      swift_unknownObjectRelease();
    }

    sub_2456F3C94(v0[78]);
  }

  v71 = v0[82];
  v72 = v0[81];
  v73 = v0[78];
  v74 = v0[76];

  v75 = v0[1];

  return v75();
}

uint64_t sub_2456F1E18()
{
  v34 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v3 = *(v0 + 648);
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_245747CF0();
  v4 = v1;
  v5 = sub_245747E50();
  v6 = sub_245748920();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 680);
    v32 = *(v0 + 664);
    v8 = *(v0 + 648);
    v9 = *(v0 + 640);
    v10 = *(v0 + 632);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = *(v0 + 504);
    v13 = *(v0 + 512);
    v15 = *(v0 + 520);
    v16 = sub_245748C20();
    v18 = sub_24572EDDC(v16, v17, &v33);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2456DE000, v5, v6, "Error occurred before finishing liveness: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x245D712D0](v12, -1, -1);
    MEMORY[0x245D712D0](v11, -1, -1);

    v32(v8, v10);
  }

  else
  {
    v19 = *(v0 + 664);
    v20 = *(v0 + 648);
    v21 = *(v0 + 640);
    v22 = *(v0 + 632);

    v19(v20, v22);
  }

  v23 = *(v0 + 600);
  Strong = swift_unknownObjectWeakLoadStrong();
  v25 = *(v0 + 680);
  if (Strong)
  {
    sub_2456FF760(*(v0 + 680));

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v26 = *(v0 + 656);
  v27 = *(v0 + 648);
  v28 = *(v0 + 624);
  v29 = *(v0 + 608);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2456F206C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2456F2144(void *a1)
{
  v2 = [a1 orientation] - 2;
  if (v2 > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_24574AA78[v2];
  }

  v4 = [a1 buffer];
  v5 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];

  v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage:v5 scale:v3 orientation:1.0];
  swift_beginAccess();
  *&v7 = COERCE_DOUBLE(RGBLivenessConfig.imageWidth.getter());
  v9 = v8;
  swift_endAccess();
  if (v9)
  {
    [v6 size];
    v11 = v10;
  }

  else
  {
    v11 = *&v7;
  }

  swift_beginAccess();
  *&v12 = COERCE_DOUBLE(RGBLivenessConfig.imageHeight.getter());
  v14 = v13;
  swift_endAccess();
  if (v14)
  {
    [v6 size];
    v16 = v15;
  }

  else
  {
    v16 = *&v12;
  }

  [v6 size];
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = v11;
  v30.size.height = v16;
  v29 = AVMakeRectWithAspectRatioInsideRect(v28, v30);
  width = v29.size.width;
  height = v29.size.height;
  v19 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v20 = swift_allocObject();
  *(v20 + 2) = v6;
  v20[3] = width;
  v20[4] = height;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2456F3CF8;
  *(v21 + 24) = v20;
  v27[4] = sub_2456F3D60;
  v27[5] = v21;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 1107296256;
  v27[2] = sub_245703158;
  v27[3] = &block_descriptor_52;
  v22 = _Block_copy(v27);
  v23 = v6;

  v24 = [v19 imageWithActions_];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_2456F2444(void *a1, double a2)
{
  [a1 size];
  v5 = v4;
  [a1 size];
  v7 = v6;
  swift_beginAccess();
  v8 = COERCE_DOUBLE(RGBLivenessConfig.imageWidth.getter());
  if ((v9 & 1) == 0)
  {
    v5 = v8;
  }

  v10 = COERCE_DOUBLE(RGBLivenessConfig.imageHeight.getter());
  if ((v11 & 1) == 0)
  {
    v7 = v10;
  }

  swift_endAccess();
  [a1 size];
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v5;
  v25.size.height = v7;
  v24 = AVMakeRectWithAspectRatioInsideRect(v23, v25);
  width = v24.size.width;
  height = v24.size.height;
  v14 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v15 = swift_allocObject();
  *(v15 + 2) = a1;
  v15[3] = width;
  v15[4] = height;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2456F3D5C;
  *(v16 + 24) = v15;
  v22[4] = sub_2456F3CF0;
  v22[5] = v16;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_245703158;
  v22[3] = &block_descriptor_42;
  v17 = _Block_copy(v22);
  v18 = a1;

  v19 = [v14 JPEGDataWithCompressionQuality:v17 actions:a2];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v21 = sub_245747C60();

    return v21;
  }

  return result;
}

uint64_t sub_2456F2694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v6 = type metadata accessor for RGBLivenessResult();
  v4[28] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v8 = sub_245747E60();
  v4[30] = v8;
  v9 = *(v8 - 8);
  v4[31] = v9;
  v10 = *(v9 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456F27CC, 0, 0);
}

uint64_t sub_2456F27CC()
{
  v1 = v0[33];
  sub_245747CF0();
  v2 = sub_245747E50();
  v3 = sub_245748910();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2456DE000, v2, v3, "Completing StepUp without selfie", v4, 2u);
    MEMORY[0x245D712D0](v4, -1, -1);
  }

  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[31];
  v8 = v0[26];

  v9 = *(v7 + 8);
  v0[34] = v9;
  v9(v5, v6);
  v0[35] = *(v8 + 624);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_2456F299C;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248A8, &qword_24574AA30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2456F206C;
  v0[13] = &block_descriptor_55;
  v0[14] = v10;
  [swift_unknownObjectRetain() finishLivenessStepUp_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2456F299C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_2456F31F0;
  }

  else
  {
    v3 = sub_2456F2AAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2456F2AAC()
{
  v1 = v0[35];
  v2 = v0[21];
  swift_unknownObjectRelease();
  sub_2456E730C(0, &qword_27EE248B0, 0x277CBEBD0);
  v3 = sub_245747D80();
  v4 = MEMORY[0x245D70730](v3);

  if (v4)
  {
    v5 = v0[26];
    sub_2456E730C(0, &unk_27EE248D0, 0x277CCA9B8);
    v6 = sub_245748A00();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = v6;
      sub_2456FF760(v7);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v8 = v0[29];
    v71 = v0[28];
    v9 = v0[27];
    v92 = v0[26];
    v87 = v0[25];
    v90 = v0[23];
    v91 = v0[24];
    v10 = [v2 glassesLabel];
    v89 = sub_245748700();
    v88 = v11;

    v12 = [v2 headgearLabel];
    v13 = sub_245748700();
    v85 = v14;
    v86 = v13;

    v15 = [v2 faceHairLabel];
    v16 = sub_245748700();
    v83 = v17;
    v84 = v16;

    v18 = [v2 ethnicityLabel];
    v19 = sub_245748700();
    v81 = v20;
    v82 = v19;

    v21 = [v2 skintoneLabel];
    v22 = sub_245748700();
    v79 = v23;
    v80 = v22;

    v24 = [v2 sexLabel];
    v25 = sub_245748700();
    v77 = v26;
    v78 = v25;

    v27 = [v2 ageLabel];
    v28 = sub_245748700();
    v75 = v29;
    v76 = v28;

    v30 = [v2 timestampsID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248B8, &qword_24574AA38);
    v74 = sub_2457487A0();

    v31 = [v2 assessmentID];
    [v31 floatValue];
    v33 = v32;

    v34 = [v2 assessmentLivePRD];
    [v34 floatValue];
    v36 = v35;

    v37 = [v2 assessmentFakePRD];
    [v37 floatValue];
    v39 = v38;

    v40 = [v2 assessmentsPRD];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248C0, &qword_24574AA40);
    v73 = sub_2457487A0();

    v41 = [v2 ignoredStitches];
    v72 = [v41 integerValue];

    v42 = [v2 maxNccHigh];
    [v42 floatValue];
    v44 = v43;

    v45 = [v2 maxNccLow];
    [v45 floatValue];
    v47 = v46;

    v48 = [v2 assessmentTA];
    v70 = [v48 integerValue];

    v49 = [v2 assessmentsTA];
    v69 = sub_2457487A0();

    v50 = [v2 assessmentFAC];
    [v50 floatValue];
    v52 = v51;

    v53 = [v2 timestampsFAC];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248C8, &qword_24574AA48);
    v68 = sub_2457487A0();

    v54 = [v2 assessmentsFAC];
    sub_2456E730C(0, &qword_27EE24880, 0x277CCABB0);
    v55 = sub_2457487A0();

    v56 = [v2 gestureSequence];
    v57 = sub_2457487A0();

    v58 = [v2 livenessLabel];
    v59 = [v58 integerValue];

    sub_2456E7040(v87, v9);
    v60 = *(v71 + 112);
    v61 = sub_245747C30();
    (*(*(v61 - 8) + 56))(v8 + v60, 1, 1, v61);
    *v8 = v90;
    *(v8 + 8) = v89;
    *(v8 + 16) = v88;
    *(v8 + 24) = v86;
    *(v8 + 32) = v85;
    *(v8 + 40) = v84;
    *(v8 + 48) = v83;
    *(v8 + 56) = v82;
    *(v8 + 64) = v81;
    *(v8 + 72) = v80;
    *(v8 + 80) = v79;
    *(v8 + 88) = v78;
    *(v8 + 96) = v77;
    *(v8 + 104) = v76;
    *(v8 + 112) = v75;
    *(v8 + 120) = v91;
    *(v8 + 128) = v74;
    *(v8 + 136) = v33;
    *(v8 + 140) = v36;
    *(v8 + 144) = v39;
    *(v8 + 152) = v73;
    *(v8 + 160) = v72;
    *(v8 + 168) = v44;
    *(v8 + 172) = v47;
    *(v8 + 176) = v70;
    *(v8 + 184) = v69;
    *(v8 + 192) = v52;
    *(v8 + 200) = v68;
    *(v8 + 208) = v55;
    *(v8 + 216) = v57;
    *(v8 + 224) = v59;

    sub_2456E729C(v9, v8 + v60);
    *(v8 + *(v71 + 116)) = xmmword_24574A950;
    sub_245747CE0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2456FF3B0(v0[29]);
      swift_unknownObjectRelease();
    }

    sub_2456F3C94(v0[29]);
  }

  v63 = v0[32];
  v62 = v0[33];
  v64 = v0[29];
  v65 = v0[27];

  v66 = v0[1];

  return v66();
}

uint64_t sub_2456F31F0()
{
  v34 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 256);
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_245747CF0();
  v4 = v2;
  v5 = sub_245747E50();
  v6 = sub_245748920();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 288);
    v32 = *(v0 + 272);
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = *(v0 + 240);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 160);
    v16 = sub_245748C20();
    v18 = sub_24572EDDC(v16, v17, &v33);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2456DE000, v5, v6, "Error occurred before finishing liveness step up: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x245D712D0](v12, -1, -1);
    MEMORY[0x245D712D0](v11, -1, -1);

    v32(v8, v10);
  }

  else
  {
    v19 = *(v0 + 272);
    v21 = *(v0 + 248);
    v20 = *(v0 + 256);
    v22 = *(v0 + 240);

    v19(v20, v22);
  }

  v23 = *(v0 + 208);
  Strong = swift_unknownObjectWeakLoadStrong();
  v25 = *(v0 + 288);
  if (Strong)
  {
    sub_2456FF760(*(v0 + 288));

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v27 = *(v0 + 256);
  v26 = *(v0 + 264);
  v28 = *(v0 + 232);
  v29 = *(v0 + 216);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2456F3434()
{
  v0 = sub_245747E60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16[-4] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245747B00();
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  strcpy(v16, "shouldIgnore");
  HIBYTE(v16[6]) = 0;
  v16[7] = -5120;
  sub_245748A80();
  if (!*(v6 + 16) || (v7 = sub_24572F490(v17), (v8 & 1) == 0))
  {

    sub_2456F389C(v17);
LABEL_11:
    v18 = 0u;
    v19 = 0u;
    goto LABEL_12;
  }

  sub_2456E6F9C(*(v6 + 56) + 32 * v7, &v18);
  sub_2456F389C(v17);

  if (!*(&v19 + 1))
  {
LABEL_12:
    sub_2456F3834(&v18);
    goto LABEL_13;
  }

  sub_2456E730C(0, &qword_27EE24880, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v9 = v17[0];
    if ([v17[0] BOOLValue])
    {
      sub_245747CF0();
      v10 = sub_245747E50();
      v11 = sub_245748910();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2456DE000, v10, v11, "A stitch was detected but will be ignored.", v12, 2u);
        MEMORY[0x245D712D0](v12, -1, -1);
      }

      return (*(v1 + 8))(v4, v0);
    }
  }

LABEL_13:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = off_28587A650[0];
    type metadata accessor for RGBLivenessController();
    v14();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2456F37B4()
{
  sub_2456EEF28(v0 + 16);
  memcpy(v3, (v0 + 48), sizeof(v3));
  sub_2456F38F0(v3);
  v1 = *(v0 + 624);
  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t sub_2456F3834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24878, &qword_24574A9E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2456F39D8()
{
  result = qword_27EE24820;
  if (!qword_27EE24820)
  {
    sub_2457485F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE24820);
  }

  return result;
}

unint64_t sub_2456F3A30()
{
  result = qword_27EE24830;
  if (!qword_27EE24830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE24828, &qword_24574A930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE24830);
  }

  return result;
}

uint64_t sub_2456F3A94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2456F3D40;

  return sub_2456F0554(a1, v4, v5, v6);
}

uint64_t objectdestroy_17Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2456F3B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2456EEC10;

  return sub_2456EF664(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2456F3C64(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2456F3C94(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2456F3D64(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_2456F3D98()
{
  v1 = (v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts);
  if (*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts + 8) != 1)
  {
    return *v1;
  }

  memcpy(v3, (v0 + 64), sizeof(v3));
  result = sub_245720528();
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_2456F3E04()
{
  v1 = (v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode);
  if (*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode + 8) != 1)
  {
    return *v1;
  }

  memcpy(v3, (v0 + 64), sizeof(v3));
  if (sub_245720840())
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_2456F3E7C(void *__src, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  *(v4 + 16) = 0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession) = 0;
  v8 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hapticGenerator;
  *(v4 + v8) = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_gestureDetectedWaitTask) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasPresentedFirstGesture) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_firstTutorialVideoFinishedPlaying) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasCompletedGestureMonitoring) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_ignoreStitchCounter) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_consecutiveInvalidFrames) = 0;
  v9 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues) = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxMonitor;
  *(v4 + v10) = [objc_allocWithZone(MEMORY[0x277CFFE48]) init];
  v11 = v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps) = v9;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps) = v9;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames) = v9;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_failureReason) = 11;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_isStoppingLiveRecording) = 0;
  v12 = v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsPreambleStartTime;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsMonitoringStartTime) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_previousAnalyticsState) = 0;
  v14 = v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsGesture;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCause) = 2;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertStartTime) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsButtonTapStateCounter) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCount) = 0;
  memcpy((v4 + 64), __src, 0x240uLL);
  memcpy(v28, __src, sizeof(v28));
  sub_2456F3944(__dst, v27);
  v15 = RGBLivenessConfig.imageWidth.getter();
  LOBYTE(v9) = v16;
  memcpy(v27, __dst, sizeof(v27));
  v17 = RGBLivenessConfig.imageHeight.getter();
  LOBYTE(v10) = v18;
  sub_2456E71D8(a2, v26);
  v19 = type metadata accessor for RGBLivenessImageManager();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v4 + 640) = sub_2457034F8(v15, v9 & 1, v17, v10 & 1, v26);
  memcpy(v28, __dst, sizeof(v28));
  type metadata accessor for RGBLivenessClassifierManager();
  swift_allocObject();
  v22 = sub_2456EF000(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  *(v4 + 648) = v22;
  v23 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  (*(*(v24 - 8) + 32))(v4 + v23, a3, v24);
  return v4;
}

char *sub_2456F41E4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D76660] object:0];

  sub_2456EEF50((v0 + 24), &qword_27EE249F8, &qword_24574AC30);
  memcpy(__dst, v0 + 64, 0x240uLL);
  sub_2456F38F0(__dst);
  v2 = *(v0 + 80);

  v3 = *(v0 + 81);

  v4 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession];

  v7 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask];

  v8 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask];

  v9 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_gestureDetectedWaitTask];

  v10 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues];

  v11 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps];

  v12 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps];

  v13 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames];

  return v0;
}

uint64_t sub_2456F4380()
{
  sub_2456F41E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RGBLivenessController()
{
  result = qword_27EE249E0;
  if (!qword_27EE249E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2456F442C()
{
  sub_2456F4574();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2456F4574()
{
  if (!qword_27EE249F0)
  {
    type metadata accessor for RGBLivenessModel.Event(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE244D8, &qword_24574AA50);
    v0 = sub_2457488C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE249F0);
    }
  }
}

uint64_t sub_2456F4610()
{
  v1 = v0[18];
  v2 = *(*(v1 + 640) + 32);

  sub_2456E9668();

  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v1 name:*MEMORY[0x277D76660] object:0];

  v4 = *(v1 + 648);
  v0[19] = v4;
  v0[20] = *(v4 + 624);
  v0[2] = v0;
  v0[3] = sub_2456F47A8;

  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE248E0, &unk_24574AA68);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2456F3D64;
  v0[13] = &block_descriptor_2;
  v0[14] = v5;
  [swift_unknownObjectRetain() cancelWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2456F47A8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2456F4888, 0, 0);
}

uint64_t sub_2456F4888()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];

  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask;
  if (*(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask))
  {
    v5 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    sub_245748870();

    v6 = *(v3 + v4);
  }

  v7 = v0[18];
  *(v3 + v4) = 0;

  v8 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask;
  if (*(v7 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
  {
    v9 = *(v7 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    sub_245748870();

    v10 = *(v7 + v8);
  }

  *(v7 + v8) = 0;

  v11 = v0[1];

  return v11();
}

uint64_t sub_2456F49D0(uint64_t a1)
{
  v2[281] = v1;
  v2[280] = a1;
  v3 = sub_245747E60();
  v2[282] = v3;
  v4 = *(v3 - 8);
  v2[283] = v4;
  v5 = *(v4 + 64) + 15;
  v2[284] = swift_task_alloc();
  v6 = sub_245747DC0();
  v2[285] = v6;
  v7 = *(v6 - 8);
  v2[286] = v7;
  v8 = *(v7 + 64) + 15;
  v2[287] = swift_task_alloc();
  v9 = sub_2457485F0();
  v2[288] = v9;
  v10 = *(v9 - 8);
  v2[289] = v10;
  v11 = *(v10 + 64) + 15;
  v2[290] = swift_task_alloc();
  v12 = sub_245748630();
  v2[291] = v12;
  v13 = *(v12 - 8);
  v2[292] = v13;
  v14 = *(v13 + 64) + 15;
  v2[293] = swift_task_alloc();
  v15 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v2[294] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v2[295] = swift_task_alloc();
  v2[296] = swift_task_alloc();
  v17 = type metadata accessor for RGBLivenessModel.State(0);
  v2[297] = v17;
  v18 = *(v17 - 8);
  v2[298] = v18;
  v19 = *(v18 + 64) + 15;
  v2[299] = swift_task_alloc();
  v2[300] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A28, &qword_24574AC78) - 8) + 64) + 15;
  v2[301] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A30, &qword_24574AC80);
  v2[302] = v21;
  v22 = *(v21 - 8);
  v2[303] = v22;
  v23 = *(v22 + 64) + 15;
  v2[304] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456F4CEC, 0, 0);
}

uint64_t sub_2456F4CEC()
{
  v1 = *(v0 + 2432);
  v2 = *(v0 + 2240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A38, &qword_24574AC88);
  sub_245748850();
  *(v0 + 2440) = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_failureReason;
  *(v0 + 2448) = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession;
  *(v0 + 2456) = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask;
  *(v0 + 2464) = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask;
  *(v0 + 2472) = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasCompletedGestureMonitoring;
  v3 = MEMORY[0x277CFFBE0];
  *(v0 + 2480) = *MEMORY[0x277D76660];
  *(v0 + 1780) = *v3;
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  *(v0 + 2488) = v5;
  *v5 = v0;
  v5[1] = sub_2456F4E14;
  v6 = *(v0 + 2432);
  v7 = *(v0 + 2416);
  v8 = *(v0 + 2408);

  return MEMORY[0x2822003E8](v8, 0, 0, v7);
}

uint64_t sub_2456F4E14()
{
  v1 = *(*v0 + 2488);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2456F4F10, 0, 0);
}

uint64_t sub_2456F4F10()
{
  v172 = v0;
  v1 = *(v0 + 2408);
  if ((*(*(v0 + 2384) + 48))(v1, 1, *(v0 + 2376)) == 1)
  {
    v2 = *(v0 + 2400);
    v3 = *(v0 + 2392);
    v4 = *(v0 + 2368);
    v5 = *(v0 + 2360);
    v6 = *(v0 + 2344);
    v7 = *(v0 + 2320);
    v8 = *(v0 + 2296);
    aBlocka = *(v0 + 2272);
    (*(*(v0 + 2424) + 8))(*(v0 + 2432), *(v0 + 2416));

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = (v0 + 1784);
  sub_24570298C(v1, *(v0 + 2400), type metadata accessor for RGBLivenessModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = *(v0 + 2368);
      v77 = *(v0 + 2248);
      sub_24570298C(*(v0 + 2400), v12, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      sub_2456F6B58(v12);
      goto LABEL_43;
    case 2u:
      v49 = *(v0 + 2400);
      goto LABEL_41;
    case 3u:
      v52 = *(v0 + 2360);
      sub_24570298C(*(v0 + 2400), v52, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      if (*v52)
      {
        v14 = sub_2456F627C;
        goto LABEL_28;
      }

      aBlock = *(v0 + 2360);
      v136 = *(v0 + 2344);
      v137 = *(v0 + 2336);
      v159 = *(v0 + 2328);
      v162 = *(v0 + 2352);
      v138 = *(v0 + 2320);
      v139 = *(v0 + 2312);
      v140 = *(v0 + 2304);
      v141 = *(*(*(v0 + 2248) + 640) + 32);
      v156 = *&v141[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue];
      v142 = swift_allocObject();
      *(v142 + 16) = v141;
      *(v0 + 2104) = sub_245703128;
      *(v0 + 2112) = v142;
      *(v0 + 2072) = MEMORY[0x277D85DD0];
      *(v0 + 2080) = 1107296256;
      *(v0 + 2088) = sub_2456E7A28;
      *(v0 + 2096) = &block_descriptor_32;
      v143 = _Block_copy((v0 + 2072));

      v144 = v141;
      sub_245748610();
      *(v0 + 2232) = MEMORY[0x277D84F90];
      sub_245702840(&qword_27EE24820, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
      sub_2456F3A30();
      sub_245748A50();
      MEMORY[0x245D70770](0, v136, v138, v143);
      _Block_release(v143);
      (*(v139 + 8))(v138, v140);
      (*(v137 + 8))(v136, v159);
      v145 = *(v0 + 2112);

      v146 = *(v162 + 40);
      v147 = swift_task_alloc();
      *(v0 + 2496) = v147;
      *v147 = v0;
      v147[1] = sub_2456F6180;
      v148 = *(v0 + 2248);

      return sub_2456FA788(aBlock + v146);
    case 4u:
      v23 = *(v0 + 2400);
      v24 = *(v0 + 2248);
      v25 = *(v23 + 40);
      *v160 = *(v23 + 8);
      *aBlockb = *(v23 + 24);
      *(v0 + 2168) = *v23;
      *(v0 + 2176) = *v160;
      *(v0 + 2192) = *aBlockb;
      *(v0 + 2208) = v25;
      sub_2456F6E80(v0 + 2168);
      goto LABEL_51;
    case 5u:
      v85 = *(v0 + 2400);
      v86 = *(v0 + 2248);
      v87 = *v85;
      if (v85[1])
      {
        v88 = 256;
      }

      else
      {
        v88 = 0;
      }

      sub_2456F7114(v88 | v87);
      goto LABEL_60;
    case 6u:
      v92 = *(v0 + 2400);
      v93 = *(v0 + 2248);
      v95 = v92[1];
      v94 = v92[2];
      v96 = *v92;
      *(v0 + 1953) = *(v92 + 41);
      *(v0 + 1928) = v95;
      *(v0 + 1944) = v94;
      *(v0 + 1912) = v96;
      v97 = v92[1];
      v168 = *v92;
      v169 = v97;
      *v170 = v92[2];
      *&v170[9] = *(v92 + 41);
      sub_2456F73E0(&v168);
      sub_2457028DC(v0 + 1912);
      goto LABEL_60;
    case 7u:
      v53 = *(v0 + 2400);
      v55 = v53[1];
      v54 = v53[2];
      v56 = *v53;
      *(v0 + 1825) = *(v53 + 41);
      *(v0 + 1800) = v55;
      *(v0 + 1816) = v54;
      *v11 = v56;
      if ((*v11 & 1) == 0)
      {
        v57 = *(v0 + 2464);
        v58 = v0;
        v59 = *(v0 + 2248);
        [*(*(v59 + 648) + 624) prepareToResumeLiveness];
        if (*(v59 + v57))
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
          sub_245748870();
        }

        v0 = v58;
        *(*(*(v58 + 2248) + 640) + 184) = 1;
      }

      v60 = *(v0 + 2392);
      v61 = *(v0 + 2376);
      v62 = *(v0 + 1808);
      v63 = *v11;
      v64 = v11[1];
      v65 = v11[2];
      *(v60 + 41) = *(v11 + 41);
      v60[1] = v64;
      v60[2] = v65;
      *v60 = v63;
      swift_storeEnumTagMultiPayload();
      if (v62)
      {
        v66 = *(v0 + 2392);
        v67 = *(v0 + 2248);
        v68 = v62;
        sub_245702930(v11, v0 + 1848);
        sub_2456FDBA8(v66, &v168);
        v69 = *(v67 + 640);

        sub_2457031A4(v68, &v168);

        v70 = sub_2456FD810(v66);
        if (v70 != 2)
        {
          v71 = v70;
          v72 = *(v0 + 2248);
          v73 = sub_2456FD9DC(*(v0 + 2392));
          if ((v74 & 1) == 0)
          {
            v75 = v73;
            v76 = *(*(*(v0 + 2248) + 648) + 624);

            [swift_unknownObjectRetain() processLivenessFrame:v68 withOptions:v71 & 0x10101 taOptions:v75];
            swift_unknownObjectRelease();
          }
        }

        sub_2457028DC(v11);
      }

      v49 = *(v0 + 2392);
LABEL_41:
      sub_2457029F4(v49, type metadata accessor for RGBLivenessModel.State);
      goto LABEL_60;
    case 8u:
      v108 = *(v0 + 2400);
      v109 = *(v0 + 2248);
      v111 = v108[1];
      v110 = v108[2];
      v112 = *v108;
      *(v0 + 1761) = *(v108 + 41);
      *(v0 + 1736) = v111;
      *(v0 + 1752) = v110;
      *(v0 + 1720) = v112;
      v113 = v108[1];
      v168 = *v108;
      v169 = v113;
      *v170 = v108[2];
      *&v170[9] = *(v108 + 41);
      sub_2456F7744(&v168);
      sub_2457028DC(v0 + 1720);
      goto LABEL_60;
    case 9u:
      v42 = *(v0 + 2400);
      v43 = *(v0 + 2248);
      *(v0 + 1648) = *v42;
      v45 = *(v42 + 32);
      v44 = *(v42 + 48);
      v46 = *(v42 + 16);
      *(v0 + 1712) = *(v42 + 64);
      *(v0 + 1680) = v45;
      *(v0 + 1696) = v44;
      *(v0 + 1664) = v46;
      v47 = *(v42 + 48);
      *v170 = *(v42 + 32);
      *&v170[16] = v47;
      v171 = *(v42 + 64);
      v48 = *(v42 + 16);
      v168 = *v42;
      v169 = v48;
      sub_2456F79F4(&v168);
      sub_245702888(v0 + 1648);
      goto LABEL_60;
    case 0xAu:
      v101 = *(v0 + 2400);
      v102 = *(v0 + 2248);
      *(v0 + 1576) = *v101;
      v104 = *(v101 + 32);
      v103 = *(v101 + 48);
      v105 = *(v101 + 16);
      *(v0 + 1640) = *(v101 + 64);
      *(v0 + 1608) = v104;
      *(v0 + 1624) = v103;
      *(v0 + 1592) = v105;
      v106 = *(v101 + 48);
      *v170 = *(v101 + 32);
      *&v170[16] = v106;
      v171 = *(v101 + 64);
      v107 = *(v101 + 16);
      v168 = *v101;
      v169 = v107;
      sub_2456F7C70(&v168);
      sub_245702888(v0 + 1576);
      goto LABEL_60;
    case 0xBu:
      v16 = *(v0 + 2400);
      v17 = *(v0 + 2248);
      *(v0 + 1504) = *v16;
      v19 = *(v16 + 32);
      v18 = *(v16 + 48);
      v20 = *(v16 + 16);
      *(v0 + 1568) = *(v16 + 64);
      *(v0 + 1536) = v19;
      *(v0 + 1552) = v18;
      *(v0 + 1520) = v20;
      v21 = *(v16 + 48);
      *v170 = *(v16 + 32);
      *&v170[16] = v21;
      v171 = *(v16 + 64);
      v22 = *(v16 + 16);
      v168 = *v16;
      v169 = v22;
      sub_2456F8214(&v168);
      sub_245702888(v0 + 1504);
      goto LABEL_60;
    case 0xCu:
      if ((**(v0 + 2400) & 1) == 0)
      {
        v26 = *(v0 + 2448);
        v27 = *(v0 + 2248);
        if (*(v27 + v26))
        {
          v28 = *(v27 + v26);

          sub_245725488(2, 0);

          v27 = *(v0 + 2248);
        }

        v29 = *(v0 + 2456);
        if (*(v27 + v29))
        {
          v30 = *(v27 + v29);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
          sub_245748870();

          v27 = *(v0 + 2248);
        }

        v31 = *(v0 + 2464);
        if (*(v27 + v31))
        {
          v32 = *(v27 + v31);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
          sub_245748870();

          v27 = *(v0 + 2248);
        }

        v33 = *(v0 + 2344);
        v154 = *(v0 + 2336);
        v157 = *(v0 + 2328);
        v161 = *(v0 + 2472);
        v34 = *(v0 + 2320);
        v35 = *(v0 + 2312);
        v36 = *(v0 + 2304);
        v37 = *(*(v27 + 640) + 32);
        v153 = *&v37[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue];
        v38 = swift_allocObject();
        *(v38 + 16) = v37;
        *(v0 + 2056) = sub_2456EED78;
        *(v0 + 2064) = v38;
        *(v0 + 2024) = MEMORY[0x277D85DD0];
        *(v0 + 2032) = 1107296256;
        *(v0 + 2040) = sub_2456E7A28;
        *(v0 + 2048) = &block_descriptor_25;
        v39 = _Block_copy((v0 + 2024));

        v40 = v37;
        sub_245748610();
        *(v0 + 2224) = MEMORY[0x277D84F90];
        sub_245702840(&qword_27EE24820, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
        sub_2456F3A30();
        sub_245748A50();
        MEMORY[0x245D70770](0, v33, v34, v39);
        _Block_release(v39);
        (*(v35 + 8))(v34, v36);
        (*(v154 + 8))(v33, v157);
        v41 = *(v0 + 2064);

        *(v27 + v161) = 1;
      }

      goto LABEL_60;
    case 0xDu:
      v89 = *(v0 + 2400);
      v90 = *(v0 + 2248);
      v91 = *(v89 + 40);
      *v160 = *(v89 + 8);
      *aBlockc = *(v89 + 24);
      *(v0 + 2120) = *v89;
      *(v0 + 2128) = *v160;
      *(v0 + 2144) = *aBlockc;
      *(v0 + 2160) = v91;
      sub_2456F848C(v0 + 2120);
LABEL_51:

      goto LABEL_52;
    case 0xEu:
      v15 = *(v0 + 2248);
      sub_2456F86E4(**(v0 + 2400));
      goto LABEL_60;
    case 0xFu:
      v50 = *(v0 + 2400);
      v51 = *(v50 + 8);
      if (*(v50 + 24) && (*(v50 + 32) & 1) != 0)
      {
        *(*(v0 + 2248) + *(v0 + 2440)) = 4;
      }

LABEL_52:

      goto LABEL_60;
    case 0x10u:
      if ((**(v0 + 2400) & 1) == 0)
      {
        v121 = *(v0 + 2344);
        v122 = *(v0 + 2336);
        v158 = *(v0 + 2328);
        v123 = *(v0 + 2320);
        v124 = *(v0 + 2312);
        v125 = *(v0 + 2304);
        aBlockd = *(v0 + 2248);
        v126 = *(aBlockd[80] + 32);
        v155 = *&v126[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue];
        v127 = swift_allocObject();
        *(v127 + 16) = v126;
        *(v0 + 2008) = sub_2456EEE18;
        *(v0 + 2016) = v127;
        *(v0 + 1976) = MEMORY[0x277D85DD0];
        *(v0 + 1984) = 1107296256;
        *(v0 + 1992) = sub_2456E7A28;
        *(v0 + 2000) = &block_descriptor_17;
        v128 = _Block_copy((v0 + 1976));

        v129 = v126;
        sub_245748610();
        *(v0 + 2216) = MEMORY[0x277D84F90];
        sub_245702840(&qword_27EE24820, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
        sub_2456F3A30();
        sub_245748A50();
        MEMORY[0x245D70770](0, v121, v123, v128);
        _Block_release(v128);
        (*(v124 + 8))(v123, v125);
        (*(v122 + 8))(v121, v158);
        v130 = *(v0 + 2016);

        memcpy((v0 + 16), aBlockd + 8, 0x240uLL);
        v131 = v0;
        memcpy((v0 + 1168), aBlockd + 17, 0x14DuLL);
        if (sub_2456F3C64(v0 + 1168) == 1)
        {
          v132 = *(v0 + 2272);
          v133 = *(v0 + 2264);
          v134 = *(v0 + 2256);
          (*(*(v0 + 2288) + 104))(*(v0 + 2296), *(v0 + 1780), *(v0 + 2280));
          sub_2456F3944(v0 + 16, v0 + 592);
          sub_245723158(MEMORY[0x277D84F90]);
          sub_245747DD0();
          sub_245702840(&qword_27EE244B8, MEMORY[0x277CFFE30]);
          v135 = swift_allocError();
          sub_245747DE0();
          sub_245747CF0();
          sub_245747D00();
          (*(v133 + 8))(v132, v134);
          v131 = v0;

          sub_2456F38F0(v0 + 16);
        }

        else if ((*(v0 + 1499) & 1) == 0)
        {
          v151 = swift_task_alloc();
          *(v0 + 2512) = v151;
          *v151 = v0;
          v151[1] = sub_2456F64E4;
          v152 = *(v0 + 2248);

          return sub_2456FBD3C();
        }

        v149 = swift_task_alloc();
        *(v131 + 2504) = v149;
        *v149 = v131;
        v149[1] = sub_2456F63E8;
        v150 = *(v131 + 2248);

        return sub_2456FB34C();
      }

      v14 = sub_2456F6340;
LABEL_28:

      return MEMORY[0x2822009F8](v14, 0, 0);
    case 0x11u:
      v78 = *(v0 + 2400);
      v79 = *(v0 + 2248);
      v80 = v78[1];
      LOBYTE(v168) = *v78;
      sub_2456F897C(&v168, v80);
      goto LABEL_60;
    case 0x12u:
      v98 = **(v0 + 2400);
      v99 = swift_task_alloc();
      *(v0 + 2520) = v99;
      *v99 = v0;
      v99[1] = sub_2456F65E0;
      v100 = *(v0 + 2248);

      return sub_2456F8B34(v98);
    case 0x13u:
      v114 = *(v0 + 2400);
      v115 = *(v0 + 2248);
      sub_2456F9C4C(0);
      sub_2457029F4(v114, type metadata accessor for RGBLivenessModel.State);
      goto LABEL_60;
    case 0x14u:
      v81 = *(v0 + 2480);
      v82 = *(v0 + 2248);
      sub_2456F9E70();
      v83 = *(*(v82 + 640) + 32);

      sub_2456E80C0();

      *(*(v82 + 640) + 24) = &off_28587A5F8;
      swift_unknownObjectWeakAssign();
      *(*(v82 + 648) + 24) = &off_28587A638;
      swift_unknownObjectWeakAssign();
      v84 = [objc_opt_self() defaultCenter];
      [v84 addObserver:v82 selector:sel_cancelAfterAppMovedToBackground name:v81 object:0];

      goto LABEL_60;
    default:
      v12 = *(v0 + 2368);
      v13 = *(v0 + 2248);
      sub_24570298C(*(v0 + 2400), v12, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      sub_2456F66DC(v12);
LABEL_43:
      sub_2457029F4(v12, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
LABEL_60:
      v116 = *(MEMORY[0x277D85798] + 4);
      v117 = swift_task_alloc();
      *(v0 + 2488) = v117;
      *v117 = v0;
      v117[1] = sub_2456F4E14;
      v118 = *(v0 + 2432);
      v119 = *(v0 + 2416);
      v120 = *(v0 + 2408);

      return MEMORY[0x2822003E8](v120, 0, 0, v119);
  }
}

uint64_t sub_2456F6180()
{
  v1 = *(*v0 + 2496);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2456F627C, 0, 0);
}

uint64_t sub_2456F627C()
{
  sub_2457029F4(v0[295], type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[311] = v2;
  *v2 = v0;
  v2[1] = sub_2456F4E14;
  v3 = v0[304];
  v4 = v0[302];
  v5 = v0[301];

  return MEMORY[0x2822003E8](v5, 0, 0, v4);
}

uint64_t sub_2456F6340()
{
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[311] = v2;
  *v2 = v0;
  v2[1] = sub_2456F4E14;
  v3 = v0[304];
  v4 = v0[302];
  v5 = v0[301];

  return MEMORY[0x2822003E8](v5, 0, 0, v4);
}

uint64_t sub_2456F63E8()
{
  v1 = *(*v0 + 2504);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2456F6340, 0, 0);
}

uint64_t sub_2456F64E4()
{
  v1 = *(*v0 + 2512);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2456F6340, 0, 0);
}

uint64_t sub_2456F65E0()
{
  v1 = *(*v0 + 2520);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_245703120, 0, 0);
}

uint64_t sub_2456F66DC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48[-v10];
  if ((*a1 & 1) == 0)
  {
    if (*(a1 + *(type metadata accessor for RGBLivenessModel.PassiveConfiguration(0) + 52)))
    {
      v12 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps);
      v13 = MEMORY[0x277D84F90];
      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps) = MEMORY[0x277D84F90];

      v14 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames);
      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames) = v13;

      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_isStoppingLiveRecording) = 0;
      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame) = 0;
      v15 = sub_245748810();
      (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v2;

      v17 = sub_24572A644(0, 0, v11, &unk_24574ACC8, v16);
      v18 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask);
      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask) = v17;

      v19 = *(v2 + 640);
      v20 = *(v19 + 32);

      sub_2456E9A90();
      v21 = *(v19 + 32);
      sub_2456E9748(0, 0);
    }

    else
    {
      v22 = *(v2 + 640);
      v23 = (*(v2 + 585) << 8 != 512) & *(v2 + 589);
      *(v22 + 161) = 1;
      *(v22 + 162) = v23;
      v24 = *(v22 + 32);

      sub_2456E8AD0(v23);

      v25 = *(v2 + 648);

      sub_2456EF0CC();

      [*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hapticGenerator) prepare];
    }

    v26 = CACurrentMediaTime();
    v27 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsPreambleStartTime;
    *v27 = v26;
    *(v27 + 8) = 0;
    memcpy(v48, (v2 + 64), sizeof(v48));
    v28 = sub_245720840();
    v29 = 2;
    if ((v28 & 1) == 0)
    {
      v29 = 0;
    }

    v30 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode;
    *v30 = v29;
    *(v30 + 8) = 0;
  }

  v31 = *(a1 + 32);
  if (v31)
  {
    v32 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame;
    if ((*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame) & 1) == 0)
    {
      v33 = *(v2 + 640);
      if (*(v33 + 184) == 1)
      {
        v34 = *(v33 + 176);
        if (v34)
        {
          v35 = *(v2 + 640);

          v36 = v34;
          sub_245727FE8();
        }
      }

      *(v2 + v32) = 1;
    }
  }

  if (*(a1 + 48))
  {
    v37 = HIBYTE(*(a1 + 56)) & 1;
  }

  else
  {
    v37 = 0;
  }

  v38 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  sub_2456F9F98(v31, v37, *(a1 + *(v38 + 44)));
  sub_245702DF0(a1, v7, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  swift_storeEnumTagMultiPayload();
  if (v31)
  {
    v39 = v31;
    sub_2456FDBA8(v7, v48);
    v40 = *(v2 + 640);

    sub_2457031A4(v39, v48);

    v41 = sub_2456FD810(v7);
    if (v41 != 2)
    {
      v42 = v41;
      v43 = sub_2456FD9DC(v7);
      if ((v44 & 1) == 0)
      {
        v45 = v43;
        v46 = *(*(v2 + 648) + 624);

        [swift_unknownObjectRetain() processLivenessFrame:v39 withOptions:v42 & 0x10101 taOptions:v45];

        swift_unknownObjectRelease();
      }
    }
  }

  return sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F6B58(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v8 = [*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxMonitor) luxLevel];
    v9 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues;
    v10 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v9) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_245702574(0, *(v10 + 2) + 1, 1, v10);
      *(v2 + v9) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_245702574((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    *&v10[8 * v13 + 32] = v8;
    *(v2 + v9) = v10;
    result = sub_2456F3D98();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      return result;
    }

    v15 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts;
    *v15 = result - 1;
    *(v15 + 8) = 0;
    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask))
    {
      v16 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      sub_245748870();
    }

    [*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hapticGenerator) impactOccurred];
    v17 = *(v2 + 640);

    v18 = sub_2456F3E04();
    v19 = *(v17 + 32);
    sub_2456E9D64(v18, 1);
  }

  if (*(a1 + 48))
  {
    v20 = HIBYTE(*(a1 + 56)) & 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + 32);
  sub_2456FA544(v21, v20);
  sub_245702DF0(a1, v7, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  swift_storeEnumTagMultiPayload();
  if (v21)
  {
    v22 = v21;
    sub_2456FDBA8(v7, &v31);
    v23 = *(v2 + 640);

    sub_2457031A4(v22, &v31);

    v24 = sub_2456FD810(v7);
    if (v24 != 2)
    {
      v25 = v24;
      v26 = sub_2456FD9DC(v7);
      if ((v27 & 1) == 0)
      {
        v28 = v26;
        v29 = *(*(v2 + 648) + 624);

        [swift_unknownObjectRetain() processLivenessFrame:v22 withOptions:v25 & 0x10101 taOptions:v28];

        swift_unknownObjectRelease();
      }
    }
  }

  return sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F6E80(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 40);
  v32 = v10;
  if ((v8 & 1) == 0)
  {
    v12 = *(v2 + 640);
    *(v12 + 161) = 0;
    v13 = *(v12 + 32);
    v31 = v9;

    sub_2456E86D8();

    v14 = CACurrentMediaTime();
    v15 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsPreambleStartTime;
    *v15 = v14;
    v9 = v31;
    v10 = v32;
    *(v15 + 8) = 0;
    *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame) = 0;
  }

  v16 = v9;
  if (!v9)
  {
    *v7 = v8;
    *(v7 + 8) = v9;
    *(v7 + 24) = v10;
    v7[40] = v11;
    swift_storeEnumTagMultiPayload();
LABEL_15:

    return sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
  }

  v17 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame;
  if ((*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame) & 1) == 0)
  {
    v18 = *(v2 + 640);
    if (*(v18 + 184) == 1)
    {
      v19 = *(v18 + 176);
      if (v19)
      {
        v20 = *(v2 + 640);
        v31 = v9;

        v21 = v19;
        sub_245727FE8();

        v9 = v31;
        v10 = v32;
      }
    }

    *(v2 + v17) = 1;
  }

  *v7 = v8;
  *(v7 + 8) = v9;
  *(v7 + 24) = v10;
  v7[40] = v11;
  swift_storeEnumTagMultiPayload();
  if (!v16)
  {
    goto LABEL_15;
  }

  v22 = v16;
  sub_2456FDBA8(v7, &v33);
  v23 = *(v2 + 640);

  sub_2457031A4(v22, &v33);

  v24 = sub_2456FD810(v7);
  if (v24 != 2)
  {
    v25 = v24;
    v26 = sub_2456FD9DC(v7);
    if ((v27 & 1) == 0)
    {
      v28 = v26;
      v29 = *(*(v2 + 648) + 624);

      [swift_unknownObjectRetain() processLivenessFrame:v22 withOptions:v25 & 0x10101 taOptions:v28];

      swift_unknownObjectRelease();
    }
  }

  return sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
}

id sub_2456F7114(__int16 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v30 - v6;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 0x100) != 0)
    {
      v25 = *(v1 + 648);
      *(v25 + 32) = 0;
      *(v25 + 40) = 1;
      v26 = *(v25 + 624);

      return [v26 skipLivenessGesture];
    }

    else
    {
      if ((*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsPreambleStartTime + 8) & 1) == 0)
      {
        v8 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsPreambleStartTime);
        v9 = CACurrentMediaTime() - v8;
        sub_24571DA44(v9);
      }

      v10 = [*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxMonitor) luxLevel];
      v11 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues;
      v12 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v11) = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_245702574(0, *(v12 + 2) + 1, 1, v12);
        *(v1 + v11) = v12;
      }

      v14 = *(v12 + 2);
      v15 = *(v12 + 3);
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v31 = v14 + 1;
        v27 = v12;
        v28 = v14;
        v29 = sub_245702574((v15 > 1), v14 + 1, 1, v27);
        v14 = v28;
        v16 = v31;
        v12 = v29;
      }

      *(v12 + 2) = v16;
      *&v12[8 * v14 + 32] = v10;
      *(v1 + v11) = v12;
      v17 = sub_245748810();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v1;

      v19 = sub_24572A644(0, 0, v7, &unk_24574ACF0, v18);
      v20 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask);
      *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask) = v19;

      v21 = *(*(v1 + 640) + 32);

      v22 = v1;
      sub_2456E9748(0, 0);

      v23 = *(v1 + 648);

      sub_2456EF0CC();

      if (*(v22 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession))
      {
        v24 = *(v22 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);

        sub_245725488(4, 0);
      }
    }
  }

  return result;
}

void sub_2456F73E0(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1[1];
  v40 = *a1;
  v41 = v8;
  v42[0] = a1[2];
  *(v42 + 9) = *(a1 + 41);
  if ((v40 & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState) = 0;
    v9 = v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsGesture;
    *v9 = *(&v40 + 1);
    *(v9 + 8) = 0;
    v10 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasPresentedFirstGesture;
    if ((*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasPresentedFirstGesture) & 1) == 0 && *(v2 + 16) == 1)
    {
      [*(*(v2 + 648) + 624) enableAccessibilityOptions];
    }

    *(v2 + v10) = 1;
    v11 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertStartTime;
    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertStartTime) > 0.0 && (*(v9 + 8) & 1) == 0)
    {
      v12 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCause;
      v13 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCause);
      if (v13 != 2)
      {
        v14 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCount);
        v15 = __OFADD__(v14, 1);
        v16 = v14 + 1;
        if (v15)
        {
          goto LABEL_29;
        }

        v17 = *v9;
        *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCount) = v16;
        v18 = CACurrentMediaTime() - *(v2 + v11);
        sub_24571DC54(v17, v13 & 1, v18);
        *(v2 + v11) = 0;
        *(v2 + v12) = 2;
      }
    }

    if (v41)
    {
      goto LABEL_14;
    }

    v19 = *(v2 + 640);
    v20 = *(v19 + 152);
    if (!v20)
    {
      goto LABEL_14;
    }

    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v15)
    {
      *(v19 + 152) = v21;
LABEL_14:
      v22 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);
      if (v22)
      {
        v23 = *(v22 + 104);
        v24 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);

        if (v23)
        {
          [v23 pause];
          v23 = *(v22 + 104);
        }

        *(v22 + 104) = 0;
      }

      [*(*(v2 + 648) + 624) prepareToResumeLiveness];
      v25 = *(v2 + 640);
      v26 = *(v25 + 176);
      if (v26)
      {
        v27 = *(v2 + 640);

        v28 = v26;
        sub_24572819C();

        v25 = *(v2 + 640);
      }

      *(v25 + 184) = 0;
      goto LABEL_21;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

LABEL_21:
  v29 = *(&v41 + 1);
  v30 = a1[1];
  *v7 = *a1;
  *(v7 + 1) = v30;
  *(v7 + 2) = a1[2];
  *(v7 + 41) = *(a1 + 41);
  swift_storeEnumTagMultiPayload();
  if (v29)
  {
    v31 = v29;
    sub_245702930(&v40, v39);
    sub_2456FDBA8(v7, v39);
    v32 = *(v2 + 640);

    sub_2457031A4(v31, v39);

    v33 = sub_2456FD810(v7);
    if (v33 != 2)
    {
      v34 = v33;
      v35 = sub_2456FD9DC(v7);
      if ((v36 & 1) == 0)
      {
        v37 = v35;
        v38 = *(*(v2 + 648) + 624);

        [swift_unknownObjectRetain() processLivenessFrame:v31 withOptions:v34 & 0x10101 taOptions:v37];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_245702930(&v40, v39);
  }

  sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F7744(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1[1];
  v25 = *a1;
  v26 = v8;
  v27[0] = a1[2];
  *(v27 + 9) = *(a1 + 41);
  if ((v25 & 1) == 0)
  {
    *(v2 + 16) = 1;
    [*(*(v2 + 648) + 624) pauseLiveness];
    [*(*(v2 + 648) + 624) enableAccessibilityOptions];
    v9 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);
    if (v9)
    {
      v10 = *(v9 + 104);
      v11 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);

      if (v10)
      {
        [v10 pause];
        v10 = *(v9 + 104);
      }

      *(v9 + 104) = 0;
    }

    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
    {
      v12 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      sub_245748870();
    }

    *(*(v2 + 640) + 184) = 0;
  }

  v13 = *(&v26 + 1);
  v14 = a1[1];
  *v7 = *a1;
  *(v7 + 1) = v14;
  *(v7 + 2) = a1[2];
  *(v7 + 41) = *(a1 + 41);
  swift_storeEnumTagMultiPayload();
  if (v13)
  {
    v15 = v13;
    sub_245702930(&v25, v24);
    sub_2456FDBA8(v7, v24);
    v16 = *(v2 + 640);

    sub_2457031A4(v15, v24);

    v17 = sub_2456FD810(v7);
    if (v17 != 2)
    {
      v18 = v17;
      v19 = sub_2456FD9DC(v7);
      if ((v20 & 1) == 0)
      {
        v21 = v19;
        v22 = *(*(v2 + 648) + 624);

        [swift_unknownObjectRetain() processLivenessFrame:v15 withOptions:v18 & 0x10101 taOptions:v21];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_245702930(&v25, v24);
  }

  return sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F79F4(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = a1[1];
  v30 = *a1;
  v31 = v9;
  v10 = a1[3];
  v32 = a1[2];
  v33 = v10;
  v34 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    v11 = v32;
    if (!v32)
    {
      v12 = *(v1 + 640);
      v13 = *(v12 + 152);
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        __break(1u);
        return result;
      }

      *(v12 + 152) = v15;
      *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsMonitoringStartTime) = CACurrentMediaTime();
      *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCount) = 0;
    }

    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_firstTutorialVideoFinishedPlaying) = 1;
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState) = 1;
    if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession))
    {
      v16 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);

      sub_245725488(0, 1);
    }

    [*(*(v1 + 648) + 624) resumeLiveness];
    sub_2456FB194(*(&v31 + 1), v11);
  }

  v17 = *(&v32 + 1);
  v18 = a1[3];
  *(v8 + 2) = a1[2];
  *(v8 + 3) = v18;
  *(v8 + 8) = *(a1 + 8);
  v19 = a1[1];
  *v8 = *a1;
  *(v8 + 1) = v19;
  swift_storeEnumTagMultiPayload();
  if (v17)
  {
    v20 = v17;
    sub_245702EB4(&v30, v29);
    sub_2456FDBA8(v8, v29);
    v21 = *(v2 + 640);

    sub_2457031A4(v20, v29);

    v22 = sub_2456FD810(v8);
    if (v22 != 2)
    {
      v23 = v22;
      v24 = sub_2456FD9DC(v8);
      if ((v25 & 1) == 0)
      {
        v26 = v24;
        v27 = *(*(v2 + 648) + 624);

        [swift_unknownObjectRetain() processLivenessFrame:v20 withOptions:v23 & 0x10101 taOptions:v26];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_245702EB4(&v30, v29);
  }

  return sub_2457029F4(v8, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F7C70(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - v10;
  v12 = sub_245747E60();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[1];
  v54 = *a1;
  v55 = v17;
  v18 = a1[3];
  v56 = a1[2];
  v57 = v18;
  v58 = *(a1 + 8);
  if ((v54 & 1) == 0)
  {
    v51 = v14;
    [*(*(v2 + 648) + 624) prepareToResumeLiveness];
    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
    {
      v19 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      sub_245748870();
    }

    v52 = v11;
    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession))
    {
      v20 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);

      sub_245725488(1, 0);
    }

    v21 = [*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxMonitor) luxLevel];
    v22 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues;
    v23 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v22) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_245702574(0, *(v23 + 2) + 1, 1, v23);
      *(v2 + v22) = v23;
    }

    v26 = *(v23 + 2);
    v25 = *(v23 + 3);
    if (v26 >= v25 >> 1)
    {
      v23 = sub_245702574((v25 > 1), v26 + 1, 1, v23);
    }

    *(v23 + 2) = v26 + 1;
    *&v23[8 * v26 + 32] = v21;
    *(v2 + v22) = v23;
    *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState) = 2;
    if ((v55 & 1) == 0)
    {
      v27 = *(&v54 + 1);
      v28 = CACurrentMediaTime() - *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsMonitoringStartTime);
      sub_24571DEAC(v27, v56, *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCount), v28);
      sub_245747CF0();
      v29 = sub_245747E50();
      v30 = sub_245748910();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2456DE000, v29, v30, "Gesture completed, beginning low TA sensitivity", v31, 2u);
        MEMORY[0x245D712D0](v31, -1, -1);
      }

      (*(v51 + 8))(v16, v12);
      sub_245747CE0();
    }

    v32 = v52;
    if ((*(v2 + 16) & 1) == 0)
    {
      v33 = *(&v55 + 1);
      v34 = sub_245748810();
      (*(*(v34 - 8) + 56))(v32, 1, 1, v34);
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v35[4] = v2;
      v35[5] = v33;

      v36 = sub_24572A644(0, 0, v32, &unk_24574AD10, v35);
      v37 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_gestureDetectedWaitTask);
      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_gestureDetectedWaitTask) = v36;
    }
  }

  v38 = *(&v56 + 1);
  v39 = v57;
  *(v7 + 2) = v56;
  *(v7 + 3) = v39;
  *(v7 + 8) = v58;
  v40 = v55;
  *v7 = v54;
  *(v7 + 1) = v40;
  swift_storeEnumTagMultiPayload();
  if (v38)
  {
    v41 = v38;
    sub_245702EB4(&v54, v53);
    sub_2456FDBA8(v7, v53);
    v42 = *(v2 + 640);

    sub_2457031A4(v41, v53);

    v43 = sub_2456FD810(v7);
    if (v43 != 2)
    {
      v44 = v43;
      v45 = sub_2456FD9DC(v7);
      if ((v46 & 1) == 0)
      {
        v47 = v45;
        v48 = *(*(v2 + 648) + 624);

        [swift_unknownObjectRetain() processLivenessFrame:v41 withOptions:v44 & 0x10101 taOptions:v47];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_245702EB4(&v54, v53);
  }

  return sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F8214(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v8;
  v9 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v9;
  v29 = *(a1 + 64);
  if ((v26[0] & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertStartTime) = CACurrentMediaTime();
    [*(*(v1 + 648) + 624) pauseLiveness];
    if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
    {
      v10 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      sub_245748870();
    }

    if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession))
    {
      v11 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);

      sub_245725488(3, 0);
    }
  }

  v12 = *(&v27 + 1);
  v13 = *(a1 + 48);
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 3) = v13;
  *(v7 + 8) = *(a1 + 64);
  v14 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v14;
  swift_storeEnumTagMultiPayload();
  if (v12)
  {
    v15 = v12;
    sub_245702EB4(v26, v25);
    sub_2456FDBA8(v7, v25);
    v16 = *(v2 + 640);

    sub_2457031A4(v15, v25);

    v17 = sub_2456FD810(v7);
    if (v17 != 2)
    {
      v18 = v17;
      v19 = sub_2456FD9DC(v7);
      if ((v20 & 1) == 0)
      {
        v21 = v19;
        v22 = *(*(v2 + 648) + 624);

        [swift_unknownObjectRetain() processLivenessFrame:v15 withOptions:v18 & 0x10101 taOptions:v21];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_245702EB4(v26, v25);
  }

  return sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F848C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 40);
  v26 = v10;
  v27 = v9;
  if ((v8 & 1) == 0)
  {
    v12 = v2[80];

    *(v12 + 112) = CACurrentMediaTime();

    [*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hapticGenerator) prepare];
    *(v2[80] + 184) = 1;
    memcpy(v28, v2 + 8, sizeof(v28));
    v13 = sub_245720840();
    v10 = v26;
    v14 = 2;
    if ((v13 & 1) == 0)
    {
      v14 = 0;
    }

    v15 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode;
    *v15 = v14;
    v15[8] = 0;
  }

  *v7 = v8;
  *(v7 + 8) = v27;
  *(v7 + 24) = v10;
  v7[40] = v11;
  swift_storeEnumTagMultiPayload();
  v16 = v27;
  if (v27)
  {

    v17 = v16;
    sub_2456FDBA8(v7, v28);
    v18 = v2[80];

    sub_2457031A4(v17, v28);

    v19 = sub_2456FD810(v7);
    if (v19 != 2)
    {
      v20 = v19;
      v21 = sub_2456FD9DC(v7);
      if ((v22 & 1) == 0)
      {
        v23 = v21;
        v24 = *(v2[81] + 624);

        [swift_unknownObjectRetain() processLivenessFrame:v17 withOptions:v20 & 0x10101 taOptions:v23];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
  }

  return sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F86E4(char a1)
{
  v2 = v1;
  v4 = sub_245747E60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_245747CF0();

    v10 = sub_245747E50();
    v11 = sub_245748910();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = sub_2456F3D98();

      _os_log_impl(&dword_2456DE000, v10, v11, "Liveness: Capturing selfie with remaining attempts: %ld", v12, 0xCu);
      MEMORY[0x245D712D0](v12, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v9, v4);
    *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_failureReason) = 11;
    v13 = [*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxMonitor) luxLevel];
    v14 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues;
    v15 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v14) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_245702574(0, *(v15 + 2) + 1, 1, v15);
      *(v2 + v14) = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_245702574((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    *&v15[8 * v18 + 32] = v13;
    *(v2 + v14) = v15;
    result = sub_2456F3D98();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v19 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts;
      *v19 = result - 1;
      *(v19 + 8) = 0;
      [*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hapticGenerator) impactOccurred];
      v20 = *(v2 + 640);

      v21 = sub_2456F3E04();
      v22 = *(v20 + 32);
      sub_2456E9D64(v21, 0);
    }
  }

  return result;
}

void sub_2456F897C(unsigned __int8 *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = v2;
    v4 = *a1;
    *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_failureReason) = v4;
    [*(*(v2 + 648) + 624) pauseLiveness];
    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      sub_245748870();
    }

    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_gestureDetectedWaitTask))
    {
      v5 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_gestureDetectedWaitTask);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      sub_245748870();
    }

    v6 = *(v2 + 640);
    *(v6 + 152) = 0;
    v7 = *(v6 + 32);

    sub_2456E9720();
    v8 = *(v6 + 32);
    sub_2456E9A90();

    if (*(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession))
    {
      v9 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);

      sub_245725488(3, 0);
    }

    switch(v4)
    {
      case 5:
        sub_24571E0FC(*(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState));
        v10 = 2;
        break;
      case 3:
        v10 = 1;
        break;
      case 2:
        v10 = 0;
        break;
      default:
        return;
    }

    if ((*(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsGesture + 8) & 1) == 0)
    {
      v11 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsGesture);

      sub_24571E30C(v10, v11);
    }
  }
}

uint64_t sub_2456F8B34(char a1)
{
  *(v2 + 3608) = v1;
  *(v2 + 3800) = a1;
  v3 = type metadata accessor for RGBLivenessModel.Event(0);
  *(v2 + 3616) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 3624) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  *(v2 + 3632) = v5;
  v6 = *(v5 - 8);
  *(v2 + 3640) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 3648) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  *(v2 + 3656) = v8;
  v9 = *(v8 - 8);
  *(v2 + 3664) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 3672) = swift_task_alloc();
  v11 = sub_245747E60();
  *(v2 + 3680) = v11;
  v12 = *(v11 - 8);
  *(v2 + 3688) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 3696) = swift_task_alloc();
  v14 = sub_245747DC0();
  *(v2 + 3704) = v14;
  v15 = *(v14 - 8);
  *(v2 + 3712) = v15;
  v16 = *(v15 + 64) + 15;
  *(v2 + 3720) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910) - 8) + 64) + 15;
  *(v2 + 3728) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456F8D8C, 0, 0);
}

uint64_t sub_2456F8D8C()
{
  v42 = v0;
  if ((*(v0 + 3800) & 1) == 0)
  {
    v1 = *(v0 + 3608);
    swift_beginAccess();
    sub_245703098(v1 + 24, v0 + 3512, &qword_27EE249F8, &qword_24574AC30);
    if (*(v0 + 3536))
    {
      sub_245703100((v0 + 3512), v0 + 3472);
      *(v0 + 3736) = *__swift_project_boxed_opaque_existential_1((v0 + 3472), *(v0 + 3496));
      sub_2457487F0();
      *(v0 + 3744) = sub_2457487E0();
      v3 = sub_2457487C0();
      *(v0 + 3752) = v3;
      *(v0 + 3760) = v2;

      return MEMORY[0x2822009F8](sub_2456F9234, v3, v2);
    }

    v4 = *(v0 + 3720);
    v5 = *(v0 + 3712);
    v6 = *(v0 + 3704);
    sub_2456EEF50(v0 + 3512, &qword_27EE249F8, &qword_24574AC30);
    (*(v5 + 104))(v4, *MEMORY[0x277CFF920], v6);
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_245702840(&qword_27EE244B8, MEMORY[0x277CFFE30]);
    v7 = swift_allocError();
    sub_245747DE0();
    swift_willThrow();
    v8 = *(v0 + 3696);
    sub_245747CF0();
    v9 = v7;
    v10 = sub_245747E50();
    v11 = sub_245748920();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 3696);
    v14 = *(v0 + 3688);
    v15 = *(v0 + 3680);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v41 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v40 = v13;
      v18 = *(v0 + 3576);
      v19 = *(v0 + 3584);
      v20 = *(v0 + 3592);
      v21 = sub_245748C20();
      v23 = sub_24572EDDC(v21, v22, &v41);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_2456DE000, v10, v11, "Error retrieving Liveness config for next attempt: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x245D712D0](v17, -1, -1);
      MEMORY[0x245D712D0](v16, -1, -1);

      (*(v14 + 8))(v40, v15);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v24 = *(v0 + 3672);
    v25 = *(v0 + 3664);
    v26 = *(v0 + 3656);
    v27 = *(v0 + 3648);
    v28 = *(v0 + 3640);
    v29 = *(v0 + 3632);
    v30 = *(v0 + 3624);
    v31 = *(v0 + 3616);
    (*(v28 + 16))(v27, *(v0 + 3608) + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v29);
    *v30 = 10;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();

    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
  }

  v32 = *(v0 + 3728);
  v33 = *(v0 + 3720);
  v34 = *(v0 + 3696);
  v35 = *(v0 + 3672);
  v36 = *(v0 + 3648);
  v37 = *(v0 + 3624);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_2456F9234()
{
  v1 = (*(v0 + 3736) + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 192);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 3768) = v7;
  *v7 = v0;
  v7[1] = sub_2456F936C;

  return v9(v0 + 16, ObjectType, v2);
}

uint64_t sub_2456F936C()
{
  v2 = *v1;
  v3 = *(*v1 + 3768);
  v8 = *v1;
  *(*v1 + 3776) = v0;

  v4 = *(v2 + 3760);
  v5 = *(v2 + 3752);
  if (v0)
  {
    v6 = sub_2456F9924;
  }

  else
  {
    v6 = sub_2456F9488;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2456F9488()
{
  v1 = *(v0 + 3744);

  return MEMORY[0x2822009F8](sub_2456F94F0, 0, 0);
}

uint64_t sub_2456F94F0()
{
  v1 = v0[451];
  memcpy(v0 + 218, (v1 + 64), 0x240uLL);
  memcpy((v1 + 64), v0 + 2, 0x240uLL);
  sub_2456F38F0((v0 + 218));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 434);
  v0[473] = *(v1 + 648);
  memcpy(v0 + 146, (v1 + 64), 0x240uLL);
  memcpy(v0 + 290, (v1 + 64), 0x240uLL);

  sub_2456F3944((v0 + 146), (v0 + 362));
  v2 = swift_task_alloc();
  v0[474] = v2;
  *v2 = v0;
  v2[1] = sub_2456F95F4;

  return sub_2456F0E84(v0 + 290);
}

uint64_t sub_2456F95F4()
{
  v1 = *v0;
  v2 = *(*v0 + 3792);
  v3 = *(*v0 + 3784);
  v5 = *v0;

  memcpy((v1 + 592), (v1 + 2320), 0x240uLL);
  sub_2456F38F0(v1 + 592);

  return MEMORY[0x2822009F8](sub_2456F9724, 0, 0);
}

uint64_t sub_2456F9724()
{
  v1 = v0[451];
  sub_2456F9E70();
  v2 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask;
  if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    sub_245748870();
  }

  v4 = v0[466];
  v5 = v0[451];
  v6 = sub_245748810();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  v8 = sub_24572A644(0, 0, v4, &unk_24574AD18, v7);
  v9 = *(v1 + v2);
  *(v1 + v2) = v8;

  v10 = *(*(v5 + 640) + 32);

  sub_2456E9748(0, 0);

  if (*(v5 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession))
  {
    v11 = *(v5 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);

    sub_245725488(4, 0);
  }

  v12 = v0[466];
  v13 = v0[465];
  v14 = v0[462];
  v15 = v0[459];
  v16 = v0[456];
  v17 = v0[453];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2456F9924()
{
  v1 = *(v0 + 3744);

  return MEMORY[0x2822009F8](sub_2456F998C, 0, 0);
}

uint64_t sub_2456F998C()
{
  v37 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 434);
  v1 = v0[472];
  v2 = v0[462];
  sub_245747CF0();
  v3 = v1;
  v4 = sub_245747E50();
  v5 = sub_245748920();

  if (os_log_type_enabled(v4, v5))
  {
    v35 = v0[462];
    v6 = v0[461];
    v7 = v0[460];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[447];
    v11 = v0[448];
    v12 = v0[449];
    v13 = sub_245748C20();
    v15 = sub_24572EDDC(v13, v14, &v36);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_2456DE000, v4, v5, "Error retrieving Liveness config for next attempt: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245D712D0](v9, -1, -1);
    MEMORY[0x245D712D0](v8, -1, -1);

    (*(v6 + 8))(v35, v7);
  }

  else
  {
    v16 = v0[462];
    v17 = v0[461];
    v18 = v0[460];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[459];
  v20 = v0[458];
  v21 = v0[457];
  v22 = v0[456];
  v23 = v0[455];
  v24 = v0[454];
  v25 = v0[453];
  v26 = v0[452];
  (*(v23 + 16))(v22, v0[451] + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v24);
  *v25 = 10;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();

  (*(v23 + 8))(v22, v24);
  (*(v20 + 8))(v19, v21);
  v27 = v0[466];
  v28 = v0[465];
  v29 = v0[462];
  v30 = v0[459];
  v31 = v0[456];
  v32 = v0[453];

  v33 = v0[1];

  return v33();
}

uint64_t sub_2456F9C4C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = *(*(v1 + 640) + 32);

  sub_2456E91C0();

  if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask))
  {
    v10 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    sub_245748870();
  }

  if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
  {
    v11 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    sub_245748870();
  }

  v12 = [objc_opt_self() defaultCenter];
  [v12 removeObserver:v2 name:*MEMORY[0x277D76660] object:0];

  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v4);
  v15[1] = a1;
  v13 = a1;
  sub_2457488B0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2456F9E70()
{
  v1 = v0;
  type metadata accessor for AudioSession();
  swift_allocObject();
  v2 = sub_245725B08();
  v3 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession) = v2;

  v4 = v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsPreambleStartTime;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsMonitoringStartTime) = 0;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_consecutiveInvalidFrames) = 0;
  v5 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
  v6 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues) = MEMORY[0x277D84F90];

  memcpy(v12, (v0 + 64), sizeof(v12));
  v7 = sub_245720528();
  v8 = v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts;
  *v8 = v7;
  *(v8 + 8) = 0;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasPresentedFirstGesture) = 0;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_firstTutorialVideoFinishedPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasCompletedGestureMonitoring) = 0;
  v9 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps;
  swift_beginAccess();
  v10 = *(v1 + v9);
  *(v1 + v9) = v6;
}

uint64_t sub_2456F9F98(void *a1, char a2, int a3)
{
  v4 = v3;
  v53 = a3;
  v50 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v47 = *(v13 - 8);
  v48 = v13;
  v14 = *(v47 + 64);
  result = MEMORY[0x28223BE20](v13);
  v46 = &v46 - v16;
  if (!a1)
  {
    return result;
  }

  [a1 time];
  v17 = v56[0];
  v18 = v56[1];
  v19 = v56[2];
  v20 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps;
  v21 = *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v20) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_245702458(0, *(v21 + 2) + 1, 1, v21);
    *(v4 + v20) = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    v21 = sub_245702458((v23 > 1), v24 + 1, 1, v21);
  }

  *(v21 + 2) = v24 + 1;
  v25 = &v21[24 * v24];
  *(v25 + 4) = v17;
  *(v25 + 5) = v18;
  *(v25 + 6) = v19;
  *(v4 + v20) = v21;
  v26 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames;
  v27 = *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v26) = v27;
  if ((v28 & 1) == 0)
  {
    v27 = sub_245702364(0, *(v27 + 2) + 1, 1, v27);
    *(v4 + v26) = v27;
  }

  v30 = *(v27 + 2);
  v29 = *(v27 + 3);
  if (v30 >= v29 >> 1)
  {
    v27 = sub_245702364((v29 > 1), v30 + 1, 1, v27);
  }

  *(v27 + 2) = v30 + 1;
  v27[v30 + 32] = a2 & 1;
  *(v4 + v26) = v27;
  v31 = *(*(v4 + v20) + 16);
  memcpy(v56, (v4 + 64), sizeof(v56));
  result = sub_245722114();
  v32 = v31 - result / 2;
  if (__OFSUB__(v31, result / 2))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v32 < 1)
  {
    return result;
  }

  if (*(*(v4 + v20) + 16) < v32)
  {
    goto LABEL_34;
  }

  result = sub_245702C64(0, v32, sub_245702458, sub_245702B08);
  if (*(*(v4 + v26) + 16) < v32)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  sub_245702C64(0, v32, sub_245702364, sub_245702BC0);
  v33 = *(v4 + v26);
  v34 = *(v33 + 16);
  if (v34)
  {

    v35 = MEMORY[0x277D84F90];
    v36 = 32;
    do
    {
      if (*(v33 + v36) == 1)
      {
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v35;
        if ((v39 & 1) == 0)
        {
          sub_2457059BC(0, *(v35 + 16) + 1, 1);
          v35 = v55;
        }

        v38 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_2457059BC((v37 > 1), v38 + 1, 1);
          v35 = v55;
        }

        *(v35 + 16) = v38 + 1;
        *(v35 + v38 + 32) = 1;
      }

      ++v36;
      --v34;
    }

    while (v34);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v40 = *(v35 + 16);

  memcpy(v56, (v4 + 64), sizeof(v56));
  v41 = sub_245722114();
  memcpy(v54, (v4 + 64), sizeof(v54));
  result = sub_2457223E8();
  v42 = v41 - result;
  if (__OFSUB__(v41, result))
  {
    goto LABEL_36;
  }

  if (v53)
  {
    if (v42 >= v40)
    {
      return result;
    }

    v44 = v51;
    v43 = v52;
    (*(v51 + 16))(v12, v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v52);
  }

  else
  {
    if (v42 < v40)
    {
      return result;
    }

    [*(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hapticGenerator) impactOccurred];
    v44 = v51;
    v43 = v52;
    (*(v51 + 16))(v12, v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v52);
  }

  swift_storeEnumTagMultiPayload();
  v45 = v46;
  sub_2457488A0();
  (*(v44 + 8))(v12, v43);
  return (*(v47 + 8))(v45, v48);
}

uint64_t sub_2456FA544(uint64_t result, char a2)
{
  if (result)
  {
    v3 = v2;
    [result time];
    v5 = __dst[0];
    v6 = __dst[1];
    v7 = __dst[2];
    v8 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps;
    v9 = *(*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps) + 16);
    memcpy(__dst, (v2 + 64), sizeof(__dst));
    if (v9 < sub_245722114() || (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_isStoppingLiveRecording) & 1) != 0)
    {
      v10 = *(*(v2 + v8) + 16);
      memcpy(__dst, (v2 + 64), sizeof(__dst));
      result = sub_245722114();
      if (v10 < result)
      {
        v11 = *(v2 + v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v8) = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v11 = sub_245702458(0, *(v11 + 2) + 1, 1, v11);
          *(v3 + v8) = v11;
        }

        v13 = *(v11 + 2);
        v14 = *(v11 + 3);
        v15 = v13 + 1;
        if (v13 >= v14 >> 1)
        {
          v26 = v13 + 1;
          v23 = v11;
          v24 = *(v11 + 2);
          v25 = sub_245702458((v14 > 1), v13 + 1, 1, v23);
          v13 = v24;
          v15 = v26;
          v11 = v25;
        }

        *(v11 + 2) = v15;
        v16 = &v11[24 * v13];
        *(v16 + 4) = v5;
        *(v16 + 5) = v6;
        *(v16 + 6) = v7;
        *(v3 + v8) = v11;
        v17 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames;
        v18 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v17) = v18;
        if ((result & 1) == 0)
        {
          result = sub_245702364(0, *(v18 + 16) + 1, 1, v18);
          v18 = result;
          *(v3 + v17) = result;
        }

        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          result = sub_245702364((v19 > 1), v20 + 1, 1, v18);
          v21 = v20 + 1;
          v18 = result;
        }

        *(v18 + 16) = v21;
        *(v18 + v20 + 32) = a2 & 1;
        *(v3 + v17) = v18;
      }
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_isStoppingLiveRecording) = 1;
      v22 = *(*(v2 + 640) + 32);

      sub_2456E9A1C();
    }
  }

  return result;
}

uint64_t sub_2456FA788(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for RGBLivenessModel.Event(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v11 = sub_245747E60();
  v2[15] = v11;
  v12 = *(v11 - 8);
  v2[16] = v12;
  v13 = *(v12 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v15 = sub_245747C30();
  v2[21] = v15;
  v16 = *(v15 - 8);
  v2[22] = v16;
  v17 = *(v16 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456FA9F4, 0, 0);
}

uint64_t sub_2456FA9F4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_245703098(v0[5], v3, &qword_27EE244D0, &unk_245749FF0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[17];
    sub_2456EEF50(v0[20], &qword_27EE244D0, &unk_245749FF0);
    sub_245747CF0();
    v5 = sub_245747E50();
    v6 = sub_245748920();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2456DE000, v5, v6, "Tried to confirm LivePhoto but videoURL is missing.", v7, 2u);
      MEMORY[0x245D712D0](v7, -1, -1);
    }

    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];
    v11 = v0[13];
    v60 = v0[14];
    v62 = v0[12];
    v13 = v0[10];
    v12 = v0[11];
    v15 = v0[8];
    v14 = v0[9];
    v58 = v0[7];
    v16 = v5;
    v17 = v0[6];

    (*(v9 + 8))(v8, v10);
    (*(v13 + 16))(v12, v17 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v14);
    *v15 = 10;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v13 + 8))(v12, v14);
    (*(v11 + 8))(v60, v62);
LABEL_12:
    v46 = v0[23];
    v47 = v0[19];
    v48 = v0[20];
    v50 = v0[17];
    v49 = v0[18];
    v51 = v0[14];
    v52 = v0[11];
    v53 = v0[8];

    v54 = v0[1];

    return v54();
  }

  v18 = v0[6];
  (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
  v19 = *(*(v18 + 640) + 192);
  v0[24] = v19;
  if (!v19)
  {
    v32 = v0[18];
    sub_245747CF0();
    v33 = sub_245747E50();
    v34 = sub_245748920();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2456DE000, v33, v34, "Tried to confirm LivePhoto but photo is missing.", v35, 2u);
      MEMORY[0x245D712D0](v35, -1, -1);
    }

    v61 = v0[21];
    v63 = v0[23];
    v36 = v0[18];
    v38 = v0[15];
    v37 = v0[16];
    v39 = v0[13];
    v40 = v0[11];
    v57 = v0[12];
    v59 = v0[22];
    v42 = v0[9];
    v41 = v0[10];
    v43 = v0[8];
    v55 = v0[7];
    v56 = v0[14];
    v44 = v33;
    v45 = v0[6];

    (*(v37 + 8))(v36, v38);
    (*(v41 + 16))(v40, v45 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v42);
    *v43 = 10;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v41 + 8))(v40, v42);
    (*(v39 + 8))(v56, v57);
    (*(v59 + 8))(v63, v61);
    goto LABEL_12;
  }

  v21 = v0[22];
  v20 = v0[23];
  v22 = v0[21];
  v23 = v0[19];
  v24 = v0[6];
  v0[25] = *(v24 + 648);
  v25 = *(v24 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
  v0[26] = v25;
  v26 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps;
  swift_beginAccess();
  v27 = *(v24 + v26);
  v0[27] = v27;
  (*(v21 + 16))(v23, v20, v22);
  (*(v21 + 56))(v23, 0, 1, v22);
  v28 = v19;

  v29 = swift_task_alloc();
  v0[28] = v29;
  *v29 = v0;
  v29[1] = sub_2456FAF28;
  v30 = v0[19];

  return sub_2456F11D4(v28, v25, v27, v30);
}

uint64_t sub_2456FAF28()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 152);
  v7 = *v0;

  sub_2456EEF50(v5, &qword_27EE244D0, &unk_245749FF0);

  return MEMORY[0x2822009F8](sub_2456FB0AC, 0, 0);
}

uint64_t sub_2456FB0AC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 184);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 88);
  v11 = *(v0 + 64);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2456FB194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-v8];
  v10 = (v2 + 64);
  if (*(v2 + 16) == 1)
  {
    memcpy(v21, v10, sizeof(v21));
    v11 = sub_2457210B0();
  }

  else
  {
    memcpy(v21, v10, sizeof(v21));
    v11 = sub_24572135C();
  }

  v12 = v11;
  v13 = (v2 + 64);
  if (*(v2 + 16) == 1)
  {
    memcpy(v21, v13, sizeof(v21));
    v14 = sub_245721608();
  }

  else
  {
    memcpy(v21, v13, sizeof(v21));
    v14 = sub_2457218E0();
  }

  if (a2 <= 1)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  v16 = sub_245748810();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v17[5] = v3;
  v17[6] = a1;

  v18 = sub_24572A644(0, 0, v9, &unk_24574AD00, v17);
  v19 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask);
  *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask) = v18;
}

uint64_t sub_2456FB34C()
{
  v1[53] = v0;
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  v1[54] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[55] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v1[56] = v4;
  v5 = *(v4 - 8);
  v1[57] = v5;
  v6 = *(v5 + 64) + 15;
  v1[58] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v1[59] = v7;
  v8 = *(v7 - 8);
  v1[60] = v8;
  v9 = *(v8 + 64) + 15;
  v1[61] = swift_task_alloc();
  v10 = sub_245747E60();
  v1[62] = v10;
  v11 = *(v10 - 8);
  v1[63] = v11;
  v12 = *(v11 + 64) + 15;
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0) - 8) + 64) + 15;
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456FB55C, 0, 0);
}

uint64_t sub_2456FB55C()
{
  v66 = v0;
  v1 = v0[53];
  v2 = *(v1 + 640);
  v3 = *(v2 + 192);
  v0[68] = v3;
  if (!v3)
  {
    v25 = v0[64];
    sub_245747CF0();
    v26 = sub_245747E50();
    v27 = sub_245748920();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2456DE000, v26, v27, "Tried to complete liveness but selfie was missing.", v28, 2u);
      MEMORY[0x245D712D0](v28, -1, -1);
    }

    v30 = v0[63];
    v29 = v0[64];
    v31 = v0[62];
    v32 = v0[60];
    v62 = v0[61];
    v64 = v0[59];
    v34 = v0[57];
    v33 = v0[58];
    v36 = v0[55];
    v35 = v0[56];
    v60 = v0[54];
    v37 = v26;
    v38 = v0[53];

    (*(v30 + 8))(v29, v31);
    (*(v34 + 16))(v33, v38 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v35);
    *v36 = 10;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v34 + 8))(v33, v35);
    (*(v32 + 8))(v62, v64);
    goto LABEL_12;
  }

  v4 = v0[67];
  v5 = OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL;
  swift_beginAccess();
  sub_245703098(v2 + v5, v4, &qword_27EE244D0, &unk_245749FF0);
  v6 = sub_245747C30();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  v8 = v0[67];
  if (v7 == 1)
  {
    v9 = v0[53];
    v10 = v3;
    sub_2456EEF50(v8, &qword_27EE244D0, &unk_245749FF0);
    memcpy(v0 + 2, (v9 + 136), 0x14DuLL);
    if (sub_2456F3C64((v0 + 2)) == 1 || *(v0[42] + 16) && (memcpy(__dst, v0 + 2, sizeof(__dst)), RGBLivenessActiveConfig.minRequiredGesturesCount.getter() > 0))
    {
      v63 = v10;
      v11 = v0[65];
      sub_245747CF0();
      v12 = sub_245747E50();
      v13 = sub_245748920();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2456DE000, v12, v13, "Tried to complete liveness but video URL was missing.", v14, 2u);
        MEMORY[0x245D712D0](v14, -1, -1);
      }

      v15 = v0[65];
      v17 = v0[62];
      v16 = v0[63];
      v18 = v0[60];
      v19 = v0[58];
      v59 = v0[61];
      v61 = v0[59];
      v21 = v0[56];
      v20 = v0[57];
      v22 = v0[55];
      v58 = v0[54];
      v23 = v12;
      v24 = v0[53];

      (*(v16 + 8))(v15, v17);
      (*(v20 + 16))(v19, v24 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v21);
      *v22 = 10;
      swift_storeEnumTagMultiPayload();
      sub_2457488A0();

      (*(v20 + 8))(v19, v21);
      (*(v18 + 8))(v59, v61);
LABEL_12:
      v39 = v0[67];
      v40 = v0[66];
      v41 = v0[65];
      v42 = v0[64];
      v43 = v0[61];
      v44 = v0[58];
      v45 = v0[55];

      v46 = v0[1];

      return v46();
    }
  }

  else
  {
    v48 = v3;
    sub_2456EEF50(v8, &qword_27EE244D0, &unk_245749FF0);
  }

  v49 = v0[66];
  v50 = v0[53];
  v0[69] = *(v50 + 648);
  v51 = *(v50 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
  v0[70] = v51;
  v52 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps;
  swift_beginAccess();
  v53 = *(v50 + v52);
  v0[71] = v53;
  v54 = *(v1 + 640);
  v55 = OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL;
  swift_beginAccess();
  sub_245703098(v54 + v55, v49, &qword_27EE244D0, &unk_245749FF0);

  v56 = swift_task_alloc();
  v0[72] = v56;
  *v56 = v0;
  v56[1] = sub_2456FBAF8;
  v57 = v0[66];

  return sub_2456F11D4(v3, v51, v53, v57);
}