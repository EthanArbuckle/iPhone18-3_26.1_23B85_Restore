uint64_t sub_22C3BAF60(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BAFC8, &qword_22C90D868);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_22C3D876C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BAFD0, &qword_22C90D870);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22C3BB078()
{
  sub_22C3BDA38();
  sub_22C3765A0();
  if (v4)
  {
    sub_22C37259C();
    if (v6 != v7)
    {
      sub_22C376594();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22C388518();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C3BD84C(v5);
  if (v2)
  {
    sub_22C3A5908(&qword_27D9BB010, &unk_22C90D8B0);
    v8 = sub_22C3A5908(&qword_27D9BB018, &unk_22C91A3E0);
    sub_22C3699B8(v8);
    v10 = *(v9 + 72);
    v11 = sub_22C36BAB8();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22C3BD83C();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22C374970(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22C3A5908(&qword_27D9BB018, &unk_22C91A3E0);
  sub_22C3699C8(v14);
  v16 = *(v15 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v18 = sub_22C386F18(v17);
    sub_22C3D75B8(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }

  sub_22C3BDA24();
}

size_t sub_22C3BB1CC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BB020, &unk_22C90D8C0);
  v10 = *(sub_22C3A5908(&qword_27D9BB028, &unk_22C90FAD0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BB028, &unk_22C90FAD0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D75CC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_22C3BB3FC()
{
  sub_22C3BDA38();
  sub_22C3765A0();
  if (v4)
  {
    sub_22C37259C();
    if (v6 != v7)
    {
      sub_22C376594();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22C388518();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C3BD84C(v5);
  if (v2)
  {
    sub_22C3A5908(&qword_27D9BAB70, &unk_22C90D410);
    v8 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
    sub_22C3699B8(v8);
    v10 = *(v9 + 72);
    v11 = sub_22C36BAB8();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22C3BD83C();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22C374970(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
  sub_22C3699C8(v14);
  v16 = *(v15 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v18 = sub_22C386F18(v17);
    sub_22C3D763C(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }

  sub_22C3BDA24();
}

void sub_22C3BB550()
{
  sub_22C386510();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v8 == v9)
  {
LABEL_7:
    sub_22C3BD99C(v7);
    if (v4)
    {
      sub_22C386714(v10, v11, v12, v13, v14, v15);
      v16 = sub_22C3BD968();
      j__malloc_size(v16);
      sub_22C3725AC();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_22C3BD9CC();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_9;
      }
    }

    memcpy(v16 + 4, (v0 + 32), 8 * v3);
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v8)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_22C3BB644(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BABF0, &qword_22C90D490);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22C3D874C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BABF8, &qword_22C90D498);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_22C3BB754(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BAC00, &unk_22C90D4A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22C3D874C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BAC08, &unk_22C91D830);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22C3BB864()
{
  sub_22C386510();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v8 == v9)
  {
LABEL_7:
    sub_22C3BD99C(v7);
    if (v4)
    {
      sub_22C386714(v10, v11, v12, v13, v14, v15);
      v16 = sub_22C3BD968();
      v17 = j__malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * ((v17 - 32) / 4);
      if (v2)
      {
LABEL_9:
        v18 = sub_22C3BD9CC();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_9;
      }
    }

    memcpy(v16 + 4, (v0 + 32), 4 * v3);
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v8)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_22C3BB928(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BADD0, &qword_22C90D678);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22C3D874C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BADD8, &unk_22C90D680);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_22C3BBA38(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BABA0, &unk_22C90D440);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22C3D874C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BABA8, &unk_22C91D790);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22C3BBB48()
{
  sub_22C386510();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v8 == v9)
  {
LABEL_7:
    sub_22C3BD99C(v7);
    if (v4)
    {
      sub_22C386714(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      v17 = j__malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * v17 - 64;
      if (v2)
      {
LABEL_9:
        v18 = sub_22C3BD9CC();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_9;
      }
    }

    memcpy(v16 + 4, (v0 + 32), v3);
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v8)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C3BBC08()
{
  sub_22C3BDA38();
  sub_22C36D5CC();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v7 == v8)
  {
LABEL_7:
    sub_22C372074(v6);
    if (v3)
    {
      sub_22C386714(v9, v10, v11, v12, v13, v14);
      v15 = swift_allocObject();
      sub_22C37E260(v15);
      sub_22C37ABB8(v16 / 40);
      if (v2)
      {
LABEL_9:
        v17 = sub_22C36FB10();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        sub_22C3BDA24();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_22C3797A8();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v7)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_22C3BBCBC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BADB8, &qword_22C90D660);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22C3D874C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BADC0, &qword_22C90D668);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_22C3BBDCC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BADF8, &qword_22C90D6A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22C3D874C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BAE00, &qword_22C90D6A8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22C3BBF18()
{
  sub_22C3BDA38();
  sub_22C3765A0();
  if (v4)
  {
    sub_22C37259C();
    if (v6 != v7)
    {
      sub_22C376594();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22C388518();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C3BD84C(v5);
  if (v2)
  {
    sub_22C3A5908(&qword_27D9BACD0, &unk_22C90D570);
    v8 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
    sub_22C3699B8(v8);
    v10 = *(v9 + 72);
    v11 = sub_22C36BAB8();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22C3BD83C();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22C374970(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
  sub_22C3699C8(v14);
  v16 = *(v15 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v18 = sub_22C386F18(v17);
    sub_22C3D7998(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }

  sub_22C3BDA24();
}

size_t sub_22C3BC06C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BAD38, &unk_22C91D9B0);
  v10 = *(sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D79D8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_22C3BC238(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BAD50, &unk_22C90D5F0);
  v10 = *(sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D79EC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_22C3BC404()
{
  sub_22C3BDA38();
  sub_22C3765A0();
  if (v4)
  {
    sub_22C37259C();
    if (v6 != v7)
    {
      sub_22C376594();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22C388518();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C3BD84C(v5);
  if (v2)
  {
    sub_22C3A5908(&qword_27D9BAD58, &unk_22C90D600);
    v8 = sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0);
    sub_22C3699B8(v8);
    v10 = *(v9 + 72);
    v11 = sub_22C36BAB8();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22C3BD83C();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22C374970(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0);
  sub_22C3699C8(v14);
  v16 = *(v15 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v18 = sub_22C386F18(v17);
    sub_22C3D7A00(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }

  sub_22C3BDA24();
}

void sub_22C3BC558()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BAD68, &unk_22C90D610);
      v8 = sub_22C3815EC();
      sub_22C37EFD8(v8);
      sub_22C3772E4(v9 / 40);
      if (v1)
      {
LABEL_9:
        v10 = sub_22C388528();
        sub_22C38D04C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BAD70, qword_22C925AC0);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_22C3BC620(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BAD78, &qword_22C90D620);
  v10 = *(sub_22C3A5908(&qword_27D9BAD80, &qword_22C90D628) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BAD80, &qword_22C90D628) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D7A14(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_22C3BC7EC()
{
  sub_22C3BDA38();
  sub_22C3765A0();
  if (v4)
  {
    sub_22C37259C();
    if (v6 != v7)
    {
      sub_22C376594();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22C388518();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C3BD84C(v5);
  if (v2)
  {
    sub_22C3A5908(&qword_27D9BAF78, &unk_22C90D820);
    v8 = sub_22C3A5908(&qword_27D9BAF80, &unk_22C90FAC0);
    sub_22C3699B8(v8);
    v10 = *(v9 + 72);
    v11 = sub_22C36BAB8();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22C3BD83C();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22C374970(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22C3A5908(&qword_27D9BAF80, &unk_22C90FAC0);
  sub_22C3699C8(v14);
  v16 = *(v15 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v18 = sub_22C386F18(v17);
    sub_22C3D7A3C(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }

  sub_22C3BDA24();
}

void sub_22C3BC940()
{
  sub_22C3BDA38();
  sub_22C3765A0();
  if (v4)
  {
    sub_22C37259C();
    if (v6 != v7)
    {
      sub_22C376594();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22C388518();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C3BD84C(v5);
  if (v2)
  {
    sub_22C3A5908(&qword_27D9BAD98, &unk_22C90D640);
    v8 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
    sub_22C3699B8(v8);
    v10 = *(v9 + 72);
    v11 = sub_22C36BAB8();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22C3BD83C();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22C374970(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  sub_22C3699C8(v14);
  v16 = *(v15 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v18 = sub_22C386F18(v17);
    sub_22C3D7A68(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }

  sub_22C3BDA24();
}

void sub_22C3BCAD0()
{
  sub_22C3BDA38();
  sub_22C3765A0();
  if (v4)
  {
    sub_22C37259C();
    if (v6 != v7)
    {
      sub_22C376594();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22C388518();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C3BD84C(v5);
  if (v2)
  {
    sub_22C3A5908(&qword_27D9BABD0, &unk_22C90D470);
    v8 = sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
    sub_22C3699B8(v8);
    v10 = *(v9 + 72);
    v11 = sub_22C36BAB8();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22C3BD83C();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22C374970(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
  sub_22C3699C8(v14);
  v16 = *(v15 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v18 = sub_22C386F18(v17);
    sub_22C3D7B34(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }

  sub_22C3BDA24();
}

void *sub_22C3BCC24(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BACB8, &qword_22C90D558);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22C3D874C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BACC0, &unk_22C90D560);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22C3BCD34()
{
  sub_22C3BDA38();
  sub_22C36D5CC();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v7 == v8)
  {
LABEL_7:
    sub_22C372074(v6);
    if (v3)
    {
      sub_22C386714(v9, v10, v11, v12, v13, v14);
      v15 = swift_allocObject();
      sub_22C37E260(v15);
      sub_22C37ABB8(v16 / 24);
      if (v2)
      {
LABEL_9:
        v17 = sub_22C36FB10();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        sub_22C3BDA24();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_22C3797A8();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v7)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_22C3BCDE8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BAB48, &unk_22C91D6F0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22C3D874C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BAB50, &qword_22C90D3F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_22C3BCEF8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BAB58, &qword_22C90D3F8);
  v10 = *(sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D7C4C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_22C3BD0C4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
  v10 = *(sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D7C60(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_22C3BD2CC()
{
  sub_22C36D5CC();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v7 == v8)
  {
LABEL_7:
    sub_22C372074(v6);
    if (v3)
    {
      sub_22C386714(v9, v10, v11, v12, v13, v14);
      v15 = sub_22C3BD968();
      sub_22C37E260(v15);
      sub_22C37ABB8(v16 / 32);
      if (v2)
      {
LABEL_9:
        v17 = sub_22C36FB10();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_22C3797A8();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v7)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_22C3BD378(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BAC58, &qword_22C91D890);
  v10 = *(sub_22C3A5908(&qword_27D9BAC60, &qword_22C90D500) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BAC60, &qword_22C90D500) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D7DE0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_22C3BD544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  v11 = a1;
  if (a3)
  {
    sub_22C37259C();
    if (v13 != v14)
    {
      sub_22C376594();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_22C388518();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_22C386714(a1, a2, a3, a4, a5, a6);
  v17 = a7(0);
  sub_22C3699B8(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  sub_22C37ABB8((v23 - v21) / v19);
LABEL_18:
  v25 = a7(0);
  sub_22C3699C8(v25);
  v27 = *(v26 + 80);
  sub_22C36BA94();
  if (v11)
  {
    a8(a4 + v28, v15, &v22[v28]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_22C3BD6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3BD74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3BD7BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_22C3BD81C(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void sub_22C3BD84C(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_22C3BD968()
{

  return swift_allocObject();
}

uint64_t sub_22C3BD980()
{
  result = v0;
  *(v1 - 72) = v0;
  v3 = *(v0 + 24);
  v4 = *(v0 + 16) + 1;
  return result;
}

void sub_22C3BD99C(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void sub_22C3BD9AC()
{
  *(v2 + 16) = v3;
  v5 = v2 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
}

void sub_22C3BD9FC()
{
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[27];
  v4 = v0[28];
}

uint64_t sub_22C3BDA0C@<X0>(uint64_t a1@<X8>)
{
  result = v3 + a1 + *(v2 + 72) * v1;
  v5 = *(v2 + 32);
  return result;
}

uint64_t sub_22C3BDAC4(uint64_t a1, uint64_t a2)
{

  return sub_22C3A5038(v2, a2, 0);
}

uint64_t sub_22C3BDADC(uint64_t a1)
{
  v2 = sub_22C3BE478();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3BDB18(uint64_t a1)
{
  v2 = sub_22C3BE478();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t AgenticQueryDecorationService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D908];
  v3 = sub_22C90645C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AgenticQueryDecorationService.__allocating_init(toolboxResources:toolExecutionSession:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  AgenticQueryDecorationService.init(toolboxResources:toolExecutionSession:)(a1, a2);
  return v4;
}

uint64_t AgenticQueryDecorationService.init(toolboxResources:toolExecutionSession:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  sub_22C378A4C(a2, v8);
  type metadata accessor for ModularQueryDecorationService();
  swift_allocObject();
  ModularQueryDecorationService.init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:queryDecorator:)();
  v6 = v5;
  sub_22C36FF94(a2);
  *(v3 + 16) = v6;
  return v3;
}

uint64_t AgenticQueryDecorationService.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(type metadata accessor for AgenticPlannerServiceContext(0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for PlannerServiceContext() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3BDDCC, 0, 0);
}

uint64_t sub_22C3BDDCC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(v0[4] + 16);
  sub_22C3B0C34(v0[3], v1);
  PlannerServiceContext.init(adapting:)(v1, v2);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_22C3BDE8C;
  v5 = v0[6];
  v6 = v0[2];

  return sub_22C85DCF4();
}

uint64_t sub_22C3BDE8C()
{
  sub_22C369980();
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v7 + 64) = v6;
  *(v7 + 72) = v0;

  sub_22C3B0C98(v3);
  if (v0)
  {
    v8 = sub_22C3BE0A8;
  }

  else
  {
    v8 = sub_22C3BDFB4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22C3BDFB4()
{
  if (*(v0[8] + 16))
  {
    v2 = v0[5];
    v1 = v0[6];

    v3 = v0[1];
    v4 = v0[8];

    return v3(v4);
  }

  else
  {

    sub_22C3BE2CC();
    swift_allocError();
    swift_willThrow();
    v7 = v0[5];
    v6 = v0[6];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22C3BE0A8()
{
  sub_22C369980();
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t AgenticQueryDecorationService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AgenticQueryDecorationService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22C3BE168()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C37524C;

  return AgenticQueryDecorationService.setup(sessionState:)();
}

uint64_t sub_22C3BE1F4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3B0B10;

  return AgenticQueryDecorationService.handle(_:plannerServiceContext:)();
}

unint64_t sub_22C3BE2CC()
{
  result = qword_27D9BB120;
  if (!qword_27D9BB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB120);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AgenticQueryDecorationServiceError(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C3BE424()
{
  result = qword_27D9BB128;
  if (!qword_27D9BB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB128);
  }

  return result;
}

unint64_t sub_22C3BE478()
{
  result = qword_27D9BB130;
  if (!qword_27D9BB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB130);
  }

  return result;
}

uint64_t sub_22C3BE4E8(uint64_t a1)
{
  v2 = sub_22C3C81E4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3BE524(uint64_t a1)
{
  v2 = sub_22C3C81E4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t AgenticRemotePlanningService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D928];
  v3 = sub_22C90645C();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t AgenticRemotePlanningService.__allocating_init(endpoint:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AgenticRemotePlanningService.init(endpoint:)(a1, a2);
  return v4;
}

uint64_t AgenticRemotePlanningService.init(endpoint:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v65 - v8;
  v9 = sub_22C90046C();
  v10 = sub_22C369824(v9);
  v69 = v11;
  v70 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v67 = v14;
  MEMORY[0x28223BE20](v15);
  v68 = &v65 - v16;
  v17 = sub_22C9063DC();
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v73 = v23;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = (&v65 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v65 - v28;
  *(v3 + 24) = 0;
  sub_22C903FDC();

  v30 = sub_22C9063CC();
  v31 = sub_22C90AACC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_22C36FB44();
    v71 = v27;
    v33 = v32;
    v34 = sub_22C370060();
    v65 = v3;
    v66 = v17;
    v35 = v34;
    v74 = v34;
    *v33 = 136315138;
    if (!a2)
    {
      a1 = 7104878;
    }

    v36 = v20;
    if (a2)
    {
      v37 = a2;
    }

    else
    {
      v37 = 0xE300000000000000;
    }

    v38 = sub_22C36F9F4(a1, v37, &v74);
    v20 = v36;

    *(v33 + 4) = v38;
    _os_log_impl(&dword_22C366000, v30, v31, "Init SimEnvClientWebSocketService() with %s", v33, 0xCu);
    sub_22C36FF94(v35);
    v3 = v65;
    v17 = v66;
    sub_22C3699EC();
    v27 = v71;
    sub_22C3699EC();
  }

  v39 = *(v20 + 8);
  v39(v29, v17);
  v40 = v72;
  if (a2)
  {
    sub_22C90041C();

    v41 = v70;
    if (sub_22C370B74(v40, 1, v70) != 1)
    {
      v55 = v68;
      v54 = v69;
      (*(v69 + 32))(v68, v40, v41);
      v56 = v67;
      (*(v54 + 16))(v67, v55, v41);
      type metadata accessor for SimEnvClientWebSocketService();
      swift_allocObject();
      v57 = sub_22C3C5D4C(v56);
      v58 = v41;
      v53 = v57;
      v59 = *(v54 + 8);
      v27 = (v54 + 8);
      v59(v55, v58);
      goto LABEL_22;
    }

    sub_22C36DD28(v40, &qword_27D9BB138, &qword_22C90DB70);
  }

  sub_22C903FDC();
  v42 = sub_22C9063CC();
  v43 = sub_22C90AADC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = sub_22C36FB44();
    v45 = sub_22C370060();
    v71 = v27;
    v27 = v45;
    v76 = v45;
    *v44 = 136315138;
    swift_getKeyPath();
    v46 = v17;
    v47 = v3;
    sub_22C901F3C();

    if (v75)
    {
      v48 = v74;
    }

    else
    {
      v48 = 7104878;
    }

    if (v75)
    {
      v49 = v75;
    }

    else
    {
      v49 = 0xE300000000000000;
    }

    v50 = sub_22C36F9F4(v48, v49, &v76);
    v3 = v47;
    v17 = v46;

    *(v44 + 4) = v50;
    _os_log_impl(&dword_22C366000, v42, v43, "Unable to resolve endpoint: %s", v44, 0xCu);
    sub_22C36FF94(v27);
    sub_22C372FB0();
    sub_22C3699EC();

    v51 = v71;
    v52 = v46;
  }

  else
  {

    v51 = v27;
    v52 = v17;
  }

  v39(v51, v52);
  v53 = 0;
LABEL_22:
  v60 = v73;
  *(v3 + 16) = v53;
  sub_22C903FDC();
  v61 = sub_22C9063CC();
  v62 = sub_22C90AACC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = sub_22C36D240();
    sub_22C36C890(v63);
    _os_log_impl(&dword_22C366000, v61, v62, "Initialized RemoteServerDeveloperPlannerService", v27, 2u);
    sub_22C372FB0();
  }

  v39(v60, v17);
  return v3;
}

uint64_t AgenticRemotePlanningService.setup(sessionState:)()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C9063DC();
  sub_22C372084(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C3BEC78()
{
  sub_22C3743E4();
  v1 = *(v0[3] + 16);
  v0[9] = v1;
  if (!v1)
  {
    sub_22C3C80C0();
    swift_allocError();
    swift_willThrow();
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];

    sub_22C369A24();
    sub_22C36EC14();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[8];

  sub_22C903FDC();

  v3 = sub_22C9063CC();
  v4 = sub_22C90AACC();
  v5 = sub_22C370048(v4);
  v6 = v0[3];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v6 + 24);

    _os_log_impl(&dword_22C366000, v3, v4, "handshook: %{BOOL}d", v7, 8u);
    sub_22C36BAE0();
  }

  else
  {
    v13 = v0[3];
  }

  v14 = v0[8];
  v15 = v0[4];
  v16 = v0[5];
  v17 = v0[3];
  v18 = *(v16 + 8);
  v0[10] = v18;
  v0[11] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v14, v15);
  if (*(v17 + 24))
  {
    v19 = v0[6];
    sub_22C903FDC();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();
    v22 = sub_22C36D08C(v21);
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[6];
    v26 = v0[4];
    if (v22)
    {
      v27 = sub_22C36D240();
      sub_22C37585C(v27);
      sub_22C369A04(&dword_22C366000, v28, v29, "WS Handshook before; will not handshake again");
      sub_22C36BAE0();
    }

    v30 = sub_22C36BAFC();
    v24(v30);
    v31 = v0[9];
    v32 = swift_task_alloc();
    v0[16] = v32;
    *v32 = v0;
    sub_22C37317C(v32);
    sub_22C36EC14();

    return sub_22C3BF954(v33);
  }

  else
  {
    v36 = swift_task_alloc();
    v0[12] = v36;
    *v36 = v0;
    v36[1] = sub_22C3BEF10;
    sub_22C36EC14();

    return sub_22C3BF3F8();
  }
}

uint64_t sub_22C3BEF10()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 96);
  *v3 = *v1;
  v2[13] = v6;
  v2[14] = v7;
  v2[15] = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C3BF018()
{
  sub_22C3743E4();
  v1 = v0[14];
  if (v1 >> 60 == 15)
  {
    v2 = v0[6];
    sub_22C903FDC();
    v3 = sub_22C9063CC();
    v4 = sub_22C90AACC();
    v5 = sub_22C36D08C(v4);
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[6];
    v9 = v0[4];
    if (v5)
    {
      v10 = sub_22C36D240();
      sub_22C37585C(v10);
      sub_22C369A04(&dword_22C366000, v11, v12, "WS Handshook before; will not handshake again");
      sub_22C36BAE0();
    }

    v13 = sub_22C36BAFC();
    v7(v13);
  }

  else
  {
    v14 = v0[7];
    sub_22C3C8114(v0[13], v1);
    sub_22C903FDC();
    v15 = sub_22C9063CC();
    v16 = sub_22C90AACC();
    if (sub_22C370048(v16))
    {
      v17 = sub_22C36D240();
      sub_22C36C890(v17);
      sub_22C36BB14(&dword_22C366000, v18, v19, "WS Handshook");
      sub_22C372FB0();
    }

    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[7];
    v24 = v0[3];
    v23 = v0[4];

    v25 = sub_22C36BAFC();
    v21(v25);
    *(v24 + 24) = 1;
  }

  v26 = v0[9];
  v27 = swift_task_alloc();
  v0[16] = v27;
  *v27 = v0;
  sub_22C37317C(v27);
  sub_22C36EC14();

  return sub_22C3BF954(v28);
}

uint64_t sub_22C3BF170()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 136) = v0;

  if (!v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C3BF278()
{
  sub_22C36FB38();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C3BF2F8()
{
  sub_22C36FB38();
  v1 = v0[9];

  v2 = v0[15];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  sub_22C369A24();

  return v6();
}

uint64_t sub_22C3BF378()
{
  sub_22C36FB38();
  v1 = v0[9];

  v2 = v0[17];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  sub_22C369A24();

  return v6();
}

uint64_t sub_22C3BF3F8()
{
  v1[6] = v0;
  v2 = sub_22C9063DC();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3BF4B8, 0, 0);
}

uint64_t sub_22C3BF4B8()
{
  sub_22C3743E4();
  v1 = v0[6];
  v2 = v1[2];
  v3 = v1[5];
  v0[2] = v1[4];
  v0[3] = v3;
  sub_22C3C84C0();

  v4 = sub_22C8FFF3C();
  v6 = v5;
  v0[10] = v4;
  v0[11] = v5;

  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_22C3BF5FC;
  v8 = v0[6];

  return sub_22C3C5E84(v4, v6);
}

uint64_t sub_22C3BF5FC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 96);
  *v3 = *v1;
  v2[13] = v6;
  v2[14] = v7;
  v2[15] = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C3BF704()
{
  v27 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  sub_22C903FDC();
  sub_22C3C8514(v2, v1);
  v4 = sub_22C9063CC();
  v5 = sub_22C90AACC();
  sub_22C3C8114(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = sub_22C36FB44();
    v8 = sub_22C370060();
    v26 = v8;
    *v7 = 136315138;
    if (v6 >> 60 == 15)
    {
      v9 = 0xE300000000000000;
      v10 = 7104878;
    }

    else
    {
      *(v0 + 32) = *(v0 + 104);
      sub_22C3C8528();
      v10 = sub_22C909F4C();
      v9 = v14;
    }

    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v17 = *(v0 + 64);
    v24 = *(v0 + 56);
    v25 = *(v0 + 72);
    v18 = sub_22C36F9F4(v10, v9, &v26);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_22C366000, v4, v5, "Hand-shook with response: %s", v7, 0xCu);
    sub_22C36FF94(v8);
    sub_22C36BAE0();
    sub_22C3699EC();
    sub_22C38B120(v16, v15);

    (*(v17 + 8))(v25, v24);
  }

  else
  {
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    sub_22C38B120(*(v0 + 80), *(v0 + 88));

    (*(v12 + 8))(v11, v13);
  }

  v19 = *(v0 + 72);

  v20 = *(v0 + 8);
  v21 = *(v0 + 104);
  v22 = *(v0 + 112);

  return v20(v21, v22);
}

uint64_t sub_22C3BF8F0()
{
  sub_22C369980();
  sub_22C38B120(v0[10], v0[11]);
  v1 = v0[15];
  v2 = v0[9];

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C3BF954(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22C90880C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_22C9087BC();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_22C9063DC();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3BFB08, 0, 0);
}

uint64_t sub_22C3BFB08()
{
  v1 = v0[17];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[2];
  sub_22C903FDC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_22C9063CC();
  v7 = sub_22C90AACC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[8];
  if (v8)
  {
    v42 = v0[11];
    v43 = v0[17];
    v13 = v0[7];
    v14 = v0[5];
    v40 = v0[4];
    v15 = sub_22C36FB44();
    v44 = sub_22C370060();
    *v15 = 136315138;
    v41 = v7;
    sub_22C90878C();
    v16 = sub_22C9087DC();
    (*(v14 + 8))(v13, v40);
    v17 = sub_22C908A0C();
    MEMORY[0x2318B7AD0](v16, v17);

    (*(v10 + 8))(v11, v12);
    v18 = sub_22C36BAFC();
    v21 = sub_22C36F9F4(v18, v19, v20);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_22C366000, v6, v41, "Sending events: %s", v15, 0xCu);
    sub_22C36FF94(v44);
    sub_22C3699EC();
    sub_22C3699EC();

    v22 = *(v9 + 8);
    v22(v43, v42);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
    v22 = *(v9 + 8);
    v23 = sub_22C36BAFC();
    v22(v23, v24);
  }

  v0[18] = v22;
  v26 = v0[5];
  v25 = v0[6];
  v28 = v0[3];
  v27 = v0[4];
  v29 = v0[2];
  sub_22C90878C();
  sub_22C9087DC();
  v30 = *(v26 + 8);
  v31 = sub_22C36BAFC();
  v32(v31);
  v0[19] = sub_22C3C6B7C();
  v0[20] = v33;

  v34 = swift_task_alloc();
  v0[21] = v34;
  *v34 = v0;
  v34[1] = sub_22C3BFE30;
  v35 = v0[3];
  sub_22C375E04();

  return sub_22C3C5E84(v36, v37);
}

uint64_t sub_22C3BFE30()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v6 = *(v5 + 168);
  *v4 = *v1;
  v3[22] = v7;
  v3[23] = v8;
  v3[24] = v0;

  if (!v0)
  {
    sub_22C38B120(v3[19], v3[20]);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_22C3BFF40()
{
  if (v1[23] >> 60 == 15)
  {
    v2 = v1[14];
    sub_22C903FDC();
    v3 = sub_22C9063CC();
    v4 = sub_22C90AADC();
    v5 = sub_22C36D08C(v4);
    v6 = v1[18];
    v7 = v1[14];
    v8 = v1[11];
    v9 = v1[12];
    if (v5)
    {
      v10 = sub_22C36D240();
      sub_22C37585C(v10);
      sub_22C369A04(&dword_22C366000, v11, v12, "Unable to get received data");
      sub_22C36BAE0();
    }

    v13 = sub_22C36BAFC();
    v6(v13);
  }

  else
  {
    v14 = v1[16];
    sub_22C903FDC();
    v15 = sub_22C9063CC();
    v16 = sub_22C90AACC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_22C36D240();
      sub_22C36C890(v17);
      _os_log_impl(&dword_22C366000, v15, v16, "Processing request response", v0, 2u);
      sub_22C372FB0();
    }

    v18 = v1[23];
    v19 = v1[24];
    v20 = v1[22];
    v21 = v1[18];
    v22 = v1[16];
    v23 = v1[11];
    v24 = v1[12];
    v25 = v1[3];

    v21(v22, v23);
    sub_22C3C7240(v20, v18);
    if (v19)
    {
      v26 = v1[13];
      sub_22C903FDC();
      v27 = v19;
      v28 = sub_22C9063CC();
      v29 = sub_22C90AADC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = sub_22C36FB44();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        v32 = v19;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v33;
        *v31 = v33;
        sub_22C3CA698(&dword_22C366000, v34, v35, "Unable to build transcript events: %@");
        sub_22C36DD28(v31, &qword_27D9BB158, qword_22C910FD0);
        sub_22C36BAE0();
        sub_22C3699EC();
      }

      else
      {
      }

      v36 = v1[12] + 8;
      (v1[18])(v1[13], v1[11]);
    }

    v37 = v1[15];
    sub_22C903FDC();
    v38 = sub_22C9063CC();
    v39 = sub_22C90AACC();
    v40 = sub_22C370048(v39);
    v42 = v1[22];
    v41 = v1[23];
    v43 = v1[18];
    v44 = v1[15];
    v45 = v1[11];
    v46 = v1[12];
    if (v40)
    {
      v63 = v1[11];
      v47 = sub_22C36FB44();
      v48 = sub_22C370060();
      v64 = v48;
      *v47 = 136315138;
      v62 = v43;
      v49 = sub_22C908A0C();

      v51 = MEMORY[0x2318B7AD0](v50, v49);
      v61 = v44;
      v53 = v52;

      v54 = sub_22C36F9F4(v51, v53, &v64);

      *(v47 + 4) = v54;
      _os_log_impl(&dword_22C366000, v38, v39, "Going to publish session event (from sim env server): %s", v47, 0xCu);
      sub_22C36FF94(v48);
      sub_22C3699EC();
      sub_22C3699EC();
      sub_22C3C8114(v42, v41);

      v62(v61, v63);
    }

    else
    {
      sub_22C3C8114(v1[22], v1[23]);

      v43(v44, v45);
    }
  }

  v56 = v1[16];
  v55 = v1[17];
  v58 = v1[14];
  v57 = v1[15];
  sub_22C382590();

  sub_22C36D5E0();
  sub_22C375E04();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22C3C034C()
{
  sub_22C3743E4();
  sub_22C38B120(v0[19], v0[20]);
  v1 = v0[24];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  sub_22C382590();

  sub_22C369A24();

  return v6();
}

uint64_t AgenticRemotePlanningService.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C9063DC();
  sub_22C372084(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C3C04B0()
{
  v1 = *(v0[3] + 16);
  v0[7] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_22C3C0618;
    v3 = v0[2];

    return sub_22C3BF954(v3);
  }

  else
  {
    v5 = v0[6];
    sub_22C903FDC();
    v6 = sub_22C9063CC();
    v7 = sub_22C90AADC();
    v8 = sub_22C36D08C(v7);
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    if (v8)
    {
      v12 = sub_22C36D240();
      sub_22C37585C(v12);
      sub_22C369A04(&dword_22C366000, v13, v14, "Websocket session is not found; unable to proceed");
      sub_22C36BAE0();
    }

    v15 = *(v10 + 8);
    v16 = sub_22C36BAFC();
    v17(v16);
    v18 = v0[6];

    sub_22C36D5E0();
    v20 = MEMORY[0x277D84F90];

    return v19(v20);
  }
}

uint64_t sub_22C3C0618()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C3C0728()
{
  sub_22C369980();
  v1 = v0[7];

  v2 = v0[10];
  v3 = v0[6];

  sub_22C36D5E0();

  return v4(v2);
}

uint64_t sub_22C3C0794()
{
  sub_22C369980();
  v2 = v0[6];
  v1 = v0[7];

  sub_22C369A24();
  v4 = v0[9];

  return v3();
}

uint64_t AgenticRemotePlanningService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AgenticRemotePlanningService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22C3C0850()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C382AF4;

  return AgenticRemotePlanningService.setup(sessionState:)();
}

uint64_t sub_22C3C08E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3C0980;

  return AgenticRemotePlanningService.handle(_:plannerServiceContext:)();
}

uint64_t sub_22C3C0980()
{
  sub_22C369980();
  v3 = v2;
  sub_22C369A3C();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;

  sub_22C36D5E0();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_22C3C0AB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x727453636967616DLL && a2 == 0xEB00000000676E69)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C3C0B84(uint64_t a1)
{
  v2 = sub_22C3C8DC4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3C0BC0(uint64_t a1)
{
  v2 = sub_22C3C8DC4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C3C0C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3C0AB0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C3C0C48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C3772DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22C3C0C74(uint64_t a1)
{
  v2 = sub_22C3C8FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C0CB0(uint64_t a1)
{
  v2 = sub_22C3C8FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C0CEC(void *a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB318, &qword_22C90E318);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3C8FBC();
  sub_22C90B6CC();
  sub_22C90B3CC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22C3C0E2C(uint64_t *a1)
{
  v3 = sub_22C3A5908(&qword_27D9BB328, &qword_22C90E320);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_22C374168(a1, a1[3]);
  sub_22C3C8FBC();
  sub_22C90B6BC();
  if (!v1)
  {
    v9 = sub_22C90B2DC();
    (*(v4 + 8))(v7, v3);
  }

  sub_22C36FF94(a1);
  return v9;
}

uint64_t sub_22C3C0F88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022C92FBE0 == a2;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000022C92FC00 == a2;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x800000022C92FC20 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

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

unint64_t sub_22C3C10AC(char a1)
{
  result = 0xD000000000000011;
  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return result;
}

uint64_t sub_22C3C112C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C3C11A4(void *a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB3B0, &qword_22C90E370);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v40 - v4;
  EventRequest = type metadata accessor for SimEnvClientWebSocketService.QueryEventRequest(0);
  v5 = *(*(EventRequest - 8) + 64);
  MEMORY[0x28223BE20](EventRequest);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BB3B8, &qword_22C90E378);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  started = type metadata accessor for SimEnvClientWebSocketService.StartSessionRequest(0);
  v10 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BB3C0, &qword_22C90E380);
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v40 = type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents(0);
  v16 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SimEnvClientWebSocketService.MessageFromSimEnvServer(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22C3A5908(&qword_27D9BB3C8, &qword_22C90E388);
  v23 = *(v54 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v54);
  v26 = &v40 - v25;
  v27 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3C8BC4();
  sub_22C90B6CC();
  sub_22C3C8278(v53, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = (v23 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v44;
      sub_22C3C8C6C(v22, v44);
      v56 = 1;
      sub_22C3C8CC8();
      v31 = v45;
      v32 = v54;
      sub_22C90B36C();
      sub_22C3C8384(&qword_27D9BB3D8, type metadata accessor for SimEnvClientWebSocketService.StartSessionRequest);
      v33 = v47;
      sub_22C90B41C();
      (*(v46 + 8))(v31, v33);
      v34 = type metadata accessor for SimEnvClientWebSocketService.StartSessionRequest;
    }

    else
    {
      v30 = v49;
      sub_22C3C8C6C(v22, v49);
      v57 = 2;
      sub_22C3C8C18();
      v38 = v50;
      v32 = v54;
      sub_22C90B36C();
      sub_22C3C8384(&qword_27D9BB3D0, type metadata accessor for SimEnvClientWebSocketService.QueryEventRequest);
      v39 = v52;
      sub_22C90B41C();
      (*(v51 + 8))(v38, v39);
      v34 = type metadata accessor for SimEnvClientWebSocketService.QueryEventRequest;
    }

    sub_22C3C82D4(v30, v34);
    return (*v29)(v26, v32);
  }

  else
  {
    sub_22C3C8C6C(v22, v18);
    v55 = 0;
    sub_22C3C8D1C();
    v35 = v54;
    sub_22C90B36C();
    sub_22C3C8384(&qword_27D9BB170, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
    v36 = v42;
    sub_22C90B41C();
    (*(v41 + 8))(v15, v36);
    sub_22C3C82D4(v18, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
    return (*v29)(v26, v35);
  }
}

uint64_t sub_22C3C1878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v80 = sub_22C3A5908(&qword_27D9BB240, &qword_22C90E2C8);
  v73 = *(v80 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x28223BE20](v80);
  v76 = &v63 - v4;
  v5 = sub_22C3A5908(&qword_27D9BB248, &qword_22C90E2D0);
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  MEMORY[0x28223BE20](v5);
  v77 = &v63 - v7;
  v8 = sub_22C3A5908(&qword_27D9BB250, &qword_22C90E2D8);
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v75 = &v63 - v10;
  v11 = sub_22C3A5908(&qword_27D9BB258, &unk_22C90E2E0);
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - v13;
  v15 = type metadata accessor for SimEnvClientWebSocketService.MessageFromSimEnvServer(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v63 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v63 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v63 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v81 = a1;
  sub_22C374168(a1, v29);
  sub_22C3C8BC4();
  v30 = v82;
  sub_22C90B6BC();
  if (v30)
  {
    return sub_22C36FF94(v81);
  }

  v65 = v22;
  v66 = v25;
  v67 = v19;
  v68 = v27;
  v32 = v79;
  v31 = v80;
  v82 = v15;
  v33 = v14;
  v34 = sub_22C90B34C();
  result = sub_22C3E1F24(v34, 0);
  if (v37 == v38 >> 1)
  {
LABEL_9:
    v49 = sub_22C90AFBC();
    swift_allocError();
    v51 = v50;
    v52 = *(sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0) + 48);
    *v51 = v82;
    sub_22C90B25C();
    sub_22C90AFAC();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v78 + 8))(v33, v32);
    return sub_22C36FF94(v81);
  }

  if (v37 >= (v38 >> 1))
  {
    __break(1u);
    return result;
  }

  v39 = v14;
  v40 = *(v36 + v37);
  sub_22C3E1F20(v37 + 1);
  v42 = v41;
  v44 = v43;
  swift_unknownObjectRelease();
  if (v42 != v44 >> 1)
  {
    v33 = v39;
    goto LABEL_9;
  }

  if (v40)
  {
    if (v40 == 1)
    {
      v84 = 1;
      sub_22C3C8CC8();
      sub_22C90B24C();
      v45 = v68;
      type metadata accessor for SimEnvClientWebSocketService.StartSessionRequest(0);
      sub_22C3C8384(&qword_27D9BB288, type metadata accessor for SimEnvClientWebSocketService.StartSessionRequest);
      v46 = v65;
      v47 = v72;
      v48 = v77;
      sub_22C90B32C();
      v64 = 0;
      swift_unknownObjectRelease();
      (*(v71 + 8))(v48, v47);
      (*(v78 + 8))(v39, v32);
    }

    else
    {
      v85 = 2;
      sub_22C3C8C18();
      v54 = v76;
      sub_22C90B24C();
      v45 = v68;
      type metadata accessor for SimEnvClientWebSocketService.QueryEventRequest(0);
      sub_22C3C8384(&qword_27D9BB278, type metadata accessor for SimEnvClientWebSocketService.QueryEventRequest);
      v46 = v67;
      sub_22C90B32C();
      v59 = v78;
      v64 = 0;
      swift_unknownObjectRelease();
      (*(v73 + 8))(v54, v31);
      (*(v59 + 8))(v39, v32);
    }

    swift_storeEnumTagMultiPayload();
    v61 = v46;
    v60 = v81;
  }

  else
  {
    v83 = 0;
    sub_22C3C8D1C();
    v53 = v75;
    sub_22C90B24C();
    type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents(0);
    v55 = v53;
    sub_22C3C8384(&qword_27D9BB298, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
    v56 = v66;
    v57 = v70;
    sub_22C90B32C();
    v58 = v78;
    v64 = 0;
    swift_unknownObjectRelease();
    (*(v69 + 8))(v55, v57);
    (*(v58 + 8))(v39, v32);
    swift_storeEnumTagMultiPayload();
    v60 = v81;
    v45 = v68;
    v61 = v56;
  }

  v62 = v74;
  sub_22C3C8C6C(v61, v45);
  sub_22C3C8C6C(v45, v62);
  return sub_22C36FF94(v60);
}

uint64_t sub_22C3C21B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022C92FBE0 == a2;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000022C92FC80 == a2;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x800000022C92FCA0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

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

unint64_t sub_22C3C22D0(char a1)
{
  result = 0xD000000000000011;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000016;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  return result;
}

uint64_t sub_22C3C233C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C3C23B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C3C2428(void *a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB2C8, &qword_22C90E2F8);
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v38 - v4;
  v5 = sub_22C3A5908(&qword_27D9BB2D0, &qword_22C90E300);
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - v7;
  v42 = type metadata accessor for SimEnvClientWebSocketService.SessionStartedResponse(0);
  v8 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BB2D8, &qword_22C90E308);
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v39 = type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents(0);
  v14 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SimEnvClientWebSocketService.MessageToSimEnvServer(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_22C3A5908(&qword_27D9BB2E0, &qword_22C90E310);
  v21 = *(v51 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v51);
  v24 = &v38 - v23;
  v25 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3C8E18();
  sub_22C90B6CC();
  sub_22C3C8278(v50, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = v43;
      sub_22C3C8C6C(v20, v43);
      v54 = 1;
      sub_22C3C8F14();
      v28 = v44;
      v29 = v51;
      sub_22C90B36C();
      sub_22C3C8384(&qword_27D9BB308, type metadata accessor for SimEnvClientWebSocketService.SessionStartedResponse);
      v30 = v47;
      sub_22C90B41C();
      (*(v46 + 8))(v28, v30);
      sub_22C3C82D4(v27, type metadata accessor for SimEnvClientWebSocketService.SessionStartedResponse);
      return (*(v21 + 8))(v24, v29);
    }

    else
    {
      v34 = *v20;
      v55 = 2;
      sub_22C3C8E6C();
      v35 = v45;
      v36 = v51;
      sub_22C90B36C();
      v52 = v34;
      sub_22C3C8EC0();
      v37 = v49;
      sub_22C90B41C();
      (*(v48 + 8))(v35, v37);
      (*(v21 + 8))(v24, v36);
    }
  }

  else
  {
    sub_22C3C8C6C(v20, v16);
    v53 = 0;
    sub_22C3C8F68();
    v32 = v51;
    sub_22C90B36C();
    sub_22C3C8384(&qword_27D9BB170, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
    v33 = v41;
    sub_22C90B41C();
    (*(v40 + 8))(v13, v33);
    sub_22C3C82D4(v16, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
    return (*(v21 + 8))(v24, v32);
  }
}

uint64_t sub_22C3C2A70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v73 = sub_22C3A5908(&qword_27D9BB330, &qword_22C90E328);
  v81 = *(v73 - 8);
  v3 = *(v81 + 64);
  MEMORY[0x28223BE20](v73);
  v78 = &v69 - v4;
  v5 = sub_22C3A5908(&qword_27D9BB338, &qword_22C90E330);
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = *(v76 + 64);
  MEMORY[0x28223BE20](v5);
  v84 = &v69 - v7;
  v8 = sub_22C3A5908(&qword_27D9BB340, &qword_22C90E338);
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  MEMORY[0x28223BE20](v8);
  v79 = &v69 - v10;
  v11 = sub_22C3A5908(&qword_27D9BB348, &qword_22C90E340);
  v82 = *(v11 - 8);
  v83 = v11;
  v12 = *(v82 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - v13;
  v15 = type metadata accessor for SimEnvClientWebSocketService.MessageToSimEnvServer(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v69 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v69 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v69 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v85 = a1;
  sub_22C374168(a1, v29);
  sub_22C3C8E18();
  v30 = v86;
  sub_22C90B6BC();
  if (v30)
  {
    goto LABEL_10;
  }

  v69 = v19;
  v70 = v25;
  v71 = v22;
  v72 = v27;
  v32 = v83;
  v31 = v84;
  v86 = v15;
  v33 = v14;
  v34 = sub_22C90B34C();
  result = sub_22C3E1F24(v34, 0);
  if (v37 == v38 >> 1)
  {
LABEL_9:
    v53 = sub_22C90AFBC();
    swift_allocError();
    v55 = v54;
    v56 = *(sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0) + 48);
    *v55 = v86;
    sub_22C90B25C();
    sub_22C90AFAC();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D84160], v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v82 + 8))(v33, v32);
LABEL_10:
    v57 = v85;
    return sub_22C36FF94(v57);
  }

  if (v37 < (v38 >> 1))
  {
    v39 = v32;
    v40 = *(v36 + v37);
    sub_22C3E1F20(v37 + 1);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    v45 = v42 == v44 >> 1;
    v46 = v81;
    v33 = v14;
    if (v45)
    {
      if (v40)
      {
        if (v40 == 1)
        {
          v89 = 1;
          sub_22C3C8F14();
          v47 = v31;
          v48 = v39;
          sub_22C90B24C();
          v49 = v80;
          v50 = v14;
          type metadata accessor for SimEnvClientWebSocketService.SessionStartedResponse(0);
          sub_22C3C8384(&qword_27D9BB358, type metadata accessor for SimEnvClientWebSocketService.SessionStartedResponse);
          v51 = v71;
          v52 = v77;
          sub_22C90B32C();
          swift_unknownObjectRelease();
          (*(v76 + 8))(v47, v52);
          (*(v82 + 8))(v50, v48);
          swift_storeEnumTagMultiPayload();
          v65 = v51;
        }

        else
        {
          v90 = 2;
          sub_22C3C8E6C();
          v58 = v78;
          sub_22C90B24C();
          v49 = v80;
          v84 = v33;
          sub_22C3C9010();
          v62 = v73;
          v63 = v58;
          sub_22C90B32C();
          v64 = v82;
          swift_unknownObjectRelease();
          (*(v46 + 8))(v63, v62);
          (*(v64 + 8))(v84, v39);
          v68 = v69;
          *v69 = v87;
          swift_storeEnumTagMultiPayload();
          v65 = v68;
        }

        v66 = v72;
        sub_22C3C8C6C(v65, v72);
        v67 = v85;
      }

      else
      {
        v88 = 0;
        sub_22C3C8F68();
        sub_22C90B24C();
        type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents(0);
        sub_22C3C8384(&qword_27D9BB298, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
        v59 = v70;
        v60 = v75;
        v61 = v79;
        sub_22C90B32C();
        swift_unknownObjectRelease();
        (*(v74 + 8))(v61, v60);
        (*(v82 + 8))(v14, v39);
        swift_storeEnumTagMultiPayload();
        v66 = v72;
        sub_22C3C8C6C(v59, v72);
        v67 = v85;
        v49 = v80;
      }

      sub_22C3C8C6C(v66, v49);
      v57 = v67;
      return sub_22C36FF94(v57);
    }

    v32 = v39;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3C336C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C3C0E2C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_22C3C3398(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_22C3C0CEC(a1);
}

uint64_t sub_22C3C33D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3C0F88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C3C341C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C3C10A4();
  *a1 = result;
  return result;
}

uint64_t sub_22C3C3444(uint64_t a1)
{
  v2 = sub_22C3C8BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C3480(uint64_t a1)
{
  v2 = sub_22C3C8BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C34C0(uint64_t a1)
{
  v2 = sub_22C3C8C18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C34FC(uint64_t a1)
{
  v2 = sub_22C3C8C18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C353C(uint64_t a1)
{
  v2 = sub_22C3C8D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C3578(uint64_t a1)
{
  v2 = sub_22C3C8D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C35B4(uint64_t a1)
{
  v2 = sub_22C3C8CC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C35F0(uint64_t a1)
{
  v2 = sub_22C3C8CC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C3664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3C21B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C3C368C(uint64_t a1)
{
  v2 = sub_22C3C8E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C36C8(uint64_t a1)
{
  v2 = sub_22C3C8E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C3708(uint64_t a1)
{
  v2 = sub_22C3C8E6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C3744(uint64_t a1)
{
  v2 = sub_22C3C8E6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C3780(uint64_t a1)
{
  v2 = sub_22C3C8F14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C37BC(uint64_t a1)
{
  v2 = sub_22C3C8F14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C37F8(uint64_t a1)
{
  v2 = sub_22C3C8F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C3834(uint64_t a1)
{
  v2 = sub_22C3C8F68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C38A0()
{
  v0 = sub_22C90083C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C90063C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90062C();
  v10 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v10 setFormatOptions_];
  sub_22C90082C();
  v11 = sub_22C90081C();
  (*(v1 + 8))(v4, v0);
  [v10 setTimeZone_];

  v12 = sub_22C9005AC();
  v13 = [v10 stringFromDate_];

  v14 = sub_22C90A11C();
  (*(v6 + 8))(v9, v5);
  return v14;
}

uint64_t sub_22C3C3AA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D697465746164 && a2 == 0xEE00676E69727453;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746361736E617274 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_22C90B4FC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000022C92FC40 == a2;
        if (v8 || (sub_22C90B4FC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000013 && 0x800000022C92FC60 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C90B4FC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_22C3C3C70(unsigned __int8 a1)
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](a1);
  return sub_22C90B66C();
}

unint64_t sub_22C3C3CB8(char a1)
{
  result = 0x656D697465746164;
  switch(a1)
  {
    case 1:
      result = 0x496E6F6973736573;
      break;
    case 2:
      result = 0x746361736E617274;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C3C3D6C(void *a1)
{
  v3 = v1;
  v5 = sub_22C3A5908(&qword_27D9BB2A0, &qword_22C90E2F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3C8D70();
  sub_22C90B6CC();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_22C90B3CC();
  if (!v2)
  {
    v13 = type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents(0);
    v14 = v13[5];
    v19[14] = 1;
    sub_22C90069C();
    sub_22C3C8384(&qword_27D9BB2B0, MEMORY[0x277CC95F0]);
    sub_22C90B41C();
    v15 = v13[6];
    v19[13] = 2;
    sub_22C902B7C();
    sub_22C3C8384(&qword_27D9BB2B8, MEMORY[0x277D1D140]);
    sub_22C90B41C();
    v16 = *(v3 + v13[7]);
    v19[12] = 3;
    sub_22C90B40C();
    v17 = *(v3 + v13[8]);
    v19[11] = 4;
    sub_22C90B40C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22C3C3FF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_22C902B7C();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90069C();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BB410, &qword_22C90E3B0);
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v30 - v12;
  v14 = type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3C8D70();
  v39 = v13;
  v19 = v40;
  sub_22C90B6BC();
  if (v19)
  {
    return sub_22C36FF94(a1);
  }

  v40 = a1;
  v31 = v14;
  v20 = v38;
  v45 = 0;
  v21 = v36;
  v22 = v37;
  v23 = v17;
  *v17 = sub_22C90B2DC();
  v17[1] = v24;
  v30[1] = v24;
  v44 = 1;
  sub_22C3C8384(&qword_27D9BB380, MEMORY[0x277CC95F0]);
  sub_22C90B32C();
  (*(v20 + 32))(v17 + v31[5], v9, v6);
  v43 = 2;
  sub_22C3C8384(&qword_27D9BB418, MEMORY[0x277D1D140]);
  v25 = v33;
  v26 = v35;
  v30[0] = 0;
  sub_22C90B32C();
  (*(v34 + 32))(v23 + v31[6], v25, v26);
  v42 = 3;
  *(v23 + v31[7]) = sub_22C90B31C();
  v41 = 4;
  v27 = sub_22C90B31C();
  (*(v21 + 8))(v39, v22);
  v28 = v32;
  *(v23 + v31[8]) = v27;
  sub_22C3C8278(v23, v28);
  sub_22C36FF94(v40);
  return sub_22C3C82D4(v23, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
}

uint64_t sub_22C3C45A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C3C4644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_22C90069C();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BB3F8, &qword_22C90E3A0);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  started = type metadata accessor for SimEnvClientWebSocketService.StartSessionRequest(0);
  v12 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3C91EC();
  sub_22C90B6BC();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_22C3C8384(&qword_27D9BB380, MEMORY[0x277CC95F0]);
    sub_22C90B32C();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_22C3C8C6C(v14, v17);
  }

  return sub_22C36FF94(a1);
}

uint64_t sub_22C3C48E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C3C497C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = sub_22C3A5908(a2, a3);
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - v12;
  v14 = a1[4];
  sub_22C374168(a1, a1[3]);
  a4();
  sub_22C90B6CC();
  sub_22C90069C();
  sub_22C3725C0();
  sub_22C3C8384(v15, v16);
  sub_22C90B41C();
  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_22C3C4AE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_22C90069C();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BB398, &qword_22C90E360);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SimEnvClientWebSocketService.SessionStartedResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3C9144();
  sub_22C90B6BC();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_22C3C8384(&qword_27D9BB380, MEMORY[0x277CC95F0]);
    sub_22C90B32C();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_22C3C8C6C(v14, v17);
  }

  return sub_22C36FF94(a1);
}

uint64_t sub_22C3C4D7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

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

uint64_t sub_22C3C4E50(char a1)
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](a1 & 1);
  return sub_22C90B66C();
}

uint64_t sub_22C3C4E98(char a1)
{
  if (a1)
  {
    return 0x7972657571;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_22C3C4ED0(void *a1)
{
  v3 = v1;
  v5 = sub_22C3A5908(&qword_27D9BB3F0, &qword_22C90E398);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3C9198();
  sub_22C90B6CC();
  v15[15] = 0;
  sub_22C90069C();
  sub_22C3C8384(&qword_27D9BB2B0, MEMORY[0x277CC95F0]);
  sub_22C90B41C();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for SimEnvClientWebSocketService.QueryEventRequest(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_22C90B3CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22C3C508C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_22C90069C();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22C3A5908(&qword_27D9BB3E0, &qword_22C90E390);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v26 - v9;
  EventRequest = type metadata accessor for SimEnvClientWebSocketService.QueryEventRequest(0);
  v12 = *(*(EventRequest - 8) + 64);
  MEMORY[0x28223BE20](EventRequest);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3C9198();
  sub_22C90B6BC();
  if (v2)
  {
    return sub_22C36FF94(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_22C3C8384(&qword_27D9BB380, MEMORY[0x277CC95F0]);
  v18 = v30;
  sub_22C90B32C();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_22C90B2DC();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(EventRequest + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_22C3C8278(v23, v22);
  sub_22C36FF94(a1);
  return sub_22C3C82D4(v23, type metadata accessor for SimEnvClientWebSocketService.QueryEventRequest);
}

uint64_t sub_22C3C53E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C3C546C(void *a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB388, &qword_22C90E358);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3C9064();
  sub_22C90B6CC();
  v11[1] = a2;
  sub_22C3A5908(&qword_27D9BB370, &qword_22C90E350);
  sub_22C3C90B8(&qword_27D9BB390, &qword_27D9BB2B0);
  sub_22C90B41C();
  return (*(v5 + 8))(v8, v4);
}

void *sub_22C3C5600(uint64_t *a1)
{
  v3 = sub_22C3A5908(&qword_27D9BB360, &qword_22C90E348);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_22C374168(a1, a1[3]);
  sub_22C3C9064();
  sub_22C90B6BC();
  if (v1)
  {
    sub_22C36FF94(a1);
  }

  else
  {
    sub_22C3A5908(&qword_27D9BB370, &qword_22C90E350);
    sub_22C3C90B8(&qword_27D9BB378, &qword_27D9BB380);
    sub_22C90B32C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_22C36FF94(a1);
  }

  return v9;
}

uint64_t sub_22C3C57BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C3C5810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3C3AA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C3C5838@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C3C3C68();
  *a1 = result;
  return result;
}

uint64_t sub_22C3C5860(uint64_t a1)
{
  v2 = sub_22C3C8D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C589C(uint64_t a1)
{
  v2 = sub_22C3C8D70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C590C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3C45A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C3C5938(uint64_t a1)
{
  v2 = sub_22C3C91EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C5974(uint64_t a1)
{
  v2 = sub_22C3C91EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C5A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3C48E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C3C5A3C(uint64_t a1)
{
  v2 = sub_22C3C9144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C5A78(uint64_t a1)
{
  v2 = sub_22C3C9144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C5B18()
{
  v1 = *v0;
  sub_22C90B62C();
  sub_22C3A4FC0(v3, v1);
  return sub_22C90B66C();
}

uint64_t sub_22C3C5B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3C4D7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C3C5B8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C3C4E48();
  *a1 = result;
  return result;
}

uint64_t sub_22C3C5BB4(uint64_t a1)
{
  v2 = sub_22C3C9198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C5BF0(uint64_t a1)
{
  v2 = sub_22C3C9198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3C5C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3C53E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C3C5C8C(uint64_t a1)
{
  v2 = sub_22C3C9064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3C5CC8(uint64_t a1)
{
  v2 = sub_22C3C9064();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_22C3C5D04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_22C3C5600(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_22C3C5D4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C8FFF5C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v1[2] = sub_22C8FFF4C();
  v7 = sub_22C8FFECC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v1[3] = sub_22C8FFEBC();
  v1[4] = 0xD000000000000011;
  v1[5] = 0x800000022C92FB90;
  v10 = [objc_opt_self() sharedSession];
  v11 = sub_22C9003AC();
  v12 = [v10 webSocketTaskWithURL_];

  v2[6] = v12;
  [v12 resume];
  v13 = sub_22C90046C();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v2;
}

uint64_t sub_22C3C5E84(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22C90AB8C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3C5FEC, 0, 0);
}

uint64_t sub_22C3C5FEC()
{
  v1 = *(v0 + 128);
  sub_22C903FDC();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (sub_22C370048(v3))
  {
    v4 = sub_22C36D240();
    sub_22C36C890(v4);
    sub_22C36BB14(&dword_22C366000, v5, v6, "Sending message to websocket");
    sub_22C372FB0();
  }

  v7 = *(v0 + 128);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 72);
  v11 = *(v0 + 48);
  v20 = *(v0 + 40);
  v13 = *(v0 + 24);
  v12 = *(v0 + 32);
  v14 = *(v0 + 16);

  *(v0 + 136) = *(v9 + 8);
  v15 = sub_22C36BAFC();
  v16(v15);
  *(v0 + 144) = *(v12 + 48);
  *v10 = v14;
  v10[1] = v13;
  *(v0 + 200) = *MEMORY[0x277CC9DB8];
  (*(v11 + 104))(v10);
  sub_22C3C832C(v14, v13);
  v17 = sub_22C36FB5C(&unk_22C90DD70);
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_22C3C6160;
  v18 = *(v0 + 72);

  return v20(v18);
}

uint64_t sub_22C3C6160()
{
  sub_22C36FB38();
  v2 = *v1;
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  v5 = v2[19];
  *v4 = *v1;
  v3[20] = v0;

  v6 = v2[9];
  v7 = v2[6];
  v8 = v2[5];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (!v0)
  {
    v3[21] = v10;
    v3[22] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v10(v6, v8);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C3C62D0()
{
  v1 = v0[15];
  sub_22C903FDC();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (sub_22C370048(v3))
  {
    v4 = sub_22C36D240();
    sub_22C36C890(v4);
    sub_22C36BB14(&dword_22C366000, v5, v6, "Waiting for response from websocket");
    sub_22C372FB0();
  }

  v7 = v0[17];
  v8 = v0[15];
  v9 = v0[10];
  v10 = v0[11];

  v11 = sub_22C36BAFC();
  v7(v11);
  v12 = sub_22C36FB5C(&unk_22C90DD78);
  v0[23] = v12;
  *v12 = v0;
  v12[1] = sub_22C3C63E4;
  v13 = v0[18];
  v14 = v0[8];

  return v16(v14);
}

uint64_t sub_22C3C63E4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 192) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C3C64E0()
{
  v58 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  (*(v4 + 16))(v2, *(v0 + 64), v3);
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == v1)
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 56);
    (*(*(v0 + 48) + 96))(v7, *(v0 + 40));
    v53 = v7[1];
    v54 = *v7;
    sub_22C903FDC();
    v8 = sub_22C9063CC();
    v9 = sub_22C90AACC();
    if (sub_22C36D08C(v9))
    {
      v10 = sub_22C36D240();
      sub_22C37585C(v10);
      sub_22C369A04(&dword_22C366000, v11, v12, "Received data from websocket");
      sub_22C36BAE0();
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);
    v16 = *(v0 + 112);
    v47 = *(v0 + 176);
    v48 = *(v0 + 120);
    v49 = *(v0 + 104);
    v50 = *(v0 + 96);
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 64);
    v51 = *(v0 + 72);
    v52 = *(v0 + 56);
    v20 = *(v0 + 40);

    v15(v16, v18);
    v13(v19, v20);

    v21 = *(v0 + 8);

    return v21(v54, v53);
  }

  else
  {
    if (v5 == *MEMORY[0x277CC9DC0])
    {
      v23 = *(v0 + 104);
      v24 = *(v0 + 56);
      (*(*(v0 + 48) + 96))(v24, *(v0 + 40));
      v25 = *v24;
      v26 = v24[1];
      v55 = v25;
      sub_22C903FDC();

      v27 = sub_22C9063CC();
      v28 = sub_22C90AACC();

      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 136);
      v31 = *(v0 + 104);
      v33 = *(v0 + 80);
      v32 = *(v0 + 88);
      if (v29)
      {
        v34 = sub_22C36FB44();
        v35 = sub_22C370060();
        v56 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_22C36F9F4(v55, v26, &v56);
        _os_log_impl(&dword_22C366000, v27, v28, "Received string: %s", v34, 0xCu);
        sub_22C36FF94(v35);
        sub_22C3699EC();
        sub_22C3699EC();
      }

      v30(v31, v33);
      v37 = *(v0 + 168);
      v36 = *(v0 + 176);
      v38 = *(v0 + 64);
      v39 = *(v0 + 40);
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_22C90AF5C();
      MEMORY[0x2318B7850](0xD000000000000032, 0x800000022C92FB50);
      MEMORY[0x2318B7850](v55, v26);

      v40 = v56;
      v41 = v57;
      sub_22C3C83CC();
      swift_allocError();
      *v42 = v40;
      *(v42 + 8) = v41;
      *(v42 + 16) = 5;
      swift_willThrow();
    }

    else
    {
      v37 = *(v0 + 168);
      v43 = *(v0 + 176);
      v38 = *(v0 + 56);
      v44 = *(v0 + 64);
      v39 = *(v0 + 40);
      sub_22C3C83CC();
      swift_allocError();
      *v45 = 0xD000000000000027;
      *(v45 + 8) = 0x800000022C92FB20;
      *(v45 + 16) = 5;
      swift_willThrow();
      v37(v44, v39);
    }

    v37(v38, v39);
    sub_22C3CA674();

    sub_22C369A24();

    return v46();
  }
}

uint64_t sub_22C3C6938()
{
  v1 = v0[20];
  v2 = v0[12];
  sub_22C903FDC();
  v3 = v1;
  v4 = sub_22C9063CC();
  v5 = sub_22C90AADC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = sub_22C36FB44();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    sub_22C3CA698(&dword_22C366000, v11, v12, "Unable to communicate with websocket: %@");
    sub_22C36DD28(v8, &qword_27D9BB158, qword_22C910FD0);
    sub_22C36BAE0();
    sub_22C3699EC();
  }

  v13 = v0[20];
  v14 = v0[17];
  v16 = v0[11];
  v15 = v0[12];
  v17 = v0[10];

  v14(v15, v17);
  swift_willThrow();
  v18 = v0[20];
  sub_22C3CA674();

  sub_22C369A24();

  return v19();
}

uint64_t sub_22C3C6AD4()
{
  sub_22C3743E4();
  v1 = *(v0 + 192);
  sub_22C3CA674();

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C3C6B7C()
{
  v2 = v1;
  v3 = *v0;
  v66 = v0;
  v65 = v3;
  v4 = type metadata accessor for SimEnvClientWebSocketService.MessageToSimEnvServer(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents(0);
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v56 - v13;
  v14 = sub_22C902B7C();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14);
  v67 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C908A0C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  MEMORY[0x28223BE20](v21);
  v27 = &v56 - v26;
  v28 = *(v25 + 16);
  if (!v28)
  {
    return 0;
  }

  v58 = v4;
  v59 = v14;
  v60 = v10;
  v61 = v7;
  v29 = v25 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v30 = *(v18 + 16);
  v73 = v18 + 16;
  v74 = v24;
  v31 = v28;
  v72 = v30;
  v30(v23, v29, v17);
  v33 = *(v18 + 32);
  v32 = v18 + 32;
  v62 = v27;
  v33(v27, v23, v17);
  v76 = MEMORY[0x277D84F90];
  sub_22C3B61C8();
  v34 = v74;
  v35 = v76;
  v75 = (v32 - 24);
  v70 = *(v32 + 40);
  v71 = v17;
  v57 = v31;
  v36 = v17;
  while (1)
  {
    v72(v34, v29, v36);
    sub_22C3C8384(&qword_27D9BB198, MEMORY[0x277D1E890]);
    v37 = sub_22C90860C();
    if (v2)
    {
      break;
    }

    v39 = v37;
    v40 = v38;
    v69 = *v75;
    v69(v34, v36);
    v76 = v35;
    v41 = *(v35 + 16);
    if (v41 >= *(v35 + 24) >> 1)
    {
      sub_22C3B61C8();
      v35 = v76;
    }

    *(v35 + 16) = v41 + 1;
    v42 = v35 + 16 * v41;
    *(v42 + 32) = v39;
    *(v42 + 40) = v40;
    v36 = v71;
    v29 += v70;
    --v31;
    v2 = 0;
    v34 = v74;
    if (!v31)
    {
      v44 = v62;
      sub_22C9088DC();
      sub_22C90891C();
      sub_22C909F0C();
      v45 = v67;
      sub_22C902B5C();
      v46 = v64;
      v47 = v60;
      v48 = v60 + *(v64 + 20);
      sub_22C9089FC();
      v49 = v68;
      v50 = v59;
      (*(v68 + 16))(v47 + v46[6], v45, v59);
      *v47 = sub_22C3C38A0();
      v47[1] = v51;
      v52 = v57;
      *(v47 + v46[7]) = v57;
      *(v47 + v46[8]) = v52;
      v53 = v66[2];
      v54 = v61;
      sub_22C3C8278(v47, v61);
      swift_storeEnumTagMultiPayload();
      sub_22C3C8384(&qword_27D9BB1A0, type metadata accessor for SimEnvClientWebSocketService.MessageToSimEnvServer);
      v34 = sub_22C8FFF3C();
      sub_22C3C82D4(v54, type metadata accessor for SimEnvClientWebSocketService.MessageToSimEnvServer);
      sub_22C3C82D4(v47, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
      (*(v49 + 8))(v45, v50);
      v69(v44, v71);
      return v34;
    }
  }

  v43 = *v75;
  (*v75)(v34, v36);
  v43(v62, v36);

  return v34;
}

void sub_22C3C7240(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v77 = a1;
  v78 = a2;
  v81 = sub_22C908A0C();
  v79 = *(v81 - 8);
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents(0);
  v6 = *(*(v71 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v71);
  v70 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v68 - v9;
  v75 = type metadata accessor for SimEnvClientWebSocketService.MessageFromSimEnvServer(0);
  v10 = *(*(v75 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v75);
  v74 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v68 - v13;
  v15 = sub_22C9063DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v72 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v68 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v68 - v23;
  sub_22C903FDC();
  v25 = sub_22C9063CC();
  v26 = sub_22C90AACC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v69 = v2;
    v28 = v15;
    v29 = v27;
    *v27 = 0;
    _os_log_impl(&dword_22C366000, v25, v26, "Reconstruct event from data", v27, 2u);
    v30 = v29;
    v15 = v28;
    v3 = v69;
    MEMORY[0x2318B9880](v30, -1, -1);
  }

  v31 = *(v16 + 8);
  v31(v24, v15);
  v32 = *(v76 + 3);
  sub_22C3C8384(&qword_27D9BB160, type metadata accessor for SimEnvClientWebSocketService.MessageFromSimEnvServer);
  sub_22C8FFEAC();
  if (!v3)
  {
    v69 = v31;
    v33 = v74;
    sub_22C3C8278(v14, v74);
    if (swift_getEnumCaseMultiPayload())
    {
      v34 = v14;
      sub_22C3C82D4(v33, type metadata accessor for SimEnvClientWebSocketService.MessageFromSimEnvServer);
      v35 = v72;
      sub_22C903FDC();
      v36 = sub_22C9063CC();
      v37 = sub_22C90AADC();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v69;
      if (v38)
      {
        v40 = v15;
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_22C366000, v36, v37, "Did not get a SideChannelEvents payload from the server", v41, 2u);
        v42 = v41;
        v15 = v40;
        MEMORY[0x2318B9880](v42, -1, -1);
      }

      v39(v35, v15);
      v43 = v34;
      goto LABEL_8;
    }

    v77 = v14;
    v78 = v15;
    v44 = v73;
    sub_22C3C8C6C(v33, v73);
    sub_22C903FDC();
    v45 = v70;
    sub_22C3C8278(v44, v70);
    v46 = sub_22C9063CC();
    v47 = v22;
    v48 = sub_22C90AACC();
    v49 = os_log_type_enabled(v46, v48);
    v50 = v69;
    if (v49)
    {
      v51 = v45;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v82 = v53;
      *v52 = 136315138;
      sub_22C3C8384(&qword_27D9BB170, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
      v76 = v47;
      v54 = v51;
      v55 = sub_22C909F4C();
      v57 = v56;
      sub_22C3C82D4(v54, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
      v58 = sub_22C36F9F4(v55, v57, &v82);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_22C366000, v46, v48, "Received sideChannelEvents:\n %s", v52, 0xCu);
      sub_22C36FF94(v53);
      MEMORY[0x2318B9880](v53, -1, -1);
      v44 = v73;
      MEMORY[0x2318B9880](v52, -1, -1);

      v69(v76, v78);
    }

    else
    {

      sub_22C3C82D4(v45, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
      v50(v47, v78);
    }

    v59 = v44 + *(v71 + 24);
    v60 = sub_22C902B6C();
    v61 = *(v60 + 16);
    v62 = v77;
    if (!v61)
    {

      sub_22C3C82D4(v44, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
      v43 = v62;
LABEL_8:
      sub_22C3C82D4(v43, type metadata accessor for SimEnvClientWebSocketService.MessageFromSimEnvServer);
      return;
    }

    v82 = MEMORY[0x277D84F90];
    sub_22C3B6068(0, v61, 0);
    v63 = 0;
    v64 = v82;
    v78 = v79 + 32;
    v65 = (v60 + 40);
    while (v63 < *(v60 + 16))
    {
      sub_22C3C832C(*(v65 - 1), *v65);
      sub_22C3C8384(&qword_27D9BB168, MEMORY[0x277D1E890]);
      sub_22C9085FC();
      v82 = v64;
      v67 = *(v64 + 16);
      v66 = *(v64 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_22C3B6068(v66 > 1, v67 + 1, 1);
        v64 = v82;
      }

      ++v63;
      *(v64 + 16) = v67 + 1;
      (*(v79 + 32))(v64 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v67, v80, v81);
      v65 += 2;
      if (v61 == v63)
      {

        sub_22C3C82D4(v73, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
        sub_22C3C82D4(v77, type metadata accessor for SimEnvClientWebSocketService.MessageFromSimEnvServer);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22C3C7ADC(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22C3C7AFC, 0, 0);
}

uint64_t sub_22C3C7AFC()
{
  sub_22C36FB38();
  v1 = v0 + 2;
  v3 = v0[10];
  v2 = v0[11];
  v0[2] = v0;
  v0[3] = sub_22C3C7BD8;
  v4 = swift_continuation_init();
  *(swift_allocObject() + 16) = v4;
  sub_22C90AB7C();

  return MEMORY[0x282200938](v1);
}

uint64_t sub_22C3C7BD8()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369A30();
  *v3 = v1;
  if (*(v2 + 48))
  {
    v4 = *(v2 + 48);
    swift_willThrow();
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_22C3C7CD4(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22C3C7CF4, 0, 0);
}

uint64_t sub_22C3C7CF4()
{
  sub_22C36FB38();
  v1 = v0 + 2;
  v2 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_22C3CA664;
  v4 = swift_continuation_init();
  *(swift_allocObject() + 16) = v4;
  sub_22C90AB9C();

  return MEMORY[0x282200938](v1);
}

uint64_t sub_22C3C7DD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t sub_22C3C7E08()
{
  sub_22C3C7DD0();

  return swift_deallocClassInstance();
}

uint64_t sub_22C3C7E38(void *a1)
{
  if (a1)
  {
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_allocError();
    *v2 = a1;
    v3 = a1;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_22C3C7EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90AB8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BB180, &unk_22C90DD80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_22C3C8428(a1, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_allocError();
    *v14 = v13;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    v16 = *(v5 + 32);
    v16(v8, v12, v4);
    v16(*(*(a2 + 64) + 40), v8, v4);
    return swift_continuation_throwingResume();
  }
}

unint64_t sub_22C3C80C0()
{
  result = qword_27D9BB140;
  if (!qword_27D9BB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB140);
  }

  return result;
}

uint64_t sub_22C3C8114(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22C38B120(a1, a2);
  }

  return a1;
}

unint64_t sub_22C3C8190()
{
  result = qword_27D9BB148;
  if (!qword_27D9BB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB148);
  }

  return result;
}

unint64_t sub_22C3C81E4()
{
  result = qword_27D9BB150;
  if (!qword_27D9BB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB150);
  }

  return result;
}

uint64_t sub_22C3C8278(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v6 = v5(v4);
  sub_22C36985C(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22C3C82D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C3C832C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22C3C8384(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22C3C83CC()
{
  result = qword_27D9BB178;
  if (!qword_27D9BB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB178);
  }

  return result;
}

uint64_t sub_22C3C8428(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB180, &unk_22C90DD80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C3C84C0()
{
  result = qword_27D9BB1A8;
  if (!qword_27D9BB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB1A8);
  }

  return result;
}

uint64_t sub_22C3C8514(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22C3C832C(a1, a2);
  }

  return a1;
}

unint64_t sub_22C3C8528()
{
  result = qword_27D9BB1B0;
  if (!qword_27D9BB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB1B0);
  }

  return result;
}

uint64_t sub_22C3C857C(uint64_t a1, int a2)
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

uint64_t sub_22C3C85BC(uint64_t result, int a2, int a3)
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

void sub_22C3C8608()
{
  sub_22C3C86C8(319, &qword_27D9BB1C8, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
  if (v0 <= 0x3F)
  {
    sub_22C3C86C8(319, &qword_27D9BB1D0, type metadata accessor for SimEnvClientWebSocketService.SessionStartedResponse);
    if (v1 <= 0x3F)
    {
      sub_22C3C8734();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22C3C86C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

ValueMetadata *sub_22C3C8734()
{
  result = qword_27D9BB1D8;
  if (!qword_27D9BB1D8)
  {
    result = &type metadata for SimEnvClientWebSocketService.QueryEventResponse;
    atomic_store(&type metadata for SimEnvClientWebSocketService.QueryEventResponse, &qword_27D9BB1D8);
  }

  return result;
}

uint64_t sub_22C3C8794(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 initializeBufferWithCopyOfBuffer for PromptString.TaggedRange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22C3C87C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 17))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C3C8804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22C3C8848(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

void sub_22C3C8870()
{
  sub_22C3C86C8(319, &qword_27D9BB1C8, type metadata accessor for SimEnvClientWebSocketService.SideChannelEvents);
  if (v0 <= 0x3F)
  {
    sub_22C3C86C8(319, &qword_27D9BB200, type metadata accessor for SimEnvClientWebSocketService.StartSessionRequest);
    if (v1 <= 0x3F)
    {
      sub_22C3C86C8(319, &qword_27D9BB208, type metadata accessor for SimEnvClientWebSocketService.QueryEventRequest);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C3C898C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C3C89EC()
{
  result = sub_22C90069C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C3C8A88()
{
  result = sub_22C90069C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C3C8B1C()
{
  result = sub_22C90069C();
  if (v1 <= 0x3F)
  {
    result = sub_22C902B7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C3C8BC4()
{
  result = qword_27D9BB260;
  if (!qword_27D9BB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB260);
  }

  return result;
}

unint64_t sub_22C3C8C18()
{
  result = qword_27D9BB270;
  if (!qword_27D9BB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB270);
  }

  return result;
}

uint64_t sub_22C3C8C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v6 = v5(v4);
  sub_22C36985C(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

unint64_t sub_22C3C8CC8()
{
  result = qword_27D9BB280;
  if (!qword_27D9BB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB280);
  }

  return result;
}

unint64_t sub_22C3C8D1C()
{
  result = qword_27D9BB290;
  if (!qword_27D9BB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB290);
  }

  return result;
}

unint64_t sub_22C3C8D70()
{
  result = qword_27D9BB2A8;
  if (!qword_27D9BB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB2A8);
  }

  return result;
}

unint64_t sub_22C3C8DC4()
{
  result = qword_27D9BB2C0;
  if (!qword_27D9BB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB2C0);
  }

  return result;
}

unint64_t sub_22C3C8E18()
{
  result = qword_27D9BB2E8;
  if (!qword_27D9BB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB2E8);
  }

  return result;
}

unint64_t sub_22C3C8E6C()
{
  result = qword_27D9BB2F0;
  if (!qword_27D9BB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB2F0);
  }

  return result;
}

unint64_t sub_22C3C8EC0()
{
  result = qword_27D9BB2F8;
  if (!qword_27D9BB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB2F8);
  }

  return result;
}

unint64_t sub_22C3C8F14()
{
  result = qword_27D9BB300;
  if (!qword_27D9BB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB300);
  }

  return result;
}

unint64_t sub_22C3C8F68()
{
  result = qword_27D9BB310;
  if (!qword_27D9BB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB310);
  }

  return result;
}

unint64_t sub_22C3C8FBC()
{
  result = qword_27D9BB320;
  if (!qword_27D9BB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB320);
  }

  return result;
}

unint64_t sub_22C3C9010()
{
  result = qword_27D9BB350;
  if (!qword_27D9BB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB350);
  }

  return result;
}

unint64_t sub_22C3C9064()
{
  result = qword_27D9BB368;
  if (!qword_27D9BB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB368);
  }

  return result;
}

uint64_t sub_22C3C90B8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BB370, &qword_22C90E350);
    sub_22C3725C0();
    sub_22C3C8384(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C3C9144()
{
  result = qword_27D9BB3A0;
  if (!qword_27D9BB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB3A0);
  }

  return result;
}

unint64_t sub_22C3C9198()
{
  result = qword_27D9BB3E8;
  if (!qword_27D9BB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB3E8);
  }

  return result;
}

unint64_t sub_22C3C91EC()
{
  result = qword_27D9BB400;
  if (!qword_27D9BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SimEnvClientWebSocketService.QueryEventRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SimEnvClientWebSocketService.QueryEventRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SimEnvClientWebSocketService.SideChannelEvents.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SimEnvClientWebSocketService.SideChannelEvents.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AgenticPlannerRoutingScheme(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_22C3C9610(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22C3C970C(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C3C97BC()
{
  result = qword_27D9BB420;
  if (!qword_27D9BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB420);
  }

  return result;
}

unint64_t sub_22C3C9814()
{
  result = qword_27D9BB428;
  if (!qword_27D9BB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB428);
  }

  return result;
}

unint64_t sub_22C3C986C()
{
  result = qword_27D9BB430;
  if (!qword_27D9BB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB430);
  }

  return result;
}

unint64_t sub_22C3C98C4()
{
  result = qword_27D9BB438;
  if (!qword_27D9BB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB438);
  }

  return result;
}

unint64_t sub_22C3C991C()
{
  result = qword_27D9BB440;
  if (!qword_27D9BB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB440);
  }

  return result;
}

unint64_t sub_22C3C9974()
{
  result = qword_27D9BB448;
  if (!qword_27D9BB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB448);
  }

  return result;
}

unint64_t sub_22C3C99CC()
{
  result = qword_27D9BB450;
  if (!qword_27D9BB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB450);
  }

  return result;
}

unint64_t sub_22C3C9A24()
{
  result = qword_27D9BB458;
  if (!qword_27D9BB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB458);
  }

  return result;
}

unint64_t sub_22C3C9A7C()
{
  result = qword_27D9BB460;
  if (!qword_27D9BB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB460);
  }

  return result;
}

unint64_t sub_22C3C9AD4()
{
  result = qword_27D9BB468;
  if (!qword_27D9BB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB468);
  }

  return result;
}

unint64_t sub_22C3C9B2C()
{
  result = qword_27D9BB470;
  if (!qword_27D9BB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB470);
  }

  return result;
}

unint64_t sub_22C3C9B84()
{
  result = qword_27D9BB478;
  if (!qword_27D9BB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB478);
  }

  return result;
}

unint64_t sub_22C3C9BDC()
{
  result = qword_27D9BB480;
  if (!qword_27D9BB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB480);
  }

  return result;
}

unint64_t sub_22C3C9C34()
{
  result = qword_27D9BB488;
  if (!qword_27D9BB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB488);
  }

  return result;
}

unint64_t sub_22C3C9C8C()
{
  result = qword_27D9BB490;
  if (!qword_27D9BB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB490);
  }

  return result;
}

unint64_t sub_22C3C9CE4()
{
  result = qword_27D9BB498;
  if (!qword_27D9BB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB498);
  }

  return result;
}

unint64_t sub_22C3C9D3C()
{
  result = qword_27D9BB4A0;
  if (!qword_27D9BB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB4A0);
  }

  return result;
}

unint64_t sub_22C3C9D94()
{
  result = qword_27D9BB4A8;
  if (!qword_27D9BB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB4A8);
  }

  return result;
}

unint64_t sub_22C3C9DEC()
{
  result = qword_27D9BB4B0;
  if (!qword_27D9BB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB4B0);
  }

  return result;
}

unint64_t sub_22C3C9E44()
{
  result = qword_27D9BB4B8;
  if (!qword_27D9BB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB4B8);
  }

  return result;
}

unint64_t sub_22C3C9E9C()
{
  result = qword_27D9BB4C0;
  if (!qword_27D9BB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB4C0);
  }

  return result;
}

unint64_t sub_22C3C9EF4()
{
  result = qword_27D9BB4C8;
  if (!qword_27D9BB4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB4C8);
  }

  return result;
}

unint64_t sub_22C3C9F4C()
{
  result = qword_27D9BB4D0;
  if (!qword_27D9BB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB4D0);
  }

  return result;
}

unint64_t sub_22C3C9FA4()
{
  result = qword_27D9BB4D8;
  if (!qword_27D9BB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB4D8);
  }

  return result;
}

unint64_t sub_22C3C9FFC()
{
  result = qword_27D9BB4E0;
  if (!qword_27D9BB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB4E0);
  }

  return result;
}

unint64_t sub_22C3CA054()
{
  result = qword_27D9BB4E8;
  if (!qword_27D9BB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB4E8);
  }

  return result;
}

unint64_t sub_22C3CA0AC()
{
  result = qword_27D9BB4F0;
  if (!qword_27D9BB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB4F0);
  }

  return result;
}

unint64_t sub_22C3CA104()
{
  result = qword_27D9BB4F8;
  if (!qword_27D9BB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB4F8);
  }

  return result;
}

unint64_t sub_22C3CA15C()
{
  result = qword_27D9BB500;
  if (!qword_27D9BB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB500);
  }

  return result;
}

unint64_t sub_22C3CA1B4()
{
  result = qword_27D9BB508;
  if (!qword_27D9BB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB508);
  }

  return result;
}

unint64_t sub_22C3CA20C()
{
  result = qword_27D9BB510;
  if (!qword_27D9BB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB510);
  }

  return result;
}

unint64_t sub_22C3CA264()
{
  result = qword_27D9BB518;
  if (!qword_27D9BB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB518);
  }

  return result;
}

unint64_t sub_22C3CA2BC()
{
  result = qword_27D9BB520;
  if (!qword_27D9BB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB520);
  }

  return result;
}

unint64_t sub_22C3CA314()
{
  result = qword_27D9BB528;
  if (!qword_27D9BB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB528);
  }

  return result;
}

unint64_t sub_22C3CA36C()
{
  result = qword_27D9BB530;
  if (!qword_27D9BB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB530);
  }

  return result;
}

unint64_t sub_22C3CA3C4()
{
  result = qword_27D9BB538;
  if (!qword_27D9BB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB538);
  }

  return result;
}

unint64_t sub_22C3CA41C()
{
  result = qword_27D9BB540;
  if (!qword_27D9BB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB540);
  }

  return result;
}

unint64_t sub_22C3CA474()
{
  result = qword_27D9BB548;
  if (!qword_27D9BB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB548);
  }

  return result;
}

unint64_t sub_22C3CA4CC()
{
  result = qword_27D9BB550;
  if (!qword_27D9BB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB550);
  }

  return result;
}

unint64_t sub_22C3CA524()
{
  result = qword_27D9BB558;
  if (!qword_27D9BB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB558);
  }

  return result;
}

unint64_t sub_22C3CA57C()
{
  result = qword_27D9BB560;
  if (!qword_27D9BB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB560);
  }

  return result;
}

unint64_t sub_22C3CA5D4()
{
  result = qword_27D9BB568;
  if (!qword_27D9BB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB568);
  }

  return result;
}

uint64_t sub_22C3CA674()
{
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];
}

void sub_22C3CA698(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t AgenticResponseGenerationService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D918];
  v3 = sub_22C90645C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AgenticResponseGenerationService.__allocating_init(toolboxResources:toolExecutionSession:identityChain:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AgenticResponseGenerationService.init(toolboxResources:toolExecutionSession:identityChain:)(a1, a2, a3);
  return v6;
}

uint64_t AgenticResponseGenerationService.init(toolboxResources:toolExecutionSession:identityChain:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_22C378A4C(a2, v17);
  v7 = type metadata accessor for ResponseGenerationService();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v15 = &type metadata for FeatureStoreServiceWrapper;
  v16 = &protocol witness table for FeatureStoreServiceWrapper;
  swift_defaultActor_initialize();
  sub_22C36FF94(a2);
  bzero(v10 + 26, 0xB0uLL);
  v11 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime25ResponseGenerationService_otaPreferencesLock;
  v12 = sub_22C3A5908(&qword_27D9BB570, &qword_22C92D210);
  sub_22C36C640(v10 + v11, 1, 1, v12);
  v10[14] = a1;
  sub_22C36C730(v17, (v10 + 15));
  v10[20] = a3;
  sub_22C36C730(&v14, (v10 + 21));
  *(v3 + 16) = v10;
  return v3;
}

uint64_t AgenticResponseGenerationService.setup(sessionState:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22C3CA8B4, 0, 0);
}

uint64_t sub_22C3CA8B4()
{
  sub_22C369980();
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22C3CA94C;
  v3 = v0[2];

  return sub_22C375560();
}

uint64_t sub_22C3CA94C()
{
  sub_22C369980();
  v1 = *(*v0 + 32);
  v2 = *v0;
  sub_22C369970();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t AgenticResponseGenerationService.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(type metadata accessor for AgenticPlannerServiceContext(0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for PlannerServiceContext() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3CAAF0, 0, 0);
}

uint64_t sub_22C3CAAF0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(v0[4] + 16);
  sub_22C3B0C34(v0[3], v1);
  PlannerServiceContext.init(adapting:)(v1, v2);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_22C3B0784;
  v5 = v0[6];
  v6 = v0[2];

  return sub_22C8C7CEC();
}

uint64_t AgenticResponseGenerationService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AgenticResponseGenerationService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22C3CAC08(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C37524C;

  return AgenticResponseGenerationService.setup(sessionState:)(a1);
}

uint64_t sub_22C3CACA0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3B0B10;

  return AgenticResponseGenerationService.handle(_:plannerServiceContext:)();
}

uint64_t AgenticToolExecutorService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8E8];
  v3 = sub_22C90645C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22C3CAECC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B00E8;

  return AgenticToolExecutorService.setup(sessionState:)();
}

uint64_t sub_22C3CAF58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B0268;

  return AgenticToolExecutorService.handle(_:plannerServiceContext:)();
}

uint64_t PlannerServiceContext.init(adapting:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for PlanCycleId(0);
  v5 = sub_22C369914(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v12 = sub_22C369914(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = sub_22C90069C();
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = *(v20 + 32);
  v26((v24 - v23), a1, v17);
  v27 = type metadata accessor for AgenticPlannerServiceContext(0);
  sub_22C3CB708(a1 + *(v27 + 20), v10);
  v28 = 1;
  if (sub_22C370B74(v10, 1, v17) != 1)
  {
    v26(v16, v10, v17);
    v28 = 0;
  }

  sub_22C36C640(v16, v28, 1, v17);
  v26(a2, v25, v17);
  v29 = type metadata accessor for PlannerServiceContext();
  return sub_22C3CB76C(v16, &a2[*(v29 + 20)]);
}

uint64_t AgenticPlannerServiceContext.contextId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C90069C();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t AgenticPlannerServiceContext.planCycleId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AgenticPlannerServiceContext(0) + 20);

  return sub_22C3B5CFC(v3, a1);
}

uint64_t AgenticPlannerServiceContext.init(contextId:planCycleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C90069C();
  sub_22C36985C(v6);
  (*(v7 + 32))(a3, a1);
  v8 = a3 + *(type metadata accessor for AgenticPlannerServiceContext(0) + 20);

  return sub_22C3CB708(a2, v8);
}

uint64_t PlanCycleId.init(assigning:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C90069C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  sub_22C369A54(a1);
  if (v13)
  {
    sub_22C36DD28(a1, &qword_27D9BB190, qword_22C90DD90);

    return sub_22C36C640(a2, 1, 1, v4);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v12, a1, v4);
    v14(a2, v12, v4);
    return sub_22C36C640(a2, 0, 1, v4);
  }
}

uint64_t static PlanCycleId.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90069C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = type metadata accessor for PlanCycleId(0);
  v14 = sub_22C369914(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C3A5908(&qword_27D9BB578, &qword_22C90F428);
  v21 = sub_22C369914(v20);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v32 - v25;
  v27 = *(v24 + 56);
  sub_22C3B5CFC(a1, &v32 - v25);
  sub_22C3B5CFC(a2, &v26[v27]);
  sub_22C369A54(v26);
  if (!v29)
  {
    sub_22C3B5CFC(v26, v19);
    sub_22C369A54(&v26[v27]);
    if (!v29)
    {
      (*(v7 + 32))(v12, &v26[v27], v4);
      v28 = sub_22C90067C();
      v30 = *(v7 + 8);
      v30(v12, v4);
      v30(v19, v4);
      sub_22C3CB7DC(v26);
      return v28 & 1;
    }

    (*(v7 + 8))(v19, v4);
LABEL_9:
    sub_22C36DD28(v26, &qword_27D9BB578, &qword_22C90F428);
    v28 = 0;
    return v28 & 1;
  }

  sub_22C369A54(&v26[v27]);
  if (!v29)
  {
    goto LABEL_9;
  }

  sub_22C3CB7DC(v26);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_22C3CB708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanCycleId(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3CB76C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3CB7DC(uint64_t a1)
{
  v2 = type metadata accessor for PlanCycleId(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3CB860()
{
  result = sub_22C90069C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PlanCycleId(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C3CB90C()
{
  v0 = sub_22C90069C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t PlannerServiceIdentifier.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static PlannerServiceIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22C90B4FC();
  }
}

uint64_t PlannerServiceIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22C909FFC();
}

uint64_t PlannerServiceIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22C90B62C();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t sub_22C3CBA28()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22C90B62C();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t static Route.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_22C90B4FC();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

Swift::Bool __swiftcall AgenticPlannerService.is(_:)(IntelligenceFlowPlannerRuntime::PlannerServiceIdentifier a1)
{
  v2 = v1;
  object = a1.identifier._object;
  v4 = *a1.identifier._countAndFlagsBits;
  v5 = *(a1.identifier._countAndFlagsBits + 8);
  swift_getDynamicType();
  (*(v2 + 40))(v9, object, v2);
  if (v9[0] == v4 && v9[1] == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22C90B4FC();
  }

  return v7 & 1;
}

uint64_t AgenticPlannerService.serviceName.getter(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  (*(a2 + 40))(&v5, a1, a2);
  return v5;
}

IntelligenceFlowPlannerRuntime::AgenticPlannerRoutingScheme_optional __swiftcall AgenticPlannerRoutingScheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C90B21C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AgenticPlannerRoutingScheme.rawValue.getter()
{
  v1 = 0x702D65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 0x646E6F2D6C6C7566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D65722D6C6C7566;
  }
}

unint64_t sub_22C3CBCD0()
{
  result = qword_27D9BB5A0;
  if (!qword_27D9BB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB5A0);
  }

  return result;
}

unint64_t sub_22C3CBD28()
{
  result = qword_27D9BB5A8;
  if (!qword_27D9BB5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB5A8);
  }

  return result;
}

unint64_t sub_22C3CBD8C()
{
  result = qword_27D9BB5B0;
  if (!qword_27D9BB5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB5B0);
  }

  return result;
}

unint64_t sub_22C3CBE08()
{
  result = qword_27D9BB5B8;
  if (!qword_27D9BB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB5B8);
  }

  return result;
}

uint64_t sub_22C3CBE80@<X0>(uint64_t *a1@<X8>)
{
  result = AgenticPlannerRoutingScheme.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22C3CBEAC()
{
  result = qword_27D9BB5C0;
  if (!qword_27D9BB5C0)
  {
    sub_22C3AC1A0(&qword_27D9BB5C8, &qword_22C90F6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB5C0);
  }

  return result;
}

uint64_t dispatch thunk of AgenticPlannerService.setup(sessionState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22C3B00E8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AgenticPlannerService.handle(_:plannerServiceContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22C3CC1B8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_22C3CC1B8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

_BYTE *storeEnumTagSinglePayload for AgenticPlannerRoutingScheme(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_22C3CC3D8(uint64_t a1)
{
  v4 = sub_22C36A6FC(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C3D7EBC(v4, 1);
  sub_22C3D3554();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22C3725EC();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_22C37B1BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_22C3D3548();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22C3CC46C(uint64_t a1)
{
  v4 = sub_22C36A6FC(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C3D7ED4(v4, 1);
  sub_22C3D3554();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22C3725EC();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_22C37B1BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_22C3D3548();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22C3CC554(uint64_t a1)
{
  v4 = sub_22C36A6FC(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C3D822C(v4, 1);
  sub_22C3D3554();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22C3725EC();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_22C37B1BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_22C3D3548();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22C3CC610()
{
  sub_22C36BA7C();
  v4 = sub_22C388C54();
  v5 = type metadata accessor for DialogValue(v4);
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C36BB34();
  v11 = sub_22C3A5908(&qword_27D9BB608, &qword_22C92DB40);
  v12 = sub_22C369914(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3772FC();
  MEMORY[0x28223BE20](v15);
  sub_22C3D347C();
  MEMORY[0x28223BE20](v16);
  sub_22C377318();
  v17 = *(v3 + 16);
  sub_22C3D34DC();
  if (__OFADD__(v18, v17))
  {
    __break(1u);
    goto LABEL_10;
  }

  v49 = v19;
  v50 = v5;
  sub_22C3D828C(v18 + v17, 1);
  sub_22C3D3510();
  sub_22C3D37CC();
  sub_22C3D16C8();
  if (v20 < v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v20)
  {
    sub_22C3D362C();
    if (v23)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v0 + 16) = v21;
  }

  if (v20 != v8)
  {
    sub_22C36A674();
LABEL_8:
    sub_22C3D3620();
    sub_22C36CC48();
    return;
  }

LABEL_11:
  sub_22C3D36BC();
  if (v24)
  {
    sub_22C369A7C();
    v45 = v25;
LABEL_19:
    v29 = *(v46 + 56);
    sub_22C3D3588();
LABEL_20:
    v48 = v8;
    v30 = sub_22C37B504();
    sub_22C36C640(v30, v31, v32, v50);
    while (2)
    {
      sub_22C3D3364();
      sub_22C36D0A8(v49, 1, v50);
      if (!v33)
      {
        sub_22C3AC228(v49, &qword_27D9BB608, &qword_22C92DB40);
        sub_22C385E48();
        if (v34 != v23)
        {
          sub_22C3D36A4();
          sub_22C590AF8();
          sub_22C37F6E8(v43);
          v47 = v44;
        }

        v35 = v50;
        while (1)
        {
          sub_22C371510();
          sub_22C3D3364();
          sub_22C36D0A8(v1, 1, v35);
          if (v33)
          {
            break;
          }

          sub_22C372FCC();
          sub_22C3D340C();
          v36 = v48;
          if (v48 >= v47)
          {
            sub_22C3D314C();
            goto LABEL_37;
          }

          sub_22C3AC228(v2, &qword_27D9BB608, &qword_22C92DB40);
          sub_22C3D340C();
          if (!v3)
          {
            v37 = v45;
            while (1)
            {
              v38 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              if (v38 >= v37)
              {
                sub_22C3D34E8();
                goto LABEL_33;
              }

              sub_22C3D3670(v38);
            }

            __break(1u);
            goto LABEL_39;
          }

          sub_22C3D3464();
          v39 = *(v46 + 56);
          sub_22C3D3588();
LABEL_33:
          ++v48;
          v40 = sub_22C37B504();
          v35 = v50;
          sub_22C36C640(v40, v41, v42, v50);
        }

        sub_22C3AC228(v1, &qword_27D9BB608, &qword_22C92DB40);
        v36 = v48;
LABEL_37:
        *(v0 + 16) = v36;
        continue;
      }

      break;
    }

LABEL_39:
    sub_22C3D34F4();
    sub_22C3D375C();
    goto LABEL_8;
  }

LABEL_14:
  v26 = (v22 + 64) >> 6;
  v45 = v26;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v26)
    {
      sub_22C3D34E8();
      goto LABEL_20;
    }

    sub_22C38B40C(v27);
    if (v28)
    {
      sub_22C3714F4();
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_22C3CC9E4(uint64_t a1)
{
  v4 = sub_22C36A6FC(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C3D82A4(v4, 1);
  sub_22C3D3554();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22C3725EC();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_22C37B1BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_22C3D3548();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22C3CCA78(uint64_t a1)
{
  v4 = sub_22C36A6FC(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C3D82BC(v4, 1);
  sub_22C3D3554();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22C3725EC();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_22C37B1BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_22C3D3548();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22C3CCB08(uint64_t a1)
{
  v4 = sub_22C36A6FC(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C3D82D4(v4, 1);
  sub_22C3D3554();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22C3725EC();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_22C37B1BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_22C3D3548();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22C3CCB98(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  sub_22C3D34DC();
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22C3D7ED4(v7 + v6, 1);
  v1 = *v2;
  v8 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  sub_22C3D1388();
  if (v9 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
LABEL_13:
      v16 = (v10 + 64) >> 6;
      while (1)
      {
        v17 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        if (v17 >= v16)
        {
          goto LABEL_7;
        }

        v18 = *(v8 + 8 * v17);
        ++v4;
        if (v18)
        {
          v14 = (v18 - 1) & v18;
          v15 = __clz(__rbit64(v18)) | (v17 << 6);
          v4 = v17;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v13;
  }

  v5 = v29;
  if (v9 != v8)
  {
LABEL_7:
    sub_22C36A674();
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v8 = v30;
  v10 = v31;
  v4 = v32;
  if (!v33)
  {
    goto LABEL_13;
  }

  v14 = (v33 - 1) & v33;
  v15 = __clz(__rbit64(v33)) | (v32 << 6);
  v16 = (v31 + 64) >> 6;
LABEL_18:
  v19 = (*(v5 + 48) + 16 * v15);
  v21 = *v19;
  v20 = v19[1];

LABEL_19:
  v28 = *(v1 + 24) >> 1;
  if (v28 < v3 + 1)
  {
    sub_22C590270();
    v1 = v26;
    sub_22C3D353C(v26);
    v28 = v27;
  }

  while (1)
  {
    if (v3 >= v28)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v22 = (v1 + 32 + 16 * v3);
    *v22 = v21;
    v22[1] = v20;
    ++v3;
    if (!v14)
    {
      break;
    }

    v23 = v4;
LABEL_28:
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v25 = (*(v5 + 48) + ((v23 << 10) | (16 * v24)));
    v21 = *v25;
    v20 = v25[1];
  }

  while (1)
  {
    v23 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v14 = *(v8 + 8 * v23);
    ++v4;
    if (v14)
    {
      v4 = v23;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_22C3CCE08(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_22C3D34DC();
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_22C3D8304(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 24 * v7 + 32), (a1 + 32), 24 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22C3CCEC4(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_22C3D34DC();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_22C3D8304(v4 + v3, 1);
  v1 = *v2;
  v5 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  sub_22C37FC50();
  result = sub_22C3D1290(v6, v7, v8, v9);
  if (result < v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result)
  {
    v14 = *(v1 + 16);
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v16;
  }

  if (result == v5)
  {
LABEL_11:
    v5 = *(v1 + 16);
    result = v40;
    v11 = v41;
    v12 = v42;
    v13 = v43;
    if (v44)
    {
      v17 = (v44 - 1) & v44;
      v18 = __clz(__rbit64(v44)) | (v43 << 6);
      v19 = (v42 + 64) >> 6;
LABEL_19:
      v23 = *(result + 48) + 24 * v18;
      v24 = *v23;
      v25 = *(v23 + 16);
      while (1)
      {
        v26 = *(v1 + 24) >> 1;
        if (v26 < v5 + 1)
        {
          v38 = v17;
          v39 = result;
          v36 = v12;
          v37 = v11;
          v32 = v13;
          v33 = v25;
          v35 = v24;
          sub_22C591170();
          v24 = v35;
          v25 = v33;
          v11 = v37;
          v17 = v38;
          v13 = v32;
          v12 = v36;
          v1 = v34;
          result = v39;
          v26 = *(v1 + 24) >> 1;
        }

        if (v5 < v26)
        {
          break;
        }

        v28 = v13;
LABEL_33:
        *(v1 + 16) = v5;
        v13 = v28;
      }

      while (1)
      {
        v27 = v1 + 32 + 24 * v5;
        *v27 = v24;
        *(v27 + 16) = v25;
        ++v5;
        if (!v17)
        {
          break;
        }

        v28 = v13;
LABEL_30:
        v30 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v31 = *(result + 48) + 24 * (v30 | (v28 << 6));
        v24 = *v31;
        v25 = *(v31 + 16);
        if (v5 >= v26)
        {
          goto LABEL_33;
        }
      }

      v29 = v13;
      while (1)
      {
        v28 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v28 >= v19)
        {
          result = sub_22C36A674();
          *(v1 + 16) = v5;
          goto LABEL_8;
        }

        v17 = *(v11 + 8 * v28);
        ++v29;
        if (v17)
        {
          v13 = v28;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

LABEL_14:
    v19 = (v12 + 64) >> 6;
    v20 = v13;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_37;
      }

      if (v21 >= v19)
      {
        break;
      }

      v22 = *(v11 + 8 * v21);
      ++v20;
      if (v22)
      {
        v17 = (v22 - 1) & v22;
        v18 = __clz(__rbit64(v22)) | (v21 << 6);
        v13 = v21;
        goto LABEL_19;
      }
    }
  }

  result = sub_22C36A674();
LABEL_8:
  *v2 = v1;
  return result;
}

void sub_22C3CD124(uint64_t a1)
{
  v4 = sub_22C36A6FC(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C3D831C(v4, 1);
  sub_22C3D3554();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22C3725EC();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_22C3D3548();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22C3CD230()
{
  sub_22C36BA7C();
  sub_22C388C54();
  v5 = sub_22C90952C();
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C36BB34();
  v9 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3772FC();
  MEMORY[0x28223BE20](v13);
  sub_22C3D347C();
  MEMORY[0x28223BE20](v14);
  sub_22C386F28();
  if (v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_22C38B178();
  sub_22C3D8364(v16, v17);
  sub_22C38B788();
  sub_22C38C330();
  sub_22C3D1C5C();
  if (v18 < v0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v18)
  {
    sub_22C3D362C();
    if (v15)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v19;
  }

  if (v18 != v4)
  {
    sub_22C3D3604();
LABEL_8:
    sub_22C3D3620();
    sub_22C36CC48();
    return;
  }

LABEL_11:
  sub_22C374980();
  if (v20)
  {
    sub_22C369A7C();
LABEL_19:
    v24 = *(v48 + 48);
    v25 = sub_22C3765AC();
    v27 = v26(v25);
    v28 = 0;
LABEL_20:
    sub_22C37EFF4(v27, v28);
    sub_22C3D37D8();
LABEL_21:
    sub_22C386994();
    sub_22C3D388C();
    sub_22C369A54(v0);
    if (!v29)
    {
      v0 = &qword_27D9BB0C0;
      sub_22C386520();
      sub_22C3AC228(v30, v31, v32);
      sub_22C37FC34();
      if (v33 != v15)
      {
        sub_22C3D36A4();
        sub_22C591AD0();
        sub_22C37F6E8(v47);
      }

      sub_22C37008C();
      while (1)
      {
        sub_22C371510();
        sub_22C3D3364();
        sub_22C369A54(v2);
        if (v29)
        {
          break;
        }

        v34 = sub_22C379EF4();
        (qword_27D9BB0C0)(v34);
        sub_22C37B928();
        if (v33 == v15)
        {
          v45 = sub_22C3797E0();
          v46(v45);
          sub_22C37EB84();
LABEL_37:
          sub_22C3D37F8();
          goto LABEL_21;
        }

        sub_22C3AC228(v49, &qword_27D9BB0C0, &qword_22C90D960);
        v35 = sub_22C385518();
        (qword_27D9BB0C0)(v35);
        if (!v3)
        {
          sub_22C3D35B0();
          while (1)
          {
            v37 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (v37 >= v36)
            {
              sub_22C3D34E8();
              goto LABEL_34;
            }

            sub_22C3D3670(v37);
          }

          __break(1u);
          goto LABEL_39;
        }

        sub_22C3881B0();
        sub_22C3D3464();
        v38 = *(v48 + 48);
        v39 = sub_22C38A84C();
        v41 = v40(v39);
        v42 = 0;
LABEL_34:
        sub_22C36FB7C(v41, v42);
        v0 = &qword_27D9BB0C0;
      }

      v43 = sub_22C36D384();
      sub_22C3AC228(v43, v44, &qword_22C90D960);
      goto LABEL_37;
    }

LABEL_39:
    sub_22C3D34F4();
    sub_22C372098();
    goto LABEL_8;
  }

LABEL_14:
  sub_22C381230();
  while (1)
  {
    v22 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      sub_22C3D34E8();
      goto LABEL_20;
    }

    sub_22C38B40C(v22);
    if (v23)
    {
      sub_22C3714F4();
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_22C3CD5B8(uint64_t a1)
{
  v4 = sub_22C36A6FC(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C3D83AC(v4, 1);
  sub_22C3D3554();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22C3725EC();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_22C37B1BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_22C3D3548();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22C3CD674()
{
  sub_22C36BA7C();
  sub_22C388C54();
  v5 = sub_22C902D0C();
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C36BB34();
  v9 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3772FC();
  MEMORY[0x28223BE20](v13);
  sub_22C3D347C();
  MEMORY[0x28223BE20](v14);
  sub_22C386F28();
  if (v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_22C38B178();
  sub_22C3D83C4(v16, v17);
  sub_22C38B788();
  sub_22C38C330();
  sub_22C3D1E18();
  if (v18 < v0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v18)
  {
    sub_22C3D362C();
    if (v15)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v19;
  }

  if (v18 != v4)
  {
    sub_22C3D3604();
LABEL_8:
    sub_22C3D3620();
    sub_22C36CC48();
    return;
  }

LABEL_11:
  sub_22C374980();
  if (v20)
  {
    sub_22C369A7C();
LABEL_19:
    v24 = *(v48 + 48);
    v25 = sub_22C3765AC();
    v27 = v26(v25);
    v28 = 0;
LABEL_20:
    sub_22C37EFF4(v27, v28);
    sub_22C3D37D8();
LABEL_21:
    sub_22C386994();
    sub_22C3D388C();
    sub_22C369A54(v0);
    if (!v29)
    {
      v0 = &qword_27D9BB640;
      sub_22C386520();
      sub_22C3AC228(v30, v31, v32);
      sub_22C37FC34();
      if (v33 != v15)
      {
        sub_22C3D36A4();
        sub_22C592484();
        sub_22C37F6E8(v47);
      }

      sub_22C37008C();
      while (1)
      {
        sub_22C371510();
        sub_22C3D3364();
        sub_22C369A54(v2);
        if (v29)
        {
          break;
        }

        v34 = sub_22C379EF4();
        (qword_27D9BB640)(v34);
        sub_22C37B928();
        if (v33 == v15)
        {
          v45 = sub_22C3797E0();
          v46(v45);
          sub_22C37EB84();
LABEL_37:
          sub_22C3D37F8();
          goto LABEL_21;
        }

        sub_22C3AC228(v49, &qword_27D9BB640, &unk_22C912190);
        v35 = sub_22C385518();
        (qword_27D9BB640)(v35);
        if (!v3)
        {
          sub_22C3D35B0();
          while (1)
          {
            v37 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (v37 >= v36)
            {
              sub_22C3D34E8();
              goto LABEL_34;
            }

            sub_22C3D3670(v37);
          }

          __break(1u);
          goto LABEL_39;
        }

        sub_22C3881B0();
        sub_22C3D3464();
        v38 = *(v48 + 48);
        v39 = sub_22C38A84C();
        v41 = v40(v39);
        v42 = 0;
LABEL_34:
        sub_22C36FB7C(v41, v42);
        v0 = &qword_27D9BB640;
      }

      v43 = sub_22C36D384();
      sub_22C3AC228(v43, v44, &unk_22C912190);
      goto LABEL_37;
    }

LABEL_39:
    sub_22C3D34F4();
    sub_22C372098();
    goto LABEL_8;
  }

LABEL_14:
  sub_22C381230();
  while (1)
  {
    v22 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      sub_22C3D34E8();
      goto LABEL_20;
    }

    sub_22C38B40C(v22);
    if (v23)
    {
      sub_22C3714F4();
      goto LABEL_19;
    }
  }

  __break(1u);
}