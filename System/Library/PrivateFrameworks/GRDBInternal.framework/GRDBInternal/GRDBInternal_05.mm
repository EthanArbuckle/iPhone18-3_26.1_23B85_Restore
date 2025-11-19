void sub_1B21703B4()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0EF0, &unk_1B225B6E0);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B2158F60(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0EF8, &qword_1B2254610);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B2170474(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A0ED0, &unk_1B225BAF0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1B224B140((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B217059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_1B2113B10(a1, a2, a3, a4, a5, a6);
      v15 = sub_1B211A23C();
      j__malloc_size(v15);
      sub_1B211F5F8();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  sub_1B212CD14();
  if (!v11)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2170674()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A1268, &qword_1B2259BD0);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B22455BC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A1270, qword_1B225EDF0);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B2170734(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A10E0, &qword_1B2254920);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1B224B154((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A1260, &qword_1B2254A58);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B217084C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A1168, qword_1B225ECD0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1B224B154((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A1170, &qword_1B2254990);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2170964(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1B224B154((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A11F0, &qword_1B22549F8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2170AAC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A0EA0, &qword_1B22545B8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1B2158F60((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1B2170BB4(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A1120, &qword_1B2254948);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1B21505F4(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A1128, &qword_1B2254950);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B2170CC4()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0E38, &unk_1B2254550);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B2160924(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0E40, &unk_1B226BA30);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2170D84()
{
  sub_1B2111830();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v7 == v8)
  {
LABEL_7:
    sub_1B2111EF8(v6);
    if (v3)
    {
      sub_1B2113B10(v9, v10, v11, v12, v13, v14);
      v15 = sub_1B21169D8();
      v16 = j__malloc_size(v15);
      sub_1B2117B94(v16);
      if (v2)
      {
LABEL_9:
        v17 = sub_1B2117B84();
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

    sub_1B2115B30();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v7)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B2170E34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B2252C20();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B2116B08(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for Row();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B211AB74(&qword_1EB7A0C68, &qword_1EB7A11A8, &qword_1B22549B8);
        for (i = 0; i != v7; ++i)
        {
          v9 = sub_1B2112F9C();
          sub_1B21619D8(v9, v10);
          v11 = sub_1B21C2528(v14, i, a3);
          v13 = *v12;

          (v11)(v14, 0);
          *(v5 + 8 * i) = v13;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B2170FB8(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_1B2170FEC()
{
  sub_1B2111F14();
  v2 = v1;
  while (2)
  {
    v3 = *(v0 + 224);
LABEL_3:
    switch(v3)
    {
      case 1:
        sub_1B214CBA8(v23);
        if (sub_1B2171378(v23) == 1)
        {
          goto LABEL_31;
        }

        sub_1B214CBA8(v20);
        sub_1B2171344(__src);
        memcpy((v0 + 16), __src, 0xB8uLL);
        memcpy(__dst, v20, sizeof(__dst));
        if (sub_1B213EA68(__dst) != 1)
        {
          v14 = v20;
          goto LABEL_23;
        }

        v7 = *(v0 + 8);
        v8 = *(*v0 + 16);
        if (v7 == v8)
        {
          sub_1B21713A0(v19);
        }

        else
        {
          if (v7 >= v8)
          {
            goto LABEL_29;
          }

          memcpy(v16, (*v0 + 184 * v7 + 32), sizeof(v16));
          *(v0 + 8) = v7 + 1;
          memcpy(v17, v16, sizeof(v17));
          nullsub_1(v17);
          memcpy(v18, v17, sizeof(v18));
          nullsub_1(v18);
          sub_1B2122B00(v16, &v15, &qword_1EB7A1248, &qword_1B2254A48);
          memcpy(v19, v18, sizeof(v19));
        }

        sub_1B214CBA8(v17);
        sub_1B212AC5C(v17, &qword_1EB7A1250, &unk_1B2259BC0);
        memcpy((v0 + 16), v19, 0xB8uLL);
        memcpy(v18, v19, sizeof(v18));
        if (sub_1B2171378(v18) == 1)
        {
          *(v0 + 224) = 3;
          v14 = __src;
          goto LABEL_23;
        }

        v11 = *(v0 + 200);
        if (*(v11 + 16))
        {
          v12 = *(v0 + 208);
          v13 = *(v0 + 200);

          *(v0 + 208) = v11;
          *(v0 + 216) = 0;
          *(v0 + 224) = 2;
        }

        continue;
      case 2:
        v4 = *(v0 + 208);
        if (!v4)
        {
          goto LABEL_30;
        }

        v5 = *(v4 + 16);
        v6 = *(v0 + 216);
        if (v6 == v5)
        {
          v3 = 1;
          *(v0 + 224) = 1;
          goto LABEL_3;
        }

        if (v6 < v5)
        {
          memcpy(__dst, (v4 + 184 * v6 + 32), sizeof(__dst));
          *(v0 + 216) = v6 + 1;
          memcpy(v23, __dst, 0xB8uLL);
          nullsub_1(v23);
          memcpy(v2, v23, 0xB8uLL);
          sub_1B211AF1C(__dst, __src);
          goto LABEL_24;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      case 3:
        goto LABEL_22;
      default:
        v9 = *(v0 + 8);
        v10 = *(*v0 + 16);
        if (v9 == v10)
        {
          *(v0 + 224) = 3;
LABEL_22:
          sub_1B2171344(v23);
          v14 = v23;
LABEL_23:
          memcpy(v2, v14, 0xB8uLL);
LABEL_24:
          sub_1B2111588();
          return;
        }

        if (v9 >= v10)
        {
          __break(1u);
          goto LABEL_28;
        }

        memcpy(v20, (*v0 + 184 * v9 + 32), sizeof(v20));
        *(v0 + 8) = v9 + 1;
        memcpy(__src, v20, sizeof(__src));
        nullsub_1(__src);
        memcpy(__dst, __src, sizeof(__dst));
        nullsub_1(__dst);
        sub_1B214CBA8(v23);
        sub_1B2122B00(v20, v19, &qword_1EB7A1248, &qword_1B2254A48);
        sub_1B212AC5C(v23, &qword_1EB7A1250, &unk_1B2259BC0);
        memcpy((v0 + 16), __dst, 0xB8uLL);
        *(v0 + 224) = 1;
        continue;
    }
  }
}

double sub_1B2171344(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x1FFFFFFFELL;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return result;
}

uint64_t sub_1B2171378(uint64_t a1)
{
  v1 = *(a1 + 64) >> 1;
  v2 = -2 - v1;
  if (-2 - v1 < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1B21713A0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x1FFFFFFFCLL;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return result;
}

uint64_t sub_1B21713E8(uint64_t a1)
{
  [*(a1 + 24) lock];
  result = swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v4;
    [*(a1 + 24) unlock];
    return v4;
  }

  return result;
}

uint64_t sub_1B217146C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 24) lock];
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    *(a1 + 16) = 1;
    swift_beginAccess();
    sqlite3_interrupt(*(a2 + 16));
  }

  swift_endAccess();
  [*(a1 + 24) unlock];
}

void DatabaseValueConvertible<>.databaseValue.getter(void *a1)
{
  sub_1B21115E0();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B2111844();
  v6 = sub_1B2115590(v5);
  v7(v6);
  swift_getAssociatedTypeWitness();
  sub_1B2115FC8();
  v8 = sub_1B2114F0C();
  v9(v8);
}

{
  sub_1B21115E0();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B2111844();
  v6 = sub_1B2115590(v5);
  v7(v6);
  swift_getAssociatedTypeWitness();
  sub_1B2115FC8();
  v8 = sub_1B2114F0C();
  v9(v8);
}

void static DatabaseValueConvertible<>.fromDatabaseValue(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  sub_1B2116524();
  v4();
  v5 = sub_1B2252B00();
  sub_1B2111854(v5, v6, v5, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
}

{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  sub_1B2116524();
  v4();
  v5 = sub_1B2252B00();
  sub_1B2111854(v5, v6, v5, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
}

uint64_t sub_1B21716F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getAssociatedTypeWitness();
  return sub_1B21EA36C(a2, a3);
}

uint64_t sub_1B2171764@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_1B21716F4(a1, v2[2], a2);
}

uint64_t sub_1B2171788@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B21619D8(&qword_1EB7A1280, &unk_1B2254AA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_1B2251D70();
  v7 = 1;
  sub_1B21117B4(v5, 1, 1, v6);
  sub_1B2171BB0();
  sub_1B2252F30();
  if (sub_1B2122A98(v5, 1, v6) != 1)
  {
    (*(*(v6 - 8) + 32))(a1, v5, v6);
    v7 = 0;
  }

  return sub_1B21117B4(a1, v7, 1, v6);
}

void sub_1B21718AC(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1B2171B6C();
  v11[0] = a1;
  v11[1] = a2;
  v12 = a3;
  v8 = static NSURL.fromDatabaseValue(_:)(v11);
  if (v8)
  {
    v10 = v8;
    sub_1B2171788(a4);
  }

  else
  {
    v9 = sub_1B2251D70();

    sub_1B21117B4(a4, 1, 1, v9);
  }
}

uint64_t sub_1B2171A50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  return sub_1B21716F4(a1, v2[2], a2);
}

unint64_t sub_1B2171B6C()
{
  result = qword_1EB7A1278;
  if (!qword_1EB7A1278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7A1278);
  }

  return result;
}

unint64_t sub_1B2171BB0()
{
  result = qword_1EB7A1288;
  if (!qword_1EB7A1288)
  {
    sub_1B2251D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1288);
  }

  return result;
}

uint64_t HasManyAssociation._sqlAssociation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_1B2171C60(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2171C9C@<X0>(uint64_t *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *a4;
  v8 = a4[1];
  v10 = *__src;
  v9 = __src[1];
  if (a3)
  {
    v11 = a3;
    v13 = 2;
  }

  else
  {
    v14 = __src[1];

    v13 = 0;
    a2 = v10;
    v11 = v9;
  }

  memcpy(&v17[7], __src, 0xA2uLL);
  sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B22546B0;
  *(v15 + 32) = a2;
  *(v15 + 40) = v11;
  *(v15 + 48) = v13;
  *(v15 + 56) = v10;
  *(v15 + 64) = v9;
  *(v15 + 72) = v7;
  *(v15 + 80) = v8;
  *(v15 + 88) = 0;
  memcpy((v15 + 89), v17, 0xA9uLL);
  *(v15 + 258) = 1;
  *a5 = v15;
}

uint64_t sub_1B2171DA0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B2171DE4(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = HasManyAssociation._sqlAssociation.modify();
  return sub_1B2171E40;
}

void sub_1B2171E40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1B2171E88(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B2171EC4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2171F00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void NSNull.databaseValue.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

uint64_t DatabaseValue.storage.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_1B211187C();
  sub_1B2113A20(v4, v5, v3);
  return sub_1B211187C();
}

void static DatabaseValue.null.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

uint64_t static DatabaseValue.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_20;
      }

      v6 = *&a1 == *&a4;
      goto LABEL_17;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_20;
      }

      if (a1 == a4 && a2 == a5)
      {
LABEL_21:
        result = 1;
      }

      else
      {
        result = sub_1B22531F0();
      }

      break;
    case 3:
      if (a6 == 3)
      {
        JUMPOUT(0x1B27418B0);
      }

      goto LABEL_20;
    case 4:
      if (a6 != 4 || a5 | a4)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    default:
      if (a6)
      {
LABEL_20:
        result = 0;
      }

      else
      {
        v6 = a1 == a4;
LABEL_17:
        result = v6;
      }

      break;
  }

  return result;
}

uint64_t DatabaseValue.init(value:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B21721B4(a1, v13);
  sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
  if (swift_dynamicCast())
  {
    sub_1B21217FC(&v10, v14);
    v4 = v15;
    v5 = v16;
    sub_1B21139A0(v14, v15);
    (*(v5 + 24))(&v10, v4, v5);
    sub_1B2113208(a1);
    v7 = *(&v10 + 1);
    v6 = v10;
    v8 = v11;
    result = sub_1B2113208(v14);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_1B2113208(a1);
    result = sub_1B2122B98(&v10);
    v6 = 0;
    v7 = 0;
    v8 = -1;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_1B21721B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DatabaseValue.hashValue.getter()
{
  sub_1B211824C();
  sub_1B2253420();
  DatabaseValue.hash(into:)();
  return sub_1B2253470();
}

uint64_t DatabaseValue.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = *v0;
      }

      else
      {
        v3 = 0.0;
      }

      goto LABEL_12;
    case 2:
      v5 = *(v0 + 8);

      sub_1B2252370();
      v6 = sub_1B211187C();
      v8 = 2;
      goto LABEL_6;
    case 3:
      v9 = sub_1B211187C();
      sub_1B2126638(v9, v10);
      sub_1B2251DF0();
      v6 = sub_1B2117308();
LABEL_6:

      result = sub_1B2113A44(v6, v7, v8);
      break;
    case 4:
      result = MEMORY[0x1B2742F10](0);
      break;
    default:
      v3 = v1;
LABEL_12:
      result = MEMORY[0x1B2742F40](*&v3);
      break;
  }

  return result;
}

uint64_t sub_1B2172354()
{
  sub_1B211824C();
  sub_1B2253420();
  DatabaseValue.hash(into:)();
  return sub_1B2253470();
}

uint64_t DatabaseValue.description.getter()
{
  v1 = *v0;
  result = 1280070990;
  switch(*(v0 + 16))
  {
    case 1:
      v10 = *v0;
      result = sub_1B22527C0();
      break;
    case 2:
      v12 = *v0;
      v13 = v0[1];

      result = sub_1B2252330();
      break;
    case 3:
      v3 = sub_1B2117308();
      sub_1B2113A20(v3, v4, v5);
      sub_1B211187C();
      v6 = sub_1B2251DA0();
      MEMORY[0x1B2741EB0](v6);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v7 = sub_1B2117308();
      sub_1B2113A44(v7, v8, v9);
      result = 0x2861746144;
      break;
    case 4:
      return result;
    default:
      v11 = *v0;
      result = sub_1B2252FD0();
      break;
  }

  return result;
}

uint64_t static DatabaseValue.fromDatabaseValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v4 = *(a1 + 16);
  *(a2 + 16) = v4;
  return sub_1B2113A20(v3, v2, v4);
}

uint64_t DatabaseValue.sqlExpression.getter@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  __src[0] = *v1;
  v3 = __src[0];
  __src[1] = v4;
  v5 = *(v1 + 16);
  LOBYTE(__src[2]) = v5;
  sub_1B2127D7C(__src);
  memcpy(a1, __src, 0xA3uLL);
  return sub_1B2113A20(v3, v4, v5);
}

uint64_t sub_1B2172528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B2251E10();
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v65 - v9;
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  sub_1B21619D8(&qword_1EB7A1298, &unk_1B2254F90);
  switch(v13)
  {
    case 1:
      switch(v16)
      {
        case 0u:
          v26 = *&v14;
          break;
        case 1u:
          v26 = v14;
          break;
        case 2u:
        case 3u:
          goto LABEL_27;
        default:
          goto LABEL_39;
      }

      v29 = *&v12 < v26;
LABEL_21:
      v17 = v29;
      return v17 & 1;
    case 2:
      if (v16 == 2)
      {
        v23 = sub_1B2111888();

        return sub_1B2172990(v23, v24, v12, v11);
      }

      if (v16 == 3)
      {
        goto LABEL_27;
      }

      v27 = sub_1B2111F44();
      sub_1B2113A44(v27, v28, 2);
      goto LABEL_39;
    case 3:
      if (v16 != 3)
      {
        goto LABEL_39;
      }

      switch(v11 >> 62)
      {
        case 2uLL:
          v30 = *(v12 + 16);
          break;
        default:
          break;
      }

      v31 = sub_1B21155AC();
      sub_1B2113A20(v31, v32, v33);
      v34 = sub_1B21155AC();
      sub_1B2113A20(v34, v35, v36);
      v37 = sub_1B2116540();
      sub_1B2113A20(v37, v38, v39);
      sub_1B2111F44();
      sub_1B2251E20();
      switch(v15 >> 62)
      {
        case 2uLL:
          v40 = *(*&v14 + 16);
          break;
        default:
          break;
      }

      v41 = sub_1B2111888();
      sub_1B2126638(v41, v42);
      sub_1B2111888();
      sub_1B2251E20();
      sub_1B2172DA8();
      while (1)
      {
        sub_1B2252B50();
        if (v70)
        {
          v51 = *(v65 + 8);
          v51(v10, v4);
          sub_1B2252B50();
          v52 = sub_1B2116540();
          sub_1B2113A44(v52, v53, v54);
          v55 = sub_1B21155AC();
          sub_1B2113A44(v55, v56, v57);
          v51(v8, v4);
          v17 = v68 ^ 1;
          return v17 & 1;
        }

        v43 = v69;
        sub_1B2252B50();
        if (v67)
        {
LABEL_38:
          v44 = sub_1B2116540();
          sub_1B2113A44(v44, v45, v46);
          v47 = sub_1B21155AC();
          sub_1B2113A44(v47, v48, v49);
          v50 = sub_1B2122130();
          v8(v50);
          (v8)(v10, v4);
LABEL_39:
          v17 = 0;
          return v17 & 1;
        }

        if (v43 < v66)
        {
          break;
        }

        if (v66 < v43)
        {
          goto LABEL_38;
        }
      }

      v58 = sub_1B2116540();
      sub_1B2113A44(v58, v59, v60);
      v61 = sub_1B21155AC();
      sub_1B2113A44(v61, v62, v63);
      v64 = sub_1B2122130();
      v8(v64);
      (v8)(v10, v4);
LABEL_29:
      v17 = 1;
      return v17 & 1;
    case 4:
      if (v16 == 2 || v16 == 3)
      {
        goto LABEL_27;
      }

      if (v16 <= 1)
      {
        v18 = sub_1B2111888();
        sub_1B2113A20(v18, v19, v16);
        v20 = sub_1B2111F44();
        v22 = 4;
LABEL_28:
        sub_1B2113A44(v20, v21, v22);
        goto LABEL_29;
      }

      v17 = v11 | v12;
      if (!(v11 | v12))
      {
        return v17 & 1;
      }

      if (v16 == 4 && !(v15 | *&v14))
      {
LABEL_27:
        v20 = sub_1B2111F44();
        v22 = v13;
        goto LABEL_28;
      }

      result = sub_1B22531E0();
      __break(1u);
      return result;
    default:
      switch(v16)
      {
        case 0u:
          v17 = v12 < *&v14;
          break;
        case 1u:
          v29 = v12 < v14;
          goto LABEL_21;
        case 2u:
        case 3u:
          goto LABEL_27;
        default:
          goto LABEL_39;
      }

      return v17 & 1;
  }
}

uint64_t sub_1B2172990(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v7;
  v8 = 4 * v7;
  v9 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v28 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v29 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v31 = v8;
  v32 = v11;
  v30 = 4 * v11;
  v12 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = a2 & 0xFFFFFFFFFFFFFFLL;
  v14 = 15;
  v15 = 15;
  while (v31 != v15 >> 14)
  {
    v16 = v15;
    if ((v15 & 0xC) == v10)
    {
      v16 = sub_1B2172E00(v15, a3, a4);
    }

    v17 = v16 >> 16;
    if (v16 >> 16 >= v34)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v25 = sub_1B2172E00(v14, a1, a2);
LABEL_50:
      if (v32 <= v25 >> 16)
      {
        __break(1u);
      }

      else if ((a2 & 0x1000000000000000) == 0)
      {
        if (!(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
        {
          goto LABEL_68;
        }

        while (1)
        {
LABEL_53:
          if (v17 == v13)
          {
            v14 = sub_1B2172E00(v14, a1, a2);
            if ((a2 & 0x1000000000000000) == 0)
            {
              return 1;
            }
          }

          else if ((a2 & 0x1000000000000000) == 0)
          {
            return 1;
          }

          if (v32 > v14 >> 16)
          {
            break;
          }

          __break(1u);
LABEL_68:
          sub_1B2252D50();
        }

        sub_1B2252430();
        return 1;
      }

      sub_1B2252450();
      goto LABEL_53;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v19 = sub_1B2252450();
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v35 = a3;
      v36 = v29;
      v19 = *(&v35 + v17);
    }

    else
    {
      v18 = v28;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v18 = sub_1B2252D50();
      }

      v19 = *(v18 + v17);
    }

    if ((v15 & 0xC) == v10)
    {
      v15 = sub_1B2172E00(v15, a3, a4);
      if ((a4 & 0x1000000000000000) == 0)
      {
LABEL_22:
        v15 = (v15 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_27;
      }
    }

    else if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_22;
    }

    if (v34 <= v15 >> 16)
    {
      goto LABEL_60;
    }

    v15 = sub_1B2252430();
LABEL_27:
    if (v30 == v14 >> 14)
    {
      return 0;
    }

    v17 = v14 & 0xC;
    v20 = v14;
    if (v17 == v13)
    {
      v20 = sub_1B2172E00(v14, a1, a2);
    }

    v21 = v20 >> 16;
    if (v20 >> 16 >= v32)
    {
      goto LABEL_59;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v23 = sub_1B2252450();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v35 = a1;
      v36 = v27;
      v23 = *(&v35 + v21);
    }

    else
    {
      v22 = v26;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v22 = sub_1B2252D50();
      }

      v23 = *(v22 + v21);
    }

    if (v17 == v13)
    {
      v14 = sub_1B2172E00(v14, a1, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
LABEL_42:
        if (v32 <= v14 >> 16)
        {
          goto LABEL_61;
        }

        v14 = sub_1B2252430();
        goto LABEL_44;
      }
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_42;
    }

    v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_44:
    if (v19 < v23)
    {
      return 1;
    }

    if (v23 < v19)
    {
      return 0;
    }
  }

  if (v30 != v14 >> 14)
  {
    v17 = v14 & 0xC;
    v25 = v14;
    if (v17 == v13)
    {
      goto LABEL_62;
    }

    goto LABEL_50;
  }

  return 0;
}

unint64_t sub_1B2172D2C()
{
  result = qword_1ED85D4A8;
  if (!qword_1ED85D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D4A8);
  }

  return result;
}

uint64_t sub_1B2172D80(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1B2172DA8()
{
  result = qword_1EB7A12A0[0];
  if (!qword_1EB7A12A0[0])
  {
    sub_1B2251E10();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A12A0);
  }

  return result;
}

uint64_t sub_1B2172E00(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B2252470();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B2741F20](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t ValueObservation.removeDuplicates(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(v14, v4, sizeof(v14));
  v9 = swift_allocObject();
  v10 = *(a3 + 24);
  v9[2] = *(a3 + 16);
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = a2;
  v11 = type metadata accessor for ValueReducers.RemoveDuplicates();

  sub_1B2117318();
  WitnessTable = swift_getWitnessTable();
  sub_1B21AC6AC(sub_1B2173048, v9, a3, v11, WitnessTable, a4);
}

uint64_t sub_1B2172F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  sub_1B2173054(v13, a2, a3, a4, a5, a6);
}

uint64_t sub_1B2173054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ValueReducers.RemoveDuplicates();
  v13 = *(v12 + 36);
  v14 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21117B4(a6 + v13, 1, 1, AssociatedTypeWitness);
  result = (*(*(a4 - 8) + 32))(a6, a1, a4);
  v17 = (a6 + *(v12 + 40));
  *v17 = a2;
  v17[1] = a3;
  return result;
}

uint64_t ValueObservation<>.removeDuplicates()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(v12, v3, sizeof(v12));
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  v7[2] = *(a1 + 16);
  v7[3] = v8;
  v7[4] = a2;
  v9 = type metadata accessor for ValueReducers.RemoveDuplicates();
  sub_1B2117318();
  WitnessTable = swift_getWitnessTable();
  sub_1B21AC6AC(sub_1B2173348, v7, a1, v9, WitnessTable, a3);
}

uint64_t sub_1B2173214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = AssociatedTypeWitness;
  return sub_1B2173054(v11, sub_1B2173DF4, v15, a2, a3, a5);
}

uint64_t sub_1B2173354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  return sub_1B2252270() & 1;
}

uint64_t ValueReducers.RemoveDuplicates._value(_:)@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a1;
  v46 = a3;
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B2252B00();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - v14;
  v45 = *(AssociatedTypeWitness - 8);
  v16 = v45[8];
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  (*(v5 + 32))(v44, v4, v5);
  if (sub_1B2122A98(v15, 1, AssociatedTypeWitness) != 1)
  {
    v24 = v45[4];
    v24(v21, v15, AssociatedTypeWitness);
    v25 = v43;
    v26 = v8[2];
    v41 = *(v43 + 36);
    v26(v12, v3 + v41, v7);
    v27 = sub_1B2122A98(v12, 1, AssociatedTypeWitness);
    v42 = v3;
    v44 = v24;
    if (v27 == 1)
    {
      v28 = v8[1];
      v28(v12, v7);
      v29 = v7;
      v30 = v45;
    }

    else
    {
      v40 = v7;
      v24(v19, v12, AssociatedTypeWitness);
      v31 = v3 + *(v25 + 40);
      v32 = *(v31 + 8);
      v33 = v21;
      v34 = (*v31)(v19, v21);
      v30 = v45;
      v35 = v45[1];
      v35(v19, AssociatedTypeWitness);
      if (v34)
      {
        v35(v33, AssociatedTypeWitness);
        goto LABEL_3;
      }

      v21 = v33;
      v28 = v8[1];
      v29 = v40;
    }

    v36 = v41;
    v37 = v42;
    v28((v42 + v41), v29);
    (v30[2])(v37 + v36, v21, AssociatedTypeWitness);
    sub_1B21117B4(v37 + v36, 0, 1, AssociatedTypeWitness);
    v23 = v46;
    v44(v46, v21, AssociatedTypeWitness);
    v22 = 0;
    return sub_1B21117B4(v23, v22, 1, AssociatedTypeWitness);
  }

  (v8[1])(v15, v7);
LABEL_3:
  v22 = 1;
  v23 = v46;
  return sub_1B21117B4(v23, v22, 1, AssociatedTypeWitness);
}

uint64_t sub_1B2173794(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B21737EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(*(a1 + 24) + 8);
    swift_getAssociatedTypeWitness();
    v3 = sub_1B2252B00();
    if (v6 <= 0x3F)
    {
      v3 = sub_1B2173DAC();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_1B21738C0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) + 8);
  result = swift_getAssociatedTypeWitness();
  v10 = *(result - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v10 + 80);
  v15 = *(*(result - 8) + 64);
  if (!v11)
  {
    ++v15;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = result;
  v17 = *(v6 + 64) + v14;
  v18 = v15 + 7;
  if (v13 >= a2)
  {
LABEL_31:
    if (v7 == v13)
    {

      return sub_1B2122A98(a1, v7, v5);
    }

    v26 = (a1 + v17) & ~v14;
    if (v12 != v13)
    {
      v27 = *((v18 + v26) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }

    if (v11 >= 2)
    {
      v28 = sub_1B2122A98(v26, v11, v16);
      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v19 = ((v18 + (v17 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v13 + 1;
  }

  if (v21 >= 0x10000)
  {
    LODWORD(v22) = 4;
  }

  else
  {
    LODWORD(v22) = 2;
  }

  if (v21 < 0x100)
  {
    LODWORD(v22) = 1;
  }

  if (v21 >= 2)
  {
    v22 = v22;
  }

  else
  {
    v22 = 0;
  }

  switch(v22)
  {
    case 1:
      v23 = *(a1 + v19);
      if (!v23)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 2:
      v23 = *(a1 + v19);
      if (!v23)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v23 = *(a1 + v19);
      if (!v23)
      {
        goto LABEL_31;
      }

LABEL_28:
      v24 = v23 - 1;
      if (v20)
      {
        v24 = 0;
        v25 = *a1;
      }

      else
      {
        v25 = 0;
      }

      result = v13 + (v25 | v24) + 1;
      break;
    default:
      goto LABEL_31;
  }

  return result;
}

void sub_1B2173B18(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = *(v12 + 80);
  v17 = *(v8 + 64) + v16;
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v13)
  {
    ++v18;
  }

  v19 = v18 + 7;
  v20 = ((v19 + (v17 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v19 + (v17 & ~v16)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v21 = a3 - v15 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v15 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 <= v15)
  {
    v27 = ~v16;
    v28 = AssociatedTypeWitness;
    switch(v24)
    {
      case 1:
        *(a1 + v20) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 2:
        *(a1 + v20) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 3:
LABEL_54:
        __break(1u);
        return;
      case 4:
        *(a1 + v20) = 0;
        goto LABEL_39;
      default:
LABEL_39:
        if (!a2)
        {
          return;
        }

LABEL_40:
        if (v9 == v15)
        {
          v29 = a1;
          v30 = a2;
          v13 = v9;
          v28 = v7;
        }

        else
        {
          v29 = (a1 + v17) & v27;
          if (v14 != v15)
          {
            v31 = ((v19 + v29) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v32 = a2 & 0x7FFFFFFF;
              v31[1] = 0;
            }

            else
            {
              v32 = (a2 - 1);
            }

            *v31 = v32;
            return;
          }

          v30 = (a2 + 1);
        }

        sub_1B21117B4(v29, v30, v13, v28);
        break;
    }
  }

  else
  {
    if (((v19 + (v17 & ~v16)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v25 = a2 - v15;
    }

    else
    {
      v25 = 1;
    }

    if (((v19 + (v17 & ~v16)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v26 = ~v15 + a2;
      bzero(a1, v20);
      *a1 = v26;
    }

    switch(v24)
    {
      case 1:
        *(a1 + v20) = v25;
        break;
      case 2:
        *(a1 + v20) = v25;
        break;
      case 3:
        goto LABEL_54;
      case 4:
        *(a1 + v20) = v25;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1B2173DAC()
{
  result = qword_1EB7A1328;
  if (!qword_1EB7A1328)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB7A1328);
  }

  return result;
}

uint64_t NSDate.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B2251E90();
  v3 = sub_1B211280C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2111844();
  v10 = v9 - v8;
  sub_1B2251E80();
  if (qword_1ED85D6E0 != -1)
  {
    sub_1B2118264();
  }

  v11 = qword_1ED85D6E8;
  v12 = sub_1B2251E50();
  v13 = [v11 stringFromDate_];

  v14 = sub_1B22522A0();
  v16 = v15;

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = 2;
  return (*(v5 + 8))(v10, v2);
}

void Date.databaseValue.getter(uint64_t a1@<X8>)
{
  if (qword_1ED85D6E0 != -1)
  {
    sub_1B2118264();
  }

  v2 = qword_1ED85D6E8;
  v3 = sub_1B2251E50();
  v4 = [v2 stringFromDate_];

  v5 = sub_1B22522A0();
  v7 = v6;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = 2;
}

uint64_t static NSDate.fromDatabaseValue(_:)(__int128 *a1)
{
  v3 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  sub_1B2111894(v3);
  v5 = *(v4 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = sub_1B2251E90();
  v10 = sub_1B211280C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v17 = v16 - v15;
  LOBYTE(v15) = *(a1 + 16);
  v19 = *a1;
  v20 = v15;
  static Date.fromDatabaseValue(_:)(&v19, v8);
  if (sub_1B2122A98(v8, 1, v9) == 1)
  {
    sub_1B212E32C(v8, &qword_1EB7A1330, &unk_1B226A760);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v17, v8, v9);
    sub_1B21EA36C(v1, &v19);
    (*(v12 + 8))(v17, v9);
    return v19;
  }
}

uint64_t static Date.fromDatabaseValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B22522F0();
  v5 = sub_1B2111894(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B2111844();
  v8 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  sub_1B2111894(v8);
  v10 = *(v9 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38[-v12];
  v14 = type metadata accessor for DatabaseDateComponents();
  v15 = sub_1B21118A0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B2112FA8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38[-v22];
  v24 = *a1;
  v25 = *(a1 + 8);
  v26 = *(a1 + 16);
  if (v26 != 3)
  {
    if (v26 == 2)
    {
      v27 = *(a1 + 8);

      v28 = v24;
      goto LABEL_6;
    }

LABEL_8:
    v33 = sub_1B2114268();
    sub_1B21117B4(v33, v34, 1, v14);
    goto LABEL_9;
  }

  sub_1B22522E0();
  v28 = sub_1B22522C0();
  if (!v29)
  {
    goto LABEL_8;
  }

  v25 = v29;
LABEL_6:
  sub_1B2175A64(v28, v25, v13);

  v30 = sub_1B2114268();
  if (sub_1B2122A98(v30, v31, v14) != 1)
  {
    sub_1B2175B30(v13, v23);
    sub_1B2175B94(v23, v20);
    Date.init(databaseDateComponents:)(v20, a2);
    return sub_1B2175BF8(v23);
  }

LABEL_9:
  sub_1B212E32C(v13, &qword_1EB7A1338, &qword_1B2260530);
  if (v26 > 1)
  {
    v35 = sub_1B2251E90();
    v36 = a2;
    v37 = 1;
  }

  else
  {
    sub_1B2251E60();
    v35 = sub_1B2251E90();
    v36 = a2;
    v37 = 0;
  }

  return sub_1B21117B4(v36, v37, 1, v35);
}

uint64_t sub_1B21743C4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSDate.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t Date.init(databaseDateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  sub_1B2111894(v4);
  v6 = *(v5 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_1B2251E90();
  v11 = sub_1B211280C(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v18 = v17 - v16;
  if (*(a1 + *(type metadata accessor for DatabaseDateComponents() + 20)) > 3u)
  {
    sub_1B2175BF8(a1);
  }

  else
  {
    if (qword_1EB7A0D20 != -1)
    {
      sub_1B21155BC();
    }

    v19 = sub_1B2251F70();
    sub_1B2156958(v19, qword_1EB7A0D28);
    sub_1B2251F40();
    if (sub_1B2122A98(v9, 1, v10) != 1)
    {
      (*(v13 + 32))(v18, v9, v10);
      sub_1B2251E40();
      sub_1B2251E30();
      sub_1B2175BF8(a1);
      (*(v13 + 8))(v18, v10);
      v20 = 0;
      return sub_1B21117B4(a2, v20, 1, v10);
    }

    sub_1B2175BF8(a1);
    sub_1B212E32C(v9, &qword_1EB7A1330, &unk_1B226A760);
  }

  v20 = 1;
  return sub_1B21117B4(a2, v20, 1, v10);
}

void Date.init(julianDay:)(uint64_t a1@<X8>)
{
  v2 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  sub_1B2111894(v2);
  v4 = *(v3 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v72 - v6;
  v8 = sub_1B2251E90();
  v9 = sub_1B211280C(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  v16 = v15 - v14;
  v17 = sub_1B21619D8(&qword_1EB7A1340, &unk_1B22606D0);
  sub_1B2111894(v17);
  v19 = *(v18 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1B21619D8(&qword_1EB7A1348, &qword_1B2255048);
  sub_1B2111894(v21);
  v23 = *(v22 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v72 - v25;
  v27 = sub_1B2251D00();
  v28 = sub_1B211280C(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1B2111844();
  v33 = v32 - v31;
  sub_1B2115FF0();
  if (!(v36 ^ v37 | v35))
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v34 <= -9.22337204e18)
  {
    goto LABEL_51;
  }

  sub_1B2111F50();
  if (!v36)
  {
    goto LABEL_52;
  }

  v39 = v38 + 43200000;
  if (__OFADD__(v38, 43200000))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v40 = v39 / 86400000;
  v41 = ((v39 / 86400000) + -1867216.25) / 36524.25;
  if (COERCE__INT64(fabs(v41)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v41 >= 9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v42 = v40 + 1 + v41;
  if (__OFADD__(v40 + 1, v41))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v43 = v41 / 4;
  v37 = __OFSUB__(v42, v43);
  v44 = v42 - v43;
  if (v37)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v45 = v44 + 1524;
  if (__OFADD__(v44, 1524))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v46 = (v45 + -122.1) / 365.25;
  if (COERCE__INT64(fabs(v46)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v47 = v46;
  v48 = 36525 * (v46 & 0x7FFF) / 0x64;
  v37 = __OFSUB__(v45, v48);
  v49 = v45 - v48;
  if (v37)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v50 = v49 / 30.6001;
  if (COERCE__INT64(fabs(v50)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v50 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v50 >= 9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v51 = v50 * 30.6001;
  if (COERCE_UNSIGNED_INT64(fabs(v51)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (__OFSUB__(v49, v51))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v52 = v50;
  v53 = v50 - 13;
  if (v50 <= 13)
  {
    v53 = v52 - 1;
    if (__OFSUB__(v52, 1))
    {
      __break(1u);
      goto LABEL_84;
    }
  }

  if (v53 < 3)
  {
LABEL_30:
    if (!__OFADD__(v47, -4715))
    {
      goto LABEL_31;
    }

LABEL_84:
    __break(1u);
    return;
  }

  v37 = __OFADD__(v47, -4716);
  v47 -= 4716;
  if (v37)
  {
    __break(1u);
    goto LABEL_30;
  }

LABEL_31:
  sub_1B2115FF0();
  if (!(v36 ^ v37 | v35))
  {
    goto LABEL_71;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_1B2111F50();
  if (!v36)
  {
    goto LABEL_73;
  }

  v73 = v16;
  v58 = v57 % 3600;
  if (__OFSUB__(v57, 3600 * (v57 / 3600)))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v72 = v11;
  v37 = __OFSUB__(v58, 60 * (v58 / 60));
  v59 = v58 % 60;
  if (v37)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v75 = v56;
  v76 = v55;
  v77 = v7;
  v78 = v8;
  v79 = a1;
  v60 = v57 - v57 + v59;
  v74 = sub_1B2251F70();
  sub_1B21117B4(v26, 1, 1, v74);
  sub_1B2251FA0();
  v61 = sub_1B2114268();
  sub_1B21117B4(v61, v62, 1, v63);
  sub_1B2251CE0();
  sub_1B2251C70();
  sub_1B2251C90();
  sub_1B2251C30();
  sub_1B2251C50();
  sub_1B2251CB0();
  if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v60 <= -9.22337204e18)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v60 >= 9.22337204e18)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_1B2251CD0();
  sub_1B2115FF0();
  if (!(v36 ^ v37 | v35))
  {
    goto LABEL_79;
  }

  if (v64 <= -9.22337204e18)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_1B2111F50();
  if (!v36)
  {
    goto LABEL_81;
  }

  sub_1B2251C10();
  if (qword_1EB7A0D20 != -1)
  {
LABEL_82:
    sub_1B21155BC();
  }

  sub_1B2156958(v74, qword_1EB7A0D28);
  v65 = v77;
  sub_1B2251F40();
  v66 = v78;
  v67 = sub_1B2122A98(v65, 1, v78);
  v68 = v79;
  if (v67 == 1)
  {
    (*(v75 + 8))(v33, v76);
    sub_1B212E32C(v65, &qword_1EB7A1330, &unk_1B226A760);
    v69 = 1;
  }

  else
  {
    v71 = v72;
    v70 = v73;
    (*(v72 + 32))(v73, v65, v66);
    sub_1B2251E40();
    sub_1B2251E30();
    (*(v71 + 8))(v70, v66);
    (*(v75 + 8))(v33, v76);
    v69 = 0;
  }

  sub_1B21117B4(v68, v69, 1, v66);
}

uint64_t Date.init(sqliteStatement:index:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  sub_1B2111894(v2);
  v4 = *(v3 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v67 - v6;
  v7 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  v8 = sub_1B2111894(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B2112FA8();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  v72 = type metadata accessor for DatabaseDateComponents();
  v17 = sub_1B21118A0(v72);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1B2112FA8();
  v69 = v20 - v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v67 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v67 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v70 = &v67 - v29;
  v30 = sub_1B2251E90();
  v31 = sub_1B211280C(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1B2112FA8();
  v68 = v36 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v67 - v39;
  v41 = sub_1B2122144();
  v43 = sqlite3_column_type(v41, v42);
  if ((v43 - 1) >= 2)
  {
    if (v43 == 3)
    {
      v67 = a1;
      v48 = sub_1B2122144();
      v50 = sqlite3_column_text(v48, v49);
      if (!v50)
      {
LABEL_8:
        v47 = 1;
        a1 = v67;
        return sub_1B21117B4(a1, v47, 1, v30);
      }

      v51 = v50;
      v52 = sub_1B2122144();
      v54 = sqlite3_column_bytes(v52, v53);
      SQLiteDateParser.components(cString:length:)(v51, v54, v16);
      sub_1B2175C54(v16, v13);
      v55 = v72;
      if (sub_1B2122A98(v13, 1, v72) == 1)
      {
        sub_1B212E32C(v13, &qword_1EB7A1338, &qword_1B2260530);
        goto LABEL_8;
      }

      sub_1B2175B30(v13, v25);
      v56 = sub_1B2251D00();
      sub_1B21118A0(v56);
      (*(v57 + 16))(v28, v25);
      v58 = v25[*(v55 + 20)];
      sub_1B2175BF8(v25);
      v28[*(v55 + 20)] = v58;
      v59 = v70;
      sub_1B2175B30(v28, v70);
      v60 = v69;
      sub_1B2175B94(v59, v69);
      v61 = v71;
      Date.init(databaseDateComponents:)(v60, v71);
      v62 = sub_1B2114268();
      v64 = sub_1B2122A98(v62, v63, v30);
      a1 = v67;
      if (v64 != 1)
      {
        v46 = *(v33 + 32);
        v66 = v68;
        v46(v68, v61, v30);
        sub_1B2251E40();
        sub_1B2251E30();
        (*(v33 + 8))(v66, v30);
        sub_1B2175BF8(v59);
        goto LABEL_3;
      }

      sub_1B2175BF8(v59);
      sub_1B212E32C(v61, &qword_1EB7A1330, &unk_1B226A760);
    }

    v47 = 1;
    return sub_1B21117B4(a1, v47, 1, v30);
  }

  v44 = sub_1B2122144();
  sqlite3_column_double(v44, v45);
  sub_1B2251E60();
  v46 = *(v33 + 32);
LABEL_3:
  v46(a1, v40, v30);
  v47 = 0;
  return sub_1B21117B4(a1, v47, 1, v30);
}

uint64_t sub_1B2175168@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v7 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v48 - v9;
  v10 = sub_1B2251D00();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  v20 = type metadata accessor for DatabaseDateComponents();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v48 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v51 = &v48 - v29;
  v30 = *(a3 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v28);
  v50 = &v48 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v48 - v34;
  v36 = sqlite3_column_type(a1, a2);
  if ((v36 - 1) >= 2)
  {
    if (v36 == 3)
    {
      v49 = a3;
      v40 = sqlite3_column_text(a1, a2);
      if (!v40)
      {
LABEL_8:
        v39 = 1;
        a3 = v49;
LABEL_12:
        v38 = v54;
        return sub_1B21117B4(v38, v39, 1, a3);
      }

      v41 = v40;
      v42 = sqlite3_column_bytes(a1, a2);
      SQLiteDateParser.init()();
      SQLiteDateParser.components(cString:length:)(v41, v42, v19);
      sub_1B2175C54(v19, v17);
      if (sub_1B2122A98(v17, 1, v20) == 1)
      {
        sub_1B212E32C(v17, &qword_1EB7A1338, &qword_1B2260530);
        goto LABEL_8;
      }

      sub_1B2175B30(v17, v27);
      v43 = v52;
      DatabaseDateComponents.dateComponents.getter();
      DatabaseDateComponents.format.getter();
      sub_1B2175BF8(v27);
      v44 = v51;
      DatabaseDateComponents.init(_:format:)(v43, &v55, v51);
      sub_1B2175B94(v44, v24);
      v45 = v53;
      Date.init(databaseDateComponents:)(v24, v53);
      a3 = v49;
      if (sub_1B2122A98(v45, 1, v49) != 1)
      {
        v37 = *(v30 + 32);
        v47 = v50;
        v37(v50, v45, a3);
        sub_1B2251E40();
        sub_1B2251E30();
        (*(v30 + 8))(v47, a3);
        sub_1B2175BF8(v44);
        goto LABEL_3;
      }

      sub_1B2175BF8(v44);
      sub_1B212E32C(v45, &qword_1EB7A1330, &unk_1B226A760);
    }

    v39 = 1;
    goto LABEL_12;
  }

  sqlite3_column_double(a1, a2);
  sub_1B2251E60();
  v37 = *(v30 + 32);
LABEL_3:
  v38 = v54;
  v37(v54, v35, a3);
  v39 = 0;
  return sub_1B21117B4(v38, v39, 1, a3);
}

id sub_1B21755D0()
{
  result = sub_1B21755F0();
  qword_1ED85D6E8 = result;
  return result;
}

id sub_1B21755F0()
{
  v0 = sub_1B21619D8(&qword_1EB7A1340, &unk_1B22606D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_1B2251F10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1B2175D40(0xD000000000000017, 0x80000001B226CCD0, v9);
  sub_1B2251EF0();
  v10 = sub_1B2251F00();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  sub_1B2251F80();
  v11 = sub_1B2251FA0();
  v12 = 0;
  if (sub_1B2122A98(v3, 1, v11) != 1)
  {
    v12 = sub_1B2251F90();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  [v9 setTimeZone_];

  return v9;
}

uint64_t sub_1B2175808()
{
  v0 = sub_1B2251F70();
  sub_1B2175CC4(v0, qword_1EB7A0D28);
  sub_1B2156958(v0, qword_1EB7A0D28);
  return sub_1B2175854();
}

uint64_t sub_1B2175854()
{
  v0 = sub_1B21619D8(&qword_1EB7A1340, &unk_1B22606D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_1B21619D8(&qword_1EB7A1350, &unk_1B22550D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_1B2251F20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E6969868], v8);
  sub_1B2251F30();
  (*(v9 + 8))(v12, v8);
  sub_1B2251EF0();
  v13 = sub_1B2251F10();
  sub_1B21117B4(v7, 0, 1, v13);
  sub_1B2251F50();
  sub_1B2251F80();
  v14 = sub_1B2251FA0();
  result = sub_1B2122A98(v3, 1, v14);
  if (result != 1)
  {
    return sub_1B2251F60();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2175A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8[0] = a1;
    v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = strlen(v8);
    v6 = v8;
    return SQLiteDateParser.components(cString:length:)(v6, v5, a3);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
    return sub_1B2252CC0();
  }

  v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v5 = strlen(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
  v6 = (v4 + 32);
  return SQLiteDateParser.components(cString:length:)(v6, v5, a3);
}

uint64_t sub_1B2175B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseDateComponents();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2175B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseDateComponents();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2175BF8(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseDateComponents();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2175C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1B2175CC4(uint64_t a1, uint64_t *a2)
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

void sub_1B2175D40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B2252290();

  [a3 setDateFormat_];
}

uint64_t Database.add(transactionObserver:extent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  ObjectType = swift_getObjectType();

  return sub_1B2177D9C(a1, a3, v27, ObjectType, a2, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t Database.remove(transactionObserver:)()
{
  sub_1B211D530();
  ObjectType = swift_getObjectType();

  return sub_1B2177AB0(v2, v1, ObjectType, v0);
}

uint64_t Database.afterNextTransactionCommit(_:)()
{
  sub_1B211D530();
  _s13CommitHandlerCMa();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  sub_1B2177C68();
}

uint64_t Database.TransactionObservationExtent.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

uint64_t sub_1B2175F54()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

void *sub_1B2175F98()
{
  sub_1B2117330();
  swift_beginAccess();
  return sub_1B2175FF4(*(*(v0 + 48) + 16) != 0);
}

void *sub_1B2175FD4(void *result)
{
  if (*(v1 + 56) != (result & 1))
  {
    if (*(v1 + 56))
    {
      return sub_1B21768F0();
    }

    else
    {
      return sub_1B2176A38();
    }
  }

  return result;
}

void *sub_1B2175FF4(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return sub_1B2175FD4(v2);
}

uint64_t sub_1B2176004(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getObjectType();
  return sub_1B2177A74(a2) & 1;
}

uint64_t sub_1B217605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(v4 + 17) & 1) != 0 || !sub_1B2176B68())
  {
    return 0;
  }

  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 8))(a1, a2, a3, a4, ObjectType, v10);
  swift_unknownObjectRelease();
  return v12 & 1;
}

void sub_1B21760F8()
{
  v1 = v0;
  sub_1B21118B8();
  swift_beginAccess();
  v2 = *(v0 + 48);
  *(v0 + 48) = MEMORY[0x1E69E7CC0];

  sub_1B2175F98();
  type metadata accessor for SchedulingWatchdog();
  v3 = sub_1B21114CC();
  if (v3)
  {
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    v5 = *(v1 + 32);
    *(v1 + 32) = 0;
    if (v5 >= 2)
    {
      if (v5 == 2)
      {
        sub_1B21766E4(0);
      }

      else
      {
        v6 = *(v1 + 16);
        swift_unownedRetainStrong();
        v7 = sub_1B211C444();
        v8 = v5;

        sub_1B21766E4((v7 & 1) == 0);
        swift_willThrow();
        sub_1B211C6D8(v5);
      }
    }

    else
    {
      sub_1B211C6D8(v5);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B21761FC(void *a1)
{
  v3 = *(v1 + 24);
  if (sub_1B2176FA4())
  {
    sub_1B21115FC();
    swift_beginAccess();
    result = *(v1 + 48);
    v5 = *(result + 16);
    if (!v5)
    {
      return result;
    }

    for (i = (v27 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      *(&v29 + 1) = &type metadata for DatabaseEvent;
      *&v30 = &off_1F296A8E0;
      sub_1B212DE18();
      *&v28 = swift_allocObject();
      v10 = sub_1B217856C(a1, v28 + 16);
      if (!v8)
      {
        break;
      }

      MEMORY[0x1EEE9AC00](v10);
      v26 = &v28;

      v11 = sub_1B2115B7C();
      sub_1B211CF8C(v11);
      v12 = sub_1B2203814(sub_1B21789C4, v25, v8);
      if (v12)
      {
        v13 = sub_1B2115B7C();
        sub_1B211A378(v13);
LABEL_10:
        sub_1B2113208(&v28);
        sub_1B21764DC(a1);

        goto LABEL_11;
      }

      MEMORY[0x1EEE9AC00](v12);
      v26 = &v28;
      v14 = sub_1B2203814(sub_1B21789C4, v25, v9);
      v15 = sub_1B2115B7C();
      sub_1B211A378(v15);
      if (!v14)
      {
        goto LABEL_10;
      }

      sub_1B2113208(&v28);
LABEL_11:
      if (!--v5)
      {
      }
    }

    goto LABEL_10;
  }

  v32 = &type metadata for DatabaseEvent;
  v33 = &off_1F296A8E0;
  sub_1B212DE18();
  *&v31 = swift_allocObject();
  v16 = a1[3];
  v17 = a1[4];
  sub_1B21139A0(a1, v16);
  v18 = *(v17 + 24);

  v18(a1, v16, v17);
  sub_1B21115FC();
  swift_beginAccess();
  v19 = *(v1 + 48);
  sub_1B21217FC(&v31, &v28);
  *(&v30 + 1) = v19;
  sub_1B2117F5C();

  sub_1B21614A8();
  v20 = *(*(v3 + 16) + 16);
  sub_1B21617AC(v20);
  v21 = *(v3 + 16);
  *(v21 + 16) = v20 + 1;
  v22 = (v21 + 48 * v20);
  v23 = v28;
  v24 = v30;
  v22[3] = v29;
  v22[4] = v24;
  v22[2] = v23;
  *(v3 + 16) = v21;
  swift_endAccess();
}

uint64_t sub_1B21764DC(uint64_t result)
{
  if ((*(v1 + 17) & 1) == 0)
  {
    v2 = result;
    result = sub_1B2176B68();
    if (result)
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(v2, ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t DatabaseEvent.copy()()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1B21139A0(v0, v1);
  return (*(v2 + 24))(v0, v1, v2);
}

uint64_t sub_1B21765C8()
{
  result = sub_1B2176B68();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 24))(ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B2176630(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = sub_1B2176B68();
  v6 = v5;
  if (v3 == 1)
  {
    if (!result)
    {
      return result;
    }

    v7 = *(v1 + 40);
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    swift_unknownObjectRelease();
  }

  else if (!result)
  {
    return result;
  }

  ObjectType = swift_getObjectType();
  (*(v6 + 32))(a1, ObjectType, v6);

  return swift_unknownObjectRelease();
}

void sub_1B21766E4(char a1)
{
  v2 = v1;
  v4 = *(v1 + 24);

  sub_1B2121848();

  if ((a1 & 1) == 0 || (sub_1B2117330(), swift_beginAccess(), v5 = *(v2 + 40), (v6 = sub_1B2116B08(v5)) == 0))
  {
LABEL_10:
    sub_1B21218AC();
    return;
  }

  v7 = v6;
  if (v6 >= 1)
  {

    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B27427E0](v8, v5);
      }

      else
      {
        sub_1B2117C0C(v5 + 8 * v8);
      }

      ++v8;
      v9 = *(v2 + 16);
      v10 = swift_unownedRetainStrong();
      sub_1B21767DC(v10);
    }

    while (v7 != v8);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1B21767DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = sub_1B2176B68();
  v6 = v5;
  if (v3 == 1)
  {
    if (!result)
    {
      return result;
    }

    v7 = *(v1 + 40);
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    swift_unknownObjectRelease();
  }

  else if (!result)
  {
    return result;
  }

  ObjectType = swift_getObjectType();
  (*(v6 + 40))(a1, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B2176890(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);

    if (v2 <= 2)
    {
      *(v1 + 32) = 2;
      sub_1B211C6D8(v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B21768F0()
{
  sub_1B2112FB8();
  sub_1B2117330();
  swift_beginAccess();
  v1 = *(v0 + 16);

  v2 = sub_1B2111F60();
  return sqlite3_update_hook(v2, v3, v4);
}

uint64_t sub_1B217694C(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    switch(a2)
    {
      case 9:
        v9 = 1;
        goto LABEL_8;
      case 18:
        v9 = 0;
LABEL_8:
        v10[3] = &type metadata for MetalDatabaseEventImpl;
        v10[4] = &off_1F296AD28;
        v10[0] = a3;
        v10[1] = a4;
        v11 = v9;
        v12 = a5;
        sub_1B21761FC(v10);

        return sub_1B21784CC(v10);
      case 23:
        v9 = 2;
        goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

GRDBInternal::DatabaseEvent::Kind_optional __swiftcall DatabaseEvent.Kind.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue == 23)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 18)
  {
    v2 = 0;
  }

  if (rawValue == 9)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *v1 = v3;
  return rawValue;
}

void *sub_1B2176A38()
{
  sub_1B2112FB8();
  sub_1B2117330();
  swift_beginAccess();
  v1 = *(v0 + 16);

  return sqlite3_update_hook(v1, 0, 0);
}

Swift::Void __swiftcall TransactionObserver.stopObservingDatabaseChangesUntilNextTransaction()()
{
  v1 = v0;
  sub_1B211D530();
  type metadata accessor for SchedulingWatchdog();
  v2 = sub_1B21114CC();
  if (v2 && (v3 = *(v2 + 24), , , v3))
  {
    sub_1B21778EC(v1, v3);
  }

  else
  {
    sub_1B2111608();
    sub_1B2252EC0();
    __break(1u);
  }
}

uint64_t sub_1B2176B68()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    Strong = v1;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = v0[4];
  }

  swift_unknownObjectRetain();
  return Strong;
}

uint64_t sub_1B2176BC0()
{
  sub_1B21784A4(v0 + 24);
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B2176C74@<X0>(_DWORD *a1@<X8>)
{
  result = DatabaseEvent.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t DatabaseEvent.databaseName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1B21139A0(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t DatabaseEvent.tableName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1B21139A0(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1B2176D58(uint64_t result)
{
  if (result)
  {
    return sub_1B22523F0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2176D64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return sub_1B22523F0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2176D74@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v6 = *(result + 40);
    v7 = *(result + 48);
    result = sub_1B22523F0();
    if (a3)
    {
      v9 = result;
      v10 = v8;
      v11 = sub_1B22523F0();
      v13 = v12;
      v16 = &type metadata for CopiedDatabaseEventImpl;
      v17 = &off_1F296ADF0;
      v14 = swift_allocObject();
      *&v15 = v14;
      v14[2] = v9;
      v14[3] = v10;
      v14[4] = v11;
      v14[5] = v13;
      *(a4 + 40) = v6;
      *(a4 + 48) = v7;
      return sub_1B21217FC(&v15, a4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2176E58()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1B2176E88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1B2176EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  return sub_1B2176E50(a1, a2);
}

uint64_t sub_1B2176EC4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 24);
  v5 = sub_1B21139A0(a2, a2[3]);
  if (!*(v5 + 40))
  {
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (*(v5 + 40) != 1)
  {
    if (v4 == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v4 != 1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = v5[4];
  sub_1B21139A0(v5, v5[3]);
  v7 = *(v6 + 16);
  v8 = sub_1B2114010();
  if (v9(v8, v6) == v3 && v2 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B22531F0();
  }

  return v12 & 1;
}

BOOL sub_1B2176FA4()
{
  sub_1B2117330();
  swift_beginAccess();
  return *(*(v0 + 24) + 16) == 0;
}

uint64_t sub_1B2176FDC()
{
  v1 = sub_1B2252220();
  v3 = v2;
  sub_1B21115FC();
  swift_beginAccess();
  v4 = *(*(v0 + 16) + 16);
  sub_1B21146E4();
  sub_1B21613D0();
  v5 = *(*(v0 + 24) + 16);
  sub_1B216174C(v5);
  v6 = *(v0 + 24);
  *(v6 + 16) = v5 + 1;
  v7 = (v6 + 24 * v5);
  v7[4] = v1;
  v7[5] = v3;
  v7[6] = v4;
  *(v0 + 24) = v6;
  return swift_endAccess();
}

void sub_1B2177080()
{
  v1 = sub_1B2252220();
  v3 = v2;
  sub_1B21115FC();
  swift_beginAccess();
  while (1)
  {
    v4 = *(v0 + 24);
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = v4 + 24 * v5;
    v7 = *(v6 + 8) == v1 && *(v6 + 16) == v3;
    if (v7 || (sub_1B22531F0() & 1) != 0)
    {
      break;
    }

    sub_1B2117F5C();
    v8 = *(v0 + 24);
    if (!*(v8 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = *(v0 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 24) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B219569C(v8);
      v8 = v12;
    }

    v11 = *(v8 + 16);
    if (!v11)
    {
      goto LABEL_18;
    }

    sub_1B211D554(v11);
    swift_endAccess();
  }

  sub_1B21B2A34(*(v0 + 24));
  if (!v14)
  {
    return;
  }

  v15 = v13;
  sub_1B21115FC();
  swift_beginAccess();
  v16 = *(*(v0 + 16) + 16);

  v17 = __OFSUB__(v16, v15);
  v18 = v16 - v15;
  if (!v17)
  {
    sub_1B2117F5C();
    sub_1B217720C(v18);
    swift_endAccess();
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1B21771D0()
{
  if (*(*v0 + 16))
  {
    sub_1B2177888();
    if (!v1)
    {
      v2 = *(*v0 + 16);
      sub_1B2194818();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B217720C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(*v1 + 16);
  result = sub_1B222EED0(v2, -result, 0);
  if (v3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 < result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_1B21776B8(result, v2);
}

void sub_1B2177280()
{
  v1 = sub_1B2252220();
  v3 = v2;
  sub_1B21115FC();
  swift_beginAccess();
  while (1)
  {
    v4 = *(v0 + 24);
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = v4 + 24 * v5;
    v7 = *(v6 + 8) == v1 && *(v6 + 16) == v3;
    if (v7 || (sub_1B22531F0() & 1) != 0)
    {
      break;
    }

    sub_1B21146E4();
    v8 = *(v0 + 24);
    if (!*(v8 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v9 = *(v0 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 24) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B219569C(v8);
      v8 = v12;
    }

    v11 = *(v8 + 16);
    if (!v11)
    {
      goto LABEL_17;
    }

    sub_1B211D554(v11);
    swift_endAccess();
  }

  if (*(*(v0 + 24) + 16))
  {
    sub_1B21146E4();
    sub_1B21771D0();
    swift_endAccess();
  }
}

uint64_t sub_1B217739C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t *sub_1B21773D0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B21775AC(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

unint64_t *sub_1B2177448(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1B21773D0(v9, v4, v2);
      MEMORY[0x1B2743C50](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1B2148CEC(0, v4, v5);
  sub_1B21775AC(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1B21775AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
LABEL_4:
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = *(*(*(a3 + 56) + 8 * v11) + 72);
    v15 = (v14 + 56);
    v16 = *(v14 + 16) + 1;
    while (--v16)
    {
      v17 = *v15;
      v15 += 32;
      if (v17 == 1)
      {
        goto LABEL_4;
      }
    }

    *(a1 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_18:
      sub_1B21E8058(a1, a2, v4, a3);
      return;
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_18;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1B21776B8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1B2181350(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 48 * v5);
  sub_1B21619D8(&qword_1EB7A0E18, &qword_1B2254530);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1B2245534((v9 + 48 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B21777AC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1B2157100(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1B215A618((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1B2177888()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B219569C(v1);
    v1 = v8;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (v1 + 24 * v2);
    v5 = v4[1];
    v6 = v4[2];
    v7 = v4[3];
    *(v1 + 16) = v3;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B21778EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 40);
  v5 = sub_1B2116B08(v4);

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B27427E0](i, v4);
      v8 = result;
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v8 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (sub_1B2177A74(a1))
    {
      break;
    }
  }

  *(v8 + 17) = 1;
  swift_beginAccess();
  v9 = *(a2 + 48);

  sub_1B2194634(v9, v8);
  if ((v10 & 1) == 0)
  {
    sub_1B21946B0();
    v12 = v11;

    sub_1B211A378(v12);
  }

  swift_endAccess();
  sub_1B2175F98();
}

uint64_t sub_1B2177A74(uint64_t a1)
{
  result = sub_1B2176B68();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRelease();
    return v3 == a1;
  }

  return result;
}

uint64_t sub_1B2177AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SchedulingWatchdog();
  v8 = sub_1B2114010();
  if (sub_1B2117B40(v8))
  {
    v9 = sub_1B212A5AC();
    v11 = sub_1B2116004(v9, v10);
    v12 = sub_1B2177448(v11);

    v13 = sub_1B21224AC(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    *v14 = a2;
    v14[1] = v12;
    sub_1B2120024(v13, v15);
    v16 = sub_1B212DAF0();
    v18 = sub_1B2116004(v16, v17);
    v19 = sub_1B2177448(v18);

    v20 = sub_1B21224AC(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    *v21 = a2;
    v21[1] = v19;
    sub_1B2120024(v20, v22);
    v23 = sub_1B211CD70();
    sub_1B2177BD4(a1, v23, a3, a4);
  }

  else
  {
    sub_1B2111608();
    result = sub_1B2114F3C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2177BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = a1;
  v7[3] = a4;
  swift_beginAccess();
  sub_1B21C3A04(sub_1B217883C, v7, *(a2 + 40));
  if ((v5 & 1) == 0)
  {
    sub_1B2194794();
  }

  return swift_endAccess();
}

uint64_t sub_1B2177C68()
{
  sub_1B2122150();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for SchedulingWatchdog();
  if (sub_1B2117B40(v5))
  {
    v8 = sub_1B212A5AC();
    v10 = sub_1B2177448(v9);

    v11 = (v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    v12 = *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    v13 = *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache + 8);
    *v11 = v8;
    v11[1] = v10;
    sub_1B2120024(v12, v13);
    v14 = sub_1B212DAF0();
    v16 = sub_1B2177448(v15);

    v17 = (v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    v18 = *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    v19 = *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache + 8);
    *v17 = v14;
    v17[1] = v16;
    sub_1B2120024(v18, v19);
    sub_1B211CD70();
    v20 = sub_1B2114010();
    sub_1B2178624(v20, v7, v5, v3, v1);
    sub_1B2114274();
  }

  else
  {
    sub_1B2111608();
    result = sub_1B2114F3C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2177D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1B2122150();
  a26 = v27;
  a27 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = *v37;
  type metadata accessor for SchedulingWatchdog();
  v39 = sub_1B2114010();
  if (sub_1B2117B40(v39))
  {
    v40 = sub_1B212A5AC();
    v42 = sub_1B2116004(v40, v41);
    v43 = sub_1B2177448(v42);

    v44 = sub_1B21224AC(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    *v45 = v34;
    v45[1] = v43;
    sub_1B2120024(v44, v46);
    v47 = sub_1B212DAF0();
    v49 = sub_1B2116004(v47, v48);
    v50 = sub_1B2177448(v49);

    v51 = sub_1B21224AC(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    *v52 = v34;
    v52[1] = v50;
    sub_1B2120024(v51, v53);
    v54 = sub_1B211CD70();
    a14 = v38;
    sub_1B21786E4(v36, &a14, v54, v32, v30);
    sub_1B2114274();
  }

  else
  {
    sub_1B2111608();
    result = sub_1B2114F3C();
    __break(1u);
  }

  return result;
}

unint64_t sub_1B2177EE4()
{
  result = qword_1EB7A1358;
  if (!qword_1EB7A1358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1358);
  }

  return result;
}

unint64_t sub_1B2177F3C()
{
  result = qword_1EB7A1360;
  if (!qword_1EB7A1360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1360);
  }

  return result;
}

__n128 sub_1B2178038(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B217804C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
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

uint64_t sub_1B217808C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 sub_1B21780E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B2178104(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1B2178144(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseUUIDEncodingStrategy(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1B2178224(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B21782FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B217834C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *result = a2;
    }
  }

  return result;
}

void *sub_1B21783A0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1B21783CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2178428(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1B2178478(void *result, int a2)
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

uint64_t sub_1B21784FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A0E18, &qword_1B2254530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B21785C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B2178624(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TransactionObservation();
  v9 = swift_allocObject();

  sub_1B21787B0(v10, a2, v9, a4, a5);
  v11 = sub_1B2117F5C();
  MEMORY[0x1B2742060](v11);
  sub_1B212B4C4(*((*(a3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B2252630();
  return swift_endAccess();
}

uint64_t sub_1B21786E4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = *a2;
  type metadata accessor for TransactionObservation();
  v8 = swift_allocObject();
  v9 = swift_unknownObjectRetain();
  sub_1B217885C(v9, v12, v8, a4, a5);
  v10 = swift_beginAccess();
  MEMORY[0x1B2742060](v10);
  sub_1B212B4C4(*((*(a3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B2252630();
  return swift_endAccess();
}

uint64_t sub_1B21787B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a3 + 17) = 0;
  *(a3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 16) = a2;
  if (a2)
  {
    *(a3 + 40) = a1;
    *(a3 + 48) = a5;
  }

  else
  {
    *(a3 + 32) = a4;
    swift_unknownObjectWeakAssign();
  }

  return a3;
}

uint64_t sub_1B217885C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  *(a3 + 17) = 0;
  *(a3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 16) = v8;
  if (v8)
  {
    *(a3 + 40) = a1;
    *(a3 + 48) = a5;
  }

  else
  {
    *(a3 + 32) = a5;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  return a3;
}

uint64_t getEnumTagSinglePayload for MetalDatabaseEventImpl(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MetalDatabaseEventImpl(uint64_t result, int a2, int a3)
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

uint64_t sub_1B2178930(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B2178970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21789F8(uint64_t a1)
{
  sub_1B21118C4();
  memcpy(v2, v3, v4);
  sub_1B21118C4();
  memcpy(v5, v6, v7);
  switch(sub_1B213A580(v59))
  {
    case 1u:
      v43 = sub_1B213AA9C(v59);
      v44 = memcpy(__dst, v43, 0xA3uLL);
      sub_1B21118D0(v44, v45, v46, v47, v48, v49, v50, v51, v54, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], v57[0]);
      v52 = sub_1B2114F68();
      sub_1B213BBD8(v52, v53);
      sub_1B213A5CC(v58);
      memcpy(v57, __src, 0xA3uLL);
      v32 = sub_1B214D464(v57);
      goto LABEL_7;
    case 2u:
      v19 = sub_1B213AA9C(v59);
      v20 = v19[21];
      v21 = v19[22];
      v22 = memcpy(__dst, v19, 0xA3uLL);
      sub_1B21118D0(v22, v23, v24, v25, v26, v27, v28, v29, v54, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], v57[0]);
      v30 = sub_1B2114F68();
      sub_1B213BBD8(v30, v31);
      sub_1B21356F8(v19);
      memcpy(v57, __src, 0xA8uLL);
      v57[21] = v20;
      v57[22] = v21;
      v32 = sub_1B2155A5C(v57);
      goto LABEL_7;
    case 3u:
      v33 = sub_1B213AA9C(v59);
      sub_1B21118D0(v33, v34, v35, v36, v37, v38, v39, v40, v54, *v33, __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], v57[0]);
      v41 = sub_1B2114F68();
      sub_1B2153E58(v41, v42);
      sub_1B213A5CC(v58);
      v57[0] = __src[0];
      v32 = sub_1B216ED24(v57);
LABEL_7:
      result = sub_1B2118284(v32, v57);
      break;
    case 4u:
      v57[0] = a1;
      v18 = sub_1B213A59C(v57);
      sub_1B2118284(v18, v57);

      break;
    default:
      v8 = sub_1B213AA9C(v59);
      v9 = sub_1B2118284(v8, v58);
      result = sub_1B21118D0(v9, v10, v11, v12, v13, v14, v15, v16, v54, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], v57[0]);
      break;
  }

  return result;
}

uint64_t sub_1B2178B94@<X0>(void *a1@<X8>)
{
  sub_1B21118C4();
  memcpy(v2, v3, v4);
  switch(sub_1B213A580(v29))
  {
    case 1u:
      v5 = sub_1B213AA9C(v29);
      sub_1B21118C4();
      memcpy(v6, v7, v8);
      v9 = sub_1B213AA9C(__src);
      sub_1B2127DC0(v9, __dst);
      goto LABEL_5;
    case 2u:
      v5 = sub_1B213AA9C(v29);
      v10 = v5[22];
      sub_1B21118C4();
      memcpy(v11, v12, v13);
      v14 = sub_1B213AA9C(__src);
      sub_1B2156464(v14, __dst);

LABEL_5:
      memcpy(__dst, v5, 0xA3uLL);
      sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1B22546B0;
      memcpy((v15 + 32), __dst, 0xA3uLL);
      sub_1B2116014();
      __src[0] = v16;
      __src[1] = v17;
      LOWORD(__src[2]) = 1;
      __src[3] = v15;
      sub_1B2179374(__src);
      goto LABEL_6;
    case 3u:
      v27[0] = *sub_1B213AA9C(v29);
      sub_1B2153E14(v27);
      sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1B22546B0;
      memcpy((v19 + 32), v27, 0xA3uLL);
      sub_1B2116014();
      __dst[0] = v20;
      __dst[1] = v21;
      LOWORD(__dst[2]) = 1;
      __dst[3] = v19;
      sub_1B2179374(__dst);
      memcpy(a1, __dst, 0xA3uLL);
      sub_1B21118C4();
      memcpy(v22, v23, v24);
      v25 = *sub_1B213AA9C(__src);

    case 4u:
      sub_1B21793B4(__src);
LABEL_6:
      result = memcpy(a1, __src, 0xA3uLL);
      break;
    default:
      sub_1B213AA9C(v29);
      result = sub_1B2252EC0();
      __break(1u);
      break;
  }

  return result;
}

void *sub_1B2178DE4@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v3, sizeof(__dst));
  switch(sub_1B213A580(__dst))
  {
    case 1u:
      v6 = sub_1B213AA9C(__dst);
      memcpy(v14, v3, sizeof(v14));
      v7 = sub_1B213AA9C(v14);
      sub_1B2127DC0(v7, __src);
      goto LABEL_7;
    case 2u:
      v6 = sub_1B213AA9C(__dst);
      v8 = v6[22];
      memcpy(v14, v3, sizeof(v14));
      v9 = sub_1B213AA9C(v14);
      sub_1B2156464(v9, __src);

LABEL_7:
      memcpy(__src, v6, 0xA3uLL);
      if (a1)
      {
        memcpy(v12, __src, 0xA3uLL);
        nullsub_1(v12);
      }

      else
      {
        sub_1B21356F8(__src);
        sub_1B2179418(v12);
      }

      v10 = v12;
      goto LABEL_12;
    case 4u:
      if (a1)
      {
        goto LABEL_4;
      }

      sub_1B2179418(__src);
      v10 = __src;
LABEL_12:
      memcpy(v14, v10, 0xA3uLL);
      nullsub_1(v14);
      break;
    default:
      sub_1B213AA9C(__dst);
LABEL_4:
      sub_1B21793E8(v14);
      break;
  }

  return memcpy(a2, v14, 0xA3uLL);
}

uint64_t sub_1B2178F60(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  if (!v4)
  {
    return v3;
  }

  while (2)
  {
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v15, v5, sizeof(v15));
    switch(sub_1B213A580(v15))
    {
      case 1u:
      case 2u:
        sub_1B213AA9C(v15);
        v6 = 1;
        goto LABEL_6;
      case 3u:
        goto LABEL_12;
      case 4u:
        goto LABEL_13;
      default:
        v7 = *sub_1B213AA9C(v15);
        sub_1B213A774(__dst, v13);
        sub_1B213A774(__dst, v13);
        v8 = sub_1B2138F90();
        v10 = sub_1B21D9F5C(v8, v9);
        if (v2)
        {

          sub_1B213A5CC(__dst);
          sub_1B213A5CC(__dst);
          return v3;
        }

        v6 = v10;
        sub_1B213A5CC(__dst);

        sub_1B213A5CC(__dst);
LABEL_6:
        v11 = __OFADD__(v3, v6);
        v3 += v6;
        if (!v11)
        {
          v5 += 184;
          if (!--v4)
          {
            return v3;
          }

          continue;
        }

        __break(1u);
LABEL_12:
        sub_1B213AA9C(v15);
LABEL_13:
        result = sub_1B2252EC0();
        __break(1u);
        return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for AllColumns(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AllColumns(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B217920C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64) >> 1;
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

double sub_1B2179254(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
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
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 184) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 2 * -a2;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      return result;
    }

    *(a1 + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B21792EC(void *a1, uint64_t a2)
{
  if (a2 < 4)
  {
    v3 = a1[13] & 1;
    v4 = a1[20] & 0xF981FFLL | (a2 << 61);
    a1[8] &= 1uLL;
    a1[13] = v3;
    a1[20] = v4;
  }

  else
  {
    *a1 = (a2 - 4);
    bzero(a1 + 1, 0x98uLL);
    a1[21] = 0;
    a1[22] = 0;
    a1[20] = 0x8000000000000000;
  }
}

uint64_t sub_1B2179374(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0x10177 | 0x88888888;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v2 & 0x81FF;
  *(result + 2) = BYTE2(v4);
  return result;
}

void sub_1B21793B4(uint64_t a1)
{
  bzero(a1, 0xA0uLL);
  *(a1 + 162) = -88;
  *(a1 + 160) = 0;
}

double sub_1B21793E8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x1FFFFFFFCLL;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 147) = 0u;
  return result;
}

double sub_1B2179418(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x1FFFFFFFELL;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 147) = 0u;
  return result;
}

uint64_t sub_1B2179448(uint64_t a1)
{
  if ((*(a1 + 64) >> 1) > 0x80000000)
  {
    return -(*(a1 + 64) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2179460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 163))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64) >> 1;
  if (v3 > 0x80000000)
  {
    v4 = ~v3;
  }

  else
  {
    v4 = -1;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_1B21794B8(char *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    v5 = a2 - 0x7FFFFFFF;
    bzero(a1, 0xA3uLL);
    *a1 = v5;
    if (a3 >= 0x7FFFFFFF)
    {
      a1[163] = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      a1[163] = 0;
    }

    if (a2)
    {
      *(a1 + 2) = 0u;
      *(a1 + 3) = 0u;
      *a1 = 0u;
      *(a1 + 1) = 0u;
      *(a1 + 8) = 2 * ~a2;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 147) = 0u;
    }
  }
}

double sub_1B2179564(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 162) = 0;
    *(a1 + 160) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 2 * -a2;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 147) = 0u;
  }

  return result;
}

uint64_t QueryInterfaceRequest.select<A>(_:as:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, v3, 0xA2uLL);
  SelectionRequest.select(_:)();
  memcpy(v7, __src, sizeof(v7));
  QueryInterfaceRequest.asRequest<A>(of:)();
  memcpy(__dst, v7, 0xA2uLL);
  sub_1B2111808(a3);
  return (*(v5 + 8))(__dst, a3);
}

uint64_t QueryInterfaceRequest.limit(_:offset:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_1B2114F78();
  memcpy(v4, v5, v6);
  v8 = *(a1 + 16);
  return sub_1B2135E94(sub_1B217F8D4, a1, a2);
}

uint64_t QueryInterfaceRequest.aliased(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B2114F78();
  memcpy(v3, v4, v5);
  v9 = *(a2 + 16);
  sub_1B211829C();
  return sub_1B2135E94(v6, a2, v7);
}

uint64_t QueryInterfaceRequest.with<A>(_:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B2114F78();
  memcpy(v5, v6, v7);
  v9 = *(a2 + 16);
  return sub_1B2135E94(sub_1B217F9AC, a2, a3);
}

uint64_t QueryInterfaceRequest<A>.selectID()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2114F78();
  memcpy(v6, v7, v8);
  v9 = swift_allocObject();
  v9[2] = *(a1 + 16);
  v9[3] = a2;
  v9[4] = a3;
  sub_1B2114F78();
  memcpy(v10, v11, v12);
  v13 = *(a1 - 8);
  v14 = sub_1B211D56C(v13);
  v15(v14);
  QueryInterfaceRequest.select(_:)(a1, __src);

  QueryInterfaceRequest.asRequest<A>(of:)();
  memcpy(__dst, __src, 0xA2uLL);
  return (*(v13 + 8))(__dst, a1);
}

uint64_t QueryInterfaceRequest<A>.selectID()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2114F78();
  memcpy(v8, v9, v10);
  v11 = swift_allocObject();
  v11[2] = *(a1 + 16);
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  sub_1B2114F78();
  memcpy(v12, v13, v14);
  v15 = *(a1 - 8);
  v16 = sub_1B211D56C(v15);
  v17(v16);
  QueryInterfaceRequest.select(_:)(a1, __src);

  QueryInterfaceRequest.asRequest<A>(of:)();
  memcpy(__dst, __src, 0xA2uLL);
  return (*(v15 + 8))(__dst, a1);
}

uint64_t sub_1B2179B48(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v395 = v4;
  v6 = v5;
  v400 = result;
  v412 = v3;
  if (v3 >> 62)
  {
    goto LABEL_250;
  }

  v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return result;
  }

  while (1)
  {
    v406 = v1;
    v8 = v3 & 0xC000000000000001;
    v9 = v3;
    sub_1B21C2A5C(0, (v3 & 0xC000000000000001) == 0, v3);
    v414 = v8;
    if (v8)
    {
LABEL_254:
      MEMORY[0x1B27427E0](0, v9);
    }

    else
    {
      v391 = *(v9 + 32);
    }

    v10 = 0;
    v394 = *(v6 + 16);
    v393 = v6 + 32;
    v408 = v9 & 0xFFFFFFFFFFFFFF8;
    v407 = v9 + 32;
    v413 = v7;
LABEL_6:
    if (v10 == v394)
    {
    }

    v11 = *(v393 + 8 * v10);
    if (!*(v11 + 16))
    {
      goto LABEL_249;
    }

    v12 = *(v11 + 88);
    if (v12 < 0)
    {
      goto LABEL_276;
    }

    v13 = *(v393 + 8 * v10);
    v403 = v10;
    v15 = *(v11 + 56);
    v14 = *(v11 + 64);
    v16 = *(v13 + 72);
    v17 = *(v13 + 80);
    v405 = v13;
    if (v12)
    {
      v18 = *v395;
    }

    else
    {
      v18 = v15;
    }

    if (v12)
    {
      v19 = v395[1];
    }

    else
    {
      v19 = v14;
    }

    v401 = v15;
    if (v12)
    {
      v20 = v15;
    }

    else
    {
      v20 = *v395;
    }

    v402 = v14;
    if (v12)
    {
      v21 = v14;
    }

    else
    {
      v21 = v395[1];
    }

    if (v16)
    {

      v22 = v16;
      v23 = v17;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v782 = v18;
    v783 = v19;
    v784 = v20;
    v785 = v21;
    v786 = v22;
    v787 = v23;

    v398 = v16;
    sub_1B2181640(v401, v402, v16, v17, v12);

    v24 = sub_1B21D9790(v400);
    if (v406)
    {

      return sub_1B21816DC(v401, v402, v16, v17, v12);
    }

    v25 = v24;

    v396 = v12;
    v26 = sub_1B21D9D18(v12 & 1, v25);

    v27 = v26[2];
    if (!v27)
    {
      v44 = MEMORY[0x1E69E7CC0];
      v45 = MEMORY[0x1E69E7CC0];
      v36 = MEMORY[0x1E69E7CC0];
      goto LABEL_47;
    }

    *&v565[0] = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v28 = *&v565[0];
    v397 = v26;
    v29 = v26 + 7;
    v30 = v27;
    do
    {
      v32 = *(v29 - 1);
      v31 = *v29;
      *&v565[0] = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);

      if (v34 >= v33 >> 1)
      {
        sub_1B2116B10();
        v28 = *&v565[0];
      }

      *(v28 + 16) = v34 + 1;
      v35 = v28 + 16 * v34;
      *(v35 + 32) = v32;
      *(v35 + 40) = v31;
      v29 += 4;
      --v30;
    }

    while (v30);
    v399 = v28;
    *&v565[0] = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v36 = *&v565[0];
    v37 = v397 + 5;
    v38 = v27;
    do
    {
      v40 = *(v37 - 1);
      v39 = *v37;
      *&v565[0] = v36;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);

      if (v42 >= v41 >> 1)
      {
        sub_1B2116B10();
        v36 = *&v565[0];
      }

      *(v36 + 16) = v42 + 1;
      v43 = v36 + 16 * v42;
      *(v43 + 32) = v40;
      *(v43 + 40) = v39;
      v37 += 4;
      --v38;
    }

    while (v38);
    if (v27 == 1)
    {
      v44 = MEMORY[0x1E69E7CC0];
      v45 = v399;
      v16 = v398;
      v26 = v397;
LABEL_47:
      sub_1B21816DC(v401, v402, v16, v17, v396);
      sub_1B21A6AA4(v412, v26, v564);

      memcpy(v565, v564, 0xA3uLL);
      v550[0] = v405;
      memcpy(v564, v565, 0xA3uLL);
      sub_1B217FECC(v550, v564, v45, v551);
      sub_1B21356F8(v565);
      memcpy(v570, v551, 0xA2uLL);
      goto LABEL_48;
    }

    v16 = v398;
    if (qword_1ED85C0D8 != -1)
    {
      swift_once();
    }

    v44 = MEMORY[0x1E69E7CC0];
    v26 = v397;
    if (byte_1ED8618E0 != 1)
    {
      v45 = v399;
      goto LABEL_47;
    }

    sub_1B21C36A4(v571);
    v1 = 0;
    sub_1B21C53BC(sub_1B21C5514, 0, v572);
    sub_1B2137224(v571);
    v46 = *(v36 + 16);
    v392 = v36;
    if (v46)
    {
      v538[0] = v44;
      sub_1B213A1C8();
      v47 = v538[0];
      v48 = (v36 + 40);
      do
      {
        v49 = *v48;
        v550[0] = *(v48 - 1);
        v550[1] = v49;
        sub_1B2134F5C(v550);
        memcpy(v551, v550, 0xA3uLL);
        v538[0] = v47;
        v50 = *(v47 + 16);
        v1 = *(v47 + 24);

        if (v50 >= v1 >> 1)
        {
          sub_1B213A1C8();
          v47 = v538[0];
        }

        memcpy(v564, v551, 0xA3uLL);
        sub_1B214D464(v564);
        memcpy(v565, v564, 0xB8uLL);
        *(v47 + 16) = v50 + 1;
        memcpy((v47 + 184 * v50 + 32), v565, 0xB8uLL);
        v48 += 2;
        --v46;
      }

      while (v46);
      v44 = MEMORY[0x1E69E7CC0];
      v16 = v398;
    }

    else
    {
      v47 = v44;
    }

    sub_1B21C3B0C(v47, v573);

    memcpy(v569, v573, sizeof(v569));
    v566 = v576;
    v567 = v577;
    v568[0] = *v578;
    *(v568 + 9) = *&v578[9];
    v86 = v572[11];
    v381 = v572[12];
    sub_1B2136148(v573, v565);
    v87 = sub_1B2252190();
    v88 = 0;
    v89 = *(v86 + 16);
    v90 = v86 + 32;
    v91 = v44;
LABEL_82:
    if (v88 != v89)
    {
      break;
    }

    sub_1B2137224(v572);
    v634 = v575;
    v633 = v574;
    sub_1B2137224(v573);
    sub_1B2122400(&v633, &qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B2122400(&v634, &qword_1EB7A13B8, &qword_1B2257E58);
    memcpy(v524, v569, 0x58uLL);
    v524[11] = v91;
    v524[12] = v87;
    LOBYTE(v524[13]) = 0;
    *(&v524[13] + 1) = v566;
    *(&v524[15] + 1) = v567;
    *(&v524[17] + 1) = v568[0];
    *(&v524[18] + 2) = *(v568 + 9);
    memcpy(v525, v524, 0xA2uLL);
    sub_1B214C410(v525);
    memcpy(&v565[1] + 8, v525, 0xA2uLL);
    *&v565[0] = 0x7361625F62647267;
    *(&v565[0] + 1) = 0xE900000000000065;
    *&v565[1] = 0;
    BYTE10(v565[11]) = 0;
    v305 = *(v399 + 16);
    if (v305)
    {
      sub_1B2136148(v524, v564);
      v550[0] = v44;
      sub_1B213CA68();
      v306 = v550[0];
      v307 = (v399 + 40);
      do
      {
        v309 = *(v307 - 1);
        v308 = *v307;
        v550[0] = v306;
        v311 = v306[2];
        v310 = v306[3];

        if (v311 >= v310 >> 1)
        {
          sub_1B213CA68();
          v306 = v550[0];
        }

        v551[0] = v309;
        v551[1] = v308;
        sub_1B2134F5C(v551);
        memcpy(v564, v551, 0xA3uLL);
        v306[2] = v311 + 1;
        memcpy(&v306[21 * v311 + 4], v564, 0xA3uLL);
        v307 += 2;
        --v305;
      }

      while (v305);
      v44 = MEMORY[0x1E69E7CC0];
      v16 = v398;
    }

    else
    {
      sub_1B2136148(v524, v564);
      v306 = v44;
    }

    if (!v306[2])
    {
      goto LABEL_277;
    }

    sub_1B21816DC(v401, v402, v16, v17, v396);
    sub_1B21BF968(0, 1, v306);
    memcpy(v550, v306 + 4, 0xA3uLL);
    if (v306[2] == 1)
    {
      sub_1B2127DC0(v550, v564);

      v312 = v550;
    }

    else
    {
      v564[0] = v306;
      sub_1B218184C(v564);
      v312 = v564;
    }

    memcpy(v538, v312, 0xA3uLL);
    v313 = v565[0];
    *v511 = v565[0];
    sub_1B2181890(v511);
    v314 = swift_allocObject();
    memcpy(v314 + 16, v538, 0xA3uLL);
    memcpy(v314 + 184, v511, 0xA2uLL);
    v314[346] = 0;
    v537[0] = v314;
    sub_1B214C468(v537);
    memcpy(v564, v537, 0xA3uLL);
    v512[0] = v405;
    sub_1B2127DC0(v538, v551);

    v45 = v399;
    sub_1B217FECC(v512, v564, v399, v499);
    memcpy(v512, v499, 0xA2uLL);
    memcpy(v498, v499, 0xA2uLL);
    memcpy(v564, &v565[1], 0xABuLL);
    nullsub_1(v564);
    memcpy(v654, v564, 0xABuLL);

    sub_1B211E17C(v512, v551, &qword_1EB7A13A0, &qword_1B2257E38);
    sub_1B21818BC(&v565[1], v551);
    sub_1B21A3AA8(v654, v313, *(&v313 + 1));

    sub_1B2122400(v512, &qword_1EB7A13A0, &qword_1B2257E38);
    sub_1B2137224(v524);
    sub_1B21356F8(v538);
    sub_1B2122400(v565, &qword_1EB7A13C8, &qword_1B2257E68);
    memcpy(v570, v498, 0xA2uLL);
    v36 = v392;
LABEL_48:
    memcpy(v653, v570, sizeof(v653));
    v1 = 0;
    v51 = sub_1B2199E98();
    v406 = 0;
    v52 = *(v45 + 16);
    if (v52)
    {
      v564[0] = v44;
      sub_1B2116B10();
      v53 = v564[0];
      v54 = (v45 + 40);
      do
      {
        v1 = *(v54 - 1);
        v55 = *v54;
        *&v565[0] = 0x5F62647267;
        *(&v565[0] + 1) = 0xE500000000000000;

        MEMORY[0x1B2741EB0](v1, v55);

        v56 = v565[0];
        v564[0] = v53;
        v57 = *(v53 + 16);
        if (v57 >= *(v53 + 24) >> 1)
        {
          sub_1B2116B10();
          v53 = v564[0];
        }

        *(v53 + 16) = v57 + 1;
        *(v53 + 16 * v57 + 32) = v56;
        v54 += 2;
        --v52;
      }

      while (v52);

      v44 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v53 = v44;
    }

    v404 = v403 + 1;
    v58 = sub_1B218016C(v53, v51);

    v6 = sub_1B2180290(v36);

    v59 = 0;
    v417 = *(v6 + 16);
    v415 = *(v405 + 16);
    v410 = (v6 + 32);
    v422 = v58;
    while (1)
    {
      if (v414)
      {
        v60 = MEMORY[0x1B27427E0](v59, v412);
      }

      else
      {
        if (v59 >= *(v408 + 16))
        {
          goto LABEL_246;
        }

        v60 = *(v407 + 8 * v59);
      }

      v61 = __OFADD__(v59, 1);
      v62 = (v59 + 1);
      if (v61)
      {
        break;
      }

      v788 = v62;
      v63 = v417;
      if (v417)
      {
        v564[0] = v44;
        sub_1B2114114();
        v64 = v564[0];
        v65 = v410;
        do
        {
          v66 = *v65++;
          v67 = v60[5];
          v68 = v60[6];
          sub_1B21139A0(v60 + 2, v67);
          (*(v68 + 48))(v565, v66, v67, v68);
          v69 = v565[0];
          v70 = v565[1];
          v564[0] = v64;
          v71 = *(v64 + 16);
          if (v71 >= *(v64 + 24) >> 1)
          {
            v419 = v565[0];
            sub_1B2114114();
            v69 = v419;
            v64 = v564[0];
          }

          *(v64 + 16) = v71 + 1;
          v72 = v64 + 24 * v71;
          *(v72 + 32) = v69;
          *(v72 + 48) = v70;
          --v63;
        }

        while (v63);
        v44 = MEMORY[0x1E69E7CC0];
        v58 = v422;
      }

      if (*(v58 + 16))
      {
        v73 = sub_1B2190D8C();
        v75 = v74;

        v76 = v44;
        if (v75)
        {
          v76 = *(*(v58 + 56) + 8 * v73);
        }
      }

      else
      {

        v76 = v44;
      }

      v77 = v415;
      if (v415)
      {
        v420 = v76;
        *&v565[0] = v44;
        sub_1B2116B10();
        v78 = *&v565[0];
        v79 = (v405 + 258);
        do
        {
          sub_1B2209B4C((*v79 & 1) == 0, *(v79 - 226), *(v79 - 218), *(v79 - 210));
          v81 = v80;
          v83 = v82;
          *&v565[0] = v78;
          v84 = v78[2];
          if (v84 >= v78[3] >> 1)
          {
            sub_1B2116B10();
            v78 = *&v565[0];
          }

          v78[2] = v84 + 1;
          v85 = &v78[2 * v84];
          v85[4] = v81;
          v85[5] = v83;
          v79 += 232;
          --v77;
        }

        while (v77);
        v44 = MEMORY[0x1E69E7CC0];
        v58 = v422;
        v76 = v420;
      }

      else
      {
        v78 = v44;
      }

      swift_beginAccess();
      v6 = (v60 + 10);
      sub_1B2243CD0(v76, v78);
      swift_endAccess();

      v59 = v788;
      if (v788 == v413)
      {

        sub_1B2122400(v570, &qword_1EB7A13A0, &qword_1B2257E38);

        v10 = v404;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    result = sub_1B2252C20();
    v3 = v412;
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  v363 = v87;
  if (!*(v381 + 16))
  {
    goto LABEL_257;
  }

  v361 = v89;
  v362 = v91;
  v360 = v90;
  v92 = (v90 + 16 * v88);
  v93 = *v92;
  v94 = v92[1];
  v95 = v88;

  v96 = sub_1B211E590();
  if ((v97 & 1) == 0)
  {
    goto LABEL_258;
  }

  v98 = (*(v381 + 56) + 216 * v96);
  memcpy(v562, v98, 0xD2uLL);
  memcpy(v551, v98, 0xD2uLL);
  memmove(v563, v98, 0xD2uLL);
  v564[0] = v93;
  v564[1] = v94;
  memcpy(&v564[2], v551, 0xD2uLL);

  sub_1B2181728(v562, v550);
  sub_1B2181728(v563, v550);
  sub_1B2122400(v564, &qword_1EB7A13A8, &qword_1B2257E40);
  memcpy(&v565[1], v563, 0xD2uLL);
  *&v565[0] = v93;
  *(&v565[0] + 1) = v94;
  v357 = v95 + 1;
  memcpy(v561, v563, sizeof(v561));
  v99 = *(&v565[9] + 1);
  v558 = *(&v563[76] + 1);
  v559 = *(&v563[84] + 1);
  v560[0] = *(&v563[92] + 1);
  *(v560 + 9) = *&v563[97];
  memcpy(v775, &v563[24], sizeof(v775));
  v776 = *(&v565[9] + 1);
  v359 = *&v565[10];
  v777 = *&v565[10];
  v358 = BYTE8(v565[10]);
  v778 = BYTE8(v565[10]);
  v779 = *(&v563[76] + 1);
  v780 = *(&v563[84] + 1);
  *v781 = *(&v563[92] + 1);
  *&v781[9] = *&v563[97];
  sub_1B2181728(&v565[1], v551);
  sub_1B21C3B0C(v44, v579);
  memcpy(v557, v579, sizeof(v557));
  v554 = v582;
  v555 = v583;
  v556[0] = *v584;
  *(v556 + 9) = *&v584[9];
  v100 = v776;
  v101 = v777;
  sub_1B2136148(v579, v551);
  v374 = sub_1B2252190();
  v102 = 0;
  v103 = *(v100 + 16);
  v104 = v100 + 32;
  v105 = v44;
  while (1)
  {
    if (v102 == v103)
    {
      sub_1B2137224(v579);
      v295 = v565[0];
      v636 = v581;
      v635 = v580;
      sub_1B2122400(&v635, &qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B2122400(&v636, &qword_1EB7A13B8, &qword_1B2257E58);
      memcpy(v550, &v561[48], 0x58uLL);
      v550[11] = v99;
      v550[12] = v359;
      LOBYTE(v550[13]) = v358;
      *(&v550[13] + 1) = v558;
      *(&v550[15] + 1) = v559;
      *(&v550[17] + 1) = v560[0];
      *(&v550[18] + 2) = *(v560 + 9);
      sub_1B2137224(v550);
      memcpy(&v561[48], v557, 0x58uLL);
      v558 = v554;
      v559 = v555;
      v560[0] = v556[0];
      *(v560 + 9) = *(v556 + 9);
      memcpy(v655, v561, sizeof(v655));
      v656 = v105;
      v657 = v374;
      v658 = 0;
      v659 = v554;
      v660 = v555;
      *v661 = v556[0];
      *&v661[9] = *(v556 + 9);
      sub_1B2181728(v655, v551);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v551[0] = v363;
      v296 = sub_1B211E590();
      if (__OFADD__(*(v363 + 16), (v297 & 1) == 0))
      {
        goto LABEL_271;
      }

      v282 = v296;
      v298 = v297;
      sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
      if (sub_1B2252E70())
      {
        v299 = sub_1B211E590();
        v44 = MEMORY[0x1E69E7CC0];
        if ((v298 & 1) != (v300 & 1))
        {
LABEL_288:
          sub_1B2253390();
          __break(1u);
LABEL_289:
          sub_1B21817F0(v655, *(isUniquelyReferenced_nonNull_native + 56) + 216 * v282);
          goto LABEL_276;
        }

        v282 = v299;
      }

      else
      {
        v44 = MEMORY[0x1E69E7CC0];
      }

      isUniquelyReferenced_nonNull_native = v551[0];
      if (v298)
      {
        goto LABEL_289;
      }

      sub_1B21CC064(v282, v295, *(&v295 + 1), v655, v551[0]);
      swift_bridgeObjectRetain_n();
      v91 = v362;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v302 = *(v362 + 16);
        sub_1B214400C();
        v91 = v303;
      }

      v301 = *(v91 + 16);
      if (v301 >= *(v91 + 24) >> 1)
      {
        sub_1B214400C();
        v91 = v304;
      }

      *(v91 + 16) = v301 + 1;
      *(v91 + 16 * v301 + 32) = v295;
      sub_1B218179C(v655);
      sub_1B2122400(v565, &qword_1EB7A13A8, &qword_1B2257E40);
      v16 = v398;
      v88 = v357;
      v90 = v360;
      v89 = v361;
      v87 = isUniquelyReferenced_nonNull_native;
      goto LABEL_82;
    }

    if (!*(v101 + 16))
    {
      goto LABEL_259;
    }

    v355 = v105;
    v356 = v99;
    v106 = (v104 + 16 * v102);
    v107 = *v106;
    v108 = v106[1];

    v109 = sub_1B211E590();
    if ((v110 & 1) == 0)
    {
      goto LABEL_260;
    }

    v348 = v104;
    v349 = v103;
    v351 = v101;
    v111 = (*(v101 + 56) + 216 * v109);
    memcpy(v548, v111, 0xD2uLL);
    memcpy(v538, v111, 0xD2uLL);
    memmove(v549, v111, 0xD2uLL);
    v550[0] = v107;
    v550[1] = v108;
    memcpy(&v550[2], v538, 0xD2uLL);

    sub_1B2181728(v548, v537);
    sub_1B2181728(v549, v537);
    sub_1B2122400(v550, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(&v551[2], v549, 0xD2uLL);
    v551[0] = v107;
    v551[1] = v108;
    v350 = v102 + 1;
    memcpy(v547, v549, sizeof(v547));
    v544 = *&v549[153];
    v545 = *&v549[169];
    v546[0] = *&v549[185];
    *(v546 + 9) = *&v549[194];
    memcpy(v552, &v549[48], 0x58uLL);
    v353 = v551[20];
    v354 = v551[19];
    v552[11] = v551[19];
    v552[12] = v551[20];
    v352 = v551[21];
    LOBYTE(v552[13]) = v551[21];
    *(&v552[13] + 1) = *&v549[153];
    *(&v552[15] + 1) = *&v549[169];
    *(&v552[17] + 1) = *&v549[185];
    *(&v552[18] + 2) = *&v549[194];
    v112 = swift_allocObject();
    *(v112 + 16) = v44;
    *v525 = *&v549[48];
    *&v525[16] = *&v549[64];
    memcpy(v537, &v552[5], 0x7AuLL);
    v113 = swift_allocObject();
    *(v113 + 16) = sub_1B214D354;
    *(v113 + 24) = v112;
    sub_1B2181728(&v551[2], v538);
    sub_1B2136148(v552, v538);

    v553[0] = *v525;
    *&v553[1] = *&v525[16];
    *(&v553[1] + 1) = sub_1B2181B04;
    *&v553[2] = v113;
    memcpy(&v553[2] + 8, v537, 0x7AuLL);
    memcpy(v543, v553, sizeof(v543));
    v540 = *(&v553[6] + 9);
    v541 = *(&v553[7] + 9);
    v542[0] = *(&v553[8] + 9);
    *(v542 + 9) = *(&v553[9] + 2);
    v114 = v552[11];
    v380 = v552[12];
    sub_1B2136148(v553, v538);
    v115 = 0;
    v539 = sub_1B2252190();
    v116 = *(v114 + 16);
    v117 = v114 + 32;
    v118 = v44;
LABEL_90:
    if (v115 != v116)
    {
      break;
    }

    sub_1B2137224(v553);
    v276 = v551[0];
    v277 = v551[1];

    v278 = v539;
    memcpy(v525, &v547[48], 0x58uLL);
    *&v525[88] = v354;
    *&v525[96] = v353;
    v525[104] = v352;
    *&v525[105] = v544;
    *&v525[121] = v545;
    *&v525[137] = v546[0];
    *&v525[146] = *(v546 + 9);
    sub_1B2137224(v525);
    memcpy(&v547[48], v543, 0x58uLL);
    v544 = v540;
    v545 = v541;
    v546[0] = v542[0];
    *(v546 + 9) = *(v542 + 9);
    memcpy(v538, v547, 0x88uLL);
    v538[17] = v118;
    v538[18] = v278;
    LOBYTE(v538[19]) = 0;
    *(&v538[19] + 1) = v540;
    *(&v538[21] + 1) = v541;
    *(&v538[23] + 1) = v542[0];
    *(&v538[24] + 2) = *(v542 + 9);
    sub_1B2181728(v538, v537);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v524[0] = v374;
    v280 = sub_1B211E590();
    if (__OFADD__(*(v374 + 16), (v281 & 1) == 0))
    {
      goto LABEL_272;
    }

    v282 = v280;
    v283 = v281;
    sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
    if (sub_1B2252E70())
    {
      v284 = sub_1B211E590();
      v44 = MEMORY[0x1E69E7CC0];
      if ((v283 & 1) != (v285 & 1))
      {
        goto LABEL_288;
      }

      v282 = v284;
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC0];
    }

    if (v283)
    {
      v316 = (*(v524[0] + 56) + 216 * v282);
      memcpy(v537, v316, 0xD2uLL);
      memcpy(v316, v538, 0xD2uLL);
      sub_1B218179C(v537);
      goto LABEL_276;
    }

    v286 = v524[0];
    *(v524[0] + 8 * (v282 >> 6) + 64) |= 1 << v282;
    v287 = (v286[6] + 16 * v282);
    *v287 = v276;
    v287[1] = v277;
    memcpy((v286[7] + 216 * v282), v538, 0xD2uLL);
    v288 = v286[2];
    v61 = __OFADD__(v288, 1);
    v289 = v288 + 1;
    if (v61)
    {
      goto LABEL_273;
    }

    v286[2] = v289;
    swift_bridgeObjectRetain_n();
    v105 = v355;
    v99 = v356;
    v374 = v286;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v292 = *(v355 + 16);
      sub_1B214400C();
      v105 = v293;
    }

    v290 = *(v105 + 16);
    if (v290 >= *(v105 + 24) >> 1)
    {
      sub_1B214400C();
      v105 = v294;
    }

    *(v105 + 16) = v290 + 1;
    v291 = v105 + 16 * v290;
    *(v291 + 32) = v276;
    *(v291 + 40) = v277;
    sub_1B218179C(v538);
    sub_1B2122400(v551, &qword_1EB7A13A8, &qword_1B2257E40);
    v102 = v350;
    v101 = v351;
    v104 = v348;
    v103 = v349;
  }

  if (!*(v380 + 16))
  {
    goto LABEL_261;
  }

  v346 = v116;
  v347 = v118;
  v119 = (v117 + 16 * v115);
  v120 = *v119;
  v121 = v119[1];

  v122 = sub_1B211E590();
  if ((v123 & 1) == 0)
  {
    goto LABEL_262;
  }

  v344 = v117;
  v124 = (*(v380 + 56) + 216 * v122);
  memcpy(v535, v124, 0xD2uLL);
  memcpy(v525, v124, 0xD2uLL);
  memmove(v536, v124, 0xD2uLL);
  v537[0] = v120;
  v537[1] = v121;
  memcpy(&v537[2], v525, 0xD2uLL);

  sub_1B2181728(v535, v524);
  sub_1B2181728(v536, v524);
  sub_1B2122400(v537, &qword_1EB7A13A8, &qword_1B2257E40);
  memcpy(&v538[2], v536, 0xD2uLL);
  v538[0] = v120;
  v538[1] = v121;
  v345 = v115 + 1;
  memcpy(v534, v536, sizeof(v534));
  v531 = *(&v536[76] + 1);
  v532 = *(&v536[84] + 1);
  v533[0] = *(&v536[92] + 1);
  *(v533 + 9) = *&v536[97];
  memcpy(v768, &v536[24], sizeof(v768));
  v342 = v538[20];
  v343 = v538[19];
  v769 = v538[19];
  v770 = v538[20];
  v341 = v538[21];
  v771 = v538[21];
  v772 = *(&v536[76] + 1);
  v773 = *(&v536[84] + 1);
  *v774 = *(&v536[92] + 1);
  *&v774[9] = *&v536[97];
  sub_1B2181728(&v538[2], v525);
  sub_1B21C3B0C(v44, v585);
  memcpy(v530, v585, sizeof(v530));
  v527 = v588;
  v528 = v589;
  v529[0] = *v590;
  *(v529 + 9) = *&v590[9];
  v125 = v769;
  v379 = v770;
  sub_1B2136148(v585, v525);
  v126 = 0;
  v526 = sub_1B2252190();
  v127 = *(v125 + 16);
  v128 = v125 + 32;
  v369 = v44;
  while (1)
  {
    if (v126 == v127)
    {
      sub_1B2137224(v585);
      v268 = v538[0];
      v269 = v538[1];
      v638 = v587;
      v637 = v586;
      sub_1B2122400(&v637, &qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B2122400(&v638, &qword_1EB7A13B8, &qword_1B2257E58);
      v270 = v526;
      memcpy(v498, &v534[48], 0x58uLL);
      v498[11] = v343;
      v498[12] = v342;
      LOBYTE(v498[13]) = v341;
      *(&v498[13] + 1) = v531;
      *(&v498[15] + 1) = v532;
      *(&v498[17] + 1) = v533[0];
      *(&v498[18] + 2) = *(v533 + 9);
      sub_1B2137224(v498);
      memcpy(&v534[48], v530, 0x58uLL);
      v531 = v527;
      v532 = v528;
      v533[0] = v529[0];
      *(v533 + 9) = *(v529 + 9);
      memcpy(v662, v534, sizeof(v662));
      v663 = v369;
      v664 = v270;
      v665 = 0;
      v666 = v527;
      v667 = v528;
      *v668 = v529[0];
      *&v668[9] = *(v529 + 9);
      sub_1B2181728(v662, v525);
      sub_1B21C77F4();
      memcpy(v524, v511, 0xD2uLL);
      memcpy(v525, v511, 0xD2uLL);
      if (sub_1B2181784(v525) == 1)
      {
        memcpy(v499, v511, 0xD2uLL);
        sub_1B2122400(v499, &qword_1EB7A13B0, &unk_1B2257E48);

        v118 = v347;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v273 = *(v347 + 16);
          sub_1B214400C();
          v118 = v274;
        }

        v271 = *(v118 + 16);
        if (v271 >= *(v118 + 24) >> 1)
        {
          sub_1B214400C();
          v118 = v275;
        }

        *(v118 + 16) = v271 + 1;
        v272 = v118 + 16 * v271;
        *(v272 + 32) = v268;
        *(v272 + 40) = v269;
        memcpy(v512, v524, 0xD2uLL);
      }

      else
      {
        memcpy(v512, v511, 0xD2uLL);
        v118 = v347;
      }

      v117 = v344;
      memcpy(v511, v512, 0xD2uLL);
      if (sub_1B2181784(v511) != 1)
      {
        v315 = v512;
        goto LABEL_275;
      }

      sub_1B218179C(v662);
      sub_1B2122400(v538, &qword_1EB7A13A8, &qword_1B2257E40);
      v115 = v345;
      v116 = v346;
      goto LABEL_90;
    }

    if (!*(v379 + 16))
    {
      goto LABEL_263;
    }

    v340 = v127;
    v129 = (v128 + 16 * v126);
    v130 = *v129;
    v131 = v129[1];

    v132 = sub_1B211E590();
    if ((v133 & 1) == 0)
    {
      goto LABEL_264;
    }

    v338 = v128;
    v134 = (*(v379 + 56) + 216 * v132);
    memcpy(v522, v134, 0xD2uLL);
    memcpy(v512, v134, 0xD2uLL);
    memmove(v523, v134, 0xD2uLL);
    v524[0] = v130;
    v524[1] = v131;
    memcpy(&v524[2], v512, 0xD2uLL);

    sub_1B2181728(v522, v511);
    sub_1B2181728(v523, v511);
    sub_1B2122400(v524, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(&v525[16], v523, 0xD2uLL);
    *v525 = v130;
    *&v525[8] = v131;
    v339 = v126 + 1;
    memcpy(v521, v523, sizeof(v521));
    v518 = *(&v523[76] + 1);
    v519 = *(&v523[84] + 1);
    v520[0] = *(&v523[92] + 1);
    *(v520 + 9) = *&v523[97];
    memcpy(v761, &v523[24], sizeof(v761));
    v336 = *&v525[160];
    v337 = *&v525[152];
    v762 = *&v525[152];
    v763 = *&v525[160];
    v335 = v525[168];
    v764 = v525[168];
    v765 = *(&v523[76] + 1);
    v766 = *(&v523[84] + 1);
    *v767 = *(&v523[92] + 1);
    *&v767[9] = *&v523[97];
    sub_1B2181728(&v525[16], v512);
    sub_1B21C3B0C(v44, v591);
    memcpy(v517, v591, sizeof(v517));
    v514 = v594;
    v515 = v595;
    v516[0] = *v596;
    *(v516 + 9) = *&v596[9];
    v135 = v762;
    v378 = v763;
    sub_1B2136148(v591, v512);
    v136 = 0;
    v513 = sub_1B2252190();
    v137 = *(v135 + 16);
    v138 = v135 + 32;
    v368 = v44;
LABEL_98:
    if (v136 != v137)
    {
      break;
    }

    sub_1B2137224(v591);
    v261 = *v525;
    v640 = v593;
    v639 = v592;
    sub_1B2122400(&v639, &qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B2122400(&v640, &qword_1EB7A13B8, &qword_1B2257E58);
    v262 = v513;
    memcpy(v485, &v521[48], 0x58uLL);
    v485[11] = v337;
    v485[12] = v336;
    LOBYTE(v485[13]) = v335;
    *(&v485[13] + 1) = v518;
    *(&v485[15] + 1) = v519;
    *(&v485[17] + 1) = v520[0];
    *(&v485[18] + 2) = *(v520 + 9);
    sub_1B2137224(v485);
    memcpy(&v521[48], v517, 0x58uLL);
    v518 = v514;
    v519 = v515;
    v520[0] = v516[0];
    *(v520 + 9) = *(v516 + 9);
    memcpy(v669, v521, sizeof(v669));
    v670 = v368;
    v671 = v262;
    v672 = 0;
    v673 = v514;
    v674 = v515;
    *v675 = v516[0];
    *&v675[9] = *(v516 + 9);
    sub_1B2181728(v669, v512);
    sub_1B21C77F4();
    memcpy(v511, v498, 0xD2uLL);
    memcpy(v512, v498, 0xD2uLL);
    if (sub_1B2181784(v512) == 1)
    {
      memcpy(v486, v498, 0xD2uLL);
      sub_1B2122400(v486, &qword_1EB7A13B0, &unk_1B2257E48);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v265 = *(v369 + 16);
        sub_1B214400C();
        v369 = v266;
      }

      v263 = *(v369 + 16);
      if (v263 >= *(v369 + 24) >> 1)
      {
        sub_1B214400C();
        v369 = v267;
      }

      *(v369 + 16) = v263 + 1;
      *(v369 + 16 * v263 + 32) = v261;
      v264 = v511;
    }

    else
    {
      v264 = v498;
    }

    memcpy(v499, v264, 0xD2uLL);
    v128 = v338;
    memcpy(v498, v499, 0xD2uLL);
    if (sub_1B2181784(v498) != 1)
    {
      v315 = v499;
      goto LABEL_275;
    }

    sub_1B218179C(v669);
    sub_1B2122400(v525, &qword_1EB7A13A8, &qword_1B2257E40);
    v126 = v339;
    v127 = v340;
  }

  if (!*(v378 + 16))
  {
    goto LABEL_265;
  }

  v334 = v137;
  v139 = (v138 + 16 * v136);
  v140 = *v139;
  v141 = v139[1];

  v142 = sub_1B211E590();
  if ((v143 & 1) == 0)
  {
    goto LABEL_266;
  }

  v333 = v138;
  v144 = (*(v378 + 56) + 216 * v142);
  memcpy(v509, v144, 0xD2uLL);
  memcpy(v499, v144, 0xD2uLL);
  memmove(v510, v144, 0xD2uLL);
  *v511 = v140;
  *&v511[8] = v141;
  memcpy(&v511[16], v499, 0xD2uLL);

  sub_1B2181728(v509, v498);
  sub_1B2181728(v510, v498);
  sub_1B2122400(v511, &qword_1EB7A13A8, &qword_1B2257E40);
  memcpy(&v512[2], v510, 0xD2uLL);
  v512[0] = v140;
  v512[1] = v141;
  v332 = v136 + 1;
  memcpy(v508, v510, sizeof(v508));
  v505 = *(&v510[76] + 1);
  v506 = *(&v510[84] + 1);
  v507[0] = *(&v510[92] + 1);
  *(v507 + 9) = *&v510[97];
  memcpy(v754, &v510[24], sizeof(v754));
  v330 = v512[20];
  v331 = v512[19];
  v755 = v512[19];
  v756 = v512[20];
  v329 = v512[21];
  v757 = v512[21];
  v758 = *(&v510[76] + 1);
  v759 = *(&v510[84] + 1);
  *v760 = *(&v510[92] + 1);
  *&v760[9] = *&v510[97];
  sub_1B2181728(&v512[2], v499);
  sub_1B21C3B0C(v44, v597);
  memcpy(v504, v597, sizeof(v504));
  v501 = v600;
  v502 = v601;
  v503[0] = *v602;
  *(v503 + 9) = *&v602[9];
  v145 = v755;
  v377 = v756;
  sub_1B2136148(v597, v499);
  v146 = 0;
  v500 = sub_1B2252190();
  v147 = *(v145 + 16);
  v148 = v145 + 32;
  v366 = v44;
  while (1)
  {
    if (v146 == v147)
    {
      sub_1B2137224(v597);
      v252 = v512[0];
      v253 = v512[1];
      v642 = v599;
      v641 = v598;
      sub_1B2122400(&v641, &qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B2122400(&v642, &qword_1EB7A13B8, &qword_1B2257E58);
      v254 = v500;
      memcpy(v472, &v508[48], 0x58uLL);
      v472[11] = v331;
      v472[12] = v330;
      LOBYTE(v472[13]) = v329;
      *(&v472[13] + 1) = v505;
      *(&v472[15] + 1) = v506;
      *(&v472[17] + 1) = v507[0];
      *(&v472[18] + 2) = *(v507 + 9);
      sub_1B2137224(v472);
      memcpy(&v508[48], v504, 0x58uLL);
      v505 = v501;
      v506 = v502;
      v507[0] = v503[0];
      *(v507 + 9) = *(v503 + 9);
      memcpy(v676, v508, sizeof(v676));
      v677 = v366;
      v678 = v254;
      v679 = 0;
      v680 = v501;
      v681 = v502;
      *v682 = v503[0];
      *&v682[9] = *(v503 + 9);
      sub_1B2181728(v676, v499);
      sub_1B21C77F4();
      memcpy(v498, v485, 0xD2uLL);
      memcpy(v499, v485, 0xD2uLL);
      if (sub_1B2181784(v499) == 1)
      {
        memcpy(v473, v485, 0xD2uLL);
        sub_1B2122400(v473, &qword_1EB7A13B0, &unk_1B2257E48);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v258 = *(v368 + 16);
          sub_1B214400C();
          v368 = v259;
        }

        v255 = *(v368 + 16);
        if (v255 >= *(v368 + 24) >> 1)
        {
          sub_1B214400C();
          v368 = v260;
        }

        *(v368 + 16) = v255 + 1;
        v256 = v368 + 16 * v255;
        *(v256 + 32) = v252;
        *(v256 + 40) = v253;
        v257 = v498;
      }

      else
      {
        v257 = v485;
      }

      memcpy(v486, v257, 0xD2uLL);
      v138 = v333;
      memcpy(v485, v486, 0xD2uLL);
      if (sub_1B2181784(v485) != 1)
      {
        v315 = v486;
        goto LABEL_275;
      }

      sub_1B218179C(v676);
      sub_1B2122400(v512, &qword_1EB7A13A8, &qword_1B2257E40);
      v136 = v332;
      v137 = v334;
      goto LABEL_98;
    }

    if (!*(v377 + 16))
    {
      goto LABEL_267;
    }

    v322 = v147;
    v149 = (v148 + 16 * v146);
    v150 = *v149;
    v151 = v149[1];

    v152 = sub_1B211E590();
    if ((v153 & 1) == 0)
    {
      goto LABEL_269;
    }

    v320 = v148;
    v154 = (*(v377 + 56) + 216 * v152);
    memcpy(v496, v154, 0xD2uLL);
    memcpy(v486, v154, 0xD2uLL);
    memmove(v497, v154, 0xD2uLL);
    v498[0] = v150;
    v498[1] = v151;
    memcpy(&v498[2], v486, 0xD2uLL);

    sub_1B2181728(v496, v485);
    sub_1B2181728(v497, v485);
    sub_1B2122400(v498, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(&v499[2], v497, 0xD2uLL);
    v499[0] = v150;
    v499[1] = v151;
    v321 = v146 + 1;
    memcpy(v495, v497, sizeof(v495));
    v492 = *(&v497[76] + 1);
    v493 = *(&v497[84] + 1);
    v494[0] = *(&v497[92] + 1);
    *(v494 + 9) = *&v497[97];
    memcpy(v747, &v497[24], sizeof(v747));
    v318 = v499[20];
    v319 = v499[19];
    v748 = v499[19];
    v749 = v499[20];
    v317 = v499[21];
    v750 = v499[21];
    v751 = *(&v497[76] + 1);
    v752 = *(&v497[84] + 1);
    *v753 = *(&v497[92] + 1);
    *&v753[9] = *&v497[97];
    sub_1B2181728(&v499[2], v486);
    sub_1B21C3B0C(v44, v603);
    memcpy(v491, v603, sizeof(v491));
    v488 = v606;
    v489 = v607;
    v490[0] = *v608;
    *(v490 + 9) = *&v608[9];
    v155 = v748;
    v376 = v749;
    sub_1B2136148(v603, v486);
    v156 = 0;
    v487 = sub_1B2252190();
    v157 = *(v155 + 16);
    v158 = v155 + 32;
    v367 = v44;
    v328 = v157;
LABEL_106:
    if (v156 != v157)
    {
      break;
    }

    sub_1B2137224(v603);
    v243 = v499[0];
    v244 = v499[1];
    v644 = v605;
    v643 = v604;
    sub_1B2122400(&v643, &qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B2122400(&v644, &qword_1EB7A13B8, &qword_1B2257E58);
    v245 = v487;
    memcpy(v459, &v495[48], 0x58uLL);
    v459[11] = v319;
    v459[12] = v318;
    LOBYTE(v459[13]) = v317;
    *(&v459[13] + 1) = v492;
    *(&v459[15] + 1) = v493;
    *(&v459[17] + 1) = v494[0];
    *(&v459[18] + 2) = *(v494 + 9);
    sub_1B2137224(v459);
    memcpy(&v495[48], v491, 0x58uLL);
    v492 = v488;
    v493 = v489;
    v494[0] = v490[0];
    *(v494 + 9) = *(v490 + 9);
    memcpy(v683, v495, sizeof(v683));
    v684 = v367;
    v685 = v245;
    v686 = 0;
    v687 = v488;
    v688 = v489;
    *v689 = v490[0];
    *&v689[9] = *(v490 + 9);
    sub_1B2181728(v683, v486);
    sub_1B21C77F4();
    memcpy(v485, v472, 0xD2uLL);
    memcpy(v486, v472, 0xD2uLL);
    if (sub_1B2181784(v486) == 1)
    {
      memcpy(v460, v472, 0xD2uLL);
      sub_1B2122400(v460, &qword_1EB7A13B0, &unk_1B2257E48);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v249 = *(v366 + 16);
        sub_1B214400C();
        v366 = v250;
      }

      v246 = *(v366 + 16);
      if (v246 >= *(v366 + 24) >> 1)
      {
        sub_1B214400C();
        v366 = v251;
      }

      *(v366 + 16) = v246 + 1;
      v247 = v366 + 16 * v246;
      *(v247 + 32) = v243;
      *(v247 + 40) = v244;
      v248 = v485;
    }

    else
    {
      v248 = v472;
    }

    memcpy(v473, v248, 0xD2uLL);
    v148 = v320;
    memcpy(v472, v473, 0xD2uLL);
    if (sub_1B2181784(v472) != 1)
    {
      v315 = v473;
      goto LABEL_275;
    }

    sub_1B218179C(v683);
    sub_1B2122400(v499, &qword_1EB7A13A8, &qword_1B2257E40);
    v146 = v321;
    v147 = v322;
  }

  if (!*(v376 + 16))
  {
    goto LABEL_268;
  }

  v159 = (v158 + 16 * v156);
  v160 = *v159;
  v161 = v159[1];

  v162 = sub_1B211E590();
  if ((v163 & 1) == 0)
  {
    goto LABEL_270;
  }

  v326 = v158;
  v164 = (*(v376 + 56) + 216 * v162);
  memcpy(v483, v164, 0xD2uLL);
  memcpy(v473, v164, 0xD2uLL);
  memmove(v484, v164, 0xD2uLL);
  v485[0] = v160;
  v485[1] = v161;
  memcpy(&v485[2], v473, 0xD2uLL);

  sub_1B2181728(v483, v472);
  sub_1B2181728(v484, v472);
  sub_1B2122400(v485, &qword_1EB7A13A8, &qword_1B2257E40);
  memcpy(&v486[2], v484, 0xD2uLL);
  v486[0] = v160;
  v486[1] = v161;
  v327 = v156 + 1;
  memcpy(v482, v484, sizeof(v482));
  v479 = *(&v484[76] + 1);
  v480 = *(&v484[84] + 1);
  v481[0] = *(&v484[92] + 1);
  *(v481 + 9) = *&v484[97];
  memcpy(v740, &v484[24], sizeof(v740));
  v324 = v486[20];
  v325 = v486[19];
  v741 = v486[19];
  v742 = v486[20];
  v323 = v486[21];
  v743 = v486[21];
  v744 = *(&v484[76] + 1);
  v745 = *(&v484[84] + 1);
  *v746 = *(&v484[92] + 1);
  *&v746[9] = *&v484[97];
  sub_1B2181728(&v486[2], v473);
  sub_1B21C3B0C(v44, v609);
  memcpy(v478, v609, sizeof(v478));
  v475 = v612;
  v476 = v613;
  v477[0] = *v614;
  *(v477 + 9) = *&v614[9];
  v165 = v741;
  v382 = v742;
  sub_1B2136148(v609, v473);
  v166 = 0;
  v474 = sub_1B2252190();
  v167 = *(v165 + 16);
  v168 = v165 + 32;
  v375 = v44;
  v364 = v168;
  for (i = v167; ; v167 = i)
  {
    if (v166 == v167)
    {
      sub_1B2137224(v609);
      v234 = v486[0];
      v235 = v486[1];
      v646 = v611;
      v645 = v610;
      sub_1B2122400(&v645, &qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B2122400(&v646, &qword_1EB7A13B8, &qword_1B2257E58);
      v236 = v474;
      memcpy(v446, &v482[48], 0x58uLL);
      v446[11] = v325;
      v446[12] = v324;
      LOBYTE(v446[13]) = v323;
      *(&v446[13] + 1) = v479;
      *(&v446[15] + 1) = v480;
      *(&v446[17] + 1) = v481[0];
      *(&v446[18] + 2) = *(v481 + 9);
      sub_1B2137224(v446);
      memcpy(&v482[48], v478, 0x58uLL);
      v479 = v475;
      v480 = v476;
      v481[0] = v477[0];
      *(v481 + 9) = *(v477 + 9);
      memcpy(v690, v482, sizeof(v690));
      v691 = v375;
      v692 = v236;
      v693 = 0;
      v694 = v475;
      v695 = v476;
      *v696 = v477[0];
      *&v696[9] = *(v477 + 9);
      sub_1B2181728(v690, v473);
      sub_1B21C77F4();
      memcpy(v472, v459, 0xD2uLL);
      memcpy(v473, v459, 0xD2uLL);
      if (sub_1B2181784(v473) == 1)
      {
        memcpy(v447, v459, 0xD2uLL);
        sub_1B2122400(v447, &qword_1EB7A13B0, &unk_1B2257E48);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v240 = *(v367 + 16);
          sub_1B214400C();
          v367 = v241;
        }

        v237 = *(v367 + 16);
        if (v237 >= *(v367 + 24) >> 1)
        {
          sub_1B214400C();
          v367 = v242;
        }

        *(v367 + 16) = v237 + 1;
        v238 = v367 + 16 * v237;
        *(v238 + 32) = v234;
        *(v238 + 40) = v235;
        v239 = v472;
      }

      else
      {
        v239 = v459;
      }

      memcpy(v460, v239, 0xD2uLL);
      v158 = v326;
      memcpy(v459, v460, 0xD2uLL);
      if (sub_1B2181784(v459) != 1)
      {
        v315 = v460;
        goto LABEL_275;
      }

      sub_1B218179C(v690);
      sub_1B2122400(v486, &qword_1EB7A13A8, &qword_1B2257E40);
      v156 = v327;
      v157 = v328;
      goto LABEL_106;
    }

    if (!*(v382 + 16))
    {
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
      sub_1B2122400(__src, &qword_1EB7A13A8, &qword_1B2257E40);

      __break(1u);
LABEL_274:
      v315 = v426;
      goto LABEL_275;
    }

    v169 = (v168 + 16 * v166);
    v170 = *v169;
    v171 = v169[1];

    v172 = sub_1B211E590();
    if ((v173 & 1) == 0)
    {
      goto LABEL_256;
    }

    v174 = (*(v382 + 56) + 216 * v172);
    memcpy(v470, v174, 0xD2uLL);
    memcpy(v460, v174, 0xD2uLL);
    memmove(v471, v174, 0xD2uLL);
    v472[0] = v170;
    v472[1] = v171;
    memcpy(&v472[2], v460, 0xD2uLL);

    sub_1B2181728(v470, v459);
    sub_1B2181728(v471, v459);
    sub_1B2122400(v472, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(&v473[2], v471, 0xD2uLL);
    v473[0] = v170;
    v473[1] = v171;
    v373 = v166 + 1;
    memcpy(v469, v471, sizeof(v469));
    v7 = v471;
    v466 = *(&v471[76] + 1);
    v467 = *(&v471[84] + 1);
    v468[0] = *(&v471[92] + 1);
    *(v468 + 9) = *&v471[97];
    memcpy(v733, &v471[24], sizeof(v733));
    v371 = v473[20];
    v372 = v473[19];
    v734 = v473[19];
    v735 = v473[20];
    v370 = v473[21];
    v736 = v473[21];
    v737 = *(&v471[76] + 1);
    v738 = *(&v471[84] + 1);
    *v739 = *(&v471[92] + 1);
    *&v739[9] = *&v471[97];
    sub_1B2181728(&v473[2], v460);
    sub_1B21C3B0C(v44, v615);
    memcpy(v465, v615, sizeof(v465));
    v462 = v618;
    v463 = v619;
    v464[0] = *v620;
    *(v464 + 9) = *&v620[9];
    v175 = v734;
    v390 = v735;
    sub_1B2136148(v615, v460);
    v176 = 0;
    v461 = sub_1B2252190();
    v177 = *(v175 + 16);
    v9 = v175 + 32;
    v385 = v44;
    v383 = v177;
    v384 = v9;
LABEL_114:
    if (v176 != v177)
    {
      break;
    }

    sub_1B2137224(v615);
    v225 = v473[0];
    v226 = v473[1];
    v648 = v617;
    v647 = v616;
    sub_1B2122400(&v647, &qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B2122400(&v648, &qword_1EB7A13B8, &qword_1B2257E58);
    v227 = v461;
    memcpy(v433, &v469[48], 0x58uLL);
    v433[11] = v372;
    v433[12] = v371;
    LOBYTE(v433[13]) = v370;
    *(&v433[13] + 1) = v466;
    *(&v433[15] + 1) = v467;
    *(&v433[17] + 1) = v468[0];
    *(&v433[18] + 2) = *(v468 + 9);
    sub_1B2137224(v433);
    memcpy(&v469[48], v465, 0x58uLL);
    v466 = v462;
    v467 = v463;
    v468[0] = v464[0];
    *(v468 + 9) = *(v464 + 9);
    memcpy(v697, v469, sizeof(v697));
    v698 = v385;
    v699 = v227;
    v700 = 0;
    v701 = v462;
    v702 = v463;
    *v703 = v464[0];
    *&v703[9] = *(v464 + 9);
    sub_1B2181728(v697, v460);
    sub_1B21C77F4();
    memcpy(v459, v446, 0xD2uLL);
    memcpy(v460, v446, 0xD2uLL);
    if (sub_1B2181784(v460) == 1)
    {
      memcpy(__src, v446, 0xD2uLL);
      sub_1B2122400(__src, &qword_1EB7A13B0, &unk_1B2257E48);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v231 = *(v375 + 16);
        sub_1B214400C();
        v375 = v232;
      }

      v228 = *(v375 + 16);
      if (v228 >= *(v375 + 24) >> 1)
      {
        sub_1B214400C();
        v375 = v233;
      }

      *(v375 + 16) = v228 + 1;
      v229 = v375 + 16 * v228;
      *(v229 + 32) = v225;
      *(v229 + 40) = v226;
      v230 = v459;
    }

    else
    {
      v230 = v446;
    }

    memcpy(v447, v230, 0xD2uLL);
    v168 = v364;
    memcpy(v446, v447, 0xD2uLL);
    if (sub_1B2181784(v446) != 1)
    {
      v315 = v447;
      goto LABEL_275;
    }

    sub_1B218179C(v697);
    sub_1B2122400(v473, &qword_1EB7A13A8, &qword_1B2257E40);
    v166 = v373;
  }

  v6 = v390;
  if (!*(v390 + 16))
  {
    __break(1u);
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  v178 = (v9 + 16 * v176);
  v7 = *v178;
  v179 = v178[1];

  v180 = sub_1B211E590();
  if ((v181 & 1) == 0)
  {
    goto LABEL_253;
  }

  v182 = (*(v390 + 56) + 216 * v180);
  memcpy(v457, v182, 0xD2uLL);
  memcpy(v447, v182, 0xD2uLL);
  memmove(v458, v182, 0xD2uLL);
  v459[0] = v7;
  v459[1] = v179;
  memcpy(&v459[2], v447, 0xD2uLL);

  sub_1B2181728(v457, v446);
  sub_1B2181728(v458, v446);
  sub_1B2122400(v459, &qword_1EB7A13A8, &qword_1B2257E40);
  memcpy(&v460[2], v458, 0xD2uLL);
  v460[0] = v7;
  v460[1] = v179;
  v389 = v176 + 1;
  memcpy(v456, v458, sizeof(v456));
  v453 = *(&v458[76] + 1);
  v454 = *(&v458[84] + 1);
  v455[0] = *(&v458[92] + 1);
  *(v455 + 9) = *&v458[97];
  memcpy(v726, &v458[24], sizeof(v726));
  v388 = v460[19];
  v727 = v460[19];
  v387 = v460[20];
  v728 = v460[20];
  v386 = v460[21];
  v729 = v460[21];
  v730 = *(&v458[76] + 1);
  v731 = *(&v458[84] + 1);
  *v732 = *(&v458[92] + 1);
  *&v732[9] = *&v458[97];
  sub_1B2181728(&v460[2], v447);
  sub_1B21C3B0C(v44, v621);
  memcpy(v452, v621, sizeof(v452));
  v449 = v624;
  v450 = v625;
  v451[0] = *v626;
  *(v451 + 9) = *&v626[9];
  v183 = v727;
  v6 = v728;
  sub_1B2136148(v621, v447);
  v184 = 0;
  v448 = sub_1B2252190();
  v411 = *(v183 + 16);
  v409 = v183 + 32;
  v416 = v44;
  v406 = v6;
  while (1)
  {
    if (v184 == v411)
    {
      sub_1B2137224(v621);
      v7 = v460[0];
      v217 = v460[1];
      v650 = v623;
      v649 = v622;
      sub_1B2122400(&v649, &qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B2122400(&v650, &qword_1EB7A13B8, &qword_1B2257E58);
      v218 = v448;
      memcpy(v445, &v456[48], 0x58uLL);
      v445[11] = v388;
      v445[12] = v387;
      LOBYTE(v445[13]) = v386;
      *(&v445[13] + 1) = v453;
      *(&v445[15] + 1) = v454;
      *(&v445[17] + 1) = v455[0];
      *(&v445[18] + 2) = *(v455 + 9);
      sub_1B2137224(v445);
      memcpy(&v456[48], v452, 0x58uLL);
      v453 = v449;
      v454 = v450;
      v455[0] = v451[0];
      *(v455 + 9) = *(v451 + 9);
      memcpy(v704, v456, sizeof(v704));
      v705 = v416;
      v706 = v218;
      v707 = 0;
      v708 = v449;
      v709 = v450;
      *v710 = v451[0];
      *&v710[9] = *(v451 + 9);
      sub_1B2181728(v704, v447);
      sub_1B21C77F4();
      memcpy(v446, v433, 0xD2uLL);
      memcpy(v447, v433, 0xD2uLL);
      if (sub_1B2181784(v447) == 1)
      {
        memcpy(v429, v433, 0xD2uLL);
        sub_1B2122400(v429, &qword_1EB7A13B0, &unk_1B2257E48);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v222 = *(v385 + 16);
          sub_1B214400C();
          v385 = v223;
        }

        v219 = *(v385 + 16);
        if (v219 >= *(v385 + 24) >> 1)
        {
          sub_1B214400C();
          v385 = v224;
        }

        *(v385 + 16) = v219 + 1;
        v220 = v385 + 16 * v219;
        *(v220 + 32) = v7;
        *(v220 + 40) = v217;
        v221 = v446;
      }

      else
      {
        v221 = v433;
      }

      memcpy(__src, v221, 0xD2uLL);
      v9 = v384;
      memcpy(v433, __src, 0xD2uLL);
      if (sub_1B2181784(v433) != 1)
      {
        v315 = __src;
        goto LABEL_275;
      }

      sub_1B218179C(v704);
      sub_1B2122400(v460, &qword_1EB7A13A8, &qword_1B2257E40);
      v176 = v389;
      v177 = v383;
      goto LABEL_114;
    }

    if (!*(v6 + 16))
    {
      goto LABEL_247;
    }

    v185 = (v409 + 16 * v184);
    v186 = *v185;
    v187 = v185[1];

    v188 = sub_1B211E590();
    if ((v189 & 1) == 0)
    {
      goto LABEL_248;
    }

    v190 = (*(v6 + 56) + 216 * v188);
    memcpy(__dst, v190, 0xD2uLL);
    memcpy(__src, v190, 0xD2uLL);
    memmove(v445, v190, 0xD2uLL);
    v446[0] = v186;
    v446[1] = v187;
    memcpy(&v446[2], __src, 0xD2uLL);

    sub_1B2181728(__dst, v433);
    sub_1B2181728(v445, v433);
    sub_1B2122400(v446, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(&v447[2], v445, 0xD2uLL);
    v447[0] = v186;
    v447[1] = v187;
    v418 = v184 + 1;
    memcpy(v443, v445, sizeof(v443));
    v440 = *(&v445[19] + 1);
    v441 = *(&v445[21] + 1);
    v442[0] = *(&v445[23] + 1);
    *(v442 + 9) = *(&v445[24] + 2);
    memcpy(v719, &v445[6], sizeof(v719));
    v788 = v447[19];
    v720 = v447[19];
    v423 = v447[20];
    v721 = v447[20];
    v421 = v447[21];
    v722 = v447[21];
    v723 = *(&v445[19] + 1);
    v724 = *(&v445[21] + 1);
    *v725 = *(&v445[23] + 1);
    *&v725[9] = *(&v445[24] + 2);
    sub_1B2181728(&v447[2], __src);
    sub_1B21C3B0C(v44, v627);
    memcpy(v439, v627, sizeof(v439));
    v436 = v630;
    v437 = v631;
    v438[0] = *v632;
    *(v438 + 9) = *&v632[9];
    v191 = v720;
    v192 = v721;
    sub_1B2136148(v627, __src);
    v435 = sub_1B2252190();
    v193 = *(v191 + 16);
    v194 = (v191 + 40);
    if (v193)
    {
      break;
    }

LABEL_133:
    sub_1B2137224(v627);
    v208 = v447[0];
    v209 = v447[1];
    v652 = v629;
    v651 = v628;
    sub_1B2122400(&v651, &qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B2122400(&v652, &qword_1EB7A13B8, &qword_1B2257E58);
    v210 = v435;
    memcpy(v430, &v443[48], 0x58uLL);
    v430[11] = v788;
    v430[12] = v423;
    LOBYTE(v430[13]) = v421;
    *(&v430[13] + 1) = v440;
    *(&v430[15] + 1) = v441;
    *(&v430[17] + 1) = v442[0];
    *(&v430[18] + 2) = *(v442 + 9);
    sub_1B2137224(v430);
    memcpy(&v443[48], v439, 0x58uLL);
    v440 = v436;
    v441 = v437;
    v442[0] = v438[0];
    *(v442 + 9) = *(v438 + 9);
    memcpy(v711, v443, sizeof(v711));
    v712 = v44;
    v713 = v210;
    v714 = 0;
    v715 = v436;
    v716 = v437;
    *v717 = v438[0];
    *&v717[9] = *(v438 + 9);
    sub_1B2181728(v711, __src);
    sub_1B21C77F4();
    memcpy(v433, v432, 0xD2uLL);
    memcpy(__src, v432, 0xD2uLL);
    if (sub_1B2181784(__src) == 1)
    {
      memcpy(v431, v432, 0xD2uLL);
      sub_1B2122400(v431, &qword_1EB7A13B0, &unk_1B2257E48);

      v211 = swift_isUniquelyReferenced_nonNull_native();
      v44 = MEMORY[0x1E69E7CC0];
      v6 = v406;
      v184 = v418;
      if ((v211 & 1) == 0)
      {
        v214 = *(v416 + 16);
        sub_1B214400C();
        v416 = v215;
      }

      v212 = *(v416 + 16);
      if (v212 >= *(v416 + 24) >> 1)
      {
        sub_1B214400C();
        v416 = v216;
      }

      *(v416 + 16) = v212 + 1;
      v213 = v416 + 16 * v212;
      *(v213 + 32) = v208;
      *(v213 + 40) = v209;
      memcpy(v429, v433, 0xD2uLL);
    }

    else
    {
      memcpy(v429, v432, 0xD2uLL);
      v44 = MEMORY[0x1E69E7CC0];
      v6 = v406;
      v184 = v418;
    }

    memcpy(v432, v429, 0xD2uLL);
    if (sub_1B2181784(v432) != 1)
    {
      while (1)
      {
        v315 = v429;
LABEL_275:
        sub_1B2122400(v315, &qword_1EB7A13B0, &unk_1B2257E48);
LABEL_276:
        sub_1B2252EC0();
        __break(1u);
LABEL_277:

        __break(1u);
      }
    }

    sub_1B218179C(v711);
    sub_1B2122400(v447, &qword_1EB7A13A8, &qword_1B2257E40);
  }

  while (*(v192 + 16))
  {
    v195 = *(v194 - 1);
    v196 = *v194;

    v197 = sub_1B211E590();
    if ((v198 & 1) == 0)
    {
      goto LABEL_241;
    }

    v199 = (*(v192 + 56) + 216 * v197);
    memcpy(v431, v199, 0xD2uLL);
    memcpy(v429, v199, 0xD2uLL);
    memmove(v432, v199, 0xD2uLL);
    v433[0] = v195;
    v433[1] = v196;
    memcpy(&v433[2], v429, 0xD2uLL);

    sub_1B2181728(v431, v430);
    sub_1B2181728(v432, v430);
    sub_1B2122400(v433, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(&__src[2], v432, 0xD2uLL);
    __src[0] = v195;
    __src[1] = v196;
    memcpy(v429, __src, 0xE2uLL);
    v1 = 0;
    sub_1B21C3D34();
    v200 = __src[0];
    v201 = __src[1];
    memcpy(v718, v430, 0xD2uLL);
    sub_1B2181728(v718, v428);
    sub_1B21C77F4();
    memcpy(v427, v425, 0xD2uLL);
    memcpy(v428, v425, 0xD2uLL);
    if (sub_1B2181784(v428) == 1)
    {
      memcpy(v424, v425, 0xD2uLL);
      sub_1B2122400(v424, &qword_1EB7A13B0, &unk_1B2257E48);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v205 = *(v44 + 16);
        sub_1B214400C();
        v44 = v206;
      }

      v202 = *(v44 + 16);
      if (v202 >= *(v44 + 24) >> 1)
      {
        sub_1B214400C();
        v44 = v207;
      }

      *(v44 + 16) = v202 + 1;
      v203 = v44 + 16 * v202;
      *(v203 + 32) = v200;
      *(v203 + 40) = v201;
      v204 = v427;
    }

    else
    {
      v204 = v425;
    }

    memcpy(v426, v204, 0xD2uLL);
    memcpy(v425, v426, 0xD2uLL);
    if (sub_1B2181784(v425) != 1)
    {
      goto LABEL_274;
    }

    memcpy(v424, v430, 0xD2uLL);
    sub_1B218179C(v424);
    sub_1B2122400(__src, &qword_1EB7A13A8, &qword_1B2257E40);
    v194 += 2;
    if (!--v193)
    {
      goto LABEL_133;
    }
  }

  __break(1u);
LABEL_241:
  __break(1u);
}

uint64_t QueryInterfaceRequest.asRequest<A>(of:)()
{
  sub_1B2114F78();
  memcpy(v0, v1, v2);
  sub_1B2114F78();
  memcpy(v3, v4, v5);
  return sub_1B2136148(v8, v7);
}

uint64_t QueryInterfaceRequest.select<A>(sql:arguments:as:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v8 = a3[1];
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B22546B0;
  *(v10 + 56) = &type metadata for SQL;
  *(v10 + 64) = &protocol witness table for SQL;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B22546B0;
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = v9;
  __src[3] = v8;
  sub_1B2114CC4(__src);
  memcpy((v11 + 32), __src, 0xB8uLL);
  *(v10 + 32) = v11;

  QueryInterfaceRequest.select<A>(_:as:)(v10, v12, a5);
}

uint64_t QueryInterfaceRequest.select<A>(literal:as:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B22546B0;
  *(v5 + 56) = &type metadata for SQL;
  *(v5 + 64) = &protocol witness table for SQL;
  *(v5 + 32) = v4;

  QueryInterfaceRequest.select<A>(_:as:)(v5, v6, a3);
}

uint64_t sub_1B217EB30(uint64_t a1, uint64_t a2)
{
  QueryInterfaceRequest.databaseTableName.getter();
  Database.primaryKey(_:)();
  if (v2)
  {

    return a2;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      v4 = v11;
    }

    else
    {
      v4 = &unk_1F29692A8;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v4 = swift_allocObject();
    v4[1] = xmmword_1B22546B0;
    *(v4 + 4) = v11;
    *(v4 + 5) = v12;
  }

  v5 = *(v4 + 2);
  sub_1B21414CC(v11, v12, v13);

  if (v5 == 1)
  {
    sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_1B22546B0;
    if (v13)
    {
      if (v13 == 1)
      {
        v6 = v11;
      }

      else
      {
        v6 = &unk_1F29692D8;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      v6 = swift_allocObject();
      v6[1] = xmmword_1B22546B0;
      *(v6 + 4) = v11;
      *(v6 + 5) = v12;
    }

    if (*(v6 + 2))
    {
      v8 = *(v6 + 4);
      v7 = *(v6 + 5);

      *(a2 + 56) = &type metadata for Column;
      *(a2 + 64) = &protocol witness table for Column;
      *(a2 + 32) = v8;
      *(a2 + 40) = v7;
      return a2;
    }

    __break(1u);
  }

  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000003BLL, 0x80000001B226D570);
  Interface = QueryInterfaceRequest.databaseTableName.getter();
  MEMORY[0x1B2741EB0](Interface);

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B217ED6C(uint64_t a1, uint64_t a2)
{
  QueryInterfaceRequest.databaseTableName.getter();
  Database.primaryKey(_:)();
  if (v2)
  {

    return a2;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      v4 = v11;
    }

    else
    {
      v4 = &unk_1F2969338;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v4 = swift_allocObject();
    v4[1] = xmmword_1B22546B0;
    *(v4 + 4) = v11;
    *(v4 + 5) = v12;
  }

  v5 = *(v4 + 2);
  sub_1B21414CC(v11, v12, v13);

  if (v5 == 1)
  {
    sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_1B22546B0;
    if (v13)
    {
      if (v13 == 1)
      {
        v6 = v11;
      }

      else
      {
        v6 = &unk_1F2969368;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      v6 = swift_allocObject();
      v6[1] = xmmword_1B22546B0;
      *(v6 + 4) = v11;
      *(v6 + 5) = v12;
    }

    if (*(v6 + 2))
    {
      v8 = *(v6 + 4);
      v7 = *(v6 + 5);

      *(a2 + 56) = &type metadata for Column;
      *(a2 + 64) = &protocol witness table for Column;
      *(a2 + 32) = v8;
      *(a2 + 40) = v7;
      return a2;
    }

    __break(1u);
  }

  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000003BLL, 0x80000001B226D570);
  Interface = QueryInterfaceRequest.databaseTableName.getter();
  MEMORY[0x1B2741EB0](Interface);

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

void *sub_1B217EFC0(char *__src)
{
  memcpy(__dst, __src, 0xA2uLL);
  v2 = __dst[7];
  v3 = *(__src + 1);
  v11 = *__src;
  v12 = v3;
  v13 = *(__src + 2);
  v14 = *(__src + 6);
  memcpy(__srca, __src + 65, sizeof(__srca));
  v4 = (__dst[8] & 1) == 0;
  memcpy(v15, __src, 0xA2uLL);
  sub_1B2136148(__dst, v8);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  (*(*(InterfaceRequest - 8) + 8))(v15, InterfaceRequest);
  v6 = v12;
  *__src = v11;
  *(__src + 1) = v6;
  *(__src + 2) = v13;
  *(__src + 6) = v14;
  *(__src + 7) = v2;
  __src[64] = v4;
  return memcpy(__src + 65, __srca, 0x61uLL);
}

__n128 sub_1B217F0F4(char *__src)
{
  memcpy(__dst, __src, 0xA2uLL);
  v2 = *(__src + 1);
  v21 = *__src;
  v22 = v2;
  v23 = *(__src + 2);
  v24 = *(__src + 6);
  v20[0] = *(__src + 65);
  *(v20 + 15) = *(__src + 10);
  v3 = *(__src + 104);
  v4 = *(__src + 120);
  v5 = *(__src + 136);
  *(v19 + 10) = *(__src + 146);
  v18 = v4;
  v19[0] = v5;
  v17 = v3;
  sub_1B2136148(__dst, v25);

  sub_1B21A3F40();
  v7 = v6;
  v9 = v8;

  memcpy(v25, __src, 0xA2uLL);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  (*(*(InterfaceRequest - 8) + 8))(v25, InterfaceRequest);
  v11 = v22;
  *__src = v21;
  *(__src + 1) = v11;
  *(__src + 2) = v23;
  v12 = MEMORY[0x1E69E7CC0];
  *(__src + 6) = v24;
  *(__src + 7) = v12;
  __src[64] = 0;
  *(__src + 65) = v20[0];
  *(__src + 10) = *(v20 + 15);
  *(__src + 11) = v7;
  *(__src + 12) = v9;
  result = v17;
  v14 = v18;
  v15 = v19[0];
  *(__src + 146) = *(v19 + 10);
  *(__src + 136) = v15;
  *(__src + 120) = v14;
  *(__src + 104) = result;
  return result;
}

double sub_1B217F2A8(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0xA2uLL);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = __dst[16];
  if (__dst[16])
  {
    v8 = __dst[17];
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = sub_1B2181AEC;
    v9[5] = v6;
    v10 = sub_1B213B044;
    v6 = v9;
  }

  else
  {
    v10 = sub_1B2181AEC;
  }

  memcpy(__srca, __src, sizeof(__srca));
  v14 = *(__src + 9);
  v15 = *(__src + 80);
  memcpy(v17, __src, 0xA2uLL);

  sub_1B2136148(__dst, v13);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  (*(*(InterfaceRequest - 8) + 8))(v17, InterfaceRequest);
  memcpy(__src, __srca, 0x80uLL);
  *(__src + 16) = v10;
  *(__src + 17) = v6;
  result = *&v14;
  *(__src + 9) = v14;
  *(__src + 80) = v15;
  return result;
}

void *sub_1B217F48C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v9[0] = a2;
  sub_1B21C4698();
  memcpy(v9, __src, 0xA2uLL);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  sub_1B2111808(InterfaceRequest);
  (*(v5 + 8))(v9);
  return memcpy(__src, __srca, 0xA2uLL);
}

uint64_t sub_1B217F588(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1B2114F78();
  memcpy(v4, v5, v6);
  v9 = *(a2 + 16);
  sub_1B211829C();
  return sub_1B2111F70(v7);
}

void *sub_1B217F5F0(void *__src, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  memcpy(__dst, __src, sizeof(__dst));
  v14 = a2;

  a4(&v14);
  if (v4)
  {

    __break(1u);
  }

  else
  {
    v12[0] = v14;
    sub_1B21C4698();

    memcpy(v12, __src, 0xA2uLL);
    InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
    sub_1B2111808(InterfaceRequest);
    (*(v9 + 8))(v12);
    return memcpy(__src, __srca, 0xA2uLL);
  }

  return result;
}

void *sub_1B217F720(char *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0xA2uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  v6 = __dst[2];
  memcpy(__srca, __src + 24, sizeof(__srca));
  if (__dst[2])
  {
    sub_1B2136148(__dst, v10);

    sub_1B21DA240(v7);
  }

  else
  {
    sub_1B2136148(__dst, v10);

    sub_1B21DA6C0(v4, v5);

    v6 = a2;
  }

  memcpy(v10, __src, 0xA2uLL);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  (*(*(InterfaceRequest - 8) + 8))(v10, InterfaceRequest);
  *__src = v4;
  *(__src + 1) = v5;
  *(__src + 2) = v6;
  return memcpy(__src + 24, __srca, 0x8AuLL);
}

uint64_t sub_1B217F86C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v5 = *(a1 + 16);
  sub_1B211829C();
  return sub_1B2111F70(v3);
}

__n128 sub_1B217F8D4(__n128 *a1)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  a1[9] = result;
  a1[10].n128_u16[0] = v2;
  return result;
}

uint64_t sub_1B217F908(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  memcpy(__dst, a2 + 2, 0xABuLL);
  memcpy(__src, a2 + 2, 0xABuLL);
  nullsub_1(__src);
  memcpy(v7, __src, 0xABuLL);

  sub_1B21818BC(__dst, &v6);
  return sub_1B21A3AA8(v7, v3, v4);
}

uint64_t sub_1B217F9AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B217F908(a1, *(v1 + 32));
}

uint64_t sub_1B217F9CC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1B217EB30(a1, (v1 + 5));
}

uint64_t sub_1B217F9F0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1B217ED6C(a1, (v1 + 6));
}

uint64_t QueryInterfaceRequest.isEmpty(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B2127C14();
  v23 = v5;
  v6._countAndFlagsBits = 0x205443454C4553;
  v6._object = 0xE700000000000000;
  SQLInterpolation.appendLiteral(_:)(v6);
  memcpy(__dst, v2, 0xA2uLL);
  SQLSubqueryable.exists()(a2, &protocol witness table for QueryInterfaceRequest<A>);
  v7 = v23;
  sub_1B2127DC0(__src, __dst);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = *(v7 + 16);
    sub_1B2127C14();
    v7 = v14;
  }

  v8 = *(v7 + 16);
  if (v8 >= *(v7 + 24) >> 1)
  {
    sub_1B2127C14();
    v7 = v15;
  }

  sub_1B21356F8(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B2127AE0(__dst);
  *(v7 + 16) = v8 + 1;
  memcpy((v7 + 184 * v8 + 32), __dst, 0xB8uLL);
  v23 = v7;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  SQLInterpolation.appendLiteral(_:)(v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v20 = v23;
  sub_1B2142B5C(v16, v18);
  v21 = 2;
  sub_1B2146830(v16);
  if (v3)
  {
    sub_1B2122400(v18, &qword_1EB7A1378, &qword_1B2257598);
    return v11 & 1;
  }

  v10 = sub_1B2181150();
  sub_1B2142D18(v16);
  result = sub_1B2122400(v18, &qword_1EB7A1378, &qword_1B2257598);
  if (v10 != 2)
  {
    v11 = v10 ^ 1;
    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t QueryInterfaceRequest.updateAll(_:onConflict:_:_:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  sub_1B21619D8(&qword_1EB7A0F68, &unk_1B2254680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  sub_1B214FAC0(a3, inited + 32);

  sub_1B216CE64(v9);
  v10 = QueryInterfaceRequest.updateAll(_:onConflict:_:)(a1, &v12, inited, a5);

  return v10;
}

uint64_t sub_1B217FD6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  sub_1B21139A0(a1, v8);
  v10 = a1[3];
  v11 = a1[4];
  sub_1B21139A0(a1, v10);
  v14[3] = v10;
  v14[4] = *(v11 + 8);
  sub_1B212FF14(v14);
  sub_1B2111808(v10);
  (*(v12 + 16))();
  v15[3] = &type metadata for SQLExpression;
  v15[4] = &protocol witness table for SQLExpression;
  v15[0] = swift_allocObject();
  a3(v14, a2);
  sub_1B2113208(v14);
  ColumnExpression.set(to:)(v15, v8, v9, a4);
  return sub_1B2122400(v15, &qword_1EB7A10F0, &qword_1B225D320);
}

void *sub_1B217FECC@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  memcpy(__dst, a2, 0xA3uLL);
  type metadata accessor for TableAlias();
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  v20[0] = v6;

  sub_1B2180454(v20, v7, __dst);
  sub_1B2209954(&v24);

  v8 = *(a3 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B213A1C8();
    v9 = v23;
    v10 = (a3 + 40);
    do
    {
      v12 = *v10;
      __src[0] = *(v10 - 1);
      v11 = __src[0];
      __src[1] = v12;
      __src[2] = v7;
      sub_1B213CBE4(__src);
      memcpy(v22, __src, sizeof(v22));
      v20[0] = 0x5F62647267;
      v20[1] = 0xE500000000000000;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1B2741EB0](v11, v12);

      v14 = v20[0];
      v13 = v20[1];
      v23 = v9;
      v15 = *(v9 + 16);
      if (v15 >= *(v9 + 24) >> 1)
      {
        sub_1B213A1C8();
        v9 = v23;
      }

      memcpy(v19, v22, 0xA3uLL);
      v19[21] = v14;
      v19[22] = v13;
      sub_1B2155A5C(v19);
      memcpy(v20, v19, sizeof(v20));
      *(v9 + 16) = v15 + 1;
      memcpy((v9 + 184 * v15 + 32), v20, 0xB8uLL);
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  v17 = swift_allocObject();
  *(v17 + 16) = v26;
  *(v17 + 32) = sub_1B214D354;
  *(v17 + 40) = v16;

  *a4 = v24;
  *(a4 + 16) = v25;
  *(a4 + 24) = sub_1B2181AA4;
  *(a4 + 32) = v17;
  return memcpy((a4 + 40), v27, 0x7AuLL);
}

uint64_t sub_1B218016C(uint64_t a1, uint64_t a2)
{
  if (sub_1B2116B08(a2))
  {
    sub_1B21C2A5C(0, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B27427E0](0, a2);
    }

    else
    {
      v4 = *(a2 + 32);
    }

    v5 = sub_1B2180290(a1);

    v7 = sub_1B2180D3C(v6, v5);

    return v7;
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
    sub_1B21619D8(&qword_1EB7A11A8, &qword_1B22549B8);
    sub_1B2181918();

    return sub_1B2252190();
  }
}

uint64_t sub_1B2180290(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1B216EE38();
  v2 = v16;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = v15[5];
    v8 = v15[6];
    sub_1B21139A0(v15 + 2, v7);
    v9 = *(v8 + 88);

    v10 = v9(v6, v5, v7, v8);
    if (v11)
    {
      break;
    }

    v12 = v10;

    v13 = *(v16 + 16);
    if (v13 >= *(v16 + 24) >> 1)
    {
      sub_1B216EE38();
    }

    *(v16 + 16) = v13 + 1;
    *(v16 + 8 * v13 + 32) = v12;
    if (!--v1)
    {
      return v2;
    }
  }

  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](v6, v5);
  MEMORY[0x1B2741EB0](0xD000000000000010, 0x80000001B226D4E0);
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

void sub_1B2180454(uint64_t *a1, uint64_t a2, const void *a3)
{
  v10 = *a1;
  if (*(*a1 + 16))
  {
    v3 = v4;
    v5 = a2;
    v6 = a1;
    memcpy(__dst, (v10 + 96), 0xA2uLL);
    v12 = __dst[0];
    v7 = __dst[1];
    v13 = __dst[2];
    v34 = *(v10 + 120);
    v25 = *&__dst[5];
    memcpy(__src, (v10 + 152), sizeof(__src));
    if (__dst[2])
    {
      sub_1B2136148(__dst, v27);
      sub_1B2136148(__dst, v27);

      sub_1B21DA240(v14);

      v5 = v13;
    }

    else
    {
      sub_1B2136148(__dst, v27);
      sub_1B2136148(__dst, v27);

      sub_1B21DA6C0(v12, v7);
    }

    sub_1B2137224(__dst);

    v8 = swift_allocObject();
    v15 = a3;
    memcpy((v8 + 16), a3, 0xA3uLL);
    if (v25)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v25;
      *(v16 + 32) = sub_1B218199C;
      *(v16 + 40) = v8;
      v9 = sub_1B2181ABC;
      v8 = v16;
    }

    else
    {
      v9 = sub_1B218199C;
    }

    if (*(v10 + 16))
    {
      v36 = v7;
      v24 = v12;
      v3 = &v28;
      memcpy(v27, (v10 + 32), sizeof(v27));
      v17 = *(v10 + 48);
      v32[7] = *(v10 + 32);
      v32[8] = v17;
      v18 = *(v10 + 80);
      v32[9] = *(v10 + 64);
      v32[10] = v18;
      LOBYTE(v7) = v27[226];
      v28 = *&v27[64];
      v29 = *&v27[80];
      v30 = *(v10 + 120);
      v31 = *&v27[104];
      memmove(v32, (v10 + 152), 0x6AuLL);
      sub_1B2127DC0(v15, v26);
      sub_1B21819B8(v27, v26);
      sub_1B2137224(&v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v6 = v10;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_14:
  sub_1B21956E4(v10);
  v10 = v23;
  *v6 = v23;
LABEL_10:
  if (*(v10 + 16))
  {
    memcpy(v26, (v10 + 32), 0xE3uLL);
    v20 = *(v3 + 184);
    *(v10 + 32) = *(v3 + 168);
    *(v10 + 48) = v20;
    v21 = *(v3 + 216);
    *(v10 + 64) = *(v3 + 200);
    *(v10 + 80) = v21;
    v22 = v36;
    *(v10 + 96) = v24;
    *(v10 + 104) = v22;
    *(v10 + 112) = v5;
    *(v10 + 120) = v34;
    *(v10 + 136) = v9;
    *(v10 + 144) = v8;
    memcpy((v10 + 152), __src, 0x6AuLL);
    *(v10 + 258) = v7;
    sub_1B2181A14(v26);
    *v6 = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B2180750(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (!*(*a2 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = *(v5 + 88);
  if (v6 < 0)
  {
LABEL_24:
    result = sub_1B2252EC0();
    __break(1u);
    return result;
  }

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v10 = *(v5 + 72);
  v9 = *(v5 + 80);
  if (v6)
  {
    v11 = a4;
  }

  else
  {
    v11 = *(v5 + 56);
  }

  if (v6)
  {
    v12 = a5;
  }

  else
  {
    v12 = *(v5 + 64);
  }

  if (v6)
  {
    v13 = *(v5 + 56);
  }

  else
  {
    v13 = a4;
  }

  if (v6)
  {
    v14 = *(v5 + 64);
  }

  else
  {
    v14 = a5;
  }

  v25 = v14;
  if (v10)
  {
    v15 = *(v5 + 56);
    v16 = *(v5 + 80);

    v7 = v15;
    v9 = v16;
    v17 = v10;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v26 = v7;
  v27 = v9;
  v32[1] = v11;
  v32[2] = v12;
  v32[3] = v13;
  v32[4] = v25;
  v32[5] = v17;
  v32[6] = v18;
  sub_1B2181640(v7, v8, v10, v9, v6);

  v19 = v28;
  v29 = sub_1B21D9790(a3);

  if (v19)
  {
    return sub_1B21816DC(v26, v8, v10, v27, v6);
  }

  v21 = sub_1B21D9D18(v6 & 1, v29);

  sub_1B21816DC(v26, v8, v10, v27, v6);
  v32[0] = v5;
  sub_1B2180990(a3, v32, v21, &v33);

  v23 = *a1;
  v31 = v33;
  v32[0] = v23;
  v22.tableRegions.value._rawValue = &v31;
  DatabaseRegion.union(_:)(v22);

  *a1 = v33;
  return result;
}

uint64_t sub_1B2180990@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  sub_1B21A70E4(&unk_1F29690F0, a3, v17);
  *v13 = v7;

  sub_1B2180AF8(v13, v17);
  if (v4)
  {

    __break(1u);
  }

  else
  {
    sub_1B2209954(v14);

    sub_1B2136148(v14, v13);
    sub_1B21366E4(v14, v13);
    sub_1B2137278();
    v9 = v8;
    memcpy(__dst, v13, 0xA8uLL);
    __dst[168] = 0;
    v16 = v9;
    v10 = sub_1B2137488(a1);
    sub_1B21356F8(v17);
    sub_1B2137224(v14);
    sub_1B2142BCC(__dst);
    swift_beginAccess();
    v11 = *(v10 + 32);

    *a4 = v11;
  }

  return result;
}

void sub_1B2180AF8(uint64_t *a1, const void *a2)
{
  v6 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
LABEL_9:
    sub_1B21956E4(v6);
    v6 = v15;
    *v2 = v15;
    goto LABEL_6;
  }

  v2 = a1;
  memcpy(__dst, (v6 + 96), 0xA2uLL);
  v8 = *(&__dst[2] + 1);
  v9 = *&__dst[3];
  v3 = swift_allocObject();
  memcpy((v3 + 16), a2, 0xA3uLL);
  if (v8)
  {
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = sub_1B2181AD4;
    v10[5] = v3;
    v4 = sub_1B2181ABC;
    v3 = v10;
  }

  else
  {
    v4 = sub_1B2181AD4;
  }

  v19 = __dst[0];
  v20 = __dst[1];
  v21 = *&__dst[2];
  memcpy(v18, &__dst[3] + 8, sizeof(v18));
  memcpy(v22, (v6 + 32), 0xE3uLL);
  v11 = *(v6 + 48);
  __src[0] = *(v6 + 32);
  __src[1] = v11;
  v12 = *(v6 + 80);
  __src[2] = *(v6 + 64);
  __src[3] = v12;
  v5 = BYTE2(v22[28]);
  v13 = *(v6 + 112);
  v23[0] = *(v6 + 96);
  v24 = *(v6 + 128);
  v23[1] = v13;
  v25 = *&v22[13];
  memmove(&v26, (v6 + 152), 0x6AuLL);
  sub_1B2136148(__dst, v16);
  sub_1B2127DC0(a2, v16);
  sub_1B21819B8(v22, v16);
  sub_1B2137224(v23);
  __src[4] = v19;
  __src[5] = v20;
  *&__src[6] = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*(v6 + 16))
  {
    memcpy(v16, (v6 + 32), 0xE3uLL);
    memcpy((v6 + 32), __src, 0x68uLL);
    *(v6 + 136) = v4;
    *(v6 + 144) = v3;
    memcpy((v6 + 152), v18, 0x6AuLL);
    *(v6 + 258) = v5;
    sub_1B2181A14(v16);
    *v2 = v6;
  }

  else
  {
    __break(1u);
  }
}