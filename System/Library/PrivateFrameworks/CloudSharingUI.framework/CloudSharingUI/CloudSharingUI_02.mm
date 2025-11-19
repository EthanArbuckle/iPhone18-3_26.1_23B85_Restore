uint64_t sub_243B5476C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B5490C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B54A44(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__supplementaryText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t (*sub_243B54C0C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B54CB0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B54E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B54F88(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__userInfoText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t (*sub_243B55150(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B551F4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B55394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B554CC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__primaryButtonText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t sub_243B55650@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_243B556E0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t sub_243B55774()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B557FC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B55874(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B55918(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B55AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B55BF0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__secondaryButtonText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t sub_243B55D60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  *a2 = v5;
  return result;
}

uint64_t sub_243B55DE0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t sub_243B55E54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B55ED0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B55F40(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B55FE4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD8, &qword_243B74B18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B56184(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD8, &qword_243B74B18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B562BC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD8, &qword_243B74B18);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t sub_243B5642C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  *a2 = v5;
  return result;
}

uint64_t sub_243B564AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t sub_243B56528()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B565A4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B56614(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

void sub_243B566B8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_243B56720(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_243B6FC0C();
  return swift_endAccess();
}

uint64_t sub_243B5679C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B5693C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_243B6FC0C();
  return swift_endAccess();
}

uint64_t sub_243B569B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B56AEC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__addresses;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B56C5C;
}

void sub_243B56C60(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_243B6FC1C();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_243B6FC1C();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_243B56DC8()
{
  if (*(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked))
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  v1 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v1 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
LABEL_5:
    v2 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243B6FC3C();

    v4 = *(v5 + 16);

    if (v4)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_shouldAllowEmptyAddresses) ^ 1;
    }
  }

  return v2 & 1;
}

uint64_t AddressingViewModel.__allocating_init(headerImageData:headerTitle:loadingText:supplementaryText:userInfoText:primaryButtonText:secondaryButtonText:shouldAllowEmptyAddresses:userDidClickPrimaryButton:userDidClickSecondaryButton:userDidClickShowContactPicker:userDidChangeAddresses:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = v23;
  v87 = a8;
  v86 = a7;
  v85 = a6;
  v84 = a5;
  v83 = a4;
  v82 = a3;
  v101 = a22;
  v102 = a23;
  v103 = a20;
  v104 = a21;
  v106 = a1;
  v107 = a19;
  v105 = a18;
  v109 = a17;
  v110 = a2;
  v108 = a16;
  v94 = a15;
  v93 = a14;
  v92 = a13;
  v91 = a12;
  v90 = a11;
  v89 = a10;
  v88 = a9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v96 = *(v97 - 8);
  v25 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v81 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F80, &unk_243B75080);
  v99 = *(v27 - 8);
  v100 = v27;
  v28 = *(v99 + 64);
  MEMORY[0x28223BE20](v27);
  v98 = &v81 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v81 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v81 - v38;
  v40 = *(v24 + 48);
  v41 = *(v24 + 52);
  v42 = swift_allocObject();
  v43 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v111 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DF0, &unk_243B74B80);
  sub_243B6FBFC();
  (*(v36 + 32))(v42 + v43, v39, v35);
  *(v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked) = 0;
  v44 = (v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  LOBYTE(v111) = 1;
  sub_243B6FBFC();
  (*(v31 + 32))(v42 + v45, v34, v30);
  swift_unknownObjectWeakInit();
  *(v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_store) = MEMORY[0x277D84FA0];
  if (v110 >> 60 == 15)
  {
    swift_beginAccess();
    (*(v36 + 8))(v42 + v43, v35);
    v115 = 0;
    sub_243B6FBFC();
    swift_endAccess();
  }

  else
  {
    v46 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v47 = v106;
    v48 = v110;
    sub_243B58478(v106, v110);
    sub_243B58478(v47, v48);
    v49 = sub_243B6FA9C();
    v50 = [v46 initWithData_];

    sub_243B58410(v47, v48);
    swift_beginAccess();
    (*(v36 + 8))(v42 + v43, v35);
    v115 = v50;
    sub_243B6FBFC();
    swift_endAccess();
    sub_243B58410(v47, v48);
  }

  if (v83)
  {
    v51 = v82;
  }

  else
  {
    v51 = 0;
  }

  v52 = 0xE000000000000000;
  if (v83)
  {
    v53 = v83;
  }

  else
  {
    v53 = 0xE000000000000000;
  }

  swift_beginAccess();
  v115 = v51;
  v116 = v53;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v111 = 0;
  v112 = 0xE000000000000000;
  v113 = 0;
  v114 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FA0, &unk_243B750A0);
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v115 = 0;
  v116 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  if (v85)
  {
    v54 = v84;
  }

  else
  {
    v54 = 0;
  }

  if (v85)
  {
    v55 = v85;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  swift_beginAccess();
  v115 = v54;
  v116 = v55;
  sub_243B6FBFC();
  swift_endAccess();
  if (v87)
  {
    v56 = v86;
  }

  else
  {
    v56 = 0;
  }

  if (v87)
  {
    v57 = v87;
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  swift_beginAccess();
  v115 = v56;
  v116 = v57;
  sub_243B6FBFC();
  swift_endAccess();
  if (v89)
  {
    v58 = v88;
  }

  else
  {
    v58 = 0;
  }

  if (v89)
  {
    v59 = v89;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  swift_beginAccess();
  v115 = v58;
  v116 = v59;
  sub_243B6FBFC();
  swift_endAccess();
  if (v91)
  {
    v60 = v90;
  }

  else
  {
    v60 = 0;
  }

  if (v91)
  {
    v61 = v91;
  }

  else
  {
    v61 = 0xE000000000000000;
  }

  swift_beginAccess();
  v115 = v60;
  v116 = v61;
  sub_243B6FBFC();
  swift_endAccess();
  v62 = (v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick);
  v64 = v108;
  v63 = v109;
  *v62 = v108;
  v62[1] = v63;
  if (v93)
  {
    v65 = v92;
  }

  else
  {
    v65 = 0;
  }

  if (v93)
  {
    v52 = v93;
  }

  swift_beginAccess();
  v115 = v65;
  v116 = v52;
  sub_243B2E364(v64);
  sub_243B6FBFC();
  swift_endAccess();
  v66 = (v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick);
  v68 = v104;
  v67 = v105;
  v69 = v107;
  *v66 = v105;
  v66[1] = v69;
  v70 = *v44;
  v71 = v44[1];
  v72 = v103;
  *v44 = v103;
  v44[1] = v68;
  sub_243B2E364(v67);
  sub_243B2E364(v72);
  sub_243B2BFCC(v70);
  v73 = (v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange);
  v74 = v101;
  v75 = v102;
  *v73 = v101;
  v73[1] = v75;
  swift_beginAccess();
  v115 = MEMORY[0x277D84F90];
  sub_243B2E364(v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  sub_243B6FBFC();
  *(v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_shouldAllowEmptyAddresses) = v94 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  v76 = v95;
  sub_243B6FC0C();
  swift_endAccess();

  sub_243B2E680(&qword_27EDA2E00, &qword_27EDA2DE8, &unk_243B74B70);
  sub_243B30A50();
  v77 = v97;
  v78 = v98;
  sub_243B6FC6C();
  (*(v96 + 8))(v76, v77);
  swift_allocObject();
  swift_weakInit();
  sub_243B2E680(&qword_27EDA2E08, &unk_27EDA2F80, &unk_243B75080);
  v79 = v100;
  sub_243B6FC7C();

  (*(v99 + 8))(v78, v79);
  swift_beginAccess();
  sub_243B6FBDC();
  swift_endAccess();

  sub_243B2BFCC(v74);
  sub_243B2BFCC(v72);
  sub_243B2BFCC(v67);
  sub_243B2BFCC(v108);
  sub_243B58410(v106, v110);
  return v42;
}

uint64_t AddressingViewModel.init(headerImageData:headerTitle:loadingText:supplementaryText:userInfoText:primaryButtonText:secondaryButtonText:shouldAllowEmptyAddresses:userDidClickPrimaryButton:userDidClickSecondaryButton:userDidClickShowContactPicker:userDidChangeAddresses:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = v23;
  v84 = a8;
  v83 = a7;
  v82 = a6;
  v81 = a5;
  v80 = a4;
  v79 = a3;
  v103 = a1;
  v104 = a2;
  v98 = a22;
  v99 = a23;
  v100 = a20;
  v101 = a21;
  v102 = a18;
  v107 = a17;
  v105 = a19;
  v106 = a16;
  v91 = a15;
  v90 = a14;
  v89 = a13;
  v88 = a12;
  v87 = a11;
  v86 = a10;
  v85 = a9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v93 = *(v94 - 8);
  v25 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v78 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F80, &unk_243B75080);
  v96 = *(v27 - 8);
  v97 = v27;
  v28 = *(v96 + 64);
  MEMORY[0x28223BE20](v27);
  v95 = &v78 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v78 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v78 - v38;
  v40 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v108 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DF0, &unk_243B74B80);
  sub_243B6FBFC();
  (*(v36 + 32))(v24 + v40, v39, v35);
  *(v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked) = 0;
  v41 = (v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  *v41 = 0;
  v41[1] = 0;
  v42 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  LOBYTE(v108) = 1;
  sub_243B6FBFC();
  (*(v31 + 32))(v24 + v42, v34, v30);
  v43 = v104;
  swift_unknownObjectWeakInit();
  *(v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_store) = MEMORY[0x277D84FA0];
  if (v43 >> 60 == 15)
  {
    swift_beginAccess();
    (*(v36 + 8))(v24 + v40, v35);
    v112 = 0;
    sub_243B6FBFC();
    swift_endAccess();
  }

  else
  {
    v44 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v45 = v103;
    sub_243B584CC(v103, v43);
    sub_243B58478(v45, v43);
    v46 = sub_243B6FA9C();
    v47 = [v44 initWithData_];

    sub_243B58410(v45, v43);
    swift_beginAccess();
    (*(v36 + 8))(v24 + v40, v35);
    v112 = v47;
    sub_243B6FBFC();
    swift_endAccess();
    sub_243B58410(v45, v43);
  }

  if (v80)
  {
    v48 = v79;
  }

  else
  {
    v48 = 0;
  }

  v49 = 0xE000000000000000;
  if (v80)
  {
    v50 = v80;
  }

  else
  {
    v50 = 0xE000000000000000;
  }

  swift_beginAccess();
  v112 = v48;
  v113 = v50;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v108 = 0;
  v109 = 0xE000000000000000;
  v110 = 0;
  v111 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FA0, &unk_243B750A0);
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v112 = 0;
  v113 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  if (v82)
  {
    v51 = v81;
  }

  else
  {
    v51 = 0;
  }

  if (v82)
  {
    v52 = v82;
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  swift_beginAccess();
  v112 = v51;
  v113 = v52;
  sub_243B6FBFC();
  swift_endAccess();
  if (v84)
  {
    v53 = v83;
  }

  else
  {
    v53 = 0;
  }

  if (v84)
  {
    v54 = v84;
  }

  else
  {
    v54 = 0xE000000000000000;
  }

  swift_beginAccess();
  v112 = v53;
  v113 = v54;
  sub_243B6FBFC();
  swift_endAccess();
  if (v86)
  {
    v55 = v85;
  }

  else
  {
    v55 = 0;
  }

  if (v86)
  {
    v56 = v86;
  }

  else
  {
    v56 = 0xE000000000000000;
  }

  swift_beginAccess();
  v112 = v55;
  v113 = v56;
  sub_243B6FBFC();
  swift_endAccess();
  if (v88)
  {
    v57 = v87;
  }

  else
  {
    v57 = 0;
  }

  if (v88)
  {
    v58 = v88;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  swift_beginAccess();
  v112 = v57;
  v113 = v58;
  sub_243B6FBFC();
  swift_endAccess();
  v59 = (v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick);
  v61 = v106;
  v60 = v107;
  *v59 = v106;
  v59[1] = v60;
  if (v90)
  {
    v62 = v89;
  }

  else
  {
    v62 = 0;
  }

  if (v90)
  {
    v49 = v90;
  }

  swift_beginAccess();
  v112 = v62;
  v113 = v49;
  sub_243B2E364(v61);
  sub_243B6FBFC();
  swift_endAccess();
  v63 = (v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick);
  v65 = v101;
  v64 = v102;
  v66 = v105;
  *v63 = v102;
  v63[1] = v66;
  v67 = *v41;
  v68 = v41[1];
  v69 = v100;
  *v41 = v100;
  v41[1] = v65;
  sub_243B2E364(v64);
  sub_243B2E364(v69);
  sub_243B2BFCC(v67);
  v70 = (v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange);
  v72 = v98;
  v71 = v99;
  *v70 = v98;
  v70[1] = v71;
  swift_beginAccess();
  v112 = MEMORY[0x277D84F90];
  sub_243B2E364(v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  sub_243B6FBFC();
  *(v24 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_shouldAllowEmptyAddresses) = v91 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  v73 = v92;
  sub_243B6FC0C();
  swift_endAccess();

  sub_243B2E680(&qword_27EDA2E00, &qword_27EDA2DE8, &unk_243B74B70);
  sub_243B30A50();
  v74 = v94;
  v75 = v95;
  sub_243B6FC6C();
  (*(v93 + 8))(v73, v74);
  swift_allocObject();
  swift_weakInit();
  sub_243B2E680(&qword_27EDA2E08, &unk_27EDA2F80, &unk_243B75080);
  v76 = v97;
  sub_243B6FC7C();

  (*(v96 + 8))(v75, v76);
  swift_beginAccess();
  sub_243B6FBDC();
  swift_endAccess();

  sub_243B2BFCC(v72);
  sub_243B2BFCC(v69);
  sub_243B2BFCC(v64);
  sub_243B2BFCC(v106);
  sub_243B58410(v103, v104);
  return v24;
}

uint64_t sub_243B5834C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243B58384(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange);
    if (v3)
    {
      v4 = *(result + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange + 8);
      v3(v1);
    }
  }

  return result;
}

uint64_t sub_243B58410(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243B58424(a1, a2);
  }

  return a1;
}

uint64_t sub_243B58424(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_243B58478(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_243B584CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243B58478(a1, a2);
  }

  return a1;
}

void sub_243B584E0(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_20;
  }

  v3 = a1;
  v4 = [v3 emailAddresses];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2E20, &qword_243B74BA0);
  v6 = sub_243B7089C();

  if (v6 >> 62)
  {
    if (sub_243B70C0C())
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x245D49BC0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_51:
      if (sub_243B70C0C())
      {
        goto LABEL_13;
      }

      goto LABEL_52;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v8 value];

  if (v9)
  {
    sub_243B7082C();
    v10 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
    v11 = v3;
    v12 = sub_243B7080C();

    v13 = [v10 initWithContact:v11 address:v12 kind:0];

LABEL_17:
    if (v13)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong addRecipient_];
    }

LABEL_20:
    if (!a2)
    {
      goto LABEL_53;
    }

    goto LABEL_21;
  }

LABEL_11:
  v14 = [v3 phoneNumbers];
  v5 = sub_243B7089C();

  if (v5 >> 62)
  {
    goto LABEL_51;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x245D49BC0](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v15 = *(v5 + 32);
    }

    v16 = v15;

    v17 = [v16 value];

    v18 = [v17 stringValue];
    sub_243B7082C();

    v19 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
    v20 = v3;
    v12 = sub_243B7080C();

    v13 = [v19 initWithContact:v20 address:v12 kind:1];
    goto LABEL_17;
  }

LABEL_52:

  if (!a2)
  {
    goto LABEL_53;
  }

LABEL_21:
  v22 = a2;
  v23 = [v22 key];
  v24 = sub_243B7082C();
  v26 = v25;

  v27 = *MEMORY[0x277CBCFC0];
  if (v24 == sub_243B7082C() && v26 == v28)
  {

LABEL_28:
    if ([v22 value])
    {
      sub_243B70B1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
    }

    v51 = v49;
    v52 = v50;
    if (*(&v50 + 1))
    {
      if (swift_dynamicCast())
      {
        v31 = [v22 contact];
        v32 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
        v33 = sub_243B7080C();

        v34 = [v32 initWithContact:v31 address:v33 kind:0];
        goto LABEL_45;
      }
    }

    else
    {
      sub_243B58B78(&v51);
    }

    goto LABEL_35;
  }

  v30 = sub_243B70C6C();

  if (v30)
  {
    goto LABEL_28;
  }

LABEL_35:
  v35 = [v22 key];
  v36 = sub_243B7082C();
  v38 = v37;

  v39 = *MEMORY[0x277CBD098];
  if (v36 == sub_243B7082C() && v38 == v40)
  {
  }

  else
  {
    v41 = sub_243B70C6C();

    if ((v41 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  if ([v22 value])
  {
    sub_243B70B1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51 = v49;
  v52 = v50;
  if (*(&v50 + 1))
  {
    sub_243B58BE0();
    if (swift_dynamicCast())
    {
      v42 = [v48 stringValue];

      sub_243B7082C();
      v31 = [v22 contact];
      v43 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
      v33 = sub_243B7080C();

      v34 = [v43 initWithContact:v31 address:v33 kind:1];
LABEL_45:
      v44 = v34;

      if (v44)
      {
        v45 = swift_unknownObjectWeakLoadStrong();
        [v45 addRecipient_];

        goto LABEL_53;
      }
    }

LABEL_47:

    goto LABEL_53;
  }

  sub_243B58B78(&v51);
LABEL_53:
  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    [v46 becomeFirstResponder];
  }
}

uint64_t sub_243B58B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2E10, &qword_243B74B98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243B58BE0()
{
  result = qword_27EDA2E18;
  if (!qword_27EDA2E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDA2E18);
  }

  return result;
}

uint64_t sub_243B58C2C(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14)
{
  v14 = a8;
  v15 = a7;
  v17 = a5;
  if (a2 >> 60 == 15)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v49 = 0;

    sub_243B6FC4C();
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_243B584CC(a1, a2);
    sub_243B58478(a1, a2);
    v24 = sub_243B6FA9C();
    v25 = [v23 initWithData_];

    sub_243B58410(a1, a2);
    swift_getKeyPath();
    swift_getKeyPath();
    v49 = v25;

    v26 = v25;
    sub_243B6FC4C();
    v27 = a1;
    v17 = a5;
    v14 = a8;
    sub_243B58410(v27, a2);

    v15 = a7;
  }

  if (a4)
  {
    v28 = a3;
  }

  else
  {
    v28 = 0;
  }

  if (a4)
  {
    v29 = a4;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v49 == v28 && v50 == v29)
  {
  }

  else
  {
    v30 = sub_243B70C6C();

    if (v30)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v28;
      v50 = v29;

      sub_243B6FC4C();
    }
  }

  if (a6)
  {
    v31 = v17;
  }

  else
  {
    v31 = 0;
  }

  if (a6)
  {
    v32 = a6;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v49 == v31 && v50 == v32)
  {
  }

  else
  {
    v33 = sub_243B70C6C();

    if (v33)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v31;
      v50 = v32;

      sub_243B6FC4C();
    }
  }

  if (v14)
  {
    v34 = v15;
  }

  else
  {
    v34 = 0;
  }

  if (v14)
  {
    v35 = v14;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v49 == v34 && v50 == v35)
  {
  }

  else
  {
    v36 = sub_243B70C6C();

    if (v36)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v34;
      v50 = v35;

      sub_243B6FC4C();
    }
  }

  if (a10)
  {
    v37 = a9;
  }

  else
  {
    v37 = 0;
  }

  if (a10)
  {
    v38 = a10;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v49 == v37 && v50 == v38)
  {
  }

  else
  {
    v39 = sub_243B70C6C();

    if (v39)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v37;
      v50 = v38;

      sub_243B6FC4C();
    }
  }

  if (a12)
  {
    v40 = a11;
  }

  else
  {
    v40 = 0;
  }

  if (a12)
  {
    v41 = a12;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v49 == v40 && v50 == v41)
  {
  }

  else
  {
    v42 = sub_243B70C6C();

    if (v42)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v40;
      v50 = v41;

      sub_243B6FC4C();
    }
  }

  if (a14)
  {
    v43 = a13;
  }

  else
  {
    v43 = 0;
  }

  if (a14)
  {
    v44 = a14;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v49 == v43 && v50 == v44)
  {
  }

  else
  {
    v46 = sub_243B70C6C();

    if (v46)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_243B6FC4C();
    }
  }
}

uint64_t AddressingViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerTitle;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__yourNameAndEmail;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D88, &qword_243B74908);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v5(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__inputText, v4);
  v5(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__loadingText, v4);
  v5(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__supplementaryText, v4);
  v5(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__userInfoText, v4);
  v5(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__primaryButtonText, v4);
  v8 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick + 8);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick));
  v5(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__secondaryButtonText, v4);
  v9 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick + 8);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick));
  v10 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick + 8);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick));
  v11 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__addresses;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  MEMORY[0x245D4A610](v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_contactsSearchController);
  v15 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange + 8);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange));
  v16 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_store);

  return v0;
}

uint64_t AddressingViewModel.__deallocating_deinit()
{
  AddressingViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_243B596A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddressingViewModel();
  result = sub_243B6FBEC();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AddressingViewModel()
{
  result = qword_27EDA2E28;
  if (!qword_27EDA2E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243B59974()
{
  sub_243B5A83C(319, &qword_27EDA2E38, &qword_27EDA2DF0, &unk_243B74B80);
  if (v1 <= 0x3F)
  {
    v11 = *(v0 - 8) + 64;
    sub_243B5A7F0(319, &qword_27EDA2E40);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_243B5A83C(319, &qword_27EDA2E48, &unk_27EDA2FA0, &unk_243B750A0);
      if (v6 <= 0x3F)
      {
        v12 = *(v5 - 8) + 64;
        sub_243B5A7F0(319, &qword_27EDA2E50);
        if (v8 <= 0x3F)
        {
          v13 = *(v7 - 8) + 64;
          sub_243B5A83C(319, &qword_27EDA2E58, &qword_27EDA2118, &qword_243B74B90);
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_243B5A7F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_243B6FC5C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_243B5A83C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_243B6FC5C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_243B5A89C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_243B6FA8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2828, &unk_243B738E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F18, &qword_243B74EE0);
    v17 = swift_allocError();
    *v18 = a4;
    v19 = a4;
    v20 = v16;
    v21 = v17;
  }

  else
  {
    sub_243B6FA7C();
    v20 = (*(v8 + 32))(v15, v11, v7);
    if (a3)
    {
      *&v15[*(v12 + 48)] = a3;
      v22 = *(*(v16 + 64) + 40);
      v23 = a3;
      sub_243B304EC(v15, v22, &qword_27EDA2828, &unk_243B738E0);
      return swift_continuation_throwingResume();
    }

    __break(1u);
  }

  return MEMORY[0x282200958](v20, v21);
}

void sub_243B5AAB0()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA4FB0 = v2;
  *algn_27EDA4FB8 = v4;
}

void sub_243B5AB7C()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA4FC0 = v2;
  *algn_27EDA4FC8 = v4;
}

void sub_243B5AC48()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA4FD0 = v2;
  *algn_27EDA4FD8 = v4;
}

void sub_243B5AD14()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA4FE0 = v2;
  *algn_27EDA4FE8 = v4;
}

void sub_243B5ADE4()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA4FF0 = v2;
  *algn_27EDA4FF8 = v4;
}

void sub_243B5AEA8()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5000 = v2;
  *algn_27EDA5008 = v4;
}

void sub_243B5AF74()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5010 = v2;
  *algn_27EDA5018 = v4;
}

void sub_243B5B040()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5020 = v2;
  *algn_27EDA5028 = v4;
}

void sub_243B5B100()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5030 = v2;
  *algn_27EDA5038 = v4;
}

void sub_243B5B1D0()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5040 = v2;
  *algn_27EDA5048 = v4;
}

void sub_243B5B298()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5050 = v2;
  *algn_27EDA5058 = v4;
}

void sub_243B5B368()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA5060 = v2;
  *algn_27EDA5068 = v4;
}

uint64_t sub_243B5B448@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange);
  v5 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_243B68F90;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_243B2E364(v4);
}

uint64_t sub_243B5B540(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_243B68F94;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_243B2E364(v3);
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();
  sub_243B2BFCC(v6);
}

uint64_t sub_243B5B6B0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[1];
  sub_243B2E364(*v4);
  return v5;
}

uint64_t sub_243B5B768@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onAppear);
  v5 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onAppear + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_243B68CD4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_243B2E364(v4);
}

uint64_t sub_243B5B860(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_243B68CD0;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_243B2E364(v3);
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();
  sub_243B2BFCC(v6);
}

uint64_t sub_243B5B9F8()
{
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v1 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
}

uint64_t sub_243B5BAA4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }
}

uint64_t sub_243B5BBE0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v3 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__alertViewModel;
  swift_beginAccess();
  return sub_243B2E06C(v5 + v3, a1, &qword_27EDA1E00, &unk_243B73660);
}

uint64_t sub_243B5BCB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_243B2E06C(a2, &v10 - v6, &qword_27EDA1E00, &unk_243B73660);
  v8 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__alertViewModel;
  swift_beginAccess();
  sub_243B2E0D4(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t sub_243B5BDA8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  return *(v2 + *a2);
}

uint64_t sub_243B5BE70(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  return result;
}

uint64_t sub_243B5BF74()
{
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  return *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus);
}

uint64_t sub_243B5C01C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  return result;
}

void (*sub_243B5C128(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_243B5C1B0;
}

void sub_243B5C1B0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    swift_getKeyPath();
    *v3 = v4;
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAFC();

    v5 = *(v4 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange);
    if (v5)
    {
      v7 = v3[3];
      v6 = v3[4];
      v8 = *(v4 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange + 8);
      swift_getKeyPath();
      *v3 = v7;

      sub_243B6FAFC();

      v5(*(v7 + v6));
      sub_243B2BFCC(v5);
    }
  }

  free(v3);
}

uint64_t sub_243B5C2F8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v1 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t type metadata accessor for CreateiCloudLinkViewModel()
{
  result = qword_27EDA2EE0;
  if (!qword_27EDA2EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243B5C408(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
    swift_getKeyPath();
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAFC();

    v7 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange);
    if (v7)
    {
      v8 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange + 8);
      swift_getKeyPath();

      sub_243B6FAFC();

      v7(*(v2 + v4));
      return sub_243B2BFCC(v7);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  return result;
}

uint64_t sub_243B5C61C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  *(a1 + v4) = a2;
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v6 = *(a1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange);
  if (v6)
  {
    v7 = *(a1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange + 8);
    swift_getKeyPath();

    sub_243B6FAFC();

    v6(*(a1 + v4));
    return sub_243B2BFCC(v6);
  }

  return result;
}

void (*sub_243B5C794(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_243B6FB1C();

  v4[7] = sub_243B5C128(v4);
  return sub_243B5C8CC;
}

void sub_243B5C8CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_243B6FB0C();

  free(v1);
}

uint64_t sub_243B5C9E8()
{
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v1 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText);
  v2 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText + 8);

  return v1;
}

uint64_t sub_243B5CAA4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText);
  v6 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText) == a1 && *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText + 8), (sub_243B70C6C() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }
}

id sub_243B5CC10()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel____lazy_storage___contactPickerDelegate;
  if (*(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel____lazy_storage___contactPickerDelegate))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel____lazy_storage___contactPickerDelegate);
  }

  else
  {
    swift_getKeyPath();
    v11 = v0;
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    v3 = v0;
    sub_243B6FAFC();

    v4 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
    v5 = type metadata accessor for ContactPickerDelegateAdapter();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC14CloudSharingUI28ContactPickerDelegateAdapter_addressingViewModel] = v4;
    v10.receiver = v6;
    v10.super_class = v5;

    v7 = objc_msgSendSuper2(&v10, sel_init);
    v8 = *(v3 + v1);
    *(v3 + v1) = v7;
    v2 = v7;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t CreateiCloudLinkViewModel.__allocating_init(fileURL:optionsGroups:dismissAction:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_243B6744C(a1, a2, a3, a4);

  return v11;
}

uint64_t CreateiCloudLinkViewModel.init(fileURL:optionsGroups:dismissAction:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_243B6744C(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_243B5CDE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_243B630F8();
  }

  return result;
}

uint64_t sub_243B5CE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_243B708FC();
  v4[4] = sub_243B708EC();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_243B5CEEC;

  return sub_243B651D8();
}

uint64_t sub_243B5CEEC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 48) = v4;
  *v4 = v3;
  v4[1] = sub_243B5D02C;
  v5 = *(v1 + 16);

  return sub_243B5E36C();
}

uint64_t sub_243B5D02C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B5D168, v5, v4);
}

uint64_t sub_243B5D168()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CreateiCloudLinkViewModel.__allocating_init(fileURL:optionsGroups:dismissAction:onPermissionChange:onAppear:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25[1] = a4;
  v26 = a8;
  v28 = a1;
  v27 = sub_243B6FA8C();
  v29 = *(v27 - 8);
  v15 = *(v29 + 64);
  v16 = MEMORY[0x28223BE20](v27);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, a1, v16);
  v20 = type metadata accessor for CreateiCloudLinkViewModel();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_243B6744C(v18, a2, a3, a4);
  swift_getKeyPath();
  v33 = v23;
  v34 = a5;
  v35 = a6;
  v36 = v23;

  sub_243B2E364(a5);
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();
  sub_243B2BFCC(a5);

  swift_getKeyPath();
  v30 = v23;
  v31 = a7;
  v32 = v26;
  v36 = v23;
  sub_243B6FAEC();
  sub_243B2BFCC(a7);

  sub_243B2BFCC(a5);

  (*(v29 + 8))(v28, v27);

  return v23;
}

void *sub_243B5D470(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel;
  v5 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v6 = *(v2 + 16);

  if (v6)
  {
    if (a1)
    {
      swift_getKeyPath();
      sub_243B6FAFC();

      v8 = *(v2 + v4);
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v9 = result;
      v10 = [result recipients];

      sub_243B2E534(0, &unk_27EDA2F70, 0x277CFBCA0);
      v11 = sub_243B7089C();

      v12 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_recipients);
      *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_recipients) = v11;
    }

    v13 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_recipients;
    v14 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_recipients);
    if (v14 >> 62)
    {
      if (v14 < 0)
      {
        v22 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_recipients);
      }

      result = sub_243B70C0C();
      v15 = result;
      if (result)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_7:
        v23 = v13;
        if (v15 < 1)
        {
          __break(1u);
          return result;
        }

        v16 = 0;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x245D49BC0](v16, v14);
          }

          else
          {
            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          ++v16;
          swift_getKeyPath();
          sub_243B6FAFC();

          v19 = *(v2 + v4);
          Strong = swift_unknownObjectWeakLoadStrong();
          [Strong addRecipient_];
        }

        while (v15 != v16);

        v13 = v23;
      }
    }

    v21 = *(v2 + v13);
    *(v2 + v13) = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_243B5D768()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v58 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v58 - v8;
  v9 = sub_243B6FB9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v58 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v63 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - v18;
  sub_243B6FB6C();
  swift_retain_n();
  v20 = sub_243B6FB8C();
  v21 = sub_243B709AC();
  v22 = os_log_type_enabled(v20, v21);
  p_class_meths = &OBJC_PROTOCOL___NSObject.class_meths;
  v59 = v5;
  if (v22)
  {
    v24 = swift_slowAlloc();
    v60 = v9;
    v25 = v24;
    *v24 = 67109632;
    swift_getKeyPath();
    v65 = v10;
    v67 = v1;
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAFC();

    v26 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
    swift_beginAccess();
    v25[1] = *(v1 + v26);

    *(v25 + 4) = 1024;
    swift_getKeyPath();
    v67 = v1;
    sub_243B6FAFC();

    *(v25 + 10) = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit);

    *(v25 + 7) = 1024;
    swift_getKeyPath();
    v67 = v1;
    v10 = v65;
    sub_243B6FAFC();
    p_class_meths = (&OBJC_PROTOCOL___NSObject + 32);

    v25[4] = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canInviteOthers);

    _os_log_impl(&dword_243B1E000, v20, v21, "Permissions: isPublic=%{BOOL}d canEdit=%{BOOL}d canInviteOthers=%{BOOL}d", v25, 0x14u);
    v27 = v25;
    v9 = v60;
    MEMORY[0x245D4A570](v27, -1, -1);
  }

  else
  {
  }

  v30 = *(v10 + 8);
  v29 = v10 + 8;
  v28 = v30;
  v30(v19, v9);
  swift_getKeyPath();
  v31 = p_class_meths[460];
  v67 = v1;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v32 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  if ((*(v1 + v32) & 1) == 0)
  {
    swift_getKeyPath();
    v66 = v1;
    sub_243B6FAFC();

    v33 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_243B6FC3C();

    v34 = *(v66 + 16);

    if (!v34)
    {
      v43 = v63;
      sub_243B6FB6C();
      v44 = sub_243B6FB8C();
      v45 = sub_243B709CC();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        MEMORY[0x245D4A570](v46, -1, -1);
      }

      v39 = v43;
      goto LABEL_20;
    }
  }

  swift_getKeyPath();
  v66 = v1;
  sub_243B6FAFC();

  if (*(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) == 1)
  {
    v35 = v64;
    sub_243B6FB6C();
    v36 = sub_243B6FB8C();
    v37 = sub_243B709AC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_243B1E000, v36, v37, "Share file action is already in progress. Bailing.", v38, 2u);
      MEMORY[0x245D4A570](v38, -1, -1);
    }

    v39 = v35;
LABEL_20:
    v28(v39, v9);
    return;
  }

  v65 = v29;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v58 - 2) = v1;
  *(&v58 - 8) = 1;
  v66 = v1;
  sub_243B6FAEC();

  swift_getKeyPath();
  v66 = v1;
  sub_243B6FAFC();

  v41 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus;
  v42 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus);
  if (v42 > 3)
  {
    if (v42 != 4)
    {
      if (v42 == 6)
      {
        sub_243B60EC0();
        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    v47 = v62;
    sub_243B7090C();
    v48 = sub_243B7092C();
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    sub_243B708FC();

    v49 = sub_243B708EC();
    v50 = swift_allocObject();
    v51 = MEMORY[0x277D85700];
    v50[2] = v49;
    v50[3] = v51;
    v50[4] = v1;
    sub_243B3EF48(0, 0, v47, &unk_243B75048, v50);

    return;
  }

  if (v42 == 2)
  {
    goto LABEL_21;
  }

  if (v42 == 3)
  {
    sub_243B5F1CC();
    return;
  }

LABEL_22:
  sub_243B6FB6C();

  v52 = sub_243B6FB8C();
  v53 = sub_243B709CC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    swift_getKeyPath();
    v60 = v9;
    v66 = v1;
    sub_243B6FAFC();
    v9 = v60;

    *(v54 + 4) = *(v1 + v41);

    _os_log_impl(&dword_243B1E000, v52, v53, "This item cannot be shared. shareItemStatus: %ld", v54, 0xCu);
    MEMORY[0x245D4A570](v54, -1, -1);
  }

  else
  {
  }

  v55 = v59;
  v28(v61, v9);
  v56 = sub_243B6FA8C();
  (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
  v57 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:0 userInfo:0];
  sub_243B6253C(v55, 0, v57);

  sub_243B2E620(v55, &qword_27EDA2F48, &unk_243B74F70);
}

uint64_t sub_243B5E124()
{
  v0[2] = sub_243B708FC();
  v0[3] = sub_243B708EC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_243B5E1D0;

  return sub_243B5F410();
}

uint64_t sub_243B5E1D0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B5E30C, v5, v4);
}

uint64_t sub_243B5E30C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243B5E36C()
{
  v1[19] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v3 = sub_243B6FB9C();
  v1[21] = v3;
  v4 = *(v3 - 8);
  v1[22] = v4;
  v5 = *(v4 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = sub_243B708FC();
  v1[28] = sub_243B708EC();
  v7 = sub_243B708DC();
  v1[29] = v7;
  v1[30] = v6;

  return MEMORY[0x2822009F8](sub_243B5E4C0, v7, v6);
}

uint64_t sub_243B5E4C0()
{
  v1 = v0[26];
  sub_243B6FB6C();
  v2 = sub_243B6FB8C();
  v3 = sub_243B709AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_243B1E000, v2, v3, "Fetching sharing status...", v4, 2u);
    MEMORY[0x245D4A570](v4, -1, -1);
  }

  v5 = v0[26];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[19];

  v9 = *(v7 + 8);
  v0[31] = v9;
  v9(v5, v6);
  v10 = objc_opt_self();
  v0[32] = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_fileURL;
  v11 = sub_243B6FA5C();
  v0[33] = v11;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_243B5E6B4;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F68, &qword_243B75000);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243B5EF2C;
  v0[13] = &block_descriptor_148;
  v0[14] = v12;
  [v10 sharingStatusForFileOrFolderURL:v11 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243B5E6B4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 272) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = sub_243B5ECD4;
  }

  else
  {
    v6 = sub_243B5E7E4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_243B5E7E4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);

  sub_243B6FB6C();
  v3 = sub_243B6FB8C();
  v4 = sub_243B709AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_243B1E000, v3, v4, "Fetched share status: %ld", v5, 0xCu);
    MEMORY[0x245D4A570](v5, -1, -1);
  }

  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v12 = *(v0 + 152);
  v11 = *(v0 + 160);

  v6(v8, v9);
  v13 = sub_243B7092C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);

  v14 = sub_243B708EC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  v15[5] = v2;
  sub_243B3EF48(0, 0, v11, &unk_243B75010, v15);

  if (v2 <= 6 && ((1 << v2) & 0x58) != 0)
  {
    v17 = *(v0 + 224);

    v19 = *(v0 + 200);
    v18 = *(v0 + 208);
    v21 = *(v0 + 184);
    v20 = *(v0 + 192);
    v22 = *(v0 + 160);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 192);
    sub_243B6FB6C();
    v26 = sub_243B6FB8C();
    v27 = sub_243B709DC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_243B1E000, v26, v27, "CreateiCloudLinkViewModel detected share with insufficient permissions for the create iCloud link flow. Copying the existing URL and exiting. This will look weird to the user. Please use the CopyiCloudLink flow for these types of files.", v28, 2u);
      MEMORY[0x245D4A570](v28, -1, -1);
    }

    v29 = *(v0 + 248);
    v30 = *(v0 + 192);
    v31 = *(v0 + 168);

    v29(v30, v31);
    v32 = swift_task_alloc();
    *(v0 + 280) = v32;
    *v32 = v0;
    v32[1] = sub_243B5EB1C;
    v33 = *(v0 + 152);

    return sub_243B61B3C();
  }
}

uint64_t sub_243B5EB1C()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_243B5EC3C, v4, v3);
}

uint64_t sub_243B5EC3C()
{
  v1 = v0[28];

  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];

  v7 = v0[1];

  return v7();
}

uint64_t sub_243B5ECD4()
{
  v33 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[28];
  v4 = v0[23];
  v5 = v0[19];

  swift_willThrow();

  sub_243B6FB6C();

  v6 = sub_243B6FB8C();
  v7 = sub_243B709AC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[34];
  if (v8)
  {
    v10 = v0[32];
    v11 = v0[22];
    v30 = v0[23];
    v31 = v0[31];
    v29 = v0[21];
    v12 = v0[19];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315138;
    sub_243B6FA8C();
    sub_243B683C8(&unk_27EDA2F50, MEMORY[0x277CC9260]);
    v15 = sub_243B70C5C();
    v17 = sub_243B40EA8(v15, v16, &v32);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_243B1E000, v6, v7, "Failed to fetch sharing status for file/folder (%s). We will end up creating a new share.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245D4A570](v14, -1, -1);
    MEMORY[0x245D4A570](v13, -1, -1);

    v31(v30, v29);
  }

  else
  {
    v18 = v0[31];
    v20 = v0[22];
    v19 = v0[23];
    v21 = v0[21];

    v18(v19, v21);
  }

  v23 = v0[25];
  v22 = v0[26];
  v25 = v0[23];
  v24 = v0[24];
  v26 = v0[20];

  v27 = v0[1];

  return v27();
}

uint64_t sub_243B5EF2C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F18, &qword_243B74EE0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_243B5EFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_243B708FC();
  v5[5] = sub_243B708EC();
  v7 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B5F090, v7, v6);
}

uint64_t sub_243B5F090()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  if (*(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus) != v2)
  {
    v5 = v0[3];
    v4 = v0[4];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v0[2] = v5;
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_243B5F1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  sub_243B708FC();
  v7[10] = sub_243B708EC();
  v9 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B68F08, v9, v8);
}

uint64_t sub_243B5F29C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    sub_243B6FA7C();
    v14 = sub_243B6FA8C();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_243B6FA8C();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  v16 = a3;
  v17 = a4;
  v13(v11, a3, a4);

  return sub_243B2E620(v11, &qword_27EDA2F48, &unk_243B74F70);
}

uint64_t sub_243B5F410()
{
  v1[27] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2828, &unk_243B738E0);
  v1[28] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v4 = sub_243B6FB9C();
  v1[31] = v4;
  v5 = *(v4 - 8);
  v1[32] = v5;
  v6 = *(v5 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  sub_243B708FC();
  v1[40] = sub_243B708EC();
  v8 = sub_243B708DC();
  v1[41] = v8;
  v1[42] = v7;

  return MEMORY[0x2822009F8](sub_243B5F594, v8, v7);
}

uint64_t sub_243B5F594()
{
  v1 = v0[39];
  sub_243B6FB6C();
  v2 = sub_243B6FB8C();
  v3 = sub_243B709AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_243B1E000, v2, v3, "Fetching existing share...", v4, 2u);
    MEMORY[0x245D4A570](v4, -1, -1);
  }

  v5 = v0[39];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[30];
  v9 = v0[27];

  v10 = *(v7 + 8);
  v0[43] = v10;
  v10(v5, v6);
  v11 = objc_opt_self();
  v12 = sub_243B6FA5C();
  v0[44] = v12;
  v0[2] = v0;
  v0[7] = v8;
  v0[3] = sub_243B5F784;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F60, &qword_243B74F80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243B5A89C;
  v0[13] = &block_descriptor_137;
  v0[14] = v13;
  [v11 existingShareForFileOrFolderURL:v12 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243B5F784()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 360) = v3;
  v4 = *(v1 + 336);
  v5 = *(v1 + 328);
  if (v3)
  {
    v6 = sub_243B5FE78;
  }

  else
  {
    v6 = sub_243B5F8B4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_243B5F8B4()
{
  v1 = v0[44];
  v2 = v0[40];
  v3 = v0[38];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];

  sub_243B304EC(v4, v5, &qword_27EDA2828, &unk_243B738E0);
  v7 = *(v5 + *(v6 + 48));
  v8 = sub_243B6FA8C();
  (*(*(v8 - 8) + 8))(v5, v8);

  sub_243B6FB6C();
  v9 = sub_243B6FB8C();
  v10 = sub_243B709AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_243B1E000, v9, v10, "Share exist for file/folder . Adding participants.", v11, 2u);
    MEMORY[0x245D4A570](v11, -1, -1);
  }

  v12 = v0[43];
  v13 = v0[38];
  v14 = v0[31];
  v15 = v0[32];
  v16 = v0[27];

  v12(v13, v14);
  v17 = [v7 publicPermission];
  swift_getKeyPath();
  v18 = v0[27];
  if (v17 >= 2)
  {
    v0[26] = v18;
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAFC();

    v19 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
    swift_beginAccess();
    if ((*(v18 + v19) & 1) == 0)
    {
      v20 = v0[37];
      sub_243B6FB6C();
      v21 = sub_243B6FB8C();
      v22 = sub_243B709CC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_243B1E000, v21, v22, "Changing permission from public to private. Needs to show an alert to the user.", v23, 2u);
        MEMORY[0x245D4A570](v23, -1, -1);
      }

      v24 = v0[43];
      v25 = v0[37];
      v26 = v0[31];
      v27 = v0[32];
      v28 = v0[27];

      v24(v25, v26);
      sub_243B6007C();
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v0[24] = v18;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v29 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  if (*(v18 + v29) == 1)
  {
    v30 = v0[36];
    sub_243B6FB6C();
    v31 = sub_243B6FB8C();
    v32 = sub_243B709AC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_243B1E000, v31, v32, "Changing permission from private to public. Calling shareFileOrFolderURL.", v33, 2u);
      MEMORY[0x245D4A570](v33, -1, -1);
    }

    v34 = v0[43];
    v35 = v0[36];
    goto LABEL_16;
  }

  v36 = v0[27];
  swift_getKeyPath();
  v0[25] = v36;
  sub_243B6FAFC();

  if (*(v18 + v29))
  {
LABEL_13:
    v37 = v0[34];
    sub_243B6FB6C();
    v31 = sub_243B6FB8C();
    v38 = sub_243B709AC();
    if (os_log_type_enabled(v31, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_243B1E000, v31, v38, "Existing and new permissions are public. Calling shareFileOrFolderURL.", v39, 2u);
      MEMORY[0x245D4A570](v39, -1, -1);
    }

    v34 = v0[43];
    v35 = v0[34];
LABEL_16:
    v40 = v0[31];
    v41 = v0[32];
    v42 = v0[27];

    v34(v35, v40);
    sub_243B5F1CC();
    goto LABEL_17;
  }

  v54 = v0[35];
  sub_243B6FB6C();
  v55 = sub_243B6FB8C();
  v56 = sub_243B709AC();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_243B1E000, v55, v56, "Existing and new permission both are private, Adding participants.", v57, 2u);
    MEMORY[0x245D4A570](v57, -1, -1);
  }

  v58 = v0[43];
  v59 = v0[35];
  v60 = v0[31];
  v61 = v0[32];
  v62 = v0[27];

  v58(v59, v60);
  sub_243B607EC(v7);
LABEL_17:

  v44 = v0[38];
  v43 = v0[39];
  v46 = v0[36];
  v45 = v0[37];
  v48 = v0[34];
  v47 = v0[35];
  v49 = v0[33];
  v51 = v0[29];
  v50 = v0[30];

  v52 = v0[1];

  return v52();
}

uint64_t sub_243B5FE78()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[40];
  v4 = v0[33];

  swift_willThrow();

  sub_243B6FB6C();
  v5 = v2;
  v6 = sub_243B6FB8C();
  v7 = sub_243B709AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[45];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_243B1E000, v6, v7, "Failed to fetch existing share with error: %@. Trying to create new one...", v9, 0xCu);
    sub_243B2E620(v10, &unk_27EDA1F70, &qword_243B724C0);
    MEMORY[0x245D4A570](v10, -1, -1);
    MEMORY[0x245D4A570](v9, -1, -1);
  }

  v13 = v0[45];
  v14 = v0[43];
  v16 = v0[32];
  v15 = v0[33];
  v17 = v0[31];
  v18 = v0[27];

  v14(v15, v17);
  sub_243B5F1CC();

  v20 = v0[38];
  v19 = v0[39];
  v22 = v0[36];
  v21 = v0[37];
  v24 = v0[34];
  v23 = v0[35];
  v25 = v0[33];
  v27 = v0[29];
  v26 = v0[30];

  v28 = v0[1];

  return v28();
}

uint64_t sub_243B6007C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v60 = &v56 - v2;
  v3 = type metadata accessor for AlertViewModelButton(0);
  v4 = (v3 - 8);
  v58 = *(v3 - 8);
  v59 = v58;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  sub_243B700CC();
  v10 = sub_243B703AC();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v4[8];
  sub_243B6FCAC();
  v18 = sub_243B6FCBC();
  v19 = *(*(v18 - 8) + 56);
  v19(&v9[v17], 0, 1, v18);
  sub_243B6FABC();
  v20 = &v9[v4[7]];
  *v20 = v10;
  *(v20 + 1) = v12;
  v20[16] = v14 & 1;
  *(v20 + 3) = v16;
  v21 = &v9[v4[9]];
  *v21 = sub_243B606B8;
  v21[1] = 0;
  sub_243B700CC();
  v22 = sub_243B703AC();
  v24 = v23;
  LOBYTE(v12) = v25;
  v27 = v26;
  v28 = v57;
  v19(&v57[v4[8]], 1, 1, v18);
  v29 = v61;

  sub_243B6FABC();
  v30 = v28 + v4[7];
  *v30 = v22;
  *(v30 + 8) = v24;
  *(v30 + 16) = v12 & 1;
  *(v30 + 24) = v27;
  v31 = (v28 + v4[9]);
  *v31 = sub_243B68788;
  v31[1] = v29;
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = objc_opt_self();
  v34 = [v33 bundleForClass_];
  v35 = sub_243B6F9FC();
  v56 = v36;

  v37 = v28;
  v38 = [v33 bundleForClass_];
  v39 = sub_243B6F9FC();
  v41 = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F08, &qword_243B723E0);
  v42 = *(v58 + 72);
  v43 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_243B71ED0;
  v45 = v44 + v43;
  sub_243B3EB64(v9, v45);
  sub_243B3EB64(v28, v45 + v42);
  v46 = v60;
  sub_243B6FABC();
  v47 = type metadata accessor for AlertViewModel(0);
  v48 = (v46 + v47[5]);
  v49 = v56;
  *v48 = v35;
  v48[1] = v49;
  v50 = (v46 + v47[6]);
  *v50 = v39;
  v50[1] = v41;
  *(v46 + v47[7]) = v44;
  (*(*(v47 - 1) + 56))(v46, 0, 1, v47);
  swift_getKeyPath();
  v51 = v61;
  v62 = v61;
  v63 = v46;
  v64 = v61;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();
  v52 = v51;

  sub_243B2E620(v46, &qword_27EDA1E00, &unk_243B73660);
  v53 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert;
  if (*(v52 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert) == 1)
  {
    sub_243B2E010(v37);
    result = sub_243B2E010(v9);
    *(v52 + v53) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v64 = v52;
    sub_243B6FAEC();

    sub_243B2E010(v37);
    return sub_243B2E010(v9);
  }

  return result;
}

uint64_t sub_243B606B8()
{
  v0 = sub_243B6FB9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v5 = sub_243B6FB8C();
  v6 = sub_243B709AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_243B1E000, v5, v6, "User cancelled the permission change alert. No action taken.", v7, 2u);
    MEMORY[0x245D4A570](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_243B607EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_243B6FB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v9 = sub_243B6FB8C();
  v10 = sub_243B709AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_243B1E000, v9, v10, "Adding participants to existing share...", v11, 2u);
    MEMORY[0x245D4A570](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = objc_opt_self();
  swift_getKeyPath();
  aBlock[0] = v2;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v13 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v14 = sub_243B7088C();

  v15 = sub_243B7088C();
  sub_243B64398();
  sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
  v16 = sub_243B7088C();

  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_243B68600;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243B5F29C;
  aBlock[3] = &block_descriptor_128;
  v18 = _Block_copy(aBlock);

  [v12 addParticipantsToShare:a1 containerSetupInfo:0 emailAddresses:v14 phoneNumbers:v15 optionsGroups:v16 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_243B60B4C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  v19 = sub_243B7092C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_243B2E06C(a1, v14, &qword_27EDA2F48, &unk_243B74F70);
  sub_243B708FC();

  v20 = a2;
  v21 = a3;
  v22 = sub_243B708EC();
  v23 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v22;
  v25[3] = v26;
  v25[4] = a4;
  sub_243B304EC(v14, v25 + v23, &qword_27EDA2F48, &unk_243B74F70);
  *(v25 + v24) = a2;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_243B3F238(0, 0, v18, v29, v25);
}

uint64_t sub_243B60D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  sub_243B708FC();
  v7[10] = sub_243B708EC();
  v9 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B60E14, v9, v8);
}

uint64_t sub_243B60E14()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_243B6253C(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_243B60EC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v61 = &v60 - v2;
  v3 = type metadata accessor for AlertViewModelButton(0);
  v60 = *(v3 - 1);
  v4 = *(v60 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v60 - v7;
  v9 = sub_243B6FB9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v14 = sub_243B6FB8C();
  v15 = sub_243B709CC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_243B1E000, v14, v15, "Unshared folder contains shared subitems. Asking user's permission to go ahead...", v16, 2u);
    MEMORY[0x245D4A570](v16, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  sub_243B700CC();
  v17 = sub_243B703AC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v3[6];
  sub_243B6FC8C();
  v25 = sub_243B6FCBC();
  v26 = *(*(v25 - 8) + 56);
  v26(&v8[v24], 0, 1, v25);
  v27 = v64;

  sub_243B6FABC();
  v28 = &v8[v3[5]];
  *v28 = v17;
  *(v28 + 1) = v19;
  v28[16] = v21 & 1;
  *(v28 + 3) = v23;
  v29 = v3[7];
  v63 = v8;
  v30 = &v8[v29];
  *v30 = sub_243B685F4;
  v30[1] = v27;
  sub_243B700CC();
  v31 = sub_243B703AC();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v3[6];
  v39 = v62;
  sub_243B6FCAC();
  v26((v39 + v38), 0, 1, v25);

  sub_243B6FABC();
  v40 = v39 + v3[5];
  *v40 = v31;
  *(v40 + 8) = v33;
  *(v40 + 16) = v35 & 1;
  *(v40 + 24) = v37;
  v41 = (v39 + v3[7]);
  v42 = v64;
  *v41 = sub_243B685FC;
  v41[1] = v42;
  if (qword_27EDA1DD0 != -1)
  {
    swift_once();
  }

  v44 = qword_27EDA5050;
  v43 = *algn_27EDA5058;
  v45 = qword_27EDA1DD8;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = qword_27EDA5060;
  v47 = *algn_27EDA5068;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F08, &qword_243B723E0);
  v48 = *(v60 + 72);
  v49 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_243B71ED0;
  sub_243B3EB64(v63, v50 + v49);
  sub_243B3EB64(v39, v50 + v49 + v48);

  v51 = v61;
  sub_243B6FABC();
  v52 = type metadata accessor for AlertViewModel(0);
  v53 = (v51 + v52[5]);
  *v53 = v44;
  v53[1] = v43;
  v54 = (v51 + v52[6]);
  *v54 = v46;
  v54[1] = v47;
  *(v51 + v52[7]) = v50;
  (*(*(v52 - 1) + 56))(v51, 0, 1, v52);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v56 = v64;
  v65 = v64;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();

  sub_243B2E620(v51, &qword_27EDA1E00, &unk_243B73660);
  v57 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert;
  if (*(v56 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert) == 1)
  {
    sub_243B2E010(v39);
    result = sub_243B2E010(v63);
    *(v56 + v57) = 1;
  }

  else
  {
    v59 = swift_getKeyPath();
    MEMORY[0x28223BE20](v59);
    v65 = v56;
    sub_243B6FAEC();

    sub_243B2E010(v39);
    return sub_243B2E010(v63);
  }

  return result;
}

uint64_t sub_243B615A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v14 - v2);
  v4 = sub_243B6FB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v9 = sub_243B6FB8C();
  v10 = sub_243B709AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_243B1E000, v9, v10, "User cancelled sharing. Cancelling flow.", v11, 2u);
    MEMORY[0x245D4A570](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = sub_243B6FA8C();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_243B6253C(v3, 0, 0);
  return sub_243B2E620(v3, &qword_27EDA2F48, &unk_243B74F70);
}

void sub_243B617D0(const char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v26 = a4;
  v8 = v4;
  v9 = sub_243B6FB9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v14 = sub_243B6FB8C();
  v15 = sub_243B709AC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_243B1E000, v14, v15, a1, v16, 2u);
    MEMORY[0x245D4A570](v16, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v17 = objc_opt_self();
  v18 = sub_243B6FA5C();
  swift_getKeyPath();
  aBlock[0] = v8;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v19 = *(v8 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v20 = sub_243B7088C();

  v21 = sub_243B7088C();
  sub_243B64398();
  sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
  v22 = sub_243B7088C();

  v23 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a2;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243B5F29C;
  aBlock[3] = a3;
  v24 = _Block_copy(aBlock);

  [v17 *v26];
  _Block_release(v24);
}

uint64_t sub_243B61B3C()
{
  v1[18] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2828, &unk_243B738E0);
  v1[20] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = sub_243B6FB9C();
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_243B708FC();
  v1[29] = sub_243B708EC();
  v9 = sub_243B708DC();
  v1[30] = v9;
  v1[31] = v8;

  return MEMORY[0x2822009F8](sub_243B61CD4, v9, v8);
}

uint64_t sub_243B61CD4()
{
  v18 = v0;
  v1 = v0[28];
  sub_243B6FB6C();
  v2 = sub_243B6FB8C();
  v3 = sub_243B709AC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[25];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_243B40EA8(0xD000000000000018, 0x8000000243B76A90, &v17);
    _os_log_impl(&dword_243B1E000, v2, v3, "%{public}s start.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245D4A570](v9, -1, -1);
    MEMORY[0x245D4A570](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[32] = v10;
  v11 = v0[22];
  v12 = v0[18];
  v13 = objc_opt_self();
  v14 = sub_243B6FA5C();
  v0[33] = v14;
  v0[2] = v0;
  v0[7] = v11;
  v0[3] = sub_243B61F1C;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F60, &qword_243B74F80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243B5A89C;
  v0[13] = &block_descriptor_106;
  v0[14] = v15;
  [v13 existingShareForFileOrFolderURL:v14 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243B61F1C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 272) = v3;
  v4 = *(v1 + 248);
  v5 = *(v1 + 240);
  if (v3)
  {
    v6 = sub_243B6235C;
  }

  else
  {
    v6 = sub_243B6204C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_243B6204C()
{
  v36 = v0;
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];

  sub_243B304EC(v4, v6, &qword_27EDA2828, &unk_243B738E0);
  v8 = *(v6 + *(v7 + 48));
  v9 = sub_243B6FA8C();
  v10 = *(v9 - 8);
  (*(v10 + 32))(v5, v6, v9);
  *(v5 + *(v7 + 48)) = v8;
  v11 = v8;

  sub_243B6FB6C();
  v12 = sub_243B6FB8C();
  v13 = sub_243B709AC();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[32];
  v16 = v0[27];
  v18 = v0[24];
  v17 = v0[25];
  if (v14)
  {
    v34 = v11;
    v19 = swift_slowAlloc();
    v33 = v15;
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_243B40EA8(0xD000000000000018, 0x8000000243B76A90, &v35);
    _os_log_impl(&dword_243B1E000, v12, v13, "%{public}s Fetched existing share.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x245D4A570](v20, -1, -1);
    v21 = v19;
    v11 = v34;
    MEMORY[0x245D4A570](v21, -1, -1);

    v33(v16, v18);
  }

  else
  {

    v15(v16, v18);
  }

  v22 = v0[23];
  v23 = v0[19];
  (*(v10 + 16))(v23, v22, v9);
  (*(v10 + 56))(v23, 0, 1, v9);
  sub_243B6253C(v23, v11, 0);

  sub_243B2E620(v23, &qword_27EDA2F48, &unk_243B74F70);
  sub_243B2E620(v22, &qword_27EDA2828, &unk_243B738E0);
  v25 = v0[27];
  v24 = v0[28];
  v26 = v0[26];
  v28 = v0[22];
  v27 = v0[23];
  v29 = v0[21];
  v30 = v0[19];

  v31 = v0[1];

  return v31();
}

uint64_t sub_243B6235C()
{
  v26 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[29];
  v4 = v0[26];

  swift_willThrow();

  sub_243B6FB6C();
  v5 = sub_243B6FB8C();
  v6 = sub_243B709AC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_243B40EA8(0xD000000000000018, 0x8000000243B76A90, &v25);
    _os_log_impl(&dword_243B1E000, v5, v6, "%{public}s Unable to fetch existing share. Exiting.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D4A570](v13, -1, -1);
    MEMORY[0x245D4A570](v12, -1, -1);
  }

  v8(v9, v11);
  v14 = v0[34];
  v15 = v0[18];
  sub_243B65CB8();

  v17 = v0[27];
  v16 = v0[28];
  v18 = v0[26];
  v20 = v0[22];
  v19 = v0[23];
  v21 = v0[21];
  v22 = v0[19];

  v23 = v0[1];

  return v23();
}

void sub_243B6253C(unsigned int (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, void *a3)
{
  v4 = v3;
  v101 = a1;
  v102 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v92 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v92 - v14;
  v105 = sub_243B6FA8C();
  v16 = *(v105 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v105);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v92 - v21;
  v23 = sub_243B6FB9C();
  v103 = *(v23 - 8);
  v104 = v23;
  v24 = *(v103 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v28);
  v31 = &v92 - v30;
  if (a3)
  {
    v32 = a3;
    sub_243B6FB6C();
    v33 = a3;

    v34 = sub_243B6FB8C();
    v35 = sub_243B709CC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v106 = v38;
      *v36 = 136315394;
      sub_243B683C8(&unk_27EDA2F50, MEMORY[0x277CC9260]);
      v39 = sub_243B70C5C();
      v41 = sub_243B40EA8(v39, v40, &v106);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2112;
      v42 = a3;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v43;
      *v37 = v43;
      _os_log_impl(&dword_243B1E000, v34, v35, "Failed to share file/folder (%s) with error: %@", v36, 0x16u);
      sub_243B2E620(v37, &unk_27EDA1F70, &qword_243B724C0);
      MEMORY[0x245D4A570](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x245D4A570](v38, -1, -1);
      MEMORY[0x245D4A570](v36, -1, -1);
    }

    (*(v103 + 8))(v31, v104);
    sub_243B65CB8();

    return;
  }

  v44 = v102;
  v97 = v10;
  v98 = v13;
  v99 = v22;
  v100 = v16;
  if (v102)
  {
    v45 = v29;
    sub_243B2E06C(v101, v15, &qword_27EDA2F48, &unk_243B74F70);
    v46 = v100;
    v48 = v100 + 48;
    v47 = *(v100 + 48);
    if (v47(v15, 1, v105) != 1)
    {
      v96 = v48;
      v101 = v47;
      v60 = v99;
      v61 = v105;
      (*(v46 + 32))(v99, v15, v105);
      v62 = v44;
      sub_243B6FB6C();
      (*(v46 + 16))(v20, v60, v61);

      v63 = v62;
      v64 = sub_243B6FB8C();
      v65 = sub_243B709AC();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v106 = v102;
        *v66 = 136315650;
        sub_243B683C8(&unk_27EDA2F50, MEMORY[0x277CC9260]);
        v67 = v63;
        v94 = v65;
        v68 = v105;
        v69 = sub_243B70C5C();
        v71 = sub_243B40EA8(v69, v70, &v106);

        *(v66 + 4) = v71;
        *(v66 + 12) = 2112;
        v72 = [v63 recordID];
        *(v66 + 14) = v72;
        v95 = v45;
        v73 = v93;
        *v93 = v72;
        *(v66 + 22) = 2080;
        v74 = sub_243B70C5C();
        v76 = v75;
        v77 = *(v100 + 8);
        v77(v20, v68);
        v78 = sub_243B40EA8(v74, v76, &v106);
        v63 = v67;
        v46 = v100;

        *(v66 + 24) = v78;
        _os_log_impl(&dword_243B1E000, v64, v94, ">>> Shared file/folder (%s) with CKShare ID: %@, url: %s!)", v66, 0x20u);
        sub_243B2E620(v73, &unk_27EDA1F70, &qword_243B724C0);
        MEMORY[0x245D4A570](v73, -1, -1);
        v79 = v102;
        swift_arrayDestroy();
        MEMORY[0x245D4A570](v79, -1, -1);
        MEMORY[0x245D4A570](v66, -1, -1);

        (*(v103 + 8))(v95, v104);
      }

      else
      {

        v77 = *(v46 + 8);
        v77(v20, v105);
        (*(v103 + 8))(v45, v104);
      }

      v80 = [v63 URL];
      v82 = v97;
      v81 = v98;
      if (v80)
      {
        v83 = v80;
        sub_243B6FA7C();

        v84 = 0;
      }

      else
      {
        v84 = 1;
      }

      v85 = v105;
      (*(v46 + 56))(v81, v84, 1, v105);
      v86 = [objc_opt_self() generalPasteboard];
      sub_243B2E06C(v81, v82, &qword_27EDA2F48, &unk_243B74F70);
      if (v101(v82, 1, v85) == 1)
      {
        v87 = 0;
      }

      else
      {
        v87 = sub_243B6FA5C();
        v77(v82, v105);
      }

      [v86 setURL_];

      v88 = sub_243B2E620(v81, &qword_27EDA2F48, &unk_243B74F70);
      if (*(v4 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) == 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v92 - 2) = v4;
        *(&v92 - 8) = 0;
        v106 = v4;
        sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
        sub_243B6FAEC();
      }

      else
      {
        *(v4 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) = 0;
      }

      v90 = v99;
      v91 = *(v4 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction + 8);
      (*(v4 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction))(v88);

      v77(v90, v105);
      return;
    }

    sub_243B2E620(v15, &qword_27EDA2F48, &unk_243B74F70);
  }

  sub_243B6FB6C();
  v49 = v4;

  v50 = sub_243B6FB8C();
  v51 = sub_243B709CC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v106 = v53;
    *v52 = 136315138;
    sub_243B683C8(&unk_27EDA2F50, MEMORY[0x277CC9260]);
    v54 = sub_243B70C5C();
    v56 = sub_243B40EA8(v54, v55, &v106);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_243B1E000, v50, v51, "Failed to share file/folder (%s). No error or CKShare returned.", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x245D4A570](v53, -1, -1);
    MEMORY[0x245D4A570](v52, -1, -1);
  }

  v57 = (*(v103 + 8))(v27, v104);
  if (*(v49 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) == 1)
  {
    v58 = swift_getKeyPath();
    MEMORY[0x28223BE20](v58);
    *(&v92 - 2) = v49;
    *(&v92 - 8) = 0;
    v106 = v49;
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  else
  {
    *(v49 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) = 0;
  }

  v59 = *(v49 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction + 8);
  (*(v49 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction))(v57);
}

void sub_243B630F8()
{
  v1 = v0;
  v2 = sub_243B6FB9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v7 = sub_243B6FB8C();
  v8 = sub_243B709BC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_243B1E000, v7, v8, "Show contact picker", v9, 2u);
    MEMORY[0x245D4A570](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = [objc_allocWithZone(MEMORY[0x277CBDC18]) initWithNibName:0 bundle:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1FA0, &qword_243B74F40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_243B71ED0;
  v12 = *MEMORY[0x277CBD098];
  *(v11 + 32) = sub_243B7082C();
  *(v11 + 40) = v13;
  v14 = *MEMORY[0x277CBCFC0];
  *(v11 + 48) = sub_243B7082C();
  *(v11 + 56) = v15;
  v16 = sub_243B7088C();

  [v10 setDisplayedPropertyKeys_];

  [v10 setDelegate_];
  swift_unknownObjectRelease();
  [v10 setAllowsEditing_];
  sub_243B2E534(0, &qword_27EDA2F38, 0x277CCAC30);
  v17 = sub_243B7099C();
  [v10 setPredicateForEnablingContact_];

  v18 = sub_243B7099C();
  [v10 setPredicateForSelectionOfContact_];

  [v10 setModalPresentationStyle_];
  swift_getKeyPath();
  v30 = v1;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v19 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel;
  v20 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];
  }

  swift_getKeyPath();
  v30 = v1;
  sub_243B6FAFC();

  v23 = *(v1 + v19);
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 sheetPresentationController];

    if (v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F20, &qword_243B74508);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_243B74C80;
      *(v27 + 32) = [objc_opt_self() largeDetent];
      sub_243B2E534(0, &qword_27EDA2F40, 0x277D75A28);
      v28 = sub_243B7088C();

      [v26 setDetents_];
    }
  }
}

uint64_t sub_243B635A0(unint64_t a1)
{
  v2 = v1;
  v78 = sub_243B6FB9C();
  v80 = *(v78 - 8);
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v73 - v7;
  v84 = a1;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v86 = result;
  while (result)
  {
    sub_243B6FB6C();
    v10 = v84;

    v11 = sub_243B6FB8C();
    v12 = sub_243B709AC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v100 = v14;
      *v13 = 136315138;
      v15 = sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
      v16 = MEMORY[0x245D498F0](v10, v15);
      v18 = sub_243B40EA8(v16, v17, &v100);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_243B1E000, v11, v12, "Options groups received: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x245D4A570](v14, -1, -1);
      MEMORY[0x245D4A570](v13, -1, -1);
    }

    v19 = *(v80 + 8);
    v80 += 8;
    v76 = v19;
    v20 = (v19)(v8, v78);
    v21 = 0;
    v91 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canInviteOthers;
    v22 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel___observationRegistrar;
    v87 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit;
    v23 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
    v93 = v2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange;
    v85 = v10 & 0xC000000000000001;
    v83 = v10 & 0xFFFFFFFFFFFFFF8;
    v82 = v10 + 32;
    v95 = *MEMORY[0x277CBC0B0];
    v92 = *MEMORY[0x277CBC0A8];
    v88 = *MEMORY[0x277CBC0E0];
    v81 = *MEMORY[0x277CBC0F8];
    v79 = *MEMORY[0x277CBC0D8];
    v20.n128_u64[0] = 136315138;
    v75 = v20;
    v98 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel___observationRegistrar;
    while (1)
    {
      if (v85)
      {
        v24 = MEMORY[0x245D49BC0](v21, v84);
      }

      else
      {
        if (v21 >= *(v83 + 16))
        {
          goto LABEL_71;
        }

        v24 = *(v82 + 8 * v21);
      }

      v25 = v24;
      v26 = __OFADD__(v21, 1);
      v27 = v21 + 1;
      if (v26)
      {
        __break(1u);
        goto LABEL_70;
      }

      v28 = [v24 options];
      sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
      v29 = sub_243B7089C();

      v90 = v27;
      if (v29 >> 62)
      {
        break;
      }

      v8 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v89 = v25;
      if (v8)
      {
        goto LABEL_14;
      }

LABEL_6:

      v21 = v90;
      if (v90 == v86)
      {
        return result;
      }
    }

    v8 = sub_243B70C0C();
    v89 = v25;
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_14:
    if (v8 >= 1)
    {
      v96 = v29 & 0xC000000000000001;
      swift_beginAccess();
      v30 = 0;
      v94 = v29;
      v97 = v8;
      while (1)
      {
        if (v96)
        {
          v32 = MEMORY[0x245D49BC0](v30, v29);
        }

        else
        {
          v32 = *(v29 + 8 * v30 + 32);
        }

        v33 = v32;
        v34 = [v33 identifier];
        v35 = sub_243B7082C();
        v37 = v36;

        if (sub_243B7082C() == v35 && v38 == v37)
        {

LABEL_28:

          v41 = [v33 isSelected];

          v42 = v41 ^ 1;
          if (v42 == *(v2 + v23))
          {
            *(v2 + v23) = v42;
            swift_getKeyPath();
            v99 = v2;
            sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
            v8 = v2 + v22;
            sub_243B6FAFC();

            v43 = *v93;
            if (*v93)
            {
              v44 = *(v93 + 1);
              swift_getKeyPath();
              v99 = v2;

              sub_243B6FAFC();
              v29 = v94;

              v8 = v44;
              v43(*(v2 + v23));

              v22 = v98;
              sub_243B2BFCC(v43);
            }

            else
            {
            }
          }

          else
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v73 - 2) = v2;
            *(&v73 - 8) = v42;
            v99 = v2;
            sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
            v8 = v2 + v22;
            v29 = v94;
            sub_243B6FAEC();
          }

          goto LABEL_17;
        }

        v40 = sub_243B70C6C();

        if (v40)
        {
          v22 = v98;
          goto LABEL_28;
        }

        if (sub_243B7082C() == v35 && v45 == v37)
        {
          break;
        }

        v46 = sub_243B70C6C();

        v47 = v91;
        if (v46)
        {
          goto LABEL_36;
        }

        if (sub_243B7082C() == v35 && v51 == v37)
        {

LABEL_46:
          v53 = v87;

          v8 = [v33 isSelected];

          v22 = v98;
          if (v8 == *(v2 + v53))
          {

            *(v2 + v53) = v8;
            goto LABEL_48;
          }

          goto LABEL_37;
        }

        v52 = sub_243B70C6C();

        if (v52)
        {
          goto LABEL_46;
        }

        if (sub_243B7082C() == v35 && v54 == v37)
        {
        }

        else
        {
          v55 = sub_243B70C6C();

          if ((v55 & 1) == 0)
          {
            if (sub_243B7082C() == v35 && v58 == v37)
            {
            }

            else
            {
              v59 = sub_243B70C6C();

              if ((v59 & 1) == 0)
              {

                v61 = v77;
                sub_243B6FB6C();
                v62 = v33;
                v8 = sub_243B6FB8C();
                v63 = sub_243B709BC();

                if (os_log_type_enabled(v8, v63))
                {
                  v64 = swift_slowAlloc();
                  v73 = swift_slowAlloc();
                  v99 = v73;
                  *v64 = v75.n128_u32[0];
                  v65 = [v62 identifier];
                  v74 = v62;
                  v66 = v65;
                  v67 = sub_243B7082C();
                  v69 = v68;

                  v70 = sub_243B40EA8(v67, v69, &v99);

                  *(v64 + 4) = v70;
                  _os_log_impl(&dword_243B1E000, v8, v63, "Invalid option ID: %s", v64, 0xCu);
                  v71 = v73;
                  __swift_destroy_boxed_opaque_existential_0(v73);
                  MEMORY[0x245D4A570](v71, -1, -1);
                  MEMORY[0x245D4A570](v64, -1, -1);

                  v72 = v77;
                }

                else
                {

                  v72 = v61;
                }

                v76(v72, v78);
                v22 = v98;
                goto LABEL_48;
              }
            }

            v8 = [v33 isSelected];

            if (v8 == *(v2 + v47))
            {

              *(v2 + v47) = v8;
              v22 = v98;
              goto LABEL_48;
            }

            v60 = swift_getKeyPath();
            MEMORY[0x28223BE20](v60);
            *(&v73 - 2) = v2;
            *(&v73 - 8) = v8;
            v99 = v2;
            sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
            v22 = v98;
            goto LABEL_38;
          }
        }

        v56 = [v33 isSelected];

        v8 = v56 ^ 1;
        v57 = v87;
        v22 = v98;
        if (v8 == *(v2 + v87))
        {

          *(v2 + v57) = v8;
          goto LABEL_48;
        }

LABEL_37:
        v48 = swift_getKeyPath();
        MEMORY[0x28223BE20](v48);
        *(&v73 - 2) = v2;
        *(&v73 - 8) = v8;
        v99 = v2;
        sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
LABEL_38:
        v8 = v2 + v22;
        sub_243B6FAEC();

LABEL_48:
        v29 = v94;
LABEL_17:
        if (v97 == ++v30)
        {
          goto LABEL_6;
        }
      }

LABEL_36:

      LODWORD(v8) = [v33 isSelected];

      v22 = v98;
      if (v8 == *(v2 + v23))
      {
        *(v2 + v23) = v8;
        swift_getKeyPath();
        v99 = v2;
        sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
        v8 = v2 + v22;
        sub_243B6FAFC();

        v49 = *v93;
        if (*v93)
        {
          v50 = *(v93 + 1);
          swift_getKeyPath();
          v99 = v2;

          sub_243B6FAFC();
          v22 = v98;

          v8 = v50;
          v49(*(v2 + v23));

          sub_243B2BFCC(v49);
        }

        else
        {
        }

        goto LABEL_48;
      }

      goto LABEL_37;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    result = sub_243B70C0C();
    v86 = result;
  }

  return result;
}

uint64_t sub_243B64398()
{
  v1 = v0;
  v2 = sub_243B6FB9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v113 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v106 - v7;
  v121 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel___observationRegistrar;
  v120 = v0;
  v10 = sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v11 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  v12 = v11;
  v13 = *(v1 + v11);
  p_class_meths = &OBJC_PROTOCOL___NSObject.class_meths;
  v118 = v9;
  *&v117 = v10;
  v114 = v3;
  if (v13)
  {
    goto LABEL_2;
  }

  swift_getKeyPath();
  v119 = v1;
  sub_243B6FAFC();

  if ((*(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) & 1) == 0)
  {
    swift_getKeyPath();
    v119 = v1;
    sub_243B6FAFC();

    if (*(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canInviteOthers) == 1)
    {
LABEL_2:
      sub_243B6FB6C();
      swift_retain_n();
      v15 = sub_243B6FB8C();
      v16 = sub_243B709AC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109376;
        swift_getKeyPath();
        v119 = v1;
        sub_243B6FAFC();

        *(v17 + 4) = *(v1 + v11);

        *(v17 + 8) = 1024;
        swift_getKeyPath();
        v119 = v1;
        sub_243B6FAFC();

        *(v17 + 10) = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit);

        v18 = v17;
        p_class_meths = (&OBJC_PROTOCOL___NSObject + 32);
        MEMORY[0x245D4A570](v18, -1, -1);
      }

      else
      {
      }

      (*(v114 + 8))(v8, v2);
      v19 = p_class_meths[474];
      if (*(&v19->entrysize + v1))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v106 - 2) = v1;
        *(&v106 - 8) = 0;
        v119 = v1;
        sub_243B6FAEC();
      }

      else
      {
        *(&v19->entrysize + v1) = 0;
      }
    }
  }

  v112 = v2;
  v21 = *MEMORY[0x277CBC0A8];
  swift_getKeyPath();
  v119 = v1;
  v22 = v21;
  sub_243B6FAFC();

  v23 = *(v1 + v11);
  v24 = objc_allocWithZone(MEMORY[0x277CDC6C8]);
  v25 = sub_243B7080C();
  v109 = v22;
  v26 = [v24 initWithTitle:v25 identifier:v22 selected:v23];

  v27 = *MEMORY[0x277CBC0B0];
  swift_getKeyPath();
  v119 = v1;
  v28 = v27;
  sub_243B6FAFC();

  LOBYTE(v22) = *(v1 + v12);
  v29 = objc_allocWithZone(MEMORY[0x277CDC6C8]);
  v30 = sub_243B7080C();
  v31 = [v29 initWithTitle:v30 identifier:v28 selected:(v22 & 1) == 0];

  v32 = *MEMORY[0x277CBC100];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F20, &qword_243B74508);
  v33 = swift_allocObject();
  v108 = xmmword_243B74C90;
  *(v33 + 16) = xmmword_243B74C90;
  *(v33 + 32) = v26;
  *(v33 + 40) = v31;
  v34 = objc_allocWithZone(MEMORY[0x277CDC6D8]);
  v35 = sub_243B2E534(0, &qword_27EDA2F28, 0x277CDC6A0);
  v36 = v32;
  v111 = v26;
  v110 = v31;
  v115 = v35;
  v37 = sub_243B7088C();

  v38 = [v34 initWithIdentifier:v36 options:v37];

  swift_getKeyPath();
  v119 = v1;
  sub_243B6FAFC();

  *(v1 + v12);
  sub_243B7082C();
  v39 = sub_243B7080C();

  [v38 setSelectedOptionIdentifier_];

  v40 = v38;
  MEMORY[0x245D498C0]();
  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v102 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_243B708BC();
  }

  v109 = v40;
  sub_243B708CC();
  v41 = *MEMORY[0x277CBC0F8];
  swift_getKeyPath();
  v119 = v1;
  v42 = v41;
  sub_243B6FAFC();

  v43 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit;
  v44 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit);
  v45 = objc_allocWithZone(MEMORY[0x277CDC6C8]);
  v46 = sub_243B7080C();
  v47 = [v45 initWithTitle:v46 identifier:v42 selected:(v44 & 1) == 0];

  v48 = *MEMORY[0x277CBC0E0];
  swift_getKeyPath();
  v119 = v1;
  v49 = v48;
  sub_243B6FAFC();

  v50 = *(v1 + v43);
  v51 = objc_allocWithZone(MEMORY[0x277CDC6C8]);
  v52 = sub_243B7080C();
  v53 = [v51 initWithTitle:v52 identifier:v49 selected:v50];

  v54 = *MEMORY[0x277CBC0E8];
  v55 = swift_allocObject();
  *(v55 + 16) = v108;
  *(v55 + 32) = v47;
  *(v55 + 40) = v53;
  v56 = objc_allocWithZone(MEMORY[0x277CDC6D8]);
  v57 = v54;
  *&v108 = v47;
  v107 = v53;
  v58 = sub_243B7088C();

  v59 = [v56 initWithIdentifier:v57 options:v58];

  swift_getKeyPath();
  v119 = v1;
  sub_243B6FAFC();

  *(v1 + v43);
  sub_243B7082C();
  v60 = sub_243B7080C();

  [v59 setSelectedOptionIdentifier_];

  v61 = v59;
  MEMORY[0x245D498C0]();
  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v103 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_243B708BC();
  }

  v106 = v61;
  sub_243B708CC();
  v62 = *MEMORY[0x277CBC0D8];
  swift_getKeyPath();
  v119 = v1;
  v63 = v62;
  sub_243B6FAFC();

  v64 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canInviteOthers);
  v65 = objc_allocWithZone(MEMORY[0x277CDC6C8]);
  v66 = sub_243B7080C();
  v67 = [v65 initWithTitle:v66 identifier:v63 selected:v64];

  v68 = *MEMORY[0x277CBC0C8];
  v69 = swift_allocObject();
  v117 = xmmword_243B74C80;
  *(v69 + 16) = xmmword_243B74C80;
  *(v69 + 32) = v67;
  v70 = objc_allocWithZone(MEMORY[0x277CDC6D0]);
  v71 = v68;
  v118 = v67;
  v72 = sub_243B7088C();

  v73 = [v70 initWithIdentifier:v71 options:v72];

  v74 = v73;
  MEMORY[0x245D498C0]();
  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v104 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_243B708BC();
  }

  sub_243B708CC();
  v75 = *MEMORY[0x277CBC0C0];
  v76 = objc_allocWithZone(MEMORY[0x277CDC6C8]);
  v77 = v75;
  v78 = sub_243B7080C();
  v79 = [v76 &selRef:v78 viewControllerForContact:{v77, 1} + 2];

  v80 = *MEMORY[0x277CBC0B8];
  v81 = swift_allocObject();
  *(v81 + 16) = v117;
  *(v81 + 32) = v79;
  v82 = objc_allocWithZone(MEMORY[0x277CDC6D0]);
  v83 = v80;
  v84 = v79;
  v85 = sub_243B7088C();

  v86 = [v82 initWithIdentifier:v83 options:v85];

  v87 = v86;
  MEMORY[0x245D498C0]();
  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v105 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_243B708BC();
  }

  sub_243B708CC();
  v88 = v121;
  v89 = v113;
  sub_243B6FB6C();
  v90 = sub_243B6FB8C();
  v91 = sub_243B709BC();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v119 = v93;
    *v92 = 136315138;
    v94 = v84;
    v95 = sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);

    v97 = MEMORY[0x245D498F0](v96, v95);
    v99 = v98;

    v100 = sub_243B40EA8(v97, v99, &v119);

    *(v92 + 4) = v100;
    _os_log_impl(&dword_243B1E000, v90, v91, "optionsGroups: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x245D4A570](v93, -1, -1);
    MEMORY[0x245D4A570](v92, -1, -1);

    (*(v114 + 8))(v113, v112);
  }

  else
  {

    (*(v114 + 8))(v89, v112);
  }

  return v88;
}

uint64_t sub_243B651D8()
{
  v1[22] = v0;
  v2 = sub_243B6FB9C();
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = sub_243B708FC();
  v1[28] = sub_243B708EC();
  v7 = sub_243B708DC();
  v1[29] = v7;
  v1[30] = v6;

  return MEMORY[0x2822009F8](sub_243B65308, v7, v6);
}

uint64_t sub_243B65308()
{
  v1 = v0[22];
  v2 = objc_opt_self();
  v3 = sub_243B6FA5C();
  v0[31] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_243B6545C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F10, &qword_243B74EC8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243B65AB0;
  v0[13] = &block_descriptor_3;
  v0[14] = v4;
  [v2 userNameAndEmail:v3 containerSetupInfo:0 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243B6545C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = sub_243B65904;
  }

  else
  {
    v6 = sub_243B6558C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_243B6558C()
{
  v1 = v0[31];
  v2 = v0[28];

  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[20];
  v5 = v0[21];

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    type metadata accessor for CreateiCloudLinkViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_243B6F9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2EF0, &qword_243B744F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_243B71ED0;
    v11 = MEMORY[0x277D837D0];
    *(v10 + 56) = MEMORY[0x277D837D0];
    v12 = sub_243B4E57C();
    *(v10 + 32) = v4;
    *(v10 + 40) = v3;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = v6;
    *(v10 + 80) = v5;
  }

  else
  {

    type metadata accessor for CreateiCloudLinkViewModel();
    v13 = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_243B6F9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2EF0, &qword_243B744F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_243B71EC0;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_243B4E57C();
    *(v15 + 32) = v4;
    *(v15 + 40) = v3;
  }

  v16 = sub_243B7081C();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = v0[26];
    v21 = v0[27];
    v22 = v0[22];
    v23 = sub_243B7092C();
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);

    v24 = sub_243B708EC();
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v22;
    v25[5] = v16;
    v25[6] = v18;
    sub_243B3EF48(0, 0, v20, &unk_243B74ED8, v25);
  }

  else
  {
  }

  v28 = v0[25];
  v27 = v0[26];

  v29 = v0[1];

  return v29();
}

uint64_t sub_243B65904()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[28];
  v4 = v0[25];

  swift_willThrow();

  sub_243B6FB6C();
  v5 = v1;
  v6 = sub_243B6FB8C();
  v7 = sub_243B709CC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[32];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_243B1E000, v6, v7, "Failed to fetch user info: %@", v10, 0xCu);
    sub_243B2E620(v11, &unk_27EDA1F70, &qword_243B724C0);
    MEMORY[0x245D4A570](v11, -1, -1);
    MEMORY[0x245D4A570](v10, -1, -1);
  }

  else
  {
  }

  (*(v0[24] + 8))(v0[25], v0[23]);

  v15 = v0[25];
  v14 = v0[26];

  v16 = v0[1];

  return v16();
}

uint64_t sub_243B65AB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F18, &qword_243B74EE0);
    v6 = swift_allocError();
    *v7 = a4;
    v8 = a4;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = sub_243B7082C();
    v11 = v10;
    v12 = sub_243B7082C();
    v13 = *(*(v5 + 64) + 40);
    *v13 = v9;
    v13[1] = v11;
    v13[2] = v12;
    v13[3] = v14;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_243B65B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_243B708FC();
  v6[5] = sub_243B708EC();
  v8 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B65C38, v8, v7);
}

uint64_t sub_243B65C38()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_243B5CAA4(v3, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_243B65CB8()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v52 = sub_243B6F9FC();
  v53 = v3;

  v4 = [v1 bundleForClass_];
  v5 = sub_243B6F9FC();
  v7 = v6;

  v8 = sub_243B6FA3C();
  v9 = sub_243B66E94(v8);

  v10 = v9;
  v11 = [v9 domain];
  v12 = sub_243B7082C();
  v14 = v13;

  v15 = *MEMORY[0x277CBBF50];
  if (v12 == sub_243B7082C() && v14 == v16)
  {

    goto LABEL_5;
  }

  v17 = sub_243B70C6C();

  if ((v17 & 1) == 0)
  {
    v29 = [v10 domain];
    v30 = sub_243B7082C();
    v32 = v31;

    v33 = *MEMORY[0x277CCA050];
    if (v30 == sub_243B7082C() && v32 == v34)
    {
    }

    else
    {
      v38 = sub_243B70C6C();

      if ((v38 & 1) == 0)
      {
        v18 = v10;
        goto LABEL_24;
      }
    }

    v39 = [v1 bundleForClass_];
    sub_243B6F9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2EF0, &qword_243B744F0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_243B71EC0;
    v18 = v10;
    v41 = [v10 localizedDescription];
    v42 = sub_243B7082C();
    v44 = v43;

    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 64) = sub_243B4E57C();
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    v5 = sub_243B7081C();
    v7 = v45;

LABEL_24:
    v20 = v52;
    v21 = v53;
    goto LABEL_25;
  }

LABEL_5:
  v18 = v10;
  v19 = [v10 code];
  if (v19 > 28)
  {
    v21 = v53;
    v20 = v52;
    switch(v19)
    {
      case 29:

        v46 = [v1 bundleForClass_];
        v26 = sub_243B6F9FC();
        v21 = v47;

        v28 = [v1 bundleForClass_];
        break;
      case 30:

        v48 = [v1 bundleForClass_];
        v26 = sub_243B6F9FC();
        v21 = v49;

        v28 = [v1 bundleForClass_];
        break;
      case 32:

        v25 = [v1 bundleForClass_];
        v26 = sub_243B6F9FC();
        v21 = v27;

        v28 = [v1 bundleForClass_];
        break;
      default:
        goto LABEL_25;
    }

    v20 = v26;
    v5 = sub_243B6F9FC();
    v7 = v50;
  }

  else
  {
    v20 = v52;
    v21 = v53;
    if ((v19 - 3) < 2)
    {

      v22 = [v1 bundleForClass_];
      v20 = sub_243B6F9FC();
      v21 = v23;

      v24 = [v1 bundleForClass_];
LABEL_17:
      v5 = sub_243B6F9FC();
      v7 = v37;

      goto LABEL_25;
    }

    if (v19 == 14)
    {

      v35 = [v1 bundleForClass_];
      v20 = sub_243B6F9FC();
      v21 = v36;

      v24 = [v1 bundleForClass_];
      goto LABEL_17;
    }
  }

LABEL_25:
  sub_243B665A8(v20, v21, v5, v7);
}

uint64_t sub_243B665A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a2;
  v42 = a4;
  v43 = a1;
  v44 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for AlertViewModelButton(0);
  v12 = (v10 - 8);
  v40 = *(v10 - 8);
  v11 = v40;
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B700CC();
  v16 = sub_243B703AC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v12[8];
  sub_243B6FCAC();
  v24 = sub_243B6FCBC();
  (*(*(v24 - 8) + 56))(&v15[v23], 0, 1, v24);

  sub_243B6FABC();
  v25 = &v15[v12[7]];
  *v25 = v16;
  *(v25 + 1) = v18;
  v25[16] = v20 & 1;
  *(v25 + 3) = v22;
  v26 = &v15[v12[9]];
  *v26 = sub_243B68208;
  v26[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F08, &qword_243B723E0);
  v27 = *(v11 + 72);
  v28 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_243B71EC0;
  sub_243B3EB64(v15, v29 + v28);
  v30 = v41;

  v31 = v42;

  sub_243B6FABC();
  v32 = type metadata accessor for AlertViewModel(0);
  v33 = &v9[v32[5]];
  v34 = v44;
  *v33 = v43;
  *(v33 + 1) = v30;
  v35 = &v9[v32[6]];
  *v35 = v34;
  *(v35 + 1) = v31;
  *&v9[v32[7]] = v29;
  (*(*(v32 - 1) + 56))(v9, 0, 1, v32);
  swift_getKeyPath();
  v45 = v5;
  v46 = v9;
  v47 = v5;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();

  sub_243B2E620(v9, &qword_27EDA1E00, &unk_243B73660);
  v36 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert;
  if (*(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert) == 1)
  {
    result = sub_243B2E010(v15);
    *(v5 + v36) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v47 = v5;
    sub_243B6FAEC();

    return sub_243B2E010(v15);
  }

  return result;
}

uint64_t sub_243B669D4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) = 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction + 8);
  return (*(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction))(a1);
}

uint64_t CreateiCloudLinkViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_fileURL;
  v2 = sub_243B6FA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction + 8);

  v4 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange + 8);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange));
  v5 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onAppear + 8);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onAppear));
  v6 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);

  sub_243B2E620(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__alertViewModel, &qword_27EDA1E00, &unk_243B73660);
  v7 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText + 8);

  v8 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_recipients);

  v9 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel____lazy_storage___contactPickerDelegate);
  swift_unknownObjectRelease();
  v10 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel___observationRegistrar;
  v11 = sub_243B6FB3C();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t CreateiCloudLinkViewModel.__deallocating_deinit()
{
  CreateiCloudLinkViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_243B66C9C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CreateiCloudLinkViewModel();
  result = sub_243B6FBEC();
  *a1 = result;
  return result;
}

unint64_t sub_243B66CDC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_243B70CBC();
  sub_243B7084C();
  v6 = sub_243B70CEC();

  return sub_243B66D54(a1, a2, v6);
}

unint64_t sub_243B66D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_243B70C6C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_243B66E0C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D49BC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_243B66E8C;
  }

  __break(1u);
  return result;
}

id sub_243B66E94(void *a1)
{
  v2 = sub_243B6FB9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userInfo];
  v8 = sub_243B707EC();

  v9 = *MEMORY[0x277CCA7E8];
  v10 = sub_243B7082C();
  if (!*(v8 + 16))
  {

    goto LABEL_8;
  }

  v12 = sub_243B66CDC(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_243B319B0(*(v8 + 56) + 32 * v12, v58);

  sub_243B2E534(0, &qword_27EDA2EF8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v15 = v57;
    v16 = [v57 domain];
    v17 = sub_243B7082C();
    v19 = v18;

    v20 = *MEMORY[0x277CBBF50];
    if (v17 == sub_243B7082C() && v19 == v21)
    {

      return v15;
    }

    v56 = v20;
    v30 = sub_243B70C6C();

    if (v30)
    {
      return v15;
    }

    v31 = [a1 userInfo];
    v32 = sub_243B707EC();

    v33 = *MEMORY[0x277CCA578];
    v34 = sub_243B7082C();
    if (*(v32 + 16))
    {
      v36 = sub_243B66CDC(v34, v35);
      v38 = v37;

      if (v38)
      {
        sub_243B319B0(*(v32 + 56) + 32 * v36, v58);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F00, &unk_243B74EB8);
        if (swift_dynamicCast())
        {
          v51 = v15;
          v15 = v57;
          if (v57 >> 62)
          {
            goto LABEL_42;
          }

          v39 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v39)
          {
            while (1)
            {
              v40 = 0;
              v53 = v15 & 0xFFFFFFFFFFFFFF8;
              v54 = v15 & 0xC000000000000001;
              v52 = v39;
              while (v54)
              {
                v41 = MEMORY[0x245D49BC0](v40, v15);
                v42 = v40 + 1;
                if (__OFADD__(v40, 1))
                {
LABEL_34:
                  __break(1u);
                  goto LABEL_35;
                }

LABEL_25:
                v55 = v41;
                v43 = [v41 domain];
                v44 = sub_243B7082C();
                v46 = v45;

                if (v44 == sub_243B7082C() && v46 == v47)
                {

LABEL_40:

                  return v55;
                }

                v49 = sub_243B70C6C();

                if (v49)
                {

                  goto LABEL_40;
                }

                ++v40;
                if (v42 == v52)
                {
                  goto LABEL_43;
                }
              }

              if (v40 < *(v53 + 16))
              {
                break;
              }

              __break(1u);
LABEL_42:
              v39 = sub_243B70C0C();
              if (!v39)
              {
                goto LABEL_43;
              }
            }

            v41 = *(v15 + 8 * v40 + 32);
            v42 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_34;
            }

            goto LABEL_25;
          }

LABEL_43:

          goto LABEL_8;
        }

LABEL_37:

        goto LABEL_9;
      }
    }

    else
    {
LABEL_35:
    }

    goto LABEL_37;
  }

LABEL_9:
  sub_243B6FB6C();
  v56 = a1;
  v22 = sub_243B6FB8C();
  v23 = sub_243B709AC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = v56;
    *(v24 + 4) = v56;
    *v25 = v26;
    v27 = v26;
    _os_log_impl(&dword_243B1E000, v22, v23, "No underlying CK error found for error: %@", v24, 0xCu);
    sub_243B2E620(v25, &unk_27EDA1F70, &qword_243B724C0);
    MEMORY[0x245D4A570](v25, -1, -1);
    MEMORY[0x245D4A570](v24, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v28 = v56;

  return v28;
}

uint64_t sub_243B6744C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v75 = a2;
  v72 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v13 = *(v12 - 8);
  v67 = v12;
  v68 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v65 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F80, &unk_243B75080);
  v17 = *(v16 - 8);
  v69 = v16;
  v70 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v66 = &v64 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  v20 = *(v64 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v64);
  v23 = &v64 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v64 - v27;
  v29 = (v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onPermissionChange);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__onAppear);
  *v30 = 0;
  v30[1] = 0;
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) = 0;
  v31 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__alertViewModel;
  v32 = type metadata accessor for AlertViewModel(0);
  (*(*(v32 - 8) + 56))(v5 + v31, 1, 1, v32);
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert) = 0;
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus) = 0;
  v33 = (v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_recipients) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel____lazy_storage___contactPickerDelegate) = 0;
  sub_243B6FB2C();
  v34 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_fileURL;
  v71 = sub_243B6FA8C();
  v73 = *(v71 - 8);
  (*(v73 + 16))(v5 + v34, a1, v71);
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic) = 1;
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) = 1;
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canInviteOthers) = 0;
  v35 = (v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction);
  *v35 = a3;
  v35[1] = a4;
  v36 = type metadata accessor for AddressingViewModel();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  v40 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v76 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DF0, &unk_243B74B80);
  sub_243B6FBFC();
  (*(v25 + 32))(v39 + v40, v28, v24);
  *(v39 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked) = 0;
  v41 = (v39 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  *v41 = 0;
  v41[1] = 0;
  v42 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  LOBYTE(v76) = 1;
  sub_243B6FBFC();
  (*(v20 + 32))(v39 + v42, v23, v64);
  swift_unknownObjectWeakInit();
  *(v39 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_store) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  (*(v25 + 8))(v39 + v40, v24);
  v80 = 0;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v76 = 0;
  v77 = 0xE000000000000000;
  v78 = 0;
  v79 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FA0, &unk_243B750A0);
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  v43 = (v39 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick);
  *v43 = 0;
  v43[1] = 0;
  swift_beginAccess();
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  v44 = (v39 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick);
  *v44 = 0;
  v44[1] = 0;
  v45 = *v41;
  v46 = v41[1];
  *v41 = 0;
  v41[1] = 0;
  sub_243B2BFCC(v45);
  v47 = (v39 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange);
  *v47 = 0;
  v47[1] = 0;
  swift_beginAccess();
  v80 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  sub_243B6FBFC();
  *(v39 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_shouldAllowEmptyAddresses) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  v48 = v65;
  sub_243B6FC0C();
  swift_endAccess();

  sub_243B2E680(&qword_27EDA2E00, &qword_27EDA2DE8, &unk_243B74B70);
  sub_243B30A50();
  v50 = v66;
  v49 = v67;
  sub_243B6FC6C();
  (*(v68 + 8))(v48, v49);
  swift_allocObject();
  swift_weakInit();
  sub_243B2E680(&qword_27EDA2E08, &unk_27EDA2F80, &unk_243B75080);
  v51 = v69;
  sub_243B6FC7C();

  (*(v70 + 8))(v50, v51);
  swift_beginAccess();
  sub_243B6FBDC();
  swift_endAccess();

  v52 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel;
  *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel) = v39;
  swift_getKeyPath();
  v76 = v5;
  sub_243B683C8(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v53 = *(v5 + v52);
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = (v53 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  v56 = *(v53 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  v57 = *(v53 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick + 8);
  *v55 = sub_243B68D00;
  v55[1] = v54;

  sub_243B2BFCC(v56);

  sub_243B635A0(v75);

  v58 = v74;
  sub_243B7090C();
  v59 = sub_243B7092C();
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  sub_243B708FC();

  v60 = sub_243B708EC();
  v61 = swift_allocObject();
  v62 = MEMORY[0x277D85700];
  v61[2] = v60;
  v61[3] = v62;
  v61[4] = v5;
  sub_243B3EF48(0, 0, v58, &unk_243B750C0, v61);

  (*(v73 + 8))(v72, v71);
  return v5;
}

void sub_243B67FEC()
{
  v0 = sub_243B6FA8C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_243B2D97C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_243B6FB3C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_243B68270()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243B682B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243B2EC14;

  return sub_243B65B9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243B683C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243B68418()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243B684A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_243B2EC14;

  return sub_243B5F1FC(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_243B68638(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_243B2EC14;

  return sub_243B60D74(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t objectdestroy_120Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_243B6FA8C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v2 | 7);
}

uint64_t sub_243B68910(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F48, &unk_243B74F70) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_243B2EC14;

  return sub_243B5F1FC(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_243B68A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243B2EC14;

  return sub_243B5EFF8(a1, v4, v5, v7, v6);
}

uint64_t sub_243B68B4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_243B2E7BC;

  return sub_243B5E124();
}

uint64_t sub_243B68C08()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_243B68C54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
  *(v1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel) = *(v0 + 24);
}

uint64_t sub_243B68C98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243B68CD4(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t objectdestroy_150Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_243B68D54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243B2EC14;

  return sub_243B5CE3C(a1, v4, v5, v6);
}

uint64_t sub_243B68E08(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = (v1[2] + *a1);
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_243B2E364(v2);
  return sub_243B2BFCC(v5);
}

uint64_t sub_243B68E60(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

id HostingControllerAndModelUpdates.__allocating_init(viewController:sourceAppBundleIDDidChangeBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_viewController] = a1;
  v8 = &v7[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_243B69154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_243B7080C();
  v11 = sub_243B7080C();
  (*(a7 + 16))(a7, v10, v11, a5 & 1, a6);
}

uint64_t sub_243B691F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
}

void sub_243B69300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_243B7080C();
  v10 = sub_243B7080C();
  sub_243B69E94();
  v11 = sub_243B7088C();
  (*(a7 + 16))(a7, v9, v10, a5 & 1, v11);
}

id SharingOptionsViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingOptionsViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingOptionsViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t HostingControllerAndModelUpdates.sourceAppBundleIDDidChangeBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock);
  v2 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock + 8);

  return v1;
}

uint64_t sub_243B6958C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_243B7082C();
  v5 = v4;

  v2(v3, v5);
}

id HostingControllerAndModelUpdates.init(viewController:sourceAppBundleIDDidChangeBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_viewController] = a1;
  v4 = &v3[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for HostingControllerAndModelUpdates();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_243B69764(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s14CloudSharingUI0B18OptionsViewFactoryC024createCollaborationSharedE0_13layoutMargins19userDidChangeOption011contentSizemN0AA32HostingControllerAndModelUpdatesCSo016_SWCollaborationiD0CSg_So23NSDirectionalEdgeInsetsVySS_SSSbALtcySo6CGSizeVctFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SharingOptionsGroupsView(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v38 - v16);
  v18 = a1;
  sub_243B6FCDC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = sub_243B2C694(a1, a2, a3, a4, a5, v20, v22, v24, v26);

  qword_27EDA2FC8 = v27;

  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  swift_storeEnumTagMultiPayload();
  v28 = v17 + *(v11 + 28);
  *v28 = sub_243B42A48;
  *(v28 + 1) = 0;
  v28[16] = 0;
  v29 = *(v11 + 32);
  type metadata accessor for SharingOptionsObservableModel();
  sub_243B69F18(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B7074C();
  sub_243B69F60(v17, v14, type metadata accessor for SharingOptionsGroupsView);
  v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FE8, &unk_243B75190));
  v31 = sub_243B7013C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  sub_243B7072C();
  v32 = v40;
  v33 = type metadata accessor for HostingControllerAndModelUpdates();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_viewController] = v31;
  v35 = &v34[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock];
  *v35 = sub_243B69FC8;
  v35[1] = v32;
  v39.receiver = v34;
  v39.super_class = v33;
  v36 = objc_msgSendSuper2(&v39, sel_init);
  sub_243B69FD0(v17, type metadata accessor for SharingOptionsGroupsView);
  return v36;
}

id _s14CloudSharingUI0B18OptionsViewFactoryC06createbdE0_19userDidChangeOptionAA32HostingControllerAndModelUpdatesCSaySo016_SWCollaborationD5GroupCG_ySS_SSSbAJtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharingOptionsView(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v29 - v12);
  v14 = type metadata accessor for SharingOptionsViewModel();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = SharingOptionsViewModel.init(collaborationOptionsGroups:userDidChangeOption:)(a1, a2, a3);
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  swift_storeEnumTagMultiPayload();
  v18 = v13 + v7[7];
  *v18 = sub_243B37800;
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = v7[9];
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2438, &qword_243B75180);
  sub_243B705AC();
  *(v13 + v19) = v32;
  v20 = v13 + v7[8];
  *v20 = sub_243B69F08;
  *(v20 + 1) = v17;
  v20[16] = 0;
  sub_243B69F60(v13, v10, type metadata accessor for SharingOptionsView);
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FE0, &qword_243B75188));
  v22 = sub_243B7013C();
  sub_243B69F18(&qword_27EDA2428, type metadata accessor for SharingOptionsViewModel);
  v23 = sub_243B6FD3C();
  v24 = type metadata accessor for HostingControllerAndModelUpdates();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_viewController] = v22;
  v26 = &v25[OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock];
  *v26 = sub_243B69F10;
  v26[1] = v23;
  v30.receiver = v25;
  v30.super_class = v24;
  v27 = objc_msgSendSuper2(&v30, sel_init);
  sub_243B69FD0(v13, type metadata accessor for SharingOptionsView);
  return v27;
}

uint64_t sub_243B69DEC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_243B69E24()
{
  v1 = *(v0 + 16);
  v2 = sub_243B7080C();
  (*(v1 + 16))(v1, v2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243B69E94()
{
  result = qword_27EDA2F30;
  if (!qword_27EDA2F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDA2F30);
  }

  return result;
}

uint64_t sub_243B69F18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243B69F60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243B69FD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SharingOptionsViewModel.__allocating_init(collaborationOptionsGroups:userDidChangeOption:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  SharingOptionsViewModel.init(collaborationOptionsGroups:userDidChangeOption:)(a1, a2, a3);
  return v9;
}

uint64_t static SharingOptionsViewModel.UserAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_243B70C6C()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_243B70C6C()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243B6A138(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_243B6A198()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_243B6A1E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

double sub_243B6A288@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_243B6A308(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

double sub_243B6A384()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B6A3F8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B6A474(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B6A518(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3000, &qword_243B751F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B6A6B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3000, &qword_243B751F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B6A7F0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3000, &qword_243B751F0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__contentSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t sub_243B6A960@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  *a2 = v5;
  return result;
}

uint64_t sub_243B6A9E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t sub_243B6AA5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B6AAD0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B6AB40(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B52B38;
}

uint64_t sub_243B6ABE4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3018, &qword_243B75248);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3010, &qword_243B75240);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B6AD84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3018, &qword_243B75248);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3010, &qword_243B75240);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B6AEBC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3018, &qword_243B75248);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__collaborationOptionsGroups;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3010, &qword_243B75240);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B56C5C;
}

uint64_t SharingOptionsViewModel.userDidChangeOption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  v2 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption + 8);
  sub_243B2E364(v1);
  return v1;
}

uint64_t SharingOptionsViewModel.contentSizeDidChange.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  v2 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange + 8);
  sub_243B2E364(v1);
  return v1;
}

uint64_t SharingOptionsViewModel.__allocating_init(collaborationOptionsGroups:layoutMargins:userDidChangeOption:contentSizeDidChange:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v19 = *(v10 + 48);
  v20 = *(v10 + 52);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  type metadata accessor for CGSize(0);
  sub_243B6FBFC();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3020, &qword_243B75250);
  sub_243B6FBFC();
  swift_endAccess();
  v22 = (v21 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins);
  *v22 = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v23 = (v21 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  *v23 = a6;
  v23[1] = a7;
  v24 = (v21 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  *v24 = a8;
  v24[1] = a9;
  return v21;
}

uint64_t SharingOptionsViewModel.init(collaborationOptionsGroups:layoutMargins:userDidChangeOption:contentSizeDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v29 - v22;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v24 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__contentSize;
  type metadata accessor for CGSize(0);
  v29[1] = 0;
  v29[2] = 0;
  sub_243B6FBFC();
  (*(v20 + 32))(v9 + v24, v23, v19);
  swift_beginAccess();
  v29[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3020, &qword_243B75250);
  sub_243B6FBFC();
  swift_endAccess();
  v25 = (v9 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins);
  *v25 = a6;
  v25[1] = a7;
  v25[2] = a8;
  v25[3] = a9;
  v26 = (v9 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  *v26 = a2;
  v26[1] = a3;
  v27 = (v9 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  *v27 = a4;
  v27[1] = a5;
  return v9;
}

uint64_t SharingOptionsViewModel.init(collaborationOptionsGroups:userDidChangeOption:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v12 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__contentSize;
  type metadata accessor for CGSize(0);
  v17[1] = 0;
  v17[2] = 0;
  sub_243B6FBFC();
  (*(v8 + 32))(v3 + v12, v11, v7);
  swift_beginAccess();
  v17[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3020, &qword_243B75250);
  sub_243B6FBFC();
  swift_endAccess();
  v13 = (v3 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins);
  *v13 = 0u;
  v13[1] = 0u;
  v14 = (v3 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  *v14 = a2;
  v14[1] = a3;
  v15 = (v3 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  *v15 = 0;
  v15[1] = 0;
  return v3;
}

uint64_t SharingOptionsViewModel.__allocating_init(collaborationShareOptions:layoutMargins:userDidChangeOption:contentSizeDidChange:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  if (!a1)
  {
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = a2;
    *(v22 + 5) = a3;
    sub_243B2E364(a2);
    v24 = sub_243B2E2F0;
    goto LABEL_5;
  }

  v18 = [a1 summary];
  v19 = sub_243B7082C();
  v21 = v20;

  v22 = swift_allocObject();
  *(v22 + 2) = v19;
  *(v22 + 3) = v21;
  *(v22 + 4) = a2;
  *(v22 + 5) = a3;
  sub_243B2E364(a2);
  v23 = [a1 optionsGroups];
  v24 = sub_243B2EC5C;
  if (!v23)
  {
LABEL_5:
    v26 = v24;
    goto LABEL_6;
  }

  v25 = v23;
  sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
  sub_243B7089C();

  v26 = sub_243B2EC5C;
LABEL_6:
  v27 = type metadata accessor for SharingOptionsViewModel();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  type metadata accessor for CGSize(0);
  sub_243B6FBFC();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3020, &qword_243B75250);
  sub_243B6FBFC();
  swift_endAccess();
  sub_243B2BFCC(a2);

  v31 = (v30 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins);
  *v31 = a6;
  v31[1] = a7;
  v31[2] = a8;
  v31[3] = a9;
  v32 = (v30 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  *v32 = v26;
  v32[1] = v22;
  v33 = (v30 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  *v33 = a4;
  v33[1] = a5;
  return v30;
}

uint64_t type metadata accessor for SharingOptionsViewModel()
{
  result = qword_27EDA3028;
  if (!qword_27EDA3028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SharingOptionsViewModel.__allocating_init(collaborationShareOptions:userDidChangeOption:)(id a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = [a1 summary];
    v7 = sub_243B7082C();
    v9 = v8;

    v10 = swift_allocObject();
    *(v10 + 2) = v7;
    *(v10 + 3) = v9;
    *(v10 + 4) = a2;
    *(v10 + 5) = a3;
    sub_243B2E364(a2);
    v11 = [a1 optionsGroups];
    if (v11)
    {
      v12 = v11;
      sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
      sub_243B7089C();
    }
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 4) = a2;
    *(v10 + 5) = a3;
    sub_243B2E364(a2);
  }

  v13 = type metadata accessor for SharingOptionsViewModel();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  type metadata accessor for CGSize(0);
  sub_243B6FBFC();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3020, &qword_243B75250);
  sub_243B6FBFC();
  swift_endAccess();
  sub_243B2BFCC(a2);

  v17 = (v16 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins);
  *v17 = 0u;
  v17[1] = 0u;
  v18 = (v16 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  *v18 = sub_243B2EC5C;
  v18[1] = v10;
  v19 = (v16 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  *v19 = 0;
  v19[1] = 0;
  return v16;
}

uint64_t sub_243B6BA28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SharingOptionsViewModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__contentSize;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__collaborationOptionsGroups;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3010, &qword_243B75240);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption + 8);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption));
  v7 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange + 8);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange));
  return v0;
}

uint64_t SharingOptionsViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__contentSize;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2FF8, &qword_243B751E8);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel__collaborationOptionsGroups;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3010, &qword_243B75240);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption + 8];
  sub_243B2BFCC(*&v0[OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption]);
  v7 = *&v0[OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange + 8];
  sub_243B2BFCC(*&v0[OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange]);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t sub_243B6BC94@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharingOptionsViewModel();
  result = sub_243B6FBEC();
  *a1 = result;
  return result;
}

uint64_t sub_243B6BCD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

void sub_243B6BD94()
{
  sub_243B6C100();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_243B6C158();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_243B6C100()
{
  if (!qword_27EDA3038)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_243B6FC5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA3038);
    }
  }
}

void sub_243B6C158()
{
  if (!qword_27EDA3040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA3020, &qword_243B75250);
    v0 = sub_243B6FC5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA3040);
    }
  }
}

id AddressingViewFactory.__allocating_init(headerImageData:headerTitle:loadingText:supplementaryText:userInfoText:primaryButtonText:secondaryButtonText:shouldAllowEmptyAddresses:userDidClickPrimaryButton:userDidClickSecondaryButton:userDidClickShowContactPicker:userDidChangeAddresses:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v95 = a8;
  v94 = a7;
  v91 = a6;
  v90 = a5;
  v89 = a4;
  v88 = a3;
  v113 = a1;
  v114 = a22;
  v112 = a21;
  v110 = a20;
  v116 = a23;
  v117 = a19;
  v115 = a18;
  v118 = a17;
  v101 = a15;
  v100 = a14;
  v99 = a13;
  v97 = a12;
  v96 = a11;
  v93 = a10;
  v92 = a9;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v103 = *(v104 - 8);
  v25 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v87 - v26;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F80, &unk_243B75080);
  v106 = *(v107 - 8);
  v27 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v87 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v87 - v37;
  v109 = v23;
  v108 = objc_allocWithZone(v23);
  v39 = type metadata accessor for AddressingViewModel();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  v43 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v120 = 0;
  sub_243B584CC(v113, a2);
  v111 = a16;
  sub_243B2E364(a16);
  sub_243B2E364(v115);
  sub_243B2E364(v110);
  sub_243B2E364(v114);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DF0, &unk_243B74B80);
  sub_243B6FBFC();
  v44 = *(v35 + 32);
  v87 = v34;
  v44(v42 + v43, v38, v34);
  *(v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked) = 0;
  v45 = (v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  *v45 = 0;
  v45[1] = 0;
  v46 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  LOBYTE(v120) = 1;
  sub_243B6FBFC();
  (*(v30 + 32))(v42 + v46, v33, v29);
  swift_unknownObjectWeakInit();
  *(v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_store) = MEMORY[0x277D84FA0];
  v98 = a2;
  if (a2 >> 60 == 15)
  {
    swift_beginAccess();
    (*(v35 + 8))(v42 + v43, v87);
    v124 = 0;
    sub_243B6FBFC();
    swift_endAccess();
  }

  else
  {
    v47 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v48 = v113;
    sub_243B58478(v113, a2);
    sub_243B58478(v48, a2);
    v49 = sub_243B6FA9C();
    v50 = [v47 initWithData_];

    sub_243B58410(v48, a2);
    swift_beginAccess();
    (*(v35 + 8))(v42 + v43, v87);
    v124 = v50;
    sub_243B6FBFC();
    swift_endAccess();
    sub_243B58410(v48, a2);
  }

  if (v89)
  {
    v51 = v88;
  }

  else
  {
    v51 = 0;
  }

  v52 = 0xE000000000000000;
  if (v89)
  {
    v53 = v89;
  }

  else
  {
    v53 = 0xE000000000000000;
  }

  swift_beginAccess();
  v124 = v51;
  v125 = v53;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v120 = 0;
  v121 = 0xE000000000000000;
  v122 = 0;
  v123 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FA0, &unk_243B750A0);
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v124 = 0;
  v125 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  if (v91)
  {
    v54 = v90;
  }

  else
  {
    v54 = 0;
  }

  if (v91)
  {
    v55 = v91;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  swift_beginAccess();
  v124 = v54;
  v125 = v55;
  sub_243B6FBFC();
  swift_endAccess();
  if (v95)
  {
    v56 = v94;
  }

  else
  {
    v56 = 0;
  }

  if (v95)
  {
    v57 = v95;
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  swift_beginAccess();
  v124 = v56;
  v125 = v57;
  sub_243B6FBFC();
  swift_endAccess();
  if (v93)
  {
    v58 = v92;
  }

  else
  {
    v58 = 0;
  }

  if (v93)
  {
    v59 = v93;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  swift_beginAccess();
  v124 = v58;
  v125 = v59;
  sub_243B6FBFC();
  swift_endAccess();
  if (v97)
  {
    v60 = v96;
  }

  else
  {
    v60 = 0;
  }

  if (v97)
  {
    v61 = v97;
  }

  else
  {
    v61 = 0xE000000000000000;
  }

  swift_beginAccess();
  v124 = v60;
  v125 = v61;
  sub_243B6FBFC();
  swift_endAccess();
  v62 = (v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick);
  v63 = v111;
  v64 = v118;
  *v62 = v111;
  v62[1] = v64;
  if (v100)
  {
    v65 = v99;
  }

  else
  {
    v65 = 0;
  }

  if (v100)
  {
    v52 = v100;
  }

  swift_beginAccess();
  v124 = v65;
  v125 = v52;
  sub_243B2E364(v63);
  sub_243B6FBFC();
  swift_endAccess();
  v66 = (v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick);
  v67 = v115;
  v68 = v117;
  *v66 = v115;
  v66[1] = v68;
  v69 = *v45;
  v70 = v45[1];
  v71 = v110;
  v72 = v112;
  *v45 = v110;
  v45[1] = v72;
  sub_243B2E364(v67);
  sub_243B2E364(v71);
  sub_243B2BFCC(v69);
  v73 = (v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange);
  v74 = v114;
  v75 = v116;
  *v73 = v114;
  v73[1] = v75;
  swift_beginAccess();
  v124 = MEMORY[0x277D84F90];
  sub_243B2E364(v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  sub_243B6FBFC();
  *(v42 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_shouldAllowEmptyAddresses) = v101 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  v76 = v102;
  sub_243B6FC0C();
  swift_endAccess();

  sub_243B2E680(&qword_27EDA2E00, &qword_27EDA2DE8, &unk_243B74B70);
  sub_243B30A50();
  v77 = v105;
  v78 = v104;
  sub_243B6FC6C();
  (*(v103 + 8))(v76, v78);
  swift_allocObject();
  swift_weakInit();
  sub_243B2E680(&qword_27EDA2E08, &unk_27EDA2F80, &unk_243B75080);
  v79 = v107;
  sub_243B6FC7C();

  (*(v106 + 8))(v77, v79);
  swift_beginAccess();
  sub_243B6FBDC();
  swift_endAccess();

  sub_243B2BFCC(v74);
  sub_243B2BFCC(v71);
  sub_243B2BFCC(v67);
  v80 = v111;
  sub_243B2BFCC(v111);
  v81 = v113;
  v82 = v98;
  sub_243B58410(v113, v98);
  v83 = v108;
  *&v108[OBJC_IVAR____TtC14CloudSharingUI21AddressingViewFactory_viewModel] = v42;
  v120 = sub_243B69F08;
  v121 = v42;
  LOBYTE(v122) = 0;
  v84 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3058, &qword_243B75360));

  *&v83[OBJC_IVAR____TtC14CloudSharingUI21AddressingViewFactory_viewController] = sub_243B7013C();
  v119.receiver = v83;
  v119.super_class = v109;
  v85 = objc_msgSendSuper2(&v119, sel_init);
  sub_243B2BFCC(v114);
  sub_243B2BFCC(v71);
  sub_243B2BFCC(v115);
  sub_243B2BFCC(v80);
  sub_243B58410(v81, v82);
  return v85;
}

id AddressingViewFactory.init(headerImageData:headerTitle:loadingText:supplementaryText:userInfoText:primaryButtonText:secondaryButtonText:shouldAllowEmptyAddresses:userDidClickPrimaryButton:userDidClickSecondaryButton:userDidClickShowContactPicker:userDidChangeAddresses:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = sub_243B6DD7C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
  sub_243B2BFCC(a22);
  sub_243B2BFCC(a20);
  sub_243B2BFCC(a18);
  sub_243B2BFCC(a16);
  sub_243B58410(a1, a2);
  return v24;
}

uint64_t sub_243B6CE8C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243B6D230(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14)
{
  v15 = a8;
  v16 = a7;
  v21 = *(v14 + OBJC_IVAR____TtC14CloudSharingUI21AddressingViewFactory_viewModel);
  if (a2 >> 60 == 15)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = 0;

    sub_243B6FC4C();
  }

  else
  {
    v24 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_243B584CC(a1, a2);
    sub_243B58478(a1, a2);
    v25 = sub_243B6FA9C();
    v26 = [v24 initWithData_];

    sub_243B58410(a1, a2);
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = v26;

    v27 = v26;
    sub_243B6FC4C();
    v28 = a1;
    v16 = a7;
    v15 = a8;
    sub_243B58410(v28, a2);
  }

  if (a4)
  {
    v29 = a3;
  }

  else
  {
    v29 = 0;
  }

  if (a4)
  {
    v30 = a4;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v50 == v29 && v51 == v30)
  {
  }

  else
  {
    v31 = sub_243B70C6C();

    if (v31)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v50 = v29;
      v51 = v30;

      sub_243B6FC4C();
    }
  }

  if (a6)
  {
    v32 = a5;
  }

  else
  {
    v32 = 0;
  }

  if (a6)
  {
    v33 = a6;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v50 == v32 && v51 == v33)
  {
  }

  else
  {
    v34 = sub_243B70C6C();

    if (v34)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v50 = v32;
      v51 = v33;

      sub_243B6FC4C();
    }
  }

  if (v15)
  {
    v35 = v16;
  }

  else
  {
    v35 = 0;
  }

  if (v15)
  {
    v36 = v15;
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v50 == v35 && v51 == v36)
  {
  }

  else
  {
    v37 = sub_243B70C6C();

    if (v37)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v50 = v35;
      v51 = v36;

      sub_243B6FC4C();
    }
  }

  if (a10)
  {
    v38 = a9;
  }

  else
  {
    v38 = 0;
  }

  if (a10)
  {
    v39 = a10;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v50 == v38 && v51 == v39)
  {
  }

  else
  {
    v40 = sub_243B70C6C();

    if (v40)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v50 = v38;
      v51 = v39;

      sub_243B6FC4C();
    }
  }

  if (a12)
  {
    v41 = a11;
  }

  else
  {
    v41 = 0;
  }

  if (a12)
  {
    v42 = a12;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v50 == v41 && v51 == v42)
  {
  }

  else
  {
    v43 = sub_243B70C6C();

    if (v43)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v50 = v41;
      v51 = v42;

      sub_243B6FC4C();
    }
  }

  if (a14)
  {
    v44 = a13;
  }

  else
  {
    v44 = 0;
  }

  if (a14)
  {
    v45 = a14;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  if (v50 == v44 && v51 == v45)
  {
  }

  else
  {
    v47 = sub_243B70C6C();

    if (v47)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_243B6FC4C();
    }
  }
}

id AddressingViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AddressingViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddressingViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_243B6DD7C(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v94 = a8;
  v93 = a7;
  v90 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v109 = a22;
  v110 = a20;
  v111 = a23;
  v113 = a21;
  v114 = a18;
  v115 = a19;
  v116 = a17;
  v99 = a15;
  v98 = a14;
  v97 = a13;
  v96 = a12;
  v95 = a11;
  v92 = a10;
  v91 = a9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v101 = *(v102 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v85 - v25;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F80, &unk_243B75080);
  v104 = *(v105 - 8);
  v26 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v85 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v85 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v85 - v36;
  v38 = type metadata accessor for AddressingViewModel();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  v42 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v118 = 0;
  v107 = a1;
  v43 = a1;
  v44 = v108;
  sub_243B584CC(v43, v108);
  v112 = a16;
  sub_243B2E364(a16);
  sub_243B2E364(v114);
  sub_243B2E364(v110);
  sub_243B2E364(v109);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DF0, &unk_243B74B80);
  sub_243B6FBFC();
  v45 = *(v34 + 32);
  v86 = v33;
  v45(v41 + v42, v37, v33);
  *(v41 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked) = 0;
  v46 = (v41 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  *v46 = 0;
  v46[1] = 0;
  v47 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  LOBYTE(v118) = 1;
  sub_243B6FBFC();
  (*(v29 + 32))(v41 + v47, v32, v28);
  swift_unknownObjectWeakInit();
  *(v41 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_store) = MEMORY[0x277D84FA0];
  if (v44 >> 60 == 15)
  {
    swift_beginAccess();
    (*(v34 + 8))(v41 + v42, v86);
    v122 = 0;
    sub_243B6FBFC();
    swift_endAccess();
  }

  else
  {
    v48 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v49 = v107;
    sub_243B58478(v107, v44);
    sub_243B58478(v49, v44);
    v50 = sub_243B6FA9C();
    v51 = [v48 initWithData_];

    sub_243B58410(v49, v44);
    swift_beginAccess();
    (*(v34 + 8))(v41 + v42, v86);
    v122 = v51;
    sub_243B6FBFC();
    swift_endAccess();
    sub_243B58410(v49, v44);
  }

  if (v88)
  {
    v52 = v87;
  }

  else
  {
    v52 = 0;
  }

  v53 = 0xE000000000000000;
  if (v88)
  {
    v54 = v88;
  }

  else
  {
    v54 = 0xE000000000000000;
  }

  swift_beginAccess();
  v122 = v52;
  v123 = v54;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v118 = 0;
  v119 = 0xE000000000000000;
  v120 = 0;
  v121 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FA0, &unk_243B750A0);
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v122 = 0;
  v123 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  if (v90)
  {
    v55 = v89;
  }

  else
  {
    v55 = 0;
  }

  if (v90)
  {
    v56 = v90;
  }

  else
  {
    v56 = 0xE000000000000000;
  }

  swift_beginAccess();
  v122 = v55;
  v123 = v56;
  sub_243B6FBFC();
  swift_endAccess();
  if (v94)
  {
    v57 = v93;
  }

  else
  {
    v57 = 0;
  }

  if (v94)
  {
    v58 = v94;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  swift_beginAccess();
  v122 = v57;
  v123 = v58;
  sub_243B6FBFC();
  swift_endAccess();
  if (v92)
  {
    v59 = v91;
  }

  else
  {
    v59 = 0;
  }

  if (v92)
  {
    v60 = v92;
  }

  else
  {
    v60 = 0xE000000000000000;
  }

  swift_beginAccess();
  v122 = v59;
  v123 = v60;
  sub_243B6FBFC();
  swift_endAccess();
  if (v96)
  {
    v61 = v95;
  }

  else
  {
    v61 = 0;
  }

  if (v96)
  {
    v62 = v96;
  }

  else
  {
    v62 = 0xE000000000000000;
  }

  swift_beginAccess();
  v122 = v61;
  v123 = v62;
  sub_243B6FBFC();
  swift_endAccess();
  v63 = (v41 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick);
  v64 = v112;
  v65 = v116;
  *v63 = v112;
  v63[1] = v65;
  if (v98)
  {
    v66 = v97;
  }

  else
  {
    v66 = 0;
  }

  if (v98)
  {
    v53 = v98;
  }

  swift_beginAccess();
  v122 = v66;
  v123 = v53;
  sub_243B2E364(v64);
  sub_243B6FBFC();
  swift_endAccess();
  v67 = (v41 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick);
  v68 = v114;
  v69 = v115;
  *v67 = v114;
  v67[1] = v69;
  v70 = *v46;
  v71 = v46[1];
  v72 = v110;
  v73 = v113;
  *v46 = v110;
  v46[1] = v73;
  sub_243B2E364(v68);
  sub_243B2E364(v72);
  sub_243B2BFCC(v70);
  v74 = (v41 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange);
  v75 = v109;
  v76 = v111;
  *v74 = v109;
  v74[1] = v76;
  swift_beginAccess();
  v122 = MEMORY[0x277D84F90];
  sub_243B2E364(v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  sub_243B6FBFC();
  *(v41 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_shouldAllowEmptyAddresses) = v99 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  v77 = v100;
  sub_243B6FC0C();
  swift_endAccess();

  sub_243B2E680(&qword_27EDA2E00, &qword_27EDA2DE8, &unk_243B74B70);
  sub_243B30A50();
  v78 = v103;
  v79 = v102;
  sub_243B6FC6C();
  (*(v101 + 8))(v77, v79);
  swift_allocObject();
  swift_weakInit();
  sub_243B2E680(&qword_27EDA2E08, &unk_27EDA2F80, &unk_243B75080);
  v80 = v105;
  sub_243B6FC7C();

  (*(v104 + 8))(v78, v80);
  swift_beginAccess();
  sub_243B6FBDC();
  swift_endAccess();

  sub_243B2BFCC(v75);
  sub_243B2BFCC(v72);
  sub_243B2BFCC(v114);
  sub_243B2BFCC(v112);
  sub_243B58410(v107, v108);
  v81 = v106;
  *&v106[OBJC_IVAR____TtC14CloudSharingUI21AddressingViewFactory_viewModel] = v41;
  v118 = sub_243B6EAC0;
  v119 = v41;
  LOBYTE(v120) = 0;
  v82 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA3058, &qword_243B75360));

  *&v81[OBJC_IVAR____TtC14CloudSharingUI21AddressingViewFactory_viewController] = sub_243B7013C();
  v83 = type metadata accessor for AddressingViewFactory();
  v117.receiver = v81;
  v117.super_class = v83;
  return objc_msgSendSuper2(&v117, sel_init);
}

uint64_t sub_243B6EA18()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_243B6EA54()
{
  v1 = *(v0 + 16);
  v2 = sub_243B7088C();
  (*(v1 + 16))(v1, v2);
}

id sub_243B6EAC8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_243B6FB9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v11 = sub_243B6FB8C();
  v12 = sub_243B709AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_243B1E000, v11, v12, "Contact selected in contact picker", v13, 2u);
    MEMORY[0x245D4A570](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI28ContactPickerDelegateAdapter_addressingViewModel);
  sub_243B584E0(a2, 0);
  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_243B6ECC4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_243B6FB9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v11 = sub_243B6FB8C();
  v12 = sub_243B709AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_243B1E000, v11, v12, "Contact property selected in contact picker", v13, 2u);
    MEMORY[0x245D4A570](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI28ContactPickerDelegateAdapter_addressingViewModel);
  sub_243B584E0(0, a2);
  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_243B6EEF0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27EDA4F58 == -1)
  {
    if (qword_27EDA4F60)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27EDA4F60)
    {
      goto LABEL_3;
    }
  }

  if (qword_27EDA4F50 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27EDA4F44 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27EDA4F44 >= a3)
      {
        result = dword_27EDA4F48 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27EDA4F60;
  if (qword_27EDA4F60)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27EDA4F60 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x245D49EB0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27EDA4F44, &dword_27EDA4F48);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}