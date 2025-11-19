uint64_t sub_24A451F70(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_24A4AB690();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A4AB6E0();
  v26 = *(v12 - 8);
  v27 = v12;
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v26 - v18;
  v20 = a1[67];
  v21 = type metadata accessor for FMFFriend();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  swift_beginAccess();

  sub_24A39AF88(v19, a2, a3);
  result = swift_endAccess();
  if (a4)
  {
    v23 = a1[72];
    a1[72] = 0;

    v24 = a1[8];
    aBlock[4] = sub_24A3BCC0C;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D89938;
    v25 = _Block_copy(aBlock);

    sub_24A4AB6B0();
    v29 = MEMORY[0x277D84F90];
    sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v15, v11, v25);
    _Block_release(v25);
    (*(v28 + 8))(v11, v8);
    (*(v26 + 8))(v15, v27);
  }

  return result;
}

uint64_t sub_24A452308(uint64_t *a1, char a2)
{
  v5 = sub_24A4AB690();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v15 = a1[3];
  v20 = *(v2 + 56);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v13;
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;
  *(v17 + 48) = v15;
  *(v17 + 56) = a2;
  aBlock[4] = sub_24A454A30;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89A00;
  v18 = _Block_copy(aBlock);

  sub_24A388B00(v13, v14, v16);
  sub_24A4AB6B0();
  v23 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v12, v8, v18);
  _Block_release(v18);
  (*(v22 + 8))(v8, v5);
  (*(v9 + 8))(v12, v21);
}

uint64_t sub_24A452608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v40 = a6;
  v43 = a4;
  v42 = sub_24A4AB690();
  v45 = *(v42 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24A4AB6E0();
  v44 = *(v41 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 536);
  v17 = v16[5];
  v18 = v16[6];
  v20 = v16[7];
  v19 = v16[8];
  v16[5] = a2;
  v16[6] = a3;
  v21 = v43;
  v16[7] = v43;
  v16[8] = a5;
  sub_24A388B00(a2, a3, v21);
  sub_24A37F110(v17, v18, v20);
  v22 = *(a1 + 64);
  v51 = sub_24A454A44;
  v52 = a1;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_24A388564;
  v50 = &unk_285D89A28;
  v23 = _Block_copy(&aBlock);
  v39 = a1;
  v24 = v15;

  sub_24A4AB6B0();
  v25 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  v26 = sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v27 = v42;
  v38[0] = v26;
  sub_24A4ABE90();
  v38[1] = v22;
  MEMORY[0x24C218190](0, v24, v12, v23);
  _Block_release(v23);
  v28 = *(v45 + 8);
  v29 = v12;
  v45 += 8;
  v28(v12, v27);
  v30 = v41;
  v31 = *(v44 + 8);
  v44 += 8;
  v31(v24, v41);

  if (!v43 && (v40 & 1) != 0)
  {
    v33 = v25;
    v34 = v39;
    v35 = *(v39 + 576);
    *(v39 + 576) = 0;

    v51 = sub_24A3BCC0C;
    v52 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_24A388564;
    v50 = &unk_285D89A50;
    v36 = _Block_copy(&aBlock);

    sub_24A4AB6B0();
    v46 = v33;
    v37 = v42;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v24, v29, v36);
    _Block_release(v36);
    v28(v29, v37);
    v31(v24, v30);
  }

  return result;
}

uint64_t sub_24A452A58(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    v5 = *(a1 + 56);
    sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
    sub_24A4ABD70();
    v6 = v8;
    v7 = v9;
    (*(v3 + 8))(&v6, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_24A37F110(v6, *(&v6 + 1), v7);
  }

  return result;
}

uint64_t sub_24A452B2C(_OWORD *a1, char a2)
{
  v5 = sub_24A4AB690();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A4AB6E0();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v23[0] = *a1;
  v23[1] = v14;
  v24[0] = a1[2];
  *(v24 + 9) = *(a1 + 41);
  v19 = *(v2 + 56);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v2;
  v16 = a1[1];
  *(v15 + 32) = *a1;
  *(v15 + 48) = v16;
  *(v15 + 64) = a1[2];
  *(v15 + 73) = *(a1 + 41);
  aBlock[4] = sub_24A454A4C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89AA0;
  v17 = _Block_copy(aBlock);

  sub_24A37B740(v23, v21, &qword_27EF3FD68, &unk_24A4B9F40);
  sub_24A4AB6B0();
  v21[0] = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v13, v9, v17);
  _Block_release(v17);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v20);
}

void sub_24A452E64(char a1, uint64_t a2, _OWORD *a3)
{
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AB6E0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = *(a2 + 536);
    v18 = *(v17 + 72);
    v19 = *(v17 + 80);
    v20 = *(v17 + 88);
    v21 = *(v17 + 96);
    v38 = v7;
    v22 = *(v17 + 104);
    v34 = *(v17 + 112);
    v35 = v6;
    v36 = v10;
    v37 = v13;
    v23 = *(v17 + 120);
    v25 = a3[1];
    v24 = a3[2];
    v26 = *(a3 + 41);
    *(v17 + 72) = *a3;
    v27 = *(v17 + 128);
    *(v17 + 113) = v26;
    *(v17 + 104) = v24;
    *(v17 + 88) = v25;
    v28 = a3;
    v29 = v14;
    sub_24A37B740(v28, aBlock, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A3B2D38(v18);
    v30 = *(a2 + 64);
    aBlock[4] = sub_24A454A5C;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D89AC8;
    v31 = _Block_copy(aBlock);

    sub_24A4AB6B0();
    v39 = MEMORY[0x277D84F90];
    sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v32 = v36;
    v33 = v35;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v16, v32, v31);
    _Block_release(v31);
    (*(v38 + 8))(v32, v33);
    (*(v29 + 8))(v16, v37);
  }
}

uint64_t sub_24A4531B0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    v5 = *(a1 + 56);
    sub_24A3C9CEC(&qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A4ABD70();
    v6 = v8[3];
    v7 = v8[4];
    v8[0] = v9[0];
    *(v8 + 9) = *(v9 + 9);
    (*(v3 + 24))(&v6, ObjectType, v3);
    swift_unknownObjectRelease();
    v10[0] = v6;
    v10[1] = v7;
    v11[0] = v8[0];
    *(v11 + 9) = *(v8 + 9);
    return sub_24A37EF2C(v10, &qword_27EF3FD68, &unk_24A4B9F40);
  }

  return result;
}

uint64_t FMFPendingUpdateReason.hash(into:)()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (v1 == 2)
    {
      v2 = 0;
      return MEMORY[0x24C218780](v2);
    }

    if (v1 == 3)
    {
      v2 = 1;
      return MEMORY[0x24C218780](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 4u:
        v2 = 2;
        return MEMORY[0x24C218780](v2);
      case 5u:
        v2 = 3;
        return MEMORY[0x24C218780](v2);
      case 6u:
        v2 = 5;
        return MEMORY[0x24C218780](v2);
    }
  }

  MEMORY[0x24C218780](4);
  return sub_24A4AC380();
}

uint64_t FMFPendingUpdateReason.hashValue.getter()
{
  v1 = *v0;
  sub_24A4AC360();
  if (v1 <= 3)
  {
    if (v1 == 2)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 3)
    {
      v2 = 1;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x24C218780](4);
    sub_24A4AC380();
    return sub_24A4AC3A0();
  }

  if (v1 == 4)
  {
    v2 = 2;
    goto LABEL_12;
  }

  if (v1 == 5)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (v1 != 6)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  MEMORY[0x24C218780](v2);
  return sub_24A4AC3A0();
}

uint64_t sub_24A453428()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (v1 == 2)
    {
      v2 = 0;
      return MEMORY[0x24C218780](v2);
    }

    if (v1 == 3)
    {
      v2 = 1;
      return MEMORY[0x24C218780](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 4u:
        v2 = 2;
        return MEMORY[0x24C218780](v2);
      case 5u:
        v2 = 3;
        return MEMORY[0x24C218780](v2);
      case 6u:
        v2 = 5;
        return MEMORY[0x24C218780](v2);
    }
  }

  MEMORY[0x24C218780](4);
  return sub_24A4AC380();
}

uint64_t sub_24A4534BC()
{
  v1 = *v0;
  sub_24A4AC360();
  if (v1 <= 3)
  {
    if (v1 == 2)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 3)
    {
      v2 = 1;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x24C218780](4);
    sub_24A4AC380();
    return sub_24A4AC3A0();
  }

  if (v1 == 4)
  {
    v2 = 2;
    goto LABEL_12;
  }

  if (v1 == 5)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (v1 != 6)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  MEMORY[0x24C218780](v2);
  return sub_24A4AC3A0();
}

uint64_t sub_24A4535D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 64);
  sub_24A37F110(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  sub_24A3B2D38(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_24A45363C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_24A4536E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v7 = sub_24A4AB960();
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v13[0] = v7;
      v13[1] = v9;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v7 = sub_24A4AB960();
      v9 = v11;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t sub_24A4537B8(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_24A4A91D8();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_24A4A5AB4(v4, v5);
  return 1;
}

void (*sub_24A453818(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_24A453E58(v8);
  v8[9] = sub_24A453924(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_24A4538C4;
}

void sub_24A4538C4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_24A453924(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for FMFFriend();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_24A39B2C8(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_24A39983C(*(*v5 + 56) + *(v14 + 72) * v22, v19, type metadata accessor for FMFFriend);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_24A453C00;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_24A4A91D8();
      goto LABEL_16;
    }

    sub_24A4A5AB4(v25, a4 & 1);
    v29 = *v5;
    v30 = sub_24A39B2C8(a2, a3);
    if ((v26 & 1) == (v31 & 1))
    {
      v22 = v30;
      v11[11] = v30;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_24A4AC2B0();
  __break(1u);
  return result;
}

void sub_24A453C00(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_24A37B740(v5, v6, &qword_27EF3F2D0, &qword_24A4B4F50);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_24A39983C(v9, *(v2 + 6), type metadata accessor for FMFFriend);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_24A39983C(v13, v14, type metadata accessor for FMFFriend);
        sub_24A4A8218(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_24A37B740(v5, v17, &qword_27EF3F2D0, &qword_24A4B4F50);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_24A39983C(v9, *(v2 + 7), type metadata accessor for FMFFriend);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_24A39983C(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for FMFFriend);
      goto LABEL_10;
    }
  }

  sub_24A37EF2C(v9, &qword_27EF3F2D0, &qword_24A4B4F50);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_24A406964(*(v20 + 48) + 16 * v19);
    sub_24A4A7450(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_24A37EF2C(v23, &qword_27EF3F2D0, &qword_24A4B4F50);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_24A453E58(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24A453E80;
}

uint64_t sub_24A453E8C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270() & 1;
  }
}

uint64_t _s7FMFCore22FMFPendingUpdateReasonO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_17;
      }

      if (v3 == 3)
      {
        return 1;
      }
    }

    return 0;
  }

  switch(v2)
  {
    case 4u:
      return v3 == 4;
    case 5u:
      return v3 == 5;
    case 6u:
      return v3 == 6;
  }

LABEL_17:
  if ((v3 - 2) < 5)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t sub_24A453F88()
{
  result = qword_27EF40560;
  if (!qword_27EF40560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40560);
  }

  return result;
}

uint64_t sub_24A453FF0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24A45400C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_24A454064()
{
  v1 = *(type metadata accessor for FMFFriend() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = *(v3 + *(v1 + 64));

  return sub_24A450B84(v2, v3, v4);
}

uint64_t sub_24A45413C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A39CB88();
  *a1 = result;
  return result;
}

uint64_t sub_24A45416C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(type metadata accessor for FMFLocation() - 8);
  v5 = *(v4 + 72);
  v6 = (((*(v4 + 80) + 32) & ~*(v4 + 80)) + a1 + 8);
  while (1)
  {
    if (*v6)
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      sub_24A3A1434();
      if (sub_24A4ABE60())
      {
        break;
      }
    }

    v6 = (v6 + v5);
    if (v1 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

unint64_t sub_24A4542A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_24A454414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for FMFLocation();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_24A45455C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_24A3B5C2C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_24A454414(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_24A45461C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FMFLocation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v34 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = (v34 - v16);
  v18 = *a1;
  result = sub_24A45416C(*a1);
  if (v3)
  {
    return result;
  }

  v34[1] = 0;
  if (v20)
  {
    return v18[2];
  }

  v38 = v11;
  v39 = v14;
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v45 = result;
  v21 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_30;
  }

  v23 = v18 + 2;
  v22 = v18[2];
  if (v21 == v22)
  {
    return v45;
  }

  v40 = v8;
  while (v21 < v22)
  {
    v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v25 = v18 + v24;
    v26 = *(v8 + 72);
    v27 = v26 * v21;
    sub_24A3992EC(v18 + v24 + v26 * v21, v17, type metadata accessor for FMFLocation);
    v28 = v17[1];
    if (v28)
    {
      v43 = *v17;
      v44 = v28;
      v41 = v36;
      v42 = v37;
      sub_24A3A1434();
      v29 = sub_24A4ABE60();
      result = sub_24A39A7B8(v17, type metadata accessor for FMFLocation);
      if (v29)
      {
        v8 = v40;
        goto LABEL_11;
      }
    }

    else
    {
      result = sub_24A39A7B8(v17, type metadata accessor for FMFLocation);
    }

    v30 = v45;
    if (v21 == v45)
    {
      v8 = v40;
    }

    else
    {
      if ((v45 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      v31 = *v23;
      if (v45 >= v31)
      {
        goto LABEL_27;
      }

      v32 = v26 * v45;
      result = sub_24A3992EC(&v25[v26 * v45], v39, type metadata accessor for FMFLocation);
      if (v21 >= v31)
      {
        goto LABEL_28;
      }

      sub_24A3992EC(&v25[v27], v38, type metadata accessor for FMFLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_24A473E3C(v18);
      }

      v33 = v35;
      v8 = v40;
      result = sub_24A39AF20(v38, v18 + v24 + v32, type metadata accessor for FMFLocation);
      if (v21 >= v18[2])
      {
        goto LABEL_29;
      }

      result = sub_24A39AF20(v39, v18 + v24 + v27, type metadata accessor for FMFLocation);
      *v33 = v18;
      v30 = v45;
    }

    v45 = v30 + 1;
LABEL_11:
    ++v21;
    v23 = v18 + 2;
    v22 = v18[2];
    if (v21 == v22)
    {
      return v45;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_24A454970(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24A4549CC()
{
  v1 = *(type metadata accessor for FMFFriend() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_24A4518B8(v2, v3);
}

unint64_t sub_24A454A64()
{
  result = qword_27EF405F0;
  if (!qword_27EF405F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF405F0);
  }

  return result;
}

uint64_t FMFStopSharingAction.__allocating_init(friend:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_24A423930(a1, v5 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend);
  *(v5 + 16) = 1;
  return v5;
}

uint64_t FMFStopSharingAction.init(friend:)(uint64_t a1)
{
  sub_24A423930(a1, v1 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend);
  *(v1 + 16) = 1;
  return v1;
}

uint64_t sub_24A454C30()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0x3A646E6569726620, 0xE900000000000020);
  type metadata accessor for FMFFriend();
  sub_24A4AC030();
  return 0;
}

uint64_t FMFStopSharingAction.__deallocating_deinit()
{
  sub_24A3A16E4(v0 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFStopSharingAction()
{
  result = qword_27EF40610;
  if (!qword_27EF40610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A454E90()
{
  result = type metadata accessor for FMFFriend();
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

uint64_t *sub_24A454F5C()
{
  v0 = type metadata accessor for FMFContactsDataController();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = FMFContactsDataController.init(isSnapshotMode:)(0);
  qword_27EF40620 = result;
  return result;
}

id static FMFCoreHelper.contact(for:keysToFetch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EF3EBE8 != -1)
  {
    v4 = a1;
    v5 = a2;
    v6 = a3;
    swift_once();
    a1 = v4;
    a2 = v5;
    a3 = v6;
  }

  return sub_24A3AB248(a1, a2, a3);
}

uint64_t static FMFCoreHelper.displayName(for:)(void *a1)
{
  if (qword_27EF3EBE8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  sub_24A42E63C(a1, v4);
  v1 = v5;

  return v1;
}

id FMFCoreHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMFCoreHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFCoreHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FMFCoreHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFCoreHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FMFStopFollowingAction.__allocating_init(friend:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_24A423930(a1, v5 + OBJC_IVAR____TtC7FMFCore22FMFStopFollowingAction_friend);
  *(v5 + 16) = 0;
  return v5;
}

uint64_t FMFStopFollowingAction.init(friend:)(uint64_t a1)
{
  sub_24A423930(a1, v1 + OBJC_IVAR____TtC7FMFCore22FMFStopFollowingAction_friend);
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A4552F4()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0x3A646E6569726620, 0xE900000000000020);
  type metadata accessor for FMFFriend();
  sub_24A4AC030();
  return 0;
}

uint64_t FMFStopFollowingAction.__deallocating_deinit()
{
  sub_24A3A16E4(v0 + OBJC_IVAR____TtC7FMFCore22FMFStopFollowingAction_friend);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFStopFollowingAction()
{
  result = qword_27EF40628;
  if (!qword_27EF40628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMFUpdateStewieLocationAction.__allocating_init(publishReason:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t FMFUpdateStewieLocationAction.init(publishReason:)(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 16) = 0;
  return v1;
}

FMFCore::FMWindowStatePrefKeys_optional __swiftcall FMWindowStatePrefKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

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

uint64_t FMWindowStatePrefKeys.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6956776F646E6977;
  }

  else
  {
    result = 0x736F4D746E6F7266;
  }

  *v0;
  return result;
}

uint64_t sub_24A455738(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6956776F646E6977;
  }

  else
  {
    v4 = 0x736F4D746E6F7266;
  }

  if (v3)
  {
    v5 = 0xEF776F646E695774;
  }

  else
  {
    v5 = 0xED0000656C626973;
  }

  if (*a2)
  {
    v6 = 0x6956776F646E6977;
  }

  else
  {
    v6 = 0x736F4D746E6F7266;
  }

  if (*a2)
  {
    v7 = 0xED0000656C626973;
  }

  else
  {
    v7 = 0xEF776F646E695774;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A4AC270();
  }

  return v9 & 1;
}

unint64_t sub_24A4557FC()
{
  result = qword_27EF40638;
  if (!qword_27EF40638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40638);
  }

  return result;
}

uint64_t sub_24A455850()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4558EC()
{
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A455974()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A455A0C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A4AC0C0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24A455A6C(uint64_t *a1@<X8>)
{
  v2 = 0x736F4D746E6F7266;
  if (*v1)
  {
    v2 = 0x6956776F646E6977;
  }

  v3 = 0xEF776F646E695774;
  if (*v1)
  {
    v3 = 0xED0000656C626973;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A455AD4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24A455B2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24A455C40(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A383C20(*a1);
  v5 = v4;
  if (v3 == sub_24A383C20(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A455CC8()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A383C20(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A455D2C()
{
  sub_24A383C20(*v0);
  sub_24A4AB8F0();
}

uint64_t sub_24A455D80()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A383C20(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A455DE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A4560C4();
  *a2 = result;
  return result;
}

unint64_t sub_24A455E10@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A383C20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A455E3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A4560C4();
  *a1 = result;
  return result;
}

uint64_t sub_24A455E64(uint64_t a1)
{
  v2 = sub_24A383BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A455EA0(uint64_t a1)
{
  v2 = sub_24A383BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24A455F10()
{
  result = qword_27EF40658;
  if (!qword_27EF40658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40658);
  }

  return result;
}

unint64_t sub_24A455F68()
{
  result = qword_27EF40660;
  if (!qword_27EF40660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40660);
  }

  return result;
}

unint64_t sub_24A455FC0()
{
  result = qword_27EF40668;
  if (!qword_27EF40668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40668);
  }

  return result;
}

unint64_t sub_24A456018()
{
  result = qword_27EF40670;
  if (!qword_27EF40670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40670);
  }

  return result;
}

unint64_t sub_24A456070()
{
  result = qword_27EF40678;
  if (!qword_27EF40678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40678);
  }

  return result;
}

uint64_t sub_24A4560C4()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A456118(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t sub_24A456170()
{
  v1 = v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_24A4561C0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A45622C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A42AC0C;
}

uint64_t sub_24A4562CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_preferencesStore + 8);
  v2 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_preferencesStore);
  ObjectType = swift_getObjectType();
  v4 = (v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topicAPSToken);
  v5 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topicAPSToken);
  v6 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topicAPSToken + 8);
  v7 = *(v1 + 16);

  v7(v5, v6, ObjectType, v1);
  v8 = v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    v11 = swift_getObjectType();
    v12 = *v4;
    v13 = v4[1];
    v14 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_publicAPSToken);
    v15 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_publicAPSToken + 8);
    v16 = *(v10 + 8);

    v16(v0, v12, v13, v14, v15, v11, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

id FMAPSConnectionHandler.__deallocating_deinit()
{
  v1 = &v0[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection];
  if (*&v0[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection])
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v4(0, ObjectType, v2);
    swift_unknownObjectRelease();
    if (*v1)
    {
      v5 = *(v1 + 1);
      v6 = *v1;
      v7 = swift_getObjectType();
      v8 = *(v5 + 40);
      swift_unknownObjectRetain();
      v8(v7, v5);
      swift_unknownObjectRelease();
    }
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for FMAPSConnectionHandler();
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_24A4565FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A4AB6E0();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connectionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  sub_24A4AB6B0();
  v21 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_24A4568A8(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection))
  {
    v1 = *(result + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection + 8);
    v2 = *(result + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection);
    ObjectType = swift_getObjectType();
    v4 = *(v1 + 32);
    swift_unknownObjectRetain();
    v4(0, ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id FMAPSConnectionHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_24A456BE4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = sub_24A4AB690();
  v6 = *(v5 - 8);
  isa = v6[8].isa;
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4AB6E0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v16 = sub_24A4AB630();
    sub_24A378E18(v16, qword_27EF4E260);
    v17 = v2;
    v40 = sub_24A4AB600();
    v18 = sub_24A4ABCE0();

    if (os_log_type_enabled(v40, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_24A37BD58(*&v17[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic], *&v17[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic + 8], aBlock);
      _os_log_impl(&dword_24A376000, v40, v18, "FMAPSConnectionHandler: Topic APS Token was nil for %s.", v19, 0xCu);
      sub_24A37EEE0(v20);
      MEMORY[0x24C219130](v20, -1, -1);
      MEMORY[0x24C219130](v19, -1, -1);
    }

    else
    {
      v37 = v40;
    }
  }

  else
  {
    v38 = v13;
    v39 = v12;
    v40 = v6;
    v21 = sub_24A4AAA00();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v22 = sub_24A4AB630();
    sub_24A378E18(v22, qword_27EF4E260);
    v23 = v21;
    v24 = sub_24A4AB600();
    v25 = sub_24A4ABCE0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_24A376000, v24, v25, "FMAPSConnectionHandler: Topic APS Token received %@.", v26, 0xCu);
      sub_24A3A9244(v27);
      MEMORY[0x24C219130](v27, -1, -1);
      MEMORY[0x24C219130](v26, -1, -1);
    }

    v29 = [v23 fm_hexString];
    v30 = sub_24A4AB850();
    v32 = v31;

    v33 = *&v3[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connectionQueue];
    v34 = swift_allocObject();
    v34[2] = v3;
    v34[3] = v30;
    v34[4] = v32;
    aBlock[4] = sub_24A457568;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D89DD8;
    v35 = _Block_copy(aBlock);
    v36 = v3;
    sub_24A4AB6B0();
    v41 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v15, v9, v35);
    _Block_release(v35);

    (v40[1].isa)(v9, v5);
    (*(v38 + 8))(v15, v39);
  }
}

uint64_t sub_24A45714C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);

  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v11 = 136315394;
    if (!a2)
    {
LABEL_13:

      __break(1u);
      goto LABEL_14;
    }

    v14 = v13;
    result = sub_24A37BD58(a1, a2, v20);
    *(v11 + 4) = result;
    *(v11 + 12) = 2112;
    if (!a3)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v16 = sub_24A4AB760();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_24A376000, v9, v10, "FMAPSConnectionHandler: Received message for topic: %s \n Message: %@", v11, 0x16u);
    sub_24A3A9244(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    sub_24A37EEE0(v14);
    MEMORY[0x24C219130](v14, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  else
  {
  }

  v17 = v4 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = *(v17 + 8);
  ObjectType = swift_getObjectType();
  (*(v18 + 16))(v4, a3, ObjectType, v18);
  return swift_unknownObjectRelease();
}

void sub_24A4575B0()
{
  v0 = sub_24A4AB820();
  v1 = MGGetBoolAnswer();

  byte_27EF40728 = v1;
}

uint64_t sub_24A457618(uint64_t a1, uint64_t a2)
{
  sub_24A4AB8A0();
  v4 = sub_24A3A1434();
  v5 = MEMORY[0x277D837D0];
  v27 = v4;
  v28 = v4;
  v25 = MEMORY[0x277D837D0];
  v26 = v4;
  v6 = sub_24A4ABE40();
  v8 = v7;

  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A4BB330;
  *(v9 + 56) = v5;
  v10 = sub_24A3ABD70();
  v29 = a1;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = v5;
  *(v9 + 104) = v10;
  *(v9 + 64) = v10;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;

  v11 = sub_24A4AB860();
  v13 = v12;
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_24A4AA800();
  v19 = v18;

  if (v17 == v11 && v19 == v13)
  {

LABEL_8:
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_24A4B4E10;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = v10;
    *(v22 + 32) = v29;
    *(v22 + 40) = a2;

    sub_24A4AB860();
    v23 = [v15 bundleForClass_];
    v17 = sub_24A4AA800();

    return v17;
  }

  v20 = sub_24A4AC270();

  if (v20)
  {
    goto LABEL_8;
  }

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_8;
  }

  return v17;
}

uint64_t sub_24A4578FC()
{
  if (qword_27EF3EBF0 != -1)
  {
    swift_once();
  }

  if (byte_27EF40728)
  {
    v0 = 1312902231;
  }

  else
  {
    v0 = 1229343063;
  }

  MEMORY[0x24C217D50](95, 0xE100000000000000);

  MEMORY[0x24C217D50](v0, 0xE400000000000000);

  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_24A4AA800();

  return v3;
}

uint64_t FMFDevice.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMFDevice.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_24A457ABC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  if (v2 != 1)
  {
    v4 = 0x6143654D6F747561;
    v3 = 0xED0000656C626170;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (*a2 != 1)
  {
    v8 = 0x6143654D6F747561;
    v7 = 0xED0000656C626170;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A457BC0()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A457C5C()
{
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A457CE4()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A457D7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A458200();
  *a2 = result;
  return result;
}

void sub_24A457DAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (v2 != 1)
  {
    v5 = 0x6143654D6F747561;
    v4 = 0xED0000656C626170;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A457E04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A458200();
  *a1 = result;
  return result;
}

uint64_t sub_24A457E2C(uint64_t a1)
{
  v2 = sub_24A385340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A457E68(uint64_t a1)
{
  v2 = sub_24A385340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static FMFDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_24A4AC270()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_24A4AC270()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t FMFDevice.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_24A4ABF50();

  MEMORY[0x24C217D50](v3, v4);
  MEMORY[0x24C217D50](0x6669746E65646920, 0xED0000203A726569);
  MEMORY[0x24C217D50](v1, v2);
  MEMORY[0x24C217D50](0xD000000000000010, 0x800000024A4B2780);
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v6, v7);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_24A458078(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_24A4AC270()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_24A4AC270()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A45811C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24A458164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A4581AC()
{
  result = qword_27EF40748;
  if (!qword_27EF40748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40748);
  }

  return result;
}

uint64_t sub_24A458200()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for FMFMyLocationRequest()
{
  result = qword_27EF40760;
  if (!qword_27EF40760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A4582E8()
{
  v1 = *(v0 + qword_27EF4E248);
  [v1 coordinate];
  v2 = MEMORY[0x277D839F8];
  v15 = MEMORY[0x277D839F8];
  *&v14 = v3;
  sub_24A3A60B4(&v14, v13);
  v4 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A3A60C4(v13, 0x656475746974616CLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  [v1 coordinate];
  v15 = v2;
  *&v14 = v6;
  sub_24A3A60B4(&v14, v13);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A3A60C4(v13, 0x64757469676E6F6CLL, 0xE900000000000065, v7);
  [v1 horizontalAccuracy];
  v15 = v2;
  *&v14 = v8;
  sub_24A3A60B4(&v14, v13);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A3A60C4(v13, 0xD000000000000012, 0x800000024A4AE0B0, v9);
  [v1 verticalAccuracy];
  v15 = v2;
  *&v14 = v10;
  sub_24A3A60B4(&v14, v13);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A3A60C4(v13, 0xD000000000000010, 0x800000024A4B14B0, v11);
  v15 = sub_24A3C9CEC(&qword_27EF3F800, &unk_24A4B6530);
  *&v14 = v4;
  swift_beginAccess();
  sub_24A3A6CEC(&v14, 0x6E6F697461636F6CLL, 0xE800000000000000);
  return swift_endAccess();
}

uint64_t sub_24A45851C()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return v0;
}

uint64_t sub_24A4585FC()
{
  v0 = *sub_24A45851C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

FMFCore::FMFConfigValue_optional __swiftcall FMFConfigValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A4586B4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = FMFConfigValue.rawValue.getter();
  v4 = v3;
  if (v2 == FMFConfigValue.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24A4AC270();
  }

  return v7 & 1;
}

uint64_t sub_24A458750()
{
  v1 = *v0;
  sub_24A4AC360();
  FMFConfigValue.rawValue.getter();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4587B8()
{
  v2 = *v0;
  FMFConfigValue.rawValue.getter();
  sub_24A4AB8F0();
}

uint64_t sub_24A45881C()
{
  v1 = *v0;
  sub_24A4AC360();
  FMFConfigValue.rawValue.getter();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A45888C@<X0>(unint64_t *a1@<X8>)
{
  result = FMFConfigValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t FMFLocationNotificationsURL.getter()
{
  v0 = sub_24A4AB820();
  v1 = MGGetSInt32Answer();

  v2 = 0xD00000000000005ELL;
  if (v1 == 9)
  {
    v2 = 0xD000000000000056;
  }

  if (v1 == 3)
  {
    return 0xD00000000000005FLL;
  }

  else
  {
    return v2;
  }
}

uint64_t (*FMFGlobalConfigStore.modify())()
{
  if (qword_27EF3EC10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24A458A30()
{
  sub_24A3C9CEC(&qword_27EF40808, &unk_24A4BB7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4B5060;
  *(inited + 32) = 8;
  v1 = MEMORY[0x277D839F8];
  *(inited + 64) = MEMORY[0x277D839F8];
  *(inited + 40) = 0x4034000000000000;
  *(inited + 72) = 9;
  *(inited + 104) = v1;
  *(inited + 80) = 0x404E000000000000;
  *(inited + 112) = 10;
  *(inited + 144) = v1;
  *(inited + 120) = 0x405E000000000000;
  v2 = sub_24A3AD5F4(inited);
  swift_setDeallocating();
  sub_24A3C9CEC(&qword_27EF403A0, &unk_24A4BA180);
  result = swift_arrayDestroy();
  qword_27EF40780 = v2;
  return result;
}

uint64_t (*FMFWaldoGlobalConfigStore.modify())()
{
  if (qword_27EF3EC18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24A458BDC()
{
  sub_24A3C9CEC(&qword_27EF40808, &unk_24A4BB7E0);
  inited = swift_initStackObject();
  *(inited + 32) = 12;
  v1 = inited + 32;
  *(inited + 16) = xmmword_24A4B4E10;
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = 30;
  v2 = sub_24A3AD5F4(inited);
  swift_setDeallocating();
  result = sub_24A37EF2C(v1, &qword_27EF403A0, &unk_24A4BA180);
  qword_27EF40788 = v2;
  return result;
}

uint64_t sub_24A458CA8(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;
}

uint64_t sub_24A458D28(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*FMFDimplekeyGlobalConfigStore.modify())()
{
  if (qword_27EF3EC20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t getEnumTagSinglePayload for FMFConfigValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFConfigValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A459010@<X0>(void *a1@<X8>)
{
  v3 = qword_27EF407C8;
  swift_beginAccess();
  sub_24A37B740(v1 + v3, &v10, &qword_27EF407E0, &unk_24A4BB7D0);
  if (v11)
  {
    return sub_24A37B3F8(&v10, a1);
  }

  sub_24A37EF2C(&v10, &qword_27EF407E0, &unk_24A4BB7D0);
  v5 = sub_24A4AA700();
  v11 = v5;
  v12 = sub_24A37F064(&qword_27EF40910, MEMORY[0x277D08A28]);
  v6 = sub_24A38D3BC(&v10);
  (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D08A08], v5);
  LOBYTE(v5) = sub_24A4AA6C0();
  sub_24A37EEE0(&v10);
  if (v5)
  {
    v7 = type metadata accessor for StewieStateProviderImpl();
    v8 = swift_allocObject();
    v9 = &protocol witness table for StewieStateProviderImpl;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D496C0]) init];
    v7 = sub_24A37B428(0, &qword_27EF40408, 0x277D496C0);
    v9 = &protocol witness table for SPSecureLocationsManager;
  }

  a1[3] = v7;
  a1[4] = v9;
  *a1 = v8;
  sub_24A39997C(a1, &v10);
  swift_beginAccess();
  sub_24A45AB94(&v10, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24A4591F4()
{
  v1 = *(v0 + qword_27EF40798 + 8);

  MEMORY[0x24C219220](v0 + qword_27EF407A0);
  v2 = *(v0 + qword_27EF407A8);

  sub_24A37EF2C(v0 + qword_27EF407B8, &qword_27EF3F650, &qword_24A4B5A10);
  v3 = qword_27EF4E290;
  v4 = sub_24A4AAAD0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_24A3C8470(v0 + qword_27EF4E298);
  sub_24A3C8470(v0 + qword_27EF4E2A0);
  v5 = *(v0 + qword_27EF4E2A8);

  v6 = *(v0 + qword_27EF4E2B0);

  return sub_24A37EF2C(v0 + qword_27EF407C8, &qword_27EF407E0, &unk_24A4BB7D0);
}

uint64_t sub_24A459314()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315138;
    v7 = *(v1 + qword_27EF40798);
    v8 = *(v1 + qword_27EF40798 + 8);

    v9 = sub_24A37E99C(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C217CD0](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A37BD58(v16, v18, &v28);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFServerInteractionController<%s>.deinit", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v20 = sub_24A4AAC90();
  v21 = *(v20 + qword_27EF40798 + 8);

  MEMORY[0x24C219220](v20 + qword_27EF407A0);
  v22 = *(v20 + qword_27EF407A8);

  sub_24A37EF2C(v20 + qword_27EF407B8, &qword_27EF3F650, &qword_24A4B5A10);
  v23 = qword_27EF4E290;
  v24 = sub_24A4AAAD0();
  (*(*(v24 - 8) + 8))(v20 + v23, v24);
  sub_24A3C8470(v20 + qword_27EF4E298);
  sub_24A3C8470(v20 + qword_27EF4E2A0);
  v25 = *(v20 + qword_27EF4E2A8);

  v26 = *(v20 + qword_27EF4E2B0);

  sub_24A37EF2C(v20 + qword_27EF407C8, &qword_27EF407E0, &unk_24A4BB7D0);
  return v20;
}

uint64_t sub_24A4595EC()
{
  v0 = *sub_24A459314();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_24A459640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277D07B80]);
  v8 = sub_24A4AB820();
  v9 = [v7 initWithDescription:v8 andTimeout:120.0];

  sub_24A3A7DF4(a2);
  v17 = type metadata accessor for FMFMyLocationRequest();
  v18 = MEMORY[0x277D07D08];
  v16[0] = a2;
  v15[3] = v17;
  v15[4] = sub_24A37F064(&qword_27EF407E8, type metadata accessor for FMFMyLocationRequest);
  v10 = objc_opt_self();
  swift_retain_n();
  v11 = [v10 processInfo];
  v12 = [v11 processName];

  sub_24A4AB850();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v9;

  v14 = v9;
  sub_24A4AAC70();

  sub_24A37EEE0(v15);
  sub_24A37EEE0(v16);
  [v14 wait];
}

id sub_24A459838(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t, void *), uint64_t a5, void *a6)
{
  if (a3)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A4AB630();
    sub_24A378E18(v9, qword_27EF4E260);
    v10 = a3;
    v11 = sub_24A4AB600();
    v12 = sub_24A4ABCE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v43 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_24A4AC310();
      v17 = sub_24A37BD58(v15, v16, &v43);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_24A376000, v11, v12, "FMFServerInteractionController: didn't complete because of error: %s", v13, 0xCu);
      sub_24A37EEE0(v14);
      MEMORY[0x24C219130](v14, -1, -1);
      MEMORY[0x24C219130](v13, -1, -1);
    }

    a4(0, a3);
    return [a6 signal];
  }

  if (a2 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v19 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v19 != 2)
    {
LABEL_15:
      sub_24A386DFC(a1, a2);
      goto LABEL_17;
    }

    if (*(a1 + 16) == *(a1 + 24))
    {
LABEL_17:
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v20 = sub_24A4AB630();
      sub_24A378E18(v20, qword_27EF4E260);
      v21 = sub_24A4AB600();
      v22 = sub_24A4ABCE0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_24A376000, v21, v22, "FMFServerInteractionController: received empty data", v23, 2u);
        MEMORY[0x24C219130](v23, -1, -1);
      }

      sub_24A45AB40();
      v24 = swift_allocError();
      *v25 = 1;
      a4(0, v24);

      return [a6 signal];
    }

    goto LABEL_24;
  }

  if (v19)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_17;
    }

LABEL_24:
    v26 = a1;
    v27 = a2;
    sub_24A3AE614(a1, a2);
    a1 = v26;
    a2 = v27;
    goto LABEL_25;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_25:
  v28 = a1;
  v29 = a2;
  v30 = sub_24A4AA760();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_24A4AA750();
  type metadata accessor for FMFMyLocationResponse();
  sub_24A37F064(&qword_27EF407F8, type metadata accessor for FMFMyLocationResponse);
  v42 = v29;
  sub_24A4AA740();

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v33 = sub_24A4AB630();
  sub_24A378E18(v33, qword_27EF4E260);

  v34 = sub_24A4AB600();
  v35 = sub_24A4ABCE0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v36 = 136315138;

    v38 = sub_24A4AB870();
    v40 = sub_24A37BD58(v38, v39, &v43);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_24A376000, v34, v35, "FMFServerInteractionController: received response?: %s", v36, 0xCu);
    sub_24A37EEE0(v37);
    MEMORY[0x24C219130](v37, -1, -1);
    MEMORY[0x24C219130](v36, -1, -1);
  }

  a4(v41, 0);

  [a6 signal];
  return sub_24A386DFC(v28, v42);
}

void sub_24A459EF0(id *a1, uint64_t a2)
{
  v3 = v2;
  v84 = a2;
  v5 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v82 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = a1;
  v81 = &v76 - v9;
  v88 = *a1;
  refreshed = type metadata accessor for FMFInitRefreshClientRequest();
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = [v12 bundleForClass_];
  v83 = sub_24A4AA800();
  v87 = v14;

  v15 = [v12 bundleForClass_];
  v16 = sub_24A4AA800();
  v86 = v17;

  v78 = v12;
  v79 = ObjCClassFromMetadata;
  v18 = [v12 bundleForClass_];
  v19 = sub_24A4AA800();
  v85 = v20;

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v21 = sub_24A4AB630();
  sub_24A378E18(v21, qword_27EF4E260);

  v22 = sub_24A4AB600();
  v23 = sub_24A4ABCE0();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v3;
  v77 = v16;
  if (v24)
  {
    v26 = v88;
    v27 = refreshed == v88;
    v28 = swift_slowAlloc();
    *v28 = 67109376;
    *(v28 + 4) = v27;
    *(v28 + 8) = 1024;
    *(v28 + 10) = *(v3 + qword_27EF407C0);

    _os_log_impl(&dword_24A376000, v22, v23, "FMFServerInteractionController: createNetworkAlertIfNeeded: %{BOOL}d %{BOOL}d", v28, 0xEu);
    MEMORY[0x24C219130](v28, -1, -1);

    v29 = v84;
    if (refreshed != v26)
    {
      goto LABEL_8;
    }
  }

  else
  {

    v29 = v84;
    if (refreshed != v88)
    {
      goto LABEL_8;
    }
  }

  if ((*(v25 + qword_27EF407C0) & 1) == 0)
  {

    LOBYTE(v89[0]) = 4;
    v39 = sub_24A423DAC(v89);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_24A45A9E0(v39, Strong);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

LABEL_8:
  if (!v29)
  {
LABEL_18:

    return;
  }

  v30 = sub_24A4AA940();
  v31 = [v30 domain];
  v32 = sub_24A4AB850();
  v34 = v33;

  v35 = *MEMORY[0x277CCA738];
  if (v32 == sub_24A4AB850() && v34 == v36)
  {
  }

  else
  {
    v37 = sub_24A4AC270();

    if ((v37 & 1) == 0)
    {
LABEL_17:

      goto LABEL_18;
    }
  }

  if (refreshed == v88)
  {
    goto LABEL_17;
  }

  v38 = v19;
  if ([v30 code] == -1001 || objc_msgSend(v30, sel_code) == -999 || objc_msgSend(v30, sel_code) == -1005)
  {
    goto LABEL_17;
  }

  v41 = v30;
  v42 = sub_24A4AB600();
  v43 = sub_24A4ABCE0();

  v44 = os_log_type_enabled(v42, v43);
  v88 = v41;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v89[0] = v46;
    *v45 = 136315138;
    v47 = [v41 debugDescription];
    v48 = sub_24A4AB850();
    v50 = v49;

    v51 = sub_24A37BD58(v48, v50, v89);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_24A376000, v42, v43, "FMFServerInteractionController: error received: %s", v45, 0xCu);
    sub_24A37EEE0(v46);
    MEMORY[0x24C219130](v46, -1, -1);
    MEMORY[0x24C219130](v45, -1, -1);
  }

  v52 = v86;
  swift_getErrorValue();
  if (sub_24A3E3E74(v89[2]))
  {

    v54 = v78;
    v53 = v79;
    v55 = [v78 bundleForClass_];
    v83 = sub_24A4AA800();
    v87 = v56;

    v57 = [v54 bundleForClass_];
    v58 = sub_24A4AA800();
    v52 = v59;

    v60 = [v54 bundleForClass_];
    v61 = sub_24A4AA800();
    v63 = v62;
  }

  else
  {
    v63 = v85;
    v58 = v77;
    v61 = v38;
  }

  v64 = sub_24A4AA9D0();
  v65 = *(*(v64 - 8) + 56);
  v66 = v81;
  v65(v81, 1, 1, v64);
  v67 = v82;
  v68 = (v65)(v82, 1, 1, v64);
  if ((*(*v80 + qword_27EF4E0E0 + 192))(v68))
  {
    v69 = 2;
  }

  else
  {
    v69 = 3;
  }

  v70 = type metadata accessor for FMFAlert();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  v73 = swift_allocObject();
  v73[3] = 0;
  swift_unknownObjectWeakInit();
  v73[4] = 0;
  v73[5] = 0;
  v74 = v87;
  v73[6] = v83;
  v73[7] = v74;
  v73[8] = v58;
  v73[9] = v52;
  v73[10] = v61;
  v73[11] = v63;
  v73[12] = 0;
  v73[13] = 0;
  sub_24A3996FC(v66, v73 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL);
  sub_24A3996FC(v67, v73 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL);
  *(v73 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) = v69;
  v75 = swift_unknownObjectWeakLoadStrong();
  if (v75)
  {
    sub_24A45A9E0(v73, v75);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_24A45A8C0()
{
  v1 = sub_24A4AAAD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_24A4AAAC0();
  v7 = qword_27EF4E290;
  swift_beginAccess();
  (*(v2 + 40))(v6 + v7, v5, v1);
  return swift_endAccess();
}

uint64_t sub_24A45A9E0(uint64_t a1, uint64_t a2)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A4AB630();
  sub_24A378E18(v4, qword_27EF4E260);
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFManager: didReceive serverAlert", v7, 2u);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(a2 + 40);
    ObjectType = swift_getObjectType();
    (*(v9 + 104))(a2, a1, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_24A45AB40()
{
  result = qword_27EF407F0;
  if (!qword_27EF407F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF407F0);
  }

  return result;
}

uint64_t sub_24A45AB94(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF407E0, &unk_24A4BB7D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_24A45AC08()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFMyLocationController: Starting to update my location", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager);

  return [v6 startUpdatingLocation];
}

id sub_24A45AD08()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFMyLocationController: Restarting to update my location", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager);
  [v6 stopUpdatingLocation];

  return [v6 startUpdatingLocation];
}

void sub_24A45AE1C(char a1, _BYTE *a2, id a3, void *a4)
{
  if (a1)
  {
    goto LABEL_8;
  }

  if ((a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_accuracyThreshold + 8] & 1) == 0)
  {
    v7 = *&a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_accuracyThreshold];
    [a3 horizontalAccuracy];
    if (v7 <= v8)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v30 = sub_24A4AB630();
      sub_24A378E18(v30, qword_27EF4E260);
      v31 = a3;
      v41 = sub_24A4AB600();
      v32 = sub_24A4ABCE0();

      if (os_log_type_enabled(v41, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134349312;
        [v31 horizontalAccuracy];
        *(v33 + 4) = v34;
        *(v33 + 12) = 2050;
        *(v33 + 14) = v7;
        _os_log_impl(&dword_24A376000, v41, v32, "FMFMyLocationController: Can‘t publish location because accuracy (%{public}f) is worse than threshold (%{public}f)", v33, 0x16u);
        MEMORY[0x24C219130](v33, -1, -1);
      }

      goto LABEL_9;
    }
  }

  v9 = *&a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation];
  if (!v9 || (a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_distanceThreshold + 8] & 1) != 0)
  {
    goto LABEL_8;
  }

  v10 = *&a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_distanceThreshold];
  v11 = v9;
  [v11 distanceFromLocation_];
  if (v12 > v10)
  {

LABEL_8:
    v13 = type metadata accessor for FMFMyLocationRequest();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    *(swift_allocObject() + qword_27EF4E248) = a4;
    v16 = a4;
    v17 = sub_24A3A45B8(0xD000000000000011, 0x800000024A4B2CD0);
    v18 = objc_allocWithZone(MEMORY[0x277D07B80]);
    v19 = sub_24A4AB820();
    v20 = [v18 initWithDescription:v19 andTimeout:120.0];

    v21 = *&a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_interactionController + 24];
    v22 = *&a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_interactionController + 32];
    sub_24A37EACC(&a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_interactionController], v21);
    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = a3;
    v23[4] = v20;
    v23[5] = v16;
    v24 = a3;
    v25 = *(v22 + 72);
    v26 = v24;
    v27 = v16;
    v28 = a2;
    v41 = v20;
    v25(v17, sub_24A45C7E8, v23, v21, v22);

    [v41 wait];

LABEL_9:
    v29 = v41;
    goto LABEL_10;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v35 = sub_24A4AB630();
  sub_24A378E18(v35, qword_27EF4E260);
  v36 = a3;
  v41 = v11;
  v37 = sub_24A4AB600();
  v38 = sub_24A4ABCE0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134349312;
    [v41 distanceFromLocation:v36];
    *(v39 + 4) = v40;
    *(v39 + 12) = 2050;
    *(v39 + 14) = v10;
    _os_log_impl(&dword_24A376000, v37, v38, "FMFMyLocationController: Can‘t publish location because distance (%{public}f) less than threshold (%{public}f)", v39, 0x16u);
    MEMORY[0x24C219130](v39, -1, -1);

    goto LABEL_9;
  }

  v29 = v37;
LABEL_10:
}

id sub_24A45B254(uint64_t a1, void *a2, char *a3, uint64_t *a4, void *a5, void *a6)
{
  v101 = a4;
  v11 = type metadata accessor for FMFLocation();
  v102 = *(v11 - 1);
  v12 = *(v102 + 64);
  MEMORY[0x28223BE20](v11);
  v99 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4AAB20();
  v104 = *(v14 - 8);
  v15 = *(v104 + 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v95 - v22;
  if (a2)
  {
    v96 = v21;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v103 = a5;
    v24 = sub_24A4AB630();
    v25 = sub_24A378E18(v24, qword_27EF4E260);
    v26 = a2;
    v97 = v25;
    v27 = sub_24A4AB600();
    v28 = sub_24A4ABCC0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v100 = v14;
      v31 = a3;
      v32 = v30;
      v111[0] = v30;
      *v29 = 136315138;
      v105[0] = a2;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v33 = sub_24A4ABDE0();
      v35 = sub_24A37BD58(v33, v34, v111);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_24A376000, v27, v28, "Error while getting my location details. Error - %s", v29, 0xCu);
      sub_24A37EEE0(v32);
      v36 = v32;
      a3 = v31;
      v14 = v100;
      MEMORY[0x24C219130](v36, -1, -1);
      MEMORY[0x24C219130](v29, -1, -1);
    }

    v37 = sub_24A4AA700();
    v111[3] = v37;
    v111[4] = sub_24A37EF8C(&qword_27EF40910, MEMORY[0x277D08A28]);
    v38 = sub_24A38D3BC(v111);
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D089E0], v37);
    LOBYTE(v37) = sub_24A4AA6C0();
    sub_24A37EEE0(v111);
    if ((v37 & 1) == 0)
    {
      return [v103 signal];
    }

    v39 = sub_24A3BAFB0(v106);
    *(v23 + 3) = 0;
    v23[32] = 1;
    (*(v104 + 7))(&v23[v11[8]], 1, 1, v14, v39);
    *v23 = 0;
    *(v23 + 1) = 0;
    v23[16] = 0;
    memcpy(v111, v106, 0x130uLL);
    v40 = v101;
    v111[38] = v101;
    LOBYTE(v111[39]) = 0;
    *(&v111[39] + 1) = *v110;
    HIDWORD(v111[39]) = *&v110[3];
    memset(&v111[40], 0, 18);
    *(&v111[42] + 2) = v108;
    HIWORD(v111[42]) = v109;
    v111[43] = 0;
    LOBYTE(v111[44]) = 0;
    nullsub_1(v111);
    memcpy(&v23[v11[11]], v111, 0x161uLL);
    v23[33] = 0;
    v23[v11[9]] = 0;
    v23[v11[10]] = 0;
    v41 = v102;
    (*(v102 + 56))(v23, 0, 1, v11);
    v42 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocation;
    swift_beginAccess();
    v43 = v40;
    sub_24A3C28C8(v23, &a3[v42]);
    swift_endAccess();
    v44 = a3;
    v45 = a3;
    v46 = sub_24A4AB600();
    v47 = sub_24A4ABCE0();

    v48 = os_log_type_enabled(v46, v47);
    v98 = v44;
    if (!v48)
    {
LABEL_19:

      v87 = &v45[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v88 = *(v87 + 1);
        ObjectType = swift_getObjectType();
        sub_24A37B740(v98 + v42, v23, &qword_27EF3F480, &unk_24A4B8C20);
        (*(v88 + 8))(v23, ObjectType, v88);
        swift_unknownObjectRelease();
        sub_24A3C29F0(v23);
      }

      return [v103 signal];
    }

    v104 = v45;
    v49 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v107 = v101;
    *v49 = 136315138;
    v50 = v96;
    sub_24A37B740(&v44[v42], v96, &qword_27EF3F480, &unk_24A4B8C20);
    if ((*(v41 + 48))(v50, 1, v11))
    {
      v51 = 7104878;
      sub_24A3C29F0(v50);
    }

    else
    {
      v83 = v99;
      sub_24A3B4B10(v50, v99);
      sub_24A3C29F0(v50);
      memcpy(v105, (v83 + v11[11]), 0x161uLL);
      if (sub_24A3B9C24(v105) != 1)
      {
        v90 = v105[38];
        v91 = v83;
        v92 = v90;
        sub_24A3B4B74(v91);
        v93 = [v92 description];

        v51 = sub_24A4AB850();
        v84 = v94;

        goto LABEL_18;
      }

      v51 = 7104878;
      sub_24A3B4B74(v83);
    }

    v84 = 0xE300000000000000;
LABEL_18:
    v45 = v104;
    v85 = sub_24A37BD58(v51, v84, &v107);

    *(v49 + 4) = v85;
    _os_log_impl(&dword_24A376000, v46, v47, "FMFMyLocationController: Updated non-server adjusted location to %s", v49, 0xCu);
    v86 = v101;
    sub_24A37EEE0(v101);
    MEMORY[0x24C219130](v86, -1, -1);
    MEMORY[0x24C219130](v49, -1, -1);
    goto LABEL_19;
  }

  if (a1)
  {
    v52 = &a3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_accuracyThreshold];
    *v52 = *(a1 + 376);
    v52[8] = 0;
    v53 = &a3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_distanceThreshold];
    *v53 = *(a1 + 384);
    v53[8] = 0;
    v103 = a5;
    v54 = *&a3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation];
    v55 = v101;
    *&a3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation] = v101;

    v101 = v55;

    v56 = *&a3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_unshiftedLocation];
    *&a3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_unshiftedLocation] = a6;
    v57 = a6;

    v58 = *(a1 + 320);
    memcpy(v105, (a1 + 16), 0x130uLL);
    v59 = *(a1 + 336);
    v98 = a3;
    v99 = v59;
    v60 = *(a1 + 344);
    v61 = v14;
    v100 = v14;
    v62 = *(a1 + 352);
    v63 = *(a1 + 360);
    *(v23 + 3) = 0;
    v23[32] = 1;
    (*(v104 + 7))(&v23[v11[8]], 1, 1, v61);
    *v23 = 0;
    *(v23 + 1) = 0;
    v23[16] = 0;
    memcpy(v111, v105, 0x130uLL);
    v111[38] = v58;
    LOBYTE(v111[39]) = 0;
    *(&v111[39] + 1) = *v110;
    HIDWORD(v111[39]) = *&v110[3];
    v111[40] = v99;
    v111[41] = v60;
    LOWORD(v111[42]) = v62;
    *(&v111[42] + 2) = v108;
    HIWORD(v111[42]) = v109;
    v111[43] = v63;
    LOBYTE(v111[44]) = 0;
    nullsub_1(v111);
    memcpy(&v23[v11[11]], v111, 0x161uLL);
    v23[33] = 0;
    v23[v11[9]] = 0;
    v23[v11[10]] = 0;
    (*(v102 + 56))(v23, 0, 1, v11);
    v64 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myUnshiftedLocation;
    v65 = v98;
    swift_beginAccess();
    v66 = v58;
    sub_24A37B740(v105, v106, &unk_27EF404E0, &unk_24A4B5230);

    sub_24A3C28C8(v23, v65 + v64);
    swift_endAccess();
    v67 = swift_allocObject();
    v68 = v101;
    v67[2] = v65;
    v67[3] = v68;
    v69 = v103;
    v67[4] = a1;
    v67[5] = v69;

    v70 = v68;
    v71 = v66;
    v72 = v69;
    v73 = v65;
    sub_24A4AAB10();
    v74 = sub_24A4AAAF0();
    v76 = v75;
    (*(v104 + 1))(v17, v100);
    type metadata accessor for FMLocationShiftingRequest();
    v77 = swift_allocObject();
    v77[2] = v71;
    v77[3] = v74;
    v77[4] = v76;
    v78 = *&v73[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationShifter];
    sub_24A3C9CEC(&unk_27EF403B0, &qword_24A4BA190);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_24A4BB800;
    *(v79 + 32) = v77;
    v80 = swift_allocObject();
    v80[2] = v71;
    v80[3] = sub_24A3C282C;
    v80[4] = v67;
    v81 = v71;

    sub_24A3BBAB0(v79, sub_24A3C219C, v80);
  }

  else
  {

    return [a5 signal];
  }
}

uint64_t sub_24A45BD48()
{
  v1 = sub_24A4AB690();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A4AB6E0();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocationUpdatingQueue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A45C7C8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A200;
  v10 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v15 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

void sub_24A45C024()
{
  v0 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v29[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for FMFLocation();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocation;
    swift_beginAccess();
    sub_24A3C28C8(v3, v5 + v7);
    swift_endAccess();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = type metadata accessor for FMFLocation();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myUnshiftedLocation;
    swift_beginAccess();
    sub_24A3C28C8(v3, v9 + v11);
    swift_endAccess();
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = &v12[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_accuracyThreshold];
    *v13 = 0;
    v13[8] = 1;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = &v14[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_distanceThreshold];
    *v15 = 0;
    v15[8] = 1;
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = *&v16[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation];
    *&v16[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation] = 0;
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_delegate;
    v20 = v18;
    v21 = swift_unknownObjectWeakLoadStrong();
    v22 = *(v19 + 8);

    if (v21)
    {
      ObjectType = swift_getObjectType();
      v24 = type metadata accessor for FMFLocation();
      (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
      (*(v22 + 8))(v3, ObjectType, v22);
      swift_unknownObjectRelease();
      sub_24A3C29F0(v3);
    }
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v25 = sub_24A4AB630();
  sub_24A378E18(v25, qword_27EF4E260);
  v26 = sub_24A4AB600();
  v27 = sub_24A4ABCE0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_24A376000, v26, v27, "FMFMyLocationController: Invalidated cached location data", v28, 2u);
    MEMORY[0x24C219130](v28, -1, -1);
  }
}

id FMFMyLocationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMFMyLocationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFMyLocationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A45C5FC(void *a1)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = a1;
  oslog = sub_24A4AB600();
  v4 = sub_24A4ABCC0();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_24A4AC310();
    v9 = sub_24A37BD58(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A376000, oslog, v4, "FMFMyLocationController: location manager failed with error: %s", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t FMFNotNowAction.__allocating_init(friend:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_24A423930(a1, v5 + OBJC_IVAR____TtC7FMFCore15FMFNotNowAction_friend);
  *(v5 + 16) = 0;
  return v5;
}

uint64_t FMFNotNowAction.init(friend:)(uint64_t a1)
{
  sub_24A423930(a1, v1 + OBJC_IVAR____TtC7FMFCore15FMFNotNowAction_friend);
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A45C874()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0x3A646E6569726620, 0xE900000000000020);
  type metadata accessor for FMFFriend();
  sub_24A4AC030();
  return 0;
}

uint64_t FMFNotNowAction.__deallocating_deinit()
{
  sub_24A3A16E4(v0 + OBJC_IVAR____TtC7FMFCore15FMFNotNowAction_friend);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFNotNowAction()
{
  result = qword_27EF40918;
  if (!qword_27EF40918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_24A45CB10(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A4AA7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  sub_24A4AA7B0();
  sub_24A4AA7D0();
  v10 = sub_24A45D260(a1, a2, v8);
  v12 = v11;

  (*(v5 + 8))(v8, v4);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    return 1;
  }

  if (v10 != a1 || v12 != a2)
  {
    v15 = sub_24A4AC270();

    return (v15 & 1) == 0;
  }

  return 0;
}

id sub_24A45CCCC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_24A4AB850();
  a4(v5);

  v6 = sub_24A4AB820();

  return v6;
}

id FMPhoneNumberUtil.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMPhoneNumberUtil.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FMPhoneNumberUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A45D034()
{
  result = CPPhoneNumberCopyHomeCountryCode();
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v1 = result;
  v2 = sub_24A4AB850();
  v4 = v3;

  v5 = v4 & 0x2000000000000000;
  v6 = HIBYTE(v4) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    result = CPPhoneNumberCopyActiveCountryCode();
    if (result)
    {
      v9 = result;

      v2 = sub_24A4AB850();
      v11 = v10;

      v5 = v11 & 0x2000000000000000;
      v6 = HIBYTE(v11) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_8:
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (!v12)
  {
    result = CPPhoneNumberCopyNetworkCountryCode();
    if (result)
    {
      v13 = result;

      v2 = sub_24A4AB850();
      v15 = v14;

      v5 = v15 & 0x2000000000000000;
      v6 = HIBYTE(v15) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_14:
  if (v5)
  {
    v16 = v6;
  }

  else
  {
    v16 = v7;
  }

  if (v16)
  {
    goto LABEL_20;
  }

  result = CPPhoneNumberCopyLastKnownNetworkCountryCode();
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v17 = result;

  v2 = sub_24A4AB850();
  v19 = v18;

  v5 = v19 & 0x2000000000000000;
  v6 = HIBYTE(v19) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
LABEL_20:
  if (v5)
  {
    v20 = v6;
  }

  else
  {
    v20 = v7;
  }

  if (!v20)
  {

    return 29557;
  }

  return v2;
}

uint64_t sub_24A45D170(uint64_t a1)
{
  sub_24A45D034();
  v2 = *MEMORY[0x277CBECE8];
  v3 = sub_24A4AB820();
  v4 = sub_24A4AB820();

  v5 = CFPhoneNumberCreate();

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  String = CFPhoneNumberCreateString();
  if (!String)
  {

LABEL_5:

    return a1;
  }

  v8 = String;
  a1 = sub_24A4AB850();

  return a1;
}

uint64_t sub_24A45D260(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v30 = a3;
  v6 = sub_24A4AA7F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = 0xE000000000000000;
  v11 = HIBYTE(a2) & 0xF;
  v34 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v29 = v11;
  if (v11)
  {
    v12 = 0;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v26[1] = v3;
    v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v13 = (v8 + 16);
    v14 = (v8 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_24A4ABF40();
        v18 = v17;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v31[0] = v34;
          v31[1] = v28;
          v16 = v31 + v12;
        }

        else
        {
          v15 = v27;
          if ((v34 & 0x1000000000000000) == 0)
          {
            v15 = sub_24A4ABF90();
          }

          v16 = (v15 + v12);
        }

        v19 = *v16;
        if ((*v16 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v21 = (__clz(v19 ^ 0xFF) - 24);
        if (v21 <= 2)
        {
          if (v21 != 1)
          {
            v22 = v16[1] & 0x3F | ((v19 & 0x1F) << 6);
            v18 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v18 = 1;
          goto LABEL_15;
        }

        if (v21 == 3)
        {
          v23 = ((v19 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3Fu;
          v18 = 3;
        }

        else
        {
          v24 = ((v19 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3Fu;
          v18 = 4;
        }
      }

LABEL_15:
      (*v13)(v10, v30, v6);
      v20 = sub_24A4AA7E0();
      (*v14)(v10, v6);
      if (v20)
      {
        sub_24A4AB8D0();
      }

      v12 += v18;
      if (v12 >= v29)
      {
        return v32;
      }
    }
  }

  return 0;
}

uint64_t sub_24A45D4E4(uint64_t a1)
{
  if (qword_27EF3EBC0 != -1)
  {
    swift_once();
  }

  v2 = qword_27EF4E198;
  v3 = sub_24A4AB820();
  LOBYTE(v2) = [v2 evaluateWithObject_];

  if (v2)
  {
  }

  else
  {
    a1 = sub_24A45D170(a1);
    v5 = v4;

    v6 = sub_24A4AB9C0();

    if ((v6 & 1) == 0 && sub_24A4AB910() >= 2)
    {
      MEMORY[0x24C217D50](a1, v5);

      return 43;
    }
  }

  return a1;
}

unint64_t FMDemoManager.DemoContext.assetFilename.getter()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

unint64_t FMDemoManager.DemoContext.userDefaultsKey.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *v0;
  return result;
}

uint64_t FMDemoManager.DemoContext.hashValue.getter()
{
  v1 = *v0;
  sub_24A4AC360();
  MEMORY[0x24C218780](v1);
  return sub_24A4AC3A0();
}

id static FMDemoManager.hasDemoModeUserDefault(for:)(_BYTE *a1)
{
  *a1;
  *a1;
  v1 = objc_opt_self();
  v2 = sub_24A4AB820();

  v3 = sub_24A4AB820();
  v4 = [v1 BOOLForKey:v2 inDomain:v3];

  return v4;
}

void sub_24A45D81C()
{
  type metadata accessor for FMDemoManager();
  v4 = 1;
  if (static FMDemoManager.hasDemoModeAsset(for:)(&v4))
  {
    v0 = objc_opt_self();
    v1 = sub_24A4AB820();
    v2 = sub_24A4AB820();
    v3 = [v0 BOOLForKey:v1 inDomain:v2];
  }

  else
  {
    v3 = 0;
  }

  byte_27EF40929 = v3;
}

uint64_t sub_24A45D90C(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

unint64_t sub_24A45D970()
{
  result = qword_27EF40950;
  if (!qword_27EF40950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40950);
  }

  return result;
}

unint64_t sub_24A45DA00()
{
  result = qword_27EF40958;
  if (!qword_27EF40958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40958);
  }

  return result;
}

uint64_t static FMDiskIO.getOrCreateCacheKey<A>(account:service:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a6;
  v11 = sub_24A4AA710();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4AAD10();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AACE0();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a5[11];
  v23 = a5[12];
  v24 = a5[10];
  v60 = type metadata accessor for FMDiskIO.KeyPair();
  v58 = *(v60 - 8);
  v25 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v49 - v28;
  v51 = a1;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v30 = sub_24A4AA730();
  v32 = v31;
  if (v31 >> 60 == 15)
  {
    type metadata accessor for FMDiskIO.FMDiskIOError();
    swift_getWitnessTable();
    v61 = swift_allocError();
    swift_willThrow();
  }

  else
  {
    v43 = v30;
    v44 = sub_24A4AA830();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    sub_24A4AA820();
    v61 = 0;
    swift_getWitnessTable();
    v47 = v61;
    sub_24A4AA810();
    if (!v47)
    {
      sub_24A386DFC(v43, v32);

      v36 = v60;
      return (*(v58 + 32))(v59, v29, v36);
    }

    v61 = v47;
    sub_24A386DFC(v43, v32);
  }

  sub_24A4AACD0();
  sub_24A4AAD00();
  v29 = v57;
  sub_24A45E5FC(v21, v17, v57);
  v33 = sub_24A4AA860();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_24A4AA850();
  v36 = v60;
  swift_getWitnessTable();
  v37 = sub_24A4AA840();
  v39 = v38;

  v62 = v37;
  v63 = v39;
  v41 = v55;
  v40 = v56;
  v42 = v50;
  (*(v55 + 104))(v50, *MEMORY[0x277D08A30], v56);
  sub_24A454A64();
  sub_24A4AA720();
  (*(v41 + 8))(v42, v40);

  sub_24A386E10(v37, v39);
  return (*(v58 + 32))(v59, v29, v36);
}

uint64_t FMDiskIO.__allocating_init(root:fileName:keyPair:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  FMDiskIO.init(root:fileName:keyPair:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t sub_24A45E0DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965;
  if (v4 || (sub_24A4AC270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697274656D6D7973 && a2 == 0xEC00000079654B63)
  {

    return 1;
  }

  else
  {
    v6 = sub_24A4AC270();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24A45E1EC(char a1)
{
  sub_24A4AC360();
  MEMORY[0x24C218780](a1 & 1);
  return sub_24A4AC3A0();
}

BOOL sub_24A45E234(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_24A45E1B4(*a1, *a2);
}

uint64_t sub_24A45E24C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_24A45E1EC(*v1);
}

uint64_t sub_24A45E260(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_24A45E1C4(a1, *v2);
}

uint64_t sub_24A45E274(uint64_t a1, void *a2)
{
  sub_24A4AC360();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_24A45E1C4(v8, *v2);
  return sub_24A4AC3A0();
}

uint64_t sub_24A45E2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_24A45E0DC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_24A45E2F4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_24A4615EC();
  *a2 = result;
  return result;
}

uint64_t sub_24A45E328(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24A45E37C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t FMDiskIO.KeyPair.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  type metadata accessor for FMDiskIO.KeyPair.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_24A4AC210();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A4AC3D0();
  v18 = 0;
  sub_24A4AACE0();
  sub_24A386C30(&qword_27EF40960, MEMORY[0x277D08EF0]);
  v13 = v16[1];
  sub_24A4AC1F0();
  if (!v13)
  {
    v14 = *(a2 + 44);
    v17 = 1;
    sub_24A4AAD10();
    sub_24A386C30(&qword_27EF40968, MEMORY[0x277D08F08]);
    sub_24A4AC1F0();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_24A45E5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A4AACE0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for FMDiskIO.KeyPair() + 44);
  v8 = sub_24A4AAD10();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_24A45E6F4()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];

  MEMORY[0x24C217D50](v1, v2);
  return v4;
}

char *FMDiskIO.init(root:fileName:keyPair:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a3;
  v38 = a5;
  v33 = a4;
  v34 = a1;
  v7 = *v5;
  v35 = a2;
  v36 = v7;
  v32 = sub_24A4ABD50();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A4ABD10();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_24A4AB6E0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_24A3785D4();
  v31[0] = "FriendCacheData.data";
  v31[1] = v16;
  sub_24A4AB6B0();
  v39 = MEMORY[0x277D84F90];
  sub_24A386C30(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v32);
  *(v5 + 2) = sub_24A4ABD90();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A4AB630();
  sub_24A378E18(v17, qword_27EF4E260);
  v18 = v33;

  v19 = sub_24A4AB600();
  v20 = sub_24A4ABCE0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39 = v22;
    *v21 = 136315138;
    v23 = v37;
    *(v21 + 4) = sub_24A37BD58(v37, v18, &v39);
    _os_log_impl(&dword_24A376000, v19, v20, "FMDiskIO: init with file name: %s", v21, 0xCu);
    sub_24A37EEE0(v22);
    MEMORY[0x24C219130](v22, -1, -1);
    MEMORY[0x24C219130](v21, -1, -1);
  }

  else
  {

    v23 = v37;
  }

  v24 = v35;
  *(v6 + 3) = v34;
  *(v6 + 4) = v24;
  *(v6 + 5) = v23;
  *(v6 + 6) = v18;
  v25 = *(*v6 + 128);
  v26 = v36[10];
  v27 = v36[11];
  v28 = v36[12];
  type metadata accessor for FMDiskIO.KeyPair();
  v29 = sub_24A4ABDF0();
  (*(*(v29 - 8) + 32))(&v6[v25], v38, v29);
  return v6;
}

uint64_t sub_24A45EB5C(uint64_t a1)
{
  result = sub_24A4600F8();
  if ((result & 1) == 0)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v3 = sub_24A4AB630();
    sub_24A378E18(v3, qword_27EF4E260);
    v4 = sub_24A4AB600();
    v5 = sub_24A4ABCE0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24A376000, v4, v5, "FMDiskIO: creating to disk", v6, 2u);
      MEMORY[0x24C219130](v6, -1, -1);
    }

    return sub_24A45EC74(a1);
  }

  return result;
}

uint64_t sub_24A45EC74(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v36 = v4;
  v5 = sub_24A4AB690();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A4AB6E0();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 80);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A4AB630();
  sub_24A378E18(v19, qword_27EF4E260);
  v20 = sub_24A4AB600();
  v21 = sub_24A4ABCE0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35 = v12;
    v23 = v8;
    v24 = a1;
    v25 = v22;
    *v22 = 0;
    _os_log_impl(&dword_24A376000, v20, v21, "FMDiskIO: save to disk", v22, 2u);
    v26 = v25;
    a1 = v24;
    v8 = v23;
    v12 = v35;
    MEMORY[0x24C219130](v26, -1, -1);
  }

  v27 = v2[2];
  (*(v14 + 16))(v18, a1, v13);
  v28 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = v13;
  v30 = v36;
  *(v29 + 3) = *(v36 + 88);
  *(v29 + 4) = *(v30 + 96);
  *(v29 + 5) = v2;
  (*(v14 + 32))(&v29[v28], v18, v13);
  aBlock[4] = sub_24A461448;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A4D8;
  v31 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v41 = MEMORY[0x277D84F90];
  sub_24A386C30(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v32 = v40;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v12, v8, v31);
  _Block_release(v31);
  (*(v39 + 8))(v8, v32);
  (*(v37 + 8))(v12, v38);
}

uint64_t sub_24A45F108(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = aBlock - v7;
  v9 = v1[2];
  (*(v4 + 16))(aBlock - v7, v6);
  v10 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v3;
  *(v11 + 3) = *(v2 + 88);
  *(v11 + 4) = *(v2 + 96);
  *(v11 + 5) = v1;
  (*(v4 + 32))(&v11[v10], v8, v3);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_24A4615FC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_24A37CE34;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A37CDDC;
  aBlock[3] = &unk_285D8A550;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

void sub_24A45F35C(uint64_t a1)
{
  v3 = MEMORY[0x24C2189A0]();
  sub_24A45F3B8(v1, a1);

  objc_autoreleasePoolPop(v3);
}

void sub_24A45F3B8(char *a1, uint64_t a2)
{
  v111 = a2;
  v2 = a1;
  v114[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v100 = sub_24A4AAD30();
  v99 = *(v100 - 8);
  v4 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v101 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v3[11];
  v7 = v3[12];
  v110 = v3[10];
  v8 = type metadata accessor for FMDiskIO.KeyPair();
  v105 = sub_24A4ABDF0();
  v104 = *(v105 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v98 - v10;
  v106 = v8;
  v107 = *(v8 - 8);
  v11 = *(v107 + 64);
  MEMORY[0x28223BE20](v12);
  v102 = &v98 - v13;
  v14 = sub_24A4AA9D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = 0;
  v109 = objc_opt_self();
  v19 = [v109 defaultManager];
  v20 = *(v2 + 3);
  v21 = *(v2 + 4);
  v108 = v2;
  v22 = sub_24A4AB820();
  LOBYTE(v2) = [v19 fileExistsAtPath:v22 isDirectory:&v113];

  if (v2)
  {
LABEL_4:
    v27 = sub_24A4AA860();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_24A4AA850();
    v31 = v112;
    v32 = sub_24A4AA840();
    if (v31)
    {

      v34 = v31;
LABEL_21:
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v79 = sub_24A4AB630();
      sub_24A378E18(v79, qword_27EF4E260);
      v80 = v34;
      v81 = sub_24A4AB600();
      v82 = sub_24A4ABCC0();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v114[0] = v84;
        *v83 = 136315138;
        swift_getErrorValue();
        v85 = sub_24A4AC310();
        v87 = sub_24A37BD58(v85, v86, v114);

        *(v83 + 4) = v87;
        _os_log_impl(&dword_24A376000, v81, v82, "FMDiskIO: Could not save objects to disk %s", v83, 0xCu);
        sub_24A37EEE0(v84);
        MEMORY[0x24C219130](v84, -1, -1);
        MEMORY[0x24C219130](v83, -1, -1);
      }

      else
      {
      }

      goto LABEL_33;
    }

    v35 = v32;
    v112 = v30;
    v36 = v33;
    v37 = v104;
    v38 = v103;
    v39 = v105;
    (*(v104 + 16))(v103, &v108[*(*v108 + 128)], v105);
    v40 = v107;
    v41 = v106;
    if ((*(v107 + 48))(v38, 1, v106) == 1)
    {
      (*(v37 + 8))(v38, v39);
      v42 = v36;
      v43 = sub_24A4AAA00();
      sub_24A45E6F4();
      v44 = sub_24A4AB820();

      v45 = [v43 writeToFile:v44 atomically:1];

      if (v45)
      {
LABEL_8:
        v111 = v35;
        v46 = [v109 defaultManager];
        sub_24A3C9CEC(&qword_27EF40598, &unk_24A4BACB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A4B4E10;
        v48 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v49 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v50;
        *(inited + 40) = v49;
        v51 = v48;
        v52 = v49;
        sub_24A3A9E3C(inited);
        swift_setDeallocating();
        sub_24A37EF2C(inited + 32, &qword_27EF40358, &qword_24A4BA148);
        type metadata accessor for FileAttributeKey(0);
        sub_24A386C30(&qword_27EF3EDE0, type metadata accessor for FileAttributeKey);
        v53 = sub_24A4AB760();

        sub_24A45E6F4();
        v54 = sub_24A4AB820();

        v114[0] = 0;
        LODWORD(v49) = [v46 setAttributes:v53 ofItemAtPath:v54 error:v114];

        if (!v49)
        {
          v78 = v114[0];
          v34 = sub_24A4AA950();

          swift_willThrow();
          sub_24A386E10(v111, v42);

          goto LABEL_21;
        }

        v55 = qword_27EF3EBF8;
        v56 = v114[0];
        if (v55 != -1)
        {
          swift_once();
        }

        v57 = sub_24A4AB630();
        sub_24A378E18(v57, qword_27EF4E260);

        v58 = sub_24A4AB600();
        v59 = sub_24A4ABCE0();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v114[0] = v61;
          *v60 = 136315138;
          v62 = sub_24A45E6F4();
          v64 = sub_24A37BD58(v62, v63, v114);

          *(v60 + 4) = v64;
          _os_log_impl(&dword_24A376000, v58, v59, "FMDiskIO: Successfully wrote object to disk @ %s", v60, 0xCu);
          sub_24A37EEE0(v61);
          MEMORY[0x24C219130](v61, -1, -1);
          MEMORY[0x24C219130](v60, -1, -1);
        }

        sub_24A386E10(v111, v42);

LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
      v75 = v102;
      (*(v40 + 32))(v102, v38, v41);
      v76 = &v75[*(v41 + 44)];
      sub_24A4AACF0();
      v42 = v36;
      sub_24A386C30(&qword_27EF405A0, MEMORY[0x277D08F20]);
      v77 = v100;
      v88 = sub_24A4AA840();
      v90 = v89;
      v91 = sub_24A4AAA00();
      sub_24A386E10(v88, v90);
      sub_24A45E6F4();
      v92 = sub_24A4AB820();

      LODWORD(v88) = [v91 writeToFile:v92 atomically:1];

      (*(v99 + 8))(v101, v77);
      (*(v107 + 8))(v102, v106);
      if (v88)
      {
        goto LABEL_8;
      }
    }

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v93 = sub_24A4AB630();
    sub_24A378E18(v93, qword_27EF4E260);
    v94 = sub_24A4AB600();
    v95 = sub_24A4ABCE0();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_24A376000, v94, v95, "FMDiskIO: Could not save objects to disk", v96, 2u);
      MEMORY[0x24C219130](v96, -1, -1);
    }

    sub_24A386E10(v35, v42);

    goto LABEL_32;
  }

  v23 = [v109 defaultManager];
  sub_24A4AA970();
  v24 = sub_24A4AA980();
  (*(v15 + 8))(v18, v14);
  v114[0] = 0;
  v25 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v114];

  if (v25)
  {
    v26 = v114[0];
    goto LABEL_4;
  }

  v65 = v114[0];
  v66 = sub_24A4AA950();

  swift_willThrow();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v67 = sub_24A4AB630();
  sub_24A378E18(v67, qword_27EF4E260);

  v68 = sub_24A4AB600();
  v69 = sub_24A4ABCE0();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v114[0] = v71;
    *v70 = 136315138;
    v72 = sub_24A45E6F4();
    v74 = sub_24A37BD58(v72, v73, v114);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_24A376000, v68, v69, "FMDiskIO: Could not create directory for content: %s", v70, 0xCu);
    sub_24A37EEE0(v71);
    MEMORY[0x24C219130](v71, -1, -1);
    MEMORY[0x24C219130](v70, -1, -1);
  }

LABEL_33:
  v97 = *MEMORY[0x277D85DE8];
}

id sub_24A4600F8()
{
  v0 = [objc_opt_self() defaultManager];
  sub_24A45E6F4();
  v1 = sub_24A4AB820();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

uint64_t sub_24A46017C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = sub_24A4ABDF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_24A460300(&v13 - v9);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v10, 1, v5) != 1)
  {
    return (*(v11 + 32))(a2, v10, v5);
  }

  (*(v7 + 8))(v10, v6);
  sub_24A45EC74(a1);
  return (*(v11 + 16))(a2, a1, v5);
}

uint64_t sub_24A460300@<X0>(uint64_t a1@<X8>)
{
  (*(*(*(*v1 + 80) - 8) + 56))(a1, 1, 1);
  v3 = v1[2];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24A4614A8;
  *(v5 + 24) = v4;
  v9[4] = sub_24A37CE3C;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A37CDDC;
  v9[3] = &unk_285D8A5C8;
  v6 = _Block_copy(v9);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_24A46049C(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = *a1;
  v4 = sub_24A4AACB0();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = &v75[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_24A4AAD30();
  v83 = *(v92 - 8);
  v7 = *(v83 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v3[10];
  v86 = sub_24A4ABDF0();
  v85 = *(v86 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v81 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v88 = &v75[-v13];
  v14 = v3[11];
  v15 = v3[12];
  v91 = v9;
  v89 = v14;
  v16 = type metadata accessor for FMDiskIO.KeyPair();
  v17 = sub_24A4ABDF0();
  v93 = *(v17 - 8);
  v94 = v17;
  v18 = *(v93 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v75[-v19];
  v96 = *(v16 - 8);
  v21 = *(v96 + 64);
  MEMORY[0x28223BE20](v22);
  v95 = &v75[-v23];
  v24 = sub_24A4AA9D0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v75[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v29 = sub_24A4AB630();
  v97 = sub_24A378E18(v29, qword_27EF4E260);
  v30 = sub_24A4AB600();
  v31 = sub_24A4ABCE0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_24A376000, v30, v31, "FMDiskIO: read from disk", v32, 2u);
    MEMORY[0x24C219130](v32, -1, -1);
  }

  if (sub_24A4600F8())
  {
    v80 = v4;
    sub_24A45E6F4();
    sub_24A4AA970();

    v40 = sub_24A4AA9E0();
    v42 = v41;
    (*(v25 + 8))(v28, v24);

    sub_24A380530(v40, v42);
    v43 = sub_24A4AB600();
    v44 = sub_24A4ABCE0();

    sub_24A386E10(v40, v42);
    v45 = os_log_type_enabled(v43, v44);
    v79 = v42;
    v78 = v40;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v98 = v77;
      *v46 = 136315394;
      v76 = v44;
      v47 = sub_24A45E6F4();
      v49 = sub_24A37BD58(v47, v48, &v98);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      v50 = sub_24A4AA9F0();
      v52 = sub_24A37BD58(v50, v51, &v98);

      *(v46 + 14) = v52;
      _os_log_impl(&dword_24A376000, v43, v76, "FMDiskIO: file: %s data: %s", v46, 0x16u);
      v53 = v77;
      swift_arrayDestroy();
      MEMORY[0x24C219130](v53, -1, -1);
      MEMORY[0x24C219130](v46, -1, -1);
    }

    v54 = v96;
    v55 = v93;
    v56 = sub_24A4AA830();
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    swift_allocObject();
    sub_24A4AA820();
    v59 = v94;
    (*(v55 + 16))(v20, a1 + *(*a1 + 128), v94);
    v60 = (*(v54 + 48))(v20, 1, v16);
    v61 = v80;
    if (v60 == 1)
    {
      (*(v55 + 8))(v20, v59);
      v62 = v88;
      v63 = v91;
      v64 = v78;
      v65 = v79;
      sub_24A4AA810();
      sub_24A386E10(v64, v65);

      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    }

    else
    {
      (*(v54 + 32))(v95, v20, v16);
      sub_24A386C30(&qword_27EF405B8, MEMORY[0x277D08F20]);
      sub_24A4AA810();
      v66 = *(v16 + 44);
      v67 = v82;
      sub_24A4AACC0();
      v68 = v67;
      v69 = sub_24A4AAD20();
      v71 = v70;
      (*(v84 + 8))(v68, v61);
      v62 = v81;
      v72 = v91;
      sub_24A4AA810();
      v73 = (v83 + 8);
      v74 = (v96 + 8);
      sub_24A386E10(v69, v71);

      sub_24A386E10(v78, v79);
      (*v73)(v90, v92);
      (*v74)(v95, v16);
      (*(*(v72 - 8) + 56))(v62, 0, 1, v72);
    }

    (*(v85 + 40))(v87, v62, v86);
  }

  else
  {

    v97 = sub_24A4AB600();
    v33 = sub_24A4ABCC0();

    if (os_log_type_enabled(v97, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v98 = v35;
      *v34 = 136315138;
      v36 = sub_24A45E6F4();
      v38 = sub_24A37BD58(v36, v37, &v98);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_24A376000, v97, v33, "FMDiskIO: Disk archive does not exist at: %s", v34, 0xCu);
      sub_24A37EEE0(v35);
      MEMORY[0x24C219130](v35, -1, -1);
      MEMORY[0x24C219130](v34, -1, -1);
    }

    else
    {
      v39 = v97;
    }
  }
}

uint64_t FMDiskIO.deinit()
{
  v1 = *v0;

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(*v0 + 128);
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  type metadata accessor for FMDiskIO.KeyPair();
  v8 = sub_24A4ABDF0();
  (*(*(v8 - 8) + 8))(v0 + v4, v8);
  return v0;
}

uint64_t FMDiskIO.__deallocating_deinit()
{
  FMDiskIO.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A461384(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_24A4613BC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

void sub_24A46144C()
{
  v1 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80));
  v2 = *(v0 + 40);
  sub_24A45F35C(v1);
}

uint64_t sub_24A461614@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A4AC0C0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_24A461674@<X0>(char *a1@<X8>)
{
  v2 = sub_24A4AC0C0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24A4616D8(uint64_t a1)
{
  v2 = sub_24A461B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A461714(uint64_t a1)
{
  v2 = sub_24A461B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A461750(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_24A3C9CEC(&qword_27EF40B90, &qword_24A4BBE10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A461B70();
  sub_24A4AC3D0();
  v16 = 0;
  sub_24A4AC1B0();
  if (!v4)
  {
    v15 = 1;
    sub_24A4AC1C0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_24A4618E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24A461998(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_24A461938(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_24A4AC270();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_24A461998(uint64_t *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF40B80, &qword_24A4BBE08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A461B70();
  sub_24A4AC3C0();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_24A4AC120();
    v10[14] = 1;
    sub_24A4AC130();
    (*(v4 + 8))(v7, v3);
  }

  sub_24A37EEE0(a1);
  return v8;
}

unint64_t sub_24A461B70()
{
  result = qword_27EF40B88;
  if (!qword_27EF40B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40B88);
  }

  return result;
}

unint64_t sub_24A461BD8()
{
  result = qword_27EF40B98;
  if (!qword_27EF40B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40B98);
  }

  return result;
}

unint64_t sub_24A461C30()
{
  result = qword_27EF40BA0;
  if (!qword_27EF40BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40BA0);
  }

  return result;
}

unint64_t sub_24A461C88()
{
  result = qword_27EF40BA8;
  if (!qword_27EF40BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40BA8);
  }

  return result;
}

uint64_t FMFAskToFollowAction.__allocating_init(friend:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_24A423930(a1, v5 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend);
  *(v5 + 16) = 0;
  return v5;
}

uint64_t FMFAskToFollowAction.init(friend:)(uint64_t a1)
{
  sub_24A423930(a1, v1 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend);
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A461D58()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0x3A646E6569726620, 0xE900000000000020);
  type metadata accessor for FMFFriend();
  sub_24A4AC030();
  return 0;
}

uint64_t FMFAskToFollowAction.__deallocating_deinit()
{
  sub_24A3A16E4(v0 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFAskToFollowAction()
{
  result = qword_27EF40BB0;
  if (!qword_27EF40BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall CLLocation.fmifIsNearBy(_:inBTRangeDistanceInMeters:)(CLLocation _, Swift::Double inBTRangeDistanceInMeters)
{
  isa = _.super.isa;
  [v2 distanceFromLocation_];
  v6 = v5;
  [v2 horizontalAccuracy];
  v8 = v7;
  [(objc_class *)isa horizontalAccuracy];
  return v6 / sqrt(inBTRangeDistanceInMeters * inBTRangeDistanceInMeters + v8 * v8 + v9 * v9) < 1.5;
}

void sub_24A462090(void *a1)
{
  v2 = sub_24A4AAAD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 coordinate];
  v9 = v8;
  [a1 coordinate];
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGEOCoordinate_];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [a1 timestamp];
  sub_24A4AAAA0();

  sub_24A4AAA90();
  v15 = v14;
  (*(v3 + 8))(v7, v2);
  [v12 setTimestamp_];
  [a1 horizontalAccuracy];
  [v12 setHorizontalAccuracy_];
  [a1 verticalAccuracy];
  [v12 setVerticalAccuracy_];
  [a1 course];
  [v12 setCourse_];
  [a1 courseAccuracy];
  [v12 setCourseAccuracy_];
  [a1 speed];
  [v12 setSpeed_];
  [a1 speedAccuracy];
  [v12 setSpeedAccuracy_];
  [a1 altitude];
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v16 <= -2147483650.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v16 >= 2147483650.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v12 setAltitude_];
  v17 = [a1 floor];
  if (!v17)
  {
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v18 = v17;
  v19 = [v17 level];

  if (v19 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v19 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  [v12 setLevelOrdinal_];
  v20 = [a1 referenceFrame];
  if (v20 > 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = dword_24A4BBFA8[v20];
  }

  [v12 setReferenceFrame_];
}

uint64_t sub_24A4623D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_24A3DBF08(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_24A4ABEA0();
  v7 = result;
  v8 = 0;
  v25 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 24 * v7);
    v12 = v11[1];
    v24 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_24A3DBF08((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 24 * v13;
    *(v15 + 32) = v24;
    *(v15 + 40) = v12;
    *(v15 + 48) = 1;
    *(v15 + 50) = 0;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_24A406830(v7, v25, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_24A406830(v7, v25, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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
  return result;
}

uint64_t sub_24A462638(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_24A3DBDA8(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_24A4ABEA0();
  v7 = result;
  v8 = 0;
  v25 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 24 * v7);
    v12 = v11[1];
    v24 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_24A3DBDA8((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v24;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_24A406830(v7, v25, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_24A406830(v7, v25, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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
  return result;
}

uint64_t sub_24A462880(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_24A3DBEE8(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_24A4ABEA0();
  v7 = result;
  v8 = 0;
  v25 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 24 * v7);
    v12 = v11[1];
    v24 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_24A3DBEE8((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v24;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_24A406830(v7, v25, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_24A406830(v7, v25, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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
  return result;
}

uint64_t sub_24A462AC8(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        return 6515827;
      }

      if (a1 == 2)
      {
        return 0x6174537469736976;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 3)
    {
      return 0x6165627472616568;
    }

    else
    {
      return 0x65646E6174737962;
    }
  }

  else
  {
    if (a1 > 6)
    {
      switch(a1)
      {
        case 7:
          return 1702259052;
        case 8:
          return 0x656977657473;
        case 100:
          return 0x6F4C79636167656CLL;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 5)
    {
      return 0x646E616D65446E6FLL;
    }

    else
    {
      return 0x776F6C6C616873;
    }
  }
}

uint64_t sub_24A462C1C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_24A4AC360();

    sub_24A4AB8F0();
    v17 = sub_24A4AC3A0();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A462DD4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v29 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v36 = a2 + 56;
  v30 = v6;
  v31 = result;
  v33 = a2;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
    v7 = __clz(__rbit64(v5));
    v32 = (v5 - 1) & v5;
LABEL_13:
    v10 = *(result + 48) + 24 * (v7 | (v2 << 6));
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 17);
    v15 = *(v10 + 18);
    v16 = *(a2 + 40);
    v17 = a2;
    sub_24A4AC360();

    sub_24A4AB8F0();
    v35 = v13;
    sub_24A4AC380();
    v34 = v14;
    sub_24A4AC380();
    v18 = v15;
    sub_24A4AC380();
    v19 = sub_24A4AC3A0();
    v20 = -1 << *(v17 + 32);
    v21 = v19 & ~v20;
    if (((*(v36 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_26:

      return 0;
    }

    v22 = ~v20;
    v23 = *(v33 + 48);
    while (1)
    {
      v24 = v23 + 24 * v21;
      v25 = *(v24 + 16);
      v26 = *(v24 + 17);
      v27 = v18 ^ *(v24 + 18);
      if (*v24 == v12 && *(v24 + 8) == v11)
      {
        break;
      }

      if (!((v35 ^ v25) & 1 | ((sub_24A4AC270() & 1) == 0) | ((v34 ^ v26) | v27) & 1))
      {
        goto LABEL_23;
      }

LABEL_16:
      v21 = (v21 + 1) & v22;
      if (((*(v36 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if ((v35 ^ v25 | v34 ^ v26 | v27))
    {
      goto LABEL_16;
    }

LABEL_23:

    v6 = v30;
    result = v31;
    v5 = v32;
    a2 = v33;
  }

  while (v32);
LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v29 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v32 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A463040(char a1)
{
  if (qword_27EF3EC10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_27EF40778;
  if (*(off_27EF40778 + 2) && (v3 = sub_24A3AE6B8(a1), (v4 & 1) != 0))
  {
    sub_24A37EE84(v2[7] + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  swift_endAccess();
  sub_24A3C9CEC(&qword_27EF3F808, &unk_24A4BA6D0);
  return swift_dynamicCast();
}

uint64_t sub_24A463148()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  sub_24A4AC360();
  sub_24A4AB8F0();
  sub_24A4AC380();
  sub_24A4AC380();
  sub_24A4AC380();
  return sub_24A4AC3A0();
}

uint64_t sub_24A4631D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  sub_24A4AB8F0();
  sub_24A4AC380();
  sub_24A4AC380();
  return sub_24A4AC380();
}

uint64_t sub_24A463234()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  sub_24A4AC360();
  sub_24A4AB8F0();
  sub_24A4AC380();
  sub_24A4AC380();
  sub_24A4AC380();
  return sub_24A4AC3A0();
}

uint64_t sub_24A4632BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 18);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
    if (v2 != v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = sub_24A4AC270();
  result = 0;
  if ((v9 & 1) != 0 && ((v2 ^ v5) & 1) == 0)
  {
LABEL_9:
    if (((v3 ^ v6) & 1) == 0)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return result;
}

uint64_t SPSecureLocationPublishReason.description.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        return 6515827;
      }

      if (a1 == 2)
      {
        return 0x6174537469736976;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 3)
    {
      return 0x6165627472616568;
    }

    else
    {
      return 0x65646E6174737962;
    }
  }

  else
  {
    if (a1 > 6)
    {
      switch(a1)
      {
        case 7:
          return 1702259052;
        case 8:
          return 0x656977657473;
        case 100:
          return 0x6F4C79636167656CLL;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 5)
    {
      return 0x646E616D65446E6FLL;
    }

    else
    {
      return 0x776F6C6C616873;
    }
  }
}

uint64_t sub_24A463580(uint64_t a1, void *a2)
{
  v3 = v2;
  v43 = a1;
  v44 = a2;
  v40 = sub_24A4ABD50();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v40);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4ABD10();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24A4AB6E0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = MEMORY[0x277D84FA0];
  *(v2 + 32) = MEMORY[0x277D84FA0];
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = v12;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = v12;
  *(v2 + 88) = v12;
  v13 = MEMORY[0x277D84F98];
  *(v2 + 96) = MEMORY[0x277D84F98];
  *(v2 + 104) = v13;
  *(v2 + 112) = v13;
  *(v2 + 120) = 0;
  type metadata accessor for FMLocationShifter();
  swift_allocObject();
  *(v2 + 128) = FMLocationShifter.init()();
  v14 = sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v41 = "v16@?0@NSArray8";
  v42 = v14;
  sub_24A4AB6B0();
  v45 = MEMORY[0x277D84F90];
  v39[3] = sub_24A37EFD4(&qword_27EF402C0, MEMORY[0x277D85230]);
  v39[2] = sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  v15 = *MEMORY[0x277D85260];
  v16 = v4 + 104;
  v17 = *(v4 + 104);
  v39[0] = v7;
  v39[1] = v16;
  v18 = v40;
  v17(v7, v15, v40);
  *(v2 + 136) = sub_24A4ABD90();
  v41 = "ocation.subscribe";
  sub_24A4AB6B0();
  v45 = MEMORY[0x277D84F90];
  sub_24A4ABE90();
  v17(v39[0], v15, v18);
  v19 = v43;
  *(v2 + 144) = sub_24A4ABD90();
  *(v2 + 152) = MEMORY[0x277D84F98];
  *(v2 + 160) = 0x402E000000000000;
  *(v2 + 176) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 192) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 200) = 0;
  *(v2 + 208) = 1;
  v20 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v2 + 216) = v20;
  v21 = v44;
  *(v2 + 16) = v19;
  *(v2 + 24) = v21;
  v22 = v20;

  v23 = v21;
  v24 = sub_24A4AB820();
  [v22 setLocalizedDateFormatFromTemplate_];

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v25 = sub_24A4AB630();
  sub_24A378E18(v25, qword_27EF4E260);
  v26 = sub_24A4AB600();
  v27 = sub_24A4ABCE0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_24A376000, v26, v27, "FMFSecureLocCtrl: initialized", v28, 2u);
    MEMORY[0x24C219130](v28, -1, -1);
  }

  v29 = [objc_opt_self() sharedInstance];
  v30 = [v29 isInternalBuild];

  if (v30)
  {
    v31 = [objc_opt_self() standardUserDefaults];
    v32 = sub_24A4AB820();
    [v31 doubleForKey_];
    v34 = v33;

    if (v34 > 0.0)
    {
      *(v3 + 200) = v34;
      *(v3 + 208) = 0;
      v35 = sub_24A4AB600();
      v36 = sub_24A4ABCE0();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = v34;
        _os_log_impl(&dword_24A376000, v35, v36, "FMFSecureLocCtrl: overriding liveAnimationTimeoutDuration %f", v37, 0xCu);
        MEMORY[0x24C219130](v37, -1, -1);
      }
    }
  }

  return v3;
}

void sub_24A463B90()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "👀 FMFSecureLocCtrl: setting location update block", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  swift_weakInit();
  v18 = sub_24A474FE4;
  v19 = v7;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_24A4642E0;
  v17 = &unk_285D8B1B0;
  v8 = _Block_copy(&v14);
  v9 = v6;

  [v9 setLocationUpdateBlock_];
  _Block_release(v8);

  v10 = *(v1 + 24);
  v11 = swift_allocObject();
  swift_weakInit();
  v18 = sub_24A474FEC;
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_24A464820;
  v17 = &unk_285D8B1D8;
  v12 = _Block_copy(&v14);
  v13 = v10;

  [v13 startMonitoringFailedSubscriptions_];
  _Block_release(v12);
}

uint64_t sub_24A463DFC(unint64_t a1)
{
  v2 = sub_24A4AB690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB6E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    if (a1 >> 62)
    {
      result = sub_24A4AC060();
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v7;
    v25 = v3;
    v23 = v8;
    if (!result)
    {
      goto LABEL_10;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C218380](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v14 = *(a1 + 32);
    }

    v15 = v14;
    v16 = [v14 publishReason];

    if (v16 == 7)
    {
      v17 = 1;
    }

    else
    {
LABEL_10:
      v17 = 0;
    }

    v18 = *(v13 + 136);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v13;
    *(v19 + 32) = v17;
    aBlock[4] = sub_24A474FFC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8B278;
    v20 = _Block_copy(aBlock);
    v21 = v18;

    sub_24A4AB6B0();
    v26 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v11, v6, v20);
    _Block_release(v20);

    (*(v25 + 8))(v6, v2);
    (*(v23 + 8))(v11, v24);
  }

  return result;
}

uint64_t sub_24A46418C(unint64_t a1, uint64_t a2, char a3)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A4AB630();
  sub_24A378E18(v5, qword_27EF4E260);

  v6 = sub_24A4AB600();
  v7 = sub_24A4ABCE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (a1 >> 62)
    {
      v9 = sub_24A4AC060();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v9;

    _os_log_impl(&dword_24A376000, v6, v7, "👀 FMFSecureLocCtrl: %ld locations received from spd (location update block)", v8, 0xCu);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  else
  {
  }

  return sub_24A46A47C(a1, 0, a3 & 1);
}

uint64_t sub_24A4642E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_24A37B428(0, &qword_27EF3FE48, 0x277D496B8);
  v3 = sub_24A4ABA70();

  v2(v3);
}

uint64_t sub_24A464364(uint64_t a1)
{
  v2 = sub_24A4AB690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB6E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = v3;
    v13 = *(result + 136);
    v14 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v14;
    v19[1] = v14;
    aBlock[4] = sub_24A474FF4;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8B228;
    v16 = _Block_copy(aBlock);
    v17 = v13;
    v20 = v7;
    v18 = v17;

    sub_24A4AB6B0();
    v22 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v11, v6, v16);
    _Block_release(v16);

    (*(v21 + 8))(v6, v2);
    (*(v8 + 8))(v11, v20);
  }

  return result;
}

uint64_t sub_24A464674(uint64_t a1)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x24C217E90](a1, MEMORY[0x277D837D0]);
    v9 = sub_24A37BD58(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A376000, v3, v4, "👀 FMFSecureLocCtrl: Failed subscription received from spd, no location for findMyIds: %s. Clear cached locations", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v11 = sub_24A3999E0(v10);

  sub_24A46A47C(MEMORY[0x277D84F90], v11, 0);
}

uint64_t sub_24A464820(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_24A4ABA70();

  v2(v3);
}

uint64_t sub_24A464890(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_24A4AB690();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24A4AB6E0();
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_24A3999E0(v12);

  swift_beginAccess();
  if (*(v3[10] + 16) <= *(v13 + 16) >> 3)
  {
    goto LABEL_6;
  }

  v14 = v3[10];

  v16 = sub_24A472EF8(v15, v13);

  if (!*(v16 + 16))
  {
  }

  while (1)
  {
    swift_beginAccess();

    sub_24A464EF8(v17);
    swift_endAccess();
    v13 = *(v16 + 16);
    v48 = v8;
    if (!v13)
    {
      break;
    }

    v18 = sub_24A3A11D8(v13, 0);
    v19 = sub_24A3A1268(&aBlock, v18 + 4, v13, v16);
    sub_24A3A13C0();
    if (v19 == v13)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_6:
    aBlock = v13;

    sub_24A472DCC(v20);

    v16 = aBlock;
    if (!*(aBlock + 16))
    {
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_9:
  v46 = v18;
  v22 = sub_24A464FFC(v18);
  v23 = *(v3[2] + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v24 = aBlock;
  aBlock = 91;
  v53 = 0xE100000000000000;
  v60[0] = 1;

  sub_24A474894(v22, v24, &aBlock, v60);
  swift_bridgeObjectRelease_n();
  v58 = aBlock;
  v59 = v53;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v26 = v58;
  v25 = v59;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v47 = v9;
  v27 = sub_24A4AB630();
  sub_24A378E18(v27, qword_27EF4E260);

  v28 = sub_24A4AB600();
  v29 = sub_24A4ABCE0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v30 = 136315394;
    v32 = a2 & 1;
    LOBYTE(v58) = a2 & 1;
    v33 = sub_24A4AB870();
    v45 = v5;
    v35 = sub_24A37BD58(v33, v34, &aBlock);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v36 = sub_24A37BD58(v26, v25, &aBlock);

    *(v30 + 14) = v36;
    v5 = v45;
    _os_log_impl(&dword_24A376000, v28, v29, "👀 FMFSecureLocCtrl: telling FMFManager begin waiting for %s for %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v31, -1, -1);
    MEMORY[0x24C219130](v30, -1, -1);
  }

  else
  {

    v32 = a2 & 1;
  }

  v37 = v3[18];
  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  v39 = v46;
  *(v38 + 24) = v3;
  *(v38 + 32) = v39;
  v56 = sub_24A474F9C;
  v57 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_24A388564;
  v55 = &unk_285D8B188;
  v40 = _Block_copy(&aBlock);
  v41 = v37;

  v42 = v49;
  sub_24A4AB6B0();
  v58 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v43 = v48;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v42, v43, v40);
  _Block_release(v40);

  (*(v51 + 8))(v43, v5);
  (*(v47 + 8))(v42, v50);
}

uint64_t sub_24A464EF8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_24A399A78(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_24A464FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_24A3DBEE8(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 40);
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_24A3DBEE8((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 16 * v7 + 32) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_24A465114(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_24A4AB690();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_24A4AB6E0();
  v9 = *(v52 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v52);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_24A3999E0(v13);

  swift_beginAccess();
  v15 = *(v2 + 80);

  v17 = sub_24A473E64(v16, v14);

  if (*(v17 + 16))
  {
    swift_beginAccess();
    sub_24A472DCC(v17);
    swift_endAccess();
    v18 = *(v17 + 16);
    v50 = v12;
    if (v18)
    {
      v19 = sub_24A3A11D8(v18, 0);
      v20 = sub_24A3A1268(&aBlock, v19 + 4, v18, v17);
      sub_24A3A13C0();
      if (v20 != v18)
      {
        __break(1u);
      }
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    v48 = v19;
    v21 = sub_24A464FFC(v19);
    v22 = *(*(v3 + 16) + 56);

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    v23 = aBlock;
    aBlock = 91;
    v54 = 0xE100000000000000;
    v61[0] = 1;

    sub_24A474894(v21, v23, &aBlock, v61);
    swift_bridgeObjectRelease_n();
    v59 = aBlock;
    v60 = v54;

    MEMORY[0x24C217D50](93, 0xE100000000000000);

    v25 = v59;
    v24 = v60;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v49 = v9;
    v26 = sub_24A4AB630();
    sub_24A378E18(v26, qword_27EF4E260);

    v27 = sub_24A4AB600();
    v28 = sub_24A4ABCE0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v46 = v25;
      v30 = v29;
      v31 = swift_slowAlloc();
      v47 = v5;
      v32 = v31;
      aBlock = v31;
      *v30 = 136315394;
      v33 = a2 & 1;
      LOBYTE(v59) = v33;
      v34 = sub_24A4AB870();
      v36 = sub_24A37BD58(v34, v35, &aBlock);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2080;
      v37 = sub_24A37BD58(v46, v24, &aBlock);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_24A376000, v27, v28, "👀 FMFSecureLocCtrl: telling FMFManager end waiting for %s for %s", v30, 0x16u);
      swift_arrayDestroy();
      v5 = v47;
      MEMORY[0x24C219130](v32, -1, -1);
      MEMORY[0x24C219130](v30, -1, -1);
    }

    else
    {

      v33 = a2 & 1;
    }

    v38 = v48;
    v39 = *(v3 + 144);
    v40 = swift_allocObject();
    *(v40 + 16) = v33;
    *(v40 + 24) = v3;
    *(v40 + 32) = v38;
    v57 = sub_24A474F14;
    v58 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_24A388564;
    v56 = &unk_285D8B138;
    v41 = _Block_copy(&aBlock);
    v42 = v39;

    v43 = v50;
    sub_24A4AB6B0();
    v59 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v43, v8, v41);
    _Block_release(v41);

    (*(v51 + 8))(v8, v5);
    (*(v49 + 8))(v43, v52);
  }
}

uint64_t sub_24A465740(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (a1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    a4(a3);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    a5(a3);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_24A4657D4(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = a2;
  v4 = sub_24A4AB690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A4AB6E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_24A3999E0(v14);

  swift_beginAccess();
  if (*(*(v3 + 88) + 16) <= *(v15 + 16) >> 3)
  {
    goto LABEL_6;
  }

  v16 = *(v3 + 88);

  v18 = sub_24A472EF8(v17, v15);

  if (!*(v18 + 16))
  {
  }

  while (1)
  {
    swift_beginAccess();

    sub_24A464EF8(v19);
    swift_endAccess();
    v15 = *(v18 + 16);
    v56 = v13;
    if (!v15)
    {
      break;
    }

    v20 = sub_24A3A11D8(v15, 0);
    v21 = sub_24A3A1268(&aBlock, v20 + 4, v15, v18);
    sub_24A3A13C0();
    if (v21 == v15)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_6:
    aBlock = v15;

    sub_24A472DCC(v22);

    v18 = aBlock;
    if (!*(aBlock + 16))
    {
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_9:
  v55 = v8;
  v52 = v20;
  v24 = sub_24A464FFC(v20);
  v53 = v3;
  v25 = *(*(v3 + 16) + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v26 = aBlock;
  aBlock = 91;
  v59 = 0xE100000000000000;
  v66[0] = 1;

  sub_24A474894(v24, v26, &aBlock, v66);
  swift_bridgeObjectRelease_n();
  v64 = aBlock;
  v65 = v59;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v27 = v64;
  v28 = v65;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v54 = v10;
  v29 = sub_24A4AB630();
  sub_24A378E18(v29, qword_27EF4E260);

  v30 = sub_24A4AB600();
  v31 = sub_24A4ABCE0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v51 = v27;
    v34 = v33;
    aBlock = v33;
    *v32 = 136315394;
    LOBYTE(v64) = v57 & 1;
    v35 = sub_24A4AB870();
    v37 = v9;
    v38 = v5;
    v39 = v4;
    v40 = sub_24A37BD58(v35, v36, &aBlock);

    *(v32 + 4) = v40;
    *(v32 + 12) = 2080;
    v41 = sub_24A37BD58(v51, v28, &aBlock);

    *(v32 + 14) = v41;
    v4 = v39;
    v5 = v38;
    v9 = v37;
    _os_log_impl(&dword_24A376000, v30, v31, "👀 FMFSecureLocCtrl: telling FMFManager to set fallback-to-legacy from %s for %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v34, -1, -1);
    MEMORY[0x24C219130](v32, -1, -1);
  }

  else
  {
  }

  v42 = v56;
  v43 = v53;
  v44 = *(v53 + 144);
  v45 = swift_allocObject();
  v46 = v52;
  *(v45 + 16) = v43;
  *(v45 + 24) = v46;
  v62 = sub_24A474EE4;
  v63 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_24A388564;
  v61 = &unk_285D8B0E8;
  v47 = _Block_copy(&aBlock);
  v48 = v44;

  sub_24A4AB6B0();
  v64 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v49 = v55;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v42, v49, v47);
  _Block_release(v47);

  (*(v5 + 8))(v49, v4);
  (*(v54 + 8))(v42, v9);
}

uint64_t sub_24A465E4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_24A4AB690();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24A4AB6E0();
  v9 = *(v49 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v49);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_24A3999E0(v13);

  swift_beginAccess();
  v15 = *(v2 + 88);

  v17 = sub_24A473E64(v16, v14);

  if (!*(v17 + 16))
  {
  }

  swift_beginAccess();
  sub_24A472DCC(v17);
  swift_endAccess();
  v18 = *(v17 + 16);
  v47 = v12;
  if (!v18)
  {

    v22 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v19 = sub_24A3A11D8(v18, 0);
  v20 = sub_24A3A1268(&aBlock, v19 + 4, v18, v17);
  result = sub_24A3A13C0();
  if (v20 == v18)
  {
    v22 = v19;
LABEL_7:
    v44 = v22;
    v45 = v9;
    v23 = sub_24A464FFC(v22);
    v24 = *(*(v3 + 16) + 56);

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    v25 = aBlock;
    aBlock = 91;
    v51 = 0xE100000000000000;
    v58[0] = 1;

    sub_24A474894(v23, v25, &aBlock, v58);
    swift_bridgeObjectRelease_n();
    v56 = aBlock;
    v57 = v51;

    MEMORY[0x24C217D50](93, 0xE100000000000000);

    v27 = v56;
    v26 = v57;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v46 = v8;
    v28 = sub_24A4AB630();
    sub_24A378E18(v28, qword_27EF4E260);

    v29 = sub_24A4AB600();
    v30 = sub_24A4ABCE0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 136315394;
      LOBYTE(v56) = a2 & 1;
      v33 = sub_24A4AB870();
      v35 = sub_24A37BD58(v33, v34, &aBlock);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = sub_24A37BD58(v27, v26, &aBlock);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_24A376000, v29, v30, "👀 FMFSecureLocCtrl: telling FMFManager to clear fallback-to-legacy from %s for %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v32, -1, -1);
      MEMORY[0x24C219130](v31, -1, -1);
    }

    else
    {
    }

    v37 = v47;
    v38 = *(v3 + 144);
    v39 = swift_allocObject();
    v40 = v44;
    *(v39 + 16) = v3;
    *(v39 + 24) = v40;
    v54 = sub_24A474EB4;
    v55 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_24A388564;
    v53 = &unk_285D8B098;
    v41 = _Block_copy(&aBlock);
    v42 = v38;

    sub_24A4AB6B0();
    v56 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v43 = v46;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v37, v43, v41);
    _Block_release(v41);

    (*(v48 + 8))(v43, v5);
    (*(v45 + 8))(v37, v49);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A466470(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A4664E0(unint64_t a1, char a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A4AC060())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C218380](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = v7;
      sub_24A4665D0(&v10, v2, a2 & 1);

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_24A4665D0(id *a1, uint64_t a2, char a3)
{
  v6 = sub_24A4AAAD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a2 + 216);
  v13 = [*a1 timestamp];
  sub_24A4AAAA0();

  v14 = sub_24A4AAA60();
  (*(v7 + 8))(v10, v6);
  v15 = [v12 stringFromDate_];

  v16 = sub_24A4AB850();
  v18 = v17;

  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24A4BBFC0;
  [v11 latitude];
  v20 = MEMORY[0x277D839F8];
  v21 = MEMORY[0x277D83A80];
  *(v19 + 56) = MEMORY[0x277D839F8];
  *(v19 + 64) = v21;
  *(v19 + 32) = v22;
  [v11 longitude];
  *(v19 + 96) = v20;
  *(v19 + 104) = v21;
  *(v19 + 72) = v23;
  v24 = MEMORY[0x277D837D0];
  *(v19 + 136) = MEMORY[0x277D837D0];
  v25 = sub_24A3ABD70();
  *(v19 + 144) = v25;
  *(v19 + 112) = v16;
  *(v19 + 120) = v18;
  v26 = [v11 locationLabel];
  if (v26)
  {
    v27 = v26;
    v28 = sub_24A4AB850();
    v30 = v29;

    v31 = (v19 + 152);
    *(v19 + 176) = v24;
    *(v19 + 184) = v25;
    if (v30)
    {
      *v31 = v28;
      goto LABEL_6;
    }
  }

  else
  {
    v31 = (v19 + 152);
    *(v19 + 176) = v24;
    *(v19 + 184) = v25;
  }

  *v31 = 7104878;
  v30 = 0xE300000000000000;
LABEL_6:
  *(v19 + 160) = v30;
  LOBYTE(v58) = a3 & 1;
  v32 = sub_24A4AB870();
  *(v19 + 216) = v24;
  *(v19 + 224) = v25;
  *(v19 + 192) = v32;
  *(v19 + 200) = v33;
  v34 = sub_24A462AC8([v11 publishReason]);
  *(v19 + 256) = v24;
  *(v19 + 264) = v25;
  *(v19 + 232) = v34;
  *(v19 + 240) = v35;
  v36 = sub_24A4AB860();
  v38 = v37;
  sub_24A3C9CEC(&qword_27EF3F4B8, &qword_24A4B5730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4B4E10;
  v40 = [v11 findMyId];
  v41 = sub_24A4AB850();
  v43 = v42;

  *(inited + 32) = v41;
  *(inited + 40) = v43;
  v44 = *(*(a2 + 16) + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v45 = v58;
  v58 = 91;
  v59 = 0xE100000000000000;
  v60 = 1;

  sub_24A474894(inited, v45, &v58, &v60);
  swift_bridgeObjectRelease_n();
  v56 = v58;
  v57 = v59;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  swift_setDeallocating();
  sub_24A37EF2C(inited + 32, &unk_27EF3F4C0, &qword_24A4B7E60);

  v47 = v56;
  v46 = v57;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v48 = sub_24A4AB630();
  sub_24A378E18(v48, qword_27EF4E260);

  v49 = sub_24A4AB600();
  v50 = sub_24A4ABCE0();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v58 = v52;
    *v51 = 136315394;
    v53 = sub_24A37BD58(v47, v46, &v58);

    *(v51 + 4) = v53;
    *(v51 + 12) = 2080;
    v54 = sub_24A37BD58(v36, v38, &v58);

    *(v51 + 14) = v54;
    _os_log_impl(&dword_24A376000, v49, v50, "👀 FMFSecureLocCtrl: spd location for %s: %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v52, -1, -1);
    MEMORY[0x24C219130](v51, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A466B38(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_24A4AB690();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24A4AB6E0();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v23);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v4 + 136);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v4;
  *(v18 + 32) = a2 & 1;
  *(v18 + 40) = a3;
  *(v18 + 48) = a4;
  aBlock[4] = sub_24A4751F8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8B368;
  v19 = _Block_copy(aBlock);

  v20 = v17;

  sub_24A4AB6B0();
  v25 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v16, v12, v19);
  _Block_release(v19);

  (*(v24 + 8))(v12, v9);
  (*(v13 + 8))(v16, v23);
}

void sub_24A466E28(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v115 = a4;
  v116 = a5;
  LODWORD(v5) = a3;
  v120 = a2;
  v7 = type metadata accessor for FMFFriend();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v12 = (&v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  LODWORD(v122) = v5;
  v118 = v10;
  v119 = a1;
  if (v13)
  {
    v14 = *(v9 + 36);
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    v17 = MEMORY[0x277D84F90];
    v18 = v13;
    v121 = v16;
    do
    {
      sub_24A475078(v15, v12, type metadata accessor for FMFFriend);
      if ((*(v12 + v14) & 2) != 0)
      {
        v20 = *v12;
        v19 = v12[1];

        sub_24A4750E0(v12, type metadata accessor for FMFFriend);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_24A3ED900(0, *(v17 + 2) + 1, 1, v17);
        }

        v5 = *(v17 + 2);
        v21 = *(v17 + 3);
        if (v5 >= v21 >> 1)
        {
          v17 = sub_24A3ED900((v21 > 1), v5 + 1, 1, v17);
        }

        *(v17 + 2) = v5 + 1;
        v22 = &v17[16 * v5];
        *(v22 + 4) = v20;
        *(v22 + 5) = v19;
        LOBYTE(v5) = v122;
        v16 = v121;
      }

      else
      {
        sub_24A4750E0(v12, type metadata accessor for FMFFriend);
      }

      v15 += v16;
      --v18;
    }

    while (v18);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v23 = sub_24A464FFC(v17);

  v24 = v120;
  v25 = *(v120[2] + 56);

  v26 = sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v27 = v124;
  v124 = 91;
  v125 = 0xE100000000000000;
  LOBYTE(v127) = 1;

  sub_24A474894(v23, v27, &v124, &v127);
  swift_bridgeObjectRelease_n();
  v128 = v124;
  v129 = v125;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v29 = v128;
  v28 = v129;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v30 = sub_24A4AB630();
  v31 = sub_24A378E18(v30, qword_27EF4E260);

  v32 = sub_24A4AB600();
  v33 = sub_24A4ABCE0();

  v34 = os_log_type_enabled(v32, v33);
  v121 = v26;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v117 = v31;
    v36 = v35;
    v37 = v29;
    v38 = swift_slowAlloc();
    v124 = v38;
    *v36 = 136315394;
    LOBYTE(v128) = v5 & 1;
    v39 = sub_24A4AB870();
    v41 = sub_24A37BD58(v39, v40, &v124);
    v24 = v120;

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    v5 = sub_24A37BD58(v37, v28, &v124);

    *(v36 + 14) = v5;
    LOBYTE(v5) = v122;
    _os_log_impl(&dword_24A376000, v32, v33, "👀 FMFSecureLocCtrl: asked-subscribing %s for %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v38, -1, -1);
    v42 = v36;
    v31 = v117;
    MEMORY[0x24C219130](v42, -1, -1);
  }

  else
  {
  }

  v43 = v24[4];
  v44 = v24[7];
  v126 = v44;
  v127 = v43;

  if (v5)
  {
    if (v13)
    {
      v45 = (v119 + ((*(v118 + 80) + 32) & ~*(v118 + 80)));
      v46 = *(v118 + 72);
      do
      {
        sub_24A4684D0(v45, &v126, v24, 1);
        v45 = (v45 + v46);
        --v13;
      }

      while (v13);
      v44 = v126;
    }

    v48 = sub_24A462880(v47);
    v49 = sub_24A48A048(v48);

    v50 = *(v49 + 16);
    if (v50)
    {
      v51 = sub_24A40B5A0(*(v49 + 16), 0);
      v52 = sub_24A40C3E0(&v124, v51 + 2, v50, v49);
      sub_24A3A13C0();
      if (v52 != v50)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {

      v51 = MEMORY[0x277D84F90];
    }

    v58 = *(v24[2] + 56);

    sub_24A4ABD70();
    v59 = v124;
    v124 = 91;
    v125 = 0xE100000000000000;
    v123 = 1;

    sub_24A474894(v51, v59, &v124, &v123);
    swift_bridgeObjectRelease_n();
    v128 = v124;
    v129 = v125;

    MEMORY[0x24C217D50](93, 0xE100000000000000);

    v61 = v128;
    v60 = v129;
    v62 = v24[7];

    LOBYTE(v59) = sub_24A462DD4(v44, v62);

    if (v59)
    {

      v63 = sub_24A4AB600();
      v64 = sub_24A4ABCA0();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v124 = v66;
        *v65 = 136315394;
        LOBYTE(v128) = 1;
        v67 = sub_24A4AB870();
        v69 = sub_24A37BD58(v67, v68, &v124);

        *(v65 + 4) = v69;
        *(v65 + 12) = 2048;
        *(v65 + 14) = *(v44 + 16);
        v70 = "👀 FMFSecureLocCtrl: no change for subscribing %s for %ld handles";
LABEL_42:
        _os_log_impl(&dword_24A376000, v63, v64, v70, v65, 0x16u);
        sub_24A37EEE0(v66);
        MEMORY[0x24C219130](v66, -1, -1);
        MEMORY[0x24C219130](v65, -1, -1);

LABEL_46:

        return;
      }

LABEL_45:

      goto LABEL_46;
    }

    v71 = sub_24A4AB600();
    v72 = sub_24A4ABCE0();

    v73 = os_log_type_enabled(v71, v72);
    v122 = v43;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v124 = v75;
      *v74 = 136315394;
      LOBYTE(v128) = 1;
      v76 = sub_24A4AB870();
      v78 = sub_24A37BD58(v76, v77, &v124);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2080;
      v79 = sub_24A37BD58(v61, v60, &v124);

      *(v74 + 14) = v79;
      _os_log_impl(&dword_24A376000, v71, v72, "👀 FMFSecureLocCtrl: elected-subscribing %s for %s", v74, 0x16u);
      swift_arrayDestroy();
      v80 = v75;
      v24 = v120;
      MEMORY[0x24C219130](v80, -1, -1);
      MEMORY[0x24C219130](v74, -1, -1);
    }

    else
    {
    }

    v100 = sub_24A462638(v99);
    v101 = sub_24A3999E0(v100);

    v103 = v115;
    v102 = v116;
    sub_24A46C194(v101, 1, 0, 0xE000000000000000);

    v105 = sub_24A4623D8(v104);
    v106 = sub_24A489F6C(v105);

    swift_bridgeObjectRelease_n();
    v107 = v24[7];
    v24[7] = v106;

    v108 = v24[9];
    v24[8] = v103;
    v24[9] = v102;

    goto LABEL_51;
  }

LABEL_25:
  if (v13)
  {
    v53 = (v119 + ((*(v118 + 80) + 32) & ~*(v118 + 80)));
    v54 = *(v118 + 72);
    do
    {
      sub_24A467B94(v53, &v127, v24, 0);
      v53 = (v53 + v54);
      --v13;
    }

    while (v13);
    v43 = v127;
  }

  v55 = *(v43 + 16);
  if (!v55)
  {
    v56 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v117 = v31;
  v122 = v44;
  v56 = sub_24A3A11D8(v55, 0);
  v57 = sub_24A3A1268(&v124, v56 + 4, v55, v43);

  sub_24A3A13C0();
  if (v57 == v55)
  {
    v24 = v120;
LABEL_39:
    v81 = sub_24A464FFC(v56);

    v82 = *(v24[2] + 56);

    sub_24A4ABD70();
    v83 = v124;
    v124 = 91;
    v125 = 0xE100000000000000;
    v123 = 1;

    sub_24A474894(v81, v83, &v124, &v123);
    swift_bridgeObjectRelease_n();
    v128 = v124;
    v129 = v125;

    MEMORY[0x24C217D50](93, 0xE100000000000000);

    v85 = v128;
    v84 = v129;
    v86 = v24[4];

    LOBYTE(v83) = sub_24A462C1C(v43, v86);

    if (v83)
    {

      v63 = sub_24A4AB600();
      v64 = sub_24A4ABCA0();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v87 = v43;
        v66 = swift_slowAlloc();
        v124 = v66;
        *v65 = 136315394;
        LOBYTE(v128) = 0;
        v88 = sub_24A4AB870();
        v90 = sub_24A37BD58(v88, v89, &v124);

        *(v65 + 4) = v90;
        *(v65 + 12) = 2048;
        *(v65 + 14) = *(v87 + 16);
        v70 = "👀 FMFSecureLocCtrl: no change for subscribing %s %ld handles";
        goto LABEL_42;
      }

      goto LABEL_45;
    }

    v91 = sub_24A4AB600();
    v92 = sub_24A4ABCE0();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v124 = v122;
      *v93 = 136315394;
      LOBYTE(v128) = 0;
      v94 = sub_24A4AB870();
      v96 = sub_24A37BD58(v94, v95, &v124);

      *(v93 + 4) = v96;
      *(v93 + 12) = 2080;
      v97 = sub_24A37BD58(v85, v84, &v124);

      *(v93 + 14) = v97;
      _os_log_impl(&dword_24A376000, v91, v92, "👀 FMFSecureLocCtrl: elected-subscribing %s for %s", v93, 0x16u);
      v98 = v122;
      swift_arrayDestroy();
      MEMORY[0x24C219130](v98, -1, -1);
      MEMORY[0x24C219130](v93, -1, -1);
    }

    else
    {
    }

    v110 = v43;
    v112 = v115;
    v111 = v116;
    sub_24A46C194(v109, 0, 0, 0xE000000000000000);

    v113 = v24[4];
    v24[4] = v110;

    v114 = v24[6];
    v24[5] = v112;
    v24[6] = v111;

LABEL_51:

    return;
  }

  __break(1u);
}

int *sub_24A467B94(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  result = type metadata accessor for FMFFriend();
  v8 = result;
  if ((*(a1 + result[9]) & 2) != 0)
  {
    if (*(*(a3 + 16) + 672) == 1)
    {
      v26 = *(a1 + result[11]);
      if (v26 != 2 && (v26 & 1) != 0)
      {
        goto LABEL_27;
      }

      v27 = *(a1 + result[12]);
      if (v27 != 2 && (v27 & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v28 = *(a1 + result[12]);
      if (v28 != 2 && (v28 & 1) != 0 && (*(a1 + result[13]) & 1) == 0)
      {
LABEL_27:
        v39 = *a1;
        v40 = a1[1];

        sub_24A399A78(&v61, v39, v40);
      }
    }

    v57 = a4;
    v29 = *a2;
    v30 = *a1;
    a1 = a1[1];

    v31 = sub_24A468208(v30, a1, v29);
    v33 = v32;
    v35 = v34;
    v36 = ~v34;

    if (v36)
    {
      sub_24A3C72C0(v31, v33, v35);
      sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24A4B4E10;
      *(inited + 32) = v30;
      *(inited + 40) = a1;

      sub_24A465114(inited, v57 & 1);
      swift_setDeallocating();
      v38 = *(inited + 16);
      return swift_arrayDestroy();
    }

    sub_24A3C9CEC(&qword_27EF3F4B8, &qword_24A4B5730);
    v41 = swift_initStackObject();
    v56 = xmmword_24A4B4E10;
    *(v41 + 16) = xmmword_24A4B4E10;
    a2 = v30;
    *(v41 + 32) = v30;
    *(v41 + 40) = a1;
    v42 = *(*(a3 + 16) + 56);
    swift_bridgeObjectRetain_n();

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    v43 = v61;
    v61 = 91;
    v62 = 0xE100000000000000;
    v63 = 1;

    sub_24A474894(v41, v43, &v61, &v63);
    swift_bridgeObjectRelease_n();
    v59 = v61;
    v60 = v62;

    MEMORY[0x24C217D50](93, 0xE100000000000000);

    swift_setDeallocating();
    sub_24A37EF2C(v41 + 32, &unk_27EF3F4C0, &qword_24A4B7E60);

    v9 = v59;
    v10 = v60;
    if (qword_27EF3EBF8 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  v57 = a4;
  *&v56 = a3;
  v9 = 0;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a2;
  v13 = *a2;
  v14 = 1 << *(*a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v17 = *(v13 + 56);
  v16 = v13 + 56;
  v18 = v15 & v17;
  v19 = (v14 + 63) >> 6;
  while (v18)
  {
LABEL_10:
    v21 = (*(v12 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v18)))));
    if (*v21 != v10 || v21[1] != v11)
    {
      v18 &= v18 - 1;
      result = sub_24A4AC270();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    sub_24A473468(v10, v11);

    sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
    v23 = *(*(v8 - 1) + 72);
    v24 = (*(*(v8 - 1) + 80) + 32) & ~*(*(v8 - 1) + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24A4B4E10;
    sub_24A475078(a1, v25 + v24, type metadata accessor for FMFFriend);
    sub_24A468780(v25, v57 & 1);
  }

  while (1)
  {
    v20 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v20 >= v19)
    {
      return result;
    }

    v18 = *(v16 + 8 * v20);
    ++v9;
    if (v18)
    {
      v9 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_35:
  swift_once();
LABEL_29:
  v44 = sub_24A4AB630();
  sub_24A378E18(v44, qword_27EF4E260);

  v45 = sub_24A4AB600();
  v46 = sub_24A4ABCE0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v61 = v55;
    *v47 = 136315394;
    v48 = v57 & 1;
    v49 = sub_24A4AB870();
    v51 = sub_24A37BD58(v49, v50, &v61);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = sub_24A37BD58(v9, v10, &v61);

    *(v47 + 14) = v52;
    _os_log_impl(&dword_24A376000, v45, v46, "👀 FMFSecureLocCtrl: fallback to legacy (not capable) %s for %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v55, -1, -1);
    MEMORY[0x24C219130](v47, -1, -1);
  }

  else
  {

    v48 = v57 & 1;
  }

  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  v53 = swift_initStackObject();
  *(v53 + 16) = v56;
  *(v53 + 32) = a2;
  *(v53 + 40) = a1;
  sub_24A4657D4(v53, v48);
  swift_setDeallocating();
  v54 = *(v53 + 16);
  return swift_arrayDestroy();
}

unint64_t sub_24A468208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_24A4AC360();
  sub_24A4AB8F0();
  v7 = sub_24A4AC3A0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_24A4AC270() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(a3 + 36);
  return v9;
}

unint64_t sub_24A468304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v7 = a3 & 0x100;
  v8 = a3 & 0x10000;
  v9 = *(a4 + 40);
  sub_24A4AC360();
  sub_24A4AB8F0();
  v33 = a3;
  sub_24A4AC380();
  sub_24A4AC380();
  sub_24A4AC380();
  v11 = sub_24A4AC3A0();
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  v14 = v11 & ~v13;
  if (((*(a4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  v30 = a4;
  v16 = *(a4 + 48);
  v17 = v33;
  v31 = v7;
  v32 = v8;
  while (1)
  {
    v23 = v16 + 24 * v14;
    v24 = *(v23 + 16);
    v25 = *(v23 + 17);
    v26 = (v8 != 0) ^ *(v23 + 18);
    if (*v23 == a1 && *(v23 + 8) == a2)
    {
      break;
    }

    v18 = a2;
    v19 = v12;
    v20 = v16;
    v21 = sub_24A4AC270();
    v16 = v20;
    v12 = v19;
    a2 = v18;
    v8 = v32;
    v17 = v33;
    v22 = (v7 != 0) ^ v25;
    v7 = v31;
    if (!((v24 ^ v33) & 1 | ((v21 & 1) == 0) | (v22 | v26) & 1))
    {
      goto LABEL_12;
    }

LABEL_5:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  if ((v24 ^ v17 | (v7 != 0) ^ v25 | v26))
  {
    goto LABEL_5;
  }

LABEL_12:
  v28 = *(v30 + 36);
  return v14;
}

int *sub_24A4684D0(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  result = type metadata accessor for FMFFriend();
  v9 = result;
  if ((*(a1 + result[9]) & 2) != 0)
  {
    if (*(*(a3 + 16) + 672) == 1)
    {
      v24 = *(a1 + result[11]);
      if (v24 == 2 || (v24 & 1) == 0)
      {
        v25 = *(a1 + result[12]);
        if (v25 == 2 || (v25 & 1) == 0)
        {
          return result;
        }
      }
    }

    else
    {
      v26 = *(a1 + result[12]);
      if (v26 == 2 || (v26 & 1) == 0 || (*(a1 + result[13]) & 1) != 0)
      {
        return result;
      }
    }

    v27 = *(a3 + 56);
    v28 = 1 << *(v27 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    if ((v29 & *(v27 + 56)) == 0)
    {
      v30 = ((v28 + 63) >> 6) - 1;
      v31 = (v27 + 64);
      while (v30)
      {
        v32 = *v31++;
        --v30;
        if (v32)
        {
          return result;
        }
      }

      v34 = *a1;
      v33 = a1[1];

      sub_24A486200(v36, v34, v33, 0);
    }
  }

  else
  {
    v35 = a4;
    v10 = 0;
    v11 = *a1;
    v12 = a1[1];
    v13 = *a2;
    v14 = 1 << *(*a2 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 56);
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
LABEL_10:
      v19 = (*(v13 + 48) + 24 * (__clz(__rbit64(v16)) | (v10 << 6)));
      if (*v19 != v11 || v19[1] != v12)
      {
        v16 &= v16 - 1;
        result = sub_24A4AC270();
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
      v21 = *(*(v9 - 1) + 72);
      v22 = (*(*(v9 - 1) + 80) + 32) & ~*(*(v9 - 1) + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24A4B4E10;
      sub_24A475078(a1, v23 + v22, type metadata accessor for FMFFriend);
      sub_24A468780(v23, v35 & 1);
    }

    while (1)
    {
      v18 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v18 >= v17)
      {
        return result;
      }

      v16 = *(v13 + 56 + 8 * v18);
      ++v10;
      if (v16)
      {
        v10 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A468780(uint64_t a1, char a2)
{
  v5 = sub_24A4AB690();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 136);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v2;
  *(v14 + 32) = a2 & 1;
  aBlock[4] = sub_24A47506C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8B2C8;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  sub_24A4AB6B0();
  v21 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v12, v8, v15);
  _Block_release(v15);

  (*(v20 + 8))(v8, v5);
  (*(v9 + 8))(v12, v19);
}

void sub_24A468A5C(uint64_t a1, void *a2, int a3)
{
  v142 = sub_24A4AB690();
  v146 = *(v142 - 8);
  v6 = *(v146 + 64);
  MEMORY[0x28223BE20](v142);
  v141 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_24A4AB6E0();
  v136 = *(v140 - 8);
  v8 = *(v136 + 64);
  MEMORY[0x28223BE20](v140);
  v139 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFFriend();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v143 = (&v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v149 = (&v132 - v16);
  MEMORY[0x28223BE20](v15);
  v18 = (&v132 - v17);
  v19 = *(a1 + 16);
  v20 = MEMORY[0x277D84F90];
  v144 = a2;
  v150 = v19;
  v147 = v11;
  v148 = a1;
  if (v19)
  {
    LODWORD(v145) = a3;
    aBlock = MEMORY[0x277D84F90];
    sub_24A3DBDA8(0, v19, 0);
    v20 = aBlock;
    v21 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v22 = *(v11 + 72);
    do
    {
      sub_24A475078(v21, v18, type metadata accessor for FMFFriend);
      v24 = *v18;
      v23 = v18[1];

      sub_24A4750E0(v18, type metadata accessor for FMFFriend);
      aBlock = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_24A3DBDA8((v25 > 1), v26 + 1, 1);
        v20 = aBlock;
      }

      *(v20 + 16) = v26 + 1;
      v27 = v20 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v21 += v22;
      --v19;
    }

    while (v19);
    a2 = v144;
    LOBYTE(a3) = v145;
  }

  v28 = sub_24A464FFC(v20);
  v29 = *(a2[2] + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  v30 = 0;
  sub_24A4ABD70();
  v31 = aBlock;
  aBlock = 91;
  v152 = 0xE100000000000000;
  LOBYTE(v155) = 1;

  sub_24A474894(v28, v31, &aBlock, &v155);
  swift_bridgeObjectRelease_n();
  v156 = aBlock;
  v157 = v152;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v32 = v157;
  v134 = v156;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v33 = sub_24A4AB630();
  v34 = sub_24A378E18(v33, qword_27EF4E260);

  v135 = v34;
  v35 = sub_24A4AB600();
  v36 = sub_24A4ABCE0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    LODWORD(v138) = v36;
    v38 = v37;
    v145 = swift_slowAlloc();
    aBlock = v145;
    *v38 = 136315394;
    v39 = a3 & 1;
    LOBYTE(v156) = a3 & 1;
    v40 = sub_24A4AB870();
    v42 = sub_24A37BD58(v40, v41, &aBlock);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_24A37BD58(v134, v32, &aBlock);
    _os_log_impl(&dword_24A376000, v35, v138, "👀 FMFSecureLocCtrl: asked-unsubscribing %s for %s", v38, 0x16u);
    v43 = v145;
    swift_arrayDestroy();
    MEMORY[0x24C219130](v43, -1, -1);
    MEMORY[0x24C219130](v38, -1, -1);
  }

  else
  {

    v39 = a3 & 1;
  }

  v45 = v149;
  v44 = v150;
  sub_24A465E4C(v20, v39);
  sub_24A465114(v20, v39);

  if ((a3 & 1) == 0)
  {
    v72 = a2[4];
    v156 = v72;
    v155 = MEMORY[0x277D84FA0];
    if (v44)
    {
      v73 = v148 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
      v74 = *(v147 + 72);

      v75 = 0;
      do
      {
        sub_24A475078(v73 + v74 * v75, v45, type metadata accessor for FMFFriend);
        v76 = v156;
        v77 = *v45;
        v78 = v45[1];
        if (*(v156 + 16))
        {
          v79 = *(v156 + 40);
          sub_24A4AC360();

          sub_24A4AB8F0();
          v80 = sub_24A4AC3A0();
          v81 = -1 << *(v76 + 32);
          v82 = v80 & ~v81;
          if ((*(v76 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
          {
            v83 = ~v81;
            while (1)
            {
              v84 = (*(v76 + 48) + 16 * v82);
              v85 = *v84 == v77 && v84[1] == v78;
              if (v85 || (sub_24A4AC270() & 1) != 0)
              {
                break;
              }

              v82 = (v82 + 1) & v83;
              if (((*(v76 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            v86 = *(v76 + 36);

            sub_24A4745A8(v82, v86);
          }

LABEL_23:

          v45 = v149;
          v44 = v150;
        }

        ++v75;

        sub_24A399A78(&aBlock, v77, v78);

        sub_24A4750E0(v45, type metadata accessor for FMFFriend);
      }

      while (v75 != v44);
      v88 = v156;
      a2 = v144;
      v72 = v144[4];
    }

    else
    {

      v88 = v72;
    }

    v107 = sub_24A462C1C(v88, v72);

    if (v107)
    {

      v108 = sub_24A4AB600();
      v109 = sub_24A4ABCA0();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        aBlock = v111;
        *v110 = 136315394;
        LOBYTE(v154) = 0;
        v112 = sub_24A4AB870();
        v114 = sub_24A37BD58(v112, v113, &aBlock);

        *(v110 + 4) = v114;
        *(v110 + 12) = 2048;
        *(v110 + 14) = *(v88 + 16);
        _os_log_impl(&dword_24A376000, v108, v109, "👀 FMFSecureLocCtrl: no change for unsubscribing %s for %ld handles", v110, 0x16u);
        sub_24A37EEE0(v111);
        MEMORY[0x24C219130](v111, -1, -1);
        MEMORY[0x24C219130](v110, -1, -1);
      }
    }

    else
    {

      v115 = sub_24A4AB600();
      v116 = v32;
      v117 = sub_24A4ABCE0();

      if (os_log_type_enabled(v115, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        aBlock = v119;
        *v118 = 136315394;
        LOBYTE(v154) = 0;
        v120 = sub_24A4AB870();
        v122 = sub_24A37BD58(v120, v121, &aBlock);

        *(v118 + 4) = v122;
        *(v118 + 12) = 2080;
        v123 = sub_24A37BD58(v134, v116, &aBlock);

        *(v118 + 14) = v123;
        a2 = v144;
        _os_log_impl(&dword_24A376000, v115, v117, "👀 FMFSecureLocCtrl: unsubscribing %s for %s", v118, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C219130](v119, -1, -1);
        MEMORY[0x24C219130](v118, -1, -1);
      }

      else
      {
      }

      v128 = v155;
      v129 = a2[5];
      v130 = a2[6];

      sub_24A46D18C(v128, 0, 0, 0xE000000000000000);

      v131 = a2[4];
      a2[4] = v88;
    }

    goto LABEL_57;
  }

  v46 = a2[7];
  v156 = v46;
  v155 = MEMORY[0x277D84FA0];
  if (v44)
  {
    v133 = v32;
    v47 = v148 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
    v145 = *(v147 + 72);
    v138 = v153;
    v137 = (v146 + 8);
    v136 += 8;

    v48 = v143;
    do
    {
      v150 = v44;
      v52 = sub_24A475078(v47, v48, type metadata accessor for FMFFriend);
      v53 = v156;
      MEMORY[0x28223BE20](v52);
      *(&v132 - 2) = v48;
      v54 = sub_24A432BC0(sub_24A431FF8, (&v132 - 4), v53);
      if (v55)
      {
        v57 = v54;
        v58 = v55;
        v59 = v56;
        v149 = v30;
        v60 = a2[18];
        v61 = swift_allocObject();
        *(v61 + 16) = a2;
        *(v61 + 24) = v57;
        *(v61 + 32) = v58;
        *(v61 + 40) = v59 & 1;
        *(v61 + 41) = BYTE1(v59) & 1;
        *(v61 + 42) = BYTE2(v59) & 1;
        v153[2] = sub_24A475140;
        v153[3] = v61;
        aBlock = MEMORY[0x277D85DD0];
        v152 = 1107296256;
        v153[0] = sub_24A388564;
        v153[1] = &unk_285D8B318;
        v62 = _Block_copy(&aBlock);
        v63 = v60;

        v147 = v57;
        v64 = v139;
        sub_24A4AB6B0();
        v154 = MEMORY[0x277D84F90];
        sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
        v146 = v53;
        sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
        sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
        v65 = v141;
        v66 = v142;
        sub_24A4ABE90();
        MEMORY[0x24C218190](0, v64, v65, v62);
        _Block_release(v62);

        (*v137)(v65, v66);
        (*v136)(v64, v140);

        LODWORD(v148) = v59 & 0x10101 | v148 & 0xFF000000;
        v67 = sub_24A468304(v147, v58, v148, v146);
        v69 = v68;
        v71 = v70;
        LODWORD(v60) = ~v70;

        if (v60)
        {
          sub_24A474494(v67, v69);
          sub_24A3C72C0(v67, v69, v71);
        }

        a2 = v144;
        v30 = v149;
        v49 = v150;
        v48 = v143;
      }

      else
      {
        v49 = v150;
      }

      v50 = *v48;
      v51 = v48[1];

      sub_24A399A78(&aBlock, v50, v51);

      sub_24A4750E0(v48, type metadata accessor for FMFFriend);
      v47 += v145;
      v44 = v49 - 1;
    }

    while (v44);
    v87 = v156;
    v46 = a2[7];
    v32 = v133;
  }

  else
  {

    v87 = v46;
  }

  v89 = sub_24A462DD4(v87, v46);

  if ((v89 & 1) == 0)
  {

    v98 = sub_24A4AB600();
    v99 = v32;
    v100 = sub_24A4ABCE0();

    if (os_log_type_enabled(v98, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      aBlock = v102;
      *v101 = 136315394;
      LOBYTE(v154) = 1;
      v103 = sub_24A4AB870();
      v105 = sub_24A37BD58(v103, v104, &aBlock);

      *(v101 + 4) = v105;
      *(v101 + 12) = 2080;
      v106 = sub_24A37BD58(v134, v99, &aBlock);

      *(v101 + 14) = v106;
      a2 = v144;
      _os_log_impl(&dword_24A376000, v98, v100, "👀 FMFSecureLocCtrl: unsubscribing %s for %s", v101, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v102, -1, -1);
      MEMORY[0x24C219130](v101, -1, -1);
    }

    else
    {
    }

    v124 = v155;
    v125 = a2[8];
    v126 = a2[9];

    sub_24A46D18C(v124, 1, 0, 0xE000000000000000);

    v127 = a2[7];
    a2[7] = v87;
LABEL_57:

    return;
  }

  v90 = sub_24A4AB600();
  v91 = sub_24A4ABCA0();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    aBlock = v93;
    *v92 = 136315394;
    LOBYTE(v154) = 1;
    v94 = sub_24A4AB870();
    v96 = sub_24A37BD58(v94, v95, &aBlock);

    *(v92 + 4) = v96;
    *(v92 + 12) = 2048;
    v97 = *(v87 + 16);

    *(v92 + 14) = v97;

    _os_log_impl(&dword_24A376000, v90, v91, "👀 FMFSecureLocCtrl: no change for unsubscribing %s for %ld handles", v92, 0x16u);
    sub_24A37EEE0(v93);
    MEMORY[0x24C219130](v93, -1, -1);
    MEMORY[0x24C219130](v92, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}