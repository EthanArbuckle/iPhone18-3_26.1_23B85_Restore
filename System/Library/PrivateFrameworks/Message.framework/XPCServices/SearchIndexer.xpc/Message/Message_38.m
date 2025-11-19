void *sub_100273BA8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D65C8, &qword_1004EAF30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&unk_1005D65D0, &qword_1004EAF38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100273CF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D6550, &qword_1004EAEC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100273DF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D6548, &qword_1004EAEB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100273F30(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 56);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[56 * v10])
    {
      memmove(v14, v15, 56 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_100274058(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D64D0, &unk_1004EAEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100274178(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D65B0, &qword_1004EAF18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002742A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D65B8, &unk_1004EAF20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002743C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D6590, &unk_1004EAF00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002744F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D6598, &qword_1004F76C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002745FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D65A0, &qword_1004EAF10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100274708(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(&qword_1005D6588, &qword_1004EAEF8);
  v10 = *(type metadata accessor for ReplacementNode() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ReplacementNode() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1002748E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D6568, &qword_1004ECFC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1002749F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D6580, &qword_1004EAEF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100274B0C()
{
  v0 = objc_opt_self();
  v1 = sub_1004A5734();
  v2 = [v0 addressListFromHeaderValue:v1];

  if (v2)
  {
    sub_10000C9C0(&qword_1005D6540, &qword_1004EAEB0);
    v3 = sub_1004A5C14();

    if (v3 >> 62)
    {
LABEL_20:
      v4 = sub_1004A6A34();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    while (v4 != v5)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_1004A6794();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);
        swift_unknownObjectRetain();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      v8 = [v6 emailAddressValue];
      swift_unknownObjectRelease();
      ++v5;
      if (v8)
      {
        sub_1004A5BF4();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v9 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1004A5C44();
        }

        sub_1004A5C84();
        v5 = v7;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100274CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  *&v30 = a1;
  *(&v30 + 1) = a2;
  *&v47 = a3;
  *(&v47 + 1) = a4;
  v48._countAndFlagsBits = 64;
  v48._object = 0xE100000000000000;
  sub_1004A5994(v48);
  if ((*(&v47 + 1) & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(*(&v47 + 1)) & 0xFLL;
  }

  else
  {
    v10 = v47 & 0xFFFFFFFFFFFFLL;
  }

  v49._countAndFlagsBits = a5;
  v49._object = a6;
  sub_1004A5994(v49);

  result = sub_1004A5AB4();
  v15 = HIBYTE(*(&v47 + 1)) & 0xFLL;
  if ((*(&v47 + 1) & 0x2000000000000000) == 0)
  {
    v15 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 < v10)
  {
    __break(1u);
  }

  else
  {
    v29 = result;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = sub_1004A5AB4();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v32 = v30;
    v33 = v47;
    *&v34 = v29;
    *(&v34 + 1) = v16;
    *&v35 = v17;
    *(&v35 + 1) = v18;
    *&v36 = v19;
    *(&v36 + 1) = v21;
    *&v37 = v23;
    *(&v37 + 1) = v25;
    v38[0] = v30;
    v38[1] = v47;
    v39 = v29;
    v40 = v16;
    v41 = v17;
    v42 = v18;
    v43 = v19;
    v44 = v21;
    v45 = v23;
    v46 = v25;
    sub_100275568(&v32, v31);
    result = sub_1002755F4(v38);
    v26 = v35;
    a7[2] = v34;
    a7[3] = v26;
    v27 = v37;
    a7[4] = v36;
    a7[5] = v27;
    v28 = v33;
    *a7 = v32;
    a7[1] = v28;
  }

  return result;
}

uint64_t sub_100274EBC()
{

  v0 = sub_1004A59D4();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      if (v2 == 2573 && v3 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
      {
        goto LABEL_3;
      }

      if ((v3 & 0x2000000000000000) != 0)
      {
        v5 = HIBYTE(v3) & 0xF;
      }

      else
      {
        v5 = v2 & 0xFFFFFFFFFFFFLL;
      }

      if (!v5)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      if ((v3 & 0x1000000000000000) != 0)
      {
        v10 = sub_1004A5884();
      }

      else
      {
        if ((v3 & 0x2000000000000000) != 0)
        {
          v7 = v2;
        }

        else
        {
          v6 = ((v2 & 0x1000000000000000) != 0 ? (v3 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
          v7 = *v6;
        }

        v8 = v7;
        v9 = (__clz(~v7) - 24) << 16;
        v10 = v8 < 0 ? v9 : 65541;
      }

      if (v10 >> 14 != 4 * v5)
      {
        goto LABEL_3;
      }

      v11 = sub_1001E11BC(v2, v3);
      if ((v11 & 0x100000000) != 0)
      {
        goto LABEL_56;
      }

      if ((v11 & 0xFFFFFF80) != 0)
      {
LABEL_3:
      }

      else
      {
        v12 = sub_1001E11BC(v2, v3);
        if ((v12 & 0x100000000) != 0)
        {
          goto LABEL_57;
        }

        v13 = v12;

        if ((v13 & 0xFFFFFF00) != 0)
        {
          goto LABEL_55;
        }

        if (v13 - 34 <= 0x3A && ((1 << (v13 - 34)) & 0x4000000540004C1) != 0)
        {

          v34._countAndFlagsBits = 34;
          v34._object = 0xE100000000000000;
          sub_1004A5994(v34);
          v14 = 0;
          goto LABEL_32;
        }
      }

      v2 = sub_1004A59D4();
      v3 = v4;
    }

    while (v4);
  }

  v14 = 1;
LABEL_32:

  v15 = sub_1004A59D4();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    do
    {
      if (v17 == 34 && v18 == 0xE100000000000000 || (sub_1004A6D34() & 1) != 0)
      {

        v19._countAndFlagsBits = 8796;
      }

      else
      {
        if ((v17 != 92 || v18 != 0xE100000000000000) && (sub_1004A6D34() & 1) == 0)
        {
          v35._countAndFlagsBits = v17;
          v35._object = v18;
          sub_1004A5984(v35);

          goto LABEL_39;
        }

        v19._countAndFlagsBits = 23644;
      }

      v19._object = 0xE200000000000000;
      sub_1004A5994(v19);
LABEL_39:
      v17 = sub_1004A59D4();
      v18 = v20;
    }

    while (v20);
  }

  if ((v14 & 1) == 0)
  {
    v36._countAndFlagsBits = 34;
    v36._object = 0xE100000000000000;
    sub_1004A5994(v36);
  }

  v21 = 0;
  v22 = sub_1004A5AB4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if (unorm2_getNFCInstance())
  {
    v29 = sub_1002A7678(v22, v24, v26, v28);
    v32 = v31;
    v33 = v29;

    if (v32)
    {

      return v33;
    }
  }

  else
  {
  }

  return v21;
}

uint64_t sub_1002752CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = sub_1002A8490(a1, a2);
  sub_1002A062C(v6, v7, a3);
  v8 = sub_1002733C8();

  if (*(v8 + 2))
  {
    v9 = *(v8 + 3);
    v26 = *(v8 + 2);
    v27 = v9;
    v10 = *(v8 + 5);
    v28 = *(v8 + 4);
    v29 = v10;
    v11 = *(v8 + 7);
    v30 = *(v8 + 6);
    v31 = v11;
    v23 = v27;
    v24 = v26;
    v21 = v29;
    v22 = v28;
    v19 = v11;
    v20 = v30;
    sub_100275568(&v26, v25);

    v14 = v19;
    v13 = v20;
    v16 = v21;
    v15 = v22;
    v18 = v23;
    v17 = v24;
  }

  else
  {

    v17 = 0uLL;
    v18 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a4 = v17;
  a4[1] = v18;
  a4[2] = v15;
  a4[3] = v16;
  a4[4] = v13;
  a4[5] = v14;
  return result;
}

uint64_t _s9IMAP2MIME12EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v8 && (sub_1004A6D34() & 1) == 0 || (sub_10027F698(a1[4], a1[5], a1[6], a1[7], a2[4], a2[5], a2[6], a2[7]) & 1) == 0)
  {
    return 0;
  }

  v9 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  v12 = a1[11];
  v13 = a2[8];
  v14 = a2[9];
  v15 = a2[10];
  v16 = a2[11];

  return sub_10027F698(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10027546C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002754B4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

ValueMetadata *type metadata accessor for EmailAddress()
{
  return &type metadata for EmailAddress;
}

{
  return &type metadata for EmailAddress;
}

unint64_t sub_10027551C()
{
  result = qword_1005D64D8;
  if (!qword_1005D64D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D64D8);
  }

  return result;
}

unint64_t sub_1002755A0()
{
  result = qword_1005D65A8;
  if (!qword_1005D65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D65A8);
  }

  return result;
}

uint64_t sub_10027564C(_OWORD *a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  swift_beginAccess();
  if (*(a2 + 16) != 2)
  {
    goto LABEL_3;
  }

  swift_beginAccess();
  v7 = a1[10];
  v8 = a1[8];
  v56 = a1[9];
  v57 = v7;
  v9 = a1[10];
  v58[0] = a1[11];
  *(v58 + 9) = *(a1 + 185);
  v10 = a1[6];
  v11 = a1[4];
  v52 = a1[5];
  v53 = v10;
  v12 = a1[6];
  v13 = a1[8];
  v54 = a1[7];
  v55 = v13;
  v14 = a1[2];
  v48 = a1[1];
  v49 = v14;
  v15 = a1[4];
  v17 = a1[1];
  v16 = a1[2];
  v50 = a1[3];
  v51 = v15;
  v67 = v56;
  v68 = v9;
  v69[0] = a1[11];
  *(v69 + 9) = *(a1 + 185);
  v63 = v52;
  v64 = v12;
  v65 = v54;
  v66 = v8;
  v59 = v17;
  v60 = v16;
  v61 = v50;
  v62 = v11;
  if (sub_100021348(&v59) != 1)
  {
    v70[8] = v67;
    v70[9] = v68;
    v71[0] = v69[0];
    *(v71 + 9) = *(v69 + 9);
    v70[4] = v63;
    v70[5] = v64;
    v70[6] = v65;
    v70[7] = v66;
    v70[0] = v59;
    v70[1] = v60;
    v70[2] = v61;
    v70[3] = v62;
    v46[8] = v56;
    v46[9] = v57;
    v47[0] = v58[0];
    *(v47 + 9) = *(v58 + 9);
    v46[4] = v52;
    v46[5] = v53;
    v46[6] = v54;
    v46[7] = v55;
    v46[0] = v48;
    v46[1] = v49;
    v46[2] = v50;
    v46[3] = v51;
    sub_1002764DC(v46, v44);
    v29 = a3(v70);
    if (v3)
    {
      sub_100276474(&v48);
    }

    else
    {
      v30 = v29;
      sub_100276474(&v48);
      swift_beginAccess();
      *(a2 + 16) = v30;
    }

    sub_100276450(v42);
    swift_beginAccess();
    v31 = a1[10];
    v44[8] = a1[9];
    v44[9] = v31;
    v45[0] = a1[11];
    *(v45 + 9) = *(a1 + 185);
    v32 = a1[6];
    v44[4] = a1[5];
    v44[5] = v32;
    v33 = a1[8];
    v44[6] = a1[7];
    v44[7] = v33;
    v34 = a1[2];
    v44[0] = a1[1];
    v44[1] = v34;
    v35 = a1[4];
    v44[2] = a1[3];
    v44[3] = v35;
    v36 = v42[9];
    a1[9] = v42[8];
    a1[10] = v36;
    a1[11] = v43[0];
    *(a1 + 185) = *(v43 + 9);
    v37 = v42[5];
    a1[5] = v42[4];
    a1[6] = v37;
    v38 = v42[7];
    a1[7] = v42[6];
    a1[8] = v38;
    v39 = v42[1];
    a1[1] = v42[0];
    a1[2] = v39;
    v40 = v42[3];
    a1[3] = v42[2];
    a1[4] = v40;
    v28 = v44;
  }

  else
  {
LABEL_3:
    sub_100276450(&v48);
    swift_beginAccess();
    v18 = a1[10];
    v67 = a1[9];
    v68 = v18;
    v69[0] = a1[11];
    *(v69 + 9) = *(a1 + 185);
    v19 = a1[6];
    v63 = a1[5];
    v64 = v19;
    v20 = a1[8];
    v65 = a1[7];
    v66 = v20;
    v21 = a1[2];
    v59 = a1[1];
    v60 = v21;
    v22 = a1[4];
    v61 = a1[3];
    v62 = v22;
    v23 = v57;
    a1[9] = v56;
    a1[10] = v23;
    a1[11] = v58[0];
    *(a1 + 185) = *(v58 + 9);
    v24 = v53;
    a1[5] = v52;
    a1[6] = v24;
    v25 = v55;
    a1[7] = v54;
    a1[8] = v25;
    v26 = v49;
    a1[1] = v48;
    a1[2] = v26;
    v27 = v51;
    a1[3] = v50;
    a1[4] = v27;
    v28 = &v59;
  }

  return sub_100276474(v28);
}

uint64_t sub_100275984(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  result = sub_10027564C(a2, a3, a4);
  if (!v4)
  {
    *&v23 = v7;
    BYTE8(v23) = v8;
    *&v24 = v9;
    *(&v24 + 1) = v10;
    *v25 = v11;
    memset(&v25[8], 0, 48);
    v25[56] = 2;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30[0] = 2;
    *&v30[8] = 0;
    *&v30[16] = 0;
    v30[24] = 2;
    UInt32.init(_:)(&v23);
    swift_beginAccess();
    v13 = a2[10];
    v31[8] = a2[9];
    v31[9] = v13;
    v32[0] = a2[11];
    *(v32 + 9) = *(a2 + 185);
    v14 = a2[6];
    v31[4] = a2[5];
    v31[5] = v14;
    v15 = a2[8];
    v31[6] = a2[7];
    v31[7] = v15;
    v16 = a2[2];
    v31[0] = a2[1];
    v31[1] = v16;
    v17 = a2[4];
    v31[2] = a2[3];
    v31[3] = v17;
    v18 = v29;
    a2[9] = v28;
    a2[10] = v18;
    a2[11] = *v30;
    *(a2 + 185) = *&v30[9];
    v19 = *&v25[48];
    a2[5] = *&v25[32];
    a2[6] = v19;
    v20 = v27;
    a2[7] = v26;
    a2[8] = v20;
    v21 = v24;
    a2[1] = v23;
    a2[2] = v21;
    v22 = *&v25[16];
    a2[3] = *v25;
    a2[4] = v22;

    sub_100276474(v31);
    swift_beginAccess();
    return *(a3 + 16);
  }

  return result;
}

uint64_t sub_100275AEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t (*a7)(uint64_t *, uint64_t, uint64_t, uint64_t, void))
{
  v13 = a1[3];
  v14 = a1[5];
  swift_beginAccess();
  v15 = *(a6 + 9);
  v42[8] = *(a6 + 8);
  v42[9] = v15;
  v43[0] = *(a6 + 10);
  *(v43 + 9) = *(a6 + 169);
  v16 = *(a6 + 5);
  v42[4] = *(a6 + 4);
  v42[5] = v16;
  v17 = *(a6 + 7);
  v42[6] = *(a6 + 6);
  v42[7] = v17;
  v18 = *(a6 + 1);
  v42[0] = *a6;
  v42[1] = v18;
  v19 = *(a6 + 3);
  v42[2] = *(a6 + 2);
  v42[3] = v19;
  if (sub_100021348(v42) != 1)
  {
    v31 = *a1;
    v30 = a1[1];
    v32 = *(a1 + 16);
    v33 = a1[4];
    v34 = v33 >> 59;
    if ((v33 >> 59) <= 5)
    {
      if (v34)
      {
        if (v34 == 5)
        {
          v38 = a6[8];
          a6[5] = v31;
          a6[6] = v30;
          a6[7] = v32 & 1;
          a6[8] = v13;
        }
      }

      else
      {
        a6[21] = v31;
        a6[22] = v30;
        *(a6 + 184) = v32 & 1;
      }
    }

    else
    {
      switch(v34)
      {
        case 6:
          a6[18] = v31;
          a6[19] = v30;
          *(a6 + 160) = v32 & 1;
          break;
        case 8:
          a6[9] = v31;
          a6[10] = v30;
          *(a6 + 88) = v32 & 1;
          break;
        case 9:
          v35 = *(a1 + 17);
          v36 = *(a1 + 21);
          v37 = a6[17];
          a6[12] = v31;
          a6[13] = v30;
          *(a6 + 112) = v32;
          *(a6 + 113) = v35;
          *(a6 + 117) = v36;
          *(a6 + 119) = *(a1 + 23);
          a6[15] = v13;
          a6[16] = v33;
          a6[17] = v14;

          break;
      }
    }
  }

  swift_beginAccess();
  v20 = *(a6 + 8);
  v21 = *(a6 + 10);
  v40[9] = *(a6 + 9);
  v41[0] = v21;
  *(v41 + 9) = *(a6 + 169);
  v22 = *(a6 + 5);
  v40[4] = *(a6 + 4);
  v40[5] = v22;
  v23 = *(a6 + 7);
  v40[6] = *(a6 + 6);
  v40[7] = v23;
  v40[8] = v20;
  v24 = *(a6 + 1);
  v40[0] = *a6;
  v40[1] = v24;
  v25 = *(a6 + 3);
  v40[2] = *(a6 + 2);
  v40[3] = v25;
  result = sub_100021348(v40);
  if (result != 1)
  {
    v27 = *a6;

    v29 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v28, _swiftEmptyArrayStorage);

    if (v29)
    {
      return a7(a1, a2, a3, a4, a5 & 1);
    }
  }

  return result;
}

uint64_t sub_100275D34()
{
  if (*(v0 + 184) == 2)
  {
    return 0;
  }

  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  if (v2)
  {
    v4 = v3 - v2;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    __break(1u);
LABEL_79:

    return 0;
  }

  v7 = sub_1002A84A8(0, v4, v2, v3);
  v9 = v8;
  if (!v5)
  {
    v14 = v6;
    v15 = sub_1002881FC(0, v7, 0, v6);
    result = sub_1002881FC(v7, v9, 0, v14);
    if (__OFADD__(v15, result))
    {
      __break(1u);
    }

    else if (v15 + result >= v15)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v10 = v5;
  v11 = v6;
  v12 = sub_1002881FC(0, v7, v5, v6);
  v13 = sub_1002881FC(v7, v9, v10, v11);
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_82;
  }

  if (v12 + v13 < v12)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_13:
  result = sub_1004A58D4();
  v17 = HIBYTE(v16) & 0xF;
  v18 = result & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v19 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    goto LABEL_79;
  }

  if ((v16 & 0x1000000000000000) == 0)
  {
    if ((v16 & 0x2000000000000000) != 0)
    {
      v42[0] = result;
      v42[1] = v16 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v17)
        {
          v18 = v17 - 1;
          if (v17 != 1)
          {
            v21 = 0;
            v31 = v42 + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                break;
              }

              v33 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                break;
              }

              v21 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                break;
              }

              ++v31;
              if (!--v18)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

LABEL_89:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v17)
        {
          v21 = 0;
          v36 = v42;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            v38 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              break;
            }

            ++v36;
            if (!--v17)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_73;
      }

      if (v17)
      {
        v18 = v17 - 1;
        if (v17 != 1)
        {
          v21 = 0;
          v25 = v42 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v27 - v26;
            if (__OFSUB__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v18)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }

      goto LABEL_87;
    }

    if ((result & 0x1000000000000000) != 0)
    {
      result = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_21:
      v20 = *result;
      if (v20 == 43)
      {
        if (v18 >= 1)
        {
          if (--v18)
          {
            v21 = 0;
            if (result)
            {
              v28 = (result + 1);
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  goto LABEL_73;
                }

                v30 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  goto LABEL_73;
                }

                v21 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  goto LABEL_73;
                }

                ++v28;
                if (!--v18)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_72;
          }

          goto LABEL_73;
        }

        goto LABEL_88;
      }

      if (v20 != 45)
      {
        if (v18)
        {
          v21 = 0;
          if (result)
          {
            while (1)
            {
              v34 = *result - 48;
              if (v34 > 9)
              {
                goto LABEL_73;
              }

              v35 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_73;
              }

              v21 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_73;
              }

              ++result;
              if (!--v18)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_73:
        v21 = 0;
        LOBYTE(v18) = 1;
        goto LABEL_74;
      }

      if (v18 >= 1)
      {
        if (--v18)
        {
          v21 = 0;
          if (result)
          {
            v22 = (result + 1);
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_73;
              }

              v24 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_73;
              }

              v21 = v24 - v23;
              if (__OFSUB__(v24, v23))
              {
                goto LABEL_73;
              }

              ++v22;
              if (!--v18)
              {
                goto LABEL_74;
              }
            }
          }

LABEL_72:
          LOBYTE(v18) = 0;
LABEL_74:
          v43 = v18;
          v39 = v18;
          goto LABEL_75;
        }

        goto LABEL_73;
      }

      goto LABEL_86;
    }

LABEL_83:
    result = sub_1004A67E4();
    v18 = v41;
    goto LABEL_21;
  }

  v43 = 0;
  v21 = sub_10010C28C(result, v16, 10);
  v39 = v40;
LABEL_75:

  if (v39)
  {
    return 0;
  }

  else
  {
    return v21;
  }
}

uint64_t sub_100276114(_OWORD *a1, uint64_t a2, char **a3, void *a4)
{
  swift_beginAccess();
  if (*(a2 + 16) != 2)
  {
    goto LABEL_3;
  }

  swift_beginAccess();
  v9 = a1[10];
  v10 = a1[8];
  v58 = a1[9];
  v59 = v9;
  v11 = a1[10];
  v60[0] = a1[11];
  *(v60 + 9) = *(a1 + 185);
  v12 = a1[6];
  v13 = a1[4];
  v54 = a1[5];
  v55 = v12;
  v14 = a1[6];
  v15 = a1[8];
  v56 = a1[7];
  v57 = v15;
  v16 = a1[2];
  v50 = a1[1];
  v51 = v16;
  v17 = a1[4];
  v19 = a1[1];
  v18 = a1[2];
  v52 = a1[3];
  v53 = v17;
  v69 = v58;
  v70 = v11;
  v71[0] = a1[11];
  *(v71 + 9) = *(a1 + 185);
  v65 = v54;
  v66 = v14;
  v67 = v56;
  v68 = v10;
  v61 = v19;
  v62 = v18;
  v63 = v52;
  v64 = v13;
  if (sub_100021348(&v61) != 1)
  {
    v72[8] = v69;
    v72[9] = v70;
    v73[0] = v71[0];
    *(v73 + 9) = *(v71 + 9);
    v72[4] = v65;
    v72[5] = v66;
    v72[6] = v67;
    v72[7] = v68;
    v72[0] = v61;
    v72[1] = v62;
    v72[2] = v63;
    v72[3] = v64;
    v48[8] = v58;
    v48[9] = v59;
    v49[0] = v60[0];
    *(v49 + 9) = *(v60 + 9);
    v48[4] = v54;
    v48[5] = v55;
    v48[6] = v56;
    v48[7] = v57;
    v48[0] = v50;
    v48[1] = v51;
    v48[2] = v52;
    v48[3] = v53;
    sub_1002764DC(v48, v46);
    v31 = sub_1002A4C50(v72, a3, a4);
    if (v4)
    {
      sub_100276474(&v50);
    }

    else
    {
      v32 = v31;
      sub_100276474(&v50);
      swift_beginAccess();
      *(a2 + 16) = v32;
    }

    sub_100276450(v44);
    swift_beginAccess();
    v33 = a1[10];
    v46[8] = a1[9];
    v46[9] = v33;
    v47[0] = a1[11];
    *(v47 + 9) = *(a1 + 185);
    v34 = a1[6];
    v46[4] = a1[5];
    v46[5] = v34;
    v35 = a1[8];
    v46[6] = a1[7];
    v46[7] = v35;
    v36 = a1[2];
    v46[0] = a1[1];
    v46[1] = v36;
    v37 = a1[4];
    v46[2] = a1[3];
    v46[3] = v37;
    v38 = v44[9];
    a1[9] = v44[8];
    a1[10] = v38;
    a1[11] = v45[0];
    *(a1 + 185) = *(v45 + 9);
    v39 = v44[5];
    a1[5] = v44[4];
    a1[6] = v39;
    v40 = v44[7];
    a1[7] = v44[6];
    a1[8] = v40;
    v41 = v44[1];
    a1[1] = v44[0];
    a1[2] = v41;
    v42 = v44[3];
    a1[3] = v44[2];
    a1[4] = v42;
    v30 = v46;
  }

  else
  {
LABEL_3:
    sub_100276450(&v50);
    swift_beginAccess();
    v20 = a1[10];
    v69 = a1[9];
    v70 = v20;
    v71[0] = a1[11];
    *(v71 + 9) = *(a1 + 185);
    v21 = a1[6];
    v65 = a1[5];
    v66 = v21;
    v22 = a1[8];
    v67 = a1[7];
    v68 = v22;
    v23 = a1[2];
    v61 = a1[1];
    v62 = v23;
    v24 = a1[4];
    v63 = a1[3];
    v64 = v24;
    v25 = v59;
    a1[9] = v58;
    a1[10] = v25;
    a1[11] = v60[0];
    *(a1 + 185) = *(v60 + 9);
    v26 = v55;
    a1[5] = v54;
    a1[6] = v26;
    v27 = v57;
    a1[7] = v56;
    a1[8] = v27;
    v28 = v51;
    a1[1] = v50;
    a1[2] = v28;
    v29 = v53;
    a1[3] = v52;
    a1[4] = v29;
    v30 = &v61;
  }

  return sub_100276474(v30);
}

double sub_100276450(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
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

uint64_t sub_100276474(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D65E0, &unk_1004EB070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100276514(_OWORD *a1, uint64_t a2, char **a3)
{
  swift_beginAccess();
  if (*(a2 + 16) != 2)
  {
    goto LABEL_3;
  }

  swift_beginAccess();
  v7 = a1[10];
  v8 = a1[8];
  v56 = a1[9];
  v57 = v7;
  v9 = a1[10];
  v58[0] = a1[11];
  *(v58 + 9) = *(a1 + 185);
  v10 = a1[6];
  v11 = a1[4];
  v52 = a1[5];
  v53 = v10;
  v12 = a1[6];
  v13 = a1[8];
  v54 = a1[7];
  v55 = v13;
  v14 = a1[2];
  v48 = a1[1];
  v49 = v14;
  v15 = a1[4];
  v17 = a1[1];
  v16 = a1[2];
  v50 = a1[3];
  v51 = v15;
  v67 = v56;
  v68 = v9;
  v69[0] = a1[11];
  *(v69 + 9) = *(a1 + 185);
  v63 = v52;
  v64 = v12;
  v65 = v54;
  v66 = v8;
  v59 = v17;
  v60 = v16;
  v61 = v50;
  v62 = v11;
  if (sub_100021348(&v59) != 1)
  {
    v70[8] = v67;
    v70[9] = v68;
    v71[0] = v69[0];
    *(v71 + 9) = *(v69 + 9);
    v70[4] = v63;
    v70[5] = v64;
    v70[6] = v65;
    v70[7] = v66;
    v70[0] = v59;
    v70[1] = v60;
    v70[2] = v61;
    v70[3] = v62;
    v46[8] = v56;
    v46[9] = v57;
    v47[0] = v58[0];
    *(v47 + 9) = *(v58 + 9);
    v46[4] = v52;
    v46[5] = v53;
    v46[6] = v54;
    v46[7] = v55;
    v46[0] = v48;
    v46[1] = v49;
    v46[2] = v50;
    v46[3] = v51;
    sub_1002764DC(v46, v44);
    v29 = sub_1002993E4(v70, a3);
    if (v3)
    {
      sub_100276474(&v48);
    }

    else
    {
      v30 = v29;
      sub_100276474(&v48);
      swift_beginAccess();
      *(a2 + 16) = v30;
    }

    sub_100276450(v42);
    swift_beginAccess();
    v31 = a1[10];
    v44[8] = a1[9];
    v44[9] = v31;
    v45[0] = a1[11];
    *(v45 + 9) = *(a1 + 185);
    v32 = a1[6];
    v44[4] = a1[5];
    v44[5] = v32;
    v33 = a1[8];
    v44[6] = a1[7];
    v44[7] = v33;
    v34 = a1[2];
    v44[0] = a1[1];
    v44[1] = v34;
    v35 = a1[4];
    v44[2] = a1[3];
    v44[3] = v35;
    v36 = v42[9];
    a1[9] = v42[8];
    a1[10] = v36;
    a1[11] = v43[0];
    *(a1 + 185) = *(v43 + 9);
    v37 = v42[5];
    a1[5] = v42[4];
    a1[6] = v37;
    v38 = v42[7];
    a1[7] = v42[6];
    a1[8] = v38;
    v39 = v42[1];
    a1[1] = v42[0];
    a1[2] = v39;
    v40 = v42[3];
    a1[3] = v42[2];
    a1[4] = v40;
    v28 = v44;
  }

  else
  {
LABEL_3:
    sub_100276450(&v48);
    swift_beginAccess();
    v18 = a1[10];
    v67 = a1[9];
    v68 = v18;
    v69[0] = a1[11];
    *(v69 + 9) = *(a1 + 185);
    v19 = a1[6];
    v63 = a1[5];
    v64 = v19;
    v20 = a1[8];
    v65 = a1[7];
    v66 = v20;
    v21 = a1[2];
    v59 = a1[1];
    v60 = v21;
    v22 = a1[4];
    v61 = a1[3];
    v62 = v22;
    v23 = v57;
    a1[9] = v56;
    a1[10] = v23;
    a1[11] = v58[0];
    *(a1 + 185) = *(v58 + 9);
    v24 = v53;
    a1[5] = v52;
    a1[6] = v24;
    v25 = v55;
    a1[7] = v54;
    a1[8] = v25;
    v26 = v49;
    a1[1] = v48;
    a1[2] = v26;
    v27 = v51;
    a1[3] = v50;
    a1[4] = v27;
    v28 = &v59;
  }

  return sub_100276474(v28);
}

uint64_t sub_100276848(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_100276890(uint64_t result, int a2, int a3)
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100276AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, void *a7, uint64_t (*a8)(void), uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t (*a12)(uint64_t), void (*a13)(uint64_t *, char *, uint64_t, uint64_t, void))
{
  v113 = 0;
  v81[16] = a10;
  v82 = a6;
  v83 = a7;
  v84 = &v113;
  v85 = a8;
  v86 = a9;
  v15 = swift_allocObject();
  v16 = v15 + 1;
  sub_100276450(&v130);
  v17 = v139;
  v15[9] = v138;
  v15[10] = v17;
  v15[11] = v140[0];
  *(v15 + 185) = *(v140 + 9);
  v18 = v135;
  v15[5] = v134;
  v15[6] = v18;
  v19 = v137;
  v15[7] = v136;
  v15[8] = v19;
  v20 = v131;
  v15[1] = v130;
  v15[2] = v20;
  v21 = v133;
  v15[3] = v132;
  v15[4] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = 2;
  v77 = v15;
  v78 = v22;
  v79 = a11;
  v80 = v81;
  v73 = v15 + 1;
  v74 = UInt32.init(_:);
  v75 = 0;
  v23 = v141;
  sub_100296AD8(a5, a1, a2, a3, a4);
  if (v23)
  {
  }

  else
  {
    LODWORD(v141) = a10;
    v28 = v15 + 1;
    v125 = _swiftEmptyArrayStorage;
    v126 = v24;
    v127 = v25;
    v128 = v26;
    v129 = v27;
    sub_100295F74(a12, v76, a13, v72, 0, 0);
    swift_beginAccess();
    if (*(v22 + 16) != 2)
    {
      goto LABEL_6;
    }

    swift_beginAccess();
    v30 = v15[10];
    v31 = v15[8];
    v99 = v15[9];
    v100 = v30;
    v32 = v15[10];
    v101[0] = v15[11];
    *(v101 + 9) = *(v15 + 185);
    v33 = v15[6];
    v34 = v15[4];
    v95 = v15[5];
    v96 = v33;
    v35 = v15[6];
    v36 = v15[8];
    v97 = v15[7];
    v98 = v36;
    v37 = v15[2];
    v91 = *v16;
    v92 = v37;
    v38 = v15[4];
    v40 = *v16;
    v39 = v15[2];
    v93 = v15[3];
    v94 = v38;
    v110 = v99;
    v111 = v32;
    v112[0] = v15[11];
    *(v112 + 9) = *(v15 + 185);
    v106 = v95;
    v107 = v35;
    v108 = v97;
    v109 = v31;
    v102 = v40;
    v103 = v39;
    v104 = v93;
    v105 = v34;
    if (sub_100021348(&v102) != 1)
    {
      v122 = v110;
      v123 = v111;
      v124[0] = v112[0];
      *(v124 + 9) = *(v112 + 9);
      v118 = v106;
      v119 = v107;
      v120 = v108;
      v121 = v109;
      v114 = v102;
      v115 = v103;
      v116 = v104;
      v117 = v105;
      v89[8] = v99;
      v89[9] = v100;
      v90[0] = v101[0];
      *(v90 + 9) = *(v101 + 9);
      v89[4] = v95;
      v89[5] = v96;
      v89[6] = v97;
      v89[7] = v98;
      v89[0] = v91;
      v89[1] = v92;
      v89[2] = v93;
      v89[3] = v94;
      sub_1002764DC(v89, v87);
      v52 = sub_1002770A0(v141, a6, a7);
      if (v53)
      {
        v54 = a8(v52);

        v113 = v54 & 1;
      }

      else
      {
        v54 = v113;
      }

      sub_100276474(&v91);
      if (v54)
      {
        v55 = 0;
      }

      else
      {
        v55 = 2;
      }

      *(v22 + 16) = v55;
      v56 = v15[10];
      v87[8] = v15[9];
      v87[9] = v56;
      v88[0] = v15[11];
      *(v88 + 9) = *(v15 + 185);
      v57 = v15[6];
      v87[4] = v15[5];
      v87[5] = v57;
      v58 = v15[8];
      v87[6] = v15[7];
      v87[7] = v58;
      v59 = v15[2];
      v87[0] = *v28;
      v87[1] = v59;
      v60 = v15[4];
      v87[2] = v15[3];
      v87[3] = v60;
      v61 = v139;
      v15[9] = v138;
      v15[10] = v61;
      v15[11] = v140[0];
      *(v15 + 185) = *(v140 + 9);
      v62 = v135;
      v15[5] = v134;
      v15[6] = v62;
      v63 = v137;
      v15[7] = v136;
      v15[8] = v63;
      v64 = v131;
      *v28 = v130;
      v15[2] = v64;
      v65 = v133;
      v15[3] = v132;
      v15[4] = v65;
      v51 = v87;
    }

    else
    {
LABEL_6:
      swift_beginAccess();
      v41 = v15[10];
      v122 = v15[9];
      v123 = v41;
      v124[0] = v15[11];
      *(v124 + 9) = *(v15 + 185);
      v42 = v15[6];
      v118 = v15[5];
      v119 = v42;
      v43 = v15[8];
      v120 = v15[7];
      v121 = v43;
      v44 = v15[2];
      v114 = *v16;
      v115 = v44;
      v45 = v15[4];
      v116 = v15[3];
      v117 = v45;
      v46 = v139;
      v15[9] = v138;
      v15[10] = v46;
      v15[11] = v140[0];
      *(v15 + 185) = *(v140 + 9);
      v47 = v135;
      v15[5] = v134;
      v15[6] = v47;
      v48 = v137;
      v15[7] = v136;
      v15[8] = v48;
      v49 = v131;
      *v16 = v130;
      v15[2] = v49;
      v50 = v133;
      v15[3] = v132;
      v15[4] = v50;
      v51 = &v114;
    }

    sub_100276474(v51);
  }
}

unint64_t sub_100276FAC()
{
  result = qword_1005D65E8;
  if (!qword_1005D65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D65E8);
  }

  return result;
}

uint64_t sub_100277010(uint64_t a1, char a2, uint64_t a3, void *a4, char *a5, uint64_t (*a6)(uint64_t))
{
  v8 = sub_1002770A0(a2 & 1, a3, a4);
  if (v9)
  {
    v10 = a6(v8);

    *a5 = v10 & 1;
  }

  else
  {
    v10 = *a5;
  }

  if (v10)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1002770A0(char a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 136);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 128);
  if ((v5 & 0xF0) != 0x50)
  {
    return 0;
  }

  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  if (*(v3 + 112))
  {
    return 0;
  }

  v25 = *(v3 + 112);
  v11 = sub_10027C548(v6, v7);
  if (a1)
  {
    if (v11 != 1819112552 || v12 != 0xE400000000000000)
    {
      goto LABEL_11;
    }

LABEL_10:

    goto LABEL_12;
  }

  if (v11 == 0x6E69616C70 && v12 == 0xE500000000000000)
  {
    goto LABEL_10;
  }

LABEL_11:
  v13 = sub_1004A6D34();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v26[0] = v6;
  v26[1] = v7;
  v27 = v25;
  v28 = v5;
  v29 = v4;
  if (*(v3 + 88) == 2 || (v14 = sub_1002A8490(*(v3 + 72), *(v3 + 80)), v16 = sub_10027046C(v14, v15), v16 == 5))
  {
    v16 = 0;
  }

  if (a2 <= 0)
  {
    return 0;
  }

  result = sub_1002958F8(*(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32));
  v19 = v18 - result;
  if (!result)
  {
    v19 = 0;
  }

  if (v19 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    v21 = v18;
    v22 = 2 * v19;
    if (v22 >= a2)
    {
      v23 = a2;
    }

    else
    {
      v23 = v22;
    }

    v24 = sub_100270634(v16, v23, v20, v21, v26, a3);

    return v24;
  }

  return result;
}

uint64_t sub_1002772C8()
{
  if (v0[2])
  {

    v1 = v0[10];

    v2 = v0[19];
  }

  return _swift_deallocObject(v0, 201, 7);
}

uint64_t sub_1002773B4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9IMAP2MIME11DisplayPartO21__derived_enum_equalsySbAC_ACtFZ_0(v13, v14) & 1;
}

uint64_t DisplayPart.Attachment.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  sub_10026E678(v3, v4, v5, v6, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  *(a1 + 40) = v7;
}

__n128 DisplayPart.Attachment.contentType.setter(uint64_t a1)
{
  sub_10026E76C(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  v3 = *(v1 + 48);

  v4 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v4;
  result = *(a1 + 32);
  *(v1 + 40) = result;
  return result;
}

uint64_t DisplayPart.Attachment.contentDisposition.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  sub_10026B2E0(v1, v2);

  return v1;
}

uint64_t DisplayPart.Attachment.contentDisposition.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10026B32C(v3[7], v3[8]);
  v7 = v3[9];

  v3[7] = a1;
  v3[8] = a2;
  v3[9] = a3;
  return result;
}

uint64_t DisplayPart.Attachment.contentID.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t DisplayPart.Attachment.contentID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t DisplayPart.Attachment.encodedBytes.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t DisplayPart.Attachment.encodedBytes.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2;
  return result;
}

__n128 DisplayPart.Attachment.init(part:contentDisposition:contentType:contentTransferEncoding:estimatedDecodedSize:encodedBytes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *(a5 + 16);
  *(a9 + 8) = *a5;
  *a9 = a1;
  *(a9 + 24) = v10;
  result = *(a5 + 32);
  *(a9 + 40) = result;
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = a4;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  return result;
}

BOOL sub_1002776DC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9IMAP2MIME11DisplayPartO10AttachmentV2eeoiySbAE_AEtFZ_0(v13, v14);
}

uint64_t sub_1002777C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, void (*a8)(_OWORD *), uint64_t a9)
{
  v140 = a6;
  v73 = a1;
  v74 = a2;
  v75 = a3;
  v76 = a4;
  v12 = sub_100297350(a1, a2, a3, a4);
  v13 = sub_1002975B0(_swiftEmptyArrayStorage, v12);
  if (v13)
  {
    v15 = v13;
    v16 = v14;
    *&v124 = sub_100257570(_swiftEmptyArrayStorage);
    sub_100297A70(v15, v16, a5 & 1, &v124, v12);

    v17 = v124;
  }

  else
  {

    v17 = sub_100257570(_swiftEmptyArrayStorage);
  }

  v18 = swift_allocObject();
  v79 = &v70;
  *(v18 + 16) = v17;
  __chkstk_darwin(v18);
  v69[2] = v140;
  v69[3] = a7;
  v69[4] = a8;
  v69[5] = a9;
  v19 = swift_allocObject();
  v71 = a8;
  sub_100276450(&v103);
  v21 = v112;
  v19[9] = v111;
  v19[10] = v21;
  v19[11] = v113[0];
  *(v19 + 185) = *(v113 + 9);
  v22 = v108;
  v19[5] = v107;
  v19[6] = v22;
  v23 = v110;
  v19[7] = v109;
  v19[8] = v23;
  v24 = v104;
  v19[1] = v103;
  v19[2] = v24;
  v25 = v106;
  v19[3] = v105;
  v19[4] = v25;
  v26 = swift_allocObject();
  v72 = v69;
  *(v26 + 16) = 2;
  v27 = (v26 + 16);
  __chkstk_darwin(v26);
  v68[2] = v19;
  v68[3] = v28;
  v78 = v28;
  v68[4] = sub_1002798A4;
  v68[5] = v69;
  __chkstk_darwin(v28);
  v67[2] = v19 + 1;
  v67[3] = UInt32.init(_:);
  v67[4] = 0;
  v29 = v77;
  sub_100296AD8(3, v73, v74, v75, v76);
  if (v29)
  {
  }

  else
  {
    v76 = a9;
    v77 = a7;
    v20 = v19 + 1;
    v135 = _swiftEmptyArrayStorage;
    v136 = v30;
    v137 = v31;
    v138 = v32;
    v139 = v33;
    sub_100295F74(sub_100277324, v68, sub_100277344, v67, sub_10027989C, v18);
    swift_beginAccess();
    if (*v27 != 2)
    {
      goto LABEL_9;
    }

    swift_beginAccess();
    v35 = v19[10];
    v36 = v19[8];
    v89 = v19[9];
    v90 = v35;
    v37 = v19[10];
    v91[0] = v19[11];
    *(v91 + 9) = *(v19 + 185);
    v38 = v19[6];
    v39 = v19[4];
    v85 = v19[5];
    v86 = v38;
    v40 = v19[6];
    v41 = v19[8];
    v87 = v19[7];
    v88 = v41;
    v42 = v19[2];
    v82[0] = *v20;
    v82[1] = v42;
    v43 = v19[4];
    v45 = *v20;
    v44 = v19[2];
    v83 = v19[3];
    v84 = v43;
    v100 = v89;
    v101 = v37;
    v102[0] = v19[11];
    *(v102 + 9) = *(v19 + 185);
    v96 = v85;
    v97 = v40;
    v98 = v87;
    v99 = v36;
    v92 = v45;
    v93 = v44;
    v94 = v83;
    v95 = v39;
    if (sub_100021348(&v92) != 1)
    {
      v132 = v100;
      v133 = v101;
      v134[0] = v102[0];
      *(v134 + 9) = *(v102 + 9);
      v128 = v96;
      v129 = v97;
      v130 = v98;
      v131 = v99;
      v124 = v92;
      v125 = v93;
      v126 = v94;
      v127 = v95;
      sub_10000E268(v82, v80, &qword_1005D65E0, &unk_1004EB070);
      sub_10000E268(v82, v80, &qword_1005D65E0, &unk_1004EB070);
      v56 = v77;

      sub_1002788DC(&v124, v140, v56, v114);
      v119 = v114[4];
      v120 = v114[5];
      v121 = v114[6];
      v122 = v114[7];
      v115 = v114[0];
      v116 = v114[1];
      v117 = v114[2];
      v118 = v114[3];
      if (sub_10027971C(&v115) != 1)
      {
        v123[4] = v119;
        v123[5] = v120;
        v123[6] = v121;
        v123[7] = v122;
        v123[0] = v115;
        v123[1] = v116;
        v123[2] = v117;
        v123[3] = v118;
        v71(v123);
        sub_100025F40(v114, &qword_1005D6610, &unk_1004EC260);
      }

      sub_100025F40(v82, &qword_1005D65E0, &unk_1004EB070);
      *(v78 + 16) = 2;
      v57 = v19[10];
      v80[8] = v19[9];
      v80[9] = v57;
      v81[0] = v19[11];
      *(v81 + 9) = *(v19 + 185);
      v58 = v19[6];
      v80[4] = v19[5];
      v80[5] = v58;
      v59 = v19[8];
      v80[6] = v19[7];
      v80[7] = v59;
      v60 = v19[2];
      v80[0] = *v20;
      v80[1] = v60;
      v61 = v19[4];
      v80[2] = v19[3];
      v80[3] = v61;
      v62 = v112;
      v19[9] = v111;
      v19[10] = v62;
      v19[11] = v113[0];
      *(v19 + 185) = *(v113 + 9);
      v63 = v108;
      v19[5] = v107;
      v19[6] = v63;
      v64 = v110;
      v19[7] = v109;
      v19[8] = v64;
      v65 = v104;
      *v20 = v103;
      v19[2] = v65;
      v66 = v106;
      v19[3] = v105;
      v19[4] = v66;
      sub_100025F40(v80, &qword_1005D65E0, &unk_1004EB070);
    }

    else
    {
LABEL_9:
      swift_beginAccess();
      v46 = v19[10];
      v132 = v19[9];
      v133 = v46;
      v134[0] = v19[11];
      *(v134 + 9) = *(v19 + 185);
      v47 = v19[6];
      v128 = v19[5];
      v129 = v47;
      v48 = v19[8];
      v130 = v19[7];
      v131 = v48;
      v49 = v19[2];
      v124 = *v20;
      v125 = v49;
      v50 = v19[4];
      v126 = v19[3];
      v127 = v50;
      v51 = v112;
      v19[9] = v111;
      v19[10] = v51;
      v19[11] = v113[0];
      *(v19 + 185) = *(v113 + 9);
      v52 = v108;
      v19[5] = v107;
      v19[6] = v52;
      v53 = v110;
      v19[7] = v109;
      v19[8] = v53;
      v54 = v104;
      *v20 = v103;
      v19[2] = v54;
      v55 = v106;
      v19[3] = v105;
      v19[4] = v55;
      sub_100025F40(&v124, &qword_1005D65E0, &unk_1004EB070);
    }
  }
}

uint64_t Message.decodedAttachmentByteCountUpperBound(attachment:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    result = *(a1 + 120) - v2;
  }

  else
  {
    result = 0;
  }

  if (*(a1 + 96) >= 4u)
  {
    v4 = ceil(result * 3.0 * 0.25);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        result = v4 + 10;
        if (!__OFADD__(v4, 10))
        {
          return result;
        }

LABEL_13:
        __break(1u);
        return result;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t Message.decode(attachment:into:)(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_100270074(*(a1 + 96), a2, a3, *(a1 + 112), *(a1 + 120));
  if (!v3 && (v5 & 1) != 0)
  {
    sub_100279410();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_100277F50(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10029B748(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  result = *(*(a2 + 56) + 8 * v3);
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100277FA8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(_OWORD *))
{

  sub_1002764DC(a1, v9);
  sub_1002788DC(a1, a2, a3, v10);
  v15 = v10[4];
  v16 = v10[5];
  v17 = v10[6];
  v18 = v10[7];
  v11 = v10[0];
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  if (sub_10027971C(&v11) != 1)
  {
    v9[4] = v15;
    v9[5] = v16;
    v9[6] = v17;
    v9[7] = v18;
    v9[0] = v11;
    v9[1] = v12;
    v9[2] = v13;
    v9[3] = v14;
    a4(v9);
    sub_100025F40(v10, &qword_1005D6610, &unk_1004EC260);
  }

  return 2;
}

void sub_1002780A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_17;
  }

  v11 = *(a1 + 16);
  v72 = *a1;
  v73 = v11;
  v74 = *(a1 + 32);
  v75 = v6;
  if (*(a2 + 88) == 2 || (v12 = sub_1002A8490(*(a2 + 72), *(a2 + 80)), v14 = sub_10027046C(v12, v13), v14 == 5))
  {
    v14 = 0;
  }

  v76[0] = v72;
  v76[1] = v73;
  v77 = v74;
  sub_10028AA80(v76, &v69);
  if (v71 != 5)
  {
LABEL_31:
    sub_100279734(&v69);
    goto LABEL_32;
  }

  v15 = v70;
  if (!v70)
  {
LABEL_32:

    sub_1002764DC(a2, &v61);
    sub_100278534(a2, v14, a4, &v61);
    if (sub_100021348(&v61) == 1)
    {
      sub_1002796FC(&v53);
    }

    else
    {
      v49 = v65;
      v50 = v66;
      v51 = v67;
      v52 = v68;
      v45 = v61;
      v46 = v62;
      v47 = v63;
      v48 = v64;
      sub_100279788(&v45);
      v57 = v49;
      v58 = v50;
      v59 = v51;
      v60 = v52;
      v53 = v45;
      v54 = v46;
      v55 = v47;
      v56 = v48;
      UInt32.init(_:)(&v53);
    }

    v40 = v58;
    a5[4] = v57;
    a5[5] = v40;
    v41 = v60;
    a5[6] = v59;
    a5[7] = v41;
    v42 = v54;
    *a5 = v53;
    a5[1] = v42;
    v29 = v55;
    v30 = v56;
    goto LABEL_36;
  }

  v16 = v69;
  if ((v69 != 0x6E69616C70 || v70 != 0xE500000000000000) && (sub_1004A6D34() & 1) == 0)
  {
    if (v16 == 1819112552 && v15 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
    {
      if (a3 < 1)
      {
        sub_100279734(&v69);
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      else
      {
        v31 = sub_1002958F8(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
        v33 = v32 - v31;
        if (!v31)
        {
          v33 = 0;
        }

        if (v33 + 0x4000000000000000 < 0)
        {
          goto LABEL_44;
        }

        v34 = v31;
        v35 = v32;
        v36 = 2 * v33;
        if (v36 < a3)
        {
          a3 = v36;
        }

        sub_10000E268(a1, &v61, &qword_1005D6600, &qword_1004EB5B8);

        v37 = sub_100270634(v14, a3, v34, v35, &v72, a4);
        v39 = v38;

        sub_100025F40(a1, &qword_1005D6600, &qword_1004EB5B8);
        sub_100279734(&v69);
        if (!v39)
        {
          goto LABEL_17;
        }
      }

      *&v45 = v37;
      *(&v45 + 1) = v39;
      sub_1002797A8(&v45);
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  if (a3 < 1)
  {
    v23 = 0;
    v25 = 0xE000000000000000;
LABEL_38:
    v43 = *(a2 + 112);
    v78[0] = *(a2 + 96);
    v78[1] = v43;
    v78[2] = *(a2 + 128);
    sub_10000E268(v78, &v61, &qword_1005D6600, &qword_1004EB5B8);
    v44 = sub_1002998FC(v78);
    sub_100279734(&v69);
    *&v45 = v23;
    *(&v45 + 1) = v25;
    LOBYTE(v46) = v44;
    sub_1002797C8(&v45);
LABEL_39:
    v57 = v49;
    v58 = v50;
    v59 = v51;
    v60 = v52;
    v53 = v45;
    v54 = v46;
    v55 = v47;
    v56 = v48;
    UInt32.init(_:)(&v53);
    v65 = v57;
    v66 = v58;
    v67 = v59;
    v68 = v60;
    v61 = v53;
    v62 = v54;
    v63 = v55;
    v64 = v56;
    goto LABEL_18;
  }

  v17 = sub_1002958F8(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  v19 = v18 - v17;
  if (!v17)
  {
    v19 = 0;
  }

  if (v19 + 0x4000000000000000 >= 0)
  {
    v20 = v17;
    v21 = v18;
    v22 = 2 * v19;
    if (v22 < a3)
    {
      a3 = v22;
    }

    sub_10000E268(a1, &v61, &qword_1005D6600, &qword_1004EB5B8);

    v23 = sub_100270634(v14, a3, v20, v21, &v72, a4);
    v25 = v24;

    sub_100025F40(a1, &qword_1005D6600, &qword_1004EB5B8);
    if (v25)
    {
      goto LABEL_38;
    }

    sub_100279734(&v69);
LABEL_17:
    sub_1002796FC(&v61);
LABEL_18:
    v26 = v66;
    a5[4] = v65;
    a5[5] = v26;
    v27 = v68;
    a5[6] = v67;
    a5[7] = v27;
    v28 = v62;
    *a5 = v61;
    a5[1] = v28;
    v29 = v63;
    v30 = v64;
LABEL_36:
    a5[2] = v29;
    a5[3] = v30;
    return;
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_100278534(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = *(a1 + 136);
  if (!v7)
  {

    sub_1002796A8(a1);
LABEL_7:
    sub_1002797E4(&v94);
LABEL_24:
    v48 = v99;
    a4[4] = v98;
    a4[5] = v48;
    v49 = v101;
    a4[6] = v100;
    a4[7] = v49;
    v50 = v95;
    *a4 = v94;
    a4[1] = v50;
    v51 = v97;
    a4[2] = v96;
    a4[3] = v51;
    return;
  }

  v8 = *(a1 + 128);
  v9 = *(a1 + 112);
  v91[0] = *(a1 + 96);
  v91[1] = v9;
  v92 = v8;
  v93 = v7;
  v10 = *(a1 + 56);
  v89 = *(a1 + 40);
  v90 = v10;
  v11 = *(&v10 + 1);
  if (!*(&v10 + 1))
  {

    sub_1002796A8(a1);

    goto LABEL_7;
  }

  v13 = v90;
  v14 = *(&v89 + 1);
  v15 = v89;

  sub_10000E268(&v89, &v94, &qword_1005D6608, &qword_1004EB5C0);
  sub_1002722A8(v91, a3, &v86);

  v16 = sub_10026CF58(v15, v14, v13 & 1, v11, a3);
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v57 = v21;
  v58 = v20;
  v59 = *a1;
  v55 = v16;
  v56 = *(a1 + 32);
  if (*(a1 + 160) == 2)
  {

    v23 = 0;
    v24 = 0;
LABEL_20:
    v42 = sub_1002958F8(v17, v18, v19, v56);
    v44 = v42;
    v45 = v43;
    if (v42)
    {
      v46 = v43 - v42;
    }

    else
    {
      v46 = 0;
    }

    v47 = sub_10026FEC0(v46, a2);

    sub_1002796A8(a1);
    *v60 = v22;
    *&v60[40] = v88;
    *&v60[24] = v87;
    *&v60[8] = v86;
    *&v60[56] = v55;
    *&v61 = v58;
    *(&v61 + 1) = v57;
    *&v62 = v23;
    *(&v62 + 1) = v24;
    LOBYTE(v63) = a2;
    *(&v63 + 1) = v47;
    *&v64 = v44;
    *(&v64 + 1) = v45;
    v69 = v61;
    v70 = v62;
    v71 = v63;
    v72 = v64;
    v65 = *v60;
    v66 = *&v60[16];
    v67 = *&v60[32];
    v68 = *&v60[48];
    UInt32.init(_:)(&v65);
    v74 = v86;
    v75 = v87;
    v76 = v88;
    v73 = v59;
    v77 = v55;
    v78 = v58;
    v79 = v57;
    v80 = v23;
    v81 = v24;
    v82 = a2;
    v83 = v47;
    v84 = v44;
    v85 = v45;
    sub_1002797FC(v60, &v94);
    sub_100279834(&v73);
    v98 = v69;
    v99 = v70;
    v100 = v71;
    v101 = v72;
    v94 = v65;
    v95 = v66;
    v96 = v67;
    v97 = v68;
    goto LABEL_24;
  }

  v53 = *(a1 + 16);
  v54 = *(a1 + 24);
  v52 = *(a1 + 8);
  v25 = *(a1 + 144);
  v26 = *(a1 + 152);
  if (v25)
  {
    v27 = v26 - v25;
  }

  else
  {
    v27 = 0;
  }

  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v30 = sub_1002A84A8(0, v27, v25, v26);
  v32 = v31;
  if (v28)
  {
    v33 = v28;
    v34 = v29;
    v35 = sub_1002881FC(0, v30, v28, v29);
    v36 = sub_1002881FC(v30, v32, v33, v34);
    if (!__OFADD__(v35, v36))
    {
      v19 = v54;
      if (v35 + v36 >= v35)
      {

        v23 = sub_1004A58D4();
        v24 = v37;
        v17 = v52;
        v18 = v53;
LABEL_19:
        v22 = v59;
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v38 = v29;
  v39 = sub_1002881FC(0, v30, 0, v29);
  v40 = sub_1002881FC(v30, v32, 0, v38);
  if (__OFADD__(v39, v40))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v53;
  v19 = v54;
  if (v39 + v40 >= v39)
  {

    v23 = sub_1004A58D4();
    v24 = v41;
    v17 = v52;
    goto LABEL_19;
  }

LABEL_29:
  __break(1u);
}

void sub_1002788DC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a1 + 184) != 2)
  {

    sub_1002796A8(a1);
    goto LABEL_53;
  }

  v6 = *(a1 + 128);
  v96[1] = *(a1 + 112);
  v96[2] = v6;
  v96[0] = *(a1 + 96);
  if (!*(&v6 + 1))
  {
    if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, _swiftEmptyArrayStorage))
    {
      sub_1002A3EE0("text/plain", "", 0);
      v18 = 0uLL;
      if (v17)
      {
        v19 = v17;
        sub_10028A894(v15, v16, &v97);
        v20 = v99;
        if (v99 <= 0xFDuLL)
        {
          v58 = v97;
          v60 = v98;
          *&v103 = _swiftEmptyArrayStorage;
          sub_1002A0858(v19, &v103);

          v18 = v58;
          v22 = v60;
          v21 = v103;
        }

        else
        {

          v20 = 0;
          v21 = 0;
          v22 = 0uLL;
          v18 = 0uLL;
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0uLL;
      }

      v88 = v18;
      v89 = v22;
      *&v90 = v20;
      *(&v90 + 1) = v21;
      sub_1002780A0(&v88, a1, a2, a3, &v77);

      sub_1002796A8(a1);
LABEL_52:
      v65 = v81;
      v66 = v82;
      v67 = v83;
      v68 = v84;
      v61 = v77;
      v62 = v78;
      v63 = v79;
      v64 = v80;
      v71 = v79;
      v72 = v80;
      v69 = v77;
      v70 = v78;
      v75 = v83;
      v76 = v84;
      v73 = v81;
      v74 = v82;
      if (sub_10027971C(&v69) != 1)
      {
        v107 = v65;
        v108 = v66;
        v109 = v67;
        v110 = v68;
        v103 = v61;
        v104 = v62;
        v105 = v63;
        v106 = v64;
        goto LABEL_55;
      }

LABEL_53:
      sub_1002796FC(&v103);
LABEL_55:
      v52 = v108;
      a4[4] = v107;
      a4[5] = v52;
      v53 = v110;
      a4[6] = v109;
      a4[7] = v53;
      v54 = v104;
      *a4 = v103;
      a4[1] = v54;
      v55 = v106;
      a4[2] = v105;
      a4[3] = v55;
      return;
    }

    sub_1002796A8(a1);
    goto LABEL_30;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  v11 = *(a1 + 136);
  v12 = *(a1 + 128);
  *&v97 = v7;
  *(&v97 + 1) = v8;
  *&v98 = v9;
  *(&v98 + 1) = v10;
  v99 = v12;
  v100 = v11;
  if (*(a1 + 88) == 2)
  {
  }

  else
  {
    v23 = sub_1002A8490(*(a1 + 72), *(a1 + 80));
    v56 = a4;
    v25 = v24;

    v26 = v25;
    a4 = v56;
    v27 = sub_10027046C(v23, v26);
    if (v27 != 5)
    {
      goto LABEL_12;
    }
  }

  v27 = 0;
LABEL_12:
  v101[0] = v7;
  v101[1] = v8;
  v101[2] = v9;
  v101[3] = v10;
  v102 = v12;
  sub_10028AA80(v101, &v85);
  if (v87 != 5)
  {
    sub_100025F40(v96, &qword_1005D6600, &qword_1004EB5B8);
    sub_100279734(&v85);
    goto LABEL_29;
  }

  v28 = v86;
  if (!v86)
  {
    sub_100025F40(v96, &qword_1005D6600, &qword_1004EB5B8);
LABEL_29:
    sub_100278534(a1, v27, a3, &v88);
    if (sub_100021348(&v88) != 1)
    {
      v73 = v92;
      v74 = v93;
      v75 = v94;
      v76 = v95;
      v69 = v88;
      v70 = v89;
      v71 = v90;
      v72 = v91;
      sub_100279788(&v69);
      v107 = v73;
      v108 = v74;
      v109 = v75;
      v110 = v76;
      v103 = v69;
      v104 = v70;
      v105 = v71;
      v106 = v72;
      UInt32.init(_:)(&v103);
      goto LABEL_51;
    }

LABEL_30:
    sub_1002796FC(&v77);
    goto LABEL_52;
  }

  v29 = a4;
  v30 = v85;
  if ((v85 != 0x6E69616C70 || v86 != 0xE500000000000000) && (sub_1004A6D34() & 1) == 0)
  {
    sub_100025F40(v96, &qword_1005D6600, &qword_1004EB5B8);
    if (v30 == 1819112552 && v28 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
    {
      if (a2 < 1)
      {
        sub_100279734(&v85);

        sub_1002796A8(a1);
        v48 = 0;
        v50 = 0xE000000000000000;
        a4 = v29;
      }

      else
      {
        v41 = sub_1002958F8(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
        v43 = v42 - v41;
        if (!v41)
        {
          v43 = 0;
        }

        if (v43 + 0x4000000000000000 < 0)
        {
          goto LABEL_61;
        }

        v44 = v41;
        v45 = v42;
        v46 = 2 * v43;
        if (v46 >= a2)
        {
          v47 = a2;
        }

        else
        {
          v47 = v46;
        }

        sub_10000E268(v96, &v103, &qword_1005D6600, &qword_1004EB5B8);

        v48 = sub_100270634(v27, v47, v44, v45, &v97, a3);
        v50 = v49;

        sub_100025F40(v96, &qword_1005D6600, &qword_1004EB5B8);
        sub_100279734(&v85);

        sub_1002796A8(a1);
        a4 = v29;
        if (!v50)
        {
LABEL_25:
          sub_1002796FC(&v103);
LABEL_51:
          v81 = v107;
          v82 = v108;
          v83 = v109;
          v84 = v110;
          v77 = v103;
          v78 = v104;
          v79 = v105;
          v80 = v106;
          goto LABEL_52;
        }
      }

      *&v69 = v48;
      *(&v69 + 1) = v50;
      sub_1002797A8(&v69);
      goto LABEL_50;
    }

    sub_100279734(&v85);
    a4 = v29;
    goto LABEL_29;
  }

  if (a2 < 1)
  {
    v38 = 0;
    v40 = 0xE000000000000000;
    a4 = v29;
LABEL_49:
    v51 = sub_1002998FC(v96);
    sub_100279734(&v85);

    sub_1002796A8(a1);
    *&v69 = v38;
    *(&v69 + 1) = v40;
    LOBYTE(v70) = v51;
    sub_1002797C8(&v69);
LABEL_50:
    v92 = v73;
    v93 = v74;
    v94 = v75;
    v95 = v76;
    v88 = v69;
    v89 = v70;
    v90 = v71;
    v91 = v72;
    UInt32.init(_:)(&v88);
    v107 = v92;
    v108 = v93;
    v109 = v94;
    v110 = v95;
    v103 = v88;
    v104 = v89;
    v105 = v90;
    v106 = v91;
    goto LABEL_51;
  }

  v31 = sub_1002958F8(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v33 = v32 - v31;
  if (!v31)
  {
    v33 = 0;
  }

  if (v33 + 0x4000000000000000 >= 0)
  {
    v34 = v31;
    v35 = v32;
    v36 = 2 * v33;
    if (v36 >= a2)
    {
      v37 = a2;
    }

    else
    {
      v37 = v36;
    }

    sub_10000E268(v96, &v103, &qword_1005D6600, &qword_1004EB5B8);

    v38 = sub_100270634(v27, v37, v34, v35, &v97, a3);
    v40 = v39;

    sub_100025F40(v96, &qword_1005D6600, &qword_1004EB5B8);
    a4 = v29;
    if (v40)
    {
      goto LABEL_49;
    }

    sub_100025F40(v96, &qword_1005D6600, &qword_1004EB5B8);
    sub_100279734(&v85);

    sub_1002796A8(a1);
    goto LABEL_25;
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

BOOL _s9IMAP2MIME11DisplayPartO10AttachmentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  v6 = *(a1 + 24);
  v27[0] = *(a1 + 8);
  v27[1] = v6;
  v28 = *(a1 + 40);
  v7 = *(a2 + 24);
  v25[0] = *(a2 + 8);
  v25[1] = v7;
  v26 = *(a2 + 40);
  if ((_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v27, v25) & 1) == 0 || (sub_10026B9CC(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v11 = *(a2 + 64);
  v10 = *(a2 + 72);
  if (v9 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v9 == 1)
  {
    if (v11 != 1)
    {
      return 0;
    }
  }

  else if (v9)
  {
    if (v11 < 3)
    {
      return 0;
    }

    if (*(a1 + 56) != *(a2 + 56) || v9 != v11)
    {
      v12 = *(a1 + 72);
      v13 = *(a1 + 56);
      v14 = *(a2 + 72);
      v15 = *(a1 + 64);
      v16 = sub_1004A6D34();
      v10 = v14;
      v17 = v16;
      v8 = v12;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if ((sub_10026B84C(v8, v10) & 1) == 0)
  {
    return 0;
  }

  v18 = *(a1 + 88);
  v19 = *(a2 + 88);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v19 || (*(a1 + 80) != *(a2 + 80) || v18 != v19) && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  if ((sub_10026F4F0(*(a1 + 96), *(a2 + 96)) & 1) == 0 || *(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  v20 = *(a1 + 112);
  if (v20)
  {
    v21 = *(a1 + 120) - v20;
  }

  else
  {
    v21 = 0;
  }

  v23 = *(a2 + 112);
  if (v23)
  {
    result = 0;
    if (!v20 || v21 != *(a2 + 120) - v23)
    {
      return result;
    }
  }

  else
  {
    result = v21 == 0;
    if (!v20 || v21)
    {
      return result;
    }
  }

  return v23 && v20 == v23;
}

uint64_t _s9IMAP2MIME11DisplayPartO21__derived_enum_equalsySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[5];
  v38[4] = a1[4];
  v38[5] = v3;
  v4 = a1[7];
  v38[6] = a1[6];
  v38[7] = v4;
  v5 = a1[1];
  v38[0] = *a1;
  v38[1] = v5;
  v6 = a1[3];
  v38[2] = a1[2];
  v38[3] = v6;
  v7 = sub_100279920(v38);
  v8 = sub_100279590(v38);
  if (!v7)
  {
    v17 = *v8;
    v18 = *(v8 + 8);
    v19 = *(v8 + 16);
    v20 = a2[5];
    v43 = a2[4];
    v44 = v20;
    v21 = a2[7];
    v45 = a2[6];
    v46 = v21;
    v22 = a2[1];
    v39 = *a2;
    v40 = v22;
    v23 = a2[3];
    v41 = a2[2];
    v42 = v23;
    if (!sub_100279920(&v39))
    {
      if (v24 = sub_100279590(&v39), v25 = *(v24 + 16), v17 == *v24) && v18 == *(v24 + 8) || (sub_1004A6D34())
      {
        v16 = v19 == v25;
        return v16 & 1;
      }
    }

LABEL_14:
    v16 = 0;
    return v16 & 1;
  }

  if (v7 != 1)
  {
    v43 = *(v8 + 64);
    v44 = *(v8 + 80);
    v45 = *(v8 + 96);
    v46 = *(v8 + 112);
    v39 = *v8;
    v40 = *(v8 + 16);
    v41 = *(v8 + 32);
    v42 = *(v8 + 48);
    v26 = a2[5];
    v36[4] = a2[4];
    v36[5] = v26;
    v27 = a2[7];
    v36[6] = a2[6];
    v36[7] = v27;
    v28 = a2[1];
    v36[0] = *a2;
    v36[1] = v28;
    v29 = a2[3];
    v36[2] = a2[2];
    v36[3] = v29;
    if (sub_100279920(v36) == 2)
    {
      v30 = sub_100279590(v36);
      v31 = v30[5];
      v37[4] = v30[4];
      v37[5] = v31;
      v32 = v30[7];
      v37[6] = v30[6];
      v37[7] = v32;
      v33 = v30[1];
      v37[0] = *v30;
      v37[1] = v33;
      v34 = v30[3];
      v37[2] = v30[2];
      v37[3] = v34;
      v16 = _s9IMAP2MIME11DisplayPartO10AttachmentV2eeoiySbAE_AEtFZ_0(&v39, v37);
      return v16 & 1;
    }

    goto LABEL_14;
  }

  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = a2[5];
  v43 = a2[4];
  v44 = v11;
  v12 = a2[7];
  v45 = a2[6];
  v46 = v12;
  v13 = a2[1];
  v39 = *a2;
  v40 = v13;
  v14 = a2[3];
  v41 = a2[2];
  v42 = v14;
  if (sub_100279920(&v39) != 1)
  {
    goto LABEL_14;
  }

  v15 = sub_100279590(&v39);
  if (v9 == *v15 && v10 == v15[1])
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1004A6D34();
  }

  return v16 & 1;
}

unint64_t sub_100279410()
{
  result = qword_1005D65F0;
  if (!qword_1005D65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D65F0);
  }

  return result;
}

unint64_t sub_100279468()
{
  result = qword_1005D65F8;
  if (!qword_1005D65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D65F8);
  }

  return result;
}

uint64_t sub_1002794C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 4;
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

double sub_100279518(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
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
      *(a1 + 128) = 1;
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
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 16 * -a2;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      return result;
    }

    *(a1 + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002795A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96) & 7 | (a2 << 62);
  *(result + 40) &= 0xFuLL;
  *(result + 96) = v2;
  return result;
}

uint64_t sub_1002795D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100279618(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_1002796FC(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xFFFFFFFF0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t sub_10027971C(uint64_t a1)
{
  if ((*(a1 + 40) >> 4) > 0x80000000)
  {
    return -(*(a1 + 40) >> 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100279788(uint64_t result)
{
  v1 = *(result + 96) & 7 | 0x8000000000000000;
  *(result + 40) &= 0xFuLL;
  *(result + 96) = v1;
  return result;
}

uint64_t sub_1002797A8(uint64_t result)
{
  v1 = *(result + 96) & 7 | 0x4000000000000000;
  *(result + 40) &= 0xFuLL;
  *(result + 96) = v1;
  return result;
}

uint64_t sub_1002797C8(uint64_t result)
{
  v1 = *(result + 96) & 7;
  *(result + 40) &= 0xFuLL;
  *(result + 96) = v1;
  return result;
}

double sub_1002797E4(_OWORD *a1)
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

uint64_t sub_100279864()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002798C4()
{
  if (v0[2])
  {

    v1 = v0[10];

    v2 = v0[19];
  }

  return _swift_deallocObject(v0, 201, 7);
}

void sub_1002799A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7, void (*a8)(uint64_t, char *), uint64_t a9, void *a10)
{
  sub_10027B720(3u, a1, a2, a3, a4, a10, &v29);
  if (!v10)
  {
    v14 = v36;
    *&v38 = v29;
    BYTE8(v38) = v30;
    v39 = v31;
    v40 = v32;
    *&v41 = v33;
    WORD4(v41) = v34;
    v42 = v35;
    sub_10027A644();
    v52[2] = v40;
    v52[3] = v41;
    v53 = v42;
    v52[0] = v38;
    v52[1] = v39;
    sub_100279E40(3u, a5, a8, a9);
    v54 = 0;
    sub_10027B6BC(v52);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v15 - 1;
      for (i = (v14 + 56); ; i += 88)
      {
        v18 = *(i - 2);
        v19 = *(i - 1);
        v20 = *i;
        v21 = *(i + 1);
        v22 = *(i + 2);
        v23 = *(i + 3);
        v24 = *(i + 4);
        v25 = *(i + 6);
        v26 = *(i + 7);
        v27 = i[40];
        v43[0] = *(i - 3);
        v43[1] = v18;
        v43[2] = v19;
        v44 = v20;
        v45 = v21;
        v46 = v22;
        v47 = v23;
        v48 = v24;
        v49 = v27;
        v50 = v25;
        v51 = v26;
        v29 = v43[0];
        v30 = v18;
        *&v31 = v19;
        BYTE8(v31) = v20;
        *&v32 = v21;
        *(&v32 + 1) = v22;
        v33 = v23;
        v34 = v24;
        LOBYTE(v35) = v27;
        v36 = v25;
        v37 = v26;

        sub_10027C1E4(v21, v22, v23, v24, v27);
        sub_100279DB4(v43, v28);
        sub_100279DEC(&v29);
        a6(v43);
        sub_100279DEC(v43);
        if (!v16)
        {
          break;
        }

        --v16;
      }
    }
  }
}

uint64_t UnsafeExtractedAttachment.filename.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t UnsafeExtractedAttachment.filename.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_100279C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6618, &qword_1004EB620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UnsafeExtractedAttachment.unsafeBytes.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t UnsafeExtractedAttachment.unsafeBytes.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2;
  return result;
}

double UnsafeExtractedAttachment.init(part:filename:encoding:mediaType:unsafeBytes:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *(a5 + 16);
  *&v14[7] = *a5;
  *&v14[23] = v9;
  *&v16[9] = *v14;
  *&v16[25] = *&v14[16];
  v14[39] = *(a5 + 32);
  *&v16[41] = *&v14[32];
  *&v15 = a1;
  *(&v15 + 1) = a2;
  *v16 = a3;
  v16[8] = a4;
  *&v16[56] = a6;
  v17 = a7;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v19 = a4;
  v22 = *&v14[32];
  v21 = *&v14[16];
  v20 = *v14;
  v23 = a6;
  v24 = a7;
  sub_100279DB4(&v15, &v13);
  sub_100279DEC(v18);
  v10 = *&v16[32];
  *(a8 + 32) = *&v16[16];
  *(a8 + 48) = v10;
  *(a8 + 64) = *&v16[48];
  *(a8 + 80) = v17;
  result = *&v15;
  v12 = *v16;
  *a8 = v15;
  *(a8 + 16) = v12;
  return result;
}

uint64_t sub_100279E1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 0xA)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100279E40(unsigned int a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4)
{
  v73 = a1;
  v9 = sub_10000C9C0(&qword_1005D6620, &qword_1004EB7F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v62 - v11;
  v13 = v4[8];
  v72 = *(v13 + 16);
  if (v72)
  {
    v71 = *(v4 + 56);
    if (v71 == 2)
    {
      v14 = *v4;
      sub_10027B5FC();
      swift_allocError();
      *v15 = v14;
      swift_willThrow();
    }

    v25 = v4[5];
    v70 = v4[6];
    v26 = *(v4 + 57);
    v27 = *(v4 + 8);
    v29 = v4[2];
    v28 = v4[3];
    v69 = v25;
    v30 = v4[4];
    if (v26 == 1)
    {
      v31 = v27;
      v68 = v28;
      v32 = sub_1002958F8(v27, v29, v28, v30);
      v28 = v68;
      LODWORD(v27) = v31;
      if (v32)
      {
        v34 = v33 - v32;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = 1;
    }

    sub_10029BAA0(a2, v34, v26 ^ 1, 0, 0, a3, a4, v27, v29, v28, v30);
    v36 = 0;
    v37 = (v13 + 32);
    v68 = &v75;
    v66 = v78;
    v38 = &v70[-v69];
    if (!v69)
    {
      v38 = 0;
    }

    v65 = v38;
    v64 = &v77;
    v63 = &v76;
    v67 = a2;
    while (1)
    {
      v79[0] = *v37;
      v39 = v37[1];
      v40 = v37[2];
      v41 = v37[3];
      v80 = *(v37 + 8);
      v79[2] = v40;
      v79[3] = v41;
      v79[1] = v39;
      v42 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      memmove(__dst, v37, 0x48uLL);
      if (a2)
      {
        if (a2 != 1)
        {
          v74 = 10;
          v53 = sub_10027B650(v79, v78);
          v77 = 11565;
          __chkstk_darwin(v53);
          *(&v62 - 64) = v36 == 0;
          *(&v62 - 7) = a3;
          *(&v62 - 6) = a4;
          *(&v62 - 5) = &v74;
          v44 = v68;
          v58 = v68;
          v59 = &v77;
          v46 = __chkstk_darwin(v54);
          v60 = sub_10027B688;
          v61 = v55;
          if (v71)
          {
            if (v65 < 0)
            {
              goto LABEL_48;
            }

            sub_100287598(0, v65, v69, v70, sub_10027B6A0);
          }

          else
          {
            if (v36)
            {
              (a3)(&v74, v44, v46);
            }

            v56 = &v77;
            v57 = &v83;
LABEL_39:
            (a3)(v56, *(v57 - 32), v46);
            a3(v69, v70);
            a3(&v74, v44);
          }

          a2 = v67;
          goto LABEL_41;
        }

        v74 = 13;
        v43 = sub_10027B650(v79, v78);
        v76 = 11565;
        __chkstk_darwin(v43);
        *(&v62 - 64) = v36 == 0;
        *(&v62 - 7) = a3;
        *(&v62 - 6) = a4;
        *(&v62 - 5) = &v74;
        v44 = v68;
        v58 = v68;
        v59 = &v76;
        v46 = __chkstk_darwin(v45);
        v60 = sub_10027C52C;
        v61 = v47;
        if ((v71 & 1) == 0)
        {
          if (v36)
          {
            (a3)(&v74, v44, v46);
          }

          v56 = &v76;
          v57 = &v82;
          goto LABEL_39;
        }

        a2 = v67;
        v48 = v65;
        if (v65 < 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_10027B650(v79, v78);
        v75 = 11565;
        __chkstk_darwin(&v62);
        *(&v62 - 64) = v36 == 0;
        *(&v62 - 7) = a3;
        *(&v62 - 6) = a4;
        *(&v62 - 5) = "\r\n";
        v58 = "";
        v59 = &v75;
        v51 = __chkstk_darwin(v49);
        v60 = sub_10027C52C;
        v61 = v52;
        if ((v71 & 1) == 0)
        {
          v62 = v50;
          if (v36)
          {
            (a3)("\r\n", "", v51);
          }

          (a3)(&v75, v63, v51);
          a3(v69, v70);
          a3("\r\n", "");
          goto LABEL_41;
        }

        v48 = v65;
        if (v65 < 0)
        {
          goto LABEL_46;
        }
      }

      sub_100287598(0, v48, v69, v70, sub_10027C50C);
LABEL_41:
      sub_100279E40(v73, a2, a3, a4);
      result = sub_10027B6BC(__dst);
      if (v5)
      {
        return result;
      }

      ++v36;
      v37 = (v37 + 72);
      if (v42 == v72)
      {
        return sub_10029C448(v69, v70, v71 & 1, a2);
      }
    }
  }

  v17 = *(v4 + 57);
  v18 = *(v4 + 8);
  v19 = v4[2];
  v20 = v4[3];
  v21 = v4[4];
  if (v17 == 1)
  {
    v22 = sub_1002958F8(v18, v19, v20, v21);
    if (v22)
    {
      v24 = v23 - v22;
    }

    else
    {
      v24 = 0;
    }

    return sub_10029BAA0(a2, v24, 0, 0, 0, a3, a4, v18, v19, v20, v21);
  }

  else
  {
    v35 = type metadata accessor for PartReplacement();
    (*(*(v35 - 8) + 56))(v12, 1, 1, v35);
    sub_10029BF90(a2, v12, a3, a4, v18, v19, v20, v21);
    return sub_100025F40(v12, &qword_1005D6620, &qword_1004EB7F0);
  }
}

void sub_10027A644()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = 0;
    v4 = 1;
LABEL_3:
    v5 = 72 * v3 + 89;
    do
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_25;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_10026B288(v1);
      }

      if (v3 >= *(v1 + 2))
      {
        goto LABEL_26;
      }

      sub_10027A644();
      if (v3 >= *(v1 + 2))
      {
        goto LABEL_27;
      }

      if (v1[v5] == 1)
      {
        v4 = 0;
        ++v3;
        if (v6 != v2)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }

      ++v3;
      v5 += 72;
    }

    while (v6 != v2);
    *(v0 + 64) = v1;
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  if ((*(v0 + 57) & 1) == 0)
  {
    v7 = *(v1 + 2) + 1;
    v8 = 96;
    while (--v7)
    {
      v9 = *&v1[v8];
      v8 += 72;
      if (*(v9 + 16))
      {
        return;
      }
    }

    v1 = _swiftEmptyArrayStorage;
LABEL_22:
    *(v0 + 64) = v1;
  }
}

uint64_t sub_10027A784(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v4 = *a1;
    v5 = *(a2 + 16);

    LOBYTE(v4) = SectionSpecifier.Part.isSubPart(of:)(v6);

    if (v4)
    {
      return 1;
    }
  }

  if (a1[17] && (*(a1 + 128) <= 0xFu ? (v8 = (a1[14] & 0x80) == 0, a1[14]) : (v8 = 0), v8 && ((v9 = a1[12], v9 != 10) ? (v10 = v9 == 4) : (v10 = 1), v10)))
  {
    v11 = *a1;
    v7 = 1;
    swift_beginAccess();
    v12 = *(a2 + 16);
    *(a2 + 16) = v11;
  }

  else
  {
    swift_beginAccess();
    v7 = 0;
    v13 = *(a2 + 16);
    *(a2 + 16) = 0;
  }

  return v7;
}

uint64_t sub_10027A890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v14 = a10;
  v15 = *a1;
  v185 = *(a1 + 8);
  v103 = *(a1 + 16);
  v101 = *(a1 + 32);
  v102 = *(a1 + 24);
  swift_beginAccess();
  v16 = *(a2 + 128);
  v17 = *(a2 + 96);
  v170 = *(a2 + 112);
  v171 = v16;
  v18 = *(a2 + 128);
  v172 = *(a2 + 144);
  v19 = *(a2 + 64);
  v20 = *(a2 + 32);
  v166 = *(a2 + 48);
  v167 = v19;
  v21 = *(a2 + 64);
  v22 = *(a2 + 96);
  v168 = *(a2 + 80);
  v169 = v22;
  v23 = *(a2 + 32);
  v164 = *(a2 + 16);
  v165 = v23;
  v180 = v170;
  v181 = v18;
  v182 = *(a2 + 144);
  v176 = v166;
  v177 = v21;
  v178 = v168;
  v179 = v17;
  v174 = v164;
  v173 = *(a2 + 160);
  v183 = *(a2 + 160);
  v175 = v20;
  if (sub_100021348(&v174) == 1)
  {
    swift_beginAccess();
    v24 = *(a2 + 128);
    v160 = *(a2 + 112);
    v161 = v24;
    v162 = *(a2 + 144);
    v163 = *(a2 + 160);
    v25 = *(a2 + 64);
    v156 = *(a2 + 48);
    v157 = v25;
    v26 = *(a2 + 96);
    v158 = *(a2 + 80);
    v159 = v26;
    v27 = *(a2 + 32);
    v154 = *(a2 + 16);
    v155 = v27;
    v28 = v171;
    *(a2 + 112) = v170;
    *(a2 + 128) = v28;
    *(a2 + 144) = v172;
    *(a2 + 160) = v173;
    v29 = v167;
    *(a2 + 48) = v166;
    *(a2 + 64) = v29;
    v30 = v169;
    *(a2 + 80) = v168;
    *(a2 + 96) = v30;
    v31 = v165;
    *(a2 + 16) = v164;
    *(a2 + 32) = v31;
    sub_100025F40(&v154, &qword_1005D6630, &qword_1004EB7F8);
    v32 = v15;
    goto LABEL_18;
  }

  v160 = v180;
  v161 = v181;
  v162 = v182;
  v163 = v183;
  v156 = v176;
  v157 = v177;
  v158 = v178;
  v159 = v179;
  v154 = v174;
  v155 = v175;
  v138 = 0uLL;
  LOBYTE(v139) = 2;
  v134 = v170;
  v135 = v171;
  v136 = v172;
  v137 = v173;
  v130 = v166;
  v131 = v167;
  v132 = v168;
  v133 = v169;
  v128 = v164;
  v129 = v165;
  sub_10027C144(&v128, &v121);
  v100 = v15;
  if ((sub_10027A784(&v154, a3) & 1) == 0 && (v183 & 1) == 0)
  {
    v153[0] = v180;
    v153[1] = v181;
    v153[2] = v182;
    if (sub_10025690C(*(&v176 + 1), v177, SBYTE8(v177), v178, v153))
    {
      if (BYTE8(v179) == 2)
      {
        sub_10027C17C(&v176 + 8, &v121);

        v97 = 5;
        v33 = *(&v182 + 1);
        if (*(&v182 + 1))
        {
LABEL_8:
          v150[0] = v180;
          v150[1] = v181;
          v151 = v182;
          v152 = v33;

          sub_1002722A8(v150, a8, v143);
          v98 = v143[1];
          v99 = v143[0];
          v184 = v144;
          v34 = v145;
          sub_10027C1B4(&v176 + 8);
          goto LABEL_26;
        }
      }

      else
      {
        v70 = sub_1002A8490(*(&v178 + 1), v179);
        v72 = v71;
        sub_10027C17C(&v176 + 8, &v121);

        v97 = sub_10027046C(v70, v72);
        v33 = *(&v182 + 1);
        if (*(&v182 + 1))
        {
          goto LABEL_8;
        }
      }

      sub_10027C1B4(&v176 + 8);
      v184 = 0;
      v34 = 0;
      v98 = 0u;
      v99 = 0u;
LABEL_26:
      v93 = BYTE8(v174);
      v91 = *(&v175 + 1);
      v92 = v175;
      v90 = v176;
      v73 = v178;
      if (v178)
      {
        v74 = BYTE8(v177);
        v76 = *(&v176 + 1);
        v75 = v177;
        v77 = v174;

        LOBYTE(v121) = v74 & 1;
        v78 = sub_10026C240(a8, v76, v75, v74 & 1, v73);
        v95 = v79;
        v96 = v78;

        v80 = a9;
        if (v34)
        {
LABEL_28:

          goto LABEL_31;
        }
      }

      else
      {
        v77 = v174;

        v95 = 0;
        v96 = 0;
        v80 = a9;
        if (v34)
        {
          goto LABEL_28;
        }
      }

      v99 = 0u;
      v184 = 255;
      v98 = 0u;
LABEL_31:
      v81 = sub_1002958F8(v93, v92, v91, v90);
      v94 = v82;
      swift_beginAccess();
      v83 = *(v80 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v80 + 16) = v83;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v83 = sub_1002742A0(0, *(v83 + 2) + 1, 1, v83);
        *(v80 + 16) = v83;
      }

      v86 = *(v83 + 2);
      v85 = *(v83 + 3);
      if (v86 >= v85 >> 1)
      {
        v83 = sub_1002742A0((v85 > 1), v86 + 1, 1, v83);
      }

      *(v83 + 2) = v86 + 1;
      v87 = &v83[88 * v86];
      *(v87 + 4) = v77;
      *(v87 + 5) = v96;
      *(v87 + 6) = v95;
      v87[56] = v97;
      v88 = *(&v104 + 3);
      *(v87 + 57) = v104;
      *(v87 + 15) = v88;
      *(v87 + 4) = v99;
      *(v87 + 5) = v98;
      v87[96] = v184;
      v89 = v119[0];
      *(v87 + 25) = *(v119 + 3);
      *(v87 + 97) = v89;
      *(v87 + 13) = v81;
      *(v87 + 14) = v94;
      *(v80 + 16) = v83;
      swift_endAccess();
      v35 = 1;
      v36 = *(&v182 + 1);
      if (!*(&v182 + 1))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v35 = 0;
  v36 = *(&v182 + 1);
  if (!*(&v182 + 1))
  {
    goto LABEL_11;
  }

LABEL_10:
  v146 = v180;
  v147 = v181;
  v148 = v182;
  v149 = v36;

  v37 = sub_100271A2C();
  v39 = v38;
  v41 = v40;
  v42 = v40;

  if (v42 != 2)
  {
    *&v138 = v37;
    *(&v138 + 1) = v39;
    LOBYTE(v139) = v41;
    v15 = v100;
    v14 = a10;
LABEL_14:
    swift_beginAccess();
    if (*(v14 + 16))
    {
      v43 = v174;
      v44 = (2 * *(v174 + 16)) | 1;

      sub_10027B45C(v45, v43 + 32, 0, v44, v14 + 16, v35, &v138);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    goto LABEL_17;
  }

LABEL_11:
  v15 = v100;
  v14 = a10;
  if (v35)
  {
    goto LABEL_14;
  }

LABEL_17:
  sub_100025F40(&v164, &qword_1005D6630, &qword_1004EB7F8);
  sub_10027C058(&v104);
  swift_beginAccess();
  v46 = *(a2 + 128);
  v124 = *(a2 + 112);
  v125 = v46;
  v126 = *(a2 + 144);
  v127 = *(a2 + 160);
  v47 = *(a2 + 64);
  *v123 = *(a2 + 48);
  *&v123[16] = v47;
  v48 = *(a2 + 96);
  *&v123[32] = *(a2 + 80);
  *&v123[48] = v48;
  v49 = *(a2 + 32);
  v121 = *(a2 + 16);
  v122 = v49;
  v50 = v111;
  v51 = v112;
  *(a2 + 112) = v110;
  *(a2 + 128) = v50;
  *(a2 + 144) = v51;
  *(a2 + 160) = v113;
  v52 = v107;
  *(a2 + 48) = v106;
  *(a2 + 64) = v52;
  v53 = v109;
  *(a2 + 80) = v108;
  *(a2 + 96) = v53;
  v54 = v105;
  *(a2 + 16) = v104;
  *(a2 + 32) = v54;
  sub_100025F40(&v121, &qword_1005D6630, &qword_1004EB7F8);
  v32 = *a1;
LABEL_18:
  *&v121 = v15;
  v55 = v185;
  BYTE8(v121) = v185;
  *&v122 = v103;
  *(&v122 + 1) = v102;
  *v123 = v101;
  memset(&v123[8], 0, 48);
  v123[56] = 2;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0;
  UInt32.init(_:)(&v121);
  swift_beginAccess();
  v56 = *(a2 + 128);
  v134 = *(a2 + 112);
  v135 = v56;
  v136 = *(a2 + 144);
  v137 = *(a2 + 160);
  v57 = *(a2 + 64);
  v130 = *(a2 + 48);
  v131 = v57;
  v58 = *(a2 + 96);
  v132 = *(a2 + 80);
  v133 = v58;
  v59 = *(a2 + 32);
  v128 = *(a2 + 16);
  v129 = v59;
  v60 = v125;
  *(a2 + 112) = v124;
  *(a2 + 128) = v60;
  *(a2 + 144) = v126;
  *(a2 + 160) = v127;
  v61 = *&v123[16];
  *(a2 + 48) = *v123;
  *(a2 + 64) = v61;
  v62 = *&v123[48];
  *(a2 + 80) = *&v123[32];
  *(a2 + 96) = v62;
  v63 = v122;
  *(a2 + 16) = v121;
  *(a2 + 32) = v63;

  sub_100025F40(&v128, &qword_1005D6630, &qword_1004EB7F8);
  *&v138 = v15;
  BYTE8(v138) = v55;
  *&v139 = v103;
  *(&v139 + 1) = v102;
  v140 = v101;
  *&v141 = 0;
  WORD4(v141) = 2;
  v142 = _swiftEmptyArrayStorage;
  *&v108 = _swiftEmptyArrayStorage;
  v106 = v101;
  v107 = v141;
  v104 = v138;
  v105 = v139;

  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v64, _swiftEmptyArrayStorage))
  {
    v116 = v140;
    v117 = v141;
    v118 = v142;
    v114 = v138;
    v115 = v139;
    swift_beginAccess();
    v65 = *(v14 + 64);
    v119[2] = *(v14 + 48);
    v119[3] = v65;
    v120 = *(v14 + 80);
    v66 = *(v14 + 32);
    v119[0] = *(v14 + 16);
    v119[1] = v66;
    v67 = v117;
    *(v14 + 48) = v116;
    *(v14 + 64) = v67;
    *(v14 + 80) = v118;
    v68 = v115;
    *(v14 + 16) = v114;
    *(v14 + 32) = v68;
    sub_100025F40(v119, &qword_1005D6640, &qword_1004EB800);
  }

  else
  {
    swift_beginAccess();
    if (*(v14 + 16))
    {
      sub_10027B284(&v104, v32, v32 + 32, 0, (2 * *(v32 + 16)) | 1);
    }

    swift_endAccess();
    sub_10027B6BC(&v138);
  }

  return 2;
}

uint64_t sub_10027B130(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[3];
  v9 = a1[5];
  swift_beginAccess();
  v10 = *(a6 + 96);
  v11 = *(a6 + 128);
  v26[7] = *(a6 + 112);
  v26[8] = v11;
  v27 = *(a6 + 144);
  v12 = *(a6 + 48);
  v26[2] = *(a6 + 32);
  v26[3] = v12;
  v13 = *(a6 + 80);
  v26[4] = *(a6 + 64);
  v26[5] = v13;
  v26[6] = v10;
  v14 = *(a6 + 16);
  v26[0] = *a6;
  v26[1] = v14;
  result = sub_100021348(v26);
  if (result != 1)
  {
    v17 = *a1;
    v16 = a1[1];
    v18 = *(a1 + 16);
    v19 = a1[4];
    v20 = v19 >> 59;
    if ((v19 >> 59) > 7)
    {
      if (v20 == 8)
      {
        *(a6 + 72) = v17;
        *(a6 + 80) = v16;
        *(a6 + 88) = v18 & 1;
      }

      else if (v20 == 9)
      {
        v24 = *(a1 + 17);
        v23 = a1 + 17;
        v22 = v24;
        LOWORD(v24) = *(v23 + 4);
        v25 = *(a6 + 136);
        *(a6 + 96) = v17;
        *(a6 + 104) = v16;
        *(a6 + 112) = v18;
        *(a6 + 113) = v22;
        *(a6 + 117) = v24;
        *(a6 + 119) = *(v23 + 6);
        *(a6 + 120) = v8;
        *(a6 + 128) = v19;
        *(a6 + 136) = v9;
      }
    }

    else if (v20)
    {
      if (v20 == 5)
      {
        v21 = *(a6 + 64);
        *(a6 + 40) = v17;
        *(a6 + 48) = v16;
        *(a6 + 56) = v18 & 1;
        *(a6 + 64) = v8;
      }
    }

    else
    {
      *(a6 + 144) = 1;
    }
  }

  return result;
}

uint64_t sub_10027B284(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    return result;
  }

  if ((a5 >> 1) <= a4)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (__OFSUB__(v9, a4))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = (a4 + 1);
  if (__OFSUB__(v9, a4 + 1))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    v5 = sub_100274178(0, v7, 1, v5);
LABEL_9:
    v12 = *(v5 + 2);
    v11 = *(v5 + 3);
    if (v12 >= v11 >> 1)
    {
      v5 = sub_100274178((v11 > 1), v12 + 1, 1, v5);
    }

    result = swift_unknownObjectRelease();
    *(v5 + 2) = v12 + 1;
    v13 = &v5[72 * v12];
    *(v13 + 2) = *v8;
    v14 = *(v8 + 16);
    v15 = *(v8 + 32);
    v16 = *(v8 + 48);
    *(v13 + 12) = *(v8 + 64);
    *(v13 + 4) = v15;
    *(v13 + 5) = v16;
    *(v13 + 3) = v14;
    *(v6 + 64) = v5;
    return result;
  }

  v7 = *(a3 + 8 * a4);
  if (v9 == a4 + 1)
  {
    v5 = *(v6 + 64);
    if (*(v5 + 2) + 1 != v7)
    {
      return result;
    }

    v10 = result;
    swift_unknownObjectRetain();
    v8 = v10;
    sub_10027B650(v10, v22);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (v7 >= 1)
  {
    v17 = *(v6 + 64);
    if (v7 <= *(v17 + 16))
    {
      v20 = result;
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10026B288(v17);
        v17 = result;
      }

      if (v7 > *(v17 + 16))
      {
        __break(1u);
      }

      else
      {
        sub_10027B284(v20, a2, a3, v5, a5);
        result = swift_unknownObjectRelease();
        *(v6 + 64) = v17;
      }
    }
  }

  return result;
}

uint64_t sub_10027B45C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v16 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    *(a5 + 57) = a6 & 1;
    v17 = *(a7 + 16);
    *(a5 + 40) = *a7;
    *(a5 + 56) = v17;
    return result;
  }

  if ((a4 >> 1) <= a3)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(v16, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *(a2 + 8 * a3);
  if (v9 > 0)
  {
    v7 = *(a5 + 64);
    if (v9 <= *(v7 + 16))
    {
      v25 = a5;
      v8 = a3 + 1;
      if (!__OFSUB__(v16, a3 + 1))
      {
        v13 = a2;
        v14 = a4;
        v10 = a6;
        v15 = a7;
        v11 = v9 - 1;
        v12 = result;
        swift_unknownObjectRetain();
        result = swift_isUniquelyReferenced_nonNull_native();
        if (v16 != v8)
        {
          if (result)
          {
            v22 = v15;
            v23 = v10;
LABEL_15:
            if (v9 > *(v7 + 16))
            {
              __break(1u);
              return result;
            }

            sub_10027B45C(v12, v13, v8, v14, v7 + 72 * v11 + 32, v23 & 1, v22);
            goto LABEL_17;
          }

LABEL_24:
          result = sub_10026B288(v7);
          v23 = v10;
          v22 = v15;
          v7 = result;
          goto LABEL_15;
        }

        if (result)
        {
          v18 = v15;
          v19 = v10;
LABEL_11:
          if (v9 <= *(v7 + 16))
          {
            v20 = v7 + 72 * v11;
            *(v20 + 89) = v19 & 1;
            v21 = *(v18 + 16);
            *(v20 + 72) = *v18;
            *(v20 + 88) = v21;
LABEL_17:
            result = swift_unknownObjectRelease();
            *(v25 + 64) = v7;
            return result;
          }

          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        v24 = sub_10026B288(v7);
        v19 = v10;
        v18 = v15;
        v7 = v24;
        goto LABEL_11;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  return result;
}

unint64_t sub_10027B5FC()
{
  result = qword_1005D6628;
  if (!qword_1005D6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6628);
  }

  return result;
}

__n128 sub_10027B720@<Q0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  v11 = (v10 + 16);
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  v12 = swift_allocObject();
  v13 = v12 + 16;
  sub_10027C058(&v162);
  v14 = v169;
  *(v12 + 112) = v168;
  *(v12 + 128) = v14;
  *(v12 + 144) = v170;
  *(v12 + 160) = v171;
  v15 = v165;
  *(v12 + 48) = v164;
  *(v12 + 64) = v15;
  v16 = v167;
  *(v12 + 80) = v166;
  *(v12 + 96) = v16;
  v17 = v163;
  *(v12 + 16) = v162;
  *(v12 + 32) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v110 = v12;
  v111 = v19;
  v172 = v19;
  v112 = a2;
  v113 = a3;
  v114 = a4;
  v115 = a5;
  v116 = a6;
  v117 = v18;
  v105 = v18;
  v118 = v10;
  v108 = v12 + 16;
  sub_100296AD8(a1, a2, a3, a4, a5);
  if (v106)
  {

LABEL_4:

    return result;
  }

  v104 = (v18 + 16);
  v157 = _swiftEmptyArrayStorage;
  v158 = v20;
  v159 = v21;
  v160 = v22;
  v161 = v23;
  sub_100295F74(sub_10027C0B0, v109, sub_10027C0E8, v107, 0, 0);
  swift_beginAccess();
  v25 = *(v12 + 128);
  v140 = *(v12 + 112);
  v141 = v25;
  v142 = *(v12 + 144);
  v143 = *(v12 + 160);
  v26 = *(v12 + 64);
  v136 = *(v12 + 48);
  v137 = v26;
  v27 = *(v12 + 96);
  v138 = *(v12 + 80);
  v139 = v27;
  v28 = *(v12 + 32);
  v134 = *v13;
  v135 = v28;
  if (sub_100021348(&v134) == 1)
  {
    v29 = *(v12 + 128);
    v130 = *(v12 + 112);
    v131 = v29;
    v132 = *(v12 + 144);
    v133 = *(v12 + 160);
    v30 = *(v12 + 64);
    v126 = *(v12 + 48);
    v127 = v30;
    v31 = *(v12 + 96);
    v128 = *(v12 + 80);
    v129 = v31;
    v32 = *(v12 + 32);
    v124 = *v13;
    v125 = v32;
    v33 = v169;
    *(v12 + 112) = v168;
    *(v12 + 128) = v33;
    *(v12 + 144) = v170;
    *(v12 + 160) = v171;
    v34 = v165;
    *(v12 + 48) = v164;
    *(v12 + 64) = v34;
    v35 = v167;
    *(v12 + 80) = v166;
    *(v12 + 96) = v35;
    v36 = v163;
    *v13 = v162;
    *(v12 + 32) = v36;
    sub_100025F40(&v124, &qword_1005D6630, &qword_1004EB7F8);
    v37 = v10 + 16;
    goto LABEL_39;
  }

  v155[6] = v140;
  v155[7] = v141;
  v155[8] = v142;
  v156 = v143;
  v155[2] = v136;
  v155[3] = v137;
  v155[4] = v138;
  v155[5] = v139;
  v155[0] = v134;
  v155[1] = v135;
  v119 = 0;
  v120 = 0;
  v121 = 2;
  v37 = v10 + 16;
  if (sub_10027A784(v155, v172))
  {
    v38 = 0;
    v39 = *(&v142 + 1);
    if (!*(&v142 + 1))
    {
      goto LABEL_32;
    }
  }

  else if ((v143 & 1) != 0 || (v154[0] = v140, v154[1] = v141, v154[2] = v142, (sub_10025690C(*(&v136 + 1), v137, SBYTE8(v137), v138, v154) & 1) == 0))
  {
    v38 = 0;
    v39 = *(&v142 + 1);
    if (!*(&v142 + 1))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v88 = *(&v136 + 1);
    v85 = BYTE8(v137);
    v86 = v137;
    v40 = v138;
    v100 = v140;
    v93 = v141;
    v41 = v142;
    if (BYTE8(v139) == 2)
    {

      v42 = a6;

      v91 = 5;
    }

    else
    {
      v43 = sub_1002A8490(*(&v138 + 1), v139);
      v45 = v44;

      v42 = a6;

      v91 = sub_10027046C(v43, v45);
    }

    if (*(&v41 + 1))
    {
      v151[0] = v100;
      v151[1] = v93;
      v152 = v41;
      v153 = *(&v41 + 1);

      sub_1002722A8(v151, v42, v144);
      v92 = v144[1];
      v94 = v144[0];
      v101 = v145;
      v46 = v146;
    }

    else
    {

      v101 = 0;
      v46 = 0;
      v92 = 0u;
      v94 = 0u;
    }

    v47 = BYTE8(v134);
    v48 = v135;
    v87 = v136;
    v90 = v134;

    if (v40)
    {

      LOBYTE(v124) = v85 & 1;
      v97 = sub_10026C240(a6, v88, v86, v85 & 1, v40);
      v89 = v49;
    }

    else
    {
      v97 = 0;
      v89 = 0;
    }

    if (v46)
    {
    }

    else
    {
      v92 = 0u;
      v94 = 0u;
      v101 = -1;
    }

    v50 = sub_1002958F8(v47, v48, *(&v48 + 1), v87);
    v52 = v51;
    swift_beginAccess();
    v53 = *v104;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1002742A0(0, *(v53 + 2) + 1, 1, v53);
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_1002742A0((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[88 * v55];
    *(v56 + 4) = v90;
    *(v56 + 5) = v97;
    *(v56 + 6) = v89;
    v56[56] = v91;
    v57 = *(v123 + 3);
    *(v56 + 57) = v123[0];
    *(v56 + 15) = v57;
    *(v56 + 4) = v94;
    *(v56 + 5) = v92;
    v56[96] = v101;
    v58 = v122[0];
    *(v56 + 25) = *(v122 + 3);
    *(v56 + 97) = v58;
    *(v56 + 13) = v50;
    *(v56 + 14) = v52;
    *v104 = v53;
    swift_endAccess();
    v38 = 1;
    v39 = *(&v142 + 1);
    if (!*(&v142 + 1))
    {
      goto LABEL_32;
    }
  }

  v147 = v140;
  v148 = v141;
  v149 = v142;
  v150 = v39;

  v59 = sub_100271A2C();
  v61 = v60;
  v63 = v62;
  v64 = v62;

  if (v64 != 2)
  {
    v119 = v59;
    v120 = v61;
    v121 = v63;
LABEL_35:
    swift_beginAccess();
    if (*v11)
    {
      v65 = v134;
      v66 = (2 * *(v134 + 16)) | 1;

      sub_10027B45C(v67, v65 + 32, 0, v66, v11, v38, &v119);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    goto LABEL_38;
  }

LABEL_32:
  if (v38)
  {
    goto LABEL_35;
  }

LABEL_38:
  v68 = *(v13 + 112);
  v130 = *(v13 + 96);
  v131 = v68;
  v132 = *(v13 + 128);
  v133 = *(v13 + 144);
  v69 = *(v13 + 48);
  v126 = *(v13 + 32);
  v127 = v69;
  v70 = *(v13 + 80);
  v128 = *(v13 + 64);
  v129 = v70;
  v71 = *(v13 + 16);
  v124 = *v13;
  v125 = v71;
  v72 = v169;
  *(v13 + 96) = v168;
  *(v13 + 112) = v72;
  *(v13 + 128) = v170;
  *(v13 + 144) = v171;
  v73 = v165;
  *(v13 + 32) = v164;
  *(v13 + 48) = v73;
  v74 = v167;
  *(v13 + 64) = v166;
  *(v13 + 80) = v74;
  v75 = v163;
  *v13 = v162;
  *(v13 + 16) = v75;
  sub_100025F40(&v124, &qword_1005D6630, &qword_1004EB7F8);
LABEL_39:
  swift_beginAccess();
  v76 = *(v37 + 16);
  v124 = *v37;
  v125 = v76;
  v77 = *(v37 + 48);
  v126 = *(v37 + 32);
  v127 = v77;
  *&v128 = *(v37 + 64);
  v78 = v124;
  if (!v124)
  {
    sub_10027C0F0();
    swift_allocError();
    swift_willThrow();

    goto LABEL_4;
  }

  v79 = v128;
  v80 = BYTE9(v127);
  v81 = BYTE8(v127);
  v82 = v127;
  v83 = BYTE8(v124);
  v98 = v126;
  v102 = v125;
  swift_beginAccess();
  v84 = *(v105 + 16);
  sub_10000E268(&v124, &v119, &qword_1005D6640, &qword_1004EB800);

  *a7 = v78;
  *(a7 + 8) = v83;
  result = v102;
  *(a7 + 16) = v102;
  *(a7 + 32) = v98;
  *(a7 + 48) = v82;
  *(a7 + 56) = v81;
  *(a7 + 57) = v80 & 1;
  *(a7 + 64) = v79;
  *(a7 + 72) = v84;
  return result;
}

uint64_t sub_10027BFC8()
{
  if (*(v0 + 16))
  {

    v1 = *(v0 + 80);
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10027C00C()
{
  if (v0[2])
  {

    v1 = v0[10];

    v2 = v0[19];
  }

  return _swift_deallocObject(v0, 161, 7);
}

double sub_10027C058(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10027C078()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10027C0F0()
{
  result = qword_1005D6638;
  if (!qword_1005D6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6638);
  }

  return result;
}

uint64_t sub_10027C1E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_10026E678(result, a2, a3, a4, a5);
  }

  return result;
}

__n128 sub_10027C1F8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10027C224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10027C280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10027C304(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10027C350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10027C3C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_10027C40C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10027C4B8()
{
  result = qword_1005D6648;
  if (!qword_1005D6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6648);
  }

  return result;
}

uint64_t sub_10027C548(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = a1;
  v10 = 0;
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  sub_1004A5874(v4);
  if (v3 && a2 != v3)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    do
    {
      if (*v3 - 1 < 0x7E)
      {
        v8 = v5;
        v9 = v6;
        sub_1004A58C4();
        v5 = v8;
        v6 = v9;
      }

      ++v3;
    }

    while (v3 != a2);
    return v5;
  }

  return v10;
}

uint64_t sub_10027C5F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);

  if (v3)
  {
    v5 = 0;
    v45 = a2;
    v46 = v4 + 32;
    while (1)
    {
      v12 = *(v46 + v5 + 48);
      v53 = *(v46 + v5 + 32);
      v54 = v12;
      v13 = *(v46 + v5 + 80);
      v55 = *(v46 + v5 + 64);
      v56 = v13;
      v14 = *(v46 + v5 + 16);
      v52[0] = *(v46 + v5);
      v52[1] = v14;
      v57 = v52[0];
      v58 = v14;
      v59 = v53;
      v60 = v12;
      v61 = v55;
      v62 = v13;
      if (v5)
      {
        sub_100275568(v52, pErrorCode);
        v65._countAndFlagsBits = 8236;
        v65._object = 0xE200000000000000;
        sub_1004A5994(v65);
        v15 = *(&v57 + 1);
        if (!*(&v57 + 1))
        {
          break;
        }
      }

      else
      {
        sub_100275568(v52, pErrorCode);
        v15 = *(&v57 + 1);
        if (!*(&v57 + 1))
        {
          break;
        }
      }

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (!v16 || __PAIR128__(v15, v57) == v58 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      *pErrorCode = sub_100274EBC();
      v51 = v33;
      v66._countAndFlagsBits = 15392;
      v66._object = 0xE200000000000000;
      sub_1004A5994(v66);
      v67._countAndFlagsBits = sub_1002730BC(a2);
      sub_1004A5994(v67);

      v68._countAndFlagsBits = 62;
      v68._object = 0xE100000000000000;
      sub_1004A5994(v68);
      sub_1002755F4(&v57);
      v10._countAndFlagsBits = *pErrorCode;
      v11 = v51;
LABEL_5:
      v10._object = v11;
      sub_1004A5994(v10);

      v5 += 96;
      if (!--v3)
      {
        goto LABEL_32;
      }
    }

    if (*(&v61 + 1) >> 14 < v61 >> 14)
    {
      __break(1u);
    }

    v47 = v5;
    v48 = v3;
    v17 = sub_1004A6404();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    pErrorCode[0] = U_ZERO_ERROR;
    NFCInstance = unorm2_getNFCInstance();
    v25 = pErrorCode[0];
    if (NFCInstance && pErrorCode[0] <= U_ZERO_ERROR)
    {
      v26 = sub_1002A7678(v17, v19, v21, v23);
      v31 = v27;
      if (v27)
      {
        v29 = v26;
      }

      else
      {
        v29 = sub_1004A5864();
        v31 = v34;
      }

      if ((*(a2 + 96) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_1002755A0();
      swift_allocError();
      *v28 = v25;
      *(v28 + 4) = 0;
      swift_willThrow();
      v29 = sub_1004A5864();
      v31 = v30;

      if ((*(a2 + 96) & 1) == 0)
      {
LABEL_26:
        v32 = *(a2 + 88);
LABEL_27:
        v49 = v32;
        sub_10027EE28(&v49, v29, v31, pErrorCode);

        *(a2 + 88) = v32;
        *(a2 + 96) = 0;
        v36 = *pErrorCode;
        v35 = v51;
        v37 = v59;
        v38 = v60;
        pErrorCode[0] = U_ZERO_ERROR;
        v39 = unorm2_getNFCInstance();
        v40 = pErrorCode[0];
        if (v39 && pErrorCode[0] <= U_ZERO_ERROR)
        {
          v41 = sub_1002A7678(v37, *(&v37 + 1), v38, *(&v38 + 1));
          v9 = v42;
          if (v42)
          {
            v7 = v41;
          }

          else
          {
            v7 = sub_1004A5864();
            v9 = v43;
          }
        }

        else
        {
          sub_1002755A0();
          swift_allocError();
          *v6 = v40;
          *(v6 + 4) = 0;
          swift_willThrow();
          v7 = sub_1004A5864();
          v9 = v8;
        }

        v3 = v48;
        *pErrorCode = v7;
        v51 = v9;

        v63._countAndFlagsBits = 64;
        v63._object = 0xE100000000000000;
        sub_1004A5994(v63);

        v64._countAndFlagsBits = v36;
        v64._object = v35;
        sub_1004A5994(v64);

        sub_1002755F4(&v57);
        v10._countAndFlagsBits = *pErrorCode;
        v11 = v51;
        a2 = v45;
        v5 = v47;
        goto LABEL_5;
      }
    }

    pErrorCode[0] = U_ZERO_ERROR;
    v32 = uidna_openUTS46(0x3Cu, pErrorCode);
    goto LABEL_27;
  }

LABEL_32:

  return 0;
}

uint64_t sub_10027CA8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s9IMAP2MIME6HeaderO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

unint64_t Header.field.getter()
{
  result = 0x6275732D6F747561;
  switch(*(v0 + 96))
  {
    case 1:
      return result;
    case 2:
      result = 6513506;
      break;
    case 3:
      result = 25443;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x2D746E65746E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0x2D746E65746E6F63;
      break;
    case 0xA:
      result = 1702125924;
      break;
    case 0xB:
      result = 1836020326;
      break;
    case 0xC:
      result = 0x64692D7473696CLL;
      break;
    case 0xD:
      result = 0x2D6567617373656DLL;
      break;
    case 0xE:
      result = 0x7265762D656D696DLL;
      break;
    case 0xF:
      result = 0x69726F6972702D78;
      break;
    case 0x10:
      result = 0x6465766965636572;
      break;
    case 0x11:
      result = 0x702D6E7275746572;
      break;
    case 0x12:
      result = 0x7463656A627573;
      break;
    case 0x13:
      result = 28532;
      break;
    case 0x14:
      v4 = v0;
      v3 = *v0;
      v2 = *(v4 + 8);

      result = v3;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

void sub_10027D114(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 37) | (*(a1 + 39) << 16);
  v12 = *(a1 + 33) | ((*&v11 & 0xFFFFFFLL) << 32);
  switch(v11 >> 19)
  {
    case 1u:
      if (v6)
      {
        v66 = &v5[-v6];
      }

      else
      {
        v66 = 0;
      }

      if (v66 < 0)
      {
        goto LABEL_171;
      }

      v67 = sub_1002A84A8(0, v66, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v67, v68, v69, v70);
        goto LABEL_144;
      }

      v141 = v67;
      v142 = v68;
      if (v69)
      {
        v143 = v69;
        v144 = v70;
        v145 = sub_1002881FC(0, v67, v69, v70);
        v146 = sub_1002881FC(v141, v142, v143, v144);
        if (!__OFADD__(v145, v146))
        {
          if (v145 + v146 >= v145)
          {
            goto LABEL_143;
          }

          goto LABEL_192;
        }

        goto LABEL_182;
      }

      v175 = v70;
      v176 = sub_1002881FC(0, v67, 0, v70);
      v177 = sub_1002881FC(v141, v142, 0, v175);
      if (__OFADD__(v176, v177))
      {
LABEL_202:
        __break(1u);
        goto LABEL_203;
      }

      if (v176 + v177 < v176)
      {
LABEL_212:
        __break(1u);
        goto LABEL_213;
      }

LABEL_143:
      sub_1004A58D4();
LABEL_144:
      v7 = v71;
      v9 = sub_1004A5814();
      v3 = v178;

      v179._rawValue = &off_1005AA7A0;
      v200._countAndFlagsBits = v9;
      v200._object = v3;
      v39 = sub_1004A6AF4(v179, v200);

      if (v39 >= 3)
      {
LABEL_146:
        v7 = 0;
LABEL_147:
        v9 = 0;
        v3 = 0;
LABEL_148:
        v35 = 0;
        v41 = 0;
        v42 = 0;
        LOBYTE(v39) = 0;
        v40 = 0;
        v38 = 0uLL;
        v37 = 0uLL;
        v36 = 0uLL;
        v43 = -1;
      }

      else
      {
        v42 = 0;
        v40 = 0;
        v43 = 1;
      }

LABEL_165:
      *a3 = v40 | v39;
      *(a3 + 8) = v7;
      *(a3 + 16) = v9;
      *(a3 + 24) = v3;
      *(a3 + 32) = v42 | v41;
      *(a3 + 40) = v38;
      *(a3 + 56) = v37;
      *(a3 + 72) = v36;
      *(a3 + 88) = v35;
      *(a3 + 96) = v43;
      return;
    case 2u:
      v53 = sub_1002A8490(*a1, v5);
      sub_1002A062C(v53, v54, a2);
      v7 = v55;
      v39 = sub_1002733C8();

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 2;
      goto LABEL_165;
    case 3u:
      v56 = sub_1002A8490(*a1, v5);
      sub_1002A062C(v56, v57, a2);
      v7 = v58;
      v39 = sub_1002733C8();

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 3;
      goto LABEL_165;
    case 4u:
      if (v6)
      {
        v44 = &v5[-v6];
      }

      else
      {
        v44 = 0;
      }

      if (v44 < 0)
      {
        goto LABEL_168;
      }

      v45 = sub_1002A84A8(0, v44, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v45, v46, v47, v48);
LABEL_132:
        v39 = v49;
        v7 = v50;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 4;
        goto LABEL_165;
      }

      v3 = v45;
      v129 = v46;
      if (!v47)
      {
        v169 = v48;
        v9 = sub_1002881FC(0, v45, 0, v48);
        v170 = sub_1002881FC(v3, v129, 0, v169);
        if (__OFADD__(v9, v170))
        {
LABEL_199:
          __break(1u);
          goto LABEL_200;
        }

        if (v9 + v170 < v9)
        {
LABEL_209:
          __break(1u);
          goto LABEL_210;
        }

LABEL_131:
        v49 = sub_1004A58D4();
        goto LABEL_132;
      }

      v130 = v47;
      v131 = v48;
      v9 = sub_1002881FC(0, v45, v47, v48);
      v132 = sub_1002881FC(v3, v129, v130, v131);
      if (!__OFADD__(v9, v132))
      {
        if (v9 + v132 < v9)
        {
LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

        goto LABEL_131;
      }

      goto LABEL_179;
    case 5u:
      v89 = sub_10026CF58(*a1, v5, v7 & 1, v9, a2);
      v7 = v90;
      v9 = v91;
      v42 = 0;
      v40 = v89 & 0xFFFFFFFFFFFFFF00;
      v43 = 5;
      LOBYTE(v39) = v89;
      goto LABEL_165;
    case 6u:
      if (v6)
      {
        v99 = &v5[-v6];
      }

      else
      {
        v99 = 0;
      }

      if (v99 < 0)
      {
        goto LABEL_175;
      }

      v100 = sub_1002A84A8(0, v99, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v100, v101, v102, v103);
      }

      else
      {
        v3 = v100;
        v161 = v101;
        if (v102)
        {
          v162 = v102;
          v163 = v103;
          v9 = sub_1002881FC(0, v100, v102, v103);
          v164 = sub_1002881FC(v3, v161, v162, v163);
          if (__OFADD__(v9, v164))
          {
LABEL_186:
            __break(1u);
            goto LABEL_187;
          }

          if (v9 + v164 < v9)
          {
LABEL_196:
            __break(1u);
            goto LABEL_197;
          }
        }

        else
        {
          v187 = v103;
          v9 = sub_1002881FC(0, v100, 0, v103);
          v188 = sub_1002881FC(v3, v161, 0, v187);
          if (__OFADD__(v9, v188))
          {
LABEL_206:
            __break(1u);
            goto LABEL_207;
          }

          if (v9 + v188 < v9)
          {
LABEL_216:
            __break(1u);
            JUMPOUT(0x10027DE6CLL);
          }
        }

        v104 = sub_1004A58D4();
      }

      v39 = v104;
      v7 = v105;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 6;
      goto LABEL_165;
    case 7u:
      if (v6)
      {
        v59 = &v5[-v6];
      }

      else
      {
        v59 = 0;
      }

      if (v59 < 0)
      {
        goto LABEL_169;
      }

      v60 = sub_1002A84A8(0, v59, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v60, v61, v62, v63);
LABEL_136:
        v39 = v64;
        v7 = v65;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 7;
        goto LABEL_165;
      }

      v3 = v60;
      v133 = v61;
      if (!v62)
      {
        v171 = v63;
        v9 = sub_1002881FC(0, v60, 0, v63);
        v172 = sub_1002881FC(v3, v133, 0, v171);
        if (__OFADD__(v9, v172))
        {
LABEL_200:
          __break(1u);
          goto LABEL_201;
        }

        if (v9 + v172 < v9)
        {
LABEL_210:
          __break(1u);
          goto LABEL_211;
        }

LABEL_135:
        v64 = sub_1004A58D4();
        goto LABEL_136;
      }

      v134 = v62;
      v135 = v63;
      v9 = sub_1002881FC(0, v60, v62, v63);
      v136 = sub_1002881FC(v3, v133, v134, v135);
      if (!__OFADD__(v9, v136))
      {
        if (v9 + v136 < v9)
        {
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        goto LABEL_135;
      }

      goto LABEL_180;
    case 8u:
      v116 = sub_1002A8490(*a1, v5);
      LOBYTE(v39) = sub_10027046C(v116, v117);

      v42 = 0;
      v40 = 0;
      v43 = 8;
      goto LABEL_165;
    case 9u:
      v52 = *(a1 + 40);
      *&v192 = *a1;
      *(&v192 + 1) = v5;
      LOBYTE(v193) = v7;
      *(&v193 + 1) = v8;
      HIBYTE(v193) = BYTE6(v8);
      *(&v193 + 5) = WORD2(v8);
      v194 = v9;
      LOBYTE(v195) = v10;
      *(&v195 + 1) = v12;
      HIBYTE(v195) = BYTE6(v12) & 7;
      *(&v195 + 5) = WORD2(v12);
      v196.n128_u64[0] = v52;
      v38 = sub_1002722A8(&v192, a2, v189);
      v42 = 0;
      LOBYTE(v39) = v189[0];
      v7 = v189[1];
      v9 = v189[2];
      v3 = v189[3];
      v41 = v190;
      v40 = v189[0] & 0xFFFFFFFFFFFFFF00;
      v38.n128_u64[0] = v191;
      v43 = 9;
      goto LABEL_165;
    case 0xAu:
      if (v6)
      {
        v109 = &v5[-v6];
      }

      else
      {
        v109 = 0;
      }

      if (v109 < 0)
      {
        goto LABEL_176;
      }

      v110 = sub_1002A84A8(0, v109, v6, v5);
      sub_1002A92B0(v110, v111, v112, v113);
      v39 = v114;
      v7 = v115;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 10;
      goto LABEL_165;
    case 0xBu:
      sub_1002752CC(*a1, v5, a2, &v192);

      v3 = v194;
      if (v194)
      {
        v35 = v199;
        v36 = v198;
        v37 = v197;
        v38 = v196;
        LOBYTE(v39) = v192;
        v7 = *(&v192 + 1);
        v40 = v192 & 0xFFFFFFFFFFFFFF00;
        v41 = v195;
        v9 = v193;
        v42 = v195 & 0xFFFFFFFFFFFFFF00;
        v43 = 11;
        goto LABEL_165;
      }

      v7 = 0;
      v9 = 0;
      goto LABEL_148;
    case 0xCu:
      v39 = sub_100286ECC(*a1, v5);
      v7 = v51;

      if (!v7)
      {
        goto LABEL_147;
      }

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 12;
      goto LABEL_165;
    case 0xDu:
      if (v6)
      {
        v92 = &v5[-v6];
      }

      else
      {
        v92 = 0;
      }

      if (v92 < 0)
      {
        goto LABEL_174;
      }

      v93 = sub_1002A84A8(0, v92, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v93, v94, v95, v96);
      }

      else
      {
        v3 = v93;
        v157 = v94;
        if (v95)
        {
          v158 = v95;
          v159 = v96;
          v9 = sub_1002881FC(0, v93, v95, v96);
          v160 = sub_1002881FC(v3, v157, v158, v159);
          if (__OFADD__(v9, v160))
          {
LABEL_185:
            __break(1u);
            goto LABEL_186;
          }

          if (v9 + v160 < v9)
          {
LABEL_195:
            __break(1u);
            goto LABEL_196;
          }
        }

        else
        {
          v185 = v96;
          v9 = sub_1002881FC(0, v93, 0, v96);
          v186 = sub_1002881FC(v3, v157, 0, v185);
          if (__OFADD__(v9, v186))
          {
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          if (v9 + v186 < v9)
          {
LABEL_215:
            __break(1u);
            goto LABEL_216;
          }
        }

        v97 = sub_1004A58D4();
      }

      v39 = v97;
      v7 = v98;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 13;
      goto LABEL_165;
    case 0xEu:
      if (v6)
      {
        v28 = &v5[-v6];
      }

      else
      {
        v28 = 0;
      }

      if (v28 < 0)
      {
        goto LABEL_167;
      }

      v29 = sub_1002A84A8(0, v28, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v29, v30, v31, v32);
LABEL_128:
        v39 = v33;
        v7 = v34;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 14;
        goto LABEL_165;
      }

      v3 = v29;
      v125 = v30;
      if (!v31)
      {
        v167 = v32;
        v9 = sub_1002881FC(0, v29, 0, v32);
        v168 = sub_1002881FC(v3, v125, 0, v167);
        if (__OFADD__(v9, v168))
        {
LABEL_198:
          __break(1u);
          goto LABEL_199;
        }

        if (v9 + v168 < v9)
        {
LABEL_208:
          __break(1u);
          goto LABEL_209;
        }

LABEL_127:
        v33 = sub_1004A58D4();
        goto LABEL_128;
      }

      v126 = v31;
      v127 = v32;
      v9 = sub_1002881FC(0, v29, v31, v32);
      v128 = sub_1002881FC(v3, v125, v126, v127);
      if (!__OFADD__(v9, v128))
      {
        if (v9 + v128 < v9)
        {
LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

        goto LABEL_127;
      }

      goto LABEL_178;
    case 0xFu:
      LOWORD(v39) = sub_10027EC8C(*a1, v5);

      if ((v39 & 0x100) != 0)
      {
        goto LABEL_146;
      }

      v42 = 0;
      v40 = 0;
      v43 = 15;
      goto LABEL_165;
    case 0x10u:
      if (v6)
      {
        v21 = &v5[-v6];
      }

      else
      {
        v21 = 0;
      }

      if (v21 < 0)
      {
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
      }

      else
      {
        v22 = sub_1002A84A8(0, v21, v6, v5);
        if (v7)
        {
          sub_1002A92B0(v22, v23, v24, v25);
LABEL_124:
          v39 = v26;
          v7 = v27;

          v42 = 0;
          v40 = v39 & 0xFFFFFFFFFFFFFF00;
          v43 = 16;
          goto LABEL_165;
        }

        v3 = v22;
        v121 = v23;
        if (!v24)
        {
          v165 = v25;
          v9 = sub_1002881FC(0, v22, 0, v25);
          v166 = sub_1002881FC(v3, v121, 0, v165);
          if (__OFADD__(v9, v166))
          {
LABEL_197:
            __break(1u);
            goto LABEL_198;
          }

          if (v9 + v166 < v9)
          {
LABEL_207:
            __break(1u);
            goto LABEL_208;
          }

LABEL_123:
          v26 = sub_1004A58D4();
          goto LABEL_124;
        }

        v122 = v24;
        v123 = v25;
        v9 = sub_1002881FC(0, v22, v24, v25);
        v124 = sub_1002881FC(v3, v121, v122, v123);
        if (!__OFADD__(v9, v124))
        {
          if (v9 + v124 < v9)
          {
LABEL_187:
            __break(1u);
            goto LABEL_188;
          }

          goto LABEL_123;
        }
      }

      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    case 0x11u:
      if (v6)
      {
        v72 = &v5[-v6];
      }

      else
      {
        v72 = 0;
      }

      if (v72 < 0)
      {
        goto LABEL_172;
      }

      v73 = sub_1002A84A8(0, v72, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v73, v74, v75, v76);
      }

      else
      {
        v3 = v73;
        v147 = v74;
        if (v75)
        {
          v148 = v75;
          v149 = v76;
          v9 = sub_1002881FC(0, v73, v75, v76);
          v150 = sub_1002881FC(v3, v147, v148, v149);
          if (__OFADD__(v9, v150))
          {
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          if (v9 + v150 < v9)
          {
LABEL_193:
            __break(1u);
            goto LABEL_194;
          }
        }

        else
        {
          v180 = v76;
          v9 = sub_1002881FC(0, v73, 0, v76);
          v181 = sub_1002881FC(v3, v147, 0, v180);
          if (__OFADD__(v9, v181))
          {
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }

          if (v9 + v181 < v9)
          {
LABEL_213:
            __break(1u);
            goto LABEL_214;
          }
        }

        v77 = sub_1004A58D4();
      }

      v39 = v77;
      v7 = v78;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 17;
      goto LABEL_165;
    case 0x12u:
      v106 = sub_1002A8490(*a1, v5);
      v39 = sub_1002A062C(v106, v107, a2);
      v7 = v108;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 18;
      goto LABEL_165;
    case 0x13u:
      v118 = sub_1002A8490(*a1, v5);
      sub_1002A062C(v118, v119, a2);
      v7 = v120;
      v39 = sub_1002733C8();

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 19;
      goto LABEL_165;
    case 0x14u:
      v79 = v7 | (v8 << 8);
      v80 = sub_10027C548(*a1, v5);
      v7 = v81;
      if (v79)
      {
        v82 = v9 - v79;
      }

      else
      {
        v82 = 0;
      }

      if (v82 < 0)
      {
        goto LABEL_173;
      }

      v39 = v80;
      v83 = sub_1002A84A8(0, v82, v79, v9);
      if (v10)
      {
        sub_1002A92B0(v83, v84, v85, v86);
      }

      else
      {
        v151 = v83;
        v152 = v84;
        if (v85)
        {
          v153 = v85;
          v154 = v86;
          v155 = sub_1002881FC(0, v83, v85, v86);
          v156 = sub_1002881FC(v151, v152, v153, v154);
          if (__OFADD__(v155, v156))
          {
LABEL_184:
            __break(1u);
            goto LABEL_185;
          }

          if (v155 + v156 < v155)
          {
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }
        }

        else
        {
          v182 = v86;
          v183 = sub_1002881FC(0, v83, 0, v86);
          v184 = sub_1002881FC(v151, v152, 0, v182);
          if (__OFADD__(v183, v184))
          {
LABEL_204:
            __break(1u);
            goto LABEL_205;
          }

          if (v183 + v184 < v183)
          {
LABEL_214:
            __break(1u);
            goto LABEL_215;
          }
        }

        v87 = sub_1004A58D4();
      }

      v9 = v87;
      v3 = v88;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 20;
      goto LABEL_165;
    default:
      if (v6)
      {
        v14 = &v5[-v6];
      }

      else
      {
        v14 = 0;
      }

      if (v14 < 0)
      {
        goto LABEL_170;
      }

      v15 = sub_1002A84A8(0, v14, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v15, v16, v17, v18);
      }

      else
      {
        v3 = v15;
        v137 = v16;
        if (v17)
        {
          v138 = v17;
          v139 = v18;
          v9 = sub_1002881FC(0, v15, v17, v18);
          v140 = sub_1002881FC(v3, v137, v138, v139);
          if (__OFADD__(v9, v140))
          {
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          if (v9 + v140 < v9)
          {
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
            goto LABEL_193;
          }
        }

        else
        {
          v173 = v18;
          v9 = sub_1002881FC(0, v15, 0, v18);
          v174 = sub_1002881FC(v3, v137, 0, v173);
          if (__OFADD__(v9, v174))
          {
LABEL_201:
            __break(1u);
            goto LABEL_202;
          }

          if (v9 + v174 < v9)
          {
LABEL_211:
            __break(1u);
            goto LABEL_212;
          }
        }

        v19 = sub_1004A58D4();
      }

      v39 = v19;
      v7 = v20;

      v43 = 0;
      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      goto LABEL_165;
  }
}

uint64_t _s9IMAP2MIME6HeaderO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  switch(*(a1 + 96))
  {
    case 1:
      if (a2[96] != 1)
      {
        return 0;
      }

      v27 = *a2;
      v28 = v4;
      if (v4)
      {
        if (v4 == 1)
        {
          v29 = 0x6E65672D6F747561;
        }

        else
        {
          v29 = 0x7065722D6F747561;
        }

        if (v28 == 1)
        {
          v30 = 0xEE00646574617265;
        }

        else
        {
          v30 = 0xEC0000006465696CLL;
        }
      }

      else
      {
        v30 = 0xE200000000000000;
        v29 = 28526;
      }

      v40 = 0x6E65672D6F747561;
      v41 = 0xEE00646574617265;
      if (v27 != 1)
      {
        v40 = 0x7065722D6F747561;
        v41 = 0xEC0000006465696CLL;
      }

      if (v27)
      {
        v42 = v40;
      }

      else
      {
        v42 = 28526;
      }

      if (v27)
      {
        v43 = v41;
      }

      else
      {
        v43 = 0xE200000000000000;
      }

      if (v29 == v42 && v30 == v43)
      {

        return 1;
      }

      else
      {
        v44 = sub_1004A6D34();

        return v44 & 1;
      }

    case 2:
      if (a2[96] == 2)
      {
        goto LABEL_72;
      }

      return 0;
    case 3:
      if (a2[96] != 3)
      {
        return 0;
      }

      goto LABEL_72;
    case 4:
      if (a2[96] != 4)
      {
        return 0;
      }

      goto LABEL_61;
    case 5:
      if (a2[96] != 5)
      {
        return 0;
      }

      v33 = *(a2 + 1);
      v34 = *(a2 + 2);
      if (v5 == 2)
      {
        if (v33 != 2)
        {
          return 0;
        }
      }

      else if (v5 == 1)
      {
        if (v33 != 1)
        {
          return 0;
        }
      }

      else if (v5)
      {
        if (v33 < 3 || (v4 != *a2 || v33 != v5) && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v33)
      {
        return 0;
      }

      return (sub_10026B84C(v6, v34) & 1) != 0;
    case 6:
      if (a2[96] != 6)
      {
        return 0;
      }

      goto LABEL_61;
    case 7:
      if (a2[96] != 7)
      {
        return 0;
      }

      goto LABEL_61;
    case 8:
      if (a2[96] != 8)
      {
        return 0;
      }

      v35 = *a2;
      if (v4 == 5)
      {
        if (v35 == 5)
        {
          return 1;
        }
      }

      else if (v35 != 5 && (sub_10026F4F0(v4, v35) & 1) != 0)
      {
        return 1;
      }

      return 0;
    case 9:
      if (a2[96] != 9)
      {
        return 0;
      }

      v24 = *(a2 + 5);
      v57[0] = v4;
      v57[1] = v5;
      v57[2] = v6;
      v57[3] = v7;
      v58 = v8;
      v25 = *(a2 + 1);
      v59[0] = *a2;
      v59[1] = v25;
      v60 = a2[32];
      return (_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v57, v59) & 1) != 0 && (sub_10026B9CC(v9, v24) & 1) != 0;
    case 0xA:
      if (a2[96] == 10)
      {
        goto LABEL_61;
      }

      return 0;
    case 0xB:
      if (a2[96] != 11)
      {
        return 0;
      }

      v16 = *(a2 + 1);
      v17 = *(a2 + 2);
      v19 = *(a2 + 3);
      v18 = *(a2 + 4);
      v20 = *(a2 + 5);
      v21 = *(a2 + 6);
      v22 = *(a2 + 7);
      v56 = *(a2 + 8);
      v55 = *(a2 + 9);
      v54 = *(a2 + 10);
      v53 = *(a2 + 11);
      if (v5)
      {
        if (!v16)
        {
          return 0;
        }

        if (v4 != *a2 || v16 != v5)
        {
          v49 = *(a2 + 7);
          v51 = *(a2 + 4);
          v47 = *(a2 + 6);
          v48 = *(a2 + 5);
          v45 = *(a2 + 3);
          v46 = *(a2 + 2);
          v23 = sub_1004A6D34();
          v19 = v45;
          v17 = v46;
          v20 = v48;
          v22 = v49;
          v21 = v47;
          v18 = v51;
          if ((v23 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v16)
      {
        return 0;
      }

      if (v6 == v17 && v7 == v19)
      {
        goto LABEL_83;
      }

      v50 = v22;
      v52 = v18;
      v37 = v20;
      v38 = v21;
      v39 = sub_1004A6D34();
      v22 = v50;
      v18 = v52;
      v21 = v38;
      v20 = v37;
      if (v39)
      {
LABEL_83:
        if (sub_10027F698(v8, v9, v10, v12, v18, v20, v21, v22) & 1) != 0 && (sub_10027F698(v11, v13, v14, v15, v56, v55, v54, v53))
        {
          return 1;
        }
      }

      return 0;
    case 0xC:
      if (a2[96] != 12)
      {
        return 0;
      }

      goto LABEL_61;
    case 0xD:
      if (a2[96] != 13)
      {
        return 0;
      }

      goto LABEL_61;
    case 0xE:
      if (a2[96] != 14)
      {
        return 0;
      }

      goto LABEL_61;
    case 0xF:
      if (a2[96] != 15)
      {
        return 0;
      }

      return *a2 == v4;
    case 0x10:
      if (a2[96] != 16)
      {
        return 0;
      }

      goto LABEL_61;
    case 0x11:
      if (a2[96] != 17)
      {
        return 0;
      }

      goto LABEL_61;
    case 0x12:
      if (a2[96] != 18)
      {
        return 0;
      }

      goto LABEL_61;
    case 0x13:
      if (a2[96] != 19)
      {
        return 0;
      }

LABEL_72:
      v36 = *a2;

      return sub_10026B608(v4, v36);
    case 0x14:
      if (a2[96] != 20)
      {
        return 0;
      }

      v31 = *(a2 + 2);
      v32 = *(a2 + 3);
      if ((v4 != *a2 || v5 != *(a2 + 1)) && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      if (v6 != v31 || v7 != v32)
      {
        goto LABEL_64;
      }

      return 1;
    default:
      if (a2[96])
      {
        return 0;
      }

LABEL_61:
      if (v4 == *a2 && v5 == *(a2 + 1))
      {
        return 1;
      }

LABEL_64:

      return sub_1004A6D34();
  }
}

__n128 sub_10027E4A0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10027E4CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEC && *(a1 + 97))
  {
    return (*a1 + 236);
  }

  v3 = *(a1 + 96);
  if (v3 <= 0x14)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10027E514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEB)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 236;
    if (a3 >= 0xEC)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEC)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t Header.AutoSubmitted.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 28526;
  }

  if (a1 == 1)
  {
    return 0x6E65672D6F747561;
  }

  return 0x7065722D6F747561;
}

uint64_t sub_10027E5F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E65672D6F747561;
  v4 = 0xEE00646574617265;
  if (v2 != 1)
  {
    v3 = 0x7065722D6F747561;
    v4 = 0xEC0000006465696CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 28526;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x6E65672D6F747561;
  v8 = 0xEE00646574617265;
  if (*a2 != 1)
  {
    v7 = 0x7065722D6F747561;
    v8 = 0xEC0000006465696CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 28526;
  }

  if (*a2)
  {
    v10 = v8;
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
    v11 = sub_1004A6D34();
  }

  return v11 & 1;
}

uint64_t sub_10027E714@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9IMAP2MIME6HeaderO13AutoSubmittedO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10027E744(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xEE00646574617265;
  v5 = 0x6E65672D6F747561;
  if (v2 != 1)
  {
    v5 = 0x7065722D6F747561;
    v4 = 0xEC0000006465696CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 28526;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_10027E7AC()
{
  v1 = *v0;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10027E858()
{
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10027E8F0()
{
  v1 = *v0;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t _s9IMAP2MIME6HeaderO13AutoSubmittedO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AA7A0;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10027E9E8()
{
  result = qword_1005D6650;
  if (!qword_1005D6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6650);
  }

  return result;
}

uint64_t Header.Priority.init(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v1 = 0;
  }

  return v1 | (((a1 - 6) < 0xFFFFFFFFFFFFFFFBLL) << 8);
}

Swift::Int Header.Priority.hashValue.getter(Swift::UInt8 a1)
{
  sub_1004A6E94();
  sub_1004A6EC4(a1);
  return sub_1004A6F14();
}

Swift::Int sub_10027EAE0()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EC4(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10027EB54()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EC4(v1);
  return sub_1004A6F14();
}

unint64_t sub_10027EC28()
{
  result = qword_1005D6658;
  if (!qword_1005D6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6658);
  }

  return result;
}

uint64_t sub_10027EC8C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    result = sub_1002A84A8(0, v3, result, a2);
    v7 = result;
    v8 = v4;
    v9 = v5;
    if (result == v4)
    {
      v10 = 1;
      v11 = result;
    }

    else
    {
      if (result <= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = result;
      }

      v11 = result;
      while (1)
      {
        if (v12 == v11)
        {
          __break(1u);
          goto LABEL_37;
        }

        v13 = *(v5 + v11) - 48;
        v10 = v13 < 0xA;
        if (v13 >= 0xA)
        {
          break;
        }

        if (v4 == ++v11)
        {
          v11 = v4;
          break;
        }
      }

      if (v11 < result)
      {
        goto LABEL_41;
      }
    }

    if (v4 < v11)
    {
      goto LABEL_42;
    }

    v14 = v11 - result;
    if (v11 == result)
    {
      goto LABEL_19;
    }

    result = sub_1002881FC(result, v11, v5, v6);
    if (result > 8)
    {
      goto LABEL_19;
    }

    if (!v9 || (v17 = (v9 + v7)) == 0)
    {
      if (!v10)
      {
        v15 = 0;
LABEL_32:
        if (v11 >= v8)
        {
          goto LABEL_43;
        }

        if (*(v9 + v11) == 32)
        {
LABEL_34:
          if (v15 - 6 > 0xFFFFFFFFFFFFFFFALL)
          {
            v16 = 0;
            return v15 | (v16 << 8);
          }
        }
      }

LABEL_19:
      LOBYTE(v15) = 0;
      v16 = 1;
      return v15 | (v16 << 8);
    }

    v15 = 0;
    while (is_mul_ok(v15, 0xAuLL))
    {
      v18 = *v17 - 48;
      if ((v18 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

      v19 = 10 * v15;
      v20 = __CFADD__(v19, v18);
      v15 = v19 + v18;
      if (v20)
      {
        goto LABEL_39;
      }

      ++v17;
      if (!--v14)
      {
        if (!v10)
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_10027EE28@<X0>(Swift::Int isStackAllocationSafe@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = isStackAllocationSafe;
  if ((a3 & 0x1000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

LABEL_5:
    if (v9 <= 1024)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  isStackAllocationSafe = sub_1004A59E4();
  v9 = isStackAllocationSafe;
  if ((isStackAllocationSafe & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_18:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v23 = swift_slowAlloc();
    sub_10027F198(v23, v9, v7, &v29);
    if (!v4)
    {

      v19 = v29;
      v21 = v30;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_6:
  __chkstk_darwin(isStackAllocationSafe);
  v11 = v26 - v10;
  result = sub_1004A6734();
  if ((v13 & 1) == 0)
  {
    v14 = *v7;
    *(swift_allocObject() + 16) = v14;
    v15 = sub_10027F410(v11, v9, 0, 0, 1, v14);
    if (!v4)
    {
      if ((v15 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v26[1] = v26;
        v27 = a4;
        if (v15 >= 1025)
        {
          v24 = v15;
          v15 = swift_stdlib_isStackAllocationSafe();
          if ((v15 & 1) == 0)
          {
            v25 = swift_slowAlloc();
            sub_10027F550(v25, v24, sub_10027F5F8, v11, v9, sub_10027F3D8, v28);

            a4 = v27;
            v19 = v28[0];
            v21 = v28[1];
            goto LABEL_13;
          }
        }

        __chkstk_darwin(v15);
        v18 = sub_10027F410(v11, v9, v26 - v16, v17, 0, v14);
        if ((v18 & 0x80000000) == 0)
        {
          v19 = sub_1004A58D4();
          v21 = v22;

          a4 = v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    swift_willThrow();
LABEL_12:
    v29 = a2;
    v30 = a3;

    v19 = sub_1004A5AA4();
    v21 = v20;

LABEL_13:
    *a4 = v19;
    a4[1] = v21;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10027F198@<X0>(char *a1@<X0>, uint64_t a2@<X1>, UIDNA **a3@<X4>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  sub_1004A6734();
  if (v9)
  {
    goto LABEL_16;
  }

  v10 = *a3;
  *(swift_allocObject() + 16) = v10;
  isStackAllocationSafe = sub_10027F410(a1, a2, 0, 0, 1, v10);
  if (v4)
  {
  }

  if ((isStackAllocationSafe & 0x80000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (isStackAllocationSafe >= 1025)
  {
    v19 = isStackAllocationSafe;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v20 = swift_slowAlloc();
      sub_10027F550(v20, v19, sub_10027F67C, a1, a2, sub_10027F3D8, v22);

      v16 = v22[0];
      v18 = v22[1];
      goto LABEL_10;
    }
  }

  __chkstk_darwin(isStackAllocationSafe);
  v14 = sub_10027F410(a1, a2, &v22[-1] - v12, v13, 0, v10);
  if (v14 < 0)
  {
    goto LABEL_14;
  }

  v16 = sub_1004A58D4();
  v18 = v17;

LABEL_10:
  *a4 = v16;
  a4[1] = v18;
  return result;
}

uint64_t sub_10027F3D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004A58D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10027F410(char *name, uint64_t length, char *dest, uint64_t capacity, char a5, UIDNA *idna)
{
  pErrorCode = U_ZERO_ERROR;
  pInfo.size = 16;
  *&pInfo.isTransitionalDifferent = 0;
  *&pInfo.reservedI2 = 0;
  if (length < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (length > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a5 & 1) == 0)
  {
    if (capacity >= 0xFFFFFFFF80000000)
    {
      if (capacity <= 0x7FFFFFFF)
      {
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  LODWORD(capacity) = 0;
  dest = 0;
LABEL_7:
  result = uidna_nameToASCII_UTF8(idna, name, length, dest, capacity, &pInfo, &pErrorCode);
  v10 = pErrorCode;
  if (((a5 & 1) == 0 || pErrorCode != U_BUFFER_OVERFLOW_ERROR) && (pErrorCode > U_ZERO_ERROR || pInfo.errors))
  {
    v11 = result;
    sub_10027F618();
    swift_allocError();
    *v12 = v10;
    swift_willThrow();
    return v11;
  }

  return result;
}

uint64_t sub_10027F550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *(*a6)(void *__return_ptr, uint64_t, void)@<X6>, void *a7@<X8>)
{
  result = a3(a4, a5, a1, a2, 0);
  if (!v7)
  {
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = a6(v13, a1, result);
      v12 = v13[1];
      *a7 = v13[0];
      a7[1] = v12;
    }
  }

  return result;
}

unint64_t sub_10027F618()
{
  result = qword_1005D6660;
  if (!qword_1005D6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6660);
  }

  return result;
}

uint64_t sub_10027F698(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1004A6CD4() & 1;
  }
}

uint64_t sub_10027F8A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C9C0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t IndexableMessageInfo.messageID.getter()
{
  v1 = (v0 + *(type metadata accessor for IndexableMessageInfo(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t IndexableMessageInfo.messageID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IndexableMessageInfo(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t IndexableMessageInfo.subject.getter()
{
  v1 = (v0 + *(type metadata accessor for IndexableMessageInfo(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t IndexableMessageInfo.subject.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IndexableMessageInfo(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t IndexableMessageInfo.to.getter()
{
  v1 = *(v0 + *(type metadata accessor for IndexableMessageInfo(0) + 40));
}

uint64_t IndexableMessageInfo.to.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexableMessageInfo(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IndexableMessageInfo.priority.setter(__int16 a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  v4 = (v1 + *(result + 44));
  *v4 = a1;
  v4[1] = HIBYTE(a1) & 1;
  return result;
}

uint64_t IndexableMessageInfo.hasDistributionListInTo.setter(char a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t IndexableMessageInfo.hasDistributionListInCC.setter(char a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t IndexableMessageInfo.isAutoReplied.setter(char a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t IndexableMessageInfo.content.getter()
{
  v1 = v0 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
  v2 = *v1;
  sub_10027FE9C(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_10027FE9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return IndexingDiagnostics.unindexed.getter();
  }

  return result;
}

uint64_t IndexableMessageInfo.content.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
  result = sub_10027FF08(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t sub_10027FF08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10027FF20();
  }

  return result;
}

uint64_t IndexableMessageInfo.attachments.getter()
{
  v1 = *(v0 + *(type metadata accessor for IndexableMessageInfo(0) + 64));
}

uint64_t IndexableMessageInfo.attachments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexableMessageInfo(0) + 64);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IndexableMessageInfo.init(bcc:cc:date:from:messageID:subject:to:priority:hasDistributionListInTo:hasDistributionListInCC:isAutoReplied:content:attachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19)
{
  v21 = type metadata accessor for IndexableMessageInfo(0);
  v22 = v21[6];
  v23 = sub_1004A44E4();
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = &a9[v21[7]];
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &a9[v21[8]];
  v26 = &a9[v21[9]];
  v27 = &a9[v21[11]];
  v28 = &a9[v21[15]];
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_10027F8A8(a3, &a9[v22], &qword_1005D0F20, &qword_1004E9390);
  result = sub_10027F8A8(a4, v24, &qword_1005D6668, &qword_1004EBFA8);
  *v25 = a5;
  *(v25 + 1) = a6;
  *v26 = a7;
  *(v26 + 1) = a8;
  *&a9[v21[10]] = a10;
  *v27 = a11;
  v27[1] = a12 & 1;
  a9[v21[12]] = a13;
  a9[v21[13]] = a14;
  a9[v21[14]] = a15;
  *v28 = a16;
  *(v28 + 1) = a17;
  v28[16] = a18;
  *&a9[v21[16]] = a19;
  return result;
}

uint64_t IndexableMessageInfo.Content.data.getter()
{
  v0 = sub_1004A57F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A57D4();
  v5 = sub_1004A5774();
  (*(v1 + 8))(v4, v0);
  return v5;
}

Swift::Int IndexableMessageInfo.Content.byteCount.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1004A59E4();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    return HIBYTE(a2) & 0xF;
  }

  return a1 & 0xFFFFFFFFFFFFLL;
}

uint64_t IndexableMessageInfo.Attachment.filename.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t IndexableMessageInfo.Attachment.filename.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t static IndexableMessageInfo.Attachment.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = *(a1 + 32);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v10 = *(a2 + 32);
  if (_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v9))
  {
    v6 = *(a1 + 48);
    v7 = *(a2 + 48);
    if (v6)
    {
      if (v7 && (*(a1 + 40) == *(a2 + 40) && v6 == v7 || (sub_1004A6D34() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10028044C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v2;
  v10 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v5;
  v12 = *(a2 + 32);
  v7 = *(a2 + 40);
  v6 = *(a2 + 48);
  if (_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v9, v11))
  {
    if (v3)
    {
      if (v6 && (v4 == v7 && v3 == v6 || (sub_1004A6D34() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t IndexableMessageInfo.init(message:maximumTextCount:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v37 = a4;
  v6 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for IndexableMessageInfo(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  v22 = *(v21 + 24);
  v23 = sub_1004A44E4();
  (*(*(v23 - 8) + 56))(&v20[v22], 1, 1, v23);
  v24 = &v20[v13[7]];
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &v20[v13[8]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v20[v13[9]];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v20[v13[11]] = 256;
  v27 = &v20[v13[15]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = -1;
  sub_10028D97C(a1, a2, v36, v12);
  sub_1002834B0(a1, type metadata accessor for Message);
  sub_100283378(v12, v9);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_100025F40(v9, &qword_1005D6670, &qword_1004EBFB0);
    sub_100025F40(&v20[v22], &qword_1005D0F20, &qword_1004E9390);
    v28 = *(v24 + 3);
    v40 = *(v24 + 2);
    v41 = v28;
    v29 = *(v24 + 5);
    v42 = *(v24 + 4);
    v43 = v29;
    v30 = *(v24 + 1);
    v38 = *v24;
    v39 = v30;
    sub_100025F40(&v38, &qword_1005D6668, &qword_1004EBFA8);
    return (*(v14 + 56))(v37, 1, 1, v13);
  }

  else
  {
    sub_1002833E8(v9, v17);
    sub_100025F40(&v20[v22], &qword_1005D0F20, &qword_1004E9390);
    v32 = *(v24 + 3);
    v40 = *(v24 + 2);
    v41 = v32;
    v33 = *(v24 + 5);
    v42 = *(v24 + 4);
    v43 = v33;
    v34 = *(v24 + 1);
    v38 = *v24;
    v39 = v34;
    sub_100025F40(&v38, &qword_1005D6668, &qword_1004EBFA8);
    sub_1002833E8(v17, v20);
    v35 = v37;
    sub_10028344C(v20, v37);
    (*(v14 + 56))(v35, 0, 1, v13);
    return sub_1002834B0(v20, type metadata accessor for IndexableMessageInfo);
  }
}

uint64_t sub_1002808F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v158 = a6;
  v152 = a5;
  v153 = a1;
  v155 = a3;
  v156 = a4;
  v154 = a2;
  v151 = a7;
  v7 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v140 - v9;
  v11 = type metadata accessor for IndexableMessageInfo.InfoAndListID(0);
  v12 = *(v11 - 8);
  v159 = (v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IndexableMessageInfo(0);
  v150 = *(v16 - 1);
  v17 = *(v150 + 64);
  __chkstk_darwin(v16);
  v19 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 24);
  v22 = sub_1004A44E4();
  v23 = *(*(v22 - 8) + 56);
  v147 = v21;
  v23(&v19[v21], 1, 1, v22);
  v24 = &v19[v16[7]];
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v148 = v24;
  v149 = v19;
  v25 = &v19[v16[8]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v19[v16[9]];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v19[v16[11]] = 256;
  v27 = &v19[v16[15]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = -1;
  v23(v10, 1, 1, v22);
  v28 = v16[6];
  v23(&v15[v28], 1, 1, v22);
  v29 = &v15[v16[7]];
  *(v29 + 4) = 0u;
  *(v29 + 5) = 0u;
  *(v29 + 2) = 0u;
  *(v29 + 3) = 0u;
  *v29 = 0u;
  *(v29 + 1) = 0u;
  v30 = &v15[v16[8]];
  v31 = &v15[v16[9]];
  v157 = v16[11];
  v32 = &v15[v16[15]];
  *v15 = _swiftEmptyArrayStorage;
  *(v15 + 1) = _swiftEmptyArrayStorage;
  sub_10027F8A8(v10, &v15[v28], &qword_1005D0F20, &qword_1004E9390);
  v33 = *(v29 + 3);
  v211[2] = *(v29 + 2);
  v211[3] = v33;
  v34 = *(v29 + 5);
  v211[4] = *(v29 + 4);
  v211[5] = v34;
  v35 = *(v29 + 1);
  v211[0] = *v29;
  v211[1] = v35;
  sub_100025F40(v211, &qword_1005D6668, &qword_1004EBFA8);
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 2) = 0u;
  *(v29 + 3) = 0u;
  *(v29 + 4) = 0u;
  *(v29 + 5) = 0u;
  *v30 = 0;
  *(v30 + 1) = 0;
  *v31 = 0;
  *(v31 + 1) = 0;
  v143 = v16[10];
  *&v15[v143] = _swiftEmptyArrayStorage;
  *&v15[v157] = 256;
  v141 = v16[12];
  v15[v141] = 0;
  v142 = v16[13];
  v15[v142] = 0;
  v15[v16[14]] = 0;
  *v32 = 0;
  *(v32 + 1) = 0;
  v32[16] = -1;
  v145 = v16;
  *&v15[v16[16]] = _swiftEmptyArrayStorage;
  v157 = *(v159 + 7);
  v159 = v15;
  *&v15[v157] = _swiftEmptySetSingleton;
  v194 = 0;
  v36 = sub_100297350(v153, v154, v155, v156);
  v37 = sub_1002975B0(_swiftEmptyArrayStorage, v36);
  if (v37)
  {
    v39 = v37;
    v40 = v38;
    *&v195 = sub_100257570(_swiftEmptyArrayStorage);
    sub_100297A70(v39, v40, 0, &v195, v36);

    v41 = v195;
  }

  else
  {

    v41 = sub_100257570(_swiftEmptyArrayStorage);
  }

  v42 = swift_allocObject();
  v146 = &v140;
  *(v42 + 16) = v41;
  __chkstk_darwin(v42);
  v43 = v158;
  v44 = v152;
  *(&v140 - 4) = v159;
  *(&v140 - 3) = v44;
  *(&v140 - 2) = v43;
  __chkstk_darwin(v45);
  *(&v140 - 4) = &v194;
  *(&v140 - 3) = v46;
  *(&v140 - 2) = v43;
  v47 = swift_allocObject();
  v48 = v47 + 1;
  sub_100276450(&v183);
  v49 = v192;
  v47[9] = v191;
  v47[10] = v49;
  v47[11] = *v193;
  *(v47 + 185) = *&v193[9];
  v50 = v188;
  v47[5] = v187;
  v47[6] = v50;
  v51 = v190;
  v47[7] = v189;
  v47[8] = v51;
  v52 = v184;
  v47[1] = v183;
  v47[2] = v52;
  v53 = v186;
  v47[3] = v185;
  v47[4] = v53;
  v54 = swift_allocObject();
  *(v54 + 16) = 2;
  v55 = (v54 + 16);
  __chkstk_darwin(v54);
  *(&v140 - 4) = v47;
  *(&v140 - 3) = v56;
  v144 = v56;
  *(&v140 - 2) = sub_100283A78;
  *(&v140 - 1) = (&v140 - 6);
  __chkstk_darwin(v56);
  *(&v140 - 4) = (v47 + 1);
  *(&v140 - 3) = sub_100283AB4;
  *(&v140 - 2) = (&v140 - 6);

  v57 = 0;
  sub_100296AD8(3, v153, v154, v155, v156);
  v206 = _swiftEmptyArrayStorage;
  v207 = v58;
  v208 = v59;
  v209 = v60;
  v210 = v61;
  sub_100295F74(sub_100277324, (&v140 - 6), sub_100277344, (&v140 - 6), sub_10027989C, v42);
  swift_beginAccess();
  v108 = v158;
  if (*v55 != 2)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v109 = v47[10];
  v110 = v47[8];
  v169 = v47[9];
  v170 = v109;
  v111 = v47[10];
  v171[0] = v47[11];
  *(v171 + 9) = *(v47 + 185);
  v112 = v47[6];
  v113 = v47[4];
  v165 = v47[5];
  v166 = v112;
  v114 = v47[6];
  v115 = v47[8];
  v167 = v47[7];
  v168 = v115;
  v116 = v47[2];
  v162[0] = *v48;
  v162[1] = v116;
  v117 = v47[4];
  v119 = *v48;
  v118 = v47[2];
  v163 = v47[3];
  v164 = v117;
  v180 = v169;
  v181 = v111;
  v182[0] = v47[11];
  *(v182 + 9) = *(v47 + 185);
  v176 = v165;
  v177 = v114;
  v178 = v167;
  v179 = v110;
  v172 = v119;
  v173 = v118;
  v174 = v163;
  v175 = v113;
  if (sub_100021348(&v172) != 1)
  {
    v203 = v180;
    v204 = v181;
    v205[0] = v182[0];
    *(v205 + 9) = *(v182 + 9);
    v199 = v176;
    v200 = v177;
    v201 = v178;
    v202 = v179;
    v195 = v172;
    v196 = v173;
    v197 = v174;
    v198 = v175;

    sub_10000E268(v162, v160, &qword_1005D65E0, &unk_1004EB070);
    sub_100281684(v152, &v195, v108);
    sub_100025F40(v162, &qword_1005D65E0, &unk_1004EB070);
    *v55 = 2;
    v130 = v47[10];
    v160[8] = v47[9];
    v160[9] = v130;
    v161[0] = v47[11];
    *(v161 + 9) = *(v47 + 185);
    v131 = v47[6];
    v160[4] = v47[5];
    v160[5] = v131;
    v132 = v47[8];
    v160[6] = v47[7];
    v160[7] = v132;
    v133 = v47[2];
    v160[0] = *v48;
    v160[1] = v133;
    v134 = v47[4];
    v160[2] = v47[3];
    v160[3] = v134;
    v135 = v192;
    v47[9] = v191;
    v47[10] = v135;
    v47[11] = *v193;
    *(v47 + 185) = *&v193[9];
    v136 = v188;
    v47[5] = v187;
    v47[6] = v136;
    v137 = v190;
    v47[7] = v189;
    v47[8] = v137;
    v138 = v184;
    *v48 = v183;
    v47[2] = v138;
    v139 = v186;
    v47[3] = v185;
    v47[4] = v139;
    sub_100025F40(v160, &qword_1005D65E0, &unk_1004EB070);

    v57 = 0;
  }

  else
  {
LABEL_42:
    swift_beginAccess();
    v120 = v47[10];
    v203 = v47[9];
    v204 = v120;
    v205[0] = v47[11];
    *(v205 + 9) = *(v47 + 185);
    v121 = v47[6];
    v199 = v47[5];
    v200 = v121;
    v122 = v47[8];
    v201 = v47[7];
    v202 = v122;
    v123 = v47[2];
    v195 = *v48;
    v196 = v123;
    v124 = v47[4];
    v197 = v47[3];
    v198 = v124;
    v125 = v192;
    v47[9] = v191;
    v47[10] = v125;
    v47[11] = *v193;
    *(v47 + 185) = *&v193[9];
    v126 = v188;
    v47[5] = v187;
    v47[6] = v126;
    v127 = v190;
    v47[7] = v189;
    v47[8] = v127;
    v128 = v184;
    *v48 = v183;
    v47[2] = v128;
    v129 = v186;
    v47[3] = v185;
    v47[4] = v129;

    sub_100025F40(&v195, &qword_1005D65E0, &unk_1004EB070);
  }

  if ((v194 & 1) == 0)
  {

    sub_1002834B0(v159, type metadata accessor for IndexableMessageInfo.InfoAndListID);
    sub_100025F40(&v149[v147], &qword_1005D0F20, &qword_1004E9390);
    v66 = *(v148 + 3);
    v174 = *(v148 + 2);
    v175 = v66;
    v67 = *(v148 + 5);
    v176 = *(v148 + 4);
    v177 = v67;
    v68 = *(v148 + 1);
    v172 = *v148;
    v173 = v68;
    sub_100025F40(&v172, &qword_1005D6668, &qword_1004EBFA8);
    return (*(v150 + 56))(v151, 1, 1, v145);
  }

  v62 = *&v159[v143];
  v63 = *(v62 + 16);

  if (!v63)
  {
LABEL_22:
    v156 = v57;

    goto LABEL_23;
  }

  v64 = 0;
  v65 = v62 + 32;
  v155 = v62 + 32;
  while (1)
  {
    v70 = (v65 + 96 * v64);
    v71 = *v70;
    v173 = v70[1];
    v72 = v70[2];
    v73 = v70[3];
    v74 = v70[5];
    v176 = v70[4];
    v177 = v74;
    v174 = v72;
    v175 = v73;
    v172 = v71;
    v75 = *&v159[v157];
    if (!*(v75 + 16))
    {
      goto LABEL_10;
    }

    v156 = v57;
    v76 = v173;
    v77 = *(v75 + 40);
    sub_1004A6E94();
    sub_100275568(&v172, v162);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v78 = sub_1004A6F14();
    v79 = -1 << *(v75 + 32);
    v80 = v78 & ~v79;
    if ((*(v75 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80))
    {
      break;
    }

LABEL_9:

    sub_1002755F4(&v172);
    v65 = v155;
    v57 = v156;
LABEL_10:
    if (++v64 == v63)
    {
      goto LABEL_22;
    }
  }

  v81 = ~v79;
  while (1)
  {
    v82 = (*(v75 + 48) + 16 * v80);
    v83 = *v82 == v76 && v82[1] == *(&v76 + 1);
    if (v83 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    v80 = (v80 + 1) & v81;
    if (((*(v75 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_1002755F4(&v172);

  v159[v141] = 1;
LABEL_23:
  v84 = *(v159 + 1);
  v85 = *(v84 + 16);

  if (!v85)
  {
LABEL_38:

    goto LABEL_39;
  }

  v86 = 0;
  v87 = v84 + 32;
  v155 = v84 + 32;
  while (2)
  {
    v88 = (v87 + 96 * v86);
    v89 = *v88;
    v173 = v88[1];
    v90 = v88[2];
    v91 = v88[3];
    v92 = v88[5];
    v176 = v88[4];
    v177 = v92;
    v174 = v90;
    v175 = v91;
    v172 = v89;
    v93 = *&v159[v157];
    if (!*(v93 + 16))
    {
LABEL_26:
      if (++v86 == v85)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  v94 = v173;
  v95 = *(v93 + 40);
  sub_1004A6E94();
  sub_100275568(&v172, v162);

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v96 = sub_1004A6F14();
  v97 = -1 << *(v93 + 32);
  v98 = v96 & ~v97;
  if (((*(v93 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
  {
LABEL_25:

    sub_1002755F4(&v172);
    v87 = v155;
    goto LABEL_26;
  }

  v99 = ~v97;
  while (1)
  {
    v100 = (*(v93 + 48) + 16 * v98);
    v101 = *v100 == v94 && v100[1] == *(&v94 + 1);
    if (v101 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    v98 = (v98 + 1) & v99;
    if (((*(v93 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  sub_1002755F4(&v172);

  v159[v142] = 1;
LABEL_39:
  v102 = v149;
  sub_100025F40(&v149[v147], &qword_1005D0F20, &qword_1004E9390);
  v103 = *(v148 + 3);
  v174 = *(v148 + 2);
  v175 = v103;
  v104 = *(v148 + 5);
  v176 = *(v148 + 4);
  v177 = v104;
  v105 = *(v148 + 1);
  v172 = *v148;
  v173 = v105;
  sub_100025F40(&v172, &qword_1005D6668, &qword_1004EBFA8);
  v106 = v159;
  sub_10028344C(v159, v102);
  sub_1002834B0(v106, type metadata accessor for IndexableMessageInfo.InfoAndListID);
  v107 = v151;
  sub_10028344C(v102, v151);
  (*(v150 + 56))(v107, 0, 1, v145);
  return sub_1002834B0(v102, type metadata accessor for IndexableMessageInfo);
}