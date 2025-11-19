uint64_t RGBLivenessPassiveConfig.totalFrameCount.getter()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  if ((*(v0 + 96) & 1) != 0 || (result = *(v0 + 88), result < 0))
  {
    sub_245747CF0();
    v8 = sub_245747E50();
    v9 = sub_245748920();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2456DE000, v8, v9, "Invalid totalFrameCount provided in passiveConfig. Falling back to default.", v10, 2u);
      MEMORY[0x245D712D0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return v6;
  }

  return result;
}

uint64_t RGBLivenessPassiveConfig.minimumValidFrameCount.getter()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v7 = *(v0 + 112);
  if (v7)
  {
    goto LABEL_4;
  }

  v8 = *(v0 + 104);
  if (v8 < 0)
  {
    goto LABEL_4;
  }

  v9 = *(v0 + 16);
  v14[0] = *v0;
  v14[1] = v9;
  v15 = v6;
  v16 = *(v0 + 40);
  v17 = *(v0 + 56);
  v18 = *(v0 + 72);
  v19 = *(v0 + 88);
  v20 = v8;
  v21 = v7;
  v23 = *(v0 + 117);
  v22 = *(v0 + 113);
  if (v8 >= RGBLivenessPassiveConfig.totalFrameCount.getter())
  {
LABEL_4:
    sub_245747CF0();
    v10 = sub_245747E50();
    v11 = sub_245748920();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2456DE000, v10, v11, "Invalid minimumValidFrameCount provided in passiveConfig. Falling back to default.", v12, 2u);
      MEMORY[0x245D712D0](v12, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return v6;
  }

  return v8;
}

uint64_t RGBLivenessActiveConfig.gestureTypes.getter()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 88);
  v7 = *(v0 + 320);
  if (v6 && *(v6 + 16) >= *(v7 + 16))
  {
  }

  sub_245747CF0();
  v8 = sub_245747E50();
  v9 = sub_245748920();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2456DE000, v8, v9, "Invalid gestureTypes provided in activeConfig. Falling back to default.", v10, 2u);
    MEMORY[0x245D712D0](v10, -1, -1);
  }

  (*(v2 + 8))(v5, v1);

  return v7;
}

unint64_t RGBLivenessActiveConfig.minRequiredGesturesCount.getter()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 320);
  if ((*(v0 + 104) & 1) != 0 || (result = *(v0 + 96), (result & 0x8000000000000000) != 0) || *(v6 + 16) < result)
  {
    sub_245747CF0();
    v8 = sub_245747E50();
    v9 = sub_245748920();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2456DE000, v8, v9, "Invalid minRequiredGestureCount provided in activeConfig. Falling back to default.", v10, 2u);
      MEMORY[0x245D712D0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return *(v6 + 16);
  }

  return result;
}

uint64_t RGBLivenessActiveConfig.maxRetakeCount.getter()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  if ((*(v0 + 200) & 1) != 0 || (result = *(v0 + 192), result <= 0))
  {
    sub_245747CF0();
    v8 = sub_245747E50();
    v9 = sub_245748920();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2456DE000, v8, v9, "Invalid maxRetakeCount provided in activeConfig. Falling back to default.", v10, 2u);
      MEMORY[0x245D712D0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return v6;
  }

  return result;
}

uint64_t RGBLivenessPassiveConfig.maxRetakeCount.getter()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if ((v0[6] & 1) != 0 || (result = v0[5], result <= 0))
  {
    sub_245747CF0();
    v8 = sub_245747E50();
    v9 = sub_245748920();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2456DE000, v8, v9, "Invalid maxRetakeCount provided in passiveConfig. Falling back to default.", v10, 2u);
      MEMORY[0x245D712D0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return v6;
  }

  return result;
}

uint64_t RGBLivenessActiveConfig.sessionTimeout.getter()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if ((*(v0 + 184) & 1) != 0 || (result = *(v0 + 176), result <= 0))
  {
    sub_245747CF0();
    v8 = sub_245747E50();
    v9 = sub_245748920();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2456DE000, v8, v9, "Invalid sessionTimeout provided in activeConfig. Falling back to default.", v10, 2u);
      MEMORY[0x245D712D0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return v6;
  }

  return result;
}

uint64_t RGBLivenessPassiveConfig.sessionTimeout.getter()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  if ((*(v0 + 64) & 1) != 0 || (result = *(v0 + 56), result <= 0))
  {
    sub_245747CF0();
    v8 = sub_245747E50();
    v9 = sub_245748920();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2456DE000, v8, v9, "Invalid sessionTimeout provided in passiveConfig. Falling back to default.", v10, 2u);
      MEMORY[0x245D712D0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return v6;
  }

  return result;
}

uint64_t RGBLivenessActiveConfig.faceOutOfBoundFrames.getter()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  if ((*(v0 + 216) & 1) != 0 || (result = *(v0 + 208), result < 0))
  {
    sub_245747CF0();
    v8 = sub_245747E50();
    v9 = sub_245748920();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2456DE000, v8, v9, "Invalid faceOutOfBoundFrames provided in activeConfig. Falling back to default.", v10, 2u);
      MEMORY[0x245D712D0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return v6;
  }

  return result;
}

uint64_t RGBLivenessPassiveConfig.faceOutOfBoundFrames.getter()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if ((*(v0 + 80) & 1) != 0 || (result = *(v0 + 72), result < 0))
  {
    sub_245747CF0();
    v8 = sub_245747E50();
    v9 = sub_245748920();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2456DE000, v8, v9, "Invalid faceOutOfBoundFrames provided in passiveConfig. Falling back to default.", v10, 2u);
      MEMORY[0x245D712D0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return v6;
  }

  return result;
}

uint64_t RGBLivenessConfig.activeConfig.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 72), 0x14DuLL);
  memcpy(a1, (v1 + 72), 0x14DuLL);
  return sub_245733E9C(__dst, v4);
}

void *RGBLivenessConfig.activeConfig.setter(const void *a1)
{
  memcpy(__dst, (v1 + 72), 0x14DuLL);
  sub_245733F0C(__dst);
  return memcpy((v1 + 72), a1, 0x14DuLL);
}

__n128 RGBLivenessConfig.passiveConfig.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 488);
  *(a1 + 64) = *(v1 + 472);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 504);
  *(a1 + 110) = *(v1 + 518);
  v3 = *(v1 + 424);
  *a1 = *(v1 + 408);
  *(a1 + 16) = v3;
  result = *(v1 + 440);
  v5 = *(v1 + 456);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

__n128 RGBLivenessConfig.passiveConfig.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 472) = *(a1 + 64);
  *(v1 + 488) = v2;
  *(v1 + 504) = *(a1 + 96);
  *(v1 + 518) = *(a1 + 110);
  v3 = *(a1 + 16);
  *(v1 + 408) = *a1;
  *(v1 + 424) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(v1 + 440) = result;
  *(v1 + 456) = v5;
  return result;
}

uint64_t RGBLivenessConfig.imageWidth.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t (*RGBLivenessConfig.imageWidth.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  memcpy(v5, v1, sizeof(v5));
  *a1 = RGBLivenessConfig.imageWidth.getter();
  *(a1 + 8) = v3 & 1;
  return sub_245732C34;
}

uint64_t sub_245732C34(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t RGBLivenessConfig.imageHeight.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t (*RGBLivenessConfig.imageHeight.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  memcpy(v5, v1, sizeof(v5));
  *a1 = RGBLivenessConfig.imageHeight.getter();
  *(a1 + 8) = v3 & 1;
  return sub_245732CD0;
}

uint64_t sub_245732CD0(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

void *(*RGBLivenessConfig.imageCompressionQuality.modify(void *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v5, v1, sizeof(v5));
  RGBLivenessConfig.imageCompressionQuality.getter();
  *a1 = v3;
  return sub_245732D60;
}

void *sub_245732D60(void *result)
{
  v1 = result[1];
  *(v1 + 56) = *result;
  *(v1 + 64) = 0;
  return result;
}

uint64_t RGBLivenessConfig.targetDevice.getter()
{
  result = *(v0 + 528);
  v2 = *(v0 + 536);
  return result;
}

uint64_t RGBLivenessConfig.targetDevice.setter(uint64_t result, char a2)
{
  *(v2 + 528) = result;
  *(v2 + 536) = a2 & 1;
  return result;
}

uint64_t RGBLivenessConfig.issuerName.getter()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 552);

  return v1;
}

uint64_t RGBLivenessConfig.issuerName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 552);

  *(v2 + 544) = a1;
  *(v2 + 552) = a2;
  return result;
}

double RGBLivenessConfig.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FEFCED916872B02;
  *(a1 + 8) = xmmword_24574C480;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  sub_245733F74(v3);
  memcpy((a1 + 72), v3, 0x14DuLL);
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 524) = 0;
  *(a1 + 520) = 512;
  *(a1 + 528) = 0;
  *(a1 + 536) = 1;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0xE000000000000000;
  *&result = 5;
  *(a1 + 560) = xmmword_24574C490;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureSequence.setter(uint64_t a1)
{
  v3 = *(v1 + 320);

  *(v1 + 320) = a1;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.gestureTypes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v5 = *v1;
  v6 = *(v1 + 16);
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  a1[1] = v1;
  a1[2] = v3;
  *&v23[13] = *(v1 + 317);
  v10 = *(v1 + 96);
  v11 = *(v1 + 112);
  v14 = *(v1 + 160);
  v15 = *(v1 + 176);
  v12 = *(v1 + 128);
  v13 = *(v1 + 144);
  v18 = *(v1 + 224);
  v19 = *(v1 + 240);
  v16 = *(v1 + 192);
  v17 = *(v1 + 208);
  v22 = *(v1 + 288);
  *v23 = *(v1 + 304);
  v20 = *(v1 + 256);
  v21 = *(v1 + 272);
  *a1 = RGBLivenessActiveConfig.gestureTypes.getter();
  return sub_2457330AC;
}

uint64_t sub_2457330AC(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 88) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 88) = v4;
  }

  return result;
}

uint64_t RGBLivenessActiveConfig.minRequiredGesturesCount.setter(uint64_t result)
{
  *(v1 + 96) = result;
  *(v1 + 104) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.minRequiredGesturesCount.modify(unint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.minRequiredGesturesCount.getter();
  return sub_245733198;
}

void *sub_245733198(void *result)
{
  v1 = result[1];
  *(v1 + 96) = *result;
  *(v1 + 104) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureSkipSoftTimeout.setter(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 120) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.gestureSkipSoftTimeout.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.gestureSkipSoftTimeout.getter();
  return sub_245733220;
}

void *sub_245733220(void *result)
{
  v1 = result[1];
  *(v1 + 112) = *result;
  *(v1 + 120) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureSkipSoftAccessible.setter(uint64_t result)
{
  *(v1 + 128) = result;
  *(v1 + 136) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.gestureSkipSoftAccessible.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.gestureSkipSoftAccessible.getter();
  return sub_2457332A8;
}

void *sub_2457332A8(void *result)
{
  v1 = result[1];
  *(v1 + 128) = *result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureSkipHardTimeout.setter(uint64_t result)
{
  *(v1 + 144) = result;
  *(v1 + 152) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.gestureSkipHardTimeout.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.gestureSkipHardTimeout.getter();
  return sub_245733330;
}

void *sub_245733330(void *result)
{
  v1 = result[1];
  *(v1 + 144) = *result;
  *(v1 + 152) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureSkipHardAccessible.setter(uint64_t result)
{
  *(v1 + 160) = result;
  *(v1 + 168) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.gestureSkipHardAccessible.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.gestureSkipHardAccessible.getter();
  return sub_2457333B8;
}

void *sub_2457333B8(void *result)
{
  v1 = result[1];
  *(v1 + 160) = *result;
  *(v1 + 168) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.maxRetakeCount.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.maxRetakeCount.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.maxRetakeCount.getter();
  *(a1 + 8) = 0;
  return sub_245733448;
}

uint64_t sub_245733448(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 192) = *result;
  *(v1 + 200) = v2;
  return result;
}

uint64_t RGBLivenessActiveConfig.sessionTimeout.setter(uint64_t result)
{
  *(v1 + 176) = result;
  *(v1 + 184) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.sessionTimeout.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.sessionTimeout.getter();
  return sub_2457334D8;
}

void *sub_2457334D8(void *result)
{
  v1 = result[1];
  *(v1 + 176) = *result;
  *(v1 + 184) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.faceOutOfBoundFrames.setter(uint64_t result)
{
  *(v1 + 208) = result;
  *(v1 + 216) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.faceOutOfBoundFrames.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.faceOutOfBoundFrames.getter();
  return sub_245733560;
}

void *sub_245733560(void *result)
{
  v1 = result[1];
  *(v1 + 208) = *result;
  *(v1 + 216) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureCompletionDelay.setter(uint64_t result)
{
  *(v1 + 224) = result;
  *(v1 + 232) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.gestureCompletionDelay.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.gestureCompletionDelay.getter();
  return sub_2457335E8;
}

void *sub_2457335E8(void *result)
{
  v1 = result[1];
  *(v1 + 224) = *result;
  *(v1 + 232) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.tutorialVideoDelay.setter(uint64_t result)
{
  *(v1 + 240) = result;
  *(v1 + 248) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.tutorialVideoDelay.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.tutorialVideoDelay.getter();
  return sub_245733670;
}

void *sub_245733670(void *result)
{
  v1 = result[1];
  *(v1 + 240) = *result;
  *(v1 + 248) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.tutorialVideoDuration.setter(uint64_t result)
{
  *(v1 + 256) = result;
  *(v1 + 264) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.tutorialVideoDuration.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.tutorialVideoDuration.getter();
  return sub_2457336F8;
}

void *sub_2457336F8(void *result)
{
  v1 = result[1];
  *(v1 + 256) = *result;
  *(v1 + 264) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.tutorialResumeDelay.setter(uint64_t result)
{
  *(v1 + 272) = result;
  *(v1 + 280) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.tutorialResumeDelay.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.tutorialResumeDelay.getter();
  return sub_245733780;
}

void *sub_245733780(void *result)
{
  v1 = result[1];
  *(v1 + 272) = *result;
  *(v1 + 280) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureDetectedSuccessDuration.setter(uint64_t result)
{
  *(v1 + 288) = result;
  *(v1 + 296) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.gestureDetectedSuccessDuration.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.gestureDetectedSuccessDuration.getter();
  return sub_245733808;
}

void *sub_245733808(void *result)
{
  v1 = result[1];
  *(v1 + 288) = *result;
  *(v1 + 296) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.lastGestureExtraFrameDuration.setter(uint64_t result)
{
  *(v1 + 304) = result;
  *(v1 + 312) = 0;
  return result;
}

void *(*RGBLivenessActiveConfig.lastGestureExtraFrameDuration.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.lastGestureExtraFrameDuration.getter();
  return sub_245733890;
}

void *sub_245733890(void *result)
{
  v1 = result[1];
  *(v1 + 304) = *result;
  *(v1 + 312) = 0;
  return result;
}

double RGBLivenessActiveConfig.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_24574C4A0;
  *(a1 + 16) = xmmword_24574C4B0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 30;
  *(a1 + 56) = xmmword_24574C4C0;
  *(a1 + 72) = xmmword_24574C4D0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  *(a1 + 264) = 1;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  *(a1 + 304) = 0;
  *(a1 + 312) = 1;
  *(a1 + 320) = MEMORY[0x277D84F90];
  result = 7.29112205e-304;
  *(a1 + 328) = 0x1000000;
  *(a1 + 332) = 1;
  return result;
}

uint64_t RGBLivenessPassiveConfig.maxRetakeCount.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t (*RGBLivenessPassiveConfig.maxRetakeCount.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v8 = v1[4];
  v9 = v1[5];
  *v10 = v1[6];
  *&v10[14] = *(v1 + 110);
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  *a1 = RGBLivenessPassiveConfig.maxRetakeCount.getter();
  *(a1 + 8) = 0;
  return sub_2457342F4;
}

uint64_t RGBLivenessPassiveConfig.sessionTimeout.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 64) = 0;
  return result;
}

void *(*RGBLivenessPassiveConfig.sessionTimeout.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  v7 = *(v1 + 64);
  v8 = *(v1 + 80);
  *v9 = *(v1 + 96);
  *&v9[14] = *(v1 + 110);
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  *a1 = RGBLivenessPassiveConfig.sessionTimeout.getter();
  return sub_2457342F0;
}

uint64_t RGBLivenessPassiveConfig.faceOutOfBoundFrames.setter(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 80) = 0;
  return result;
}

void *(*RGBLivenessPassiveConfig.faceOutOfBoundFrames.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  v7 = *(v1 + 64);
  v8 = *(v1 + 80);
  *v9 = *(v1 + 96);
  *&v9[14] = *(v1 + 110);
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  *a1 = RGBLivenessPassiveConfig.faceOutOfBoundFrames.getter();
  return sub_245733BF8;
}

void *sub_245733BF8(void *result)
{
  v1 = result[1];
  *(v1 + 72) = *result;
  *(v1 + 80) = 0;
  return result;
}

uint64_t RGBLivenessPassiveConfig.totalFrameCount.setter(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 96) = 0;
  return result;
}

void *(*RGBLivenessPassiveConfig.totalFrameCount.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  v7 = *(v1 + 64);
  v8 = *(v1 + 80);
  *v9 = *(v1 + 96);
  *&v9[14] = *(v1 + 110);
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  *a1 = RGBLivenessPassiveConfig.totalFrameCount.getter();
  return sub_245733C90;
}

void *sub_245733C90(void *result)
{
  v1 = result[1];
  *(v1 + 88) = *result;
  *(v1 + 96) = 0;
  return result;
}

uint64_t RGBLivenessPassiveConfig.minimumValidFrameCount.setter(uint64_t result)
{
  *(v1 + 104) = result;
  *(v1 + 112) = 0;
  return result;
}

void *(*RGBLivenessPassiveConfig.minimumValidFrameCount.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  v7 = *(v1 + 64);
  v8 = *(v1 + 80);
  *v9 = *(v1 + 96);
  *&v9[14] = *(v1 + 110);
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  *a1 = RGBLivenessPassiveConfig.minimumValidFrameCount.getter();
  return sub_245733D28;
}

void *sub_245733D28(void *result)
{
  v1 = result[1];
  *(v1 + 104) = *result;
  *(v1 + 112) = 0;
  return result;
}

void __swiftcall RGBLivenessPassiveConfig.init()(CoreIDVRGBLiveness::RGBLivenessPassiveConfig *__return_ptr retstr)
{
  *&retstr->defaultMaxRetakeCount = xmmword_24574C4E0;
  *&retstr->defaultFaceOutOfBoundFrames = xmmword_24574C4F0;
  *&retstr->defaultMinimumValidFrameCount = xmmword_24574C500;
  retstr->_maxRetakeCount.is_nil = 1;
  *(&retstr->_sessionTimeout.value + 7) = 0;
  BYTE6(retstr->_faceOutOfBoundFrames.value) = 1;
  *(&retstr->_totalFrameCount.value + 5) = 0;
  BYTE4(retstr->_minimumValidFrameCount.value) = 1;
  *&retstr->enableAutoFlash = 0;
  LOBYTE(retstr[1].defaultMaxRetakeCount) = 1;
  retstr[1].defaultSessionTimeout = 0;
  LOBYTE(retstr[1].defaultFaceOutOfBoundFrames) = 1;
  *(&retstr[1].defaultFaceOutOfBoundFrames + 1) = 0x1000000;
  BYTE5(retstr[1].defaultFaceOutOfBoundFrames) = 0;
}

uint64_t sub_245733E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25158, &qword_24574C510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245733F0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25158, &qword_24574C510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_245733F74(_OWORD *a1)
{
  result = 0.0;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 317) = 0u;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18CoreIDVRGBLiveness23RGBLivenessActiveConfigVSg(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_245733FCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 576))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 552);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_245734014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 568) = 0;
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
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 576) = 1;
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
      *(result + 552) = (a2 - 1);
      return result;
    }

    *(result + 576) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_245734104(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 333))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 320);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24573414C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 332) = 0;
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 333) = 1;
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
      *(result + 320) = (a2 - 1);
      return result;
    }

    *(result + 333) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy118_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_245734224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 118))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 113);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_245734278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 118) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 118) = 0;
    }

    if (a2)
    {
      *(result + 113) = a2 + 1;
    }
  }

  return result;
}

uint64_t RGBLivenessError.hashValue.getter()
{
  v1 = *v0;
  sub_245748C80();
  MEMORY[0x245D70A70](v1);
  return sub_245748CB0();
}

unint64_t sub_245734384()
{
  result = qword_27EE25160;
  if (!qword_27EE25160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25160);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RGBLivenessError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RGBLivenessError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

CoreIDVRGBLiveness::RGBLivenessImageQualityGuidance __swiftcall RGBLivenessImageQualityGuidance.init(text:isActionable:flashROI:startOutOfBoundsTimer:startFaceTooSmallTimer:turnOnFlash:blockLiveness:disableStart:isInvalidLivePhotoFrame:)(Swift::String text, Swift::Bool isActionable, Swift::Bool flashROI, Swift::Bool startOutOfBoundsTimer, Swift::Bool startFaceTooSmallTimer, Swift::Bool turnOnFlash, Swift::Bool blockLiveness, Swift::Bool disableStart, Swift::Bool isInvalidLivePhotoFrame)
{
  *v9 = text;
  *(v9 + 16) = isActionable;
  *(v9 + 19) = flashROI;
  *(v9 + 20) = startOutOfBoundsTimer;
  *(v9 + 21) = startFaceTooSmallTimer;
  *(v9 + 22) = turnOnFlash;
  *(v9 + 17) = blockLiveness;
  *(v9 + 18) = disableStart;
  *(v9 + 23) = isInvalidLivePhotoFrame;
  result.text = text;
  result.isActionable = isActionable;
  return result;
}

CoreIDVRGBLiveness::RGBLivenessImageType_optional __swiftcall RGBLivenessImageType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if ((rawValue + 1) < 7)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

double RGBLivenessImageQualityOptions.roi.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

void RGBLivenessImageQualityOptions.roi.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t RGBLivenessImageQualityOptions.faces.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t RGBLivenessImageQualityOptions.captureTime.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t RGBLivenessImageQualityGuidance.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RGBLivenessImageQualityGuidance.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void sub_24573493C()
{
  *&xmmword_27EE25168 = 0;
  *(&xmmword_27EE25168 + 1) = 0xE000000000000000;
  LOBYTE(qword_27EE25178) = 1;
  *(&qword_27EE25178 + 1) = 0;
  HIDWORD(qword_27EE25178) = 0;
}

uint64_t static RGBLivenessImageQualityGuidance.pass.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE24310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = xmmword_27EE25168;
  v6 = qword_27EE25178;
  v2 = qword_27EE25178;
  *a1 = xmmword_27EE25168;
  *(a1 + 16) = v2;
  return sub_245702E58(&v5, &v4);
}

uint64_t static RGBLivenessImageQualityGuidance.pass.setter(uint64_t a1)
{
  if (qword_27EE24310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_27EE25168;
  v4 = qword_27EE25178;
  xmmword_27EE25168 = *a1;
  qword_27EE25178 = *(a1 + 16);
  return sub_245705A50(&v3);
}

uint64_t (*static RGBLivenessImageQualityGuidance.pass.modify())()
{
  if (qword_27EE24310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_245734B1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE24310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = xmmword_27EE25168;
  v6 = qword_27EE25178;
  v2 = qword_27EE25178;
  *a1 = xmmword_27EE25168;
  *(a1 + 16) = v2;
  return sub_245702E58(&v5, &v4);
}

uint64_t sub_245734BB4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  sub_245702E58(&v2, &v4);
  if (qword_27EE24310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_27EE25168;
  v5 = qword_27EE25178;
  xmmword_27EE25168 = v2;
  qword_27EE25178 = v3;
  return sub_245705A50(&v4);
}

void sub_245734C68()
{
  *&xmmword_27EE25180 = 0;
  *(&xmmword_27EE25180 + 1) = 0xE000000000000000;
  qword_27EE25190 = 0;
}

uint64_t static RGBLivenessImageQualityGuidance.noop.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE24318 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = xmmword_27EE25180;
  v6 = qword_27EE25190;
  v2 = qword_27EE25190;
  *a1 = xmmword_27EE25180;
  *(a1 + 16) = v2;
  return sub_245702E58(&v5, &v4);
}

uint64_t static RGBLivenessImageQualityGuidance.noop.setter(uint64_t a1)
{
  if (qword_27EE24318 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_27EE25180;
  v4 = qword_27EE25190;
  xmmword_27EE25180 = *a1;
  qword_27EE25190 = *(a1 + 16);
  return sub_245705A50(&v3);
}

uint64_t (*static RGBLivenessImageQualityGuidance.noop.modify())()
{
  if (qword_27EE24318 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_245734E40@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE24318 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = xmmword_27EE25180;
  v6 = qword_27EE25190;
  v2 = qword_27EE25190;
  *a1 = xmmword_27EE25180;
  *(a1 + 16) = v2;
  return sub_245702E58(&v5, &v4);
}

uint64_t sub_245734ED8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  sub_245702E58(&v2, &v4);
  if (qword_27EE24318 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_27EE25180;
  v5 = qword_27EE25190;
  xmmword_27EE25180 = v2;
  qword_27EE25190 = v3;
  return sub_245705A50(&v4);
}

uint64_t RGBLivenessImageQualityGuidance.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v25 = *(v0 + 17);
  v26 = *(v0 + 18);
  v4 = *(v0 + 19);
  v5 = *(v0 + 20);
  v6 = *(v0 + 21);
  v7 = *(v0 + 22);
  v27 = *(v0 + 23);
  sub_245748AA0();
  MEMORY[0x245D70540](0x65636E6164697547, 0xEF203A7478657420);
  MEMORY[0x245D70540](v1, v2);
  MEMORY[0x245D70540](0x6F6974634173690ALL, 0xEF203A656C62616ELL);
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v8, v9);

  MEMORY[0x245D70540](0x4F526873616C660ALL, 0xEB00000000203A49);
  if (v4)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v4)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v10, v11);

  MEMORY[0x245D70540](0xD000000000000018, 0x800000024575BB40);
  if (v5)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v5)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v12, v13);

  MEMORY[0x245D70540](0xD000000000000019, 0x800000024575BB60);
  if (v6)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v6)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v14, v15);

  MEMORY[0x245D70540](0x466E4F6E7275740ALL, 0xEE00203A6873616CLL);
  if (v7)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v7)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v16, v17);

  MEMORY[0x245D70540](0xD000000000000010, 0x800000024575BB80);
  if (v25)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v25)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v18, v19);

  MEMORY[0x245D70540](0x656C62617369640ALL, 0xEF203A7472617453);
  if (v26)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v26)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v20, v21);

  MEMORY[0x245D70540](0xD00000000000001ALL, 0x800000024575BBA0);
  if (v27)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v27)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v22, v23);

  return 0;
}

unint64_t sub_2457352A0()
{
  result = qword_27EE25198;
  if (!qword_27EE25198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RGBLivenessImageType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RGBLivenessImageType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy62_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_245735464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 62))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2457354AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 62) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 62) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_245735524(uint64_t a1, int a2)
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

uint64_t sub_24573556C(uint64_t result, int a2, int a3)
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

uint64_t RGBLivenessResult.init(luxValues:glassesLabel:headgearLabel:faceHairLabel:ethnicityLabel:skintoneLabel:sexLabel:ageLabel:timestampsButtonPressed:timestampsID:assessmentID:assessmentLivePRD:assessmentFakePRD:assessmentsPRD:ignoredStitches:maxNccHigh:maxNccLow:assessmentTA:assessmentsTA:assessmentFAC:timestampsFAC:assessmentsFAC:gestureSequence:livenessLabel:videoURL:imageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, float a13@<S3>, float a14@<S4>, float a15@<S5>, __int128 a16, __int128 a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v39 = type metadata accessor for RGBLivenessResult();
  v40 = *(v39 + 112);
  v41 = sub_245747C30();
  (*(*(v41 - 8) + 56))(a9 + v40, 1, 1, v41);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a16;
  *(a9 + 80) = a17;
  *(a9 + 96) = a18;
  *(a9 + 112) = a19;
  *(a9 + 128) = a20;
  *(a9 + 136) = a10;
  *(a9 + 140) = a11;
  *(a9 + 144) = a12;
  *(a9 + 152) = a21;
  *(a9 + 160) = a22;
  *(a9 + 168) = a13;
  *(a9 + 172) = a14;
  *(a9 + 176) = a23;
  *(a9 + 184) = a24;
  *(a9 + 192) = a15;
  *(a9 + 200) = a25;
  *(a9 + 216) = a26;
  *(a9 + 224) = a27;
  result = sub_2456E729C(a28, a9 + v40);
  v43 = (a9 + *(v39 + 116));
  *v43 = a29;
  v43[1] = a30;
  return result;
}

uint64_t type metadata accessor for RGBLivenessResult()
{
  result = qword_27EE251A8;
  if (!qword_27EE251A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2457357D8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CFF220]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v1 setLivenessLabel_];

  v3 = *(v0 + 216);
  sub_245736AB0();
  v4 = sub_245748790();
  [v1 setGestureSequence_];

  v5 = *(v0 + 208);
  v6 = sub_245748790();
  [v1 setAssessmentsFAC_];

  v7 = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248C0, &qword_24574AA40);
  v8 = sub_245748790();
  [v1 setAssessmentsPRD_];

  v9 = *(v0 + 184);
  v10 = sub_245748790();
  [v1 setAssessmentsTA_];

  v11 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248C8, &qword_24574AA48);
  v12 = sub_245748790();
  [v1 setTimestampsFAC_];

  v13 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248B8, &qword_24574AA38);
  v14 = sub_245748790();
  [v1 setTimestampsID_];

  v15 = *(v0 + 120);
  v16 = sub_245748790();
  [v1 setTimestampsButtonPressed_];

  v17 = *(v0 + 192);
  v18 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v19) = v17;
  v20 = [v18 initWithFloat_];
  [v1 setAssessmentFAC_];

  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v1 setAssessmentTA_];

  v22 = *(v0 + 172);
  v23 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v24) = v22;
  v25 = [v23 initWithFloat_];
  [v1 setMaxNccLow_];

  v26 = *(v0 + 168);
  v27 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v28) = v26;
  v29 = [v27 initWithFloat_];
  [v1 setMaxNccHigh_];

  v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v1 setIgnoredStitches_];

  v31 = *(v0 + 144);
  v32 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v33) = v31;
  v34 = [v32 initWithFloat_];
  [v1 setAssessmentFakePRD_];

  v35 = *(v0 + 140);
  v36 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v37) = v35;
  v38 = [v36 initWithFloat_];
  [v1 setAssessmentLivePRD_];

  v39 = *(v0 + 136);
  v40 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v41) = v39;
  v42 = [v40 initWithFloat_];
  [v1 setAssessmentID_];

  v43 = *(v0 + 104);
  v44 = *(v0 + 112);
  v45 = sub_2457486C0();
  [v1 setAgeLabel_];

  v46 = *(v0 + 88);
  v47 = *(v0 + 96);
  v48 = sub_2457486C0();
  [v1 setSexLabel_];

  v49 = *(v0 + 72);
  v50 = *(v0 + 80);
  v51 = sub_2457486C0();
  [v1 setSkintoneLabel_];

  v52 = *(v0 + 56);
  v53 = *(v0 + 64);
  v54 = sub_2457486C0();
  [v1 setEthnicityLabel_];

  v55 = *(v0 + 40);
  v56 = *(v0 + 48);
  v57 = sub_2457486C0();
  [v1 setFaceHairLabel_];

  v58 = *(v0 + 24);
  v59 = *(v0 + 32);
  v60 = sub_2457486C0();
  [v1 setHeadgearLabel_];

  v61 = *(v0 + 8);
  v62 = *(v0 + 16);
  v63 = sub_2457486C0();
  [v1 setGlassesLabel_];

  return v1;
}

CoreIDVRGBLiveness::RGBLivenessLabel_optional __swiftcall RGBLivenessLabel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t RGBLivenessResult.luxValues.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t RGBLivenessResult.glassesLabel.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RGBLivenessResult.glassesLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RGBLivenessResult.headgearLabel.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t RGBLivenessResult.headgearLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RGBLivenessResult.faceHairLabel.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t RGBLivenessResult.faceHairLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t RGBLivenessResult.ethnicityLabel.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t RGBLivenessResult.ethnicityLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t RGBLivenessResult.skintoneLabel.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t RGBLivenessResult.skintoneLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t RGBLivenessResult.sexLabel.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t RGBLivenessResult.sexLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t RGBLivenessResult.ageLabel.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t RGBLivenessResult.ageLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t RGBLivenessResult.timestampsButtonPressed.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t RGBLivenessResult.timestampsID.setter(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t RGBLivenessResult.assessmentsPRD.setter(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t RGBLivenessResult.assessmentsTA.setter(uint64_t a1)
{
  v3 = *(v1 + 184);

  *(v1 + 184) = a1;
  return result;
}

uint64_t RGBLivenessResult.timestampsFAC.setter(uint64_t a1)
{
  v3 = *(v1 + 200);

  *(v1 + 200) = a1;
  return result;
}

uint64_t RGBLivenessResult.assessmentsFAC.setter(uint64_t a1)
{
  v3 = *(v1 + 208);

  *(v1 + 208) = a1;
  return result;
}

uint64_t RGBLivenessResult.gestureSequence.setter(uint64_t a1)
{
  v3 = *(v1 + 216);

  *(v1 + 216) = a1;
  return result;
}

uint64_t RGBLivenessResult.videoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RGBLivenessResult() + 112);

  return sub_2456E7040(v3, a1);
}

uint64_t RGBLivenessResult.videoURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RGBLivenessResult() + 112);

  return sub_2456E729C(a1, v3);
}

uint64_t RGBLivenessResult.imageData.getter()
{
  v1 = v0 + *(type metadata accessor for RGBLivenessResult() + 116);
  v2 = *v1;
  sub_245727A10(*v1, *(v1 + 8));
  return v2;
}

uint64_t RGBLivenessResult.imageData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for RGBLivenessResult() + 116);
  result = sub_245726BE0(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

unint64_t sub_245736654()
{
  result = qword_27EE251A0;
  if (!qword_27EE251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE251A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RGBLivenessLabel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RGBLivenessLabel(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_245736820()
{
  sub_245736A0C();
  if (v0 <= 0x3F)
  {
    sub_245736A5C(319, &qword_27EE251C0, &qword_27EE248B8, &qword_24574AA38);
    if (v1 <= 0x3F)
    {
      sub_245736A5C(319, &qword_27EE251C8, &qword_27EE248C0, &qword_24574AA40);
      if (v2 <= 0x3F)
      {
        sub_245736A5C(319, &qword_27EE251D0, &qword_27EE248C8, &qword_24574AA48);
        if (v3 <= 0x3F)
        {
          sub_245736AFC(319, &qword_27EE251D8, sub_245736AB0, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_245736AFC(319, &qword_27EE24368, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_245736A0C()
{
  if (!qword_27EE251B8)
  {
    v0 = sub_2457487B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE251B8);
    }
  }
}

void sub_245736A5C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2457487B0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_245736AB0()
{
  result = qword_27EE24880;
  if (!qword_27EE24880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE24880);
  }

  return result;
}

void sub_245736AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_245736B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_245703098(a3, v27 - v11, &qword_27EE24810, &qword_24574A910);
  v13 = sub_245748810();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2456EEF50(v12, &qword_27EE24810, &qword_24574A910);
  }

  else
  {
    sub_245748800();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2457487C0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_245748740() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2456EEF50(a3, &qword_27EE24810, &qword_24574A910);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2456EEF50(a3, &qword_27EE24810, &qword_24574A910);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_245736E60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t RGBLivenessSession.__allocating_init(_:qualityMonitor:delegate:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  RGBLivenessSession.init(_:qualityMonitor:delegate:)(a1, a2, a3, a4);
  return v11;
}

uint64_t RGBLivenessSession.init(_:qualityMonitor:delegate:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v65 = a4;
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251E0, "T\x1B");
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v61 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v55 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251E8, &qword_24574CA90);
  v58 = *(v66 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v66);
  v55 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251F0, &qword_24574CA98);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251F8, &unk_24574CAA0);
  v71 = *(v21 - 8);
  v72 = v21;
  v22 = *(v71 + 64);
  MEMORY[0x28223BE20](v21);
  v70 = &v55 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A38, &qword_24574AC88);
  v68 = *(v24 - 8);
  v69 = v24;
  v25 = *(v68 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v55 - v26;
  memcpy(v77, a1, 0x240uLL);
  v28 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_fsm;
  if (qword_27EE24170 != -1)
  {
    swift_once();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24BC8, &qword_24574CAB0);
  v30 = __swift_project_value_buffer(v29, qword_27EE258E8);
  v31 = v67;
  sub_245703098(v30, v67 + v28, &qword_27EE24BC8, &qword_24574CAB0);
  *(v31 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask) = 0;
  *(v31 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask) = 0;
  type metadata accessor for RGBLivenessModel.State(0);
  (*(v17 + 104))(v20, *MEMORY[0x277D85778], v16);
  v32 = v70;
  sub_245748820();
  (*(v17 + 8))(v20, v16);
  (*(v68 + 16))(v31 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_states, v27, v69);
  (*(v71 + 16))(v31 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_statesContinuation, v32, v72);
  type metadata accessor for RGBLivenessModel.Event(0);
  v34 = v56;
  v33 = v57;
  (*(v56 + 104))(v8, *MEMORY[0x277D858A0], v57);
  v35 = v55;
  v36 = v59;
  sub_245748890();
  (*(v34 + 8))(v8, v33);
  v37 = v58;
  (*(v58 + 16))(v31 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_events, v35, v66);
  memcpy(v76, v77, sizeof(v76));
  v38 = type metadata accessor for RGBLivenessViewConfig();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_2456F3944(v77, v75);
  *(v31 + 16) = sub_245711028(v76);
  memcpy(v76, v77, sizeof(v76));
  v41 = v60;
  sub_245703098(v60, &v73, &qword_27EE25230, &qword_24574CAB8);
  v42 = v37;
  if (v74)
  {
    sub_245703100(&v73, v75);
  }

  else
  {
    v43 = type metadata accessor for ImageQualityAnalyzer();
    swift_allocObject();
    sub_245723D78();
    v75[3] = v43;
    v75[4] = &off_28587B288;
    v75[0] = v44;
    if (v74)
    {
      sub_2456EEF50(&v73, &qword_27EE25230, &qword_24574CAB8);
    }
  }

  v46 = v61;
  v45 = v62;
  v47 = v63;
  (*(v62 + 16))(v61, v36, v63);
  v48 = type metadata accessor for RGBLivenessController();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = sub_2456F3E7C(v76, v75, v46);
  sub_2456EEF50(v41, &qword_27EE25230, &qword_24574CAB8);
  (*(v45 + 8))(v36, v47);
  (*(v42 + 8))(v35, v66);
  (*(v71 + 8))(v70, v72);
  (*(v68 + 8))(v27, v69);
  result = v67;
  *(v67 + 24) = v51;
  v53 = (result + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
  v54 = v65;
  *v53 = v64;
  v53[1] = v54;
  return result;
}

Swift::Void __swiftcall RGBLivenessSession.setUp()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_245747E60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RGBLivenessModel.State(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25240, &qword_24574CAC0);
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v41 - v18;
  v20 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask;
  if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask) && *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask))
  {
    sub_245747CF0();
    v21 = sub_245747E50();
    v22 = sub_245748920();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2456DE000, v21, v22, "Liveness: Session has already been set up and might be in progress.", v23, 2u);
      MEMORY[0x245D712D0](v23, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v41 = v12;
    v24 = v1[3];
    v44[3] = v2;
    v44[4] = &off_28587BBD0;
    v44[0] = v1;
    swift_beginAccess();

    sub_245737C14(v44, v24 + 24);
    swift_endAccess();
    v25 = v1[2];
    v26 = sub_24573A5D4() & 1;
    v27 = *(v25 + 16);
    v42 = v11;
    if (v26 == v27)
    {
      *(v25 + 16) = v26;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v41 - 2) = v25;
      *(&v41 - 8) = v26;
      v44[0] = v25;
      sub_24571B9BC();
      sub_245747C90();
    }

    *(v24 + 16) = sub_24573A5D4() & 1;
    v29 = sub_245748810();
    v30 = *(*(v29 - 8) + 56);
    v30(v19, 1, 1, v29);
    sub_2457487F0();

    v31 = sub_2457487E0();
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v1;
    v34 = sub_245736B60(0, 0, v19, &unk_24574CAF8, v32);
    v35 = *(v1 + v20);
    *(v1 + v20) = v34;

    v30(v19, 1, 1, v29);

    v36 = sub_2457487E0();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = v33;
    v37[4] = v1;
    v38 = sub_245736B60(0, 0, v19, &unk_24574CB08, v37);
    v39 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask);
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask) = v38;

    v40 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_fsm;
    swift_beginAccess();
    sub_24573ADFC(v1 + v40, v42, type metadata accessor for RGBLivenessModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251F8, &unk_24574CAA0);
    sub_245748830();
    (*(v43 + 8))(v15, v41);
  }
}

uint64_t sub_245737C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE249F8, &qword_24574AC30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_245737C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2457487F0();
  v4[4] = sub_2457487E0();
  v6 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_events;
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_245737D44;

  return sub_245737EF8(a4 + v6);
}

uint64_t sub_245737D44()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_2457487C0();

  return MEMORY[0x2822009F8](sub_245737E80, v5, v4);
}

uint64_t sub_245737E80()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask);
  *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_245737EF8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25240, &qword_24574CAC0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(type metadata accessor for RGBLivenessModel.State(0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v7 = type metadata accessor for RGBLivenessModel.Event(0);
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25280, &qword_24574CBB8) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25288, &qword_24574CBC0);
  v2[19] = v11;
  v12 = *(v11 - 8);
  v2[20] = v12;
  v13 = *(v12 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = sub_2457487F0();
  v2[23] = sub_2457487E0();
  v15 = sub_2457487C0();
  v2[24] = v15;
  v2[25] = v14;

  return MEMORY[0x2822009F8](sub_24573813C, v15, v14);
}

uint64_t sub_24573813C()
{
  v1 = v0[21];
  v2 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251E8, &qword_24574CA90);
  sub_245748850();
  v3 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_statesContinuation;
  v0[26] = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_fsm;
  v0[27] = v3;
  v4 = v0[22];
  v5 = sub_2457487E0();
  v0[28] = v5;
  v6 = *(MEMORY[0x277D858B8] + 4);
  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_245738230;
  v8 = v0[21];
  v9 = v0[18];
  v10 = v0[19];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v9, v5, v11, v10, v0 + 5);
}

uint64_t sub_245738230()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  v4 = v2[28];

  v5 = v2[24];
  v6 = v2[25];
  if (v0)
  {
    v7 = sub_2457389C4;
  }

  else
  {
    v7 = sub_245738354;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_245738354()
{
  v1 = v0[18];
  if ((*(v0[16] + 48))(v1, 1, v0[15]) == 1)
  {
    v2 = v0[23];
    (*(v0[20] + 8))(v0[21], v0[19]);

    v3 = v0[21];
    v4 = v0[17];
    v5 = v0[18];
    v7 = v0[13];
    v6 = v0[14];
    v9 = v0[11];
    v8 = v0[12];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[30];
    v13 = v0[17];
    v14 = v0[13];
    v15 = v0[8] + v0[26];
    sub_24573AD94(v1, v13, type metadata accessor for RGBLivenessModel.Event);
    swift_beginAccess();
    v16 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24BC8, &qword_24574CAB0) + 36);
    v17 = *(v16 + 8);
    (*v16)(v15, v13);
    if (v12)
    {
      v19 = v0[20];
      v18 = v0[21];
      v20 = v0[19];
      v21 = v0[17];
      swift_endAccess();
      sub_24573AE64(v21, type metadata accessor for RGBLivenessModel.Event);
      (*(v19 + 8))(v18, v20);
      v0[31] = v12;
      v22 = *(v0[8] + 16);
      if (*(v22 + 737))
      {
        swift_getKeyPath();
        v23 = swift_task_alloc();
        *(v23 + 16) = v22;
        *(v23 + 24) = 0;
        v0[6] = v22;
        sub_24571B9BC();
        sub_245747C90();
      }

      else
      {
        *(v22 + 737) = 0;
      }

      v41 = swift_task_alloc();
      v0[32] = v41;
      *v41 = v0;
      v41[1] = sub_2457387E4;
      v42 = v0[8];

      return RGBLivenessSession.invalidate(with:)(v12);
    }

    else
    {
      v24 = v0[26];
      v25 = v0[27];
      v26 = v0[17];
      v27 = v0[14];
      v28 = v0[11];
      v29 = v0[12];
      v30 = v0[10];
      v43 = v0[9];
      v31 = v0[8];
      sub_24573AD30(v0[13], v31 + v24);
      sub_24573ADFC(v31 + v24, v27, type metadata accessor for RGBLivenessModel.State);
      swift_endAccess();
      sub_2457395E0(v26);
      sub_245739F30(v27);
      v32 = *(v31 + 16);
      sub_2457112E0(v27);
      sub_24573ADFC(v27, v29, type metadata accessor for RGBLivenessModel.State);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251F8, &unk_24574CAA0);
      sub_245748830();
      (*(v30 + 8))(v28, v43);
      sub_24573AE64(v27, type metadata accessor for RGBLivenessModel.State);
      sub_24573AE64(v26, type metadata accessor for RGBLivenessModel.Event);
      v33 = v0[22];
      v34 = sub_2457487E0();
      v0[28] = v34;
      v35 = *(MEMORY[0x277D858B8] + 4);
      v36 = swift_task_alloc();
      v0[29] = v36;
      *v36 = v0;
      v36[1] = sub_245738230;
      v37 = v0[21];
      v38 = v0[18];
      v39 = v0[19];
      v40 = MEMORY[0x277D85700];

      return MEMORY[0x2822005A8](v38, v34, v40, v39, v0 + 5);
    }
  }
}

uint64_t sub_2457387E4()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v6 = *v0;

  v3 = *(v1 + 200);
  v4 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_245738904, v4, v3);
}

uint64_t sub_245738904()
{
  v1 = v0[31];
  v2 = v0[23];

  v3 = v0[21];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2457389C4()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[5];
  v0[31] = v1;
  v2 = *(v0[8] + 16);
  if (*(v2 + 737) == 1)
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[6] = v2;
    sub_24571B9BC();
    sub_245747C90();
  }

  else
  {
    *(v2 + 737) = 0;
  }

  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_2457387E4;
  v5 = v0[8];

  return RGBLivenessSession.invalidate(with:)(v1);
}

uint64_t sub_245738B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2457487F0();
  v4[3] = sub_2457487E0();
  v6 = sub_2457487C0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_245738BC8, v6, v5);
}

uint64_t sub_245738BC8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  v3 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_states;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_245738C74;

  return sub_2456F49D0(v1 + v3);
}

uint64_t sub_245738C74()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_245738D94, v4, v3);
}

uint64_t sub_245738D94()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask);
  *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t RGBLivenessSession.invalidate(with:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25248, &qword_24574CB18);
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = sub_245747E60();
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_2457487F0();
  v2[10] = sub_2457487E0();
  v9 = sub_2457487C0();
  v2[11] = v9;
  v2[12] = v8;

  return MEMORY[0x2822009F8](sub_245738F38, v9, v8);
}

uint64_t sub_245738F38()
{
  v1 = v0[9];
  v2 = v0[3];
  sub_245747CF0();
  v3 = v2;
  v4 = sub_245747E50();
  v5 = sub_245748920();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2456DE000, v4, v5, "Liveness Session failed with error %@", v7, 0xCu);
    sub_2456EEF50(v8, qword_27EE24A80, &qword_24574AF08);
    MEMORY[0x245D712D0](v8, -1, -1);
    MEMORY[0x245D712D0](v7, -1, -1);
  }

  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  v14 = v0[4];

  (*(v12 + 8))(v11, v13);
  v15 = *(v14 + 24);
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_2457390E4;

  return sub_2456F45F0();
}

uint64_t sub_2457390E4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_245739204, v4, v3);
}

uint64_t sub_245739204()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask;
  if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask))
  {
    v4 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask);

    sub_245748870();

    v5 = *(v2 + v3);
  }

  v6 = *(v0 + 32);
  *(v2 + v3) = 0;

  v7 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask;
  if (*(v6 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask))
  {
    v8 = *(v6 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask);

    sub_245748870();

    v9 = *(v6 + v7);
  }

  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  *(v6 + v7) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251F8, &unk_24574CAA0);
  sub_245748840();
  *(v0 + 16) = v10;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
  if (!swift_dynamicCast() || *(v0 + 112))
  {
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v15 = *(v0 + 24);
    v16 = (*(v0 + 32) + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
    v17 = *v16;
    v18 = v16[1];
    ObjectType = swift_getObjectType();
    *v13 = v15;
    swift_storeEnumTagMultiPayload();
    v20 = *(v18 + 64);
    v21 = v15;
    v20(v13, ObjectType, v18);
    sub_2456EEF50(v13, &qword_27EE25248, &qword_24574CB18);
  }

  v22 = *(v0 + 72);
  v23 = *(v0 + 48);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t RGBLivenessSession.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_2456EEF50(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_fsm, &qword_27EE24BC8, &qword_24574CAB0);
  v3 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_states;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A38, &qword_24574AC88);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_statesContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251F8, &unk_24574CAA0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_events;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251E8, &qword_24574CA90);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask);

  v11 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask);

  return v0;
}

uint64_t RGBLivenessSession.__deallocating_deinit()
{
  RGBLivenessSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_2457395E0(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessResult();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v111 - v8;
  v10 = sub_245747C30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25248, &qword_24574CB18);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v111 - v17);
  v19 = type metadata accessor for RGBLivenessModel.Event(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24573ADFC(a1, v22, type metadata accessor for RGBLivenessModel.Event);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      if (*v22 == 1)
      {
        v47 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
        v46 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
        ObjectType = swift_getObjectType();
        return (*(v46 + 56))(ObjectType, v46);
      }

      return result;
    case 5:
      v38 = *v22;
      v40 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v39 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_31;
      }

      v41 = result;
      v42 = swift_getObjectType();
      v43 = sub_245748700();
      v45 = v44;

      (*(v39 + 104))(v43, v45, v42, v39);

    case 6:
      v52 = *v22;
      v54 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v53 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_32;
      }

      v55 = result;
      v56 = swift_getObjectType();
      v57 = sub_245748700();
      v59 = v58;

      (*(v53 + 112))(v57, v59, v56, v53);

    case 7:
      v69 = *v22;
      v71 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v70 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_33;
      }

      v72 = result;
      v73 = swift_getObjectType();
      v74 = sub_245748700();
      v76 = v75;

      (*(v70 + 120))(v74, v76, v73, v70);

    case 8:
      v83 = *v22;
      v85 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v84 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_34;
      }

      v86 = result;
      v87 = swift_getObjectType();
      v88 = sub_245748700();
      v90 = v89;

      (*(v84 + 128))(v88, v90, v87, v84);

    case 9:
      v60 = *v22;
      v62 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v61 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      v63 = swift_getObjectType();
      return (*(v61 + 184))(v60 - 1, v63, v61);
    case 11:
    case 13:
      v24 = type metadata accessor for RGBLivenessModel.Event;
      v25 = v22;
      return sub_24573AE64(v25, v24);
    case 12:
      v77 = *(v22 + 1);
      v78 = *(v22 + 3);
      v79 = v22[40];
      v80 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v81 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      v82 = swift_getObjectType();
      (*(v81 + 88))(v82, v81);
      if (v79 == 1)
      {
        (*(v81 + 144))(v82, v81);
      }

    case 14:
    case 15:
      v26 = v11;
      (*(v11 + 32))(v14, v22, v10);
      v27 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v28 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      v29 = swift_getObjectType();
      (*(v26 + 16))(v9, v14, v10);
      (*(v26 + 56))(v9, 0, 1, v10);
      (*(v28 + 8))(v9, v29, v28);
      sub_2456EEF50(v9, &qword_27EE244D0, &unk_245749FF0);
      return (*(v26 + 8))(v14, v10);
    case 16:
      v103 = *v22;
      v105 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v104 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_36;
      }

      v106 = result;
      v107 = swift_getObjectType();
      v108 = sub_245748700();
      v110 = v109;

      (*(v104 + 72))(v108, v110, v107, v104);

    case 17:
      v30 = *v22;
      v32 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v31 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (result)
      {
        v33 = result;
        v34 = swift_getObjectType();
        v35 = sub_245748700();
        v37 = v36;

        (*(v31 + 80))(v35, v37, v34, v31);
      }

      else
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      return result;
    case 18:
      v91 = *v22;
      v93 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v92 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_35;
      }

      v94 = result;
      v95 = swift_getObjectType();
      v96 = sub_245748700();
      v98 = v97;

      (*(v92 + 96))(v96, v98, v95, v92);

    case 20:
      v99 = v5;
      sub_24573AD94(v22, v5, type metadata accessor for RGBLivenessResult);
      v101 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v100 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      v102 = swift_getObjectType();
      (*(v100 + 160))(v102, v100);
      (*(v100 + 32))(v102, v100);
      sub_24573ADFC(v99, v18, type metadata accessor for RGBLivenessResult);
      swift_storeEnumTagMultiPayload();
      (*(v100 + 64))(v18, v102, v100);
      sub_2456EEF50(v18, &qword_27EE25248, &qword_24574CB18);
      v24 = type metadata accessor for RGBLivenessResult;
      v25 = v99;
      return sub_24573AE64(v25, v24);
    case 23:
      v65 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v64 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      v66 = swift_getObjectType();
      sub_24570CDAC();
      v67 = swift_allocError();
      *v68 = 0;
      *v18 = v67;
      swift_storeEnumTagMultiPayload();
      (*(v64 + 64))(v18, v66, v64);
      return sub_2456EEF50(v18, &qword_27EE25248, &qword_24574CB18);
    case 25:
      v50 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
      v49 = *(v112 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      v51 = swift_getObjectType();
      return (*(v49 + 48))(v51, v49);
    default:
      return result;
  }
}

uint64_t sub_245739F30(uint64_t a1)
{
  v3 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v60 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v60 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - v14;
  v16 = type metadata accessor for RGBLivenessModel.State(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24573ADFC(a1, v19, type metadata accessor for RGBLivenessModel.State);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      sub_24573AD94(v19, v13, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      if ((*v13 & 1) == 0)
      {
        v38 = v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate;
        v40 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
        v39 = *(v38 + 8);
        ObjectType = swift_getObjectType();
        (*(v39 + 40))(ObjectType, v39);
      }

      v21 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
      v22 = v13;
      goto LABEL_3;
    case 2:
      sub_24573AD94(v19, v10, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      if ((*v10 & 1) == 0)
      {
        v56 = v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate;
        v58 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
        v57 = *(v56 + 8);
        v59 = swift_getObjectType();
        (*(v57 + 176))(v59, v57);
      }

      v21 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
      v22 = v10;
      goto LABEL_3;
    case 3:
      sub_24573AD94(v19, v7, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      if ((*v7 & 1) == 0)
      {
        v34 = v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate;
        v35 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
        v36 = *(v34 + 8);
        v37 = swift_getObjectType();
        (*(v36 + 136))(v37, v36);
      }

      v21 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
      v22 = v7;
      goto LABEL_3;
    case 4:
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
    case 19:
      v21 = type metadata accessor for RGBLivenessModel.State;
      v22 = v19;
      goto LABEL_3;
    case 5:
    case 12:
    case 14:
    case 17:
    case 18:
    case 20:
      return result;
    case 9:
      v23 = *(v19 + 5);
      v51 = *(v19 + 7);
      if ((*v19 & 1) == 0)
      {
        v52 = v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate;
        v53 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
        v54 = *(v52 + 8);
        v55 = swift_getObjectType();
        (*(v54 + 152))(v55, v54);
      }

      goto LABEL_21;
    case 13:
      v23 = *(v19 + 1);
      v24 = *(v19 + 3);
      if ((*v19 & 1) == 0)
      {
        v25 = v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate;
        v26 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
        v27 = *(v25 + 8);
        v28 = swift_getObjectType();
        (*(v27 + 168))(v28, v27);
      }

      goto LABEL_21;
    case 15:
      v23 = *(v19 + 1);
      v29 = *(v19 + 3);
      if ((*v19 & 1) == 0)
      {
        v30 = v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate;
        v31 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
        v32 = *(v30 + 8);
        v33 = swift_getObjectType();
        (*(v32 + 176))(v33, v32);
      }

LABEL_21:

      break;
    case 16:
      if ((*v19 & 1) == 0)
      {
        v42 = v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate;
        v44 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
        v43 = *(v42 + 8);
        v45 = swift_getObjectType();
        result = (*(v43 + 136))(v45, v43);
      }

      break;
    default:
      sub_24573AD94(v19, v15, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      if ((*v15 & 1) == 0)
      {
        v46 = v15[*(v3 + 52)];
        v47 = v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate;
        v49 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
        v48 = *(v47 + 8);
        v50 = swift_getObjectType();
        if (v46 == 1)
        {
          (*(v48 + 144))(v50, v48);
        }

        else
        {
          (*(v48 + 168))(v50, v48);
        }
      }

      v21 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
      v22 = v15;
LABEL_3:
      result = sub_24573AE64(v22, v21);
      break;
  }

  return result;
}

uint64_t sub_24573A3E4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24573A4DC;

  return v7(a1);
}

uint64_t sub_24573A4DC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24573A5D4()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if ([v0 assistiveTouchEnabled] & 1) != 0 || _AXSCommandAndControlEnabled() || UIAccessibilityIsSwitchControlRunning() || (objc_msgSend(v1, sel_touchAccommodationsEnabled))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 voiceOverEnabled];
  }

  return v2;
}

uint64_t sub_24573A698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2456F3D40;

  return sub_245737C84(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24573A78C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2456EEC10;

  return sub_245738B30(a1, v4, v5, v6);
}

uint64_t type metadata accessor for RGBLivenessSession()
{
  result = qword_27EE25250;
  if (!qword_27EE25250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24573A894()
{
  sub_24573AA5C();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_24573AAC4(319, &qword_27EE25268, MEMORY[0x277D857B8]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_24573AAC4(319, &qword_27EE25270, MEMORY[0x277D85788]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_24573AB24();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24573AA5C()
{
  if (!qword_27EE25260)
  {
    type metadata accessor for RGBLivenessModel.State(255);
    type metadata accessor for RGBLivenessModel.Event(255);
    v0 = type metadata accessor for RGBLivenessModel.FiniteStateMachine();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE25260);
    }
  }
}

void sub_24573AAC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for RGBLivenessModel.State(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_24573AB24()
{
  if (!qword_27EE25278)
  {
    type metadata accessor for RGBLivenessModel.Event(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE244D8, &qword_24574AA50);
    v0 = sub_2457488F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE25278);
    }
  }
}

uint64_t sub_24573ABA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2456F3D40;

  return sub_24573A3E4(a1, v5);
}

uint64_t sub_24573AC58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2456EEC10;

  return sub_24573A3E4(a1, v5);
}

uint64_t sub_24573AD30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24573AD94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24573ADFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24573AE64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of RGBLivenessSessionDelegate.captureSelfieObtainNewConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 192);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2456EEC10;

  return v11(a1, a2, a3);
}

id sub_24573B1E0()
{
  v1 = OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton____lazy_storage___activityIndicator;
  v2 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton____lazy_storage___activityIndicator];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton____lazy_storage___activityIndicator];
  }

  else
  {
    v4 = sub_24573B244(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_24573B244(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_opt_self() whiteColor];
  [v2 setColor_];

  [v2 setHidden_];
  [a1 addSubview_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE247E0, "v\x1B");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24574A870;
  v6 = [v2 centerYAnchor];
  v7 = [a1 centerYAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [v2 centerXAnchor];

  v10 = [a1 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  sub_24573C208();
  v12 = sub_245748790();

  [v4 activateConstraints_];

  return v2;
}

id sub_24573B474(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CoreIDVUIButton();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_24573B4C0(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for CoreIDVUIButton();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_24573B7F0();
}

id sub_24573B528(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_originalButtonText];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton____lazy_storage___activityIndicator] = 0;
  v4[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_style] = 5;
  v4[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_useWatchScheme] = 0;
  v4[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_isNeutralButtonColorScheme] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for CoreIDVUIButton();
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 titleLabel];
  if (v11)
  {
    v12 = v11;
    [v11 setAdjustsFontSizeToFitWidth_];
  }

  v13 = [v10 titleLabel];

  if (v13)
  {
    [v13 setMaximumContentSizeCategory_];
  }

  return v10;
}

void sub_24573B7F0()
{
  v1 = v0;
  v2 = sub_245747E80();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_245747EA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v55[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 isEnabled] || (v9 = objc_msgSend(v0, sel_isHighlighted), v10 = 1.0, v9))
  {
    v10 = 0.75;
  }

  [v0 setAlpha_];
  v11 = v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_style];
  if (v11 <= 1)
  {
    if (v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_style])
    {
      sub_245747E70();
      sub_245747EB0();
      v19 = objc_opt_self();
      v32 = [v19 systemFillColor];
      v56 = v4;
      v57 = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(v55);
      sub_245747E90();

      (*(v5 + 8))(v8, v4);
      sub_2457489F0();
      if (v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_useWatchScheme])
      {
        v33 = &selRef_systemOrangeColor;
      }

      else
      {
        v33 = &selRef_labelColor;
      }

      v34 = [v19 *v33];
      [v1 setTitleColor:v34 forState:0];

      v35 = [v1 titleLabel];
      if (v35)
      {
        v36 = v35;
        v37 = [objc_opt_self() preferredFontForTextStyle_];
        [v36 setFont_];
      }
    }

    else
    {
      if (![v0 isEnabled] || v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_isNeutralButtonColorScheme] != 1)
      {
        if (([v0 isEnabled] & 1) != 0 || (v39 = sub_24573B1E0(), v40 = objc_msgSend(v39, sel_isHidden), v39, (v40 & 1) == 0))
        {
          v45 = v1[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_useWatchScheme];
          v46 = objc_opt_self();
          v47 = &selRef_tertiarySystemFillColor;
          if (!v45)
          {
            v47 = &selRef_systemBlueColor;
          }

          v48 = [v46 *v47];
          [v1 setBackgroundColor_];

          v43 = objc_opt_self();
          v44 = &selRef_whiteColor;
        }

        else
        {
          v41 = objc_opt_self();
          v42 = [v41 tertiarySystemFillColor];
          [v1 setBackgroundColor_];

          v43 = v41;
          v44 = &selRef_tertiaryLabelColor;
        }

        v49 = [v43 *v44];
        [v1 setTitleColor:v49 forState:0];

        v50 = [v1 titleLabel];
        if (v50)
        {
          v51 = v50;
          v52 = [objc_opt_self() preferredFontForTextStyle_];
          [v51 setFont_];
        }

        sub_245747E70();
        sub_245747EB0();
        v53 = [objc_opt_self() systemFillColor];
        v56 = v4;
        v57 = MEMORY[0x277D74E20];
        __swift_allocate_boxed_opaque_existential_1(v55);
        sub_245747E90();

        (*(v5 + 8))(v8, v4);
        sub_2457489F0();
        return;
      }

      sub_245747E70();
      sub_245747EB0();
      v19 = objc_opt_self();
      v20 = [v19 systemFillColor];
      v56 = v4;
      v57 = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(v55);
      sub_245747E90();

      (*(v5 + 8))(v8, v4);
      sub_2457489F0();
      if (v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_useWatchScheme])
      {
        v21 = &selRef_systemOrangeColor;
      }

      else
      {
        v21 = &selRef_labelColor;
      }

      v22 = [v19 *v21];
      [v1 setTitleColor:v22 forState:0];

      v23 = [v1 titleLabel];
      if (v23)
      {
        v24 = v23;
        v25 = [objc_opt_self() preferredFontForTextStyle_];
        [v24 setFont_];
      }
    }

    v38 = [v19 clearColor];
    [v1 setBackgroundColor_];

    return;
  }

  if (v11 - 2 >= 2)
  {
    if (v11 == 4)
    {
      v26 = objc_opt_self();
      v27 = [v26 clearColor];
      [v1 setBackgroundColor_];

      v28 = (v1[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_useWatchScheme] ? &selRef_systemOrangeColor : &selRef_systemBlueColor);
      v29 = [v26 *v28];
      [v1 setTitleColor:v29 forState:0];

      v30 = [v1 titleLabel];
      if (v30)
      {
        v17 = v30;
        v18 = [objc_opt_self() preferredFontForTextStyle_];
        goto LABEL_26;
      }
    }
  }

  else
  {
    v12 = objc_opt_self();
    v13 = [v12 clearColor];
    [v1 setBackgroundColor_];

    if (v1[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_useWatchScheme])
    {
      v14 = &selRef_systemOrangeColor;
    }

    else
    {
      v14 = &selRef_systemBlueColor;
    }

    v15 = [v12 *v14];
    [v1 setTitleColor:v15 forState:0];

    v16 = [v1 titleLabel];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_opt_self() preferredFontForTextStyle_];
LABEL_26:
      v54 = v18;
      [v17 setFont_];

      v31 = v54;
    }
  }
}

id sub_24573C094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreIDVUIButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24573C150()
{
  result = qword_27EE252B8;
  if (!qword_27EE252B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE252B8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_24573C208()
{
  result = qword_27EE250E0;
  if (!qword_27EE250E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE250E0);
  }

  return result;
}

uint64_t sub_24573C254@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  *a2 = *(v3 + 737);
  return result;
}

uint64_t sub_24573C324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v4 = *(v3 + 752);
  *a2 = *(v3 + 744);
  a2[1] = v4;
}

uint64_t sub_24573C3D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_24570EDE4(v2, v3);
}

uint64_t sub_24573C414()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE258B0, &qword_24574D690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24574A850;
  v1 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE258B8, &qword_24574D698);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_24574A850;
  v3 = *MEMORY[0x277CC4980];
  *(v2 + 32) = *MEMORY[0x277CC4980];
  v4 = *MEMORY[0x277CC4958];
  *(v2 + 40) = *MEMORY[0x277CC4958];
  v5 = v4;
  v6 = v1;
  v7 = v3;
  v8 = sub_2457300B0(v2);
  swift_setDeallocating();
  sub_2456EEF50(v2 + 32, &qword_27EE258C0, &qword_24574D6A0);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE258C8, &qword_24574D6A8);
  *(inited + 40) = v8;
  sub_2457301A0(inited);
  swift_setDeallocating();
  sub_2456EEF50(inited + 32, &qword_27EE25138, &qword_24574C380);
  type metadata accessor for CFString(0);
  sub_2457479D0(&qword_27EE24580, type metadata accessor for CFString);
  v9 = sub_245748640();

  v10 = CTFontDescriptorCreateWithAttributes(v9);

  CTFontCreateWithFontDescriptor(v10, 15.0, 0);
  v11 = sub_2457482F0();

  return v11;
}

uint64_t sub_24573C5F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  if (*(v9 + 560))
  {
  }

  else
  {
    v0 = *(v9 + 552);
    v1 = sub_245747D10();
    v2 = sub_245747D10();

    if (v1 == v2)
    {
      v3 = [objc_opt_self() tertiarySystemFillColor];
      v4 = sub_245748450();
      goto LABEL_6;
    }
  }

  v4 = sub_245748400();
LABEL_6:
  v5 = v4;
  sub_245748510();
  swift_getKeyPath();
  sub_245747CA0();

  if (*(v9 + 705) == 1)
  {

LABEL_9:
    v7 = sub_245748430();

    return v7;
  }

  swift_getKeyPath();
  sub_245747CA0();

  v6 = *(v9 + 704);

  if (v6 == 1)
  {
    goto LABEL_9;
  }

  return v5;
}

uint64_t RGBLivenessView.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RGBLivenessView();
  *(a2 + v4[6]) = 0x3FE0000000000000;
  v5 = a2 + v4[7];
  sub_2457481A0();
  *(a2 + v4[8]) = 0x4024000000000000;
  *(a2 + v4[9]) = 0x4043000000000000;
  *(a2 + v4[10]) = 0x4040000000000000;
  *(a2 + v4[11]) = 0x4043000000000000;
  *(a2 + v4[12]) = 0x4040000000000000;
  *(a2 + v4[13]) = 0x4030000000000000;
  v6 = v4[14];
  *(a2 + v6) = sub_24573C414();
  v7 = *(a1 + 16);
  *(a2 + v4[5]) = *(a1 + 24);
  type metadata accessor for RGBLivenessViewConfig();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);

  sub_245748530();
}

uint64_t type metadata accessor for RGBLivenessView()
{
  result = qword_27EE25350;
  if (!qword_27EE25350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RGBLivenessView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v40 = *(v38 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v39 = &v32 - v4;
  v5 = type metadata accessor for RGBLivenessView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C8, &qword_24574CCB8);
  v36 = *(v35 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v10 = &v32 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252D0, &qword_24574CCC0);
  v11 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v33 = &v32 - v12;
  sub_24573D1D0(v1, &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v34 = type metadata accessor for RGBLivenessView;
  sub_245747050(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for RGBLivenessView);
  v45 = sub_24573D234;
  v46 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252D8, &qword_24574CCC8);
  v16 = sub_245747978(&qword_27EE252E0, &qword_27EE252D8, &qword_24574CCC8);
  sub_2457483C0();

  v44 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252E8, &qword_24574CCD0);
  v45 = v15;
  v46 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252F0, &qword_24574CCD8);
  v18 = sub_24573DFDC();
  v45 = v17;
  v46 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v33;
  v20 = v35;
  sub_2457483E0();
  (*(v36 + 8))(v10, v20);
  sub_24573D1D0(v1, &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  v22 = v34;
  sub_245747050(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v13, v34);
  v23 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25310, &qword_24574CCE8) + 36));
  *v23 = sub_24573E774;
  v23[1] = v21;
  v23[2] = 0;
  v23[3] = 0;
  sub_24573D1D0(v2, &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_245747050(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v13, v22);
  v25 = (v19 + *(v37 + 36));
  *v25 = 0;
  v25[1] = 0;
  v25[2] = sub_24573E9AC;
  v25[3] = v24;
  v26 = v38;
  sub_245748510();
  v27 = v45;
  swift_getKeyPath();
  v45 = v27;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v28 = *(v27 + 93);
  v29 = *(v27 + 94);

  v47 = v28;
  v48 = v29;
  v30 = v39;
  sub_245748520();
  swift_getKeyPath();
  sub_245748540();

  (*(v40 + 8))(v30, v26);
  v43 = v2;
  v42 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25318, &qword_24574CD40);
  sub_24573EB5C();
  sub_24573ED88();
  sub_24573EDDC();
  sub_2457483D0();

  return sub_2456EEF50(v19, &qword_27EE252D0, &qword_24574CCC0);
}

uint64_t sub_24573D000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25408, &qword_24574CFD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  sub_245747F80();
  v11 = v10;
  v12 = *(a2 + *(type metadata accessor for RGBLivenessView() + 48));
  *v9 = sub_2457480C0();
  *(v9 + 1) = v12;
  v9[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25410, &qword_24574CFD8);
  sub_24573D24C(a2, a1, &v9[*(v13 + 44)], v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25418, &qword_24574CFE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24574B940;
  v15 = sub_245748260();
  *(inited + 32) = v15;
  v16 = sub_245748270();
  *(inited + 33) = v16;
  v17 = sub_245748280();
  sub_245748280();
  if (sub_245748280() != v15)
  {
    v17 = sub_245748280();
  }

  sub_245748280();
  if (sub_245748280() != v16)
  {
    v17 = sub_245748280();
  }

  v18 = sub_245747FA0();
  sub_245746FE8(v9, a3, &qword_27EE25408, &qword_24574CFD0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25420, &qword_24574CFE8);
  v20 = a3 + *(result + 36);
  *v20 = v18;
  *(v20 + 8) = v17;
  return result;
}

uint64_t sub_24573D1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGBLivenessView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24573D24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v71 = a2;
  v76 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25428, &qword_24574CFF0);
  v7 = *(v6 - 8);
  v74 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v75 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v72 = (&v66 - v11);
  v12 = type metadata accessor for RGBLivenessView();
  v13 = (v12 - 8);
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25430, &qword_24574CFF8);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v73 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v66 - v21;
  sub_24573D1D0(a1, &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v24 = swift_allocObject();
  v70 = v24;
  *(v24 + 16) = a4;
  sub_245747050(&v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for RGBLivenessView);
  sub_245747F90();
  v25 = [objc_opt_self() di_mainScreen];
  [v25 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v88.origin.x = v27;
  v88.origin.y = v29;
  v88.size.width = v31;
  v88.size.height = v33;
  v34 = a1;
  v35 = CGRectGetHeight(v88) * *(a1 + v13[8]);
  sub_245748580();
  sub_245747F60();
  v36 = v77;
  v37 = v78;
  v69 = v79;
  LOBYTE(a1) = v80;
  v68 = v81;
  v67 = v82;
  v87 = v78;
  v86 = v80;
  v38 = sub_245748570();
  v40 = v39;
  v41 = &v22[*(v17 + 44)];
  sub_24573D7B0(v41, a4);
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25438, &qword_24574D000) + 36));
  *v42 = v38;
  v42[1] = v40;
  v43 = v70;
  *v22 = sub_2457460F4;
  *(v22 + 1) = v43;
  *(v22 + 2) = v36;
  v22[24] = v37;
  *(v22 + 4) = v69;
  v22[40] = a1;
  v44 = v67;
  *(v22 + 6) = v68;
  *(v22 + 7) = v44;
  *(v22 + 32) = 0;
  v45 = *(v34 + v13[12]);
  v46 = sub_2457480C0();
  v47 = v72;
  *v72 = v46;
  *(v47 + 8) = v45;
  *(v47 + 16) = 0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25440, &qword_24574D008);
  sub_2457425BC(v34, (v47 + *(v48 + 44)));
  LOBYTE(v45) = sub_245748250();
  v49 = *(v34 + v13[13]);
  sub_245747EE0();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25448, &qword_24574D010) + 36);
  *v58 = v45;
  *(v58 + 8) = v51;
  *(v58 + 16) = v53;
  *(v58 + 24) = v55;
  *(v58 + 32) = v57;
  *(v58 + 40) = 0;
  sub_245747F90();
  sub_245748580();
  sub_245747F60();
  v59 = (v47 + *(v74 + 44));
  v60 = v84;
  *v59 = v83;
  v59[1] = v60;
  v59[2] = v85;
  v61 = v73;
  sub_245703098(v22, v73, &qword_27EE25430, &qword_24574CFF8);
  v62 = v75;
  sub_245703098(v47, v75, &qword_27EE25428, &qword_24574CFF0);
  v63 = v76;
  sub_245703098(v61, v76, &qword_27EE25430, &qword_24574CFF8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25450, &qword_24574D018);
  sub_245703098(v62, v63 + *(v64 + 48), &qword_27EE25428, &qword_24574CFF0);
  sub_2456EEF50(v47, &qword_27EE25428, &qword_24574CFF0);
  sub_2456EEF50(v22, &qword_27EE25430, &qword_24574CFF8);
  sub_2456EEF50(v62, &qword_27EE25428, &qword_24574CFF0);
  return sub_2456EEF50(v61, &qword_27EE25430, &qword_24574CFF8);
}

uint64_t sub_24573D7B0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v23 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25650, &qword_24574D308);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25658, &qword_24574D310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  sub_245741C14(v2, v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v12 = v24;
  swift_getKeyPath();
  v24 = v12;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v13 = *(v12 + 616);

  if (v13)
  {

    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  sub_245746FE8(v7, v11, &qword_27EE25650, &qword_24574D308);
  *&v11[*(v8 + 36)] = v14;
  v15 = sub_2457485C0();
  sub_245748510();
  v16 = v24;
  swift_getKeyPath();
  v24 = v16;
  sub_245747CA0();

  v17 = *(v16 + 608);
  v18 = *(v16 + 616);

  if (v18)
  {
  }

  else
  {
    v17 = 0;
  }

  v19 = v11;
  v20 = v23;
  sub_245746FE8(v19, v23, &qword_27EE25658, &qword_24574D310);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25660, &qword_24574D340);
  v22 = (v20 + *(result + 36));
  *v22 = v15;
  v22[1] = v17;
  v22[2] = v18;
  return result;
}

uint64_t sub_24573DA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE253A0, &qword_24574CEC0);
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v34 - v5;
  v35 = sub_2457481B0();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25300, &qword_24574CCE0);
  v36 = *(v39 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v12 = &v34 - v11;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252F0, &qword_24574CCD8);
  v13 = *(*(v40 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v40);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v19 = a1;
  sub_245748510();
  v20 = v42;
  swift_getKeyPath();
  v42 = v20;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v21 = *(v20 + 888);

  if (v21)
  {
    v22 = type metadata accessor for RGBLivenessView();
    v23 = (*(v6 + 16))(v9, v19 + *(v22 + 28), v35);
    MEMORY[0x28223BE20](v23);
    *(&v34 - 2) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE253A8, &qword_24574CEF0);
    sub_245745E38();
    sub_245747F10();
    v24 = sub_245747978(&qword_27EE25308, &qword_27EE25300, &qword_24574CCE0);
    v25 = v37;
    v26 = v39;
    MEMORY[0x245D6FFA0](v12, v39, v24);
    v27 = v38;
    (*(v3 + 16))(v16, v25, v38);
    (*(v3 + 56))(v16, 0, 1, v27);
    v42 = v26;
    v43 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D6FFB0](v16, v27, OpaqueTypeConformance2);
    sub_2456EEF50(v16, &qword_27EE252F0, &qword_24574CCD8);
    (*(v3 + 8))(v25, v27);
    (*(v36 + 8))(v12, v26);
  }

  else
  {
    v29 = v38;
    (*(v3 + 56))(v16, 1, 1, v38);
    v30 = sub_245747978(&qword_27EE25308, &qword_27EE25300, &qword_24574CCE0);
    v42 = v39;
    v43 = v30;
    v31 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D6FFB0](v16, v29, v31);
    sub_2456EEF50(v16, &qword_27EE252F0, &qword_24574CCD8);
  }

  v32 = sub_24573DFDC();
  MEMORY[0x245D6FFA0](v18, v40, v32);
  return sub_2456EEF50(v18, &qword_27EE252F0, &qword_24574CCD8);
}

unint64_t sub_24573DFDC()
{
  result = qword_27EE252F8;
  if (!qword_27EE252F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252F0, &qword_24574CCD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25300, &qword_24574CCE0);
    sub_245747978(&qword_27EE25308, &qword_27EE25300, &qword_24574CCE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE252F8);
  }

  return result;
}

uint64_t sub_24573E0D0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for RGBLivenessView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE253D0, &qword_24574CF00);
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE253C0, &qword_24574CEF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  sub_24573D1D0(v1, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_245747050(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for RGBLivenessView);
  v34 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE253F8, &qword_24574CF18);
  sub_245746060();
  sub_2457484D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v15 = v35;
  swift_getKeyPath();
  v35 = v15;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  if (*(v15 + 560))
  {

LABEL_5:
    v20 = sub_245748440();
    goto LABEL_6;
  }

  v16 = *(v15 + 552);
  v17 = sub_245747D10();
  v18 = sub_245747D10();

  if (v17 != v18)
  {
    goto LABEL_5;
  }

  v19 = [objc_opt_self() systemOrangeColor];
  v20 = sub_245748450();
LABEL_6:
  v21 = v20;
  KeyPath = swift_getKeyPath();
  v35 = v21;
  v23 = sub_245747F70();
  (*(v5 + 32))(v12, v8, v32);
  v24 = &v12[*(v9 + 36)];
  *v24 = KeyPath;
  v24[1] = v23;
  sub_245748510();
  v25 = v35;
  swift_getKeyPath();
  v35 = v25;
  sub_245747CA0();

  v26 = *(v25 + 896);

  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = v33;
  sub_245746FE8(v12, v33, &qword_27EE253C0, &qword_24574CEF8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE253A8, &qword_24574CEF0);
  v31 = (v29 + *(result + 36));
  *v31 = v27;
  v31[1] = sub_2457460DC;
  v31[2] = v28;
  return result;
}

uint64_t sub_24573E544(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  v16 = *(a1 + *(type metadata accessor for RGBLivenessView() + 20));
  LOBYTE(a1) = *(v16 + 585) << 8 != 512;
  (*(v7 + 16))(v10, v16 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_24573E78C(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  v16 = type metadata accessor for RGBLivenessView();
  (*(v7 + 16))(v10, *(a1 + *(v16 + 20)) + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
  *v5 = 0;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_24573E9C4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RGBLivenessView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24573EA40@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v2 = *(v8 + 760);
  v3 = *(v8 + 768);

  sub_24573ED88();
  result = sub_245748330();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_24573EB5C()
{
  result = qword_27EE25320;
  if (!qword_27EE25320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252D0, &qword_24574CCC0);
    sub_24573EBE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25320);
  }

  return result;
}

unint64_t sub_24573EBE8()
{
  result = qword_27EE25328;
  if (!qword_27EE25328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25310, &qword_24574CCE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252C8, &qword_24574CCB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252E8, &qword_24574CCD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252D8, &qword_24574CCC8);
    sub_245747978(&qword_27EE252E0, &qword_27EE252D8, &qword_24574CCC8);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252F0, &qword_24574CCD8);
    sub_24573DFDC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25328);
  }

  return result;
}

unint64_t sub_24573ED88()
{
  result = qword_27EE25330;
  if (!qword_27EE25330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25330);
  }

  return result;
}

unint64_t sub_24573EDDC()
{
  result = qword_27EE25338;
  if (!qword_27EE25338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25318, &qword_24574CD40);
    sub_245747978(&qword_27EE25340, &qword_27EE25348, &qword_24574CD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25338);
  }

  return result;
}

uint64_t sub_24573EEA8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_245747F90();
  sub_245747F90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v4 = *(v15 + 728);
  v5 = v4;

  if (v4)
  {
    v6 = v5;
    [v6 size];
    [v6 size];
  }

  *a2 = sub_245748580();
  a2[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE256F0, &qword_24574D3B8);
  sub_24573F064(a1, a2 + *(v8 + 44));
  sub_245747F90();
  v10 = v9 * 0.5;
  sub_245747F90();
  v12 = v11 * 0.5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE256F8, &qword_24574D3C0);
  v14 = (a2 + *(result + 36));
  *v14 = v10;
  v14[1] = v12;
  return result;
}

uint64_t sub_24573F064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25700, &qword_24574D3C8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v64 - v8;
  v9 = type metadata accessor for RGBLivenessView();
  v10 = v9 - 8;
  v75 = *(v9 - 8);
  v74 = *(v75 + 64);
  MEMORY[0x28223BE20](v9);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x28223BE20](v12);
  v78 = &v64 - v14;
  v88 = *(a1 + *(v10 + 28));
  sub_245747F90();
  sub_245747F90();
  sub_245748580();
  sub_245747F60();
  v15 = v140;
  v86 = v141;
  v87 = v139;
  v16 = v142;
  v82 = v140;
  v83 = v142;
  v84 = v144;
  v85 = v143;
  sub_245748510();
  v17 = v116;
  swift_getKeyPath();
  v116 = v17;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v18 = *(v17 + 601);

  v19 = 0.0;
  v20 = 10.0;
  if (v18)
  {
    v21 = 10.0;
  }

  else
  {
    v21 = 0.0;
  }

  v138 = v15;
  v137 = v16;

  v81 = sub_2457485D0();
  sub_245748510();
  v22 = v116;
  swift_getKeyPath();
  v116 = v22;
  sub_245747CA0();

  v23 = *(v22 + 601);

  if (v23)
  {
    v24 = 10.0;
  }

  else
  {
    v24 = 0.0;
  }

  sub_245748510();
  v25 = v116;
  swift_getKeyPath();
  v116 = v25;
  sub_245747CA0();

  v26 = *(v25 + 600);

  if (v26)
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  sub_245748410();
  sub_245748510();
  v28 = v116;
  swift_getKeyPath();
  v116 = v28;
  sub_245747CA0();

  v29 = *(v28 + 601);

  v69 = sub_245748430();

  v68 = sub_2457485D0();
  sub_245748510();
  v30 = v116;
  swift_getKeyPath();
  v116 = v30;
  sub_245747CA0();

  v31 = *(v30 + 601);

  if (!v31)
  {
    v20 = 0.0;
  }

  v32 = v78;
  sub_245748520();
  swift_getKeyPath();
  sub_245748540();

  (*(v79 + 8))(v32, v12);
  v78 = v117;
  v79 = v116;
  v77 = v118;

  sub_245748510();
  v33 = v116;
  swift_getKeyPath();
  v116 = v33;
  sub_245747CA0();

  v34 = *(v33 + 632);

  if (v34 != 9)
  {
    v19 = 1.0;
  }

  sub_245748580();
  sub_245747F60();
  v76 = sub_2457485D0();
  sub_245748510();
  v35 = v116;
  swift_getKeyPath();
  v116 = v35;
  sub_245747CA0();

  v36 = *(v35 + 632);

  v37 = v36 != 9;
  v38 = v73;
  sub_24573D1D0(a1, v73);
  v39 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v75 = swift_allocObject();
  sub_245747050(v38, v75 + v39, type metadata accessor for RGBLivenessView);
  sub_245748580();
  sub_245747F60();
  v71 = v145;
  v40 = v146;
  v67 = v147;
  v72 = v148;
  v73 = v150;
  v74 = v149;
  v93 = v146;
  v65 = v146;
  v92 = v148;
  v41 = v80;
  sub_24573FB3C(v80);
  sub_245748580();
  sub_245747F60();
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25708, &qword_24574D448) + 36));
  v43 = v152;
  *v42 = v151;
  v42[1] = v43;
  v42[2] = v153;
  *(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25710, &qword_24574D450) + 36)) = 1;
  v44 = v41;
  v45 = v70;
  sub_245703098(v44, v70, &qword_27EE25700, &qword_24574D3C8);
  v46 = v88;
  *&v94 = v88;
  *(&v94 + 1) = v87;
  LOBYTE(v95) = v82;
  *(&v95 + 1) = v86;
  LOBYTE(v96) = v83;
  *(&v96 + 1) = v85;
  *&v97 = v84;
  *(&v97 + 1) = v21;
  LOBYTE(v98) = 1;
  *(&v98 + 1) = v81;
  *&v99 = v24;
  *(&v99 + 1) = v27;
  v47 = v97;
  *(a2 + 32) = v96;
  *(a2 + 48) = v47;
  v48 = v99;
  *(a2 + 64) = v98;
  *(a2 + 80) = v48;
  v49 = v95;
  *a2 = v94;
  *(a2 + 16) = v49;
  v50 = v68;
  *(a2 + 96) = v69;
  *(a2 + 104) = v50;
  *(a2 + 112) = v20;
  *&v100 = v79;
  *(&v100 + 1) = v78;
  LOBYTE(v101) = v77;
  *(&v101 + 1) = v46;
  *v102 = v19;
  *(&v102[2] + 8) = v91;
  *(&v102[1] + 8) = v90;
  *(v102 + 8) = v89;
  *(&v102[3] + 1) = v76;
  v66 = v37;
  v103 = v37;
  v51 = v100;
  v52 = v101;
  v53 = v102[1];
  *(a2 + 152) = v102[0];
  *(a2 + 136) = v52;
  *(a2 + 120) = v51;
  v54 = v102[2];
  v55 = v102[3];
  *(a2 + 216) = v37;
  *(a2 + 200) = v55;
  *(a2 + 184) = v54;
  *(a2 + 168) = v53;
  *&v104 = sub_245746F3C;
  *(&v104 + 1) = v75;
  *&v105 = v71;
  BYTE8(v105) = v40;
  v56 = v67;
  *&v106 = v67;
  BYTE8(v106) = v72;
  *&v107 = v74;
  *(&v107 + 1) = v73;
  v108 = 1;
  v57 = v104;
  v58 = v105;
  v59 = v106;
  v60 = v107;
  *(a2 + 288) = 1;
  *(a2 + 256) = v59;
  *(a2 + 272) = v60;
  *(a2 + 224) = v57;
  *(a2 + 240) = v58;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25718, &qword_24574D458);
  sub_245703098(v45, a2 + *(v61 + 96), &qword_27EE25700, &qword_24574D3C8);
  sub_245703098(&v94, &v116, &qword_27EE25720, &qword_24574D460);

  sub_245703098(&v100, &v116, &qword_27EE25728, &qword_24574D468);
  sub_245703098(&v104, &v116, &qword_27EE25730, &qword_24574D470);
  sub_2456EEF50(v80, &qword_27EE25700, &qword_24574D3C8);
  sub_2456EEF50(v45, &qword_27EE25700, &qword_24574D3C8);
  v109[0] = sub_245746F3C;
  v109[1] = v75;
  v109[2] = v71;
  v110 = v65;
  v111 = v56;
  v112 = v72;
  v113 = v74;
  v114 = v73;
  v115 = 1;
  sub_2456EEF50(v109, &qword_27EE25730, &qword_24574D470);
  v116 = v79;
  v117 = v78;
  v118 = v77;
  v62 = v88;
  v119 = v88;
  v120 = v19;
  v121 = v89;
  v122 = v90;
  v123 = v91;
  v124 = v76;
  v125 = v66;
  sub_2456EEF50(&v116, &qword_27EE25728, &qword_24574D468);

  v126[0] = v62;
  v126[1] = v87;
  v127 = v82;
  v128 = v86;
  v129 = v83;
  v130 = v85;
  v131 = v84;
  v132 = v21;
  v133 = 1;
  v134 = v81;
  v135 = v24;
  v136 = v27;
  return sub_2456EEF50(v126, &qword_27EE25720, &qword_24574D460);
}

uint64_t sub_24573FB3C@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25738, &qword_24574D478);
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v2);
  v93 = &v92 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25740, &qword_24574D480);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v92 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25748, &qword_24574D488);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v94 = &v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25750, &qword_24574D490);
  v15 = *(v14 - 8);
  v99 = v14 - 8;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v98 = &v92 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25758, &qword_24574D498);
  v19 = *(v18 - 8);
  v102 = v18 - 8;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v100 = &v92 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25760, &qword_24574D4A0);
  v23 = *(v22 - 8);
  v103 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v101 = &v92 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v95 = v1;
  sub_245748510();
  v26 = v105;
  swift_getKeyPath();
  *&v105 = v26;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v27 = *(v26 + 904);

  v28 = v93;
  sub_245747E20();
  sub_245748510();
  v29 = v105;
  swift_getKeyPath();
  *&v105 = v29;
  sub_245747CA0();

  v30 = *(v29 + 913);

  if (v30)
  {
    v31 = 1.0;
  }

  else
  {
    v31 = 0.0;
  }

  (*(v96 + 32))(v9, v28, v97);
  *&v9[*(v6 + 44)] = v31;
  v32 = v94;
  v33 = &v94[*(v11 + 44)];
  v34 = *(sub_245747FD0() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_2457480B0();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #16.0 }

  *v33 = _Q0;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25768, &qword_24574D4F8) + 36)] = 256;
  sub_245746FE8(v9, v32, &qword_27EE25740, &qword_24574D480);
  v42 = objc_opt_self();
  v43 = [v42 di_mainScreen];
  [v43 bounds];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v108.origin.x = v45;
  v108.origin.y = v47;
  v108.size.width = v49;
  v108.size.height = v51;
  CGRectGetHeight(v108);
  v52 = [v42 di_mainScreen];
  [v52 bounds];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;

  v109.origin.x = v54;
  v109.origin.y = v56;
  v109.size.width = v58;
  v109.size.height = v60;
  CGRectGetHeight(v109);
  sub_245748580();
  sub_245747F60();
  v61 = v98;
  sub_245746FE8(v32, v98, &qword_27EE25748, &qword_24574D488);
  v62 = (v61 + *(v99 + 44));
  v63 = v106;
  *v62 = v105;
  v62[1] = v63;
  v62[2] = v107;
  LOBYTE(v52) = sub_245748260();
  v64 = *(v95 + *(type metadata accessor for RGBLivenessView() + 52));
  sub_245747EE0();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v61;
  v74 = v100;
  sub_245746FE8(v73, v100, &qword_27EE25750, &qword_24574D490);
  v75 = v74 + *(v102 + 44);
  *v75 = v52;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68;
  *(v75 + 24) = v70;
  *(v75 + 32) = v72;
  *(v75 + 40) = 0;
  LOBYTE(v52) = sub_245748270();
  sub_245747EE0();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = v101;
  sub_245746FE8(v74, v101, &qword_27EE25758, &qword_24574D498);
  v85 = v84 + *(v103 + 44);
  *v85 = v52;
  *(v85 + 8) = v77;
  *(v85 + 16) = v79;
  *(v85 + 24) = v81;
  *(v85 + 32) = v83;
  *(v85 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v87 = swift_allocObject();
  *(v87 + 16) = 1;
  v88 = v84;
  v89 = v104;
  sub_245746FE8(v88, v104, &qword_27EE25760, &qword_24574D4A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25770, &qword_24574D500);
  v91 = (v89 + *(result + 36));
  *v91 = KeyPath;
  v91[1] = sub_245747A18;
  v91[2] = v87;
  return result;
}

uint64_t sub_245740250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v160 = a1;
  v165 = a3;
  v159 = type metadata accessor for RGBLivenessView();
  v161 = *(v159 - 8);
  v4 = *(v161 + 64);
  v5 = MEMORY[0x28223BE20](v159);
  v163 = v6;
  v164 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v162 = &v138 - v7;
  v140 = sub_245747FD0();
  v8 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v141 = (&v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2457484A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25778, &qword_24574D508);
  v15 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v17 = &v138 - v16;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25780, &qword_24574D510);
  v18 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v166 = &v138 - v19;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25788, &qword_24574D518);
  v20 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v144 = &v138 - v21;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25790, &qword_24574D520);
  v22 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v146 = &v138 - v23;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25798, &qword_24574D528);
  v24 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v148 = &v138 - v25;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE257A0, &qword_24574D530);
  v26 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v150 = &v138 - v27;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE257A8, &qword_24574D538);
  v28 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v152 = &v138 - v29;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE257B0, &qword_24574D540);
  v30 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v153 = &v138 - v31;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE257B8, &qword_24574D548);
  v32 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v155 = &v138 - v33;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE257C0, &qword_24574D550);
  v157 = *(v158 - 8);
  v34 = *(v157 + 64);
  MEMORY[0x28223BE20](v158);
  v156 = &v138 - v35;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v36 = a2;
  sub_245748510();
  v37 = v169;
  swift_getKeyPath();
  *&v169 = v37;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v38 = *(v37 + 728);
  v38;

  if (!v38)
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  sub_245748480();
  (*(v11 + 104))(v14, *MEMORY[0x277CE0FE0], v10);
  v39 = 0.0;
  v40 = sub_2457484C0();

  (*(v11 + 8))(v14, v10);
  v41 = sub_245748560();
  v43 = v42;
  v44 = &v17[*(v138 + 36)];
  sub_2457411EC(v44);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE257C8, &qword_24574D558) + 36));
  *v45 = v41;
  v45[1] = v43;
  *v17 = v40;
  *(v17 + 1) = 0x3FE2000000000000;
  *(v17 + 8) = 256;
  sub_245748510();
  v46 = v169;
  swift_getKeyPath();
  *&v169 = v46;
  sub_245747CA0();

  v47 = *(v46 + 736);

  if (v47)
  {
    v48 = 16.0;
  }

  else
  {
    v48 = 0.0;
  }

  v49 = *(v140 + 20);
  v50 = *MEMORY[0x277CE0118];
  v51 = sub_2457480B0();
  v52 = v141;
  (*(*(v51 - 8) + 104))(v141 + v49, v50, v51);
  *v52 = v48;
  v52[1] = v48;
  v53 = v166;
  v54 = v166 + *(v139 + 36);
  sub_245747050(v52, v54, MEMORY[0x277CDFC08]);
  *(v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25768, &qword_24574D4F8) + 36)) = 256;
  sub_245746FE8(v17, v53, &qword_27EE25778, &qword_24574D508);
  sub_245748510();
  v55 = v169;
  swift_getKeyPath();
  *&v169 = v55;
  sub_245747CA0();

  v56 = *(v55 + 736);

  v58 = 0;
  if (v56 == 1)
  {
    v58 = MEMORY[0x245D70390](v57, 0.5, 1.0, 0.0);
  }

  sub_245748510();
  v59 = v169;
  swift_getKeyPath();
  *&v169 = v59;
  sub_245747CA0();

  v60 = *(v59 + 736);

  v61 = v144;
  sub_245746FE8(v166, v144, &qword_27EE25780, &qword_24574D510);
  v62 = v61 + *(v142 + 36);
  *v62 = v58;
  *(v62 + 8) = v60;
  sub_245748510();
  v63 = v169;
  swift_getKeyPath();
  *&v169 = v63;
  sub_245747CA0();

  v64 = *(v63 + 736);

  if (v64)
  {
    v39 = 1.0;
  }

  v65 = v61;
  v66 = v146;
  sub_245746FE8(v65, v146, &qword_27EE25788, &qword_24574D518);
  *(v66 + *(v143 + 36)) = v39;
  sub_245748510();
  v67 = v169;
  swift_getKeyPath();
  *&v169 = v67;
  sub_245747CA0();

  v68 = *(v67 + 736);

  if (v68 == 1)
  {
    v69 = sub_2457485A0();
  }

  else
  {
    v69 = 0;
  }

  sub_245748510();
  v70 = v169;
  swift_getKeyPath();
  *&v169 = v70;
  sub_245747CA0();

  v71 = *(v70 + 736);

  v72 = v66;
  v73 = v148;
  sub_245746FE8(v72, v148, &qword_27EE25790, &qword_24574D520);
  v74 = v73 + *(v145 + 36);
  *v74 = v69;
  *(v74 + 8) = v71;
  v75 = objc_opt_self();
  v76 = [v75 di_mainScreen];
  [v76 bounds];
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;

  v172.origin.x = v78;
  v172.origin.y = v80;
  v172.size.width = v82;
  v172.size.height = v84;
  CGRectGetHeight(v172);
  v85 = [v75 di_mainScreen];
  [v85 bounds];
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;

  v173.origin.x = v87;
  v173.origin.y = v89;
  v173.size.width = v91;
  v173.size.height = v93;
  CGRectGetHeight(v173);
  sub_245748580();
  sub_245747F60();
  v94 = v150;
  sub_245746FE8(v73, v150, &qword_27EE25798, &qword_24574D528);
  v95 = (v94 + *(v147 + 36));
  v96 = v170;
  *v95 = v169;
  v95[1] = v96;
  v95[2] = v171;
  LOBYTE(v85) = sub_245748260();
  v97 = *(v36 + *(v159 + 52));
  sub_245747EE0();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v106 = v94;
  v107 = v152;
  sub_245746FE8(v106, v152, &qword_27EE257A0, &qword_24574D530);
  v108 = v107 + *(v149 + 36);
  *v108 = v85;
  *(v108 + 8) = v99;
  *(v108 + 16) = v101;
  *(v108 + 24) = v103;
  *(v108 + 32) = v105;
  *(v108 + 40) = 0;
  LOBYTE(v85) = sub_245748270();
  sub_245747EE0();
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v117 = v153;
  sub_245746FE8(v107, v153, &qword_27EE257A8, &qword_24574D538);
  v118 = v117 + *(v151 + 36);
  *v118 = v85;
  *(v118 + 8) = v110;
  *(v118 + 16) = v112;
  *(v118 + 24) = v114;
  *(v118 + 32) = v116;
  *(v118 + 40) = 0;
  sub_245747F90();
  v120 = v119 * 0.5;
  sub_245747F90();
  v122 = v121 * 0.5;
  v123 = v155;
  sub_245746FE8(v117, v155, &qword_27EE257B0, &qword_24574D540);
  v124 = (v123 + *(v154 + 36));
  *v124 = v120;
  v124[1] = v122;
  v125 = v162;
  sub_24573D1D0(v36, v162);
  v126 = (*(v161 + 80) + 16) & ~*(v161 + 80);
  v127 = swift_allocObject();
  sub_245747050(v125, v127 + v126, type metadata accessor for RGBLivenessView);
  v128 = v164;
  sub_24573D1D0(v36, v164);
  v129 = swift_allocObject();
  sub_245747050(v128, v129 + v126, type metadata accessor for RGBLivenessView);
  sub_245747274();
  v130 = v156;
  sub_2457483B0();

  sub_2456EEF50(v123, &qword_27EE257B8, &qword_24574D548);
  sub_245748510();
  v131 = v168;
  swift_getKeyPath();
  v168 = v131;
  sub_245747CA0();

  v132 = *(v131 + 897);

  KeyPath = swift_getKeyPath();
  v134 = swift_allocObject();
  *(v134 + 16) = v132;
  v135 = v165;
  (*(v157 + 32))(v165, v130, v158);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25848, &qword_24574D5C0);
  v137 = (v135 + *(result + 36));
  *v137 = KeyPath;
  v137[1] = sub_245747A18;
  v137[2] = v134;
  return result;
}

uint64_t sub_2457411EC@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25850, &qword_24574D5C8);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v84 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25858, &qword_24574D5D0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v86 = &v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25860, &qword_24574D5D8);
  v11 = *(v10 - 8);
  v88 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v87 = &v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25868, &qword_24574D5E0);
  v15 = *(v14 - 8);
  v89 = v14 - 8;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v85 = &v84 - v17;
  v18 = sub_2457480A0();
  sub_2457423F0(&v97);
  v84 = v97;
  v19 = v98;
  v20 = BYTE8(v98);
  v21 = v99;
  v96 = 0;
  v95 = BYTE8(v98);
  v22 = sub_2457482E0();
  KeyPath = swift_getKeyPath();
  *&v91 = v18;
  *(&v91 + 1) = 0x4010000000000000;
  LOBYTE(v92[0]) = 0;
  *(v92 + 8) = v84;
  *(&v92[1] + 1) = v19;
  LOBYTE(v93) = v20;
  *(&v93 + 1) = v21;
  *&v94 = KeyPath;
  *(&v94 + 1) = v22;
  sub_2457482B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25870, &qword_24574D5E8);
  sub_245747894();
  sub_245748360();
  v99 = v92[1];
  v100 = v93;
  v101 = v94;
  v97 = v91;
  v98 = v92[0];
  sub_2456EEF50(&v97, &qword_27EE25870, &qword_24574D5E8);
  v24 = sub_245748420();
  *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25890, &qword_24574D5F8) + 36)] = v24;
  LOBYTE(v24) = sub_245748250();
  sub_245747EE0();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25898, &qword_24574D600) + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  LOBYTE(v24) = sub_245748290();
  sub_245747EE0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE258A0, &qword_24574D608) + 36)];
  *v42 = v24;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  sub_245748410();
  v43 = sub_245748430();

  v44 = &v5[*(v2 + 44)];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25688, &qword_24574D368);
  v46 = v44 + *(v45 + 52);
  v47 = *(sub_245747FD0() + 20);
  v48 = *MEMORY[0x277CE0118];
  v49 = sub_2457480B0();
  (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
  __asm { FMOV            V0.2D, #8.0 }

  *v46 = _Q0;
  *v44 = v43;
  *(v44 + *(v45 + 56)) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v55 = v91;
  swift_getKeyPath();
  *&v91 = v55;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  LODWORD(v48) = *(v55 + 864);

  v56 = 12.0;
  if (v48)
  {
    v57 = 12.0;
  }

  else
  {
    v57 = 4.0;
  }

  sub_245748510();
  v58 = v91;
  swift_getKeyPath();
  *&v91 = v58;
  sub_245747CA0();

  v59 = *(v58 + 864);

  if (!v59)
  {
    v56 = 4.0;
  }

  v60 = v86;
  sub_245746FE8(v5, v86, &qword_27EE25850, &qword_24574D5C8);
  v61 = (v60 + *(v7 + 44));
  v62 = v60;
  *v61 = v57;
  v61[1] = v56;
  sub_245748510();
  v63 = v91;
  swift_getKeyPath();
  *&v91 = v63;
  sub_245747CA0();
  v64 = v85;

  LODWORD(v60) = *(v63 + 864);

  if (v60)
  {
    v65 = 1.0;
  }

  else
  {
    v65 = 0.5;
  }

  sub_2457485E0();
  v67 = v66;
  v69 = v68;
  v70 = v87;
  sub_245746FE8(v62, v87, &qword_27EE25858, &qword_24574D5D0);
  v71 = v70 + *(v88 + 44);
  *v71 = v65;
  *(v71 + 8) = v65;
  *(v71 + 16) = v67;
  *(v71 + 24) = v69;
  sub_245748510();
  v72 = v91;
  swift_getKeyPath();
  *&v91 = v72;
  sub_245747CA0();

  v73 = *(v72 + 864);

  if (v73)
  {
    v74 = 1.0;
  }

  else
  {
    v74 = 0.0;
  }

  sub_245746FE8(v70, v64, &qword_27EE25860, &qword_24574D5D8);
  *(v64 + *(v89 + 44)) = v74;
  sub_245748510();
  v75 = v91;
  swift_getKeyPath();
  *&v91 = v75;
  sub_245747CA0();

  v76 = *(v75 + 864);

  v78 = 0;
  if (v76 == 1)
  {
    v78 = MEMORY[0x245D70390](v77, 0.5, 1.0, 0.0);
  }

  sub_245748510();
  v79 = v91;
  swift_getKeyPath();
  *&v91 = v79;
  sub_245747CA0();

  v80 = *(v79 + 864);

  v81 = v90;
  sub_245746FE8(v64, v90, &qword_27EE25868, &qword_24574D5E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE258A8, &qword_24574D638);
  v83 = v81 + *(result + 36);
  *v83 = v78;
  *(v83 + 8) = v80;
  return result;
}

uint64_t sub_2457419F0(char a1, uint64_t a2)
{
  v4 = type metadata accessor for RGBLivenessModel.Event(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v18 - v15;
  if ((a1 & 1) == 0)
  {
    v17 = type metadata accessor for RGBLivenessView();
    (*(v7 + 16))(v10, *(a2 + *(v17 + 20)) + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 8))(v16, v11);
  }

  return result;
}

uint64_t sub_245741C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v106 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25668, &qword_24574D348);
  v5 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v7 = &v91 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25670, &qword_24574D350);
  v8 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v10 = &v91 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25678, &qword_24574D358);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v105 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v91 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25680, &qword_24574D360);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v91 - v19;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v107 = a1;
  sub_245748510();
  v21 = v108;
  swift_getKeyPath();
  v108 = v21;
  v101 = sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v22 = *(v21 + 608);
  v23 = *(v21 + 616);

  if (v23)
  {
    v91 = a3;
    v96 = v17;
    v97 = v10;
    v98 = v20;
    v99 = v16;
    v100 = v11;
    v108 = v22;
    v109 = v23;
    sub_24573ED88();
    v24 = sub_245748330();
    v26 = v25;
    v28 = v27;
    v108 = sub_245748420();
    v29 = sub_245748300();
    v31 = v30;
    v33 = v32;
    sub_24574674C(v24, v26, v28 & 1);

    v34 = *(v107 + *(type metadata accessor for RGBLivenessView() + 56));
    v95 = sub_245748320();
    v94 = v35;
    LOBYTE(v26) = v36;
    v93 = v37;
    sub_24574674C(v29, v31, v33 & 1);

    v92 = sub_245748250();
    sub_245747EE0();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    LOBYTE(v24) = v26 & 1;
    v111 = v26 & 1;
    v110 = 0;
    LOBYTE(v29) = sub_245748290();
    sub_245747EE0();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    LOBYTE(v108) = 0;
    sub_245748410();
    v54 = sub_245748430();

    sub_245748410();
    v55 = sub_245748430();

    v56 = &v7[*(v102 + 36)];
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25688, &qword_24574D368);
    v58 = v56 + *(v57 + 52);
    v59 = *(sub_245747FD0() + 20);
    v60 = *MEMORY[0x277CE0118];
    v61 = sub_2457480B0();
    (*(*(v61 - 8) + 104))(&v58[v59], v60, v61);
    __asm { FMOV            V0.2D, #5.0 }

    *v58 = _Q0;
    *v56 = v55;
    *(v56 + *(v57 + 56)) = 256;
    v67 = v94;
    *v7 = v95;
    *(v7 + 1) = v67;
    v7[16] = v24;
    *(v7 + 3) = v93;
    v7[32] = v92;
    *(v7 + 5) = v39;
    *(v7 + 6) = v41;
    *(v7 + 7) = v43;
    *(v7 + 8) = v45;
    v7[72] = 0;
    v7[80] = v29;
    *(v7 + 11) = v47;
    *(v7 + 12) = v49;
    *(v7 + 13) = v51;
    *(v7 + 14) = v53;
    v7[120] = 0;
    *(v7 + 16) = v54;
    *(v7 + 17) = 0x4008000000000000;
    *(v7 + 18) = 0;
    *(v7 + 19) = 0;
    v68 = sub_245748260();
    sub_245748510();
    v69 = v108;
    swift_getKeyPath();
    v108 = v69;
    sub_245747CA0();

    if ((*(v69 + 560) & 1) == 0)
    {
      v71 = *(v69 + 552);
      sub_245747D10();
      sub_245747D10();
    }

    v72 = v97;
    sub_245747EE0();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    sub_245746FE8(v7, v72, &qword_27EE25668, &qword_24574D348);
    v81 = v72 + *(v104 + 36);
    *v81 = v68;
    *(v81 + 8) = v74;
    *(v81 + 16) = v76;
    *(v81 + 24) = v78;
    *(v81 + 32) = v80;
    *(v81 + 40) = 0;
    sub_245748510();
    v82 = v108;
    swift_getKeyPath();
    v108 = v82;
    sub_245747CA0();

    v83 = *(v82 + 608);
    v84 = *(v82 + 616);

    v85 = v100;
    v86 = v99;
    v87 = v98;
    if (v84)
    {
    }

    else
    {
      v83 = 0;
    }

    v88 = v72;
    v89 = v105;
    sub_245746FE8(v88, v105, &qword_27EE25670, &qword_24574D350);
    v90 = (v89 + *(v85 + 36));
    *v90 = 0;
    v90[1] = v83;
    v90[2] = v84;
    sub_245746FE8(v89, v86, &qword_27EE25678, &qword_24574D358);
    sub_245703098(v86, v87, &qword_27EE25678, &qword_24574D358);
    swift_storeEnumTagMultiPayload();
    sub_245746B9C();
    sub_245748180();
    return sub_2456EEF50(v86, &qword_27EE25678, &qword_24574D358);
  }

  else
  {

    swift_storeEnumTagMultiPayload();
    sub_245746B9C();
    return sub_245748180();
  }
}

uint64_t sub_2457423F0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v2 = v12[105];

  sub_245748510();
  swift_getKeyPath();
  sub_245747CA0();

  v3 = v12[106];
  v4 = v12[107];

  sub_24573ED88();
  v5 = sub_245748330();
  v7 = v6;
  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v9 = v8 & 1;
  *(a1 + 24) = v8 & 1;
  *(a1 + 32) = v10;

  sub_2457479C0(v5, v7, v9);

  sub_24574674C(v5, v7, v9);
}

uint64_t sub_2457425BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25458, &qword_24574D020);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25460, &qword_24574D028);
  v31 = *(v33 - 8);
  v10 = v31;
  v11 = *(v31 + 64);
  v12 = MEMORY[0x28223BE20](v33);
  v34 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v32 = &v31 - v14;
  v38 = a1;
  sub_245748240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25468, &qword_24574D030);
  sub_245747978(&qword_27EE25470, &qword_27EE25468, &qword_24574D030);
  sub_245747EF0();
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25478, &qword_24574D038);
  sub_245747978(&qword_27EE25480, &qword_27EE25478, &qword_24574D038);
  sub_245748190();
  v15 = sub_245748270();
  v16 = *(a1 + *(type metadata accessor for RGBLivenessView() + 36));
  sub_245747EE0();
  v17 = &v9[*(v4 + 44)];
  *v17 = v15;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = *(v10 + 16);
  v23 = v33;
  v24 = v34;
  v25 = v32;
  v22(v34, v32, v33);
  v26 = v35;
  sub_245703098(v9, v35, &qword_27EE25458, &qword_24574D020);
  v27 = v36;
  v22(v36, v24, v23);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25488, &qword_24574D040);
  sub_245703098(v26, &v27[*(v28 + 48)], &qword_27EE25458, &qword_24574D020);
  sub_2456EEF50(v9, &qword_27EE25458, &qword_24574D020);
  v29 = *(v31 + 8);
  v29(v25, v23);
  sub_2456EEF50(v26, &qword_27EE25458, &qword_24574D020);
  return (v29)(v24, v23);
}

uint64_t sub_245742940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2457480C0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE255F0, &qword_24574D218);
  return sub_245742998(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_245742998@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61[2] = a1;
  v70 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE255F8, &qword_24574D220);
  v3 = *(v2 - 8);
  v68 = v2 - 8;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v69 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v66 = v61 - v8;
  MEMORY[0x28223BE20](v7);
  v67 = v61 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25600, &qword_24574D228);
  v71 = *(v65 - 8);
  v10 = *(v71 + 64);
  v11 = MEMORY[0x28223BE20](v65);
  v64 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = v61 - v14;
  MEMORY[0x28223BE20](v13);
  v62 = v61 - v15;
  v61[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v16 = *&v109[0];
  swift_getKeyPath();
  *&v109[0] = v16;
  v61[0] = sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v17 = *(v16 + 656);
  v18 = *(v16 + 664);

  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v18)
  {
    v20 = v18;
  }

  *&v109[0] = v19;
  *(&v109[0] + 1) = v20;
  sub_24573ED88();
  v21 = sub_245748330();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_245748590();
  sub_245747FE0();
  v28 = v25 & 1;
  v110 = v25 & 1;
  KeyPath = swift_getKeyPath();
  v30 = sub_2457482D0();
  v31 = swift_getKeyPath();
  *&v91 = v21;
  *(&v91 + 1) = v23;
  LOBYTE(v92) = v28;
  v97 = v106;
  v98 = v107;
  v99 = v108;
  v93 = v102;
  v94 = v103;
  v95 = v104;
  v96 = v105;
  *(&v92 + 1) = v27;
  *&v100 = KeyPath;
  BYTE8(v100) = 0;
  *&v101 = v31;
  *(&v101 + 1) = v30;
  sub_2457482C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25608, &qword_24574D2B8);
  sub_245746A0C();
  sub_245748360();
  v109[8] = v99;
  v109[9] = v100;
  v109[10] = v101;
  v109[4] = v95;
  v109[5] = v96;
  v109[6] = v97;
  v109[7] = v98;
  v109[0] = v91;
  v109[1] = v92;
  v109[2] = v93;
  v109[3] = v94;
  sub_2456EEF50(v109, &qword_27EE25608, &qword_24574D2B8);
  sub_245748510();
  v32 = v91;
  swift_getKeyPath();
  *&v91 = v32;
  sub_245747CA0();

  v33 = *(v32 + 672);
  v34 = *(v32 + 680);

  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  v36 = 0xE000000000000000;
  if (v34)
  {
    v36 = v34;
  }

  *&v91 = v35;
  *(&v91 + 1) = v36;
  v37 = sub_245748330();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_245748590();
  sub_245747FE0();
  v44 = v41 & 1;
  v90 = v41 & 1;
  v45 = swift_getKeyPath();
  v46 = sub_2457482D0();
  v47 = swift_getKeyPath();
  *&v72 = v37;
  *(&v72 + 1) = v39;
  LOBYTE(v73) = v44;
  *(&v73 + 1) = v43;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  v74 = v83;
  v75 = v84;
  v77 = v86;
  v76 = v85;
  *&v81 = v45;
  BYTE8(v81) = 0;
  *&v82 = v47;
  *(&v82 + 1) = v46;
  sub_2457482B0();
  v48 = v63;
  sub_245748360();
  v99 = v80;
  v100 = v81;
  v101 = v82;
  v95 = v76;
  v96 = v77;
  v97 = v78;
  v98 = v79;
  v91 = v72;
  v92 = v73;
  v93 = v74;
  v94 = v75;
  sub_2456EEF50(&v91, &qword_27EE25608, &qword_24574D2B8);
  LODWORD(v37) = sub_2457481E0();
  v49 = v71;
  v51 = v65;
  v50 = v66;
  (*(v71 + 32))(v66, v48, v65);
  v52 = v67;
  *(v50 + *(v68 + 44)) = v37;
  sub_245746FE8(v50, v52, &qword_27EE255F8, &qword_24574D220);
  v53 = *(v49 + 16);
  v54 = v64;
  v55 = v62;
  v53(v64, v62, v51);
  v56 = v69;
  sub_245703098(v52, v69, &qword_27EE255F8, &qword_24574D220);
  v57 = v70;
  v53(v70, v54, v51);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25648, &qword_24574D300);
  sub_245703098(v56, &v57[*(v58 + 48)], &qword_27EE255F8, &qword_24574D220);
  sub_2456EEF50(v52, &qword_27EE255F8, &qword_24574D220);
  v59 = *(v71 + 8);
  v59(v55, v51);
  sub_2456EEF50(v56, &qword_27EE255F8, &qword_24574D220);
  return (v59)(v54, v51);
}

uint64_t sub_2457430D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for RGBLivenessView() + 32));
  *a2 = sub_2457480C0();
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25490, &qword_24574D048);
  return sub_24574313C(a2 + *(v4 + 44));
}

uint64_t sub_24574313C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25498, &qword_24574D050);
  v39 = *(v1 - 8);
  v40 = v1;
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v1);
  v35 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254A0, &qword_24574D058);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v34 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254A8, &qword_24574D060);
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v36);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254B0, &qword_24574D068);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v37 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v19 = v43;
  swift_getKeyPath();
  v43 = v19;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  if (*(v19 + 696))
  {

LABEL_4:
    sub_245743654(v12);
    sub_245746FE8(v12, v18, &qword_27EE254A8, &qword_24574D060);
    v21 = 0;
    goto LABEL_5;
  }

  swift_getKeyPath();
  v43 = v19;
  sub_245747CA0();

  v20 = *(v19 + 704);

  if (v20 == 1)
  {
    goto LABEL_4;
  }

  v21 = 1;
LABEL_5:
  v22 = 1;
  (*(v9 + 56))(v18, v21, 1, v36);
  sub_245748510();
  v23 = v43;
  swift_getKeyPath();
  v43 = v23;
  sub_245747CA0();

  v24 = *(v23 + 720);

  v25 = v38;
  if (v24)
  {
    v26 = v35;
    sub_245743D18(v35);
    v28 = v39;
    v27 = v40;
    (*(v39 + 32))(v25, v26, v40);
    v22 = 0;
  }

  else
  {
    v28 = v39;
    v27 = v40;
  }

  (*(v28 + 56))(v25, v22, 1, v27);
  v29 = v37;
  sub_245703098(v18, v37, &qword_27EE254B0, &qword_24574D068);
  v30 = v41;
  sub_245703098(v25, v41, &qword_27EE254A0, &qword_24574D058);
  v31 = v42;
  sub_245703098(v29, v42, &qword_27EE254B0, &qword_24574D068);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254B8, &qword_24574D0E8);
  sub_245703098(v30, v31 + *(v32 + 48), &qword_27EE254A0, &qword_24574D058);
  sub_2456EEF50(v25, &qword_27EE254A0, &qword_24574D058);
  sub_2456EEF50(v18, &qword_27EE254B0, &qword_24574D068);
  sub_2456EEF50(v30, &qword_27EE254A0, &qword_24574D058);
  return sub_2456EEF50(v29, &qword_27EE254B0, &qword_24574D068);
}

uint64_t sub_245743654@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_245748220();
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RGBLivenessView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254C0, &qword_24574D0F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254C8, &qword_24574D0F8);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254D0, &qword_24574D100);
  v20 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v46 - v21;
  sub_24573D1D0(v2, &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  sub_245747050(&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for RGBLivenessView);
  v52 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254D8, &qword_24574D108);
  sub_2457461A8();
  sub_2457484D0();
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25548, &qword_24574D140) + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25540, &qword_24574D138) + 28);
  v26 = *MEMORY[0x277CDF420];
  v27 = sub_245747F00();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  v28 = &v14[*(v11 + 36)];
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25550, &qword_24574D178) + 28);
  sub_245747FF0();
  *v28 = swift_getKeyPath();
  sub_245748210();
  sub_2457465B0();
  sub_2457479D0(&qword_27EE25580, MEMORY[0x277CDE340]);
  v30 = v47;
  sub_245748370();
  (*(v48 + 8))(v7, v30);
  sub_2456EEF50(v14, &qword_27EE254C0, &qword_24574D0F0);
  v31 = sub_24573C5F0();
  KeyPath = swift_getKeyPath();
  v53 = v31;
  v33 = sub_245747F70();
  v34 = &v19[*(v16 + 44)];
  *v34 = KeyPath;
  v34[1] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v35 = v53;
  swift_getKeyPath();
  v53 = v35;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  if (*(v35 + 705))
  {
    v36 = 1;
  }

  else
  {
    swift_getKeyPath();
    v53 = v35;
    sub_245747CA0();

    v36 = *(v35 + 704);
  }

  v37 = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  v39 = v50;
  sub_245746FE8(v19, v50, &qword_27EE254C8, &qword_24574D0F8);
  v40 = (v39 + *(v49 + 36));
  *v40 = v37;
  v40[1] = sub_245747A18;
  v40[2] = v38;
  sub_245748510();
  v41 = v53;
  swift_getKeyPath();
  v53 = v41;
  sub_245747CA0();

  if (*(v41 + 696))
  {

    v42 = 1.0;
  }

  else
  {
    swift_getKeyPath();
    v53 = v41;
    sub_245747CA0();

    v43 = *(v41 + 704);

    if (v43)
    {
      v42 = 1.0;
    }

    else
    {
      v42 = 0.0;
    }
  }

  v44 = v51;
  sub_245746FE8(v39, v51, &qword_27EE254D0, &qword_24574D100);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254A8, &qword_24574D060);
  *(v44 + *(result + 36)) = v42;
  return result;
}

uint64_t sub_245743D18@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_245748200();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245748470();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RGBLivenessView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25590, &qword_24574D1E8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25598, &qword_24574D1F0);
  v16 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE255A0, &qword_24574D1F8);
  v50 = *(v19 - 8);
  v51 = v19;
  v20 = *(v50 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - v21;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE255A8, &qword_24574D200);
  v23 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v25 = &v48 - v24;
  sub_24573D1D0(v1, &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v27 = swift_allocObject();
  sub_245747050(&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for RGBLivenessView);
  v60 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE255B0, &qword_24574D208);
  sub_245746ECC(&qword_27EE255B8, &qword_27EE255B0, &qword_24574D208);
  sub_2457484D0();
  v28 = &v15[*(v12 + 44)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25540, &qword_24574D138) + 28);
  v30 = *MEMORY[0x277CDF420];
  v31 = sub_245747F00();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v32 = v61;
  swift_getKeyPath();
  v61 = v32;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  if (*(v32 + 560))
  {

LABEL_5:
    v37 = sub_245748440();
    goto LABEL_6;
  }

  v33 = *(v32 + 552);
  v34 = sub_245747D10();
  v35 = sub_245747D10();

  if (v34 != v35)
  {
    goto LABEL_5;
  }

  v36 = [objc_opt_self() systemOrangeColor];
  v37 = sub_245748450();
LABEL_6:
  v38 = v37;
  KeyPath = swift_getKeyPath();
  v61 = v38;
  v40 = sub_245747F70();
  sub_245746FE8(v15, v18, &qword_27EE25590, &qword_24574D1E8);
  v41 = &v18[*(v49 + 36)];
  *v41 = KeyPath;
  v41[1] = v40;
  sub_2457482A0();
  sub_24574677C();
  sub_245748360();
  sub_2456EEF50(v18, &qword_27EE25598, &qword_24574D1F0);
  v42 = &v25[*(v52 + 36)];
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25550, &qword_24574D178) + 28);
  sub_245747FF0();
  *v42 = swift_getKeyPath();
  (*(v50 + 32))(v25, v22, v51);
  v44 = v53;
  sub_245748460();
  v45 = v56;
  sub_2457481F0();
  sub_245746918();
  sub_2457479D0(&qword_27EE255E8, MEMORY[0x277CE0638]);
  v46 = v59;
  sub_245748380();
  (*(v58 + 8))(v45, v46);
  (*(v54 + 8))(v44, v55);
  return sub_2456EEF50(v25, &qword_27EE255A8, &qword_24574D200);
}

uint64_t sub_245744430(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v14 = *(a1 + *(type metadata accessor for RGBLivenessView() + 20));
  sub_2456FDD3C();
  (*(v5 + 16))(v8, v14 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v4);
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

__n128 sub_245744650@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254F0, &qword_24574D110);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v10 - v4;
  sub_245744788(v10 - v4);
  sub_245748580();
  sub_245747FE0();
  sub_245746FE8(v5, a1, &qword_27EE254F0, &qword_24574D110);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254D8, &qword_24574D108) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_245744788@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25588, &qword_24574D1E0);
  v1 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v3 = &v37 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25510, &qword_24574D120);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v8 = v40;
  swift_getKeyPath();
  v40 = v8;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v9 = *(v8 + 704);

  if (v9 == 1)
  {
    sub_245747F20();
    v10 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25520, &qword_24574D128) + 36)];
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25540, &qword_24574D138) + 28);
    v12 = *MEMORY[0x277CDF440];
    v13 = sub_245747F00();
    (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
    *v10 = swift_getKeyPath();
    v14 = [objc_opt_self() systemGrayColor];
    v15 = sub_245748450();
    KeyPath = swift_getKeyPath();
    v40 = v15;
    v17 = sub_245747F70();
    v18 = &v7[*(v4 + 36)];
    *v18 = KeyPath;
    v18[1] = v17;
    sub_245703098(v7, v3, &qword_27EE25510, &qword_24574D120);
    swift_storeEnumTagMultiPayload();
    sub_245746344();
    sub_245748180();
    return sub_2456EEF50(v7, &qword_27EE25510, &qword_24574D120);
  }

  else
  {
    sub_245748510();
    v20 = v40;
    swift_getKeyPath();
    v40 = v20;
    sub_245747CA0();

    v21 = *(v20 + 688);
    v22 = *(v20 + 696);

    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    v24 = 0xE000000000000000;
    if (v22)
    {
      v24 = v22;
    }

    v40 = v23;
    v41 = v24;
    sub_24573ED88();
    v25 = sub_245748330();
    v27 = v26;
    v29 = v28;
    v30 = sub_245748310();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_24574674C(v25, v27, v29 & 1);

    *v3 = v30;
    *(v3 + 1) = v32;
    v3[16] = v34 & 1;
    *(v3 + 3) = v36;
    swift_storeEnumTagMultiPayload();
    sub_245746344();
    return sub_245748180();
  }
}

uint64_t sub_245744BA0(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  v16 = *(a1 + *(type metadata accessor for RGBLivenessView() + 20));
  sub_2456FDD3C();
  (*(v7 + 16))(v10, v16 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
  *v5 = (*(v16 + 16) & 1) == 0;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

__n128 sub_245744DD0@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v2 = *(v14 + 712);
  v3 = *(v14 + 720);

  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (v3)
  {
    v5 = v3;
  }

  *&v15 = v4;
  *(&v15 + 1) = v5;
  sub_24573ED88();
  v6 = sub_245748330();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_245748580();
  sub_245747FE0();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  *(a1 + 96) = v19;
  *(a1 + 112) = v20;
  *(a1 + 128) = v21;
  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  result = v18;
  *(a1 + 64) = v17;
  *(a1 + 80) = v18;
  return result;
}

uint64_t sub_245744F70@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v2 = *(v4 + 888);

  *a1 = v2;
  return result;
}

uint64_t sub_245745048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25368, &qword_24574CDF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25370, &qword_24574CDF8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v68 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v59 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25378, &qword_24574CE00);
  v11 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v13 = &v59 - v12;
  v14 = type metadata accessor for RGBLivenessView();
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25380, &qword_24574CE08);
  v73 = *(v16 - 8);
  v17 = *(v73 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25388, &qword_24574CE10);
  v64 = *(v20 - 8);
  v65 = v20;
  v21 = *(v64 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v66 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v72 = &v59 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v74 = a1;
  sub_245748510();
  v26 = v75;
  swift_getKeyPath();
  v75 = v26;
  v70 = sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig);
  sub_245747CA0();

  v27 = *(v26 + 792);
  v28 = *(v26 + 800);

  v61 = v15;
  v62 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v28)
  {
    v75 = v27;
    v76 = v28;
    sub_24573D1D0(v74, &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = *(v63 + 80);
    v30 = swift_allocObject();
    sub_245747050(&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + ((v29 + 16) & ~v29), type metadata accessor for RGBLivenessView);
  }

  else
  {
    v60 = v25;
    v31 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v74;
    sub_245748510();
    v33 = v75;
    swift_getKeyPath();
    v75 = v33;
    sub_245747CA0();

    v34 = *(v33 + 776);
    v35 = *(v33 + 784);

    v75 = v34;
    v76 = v35;
    sub_24573D1D0(v32, v31);
    v29 = *(v63 + 80);
    v36 = swift_allocObject();
    sub_245747050(v31, v36 + ((v29 + 16) & ~v29), type metadata accessor for RGBLivenessView);
  }

  sub_24573ED88();
  sub_2457484F0();
  v37 = v73;
  v63 = *(v73 + 16);
  (v63)(v13, v19, v16);
  swift_storeEnumTagMultiPayload();
  sub_245747978(&qword_27EE25390, &qword_27EE25380, &qword_24574CE08);
  sub_245748180();
  v38 = *(v37 + 8);
  v73 = v37 + 8;
  v60 = v38;
  v38(v19, v16);
  sub_245748510();
  v39 = v75;
  swift_getKeyPath();
  v75 = v39;
  sub_245747CA0();

  v40 = *(v39 + 808);
  v41 = *(v39 + 816);

  if (v41)
  {
    v75 = v40;
    v76 = v41;
    v42 = v62;
    sub_24573D1D0(v74, v62);
    v43 = swift_allocObject();
    sub_245747050(v42, v43 + ((v29 + 16) & ~v29), type metadata accessor for RGBLivenessView);
    sub_24573ED88();
    sub_2457484F0();
  }

  else
  {
    sub_245748510();
    v44 = v75;
    swift_getKeyPath();
    v75 = v44;
    sub_245747CA0();

    v45 = *(v44 + 824);
    v46 = *(v44 + 832);

    if (!v46)
    {
      v52 = 1;
      v51 = v67;
      goto LABEL_9;
    }

    v75 = v45;
    v76 = v46;
    v47 = v59;
    sub_245747EC0();
    v48 = sub_245747ED0();
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    v49 = v62;
    sub_24573D1D0(v74, v62);
    v50 = swift_allocObject();
    sub_245747050(v49, v50 + ((v29 + 16) & ~v29), type metadata accessor for RGBLivenessView);
    sub_24573ED88();
    sub_2457484E0();
  }

  v51 = v67;
  (v63)(v13, v19, v16);
  swift_storeEnumTagMultiPayload();
  sub_245748180();
  v60(v19, v16);
  v52 = 0;
LABEL_9:
  (*(v64 + 56))(v51, v52, 1, v65);
  v53 = v72;
  v54 = v66;
  sub_245703098(v72, v66, &qword_27EE25388, &qword_24574CE10);
  v55 = v68;
  sub_245703098(v51, v68, &qword_27EE25370, &qword_24574CDF8);
  v56 = v69;
  sub_245703098(v54, v69, &qword_27EE25388, &qword_24574CE10);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25398, &qword_24574CEB8);
  sub_245703098(v55, v56 + *(v57 + 48), &qword_27EE25370, &qword_24574CDF8);
  sub_2456EEF50(v51, &qword_27EE25370, &qword_24574CDF8);
  sub_2456EEF50(v53, &qword_27EE25388, &qword_24574CE10);
  sub_2456EEF50(v55, &qword_27EE25370, &qword_24574CDF8);
  return sub_2456EEF50(v54, &qword_27EE25388, &qword_24574CE10);
}

uint64_t sub_245745A00(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v14 = type metadata accessor for RGBLivenessView();
  (*(v5 + 16))(v8, *(a1 + *(v14 + 20)) + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v4);
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

void sub_245745C54()
{
  sub_245745D18();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RGBLivenessController();
    if (v1 <= 0x3F)
    {
      sub_2457481B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_245745D18()
{
  if (!qword_27EE25360)
  {
    type metadata accessor for RGBLivenessViewConfig();
    v0 = sub_245748550();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE25360);
    }
  }
}

unint64_t sub_245745E38()
{
  result = qword_27EE253B0;
  if (!qword_27EE253B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE253A8, &qword_24574CEF0);
    sub_245745EF0();
    sub_245747978(&qword_27EE253E8, &qword_27EE253F0, &qword_24574CF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE253B0);
  }

  return result;
}

unint64_t sub_245745EF0()
{
  result = qword_27EE253B8;
  if (!qword_27EE253B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE253C0, &qword_24574CEF8);
    sub_245747978(&qword_27EE253C8, &qword_27EE253D0, &qword_24574CF00);
    sub_245747978(&qword_27EE253D8, &qword_27EE253E0, &qword_24574CF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE253B8);
  }

  return result;
}

uint64_t sub_245745FEC(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for RGBLivenessView();
  v4 = *(v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + *(v3 + 20));
  return a1();
}

unint64_t sub_245746060()
{
  result = qword_27EE25400;
  if (!qword_27EE25400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE253F8, &qword_24574CF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25400);
  }

  return result;
}

uint64_t sub_2457460F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for RGBLivenessView() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_24573EEA8(v5, a1);
}

double sub_2457461A0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_245744650(a1).n128_u64[0];
  return result;
}

unint64_t sub_2457461A8()
{
  result = qword_27EE254E0;
  if (!qword_27EE254E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE254D8, &qword_24574D108);
    sub_245746234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE254E0);
  }

  return result;
}

unint64_t sub_245746234()
{
  result = qword_27EE254E8;
  if (!qword_27EE254E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE254F0, &qword_24574D110);
    sub_2457462B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE254E8);
  }

  return result;
}

unint64_t sub_2457462B8()
{
  result = qword_27EE254F8;
  if (!qword_27EE254F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25500, &qword_24574D118);
    sub_245746344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE254F8);
  }

  return result;
}

unint64_t sub_245746344()
{
  result = qword_27EE25508;
  if (!qword_27EE25508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25510, &qword_24574D120);
    sub_2457463FC();
    sub_245747978(&qword_27EE253D8, &qword_27EE253E0, &qword_24574CF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25508);
  }

  return result;
}

unint64_t sub_2457463FC()
{
  result = qword_27EE25518;
  if (!qword_27EE25518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25520, &qword_24574D128);
    sub_245747978(&qword_27EE25528, &qword_27EE25530, &qword_24574D130);
    sub_245747978(&qword_27EE25538, &qword_27EE25540, &qword_24574D138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25518);
  }

  return result;
}

uint64_t sub_2457464E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_2457465B0()
{
  result = qword_27EE25558;
  if (!qword_27EE25558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE254C0, &qword_24574D0F0);
    sub_245746668();
    sub_245747978(&qword_27EE25578, &qword_27EE25550, &qword_24574D178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25558);
  }

  return result;
}

unint64_t sub_245746668()
{
  result = qword_27EE25560;
  if (!qword_27EE25560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25548, &qword_24574D140);
    sub_245747978(&qword_27EE25568, &qword_27EE25570, &qword_24574D1B0);
    sub_245747978(&qword_27EE25538, &qword_27EE25540, &qword_24574D138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25560);
  }

  return result;
}

uint64_t sub_24574674C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_245746774@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_245744DD0(a1).n128_u64[0];
  return result;
}

unint64_t sub_24574677C()
{
  result = qword_27EE255C0;
  if (!qword_27EE255C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25598, &qword_24574D1F0);
    sub_245746834();
    sub_245747978(&qword_27EE253D8, &qword_27EE253E0, &qword_24574CF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE255C0);
  }

  return result;
}

unint64_t sub_245746834()
{
  result = qword_27EE255C8;
  if (!qword_27EE255C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25590, &qword_24574D1E8);
    sub_245747978(&qword_27EE255D0, &qword_27EE255D8, &qword_24574D210);
    sub_245747978(&qword_27EE25538, &qword_27EE25540, &qword_24574D138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE255C8);
  }

  return result;
}

unint64_t sub_245746918()
{
  result = qword_27EE255E0;
  if (!qword_27EE255E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE255A8, &qword_24574D200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25598, &qword_24574D1F0);
    sub_24574677C();
    swift_getOpaqueTypeConformance2();
    sub_245747978(&qword_27EE25578, &qword_27EE25550, &qword_24574D178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE255E0);
  }

  return result;
}

unint64_t sub_245746A0C()
{
  result = qword_27EE25610;
  if (!qword_27EE25610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25608, &qword_24574D2B8);
    sub_245746AC4();
    sub_245747978(&qword_27EE25638, &qword_27EE25640, &qword_24574D2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25610);
  }

  return result;
}

unint64_t sub_245746AC4()
{
  result = qword_27EE25618;
  if (!qword_27EE25618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25620, &qword_24574D2C0);
    sub_245746ECC(&qword_27EE255B8, &qword_27EE255B0, &qword_24574D208);
    sub_245747978(&qword_27EE25628, &qword_27EE25630, &qword_24574D2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25618);
  }

  return result;
}

unint64_t sub_245746B9C()
{
  result = qword_27EE25690;
  if (!qword_27EE25690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25678, &qword_24574D358);
    sub_245746C54();
    sub_245747978(&qword_27EE256E0, &qword_27EE256E8, &qword_24574D388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25690);
  }

  return result;
}

unint64_t sub_245746C54()
{
  result = qword_27EE25698;
  if (!qword_27EE25698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25670, &qword_24574D350);
    sub_245746CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25698);
  }

  return result;
}

unint64_t sub_245746CE0()
{
  result = qword_27EE256A0;
  if (!qword_27EE256A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25668, &qword_24574D348);
    sub_245746D98();
    sub_245747978(&qword_27EE256D8, &qword_27EE25688, &qword_24574D368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE256A0);
  }

  return result;
}

unint64_t sub_245746D98()
{
  result = qword_27EE256A8;
  if (!qword_27EE256A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE256B0, &qword_24574D370);
    sub_245746E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE256A8);
  }

  return result;
}

unint64_t sub_245746E24()
{
  result = qword_27EE256B8;
  if (!qword_27EE256B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE256C0, &qword_24574D378);
    sub_245746ECC(&qword_27EE256C8, &qword_27EE256D0, &qword_24574D380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE256B8);
  }

  return result;
}

uint64_t sub_245746ECC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_245746F54(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RGBLivenessView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_245746FE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_245747050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for RGBLivenessView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
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

uint64_t sub_245747204(char a1)
{
  v3 = *(type metadata accessor for RGBLivenessView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2457419F0(a1, v4);
}

unint64_t sub_245747274()
{
  result = qword_27EE257D0;
  if (!qword_27EE257D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE257B8, &qword_24574D548);
    sub_245747300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE257D0);
  }

  return result;
}

unint64_t sub_245747300()
{
  result = qword_27EE257D8;
  if (!qword_27EE257D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE257B0, &qword_24574D540);
    sub_24574738C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE257D8);
  }

  return result;
}

unint64_t sub_24574738C()
{
  result = qword_27EE257E0;
  if (!qword_27EE257E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE257A8, &qword_24574D538);
    sub_245747418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE257E0);
  }

  return result;
}

unint64_t sub_245747418()
{
  result = qword_27EE257E8;
  if (!qword_27EE257E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE257A0, &qword_24574D530);
    sub_2457474A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE257E8);
  }

  return result;
}

unint64_t sub_2457474A4()
{
  result = qword_27EE257F0;
  if (!qword_27EE257F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25798, &qword_24574D528);
    sub_24574755C();
    sub_245747978(&qword_27EE25838, &qword_27EE25840, &qword_24574D590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE257F0);
  }

  return result;
}

unint64_t sub_24574755C()
{
  result = qword_27EE257F8;
  if (!qword_27EE257F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25790, &qword_24574D520);
    sub_2457475E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE257F8);
  }

  return result;
}

unint64_t sub_2457475E8()
{
  result = qword_27EE25800;
  if (!qword_27EE25800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25788, &qword_24574D518);
    sub_2457476A0();
    sub_245747978(&qword_27EE25838, &qword_27EE25840, &qword_24574D590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25800);
  }

  return result;
}

unint64_t sub_2457476A0()
{
  result = qword_27EE25808;
  if (!qword_27EE25808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25780, &qword_24574D510);
    sub_245747758();
    sub_245747978(&qword_27EE25830, &qword_27EE25768, &qword_24574D4F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25808);
  }

  return result;
}

unint64_t sub_245747758()
{
  result = qword_27EE25810;
  if (!qword_27EE25810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25778, &qword_24574D508);
    sub_245747810();
    sub_245747978(&qword_27EE25828, &qword_27EE257C8, &qword_24574D558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25810);
  }

  return result;
}

unint64_t sub_245747810()
{
  result = qword_27EE25818;
  if (!qword_27EE25818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25820, &qword_24574D588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25818);
  }

  return result;
}

unint64_t sub_245747894()
{
  result = qword_27EE25878;
  if (!qword_27EE25878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25870, &qword_24574D5E8);
    sub_245747978(&qword_27EE25880, &qword_27EE25888, &qword_24574D5F0);
    sub_245747978(&qword_27EE25638, &qword_27EE25640, &qword_24574D2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25878);
  }

  return result;
}

uint64_t sub_245747978(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2457479C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2457479D0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_245747A1C()
{
  type metadata accessor for BundleToken();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EE25900 = result;
  return result;
}