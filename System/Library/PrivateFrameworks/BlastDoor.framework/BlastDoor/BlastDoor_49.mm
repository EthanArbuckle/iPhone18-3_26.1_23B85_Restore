void (*PhotosPoster.ParallaxLayer.$image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

double PhotosPoster.ParallaxLayer.frame.getter()
{
  result = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v4 = *(v0 + 464);
  return result;
}

void PhotosPoster.ParallaxLayer.frame.setter(double a1, double a2, double a3, double a4)
{
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = a3;
  v4[58] = a4;
}

uint64_t sub_21444F3F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 504);
  if (v4)
  {
    *a2 = *(a1 + 496);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21444F460(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t PhotosPoster.ParallaxLayer.identifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 480);
  v7 = *(v2 + 488);
  v12 = *(v3 + 512);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 504);

    *(v3 + 496) = a1;
    *(v3 + 504) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*PhotosPoster.ParallaxLayer.identifier.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 504);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 496);
    a1[1] = v3;

    return sub_21444F6F4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21444F6F4(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 480);
    v11 = *(v4 + 488);
    v16 = *(v4 + 512);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 496) = v5;
      *(v4 + 504) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 480);
  v6 = *(v4 + 488);
  v16 = *(v4 + 512);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 496) = v5;
  *(v4 + 504) = v3;
}

uint64_t sub_21444F914(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 488);
  v9 = *(a2 + 504);

  *(a2 + 480) = v4;
  *(a2 + 488) = v3;
  *(a2 + 496) = v6;
  *(a2 + 504) = v5;
  *(a2 + 512) = v7;
  return result;
}

void (*PhotosPoster.ParallaxLayer.$identifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 488);
  v7 = *(v1 + 496);
  v6 = *(v1 + 504);
  v8 = *(v1 + 512);
  *v4 = *(v1 + 480);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21444FA24;
}

void sub_21444FA24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 488);
  v10 = *(v3 + 504);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 480) = v5;
    *(v3 + 488) = v4;
    *(v3 + 496) = v7;
    *(v3 + 504) = v6;
    *(v3 + 512) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 488);

    *(v3 + 480) = v5;
    *(v3 + 488) = v4;
    *(v3 + 496) = v7;
    *(v3 + 504) = v6;
    *(v3 + 512) = v8;
  }

  free(v2);
}

uint64_t PhotosPoster.ParallaxLayerStack.layers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

double PhotosPoster.ParallaxLayoutConfiguration.screenSize.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

double PhotosPoster.ParallaxLayoutConfiguration.timeRect.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  return result;
}

void PhotosPoster.ParallaxLayoutConfiguration.timeRect.setter(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

double PhotosPoster.ParallaxLayoutConfiguration.inactiveTimeRect.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  return result;
}

void PhotosPoster.ParallaxLayoutConfiguration.inactiveTimeRect.setter(double a1, double a2, double a3, double a4)
{
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = a3;
  v4[10] = a4;
}

double PhotosPoster.ParallaxLayoutConfiguration.parallaxPadding.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

__n128 PhotosPoster.CompoundDeviceConfiguration.portraitConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 96);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

__n128 PhotosPoster.CompoundDeviceConfiguration.portraitConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v2;
  *(v1 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

__n128 PhotosPoster.CompoundDeviceConfiguration.landscapeConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 152);
  v3 = *(v1 + 184);
  *(a1 + 64) = *(v1 + 168);
  *(a1 + 80) = v3;
  *(a1 + 89) = *(v1 + 193);
  v4 = *(v1 + 120);
  *a1 = *(v1 + 104);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 136);
  *(a1 + 48) = result;
  return result;
}

__n128 PhotosPoster.CompoundDeviceConfiguration.landscapeConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v1 + 152) = *(a1 + 48);
  v3 = *(a1 + 80);
  *(v1 + 168) = *(a1 + 64);
  *(v1 + 184) = v3;
  *(v1 + 193) = *(a1 + 89);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v5;
  *(v1 + 136) = v2;
  return result;
}

void PhotosPoster.options.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *PhotosPoster.options.setter(_BYTE *result)
{
  v2 = result[1];
  *v1 = *result;
  v1[1] = v2;
  return result;
}

uint64_t PhotosPoster.identifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v12 = *(v3 + 40);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 32);

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*PhotosPoster.identifier.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*PhotosPoster.$identifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406A388;
}

uint64_t PhotosPoster.media.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[6];
  v10 = v1[5];
  v11 = v2;
  v4 = v1[8];
  v12 = v1[7];
  v3 = v12;
  v13 = v4;
  v6 = v1[4];
  v9[0] = v1[3];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_2142FC684(v9, &v8);
}

__n128 PhotosPoster.media.setter(uint64_t a1)
{
  v3 = v1[6];
  v10[2] = v1[5];
  v10[3] = v3;
  v4 = v1[8];
  v10[4] = v1[7];
  v10[5] = v4;
  v5 = v1[4];
  v10[0] = v1[3];
  v10[1] = v5;
  sub_2142FC3CC(v10);
  v6 = *(a1 + 48);
  v1[5] = *(a1 + 32);
  v1[6] = v6;
  v7 = *(a1 + 80);
  v1[7] = *(a1 + 64);
  v1[8] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v9;
  return result;
}

uint64_t PhotosPoster.layerStack.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 144), 0x132uLL);
  memcpy(a1, (v1 + 144), 0x132uLL);
  return sub_2142FC7E4(__dst, v4);
}

void *PhotosPoster.layerStack.setter(const void *a1)
{
  memcpy(v4, (v1 + 144), 0x132uLL);
  sub_2142FC4F8(v4);
  return memcpy((v1 + 144), a1, 0x132uLL);
}

__n128 PhotosPoster.layoutConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 208) = *(v1 + 664);
  v2 = *(v1 + 632);
  *(a1 + 160) = *(v1 + 616);
  *(a1 + 176) = v2;
  *(a1 + 192) = *(v1 + 648);
  v3 = *(v1 + 568);
  *(a1 + 96) = *(v1 + 552);
  *(a1 + 112) = v3;
  v4 = *(v1 + 600);
  *(a1 + 128) = *(v1 + 584);
  *(a1 + 144) = v4;
  v5 = *(v1 + 504);
  *(a1 + 32) = *(v1 + 488);
  *(a1 + 48) = v5;
  v6 = *(v1 + 536);
  *(a1 + 64) = *(v1 + 520);
  *(a1 + 80) = v6;
  result = *(v1 + 456);
  v8 = *(v1 + 472);
  *a1 = result;
  *(a1 + 16) = v8;
  return result;
}

__n128 PhotosPoster.layoutConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 176);
  *(v1 + 616) = *(a1 + 160);
  *(v1 + 632) = v2;
  *(v1 + 648) = *(a1 + 192);
  *(v1 + 664) = *(a1 + 208);
  v3 = *(a1 + 112);
  *(v1 + 552) = *(a1 + 96);
  *(v1 + 568) = v3;
  v4 = *(a1 + 144);
  *(v1 + 584) = *(a1 + 128);
  *(v1 + 600) = v4;
  v5 = *(a1 + 48);
  *(v1 + 488) = *(a1 + 32);
  *(v1 + 504) = v5;
  v6 = *(a1 + 80);
  *(v1 + 520) = *(a1 + 64);
  *(v1 + 536) = v6;
  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 456) = *a1;
  *(v1 + 472) = v8;
  return result;
}

uint64_t sub_214450394@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 696);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 688);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214450408(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t PhotosPoster.assetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 672);
  v7 = *(v2 + 680);
  v11 = *(v3 + 704);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 688), *(v3 + 696));

    *(v3 + 688) = a1;
    *(v3 + 696) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*PhotosPoster.assetIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 688);
  *(v3 + 24) = v5;
  v6 = *(v1 + 696);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144506E0;
  }

  return result;
}

void sub_2144506E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 672);
    v11 = *(v3 + 680);
    v16 = *(v3 + 704);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 688) = v5;
      *(v12 + 696) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v6 = *(v3 + 672);
  v7 = *(v3 + 680);
  v16 = *(v3 + 704);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v6(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 688) = v5;
  *(v8 + 696) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_2144508C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 680);
  v3 = *(a1 + 688);
  v4 = *(a1 + 696);
  v5 = *(a1 + 704);
  *a2 = *(a1 + 672);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21445091C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 680);
  v9 = *(a2 + 688);
  v10 = *(a2 + 696);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 672) = v4;
  *(a2 + 680) = v3;
  *(a2 + 688) = v5;
  *(a2 + 696) = v6;
  *(a2 + 704) = v7;
  return result;
}

void (*PhotosPoster.$assetIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 680);
  v6 = *(v1 + 688);
  v7 = *(v1 + 696);
  v8 = *(v1 + 704);
  *v4 = *(v1 + 672);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214450A58;
}

void sub_214450A58(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 680);
  v10 = *(v3 + 688);
  v11 = *(v3 + 696);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v10, v11);
    *(v3 + 672) = v5;
    *(v3 + 680) = v4;
    *(v3 + 688) = v7;
    *(v3 + 696) = v6;
    *(v3 + 704) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 680);

    sub_213FDC6D0(v10, v11);
    *(v3 + 672) = v5;
    *(v3 + 680) = v4;
    *(v3 + 688) = v7;
    *(v3 + 696) = v6;
    *(v3 + 704) = v8;
  }

  free(v2);
}

uint64_t PhotosPoster.faceRects.setter(uint64_t a1)
{
  v3 = *(v1 + 712);

  *(v1 + 712) = a1;
  return result;
}

uint64_t PhotosPoster.petRects.setter(uint64_t a1)
{
  v3 = *(v1 + 720);

  *(v1 + 720) = a1;
  return result;
}

uint64_t (*sub_214450C24(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214450CC0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t (*sub_214450D5C(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214450DF8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_214450E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214450FD8(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214451074(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_21445110C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 64))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 56);
  }

  return result;
}

uint64_t (*sub_214451190(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  if (*(v1 + 64))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 56);
    return sub_214451218;
  }

  return result;
}

uint64_t sub_214451244(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a2 + 48);

  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 65) = v7;
  return result;
}

void (*sub_2144512B0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 65);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214451348;
}

void sub_214451348(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(v3 + 48);
  if (a2)
  {
    v10 = (*a1)[1];

    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v6;
    *(v3 + 64) = v7;
    *(v3 + 65) = v8;
    v11 = v2[1];
  }

  else
  {
    v12 = *(v3 + 48);

    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v6;
    *(v3 + 64) = v7;
    *(v3 + 65) = v8;
  }

  free(v2);
}

uint64_t sub_2144513F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 32);
  return sub_21431C5DC(v2);
}

__n128 sub_214451410(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  sub_21431E10C(*v1);
  result = *a1;
  v9 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v9;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_214451478@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10 = v3;
  v11 = *(v1 + 104);
  v4 = v11;
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_213FB2E54(v8, v7, &qword_27C90AAB8, &qword_2146F6090);
}

__n128 sub_2144514DC(__int128 *a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v8[2] = *(v1 + 72);
  v8[3] = v4;
  v9 = *(v1 + 104);
  v8[0] = *(v1 + 40);
  v8[1] = v3;
  sub_213FB2DF4(v8, &qword_27C90AAB8, &qword_2146F6090);
  v5 = *a1;
  *(v1 + 56) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 72) = result;
  *(v1 + 88) = v7;
  *(v1 + 104) = *(a1 + 32);
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_21445157C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v9 = *(v1 + 144);
  v10 = v2;
  v11 = *(v1 + 176);
  v3 = v11;
  v4 = *(v1 + 128);
  v8[0] = *(v1 + 112);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_213FB2E54(v8, v7, &qword_27C90AAB8, &qword_2146F6090);
}

__n128 sub_2144515D8(uint64_t a1)
{
  v3 = *(v1 + 160);
  v7[2] = *(v1 + 144);
  v7[3] = v3;
  v8 = *(v1 + 176);
  v4 = *(v1 + 128);
  v7[0] = *(v1 + 112);
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C90AAB8, &qword_2146F6090);
  v5 = *(a1 + 48);
  *(v1 + 144) = *(a1 + 32);
  *(v1 + 160) = v5;
  *(v1 + 176) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = result;
  return result;
}

uint64_t sub_214451668@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v9 = *(v1 + 216);
  v10 = v3;
  v11 = *(v1 + 248);
  v4 = v11;
  v8[0] = *(v1 + 184);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_213FB2E54(v8, v7, &qword_27C90AAB8, &qword_2146F6090);
}

__n128 sub_2144516CC(__int128 *a1)
{
  v3 = *(v1 + 200);
  v4 = *(v1 + 232);
  v8[2] = *(v1 + 216);
  v8[3] = v4;
  v9 = *(v1 + 248);
  v8[0] = *(v1 + 184);
  v8[1] = v3;
  sub_213FB2DF4(v8, &qword_27C90AAB8, &qword_2146F6090);
  v5 = *a1;
  *(v1 + 200) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 216) = result;
  *(v1 + 232) = v7;
  *(v1 + 248) = *(a1 + 32);
  *(v1 + 184) = v5;
  return result;
}

uint64_t sub_21445176C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[11];
  v35 = v1[12];
  v36 = v2;
  v4 = v1[13];
  v37[0] = v1[14];
  *(v37 + 10) = *(v1 + 234);
  v5 = v1[9];
  v7 = v1[7];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v8 = v1[9];
  v9 = v1[11];
  v33 = v1[10];
  v10 = v33;
  v34 = v9;
  v11 = v1[5];
  v13 = v1[3];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v14 = v1[5];
  v15 = v1[7];
  v29 = v1[6];
  v16 = v29;
  v30 = v15;
  v17 = v1[1];
  v24[0] = *v1;
  v24[1] = v17;
  v18 = v1[3];
  v20 = *v1;
  v19 = v1[1];
  v25 = v1[2];
  v21 = v25;
  v26 = v18;
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[14];
  *(a1 + 234) = *(v1 + 234);
  a1[8] = v6;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v3;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v7;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v13;
  return sub_2142FCC0C(v24, &v23);
}

__n128 sub_214451830(uint64_t a1)
{
  v3 = v1[13];
  v18[12] = v1[12];
  v18[13] = v3;
  v19[0] = v1[14];
  *(v19 + 10) = *(v1 + 234);
  v4 = v1[9];
  v18[8] = v1[8];
  v18[9] = v4;
  v5 = v1[11];
  v18[10] = v1[10];
  v18[11] = v5;
  v6 = v1[5];
  v18[4] = v1[4];
  v18[5] = v6;
  v7 = v1[7];
  v18[6] = v1[6];
  v18[7] = v7;
  v8 = v1[1];
  v18[0] = *v1;
  v18[1] = v8;
  v9 = v1[3];
  v18[2] = v1[2];
  v18[3] = v9;
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[12] = *(a1 + 192);
  v1[13] = v10;
  v1[14] = *(a1 + 224);
  *(v1 + 234) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v11;
  v12 = *(a1 + 176);
  v1[10] = *(a1 + 160);
  v1[11] = v12;
  v13 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v13;
  v14 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v14;
  v15 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v17;
  return result;
}

uint64_t sub_214451910@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[29];
  v3 = v1[27];
  v35 = v1[28];
  v36 = v2;
  v4 = v1[29];
  v37[0] = v1[30];
  v5 = v1[25];
  v7 = v1[23];
  v31 = v1[24];
  v6 = v31;
  v32 = v5;
  v8 = v1[25];
  v9 = v1[27];
  v33 = v1[26];
  v10 = v33;
  v34 = v9;
  v11 = v1[21];
  v13 = v1[19];
  v27 = v1[20];
  v12 = v27;
  v28 = v11;
  v14 = v1[21];
  v15 = v1[23];
  v29 = v1[22];
  v16 = v29;
  v30 = v15;
  v17 = v1[17];
  v24[0] = v1[16];
  v24[1] = v17;
  v18 = v1[19];
  v20 = v1[16];
  v19 = v1[17];
  v25 = v1[18];
  v21 = v25;
  v26 = v18;
  *(v37 + 10) = *(v1 + 490);
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[30];
  *(a1 + 234) = *(v1 + 490);
  a1[8] = v6;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v3;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v7;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v13;
  return sub_2142FCC0C(v24, &v23);
}

__n128 sub_2144519D8(uint64_t a1)
{
  v3 = v1[29];
  v18[12] = v1[28];
  v18[13] = v3;
  v19[0] = v1[30];
  v4 = v1[25];
  v18[8] = v1[24];
  v18[9] = v4;
  v5 = v1[27];
  v18[10] = v1[26];
  v18[11] = v5;
  v6 = v1[21];
  v18[4] = v1[20];
  v18[5] = v6;
  v7 = v1[23];
  v18[6] = v1[22];
  v18[7] = v7;
  v8 = v1[17];
  v18[0] = v1[16];
  v18[1] = v8;
  v9 = v1[19];
  v18[2] = v1[18];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 490);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[28] = *(a1 + 192);
  v1[29] = v10;
  v1[30] = *(a1 + 224);
  *(v1 + 490) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[24] = *(a1 + 128);
  v1[25] = v11;
  v12 = *(a1 + 176);
  v1[26] = *(a1 + 160);
  v1[27] = v12;
  v13 = *(a1 + 80);
  v1[20] = *(a1 + 64);
  v1[21] = v13;
  v14 = *(a1 + 112);
  v1[22] = *(a1 + 96);
  v1[23] = v14;
  v15 = *(a1 + 16);
  v1[16] = *a1;
  v1[17] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[18] = result;
  v1[19] = v17;
  return result;
}

uint64_t sub_214451AC4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[45];
  v3 = v1[43];
  v35 = v1[44];
  v36 = v2;
  v4 = v1[45];
  v37[0] = v1[46];
  v5 = v1[41];
  v7 = v1[39];
  v31 = v1[40];
  v6 = v31;
  v32 = v5;
  v8 = v1[41];
  v9 = v1[43];
  v33 = v1[42];
  v10 = v33;
  v34 = v9;
  v11 = v1[37];
  v13 = v1[35];
  v27 = v1[36];
  v12 = v27;
  v28 = v11;
  v14 = v1[37];
  v15 = v1[39];
  v29 = v1[38];
  v16 = v29;
  v30 = v15;
  v17 = v1[33];
  v24[0] = v1[32];
  v24[1] = v17;
  v18 = v1[35];
  v20 = v1[32];
  v19 = v1[33];
  v25 = v1[34];
  v21 = v25;
  v26 = v18;
  *(v37 + 10) = *(v1 + 746);
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[46];
  *(a1 + 234) = *(v1 + 746);
  a1[8] = v6;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v3;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v7;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v13;
  return sub_2142FCC0C(v24, &v23);
}

__n128 sub_214451B8C(uint64_t a1)
{
  v3 = v1[45];
  v18[12] = v1[44];
  v18[13] = v3;
  v19[0] = v1[46];
  v4 = v1[41];
  v18[8] = v1[40];
  v18[9] = v4;
  v5 = v1[43];
  v18[10] = v1[42];
  v18[11] = v5;
  v6 = v1[37];
  v18[4] = v1[36];
  v18[5] = v6;
  v7 = v1[39];
  v18[6] = v1[38];
  v18[7] = v7;
  v8 = v1[33];
  v18[0] = v1[32];
  v18[1] = v8;
  v9 = v1[35];
  v18[2] = v1[34];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 746);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[44] = *(a1 + 192);
  v1[45] = v10;
  v1[46] = *(a1 + 224);
  *(v1 + 746) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[40] = *(a1 + 128);
  v1[41] = v11;
  v12 = *(a1 + 176);
  v1[42] = *(a1 + 160);
  v1[43] = v12;
  v13 = *(a1 + 80);
  v1[36] = *(a1 + 64);
  v1[37] = v13;
  v14 = *(a1 + 112);
  v1[38] = *(a1 + 96);
  v1[39] = v14;
  v15 = *(a1 + 16);
  v1[32] = *a1;
  v1[33] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[34] = result;
  v1[35] = v17;
  return result;
}

uint64_t sub_214451C78@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[61];
  v3 = v1[59];
  v35 = v1[60];
  v36 = v2;
  v4 = v1[61];
  v37[0] = v1[62];
  v5 = v1[57];
  v7 = v1[55];
  v31 = v1[56];
  v6 = v31;
  v32 = v5;
  v8 = v1[57];
  v9 = v1[59];
  v33 = v1[58];
  v10 = v33;
  v34 = v9;
  v11 = v1[53];
  v13 = v1[51];
  v27 = v1[52];
  v12 = v27;
  v28 = v11;
  v14 = v1[53];
  v15 = v1[55];
  v29 = v1[54];
  v16 = v29;
  v30 = v15;
  v17 = v1[49];
  v24[0] = v1[48];
  v24[1] = v17;
  v18 = v1[51];
  v20 = v1[48];
  v19 = v1[49];
  v25 = v1[50];
  v21 = v25;
  v26 = v18;
  *(v37 + 10) = *(v1 + 1002);
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[62];
  *(a1 + 234) = *(v1 + 1002);
  a1[8] = v6;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v3;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v7;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v13;
  return sub_2142FCC0C(v24, &v23);
}

__n128 sub_214451D40(uint64_t a1)
{
  v3 = v1[61];
  v18[12] = v1[60];
  v18[13] = v3;
  v19[0] = v1[62];
  v4 = v1[57];
  v18[8] = v1[56];
  v18[9] = v4;
  v5 = v1[59];
  v18[10] = v1[58];
  v18[11] = v5;
  v6 = v1[53];
  v18[4] = v1[52];
  v18[5] = v6;
  v7 = v1[55];
  v18[6] = v1[54];
  v18[7] = v7;
  v8 = v1[49];
  v18[0] = v1[48];
  v18[1] = v8;
  v9 = v1[51];
  v18[2] = v1[50];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 1002);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[60] = *(a1 + 192);
  v1[61] = v10;
  v1[62] = *(a1 + 224);
  *(v1 + 1002) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[56] = *(a1 + 128);
  v1[57] = v11;
  v12 = *(a1 + 176);
  v1[58] = *(a1 + 160);
  v1[59] = v12;
  v13 = *(a1 + 80);
  v1[52] = *(a1 + 64);
  v1[53] = v13;
  v14 = *(a1 + 112);
  v1[54] = *(a1 + 96);
  v1[55] = v14;
  v15 = *(a1 + 16);
  v1[48] = *a1;
  v1[49] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[50] = result;
  v1[51] = v17;
  return result;
}

uint64_t sub_214451E2C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[77];
  v18[12] = v1[76];
  v18[13] = v2;
  v19[0] = v1[78];
  v3 = v1[73];
  v18[8] = v1[72];
  v18[9] = v3;
  v4 = v1[75];
  v18[10] = v1[74];
  v18[11] = v4;
  v5 = v1[69];
  v18[4] = v1[68];
  v18[5] = v5;
  v6 = v1[71];
  v18[6] = v1[70];
  v18[7] = v6;
  v7 = v1[65];
  v18[0] = v1[64];
  v18[1] = v7;
  v8 = v1[67];
  v18[2] = v1[66];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 1258);
  v9 = v1[77];
  a1[12] = v1[76];
  a1[13] = v9;
  a1[14] = v1[78];
  *(a1 + 234) = *(v1 + 1258);
  v10 = v1[73];
  a1[8] = v1[72];
  a1[9] = v10;
  v11 = v1[75];
  a1[10] = v1[74];
  a1[11] = v11;
  v12 = v1[69];
  a1[4] = v1[68];
  a1[5] = v12;
  v13 = v1[71];
  a1[6] = v1[70];
  a1[7] = v13;
  v14 = v1[65];
  *a1 = v1[64];
  a1[1] = v14;
  v15 = v1[67];
  a1[2] = v1[66];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214451F2C(uint64_t a1)
{
  v3 = v1[77];
  v18[12] = v1[76];
  v18[13] = v3;
  v19[0] = v1[78];
  v4 = v1[73];
  v18[8] = v1[72];
  v18[9] = v4;
  v5 = v1[75];
  v18[10] = v1[74];
  v18[11] = v5;
  v6 = v1[69];
  v18[4] = v1[68];
  v18[5] = v6;
  v7 = v1[71];
  v18[6] = v1[70];
  v18[7] = v7;
  v8 = v1[65];
  v18[0] = v1[64];
  v18[1] = v8;
  v9 = v1[67];
  v18[2] = v1[66];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 1258);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[76] = *(a1 + 192);
  v1[77] = v10;
  v1[78] = *(a1 + 224);
  *(v1 + 1258) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[72] = *(a1 + 128);
  v1[73] = v11;
  v12 = *(a1 + 176);
  v1[74] = *(a1 + 160);
  v1[75] = v12;
  v13 = *(a1 + 80);
  v1[68] = *(a1 + 64);
  v1[69] = v13;
  v14 = *(a1 + 112);
  v1[70] = *(a1 + 96);
  v1[71] = v14;
  v15 = *(a1 + 16);
  v1[64] = *a1;
  v1[65] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[66] = result;
  v1[67] = v17;
  return result;
}

uint64_t sub_214452050@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[93];
  v18[12] = v1[92];
  v18[13] = v2;
  v19[0] = v1[94];
  v3 = v1[89];
  v18[8] = v1[88];
  v18[9] = v3;
  v4 = v1[91];
  v18[10] = v1[90];
  v18[11] = v4;
  v5 = v1[85];
  v18[4] = v1[84];
  v18[5] = v5;
  v6 = v1[87];
  v18[6] = v1[86];
  v18[7] = v6;
  v7 = v1[81];
  v18[0] = v1[80];
  v18[1] = v7;
  v8 = v1[83];
  v18[2] = v1[82];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 1514);
  v9 = v1[93];
  a1[12] = v1[92];
  a1[13] = v9;
  a1[14] = v1[94];
  *(a1 + 234) = *(v1 + 1514);
  v10 = v1[89];
  a1[8] = v1[88];
  a1[9] = v10;
  v11 = v1[91];
  a1[10] = v1[90];
  a1[11] = v11;
  v12 = v1[85];
  a1[4] = v1[84];
  a1[5] = v12;
  v13 = v1[87];
  a1[6] = v1[86];
  a1[7] = v13;
  v14 = v1[81];
  *a1 = v1[80];
  a1[1] = v14;
  v15 = v1[83];
  a1[2] = v1[82];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214452150(uint64_t a1)
{
  v3 = v1[93];
  v18[12] = v1[92];
  v18[13] = v3;
  v19[0] = v1[94];
  v4 = v1[89];
  v18[8] = v1[88];
  v18[9] = v4;
  v5 = v1[91];
  v18[10] = v1[90];
  v18[11] = v5;
  v6 = v1[85];
  v18[4] = v1[84];
  v18[5] = v6;
  v7 = v1[87];
  v18[6] = v1[86];
  v18[7] = v7;
  v8 = v1[81];
  v18[0] = v1[80];
  v18[1] = v8;
  v9 = v1[83];
  v18[2] = v1[82];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 1514);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[92] = *(a1 + 192);
  v1[93] = v10;
  v1[94] = *(a1 + 224);
  *(v1 + 1514) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[88] = *(a1 + 128);
  v1[89] = v11;
  v12 = *(a1 + 176);
  v1[90] = *(a1 + 160);
  v1[91] = v12;
  v13 = *(a1 + 80);
  v1[84] = *(a1 + 64);
  v1[85] = v13;
  v14 = *(a1 + 112);
  v1[86] = *(a1 + 96);
  v1[87] = v14;
  v15 = *(a1 + 16);
  v1[80] = *a1;
  v1[81] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[82] = result;
  v1[83] = v17;
  return result;
}

uint64_t sub_214452274@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[109];
  v18[12] = v1[108];
  v18[13] = v2;
  v19[0] = v1[110];
  v3 = v1[105];
  v18[8] = v1[104];
  v18[9] = v3;
  v4 = v1[107];
  v18[10] = v1[106];
  v18[11] = v4;
  v5 = v1[101];
  v18[4] = v1[100];
  v18[5] = v5;
  v6 = v1[103];
  v18[6] = v1[102];
  v18[7] = v6;
  v7 = v1[97];
  v18[0] = v1[96];
  v18[1] = v7;
  v8 = v1[99];
  v18[2] = v1[98];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 1770);
  v9 = v1[109];
  a1[12] = v1[108];
  a1[13] = v9;
  a1[14] = v1[110];
  *(a1 + 234) = *(v1 + 1770);
  v10 = v1[105];
  a1[8] = v1[104];
  a1[9] = v10;
  v11 = v1[107];
  a1[10] = v1[106];
  a1[11] = v11;
  v12 = v1[101];
  a1[4] = v1[100];
  a1[5] = v12;
  v13 = v1[103];
  a1[6] = v1[102];
  a1[7] = v13;
  v14 = v1[97];
  *a1 = v1[96];
  a1[1] = v14;
  v15 = v1[99];
  a1[2] = v1[98];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214452374(uint64_t a1)
{
  v3 = v1[109];
  v18[12] = v1[108];
  v18[13] = v3;
  v19[0] = v1[110];
  v4 = v1[105];
  v18[8] = v1[104];
  v18[9] = v4;
  v5 = v1[107];
  v18[10] = v1[106];
  v18[11] = v5;
  v6 = v1[101];
  v18[4] = v1[100];
  v18[5] = v6;
  v7 = v1[103];
  v18[6] = v1[102];
  v18[7] = v7;
  v8 = v1[97];
  v18[0] = v1[96];
  v18[1] = v8;
  v9 = v1[99];
  v18[2] = v1[98];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 1770);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[108] = *(a1 + 192);
  v1[109] = v10;
  v1[110] = *(a1 + 224);
  *(v1 + 1770) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[104] = *(a1 + 128);
  v1[105] = v11;
  v12 = *(a1 + 176);
  v1[106] = *(a1 + 160);
  v1[107] = v12;
  v13 = *(a1 + 80);
  v1[100] = *(a1 + 64);
  v1[101] = v13;
  v14 = *(a1 + 112);
  v1[102] = *(a1 + 96);
  v1[103] = v14;
  v15 = *(a1 + 16);
  v1[96] = *a1;
  v1[97] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[98] = result;
  v1[99] = v17;
  return result;
}

uint64_t sub_214452498@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[125];
  v18[12] = v1[124];
  v18[13] = v2;
  v19[0] = v1[126];
  v3 = v1[121];
  v18[8] = v1[120];
  v18[9] = v3;
  v4 = v1[123];
  v18[10] = v1[122];
  v18[11] = v4;
  v5 = v1[117];
  v18[4] = v1[116];
  v18[5] = v5;
  v6 = v1[119];
  v18[6] = v1[118];
  v18[7] = v6;
  v7 = v1[113];
  v18[0] = v1[112];
  v18[1] = v7;
  v8 = v1[115];
  v18[2] = v1[114];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 2026);
  v9 = v1[125];
  a1[12] = v1[124];
  a1[13] = v9;
  a1[14] = v1[126];
  *(a1 + 234) = *(v1 + 2026);
  v10 = v1[121];
  a1[8] = v1[120];
  a1[9] = v10;
  v11 = v1[123];
  a1[10] = v1[122];
  a1[11] = v11;
  v12 = v1[117];
  a1[4] = v1[116];
  a1[5] = v12;
  v13 = v1[119];
  a1[6] = v1[118];
  a1[7] = v13;
  v14 = v1[113];
  *a1 = v1[112];
  a1[1] = v14;
  v15 = v1[115];
  a1[2] = v1[114];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214452598(uint64_t a1)
{
  v3 = v1[125];
  v18[12] = v1[124];
  v18[13] = v3;
  v19[0] = v1[126];
  v4 = v1[121];
  v18[8] = v1[120];
  v18[9] = v4;
  v5 = v1[123];
  v18[10] = v1[122];
  v18[11] = v5;
  v6 = v1[117];
  v18[4] = v1[116];
  v18[5] = v6;
  v7 = v1[119];
  v18[6] = v1[118];
  v18[7] = v7;
  v8 = v1[113];
  v18[0] = v1[112];
  v18[1] = v8;
  v9 = v1[115];
  v18[2] = v1[114];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 2026);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[124] = *(a1 + 192);
  v1[125] = v10;
  v1[126] = *(a1 + 224);
  *(v1 + 2026) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[120] = *(a1 + 128);
  v1[121] = v11;
  v12 = *(a1 + 176);
  v1[122] = *(a1 + 160);
  v1[123] = v12;
  v13 = *(a1 + 80);
  v1[116] = *(a1 + 64);
  v1[117] = v13;
  v14 = *(a1 + 112);
  v1[118] = *(a1 + 96);
  v1[119] = v14;
  v15 = *(a1 + 16);
  v1[112] = *a1;
  v1[113] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[114] = result;
  v1[115] = v17;
  return result;
}

uint64_t sub_2144526BC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[141];
  v18[12] = v1[140];
  v18[13] = v2;
  v19[0] = v1[142];
  v3 = v1[137];
  v18[8] = v1[136];
  v18[9] = v3;
  v4 = v1[139];
  v18[10] = v1[138];
  v18[11] = v4;
  v5 = v1[133];
  v18[4] = v1[132];
  v18[5] = v5;
  v6 = v1[135];
  v18[6] = v1[134];
  v18[7] = v6;
  v7 = v1[129];
  v18[0] = v1[128];
  v18[1] = v7;
  v8 = v1[131];
  v18[2] = v1[130];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 2282);
  v9 = v1[141];
  a1[12] = v1[140];
  a1[13] = v9;
  a1[14] = v1[142];
  *(a1 + 234) = *(v1 + 2282);
  v10 = v1[137];
  a1[8] = v1[136];
  a1[9] = v10;
  v11 = v1[139];
  a1[10] = v1[138];
  a1[11] = v11;
  v12 = v1[133];
  a1[4] = v1[132];
  a1[5] = v12;
  v13 = v1[135];
  a1[6] = v1[134];
  a1[7] = v13;
  v14 = v1[129];
  *a1 = v1[128];
  a1[1] = v14;
  v15 = v1[131];
  a1[2] = v1[130];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144527BC(uint64_t a1)
{
  v3 = v1[141];
  v18[12] = v1[140];
  v18[13] = v3;
  v19[0] = v1[142];
  v4 = v1[137];
  v18[8] = v1[136];
  v18[9] = v4;
  v5 = v1[139];
  v18[10] = v1[138];
  v18[11] = v5;
  v6 = v1[133];
  v18[4] = v1[132];
  v18[5] = v6;
  v7 = v1[135];
  v18[6] = v1[134];
  v18[7] = v7;
  v8 = v1[129];
  v18[0] = v1[128];
  v18[1] = v8;
  v9 = v1[131];
  v18[2] = v1[130];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 2282);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[140] = *(a1 + 192);
  v1[141] = v10;
  v1[142] = *(a1 + 224);
  *(v1 + 2282) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[136] = *(a1 + 128);
  v1[137] = v11;
  v12 = *(a1 + 176);
  v1[138] = *(a1 + 160);
  v1[139] = v12;
  v13 = *(a1 + 80);
  v1[132] = *(a1 + 64);
  v1[133] = v13;
  v14 = *(a1 + 112);
  v1[134] = *(a1 + 96);
  v1[135] = v14;
  v15 = *(a1 + 16);
  v1[128] = *a1;
  v1[129] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[130] = result;
  v1[131] = v17;
  return result;
}

uint64_t sub_2144528E0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[157];
  v18[12] = v1[156];
  v18[13] = v2;
  v19[0] = v1[158];
  v3 = v1[153];
  v18[8] = v1[152];
  v18[9] = v3;
  v4 = v1[155];
  v18[10] = v1[154];
  v18[11] = v4;
  v5 = v1[149];
  v18[4] = v1[148];
  v18[5] = v5;
  v6 = v1[151];
  v18[6] = v1[150];
  v18[7] = v6;
  v7 = v1[145];
  v18[0] = v1[144];
  v18[1] = v7;
  v8 = v1[147];
  v18[2] = v1[146];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 2538);
  v9 = v1[157];
  a1[12] = v1[156];
  a1[13] = v9;
  a1[14] = v1[158];
  *(a1 + 234) = *(v1 + 2538);
  v10 = v1[153];
  a1[8] = v1[152];
  a1[9] = v10;
  v11 = v1[155];
  a1[10] = v1[154];
  a1[11] = v11;
  v12 = v1[149];
  a1[4] = v1[148];
  a1[5] = v12;
  v13 = v1[151];
  a1[6] = v1[150];
  a1[7] = v13;
  v14 = v1[145];
  *a1 = v1[144];
  a1[1] = v14;
  v15 = v1[147];
  a1[2] = v1[146];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144529E0(uint64_t a1)
{
  v3 = v1[157];
  v18[12] = v1[156];
  v18[13] = v3;
  v19[0] = v1[158];
  v4 = v1[153];
  v18[8] = v1[152];
  v18[9] = v4;
  v5 = v1[155];
  v18[10] = v1[154];
  v18[11] = v5;
  v6 = v1[149];
  v18[4] = v1[148];
  v18[5] = v6;
  v7 = v1[151];
  v18[6] = v1[150];
  v18[7] = v7;
  v8 = v1[145];
  v18[0] = v1[144];
  v18[1] = v8;
  v9 = v1[147];
  v18[2] = v1[146];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 2538);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[156] = *(a1 + 192);
  v1[157] = v10;
  v1[158] = *(a1 + 224);
  *(v1 + 2538) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[152] = *(a1 + 128);
  v1[153] = v11;
  v12 = *(a1 + 176);
  v1[154] = *(a1 + 160);
  v1[155] = v12;
  v13 = *(a1 + 80);
  v1[148] = *(a1 + 64);
  v1[149] = v13;
  v14 = *(a1 + 112);
  v1[150] = *(a1 + 96);
  v1[151] = v14;
  v15 = *(a1 + 16);
  v1[144] = *a1;
  v1[145] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[146] = result;
  v1[147] = v17;
  return result;
}

uint64_t sub_214452B04@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[173];
  v18[12] = v1[172];
  v18[13] = v2;
  v19[0] = v1[174];
  v3 = v1[169];
  v18[8] = v1[168];
  v18[9] = v3;
  v4 = v1[171];
  v18[10] = v1[170];
  v18[11] = v4;
  v5 = v1[165];
  v18[4] = v1[164];
  v18[5] = v5;
  v6 = v1[167];
  v18[6] = v1[166];
  v18[7] = v6;
  v7 = v1[161];
  v18[0] = v1[160];
  v18[1] = v7;
  v8 = v1[163];
  v18[2] = v1[162];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 2794);
  v9 = v1[173];
  a1[12] = v1[172];
  a1[13] = v9;
  a1[14] = v1[174];
  *(a1 + 234) = *(v1 + 2794);
  v10 = v1[169];
  a1[8] = v1[168];
  a1[9] = v10;
  v11 = v1[171];
  a1[10] = v1[170];
  a1[11] = v11;
  v12 = v1[165];
  a1[4] = v1[164];
  a1[5] = v12;
  v13 = v1[167];
  a1[6] = v1[166];
  a1[7] = v13;
  v14 = v1[161];
  *a1 = v1[160];
  a1[1] = v14;
  v15 = v1[163];
  a1[2] = v1[162];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214452C04(uint64_t a1)
{
  v3 = v1[173];
  v18[12] = v1[172];
  v18[13] = v3;
  v19[0] = v1[174];
  v4 = v1[169];
  v18[8] = v1[168];
  v18[9] = v4;
  v5 = v1[171];
  v18[10] = v1[170];
  v18[11] = v5;
  v6 = v1[165];
  v18[4] = v1[164];
  v18[5] = v6;
  v7 = v1[167];
  v18[6] = v1[166];
  v18[7] = v7;
  v8 = v1[161];
  v18[0] = v1[160];
  v18[1] = v8;
  v9 = v1[163];
  v18[2] = v1[162];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 2794);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[172] = *(a1 + 192);
  v1[173] = v10;
  v1[174] = *(a1 + 224);
  *(v1 + 2794) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[168] = *(a1 + 128);
  v1[169] = v11;
  v12 = *(a1 + 176);
  v1[170] = *(a1 + 160);
  v1[171] = v12;
  v13 = *(a1 + 80);
  v1[164] = *(a1 + 64);
  v1[165] = v13;
  v14 = *(a1 + 112);
  v1[166] = *(a1 + 96);
  v1[167] = v14;
  v15 = *(a1 + 16);
  v1[160] = *a1;
  v1[161] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[162] = result;
  v1[163] = v17;
  return result;
}

uint64_t sub_214452D28@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[189];
  v18[12] = v1[188];
  v18[13] = v2;
  v19[0] = v1[190];
  v3 = v1[185];
  v18[8] = v1[184];
  v18[9] = v3;
  v4 = v1[187];
  v18[10] = v1[186];
  v18[11] = v4;
  v5 = v1[181];
  v18[4] = v1[180];
  v18[5] = v5;
  v6 = v1[183];
  v18[6] = v1[182];
  v18[7] = v6;
  v7 = v1[177];
  v18[0] = v1[176];
  v18[1] = v7;
  v8 = v1[179];
  v18[2] = v1[178];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 3050);
  v9 = v1[189];
  a1[12] = v1[188];
  a1[13] = v9;
  a1[14] = v1[190];
  *(a1 + 234) = *(v1 + 3050);
  v10 = v1[185];
  a1[8] = v1[184];
  a1[9] = v10;
  v11 = v1[187];
  a1[10] = v1[186];
  a1[11] = v11;
  v12 = v1[181];
  a1[4] = v1[180];
  a1[5] = v12;
  v13 = v1[183];
  a1[6] = v1[182];
  a1[7] = v13;
  v14 = v1[177];
  *a1 = v1[176];
  a1[1] = v14;
  v15 = v1[179];
  a1[2] = v1[178];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214452E28(uint64_t a1)
{
  v3 = v1[189];
  v18[12] = v1[188];
  v18[13] = v3;
  v19[0] = v1[190];
  v4 = v1[185];
  v18[8] = v1[184];
  v18[9] = v4;
  v5 = v1[187];
  v18[10] = v1[186];
  v18[11] = v5;
  v6 = v1[181];
  v18[4] = v1[180];
  v18[5] = v6;
  v7 = v1[183];
  v18[6] = v1[182];
  v18[7] = v7;
  v8 = v1[177];
  v18[0] = v1[176];
  v18[1] = v8;
  v9 = v1[179];
  v18[2] = v1[178];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 3050);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[188] = *(a1 + 192);
  v1[189] = v10;
  v1[190] = *(a1 + 224);
  *(v1 + 3050) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[184] = *(a1 + 128);
  v1[185] = v11;
  v12 = *(a1 + 176);
  v1[186] = *(a1 + 160);
  v1[187] = v12;
  v13 = *(a1 + 80);
  v1[180] = *(a1 + 64);
  v1[181] = v13;
  v14 = *(a1 + 112);
  v1[182] = *(a1 + 96);
  v1[183] = v14;
  v15 = *(a1 + 16);
  v1[176] = *a1;
  v1[177] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[178] = result;
  v1[179] = v17;
  return result;
}

uint64_t sub_214452F4C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[205];
  v18[12] = v1[204];
  v18[13] = v2;
  v19[0] = v1[206];
  v3 = v1[201];
  v18[8] = v1[200];
  v18[9] = v3;
  v4 = v1[203];
  v18[10] = v1[202];
  v18[11] = v4;
  v5 = v1[197];
  v18[4] = v1[196];
  v18[5] = v5;
  v6 = v1[199];
  v18[6] = v1[198];
  v18[7] = v6;
  v7 = v1[193];
  v18[0] = v1[192];
  v18[1] = v7;
  v8 = v1[195];
  v18[2] = v1[194];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 3306);
  v9 = v1[205];
  a1[12] = v1[204];
  a1[13] = v9;
  a1[14] = v1[206];
  *(a1 + 234) = *(v1 + 3306);
  v10 = v1[201];
  a1[8] = v1[200];
  a1[9] = v10;
  v11 = v1[203];
  a1[10] = v1[202];
  a1[11] = v11;
  v12 = v1[197];
  a1[4] = v1[196];
  a1[5] = v12;
  v13 = v1[199];
  a1[6] = v1[198];
  a1[7] = v13;
  v14 = v1[193];
  *a1 = v1[192];
  a1[1] = v14;
  v15 = v1[195];
  a1[2] = v1[194];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_21445304C(uint64_t a1)
{
  v3 = v1[205];
  v18[12] = v1[204];
  v18[13] = v3;
  v19[0] = v1[206];
  v4 = v1[201];
  v18[8] = v1[200];
  v18[9] = v4;
  v5 = v1[203];
  v18[10] = v1[202];
  v18[11] = v5;
  v6 = v1[197];
  v18[4] = v1[196];
  v18[5] = v6;
  v7 = v1[199];
  v18[6] = v1[198];
  v18[7] = v7;
  v8 = v1[193];
  v18[0] = v1[192];
  v18[1] = v8;
  v9 = v1[195];
  v18[2] = v1[194];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 3306);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[204] = *(a1 + 192);
  v1[205] = v10;
  v1[206] = *(a1 + 224);
  *(v1 + 3306) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[200] = *(a1 + 128);
  v1[201] = v11;
  v12 = *(a1 + 176);
  v1[202] = *(a1 + 160);
  v1[203] = v12;
  v13 = *(a1 + 80);
  v1[196] = *(a1 + 64);
  v1[197] = v13;
  v14 = *(a1 + 112);
  v1[198] = *(a1 + 96);
  v1[199] = v14;
  v15 = *(a1 + 16);
  v1[192] = *a1;
  v1[193] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[194] = result;
  v1[195] = v17;
  return result;
}

uint64_t sub_214453170@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[221];
  v18[12] = v1[220];
  v18[13] = v2;
  v19[0] = v1[222];
  v3 = v1[217];
  v18[8] = v1[216];
  v18[9] = v3;
  v4 = v1[219];
  v18[10] = v1[218];
  v18[11] = v4;
  v5 = v1[213];
  v18[4] = v1[212];
  v18[5] = v5;
  v6 = v1[215];
  v18[6] = v1[214];
  v18[7] = v6;
  v7 = v1[209];
  v18[0] = v1[208];
  v18[1] = v7;
  v8 = v1[211];
  v18[2] = v1[210];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 3562);
  v9 = v1[221];
  a1[12] = v1[220];
  a1[13] = v9;
  a1[14] = v1[222];
  *(a1 + 234) = *(v1 + 3562);
  v10 = v1[217];
  a1[8] = v1[216];
  a1[9] = v10;
  v11 = v1[219];
  a1[10] = v1[218];
  a1[11] = v11;
  v12 = v1[213];
  a1[4] = v1[212];
  a1[5] = v12;
  v13 = v1[215];
  a1[6] = v1[214];
  a1[7] = v13;
  v14 = v1[209];
  *a1 = v1[208];
  a1[1] = v14;
  v15 = v1[211];
  a1[2] = v1[210];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214453270(uint64_t a1)
{
  v3 = v1[221];
  v18[12] = v1[220];
  v18[13] = v3;
  v19[0] = v1[222];
  v4 = v1[217];
  v18[8] = v1[216];
  v18[9] = v4;
  v5 = v1[219];
  v18[10] = v1[218];
  v18[11] = v5;
  v6 = v1[213];
  v18[4] = v1[212];
  v18[5] = v6;
  v7 = v1[215];
  v18[6] = v1[214];
  v18[7] = v7;
  v8 = v1[209];
  v18[0] = v1[208];
  v18[1] = v8;
  v9 = v1[211];
  v18[2] = v1[210];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 3562);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[220] = *(a1 + 192);
  v1[221] = v10;
  v1[222] = *(a1 + 224);
  *(v1 + 3562) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[216] = *(a1 + 128);
  v1[217] = v11;
  v12 = *(a1 + 176);
  v1[218] = *(a1 + 160);
  v1[219] = v12;
  v13 = *(a1 + 80);
  v1[212] = *(a1 + 64);
  v1[213] = v13;
  v14 = *(a1 + 112);
  v1[214] = *(a1 + 96);
  v1[215] = v14;
  v15 = *(a1 + 16);
  v1[208] = *a1;
  v1[209] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[210] = result;
  v1[211] = v17;
  return result;
}

uint64_t sub_214453394@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[237];
  v18[12] = v1[236];
  v18[13] = v2;
  v19[0] = v1[238];
  v3 = v1[233];
  v18[8] = v1[232];
  v18[9] = v3;
  v4 = v1[235];
  v18[10] = v1[234];
  v18[11] = v4;
  v5 = v1[229];
  v18[4] = v1[228];
  v18[5] = v5;
  v6 = v1[231];
  v18[6] = v1[230];
  v18[7] = v6;
  v7 = v1[225];
  v18[0] = v1[224];
  v18[1] = v7;
  v8 = v1[227];
  v18[2] = v1[226];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 3818);
  v9 = v1[237];
  a1[12] = v1[236];
  a1[13] = v9;
  a1[14] = v1[238];
  *(a1 + 234) = *(v1 + 3818);
  v10 = v1[233];
  a1[8] = v1[232];
  a1[9] = v10;
  v11 = v1[235];
  a1[10] = v1[234];
  a1[11] = v11;
  v12 = v1[229];
  a1[4] = v1[228];
  a1[5] = v12;
  v13 = v1[231];
  a1[6] = v1[230];
  a1[7] = v13;
  v14 = v1[225];
  *a1 = v1[224];
  a1[1] = v14;
  v15 = v1[227];
  a1[2] = v1[226];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214453494(uint64_t a1)
{
  v3 = v1[237];
  v18[12] = v1[236];
  v18[13] = v3;
  v19[0] = v1[238];
  v4 = v1[233];
  v18[8] = v1[232];
  v18[9] = v4;
  v5 = v1[235];
  v18[10] = v1[234];
  v18[11] = v5;
  v6 = v1[229];
  v18[4] = v1[228];
  v18[5] = v6;
  v7 = v1[231];
  v18[6] = v1[230];
  v18[7] = v7;
  v8 = v1[225];
  v18[0] = v1[224];
  v18[1] = v8;
  v9 = v1[227];
  v18[2] = v1[226];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 3818);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[236] = *(a1 + 192);
  v1[237] = v10;
  v1[238] = *(a1 + 224);
  *(v1 + 3818) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[232] = *(a1 + 128);
  v1[233] = v11;
  v12 = *(a1 + 176);
  v1[234] = *(a1 + 160);
  v1[235] = v12;
  v13 = *(a1 + 80);
  v1[228] = *(a1 + 64);
  v1[229] = v13;
  v14 = *(a1 + 112);
  v1[230] = *(a1 + 96);
  v1[231] = v14;
  v15 = *(a1 + 16);
  v1[224] = *a1;
  v1[225] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[226] = result;
  v1[227] = v17;
  return result;
}

uint64_t sub_2144535B8@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[253];
  v18[12] = v1[252];
  v18[13] = v2;
  v19[0] = v1[254];
  v3 = v1[249];
  v18[8] = v1[248];
  v18[9] = v3;
  v4 = v1[251];
  v18[10] = v1[250];
  v18[11] = v4;
  v5 = v1[245];
  v18[4] = v1[244];
  v18[5] = v5;
  v6 = v1[247];
  v18[6] = v1[246];
  v18[7] = v6;
  v7 = v1[241];
  v18[0] = v1[240];
  v18[1] = v7;
  v8 = v1[243];
  v18[2] = v1[242];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 4074);
  v9 = v1[253];
  a1[12] = v1[252];
  a1[13] = v9;
  a1[14] = v1[254];
  *(a1 + 234) = *(v1 + 4074);
  v10 = v1[249];
  a1[8] = v1[248];
  a1[9] = v10;
  v11 = v1[251];
  a1[10] = v1[250];
  a1[11] = v11;
  v12 = v1[245];
  a1[4] = v1[244];
  a1[5] = v12;
  v13 = v1[247];
  a1[6] = v1[246];
  a1[7] = v13;
  v14 = v1[241];
  *a1 = v1[240];
  a1[1] = v14;
  v15 = v1[243];
  a1[2] = v1[242];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144536B8(uint64_t a1)
{
  v3 = v1[253];
  v18[12] = v1[252];
  v18[13] = v3;
  v19[0] = v1[254];
  v4 = v1[249];
  v18[8] = v1[248];
  v18[9] = v4;
  v5 = v1[251];
  v18[10] = v1[250];
  v18[11] = v5;
  v6 = v1[245];
  v18[4] = v1[244];
  v18[5] = v6;
  v7 = v1[247];
  v18[6] = v1[246];
  v18[7] = v7;
  v8 = v1[241];
  v18[0] = v1[240];
  v18[1] = v8;
  v9 = v1[243];
  v18[2] = v1[242];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 4074);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[252] = *(a1 + 192);
  v1[253] = v10;
  v1[254] = *(a1 + 224);
  *(v1 + 4074) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[248] = *(a1 + 128);
  v1[249] = v11;
  v12 = *(a1 + 176);
  v1[250] = *(a1 + 160);
  v1[251] = v12;
  v13 = *(a1 + 80);
  v1[244] = *(a1 + 64);
  v1[245] = v13;
  v14 = *(a1 + 112);
  v1[246] = *(a1 + 96);
  v1[247] = v14;
  v15 = *(a1 + 16);
  v1[240] = *a1;
  v1[241] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[242] = result;
  v1[243] = v17;
  return result;
}

uint64_t sub_2144537DC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[269];
  v18[12] = v1[268];
  v18[13] = v2;
  v19[0] = v1[270];
  v3 = v1[265];
  v18[8] = v1[264];
  v18[9] = v3;
  v4 = v1[267];
  v18[10] = v1[266];
  v18[11] = v4;
  v5 = v1[261];
  v18[4] = v1[260];
  v18[5] = v5;
  v6 = v1[263];
  v18[6] = v1[262];
  v18[7] = v6;
  v7 = v1[257];
  v18[0] = v1[256];
  v18[1] = v7;
  v8 = v1[259];
  v18[2] = v1[258];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 4330);
  v9 = v1[269];
  a1[12] = v1[268];
  a1[13] = v9;
  a1[14] = v1[270];
  *(a1 + 234) = *(v1 + 4330);
  v10 = v1[265];
  a1[8] = v1[264];
  a1[9] = v10;
  v11 = v1[267];
  a1[10] = v1[266];
  a1[11] = v11;
  v12 = v1[261];
  a1[4] = v1[260];
  a1[5] = v12;
  v13 = v1[263];
  a1[6] = v1[262];
  a1[7] = v13;
  v14 = v1[257];
  *a1 = v1[256];
  a1[1] = v14;
  v15 = v1[259];
  a1[2] = v1[258];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144538DC(uint64_t a1)
{
  v3 = v1[269];
  v18[12] = v1[268];
  v18[13] = v3;
  v19[0] = v1[270];
  v4 = v1[265];
  v18[8] = v1[264];
  v18[9] = v4;
  v5 = v1[267];
  v18[10] = v1[266];
  v18[11] = v5;
  v6 = v1[261];
  v18[4] = v1[260];
  v18[5] = v6;
  v7 = v1[263];
  v18[6] = v1[262];
  v18[7] = v7;
  v8 = v1[257];
  v18[0] = v1[256];
  v18[1] = v8;
  v9 = v1[259];
  v18[2] = v1[258];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 4330);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[268] = *(a1 + 192);
  v1[269] = v10;
  v1[270] = *(a1 + 224);
  *(v1 + 4330) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[264] = *(a1 + 128);
  v1[265] = v11;
  v12 = *(a1 + 176);
  v1[266] = *(a1 + 160);
  v1[267] = v12;
  v13 = *(a1 + 80);
  v1[260] = *(a1 + 64);
  v1[261] = v13;
  v14 = *(a1 + 112);
  v1[262] = *(a1 + 96);
  v1[263] = v14;
  v15 = *(a1 + 16);
  v1[256] = *a1;
  v1[257] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[258] = result;
  v1[259] = v17;
  return result;
}

uint64_t sub_214453A00@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[285];
  v18[12] = v1[284];
  v18[13] = v2;
  v19[0] = v1[286];
  v3 = v1[281];
  v18[8] = v1[280];
  v18[9] = v3;
  v4 = v1[283];
  v18[10] = v1[282];
  v18[11] = v4;
  v5 = v1[277];
  v18[4] = v1[276];
  v18[5] = v5;
  v6 = v1[279];
  v18[6] = v1[278];
  v18[7] = v6;
  v7 = v1[273];
  v18[0] = v1[272];
  v18[1] = v7;
  v8 = v1[275];
  v18[2] = v1[274];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 4586);
  v9 = v1[285];
  a1[12] = v1[284];
  a1[13] = v9;
  a1[14] = v1[286];
  *(a1 + 234) = *(v1 + 4586);
  v10 = v1[281];
  a1[8] = v1[280];
  a1[9] = v10;
  v11 = v1[283];
  a1[10] = v1[282];
  a1[11] = v11;
  v12 = v1[277];
  a1[4] = v1[276];
  a1[5] = v12;
  v13 = v1[279];
  a1[6] = v1[278];
  a1[7] = v13;
  v14 = v1[273];
  *a1 = v1[272];
  a1[1] = v14;
  v15 = v1[275];
  a1[2] = v1[274];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214453B04(uint64_t a1)
{
  v3 = v1[285];
  v18[12] = v1[284];
  v18[13] = v3;
  v19[0] = v1[286];
  v4 = v1[281];
  v18[8] = v1[280];
  v18[9] = v4;
  v5 = v1[283];
  v18[10] = v1[282];
  v18[11] = v5;
  v6 = v1[277];
  v18[4] = v1[276];
  v18[5] = v6;
  v7 = v1[279];
  v18[6] = v1[278];
  v18[7] = v7;
  v8 = v1[273];
  v18[0] = v1[272];
  v18[1] = v8;
  v9 = v1[275];
  v18[2] = v1[274];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 4586);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[284] = *(a1 + 192);
  v1[285] = v10;
  v1[286] = *(a1 + 224);
  *(v1 + 4586) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[280] = *(a1 + 128);
  v1[281] = v11;
  v12 = *(a1 + 176);
  v1[282] = *(a1 + 160);
  v1[283] = v12;
  v13 = *(a1 + 80);
  v1[276] = *(a1 + 64);
  v1[277] = v13;
  v14 = *(a1 + 112);
  v1[278] = *(a1 + 96);
  v1[279] = v14;
  v15 = *(a1 + 16);
  v1[272] = *a1;
  v1[273] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[274] = result;
  v1[275] = v17;
  return result;
}

uint64_t sub_214453C30@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[301];
  v18[12] = v1[300];
  v18[13] = v2;
  v19[0] = v1[302];
  v3 = v1[297];
  v18[8] = v1[296];
  v18[9] = v3;
  v4 = v1[299];
  v18[10] = v1[298];
  v18[11] = v4;
  v5 = v1[293];
  v18[4] = v1[292];
  v18[5] = v5;
  v6 = v1[295];
  v18[6] = v1[294];
  v18[7] = v6;
  v7 = v1[289];
  v18[0] = v1[288];
  v18[1] = v7;
  v8 = v1[291];
  v18[2] = v1[290];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 4842);
  v9 = v1[301];
  a1[12] = v1[300];
  a1[13] = v9;
  a1[14] = v1[302];
  *(a1 + 234) = *(v1 + 4842);
  v10 = v1[297];
  a1[8] = v1[296];
  a1[9] = v10;
  v11 = v1[299];
  a1[10] = v1[298];
  a1[11] = v11;
  v12 = v1[293];
  a1[4] = v1[292];
  a1[5] = v12;
  v13 = v1[295];
  a1[6] = v1[294];
  a1[7] = v13;
  v14 = v1[289];
  *a1 = v1[288];
  a1[1] = v14;
  v15 = v1[291];
  a1[2] = v1[290];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214453D34(uint64_t a1)
{
  v3 = v1[301];
  v18[12] = v1[300];
  v18[13] = v3;
  v19[0] = v1[302];
  v4 = v1[297];
  v18[8] = v1[296];
  v18[9] = v4;
  v5 = v1[299];
  v18[10] = v1[298];
  v18[11] = v5;
  v6 = v1[293];
  v18[4] = v1[292];
  v18[5] = v6;
  v7 = v1[295];
  v18[6] = v1[294];
  v18[7] = v7;
  v8 = v1[289];
  v18[0] = v1[288];
  v18[1] = v8;
  v9 = v1[291];
  v18[2] = v1[290];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 4842);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[300] = *(a1 + 192);
  v1[301] = v10;
  v1[302] = *(a1 + 224);
  *(v1 + 4842) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[296] = *(a1 + 128);
  v1[297] = v11;
  v12 = *(a1 + 176);
  v1[298] = *(a1 + 160);
  v1[299] = v12;
  v13 = *(a1 + 80);
  v1[292] = *(a1 + 64);
  v1[293] = v13;
  v14 = *(a1 + 112);
  v1[294] = *(a1 + 96);
  v1[295] = v14;
  v15 = *(a1 + 16);
  v1[288] = *a1;
  v1[289] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[290] = result;
  v1[291] = v17;
  return result;
}

uint64_t sub_214453E60@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[317];
  v18[12] = v1[316];
  v18[13] = v2;
  v19[0] = v1[318];
  v3 = v1[313];
  v18[8] = v1[312];
  v18[9] = v3;
  v4 = v1[315];
  v18[10] = v1[314];
  v18[11] = v4;
  v5 = v1[309];
  v18[4] = v1[308];
  v18[5] = v5;
  v6 = v1[311];
  v18[6] = v1[310];
  v18[7] = v6;
  v7 = v1[305];
  v18[0] = v1[304];
  v18[1] = v7;
  v8 = v1[307];
  v18[2] = v1[306];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 5098);
  v9 = v1[317];
  a1[12] = v1[316];
  a1[13] = v9;
  a1[14] = v1[318];
  *(a1 + 234) = *(v1 + 5098);
  v10 = v1[313];
  a1[8] = v1[312];
  a1[9] = v10;
  v11 = v1[315];
  a1[10] = v1[314];
  a1[11] = v11;
  v12 = v1[309];
  a1[4] = v1[308];
  a1[5] = v12;
  v13 = v1[311];
  a1[6] = v1[310];
  a1[7] = v13;
  v14 = v1[305];
  *a1 = v1[304];
  a1[1] = v14;
  v15 = v1[307];
  a1[2] = v1[306];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214453F64(uint64_t a1)
{
  v3 = v1[317];
  v18[12] = v1[316];
  v18[13] = v3;
  v19[0] = v1[318];
  v4 = v1[313];
  v18[8] = v1[312];
  v18[9] = v4;
  v5 = v1[315];
  v18[10] = v1[314];
  v18[11] = v5;
  v6 = v1[309];
  v18[4] = v1[308];
  v18[5] = v6;
  v7 = v1[311];
  v18[6] = v1[310];
  v18[7] = v7;
  v8 = v1[305];
  v18[0] = v1[304];
  v18[1] = v8;
  v9 = v1[307];
  v18[2] = v1[306];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 5098);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[316] = *(a1 + 192);
  v1[317] = v10;
  v1[318] = *(a1 + 224);
  *(v1 + 5098) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[312] = *(a1 + 128);
  v1[313] = v11;
  v12 = *(a1 + 176);
  v1[314] = *(a1 + 160);
  v1[315] = v12;
  v13 = *(a1 + 80);
  v1[308] = *(a1 + 64);
  v1[309] = v13;
  v14 = *(a1 + 112);
  v1[310] = *(a1 + 96);
  v1[311] = v14;
  v15 = *(a1 + 16);
  v1[304] = *a1;
  v1[305] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[306] = result;
  v1[307] = v17;
  return result;
}

uint64_t sub_214454090@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[333];
  v18[12] = v1[332];
  v18[13] = v2;
  v19[0] = v1[334];
  v3 = v1[329];
  v18[8] = v1[328];
  v18[9] = v3;
  v4 = v1[331];
  v18[10] = v1[330];
  v18[11] = v4;
  v5 = v1[325];
  v18[4] = v1[324];
  v18[5] = v5;
  v6 = v1[327];
  v18[6] = v1[326];
  v18[7] = v6;
  v7 = v1[321];
  v18[0] = v1[320];
  v18[1] = v7;
  v8 = v1[323];
  v18[2] = v1[322];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 5354);
  v9 = v1[333];
  a1[12] = v1[332];
  a1[13] = v9;
  a1[14] = v1[334];
  *(a1 + 234) = *(v1 + 5354);
  v10 = v1[329];
  a1[8] = v1[328];
  a1[9] = v10;
  v11 = v1[331];
  a1[10] = v1[330];
  a1[11] = v11;
  v12 = v1[325];
  a1[4] = v1[324];
  a1[5] = v12;
  v13 = v1[327];
  a1[6] = v1[326];
  a1[7] = v13;
  v14 = v1[321];
  *a1 = v1[320];
  a1[1] = v14;
  v15 = v1[323];
  a1[2] = v1[322];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214454194(uint64_t a1)
{
  v3 = v1[333];
  v18[12] = v1[332];
  v18[13] = v3;
  v19[0] = v1[334];
  v4 = v1[329];
  v18[8] = v1[328];
  v18[9] = v4;
  v5 = v1[331];
  v18[10] = v1[330];
  v18[11] = v5;
  v6 = v1[325];
  v18[4] = v1[324];
  v18[5] = v6;
  v7 = v1[327];
  v18[6] = v1[326];
  v18[7] = v7;
  v8 = v1[321];
  v18[0] = v1[320];
  v18[1] = v8;
  v9 = v1[323];
  v18[2] = v1[322];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 5354);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[332] = *(a1 + 192);
  v1[333] = v10;
  v1[334] = *(a1 + 224);
  *(v1 + 5354) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[328] = *(a1 + 128);
  v1[329] = v11;
  v12 = *(a1 + 176);
  v1[330] = *(a1 + 160);
  v1[331] = v12;
  v13 = *(a1 + 80);
  v1[324] = *(a1 + 64);
  v1[325] = v13;
  v14 = *(a1 + 112);
  v1[326] = *(a1 + 96);
  v1[327] = v14;
  v15 = *(a1 + 16);
  v1[320] = *a1;
  v1[321] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[322] = result;
  v1[323] = v17;
  return result;
}

uint64_t sub_2144542C0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[349];
  v18[12] = v1[348];
  v18[13] = v2;
  v19[0] = v1[350];
  v3 = v1[345];
  v18[8] = v1[344];
  v18[9] = v3;
  v4 = v1[347];
  v18[10] = v1[346];
  v18[11] = v4;
  v5 = v1[341];
  v18[4] = v1[340];
  v18[5] = v5;
  v6 = v1[343];
  v18[6] = v1[342];
  v18[7] = v6;
  v7 = v1[337];
  v18[0] = v1[336];
  v18[1] = v7;
  v8 = v1[339];
  v18[2] = v1[338];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 5610);
  v9 = v1[349];
  a1[12] = v1[348];
  a1[13] = v9;
  a1[14] = v1[350];
  *(a1 + 234) = *(v1 + 5610);
  v10 = v1[345];
  a1[8] = v1[344];
  a1[9] = v10;
  v11 = v1[347];
  a1[10] = v1[346];
  a1[11] = v11;
  v12 = v1[341];
  a1[4] = v1[340];
  a1[5] = v12;
  v13 = v1[343];
  a1[6] = v1[342];
  a1[7] = v13;
  v14 = v1[337];
  *a1 = v1[336];
  a1[1] = v14;
  v15 = v1[339];
  a1[2] = v1[338];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144543C4(uint64_t a1)
{
  v3 = v1[349];
  v18[12] = v1[348];
  v18[13] = v3;
  v19[0] = v1[350];
  v4 = v1[345];
  v18[8] = v1[344];
  v18[9] = v4;
  v5 = v1[347];
  v18[10] = v1[346];
  v18[11] = v5;
  v6 = v1[341];
  v18[4] = v1[340];
  v18[5] = v6;
  v7 = v1[343];
  v18[6] = v1[342];
  v18[7] = v7;
  v8 = v1[337];
  v18[0] = v1[336];
  v18[1] = v8;
  v9 = v1[339];
  v18[2] = v1[338];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 5610);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[348] = *(a1 + 192);
  v1[349] = v10;
  v1[350] = *(a1 + 224);
  *(v1 + 5610) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[344] = *(a1 + 128);
  v1[345] = v11;
  v12 = *(a1 + 176);
  v1[346] = *(a1 + 160);
  v1[347] = v12;
  v13 = *(a1 + 80);
  v1[340] = *(a1 + 64);
  v1[341] = v13;
  v14 = *(a1 + 112);
  v1[342] = *(a1 + 96);
  v1[343] = v14;
  v15 = *(a1 + 16);
  v1[336] = *a1;
  v1[337] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[338] = result;
  v1[339] = v17;
  return result;
}

uint64_t sub_2144544F0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[365];
  v18[12] = v1[364];
  v18[13] = v2;
  v19[0] = v1[366];
  v3 = v1[361];
  v18[8] = v1[360];
  v18[9] = v3;
  v4 = v1[363];
  v18[10] = v1[362];
  v18[11] = v4;
  v5 = v1[357];
  v18[4] = v1[356];
  v18[5] = v5;
  v6 = v1[359];
  v18[6] = v1[358];
  v18[7] = v6;
  v7 = v1[353];
  v18[0] = v1[352];
  v18[1] = v7;
  v8 = v1[355];
  v18[2] = v1[354];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 5866);
  v9 = v1[365];
  a1[12] = v1[364];
  a1[13] = v9;
  a1[14] = v1[366];
  *(a1 + 234) = *(v1 + 5866);
  v10 = v1[361];
  a1[8] = v1[360];
  a1[9] = v10;
  v11 = v1[363];
  a1[10] = v1[362];
  a1[11] = v11;
  v12 = v1[357];
  a1[4] = v1[356];
  a1[5] = v12;
  v13 = v1[359];
  a1[6] = v1[358];
  a1[7] = v13;
  v14 = v1[353];
  *a1 = v1[352];
  a1[1] = v14;
  v15 = v1[355];
  a1[2] = v1[354];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144545F4(uint64_t a1)
{
  v3 = v1[365];
  v18[12] = v1[364];
  v18[13] = v3;
  v19[0] = v1[366];
  v4 = v1[361];
  v18[8] = v1[360];
  v18[9] = v4;
  v5 = v1[363];
  v18[10] = v1[362];
  v18[11] = v5;
  v6 = v1[357];
  v18[4] = v1[356];
  v18[5] = v6;
  v7 = v1[359];
  v18[6] = v1[358];
  v18[7] = v7;
  v8 = v1[353];
  v18[0] = v1[352];
  v18[1] = v8;
  v9 = v1[355];
  v18[2] = v1[354];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 5866);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[364] = *(a1 + 192);
  v1[365] = v10;
  v1[366] = *(a1 + 224);
  *(v1 + 5866) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[360] = *(a1 + 128);
  v1[361] = v11;
  v12 = *(a1 + 176);
  v1[362] = *(a1 + 160);
  v1[363] = v12;
  v13 = *(a1 + 80);
  v1[356] = *(a1 + 64);
  v1[357] = v13;
  v14 = *(a1 + 112);
  v1[358] = *(a1 + 96);
  v1[359] = v14;
  v15 = *(a1 + 16);
  v1[352] = *a1;
  v1[353] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[354] = result;
  v1[355] = v17;
  return result;
}

uint64_t sub_214454720@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[381];
  v18[12] = v1[380];
  v18[13] = v2;
  v19[0] = v1[382];
  v3 = v1[377];
  v18[8] = v1[376];
  v18[9] = v3;
  v4 = v1[379];
  v18[10] = v1[378];
  v18[11] = v4;
  v5 = v1[373];
  v18[4] = v1[372];
  v18[5] = v5;
  v6 = v1[375];
  v18[6] = v1[374];
  v18[7] = v6;
  v7 = v1[369];
  v18[0] = v1[368];
  v18[1] = v7;
  v8 = v1[371];
  v18[2] = v1[370];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 6122);
  v9 = v1[381];
  a1[12] = v1[380];
  a1[13] = v9;
  a1[14] = v1[382];
  *(a1 + 234) = *(v1 + 6122);
  v10 = v1[377];
  a1[8] = v1[376];
  a1[9] = v10;
  v11 = v1[379];
  a1[10] = v1[378];
  a1[11] = v11;
  v12 = v1[373];
  a1[4] = v1[372];
  a1[5] = v12;
  v13 = v1[375];
  a1[6] = v1[374];
  a1[7] = v13;
  v14 = v1[369];
  *a1 = v1[368];
  a1[1] = v14;
  v15 = v1[371];
  a1[2] = v1[370];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214454824(uint64_t a1)
{
  v3 = v1[381];
  v18[12] = v1[380];
  v18[13] = v3;
  v19[0] = v1[382];
  v4 = v1[377];
  v18[8] = v1[376];
  v18[9] = v4;
  v5 = v1[379];
  v18[10] = v1[378];
  v18[11] = v5;
  v6 = v1[373];
  v18[4] = v1[372];
  v18[5] = v6;
  v7 = v1[375];
  v18[6] = v1[374];
  v18[7] = v7;
  v8 = v1[369];
  v18[0] = v1[368];
  v18[1] = v8;
  v9 = v1[371];
  v18[2] = v1[370];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 6122);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[380] = *(a1 + 192);
  v1[381] = v10;
  v1[382] = *(a1 + 224);
  *(v1 + 6122) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[376] = *(a1 + 128);
  v1[377] = v11;
  v12 = *(a1 + 176);
  v1[378] = *(a1 + 160);
  v1[379] = v12;
  v13 = *(a1 + 80);
  v1[372] = *(a1 + 64);
  v1[373] = v13;
  v14 = *(a1 + 112);
  v1[374] = *(a1 + 96);
  v1[375] = v14;
  v15 = *(a1 + 16);
  v1[368] = *a1;
  v1[369] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[370] = result;
  v1[371] = v17;
  return result;
}

uint64_t sub_214454950@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[397];
  v18[12] = v1[396];
  v18[13] = v2;
  v19[0] = v1[398];
  v3 = v1[393];
  v18[8] = v1[392];
  v18[9] = v3;
  v4 = v1[395];
  v18[10] = v1[394];
  v18[11] = v4;
  v5 = v1[389];
  v18[4] = v1[388];
  v18[5] = v5;
  v6 = v1[391];
  v18[6] = v1[390];
  v18[7] = v6;
  v7 = v1[385];
  v18[0] = v1[384];
  v18[1] = v7;
  v8 = v1[387];
  v18[2] = v1[386];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 6378);
  v9 = v1[397];
  a1[12] = v1[396];
  a1[13] = v9;
  a1[14] = v1[398];
  *(a1 + 234) = *(v1 + 6378);
  v10 = v1[393];
  a1[8] = v1[392];
  a1[9] = v10;
  v11 = v1[395];
  a1[10] = v1[394];
  a1[11] = v11;
  v12 = v1[389];
  a1[4] = v1[388];
  a1[5] = v12;
  v13 = v1[391];
  a1[6] = v1[390];
  a1[7] = v13;
  v14 = v1[385];
  *a1 = v1[384];
  a1[1] = v14;
  v15 = v1[387];
  a1[2] = v1[386];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214454A54(uint64_t a1)
{
  v3 = v1[397];
  v18[12] = v1[396];
  v18[13] = v3;
  v19[0] = v1[398];
  v4 = v1[393];
  v18[8] = v1[392];
  v18[9] = v4;
  v5 = v1[395];
  v18[10] = v1[394];
  v18[11] = v5;
  v6 = v1[389];
  v18[4] = v1[388];
  v18[5] = v6;
  v7 = v1[391];
  v18[6] = v1[390];
  v18[7] = v7;
  v8 = v1[385];
  v18[0] = v1[384];
  v18[1] = v8;
  v9 = v1[387];
  v18[2] = v1[386];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 6378);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[396] = *(a1 + 192);
  v1[397] = v10;
  v1[398] = *(a1 + 224);
  *(v1 + 6378) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[392] = *(a1 + 128);
  v1[393] = v11;
  v12 = *(a1 + 176);
  v1[394] = *(a1 + 160);
  v1[395] = v12;
  v13 = *(a1 + 80);
  v1[388] = *(a1 + 64);
  v1[389] = v13;
  v14 = *(a1 + 112);
  v1[390] = *(a1 + 96);
  v1[391] = v14;
  v15 = *(a1 + 16);
  v1[384] = *a1;
  v1[385] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[386] = result;
  v1[387] = v17;
  return result;
}

uint64_t sub_214454B80@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[413];
  v18[12] = v1[412];
  v18[13] = v2;
  v19[0] = v1[414];
  v3 = v1[409];
  v18[8] = v1[408];
  v18[9] = v3;
  v4 = v1[411];
  v18[10] = v1[410];
  v18[11] = v4;
  v5 = v1[405];
  v18[4] = v1[404];
  v18[5] = v5;
  v6 = v1[407];
  v18[6] = v1[406];
  v18[7] = v6;
  v7 = v1[401];
  v18[0] = v1[400];
  v18[1] = v7;
  v8 = v1[403];
  v18[2] = v1[402];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 6634);
  v9 = v1[413];
  a1[12] = v1[412];
  a1[13] = v9;
  a1[14] = v1[414];
  *(a1 + 234) = *(v1 + 6634);
  v10 = v1[409];
  a1[8] = v1[408];
  a1[9] = v10;
  v11 = v1[411];
  a1[10] = v1[410];
  a1[11] = v11;
  v12 = v1[405];
  a1[4] = v1[404];
  a1[5] = v12;
  v13 = v1[407];
  a1[6] = v1[406];
  a1[7] = v13;
  v14 = v1[401];
  *a1 = v1[400];
  a1[1] = v14;
  v15 = v1[403];
  a1[2] = v1[402];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214454C84(uint64_t a1)
{
  v3 = v1[413];
  v18[12] = v1[412];
  v18[13] = v3;
  v19[0] = v1[414];
  v4 = v1[409];
  v18[8] = v1[408];
  v18[9] = v4;
  v5 = v1[411];
  v18[10] = v1[410];
  v18[11] = v5;
  v6 = v1[405];
  v18[4] = v1[404];
  v18[5] = v6;
  v7 = v1[407];
  v18[6] = v1[406];
  v18[7] = v7;
  v8 = v1[401];
  v18[0] = v1[400];
  v18[1] = v8;
  v9 = v1[403];
  v18[2] = v1[402];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 6634);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[412] = *(a1 + 192);
  v1[413] = v10;
  v1[414] = *(a1 + 224);
  *(v1 + 6634) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[408] = *(a1 + 128);
  v1[409] = v11;
  v12 = *(a1 + 176);
  v1[410] = *(a1 + 160);
  v1[411] = v12;
  v13 = *(a1 + 80);
  v1[404] = *(a1 + 64);
  v1[405] = v13;
  v14 = *(a1 + 112);
  v1[406] = *(a1 + 96);
  v1[407] = v14;
  v15 = *(a1 + 16);
  v1[400] = *a1;
  v1[401] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[402] = result;
  v1[403] = v17;
  return result;
}

uint64_t sub_214454DB0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[429];
  v18[12] = v1[428];
  v18[13] = v2;
  v19[0] = v1[430];
  v3 = v1[425];
  v18[8] = v1[424];
  v18[9] = v3;
  v4 = v1[427];
  v18[10] = v1[426];
  v18[11] = v4;
  v5 = v1[421];
  v18[4] = v1[420];
  v18[5] = v5;
  v6 = v1[423];
  v18[6] = v1[422];
  v18[7] = v6;
  v7 = v1[417];
  v18[0] = v1[416];
  v18[1] = v7;
  v8 = v1[419];
  v18[2] = v1[418];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 6890);
  v9 = v1[429];
  a1[12] = v1[428];
  a1[13] = v9;
  a1[14] = v1[430];
  *(a1 + 234) = *(v1 + 6890);
  v10 = v1[425];
  a1[8] = v1[424];
  a1[9] = v10;
  v11 = v1[427];
  a1[10] = v1[426];
  a1[11] = v11;
  v12 = v1[421];
  a1[4] = v1[420];
  a1[5] = v12;
  v13 = v1[423];
  a1[6] = v1[422];
  a1[7] = v13;
  v14 = v1[417];
  *a1 = v1[416];
  a1[1] = v14;
  v15 = v1[419];
  a1[2] = v1[418];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214454EB4(uint64_t a1)
{
  v3 = v1[429];
  v18[12] = v1[428];
  v18[13] = v3;
  v19[0] = v1[430];
  v4 = v1[425];
  v18[8] = v1[424];
  v18[9] = v4;
  v5 = v1[427];
  v18[10] = v1[426];
  v18[11] = v5;
  v6 = v1[421];
  v18[4] = v1[420];
  v18[5] = v6;
  v7 = v1[423];
  v18[6] = v1[422];
  v18[7] = v7;
  v8 = v1[417];
  v18[0] = v1[416];
  v18[1] = v8;
  v9 = v1[419];
  v18[2] = v1[418];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 6890);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[428] = *(a1 + 192);
  v1[429] = v10;
  v1[430] = *(a1 + 224);
  *(v1 + 6890) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[424] = *(a1 + 128);
  v1[425] = v11;
  v12 = *(a1 + 176);
  v1[426] = *(a1 + 160);
  v1[427] = v12;
  v13 = *(a1 + 80);
  v1[420] = *(a1 + 64);
  v1[421] = v13;
  v14 = *(a1 + 112);
  v1[422] = *(a1 + 96);
  v1[423] = v14;
  v15 = *(a1 + 16);
  v1[416] = *a1;
  v1[417] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[418] = result;
  v1[419] = v17;
  return result;
}

uint64_t sub_214454FE0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[445];
  v18[12] = v1[444];
  v18[13] = v2;
  v19[0] = v1[446];
  v3 = v1[441];
  v18[8] = v1[440];
  v18[9] = v3;
  v4 = v1[443];
  v18[10] = v1[442];
  v18[11] = v4;
  v5 = v1[437];
  v18[4] = v1[436];
  v18[5] = v5;
  v6 = v1[439];
  v18[6] = v1[438];
  v18[7] = v6;
  v7 = v1[433];
  v18[0] = v1[432];
  v18[1] = v7;
  v8 = v1[435];
  v18[2] = v1[434];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 7146);
  v9 = v1[445];
  a1[12] = v1[444];
  a1[13] = v9;
  a1[14] = v1[446];
  *(a1 + 234) = *(v1 + 7146);
  v10 = v1[441];
  a1[8] = v1[440];
  a1[9] = v10;
  v11 = v1[443];
  a1[10] = v1[442];
  a1[11] = v11;
  v12 = v1[437];
  a1[4] = v1[436];
  a1[5] = v12;
  v13 = v1[439];
  a1[6] = v1[438];
  a1[7] = v13;
  v14 = v1[433];
  *a1 = v1[432];
  a1[1] = v14;
  v15 = v1[435];
  a1[2] = v1[434];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144550E4(uint64_t a1)
{
  v3 = v1[445];
  v18[12] = v1[444];
  v18[13] = v3;
  v19[0] = v1[446];
  v4 = v1[441];
  v18[8] = v1[440];
  v18[9] = v4;
  v5 = v1[443];
  v18[10] = v1[442];
  v18[11] = v5;
  v6 = v1[437];
  v18[4] = v1[436];
  v18[5] = v6;
  v7 = v1[439];
  v18[6] = v1[438];
  v18[7] = v7;
  v8 = v1[433];
  v18[0] = v1[432];
  v18[1] = v8;
  v9 = v1[435];
  v18[2] = v1[434];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 7146);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[444] = *(a1 + 192);
  v1[445] = v10;
  v1[446] = *(a1 + 224);
  *(v1 + 7146) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[440] = *(a1 + 128);
  v1[441] = v11;
  v12 = *(a1 + 176);
  v1[442] = *(a1 + 160);
  v1[443] = v12;
  v13 = *(a1 + 80);
  v1[436] = *(a1 + 64);
  v1[437] = v13;
  v14 = *(a1 + 112);
  v1[438] = *(a1 + 96);
  v1[439] = v14;
  v15 = *(a1 + 16);
  v1[432] = *a1;
  v1[433] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[434] = result;
  v1[435] = v17;
  return result;
}

uint64_t sub_214455210@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[461];
  v18[12] = v1[460];
  v18[13] = v2;
  v19[0] = v1[462];
  v3 = v1[457];
  v18[8] = v1[456];
  v18[9] = v3;
  v4 = v1[459];
  v18[10] = v1[458];
  v18[11] = v4;
  v5 = v1[453];
  v18[4] = v1[452];
  v18[5] = v5;
  v6 = v1[455];
  v18[6] = v1[454];
  v18[7] = v6;
  v7 = v1[449];
  v18[0] = v1[448];
  v18[1] = v7;
  v8 = v1[451];
  v18[2] = v1[450];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 7402);
  v9 = v1[461];
  a1[12] = v1[460];
  a1[13] = v9;
  a1[14] = v1[462];
  *(a1 + 234) = *(v1 + 7402);
  v10 = v1[457];
  a1[8] = v1[456];
  a1[9] = v10;
  v11 = v1[459];
  a1[10] = v1[458];
  a1[11] = v11;
  v12 = v1[453];
  a1[4] = v1[452];
  a1[5] = v12;
  v13 = v1[455];
  a1[6] = v1[454];
  a1[7] = v13;
  v14 = v1[449];
  *a1 = v1[448];
  a1[1] = v14;
  v15 = v1[451];
  a1[2] = v1[450];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214455314(uint64_t a1)
{
  v3 = v1[461];
  v18[12] = v1[460];
  v18[13] = v3;
  v19[0] = v1[462];
  v4 = v1[457];
  v18[8] = v1[456];
  v18[9] = v4;
  v5 = v1[459];
  v18[10] = v1[458];
  v18[11] = v5;
  v6 = v1[453];
  v18[4] = v1[452];
  v18[5] = v6;
  v7 = v1[455];
  v18[6] = v1[454];
  v18[7] = v7;
  v8 = v1[449];
  v18[0] = v1[448];
  v18[1] = v8;
  v9 = v1[451];
  v18[2] = v1[450];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 7402);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[460] = *(a1 + 192);
  v1[461] = v10;
  v1[462] = *(a1 + 224);
  *(v1 + 7402) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[456] = *(a1 + 128);
  v1[457] = v11;
  v12 = *(a1 + 176);
  v1[458] = *(a1 + 160);
  v1[459] = v12;
  v13 = *(a1 + 80);
  v1[452] = *(a1 + 64);
  v1[453] = v13;
  v14 = *(a1 + 112);
  v1[454] = *(a1 + 96);
  v1[455] = v14;
  v15 = *(a1 + 16);
  v1[448] = *a1;
  v1[449] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[450] = result;
  v1[451] = v17;
  return result;
}

uint64_t sub_214455440@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[477];
  v18[12] = v1[476];
  v18[13] = v2;
  v19[0] = v1[478];
  v3 = v1[473];
  v18[8] = v1[472];
  v18[9] = v3;
  v4 = v1[475];
  v18[10] = v1[474];
  v18[11] = v4;
  v5 = v1[469];
  v18[4] = v1[468];
  v18[5] = v5;
  v6 = v1[471];
  v18[6] = v1[470];
  v18[7] = v6;
  v7 = v1[465];
  v18[0] = v1[464];
  v18[1] = v7;
  v8 = v1[467];
  v18[2] = v1[466];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 7658);
  v9 = v1[477];
  a1[12] = v1[476];
  a1[13] = v9;
  a1[14] = v1[478];
  *(a1 + 234) = *(v1 + 7658);
  v10 = v1[473];
  a1[8] = v1[472];
  a1[9] = v10;
  v11 = v1[475];
  a1[10] = v1[474];
  a1[11] = v11;
  v12 = v1[469];
  a1[4] = v1[468];
  a1[5] = v12;
  v13 = v1[471];
  a1[6] = v1[470];
  a1[7] = v13;
  v14 = v1[465];
  *a1 = v1[464];
  a1[1] = v14;
  v15 = v1[467];
  a1[2] = v1[466];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214455544(uint64_t a1)
{
  v3 = v1[477];
  v18[12] = v1[476];
  v18[13] = v3;
  v19[0] = v1[478];
  v4 = v1[473];
  v18[8] = v1[472];
  v18[9] = v4;
  v5 = v1[475];
  v18[10] = v1[474];
  v18[11] = v5;
  v6 = v1[469];
  v18[4] = v1[468];
  v18[5] = v6;
  v7 = v1[471];
  v18[6] = v1[470];
  v18[7] = v7;
  v8 = v1[465];
  v18[0] = v1[464];
  v18[1] = v8;
  v9 = v1[467];
  v18[2] = v1[466];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 7658);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[476] = *(a1 + 192);
  v1[477] = v10;
  v1[478] = *(a1 + 224);
  *(v1 + 7658) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[472] = *(a1 + 128);
  v1[473] = v11;
  v12 = *(a1 + 176);
  v1[474] = *(a1 + 160);
  v1[475] = v12;
  v13 = *(a1 + 80);
  v1[468] = *(a1 + 64);
  v1[469] = v13;
  v14 = *(a1 + 112);
  v1[470] = *(a1 + 96);
  v1[471] = v14;
  v15 = *(a1 + 16);
  v1[464] = *a1;
  v1[465] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[466] = result;
  v1[467] = v17;
  return result;
}

uint64_t sub_214455670@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[493];
  v18[12] = v1[492];
  v18[13] = v2;
  v19[0] = v1[494];
  v3 = v1[489];
  v18[8] = v1[488];
  v18[9] = v3;
  v4 = v1[491];
  v18[10] = v1[490];
  v18[11] = v4;
  v5 = v1[485];
  v18[4] = v1[484];
  v18[5] = v5;
  v6 = v1[487];
  v18[6] = v1[486];
  v18[7] = v6;
  v7 = v1[481];
  v18[0] = v1[480];
  v18[1] = v7;
  v8 = v1[483];
  v18[2] = v1[482];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 7914);
  v9 = v1[493];
  a1[12] = v1[492];
  a1[13] = v9;
  a1[14] = v1[494];
  *(a1 + 234) = *(v1 + 7914);
  v10 = v1[489];
  a1[8] = v1[488];
  a1[9] = v10;
  v11 = v1[491];
  a1[10] = v1[490];
  a1[11] = v11;
  v12 = v1[485];
  a1[4] = v1[484];
  a1[5] = v12;
  v13 = v1[487];
  a1[6] = v1[486];
  a1[7] = v13;
  v14 = v1[481];
  *a1 = v1[480];
  a1[1] = v14;
  v15 = v1[483];
  a1[2] = v1[482];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214455774(uint64_t a1)
{
  v3 = v1[493];
  v18[12] = v1[492];
  v18[13] = v3;
  v19[0] = v1[494];
  v4 = v1[489];
  v18[8] = v1[488];
  v18[9] = v4;
  v5 = v1[491];
  v18[10] = v1[490];
  v18[11] = v5;
  v6 = v1[485];
  v18[4] = v1[484];
  v18[5] = v6;
  v7 = v1[487];
  v18[6] = v1[486];
  v18[7] = v7;
  v8 = v1[481];
  v18[0] = v1[480];
  v18[1] = v8;
  v9 = v1[483];
  v18[2] = v1[482];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 7914);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[492] = *(a1 + 192);
  v1[493] = v10;
  v1[494] = *(a1 + 224);
  *(v1 + 7914) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[488] = *(a1 + 128);
  v1[489] = v11;
  v12 = *(a1 + 176);
  v1[490] = *(a1 + 160);
  v1[491] = v12;
  v13 = *(a1 + 80);
  v1[484] = *(a1 + 64);
  v1[485] = v13;
  v14 = *(a1 + 112);
  v1[486] = *(a1 + 96);
  v1[487] = v14;
  v15 = *(a1 + 16);
  v1[480] = *a1;
  v1[481] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[482] = result;
  v1[483] = v17;
  return result;
}

uint64_t sub_2144558A0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[509];
  v18[12] = v1[508];
  v18[13] = v2;
  v19[0] = v1[510];
  v3 = v1[505];
  v18[8] = v1[504];
  v18[9] = v3;
  v4 = v1[507];
  v18[10] = v1[506];
  v18[11] = v4;
  v5 = v1[501];
  v18[4] = v1[500];
  v18[5] = v5;
  v6 = v1[503];
  v18[6] = v1[502];
  v18[7] = v6;
  v7 = v1[497];
  v18[0] = v1[496];
  v18[1] = v7;
  v8 = v1[499];
  v18[2] = v1[498];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 8170);
  v9 = v1[509];
  a1[12] = v1[508];
  a1[13] = v9;
  a1[14] = v1[510];
  *(a1 + 234) = *(v1 + 8170);
  v10 = v1[505];
  a1[8] = v1[504];
  a1[9] = v10;
  v11 = v1[507];
  a1[10] = v1[506];
  a1[11] = v11;
  v12 = v1[501];
  a1[4] = v1[500];
  a1[5] = v12;
  v13 = v1[503];
  a1[6] = v1[502];
  a1[7] = v13;
  v14 = v1[497];
  *a1 = v1[496];
  a1[1] = v14;
  v15 = v1[499];
  a1[2] = v1[498];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144559A4(uint64_t a1)
{
  v3 = v1[509];
  v18[12] = v1[508];
  v18[13] = v3;
  v19[0] = v1[510];
  v4 = v1[505];
  v18[8] = v1[504];
  v18[9] = v4;
  v5 = v1[507];
  v18[10] = v1[506];
  v18[11] = v5;
  v6 = v1[501];
  v18[4] = v1[500];
  v18[5] = v6;
  v7 = v1[503];
  v18[6] = v1[502];
  v18[7] = v7;
  v8 = v1[497];
  v18[0] = v1[496];
  v18[1] = v8;
  v9 = v1[499];
  v18[2] = v1[498];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 8170);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[508] = *(a1 + 192);
  v1[509] = v10;
  v1[510] = *(a1 + 224);
  *(v1 + 8170) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[504] = *(a1 + 128);
  v1[505] = v11;
  v12 = *(a1 + 176);
  v1[506] = *(a1 + 160);
  v1[507] = v12;
  v13 = *(a1 + 80);
  v1[500] = *(a1 + 64);
  v1[501] = v13;
  v14 = *(a1 + 112);
  v1[502] = *(a1 + 96);
  v1[503] = v14;
  v15 = *(a1 + 16);
  v1[496] = *a1;
  v1[497] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[498] = result;
  v1[499] = v17;
  return result;
}

uint64_t sub_214455AD0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[525];
  v18[12] = v1[524];
  v18[13] = v2;
  v19[0] = v1[526];
  v3 = v1[521];
  v18[8] = v1[520];
  v18[9] = v3;
  v4 = v1[523];
  v18[10] = v1[522];
  v18[11] = v4;
  v5 = v1[517];
  v18[4] = v1[516];
  v18[5] = v5;
  v6 = v1[519];
  v18[6] = v1[518];
  v18[7] = v6;
  v7 = v1[513];
  v18[0] = v1[512];
  v18[1] = v7;
  v8 = v1[515];
  v18[2] = v1[514];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 8426);
  v9 = v1[525];
  a1[12] = v1[524];
  a1[13] = v9;
  a1[14] = v1[526];
  *(a1 + 234) = *(v1 + 8426);
  v10 = v1[521];
  a1[8] = v1[520];
  a1[9] = v10;
  v11 = v1[523];
  a1[10] = v1[522];
  a1[11] = v11;
  v12 = v1[517];
  a1[4] = v1[516];
  a1[5] = v12;
  v13 = v1[519];
  a1[6] = v1[518];
  a1[7] = v13;
  v14 = v1[513];
  *a1 = v1[512];
  a1[1] = v14;
  v15 = v1[515];
  a1[2] = v1[514];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214455BD0(uint64_t a1)
{
  v3 = v1[525];
  v18[12] = v1[524];
  v18[13] = v3;
  v19[0] = v1[526];
  v4 = v1[521];
  v18[8] = v1[520];
  v18[9] = v4;
  v5 = v1[523];
  v18[10] = v1[522];
  v18[11] = v5;
  v6 = v1[517];
  v18[4] = v1[516];
  v18[5] = v6;
  v7 = v1[519];
  v18[6] = v1[518];
  v18[7] = v7;
  v8 = v1[513];
  v18[0] = v1[512];
  v18[1] = v8;
  v9 = v1[515];
  v18[2] = v1[514];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 8426);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[524] = *(a1 + 192);
  v1[525] = v10;
  v1[526] = *(a1 + 224);
  *(v1 + 8426) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[520] = *(a1 + 128);
  v1[521] = v11;
  v12 = *(a1 + 176);
  v1[522] = *(a1 + 160);
  v1[523] = v12;
  v13 = *(a1 + 80);
  v1[516] = *(a1 + 64);
  v1[517] = v13;
  v14 = *(a1 + 112);
  v1[518] = *(a1 + 96);
  v1[519] = v14;
  v15 = *(a1 + 16);
  v1[512] = *a1;
  v1[513] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[514] = result;
  v1[515] = v17;
  return result;
}

uint64_t sub_214455CF4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[541];
  v18[12] = v1[540];
  v18[13] = v2;
  v19[0] = v1[542];
  v3 = v1[537];
  v18[8] = v1[536];
  v18[9] = v3;
  v4 = v1[539];
  v18[10] = v1[538];
  v18[11] = v4;
  v5 = v1[533];
  v18[4] = v1[532];
  v18[5] = v5;
  v6 = v1[535];
  v18[6] = v1[534];
  v18[7] = v6;
  v7 = v1[529];
  v18[0] = v1[528];
  v18[1] = v7;
  v8 = v1[531];
  v18[2] = v1[530];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 8682);
  v9 = v1[541];
  a1[12] = v1[540];
  a1[13] = v9;
  a1[14] = v1[542];
  *(a1 + 234) = *(v1 + 8682);
  v10 = v1[537];
  a1[8] = v1[536];
  a1[9] = v10;
  v11 = v1[539];
  a1[10] = v1[538];
  a1[11] = v11;
  v12 = v1[533];
  a1[4] = v1[532];
  a1[5] = v12;
  v13 = v1[535];
  a1[6] = v1[534];
  a1[7] = v13;
  v14 = v1[529];
  *a1 = v1[528];
  a1[1] = v14;
  v15 = v1[531];
  a1[2] = v1[530];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214455DF8(uint64_t a1)
{
  v3 = v1[541];
  v18[12] = v1[540];
  v18[13] = v3;
  v19[0] = v1[542];
  v4 = v1[537];
  v18[8] = v1[536];
  v18[9] = v4;
  v5 = v1[539];
  v18[10] = v1[538];
  v18[11] = v5;
  v6 = v1[533];
  v18[4] = v1[532];
  v18[5] = v6;
  v7 = v1[535];
  v18[6] = v1[534];
  v18[7] = v7;
  v8 = v1[529];
  v18[0] = v1[528];
  v18[1] = v8;
  v9 = v1[531];
  v18[2] = v1[530];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 8682);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[540] = *(a1 + 192);
  v1[541] = v10;
  v1[542] = *(a1 + 224);
  *(v1 + 8682) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[536] = *(a1 + 128);
  v1[537] = v11;
  v12 = *(a1 + 176);
  v1[538] = *(a1 + 160);
  v1[539] = v12;
  v13 = *(a1 + 80);
  v1[532] = *(a1 + 64);
  v1[533] = v13;
  v14 = *(a1 + 112);
  v1[534] = *(a1 + 96);
  v1[535] = v14;
  v15 = *(a1 + 16);
  v1[528] = *a1;
  v1[529] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[530] = result;
  v1[531] = v17;
  return result;
}

uint64_t sub_214455F24@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[557];
  v18[12] = v1[556];
  v18[13] = v2;
  v19[0] = v1[558];
  v3 = v1[553];
  v18[8] = v1[552];
  v18[9] = v3;
  v4 = v1[555];
  v18[10] = v1[554];
  v18[11] = v4;
  v5 = v1[549];
  v18[4] = v1[548];
  v18[5] = v5;
  v6 = v1[551];
  v18[6] = v1[550];
  v18[7] = v6;
  v7 = v1[545];
  v18[0] = v1[544];
  v18[1] = v7;
  v8 = v1[547];
  v18[2] = v1[546];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 8938);
  v9 = v1[557];
  a1[12] = v1[556];
  a1[13] = v9;
  a1[14] = v1[558];
  *(a1 + 234) = *(v1 + 8938);
  v10 = v1[553];
  a1[8] = v1[552];
  a1[9] = v10;
  v11 = v1[555];
  a1[10] = v1[554];
  a1[11] = v11;
  v12 = v1[549];
  a1[4] = v1[548];
  a1[5] = v12;
  v13 = v1[551];
  a1[6] = v1[550];
  a1[7] = v13;
  v14 = v1[545];
  *a1 = v1[544];
  a1[1] = v14;
  v15 = v1[547];
  a1[2] = v1[546];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214456028(uint64_t a1)
{
  v3 = v1[557];
  v18[12] = v1[556];
  v18[13] = v3;
  v19[0] = v1[558];
  v4 = v1[553];
  v18[8] = v1[552];
  v18[9] = v4;
  v5 = v1[555];
  v18[10] = v1[554];
  v18[11] = v5;
  v6 = v1[549];
  v18[4] = v1[548];
  v18[5] = v6;
  v7 = v1[551];
  v18[6] = v1[550];
  v18[7] = v7;
  v8 = v1[545];
  v18[0] = v1[544];
  v18[1] = v8;
  v9 = v1[547];
  v18[2] = v1[546];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 8938);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[556] = *(a1 + 192);
  v1[557] = v10;
  v1[558] = *(a1 + 224);
  *(v1 + 8938) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[552] = *(a1 + 128);
  v1[553] = v11;
  v12 = *(a1 + 176);
  v1[554] = *(a1 + 160);
  v1[555] = v12;
  v13 = *(a1 + 80);
  v1[548] = *(a1 + 64);
  v1[549] = v13;
  v14 = *(a1 + 112);
  v1[550] = *(a1 + 96);
  v1[551] = v14;
  v15 = *(a1 + 16);
  v1[544] = *a1;
  v1[545] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[546] = result;
  v1[547] = v17;
  return result;
}

uint64_t sub_214456154@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[573];
  v18[12] = v1[572];
  v18[13] = v2;
  v19[0] = v1[574];
  v3 = v1[569];
  v18[8] = v1[568];
  v18[9] = v3;
  v4 = v1[571];
  v18[10] = v1[570];
  v18[11] = v4;
  v5 = v1[565];
  v18[4] = v1[564];
  v18[5] = v5;
  v6 = v1[567];
  v18[6] = v1[566];
  v18[7] = v6;
  v7 = v1[561];
  v18[0] = v1[560];
  v18[1] = v7;
  v8 = v1[563];
  v18[2] = v1[562];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 9194);
  v9 = v1[573];
  a1[12] = v1[572];
  a1[13] = v9;
  a1[14] = v1[574];
  *(a1 + 234) = *(v1 + 9194);
  v10 = v1[569];
  a1[8] = v1[568];
  a1[9] = v10;
  v11 = v1[571];
  a1[10] = v1[570];
  a1[11] = v11;
  v12 = v1[565];
  a1[4] = v1[564];
  a1[5] = v12;
  v13 = v1[567];
  a1[6] = v1[566];
  a1[7] = v13;
  v14 = v1[561];
  *a1 = v1[560];
  a1[1] = v14;
  v15 = v1[563];
  a1[2] = v1[562];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214456258(uint64_t a1)
{
  v3 = v1[573];
  v18[12] = v1[572];
  v18[13] = v3;
  v19[0] = v1[574];
  v4 = v1[569];
  v18[8] = v1[568];
  v18[9] = v4;
  v5 = v1[571];
  v18[10] = v1[570];
  v18[11] = v5;
  v6 = v1[565];
  v18[4] = v1[564];
  v18[5] = v6;
  v7 = v1[567];
  v18[6] = v1[566];
  v18[7] = v7;
  v8 = v1[561];
  v18[0] = v1[560];
  v18[1] = v8;
  v9 = v1[563];
  v18[2] = v1[562];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 9194);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[572] = *(a1 + 192);
  v1[573] = v10;
  v1[574] = *(a1 + 224);
  *(v1 + 9194) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[568] = *(a1 + 128);
  v1[569] = v11;
  v12 = *(a1 + 176);
  v1[570] = *(a1 + 160);
  v1[571] = v12;
  v13 = *(a1 + 80);
  v1[564] = *(a1 + 64);
  v1[565] = v13;
  v14 = *(a1 + 112);
  v1[566] = *(a1 + 96);
  v1[567] = v14;
  v15 = *(a1 + 16);
  v1[560] = *a1;
  v1[561] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[562] = result;
  v1[563] = v17;
  return result;
}

uint64_t sub_214456384@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[589];
  v18[12] = v1[588];
  v18[13] = v2;
  v19[0] = v1[590];
  v3 = v1[585];
  v18[8] = v1[584];
  v18[9] = v3;
  v4 = v1[587];
  v18[10] = v1[586];
  v18[11] = v4;
  v5 = v1[581];
  v18[4] = v1[580];
  v18[5] = v5;
  v6 = v1[583];
  v18[6] = v1[582];
  v18[7] = v6;
  v7 = v1[577];
  v18[0] = v1[576];
  v18[1] = v7;
  v8 = v1[579];
  v18[2] = v1[578];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 9450);
  v9 = v1[589];
  a1[12] = v1[588];
  a1[13] = v9;
  a1[14] = v1[590];
  *(a1 + 234) = *(v1 + 9450);
  v10 = v1[585];
  a1[8] = v1[584];
  a1[9] = v10;
  v11 = v1[587];
  a1[10] = v1[586];
  a1[11] = v11;
  v12 = v1[581];
  a1[4] = v1[580];
  a1[5] = v12;
  v13 = v1[583];
  a1[6] = v1[582];
  a1[7] = v13;
  v14 = v1[577];
  *a1 = v1[576];
  a1[1] = v14;
  v15 = v1[579];
  a1[2] = v1[578];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214456488(uint64_t a1)
{
  v3 = v1[589];
  v18[12] = v1[588];
  v18[13] = v3;
  v19[0] = v1[590];
  v4 = v1[585];
  v18[8] = v1[584];
  v18[9] = v4;
  v5 = v1[587];
  v18[10] = v1[586];
  v18[11] = v5;
  v6 = v1[581];
  v18[4] = v1[580];
  v18[5] = v6;
  v7 = v1[583];
  v18[6] = v1[582];
  v18[7] = v7;
  v8 = v1[577];
  v18[0] = v1[576];
  v18[1] = v8;
  v9 = v1[579];
  v18[2] = v1[578];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 9450);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[588] = *(a1 + 192);
  v1[589] = v10;
  v1[590] = *(a1 + 224);
  *(v1 + 9450) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[584] = *(a1 + 128);
  v1[585] = v11;
  v12 = *(a1 + 176);
  v1[586] = *(a1 + 160);
  v1[587] = v12;
  v13 = *(a1 + 80);
  v1[580] = *(a1 + 64);
  v1[581] = v13;
  v14 = *(a1 + 112);
  v1[582] = *(a1 + 96);
  v1[583] = v14;
  v15 = *(a1 + 16);
  v1[576] = *a1;
  v1[577] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[578] = result;
  v1[579] = v17;
  return result;
}

uint64_t sub_2144565B4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[605];
  v18[12] = v1[604];
  v18[13] = v2;
  v19[0] = v1[606];
  v3 = v1[601];
  v18[8] = v1[600];
  v18[9] = v3;
  v4 = v1[603];
  v18[10] = v1[602];
  v18[11] = v4;
  v5 = v1[597];
  v18[4] = v1[596];
  v18[5] = v5;
  v6 = v1[599];
  v18[6] = v1[598];
  v18[7] = v6;
  v7 = v1[593];
  v18[0] = v1[592];
  v18[1] = v7;
  v8 = v1[595];
  v18[2] = v1[594];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 9706);
  v9 = v1[605];
  a1[12] = v1[604];
  a1[13] = v9;
  a1[14] = v1[606];
  *(a1 + 234) = *(v1 + 9706);
  v10 = v1[601];
  a1[8] = v1[600];
  a1[9] = v10;
  v11 = v1[603];
  a1[10] = v1[602];
  a1[11] = v11;
  v12 = v1[597];
  a1[4] = v1[596];
  a1[5] = v12;
  v13 = v1[599];
  a1[6] = v1[598];
  a1[7] = v13;
  v14 = v1[593];
  *a1 = v1[592];
  a1[1] = v14;
  v15 = v1[595];
  a1[2] = v1[594];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144566B8(uint64_t a1)
{
  v3 = v1[605];
  v18[12] = v1[604];
  v18[13] = v3;
  v19[0] = v1[606];
  v4 = v1[601];
  v18[8] = v1[600];
  v18[9] = v4;
  v5 = v1[603];
  v18[10] = v1[602];
  v18[11] = v5;
  v6 = v1[597];
  v18[4] = v1[596];
  v18[5] = v6;
  v7 = v1[599];
  v18[6] = v1[598];
  v18[7] = v7;
  v8 = v1[593];
  v18[0] = v1[592];
  v18[1] = v8;
  v9 = v1[595];
  v18[2] = v1[594];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 9706);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[604] = *(a1 + 192);
  v1[605] = v10;
  v1[606] = *(a1 + 224);
  *(v1 + 9706) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[600] = *(a1 + 128);
  v1[601] = v11;
  v12 = *(a1 + 176);
  v1[602] = *(a1 + 160);
  v1[603] = v12;
  v13 = *(a1 + 80);
  v1[596] = *(a1 + 64);
  v1[597] = v13;
  v14 = *(a1 + 112);
  v1[598] = *(a1 + 96);
  v1[599] = v14;
  v15 = *(a1 + 16);
  v1[592] = *a1;
  v1[593] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[594] = result;
  v1[595] = v17;
  return result;
}

uint64_t sub_2144567E4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[621];
  v18[12] = v1[620];
  v18[13] = v2;
  v19[0] = v1[622];
  v3 = v1[617];
  v18[8] = v1[616];
  v18[9] = v3;
  v4 = v1[619];
  v18[10] = v1[618];
  v18[11] = v4;
  v5 = v1[613];
  v18[4] = v1[612];
  v18[5] = v5;
  v6 = v1[615];
  v18[6] = v1[614];
  v18[7] = v6;
  v7 = v1[609];
  v18[0] = v1[608];
  v18[1] = v7;
  v8 = v1[611];
  v18[2] = v1[610];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 9962);
  v9 = v1[621];
  a1[12] = v1[620];
  a1[13] = v9;
  a1[14] = v1[622];
  *(a1 + 234) = *(v1 + 9962);
  v10 = v1[617];
  a1[8] = v1[616];
  a1[9] = v10;
  v11 = v1[619];
  a1[10] = v1[618];
  a1[11] = v11;
  v12 = v1[613];
  a1[4] = v1[612];
  a1[5] = v12;
  v13 = v1[615];
  a1[6] = v1[614];
  a1[7] = v13;
  v14 = v1[609];
  *a1 = v1[608];
  a1[1] = v14;
  v15 = v1[611];
  a1[2] = v1[610];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144568E8(uint64_t a1)
{
  v3 = v1[621];
  v18[12] = v1[620];
  v18[13] = v3;
  v19[0] = v1[622];
  v4 = v1[617];
  v18[8] = v1[616];
  v18[9] = v4;
  v5 = v1[619];
  v18[10] = v1[618];
  v18[11] = v5;
  v6 = v1[613];
  v18[4] = v1[612];
  v18[5] = v6;
  v7 = v1[615];
  v18[6] = v1[614];
  v18[7] = v7;
  v8 = v1[609];
  v18[0] = v1[608];
  v18[1] = v8;
  v9 = v1[611];
  v18[2] = v1[610];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 9962);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[620] = *(a1 + 192);
  v1[621] = v10;
  v1[622] = *(a1 + 224);
  *(v1 + 9962) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[616] = *(a1 + 128);
  v1[617] = v11;
  v12 = *(a1 + 176);
  v1[618] = *(a1 + 160);
  v1[619] = v12;
  v13 = *(a1 + 80);
  v1[612] = *(a1 + 64);
  v1[613] = v13;
  v14 = *(a1 + 112);
  v1[614] = *(a1 + 96);
  v1[615] = v14;
  v15 = *(a1 + 16);
  v1[608] = *a1;
  v1[609] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[610] = result;
  v1[611] = v17;
  return result;
}

uint64_t sub_214456A14@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[637];
  v18[12] = v1[636];
  v18[13] = v2;
  v19[0] = v1[638];
  v3 = v1[633];
  v18[8] = v1[632];
  v18[9] = v3;
  v4 = v1[635];
  v18[10] = v1[634];
  v18[11] = v4;
  v5 = v1[629];
  v18[4] = v1[628];
  v18[5] = v5;
  v6 = v1[631];
  v18[6] = v1[630];
  v18[7] = v6;
  v7 = v1[625];
  v18[0] = v1[624];
  v18[1] = v7;
  v8 = v1[627];
  v18[2] = v1[626];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 10218);
  v9 = v1[637];
  a1[12] = v1[636];
  a1[13] = v9;
  a1[14] = v1[638];
  *(a1 + 234) = *(v1 + 10218);
  v10 = v1[633];
  a1[8] = v1[632];
  a1[9] = v10;
  v11 = v1[635];
  a1[10] = v1[634];
  a1[11] = v11;
  v12 = v1[629];
  a1[4] = v1[628];
  a1[5] = v12;
  v13 = v1[631];
  a1[6] = v1[630];
  a1[7] = v13;
  v14 = v1[625];
  *a1 = v1[624];
  a1[1] = v14;
  v15 = v1[627];
  a1[2] = v1[626];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214456B18(uint64_t a1)
{
  v3 = v1[637];
  v18[12] = v1[636];
  v18[13] = v3;
  v19[0] = v1[638];
  v4 = v1[633];
  v18[8] = v1[632];
  v18[9] = v4;
  v5 = v1[635];
  v18[10] = v1[634];
  v18[11] = v5;
  v6 = v1[629];
  v18[4] = v1[628];
  v18[5] = v6;
  v7 = v1[631];
  v18[6] = v1[630];
  v18[7] = v7;
  v8 = v1[625];
  v18[0] = v1[624];
  v18[1] = v8;
  v9 = v1[627];
  v18[2] = v1[626];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 10218);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[636] = *(a1 + 192);
  v1[637] = v10;
  v1[638] = *(a1 + 224);
  *(v1 + 10218) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[632] = *(a1 + 128);
  v1[633] = v11;
  v12 = *(a1 + 176);
  v1[634] = *(a1 + 160);
  v1[635] = v12;
  v13 = *(a1 + 80);
  v1[628] = *(a1 + 64);
  v1[629] = v13;
  v14 = *(a1 + 112);
  v1[630] = *(a1 + 96);
  v1[631] = v14;
  v15 = *(a1 + 16);
  v1[624] = *a1;
  v1[625] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[626] = result;
  v1[627] = v17;
  return result;
}

uint64_t AvatarRecord.identifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*AvatarRecord.identifier.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*AvatarRecord.$identifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

uint64_t AvatarRecord.descriptor.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);

  *(v1 + 40) = v2;
  return result;
}

__n128 MemojiPoster.backgroundColor.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 MemojiPoster.backgroundColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

void (*MemojiPoster.avatarImage.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1F8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v3 + 248;
  *(v3 + 496) = v1;
  result = sub_213FB2E54(v1 + 32, v3 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v4 + 272))
  {
    v7 = *(v5 + 208);
    *(v4 + 192) = *(v5 + 192);
    *(v4 + 208) = v7;
    *(v4 + 224) = *(v5 + 224);
    *(v4 + 240) = *(v5 + 240);
    v8 = *(v5 + 144);
    *(v4 + 128) = *(v5 + 128);
    *(v4 + 144) = v8;
    v9 = *(v5 + 176);
    *(v4 + 160) = *(v5 + 160);
    *(v4 + 176) = v9;
    v10 = *(v5 + 80);
    *(v4 + 64) = *(v5 + 64);
    *(v4 + 80) = v10;
    v11 = *(v5 + 112);
    *(v4 + 96) = *(v5 + 96);
    *(v4 + 112) = v11;
    v12 = *(v5 + 16);
    *v4 = *v5;
    *(v4 + 16) = v12;
    v13 = *(v5 + 48);
    *(v4 + 32) = *(v5 + 32);
    *(v4 + 48) = v13;
    return sub_21445703C;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21445703C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 62);
    sub_21407CF14(*a1, (v2 + 248));
    sub_213FB2DF4(v3 + 32, &qword_27C904858, &qword_214736F00);
    v4 = *(v2 + 264);
    v5 = *(v2 + 296);
    v6 = *(v2 + 248);
    *(v3 + 64) = *(v2 + 280);
    *(v3 + 80) = v5;
    *(v3 + 32) = v6;
    *(v3 + 48) = v4;
    v7 = *(v2 + 360);
    v9 = *(v2 + 312);
    v8 = *(v2 + 328);
    *(v3 + 128) = *(v2 + 344);
    *(v3 + 144) = v7;
    *(v3 + 96) = v9;
    *(v3 + 112) = v8;
    v10 = *(v2 + 424);
    v12 = *(v2 + 376);
    v11 = *(v2 + 392);
    *(v3 + 192) = *(v2 + 408);
    *(v3 + 208) = v10;
    *(v3 + 160) = v12;
    *(v3 + 176) = v11;
    v14 = *(v2 + 456);
    v13 = *(v2 + 472);
    v15 = *(v2 + 440);
    *(v3 + 272) = *(v2 + 61);
    *(v3 + 240) = v14;
    *(v3 + 256) = v13;
    *(v3 + 224) = v15;
    sub_21406D2CC(v2);
  }

  else
  {
    v16 = *(v2 + 62);
    sub_213FB2DF4(v16 + 32, &qword_27C904858, &qword_214736F00);
    v17 = *(v2 + 3);
    v19 = *v2;
    v18 = *(v2 + 1);
    *(v16 + 64) = *(v2 + 2);
    *(v16 + 80) = v17;
    *(v16 + 32) = v19;
    *(v16 + 48) = v18;
    v20 = *(v2 + 7);
    v22 = *(v2 + 4);
    v21 = *(v2 + 5);
    *(v16 + 128) = *(v2 + 6);
    *(v16 + 144) = v20;
    *(v16 + 96) = v22;
    *(v16 + 112) = v21;
    v23 = *(v2 + 11);
    v25 = *(v2 + 8);
    v24 = *(v2 + 9);
    *(v16 + 192) = *(v2 + 10);
    *(v16 + 208) = v23;
    *(v16 + 160) = v25;
    *(v16 + 176) = v24;
    v27 = *(v2 + 13);
    v26 = *(v2 + 14);
    v28 = *(v2 + 12);
    *(v16 + 272) = *(v2 + 30);
    *(v16 + 240) = v27;
    *(v16 + 256) = v26;
    *(v16 + 224) = v28;
  }

  free(v2);
}

void (*MemojiPoster.$avatarImage.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1 + 32, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2144571F0;
}

void sub_2144571F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[110];
    sub_213FB2E54(*a1, (v2 + 55), &qword_27C905500, &qword_2146F2BE0);
    sub_213FB2DF4(v3 + 32, &qword_27C905500, &qword_2146F2BE0);
    memcpy((v3 + 32), v2 + 55, 0x1B8uLL);
    sub_213FB2DF4(v2, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    v4 = v2[110];
    sub_213FB2DF4(v4 + 32, &qword_27C905500, &qword_2146F2BE0);
    memcpy((v4 + 32), v2, 0x1B8uLL);
  }

  free(v2);
}

uint64_t MemojiPoster.avatarRecord.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[59];
  v3 = v1[60];
  v4 = v1[61];
  v5 = v1[62];
  v6 = v1[63];
  v7 = v1[64];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_2142FCFDC(v2);
}

__n128 MemojiPoster.avatarRecord.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[60];
  v6 = v1[61];
  v7 = v1[62];
  v8 = v1[63];
  v9 = v1[64];
  sub_2142FCF38(v1[59]);
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 59) = *a1;
  *(v1 + 61) = v11;
  v1[63] = v3;
  v1[64] = v4;
  return result;
}

__n128 sub_214457438@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_214457448(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

__n128 sub_214457508@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 sub_214457514(__n128 *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

__n128 sub_214457540@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_214457550(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_2144576D8(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

__n128 sub_214457724@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 sub_214457740(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

__n128 sub_21445777C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 88);
  result = *(v1 + 97);
  *(a1 + 41) = result;
  return result;
}

__n128 sub_21445779C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  *(v1 + 88) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 97) = result;
  return result;
}

uint64_t sub_2144577DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_213FB2E54(v11, v10, &qword_27C908508, &qword_2146F5090);
}

__n128 sub_21445785C(uint64_t a1)
{
  v3 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v3;
  v10[6] = *(v1 + 96);
  v11 = *(v1 + 112);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C908508, &qword_2146F5090);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v9;
  return result;
}

__n128 sub_21445790C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 120);
  v3 = *(v1 + 136);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_21445791C(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  return result;
}

__n128 sub_21445794C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 152);
  v3 = *(v1 + 168);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_21445795C(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 152) = *a1;
  *(v1 + 168) = v3;
  return result;
}

uint64_t sub_21445798C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return v1;
}

uint64_t sub_2144579BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 192);

  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return result;
}

__n128 sub_214457A44@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 sub_214457A50(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t sub_214457AB4@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214457B24()
{
  v1 = *v0;
  sub_2146D9698();
}

uint64_t sub_214457B74@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_214457AB4(a1);
}

__n128 DynamicPoster.customColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 DynamicPoster.customColor.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return result;
}

BlastDoor::DynamicPoster::DynamicPosterType_optional __swiftcall DynamicPoster.DynamicPosterType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA8B8();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_214457D58(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214457E18(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_2146DA958();
  a3(v6);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214457EA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  sub_2146D9698();
}

uint64_t sub_214457F20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_2146DA958();
  a4(v7);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214457F98@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicPoster.DynamicPosterType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_214458070(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_2144581C0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_2146D9EE8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_2146D9F88() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_2144581C0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_214458258(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2144582CC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_214458258(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_21448C4AC(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2144582CC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_2146D9F88();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_2144583F0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2146DA6A8() & 1;
  }
}

uint64_t _s9BlastDoor13PosterArchiveV24ProviderBundleIdentifierO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_2146DA098();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_214458534()
{
  result = qword_27C913BF8;
  if (!qword_27C913BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913BF8);
  }

  return result;
}

unint64_t sub_214458588()
{
  result = qword_27C913C00;
  if (!qword_27C913C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C00);
  }

  return result;
}

unint64_t sub_2144585DC()
{
  result = qword_27C913C08;
  if (!qword_27C913C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C08);
  }

  return result;
}

unint64_t sub_214458630()
{
  result = qword_27C913C18;
  if (!qword_27C913C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C18);
  }

  return result;
}

unint64_t sub_214458684()
{
  result = qword_27C913C20;
  if (!qword_27C913C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C20);
  }

  return result;
}

unint64_t sub_2144586DC()
{
  result = qword_27C913C28;
  if (!qword_27C913C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C28);
  }

  return result;
}

uint64_t sub_214458788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144587C8()
{
  result = qword_27C913C30;
  if (!qword_27C913C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C30);
  }

  return result;
}

unint64_t sub_21445884C()
{
  result = qword_27C913C38;
  if (!qword_27C913C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C38);
  }

  return result;
}

unint64_t sub_2144588D0()
{
  result = qword_27C913C40;
  if (!qword_27C913C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C40);
  }

  return result;
}

unint64_t sub_2144589AC()
{
  result = qword_27C913C48;
  if (!qword_27C913C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C48);
  }

  return result;
}

unint64_t sub_214458A5C()
{
  result = qword_27C913C50;
  if (!qword_27C913C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C50);
  }

  return result;
}

unint64_t sub_214458B0C()
{
  result = qword_27C913C58;
  if (!qword_27C913C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C58);
  }

  return result;
}

unint64_t sub_214458C14()
{
  result = qword_27C913C60;
  if (!qword_27C913C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C60);
  }

  return result;
}

unint64_t sub_214458C98()
{
  result = qword_27C913C68;
  if (!qword_27C913C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C68);
  }

  return result;
}

unint64_t sub_214458D1C()
{
  result = qword_27C913C70;
  if (!qword_27C913C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C70);
  }

  return result;
}

unint64_t sub_214458D74()
{
  result = qword_27C913C78;
  if (!qword_27C913C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C78);
  }

  return result;
}

uint64_t sub_214458DC8(uint64_t a1)
{
  result = sub_214458EA4(&qword_27C913C80, type metadata accessor for PosterArchive);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_214458E20(uint64_t a1)
{
  *(a1 + 8) = sub_214458EA4(&qword_27C905610, type metadata accessor for PosterArchive);
  result = sub_214458EA4(&qword_27C9055F8, type metadata accessor for PosterArchive);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214458EA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_214458F1C()
{
  result = qword_27C913C88;
  if (!qword_27C913C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C88);
  }

  return result;
}

unint64_t sub_214458FCC()
{
  result = qword_27C913C90;
  if (!qword_27C913C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C90);
  }

  return result;
}

unint64_t sub_214459050()
{
  result = qword_27C913C98;
  if (!qword_27C913C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913C98);
  }

  return result;
}

unint64_t sub_2144590D4()
{
  result = qword_27C913CA0;
  if (!qword_27C913CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913CA0);
  }

  return result;
}

unint64_t sub_21445949C()
{
  result = qword_27C913CA8;
  if (!qword_27C913CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913CA8);
  }

  return result;
}

unint64_t sub_214459578()
{
  result = qword_27C913CB0;
  if (!qword_27C913CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913CB0);
  }

  return result;
}

uint64_t sub_21445964C()
{
  result = sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor13PosterArchiveV13ConfigurationV010TitleStyleE0V0F5ColorVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
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

uint64_t get_enum_tag_for_layout_string_9BlastDoor13PosterArchiveV13ConfigurationV010TitleStyleE0VSg(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy219_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 203) = *(a2 + 203);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_214459774(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 219))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 184);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2144597D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 218) = 0;
    *(result + 216) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 219) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 219) = 0;
    }

    if (a2)
    {
      *(result + 184) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterArchive.Configuration.SystemTimeFontConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterArchive.Configuration.SystemTimeFontConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy217_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_21445996C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 217))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 184);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2144599B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 217) = 1;
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
      *(result + 184) = (a2 - 1);
      return result;
    }

    *(result + 217) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214459A5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_214459AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_214459B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_214459BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleDiscreteColorContentStyleProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleDiscreteColorContentStyleProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_214459D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 729))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 728);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_214459D88(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    v5 = a2 - 251;
    bzero(a1, 0x2D9uLL);
    *a1 = v5;
    if (a3 >= 0xFB)
    {
      *(a1 + 729) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(a1 + 729) = 0;
    }

    if (a2)
    {
      *(a1 + 728) = -a2;
    }
  }
}

void sub_214459DFC(unsigned int *a1, unsigned int a2)
{
  if (a2 > 5)
  {
    v3 = a2 - 6;
    bzero(a1, 0x2D8uLL);
    *a1 = v3;
    LOBYTE(a2) = 6;
  }

  *(a1 + 728) = a2;
}

uint64_t sub_214459E68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 728))
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

uint64_t sub_214459EB0(uint64_t result, int a2, int a3)
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
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
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
      *(result + 728) = 1;
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

    *(result + 728) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214459FDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_21445A024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445A08C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 280))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 147);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21445A0E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 147) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21445A1B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 513))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_21445A204(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 504) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 512) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 513) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      return result;
    }

    *(a1 + 513) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445A308(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 306))
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

uint64_t sub_21445A350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 306) = 1;
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

    *(result + 306) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445A3F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21445A414(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 104) = v3;
  return result;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_21445A4AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 209))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21445A4CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
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

  *(result + 209) = v3;
  return result;
}

uint64_t sub_21445A540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21445A59C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21445A638(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10234))
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

uint64_t sub_21445A698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 10232) = 0;
    *(result + 8440) = 0u;
    *(result + 8424) = 0u;
    *(result + 8408) = 0u;
    *(result + 8392) = 0u;
    *(result + 8376) = 0u;
    *(result + 8360) = 0u;
    *(result + 8344) = 0u;
    *(result + 8328) = 0u;
    *(result + 8312) = 0u;
    *(result + 8296) = 0u;
    *(result + 8280) = 0u;
    *(result + 8264) = 0u;
    *(result + 8248) = 0u;
    *(result + 8232) = 0u;
    *(result + 8216) = 0u;
    *(result + 8200) = 0u;
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
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
    *(result + 10216) = 0u;
    *(result + 10200) = 0u;
    *(result + 10184) = 0u;
    *(result + 10168) = 0u;
    *(result + 10152) = 0u;
    *(result + 10136) = 0u;
    *(result + 10120) = 0u;
    *(result + 10104) = 0u;
    *(result + 10088) = 0u;
    *(result + 10072) = 0u;
    *(result + 10056) = 0u;
    *(result + 10040) = 0u;
    *(result + 10024) = 0u;
    *(result + 10008) = 0u;
    *(result + 9992) = 0u;
    *(result + 9976) = 0u;
    *(result + 9960) = 0u;
    *(result + 9944) = 0u;
    *(result + 9928) = 0u;
    *(result + 9912) = 0u;
    *(result + 9896) = 0u;
    *(result + 9880) = 0u;
    *(result + 9864) = 0u;
    *(result + 9848) = 0u;
    *(result + 9832) = 0u;
    *(result + 9816) = 0u;
    *(result + 9800) = 0u;
    *(result + 9784) = 0u;
    *(result + 9768) = 0u;
    *(result + 9752) = 0u;
    *(result + 9736) = 0u;
    *(result + 9720) = 0u;
    *(result + 9704) = 0u;
    *(result + 9688) = 0u;
    *(result + 9672) = 0u;
    *(result + 9656) = 0u;
    *(result + 9640) = 0u;
    *(result + 9624) = 0u;
    *(result + 9608) = 0u;
    *(result + 9592) = 0u;
    *(result + 9576) = 0u;
    *(result + 9560) = 0u;
    *(result + 9544) = 0u;
    *(result + 9528) = 0u;
    *(result + 9512) = 0u;
    *(result + 9496) = 0u;
    *(result + 9480) = 0u;
    *(result + 9464) = 0u;
    *(result + 9448) = 0u;
    *(result + 9432) = 0u;
    *(result + 9416) = 0u;
    *(result + 9400) = 0u;
    *(result + 9384) = 0u;
    *(result + 9368) = 0u;
    *(result + 9352) = 0u;
    *(result + 9336) = 0u;
    *(result + 9320) = 0u;
    *(result + 9304) = 0u;
    *(result + 9288) = 0u;
    *(result + 9272) = 0u;
    *(result + 9256) = 0u;
    *(result + 9240) = 0u;
    *(result + 9224) = 0u;
    *(result + 9208) = 0u;
    *(result + 9192) = 0u;
    *(result + 9176) = 0u;
    *(result + 9160) = 0u;
    *(result + 9144) = 0u;
    *(result + 9128) = 0u;
    *(result + 9112) = 0u;
    *(result + 9096) = 0u;
    *(result + 9080) = 0u;
    *(result + 9064) = 0u;
    *(result + 9048) = 0u;
    *(result + 9032) = 0u;
    *(result + 9016) = 0u;
    *(result + 9000) = 0u;
    *(result + 8984) = 0u;
    *(result + 8968) = 0u;
    *(result + 8952) = 0u;
    *(result + 8936) = 0u;
    *(result + 8920) = 0u;
    *(result + 8904) = 0u;
    *(result + 8888) = 0u;
    *(result + 8872) = 0u;
    *(result + 8856) = 0u;
    *(result + 8840) = 0u;
    *(result + 8824) = 0u;
    *(result + 8808) = 0u;
    *(result + 8792) = 0u;
    *(result + 8776) = 0u;
    *(result + 8760) = 0u;
    *(result + 8744) = 0u;
    *(result + 8728) = 0u;
    *(result + 8712) = 0u;
    *(result + 8696) = 0u;
    *(result + 8680) = 0u;
    *(result + 8664) = 0u;
    *(result + 8648) = 0u;
    *(result + 8632) = 0u;
    *(result + 8616) = 0u;
    *(result + 8600) = 0u;
    *(result + 8584) = 0u;
    *(result + 8568) = 0u;
    *(result + 8552) = 0u;
    *(result + 8536) = 0u;
    *(result + 8520) = 0u;
    *(result + 8504) = 0u;
    *(result + 8488) = 0u;
    *(result + 8472) = 0u;
    *(result + 8456) = 0u;
    *(result + 8184) = 0u;
    *(result + 8168) = 0u;
    *(result + 8152) = 0u;
    *(result + 8136) = 0u;
    *(result + 8120) = 0u;
    *(result + 8104) = 0u;
    *(result + 8088) = 0u;
    *(result + 8072) = 0u;
    *(result + 8056) = 0u;
    *(result + 8040) = 0u;
    *(result + 8024) = 0u;
    *(result + 8008) = 0u;
    *(result + 7992) = 0u;
    *(result + 7976) = 0u;
    *(result + 7960) = 0u;
    *(result + 7944) = 0u;
    *(result + 7928) = 0u;
    *(result + 7912) = 0u;
    *(result + 7896) = 0u;
    *(result + 7880) = 0u;
    *(result + 7864) = 0u;
    *(result + 7848) = 0u;
    *(result + 7832) = 0u;
    *(result + 7816) = 0u;
    *(result + 7800) = 0u;
    *(result + 7784) = 0u;
    *(result + 7768) = 0u;
    *(result + 7752) = 0u;
    *(result + 7736) = 0u;
    *(result + 7720) = 0u;
    *(result + 7704) = 0u;
    *(result + 7688) = 0u;
    *(result + 7672) = 0u;
    *(result + 7656) = 0u;
    *(result + 7640) = 0u;
    *(result + 7624) = 0u;
    *(result + 7608) = 0u;
    *(result + 7592) = 0u;
    *(result + 7576) = 0u;
    *(result + 7560) = 0u;
    *(result + 7544) = 0u;
    *(result + 7528) = 0u;
    *(result + 7512) = 0u;
    *(result + 7496) = 0u;
    *(result + 7480) = 0u;
    *(result + 7464) = 0u;
    *(result + 7448) = 0u;
    *(result + 7432) = 0u;
    *(result + 7416) = 0u;
    *(result + 7400) = 0u;
    *(result + 7384) = 0u;
    *(result + 7368) = 0u;
    *(result + 7352) = 0u;
    *(result + 7336) = 0u;
    *(result + 7320) = 0u;
    *(result + 7304) = 0u;
    *(result + 7288) = 0u;
    *(result + 7272) = 0u;
    *(result + 7256) = 0u;
    *(result + 7240) = 0u;
    *(result + 7224) = 0u;
    *(result + 7208) = 0u;
    *(result + 7192) = 0u;
    *(result + 7176) = 0u;
    *(result + 7160) = 0u;
    *(result + 7144) = 0u;
    *(result + 7128) = 0u;
    *(result + 7112) = 0u;
    *(result + 7096) = 0u;
    *(result + 7080) = 0u;
    *(result + 7064) = 0u;
    *(result + 7048) = 0u;
    *(result + 7032) = 0u;
    *(result + 7016) = 0u;
    *(result + 7000) = 0u;
    *(result + 6984) = 0u;
    *(result + 6968) = 0u;
    *(result + 6952) = 0u;
    *(result + 6936) = 0u;
    *(result + 6920) = 0u;
    *(result + 6904) = 0u;
    *(result + 6888) = 0u;
    *(result + 6872) = 0u;
    *(result + 6856) = 0u;
    *(result + 6840) = 0u;
    *(result + 6824) = 0u;
    *(result + 6808) = 0u;
    *(result + 6792) = 0u;
    *(result + 6776) = 0u;
    *(result + 6760) = 0u;
    *(result + 6744) = 0u;
    *(result + 6728) = 0u;
    *(result + 6712) = 0u;
    *(result + 6696) = 0u;
    *(result + 6680) = 0u;
    *(result + 6664) = 0u;
    *(result + 6648) = 0u;
    *(result + 6632) = 0u;
    *(result + 6616) = 0u;
    *(result + 6600) = 0u;
    *(result + 6584) = 0u;
    *(result + 6568) = 0u;
    *(result + 6552) = 0u;
    *(result + 6536) = 0u;
    *(result + 6520) = 0u;
    *(result + 6504) = 0u;
    *(result + 6488) = 0u;
    *(result + 6472) = 0u;
    *(result + 6456) = 0u;
    *(result + 6440) = 0u;
    *(result + 6424) = 0u;
    *(result + 6408) = 0u;
    *(result + 6392) = 0u;
    *(result + 6376) = 0u;
    *(result + 6360) = 0u;
    *(result + 6344) = 0u;
    *(result + 6328) = 0u;
    *(result + 6312) = 0u;
    *(result + 6296) = 0u;
    *(result + 6280) = 0u;
    *(result + 6264) = 0u;
    *(result + 6248) = 0u;
    *(result + 6232) = 0u;
    *(result + 6216) = 0u;
    *(result + 6200) = 0u;
    *(result + 6184) = 0u;
    *(result + 6168) = 0u;
    *(result + 6152) = 0u;
    *(result + 6136) = 0u;
    *(result + 6120) = 0u;
    *(result + 6104) = 0u;
    *(result + 6088) = 0u;
    *(result + 6072) = 0u;
    *(result + 6056) = 0u;
    *(result + 6040) = 0u;
    *(result + 6024) = 0u;
    *(result + 6008) = 0u;
    *(result + 5992) = 0u;
    *(result + 5976) = 0u;
    *(result + 5960) = 0u;
    *(result + 5944) = 0u;
    *(result + 5928) = 0u;
    *(result + 5912) = 0u;
    *(result + 5896) = 0u;
    *(result + 5880) = 0u;
    *(result + 5864) = 0u;
    *(result + 5848) = 0u;
    *(result + 5832) = 0u;
    *(result + 5816) = 0u;
    *(result + 5800) = 0u;
    *(result + 5784) = 0u;
    *(result + 5768) = 0u;
    *(result + 5752) = 0u;
    *(result + 5736) = 0u;
    *(result + 5720) = 0u;
    *(result + 5704) = 0u;
    *(result + 5688) = 0u;
    *(result + 5672) = 0u;
    *(result + 5656) = 0u;
    *(result + 5640) = 0u;
    *(result + 5624) = 0u;
    *(result + 5608) = 0u;
    *(result + 5592) = 0u;
    *(result + 5576) = 0u;
    *(result + 5560) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
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
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 792) = 0u;
    *result = a2 - 0x7FFFFFFF;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10234) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10234) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy250_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 234) = *(a2 + 234);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_21445B240(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 250))
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

uint64_t sub_21445B29C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 248) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 250) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 250) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21445B374(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_21445B3BC(uint64_t result, int a2, int a3)
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
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445B438(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 521))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 304) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_21445B488(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 520) = 0;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 521) = 1;
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
      *(a1 + 280) = 0;
      *(a1 + 288) = 0;
      *(a1 + 296) = 0;
      *(a1 + 304) = 2 * -a2;
      result = 0.0;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      *(a1 + 440) = 0u;
      *(a1 + 456) = 0u;
      return result;
    }

    *(a1 + 521) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445B584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 192);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21445B5CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445B690(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21445B6D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 5;
    }
  }

  return result;
}

__n128 __swift_memcpy190_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 174) = *(a2 + 174);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_21445B778(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 190))
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

uint64_t sub_21445B7C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 188) = 0;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 190) = 1;
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

    *(result + 190) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445B844(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEF && a1[41])
  {
    return (*a1 + 239);
  }

  v3 = *a1;
  v4 = v3 >= 0x12;
  v5 = v3 - 18;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21445B888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 239;
    if (a3 >= 0xEF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 17;
    }
  }

  return result;
}

unint64_t sub_21445B91C()
{
  result = qword_27C913CB8;
  if (!qword_27C913CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913CB8);
  }

  return result;
}

unint64_t sub_21445B974()
{
  result = qword_27C913CC0;
  if (!qword_27C913CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913CC0);
  }

  return result;
}

unint64_t sub_21445B9CC()
{
  result = qword_27C913CC8;
  if (!qword_27C913CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913CC8);
  }

  return result;
}

unint64_t sub_21445BA24()
{
  result = qword_27C913CD0;
  if (!qword_27C913CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913CD0);
  }

  return result;
}

unint64_t sub_21445BA7C()
{
  result = qword_27C913CD8;
  if (!qword_27C913CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913CD8);
  }

  return result;
}

unint64_t sub_21445BAD4()
{
  result = qword_27C913CE0;
  if (!qword_27C913CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913CE0);
  }

  return result;
}

uint64_t sub_21445BB28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5555726574736F70 && a2 == 0xEA00000000004449 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021479AC40 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

unint64_t sub_21445BD3C()
{
  result = qword_27C913CE8;
  if (!qword_27C913CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913CE8);
  }

  return result;
}

unint64_t sub_21445BD90()
{
  result = qword_27C913CF0;
  if (!qword_27C913CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913CF0);
  }

  return result;
}

unint64_t sub_21445BDE4()
{
  result = qword_27C913CF8;
  if (!qword_27C913CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913CF8);
  }

  return result;
}

unint64_t sub_21445BE38()
{
  result = qword_27C913D00;
  if (!qword_27C913D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D00);
  }

  return result;
}

unint64_t sub_21445BE8C()
{
  result = qword_27C913D08;
  if (!qword_27C913D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D08);
  }

  return result;
}

unint64_t sub_21445BEE0()
{
  result = qword_27C913D10;
  if (!qword_27C913D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D10);
  }

  return result;
}

unint64_t sub_21445BF34()
{
  result = qword_27C913D18;
  if (!qword_27C913D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D18);
  }

  return result;
}

unint64_t sub_21445BF88()
{
  result = qword_27C913D20;
  if (!qword_27C913D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D20);
  }

  return result;
}

unint64_t sub_21445BFDC()
{
  result = qword_27C913D28;
  if (!qword_27C913D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D28);
  }

  return result;
}

unint64_t sub_21445C030()
{
  result = qword_27C913D30;
  if (!qword_27C913D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D30);
  }

  return result;
}

unint64_t sub_21445C084()
{
  result = qword_27C913D38;
  if (!qword_27C913D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D38);
  }

  return result;
}

unint64_t sub_21445C0D8()
{
  result = qword_27C913D40;
  if (!qword_27C913D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D40);
  }

  return result;
}

unint64_t sub_21445C12C()
{
  result = qword_27C913D48;
  if (!qword_27C913D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D48);
  }

  return result;
}

unint64_t sub_21445C180()
{
  result = qword_27C913D50;
  if (!qword_27C913D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D50);
  }

  return result;
}

uint64_t sub_21445C1E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0 && sub_2146D96A8() > a3)
  {
    return 0;
  }

  v5 = sub_2146D96F8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    do
    {
      if (sub_2146D9528() & 1) != 0 || (sub_2146D9538() & 1) != 0 || (sub_2146D94F8() & 1) != 0 || v7 == 9142498 && v8 == 0xA300000000000000 || (sub_2146DA6A8() & 1) != 0 || (sub_2146D9548())
      {
      }

      else
      {
        v10 = sub_2146D9518();

        if ((v10 & 1) == 0)
        {
          v4 = 0;
          goto LABEL_19;
        }
      }

      v7 = sub_2146D96F8();
      v8 = v9;
    }

    while (v9);
  }

  v4 = 1;
LABEL_19:

  return v4;
}

uint64_t sub_21445C344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8928();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
LABEL_12:
    v29 = 0;
    return v29 & 1;
  }

  (*(v9 + 32))(v12, v7, v8);
  v13 = *(a3 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v33 = v12;
    v34[0] = MEMORY[0x277D84F90];
    sub_21409FD08(0, v13, 0);
    v14 = v34[0];
    sub_214069AD8();
    v15 = (a3 + 40);
    do
    {
      v16 = *v15;
      v35 = *(v15 - 1);
      v36 = v16;
      v17 = sub_2146D9DD8();
      v34[0] = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        v32 = v17;
        v22 = v18;
        sub_21409FD08((v19 > 1), v20 + 1, 1);
        v18 = v22;
        v17 = v32;
        v14 = v34[0];
      }

      *(v14 + 16) = v20 + 1;
      v21 = v14 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v15 += 2;
      --v13;
    }

    while (v13);
    v12 = v33;
  }

  v23 = sub_2146D8918();
  if (!v24)
  {
    (*(v9 + 8))(v12, v8);

    goto LABEL_12;
  }

  v35 = v23;
  v36 = v24;
  sub_214069AD8();
  v25 = sub_2146D9DD8();
  v27 = v26;

  v34[0] = v25;
  v34[1] = v27;
  MEMORY[0x28223BE20](v28);
  *(&v31 - 2) = v34;
  v29 = sub_21441C084(sub_21445D518, (&v31 - 4), v14);

  (*(v9 + 8))(v12, v8);

  return v29 & 1;
}

uint64_t sub_21445C678(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  result = sub_2146D89C8();
  if (v8 >> 60 == 15)
  {
    return 0;
  }

  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = result;
      v11 = v8;
      v12 = 0;
      goto LABEL_12;
    }

    v14 = *(result + 16);
    v13 = *(result + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (!v15)
    {
      v11 = v8;
      v10 = result;
      v12 = v16;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    if (!v9)
    {
      v10 = result;
      v11 = v8;
      v12 = BYTE6(v8);
LABEL_12:
      v17 = a3(v12, a5);
      sub_213FDC6BC(v10, v11);
      return v17 & 1;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      v11 = v8;
      v10 = result;
      v12 = HIDWORD(result) - result;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21445C760(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D91A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D58, &qword_214747238);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v19 - v9;
  if (qword_27C9030A8 != -1)
  {
    swift_once();
  }

  if (byte_27CA19C80)
  {
    return 1;
  }

  sub_2146D9198();
  sub_2146D9158();
  v11 = 1;
  v12 = (*(v5 + 48))(v10, 1, v4);
  sub_213FB2DF4(v10, &qword_27C913D58, &qword_214747238);
  if (v12 == 1)
  {
    sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2146EA710;
    v19[0] = a1;
    v19[1] = a2;

    v14 = MEMORY[0x277D837D0];
    v15 = sub_2146D9618();
    v17 = v16;
    *(v13 + 56) = v14;
    *(v13 + 64) = sub_213FB2DA0();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    sub_2146D91D8();

    return 0;
  }

  return v11;
}

unint64_t sub_21445C9EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0 && sub_2146D96A8() > a3)
  {
    return 0;
  }

  while (1)
  {
    v5 = sub_2146D96F8();
    v4 = v6 == 0;
    if (!v6)
    {
      goto LABEL_47;
    }

    v7 = v5;
    v8 = v6;
    if (v5 == 2573 && v6 == 0xE200000000000000)
    {
LABEL_44:

      goto LABEL_47;
    }

    result = sub_2146DA6A8();
    v10 = HIBYTE(v8) & 0xF;
    if ((result & 1) == 0)
    {
      break;
    }

LABEL_20:
    result = sub_2146DA6A8();
    if (result)
    {
      goto LABEL_44;
    }

    if ((v8 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      goto LABEL_51;
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
      result = sub_2146D9658();
    }

    else
    {
      if ((v8 & 0x2000000000000000) != 0)
      {
        v14 = v7;
      }

      else
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          v13 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v13 = sub_2146D9F88();
        }

        v14 = *v13;
      }

      v15 = v14;
      v16 = (__clz(~v14) - 24) << 16;
      if (v15 < 0)
      {
        result = v16;
      }

      else
      {
        result = 65541;
      }
    }

    if (result >> 14 != 4 * v10)
    {
      goto LABEL_52;
    }

    result = sub_214458070(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_57;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
      goto LABEL_53;
    }

    result = sub_214458070(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_58;
    }

    v17 = result;

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_54;
    }

    if (v17 < 0x20u || v17 >= 0x7Fu)
    {
      goto LABEL_47;
    }
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    if ((v8 & 0x1000000000000000) != 0)
    {
      v12 = sub_2146D9658();
    }

    else
    {
      v12 = sub_2146D9ED8() << 16;
    }

    if (v12 >> 14 != 4 * v11)
    {
      goto LABEL_46;
    }

    result = sub_214458070(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_55;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_46:

LABEL_47:

      return v4;
    }

    result = sub_214458070(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_56;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_20;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

unint64_t sub_21445CC88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0 && sub_2146D96A8() > a3)
  {
    return 0;
  }

  v5 = sub_2146D96F8();
  if (!v6)
  {
LABEL_34:
    v4 = 1;
LABEL_37:

    return v4;
  }

  v7 = v5;
  v8 = v6;
  while (1)
  {
    if (v7 == 2573 && v8 == 0xE200000000000000)
    {
      goto LABEL_29;
    }

    result = sub_2146DA6A8();
    if (result)
    {
      goto LABEL_29;
    }

    v11 = (v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : v7 & 0xFFFFFFFFFFFFLL;
    if (!v11)
    {
      break;
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
      v16 = sub_2146D9658();
    }

    else
    {
      if ((v8 & 0x2000000000000000) != 0)
      {
        v13 = v7;
      }

      else
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          v12 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v12 = sub_2146D9F88();
        }

        v13 = *v12;
      }

      v14 = v13;
      v15 = (__clz(~v13) - 24) << 16;
      if (v14 < 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 65541;
      }
    }

    if (v16 >> 14 != 4 * v11)
    {
      goto LABEL_35;
    }

    result = sub_214458070(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_41;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_35:

LABEL_36:
      v4 = 0;
      goto LABEL_37;
    }

    result = sub_214458070(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_42;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_40;
    }

LABEL_29:
    if (sub_2146D9528())
    {
    }

    else
    {
      v17 = sub_2146D9538();

      if ((v17 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v7 = sub_2146D96F8();
    v8 = v9;
    if (!v9)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}