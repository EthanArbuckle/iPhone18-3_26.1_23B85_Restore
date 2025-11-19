uint64_t EnvironmentValues.alertConfiguration.getter()
{
  sub_242D59324();

  return sub_242F04010();
}

unint64_t sub_242D59324()
{
  result = qword_27ECF3F20;
  if (!qword_27ECF3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3F20);
  }

  return result;
}

void (*EnvironmentValues.alertConfiguration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for ActionConfiguration(0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_242D59324();
  sub_242F04010();
  return sub_242D594A4;
}

uint64_t EnvironmentValues.actionConfiguration.getter()
{
  sub_242D59520();

  return sub_242F04010();
}

unint64_t sub_242D59520()
{
  result = qword_27ECF3F28;
  if (!qword_27ECF3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3F28);
  }

  return result;
}

uint64_t sub_242D59594(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for ActionConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_242D5A274(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionConfiguration);
  a2(v6);
  sub_242F04020();
  return sub_242D5A084(a1, type metadata accessor for ActionConfiguration);
}

void (*EnvironmentValues.actionConfiguration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for ActionConfiguration(0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_242D59520();
  sub_242F04010();
  return sub_242D59778;
}

void sub_242D597AC(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  sub_242D5A274((*a1)[3], (*a1)[2], a3);
  v9 = v8[3];
  v10 = v8[1];
  v11 = v8[2];
  if (a2)
  {
    sub_242D5A274(v8[2], v8[1], a3);
    sub_242F04020();
    sub_242D5A084(v11, a5);
  }

  else
  {
    sub_242F04020();
  }

  sub_242D5A084(v9, a5);
  free(v9);
  free(v11);
  free(v10);

  free(v8);
}

uint64_t EnvironmentValues.fancyNotificationConfiguration.getter()
{
  sub_242D598D8();

  return sub_242F04010();
}

unint64_t sub_242D598D8()
{
  result = qword_27ECF3F30;
  if (!qword_27ECF3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3F30);
  }

  return result;
}

uint64_t EnvironmentValues.fancyNotificationConfiguration.setter(uint64_t a1)
{
  v2 = type metadata accessor for FancyNotificationConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_242D5A274(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FancyNotificationConfiguration);
  sub_242D598D8();
  sub_242F04020();
  return sub_242D5A084(a1, type metadata accessor for FancyNotificationConfiguration);
}

void (*EnvironmentValues.fancyNotificationConfiguration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for FancyNotificationConfiguration(0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_242D598D8();
  sub_242F04010();
  return sub_242D59B00;
}

uint64_t EnvironmentValues.bannerConfiguration.getter()
{
  sub_242D59B7C();

  return sub_242F04010();
}

unint64_t sub_242D59B7C()
{
  result = qword_27ECF3F38;
  if (!qword_27ECF3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3F38);
  }

  return result;
}

uint64_t EnvironmentValues.bannerConfiguration.setter(uint64_t a1)
{
  v2 = type metadata accessor for BannerConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_242D5A274(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BannerConfiguration);
  sub_242D59B7C();
  sub_242F04020();
  return sub_242D5A084(a1, type metadata accessor for BannerConfiguration);
}

void (*EnvironmentValues.bannerConfiguration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for BannerConfiguration(0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_242D59B7C();
  sub_242F04010();
  return sub_242D59DA4;
}

uint64_t EnvironmentValues.noticeConfiguration.getter()
{
  sub_242D59E20();

  return sub_242F04010();
}

unint64_t sub_242D59E20()
{
  result = qword_27ECF3F40;
  if (!qword_27ECF3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3F40);
  }

  return result;
}

uint64_t sub_242D59EB4(uint64_t a1)
{
  v2 = type metadata accessor for NoticeConfiguration(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_242D5A274(a1, &v9 - v6, type metadata accessor for NoticeConfiguration);
  sub_242D5A274(v7, v5, type metadata accessor for NoticeConfiguration);
  sub_242D59E20();
  sub_242F04020();
  return sub_242D5A084(v7, type metadata accessor for NoticeConfiguration);
}

uint64_t EnvironmentValues.noticeConfiguration.setter(uint64_t a1)
{
  v2 = type metadata accessor for NoticeConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_242D5A274(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NoticeConfiguration);
  sub_242D59E20();
  sub_242F04020();
  return sub_242D5A084(a1, type metadata accessor for NoticeConfiguration);
}

uint64_t sub_242D5A084(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void (*EnvironmentValues.noticeConfiguration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for NoticeConfiguration(0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_242D59E20();
  sub_242F04010();
  return sub_242D5A1F0;
}

uint64_t sub_242D5A274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242D5A2DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242D5A3A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NotificationModel.FancyModel.text.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_242CD52B8(v2, v3, v4, v5, v6);
}

__n128 NotificationModel.FancyModel.text.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_242CD5324(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t NotificationModel.FancyModel.symbol.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_242CD5460(v2, v3);
}

__n128 NotificationModel.FancyModel.symbol.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_242CD54A4(v1[5], v1[6]);
  result = v4;
  *(v1 + 5) = v4;
  v1[7] = v2;
  return result;
}

uint64_t NotificationModel.FancyModel.trailingButtonConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_242D5A520(v2, v3);
}

uint64_t sub_242D5A520(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 NotificationModel.FancyModel.trailingButtonConfiguration.setter(uint64_t a1)
{
  sub_242D3D654(*(v1 + 64), *(v1 + 72));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v4;
  return result;
}

uint64_t NotificationModel.FancyModel.actionButtons.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t (*NotificationModel.FancyModel.dismissalHandler.getter())()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_242D5A674;
}

uint64_t NotificationModel.FancyModel.dismissalHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  *(v2 + 104) = sub_242D5A6E0;
  *(v2 + 112) = v5;
  return result;
}

uint64_t (*NotificationModel.FancyModel.dismissalHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v4 = *(v1 + 104);
  v3 = *(v1 + 112);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_242D5D194;
  a1[1] = v5;

  return sub_242D5A76C;
}

uint64_t sub_242D5A76C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;

    *(v4 + 104) = sub_242D5D19C;
    *(v4 + 112) = v5;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;

    *(v4 + 104) = sub_242D5D19C;
    *(v4 + 112) = v7;
  }

  return result;
}

uint64_t NotificationModel.FancyModel.init(text:symbol:trailingButtonConfiguration:actionButtons:dismissalHandler:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *(a1 + 32);
  v12 = *(a2 + 2);
  v17 = *a2;
  v18 = *a3;
  v13 = *(a3 + 2);
  v14 = *(a3 + 3);
  *(a7 + 120) = 5;
  v15 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v15;
  *(a7 + 32) = v11;
  sub_242CD54A4(0, 0);
  *(a7 + 40) = v17;
  *(a7 + 56) = v12;
  sub_242D3D654(0, 0);
  *(a7 + 64) = v18;
  *(a7 + 80) = v13;
  *(a7 + 88) = v14;
  *(a7 + 96) = a4;
  result = swift_allocObject();
  *(result + 16) = a5;
  *(result + 24) = a6;
  *(a7 + 104) = sub_242D5D19C;
  *(a7 + 112) = result;
  return result;
}

char *NotificationModel.FancyModel.validate(errors:automakerSymbolValidator:)(char *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  v103 = v3[5];
  v104 = v3[6];
  v10 = v3[8];
  v102 = v3[9];
  v110 = v3[12];
  v111 = v3[15];

  v101 = v10;
  if (v9 > 1)
  {
    v12 = a1;
    goto LABEL_8;
  }

  v11 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v11 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v13 = v110;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_242C832C4(0, *(a1 + 2) + 1, 1, a1);
    }

    v20 = *(a1 + 2);
    v19 = *(a1 + 3);
    if (v20 >= v19 >> 1)
    {
      a1 = sub_242C832C4((v19 > 1), v20 + 1, 1, a1);
    }

    *(a1 + 2) = v20 + 1;
    v21 = &a1[40 * v20];
    *(v21 + 4) = 1;
    *(v21 + 5) = 0;
    *(v21 + 6) = 0;
    *(v21 + 7) = 0;
    v21[64] = 5;
    v12 = a1;
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_22:
    v15 = v111;
    goto LABEL_23;
  }

  v12 = a1;
  v13 = v110;
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_6:
  v6 = v7;
  v5 = v8;
LABEL_8:

  v14 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v14 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v15 = v111;
  if (v14)
  {
    v13 = v110;
  }

  else
  {
    v13 = v110;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
    }

    v17 = *(v12 + 2);
    v16 = *(v12 + 3);
    if (v17 >= v16 >> 1)
    {
      v12 = sub_242C832C4((v16 > 1), v17 + 1, 1, v12);
    }

    *(v12 + 2) = v17 + 1;
    v18 = &v12[40 * v17];
    *(v18 + 4) = 2;
    *(v18 + 5) = 0;
    *(v18 + 6) = 0;
    *(v18 + 7) = 0;
    v18[64] = 5;
  }

LABEL_23:
  v22 = *(v13 + 16);
  if (!v22)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_31;
    }

    goto LABEL_132;
  }

  if (v15 >= v22)
  {
    goto LABEL_35;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
  }

  v24 = *(v12 + 2);
  v23 = *(v12 + 3);
  v25 = v24 + 1;
  if (v24 >= v23 >> 1)
  {
    v12 = sub_242C832C4((v23 > 1), v24 + 1, 1, v12);
  }

  for (i = 4; ; i = 3)
  {
    *(v12 + 2) = v25;
    v28 = &v12[40 * v24];
    *(v28 + 4) = i;
    *(v28 + 5) = 0;
    *(v28 + 6) = 0;
    *(v28 + 7) = 0;
    v28[64] = 5;
LABEL_35:
    sub_242CD6078(v15, v13);
    v30 = v29;
    v32 = v31;
    v34 = v33 >> 1;

    if (v32 != v34)
    {
      break;
    }

LABEL_36:
    swift_unknownObjectRelease();
    sub_242CD6078(v111, v13);
    v22 = v37 >> 1;
    if (v36 == v37 >> 1)
    {

      goto LABEL_38;
    }

    if (v36 < (v37 >> 1))
    {
      v85 = v35;
      v86 = v36;

      v87 = ~v86 + v22;
      for (j = (v85 + 72 * v86); ; j = (j + 72))
      {
        v131 = *j;
        v89 = j[1];
        v90 = j[2];
        v91 = j[3];
        v135 = *(j + 8);
        v133 = v90;
        v134 = v91;
        v132 = v89;
        sub_242C7F9E8(&v131, &v160);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
        }

        v93 = *(v12 + 2);
        v92 = *(v12 + 3);
        if (v93 >= v92 >> 1)
        {
          v12 = sub_242C832C4((v92 > 1), v93 + 1, 1, v12);
        }

        sub_242C7FA44(&v131);
        v94 = v131;
        *(v12 + 2) = v93 + 1;
        v95 = &v12[40 * v93];
        *(v95 + 4) = v94;
        *(v95 + 5) = 0;
        *(v95 + 6) = 0;
        *(v95 + 7) = 0;
        v95[64] = 0;
        if (!v87)
        {
          break;
        }

        --v87;
      }

LABEL_38:
      swift_unknownObjectRelease();
      v15 = v103;
      v32 = v104;
      if (!v102)
      {
        goto LABEL_42;
      }

      v38 = HIBYTE(v102) & 0xF;
      if ((v102 & 0x2000000000000000) == 0)
      {
        v38 = v101 & 0xFFFFFFFFFFFFLL;
      }

      if (!v38)
      {
LABEL_42:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_131;
        }

        goto LABEL_43;
      }

      goto LABEL_46;
    }

    __break(1u);
LABEL_132:
    v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
LABEL_31:
    v24 = *(v12 + 2);
    v27 = *(v12 + 3);
    v25 = v24 + 1;
    if (v24 >= v27 >> 1)
    {
      v12 = sub_242C832C4((v27 > 1), v24 + 1, 1, v12);
    }
  }

  if (v22 >= v15)
  {
    v45 = v15;
  }

  else
  {
    v45 = v22;
  }

  if (v15)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v108 = v34;
  v109 = v46;
  v107 = v13 + 72 * v46 - 40;
  v47 = 0;
  v48 = (v30 + 72 * v32);
  while (v32 < v34)
  {
    v155 = *v48;
    v49 = v48[1];
    v50 = v48[2];
    v51 = v48[3];
    v159 = *(v48 + 8);
    v157 = v50;
    v158 = v51;
    v156 = v49;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_127;
    }

    v115 = v32;
    v116 = v47;
    v162 = v157;
    v163 = v158;
    v164 = v159;
    v160 = v155;
    v161 = v156;
    v52 = v157 & 0xFFFFFFFFFFFFLL;
    if ((*(&v157 + 1) & 0x2000000000000000) != 0)
    {
      v52 = HIBYTE(*(&v157 + 1)) & 0xFLL;
    }

    if (v52)
    {
      sub_242C7F9E8(&v155, &v131);
      v53 = v161;
      if (!v161)
      {
        goto LABEL_74;
      }
    }

    else
    {
      sub_242C7F9E8(&v155, &v131);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
      }

      v55 = *(v12 + 2);
      v54 = *(v12 + 3);
      if (v55 >= v54 >> 1)
      {
        v12 = sub_242C832C4((v54 > 1), v55 + 1, 1, v12);
      }

      v56 = v160;
      *(v12 + 2) = v55 + 1;
      v57 = &v12[40 * v55];
      *(v57 + 4) = v56;
      *(v57 + 5) = 0;
      *(v57 + 6) = 0;
      *(v57 + 7) = 0;
      v57[64] = 0;
      v53 = v161;
      if (!v161)
      {
        goto LABEL_74;
      }
    }

    v58 = *(&v160 + 1);
    v15 = *(&v161 + 1);
    v59 = objc_opt_self();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v60 = sub_242F04F00();
    v32 = [v59 _systemImageNamed_];

    if (v32)
    {

LABEL_73:
      sub_242CD54A4(v58, v53);
      sub_242CD54A4(v58, v53);
LABEL_74:
      if (v111 < 0)
      {
        goto LABEL_128;
      }

      goto LABEL_75;
    }

    if (a2)
    {
      v32 = a3;

      v71 = a2(v58, v53);
      sub_242C655DC(a2);
      if (v71)
      {
        goto LABEL_73;
      }
    }

    sub_242CD54A4(v58, v53);
    sub_242CD54A4(v58, v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
    }

    v73 = *(v12 + 2);
    v72 = *(v12 + 3);
    v15 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      v12 = sub_242C832C4((v72 > 1), v73 + 1, 1, v12);
    }

    v74 = v160;
    *(v12 + 2) = v15;
    v75 = &v12[40 * v73];
    *(v75 + 4) = v58;
    *(v75 + 5) = v53;
    *(v75 + 6) = v74;
    *(v75 + 7) = v116;
    v75[64] = 2;
    if (v111 < 0)
    {
      goto LABEL_128;
    }

LABEL_75:
    if (*(v13 + 16) < v109)
    {
      goto LABEL_129;
    }

    v114 = v12;
    if (v109)
    {
      if (v109 == 0x8000000000000000)
      {
        goto LABEL_130;
      }

      v131 = *v107;
      v61 = *(v107 + 64);
      v63 = *(v107 + 32);
      v62 = *(v107 + 48);
      v132 = *(v107 + 16);
      v133 = v63;
      v134 = v62;
      v135 = v61;
      v112 = *(&v131 + 1);
      v113 = v131;
      v65 = *(&v132 + 1);
      v64 = v132;
      v67 = *(&v63 + 1);
      v66 = v63;
      v15 = *(&v62 + 1);
      v68 = v62;
      sub_242C7F9E8(&v131, &v150);
    }

    else
    {
      v112 = 0;
      v113 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v15 = 0;
      v61 = 0;
    }

    v147 = v160;
    v148 = v161;
    v69 = *(&v162 + 1);
    v149 = v162;
    v145 = v163;
    v146 = v164;
    if (*(&v162 + 1))
    {
      v131 = v160;
      v132 = v161;
      v133 = v162;
      v135 = v164;
      v134 = v163;
      v150 = v160;
      v151 = v161;
      v154 = v164;
      v152 = v162;
      v153 = v163;
      if (!v67)
      {
        v128 = v133;
        v129 = v134;
        v130 = v135;
        v126 = v131;
        v127 = v132;
        sub_242C7F9E8(&v160, v124);
        sub_242D5C5AC(&v131, v124);
        sub_242C7FA44(&v126);
        goto LABEL_95;
      }

      *&v117 = v113;
      *(&v117 + 1) = v112;
      *&v118 = v64;
      *(&v118 + 1) = v65;
      *&v119 = v66;
      *(&v119 + 1) = v67;
      *&v120 = v68;
      *(&v120 + 1) = v15;
      v121 = v61;
      sub_242C7F9E8(&v160, v124);
      sub_242D5C5AC(&v131, v124);
      v70 = _s14CarPlayAssetUI17NotificationModelV05FancyF0V19ActionConfigurationV2eeoiySbAG_AGtFZ_0(&v150, &v117);
      v122[2] = v119;
      v122[3] = v120;
      v123 = v121;
      v122[0] = v117;
      v122[1] = v118;
      sub_242C7FA44(v122);
      v124[2] = v152;
      v124[3] = v153;
      v125 = v154;
      v124[0] = v150;
      v124[1] = v151;
      sub_242C7FA44(v124);
      v126 = v147;
      v127 = v148;
      *&v128 = v149;
      *(&v128 + 1) = v69;
      v129 = v145;
      v130 = v146;
      sub_242C6D138(&v126, &qword_27ECF3F58);
      if ((v70 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    else
    {
      if (v67)
      {
        sub_242C7F9E8(&v160, &v131);
LABEL_95:
        v131 = v147;
        v132 = v148;
        *&v133 = v149;
        *(&v133 + 1) = v69;
        v134 = v145;
        v135 = v146;
        v136 = v113;
        v137 = v112;
        v138 = v64;
        v139 = v65;
        v140 = v66;
        v141 = v67;
        v142 = v68;
        v143 = v15;
        v144 = v61;
        sub_242C6D138(&v131, &qword_27ECF3F50);
LABEL_96:
        v12 = v114;
        v76 = v115;
        v13 = v110;
        v34 = v108;
        if (BYTE1(v163) == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_242C832C4(0, *(v114 + 2) + 1, 1, v114);
          }

          v78 = *(v12 + 2);
          v77 = *(v12 + 3);
          if (v78 >= v77 >> 1)
          {
            v12 = sub_242C832C4((v77 > 1), v78 + 1, 1, v12);
          }

          sub_242C7FA44(&v160);
          v79 = v160;
          *(v12 + 2) = v78 + 1;
          v80 = &v12[40 * v78];
          *(v80 + 4) = v79;
          *(v80 + 5) = 0;
          *(v80 + 6) = 0;
          *(v80 + 7) = 0;
          v80[64] = 4;
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      v131 = v160;
      v132 = v161;
      v133 = v162;
      v134 = v163;
      v135 = v164;
      sub_242C7F9E8(&v160, &v150);
      sub_242C6D138(&v131, &qword_27ECF3F58);
    }

    v12 = v114;
    v76 = v115;
    v13 = v110;
    v34 = v108;
    if ((BYTE1(v163) & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_242C832C4(0, *(v114 + 2) + 1, 1, v114);
      }

      v82 = *(v12 + 2);
      v81 = *(v12 + 3);
      if (v82 >= v81 >> 1)
      {
        v12 = sub_242C832C4((v81 > 1), v82 + 1, 1, v12);
      }

      sub_242C7FA44(&v160);
      v83 = v160;
      *(v12 + 2) = v82 + 1;
      v84 = &v12[40 * v82];
      *(v84 + 4) = v83;
      *(v84 + 5) = 0;
      *(v84 + 6) = 0;
      *(v84 + 7) = 0;
      v84[64] = 3;
      goto LABEL_58;
    }

LABEL_57:
    sub_242C7FA44(&v160);
LABEL_58:
    v32 = v76 + 1;
    v48 = (v48 + 72);
    v47 = v116 + 1;
    if (v34 == v32)
    {
      goto LABEL_36;
    }
  }

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
  v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
LABEL_43:
  v40 = *(v12 + 2);
  v39 = *(v12 + 3);
  if (v40 >= v39 >> 1)
  {
    v12 = sub_242C832C4((v39 > 1), v40 + 1, 1, v12);
  }

  *(v12 + 2) = v40 + 1;
  v41 = &v12[40 * v40];
  *(v41 + 4) = 5;
  *(v41 + 5) = 0;
  *(v41 + 6) = 0;
  *(v41 + 7) = 0;
  v41[64] = 5;
LABEL_46:
  if (v32)
  {
    v42 = objc_opt_self();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v43 = sub_242F04F00();
    v44 = [v42 _systemImageNamed_];

    if (v44)
    {

      goto LABEL_49;
    }

    if (a2 && (, v96 = a2(v15, v32), sub_242C655DC(a2), (v96 & 1) != 0))
    {
LABEL_49:
      sub_242CD54A4(v15, v32);
      sub_242CD54A4(v15, v32);
    }

    else
    {

      sub_242CD54A4(v15, v32);
      sub_242CD54A4(v15, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
      }

      v98 = *(v12 + 2);
      v97 = *(v12 + 3);
      if (v98 >= v97 >> 1)
      {
        v12 = sub_242C832C4((v97 > 1), v98 + 1, 1, v12);
      }

      *(v12 + 2) = v98 + 1;
      v99 = &v12[40 * v98];
      *(v99 + 4) = v15;
      *(v99 + 5) = v32;
      *(v99 + 6) = 0;
      *(v99 + 7) = 0;
      v99[64] = 1;
    }
  }

  return v12;
}

uint64_t NotificationModel.FancyModel.correct(validationError:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[3];
  v98 = v2[4];
  v99 = v4;
  v7 = v2[7];
  v100 = v5;
  v101 = v7;
  v8 = v2[1];
  v95[0] = *v2;
  v95[1] = v8;
  v10 = *v2;
  v9 = v2[1];
  v96 = v2[2];
  v97 = v6;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = *(a1 + 32);
  v92 = v10;
  v93 = v9;
  v94 = *(v2 + 4);
  v16 = *(&v96 + 1);
  v18 = *(&v6 + 1);
  v17 = v6;
  v20 = *(&v98 + 1);
  v21 = v98;
  v19 = v99;
  v22 = v100;
  v64 = *(&v99 + 1);
  v90 = *(v2 + 104);
  v91 = *(v2 + 15);
  if (v15 == 1)
  {
    sub_242D5C980(v95, &v82);
    sub_242CD54A4(v16, v17);
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v14 = &v74;
    v23 = v19;
LABEL_27:
    v30 = v64;
    goto LABEL_28;
  }

  v23 = v99;
  if (v15 == 2)
  {
    if ((v14 & 0x8000000000000000) == 0 && v14 < *(v100 + 16))
    {
      v31 = v100 + 72 * v14;
      v74 = *(v31 + 32);
      v33 = *(v31 + 64);
      v32 = *(v31 + 80);
      v34 = *(v31 + 48);
      *&v78 = *(v31 + 96);
      v76 = v33;
      v77 = v32;
      v75 = v34;
      v35 = v74;
      v59 = v34;
      v60 = *(&v74 + 1);
      v58 = *(&v34 + 1);
      v36 = *(v31 + 64);
      v37 = *(v31 + 80);
      v69 = *(v31 + 96);
      v67 = v36;
      v68 = v37;
      sub_242D5C980(v95, &v82);
      sub_242C7F9E8(&v74, &v82);
      sub_242CD54A4(v60, v59);
      v61 = v35;
      v82 = v35;
      v83 = 0uLL;
      v84 = v67;
      v85 = v68;
      *&v86 = v69;
      sub_242C7F9E8(&v82, v70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_242D37E94(v22);
      }

      if (v14 >= *(v22 + 2))
      {
        __break(1u);
        goto LABEL_38;
      }

      v23 = v19;
      v38 = &v22[72 * v14];
      v65[0] = *(v38 + 2);
      v39 = *(v38 + 3);
      v40 = *(v38 + 4);
      v41 = *(v38 + 5);
      v66 = *(v38 + 12);
      v65[2] = v40;
      v65[3] = v41;
      v65[1] = v39;
      v43 = v84;
      v42 = v85;
      v44 = v83;
      *(v38 + 12) = v86;
      *(v38 + 4) = v43;
      *(v38 + 5) = v42;
      *(v38 + 3) = v44;
      *(v38 + 2) = v82;
      sub_242C7FA44(v65);
      v70[0] = v61;
      memset(&v70[1], 0, 24);
      v71 = v67;
      v72 = v68;
      v73 = v69;
      sub_242C7FA44(v70);
LABEL_26:
      v14 = &v74;
      goto LABEL_27;
    }

LABEL_25:
    sub_242D5C980(v95, &v82);
    goto LABEL_26;
  }

  if (v15 != 5)
  {
    goto LABEL_25;
  }

  v24 = v13 | v12;
  if (v24 | v11 | v14)
  {
    v25 = v24 | v14;
    if (((v11 - 1) > 1 || v25) && (v11 != 3 || v25))
    {
      if (v11 == 4 && !v25)
      {
        v45 = sub_242CD6078(*(&v101 + 1), v100);
        v58 = v46;
        v59 = v47;
        v61 = v48;
        if ((v47 & 1) == 0)
        {
          sub_242D5C980(v95, &v82);

          v14 = &v74;
LABEL_21:
          sub_242CD50AC(v45, v58, v61, v59);
          v62 = v49;

          swift_unknownObjectRelease();
          v22 = v62;
          v23 = v19;
          goto LABEL_27;
        }

        swift_unknownObjectRetain();
        sub_242D5C980(v95, &v82);
        sub_242F061F0();

        swift_unknownObjectRetain();
        v55 = swift_dynamicCastClass();
        v14 = &v74;
        if (!v55)
        {
          swift_unknownObjectRelease();
          v55 = MEMORY[0x277D84F90];
        }

        v57 = v45;
        v56 = *(v55 + 16);

        if (!__OFSUB__(v59 >> 1, v61))
        {
          if (v56 == (v59 >> 1) - v61)
          {
            v63 = swift_dynamicCastClass();

            swift_unknownObjectRelease();
            v22 = v63;
            if (!v63)
            {
              swift_unknownObjectRelease();
              v22 = MEMORY[0x277D84F90];
            }

            v23 = v19;
            goto LABEL_27;
          }

          goto LABEL_39;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        v45 = v57;
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      if (v11 == 5 && !v25)
      {
        sub_242D5C980(v95, &v82);
        sub_242D3D654(v21, v20);
        v30 = 0;
        v23 = 0;
        v20 = 0;
        v21 = 0;
        v14 = &v74;
LABEL_28:
        v74 = v92;
        v75 = v93;
        *&v76 = v94;
        *(&v76 + 1) = v16;
        *&v77 = v17;
        *(&v77 + 1) = v18;
        *&v78 = v21;
        *(&v78 + 1) = v20;
        *&v79 = v23;
        *(&v79 + 1) = v30;
        *(v14 + 104) = v90;
        *&v80 = v22;
        *(&v81 + 1) = v91;
        v84 = v76;
        v85 = v77;
        v82 = v74;
        v83 = v75;
        v88 = v80;
        v89 = v81;
        v86 = v78;
        v87 = v79;
        nullsub_2(&v82);
        v50 = v87;
        a2[4] = v86;
        a2[5] = v50;
        v51 = v89;
        a2[6] = v88;
        a2[7] = v51;
        v52 = v83;
        *a2 = v82;
        a2[1] = v52;
        v53 = v85;
        a2[2] = v84;
        a2[3] = v53;
        sub_242D5C980(&v74, v70);
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  sub_242D5C9E8(&v82);
  v26 = v87;
  a2[4] = v86;
  a2[5] = v26;
  v27 = v89;
  a2[6] = v88;
  a2[7] = v27;
  v28 = v83;
  *a2 = v82;
  a2[1] = v28;
  v29 = v85;
  a2[2] = v84;
  a2[3] = v29;
  sub_242D5C980(v95, &v74);
  v14 = &v74;
  v30 = v64;
LABEL_29:
  v82 = v92;
  v83 = v93;
  *&v84 = v94;
  *(&v84 + 1) = v16;
  *&v85 = v17;
  *(&v85 + 1) = v18;
  *&v86 = v21;
  *(&v86 + 1) = v20;
  *&v87 = v23;
  *(&v87 + 1) = v30;
  *(v14 + 232) = v90;
  *&v88 = v22;
  *(&v89 + 1) = v91;
  return sub_242D5C9B8(&v82);
}

uint64_t NotificationModel.FancyModel.description.getter()
{
  v1 = 7104878;
  v2 = v0[6];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[12];
  sub_242F05A80();
  MEMORY[0x245D26660](0xD000000000000011, 0x8000000242F5AAA0);
  v6 = NotificationModel.Text.description.getter();
  MEMORY[0x245D26660](v6);

  MEMORY[0x245D26660](0x6C6F626D7973202CLL, 0xEA0000000000203ALL);
  if (v2)
  {
    v7 = NotificationModel.Symbol.description.getter();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x245D26660](v7, v9);

  MEMORY[0x245D26660](0x6E6F74747562202CLL, 0xEC00000020283A73);
  v10 = *(v5 + 16);
  if (v10)
  {
    v24 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v10, 0);
    v11 = v24;
    v12 = v5 + 32;
    do
    {
      v13 = NotificationModel.FancyModel.ActionConfiguration.description.getter();
      v25 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v13;
        v18 = v14;
        sub_242E3BC70((v15 > 1), v16 + 1, 1);
        v14 = v18;
        v13 = v23;
        v11 = v25;
      }

      *(v11 + 16) = v16 + 1;
      v17 = v11 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v12 += 72;
      --v10;
    }

    while (v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160);
  sub_242CD4ED4();
  v19 = sub_242F04E40();
  v21 = v20;

  MEMORY[0x245D26660](v19, v21);

  MEMORY[0x245D26660](0xD000000000000013, 0x8000000242F5AAC0);
  if (v4)
  {

    v1 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x245D26660](v1, v4);

  return 0;
}

uint64_t NotificationModel.FancyModel.ActionConfiguration.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 49);
  v5 = *(v0 + 50);
  sub_242F05A80();
  MEMORY[0x245D26660](540697705, 0xE400000000000000);
  v6 = sub_242F05F60();
  MEMORY[0x245D26660](v6);

  MEMORY[0x245D26660](0x3A656C746974203ALL, 0xE900000000000020);
  MEMORY[0x245D26660](v2, v3);
  MEMORY[0x245D26660](0x6C6F626D7973203ALL, 0xE90000000000003ALL);
  if (v1)
  {
    v7 = NotificationModel.Symbol.description.getter();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x245D26660](v7, v9);

  MEMORY[0x245D26660](0x696C68676968203ALL, 0xEE003A6465746867);
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

  MEMORY[0x245D26660](v10, v11);

  MEMORY[0x245D26660](0x6C6261736964203ALL, 0xEB000000003A6465);
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

  MEMORY[0x245D26660](v12, v13);

  return 0;
}

uint64_t NotificationModel.FancyModel.ActionConfiguration.symbol.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_242CD5460(v2, v3);
}

__n128 NotificationModel.FancyModel.ActionConfiguration.symbol.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_242CD54A4(v1[1], v1[2]);
  result = v4;
  *(v1 + 1) = v4;
  v1[3] = v2;
  return result;
}

uint64_t NotificationModel.FancyModel.ActionConfiguration.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NotificationModel.FancyModel.ActionConfiguration.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t (*NotificationModel.FancyModel.ActionConfiguration.handler.getter())()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_242D5D194;
  }

  else
  {
    v4 = 0;
  }

  sub_242C5573C(v1);
  return v4;
}

uint64_t NotificationModel.FancyModel.ActionConfiguration.handler.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_242D5D19C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  result = sub_242C655DC(*(v2 + 56));
  *(v2 + 56) = v6;
  *(v2 + 64) = v5;
  return result;
}

uint64_t (*NotificationModel.FancyModel.ActionConfiguration.handler.modify(uint64_t (**a1)()))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = sub_242D5D194;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v5;
  sub_242C5573C(v4);
  return sub_242D5C384;
}

uint64_t sub_242D5C384(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = *(a1 + 8);
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_242D5D19C;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v9 = *(a1 + 16);
    v10 = *(v9 + 56);
    sub_242C5573C(v3);
    sub_242C655DC(v10);
    *(v9 + 56) = v6;
    *(v9 + 64) = v5;

    return sub_242C655DC(v3);
  }

  else
  {
    if (v3)
    {
      v7 = *(a1 + 8);
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      *(v8 + 24) = v7;
      v3 = sub_242D5D19C;
    }

    else
    {
      v8 = 0;
    }

    v12 = *(a1 + 16);
    result = sub_242C655DC(*(v12 + 56));
    *(v12 + 56) = v3;
    *(v12 + 64) = v8;
  }

  return result;
}

uint64_t NotificationModel.FancyModel.ActionConfiguration.init(id:symbol:title:pressed:highlighted:disabled:handler:)@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t (*a8)()@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v20 = *a2;
  v17 = *(a2 + 2);
  *a9 = a1;
  sub_242CD54A4(0, 0);
  *(a9 + 8) = v20;
  *(a9 + 24) = v17;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 49) = a6;
  *(a9 + 50) = a7;
  if (a8)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a8;
    *(v18 + 24) = a10;
    a8 = sub_242D5D19C;
  }

  else
  {
    v18 = 0;
  }

  result = sub_242C655DC(0);
  *(a9 + 56) = a8;
  *(a9 + 64) = v18;
  return result;
}

uint64_t sub_242D5C5AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s14CarPlayAssetUI17NotificationModelV05FancyF0V19ActionConfigurationV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = a1[48];
  v8 = a1[49];
  v9 = a1[50];
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  v13 = a2[48];
  v14 = a2[49];
  v15 = a2[50];
  if (v3)
  {
    if (v11)
    {
      v26 = a2[48];
      v34 = *(a2 + 5);
      v35 = *(a2 + 4);
      if (v2 == v10 && v3 == v11 || (v32 = a2[49], v28 = a2[50], v30 = a1[48], v16 = a1[49], v17 = *(a1 + 4), v18 = *(a1 + 5), v19 = a1[50], v20 = sub_242F06110(), v9 = v19, v6 = v18, v4 = v17, v8 = v16, v15 = v28, v7 = v30, v14 = v32, (v20 & 1) != 0))
      {
        if (!v5)
        {
          v31 = v6;
          v33 = v4;
          v27 = v9;
          v29 = v8;
          sub_242CD5460(v2, v3);
          if (!v12)
          {
            sub_242CD5460(v10, v11);
            sub_242CD5460(v2, v3);
            sub_242CD54A4(v10, v11);
LABEL_24:

            v13 = v26;
            goto LABEL_25;
          }

          goto LABEL_19;
        }

        if (v12)
        {
          v31 = v6;
          v33 = v4;
          v27 = v9;
          v29 = v8;
          sub_242CD5460(v2, v3);
          sub_242CD5460(v10, v11);
          sub_242CD5460(v2, v3);

          v21 = sub_242F04710();

          sub_242CD54A4(v10, v11);
          if (v21)
          {
            goto LABEL_24;
          }

          goto LABEL_20;
        }
      }

      sub_242CD5460(v2, v3);
LABEL_19:
      sub_242CD5460(v10, v11);
      sub_242CD5460(v2, v3);
      sub_242CD54A4(v10, v11);
LABEL_20:

      v23 = v2;
      v24 = v3;
      goto LABEL_21;
    }

    sub_242CD5460(*(a1 + 1), v3);
    sub_242CD5460(v10, 0);
    sub_242CD5460(v2, v3);

LABEL_15:
    sub_242CD54A4(v2, v3);
    v23 = v10;
    v24 = v11;
LABEL_21:
    sub_242CD54A4(v23, v24);
    return 0;
  }

  v27 = a1[50];
  v29 = a1[49];
  v34 = *(a2 + 5);
  v35 = *(a2 + 4);
  v31 = *(a1 + 5);
  v33 = *(a1 + 4);
  sub_242CD5460(v2, 0);
  if (v11)
  {
    sub_242CD5460(v10, v11);
    goto LABEL_15;
  }

  sub_242CD5460(v10, 0);
  v3 = 0;
LABEL_25:
  sub_242CD54A4(v2, v3);
  if (v33 == v35 && v31 == v34)
  {
    result = 0;
    if (v7 != v13)
    {
      return result;
    }

    goto LABEL_31;
  }

  v25 = sub_242F06110();
  result = 0;
  if ((v25 & 1) != 0 && ((v7 ^ v13) & 1) == 0)
  {
LABEL_31:
    if (((v29 ^ v14) & 1) == 0)
    {
      return v27 ^ v15 ^ 1u;
    }
  }

  return result;
}

double sub_242D5C9E8(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t _s14CarPlayAssetUI17NotificationModelV05FancyF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v33 = *(a1 + 72);
  v34 = *(a1 + 64);
  v29 = *(a1 + 96);
  v30 = *(a1 + 120);
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v13 = *(a2 + 40);
  v12 = *(a2 + 48);
  v14 = *(a2 + 64);
  v35 = *(a2 + 56);
  v36 = *a2;
  v32 = v14;
  v31 = *(a2 + 72);
  v27 = *(a2 + 96);
  v28 = *(a2 + 120);
  v15 = *(a1 + 32);
  v16 = *(a2 + 32);
  v41 = v2;
  v42 = v3;
  v43 = v4;
  v44 = v5;
  v45 = v15;
  v37 = v9;
  v38 = v11;
  v39 = v10;
  v40 = v16;
  sub_242CD52B8(v2, v3, v4, v5, v15);
  sub_242CD52B8(v36, v9, v11, v10, v16);
  v17 = _s14CarPlayAssetUI17NotificationModelV4TextO2eeoiySbAE_AEtFZ_0(&v41, &v36);
  sub_242CD5324(v36, v37, v38, v39, v40);
  sub_242CD5324(v41, v42, v43, v44, v45);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = v7;
  if (!v7)
  {
    v19 = v6;
    sub_242CD5460(v6, 0);
    if (!v12)
    {
      sub_242CD5460(v13, 0);
      v18 = 0;
      goto LABEL_25;
    }

    sub_242CD5460(v13, v12);
    goto LABEL_14;
  }

  v19 = v6;
  if (!v12)
  {
    sub_242CD5460(v6, v7);
    sub_242CD5460(v13, 0);
    sub_242CD5460(v6, v7);

LABEL_14:
    sub_242CD54A4(v19, v7);
    v21 = v13;
    v22 = v12;
LABEL_20:
    sub_242CD54A4(v21, v22);
    return 0;
  }

  if ((v6 != v13 || v7 != v12) && (sub_242F06110() & 1) == 0)
  {
LABEL_15:
    sub_242CD5460(v6, v7);
LABEL_18:
    sub_242CD5460(v13, v12);
    sub_242CD5460(v6, v7);
    sub_242CD54A4(v13, v12);
LABEL_19:

    v21 = v6;
    v22 = v7;
    goto LABEL_20;
  }

  if (v8)
  {
    if (v35)
    {
      sub_242CD5460(v6, v7);
      sub_242CD5460(v13, v12);
      sub_242CD5460(v6, v7);

      v20 = sub_242F04710();

      sub_242CD54A4(v13, v12);
      if (v20)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_242CD5460(v6, v7);
  if (v35)
  {
    goto LABEL_18;
  }

  sub_242CD5460(v13, v12);
  sub_242CD5460(v6, v7);
  sub_242CD54A4(v13, v12);
LABEL_24:

LABEL_25:
  sub_242CD54A4(v19, v18);
  v24 = v33;
  if (!v33)
  {
    v25 = v34;
    sub_242D5A520(v34, 0);
    if (!v31)
    {
      sub_242D5A520(v32, 0);
      v24 = 0;
      goto LABEL_37;
    }

    sub_242D5A520(v32, v31);
    goto LABEL_33;
  }

  v25 = v34;
  if (!v31)
  {
    sub_242D5A520(v34, v33);
    sub_242D5A520(v32, 0);
    sub_242D5A520(v34, v33);

LABEL_33:
    sub_242D3D654(v25, v33);
    sub_242D3D654(v32, v31);
    return 0;
  }

  if (v34 == v32 && v33 == v31)
  {
    sub_242D5A520(v34, v33);
    sub_242D5A520(v34, v33);
    sub_242D5A520(v34, v33);
    sub_242D3D654(v34, v33);

LABEL_37:
    sub_242D3D654(v25, v24);
    return sub_242C72E4C(v29, v27) & (v30 == v28);
  }

  v26 = sub_242F06110();
  sub_242D5A520(v34, v33);
  sub_242D5A520(v32, v31);
  sub_242D5A520(v34, v33);
  sub_242D3D654(v32, v31);

  sub_242D3D654(v34, v33);
  if (v26)
  {
    return sub_242C72E4C(v29, v27) & (v30 == v28);
  }

  return 0;
}

unint64_t sub_242D5CF7C(uint64_t a1)
{
  result = sub_242D5CFA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_242D5CFA4()
{
  result = qword_27ECF3F60[0];
  if (!qword_27ECF3F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF3F60);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_242D5D01C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242D5D064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_xRi_zRi0_zlyytIsegr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242D5D0EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242D5D134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Double_optional __swiftcall Double.doubleValue()()
{
  v1 = v0;
  LOBYTE(result.value) = v0;
  result.is_nil = v1;
  return result;
}

Swift::Double_optional __swiftcall Measurement.doubleValue()()
{
  sub_242F034A0();
  v1 = LOBYTE(v0);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

Swift::Double_optional __swiftcall String.doubleValue()()
{
  sub_242D5E008(v0, v1);
  v3 = 0;
  result.value = v2;
  result.is_nil = v3;
  return result;
}

Swift::Double_optional __swiftcall Bool.doubleValue()()
{
  v0 = 0;
  result.is_nil = v0;
  return result;
}

uint64_t sub_242D5D2A4()
{
  if (*v0)
  {
    return 0x3FF0000000000000;
  }

  else
  {
    return 0;
  }
}

Swift::Double_optional __swiftcall Int.doubleValue()()
{
  v1 = v0;
  v2 = v0;
  result.value = v1;
  result.is_nil = LOBYTE(v2);
  return result;
}

Swift::Double_optional __swiftcall UInt16.doubleValue()()
{
  v1 = v0;
  *&v2 = v1;
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::Double_optional __swiftcall UInt8.doubleValue()()
{
  v1 = v0;
  *&v2 = v1;
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t Optional<A>.doubleValue()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v7, v9, v3);
  v13 = (*(a2 + 8))(v3, a2);
  (*(v4 + 8))(v7, v3);
  return v13;
}

uint64_t InstrumentDataType.__allocating_init(identifier:type:defaultValue:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *v6;
  *(v6 + 16) = *a1;
  v8 = v7[11];
  *(v6 + 24) = a2;
  *(v6 + 32) = v8;
  (*(*(v7[10] - 8) + 32))(v6 + v7[14], a3);
  return v6;
}

uint64_t InstrumentDataType.init(identifier:type:defaultValue:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v3 + 16) = *a1;
  v5 = v4[11];
  *(v3 + 24) = a2;
  *(v3 + 32) = v5;
  (*(*(v4[10] - 8) + 32))(v3 + v4[14], a3);
  return v3;
}

uint64_t InstrumentDataType.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t InstrumentDataRange.bounds.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  v4 = sub_242F04ED0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InstrumentDataRange.init(identifier:type:defaultValue:in:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *(*v4 + 152);
  v10 = sub_242F04ED0();
  (*(*(v10 - 8) + 32))(v4 + v9, a4, v10);
  v11 = *v4;
  *(v4 + 16) = v8;
  v12 = v11[11];
  *(v4 + 24) = a2;
  *(v4 + 32) = v12;
  (*(*(v11[10] - 8) + 32))(v4 + v11[14], a3);
  return v4;
}

uint64_t sub_242D5DA44()
{
  v1 = *(*v0 + 152);
  v2 = sub_242F04ED0();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t InstrumentDataRange.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  v1 = *(*v0 + 152);
  v2 = sub_242F04ED0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_242D5DC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = swift_allocObject();
  a5(a1, a2, a3, a4);
  return v10;
}

uint64_t InstrumentDataCollection.init(identifier:type:defaultValue:allValues:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  (*(*(*(*v4 + 128) - 8) + 32))(v4 + *(*v4 + 152), a4);
  v8 = *v4;
  *(v4 + 16) = v7;
  v9 = v8[11];
  *(v4 + 24) = a2;
  *(v4 + 32) = v9;
  (*(*(v8[10] - 8) + 32))(v4 + v8[14], a3);
  return v4;
}

uint64_t *InstrumentDataCollection.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  (*(*(*(v1 + 128) - 8) + 8))(v0 + *(*v0 + 152));
  return v0;
}

uint64_t sub_242D5DFAC(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

BOOL sub_242D5E008(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_242F05A40();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_242D5E194()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_242D5E280()
{
  result = sub_242F04ED0();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_242D5E35C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_242D5E434@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_242D5E4B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HashableWeakBox();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v8, a1, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v5 + 8))(v8, v4);
  *a2 = Strong;
  return result;
}

uint64_t HashableWeakBox.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a2 + 8) = a1;
  return result;
}

uint64_t HashableWeakBox.hashValue.getter()
{
  sub_242F06390();
  MEMORY[0x245D279A0](*(v0 + 8));
  return sub_242F063E0();
}

uint64_t sub_242D5E64C()
{
  sub_242F06390();
  HashableWeakBox.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242D5E6A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_242D5E6E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_242D5E728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

UIImage_optional __swiftcall UIImage.init(_internalSystemName:)(Swift::String _internalSystemName)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_242F04F00();

  v3 = [ObjCClassFromMetadata _systemImageNamed_];

  v5 = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

UIImage_optional __swiftcall UIImage.init(systemName:size:)(Swift::String systemName, CGSize size)
{
  height = size.height;
  width = size.width;
  v4 = sub_242F04F00();

  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
    v8 = swift_allocObject();
    *(v8 + 2) = v5;
    v8[3] = width;
    v8[4] = height;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_242D5EA44;
    *(v9 + 24) = v8;
    v17[4] = sub_242D5EA60;
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_242D5EA88;
    v17[3] = &block_descriptor_0;
    v10 = _Block_copy(v17);

    v11 = v5;

    v12 = [v7 imageWithActions_];
    _Block_release(v10);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
      goto LABEL_9;
    }

    v14 = [v12 CGImage];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCGImage_];

      v7 = v12;
      v12 = v15;
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_9:
  result.value.super.isa = v13;
  result.is_nil = v6;
  return result;
}

void sub_242D5EA88(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id CGImageRef.cpImage.getter()
{
  v1 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v1 initWithCGImage_];
}

uint64_t Image.init(asset:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (ImageAsset.image.getter())
  {
    sub_242C7F724(v1, v2, v3, v4, v5);

    return _s7SwiftUI5ImageV012CarPlayAssetB0E02cpC0ACSo7UIImageC_tcfC_0();
  }

  else
  {
    sub_242F05A80();

    if (v5 < 0)
    {
      v1 = v2;
    }

    else
    {
      v3 = v2;
    }

    MEMORY[0x245D26660](v1, v3);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

id KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  sub_242D5ED34();
  sub_242F05D90();
  if (!v1)
  {
    if (v6 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      v2 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v3 = sub_242F036A0();
      v0 = [v2 initWithData_];

      sub_242C6D208(v5, v6);
    }
  }

  return v0;
}

unint64_t sub_242D5ED34()
{
  result = qword_27ECF4168;
  if (!qword_27ECF4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4168);
  }

  return result;
}

id KeyedDecodingContainer.decode(_:forKey:)()
{
  v1 = v0;
  sub_242D5ED34();
  sub_242F05E00();
  if (!v0)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v3 = sub_242F036A0();
    v1 = [v2 initWithData_];

    sub_242C6CCC0(v5, v6);
  }

  return v1;
}

id CHSWidget.updatingDefaultIntent(using:)(void *a1)
{
  v2 = [a1 sbh:v1 descriptorForWidgetIdentifiable:?];
  if (!v2)
  {
LABEL_6:

    return v24;
  }

  v3 = v2;
  v4 = [v2 intentType];
  if (!v4)
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = [v24 intentReference];
  if (v5)
  {
    v6 = v5;

    v3 = v6;
    goto LABEL_5;
  }

  v8 = [v3 defaultIntentReference];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  if (qword_27ECEF4C8 != -1)
  {
    swift_once();
  }

  v10 = sub_242F039D0();
  __swift_project_value_buffer(v10, qword_27ED5D2F8);
  v11 = v24;
  v12 = sub_242F039B0();
  v13 = sub_242F056E0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_242C53000, v12, v13, "Updating default intent for %{public}@", v14, 0xCu);
    sub_242C6D138(v15, &qword_27ECF1950);
    MEMORY[0x245D287D0](v15, -1, -1);
    MEMORY[0x245D287D0](v14, -1, -1);
  }

  v17 = [v11 extensionIdentity];
  v18 = [v11 kind];
  if (!v18)
  {
    sub_242F04F30();
    v18 = sub_242F04F00();
  }

  v19 = [v11 family];
  v20 = [v11 activityIdentifier];
  v21 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v22 = v9;
  v23 = [v21 initWithExtensionIdentity:v17 kind:v18 family:v19 intentReference:v22 activityIdentifier:v20];

  return v23;
}

uint64_t CHSWidget.asDenyListRepresentation.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v27 - v11;
  v13 = [v1 extensionIdentity];
  v14 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_242D5F44C(v13 + v14, v12);

  sub_242D5F44C(v12, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v27 = sub_242F03820();
    v28 = v17;
    MEMORY[0x245D26660](58, 0xE100000000000000);
    v15 = v27;
    v16 = v28;
    (*(v3 + 8))(v5, v2);
  }

  sub_242C6D138(v12, &unk_27ECF9410);
  v29 = v15;
  v30 = v16;
  v18 = [v1 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960);
  v19 = sub_242F03820();
  v21 = v20;
  swift_endAccess();

  v27 = v19;
  v28 = v21;
  MEMORY[0x245D26660](58, 0xE100000000000000);
  v22 = [v1 kind];
  v23 = sub_242F04F30();
  v25 = v24;

  MEMORY[0x245D26660](v23, v25);

  MEMORY[0x245D26660](v27, v28);

  return v29;
}

uint64_t sub_242D5F44C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall Data.sha256()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_242F04C50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v38 = sub_242F04C30();
  v8 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242D60180(&qword_27ECF4170, MEMORY[0x277CC5540]);
  sub_242F04C20();
  sub_242C6D21C(v3, v2);
  sub_242D5FCE4(v3, v2, v7);
  sub_242C6CCC0(v3, v2);
  sub_242F04C10();
  (*(v5 + 8))(v7, v4);
  sub_242D60180(&qword_27ECF4178, MEMORY[0x277CC5290]);
  v11 = v38;
  v12 = sub_242F04C40();
  v14 = v13;
  (*(v8 + 8))(v10, v11);
  v39 = MEMORY[0x277D84F90];
  v15 = sub_242E3BC70(0, 0, 0);
  v17 = v12;
  v18 = v39;
  v19 = *(v12 + 16);
  v20 = v19 - v14;
  if (v19 != v14)
  {
    if (v19 <= v14)
    {
      __break(1u);
    }

    else if ((v14 & 0x8000000000000000) == 0)
    {
      if (v19)
      {
        v24 = (v14 + v12 + 32);
        v38 = xmmword_242F09510;
        v25 = MEMORY[0x277D84B78];
        v26 = MEMORY[0x277D84BC0];
        do
        {
          v27 = *v24++;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4180);
          v28 = swift_allocObject();
          *(v28 + 16) = v38;
          *(v28 + 56) = v25;
          *(v28 + 64) = v26;
          *(v28 + 32) = v27;
          v29 = sub_242F04F60();
          v39 = v18;
          v32 = *(v18 + 16);
          v31 = *(v18 + 24);
          if (v32 >= v31 >> 1)
          {
            v36 = v17;
            v37 = v29;
            v34 = v30;
            sub_242E3BC70((v31 > 1), v32 + 1, 1);
            v17 = v36;
            v29 = v37;
            v30 = v34;
            v18 = v39;
          }

          *(v18 + 16) = v32 + 1;
          v33 = v18 + 16 * v32;
          *(v33 + 32) = v29;
          *(v33 + 40) = v30;
          --v20;
        }

        while (v20);
        goto LABEL_2;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_2:

  v39 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160);
  sub_242CD4ED4();
  v21 = sub_242F04E40();
  v23 = v22;

  v15 = v21;
  v16 = v23;
LABEL_14:
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

char *sub_242D5F87C(uint64_t a1, unint64_t a2)
{
  v4 = sub_242F04C70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v34 = sub_242F04C60();
  v8 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242D60180(&qword_27ECF4190, MEMORY[0x277CC5598]);
  sub_242F04C20();
  sub_242C6D21C(a1, a2);
  sub_242D5FF5C(a1, a2, v7);
  sub_242C6CCC0(a1, a2);
  sub_242F04C10();
  (*(v5 + 8))(v7, v4);
  sub_242D60180(&qword_27ECF4198, MEMORY[0x277CC5578]);
  v11 = v34;
  v12 = sub_242F04C40();
  v14 = v13;
  (*(v8 + 8))(v10, v11);
  v35 = MEMORY[0x277D84F90];
  result = sub_242E3BC70(0, 0, 0);
  v16 = v12;
  v17 = v35;
  v18 = *(v12 + 16);
  v19 = v18 - v14;
  if (v18 == v14)
  {
LABEL_2:

    v35 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160);
    sub_242CD4ED4();
    v20 = sub_242F04E40();

    return v20;
  }

  if (v18 <= v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v18)
  {
    v21 = (v14 + v12 + 32);
    v34 = xmmword_242F09510;
    v22 = MEMORY[0x277D84B78];
    v23 = MEMORY[0x277D84BC0];
    do
    {
      v24 = *v21++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4180);
      v25 = swift_allocObject();
      *(v25 + 16) = v34;
      *(v25 + 56) = v22;
      *(v25 + 64) = v23;
      *(v25 + 32) = v24;
      v26 = sub_242F04F60();
      v35 = v17;
      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      if (v29 >= v28 >> 1)
      {
        v32 = v16;
        v33 = v26;
        v31 = v27;
        sub_242E3BC70((v28 > 1), v29 + 1, 1);
        v16 = v32;
        v26 = v33;
        v27 = v31;
        v17 = v35;
      }

      *(v17 + 16) = v29 + 1;
      v30 = v17 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      --v19;
    }

    while (v19);
    goto LABEL_2;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t Data.utf8.getter()
{
  v0 = sub_242F04F80();
  MEMORY[0x28223BE20](v0 - 8);
  sub_242F04F70();
  sub_242D5FF08();
  result = sub_242F04F50();
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242D5FCE4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_242F04C50();
      sub_242D60180(&qword_27ECF4170, MEMORY[0x277CC5540]);
      return sub_242F04C00();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_242D601C8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_27ECF4170, MEMORY[0x277CC5540]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_242D601C8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_27ECF4170, MEMORY[0x277CC5540]);
  }

  sub_242F04C50();
  sub_242D60180(&qword_27ECF4170, MEMORY[0x277CC5540]);
  return sub_242F04C00();
}

unint64_t sub_242D5FF08()
{
  result = qword_27ECF4188;
  if (!qword_27ECF4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4188);
  }

  return result;
}

uint64_t sub_242D5FF5C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_242F04C70();
      sub_242D60180(&qword_27ECF4190, MEMORY[0x277CC5598]);
      return sub_242F04C00();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_242D601C8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5598], &qword_27ECF4190, MEMORY[0x277CC5598]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_242D601C8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5598], &qword_27ECF4190, MEMORY[0x277CC5598]);
  }

  sub_242F04C70();
  sub_242D60180(&qword_27ECF4190, MEMORY[0x277CC5598]);
  return sub_242F04C00();
}

uint64_t sub_242D60180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242D601C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_242F03510();
  if (!result || (result = sub_242F03530(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_242F03520();
      a5(0);
      sub_242D60180(a6, a7);
      return sub_242F04C00();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t LocalNotification.image.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v7 = *(v1 + 32);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  return sub_242C7F6C4(v2, v3, v4, v5, v7);
}

__n128 LocalNotification.image.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_242C7F724(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

__n128 LocalNotification.init(image:userDismissible:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  result = *a1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  return result;
}

uint64_t sub_242D60390()
{
  if (*v0)
  {
    return 0x6D73694472657375;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_242D603D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D73694472657375 && a2 == 0xEF656C6269737369)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242D604B4(uint64_t a1)
{
  v2 = sub_242D66EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D604F0(uint64_t a1)
{
  v2 = sub_242D66EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalNotification.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF41A0);
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = v15 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 40);
  v26 = *(v1 + 48);
  v10 = a1[3];
  v15[1] = a1[4];
  v16 = v9;
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_2Tm(a1, v10);
  sub_242C7F6C4(v5, v6, v8, v7, v11);
  sub_242D66EB4();
  sub_242F064C0();
  v20 = v5;
  v21 = v6;
  v22 = v8;
  v23 = v7;
  v24 = v11;
  v12 = v17;
  v25 = v16;
  v27 = 0;
  sub_242C8B8E8();
  v13 = v18;
  sub_242F05F20();
  sub_242C7F724(v20, v21, v22, v23, v24);
  if (!v13)
  {
    LOBYTE(v20) = 1;
    sub_242F05ED0();
  }

  return (*(v19 + 8))(v4, v12);
}

uint64_t LocalNotification.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (v6 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v3)
    {
      v9 = v3;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(a1, v4);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v5)
    {
      sub_242F063B0();
      v8 = v5;
      sub_242F05820();

      if (v6)
      {
LABEL_4:
        sub_242F063B0();
        goto LABEL_13;
      }
    }

    else
    {
      sub_242F063B0();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x245D279D0](v10);
  }

LABEL_13:
  MEMORY[0x245D279A0](v7);
  return sub_242F063B0();
}

uint64_t LocalNotification.hashValue.getter()
{
  v1 = *v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_242F06390();
  if (v4 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v1)
    {
      v7 = v1;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(v10, v2);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v3)
    {
      sub_242F063B0();
      v6 = v3;
      sub_242F05820();

      if (v4)
      {
LABEL_4:
        sub_242F063B0();
        goto LABEL_13;
      }
    }

    else
    {
      sub_242F063B0();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x245D279D0](v8);
  }

LABEL_13:
  MEMORY[0x245D279A0](v5);
  sub_242F063B0();
  return sub_242F063E0();
}

void LocalNotification.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF41B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D66EB4();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v27 = 0;
    sub_242C8BA70();
    sub_242F05E00();
    v10 = v20;
    v9 = v21;
    v18 = v22;
    v19 = v23;
    v26 = v24;
    v17 = v25;
    LOBYTE(v20) = 1;
    v11 = sub_242F05DB0();
    (*(v6 + 8))(v8, v5);
    v12 = v11 & 1;
    *a2 = v10;
    *(a2 + 8) = v9;
    v14 = v18;
    v13 = v19;
    *(a2 + 16) = v18;
    *(a2 + 24) = v13;
    v15 = v26;
    *(a2 + 32) = v26;
    *(a2 + 40) = v17;
    *(a2 + 48) = v12;
    sub_242C7F6C4(v10, v9, v14, v13, v15);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    sub_242C7F724(v10, v9, v14, v13, v15);
  }
}

uint64_t sub_242D60C1C()
{
  v1 = *v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_242F06390();
  if (v4 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v1)
    {
      v7 = v1;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(v10, v2);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v3)
    {
      sub_242F063B0();
      v6 = v3;
      sub_242F05820();

      if (v4)
      {
LABEL_4:
        sub_242F063B0();
        goto LABEL_13;
      }
    }

    else
    {
      sub_242F063B0();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x245D279D0](v8);
  }

LABEL_13:
  MEMORY[0x245D279A0](v5);
  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t Instrument.IndicatorConfiguration.style.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x1D0uLL);
  memcpy(a1, (v1 + 8), 0x1D0uLL);
  return sub_242D66F08(__dst, v4);
}

void *Instrument.IndicatorConfiguration.style.setter(const void *a1)
{
  memcpy(__dst, (v1 + 8), 0x1D0uLL);
  sub_242D66F40(__dst);
  return memcpy((v1 + 8), a1, 0x1D0uLL);
}

void Instrument.IndicatorConfiguration.containerInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[60] = a1;
  v4[61] = a2;
  v4[62] = a3;
  v4[63] = a4;
}

void *Instrument.IndicatorConfiguration.init(dataIdentifier:style:presentationEdge:containerInsets:vehicleLanguageIdentifier:)@<X0>(_BYTE *a1@<X0>, const void *a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v15 = *a4;
  *a5 = *a1;
  result = memcpy((a5 + 8), a2, 0x1D0uLL);
  *(a5 + 473) = a3 & 1;
  *(a5 + 480) = a6;
  *(a5 + 488) = a7;
  *(a5 + 496) = a8;
  *(a5 + 504) = a9;
  *(a5 + 472) = v15;
  return result;
}

unint64_t sub_242D60F90()
{
  v1 = *v0;
  v2 = 0x6E65644961746164;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000019;
  if (v1 != 3)
  {
    v3 = 0x656E6961746E6F63;
  }

  if (v1 != 2)
  {
    v4 = v3;
  }

  if (*v0)
  {
    v2 = 0x656C797473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_242D61048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D686A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D61070(uint64_t a1)
{
  v2 = sub_242D66F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D610AC(uint64_t a1)
{
  v2 = sub_242D66F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.IndicatorConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF41B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = *v1;
  memcpy(v20, v1 + 8, 0x1D0uLL);
  v21 = v1[472];
  v14 = v1[473];
  v8 = *(v1 + 30);
  v12 = *(v1 + 31);
  v13 = v8;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D66F70();
  sub_242F064C0();
  v19[0] = v7;
  v18[0] = 0;
  sub_242C8AC28();
  v9 = v15;
  sub_242F05F20();
  if (!v9)
  {
    v10 = v21;
    memcpy(v19, v20, sizeof(v19));
    v23 = 1;
    sub_242D66F08(v20, v18);
    sub_242D66FC4();
    sub_242F05F20();
    memcpy(v18, v19, sizeof(v18));
    sub_242D66F40(v18);
    LOBYTE(v16) = v10;
    v22 = 2;
    sub_242F05EB0();
    LOBYTE(v16) = v14;
    v22 = 3;
    sub_242D67018();
    sub_242F05F20();
    v17 = v12;
    v16 = v13;
    v22 = 4;
    sub_242CF4538();
    sub_242F05F20();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Instrument.IndicatorConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 472);
  v4 = *(v1 + 480);
  v5 = *(v1 + 488);
  v6 = *(v1 + 496);
  v7 = *(v1 + 504);
  LOBYTE(__dst[0]) = *v1;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  memcpy(__dst, (v1 + 8), sizeof(__dst));
  if (sub_242C9E7A4(__dst) != 1)
  {
    MEMORY[0x245D279A0](0);
    v21 = __dst[2];
    v22 = __dst[3];
    v23 = __dst[4];
    v24 = __dst[5];
    v19 = __dst[0];
    v20 = __dst[1];
    v15 = __dst[8];
    v16 = __dst[9];
    v17 = __dst[10];
    v18 = __dst[11];
    v13 = __dst[6];
    v14 = __dst[7];
    sub_242D65A9C(a1);
    sub_242D65A9C(a1);
    memcpy(v12, &__dst[12], sizeof(v12));
    if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v12) == 1)
    {
      sub_242F063B0();
      if (v3 != 86)
      {
        goto LABEL_6;
      }
    }

    else
    {
      memcpy(v9, &__dst[12], sizeof(v9));
      sub_242F063B0();
      memcpy(v10, &__dst[12], sizeof(v10));
      sub_242D6706C(v10, v11);
      Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hash(into:)();
      memcpy(v11, v9, sizeof(v11));
      sub_242D670A4(v11);
      if (v3 != 86)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    sub_242F063B0();
    goto LABEL_9;
  }

  MEMORY[0x245D279A0](1);
  if (v3 == 86)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_242F063B0();
  v12[0] = v3;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

LABEL_9:
  sub_242F03C00();
  sub_242F063B0();
  return EdgeInsets.hash(into:)(v4, v5, v6, v7);
}

uint64_t Instrument.IndicatorConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.IndicatorConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Instrument.IndicatorConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF41D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = a1[3];
  v20 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242D66F70();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(v20);
  }

  v10 = v6;
  LOBYTE(v21[0]) = 0;
  sub_242C8AC7C();
  v11 = v5;
  sub_242F05E00();
  v12 = v22;
  v36 = 1;
  sub_242D670D4();
  sub_242F05E00();
  memcpy(&v33[7], v32, 0x1D0uLL);
  LOBYTE(v21[0]) = 2;
  sub_242F05D90();
  v13 = v22;
  LOBYTE(v21[0]) = 3;
  sub_242D67128();
  sub_242F05E00();
  v34 = v22;
  v35 = 4;
  sub_242CF43B8();
  sub_242F05E00();
  (*(v10 + 8))(v8, v11);
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v17 = v31;
  LOBYTE(v21[0]) = v12;
  memcpy(v21 + 1, v33, 0x1D7uLL);
  LOBYTE(v21[59]) = v13;
  LOBYTE(v11) = v34;
  BYTE1(v21[59]) = v34;
  v21[60] = v28;
  v21[61] = v29;
  v21[62] = v30;
  v21[63] = v31;
  memcpy(a2, v21, 0x200uLL);
  sub_242D6717C(v21, &v22);
  __swift_destroy_boxed_opaque_existential_2Tm(v20);
  v22 = v12;
  memcpy(v23, v33, 0x1D7uLL);
  v23[471] = v13;
  v23[472] = v11;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  return sub_242D671B4(&v22);
}

uint64_t sub_242D61A18()
{
  sub_242F06390();
  Instrument.IndicatorConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242D61A5C()
{
  sub_242F06390();
  Instrument.IndicatorConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

void *Instrument.IndicatorStyle.assets.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (sub_242C9E7A4(__dst) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  memcpy(v2, __dst, sizeof(v2));
  return Instrument.IndicatorStyle.CriticalConfiguration.assets.getter();
}

void *Instrument.IndicatorStyle.CriticalConfiguration.assets.getter()
{
  v1 = *v0;
  v29 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v16 = *v0;
  v34 = *(v0 + 48);
  v35 = *(v0 + 56);
  v33 = *(v0 + 64);
  v17 = *(v0 + 40);
  v18 = *(v0 + 88);
  v21 = *(v0 + 96);
  v19 = *(v0 + 112);
  v20 = *(v0 + 104);
  v30 = *(v0 + 120);
  v31 = *(v0 + 72);
  v22 = *(v0 + 136);
  v26 = *(v0 + 152);
  v27 = *(v0 + 144);
  v24 = *(v0 + 168);
  v25 = *(v0 + 160);
  v28 = *(v0 + 184);
  v4 = *(v0 + 32);
  v5 = *(v0 + 80);
  v32 = *(v0 + 128);
  v23 = *(v0 + 176);
  memcpy(__dst, (v0 + 192), sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF41F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_242F0A4E0;
  *(v6 + 56) = &type metadata for ImageAsset;
  *(v6 + 64) = &protocol witness table for ImageAsset;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v29;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v17;
  *(v6 + 96) = &type metadata for ImageAsset;
  *(v6 + 104) = &protocol witness table for ImageAsset;
  v8 = swift_allocObject();
  *(v6 + 72) = v8;
  *(v8 + 16) = v34;
  *(v8 + 24) = v35;
  *(v8 + 32) = v33;
  *(v8 + 40) = v31;
  *(v8 + 48) = v5;
  *(v8 + 56) = v18;
  *(inited + 32) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_242F0A4E0;
  *(v9 + 56) = &type metadata for ImageAsset;
  *(v9 + 64) = &protocol witness table for ImageAsset;
  v10 = swift_allocObject();
  *(v9 + 32) = v10;
  *(v10 + 16) = v21;
  *(v10 + 24) = v20;
  *(v10 + 32) = v19;
  *(v10 + 40) = v30;
  *(v10 + 48) = v32;
  *(v10 + 56) = v22;
  *(v9 + 96) = &type metadata for ImageAsset;
  *(v9 + 104) = &protocol witness table for ImageAsset;
  v11 = swift_allocObject();
  *(v9 + 72) = v11;
  *(v11 + 16) = v27;
  *(v11 + 24) = v26;
  *(v11 + 32) = v25;
  *(v11 + 40) = v24;
  *(v11 + 48) = v23;
  *(v11 + 56) = v28;
  *(inited + 40) = v9;
  sub_242CA321C(__dst, __src, &qword_27ECF41F8);
  sub_242C7F6C4(v16, v29, v2, v3, v4);
  sub_242C7F6C4(v34, v35, v33, v31, v5);
  sub_242C7F6C4(v21, v20, v19, v30, v32);
  sub_242C7F6C4(v27, v26, v25, v24, v23);
  v12 = sub_242C80664(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4200);
  swift_arrayDestroy();
  v37 = v12;
  memcpy(__src, __dst, 0x110uLL);
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__src) != 1)
  {
    memcpy(v36, __src, sizeof(v36));
    v13 = Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.assets.getter();
    sub_242C819FC(v13);
    sub_242C6D138(__dst, &qword_27ECF41F8);
    return v37;
  }

  return v12;
}

void *Instrument.IndicatorStyle.restoreAssets(from:)(void *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(__src, v1, sizeof(__src));
  result = sub_242C9E7A4(__src);
  if (result != 1)
  {
    memcpy(v8, __src, sizeof(v8));
    memcpy(v9, __dst, sizeof(v9));
    sub_242CA321C(v9, v7, &qword_27ECF4208);
    ImageAsset.restore(from:)(a1);
    if (v2)
    {
      memcpy(v7, v8, sizeof(v7));
      return sub_242D671E4(v7);
    }

    else
    {
      ImageAsset.restore(from:)(a1);
      ImageAsset.restore(from:)(a1);
      ImageAsset.restore(from:)(a1);
      memcpy(v6, &v8[192], sizeof(v6));
      enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v6);
      if (enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 != 1)
      {
        Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.restoreAssets(from:)(a1);
      }

      memcpy(v7, v1, sizeof(v7));
      sub_242D66F40(v7);
      memcpy(v7, v8, sizeof(v7));
      nullsub_2(v7);
      return memcpy(v1, v7, 0x1D0uLL);
    }
  }

  return result;
}

void Instrument.IndicatorStyle.CriticalConfiguration.restoreAssets(from:)(void *a1)
{
  ImageAsset.restore(from:)(a1);
  if (!v2)
  {
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    memcpy(v4, (v1 + 192), sizeof(v4));
    if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v4) != 1)
    {
      Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.restoreAssets(from:)(a1);
    }
  }
}

uint64_t Instrument.IndicatorStyle.name.getter()
{
  memcpy(v2, v0, sizeof(v2));
  if (sub_242C9E7A4(v2) == 1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x6C61636974697263;
  }
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.titleFont.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_242D67214(v7, &v6);
}

__n128 Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.titleFont.setter(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  sub_242D67270(v8);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.bodyFont.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v7[0] = v1[4];
  v7[1] = v2;
  v4 = v1[7];
  v8 = v1[6];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_242D67214(v7, &v6);
}

__n128 Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.bodyFont.setter(uint64_t a1)
{
  v3 = v1[5];
  v8[0] = v1[4];
  v8[1] = v3;
  v4 = v1[7];
  v8[2] = v1[6];
  v8[3] = v4;
  sub_242D67270(v8);
  v5 = *(a1 + 16);
  v1[4] = *a1;
  v1[5] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[6] = result;
  v1[7] = v7;
  return result;
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.symbolFont.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v7[0] = v1[8];
  v7[1] = v2;
  v4 = v1[11];
  v8 = v1[10];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_242D67214(v7, &v6);
}

__n128 Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.symbolFont.setter(uint64_t a1)
{
  v3 = v1[9];
  v8[0] = v1[8];
  v8[1] = v3;
  v4 = v1[11];
  v8[2] = v1[10];
  v8[3] = v4;
  sub_242D67270(v8);
  v5 = *(a1 + 16);
  v1[8] = *a1;
  v1[9] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[10] = result;
  v1[11] = v7;
  return result;
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.titleColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 208);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.titleColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 192), *(v1 + 200), *(v1 + 208));
  *(v1 + 192) = v2;
  *(v1 + 200) = v3;
  *(v1 + 208) = v4;
  return result;
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.bodyColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 232);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.bodyColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 216), *(v1 + 224), *(v1 + 232));
  *(v1 + 216) = v2;
  *(v1 + 224) = v3;
  *(v1 + 232) = v4;
  return result;
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.backgroundColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 248);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 256);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.backgroundColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 240), *(v1 + 248), *(v1 + 256));
  *(v1 + 240) = v2;
  *(v1 + 248) = v3;
  *(v1 + 256) = v4;
  return result;
}

_OWORD *Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.init(titleFont:bodyFont:symbolFont:titleColorID:bodyColorID:backgroundColorID:cornerRadius:)@<X0>(_OWORD *result@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = *(a4 + 16);
  v9 = *(a5 + 16);
  v10 = *(a6 + 16);
  v11 = result[1];
  *a7 = *result;
  *(a7 + 16) = v11;
  v12 = result[3];
  *(a7 + 32) = result[2];
  *(a7 + 48) = v12;
  v13 = a2[3];
  *(a7 + 96) = a2[2];
  *(a7 + 112) = v13;
  v14 = a2[1];
  *(a7 + 64) = *a2;
  *(a7 + 80) = v14;
  v15 = a3[1];
  *(a7 + 128) = *a3;
  *(a7 + 144) = v15;
  v16 = a3[3];
  *(a7 + 160) = a3[2];
  *(a7 + 176) = v16;
  *(a7 + 192) = *a4;
  *(a7 + 208) = v8;
  *(a7 + 216) = *a5;
  *(a7 + 232) = v9;
  *(a7 + 240) = *a6;
  *(a7 + 256) = v10;
  *(a7 + 264) = a8;
  return result;
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.assets.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  v19 = *(v0 + 8);
  v4 = v0[5];
  v5 = v0[6];
  v20 = v0[2];
  v21 = v0[9];
  v24 = v0[10];
  v25 = v0[8];
  v22 = v0[11];
  v23 = *(v0 + 24);
  v6 = v0[13];
  v7 = v0[14];
  v30 = v0[18];
  v31 = v0[16];
  v27 = v0[17];
  v28 = v0[19];
  v29 = *(v0 + 40);
  v8 = v0[21];
  v26 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_242F09510;
  *(v9 + 56) = &type metadata for VectorFont.Asset;
  *(v9 + 64) = &protocol witness table for VectorFont.Asset;
  v10 = swift_allocObject();
  *(v9 + 32) = v10;
  *(v10 + 16) = v2;
  *(v10 + 24) = v1;
  *(v10 + 32) = v20;
  *(v10 + 40) = v3;
  *(v10 + 48) = v19;
  *(v10 + 56) = v4;
  *(v10 + 64) = v5;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 56) = &type metadata for VectorFont.Asset;
  *(inited + 64) = &protocol witness table for VectorFont.Asset;
  v12 = swift_allocObject();
  *(inited + 32) = v12;
  *(v12 + 16) = v25;
  *(v12 + 24) = v21;
  *(v12 + 32) = v24;
  *(v12 + 40) = v22;
  *(v12 + 48) = v23;
  *(v12 + 56) = v6;
  *(v12 + 64) = v7;
  v13 = v7;

  v14 = v5;

  sub_242C819FC(inited);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_242F09510;
  *(v15 + 56) = &type metadata for VectorFont.Asset;
  *(v15 + 64) = &protocol witness table for VectorFont.Asset;
  v16 = swift_allocObject();
  *(v15 + 32) = v16;
  *(v16 + 16) = v31;
  *(v16 + 24) = v27;
  *(v16 + 32) = v30;
  *(v16 + 40) = v28;
  *(v16 + 48) = v29;
  *(v16 + 56) = v8;
  *(v16 + 64) = v26;
  v17 = v26;

  sub_242C819FC(v15);
  return v9;
}

void Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.restoreAssets(from:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v6);
  v8 = *v1;
  v9 = v1[1];
  v26 = 1;
  v10 = *(v7 + 8);

  v11 = v10(v8, v9, &v26, v6, v7);

  if (!v3)
  {

    v4[6] = v11;
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_2Tm(a1, v12);
    v14 = v4[8];
    v15 = v4[9];
    v25 = 1;
    v16 = *(v13 + 8);

    v17 = v16(v14, v15, &v25, v12, v13);

    v4[14] = v17;
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_2Tm(a1, v18);
    v20 = v4[16];
    v21 = v4[17];
    v24 = 1;
    v22 = *(v19 + 8);

    v23 = v22(v20, v21, &v24, v18, v19);

    v4[22] = v23;
  }
}

unint64_t sub_242D62970()
{
  v1 = *v0;
  v2 = 0x6E6F46656C746974;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0x615272656E726F63;
  }

  v4 = 0x6C6F43656C746974;
  if (v1 != 3)
  {
    v4 = 0x6F6C6F4379646F62;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E6F4679646F62;
  if (v1 != 1)
  {
    v5 = 0x6F466C6F626D7973;
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

uint64_t sub_242D62A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D68874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D62A98(uint64_t a1)
{
  v2 = sub_242D672C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D62AD4(uint64_t a1)
{
  v2 = sub_242D672C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4210);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = v1[1];
  v55 = *v1;
  v56 = v7;
  v8 = v1[3];
  v57 = v1[2];
  v58 = v8;
  v9 = v1[5];
  v59 = v1[4];
  v60 = v9;
  v10 = v1[7];
  v61 = v1[6];
  v62 = v10;
  v11 = v1[8];
  v12 = v1[9];
  v13 = v1[11];
  v65 = v1[10];
  v66 = v13;
  v63 = v11;
  v64 = v12;
  v14 = *(v1 + 24);
  v27 = *(v1 + 25);
  v28 = v14;
  v26 = *(v1 + 208);
  v15 = *(v1 + 27);
  v24 = *(v1 + 28);
  v25 = v15;
  v23 = *(v1 + 232);
  v16 = *(v1 + 30);
  v21 = *(v1 + 31);
  v22 = v16;
  HIDWORD(v20) = *(v1 + 256);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D67214(&v55, &v51);
  sub_242D672C4();
  sub_242F064C0();
  v51 = v55;
  v52 = v56;
  v53 = v57;
  v54 = v58;
  v50 = 0;
  sub_242D67318();
  v17 = v29;
  sub_242F05F20();
  if (v17)
  {
    v46 = v51;
    v47 = v52;
    v48 = v53;
    v49 = v54;
    sub_242D67270(&v46);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v18 = v28;
    v46 = v51;
    v47 = v52;
    v48 = v53;
    v49 = v54;
    sub_242D67270(&v46);
    v42 = v59;
    v43 = v60;
    v44 = v61;
    v45 = v62;
    v41 = 1;
    sub_242D67214(&v59, v40);
    sub_242F05F20();
    v40[0] = v42;
    v40[1] = v43;
    v40[2] = v44;
    v40[3] = v45;
    sub_242D67270(v40);
    v36 = v63;
    v37 = v64;
    v38 = v65;
    v39 = v66;
    v35 = 2;
    sub_242D67214(&v63, v34);
    sub_242F05F20();
    v34[0] = v36;
    v34[1] = v37;
    v34[2] = v38;
    v34[3] = v39;
    sub_242D67270(v34);
    v31 = v18;
    v32 = v27;
    v33 = v26;
    v30 = 3;
    sub_242C7CE5C(v18, v27, v26);
    sub_242C7DEA0();
    sub_242F05F20();
    sub_242C7CEB0(v31, v32, v33);
    v31 = v25;
    v32 = v24;
    v33 = v23;
    v30 = 4;
    sub_242C7CE5C(v25, v24, v23);
    sub_242F05F20();
    sub_242C7CEB0(v31, v32, v33);
    v31 = v22;
    v32 = v21;
    v33 = BYTE4(v20);
    v30 = 5;
    sub_242C7CE5C(v22, v21, SBYTE4(v20));
    sub_242F05F20();
    sub_242C7CEB0(v31, v32, v33);
    LOBYTE(v31) = 6;
    sub_242F05EE0();
    return (*(v4 + 8))(v6, 0);
  }
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hash(into:)()
{
  v1 = v0[7];
  v2 = v0[15];
  v3 = v0[23];
  v4 = v0[33];
  VectorFont.Asset.hash(into:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x245D279D0](*&v5);
  VectorFont.Asset.hash(into:)();
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x245D279D0](*&v6);
  VectorFont.Asset.hash(into:)();
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x245D279D0](*&v7);
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  return MEMORY[0x245D279D0](*&v8);
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hash(into:)();
  return sub_242F063E0();
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242D672C4();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(v24);
  }

  v23 = a2;
  v56 = 0;
  sub_242D6736C();
  sub_242F05E00();
  v61 = v57;
  v62 = v58;
  v63 = v59;
  v64 = v60;
  v51 = 1;
  sub_242F05E00();
  v65 = v52;
  v66 = v53;
  v67 = v54;
  v68 = v55;
  v46 = 2;
  sub_242F05E00();
  v69 = v47;
  v70 = v48;
  v71 = v49;
  v72 = v50;
  LOBYTE(v25[0]) = 3;
  sub_242C7DFAC();
  sub_242F05E00();
  v18 = v26;
  v19 = v27;
  LOBYTE(v25[0]) = 4;
  sub_242F05E00();
  v21 = v26;
  v22 = v27;
  LOBYTE(v25[0]) = 5;
  sub_242F05E00();
  v10 = v26;
  v20 = v27;
  v45 = 6;
  sub_242F05DC0();
  v11 = v19;
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  v25[8] = v69;
  v25[9] = v70;
  v25[10] = v71;
  v25[11] = v72;
  v25[4] = v65;
  v25[5] = v66;
  v25[6] = v67;
  v25[7] = v68;
  v25[0] = v61;
  v25[1] = v62;
  v25[2] = v63;
  v25[3] = v64;
  v14 = v18;
  v25[12] = v18;
  LOBYTE(v25[13]) = v11;
  v15 = v21;
  *(&v25[13] + 8) = v21;
  v16 = v22;
  BYTE8(v25[14]) = v22;
  v25[15] = v10;
  LOBYTE(v25[16]) = v20;
  *(&v25[16] + 1) = v13;
  memcpy(v23, v25, 0x110uLL);
  sub_242D6706C(v25, &v26);
  __swift_destroy_boxed_opaque_existential_2Tm(v24);
  v34 = v69;
  v35 = v70;
  v36 = v71;
  v37 = v72;
  v30 = v65;
  v31 = v66;
  v32 = v67;
  v33 = v68;
  v26 = v61;
  v27 = v62;
  v28 = v63;
  v29 = v64;
  v38 = __PAIR128__(*(&v18 + 1), v14);
  v39 = v11;
  v40 = v15;
  v41 = v16;
  v42 = v10;
  v43 = v20;
  v44 = v13;
  return sub_242D670A4(&v26);
}

uint64_t sub_242D6388C()
{
  sub_242F06390();
  Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242D638D0()
{
  sub_242F06390();
  Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hash(into:)();
  return sub_242F063E0();
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.closeButton.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_242CA321C(v9, &v8, &qword_27ECF4238);
}

__n128 Instrument.IndicatorStyle.CriticalConfiguration.closeButton.setter(uint64_t a1)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  sub_242C6D138(v10, &qword_27ECF4238);
  v6 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v6;
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  return result;
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.focusedCloseButton.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v10 = v1[8];
  v11 = v2;
  v4 = v1[11];
  v12 = v1[10];
  v3 = v12;
  v13 = v4;
  v6 = v1[7];
  v9[0] = v1[6];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_242CA321C(v9, &v8, &qword_27ECF4238);
}

__n128 Instrument.IndicatorStyle.CriticalConfiguration.focusedCloseButton.setter(uint64_t a1)
{
  v3 = v1[9];
  v10[2] = v1[8];
  v10[3] = v3;
  v4 = v1[11];
  v10[4] = v1[10];
  v10[5] = v4;
  v5 = v1[7];
  v10[0] = v1[6];
  v10[1] = v5;
  sub_242C6D138(v10, &qword_27ECF4238);
  v6 = *(a1 + 48);
  v1[8] = *(a1 + 32);
  v1[9] = v6;
  v7 = *(a1 + 80);
  v1[10] = *(a1 + 64);
  v1[11] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[6] = *a1;
  v1[7] = v9;
  return result;
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.textConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 192), 0x110uLL);
  memcpy(a1, (v1 + 192), 0x110uLL);
  return sub_242CA321C(__dst, v4, &qword_27ECF41F8);
}

void *Instrument.IndicatorStyle.CriticalConfiguration.textConfiguration.setter(const void *a1)
{
  memcpy(__dst, (v1 + 192), 0x110uLL);
  sub_242C6D138(__dst, &qword_27ECF41F8);
  return memcpy((v1 + 192), a1, 0x110uLL);
}

void *Instrument.IndicatorStyle.CriticalConfiguration.init(closeButton:focusedCloseButton:textConfiguration:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, const void *a3@<X2>, _OWORD *a4@<X8>)
{
  sub_242D673C0(v15);
  v8 = a1[3];
  a4[2] = a1[2];
  a4[3] = v8;
  v9 = a1[5];
  a4[4] = a1[4];
  a4[5] = v9;
  v10 = a1[1];
  *a4 = *a1;
  a4[1] = v10;
  v11 = a2[3];
  a4[8] = a2[2];
  a4[9] = v11;
  v12 = a2[5];
  a4[10] = a2[4];
  a4[11] = v12;
  v13 = a2[1];
  a4[6] = *a2;
  a4[7] = v13;
  memcpy(__dst, v15, sizeof(__dst));
  sub_242C6D138(__dst, &qword_27ECF41F8);
  return memcpy(a4 + 12, a3, 0x110uLL);
}

uint64_t sub_242D63C84()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x74754265736F6C63;
  }
}

uint64_t sub_242D63CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D68AE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D63D18(uint64_t a1)
{
  v2 = sub_242D673EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D63D54(uint64_t a1)
{
  v2 = sub_242D673EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4240);
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16[-v4 - 8];
  v6 = v1[3];
  v36 = v1[2];
  v37 = v6;
  v7 = v1[5];
  v38 = v1[4];
  v39 = v7;
  v8 = v1[1];
  v34 = *v1;
  v35 = v8;
  v9 = v1[9];
  v42 = v1[8];
  v43 = v9;
  v10 = v1[11];
  v44 = v1[10];
  v45 = v10;
  v11 = v1[7];
  v40 = v1[6];
  v41 = v11;
  memcpy(v46, v1 + 12, 0x110uLL);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CA321C(&v34, v17, &qword_27ECF4238);
  sub_242D673EC();
  sub_242F064C0();
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4238);
  sub_242D67494(&qword_27ECF4250);
  v12 = v15;
  sub_242F05F20();
  if (v12)
  {
    v17[2] = v30;
    v17[3] = v31;
    v17[4] = v32;
    v17[5] = v33;
    v17[0] = v28;
    v17[1] = v29;
    sub_242C6D138(v17, &qword_27ECF4238);
    return (*(v47 + 8))(v5, v3);
  }

  else
  {
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v26[5] = v33;
    v26[0] = v28;
    v26[1] = v29;
    sub_242C6D138(v26, &qword_27ECF4238);
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = v45;
    v20 = v40;
    v21 = v41;
    v19 = 1;
    sub_242CA321C(&v40, v17, &qword_27ECF4238);
    sub_242F05F20();
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v18[5] = v25;
    v18[0] = v20;
    v18[1] = v21;
    sub_242C6D138(v18, &qword_27ECF4238);
    memcpy(v17, v46, sizeof(v17));
    v16[279] = 2;
    sub_242CA321C(v46, v16, &qword_27ECF41F8);
    sub_242D67440();
    sub_242F05EB0();
    v14 = (v47 + 8);
    memcpy(v16, v17, 0x110uLL);
    sub_242C6D138(v16, &qword_27ECF41F8);
    return (*v14)(v5, v3);
  }
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  v20 = v1[2];
  v21 = v3;
  v4 = v1[5];
  v22 = v1[4];
  v23 = v4;
  v5 = v1[1];
  v18 = *v1;
  v19 = v5;
  v6 = v1[9];
  v14 = v1[8];
  v15 = v6;
  v7 = v1[11];
  v16 = v1[10];
  v17 = v7;
  v8 = v1[7];
  v12 = v1[6];
  v13 = v8;
  sub_242D65A9C(a1);
  sub_242D65A9C(a1);
  memcpy(__dst, v1 + 12, sizeof(__dst));
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__dst) == 1)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();
  memcpy(v10, v1 + 12, sizeof(v10));
  sub_242D6706C(v10, v11);
  Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hash(into:)();
  memcpy(v11, v1 + 12, sizeof(v11));
  return sub_242D670A4(v11);
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.hashValue.getter()
{
  v1 = v0[3];
  v19 = v0[2];
  v20 = v1;
  v2 = v0[5];
  v21 = v0[4];
  v22 = v2;
  v3 = v0[1];
  v17 = *v0;
  v18 = v3;
  v4 = v0[9];
  v13 = v0[8];
  v14 = v4;
  v5 = v0[11];
  v15 = v0[10];
  v16 = v5;
  v6 = v0[7];
  v11 = v0[6];
  v12 = v6;
  sub_242F06390();
  sub_242D65A9C(v10);
  sub_242D65A9C(v10);
  memcpy(__dst, v0 + 12, sizeof(__dst));
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__dst) == 1)
  {
    sub_242F063B0();
  }

  else
  {
    sub_242F063B0();
    memcpy(v8, v0 + 12, sizeof(v8));
    sub_242D6706C(v8, v9);
    Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hash(into:)();
    memcpy(v9, v0 + 12, sizeof(v9));
    sub_242D670A4(v9);
  }

  return sub_242F063E0();
}

uint64_t Instrument.IndicatorStyle.CriticalConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4260);
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v11 - v6;
  sub_242D673C0(v32);
  memcpy(&v31[12], v32, 0x110uLL);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D673EC();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    memcpy(v16, &v31[12], 0x110uLL);
    return sub_242C6D138(v16, &qword_27ECF41F8);
  }

  else
  {
    v11 = a2;
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4238);
    v24 = 0;
    sub_242D67494(&qword_27ECF4268);
    v8 = v33;
    sub_242F05E00();
    v31[2] = v27;
    v31[3] = v28;
    v31[4] = v29;
    v31[5] = v30;
    v31[0] = v25;
    v31[1] = v26;
    v17[279] = 1;
    sub_242F05E00();
    v9 = v12;
    v31[8] = v20;
    v31[9] = v21;
    v31[10] = v22;
    v31[11] = v23;
    v31[6] = v18;
    v31[7] = v19;
    v16[479] = 2;
    sub_242D6750C();
    sub_242F05D90();
    (*(v9 + 8))(v7, v8);
    memcpy(v13, v17, sizeof(v13));
    memcpy(v14, &v31[12], sizeof(v14));
    sub_242C6D138(v14, &qword_27ECF41F8);
    memcpy(&v31[12], v13, 0x110uLL);
    memcpy(v15, v31, sizeof(v15));
    memcpy(v11, v31, 0x1D0uLL);
    sub_242D67560(v15, v16);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    memcpy(v16, v31, 0x1D0uLL);
    return sub_242D671E4(v16);
  }
}

void sub_242D647D0(void *a1)
{
  ImageAsset.restore(from:)(a1);
  if (!v2)
  {
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    memcpy(v4, (v1 + 192), sizeof(v4));
    if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v4) != 1)
    {
      Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.restoreAssets(from:)(a1);
    }
  }
}

uint64_t sub_242D648B4(uint64_t a1)
{
  v3 = v1[3];
  v20 = v1[2];
  v21 = v3;
  v4 = v1[5];
  v22 = v1[4];
  v23 = v4;
  v5 = v1[1];
  v18 = *v1;
  v19 = v5;
  v6 = v1[9];
  v14 = v1[8];
  v15 = v6;
  v7 = v1[11];
  v16 = v1[10];
  v17 = v7;
  v8 = v1[7];
  v12 = v1[6];
  v13 = v8;
  sub_242D65A9C(a1);
  sub_242D65A9C(a1);
  memcpy(__dst, v1 + 12, sizeof(__dst));
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__dst) == 1)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();
  memcpy(v10, v1 + 12, sizeof(v10));
  sub_242D6706C(v10, v11);
  Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hash(into:)();
  memcpy(v11, v1 + 12, sizeof(v11));
  return sub_242D670A4(v11);
}

uint64_t sub_242D649A8()
{
  v1 = v0[3];
  v19 = v0[2];
  v20 = v1;
  v2 = v0[5];
  v21 = v0[4];
  v22 = v2;
  v3 = v0[1];
  v17 = *v0;
  v18 = v3;
  v4 = v0[9];
  v13 = v0[8];
  v14 = v4;
  v5 = v0[11];
  v15 = v0[10];
  v16 = v5;
  v6 = v0[7];
  v11 = v0[6];
  v12 = v6;
  sub_242F06390();
  sub_242D65A9C(v10);
  sub_242D65A9C(v10);
  memcpy(__dst, v0 + 12, sizeof(__dst));
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__dst) == 1)
  {
    sub_242F063B0();
  }

  else
  {
    sub_242F063B0();
    memcpy(v8, v0 + 12, sizeof(v8));
    sub_242D6706C(v8, v9);
    Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hash(into:)();
    memcpy(v9, v0 + 12, sizeof(v9));
    sub_242D670A4(v9);
  }

  return sub_242F063E0();
}

uint64_t sub_242D64AB0()
{
  if (*v0)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x6C61636974697263;
  }
}

uint64_t sub_242D64AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636974697263 && a2 == 0xE800000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242D64BC8(uint64_t a1)
{
  v2 = sub_242D67598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D64C04(uint64_t a1)
{
  v2 = sub_242D67598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D64C40(uint64_t a1)
{
  v2 = sub_242D67640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D64C7C(uint64_t a1)
{
  v2 = sub_242D67640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D64CB8(uint64_t a1)
{
  v2 = sub_242D675EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D64CF4(uint64_t a1)
{
  v2 = sub_242D675EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.IndicatorStyle.encode(to:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4278);
  v12 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v3 = &v12 - v2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4280);
  v13 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4288);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D67598();
  sub_242F064C0();
  memcpy(v18, v16, 0x1D0uLL);
  if (sub_242C9E7A4(v18) == 1)
  {
    v17[0] = 1;
    sub_242D675EC();
    sub_242F05E40();
    (*(v12 + 8))(v3, v14);
  }

  else
  {
    v17[0] = 0;
    sub_242D67640();
    sub_242F05E40();
    memcpy(v17, v18, sizeof(v17));
    sub_242D67694();
    v11 = v15;
    sub_242F05F20();
    (*(v13 + 8))(v5, v11);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t Instrument.IndicatorStyle.hash(into:)(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  if (sub_242C9E7A4(__dst) == 1)
  {
    return MEMORY[0x245D279A0](1);
  }

  MEMORY[0x245D279A0](0);
  v16 = __dst[2];
  v17 = __dst[3];
  v18 = __dst[4];
  v19 = __dst[5];
  v14 = __dst[0];
  v15 = __dst[1];
  v10 = __dst[8];
  v11 = __dst[9];
  v12 = __dst[10];
  v13 = __dst[11];
  v8 = __dst[6];
  v9 = __dst[7];
  sub_242D65A9C(a1);
  sub_242D65A9C(a1);
  memcpy(v7, &__dst[12], sizeof(v7));
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v7) == 1)
  {
    return sub_242F063B0();
  }

  memcpy(v4, &__dst[12], sizeof(v4));
  sub_242F063B0();
  memcpy(v5, &__dst[12], sizeof(v5));
  sub_242D6706C(v5, v6);
  Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hash(into:)();
  memcpy(v6, v4, sizeof(v6));
  return sub_242D670A4(v6);
}

uint64_t Instrument.IndicatorStyle.hashValue.getter()
{
  sub_242F06390();
  memcpy(__dst, v0, sizeof(__dst));
  if (sub_242C9E7A4(__dst) == 1)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    v15 = __dst[2];
    v16 = __dst[3];
    v17 = __dst[4];
    v18 = __dst[5];
    v13 = __dst[0];
    v14 = __dst[1];
    v9 = __dst[8];
    v10 = __dst[9];
    v11 = __dst[10];
    v12 = __dst[11];
    v7 = __dst[6];
    v8 = __dst[7];
    sub_242D65A9C(v6);
    sub_242D65A9C(v6);
    memcpy(v5, &__dst[12], sizeof(v5));
    if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v5) == 1)
    {
      sub_242F063B0();
    }

    else
    {
      memcpy(__src, &__dst[12], sizeof(__src));
      sub_242F063B0();
      memcpy(v3, &__dst[12], sizeof(v3));
      sub_242D6706C(v3, v4);
      Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hash(into:)();
      memcpy(v4, __src, sizeof(v4));
      sub_242D670A4(v4);
    }
  }

  return sub_242F063E0();
}

uint64_t Instrument.IndicatorStyle.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF42B0);
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF42B8);
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF42C0);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  sub_242D67598();
  v14 = v32;
  sub_242F06480();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(v40);
  }

  v32 = v7;
  v16 = v30;
  v15 = v31;
  v17 = sub_242F05E10();
  v18 = (2 * *(v17 + 16)) | 1;
  v36 = v17;
  v37 = v17 + 32;
  v38 = 0;
  v39 = v18;
  v19 = sub_242C7FBE4();
  if (v19 == 2 || v38 != v39 >> 1)
  {
    v21 = sub_242F05B10();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
    *v23 = &type metadata for Instrument.IndicatorStyle;
    sub_242F05D20();
    sub_242F05AF0();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
    swift_willThrow();
    (*(v16 + 8))(v12, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_2Tm(v40);
  }

  if (v19)
  {
    v34[0] = 1;
    sub_242D675EC();
    sub_242F05D10();
    v20 = v15;
    (*(v29 + 1))(v6, v28);
    (*(v16 + 8))(v12, v10);
    swift_unknownObjectRelease();
    sub_242D676E8(v35);
  }

  else
  {
    v34[0] = 0;
    sub_242D67640();
    sub_242F05D10();
    v20 = v15;
    v29 = v12;
    sub_242D67730();
    v25 = v32;
    sub_242F05E00();
    (*(v27 + 8))(v9, v25);
    (*(v16 + 8))(v29, v10);
    swift_unknownObjectRelease();
    memcpy(v33, v34, sizeof(v33));
    nullsub_2(v33);
    memcpy(v35, v33, sizeof(v35));
  }

  memcpy(v20, v35, 0x1D0uLL);
  return __swift_destroy_boxed_opaque_existential_2Tm(v40);
}

void *sub_242D6588C()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (sub_242C9E7A4(__dst) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  memcpy(v2, __dst, sizeof(v2));
  return Instrument.IndicatorStyle.CriticalConfiguration.assets.getter();
}

uint64_t sub_242D65944()
{
  sub_242F06390();
  memcpy(__dst, v0, sizeof(__dst));
  if (sub_242C9E7A4(__dst) == 1)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    v15 = __dst[2];
    v16 = __dst[3];
    v17 = __dst[4];
    v18 = __dst[5];
    v13 = __dst[0];
    v14 = __dst[1];
    v9 = __dst[8];
    v10 = __dst[9];
    v11 = __dst[10];
    v12 = __dst[11];
    v7 = __dst[6];
    v8 = __dst[7];
    sub_242D65A9C(v6);
    sub_242D65A9C(v6);
    memcpy(v5, &__dst[12], sizeof(v5));
    if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v5) == 1)
    {
      sub_242F063B0();
    }

    else
    {
      memcpy(__src, &__dst[12], sizeof(__src));
      sub_242F063B0();
      memcpy(v3, &__dst[12], sizeof(v3));
      sub_242D6706C(v3, v4);
      Instrument.IndicatorStyle.CriticalConfiguration.TextConfiguration.hash(into:)();
      memcpy(v4, __src, sizeof(v4));
      sub_242D670A4(v4);
    }
  }

  return sub_242F063E0();
}

uint64_t sub_242D65A9C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  if (v7 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v4)
    {
      v10 = v4;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(a1, v5);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v6)
    {
      sub_242F063B0();
      v9 = v6;
      sub_242F05820();

      if (v7)
      {
LABEL_4:
        sub_242F063B0();
        goto LABEL_13;
      }
    }

    else
    {
      sub_242F063B0();
      if (v7)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x245D279D0](v11);
  }

LABEL_13:
  MEMORY[0x245D279A0](v8);
  v12 = *(v2 + 48);
  v14 = *(v2 + 64);
  v13 = *(v2 + 72);
  v15 = *(v2 + 80);
  v16 = *(v2 + 88);
  if (v15 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v12)
    {
      v18 = v12;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(a1, v13);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v14)
    {
      sub_242F063B0();
      v17 = v14;
      sub_242F05820();

      if (v15)
      {
LABEL_16:
        sub_242F063B0();
        return MEMORY[0x245D279A0](v16);
      }
    }

    else
    {
      sub_242F063B0();
      if (v15)
      {
        goto LABEL_16;
      }
    }

    sub_242F063B0();
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x245D279D0](v19);
  }

  return MEMORY[0x245D279A0](v16);
}

BOOL _s14CarPlayAssetUI10InstrumentV14IndicatorStyleO21CriticalConfigurationV04TextI0V2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 8);
  v6 = a1[5];
  v7 = a1[6];
  v8 = *(a1 + 7);
  v94 = a1[8];
  v95 = a1[9];
  v93 = a1[10];
  v96 = a1[11];
  v92 = *(a1 + 24);
  v9 = a1[13];
  v97 = a1[14];
  v10 = *(a1 + 15);
  v87 = a1[16];
  v88 = a1[17];
  v86 = a1[18];
  v89 = a1[19];
  v85 = *(a1 + 40);
  v11 = a1[21];
  v90 = a1[22];
  v78 = *(a1 + 23);
  v76 = a1[24];
  v75 = a1[25];
  v74 = *(a1 + 208);
  v70 = a1[27];
  v69 = a1[28];
  v68 = *(a1 + 232);
  v64 = a1[30];
  v63 = a1[31];
  v62 = *(a1 + 256);
  v58 = *(a1 + 33);
  v12 = *a2;
  v13 = a2[1];
  v105 = *a1;
  v14 = a2[2];
  v15 = a2[3];
  v107 = v3;
  LODWORD(v3) = *(a2 + 8);
  v16 = a2[5];
  v109 = v5;
  v17 = a2[6];
  v18 = *(a2 + 7);
  v98 = v12;
  v100 = v14;
  v19 = a2[9];
  v91 = a2[8];
  v20 = a2[13];
  v21 = *(a2 + 15);
  v22 = a2[21];
  v77 = *(a2 + 23);
  v57 = *(a2 + 33);
  v102 = v3;
  v23 = a2[10];
  v24 = a2[11];
  v25 = *(a2 + 24);
  v26 = a2[14];
  v80 = a2[18];
  v81 = a2[16];
  v83 = a2[17];
  v84 = a2[19];
  v79 = *(a2 + 40);
  v82 = a2[22];
  v72 = a2[25];
  v73 = a2[24];
  v71 = *(a2 + 208);
  v66 = a2[28];
  v67 = a2[27];
  v65 = *(a2 + 232);
  v60 = a2[31];
  v61 = a2[30];
  v59 = *(a2 + 256);
  v106 = v2;
  v108 = v4;
  v110 = v6;
  v111 = v7;
  v99 = v13;
  v101 = v15;
  v103 = v16;
  v104 = v17;
  v27 = v17;

  v28 = v7;

  LOBYTE(v13) = _s14CarPlayAssetUI10VectorFontV0C0V2eeoiySbAE_AEtFZ_0(&v105, &v98);
  v29 = v104;

  v30 = v111;

  result = 0;
  if ((v13 & 1) != 0 && v8 == v18)
  {
    v105 = v94;
    v106 = v95;
    v107 = v93;
    v108 = v96;
    v109 = v92;
    v110 = v9;
    v111 = v97;
    v98 = v91;
    v99 = v19;
    v100 = v23;
    v101 = v24;
    v102 = v25;
    v103 = v20;
    v104 = v26;
    v32 = v26;

    v33 = v97;

    v34 = _s14CarPlayAssetUI10VectorFontV0C0V2eeoiySbAE_AEtFZ_0(&v105, &v98);
    v35 = v104;

    v36 = v111;

    result = 0;
    if ((v34 & 1) != 0 && v10 == v21)
    {
      v105 = v87;
      v106 = v88;
      v107 = v86;
      v108 = v89;
      v109 = v85;
      v110 = v11;
      v111 = v90;
      v98 = v81;
      v99 = v83;
      v100 = v80;
      v101 = v84;
      v102 = v79;
      v103 = v22;
      v104 = v82;
      v37 = v82;

      v38 = v90;

      v39 = _s14CarPlayAssetUI10VectorFontV0C0V2eeoiySbAE_AEtFZ_0(&v105, &v98);
      v40 = v104;

      v41 = v111;

      result = 0;
      if ((v39 & 1) != 0 && v78 == v77)
      {
        v105 = v76;
        v106 = v75;
        LOBYTE(v107) = v74;
        v98 = v73;
        v99 = v72;
        LOBYTE(v100) = v71;
        v42 = Theme.ColorID.rawValue.getter();
        v44 = v43;
        if (v42 == Theme.ColorID.rawValue.getter() && v44 == v45)
        {
        }

        else
        {
          v46 = sub_242F06110();

          if ((v46 & 1) == 0)
          {
            return 0;
          }
        }

        v105 = v70;
        v106 = v69;
        LOBYTE(v107) = v68;
        v98 = v67;
        v99 = v66;
        LOBYTE(v100) = v65;
        v47 = Theme.ColorID.rawValue.getter();
        v49 = v48;
        if (v47 == Theme.ColorID.rawValue.getter() && v49 == v50)
        {

          goto LABEL_15;
        }

        v51 = sub_242F06110();

        if (v51)
        {
LABEL_15:
          v105 = v64;
          v106 = v63;
          LOBYTE(v107) = v62;
          v98 = v61;
          v99 = v60;
          LOBYTE(v100) = v59;
          v52 = Theme.ColorID.rawValue.getter();
          v54 = v53;
          if (v52 == Theme.ColorID.rawValue.getter() && v54 == v55)
          {

            return v58 == v57;
          }

          v56 = sub_242F06110();

          if (v56)
          {
            return v58 == v57;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

BOOL _s14CarPlayAssetUI10InstrumentV14IndicatorStyleO21CriticalConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v55 = *(a1 + 40);
  v56 = *a1;
  v53 = *(a1 + 48);
  v51 = *(a1 + 64);
  v52 = *(a1 + 56);
  v50 = *(a1 + 72);
  v49 = *(a1 + 80);
  v43 = *(a1 + 88);
  v40 = *(a1 + 104);
  v41 = *(a1 + 96);
  v39 = *(a1 + 112);
  v38 = *(a1 + 120);
  v37 = *(a1 + 128);
  v31 = *(a1 + 136);
  v28 = *(a1 + 152);
  v29 = *(a1 + 144);
  v27 = *(a1 + 160);
  v26 = *(a1 + 168);
  v25 = *(a1 + 176);
  v19 = *(a1 + 184);
  v6 = *(a1 + 32);
  memcpy(__dst, (a1 + 192), sizeof(__dst));
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v54 = *(a2 + 40);
  v47 = *(a2 + 56);
  v48 = *(a2 + 48);
  v45 = *(a2 + 72);
  v46 = *(a2 + 64);
  v44 = *(a2 + 80);
  v42 = *(a2 + 88);
  v35 = *(a2 + 104);
  v36 = *(a2 + 96);
  v33 = *(a2 + 120);
  v34 = *(a2 + 112);
  v32 = *(a2 + 128);
  v30 = *(a2 + 136);
  v23 = *(a2 + 152);
  v24 = *(a2 + 144);
  v21 = *(a2 + 168);
  v22 = *(a2 + 160);
  v20 = *(a2 + 176);
  v18 = *(a2 + 184);
  v11 = *(a2 + 32);
  memcpy(__src, (a2 + 192), 0x110uLL);
  v63[0] = v56;
  v63[1] = v3;
  v63[2] = v4;
  v63[3] = v5;
  LOBYTE(v63[4]) = v6;
  v61[0] = v7;
  v61[1] = v8;
  v61[2] = v9;
  v61[3] = v10;
  LOBYTE(v61[4]) = v11;
  sub_242C7F6C4(v56, v3, v4, v5, v6);
  sub_242C7F6C4(v7, v8, v9, v10, v11);
  v12 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(v63, v61);
  sub_242C7F724(v61[0], v61[1], v61[2], v61[3], v61[4]);
  sub_242C7F724(v63[0], v63[1], v63[2], v63[3], v63[4]);
  result = 0;
  if ((v12 & 1) != 0 && v55 == v54)
  {
    v63[0] = v53;
    v63[1] = v52;
    v63[2] = v51;
    v63[3] = v50;
    LOBYTE(v63[4]) = v49;
    v61[0] = v48;
    v61[1] = v47;
    v61[2] = v46;
    v61[3] = v45;
    LOBYTE(v61[4]) = v44;
    sub_242C7F6C4(v53, v52, v51, v50, v49);
    sub_242C7F6C4(v48, v47, v46, v45, v44);
    v14 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(v63, v61);
    sub_242C7F724(v61[0], v61[1], v61[2], v61[3], v61[4]);
    sub_242C7F724(v63[0], v63[1], v63[2], v63[3], v63[4]);
    result = 0;
    if ((v14 & 1) != 0 && v43 == v42)
    {
      v63[0] = v41;
      v63[1] = v40;
      v63[2] = v39;
      v63[3] = v38;
      LOBYTE(v63[4]) = v37;
      v61[0] = v36;
      v61[1] = v35;
      v61[2] = v34;
      v61[3] = v33;
      LOBYTE(v61[4]) = v32;
      sub_242C7F6C4(v41, v40, v39, v38, v37);
      sub_242C7F6C4(v36, v35, v34, v33, v32);
      v15 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(v63, v61);
      sub_242C7F724(v61[0], v61[1], v61[2], v61[3], v61[4]);
      sub_242C7F724(v63[0], v63[1], v63[2], v63[3], v63[4]);
      result = 0;
      if ((v15 & 1) != 0 && v31 == v30)
      {
        v63[0] = v29;
        v63[1] = v28;
        v63[2] = v27;
        v63[3] = v26;
        LOBYTE(v63[4]) = v25;
        v61[0] = v24;
        v61[1] = v23;
        v61[2] = v22;
        v61[3] = v21;
        LOBYTE(v61[4]) = v20;
        sub_242C7F6C4(v29, v28, v27, v26, v25);
        sub_242C7F6C4(v24, v23, v22, v21, v20);
        v16 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(v63, v61);
        sub_242C7F724(v61[0], v61[1], v61[2], v61[3], v61[4]);
        sub_242C7F724(v63[0], v63[1], v63[2], v63[3], v63[4]);
        result = 0;
        if ((v16 & 1) != 0 && v19 == v18)
        {
          memcpy(v63, __dst, 0x110uLL);
          memcpy(&v63[34], __src, 0x110uLL);
          memcpy(v64, __dst, sizeof(v64));
          if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v64) == 1)
          {
            memcpy(v61, &v63[34], 0x110uLL);
            if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v61) == 1)
            {
              memcpy(v62, v63, sizeof(v62));
              sub_242CA321C(__dst, v60, &qword_27ECF41F8);
              sub_242CA321C(__src, v60, &qword_27ECF41F8);
              sub_242C6D138(v62, &qword_27ECF41F8);
              return 1;
            }

            sub_242CA321C(__dst, v62, &qword_27ECF41F8);
            sub_242CA321C(__src, v62, &qword_27ECF41F8);
          }

          else
          {
            memcpy(v62, v63, sizeof(v62));
            memcpy(v60, v63, sizeof(v60));
            memcpy(v61, &v63[34], 0x110uLL);
            if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v61) != 1)
            {
              memcpy(v59, &v63[34], sizeof(v59));
              sub_242CA321C(__dst, v58, &qword_27ECF41F8);
              sub_242CA321C(__src, v58, &qword_27ECF41F8);
              sub_242CA321C(v62, v58, &qword_27ECF41F8);
              v17 = _s14CarPlayAssetUI10InstrumentV14IndicatorStyleO21CriticalConfigurationV04TextI0V2eeoiySbAI_AItFZ_0(v60, v59);
              memcpy(v57, v59, sizeof(v57));
              sub_242D670A4(v57);
              memcpy(v58, v60, sizeof(v58));
              sub_242D670A4(v58);
              memcpy(v59, v63, sizeof(v59));
              sub_242C6D138(v59, &qword_27ECF41F8);
              return v17;
            }

            memcpy(v59, v63, sizeof(v59));
            sub_242CA321C(__dst, v58, &qword_27ECF41F8);
            sub_242CA321C(__src, v58, &qword_27ECF41F8);
            sub_242CA321C(v62, v58, &qword_27ECF41F8);
            sub_242D670A4(v59);
          }

          memcpy(v61, v63, sizeof(v61));
          sub_242C6D138(v61, &qword_27ECF4398);
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL _s14CarPlayAssetUI10InstrumentV14IndicatorStyleO2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(__src, v3, sizeof(__src));
  memcpy(v13, v4, sizeof(v13));
  memcpy(v14, v3, sizeof(v14));
  memcpy(v15, v4, sizeof(v15));
  if (sub_242C9E7A4(v15) != 1)
  {
    memcpy(v10, __src, sizeof(v10));
    if (sub_242C9E7A4(v10) != 1)
    {
      memcpy(v9, v15, sizeof(v9));
      memcpy(v8, v10, sizeof(v8));
      sub_242D66F08(__src, v7);
      sub_242D66F08(__dst, v7);
      sub_242D66F08(__dst, v7);
      sub_242D66F08(__src, v7);
      v5 = _s14CarPlayAssetUI10InstrumentV14IndicatorStyleO21CriticalConfigurationV2eeoiySbAG_AGtFZ_0(v9, v8);
      sub_242C6D138(v13, &qword_27ECF43A0);
      sub_242D66F40(__src);
      sub_242D66F40(__dst);
      return v5;
    }

    goto LABEL_5;
  }

  memcpy(v10, __src, sizeof(v10));
  if (sub_242C9E7A4(v10) != 1)
  {
LABEL_5:
    sub_242D66F08(__dst, v10);
    sub_242D66F08(__src, v10);
    sub_242C6D138(v13, &qword_27ECF43A0);
    return 0;
  }

  sub_242C6D138(v13, &qword_27ECF43A0);
  return 1;
}

uint64_t _s14CarPlayAssetUI10InstrumentV22IndicatorConfigurationV2eeoiySbAE_AEtFZ_0(char *a1, char *a2)
{
  v4 = *a1;
  memcpy(__dst, a1 + 8, sizeof(__dst));
  v5 = a1[472];
  v6 = *a2;
  memcpy(__src, a2 + 8, sizeof(__src));
  v7 = a2[472];
  v26[0] = v4;
  v25[0] = v6;
  v8 = InstrumentDataIdentifier.rawValue.getter();
  v10 = v9;
  if (v8 == InstrumentDataIdentifier.rawValue.getter() && v10 == v11)
  {

    goto LABEL_5;
  }

  v12 = sub_242F06110();

  v13 = 0;
  if (v12)
  {
LABEL_5:
    memcpy(v24, __dst, sizeof(v24));
    memcpy(v23, __src, sizeof(v23));
    sub_242D66F08(__dst, v22);
    sub_242D66F08(__src, v22);
    v14 = _s14CarPlayAssetUI10InstrumentV14IndicatorStyleO2eeoiySbAE_AEtFZ_0(v24);
    memcpy(v25, v23, sizeof(v25));
    sub_242D66F40(v25);
    memcpy(v26, v24, sizeof(v26));
    sub_242D66F40(v26);
    if (v14)
    {
      if (v5 == 86)
      {
        if (v7 != 86)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v7 == 86)
        {
          goto LABEL_16;
        }

        v24[0] = v5;
        v23[0] = v7;
        v15 = InstrumentDataIdentifier.rawValue.getter();
        v17 = v16;
        if (v15 == InstrumentDataIdentifier.rawValue.getter() && v17 == v18)
        {
        }

        else
        {
          v19 = sub_242F06110();

          if ((v19 & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      v20 = sub_242F03C00();
      if (v20 == sub_242F03C00())
      {
        v13 = sub_242F03B40();
        return v13 & 1;
      }
    }

LABEL_16:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t _s14CarPlayAssetUI17LocalNotificationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a1 + 32);
  v14 = *(a2 + 32);
  v21 = *a1;
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v14;
  sub_242C7F6C4(v21, v2, v3, v4, v13);
  sub_242C7F6C4(v7, v8, v9, v10, v14);
  LOBYTE(v7) = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v21, &v16);
  sub_242C7F724(v16, v17, v18, v19, v20);
  sub_242C7F724(v21, v22, v23, v24, v25);
  return v7 & (v5 == v11) & (v6 ^ v12 ^ 1u);
}

unint64_t sub_242D66EB4()
{
  result = qword_27ECF41A8;
  if (!qword_27ECF41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF41A8);
  }

  return result;
}

unint64_t sub_242D66F70()
{
  result = qword_27ECF41C0;
  if (!qword_27ECF41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF41C0);
  }

  return result;
}

unint64_t sub_242D66FC4()
{
  result = qword_27ECF41C8;
  if (!qword_27ECF41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF41C8);
  }

  return result;
}

unint64_t sub_242D67018()
{
  result = qword_27ECF41D0;
  if (!qword_27ECF41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF41D0);
  }

  return result;
}

unint64_t sub_242D670D4()
{
  result = qword_27ECF41E0;
  if (!qword_27ECF41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF41E0);
  }

  return result;
}

unint64_t sub_242D67128()
{
  result = qword_27ECF41E8;
  if (!qword_27ECF41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF41E8);
  }

  return result;
}

unint64_t sub_242D672C4()
{
  result = qword_27ECF4218;
  if (!qword_27ECF4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4218);
  }

  return result;
}

unint64_t sub_242D67318()
{
  result = qword_27ECF4220;
  if (!qword_27ECF4220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4220);
  }

  return result;
}

unint64_t sub_242D6736C()
{
  result = qword_27ECF4230;
  if (!qword_27ECF4230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4230);
  }

  return result;
}

double sub_242D673C0(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_242D673EC()
{
  result = qword_27ECF4248;
  if (!qword_27ECF4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4248);
  }

  return result;
}

unint64_t sub_242D67440()
{
  result = qword_27ECF4258;
  if (!qword_27ECF4258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4258);
  }

  return result;
}

uint64_t sub_242D67494(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4238);
    sub_242C8BA70();
    sub_242C8B8E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242D6750C()
{
  result = qword_27ECF4270;
  if (!qword_27ECF4270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4270);
  }

  return result;
}

unint64_t sub_242D67598()
{
  result = qword_27ECF4290;
  if (!qword_27ECF4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4290);
  }

  return result;
}

unint64_t sub_242D675EC()
{
  result = qword_27ECF4298;
  if (!qword_27ECF4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4298);
  }

  return result;
}

unint64_t sub_242D67640()
{
  result = qword_27ECF42A0;
  if (!qword_27ECF42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF42A0);
  }

  return result;
}

unint64_t sub_242D67694()
{
  result = qword_27ECF42A8;
  if (!qword_27ECF42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF42A8);
  }

  return result;
}

double sub_242D676E8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  return result;
}

unint64_t sub_242D67730()
{
  result = qword_27ECF42C8;
  if (!qword_27ECF42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF42C8);
  }

  return result;
}

unint64_t sub_242D67788()
{
  result = qword_27ECF42D0;
  if (!qword_27ECF42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF42D0);
  }

  return result;
}

unint64_t sub_242D677E0()
{
  result = qword_27ECF42D8;
  if (!qword_27ECF42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF42D8);
  }

  return result;
}

unint64_t sub_242D67838()
{
  result = qword_27ECF42E0;
  if (!qword_27ECF42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF42E0);
  }

  return result;
}

unint64_t sub_242D67890()
{
  result = qword_27ECF42E8;
  if (!qword_27ECF42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF42E8);
  }

  return result;
}

unint64_t sub_242D678E8()
{
  result = qword_27ECF42F0;
  if (!qword_27ECF42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF42F0);
  }

  return result;
}

uint64_t sub_242D6793C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242D67990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI10InstrumentV14IndicatorStyleO21CriticalConfigurationV04TextI0VSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI10InstrumentV14IndicatorStyleO(uint64_t a1)
{
  v1 = *(a1 + 200);
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

uint64_t sub_242D67A38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 512))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 208);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_242D67AA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 504) = 0;
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
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 512) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 512) = 0;
    }

    if (a2)
    {
      *(result + 208) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_242D67B8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 464))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 200);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242D67BE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 432) = 0u;
    *(result + 448) = 0u;
    *(result + 400) = 0u;
    *(result + 416) = 0u;
    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 464) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 464) = 0;
    }

    if (a2)
    {
      *(result + 200) = a2 + 1;
    }
  }

  return result;
}

double sub_242D67C80(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 456) = 0;
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
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 200) = a2;
  }

  return result;
}

uint64_t sub_242D67D38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 464))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 200);
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

uint64_t sub_242D67D94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 464) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 464) = 0;
    }

    if (a2)
    {
      *(result + 200) = a2;
    }
  }

  return result;
}

uint64_t sub_242D67E78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_242D67EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242D67FC8()
{
  result = qword_27ECF42F8;
  if (!qword_27ECF42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF42F8);
  }

  return result;
}

unint64_t sub_242D68020()
{
  result = qword_27ECF4300;
  if (!qword_27ECF4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4300);
  }

  return result;
}

unint64_t sub_242D68078()
{
  result = qword_27ECF4308;
  if (!qword_27ECF4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4308);
  }

  return result;
}

unint64_t sub_242D680D0()
{
  result = qword_27ECF4310;
  if (!qword_27ECF4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4310);
  }

  return result;
}

unint64_t sub_242D68128()
{
  result = qword_27ECF4318;
  if (!qword_27ECF4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4318);
  }

  return result;
}

unint64_t sub_242D68180()
{
  result = qword_27ECF4320;
  if (!qword_27ECF4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4320);
  }

  return result;
}

unint64_t sub_242D681D8()
{
  result = qword_27ECF4328;
  if (!qword_27ECF4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4328);
  }

  return result;
}

unint64_t sub_242D68230()
{
  result = qword_27ECF4330;
  if (!qword_27ECF4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4330);
  }

  return result;
}

unint64_t sub_242D68288()
{
  result = qword_27ECF4338;
  if (!qword_27ECF4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4338);
  }

  return result;
}

unint64_t sub_242D682E0()
{
  result = qword_27ECF4340;
  if (!qword_27ECF4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4340);
  }

  return result;
}

unint64_t sub_242D68338()
{
  result = qword_27ECF4348;
  if (!qword_27ECF4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4348);
  }

  return result;
}

unint64_t sub_242D68390()
{
  result = qword_27ECF4350;
  if (!qword_27ECF4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4350);
  }

  return result;
}

unint64_t sub_242D683E8()
{
  result = qword_27ECF4358;
  if (!qword_27ECF4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4358);
  }

  return result;
}

unint64_t sub_242D68440()
{
  result = qword_27ECF4360;
  if (!qword_27ECF4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4360);
  }

  return result;
}

unint64_t sub_242D68498()
{
  result = qword_27ECF4368;
  if (!qword_27ECF4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4368);
  }

  return result;
}

unint64_t sub_242D684F0()
{
  result = qword_27ECF4370;
  if (!qword_27ECF4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4370);
  }

  return result;
}

unint64_t sub_242D68548()
{
  result = qword_27ECF4378;
  if (!qword_27ECF4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4378);
  }

  return result;
}

unint64_t sub_242D685A0()
{
  result = qword_27ECF4380;
  if (!qword_27ECF4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4380);
  }

  return result;
}

unint64_t sub_242D685F8()
{
  result = qword_27ECF4388;
  if (!qword_27ECF4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4388);
  }

  return result;
}

unint64_t sub_242D68650()
{
  result = qword_27ECF4390;
  if (!qword_27ECF4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4390);
  }

  return result;
}

uint64_t sub_242D686A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000242F5ABF0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5AC10 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xEF737465736E4972)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242D68874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F46656C746974 && a2 == 0xE900000000000074;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6F4679646F62 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F466C6F626D7973 && a2 == 0xEA0000000000746ELL || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F43656C746974 && a2 == 0xEC0000004449726FLL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6C6F4379646F62 && a2 == 0xEB00000000444972 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5AC30 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_242D68AE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74754265736F6C63 && a2 == 0xEB000000006E6F74;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5AC50 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5AC70 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t ImageAsset.identifier.getter()
{
  v1 = v0[1];
  if ((v0[4] & 0x80000000) == 0)
  {
    v1 = *v0;
  }

  return v1;
}

id ImageAsset.image.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v5 < 0)
  {
    return ImageAsset.LocalizedImage.image.getter();
  }

  if (v4)
  {

    v6 = [v4 regularFileContents];
    if (v6)
    {
      v7 = v6;
      v8 = sub_242F036B0();
      v10 = v9;

      v11 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v12 = sub_242F036A0();
      v13 = [v11 initWithData_];

      sub_242C6CCC0(v8, v10);
      sub_242C7F724(v2, v1, v4, v3, v5);
      return v13;
    }

    sub_242C7F724(v2, v1, v4, v3, v5);
  }

  return 0;
}

uint64_t sub_242D68D90()
{
  if (*v0)
  {
    return 0x657A696C61636F6CLL;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_242D68DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE006567616D4964)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242D68EB4(uint64_t a1)
{
  v2 = sub_242D6F250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D68EF0(uint64_t a1)
{
  v2 = sub_242D6F250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D68F2C(uint64_t a1)
{
  v2 = sub_242D6F34C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D68F68(uint64_t a1)
{
  v2 = sub_242D6F34C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D68FA4(uint64_t a1)
{
  v2 = sub_242D6F2A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D68FE0(uint64_t a1)
{
  v2 = sub_242D6F2A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAsset.ImageType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF43A8);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v19 = &v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF43B0);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF43B8);
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v19 - v9;
  v11 = v1[1];
  v23 = *v1;
  v24 = v11;
  v12 = v1[3];
  v25 = v1[2];
  v26 = v12;
  v13 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D6F250();
  sub_242F064C0();
  if (v13 < 0)
  {
    LOBYTE(v28) = 1;
    sub_242D6F2A4();
    v16 = v19;
    v17 = v27;
    sub_242F05E40();
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v31 = v26;
    sub_242D6F2F8();
    v18 = v21;
    sub_242F05F20();
    (*(v20 + 8))(v16, v18);
    return (*(v8 + 8))(v10, v17);
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_242D6F34C();
    v14 = v27;
    sub_242F05E40();
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v31 = v26;
    v32 = v13 & 1;
    sub_242D6F3A0();
    sub_242F05F20();
    (*(v22 + 8))(v7, v5);
    return (*(v8 + 8))(v10, v14);
  }
}

uint64_t ImageAsset.ImageType.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (v6 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v3)
    {
      v9 = v3;
      sub_242F05820();
    }

    sub_242F04DD0();

    return sub_242C78CCC(a1, v4);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v5)
    {
      sub_242F063B0();
      v7 = v5;
      sub_242F05820();

      if (v6)
      {
        return sub_242F063B0();
      }
    }

    else
    {
      sub_242F063B0();
      if (v6)
      {
        return sub_242F063B0();
      }
    }

    sub_242F063B0();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    return MEMORY[0x245D279D0](v10);
  }
}

uint64_t ImageAsset.ImageType.hashValue.getter()
{
  v1 = *v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_242F06390();
  if (v4 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v1)
    {
      v6 = v1;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(v9, v2);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v3)
    {
      sub_242F063B0();
      v5 = v3;
      sub_242F05820();

      if (v4)
      {
LABEL_4:
        sub_242F063B0();
        return sub_242F063E0();
      }
    }

    else
    {
      sub_242F063B0();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x245D279D0](v7);
  }

  return sub_242F063E0();
}

uint64_t ImageAsset.ImageType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF43E8);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF43F0);
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF43F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v14);
  sub_242D6F250();
  v15 = v36;
  sub_242F06480();
  if (!v15)
  {
    v36 = v11;
    v16 = v35;
    v17 = sub_242F05E10();
    v18 = (2 * *(v17 + 16)) | 1;
    v41 = v17;
    v42 = v17 + 32;
    v43 = 0;
    v44 = v18;
    v19 = sub_242C7FBE4();
    v20 = v10;
    if (v19 == 2 || v43 != v44 >> 1)
    {
      v22 = sub_242F05B10();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v24 = &type metadata for ImageAsset.ImageType;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v19)
      {
        LOBYTE(v37) = 1;
        sub_242D6F2A4();
        sub_242F05D10();
        v21 = v36;
        sub_242D6F3F4();
        v27 = v33;
        sub_242F05E00();
        (*(v34 + 8))(v6, v27);
        (*(v21 + 8))(v13, v20);
        swift_unknownObjectRelease();
        v28 = v37;
        v29 = v38;
        v30 = 0x80;
        v31 = v39;
      }

      else
      {
        LOBYTE(v37) = 0;
        sub_242D6F34C();
        sub_242F05D10();
        v26 = v36;
        sub_242D6F448();
        sub_242F05E00();
        (*(v32 + 8))(v9, v7);
        (*(v26 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v28 = v37;
        v29 = v38;
        v31 = v39;
        v30 = v40;
      }

      *v16 = v28;
      *(v16 + 8) = v29;
      *(v16 + 16) = v31;
      *(v16 + 32) = v30;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v45);
}

uint64_t sub_242D69B68()
{
  v1 = *v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_242F06390();
  if (v4 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v1)
    {
      v6 = v1;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(v9, v2);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v3)
    {
      sub_242F063B0();
      v5 = v3;
      sub_242F05820();

      if (v4)
      {
LABEL_4:
        sub_242F063B0();
        return sub_242F063E0();
      }
    }

    else
    {
      sub_242F063B0();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x245D279D0](v7);
  }

  return sub_242F063E0();
}

__n128 ImageAsset.init(type:destination:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  result = *a1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  return result;
}

uint64_t ImageAsset.preferredFilename.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  if ((v5 & 0x80000000) == 0)
  {
    if (v4)
    {

      v6 = [v4 preferredFilename];
      if (!v6)
      {
        goto LABEL_11;
      }

LABEL_7:
      v8 = v6;
      v9 = sub_242F04F30();

      sub_242C7F724(v1, v2, v4, v3, v5);
      return v9;
    }

    goto LABEL_10;
  }

  if (!v1)
  {

LABEL_10:

    goto LABEL_11;
  }

  v7 = v1;

  v6 = [v7 preferredFilename];
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = sub_242F05C60();
  __break(1u);
  return result;
}

NSFileWrapper_optional __swiftcall ImageAsset.generateAsset(destination:)(CarPlayAssetUI::ArcPackageExporter::Destination destination)
{
  v2 = *(v1 + 16 * ((*(v1 + 32) >> 7) ^ 1u));
  v3 = v2;
  v5 = v2;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

id ImageAsset.Image.image.getter()
{
  result = *(v0 + 16);
  if (result)
  {
    result = [result regularFileContents];
    if (result)
    {
      v2 = result;
      v3 = sub_242F036B0();
      v5 = v4;

      v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v7 = sub_242F036A0();
      v8 = [v6 initWithData_];

      sub_242C6CCC0(v3, v5);
      return v8;
    }
  }

  return result;
}

id ImageAsset.LocalizedImage.image.getter()
{
  v1 = sub_242F03750();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[3];
  sub_242F03740();
  v7 = sub_242F03730();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  if (!*(v6 + 16))
  {

    return 0;
  }

  v10 = sub_242CE519C(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v13 = (*(v6 + 56) + 32 * v10);
  v15 = *v13;
  v14 = v13[1];

  NSFileWrapper.data(contentsOf:)(v15, v14);
  v18 = v17;
  v20 = v19;

  v21 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v22 = sub_242F036A0();
  v23 = [v21 initWithData_];

  sub_242C6CCC0(v18, v20);
  result = v23;
  if (!v23)
  {
    return 0;
  }

  return result;
}

uint64_t ImageAsset.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2 < 0)
  {
    return ImageAsset.LocalizedImage.attributes.getter(a1);
  }

  *a1 = *(v1 + 24);
  *(a1 + 8) = v2 & 1;
  return result;
}

uint64_t ImageAsset.LocalizedImage.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F03750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  sub_242F03740();
  v8 = sub_242F03730();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  if (!*(v7 + 16))
  {

    goto LABEL_5;
  }

  v11 = sub_242CE519C(v8, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_5:
    v17 = 0;
    v18 = 0;
    v15 = 1;
    goto LABEL_6;
  }

  v15 = 0;
  v16 = *(v7 + 56) + 32 * v11;
  v17 = *(v16 + 16);
  v18 = *(v16 + 24);
LABEL_6:
  *a1 = v17;
  *(a1 + 8) = v18;
  *(a1 + 9) = v15;
  return result;
}

void ImageAsset.restore(from:)(void *a1)
{
  v3 = v1;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v5);
  v22 = *(v1 + 40);
  if ((*(v6 + 24))(&v22, v5, v6))
  {
    v8 = *v1;
    v7 = *(v1 + 8);
    v9 = *(v1 + 16);
    v10 = *(v3 + 24);
    if (*(v3 + 32) < 0)
    {
      v22 = *v3;
      *&v23 = v7;
      *(&v23 + 1) = v9;
      v24 = v10;
      v14 = v8;

      ImageAsset.LocalizedImage.restore(from:)(a1);
      v15 = v22;
      if (v2)
      {
      }

      else
      {
        v21 = v23;
        v17 = v24;
        sub_242C7F724(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32));
        *v3 = v15;
        *(v3 + 8) = v21;
        *(v3 + 24) = v17;
        *(v3 + 32) = 0x80;
      }
    }

    else
    {
      v18 = *(v3 + 32);
      v19 = *(v3 + 24);
      v12 = a1[3];
      v11 = a1[4];
      __swift_project_boxed_opaque_existential_2Tm(a1, v12);
      LOBYTE(v22) = 0;
      v25 = *(v11 + 8);
      v20 = v9;

      v13 = v25(v8, v7, &v22, v12, v11);
      if (v2)
      {
      }

      else
      {
        v16 = v13;

        sub_242C7F724(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32));
        *v3 = v8;
        *(v3 + 8) = v7;
        *(v3 + 16) = v16;
        *(v3 + 24) = v19;
        *(v3 + 32) = v18 & 1;
      }
    }
  }
}

void ImageAsset.Image.restore(from:)(void *a1)
{
  v3 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v4);
  v6 = *v1;
  v7 = v1[1];
  v10 = 0;
  v8 = (*(v5 + 8))(v6, v7, &v10, v4, v5);
  if (!v2)
  {
    v9 = v8;

    v3[2] = v9;
  }
}

void ImageAsset.LocalizedImage.restore(from:)(void *a1)
{
  v2 = v1;
  v4 = sub_242F03390();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_242F033A0();
  v68 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v10);
  v13 = v2[1];
  v12 = v2[2];
  v78 = 0;
  v14 = v76;
  v15 = (*(v11 + 8))(v13, v12, &v78, v10, v11);
  if (!v14)
  {
    v16 = v15;
    v72 = v12;
    v73 = v13;
    v65 = v7;
    v66 = 0;
    v64 = v6;
    v67 = v2;
    v17 = v2[3];
    v18 = v17 + 64;
    v19 = 1 << v17[32];
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v17 + 8);
    v22 = (v19 + 63) >> 6;
    v74 = v9;
    v75 = v17;

    v23 = 0;
    v24 = MEMORY[0x277D84F98];
    v25 = v16;
    v69 = v22;
    v70 = v18;
    v71 = v16;
    while (1)
    {
      v28 = v74;
      if (!v21)
      {
        break;
      }

      v29 = v23;
LABEL_12:
      v30 = __clz(__rbit64(v21)) | (v29 << 6);
      v31 = *(v75 + 7);
      v32 = (*(v75 + 6) + 16 * v30);
      v33 = v32[1];
      v76 = *v32;
      v34 = (v31 + 32 * v30);
      v36 = *v34;
      v35 = v34[1];
      swift_bridgeObjectRetain_n();

      v37 = [v25 fileWrappers];
      if (!v37)
      {

LABEL_29:

        sub_242F03350();
        sub_242CE678C(MEMORY[0x277D84F90]);
        sub_242D6F49C();
        v63 = v65;
        sub_242F035C0();
        sub_242F03310();
        (*(v68 + 8))(v28, v63);
        swift_willThrow();

        return;
      }

      v38 = v37;
      sub_242C6CBCC();
      v39 = sub_242F04CF0();

      if (!*(v39 + 16))
      {

LABEL_28:
        v28 = v74;
        goto LABEL_29;
      }

      v40 = sub_242CE519C(v36, v35);
      v42 = v41;

      if ((v42 & 1) == 0)
      {

        goto LABEL_28;
      }

      v43 = *(*(v39 + 56) + 8 * v40);

      v44 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v24;
      v47 = sub_242CE519C(v76, v33);
      v48 = v24[2];
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_32;
      }

      v51 = v46;
      if (v24[3] >= v50)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_242D03168();
        }
      }

      else
      {
        sub_242D07AC0(v50, isUniquelyReferenced_nonNull_native);
        v52 = sub_242CE519C(v76, v33);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_34;
        }

        v47 = v52;
      }

      v21 &= v21 - 1;
      if (v51)
      {

        v24 = v77;
        v26 = v77[7];
        v27 = *(v26 + 8 * v47);
        *(v26 + 8 * v47) = v44;
      }

      else
      {
        v24 = v77;
        v77[(v47 >> 6) + 8] |= 1 << v47;
        v54 = (v24[6] + 16 * v47);
        *v54 = v76;
        v54[1] = v33;
        *(v24[7] + 8 * v47) = v44;

        v55 = v24[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_33;
        }

        v24[2] = v57;
      }

      v23 = v29;
      v18 = v70;
      v25 = v71;
      v22 = v69;
    }

    while (1)
    {
      v29 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v29 >= v22)
      {

        v58 = objc_allocWithZone(MEMORY[0x277CCAA20]);
        sub_242C6CBCC();
        v59 = sub_242F04CC0();

        v60 = [v58 initDirectoryWithFileWrappers_];

        v61 = sub_242F04F00();
        [v60 setPreferredFilename_];

        v62 = v67;
        *v62 = v60;
        return;
      }

      v21 = *&v18[8 * v29];
      ++v23;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_242F06320();
    __break(1u);
  }
}

uint64_t sub_242D6AA68()
{
  if (*v0)
  {
    return 0x74616E6974736564;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_242D6AAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242D6AB84(uint64_t a1)
{
  v2 = sub_242D6F4F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D6ABC0(uint64_t a1)
{
  v2 = sub_242D6F4F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAsset.encode(to:)(void *a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4410);
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = v15 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = a1[3];
  v9 = a1[4];
  v15[0] = *(v1 + 40);
  v15[1] = v9;
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_2Tm(a1, v10);
  sub_242C7F6C4(v5, v6, v7, v8, v11);
  sub_242D6F4F4();
  sub_242F064C0();
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v11;
  v12 = v16;
  v24 = 0;
  sub_242D6F548();
  v13 = v17;
  sub_242F05F20();
  sub_242C7F724(v19, v20, v21, v22, v23);
  if (!v13)
  {
    v19 = v15[0];
    v24 = 1;
    sub_242D6F59C();
    sub_242F05F20();
  }

  return (*(v18 + 8))(v4, v12);
}

uint64_t ImageAsset.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (v6 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v3)
    {
      v9 = v3;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(a1, v4);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v5)
    {
      sub_242F063B0();
      v8 = v5;
      sub_242F05820();

      if (v6)
      {
LABEL_4:
        sub_242F063B0();
        return MEMORY[0x245D279A0](v7);
      }
    }

    else
    {
      sub_242F063B0();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x245D279D0](v10);
  }

  return MEMORY[0x245D279A0](v7);
}

uint64_t ImageAsset.hashValue.getter()
{
  v1 = *v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_242F06390();
  if (v4 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v1)
    {
      v7 = v1;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(v10, v2);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v3)
    {
      sub_242F063B0();
      v6 = v3;
      sub_242F05820();

      if (v4)
      {
LABEL_4:
        sub_242F063B0();
        goto LABEL_13;
      }
    }

    else
    {
      sub_242F063B0();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x245D279D0](v8);
  }

LABEL_13:
  MEMORY[0x245D279A0](v5);
  return sub_242F063E0();
}

void ImageAsset.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4430);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D6F4F4();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v24 = 0;
    sub_242D6F5F0();
    sub_242F05E00();
    v10 = v18;
    v9 = v19;
    v16 = v20;
    v17 = v21;
    v23 = v22;
    v24 = 1;
    sub_242D6F644();
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v12 = v17;
    v11 = v18;
    *a2 = v10;
    *(a2 + 8) = v9;
    v13 = v16;
    *(a2 + 16) = v16;
    *(a2 + 24) = v12;
    v14 = v23;
    *(a2 + 32) = v23;
    *(a2 + 40) = v11;
    sub_242C7F6C4(v10, v9, v13, v12, v14);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    sub_242C7F724(v10, v9, v13, v12, v14);
  }
}

uint64_t sub_242D6B2A0()
{
  v1 = v0[1];
  if ((v0[4] & 0x80000000) == 0)
  {
    v1 = *v0;
  }

  return v1;
}

void *sub_242D6B300()
{
  v1 = *(v0 + 16 * ((*(v0 + 32) >> 7) ^ 1u));
  v2 = v1;
  return v1;
}

uint64_t sub_242D6B388()
{
  v1 = *v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_242F06390();
  if (v4 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v1)
    {
      v7 = v1;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(v10, v2);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v3)
    {
      sub_242F063B0();
      v6 = v3;
      sub_242F05820();

      if (v4)
      {
LABEL_4:
        sub_242F063B0();
        goto LABEL_13;
      }
    }

    else
    {
      sub_242F063B0();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x245D279D0](v8);
  }

LABEL_13:
  MEMORY[0x245D279A0](v5);
  return sub_242F063E0();
}

void *ImageAsset.Image.file.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void ImageAsset.Image.attributes.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t ImageAsset.Image.attributes.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

CarPlayAssetUI::ImageAsset::Attributes __swiftcall ImageAsset.Attributes.init(baselineOffset:)(CarPlayAssetUI::ImageAsset::Attributes baselineOffset)
{
  *v2 = *&baselineOffset.baselineOffset.is_nil;
  *(v2 + 8) = v1 & 1;
  return baselineOffset;
}

uint64_t ImageAsset.Image.init(filename:data:attributes:)@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = sub_242F04F80();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a3;
  HIDWORD(v26) = *(a3 + 8);
  v12 = objc_allocWithZone(MEMORY[0x277CCAA20]);
  sub_242C6D21C(a1, a2);
  v13 = sub_242F036A0();
  v14 = [v12 initRegularFileWithContents_];

  sub_242C6CCC0(a1, a2);
  v15 = sub_242F04F00();
  [v14 setPreferredFilename_];

  v28 = a1;
  v29 = a2;
  sub_242C6D21C(a1, a2);
  sub_242F04F70();
  v16 = sub_242F04F40();
  v18 = v17;
  result = (*(v9 + 8))(v11, v8);
  if (v18 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_242F036D0();
    sub_242C6D208(v16, v18);
    v20 = v28;
    v21 = v29;
    v22 = sub_242D5F87C(v28, v29);
    v24 = v23;
    sub_242C6CCC0(a1, a2);
    result = sub_242C6CCC0(v20, v21);
    *a4 = v22;
    *(a4 + 8) = v24;
    v25 = v27;
    *(a4 + 16) = v14;
    *(a4 + 24) = v25;
    *(a4 + 32) = BYTE4(v26);
  }

  return result;
}

void ImageAsset.Image.init(file:attributes:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_242F04F80();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = [a1 preferredFilename];
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = v12;
  sub_242F04F30();

  v14 = [a1 regularFileContents];
  if (!v14)
  {

LABEL_6:

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  HIDWORD(v28) = v11;
  v29 = v10;
  v15 = v14;
  v16 = sub_242F036B0();
  v18 = v17;

  v30 = v16;
  v31 = v18;
  sub_242C6D21C(v16, v18);
  sub_242F04F70();
  v19 = sub_242F04F40();
  v21 = v20;
  (*(v7 + 8))(v9, v6);
  if (v21 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_242F036D0();
    sub_242C6D208(v19, v21);
    v22 = v30;
    v23 = v31;
    v24 = sub_242D5F87C(v30, v31);
    v26 = v25;
    sub_242C6CCC0(v16, v18);
    sub_242C6CCC0(v22, v23);
    *a3 = v24;
    *(a3 + 8) = v26;
    v27 = v29;
    *(a3 + 16) = a1;
    *(a3 + 24) = v27;
    *(a3 + 32) = BYTE4(v28);
  }
}

void ImageAsset.Image.init(resource:extension:bundle:attributes:)(void *a1@<X4>, uint64_t *a2@<X5>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = sub_242F04F80();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_242F03690();
  v47 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v43 = *a2;
  v42 = *(a2 + 8);
  v16 = a1;
  v17 = sub_242F04F00();

  v18 = sub_242F04F00();

  v19 = [a1 URLForResource:v17 withExtension:v18];

  if (!v19)
  {
    goto LABEL_7;
  }

  sub_242F03660();

  v20 = v47;
  (*(v47 + 32))(v15, v13, v7);
  (*(v20 + 16))(v10, v15, v7);
  v21 = objc_allocWithZone(MEMORY[0x277CCAA20]);
  v22 = sub_242D6EC18(v10, 0);
  v23 = v22;
  if (!v22)
  {
    (*(v20 + 8))(v15, v7);
LABEL_7:

LABEL_8:
    v39 = v48;
    *(v48 + 32) = 0;
    *v39 = 0u;
    v39[1] = 0u;
    return;
  }

  v24 = [v22 regularFileContents];
  if (!v24)
  {
    (*(v20 + 8))(v15, v7);

    goto LABEL_8;
  }

  v25 = v24;
  v26 = sub_242F036B0();
  v28 = v27;

  sub_242F03620();
  v29 = sub_242F04F00();
  [v23 setPreferredFilename_];

  v49 = v26;
  v50 = v28;
  v41 = v26;
  sub_242C6D21C(v26, v28);
  v30 = v44;
  sub_242F04F70();
  v31 = sub_242F04F40();
  v33 = v32;
  (*(v45 + 8))(v30, v46);
  if (v33 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_242F036D0();
    sub_242C6D208(v31, v33);
    v34 = sub_242D5F87C(v49, v50);
    v36 = v35;

    sub_242C6CCC0(v41, v28);
    (*(v20 + 8))(v15, v7);
    sub_242C6CCC0(v49, v50);
    v37 = v48;
    *v48 = v34;
    *(v37 + 8) = v36;
    v38 = v43;
    *(v37 + 16) = v23;
    *(v37 + 24) = v38;
    *(v37 + 32) = v42;
  }
}

uint64_t sub_242D6BE18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7475626972747461;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xEA00000000007365;
  }

  if (*a2)
  {
    v5 = 0x7475626972747461;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007365;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

uint64_t sub_242D6BEC4()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D6BF4C()
{
  sub_242F04DD0();
}

uint64_t sub_242D6BFC0()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242D6C050(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x7475626972747461;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xEA00000000007365;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242D6C094()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_242D6C0E0(uint64_t a1)
{
  v2 = sub_242D6F698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D6C11C(uint64_t a1)
{
  v2 = sub_242D6F698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static ImageAsset.Attributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ImageAsset.Image.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4448);
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v8 = *(v1 + 24);
  v12 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D6F698();
  sub_242F064C0();
  v14 = 0;
  sub_242F05EC0();
  if (!v2)
  {
    v10 = v8;
    v11 = v12;
    v13 = 1;
    sub_242D6F6EC();
    sub_242F05F20();
  }

  return (*(v9 + 8))(v6, v4);
}

uint64_t ImageAsset.Image.hash(into:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_242F04DD0();
  if (v2)
  {
    sub_242F063B0();
    v4 = v2;
    sub_242F05820();

    if (v3)
    {
      return sub_242F063B0();
    }
  }

  else
  {
    sub_242F063B0();
    if (v3)
    {
      return sub_242F063B0();
    }
  }

  sub_242F063B0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v1;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x245D279D0](v6);
}

uint64_t ImageAsset.Image.hashValue.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_242F06390();
  sub_242F04DD0();
  if (v2)
  {
    sub_242F063B0();
    v4 = v2;
    sub_242F05820();

    if (v3)
    {
LABEL_3:
      sub_242F063B0();
      return sub_242F063E0();
    }
  }

  else
  {
    sub_242F063B0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_242F063B0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x245D279D0](v5);
  return sub_242F063E0();
}

uint64_t ImageAsset.Image.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4460);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D6F698();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v19 = 0;
  v9 = sub_242F05DA0();
  v11 = v10;
  v12 = v9;
  v18 = 1;
  sub_242D6F740();
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  v14 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242D6C694(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF45A0);
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v8 = *(v1 + 16);
  v12 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D70EF8();
  sub_242F064C0();
  v14 = 0;
  sub_242F05EC0();
  if (!v2)
  {
    v10 = v8;
    v11 = v12;
    v13 = 1;
    sub_242D6F6EC();
    sub_242F05F20();
  }

  return (*(v9 + 8))(v6, v4);
}

uint64_t sub_242D6C838()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_242F04DD0();
  if (v2 == 1)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x245D279D0](v4);
}

uint64_t sub_242D6C8A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_242F06390();
  sub_242F04DD0();
  if (v2 == 1)
  {
    sub_242F063B0();
  }

  else
  {
    sub_242F063B0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x245D279D0](v3);
  }

  return sub_242F063E0();
}

uint64_t sub_242D6C930@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF45B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D70EF8();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v19 = 0;
  v9 = sub_242F05DA0();
  v11 = v10;
  v12 = v9;
  v18 = 1;
  sub_242D6F740();
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  v14 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242D6CB68()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_242F06390();
  sub_242F04DD0();
  if (v2)
  {
    sub_242F063B0();
    v4 = v2;
    sub_242F05820();

    if (v3)
    {
LABEL_3:
      sub_242F063B0();
      return sub_242F063E0();
    }
  }

  else
  {
    sub_242F063B0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_242F063B0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x245D279D0](v5);
  return sub_242F063E0();
}