uint64_t sub_1004607F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1004915B8(*a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | (*(a2 + 28) << 32) | (*(a2 + 30) << 48), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t ByteToMessageDecoder.wrapInboundOut<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  v4 = __chkstk_darwin(a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  type metadata accessor for Response(0);
  return swift_dynamicCast();
}

uint64_t ChannelHandlerContext.responses.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t ChannelHandlerContext.responses.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ChannelHandlerContext.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t ChannelHandlerContext.init()()
{
  result = v0;
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t ChannelHandlerContext.fireChannelRead(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Response(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100460C04(a1, v7);
  swift_beginAccess();
  v8 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100462204(0, v8[2] + 1, 1, v8, &qword_1005D8448, &unk_1004F4720, type metadata accessor for Response);
    *(v1 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_100462204(v10 > 1, v11 + 1, 1, v8, &qword_1005D8448, &unk_1004F4720, type metadata accessor for Response);
  }

  v8[2] = v11 + 1;
  sub_1004623E0(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11);
  *(v1 + 16) = v8;
  return swift_endAccess();
}

uint64_t sub_100460C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Response(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ChannelHandlerContext.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ChannelHandlerContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_100460CC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
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

char *sub_100460DD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD270, &qword_100509A38);
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

char *sub_100460EE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD268, &qword_100509A30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_100460FE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DCB38, &qword_100507088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100461148(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D52A0, &unk_1004E75A0);
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

char *sub_1004612A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD200, &qword_100509978);
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

char *sub_1004613E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD1F8, &qword_100509970);
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

char *sub_10046154C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD230, &unk_1005099D0);
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

char *sub_100461684(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1004617B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D15B8, &unk_1005099A0);
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

char *sub_1004618DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD228, &qword_1005099C8);
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

char *sub_1004619E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_100461B08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000C9C0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100461C64(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_100461D70(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD220, &unk_1005099B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100461E7C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_100461F9C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DD248, &qword_100509A00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005DD250, &qword_100509A08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004620D0(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DD258, &qword_100509A20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005DD260, &qword_100509A28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100462204(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1004623E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Response(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100462448()
{
  result = qword_1005DD138;
  if (!qword_1005DD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD138);
  }

  return result;
}

unint64_t sub_1004624F4()
{
  result = qword_1005DD278;
  if (!qword_1005DD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD278);
  }

  return result;
}

uint64_t sub_100462548(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 32))
  {
    result = sub_100462978(*a1, v4, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v6 = *(v1 + 20);
    result = sub_1002F178C(*a1, v4, (v1 + 8), *(v1 + 20));
    if (v7)
    {
      v8._countAndFlagsBits = v3;
      v8._object = v4;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v6);
    }

    v9 = *(v1 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    *(v1 + 20) = v11;
  }

  v12 = *(a1 + 56);
  if (HIBYTE(v12) == 255)
  {
    return result;
  }

  v13 = result;
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v16 = *(v1 + 20);
  sub_1003A30E8(v15, v14, v12, HIBYTE(v12) & 1);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), v16);
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v1 + 20);
  v10 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v10)
  {
    goto LABEL_15;
  }

  *(v1 + 20) = v20;
  v21 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = sub_100462BEC(v15, v14, v12 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v12) & 1) << 56));
  sub_1003A3390(v15, v14, v12);
  result = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t OptionExtensionKind.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int OptionExtensionKind.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

Swift::Int sub_1004627F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1004A6E94();
  if (v5)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

Swift::Int sub_100462890()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1004A6E94();
  if (v5)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_10046292C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12NIOIMAPCore219OptionExtensionKindO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_100462978(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = *(v4 + 20);
  result = sub_1002F178C(a1, a2, (v4 + 8), *(v4 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(v4 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v4 + 20) = v15;
  result = sub_1002F178C(45, 0xE100000000000000, (v4 + 8), v15);
  if (v16)
  {
    v17._countAndFlagsBits = 45;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v4 + 20);
  v19 = (v18 + result);
  if (__CFADD__(v18, result))
  {
    goto LABEL_14;
  }

  *(v4 + 20) = v19;
  v20 = __OFADD__(v13, result);
  v21 = v13 + result;
  if (v20)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1002F178C(a3, a4, (v4 + 8), v19);
  if (v22)
  {
    v23._countAndFlagsBits = a3;
    v23._object = a4;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v19);
  }

  v24 = *(v4 + 20);
  v25 = __CFADD__(v24, result);
  v26 = v24 + result;
  if (v25)
  {
    goto LABEL_16;
  }

  *(v4 + 20) = v26;
  v20 = __OFADD__(v21, result);
  result += v21;
  if (v20)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore219OptionExtensionKindO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (a1[4])
  {
    if (a2[4])
    {
      v8 = a1[2];
      v9 = a1[3];
      v10 = a2[2];
      v11 = a2[3];
      v12 = v4 == v6 && v5 == v7;
      if (v12 || (sub_1004A6D34() & 1) != 0)
      {
        v13 = v8 == v10 && v9 == v11;
        if (v13 || (sub_1004A6D34() & 1) != 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a2[4])
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return sub_1004A6D34();
}

unint64_t sub_100462B88()
{
  result = qword_1005DD280;
  if (!qword_1005DD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD280);
  }

  return result;
}

uint64_t sub_100462BEC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 20);
  result = sub_1002F178C(40, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v9)
  {
    v10._countAndFlagsBits = 40;
    v10._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v3 + 20) = v14;
  result = sub_100462FF4(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(a3) & 1) << 56));
  v15 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = *(v3 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v17)
  {
    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v3 + 20);
  v13 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v13)
  {
    goto LABEL_12;
  }

  *(v3 + 20) = v20;
  v21 = __OFADD__(v15, result);
  result += v15;
  if (v21)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t static OptionValueComp.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x100000000000000) == 0)
  {
    if ((a6 & 0x100000000000000) == 0)
    {
      return sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
    }

    return 0;
  }

  if ((a6 & 0x100000000000000) == 0)
  {
    return 0;
  }

  return sub_100397AD8(a1, a4);
}

void OptionValueComp.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x100000000000000) != 0)
  {
    sub_1004A6EB4(1uLL);

    sub_1003AD2A4(a1, a2);
  }

  else
  {
    sub_1004A6EB4(0);
    swift_beginAccess();
    v7 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
    sub_1004A6EA4();
  }
}

Swift::Int OptionValueComp.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1004A6E94();
  if ((a3 & 0x100000000000000) != 0)
  {
    sub_1004A6EB4(1uLL);
    sub_1003AD2A4(v7, a1);
  }

  else
  {
    sub_1004A6EB4(0);
    swift_beginAccess();
    v5 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
    sub_1004A6EA4();
  }

  return sub_1004A6F14();
}

Swift::Int sub_100462EE8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | ((*(v0 + 20) | (*(v0 + 22) << 16)) << 32);
  v4 = *(v0 + 23);
  sub_1004A6E94();
  OptionValueComp.hash(into:)(v6, v1, v2, v3 | (v4 << 56));
  return sub_1004A6F14();
}

uint64_t sub_100462F5C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 23))
  {
    if (*(a2 + 23))
    {
      return sub_100397AD8(v3, *a2);
    }

    return 0;
  }

  if (*(a2 + 23))
  {
    return 0;
  }

  return sub_10020FBD0(v3, *(a1 + 8), *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32), *a2, *(a2 + 8), (*(a2 + 16) | ((*(a2 + 20) | (*(a2 + 22) << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
}

uint64_t sub_100462FE4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  a2[2] = 0x100000000000000;
  return result;
}

uint64_t sub_100462FF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a3 & 0x100000000000000) != 0)
  {
    v35 = a1;
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = a1;
      v9 = *(v3 + 20);
      result = sub_1002F178C(0, 0xE000000000000000, (v3 + 8), *(v3 + 20));
      if (v10)
      {
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v11, v9);
      }

      v12 = result;
      v13 = *(v3 + 20);
      v14 = __CFADD__(v13, result);
      v15 = v13 + result;
      if (v14)
      {
        goto LABEL_33;
      }

      *(v3 + 20) = v15;
    }

    else
    {
      v8 = a1;
      v12 = 0;
      v15 = *(v3 + 20);
    }

    v16 = v15;
    result = sub_1002F178C(40, 0xE100000000000000, (v3 + 8), v15);
    if (v17)
    {
      v18._countAndFlagsBits = 40;
      v18._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v19 = *(v3 + 20);
    v14 = __CFADD__(v19, result);
    v20 = v19 + result;
    if (!v14)
    {
      *(v3 + 20) = v20;
      v21 = v12 + result;
      if (__OFADD__(v12, result))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      __chkstk_darwin(result);
      v34[2] = sub_10046324C;
      v34[3] = 0;
      v34[4] = v4;
      v34[5] = &v35;
      v34[6] = 32;
      v34[7] = 0xE100000000000000;
      result = sub_1004529B8(0, sub_100463398, v34, v8);
      v22 = v21 + result;
      if (__OFADD__(v21, result))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v23 = *(v4 + 20);
      result = sub_1002F178C(41, 0xE100000000000000, (v4 + 8), *(v4 + 20));
      if (v24)
      {
        v25._countAndFlagsBits = 41;
        v25._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
      }

      v26 = *(v4 + 20);
      v27 = (v26 + result);
      if (__CFADD__(v26, result))
      {
        goto LABEL_31;
      }

      *(v4 + 20) = v27;
      v28 = __OFADD__(v22, result);
      v29 = v22 + result;
      if (v28)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      if (!v7)
      {
        return v29;
      }

      result = sub_1002F178C(0, 0xE000000000000000, (v4 + 8), v27);
      if (v30)
      {
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v31, v27);
      }

      v32 = *(v4 + 20);
      v14 = __CFADD__(v32, result);
      v33 = v32 + result;
      if (v14)
      {
        goto LABEL_34;
      }

      *(v4 + 20) = v33;
      v28 = __OFADD__(v29, result);
      result += v29;
      if (!v28)
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v5 = a3 & 0xFFFFFFFFFFFFFFLL;

  return sub_1003B1E70(a1, a2, v5);
}

uint64_t sub_1004632A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100492104(*a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32) | (*(a2 + 31) << 56), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

unint64_t sub_100463334()
{
  result = qword_1005DD288;
  if (!qword_1005DD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD288);
  }

  return result;
}

unint64_t sub_1004633BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 20);
  v57 = *(a3 + 16);
  if (!v57)
  {
    goto LABEL_36;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v3 + 8), v5);
  if (v8)
  {
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v5);
  }

  v10 = result;
  v11 = *(v3 + 20);
  v5 = (v11 + result);
  if (__CFADD__(v11, result))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v3 + 20) = v5;
  result = sub_1002F178C(40, 0xE100000000000000, (v3 + 8), v5);
  if (v12)
  {
    v13._countAndFlagsBits = 40;
    v13._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v5);
  }

  v14 = *(v3 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    goto LABEL_48;
  }

  *(v3 + 20) = v16;
  if (__OFADD__(v10, result))
  {
    goto LABEL_49;
  }

  v54 = v10 + result;

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v55 = a2;
  while (v57 != v18)
  {
    if (v18 >= *(a2 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v22 = *(a2 + v17 + 32);
    v23 = *(a2 + v17 + 40);
    v5 = *(a3 + v17 + 40);
    v58 = *(a3 + v17 + 32);

    v24 = sub_100441B60(v22, v23);
    v25 = *(v4 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
    if (v26)
    {
      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = *(v4 + 20);
    v15 = __CFADD__(v28, result);
    v29 = v28 + result;
    if (v15)
    {
      goto LABEL_41;
    }

    *(v4 + 20) = v29;
    v30 = v24 + result;
    if (__OFADD__(v24, result))
    {
      goto LABEL_42;
    }

    result = sub_100441B60(v58, v5);
    v31 = v30 + result;
    if (__OFADD__(v30, result))
    {
      goto LABEL_43;
    }

    v21 = __OFADD__(v19, v31);
    v32 = v19 + v31;
    if (v21)
    {
      goto LABEL_44;
    }

    if (v18 >= v57 - 1)
    {

      v20 = 0;
      a2 = v55;
    }

    else
    {
      v33 = *(v4 + 20);
      v34 = sub_1002F178C(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
      a2 = v55;
      if (v35)
      {
        v36._countAndFlagsBits = 32;
        v36._object = 0xE100000000000000;
        v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v33);
      }

      v20 = v34;

      v37 = *(v4 + 20);
      v15 = __CFADD__(v37, v20);
      v38 = v37 + v20;
      if (v15)
      {
        goto LABEL_46;
      }

      *(v4 + 20) = v38;
    }

    v17 += 16;
    ++v18;
    v21 = __OFADD__(v32, v20);
    v19 = v32 + v20;
    if (v21)
    {
      goto LABEL_45;
    }
  }

  v21 = __OFADD__(v54, v19);
  v39 = v54 + v19;
  if (v21)
  {
    goto LABEL_50;
  }

  v40 = *(v4 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v4 + 8), *(v4 + 20));
  if (v41)
  {
    v42._countAndFlagsBits = 41;
    v42._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v42, v40);
  }

  v43 = *(v4 + 20);
  v44 = (v43 + result);
  if (__CFADD__(v43, result))
  {
    goto LABEL_51;
  }

  *(v4 + 20) = v44;
  v21 = __OFADD__(v39, result);
  v45 = v39 + result;
  if (v21)
  {
    goto LABEL_52;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v4 + 8), v44);
  if (v46)
  {
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v47, v44);
  }

  v48 = *(v4 + 20);
  v15 = __CFADD__(v48, result);
  v49 = v48 + result;
  if (v15)
  {
    goto LABEL_53;
  }

  *(v4 + 20) = v49;
  v21 = __OFADD__(v45, result);
  result += v45;
  if (!v21)
  {
    return result;
  }

  __break(1u);
LABEL_36:
  result = sub_1002F178C(4999502, 0xE300000000000000, (v4 + 8), v5);
  if (v50)
  {
    v51._countAndFlagsBits = 4999502;
    v51._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v51, v5);
  }

  v52 = *(v4 + 20);
  v15 = __CFADD__(v52, result);
  v53 = v52 + result;
  if (!v15)
  {
    *(v4 + 20) = v53;
    return result;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t ParameterValue.hash(into:)()
{
  v1 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - v4;
  v6 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ParameterValue();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002FC178(v0, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    sub_1004A6EB4(1uLL);
    sub_1004A6EB4(*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v19 += 2;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    sub_100025FDC(v16, v12, &qword_1005CDA78, &unk_1004CF7E0);
    sub_1004A6EB4(0);
    sub_100463F9C(v12, v9);
    if ((*(v2 + 48))(v9, 1, v1) == 1)
    {
      sub_1004A6EB4(1uLL);
    }

    else
    {
      sub_100025FDC(v9, v5, &qword_1005CDA68, &qword_1004CF7D0);
      sub_1004A6EB4(0);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_100025F40(v5, &qword_1005CDA68, &qword_1004CF7D0);
    }

    return sub_100025F40(v12, &qword_1005CDA78, &unk_1004CF7E0);
  }
}

Swift::Int ParameterValue.hashValue.getter()
{
  sub_1004A6E94();
  ParameterValue.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_100463A90()
{
  sub_1004A6E94();
  ParameterValue.hash(into:)();
  return sub_1004A6F14();
}

uint64_t sub_100463ACC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29[-v6];
  v8 = type metadata accessor for ParameterValue();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002FC178(a1, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_12;
  }

  v12 = *v11;
  v13 = *(v2 + 20);
  v7 = 0;
  result = sub_1002F178C(40, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v15)
  {
    v16._countAndFlagsBits = 40;
    v16._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = result;
  v18 = *(v2 + 20);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v20;
  v11 = sub_10049ED68(v12);

  v21 = __OFADD__(v17, v11);
  v22 = v11 + v17;
  if (v21)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v23 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v24)
  {
    v11 = (v2 + 8);
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v2 + 20);
  v19 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v19)
  {
    goto LABEL_16;
  }

  *(v2 + 20) = v27;
  v21 = __OFADD__(v22, result);
  result += v22;
  if (!v21)
  {
    return result;
  }

  __break(1u);
LABEL_12:
  sub_100025FDC(v11, v7, &qword_1005CDA78, &unk_1004CF7E0);
  v28 = sub_10048D800(v7);
  sub_100025F40(v7, &qword_1005CDA78, &unk_1004CF7E0);
  return v28;
}

uint64_t _s12NIOIMAPCore214ParameterValueO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ParameterValue();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = sub_10000C9C0(&qword_1005DBC68, &qword_1004FE598);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v24 - v17;
  v20 = *(v19 + 56);
  sub_1002FC178(a1, &v24 - v17);
  sub_1002FC178(a2, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002FC178(v18, v11);
    v21 = *v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = sub_10020FB40(v21, *&v18[v20]);

LABEL_9:
      sub_1002FC1DC(v18);
      return v22 & 1;
    }
  }

  else
  {
    sub_1002FC178(v18, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100025FDC(&v18[v20], v7, &qword_1005CDA78, &unk_1004CF7E0);
      v22 = sub_100488D88(v14, v7);
      sub_100025F40(v7, &qword_1005CDA78, &unk_1004CF7E0);
      sub_100025F40(v14, &qword_1005CDA78, &unk_1004CF7E0);
      goto LABEL_9;
    }

    sub_100025F40(v14, &qword_1005CDA78, &unk_1004CF7E0);
  }

  sub_100025F40(v18, &qword_1005DBC68, &qword_1004FE598);
  v22 = 0;
  return v22 & 1;
}

uint64_t type metadata accessor for ParameterValue()
{
  result = qword_1005DD308;
  if (!qword_1005DD308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100463F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100464010()
{
  result = qword_1005DD290;
  if (!qword_1005DD290)
  {
    type metadata accessor for ParameterValue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD290);
  }

  return result;
}

void sub_100464068()
{
  sub_1004640DC();
  if (v0 <= 0x3F)
  {
    sub_100464138();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1004640DC()
{
  if (!qword_1005DD318)
  {
    sub_1000796C4();
    CommandSet = type metadata accessor for LastCommandSet();
    if (!v1)
    {
      atomic_store(CommandSet, &qword_1005DD318);
    }
  }
}

void sub_100464138()
{
  if (!qword_1005D6C88)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D6C88);
    }
  }
}

uint64_t sub_100464188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 22);
  result = sub_1003BA02C(v7, 0, *a1, v7 | (v8 << 32), v9 | (v10 << 32) | (v11 << 48));
  if ((result & 0x10000) != 0)
  {
    if (v8 != v7)
    {
      goto LABEL_14;
    }

    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  if (result == 3338)
  {
    v13 = v7 + 2;
    if (v7 >= 0xFFFFFFFE)
    {
      __break(1u);
    }

    else if (v8 >= v13)
    {
      *(a1 + 8) = v13;
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (BYTE1(result) == 10)
  {
LABEL_11:
    v14 = v7 + 1;
    if (v7 == -1)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v8 >= v14)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_14:
    result = swift_beginAccess();
    v15 = *(*(v6 + 24) + (v11 | (v10 << 8)) + v7);
    if (v15 != 13 && v15 != 10)
    {
      sub_1003A527C();
      swift_allocError();
      *v17 = 0x6E776F6E6B6E55;
      v17[1] = 0xE700000000000000;
      v17[2] = 0xD000000000000020;
      v17[3] = 0x80000001004B03C0;
      v17[4] = 426;
      return swift_willThrow();
    }

    v14 = v7 + 1;
    if (v7 == -1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v8 < v14)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_21:
    *(a1 + 8) = v14;
    return result;
  }

  if (BYTE1(result) != 32)
  {
    if (BYTE1(result) != 13)
    {
      sub_1003A527C();
      swift_allocError();
      *v22 = 0x6E776F6E6B6E55;
      v22[1] = 0xE700000000000000;
      v22[2] = 0xD000000000000020;
      v22[3] = 0x80000001004B03C0;
      v22[4] = 430;
      return swift_willThrow();
    }

    goto LABEL_11;
  }

  v18 = __OFADD__(a2, 1);
  v19 = a2 + 1;
  if (v18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v19 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v23 = a3;
    return swift_willThrow();
  }

  v20 = v7 + 1;
  if (v7 == -1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v8 >= v20)
  {
    *(a1 + 8) = v20;

    sub_100464188(a1, v19, a3);
    if (!v24)
    {
    }

    v21 = *a1;

    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 12) = v8;
    *(a1 + 16) = v9;
    *(a1 + 20) = v10;
    *(a1 + 22) = v11;
    return swift_willThrow();
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_100464464(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    v10 = *(result + 20);
    v11 = *(result + 22);

    sub_1004178CC(v6, v4, a3, &v14);
    if (v3)
    {
      v12 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
      return swift_willThrow();
    }

    return v14;
  }

  return result;
}

uint64_t sub_10046455C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100464464(a1, a2, a3);
  if (v3)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10046460C(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
    }

    else
    {
      v6 = result;
      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      v11 = *(result + 22);

      sub_10046B71C(0x44495520uLL, 0xE400000000000000, 0, 0, v6, v4, a3);
      if (!v3)
      {

        return 1;
      }

      v12 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 2;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10046478C(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    *(result + 16) = a4;
    *(result + 24) = a5;
    *(result + 32) = a6;
    *(result + 40) = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < a3)
    {
      v17 = *a1;
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v20 = *(a1 + 20);
      v29 = *(a1 + 22);

      sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v16, a3);

      return 0xFFFFFFFFLL;
    }

    sub_1003A5228();
    v21 = swift_allocError();
    *v22 = a3;

    swift_willThrow();
    v31 = v21;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v31 = v21;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < a3)
    {
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      v26 = *(a1 + 20);
      v27 = *(a1 + 22);

      sub_10046B6C4(a1, v16, a3, &v30);

      return v30;
    }

    sub_1003A5228();
    swift_allocError();
    *v28 = a3;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_100464A98(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    *(result + 16) = a4;
    *(result + 24) = a5;
    *(result + 32) = a6;
    *(result + 40) = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < a3)
    {
      v17 = *a1;
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v20 = *(a1 + 20);
      v29 = *(a1 + 22);

      sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v16, a3);

      return 0xFFFFFFFFLL;
    }

    sub_1003A5228();
    v21 = swift_allocError();
    *v22 = a3;

    swift_willThrow();
    v31 = v21;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v31 = v21;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < a3)
    {
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      v26 = *(a1 + 20);
      v27 = *(a1 + 22);

      sub_10046B6C4(a1, v16, a3, &v30);

      return v30;
    }

    sub_1003A5228();
    swift_allocError();
    *v28 = a3;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_100464DA4(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    *(result + 16) = a4;
    *(result + 24) = a5;
    *(result + 32) = a6;
    *(result + 40) = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < a3)
    {
      v17 = *a1;
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v20 = *(a1 + 20);
      v29 = *(a1 + 22);

      sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v16, a3);

      return 0xFFFFFFFFLL;
    }

    sub_1003A5228();
    v21 = swift_allocError();
    *v22 = a3;

    swift_willThrow();
    v31 = v21;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v31 = v21;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < a3)
    {
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      v26 = *(a1 + 20);
      v27 = *(a1 + 22);

      sub_10046B6F0(a1, v16, a3, &v30);

      return v30;
    }

    sub_1003A5228();
    swift_allocError();
    *v28 = a3;
    swift_willThrow();
  }

  return result;
}

uint64_t BadCommand.parserError.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

__n128 BadCommand.parserError.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 40);

  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

unint64_t sub_10046517C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = *(result + 20);
  v21 = *result;
  v38 = *result;
  v39 = v3;
  v40 = v2;
  v18 = v4;
  v41 = v4;
  v42 = v5;
  v19 = v6;
  v43 = v6;
  v44 = v3;
  v45 = v2;
  if (v2 == v3)
  {
LABEL_9:

    sub_1003A52D0(&v38);
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v39)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v3 + v7 - v39 >= v40 - v39)
    {
      goto LABEL_20;
    }

    result = swift_beginAccess();
    if (*(*(v38 + 24) + (v43 | (v42 << 8)) + v3 + v7) - 58 < 0xFFFFFFF6)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_9;
    }
  }

  sub_1003A52D0(&v38);
  v30 = v21;
  v31 = v3;
  v32 = v2;
  v33 = v18;
  v34 = v20;
  v35 = v19;
  v36 = v3;
  v37 = v2;

  result = sub_1003A52D0(&v30);
  if (v3 + v7 == v36)
  {
    v22 = v21;
    v23 = v3;
    v24 = v2;
    v25 = v18;
    v26 = v20;
    v27 = v19;
    v28 = v3;
    v29 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_24;
    }

    swift_beginAccess();
    v12 = *(v21 + 24);
    v13 = *(v12 + v8);
    v14 = *(v12 + v8);

    sub_1003A52D0(&v22);
    sub_1004A6724(19);
    v47._object = 0x80000001004B0EA0;
    v47._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v47);
    v15 = ((v14 >> 6) & 0xFFFFC0FF | ((v14 & 0x3F) << 8)) + 33217;
    if (v13 >= 0)
    {
      v15 = v14 + 1;
    }

    v46 = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    v16[2] = 0xD000000000000020;
    v16[3] = 0x80000001004B03C0;
    v16[4] = 118;
    return swift_willThrow();
  }

  v22 = v21;
  v23 = v3;
  v24 = v2;
  v25 = v18;
  v26 = v20;
  v27 = v19;
  v28 = v3;
  v29 = v2;
  v9 = v3 + v7;

  sub_1003A52D0(&v22);
  result = v9 - v28;
  if (__OFSUB__(v9, v28))
  {
    goto LABEL_23;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 20) = WORD2(v11);
    *(a2 + 22) = BYTE6(v11);
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_100465520@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v25 = *(result + 20);
  v26 = *result;
  v43 = *result;
  v44 = v3;
  v45 = v2;
  v23 = v4;
  v46 = v4;
  v47 = v5;
  v24 = v6;
  v48 = v6;
  v49 = v3;
  v50 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1003A52D0(&v43);
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v44)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v3 + v7 - v44 >= v45 - v44)
    {
      goto LABEL_28;
    }

    result = swift_beginAccess();
    v9 = *(*(v43 + 24) + (v48 | (v47 << 8)) + v3 + v7);
    if (v9 != 93)
    {
      v10 = v9 - 32;
      if (v9 < 0x20)
      {
        break;
      }

      v11 = v10 > 0x3C;
      v12 = (1 << v10) & 0x1000000000000725;
      v13 = v11 || v12 == 0;
      if (!v13 || v9 == 123 || (v9 & 0x80) != 0)
      {
        break;
      }
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1003A52D0(&v43);
  v35 = v26;
  v36 = v3;
  v37 = v2;
  v38 = v23;
  v39 = v25;
  v40 = v24;
  v41 = v3;
  v42 = v2;

  result = sub_1003A52D0(&v35);
  if (v3 + v7 == v41)
  {
    v27 = v26;
    v28 = v3;
    v29 = v2;
    v30 = v23;
    v31 = v25;
    v32 = v24;
    v33 = v3;
    v34 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_32;
    }

    swift_beginAccess();
    v17 = *(v26 + 24);
    v18 = *(v17 + v8);
    v19 = *(v17 + v8);

    sub_1003A52D0(&v27);
    sub_1004A6724(19);
    v52._object = 0x80000001004B0EA0;
    v52._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v52);
    v20 = ((v19 >> 6) & 0xFFFFC0FF | ((v19 & 0x3F) << 8)) + 33217;
    if (v18 >= 0)
    {
      v20 = v19 + 1;
    }

    v51 = (v20 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v20) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0xD000000000000020;
    v21[3] = 0x80000001004B03C0;
    v21[4] = 118;
    return swift_willThrow();
  }

  v27 = v26;
  v28 = v3;
  v29 = v2;
  v30 = v23;
  v31 = v25;
  v32 = v24;
  v33 = v3;
  v34 = v2;
  v14 = v3 + v7;

  sub_1003A52D0(&v27);
  result = v14 - v33;
  if (__OFSUB__(v14, v33))
  {
    goto LABEL_31;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 20) = WORD2(v16);
    *(a2 + 22) = BYTE6(v16);
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_1004658F8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = *(result + 20);
  v20 = *result;
  v37 = *result;
  v38 = v3;
  v39 = v2;
  v17 = v4;
  v40 = v4;
  v41 = v5;
  v18 = v6;
  v42 = v6;
  v43 = v3;
  v44 = v2;
  if (v2 == v3)
  {
LABEL_12:

    sub_1003A52D0(&v37);
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v38)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v3 + v7 - v38 >= v39 - v38)
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    v9 = *(*(v37 + 24) + (v42 | (v41 << 8)) + v3 + v7);
    result = isalnum(v9);
    if (!result && (v9 - 45) >= 2)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_12;
    }
  }

  sub_1003A52D0(&v37);
  v29 = v20;
  v30 = v3;
  v31 = v2;
  v32 = v17;
  v33 = v19;
  v34 = v18;
  v35 = v3;
  v36 = v2;

  result = sub_1003A52D0(&v29);
  if (v3 + v7 == v35)
  {
    v21 = v20;
    v22 = v3;
    v23 = v2;
    v24 = v17;
    v25 = v19;
    v26 = v18;
    v27 = v3;
    v28 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v13 = *(*(v20 + 24) + v8);

    sub_1003A52D0(&v21);
    sub_1004A6724(19);
    v46._object = 0x80000001004B0EA0;
    v46._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v46);
    v14 = ((v13 >> 6) & 0xFFFFC0FF | ((v13 & 0x3F) << 8)) + 33217;
    if (v13 >= 0)
    {
      v14 = v13 + 1;
    }

    v45 = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v14) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0xD000000000000020;
    v15[3] = 0x80000001004B03C0;
    v15[4] = 118;
    return swift_willThrow();
  }

  v21 = v20;
  v22 = v3;
  v23 = v2;
  v24 = v17;
  v25 = v19;
  v26 = v18;
  v27 = v3;
  v28 = v2;

  sub_1003A52D0(&v21);
  result = v3 + v7 - v27;
  if (__OFSUB__(v3 + v7, v27))
  {
    goto LABEL_26;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 20) = WORD2(v12);
    *(a2 + 22) = BYTE6(v12);
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_100465CAC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v25 = *(result + 20);
  v26 = *result;
  v43 = *result;
  v44 = v3;
  v45 = v2;
  v23 = v4;
  v46 = v4;
  v47 = v5;
  v24 = v6;
  v48 = v6;
  v49 = v3;
  v50 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1003A52D0(&v43);
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v44)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v3 + v7 - v44 >= v45 - v44)
    {
      goto LABEL_29;
    }

    result = swift_beginAccess();
    v9 = *(*(v43 + 24) + (v48 | (v47 << 8)) + v3 + v7);
    if (v9 != 93)
    {
      v10 = v9 - 32;
      if (v9 < 0x20)
      {
        break;
      }

      v11 = v10 > 0x3C;
      v12 = (1 << v10) & 0x1000000000000725;
      v13 = v11 || v12 == 0;
      if (!v13 || v9 == 123 || (v9 & 0x80) != 0 || v9 == 43)
      {
        break;
      }
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1003A52D0(&v43);
  v35 = v26;
  v36 = v3;
  v37 = v2;
  v38 = v23;
  v39 = v25;
  v40 = v24;
  v41 = v3;
  v42 = v2;

  result = sub_1003A52D0(&v35);
  if (v3 + v7 == v41)
  {
    v27 = v26;
    v28 = v3;
    v29 = v2;
    v30 = v23;
    v31 = v25;
    v32 = v24;
    v33 = v3;
    v34 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_33;
    }

    swift_beginAccess();
    v17 = *(v26 + 24);
    v18 = *(v17 + v8);
    v19 = *(v17 + v8);

    sub_1003A52D0(&v27);
    sub_1004A6724(19);
    v52._object = 0x80000001004B0EA0;
    v52._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v52);
    v20 = ((v19 >> 6) & 0xFFFFC0FF | ((v19 & 0x3F) << 8)) + 33217;
    if (v18 >= 0)
    {
      v20 = v19 + 1;
    }

    v51 = (v20 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v20) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0xD000000000000020;
    v21[3] = 0x80000001004B03C0;
    v21[4] = 118;
    return swift_willThrow();
  }

  v27 = v26;
  v28 = v3;
  v29 = v2;
  v30 = v23;
  v31 = v25;
  v32 = v24;
  v33 = v3;
  v34 = v2;
  v14 = v3 + v7;

  sub_1003A52D0(&v27);
  result = v14 - v33;
  if (__OFSUB__(v14, v33))
  {
    goto LABEL_32;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 20) = WORD2(v16);
    *(a2 + 22) = BYTE6(v16);
    return result;
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1004660B8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v23 = *(result + 20);
  v24 = *result;
  v41 = *result;
  v42 = v3;
  v43 = v2;
  v21 = v4;
  v44 = v4;
  v45 = v5;
  v22 = v6;
  v46 = v6;
  v47 = v3;
  v48 = v2;
  if (v2 == v3)
  {
LABEL_15:

    sub_1003A52D0(&v41);
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v42)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v3 + v7 - v42 >= v43 - v42)
    {
      goto LABEL_26;
    }

    result = swift_beginAccess();
    v9 = *(*(v41 + 24) + (v46 | (v45 << 8)) + v3 + v7);
    v10 = (v9 - 45) >= 2 && (v9 - 48) >= 0xA;
    if (v10 && (v9 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_15;
    }
  }

  sub_1003A52D0(&v41);
  v33 = v24;
  v34 = v3;
  v35 = v2;
  v36 = v21;
  v37 = v23;
  v38 = v22;
  v39 = v3;
  v40 = v2;

  result = sub_1003A52D0(&v33);
  if (v3 + v7 == v39)
  {
    v25 = v24;
    v26 = v3;
    v27 = v2;
    v28 = v21;
    v29 = v23;
    v30 = v22;
    v31 = v3;
    v32 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_30;
    }

    swift_beginAccess();
    v15 = *(v24 + 24);
    v16 = *(v15 + v8);
    v17 = *(v15 + v8);

    sub_1003A52D0(&v25);
    sub_1004A6724(19);
    v50._object = 0x80000001004B0EA0;
    v50._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v50);
    v18 = ((v17 >> 6) & 0xFFFFC0FF | ((v17 & 0x3F) << 8)) + 33217;
    if (v16 >= 0)
    {
      v18 = v17 + 1;
    }

    v49 = (v18 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v18) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0xE000000000000000;
    v19[2] = 0xD000000000000020;
    v19[3] = 0x80000001004B03C0;
    v19[4] = 118;
    return swift_willThrow();
  }

  v25 = v24;
  v26 = v3;
  v27 = v2;
  v28 = v21;
  v29 = v23;
  v30 = v22;
  v31 = v3;
  v32 = v2;
  v12 = v3 + v7;

  sub_1003A52D0(&v25);
  result = v12 - v31;
  if (__OFSUB__(v12, v31))
  {
    goto LABEL_29;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 20) = WORD2(v14);
    *(a2 + 22) = BYTE6(v14);
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_100466470@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v24 = *(result + 22);
  v25 = *result;
  v42 = *result;
  v43 = v3;
  v44 = v2;
  v23 = v4;
  v45 = v4;
  v46 = v5;
  v47 = v6;
  v48 = v3;
  v49 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1003A52D0(&v42);
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v43)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v3 + v7 - v43 >= v44 - v43)
    {
      goto LABEL_28;
    }

    result = swift_beginAccess();
    v9 = *(*(v42 + 24) + (v47 | (v46 << 8)) + v3 + v7);
    v10 = v9 - 32;
    if (v9 < 0x20)
    {
      break;
    }

    v11 = v10 > 0x3D;
    v12 = (1 << v10) & 0x3000000000000725;
    v13 = v11 || v12 == 0;
    if (!v13 || v9 == 123 || (v9 & 0x80) != 0)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1003A52D0(&v42);
  v34 = v25;
  v35 = v3;
  v36 = v2;
  v37 = v23;
  v38 = v5;
  v39 = v24;
  v40 = v3;
  v41 = v2;

  result = sub_1003A52D0(&v34);
  if (v3 + v7 == v40)
  {
    v26 = v25;
    v27 = v3;
    v28 = v2;
    v29 = v23;
    v30 = v5;
    v31 = v24;
    v32 = v3;
    v33 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_32;
    }

    swift_beginAccess();
    v17 = *(v25 + 24);
    v18 = *(v17 + v8);
    v19 = *(v17 + v8);

    sub_1003A52D0(&v26);
    sub_1004A6724(19);
    v51._object = 0x80000001004B0EA0;
    v51._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v51);
    v20 = ((v19 >> 6) & 0xFFFFC0FF | ((v19 & 0x3F) << 8)) + 33217;
    if (v18 >= 0)
    {
      v20 = v19 + 1;
    }

    v50 = (v20 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v20) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0xD000000000000020;
    v21[3] = 0x80000001004B03C0;
    v21[4] = 118;
    return swift_willThrow();
  }

  v26 = v25;
  v27 = v3;
  v28 = v2;
  v29 = v23;
  v30 = v5;
  v31 = v24;
  v32 = v3;
  v33 = v2;
  v14 = v3 + v7;

  sub_1003A52D0(&v26);
  result = v14 - v32;
  if (__OFSUB__(v14, v32))
  {
    goto LABEL_31;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 20) = WORD2(v16);
    *(a2 + 22) = BYTE6(v16);
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_100466844@<X0>(uint64_t result@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *(result + 8);
  v3 = *(result + 12);
  if (v3 < v4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(result + 16);
  v6 = *(result + 20);
  v7 = *(result + 22);
  if (v5 - (v7 | (v6 << 8)) < v3)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = *(result + 20);
  v21 = *result;
  v38 = *result;
  v39 = v4;
  v40 = v3;
  v18 = v5;
  v41 = v5;
  v42 = v6;
  v19 = v7;
  v43 = v7;
  v44 = v4;
  v45 = v3;
  if (v3 == v4)
  {
LABEL_9:

    sub_1003A52D0(&v38);
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v9 = 0;
  v10 = v4 + (v6 << 8) + v7;
  while (1)
  {
    if (v4 + v9 < v39)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v4 + v9 - v39 >= v40 - v39)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    result = a2(*(*(v38 + 24) + (v43 | (v42 << 8)) + v4 + v9));
    if (!result)
    {
      break;
    }

    ++v10;
    ++v9;
    if (!(v4 - v3 + v9))
    {
      goto LABEL_9;
    }
  }

  sub_1003A52D0(&v38);
  v30 = v21;
  v31 = v4;
  v32 = v3;
  v33 = v18;
  v34 = v20;
  v35 = v19;
  v36 = v4;
  v37 = v3;

  result = sub_1003A52D0(&v30);
  v11 = v4 + v9;
  if (v4 + v9 == v36)
  {
    v22 = v21;
    v23 = v4;
    v24 = v3;
    v25 = v18;
    v26 = v20;
    v27 = v19;
    v28 = v4;
    v29 = v3;
    if (v9 >= (v3 - v4))
    {
      goto LABEL_24;
    }

    swift_beginAccess();
    v14 = *(*(v21 + 24) + v10);

    sub_1003A52D0(&v22);
    sub_1004A6724(19);
    v47._object = 0x80000001004B0EA0;
    v47._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v47);
    v15 = ((v14 >> 6) & 0xFFFFC0FF | ((v14 & 0x3F) << 8)) + 33217;
    if (v14 >= 0)
    {
      v15 = v14 + 1;
    }

    v46 = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    v16[2] = 0xD000000000000020;
    v16[3] = 0x80000001004B03C0;
    v16[4] = 118;
    return swift_willThrow();
  }

  v22 = v21;
  v23 = v4;
  v24 = v3;
  v25 = v18;
  v26 = v20;
  v27 = v19;
  v28 = v4;
  v29 = v3;

  sub_1003A52D0(&v22);
  result = v11 - v28;
  if (__OFSUB__(v11, v28))
  {
    goto LABEL_23;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a3 = result;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    *(a3 + 20) = WORD2(v13);
    *(a3 + 22) = BYTE6(v13);
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_100466BE8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v22 = *(result + 20);
  v23 = *result;
  v40 = *result;
  v41 = v3;
  v42 = v2;
  v20 = v4;
  v43 = v4;
  v44 = v5;
  v21 = v6;
  v45 = v6;
  v46 = v3;
  v47 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1003A52D0(&v40);
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v41)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v3 + v7 - v41 >= v42 - v41)
    {
      goto LABEL_27;
    }

    result = swift_beginAccess();
    v9 = *(*(v40 + 24) + (v45 | (v44 << 8)) + v3 + v7);
    v10 = v9 == 10 || v9 == 13;
    if (v10 || (v9 & 0x80) != 0 || !*(*(v40 + 24) + (v45 | (v44 << 8)) + v3 + v7) || v9 == 93)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1003A52D0(&v40);
  v32 = v23;
  v33 = v3;
  v34 = v2;
  v35 = v20;
  v36 = v22;
  v37 = v21;
  v38 = v3;
  v39 = v2;

  result = sub_1003A52D0(&v32);
  if (v3 + v7 == v38)
  {
    v24 = v23;
    v25 = v3;
    v26 = v2;
    v27 = v20;
    v28 = v22;
    v29 = v21;
    v30 = v3;
    v31 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v14 = *(v23 + 24);
    v15 = *(v14 + v8);
    v16 = *(v14 + v8);

    sub_1003A52D0(&v24);
    sub_1004A6724(19);
    v49._object = 0x80000001004B0EA0;
    v49._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v49);
    v17 = ((v16 >> 6) & 0xFFFFC0FF | ((v16 & 0x3F) << 8)) + 33217;
    if (v15 >= 0)
    {
      v17 = v16 + 1;
    }

    v48 = (v17 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v17) >> 3))));
    sub_1004A58E4();
    sub_1004A55C4();

    sub_1003A527C();
    swift_allocError();
    *v18 = 0;
    v18[1] = 0xE000000000000000;
    v18[2] = 0xD000000000000020;
    v18[3] = 0x80000001004B03C0;
    v18[4] = 118;
    return swift_willThrow();
  }

  v24 = v23;
  v25 = v3;
  v26 = v2;
  v27 = v20;
  v28 = v22;
  v29 = v21;
  v30 = v3;
  v31 = v2;
  v11 = v3 + v7;

  sub_1003A52D0(&v24);
  result = v11 - v30;
  if (__OFSUB__(v11, v30))
  {
    goto LABEL_30;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 20) = WORD2(v13);
    *(a2 + 22) = BYTE6(v13);
    return result;
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100466FA0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
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

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
    goto LABEL_27;
  }

  v22 = *(result + 20);
  v23 = *result;
  v40 = *result;
  v41 = v3;
  v42 = v2;
  v20 = v4;
  v43 = v4;
  v44 = v5;
  v21 = v6;
  v45 = v6;
  v46 = v3;
  v47 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1003A52D0(&v40);
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v41)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v3 + v7 - v41 >= v42 - v41)
    {
      goto LABEL_25;
    }

    result = swift_beginAccess();
    v9 = *(*(v40 + 24) + (v45 | (v44 << 8)) + v3 + v7);
    v10 = v9 - 32;
    if (v9 < 0x20)
    {
      break;
    }

    if (v10 <= 0x3D)
    {
      if (v10 == 61)
      {
        goto LABEL_6;
      }

      if (((1 << (v9 - 32)) & 0x1000000000000725) != 0)
      {
        break;
      }
    }

    if (v9 == 123 || (v9 & 0x80) != 0)
    {
      break;
    }

LABEL_6:
    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1003A52D0(&v40);
  v32 = v23;
  v33 = v3;
  v34 = v2;
  v35 = v20;
  v36 = v22;
  v37 = v21;
  v38 = v3;
  v39 = v2;

  result = sub_1003A52D0(&v32);
  if (v3 + v7 != v38)
  {
    v24 = v23;
    v25 = v3;
    v26 = v2;
    v27 = v20;
    v28 = v22;
    v29 = v21;
    v30 = v3;
    v31 = v2;
    v11 = v3 + v7;

    sub_1003A52D0(&v24);
    result = v11 - v30;
    if (__OFSUB__(v11, v30))
    {
      goto LABEL_28;
    }

    result = ByteBuffer.readSlice(length:)(result);
    if (result)
    {
      *a2 = result;
      *(a2 + 8) = v12;
      *(a2 + 16) = v13;
      *(a2 + 20) = WORD2(v13);
      *(a2 + 22) = BYTE6(v13);
      return result;
    }

    goto LABEL_30;
  }

  v24 = v23;
  v25 = v3;
  v26 = v2;
  v27 = v20;
  v28 = v22;
  v29 = v21;
  v30 = v3;
  v31 = v2;
  if (v7 >= (v2 - v3))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v14 = *(v23 + 24);
  v15 = *(v14 + v8);
  v16 = *(v14 + v8);

  sub_1003A52D0(&v24);
  sub_1004A6724(19);
  v49._object = 0x80000001004B0EA0;
  v49._countAndFlagsBits = 0xD000000000000011;
  sub_1004A5994(v49);
  v17 = ((v16 >> 6) & 0xFFFFC0FF | ((v16 & 0x3F) << 8)) + 33217;
  if (v15 >= 0)
  {
    v17 = v16 + 1;
  }

  v48 = (v17 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v17) >> 3))));
  sub_1004A58E4();
  sub_1004A55C4();

  sub_1003A527C();
  swift_allocError();
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v18[2] = 0xD000000000000020;
  v18[3] = 0x80000001004B03C0;
  v18[4] = 118;
  return swift_willThrow();
}

uint64_t sub_100467378(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    goto LABEL_40;
  }

  v10 = a3;
  if (v9 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v46 = v10;
LABEL_35:
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }
  }

  v11 = result;
  v12 = a2 + 2;
  v13 = *result;
  v14 = *(result + 8);
  v15 = *(result + 16);
  v16 = *(result + 20);
  v17 = *(result + 22);
  if (a2 + 2 >= a3)
  {
LABEL_32:
    sub_1003A5228();
    swift_allocError();
    *v47 = v10;

LABEL_34:
    swift_willThrow();
    v48 = *v11;

    *v11 = v13;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 20) = v16;
    *(v11 + 22) = v17;
    goto LABEL_35;
  }

  v49 = a2 + 1;
  while (1)
  {

    sub_100469DF8(v11);
    if (v8)
    {
      *v11 = v13;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
      goto LABEL_34;
    }

    v22 = sub_1003FC270(v11, v9, v10, a5, a6, a7, a8);
    v24 = v23;
    v26 = v25;
    v56 = v27;

    v28 = a4;
    v30 = *a4;
    v29 = a4[1];
    v31 = *(v29 + 16);
    if (*a4)
    {

      v32 = sub_1001E74AC(v22, v24, v29 + 32, v31, (v30 + 16));
      v34 = v33;
      v36 = v35;

      if (v34)
      {
        v28 = a4;
LABEL_22:
        sub_10046A724(v22, v24, v36, sub_100091A08);

        v39 = v28[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28[2] = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100091A08(0, *(v39 + 16) + 1, 1);
          v39 = v28[2];
        }

        v19 = *(v39 + 16);
        v18 = *(v39 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_100091A08((v18 > 1), v19 + 1, 1);
        }

        v20 = v28[2];
        *(v20 + 16) = v19 + 1;
        v21 = v20 + 16 * v19;
        *(v21 + 32) = v56;
        *(v21 + 40) = v26;
        goto LABEL_8;
      }

      v28 = a4;
    }

    else
    {
      if (!v31)
      {
LABEL_21:

        v36 = 0;
        goto LABEL_22;
      }

      v32 = 0;
      v37 = (v29 + 40);
      while (1)
      {
        v38 = *(v37 - 1) == v22 && *v37 == v24;
        if (v38 || (sub_1004A6D34() & 1) != 0)
        {
          break;
        }

        ++v32;
        v37 += 2;
        if (v31 == v32)
        {
          goto LABEL_21;
        }
      }
    }

    v41 = v28[2];
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v28[2] = v41;
    if ((v42 & 1) == 0)
    {
      v28[2] = sub_1001EDFFC(v41);
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      break;
    }

    v43 = v28[2];
    if (v32 >= *(v43 + 16))
    {
      goto LABEL_39;
    }

    v44 = v43 + 16 * v32;
    v45 = *(v44 + 40);
    *(v44 + 32) = v56;
    *(v44 + 40) = v26;

LABEL_8:
    v13 = *v11;
    v14 = *(v11 + 8);
    v15 = *(v11 + 16);
    v16 = *(v11 + 20);
    v17 = *(v11 + 22);
    v9 = v49;
    v10 = a3;
    v8 = 0;
    if (v12 >= a3)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1004677A0(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    goto LABEL_40;
  }

  v10 = a3;
  if (v9 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v46 = v10;
LABEL_35:
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }
  }

  v11 = result;
  v12 = a2 + 2;
  v13 = *result;
  v14 = *(result + 8);
  v15 = *(result + 16);
  v16 = *(result + 20);
  v17 = *(result + 22);
  if (a2 + 2 >= a3)
  {
LABEL_32:
    sub_1003A5228();
    swift_allocError();
    *v47 = v10;

LABEL_34:
    swift_willThrow();
    v48 = *v11;

    *v11 = v13;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 20) = v16;
    *(v11 + 22) = v17;
    goto LABEL_35;
  }

  v49 = a2 + 1;
  while (1)
  {

    sub_100469DF8(v11);
    if (v8)
    {
      *v11 = v13;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
      goto LABEL_34;
    }

    v22 = sub_100426C94(v11, v9, v10, a5, a6, a7, a8);
    v24 = v23;
    v26 = v25;
    v56 = v27;

    v28 = a4;
    v30 = *a4;
    v29 = a4[1];
    v31 = *(v29 + 16);
    if (*a4)
    {

      v32 = sub_1001E74AC(v22, v24, v29 + 32, v31, (v30 + 16));
      v34 = v33;
      v36 = v35;

      if (v34)
      {
        v28 = a4;
LABEL_22:
        sub_10046A724(v22, v24, v36, sub_100091A08);

        v39 = v28[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28[2] = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001D600C(0, *(v39 + 16) + 1, 1);
          v39 = v28[2];
        }

        v19 = *(v39 + 16);
        v18 = *(v39 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1001D600C((v18 > 1), v19 + 1, 1);
        }

        v20 = v28[2];
        *(v20 + 16) = v19 + 1;
        v21 = v20 + 16 * v19;
        *(v21 + 32) = v56;
        *(v21 + 40) = v26;
        goto LABEL_8;
      }

      v28 = a4;
    }

    else
    {
      if (!v31)
      {
LABEL_21:

        v36 = 0;
        goto LABEL_22;
      }

      v32 = 0;
      v37 = (v29 + 40);
      while (1)
      {
        v38 = *(v37 - 1) == v22 && *v37 == v24;
        if (v38 || (sub_1004A6D34() & 1) != 0)
        {
          break;
        }

        ++v32;
        v37 += 2;
        if (v31 == v32)
        {
          goto LABEL_21;
        }
      }
    }

    v41 = v28[2];
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v28[2] = v41;
    if ((v42 & 1) == 0)
    {
      v28[2] = sub_1001EE010(v41);
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      break;
    }

    v43 = v28[2];
    if (v32 >= *(v43 + 16))
    {
      goto LABEL_39;
    }

    v44 = v43 + 16 * v32;
    v45 = *(v44 + 40);
    *(v44 + 32) = v56;
    *(v44 + 40) = v26;

LABEL_8:
    v13 = *v11;
    v14 = *(v11 + 8);
    v15 = *(v11 + 16);
    v16 = *(v11 + 20);
    v17 = *(v11 + 22);
    v9 = v49;
    v10 = a3;
    v8 = 0;
    if (v12 >= a3)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100467BC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  if (__OFADD__(a2, 1))
  {
    goto LABEL_65;
  }

  v9 = a6;
  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    v78 = swift_allocError();
    *v79 = a3;
LABEL_59:
    swift_willThrow();
    v100[0] = v78;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }
  }

  v10 = result;
  v11 = *result;
  v12 = *(result + 8);
  v13 = *(result + 16);
  v14 = *(result + 20);
  v15 = *(result + 22);
  v92 = a2 + 2;
  if (a2 + 2 >= a3)
  {
LABEL_56:
    sub_1003A5228();
    v8 = swift_allocError();
    *v80 = a3;

LABEL_58:
    swift_willThrow();
    v81 = *v10;

    *v10 = v11;
    *(v10 + 8) = v12;
    *(v10 + 16) = v13;
    *(v10 + 20) = v14;
    *(v10 + 22) = v15;
    v78 = v8;
    goto LABEL_59;
  }

  v16 = a4;
  v86 = a2 + 1;
  v83 = result;
  while (1)
  {

    sub_100469DF8(v10);
    if (v8)
    {
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v14;
      *(v10 + 22) = v15;
      goto LABEL_58;
    }

    sub_100401688(v10, v86, a3, a5, v9, a7, a8, &v105);

    v22 = v105;
    v23 = v106;
    v24 = v107;
    v98 = v108;
    v25 = v109;
    *&v112[15] = *&v111[15];
    *v112 = *v111;
    v26 = *v16;
    v27 = v16[1];
    v99 = v110;
    v90 = v106;
    v91 = v107;
    v97 = v109;
    if (*v16)
    {
      break;
    }

    v41 = *(v27 + 16);
    if (!v41)
    {

      sub_100475424(v112, &v101);
      v75 = v82;
      v57 = v99;
      v9 = a6;
LABEL_51:
      v82 = v75 & 0xFF00000000000000 | v98 | (v25 << 32) | (v57 << 48);
      sub_10046A8F4(v22, v23 | (v24 << 32), v82, v41, sub_1003E553C);

      v76 = v16[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16[2] = v76;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003E551C(0, *(v76 + 16) + 1, 1);
        v76 = v16[2];
      }

      v18 = *(v76 + 16);
      v17 = *(v76 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1003E551C((v17 > 1), v18 + 1, 1);
      }

      sub_100025F40(&v105, &qword_1005DC7A0, &qword_100504120);
      v19 = v16[2];
      *(v19 + 16) = v18 + 1;
      v20 = v19 + 24 * v18;
      v21 = *v112;
      *(v20 + 47) = *&v112[15];
      *(v20 + 32) = v21;
      goto LABEL_8;
    }

    v96 = v107 - v106;
    v55 = v16[1];

    sub_100475424(v112, &v101);
    v56 = v22;
    swift_beginAccess();
    v39 = 0;
    v57 = v99;
    v58 = v99 | (v25 << 8);
    v59 = (v55 + 54);
    v93 = v58 + v23;
    while (1)
    {
      v60 = *(v59 - 14);
      v61 = *(v59 - 10);
      if (v61 - v60 == v96)
      {
        v62 = *(v59 - 22);
        v63 = *(v59 - 1);
        v64 = *v59;
        v65 = *(v59 - 6) == v98 && v63 == v97;
        v66 = v65 && v64 == v57;
        if (v66 && v62 == v56)
        {
          break;
        }

        swift_beginAccess();
        v68 = memcmp((*(v62 + 24) + (v64 | (v63 << 8)) + v60), (*(v56 + 24) + v93), v61 - v60);
        v57 = v99;
        if (!v68)
        {
          break;
        }
      }

      v59 += 24;
      if (v41 == ++v39)
      {
        v41 = 0;
        v16 = a4;
        v9 = a6;
        v75 = v82;
        v10 = v83;
        v22 = v56;
        v23 = v90;
        v24 = v91;
        v25 = v97;
        goto LABEL_51;
      }
    }

LABEL_43:

    v16 = a4;
    v9 = a6;
    v69 = a4[2];
    v70 = swift_isUniquelyReferenced_nonNull_native();
    a4[2] = v69;
    v10 = v83;
    if ((v70 & 1) == 0)
    {
      a4[2] = sub_10046B630(v69);
    }

    result = sub_100025F40(&v105, &qword_1005DC7A0, &qword_100504120);
    if ((v39 & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v71 = a4[2];
    if (v39 >= *(v71 + 16))
    {
      goto LABEL_64;
    }

    v72 = v71 + 24 * v39;
    v73 = *(v72 + 32);
    v74 = *v112;
    *(v72 + 47) = *&v112[15];
    *(v72 + 32) = v74;

LABEL_8:
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 20);
    v15 = *(v10 + 22);
    v8 = 0;
    if (v92 >= a3)
    {
      goto LABEL_56;
    }
  }

  v28 = *(v26 + 16);
  v29 = v110;
  sub_1004A6E94();
  swift_beginAccess();
  v30 = v29 | (v25 << 8);
  v31 = *(v22 + 24) + v30;
  sub_1004A6EA4();
  result = sub_1004A6F14();
  v32 = 1 << *(v26 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (!v33)
  {
    v35 = v34 & result;
    v36 = sub_1004A46F4();
    *&v117 = v26 + 16;
    *(&v117 + 1) = v26 + 32;
    *&v118 = v35;
    *(&v118 + 1) = v36;
    *&v119 = v37;
    *(&v119 + 1) = v38;
    v120 = 0;
    v39 = sub_1004A4724();
    LOBYTE(v35) = v40;
    v41 = v118;
    v101 = v117;
    v102 = v118;
    v103 = v119;
    v104 = v120;

    sub_100475424(v112, v100);

    if (v35)
    {
      v16 = a4;
      v9 = a6;
    }

    else
    {
      v42 = v22;
      v43 = v27 + 32;
      v44 = v91 - v23;
      v95 = v30 + v23;
      do
      {
        v46 = (v43 + 24 * v39);
        v47 = *(v46 + 2);
        v48 = *(v46 + 3);
        if (v48 - v47 == v44)
        {
          v49 = *v46;
          v50 = *(v46 + 10);
          v51 = *(v46 + 22);
          v52 = *(v46 + 4) == v98 && v50 == v97;
          v53 = v52 && v51 == v99;
          v54 = v53 && v49 == v42;
          if (v54 || (swift_beginAccess(), !memcmp((*(v49 + 24) + (v51 | (v50 << 8)) + v47), (*(v42 + 24) + v95), v48 - v47)))
          {

            goto LABEL_43;
          }
        }

        sub_1004A4744();
        v113 = v101;
        v114 = v102;
        v115 = v103;
        v116 = v104;
        v41 = v102;
        v39 = sub_1004A4724();
      }

      while ((v45 & 1) == 0);
      v10 = v83;
      v16 = a4;
      v22 = v42;
      v9 = a6;
      v23 = v90;
    }

    v75 = v82;
    v24 = v91;
    v25 = v97;
    v57 = v99;
    goto LABEL_51;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

void sub_1004682F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  v161 = a7;
  v162 = a8;
  v163 = a6;
  v160 = a5;
  v166 = a1;
  v184 = type metadata accessor for ParameterValue();
  v11 = *(v184 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v184);
  v159 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v158 = &v157 - v15;
  __chkstk_darwin(v16);
  v164 = &v157 - v17;
  v172 = sub_10000C9C0(&qword_1005DC790, &unk_10050A070);
  v18 = *(*(v172 - 8) + 64);
  __chkstk_darwin(v172);
  v20 = &v157 - v19;
  v21 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v157 - v23;
  v25 = sub_10000C9C0(&qword_1005DD368, &qword_10050A080);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v185 = &v157 - v27;
  v183 = sub_10000C9C0(&qword_1005DC7E0, &qword_1005048E8);
  v28 = *(*(v183 - 8) + 64);
  __chkstk_darwin(v183);
  v182 = &v157 - v30;
  v31 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    goto LABEL_112;
  }

  v32 = a2 + 2;
  v167 = (v29 + 48);
  v168 = a2 + 2;
  v173 = (v11 + 56);
  v174 = (v29 + 56);
  v165 = v11;
  v169 = (v11 + 48);
  v170 = v20;
  v180 = a4;
  v181 = v24;
  v171 = a3;
  v175 = a2 + 1;
  while (1)
  {
    while (1)
    {
      if (v31 >= a3)
      {
        sub_1003A5228();
        v42 = swift_allocError();
        *v43 = a3;
      }

      else
      {
        v33 = v166;
        v34 = *v166;
        v35 = *(v166 + 8);
        v36 = *(v166 + 12);
        v37 = *(v166 + 16);
        v38 = *(v166 + 20);
        v39 = *(v166 + 22);
        if (v32 >= a3)
        {
          sub_1003A5228();
          v41 = swift_allocError();
          *v44 = a3;
        }

        else
        {
          v40 = *v166;

          v41 = v178;
          sub_100469DF8(v33);
          if (!v41)
          {
            sub_10040A230(v33, v175, a3, v160, v163, v161, v162, v185);

            (*v174)(v185, 0, 1, v183);
            v49 = v180;
            v48 = v181;
            goto LABEL_16;
          }

          *v33 = v34;
          *(v33 + 8) = v35;
          *(v33 + 12) = v36;
          *(v33 + 16) = v37;
          *(v33 + 20) = v38;
          *(v33 + 22) = v39;
        }

        swift_willThrow();
        v45 = *v33;

        *v33 = v34;
        *(v33 + 8) = v35;
        *(v33 + 12) = v36;
        *(v33 + 16) = v37;
        *(v33 + 20) = v38;
        *(v33 + 22) = v39;
        v42 = v41;
        a4 = v180;
        v24 = v181;
      }

      swift_willThrow();
      v195 = v42;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (!swift_dynamicCast())
      {

        return;
      }

      v46 = v185;
      v47 = v183;
      (*v174)(v185, 1, 1, v183);

      if ((*v167)(v46, 1, v47) == 1)
      {
        sub_100025F40(v185, &qword_1005DD368, &qword_10050A080);

        return;
      }

      v48 = v24;
      v49 = a4;
LABEL_16:
      v178 = 0;
      v50 = v182;
      sub_100025FDC(v185, v182, &qword_1005DC7E0, &qword_1005048E8);
      v51 = *v50;
      v52 = *(v50 + 8);
      v53 = *(v50 + 12);
      v188 = *(v50 + 16);
      v54 = *(v50 + 20);
      v55 = *(v50 + 22);
      sub_1004754E8(v50 + *(v183 + 52), v48, type metadata accessor for ParameterValue);
      (*v173)(v48, 0, 1, v184);
      v56 = *v49;
      v57 = v49[1];
      v189 = v55;
      v190 = v54;
      v179 = v52;
      v177 = v53;
      if (v56)
      {
        break;
      }

      v75 = *(v57 + 16);
      if (v75)
      {
        v81 = v177 - v52;
        swift_beginAccess();
        v82 = v52;
        v72 = 0;
        v84 = v189;
        v83 = v190;
        v85 = (v57 + 54);
        v186 = (v189 | (v190 << 8)) + v82;
        LODWORD(v187) = v81;
        while (1)
        {
          v86 = *(v85 - 14);
          v87 = *(v85 - 10);
          if (v87 - v86 == v81)
          {
            v204 = v72;
            v88 = v75;
            v89 = *(v85 - 22);
            v90 = v51;
            v91 = *(v85 - 1);
            v92 = *v85;
            if (*(v85 - 6) == v188 && v91 == v83 && v92 == v84 && v89 == v90)
            {
              v75 = 0;
              v72 = v204;
              goto LABEL_58;
            }

            swift_beginAccess();
            v96 = memcmp((*(v89 + 24) + (v92 | (v91 << 8)) + v86), (*(v90 + 24) + v186), v87 - v86);
            v84 = v189;
            v83 = v190;
            v51 = v90;
            v75 = v88;
            v72 = v204;
            v81 = v187;
            if (!v96)
            {
              v75 = 0;
              goto LABEL_58;
            }
          }

          v85 += 24;
          if (v75 == ++v72)
          {
            v204 = v51;
            v75 = 0;
            goto LABEL_20;
          }
        }
      }

      v204 = v51;
      v76 = v49;
      v24 = v48;
LABEL_21:
      v77 = *(v172 + 48);
      v78 = v170;
      sub_10000E268(v24, &v170[v77], &qword_1005D7F50, &unk_100502FF0);
      v79 = (*v169)(&v78[v77], 1, v184);
      v80 = v171;
      if (v79 == 1)
      {
        sub_100025F40(v24, &qword_1005D7F50, &unk_100502FF0);
        sub_100025F40(v182, &qword_1005DC7E0, &qword_1005048E8);
        v31 = v175;
        v32 = v168;
        a4 = v76;
        a3 = v80;
      }

      else
      {
        v187 = type metadata accessor for ParameterValue;
        v140 = &v78[v77];
        v141 = v158;
        sub_100475480(v140, v158, type metadata accessor for ParameterValue);
        v157 = v157 & 0xFF00000000000000 | v188 | (v190 << 32) | (v189 << 48);
        v142 = v75;
        a4 = v76;
        sub_10046A8F4(v204, v179 | (v177 << 32), v157, v142, sub_1003E555C);
        sub_1004754E8(v141, v159, v187);
        v143 = v76[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76[2] = v143;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E5340(0, *(v143 + 16) + 1, 1);
          v143 = v76[2];
        }

        v146 = *(v143 + 16);
        v145 = *(v143 + 24);
        if (v146 >= v145 >> 1)
        {
          sub_1002E5340(v145 > 1, v146 + 1, 1);
        }

        sub_100475550(v158, type metadata accessor for ParameterValue);
        sub_100025F40(v24, &qword_1005D7F50, &unk_100502FF0);
        sub_100025F40(v182, &qword_1005DC7E0, &qword_1005048E8);
        v147 = a4[2];
        *(v147 + 16) = v146 + 1;
        sub_100475480(v159, v147 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v146, type metadata accessor for ParameterValue);
        v31 = v175;
        v32 = v168;
        a3 = v80;
      }
    }

    v187 = v57;
    v58 = v56;
    v60 = (v56 + 16);
    v59 = *(v56 + 16);
    sub_1004A6E94();
    swift_beginAccess();
    v61 = v55 | (v54 << 8);
    v62 = *(v51 + 24) + v61;
    sub_1004A6EA4();
    v63 = sub_1004A6F14();
    v64 = 1 << *v60;
    v65 = __OFSUB__(v64, 1);
    v66 = v64 - 1;
    if (v65)
    {
      break;
    }

    v67 = v53;
    v204 = v51;
    v68 = v66 & v63;
    v69 = sub_1004A46F4();
    *&v200 = v60;
    *(&v200 + 1) = v58 + 32;
    *&v201 = v68;
    *(&v201 + 1) = v69;
    *&v202 = v70;
    *(&v202 + 1) = v71;
    v203 = 0;
    v72 = sub_1004A4724();
    v74 = v73;
    v75 = v201;
    v191 = v200;
    v192 = v201;
    v193 = v202;
    v194 = v203;
    v176 = v58;

    if (v74)
    {
LABEL_19:

LABEL_20:
      v76 = v180;
      v24 = v181;
      goto LABEL_21;
    }

    v97 = v67 - v179;
    v186 = v61 + v179;
    v187 = (v187 + 32);
    while (1)
    {
      v99 = v187 + 24 * v72;
      v100 = *(v99 + 2);
      v101 = *(v99 + 3);
      if (v101 - v100 == v97)
      {
        v102 = *v99;
        v103 = *(v99 + 10);
        v104 = v99[22];
        v105 = *(v99 + 4) == v188 && v103 == v190;
        v106 = v105 && v104 == v189;
        if (v106 && v102 == v204)
        {
          break;
        }

        swift_beginAccess();
        if (!memcmp((*(v102 + 24) + (v104 | (v103 << 8)) + v100), (*(v204 + 24) + v186), v101 - v100))
        {
          break;
        }
      }

      sub_1004A4744();
      v196 = v191;
      v197 = v192;
      v198 = v193;
      v199 = v194;
      v75 = v192;
      v72 = sub_1004A4724();
      if (v98)
      {
        goto LABEL_19;
      }
    }

LABEL_58:
    v108 = *(v172 + 48);
    v109 = v170;
    sub_10000E268(v181, &v170[v108], &qword_1005D7F50, &unk_100502FF0);
    v110 = (*v169)(&v109[v108], 1, v184);
    v111 = v180;
    a3 = v171;
    if (v110 == 1)
    {
      v113 = *v180;
      v112 = v180[1];
      v114 = v180;
      v115 = *(v112 + 2);
      if (*v180)
      {
        swift_beginAccess();
        if ((*(v113 + 16) & 0x3FLL) == (*(v113 + 24) & 0x3FLL))
        {
          if (!v115)
          {
LABEL_81:
            v132 = swift_isUniquelyReferenced_nonNull_native();
            v111[1] = v112;
            if ((v132 & 1) == 0)
            {
              v112 = sub_10046B670(v112);
              v114[1] = v112;
            }

            v133 = *(v112 + 2);
            if (v72 >= v133)
            {
              goto LABEL_113;
            }

            v134 = v133 - 1;
            v135 = &v112[24 * v72];
            v136 = *(v135 + 4);
            memmove(v135 + 32, v135 + 56, 24 * (v133 - 1 - v72));
            *(v112 + 2) = v134;
            v114[1] = v112;
            v137 = *v114;
            if (*v114)
            {
              swift_beginAccess();
              v138 = *(v137 + 24) & 0x3FLL;
              v139 = *(v112 + 2);
              if (v138)
              {
LABEL_95:
                v148 = sub_1004A4784();
                if (v138 <= v148)
                {
                  v149 = v148;
                }

                else
                {
                  v149 = v138;
                }

                v150 = sub_10046B184(v112, v149, 0, v138, sub_10046B264);

                a4 = v111;
                *v111 = v150;
                goto LABEL_99;
              }
            }

            else
            {
              v138 = 0;
              v139 = *(v112 + 2);
            }

            if (v139 >= 0x10)
            {
              goto LABEL_95;
            }

            a4 = v111;
            *v111 = 0;
LABEL_99:

            v151 = a4[2];
            v152 = swift_isUniquelyReferenced_nonNull_native();
            a4[2] = v151;
            if ((v152 & 1) == 0)
            {
              v151 = sub_10046B5C8(v151);
              a4[2] = v151;
            }

            v153 = v151[2];
            if (v72 >= v153)
            {
              goto LABEL_111;
            }

            v154 = v153 - 1;
            v155 = *(v165 + 72);
            v156 = v151 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + v155 * v72;
            sub_100475550(v156, type metadata accessor for ParameterValue);
            if (v155 > 0 || v156 >= v156 + v155 + v155 * (v154 - v72))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v155)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v151[2] = v154;
            a4[2] = v151;
            v24 = v181;
            sub_100025F40(v181, &qword_1005D7F50, &unk_100502FF0);
            sub_100025F40(v182, &qword_1005DC7E0, &qword_1005048E8);
            goto LABEL_5;
          }
        }

        else if (v115 <= sub_1004A4764())
        {
          goto LABEL_81;
        }

        v125 = *v111;
        isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
        v127 = *v111;
        if ((isUniquelyReferenced_native & 1) == 0)
        {
          if (!v127)
          {
            goto LABEL_118;
          }

          v128 = *v114;
          v129 = sub_1004A4774();

          *v111 = v129;
          v127 = v129;
        }

        if (!v127)
        {
          goto LABEL_117;
        }

        v130 = v75;
        a4 = v111;
        sub_1003FEC78(v130, (v127 + 16), v127 + 32, v111);
        if (__OFADD__(v72, 1))
        {
          goto LABEL_114;
        }

        if ((v72 + 1) < v72)
        {
          goto LABEL_115;
        }

        v131 = v114[1];
        sub_1003FEEC0(v72);
        sub_1003FEBA4(v72);
        goto LABEL_99;
      }

      if (!v115)
      {
        goto LABEL_81;
      }

      v119 = v180[1];
      v120 = swift_isUniquelyReferenced_nonNull_native();
      a4 = v111;
      v111[1] = v112;
      if ((v120 & 1) == 0)
      {
        v112 = sub_10046B670(v112);
        v114[1] = v112;
      }

      v121 = *(v112 + 2);
      if (v72 >= v121)
      {
        goto LABEL_116;
      }

      v122 = v121 - 1;
      v123 = &v112[24 * v72];
      v124 = *(v123 + 4);
      memmove(v123 + 32, v123 + 56, 24 * (v121 - 1 - v72));
      *(v112 + 2) = v122;
      v114[1] = v112;
      goto LABEL_99;
    }

    sub_100475480(&v109[v108], v164, type metadata accessor for ParameterValue);
    v116 = v111[2];
    v117 = swift_isUniquelyReferenced_nonNull_native();
    v111[2] = v116;
    a4 = v111;
    if ((v117 & 1) == 0)
    {
      v111[2] = sub_10046B5C8(v116);
    }

    v24 = v181;
    sub_100025F40(v181, &qword_1005D7F50, &unk_100502FF0);
    sub_100025F40(v182, &qword_1005DC7E0, &qword_1005048E8);
    if ((v72 & 0x8000000000000000) != 0)
    {
      goto LABEL_109;
    }

    v118 = a4[2];
    if (v72 >= *(v118 + 16))
    {
      goto LABEL_110;
    }

    sub_10040018C(v164, v118 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v72);
LABEL_5:
    v31 = v175;
    v32 = v168;
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
}

uint64_t sub_100469200(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  if (__OFADD__(a2, 1))
  {
    goto LABEL_66;
  }

  v9 = a3;
  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    v17 = swift_allocError();
    *v77 = v9;
LABEL_59:
    swift_willThrow();
    v101 = v17;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }
  }

  v10 = result;
  v11 = a2 + 2;
  v12 = *result;
  v13 = *(result + 8);
  v14 = *(result + 16);
  v15 = *(result + 20);
  v16 = *(result + 22);
  if (a2 + 2 >= a3)
  {
LABEL_56:
    sub_1003A5228();
    v17 = swift_allocError();
    *v78 = v9;

LABEL_58:
    swift_willThrow();

    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 20) = v15;
    *(v10 + 22) = v16;
    goto LABEL_59;
  }

  v17 = v8;
  v18 = a4;
  v83 = a2 + 2;
  v84 = result;
  while (1)
  {
    swift_retain_n();
    sub_10042B1A0(v10, v11, v9, a5, a6, a7, a8, &v97);
    if (v17)
    {
      v79 = *v10;

      goto LABEL_58;
    }

    v22 = v97;
    v23 = DWORD2(v97);
    v24 = HIDWORD(v97);
    v25 = BYTE6(v98);
    v26 = *(&v98 + 1);
    v27 = *v18;
    v28 = v18[1];
    v95 = WORD2(v98);
    v96 = v97;
    v93 = v98;
    v94 = BYTE6(v98);
    v89 = *(&v98 + 1);
    v90 = HIDWORD(v97);
    v91 = DWORD2(v97);
    if (*v18)
    {
      break;
    }

    v43 = *(v28 + 16);
    if (!v43)
    {

      v11 = v83;
      v10 = v84;
      v59 = v94;
      v58 = v95;
      v17 = 0;
LABEL_51:
      v80 = v80 & 0xFF00000000000000 | v93 | (v58 << 32) | (v59 << 48);
      sub_10046A8F4(v22, v23 | (v24 << 32), v80, v43, sub_1003E555C);

      v75 = v18[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18[2] = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003E557C(0, *(v75 + 16) + 1, 1);
        v75 = v18[2];
      }

      v20 = *(v75 + 16);
      v19 = *(v75 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1003E557C((v19 > 1), v20 + 1, 1);
      }

      v21 = v18[2];
      *(v21 + 16) = v20 + 1;
      *(v21 + 8 * v20 + 32) = v26;
      goto LABEL_8;
    }

    v56 = HIDWORD(v97) - DWORD2(v97);

    swift_beginAccess();
    v57 = v23;
    v40 = 0;
    v59 = v94;
    v58 = v95;
    v60 = (v28 + 54);
    v92 = (v94 | (v95 << 8)) + v57;
    while (1)
    {
      v61 = *(v60 - 14);
      v62 = *(v60 - 10);
      if (v62 - v61 == v56)
      {
        v63 = *(v60 - 22);
        v64 = *(v60 - 1);
        v65 = *v60;
        v66 = *(v60 - 6) == v93 && v64 == v58;
        v67 = v66 && v65 == v59;
        if (v67 && v63 == v96)
        {
          break;
        }

        swift_beginAccess();
        v69 = memcmp((*(v63 + 24) + (v65 | (v64 << 8)) + v61), (*(v96 + 24) + v92), v62 - v61);
        v59 = v94;
        v58 = v95;
        if (!v69)
        {
          break;
        }
      }

      v60 += 24;
      if (v43 == ++v40)
      {
        v43 = 0;
        v26 = v89;
        v17 = 0;
        v11 = v83;
        v10 = v84;
        v18 = a4;
        v9 = a3;
        v22 = v96;
        v24 = v90;
        v23 = v91;
        goto LABEL_51;
      }
    }

LABEL_43:

    v18 = a4;
    v70 = a4[2];
    v71 = swift_isUniquelyReferenced_nonNull_native();
    a4[2] = v70;
    v17 = 0;
    v11 = v83;
    v10 = v84;
    v9 = a3;
    if ((v71 & 1) == 0)
    {
      a4[2] = sub_10046B6B0(v70);
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    v72 = a4[2];
    if (v40 >= *(v72 + 16))
    {
      goto LABEL_65;
    }

    v73 = v72 + 8 * v40;
    v74 = *(v73 + 32);
    *(v73 + 32) = v89;

LABEL_8:
    v12 = *v10;
    v13 = *(v10 + 8);
    v14 = *(v10 + 16);
    v15 = *(v10 + 20);
    v16 = *(v10 + 22);
    if (v11 >= v9)
    {
      goto LABEL_56;
    }
  }

  v29 = *(v27 + 16);
  v30 = WORD2(v98);
  sub_1004A6E94();
  swift_beginAccess();
  v31 = v25 | (v30 << 8);
  v32 = *(v22 + 24) + v31;
  sub_1004A6EA4();
  result = sub_1004A6F14();
  v33 = 1 << *(v27 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (!v34)
  {
    v36 = v35 & result;
    v37 = sub_1004A46F4();
    *&v106 = v27 + 16;
    *(&v106 + 1) = v27 + 32;
    *&v107 = v36;
    *(&v107 + 1) = v37;
    *&v108 = v38;
    *(&v108 + 1) = v39;
    v109 = 0;
    v40 = sub_1004A4724();
    v42 = v41;
    v43 = v107;
    v97 = v106;
    v98 = v107;
    v99 = v108;
    v100 = v109;

    if (v42)
    {
      v9 = a3;
      v17 = 0;
      v10 = v84;
    }

    else
    {
      v44 = v28 + 32;
      v45 = v31 + v91;
      do
      {
        v47 = (v44 + 24 * v40);
        v48 = *(v47 + 2);
        v49 = *(v47 + 3);
        if (v49 - v48 == v90 - v91)
        {
          v50 = *v47;
          v51 = *(v47 + 10);
          v52 = *(v47 + 22);
          v53 = *(v47 + 4) == v93 && v51 == v95;
          v54 = v53 && v52 == v94;
          v55 = v54 && v50 == v96;
          if (v55 || (swift_beginAccess(), !memcmp((*(v50 + 24) + (v52 | (v51 << 8)) + v48), (*(v96 + 24) + v45), v49 - v48)))
          {

            goto LABEL_43;
          }
        }

        sub_1004A4744();
        v102 = v97;
        v103 = v98;
        v104 = v99;
        v105 = v100;
        v43 = v98;
        v40 = sub_1004A4724();
      }

      while ((v46 & 1) == 0);
      v26 = v89;
      v17 = 0;
      v10 = v84;
      v9 = a3;
      v22 = v96;
    }

    v18 = a4;
    v11 = v83;
    v24 = v90;
    v23 = v91;
    v59 = v94;
    v58 = v95;
    goto LABEL_51;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1004698A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, char a4@<W3>, unint64_t *a5@<X8>)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v11 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v9 = a4;
    v8 = a5;
    v13 = *result;
    v14 = *(result + 8);
    v15 = *(result + 16);
    v16 = *(result + 20);
    v17 = *(result + 22);
    sub_10046517C(result, &v56);
    if (v5)
    {
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v16;
      *(v12 + 22) = v17;
      return swift_willThrow();
    }

    v7 = 0xD000000000000020;
    v6 = 0x80000001004B03C0;
    result = sub_10046C184(v56, v57, v58 | (v59 << 32) | (v60 << 48), 0xD000000000000020, 0x80000001004B03C0, 216);
    v20 = HIBYTE(v11) & 0xF;
    v21 = result & 0xFFFFFFFFFFFFLL;
    if ((v11 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v22 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      goto LABEL_71;
    }

    if ((v11 & 0x1000000000000000) == 0)
    {
      v23 = v8;
      v24 = v9;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v56 = result;
        v57 = v11 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v20)
          {
            v21 = v20 - 1;
            if (v20 != 1)
            {
              v27 = 0;
              v35 = &v56 + 1;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v27, 0xAuLL))
                {
                  break;
                }

                v30 = __CFADD__(10 * v27, v36);
                v27 = 10 * v27 + v36;
                if (v30)
                {
                  break;
                }

                ++v35;
                if (!--v21)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        if (result != 45)
        {
          if (v20)
          {
            v27 = 0;
            v38 = &v56;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              if (!is_mul_ok(v27, 0xAuLL))
              {
                break;
              }

              v30 = __CFADD__(10 * v27, v39);
              v27 = 10 * v27 + v39;
              if (v30)
              {
                break;
              }

              v38 = (v38 + 1);
              if (!--v20)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_69;
        }

        if (v20)
        {
          v21 = v20 - 1;
          if (v20 != 1)
          {
            v27 = 0;
            v31 = &v56 + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                break;
              }

              if (!is_mul_ok(v27, 0xAuLL))
              {
                break;
              }

              v30 = 10 * v27 >= v32;
              v27 = 10 * v27 - v32;
              if (!v30)
              {
                break;
              }

              ++v31;
              if (!--v21)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v25 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v50 = result;
          v55 = v11;
          v51 = sub_1004A67E4();
          v24 = v9;
          v23 = v8;
          v25 = v51;
          result = v50;
          v21 = v52;
          v11 = v55;
        }

        v26 = *v25;
        if (v26 == 43)
        {
          if (v21 >= 1)
          {
            if (--v21)
            {
              v27 = 0;
              if (v25)
              {
                v33 = v25 + 1;
                while (1)
                {
                  v34 = *v33 - 48;
                  if (v34 > 9)
                  {
                    goto LABEL_69;
                  }

                  if (!is_mul_ok(v27, 0xAuLL))
                  {
                    goto LABEL_69;
                  }

                  v30 = __CFADD__(10 * v27, v34);
                  v27 = 10 * v27 + v34;
                  if (v30)
                  {
                    goto LABEL_69;
                  }

                  ++v33;
                  if (!--v21)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_68;
            }

            goto LABEL_69;
          }

          goto LABEL_84;
        }

        if (v26 != 45)
        {
          if (v21)
          {
            v27 = 0;
            if (v25)
            {
              while (1)
              {
                v37 = *v25 - 48;
                if (v37 > 9)
                {
                  goto LABEL_69;
                }

                if (!is_mul_ok(v27, 0xAuLL))
                {
                  goto LABEL_69;
                }

                v30 = __CFADD__(10 * v27, v37);
                v27 = 10 * v27 + v37;
                if (v30)
                {
                  goto LABEL_69;
                }

                ++v25;
                if (!--v21)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_68;
          }

LABEL_69:
          v27 = 0;
          LOBYTE(v21) = 1;
LABEL_70:
          v61 = v21;
          if (v21)
          {
LABEL_71:
            v56 = 0;
            v57 = 0xE000000000000000;
            v40 = result;
            v41 = v11;
            sub_1004A6724(18);

            v56 = v40;
            v57 = v41;
            v62._countAndFlagsBits = v7 - 16;
            v62._object = 0x80000001004B0E80;
            sub_1004A5994(v62);
            v42 = v56;
            v43 = v57;
            sub_1003A527C();
            swift_allocError();
            *v44 = v42;
            *(v44 + 8) = v43;
            *(v44 + 16) = v7;
            *(v44 + 24) = v6;
            v45 = 218;
LABEL_72:
            *(v44 + 32) = v45;
            swift_willThrow();
          }

          goto LABEL_76;
        }

        if (v21 >= 1)
        {
          if (--v21)
          {
            v27 = 0;
            if (v25)
            {
              v28 = v25 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  goto LABEL_69;
                }

                if (!is_mul_ok(v27, 0xAuLL))
                {
                  goto LABEL_69;
                }

                v30 = 10 * v27 >= v29;
                v27 = 10 * v27 - v29;
                if (!v30)
                {
                  goto LABEL_69;
                }

                ++v28;
                if (!--v21)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_68:
            LOBYTE(v21) = 0;
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        __break(1u);
      }

      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }
  }

  v61 = 0;
  v53 = result;
  v54 = v11;

  v27 = sub_10010C818(v53, v54, 10);
  v47 = v46;

  result = v53;
  v11 = v54;
  if (v47)
  {
    goto LABEL_71;
  }

  v24 = v9;
  v23 = v8;
LABEL_76:
  if (v24)
  {
LABEL_80:
    *v23 = v27;
    v48 = v23;
    v49 = sub_1004A5924();

    v48[1] = v49;
    return result;
  }

  result = sub_100262EC4(result, v11);
  if ((result & 0x100) == 0)
  {
    v23 = v8;
    if (result == 48)
    {

      sub_1003A527C();
      swift_allocError();
      strcpy(v44, "starts with 0");
      *(v44 + 14) = -4864;
      *(v44 + 16) = v7;
      *(v44 + 24) = v6;
      v45 = 221;
      goto LABEL_72;
    }

    goto LABEL_80;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_100469DF8(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 12);
  if (v1 == v2)
  {
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  if (v1 < v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = result;
  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v1)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v38 = *result;
  v30 = v38;
  v31 = v2;
  v32 = v1;
  v11 = v4;
  v33 = v4;
  v12 = v6;
  v13 = v5;
  v34 = v5;
  v35 = v6;
  v36 = v2;
  v37 = v1;
  v7 = v2;
  while (1)
  {
    if (v7 < v31)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ((v7 - v31) >= v32 - v31)
    {
      goto LABEL_18;
    }

    result = swift_beginAccess();
    if (*(*(v30 + 24) + (v35 | (v34 << 8)) + v7) != 32)
    {
      break;
    }

    if (++v7 == v1)
    {

      result = sub_1003A52D0(&v30);
      *(v3 + 8) = v1;
      return result;
    }
  }

  v8 = v38;

  sub_1003A52D0(&v30);
  v22 = v8;
  v23 = v2;
  v24 = v1;
  v25 = v11;
  v26 = v13;
  v27 = v12;
  v28 = v2;
  v29 = v1;

  result = sub_1003A52D0(&v22);
  if (v28 >= v7)
  {
    sub_1004A6724(24);

    v14 = v8;
    v15 = v2;
    v16 = v1;
    v17 = v11;
    v18 = v13;
    v19 = v12;
    v20 = v2;
    v21 = v1;
    if ((v7 - v2) >= (v1 - v2))
    {
      goto LABEL_22;
    }

    swift_beginAccess();
    v9 = *(*(v8 + 24) + (v12 | (v13 << 8)) + v7);

    sub_1003A52D0(&v14);
    v39._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v39);

    sub_1003A527C();
    swift_allocError();
    *v10 = 0xD000000000000016;
    v10[1] = 0x80000001004B0E60;
    v10[2] = 0xD000000000000020;
    v10[3] = 0x80000001004B03C0;
    v10[4] = 241;
    return swift_willThrow();
  }

  if (v1 < v7)
  {
    goto LABEL_21;
  }

  *(v3 + 8) = v7;
  return result;
}

unint64_t sub_10046A0DC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 8);
  v7 = *(a1 + 12);
  v36 = *(a1 + 20);
  v9 = *(a1 + 22);
  v39 = *a1;
  swift_beginAccess();
  if ((a3 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v11 = 4 * v10;
  v12 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v31 = (v7 - v8);
  if (v5 <= v8 + v31)
  {
    v14 = v8 + v31;
  }

  else
  {
    v14 = v5;
  }

  v15 = v5 - v8;
  v16 = v9 | (v36 << 8);
  result = 15;
  v35 = v8;
  v37 = v5;
  v18 = v5;
  v34 = v14;
  v33 = v16;
  while (v11 != result >> 14)
  {
    v19 = result & 0xC;
    v20 = result;
    if (v19 == v13)
    {
      v25 = result;
      v26 = sub_10010C210(result, a2, a3);
      v16 = v33;
      v14 = v34;
      v11 = 4 * v10;
      v20 = v26;
      result = v25;
    }

    v21 = v20 >> 16;
    if (v20 >> 16 >= v10)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v30 = result;
      v27 = sub_1004A5A24();
      v16 = v33;
      v14 = v34;
      v11 = 4 * v10;
      v24 = v27;
      result = v30;
      if (v19 != v13)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v38[0] = a2;
        v38[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        v22 = v38;
      }

      else
      {
        v22 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a2 & 0x1000000000000000) == 0)
        {
          v29 = result;
          v23 = sub_1004A67E4();
          v16 = v33;
          v14 = v34;
          v11 = 4 * v10;
          v22 = v23;
          result = v29;
        }
      }

      v24 = *(v22 + v21);
      if (v19 != v13)
      {
LABEL_20:
        if ((a3 & 0x1000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }
    }

    result = sub_10010C210(result, a2, a3);
    v16 = v33;
    v14 = v34;
    v11 = 4 * v10;
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_21:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v6 == v18)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

LABEL_25:
    if (v10 <= result >> 16)
    {
      goto LABEL_44;
    }

    result = sub_1004A59F4();
    v16 = v33;
    v14 = v34;
    v11 = 4 * v10;
    if (v6 == v18)
    {
LABEL_38:
      sub_1003BD79C(a1, v38);
      goto LABEL_39;
    }

LABEL_27:
    if (v18 >= v6)
    {
      goto LABEL_41;
    }

    if (v37 < v35)
    {
      goto LABEL_42;
    }

    if (v14 == v18)
    {
      goto LABEL_43;
    }

    v28 = *(*(v39 + 24) + v16 + v18++);
    ++v15;
    if (((v28 ^ v24) & 0xDF) != 0)
    {
      sub_1003BD79C(a1, v38);
LABEL_37:

      return 0;
    }
  }

  result = sub_1003BD79C(a1, v38);
  if (v6 == v18)
  {
LABEL_39:

    return 1;
  }

  if (v18 < v37 || v18 >= v6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v18 < v35)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v15 < v31)
  {
    goto LABEL_37;
  }

LABEL_47:
  __break(1u);
  return result;
}

unint64_t sub_10046A3D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v38 = v6;
  v7 = 4 * v6;
  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v35 = a4 & 0xFFFFFFFFFFFFFFLL;
  v34 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v41 = v9;
  v42 = v10;
  v40 = 4 * v10;
  v45 = a1;
  v11 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v36 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v14 = 15;
  while (1)
  {
    v15 = v14 >> 14;
    v16 = v14 >> 14 == v7;
    if (v14 >> 14 == v7)
    {
      v17 = 0;
      goto LABEL_28;
    }

    v18 = v14;
    if ((v14 & 0xC) == v41)
    {
      v21 = result;
      v18 = sub_10010C210(v14, a3, a4);
      result = v21;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v38)
    {
      goto LABEL_49;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v31 = result;
      v17 = sub_1004A5A24();
      result = v31;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v43 = a3;
        v44 = v35;
        v20 = &v43;
      }

      else
      {
        v20 = v34;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v30 = result;
          v20 = sub_1004A67E4();
          result = v30;
        }
      }

      v17 = *(v20 + v19);
    }

    if ((v14 & 0xC) == v41)
    {
      v22 = result;
      v14 = sub_10010C210(v14, a3, a4);
      result = v22;
      if ((a4 & 0x1000000000000000) == 0)
      {
LABEL_23:
        v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_28;
      }
    }

    else if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

    if (v38 <= v14 >> 16)
    {
      goto LABEL_51;
    }

    v23 = result;
    v14 = sub_1004A59F4();
    result = v23;
LABEL_28:
    if (v40 == result >> 14)
    {
      return v16;
    }

    v24 = result & 0xC;
    v25 = result;
    if (v24 == v12)
    {
      v29 = result;
      v25 = sub_10010C210(result, v45, a2);
      result = v29;
    }

    v26 = v25 >> 16;
    if (v25 >> 16 >= v42)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v33 = result;
      v28 = sub_1004A5A24();
      result = v33;
      if (v24 != v12)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v45;
        v44 = v37;
        v27 = &v43;
      }

      else
      {
        v27 = v36;
        if ((v45 & 0x1000000000000000) == 0)
        {
          v32 = result;
          v27 = sub_1004A67E4();
          result = v32;
        }
      }

      v28 = *(v27 + v26);
      if (v24 != v12)
      {
LABEL_38:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_43;
      }
    }

    result = sub_10010C210(result, v45, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_39:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v15 == v7)
      {
        return 0;
      }

      goto LABEL_45;
    }

LABEL_43:
    if (v42 <= result >> 16)
    {
      goto LABEL_50;
    }

    result = sub_1004A59F4();
    if (v15 == v7)
    {
      return 0;
    }

LABEL_45:
    if (((v28 ^ v17) & 0xDF) != 0)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_10046A724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v6 = v4;
  v11 = v4[1];
  v9 = v4 + 1;
  v10 = v11;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v11;
  if ((result & 1) == 0)
  {
    result = a4(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (v14 >= v13 >> 1)
  {
    result = a4(v13 > 1, v14 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v14 + 1;
  v15 = v10 + 16 * v14;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v6[1] = v10;
  v16 = *v6;
  if (*v6)
  {
    swift_beginAccess();
    v17 = *(v16 + 16);
    if (sub_1004A4754() > v14)
    {
      v18 = *v6;
      result = swift_isUniquelyReferenced_native();
      v19 = *v6;
      if ((result & 1) == 0)
      {
        if (!v19)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v20 = *v6;
        v21 = sub_1004A4774();

        *v6 = v21;
        v19 = v21;
      }

      if (v19)
      {
        v22 = *(v19 + 16);
        v23 = *(*v9 + 16) + ~(*(v19 + 24) >> 6);
        return sub_1004A4714();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v14 < 0xF)
  {
    return result;
  }

  return sub_10046B08C(sub_1001E737C);
}

uint64_t sub_10046A8F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(BOOL, uint64_t, uint64_t))
{
  v8 = a2;
  v10 = HIDWORD(a2);
  v11 = v5 + 1;
  v12 = v5[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[1] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0, *(v12 + 16) + 1, 1);
    v12 = *v11;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    a5(v14 > 1, v15 + 1, 1);
    v12 = *v11;
  }

  *(v12 + 16) = v15 + 1;
  v16 = v12 + 24 * v15;
  *(v16 + 32) = a1;
  *(v16 + 40) = v8;
  *(v16 + 44) = v10;
  *(v16 + 48) = a3;
  *(v16 + 52) = WORD2(a3);
  *(v16 + 54) = BYTE6(a3);
  v5[1] = v12;
  v17 = *v5;
  if (*v5)
  {
    swift_beginAccess();
    v18 = *(v17 + 16);
    if (sub_1004A4754() > v15)
    {

      v19 = *v5;
      result = swift_isUniquelyReferenced_native();
      v21 = *v5;
      if ((result & 1) == 0)
      {
        if (!v21)
        {
LABEL_18:
          __break(1u);
          return result;
        }

        v22 = *v5;
        v23 = sub_1004A4774();

        *v5 = v23;
        v21 = v23;
      }

      if (v21)
      {
        v24 = *(v21 + 16);
        v25 = *(*v11 + 16) + ~(*(v21 + 24) >> 6);
        return sub_1004A4714();
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_13:

    return sub_10046B08C(sub_10046B264);
  }

  if (v15 >= 0xF)
  {
    goto LABEL_13;
  }
}

char *sub_10046AB0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD370, &qword_10050A088);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

size_t sub_10046AC10(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10000C9C0(&qword_1005D7F38, &qword_1004F30D0);
  v10 = *(type metadata accessor for ParameterValue() - 8);
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
  v15 = *(type metadata accessor for ParameterValue() - 8);
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

char *sub_10046AE3C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_10046AF58(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DD348, &qword_10050A020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005DD350, &qword_10050A028);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10046B08C(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  if (v4 || *(v5 + 16) >= 0x10uLL)
  {
    v7 = sub_1004A4784();
    if (v4 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    v6 = sub_10046B184(v5, v8, 0, v4, a1);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_10046B184(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = sub_1004A4784();
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = sub_1004A4794();
    sub_10046B20C(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

Swift::Int sub_10046B264(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  v15 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = v15 + 24 * v5;
        v7 = *v6;
        v8 = *(v6 + 8);
        v9 = *(v6 + 12);
        v10 = *(v6 + 20);
        v11 = *(v6 + 22);
        v12 = *a3;
        sub_1004A6E94();
        swift_beginAccess();
        v13 = *(v7 + 24) + (v11 | (v10 << 8));
        sub_1004A6EA4();
        result = sub_1004A6F14();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            sub_1004A4744();
          }
        }

        result = sub_1004A4734();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_10046B3B0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v9 = a2;
  v11 = HIDWORD(a2);
  v12 = *a6;
  sub_1004A6E94();
  v13 = v9;
  swift_beginAccess();
  v14 = *(a1 + 24);
  v31 = a3;
  v15 = (a3 >> 24) & 0xFFFF00 | BYTE6(a3);
  sub_1004A6EA4();
  result = sub_1004A6F14();
  if (__OFSUB__(1 << *a6, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1004A46F4();
    v17 = sub_1004A4724();
    if ((v18 & 1) == 0)
    {
      v19 = v11 - v9;
      v30 = v15 + v13;
      do
      {
        v21 = (a4 + 24 * v17);
        v23 = *(v21 + 2);
        v22 = *(v21 + 3);
        if (v22 - v23 == v19)
        {
          v24 = *v21;
          v25 = *(v21 + 10);
          v26 = *(v21 + 22);
          v27 = *(v21 + 4) == v31 && v25 == WORD2(v31);
          v28 = v27 && v26 == BYTE6(v31);
          if (v28 && v24 == a1)
          {
            break;
          }

          swift_beginAccess();
          if (!memcmp((*(v24 + 24) + (v26 | (v25 << 8)) + v23), (*(a1 + 24) + v30), v22 - v23))
          {
            break;
          }
        }

        sub_1004A4744();
        v17 = sub_1004A4724();
      }

      while ((v20 & 1) == 0);
    }

    return v17;
  }

  return result;
}

unint64_t sub_10046B6C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  result = sub_10040691C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_10046B6F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  result = sub_100405E9C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_10046B71C(unint64_t a1, unint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, int64_t a7)
{
  if (__OFADD__(a6, 1))
  {
    __break(1u);
    goto LABEL_48;
  }

  v12 = a7;
  if (a6 + 1 < a7)
  {
    v16 = v8;
    v7 = a5;
    v10 = a2;
    v11 = a1;
    v9 = *a5;
    v17 = *(a5 + 8);
    v15 = *(a5 + 12);
    LODWORD(v14) = *(a5 + 16);
    v57 = *(a5 + 20);
    v18 = *(a5 + 22);
    v40 = v18;
    if ((a4 & 1) == 0)
    {

      v37 = v17;
      v38 = v14;
      if ((v10 & 0x1000000000000000) != 0)
      {
LABEL_34:
        v14 = sub_1004A59E4();
LABEL_13:
        v12 = v57;
        v13 = *(v7 + 8);
        v39 = v15;
        if ((v14 & 0x8000000000000000) == 0 && v14 <= (v15 - v13))
        {
          LODWORD(v15) = v18;
          swift_beginAccess();
          v20 = *(v9 + 24);
          v21 = sub_1004A58D4();
          if (!__CFADD__(v13, v14))
          {
            v12 = v22;
            *(v7 + 8) = v13 + v14;
            if (v21 == v11 && v22 == v10)
            {
              goto LABEL_21;
            }

            v15 = v21;
            if (sub_1004A6D34())
            {
              goto LABEL_21;
            }

            if (a3)
            {
              sub_1004A6724(40);

              v61._countAndFlagsBits = v11;
              v61._object = v10;
              sub_1004A5994(v61);
              v62._countAndFlagsBits = 0x20646E756F6620;
              v62._object = 0xE700000000000000;
              sub_1004A5994(v62);
              v63._countAndFlagsBits = v15;
              v63._object = v12;
              sub_1004A5994(v63);

              sub_1003A527C();
              swift_allocError();
              *v33 = 0xD00000000000001DLL;
              v33[1] = 0x80000001004B0EE0;
              v33[2] = 0xD000000000000020;
              v33[3] = 0x80000001004B03C0;
              v33[4] = 283;
              swift_willThrow();

              v17 = v37;
              LODWORD(v14) = v38;
              LOWORD(v12) = v57;
              LODWORD(v15) = v39;
              goto LABEL_36;
            }

            v13 = v15;
            LODWORD(v15) = v39;
            if ((v12 & 0x1000000000000000) == 0)
            {
              if ((v12 & 0x2000000000000000) != 0)
              {
                v34 = HIBYTE(v12) & 0xF;
              }

              else
              {
                v34 = v13 & 0xFFFFFFFFFFFFLL;
              }

              if (v14 == v34)
              {
LABEL_45:
                if (sub_10046A3D8(v11, v10, v13, v12))
                {
LABEL_21:
                }
              }

LABEL_52:
              sub_1004A6724(42);

              v64._countAndFlagsBits = v11;
              v64._object = v10;
              sub_1004A5994(v64);
              v65._countAndFlagsBits = 0x20646E756F6620;
              v65._object = 0xE700000000000000;
              sub_1004A5994(v65);
              v66._countAndFlagsBits = v13;
              v66._object = v12;
              sub_1004A5994(v66);

              sub_1003A527C();
              swift_allocError();
              *v35 = 0xD00000000000001FLL;
              v35[1] = 0x80000001004B0EC0;
              v35[2] = 0xD000000000000020;
              v35[3] = 0x80000001004B03C0;
              v35[4] = 280;
              swift_willThrow();

              v17 = v37;
              LODWORD(v14) = v38;
              LOWORD(v12) = v57;
              goto LABEL_36;
            }

LABEL_51:
            if (v14 == sub_1004A59E4())
            {
              goto LABEL_45;
            }

            goto LABEL_52;
          }

          goto LABEL_49;
        }

        if (v15 >= v13)
        {
          v14 = v38;
          if (v38 - (v18 | (v57 << 8)) >= v15)
          {
            v49 = v9;
            v50 = v13;
            v51 = v15;
            v52 = v38;
            v53 = v57;
            v54 = v18;
            v55 = v13;
            v56 = v15;

            v25 = sub_10046A0DC(&v49, v11, v10);
            sub_1003A52D0(&v49);
            if (v25)
            {
              sub_1003A5324();
              swift_allocError();
            }

            else
            {
              sub_1004A6724(23);

              v58._countAndFlagsBits = v11;
              v58._object = v10;
              sub_1004A5994(v58);
              v59._countAndFlagsBits = 544106784;
              v59._object = 0xE400000000000000;
              sub_1004A5994(v59);
              v41 = v9;
              v42 = v13;
              v43 = v15;
              v44 = v38;
              v45 = v12;
              v46 = v18;
              v47 = v13;
              v48 = v15;
              swift_beginAccess();
              v27 = *(v9 + 24);

              v28 = sub_1004A58D4();
              v30 = v29;
              sub_1003A52D0(&v41);
              v60._countAndFlagsBits = v28;
              v60._object = v30;
              sub_1004A5994(v60);

              sub_1003A527C();
              swift_allocError();
              *v31 = 0x6F74206465697254;
              v31[1] = 0xEF20657372617020;
              v31[2] = 0xD000000000000020;
              v31[3] = 0x80000001004B03C0;
              LOWORD(v12) = v57;
              v31[4] = 264;
            }

            swift_willThrow();

            v17 = v37;
            goto LABEL_36;
          }

          goto LABEL_50;
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_10:
      if ((v10 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v10) & 0xF;
      }

      else
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      goto LABEL_13;
    }

    if (a6 + 2 >= a7)
    {
      sub_1003A5228();
      swift_allocError();
      *v26 = v12;

      LOWORD(v12) = v57;
    }

    else
    {
      if (a6 + 3 >= a7)
      {
        sub_1003A5228();
        swift_allocError();
        *v32 = v12;
        swift_retain_n();
      }

      else
      {
        swift_retain_n();
        sub_100469DF8(v7);
        if (!v16)
        {

          goto LABEL_33;
        }
      }

      swift_willThrow();

      *v7 = v9;
      *(v7 + 8) = v17;
      *(v7 + 12) = v15;
      *(v7 + 16) = v14;
      LOWORD(v12) = v57;
      *(v7 + 20) = v57;
      *(v7 + 22) = v18;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {

LABEL_36:
      *v7 = v9;
      *(v7 + 8) = v17;
      *(v7 + 12) = v15;
      *(v7 + 16) = v14;
      *(v7 + 20) = v12;
      *(v7 + 22) = v40;
      return swift_willThrow();
    }

LABEL_33:
    v37 = v17;
    v38 = v14;
    if ((v10 & 0x1000000000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  sub_1003A5228();
  swift_allocError();
  *v19 = v12;
  return swift_willThrow();
}

uint64_t sub_10046BE40(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v40 = a5;
  if (__OFADD__(a2, 1))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v13 = a3;
LABEL_8:
    swift_willThrow();
    return v5;
  }

  v7 = result;
  v9 = *(result + 8);
  v8 = *(result + 12);
  if (v8 < v9)
  {
    goto LABEL_40;
  }

  v10 = *(result + 16);
  v11 = *(result + 20);
  v12 = *(result + 22);
  if (v10 - (v12 | (v11 << 8)) < v8)
  {
    goto LABEL_41;
  }

  v20 = v12 | (v11 << 8);
  v5 = *result;
  v32 = *result;
  v33 = v9;
  v34 = v8;
  v22 = v11;
  v23 = v10;
  v35 = v10;
  v36 = v11;
  v21 = v12;
  v37 = v12;
  v38 = v9;
  v39 = v8;
  if (v9 == v8)
  {
LABEL_6:
    swift_retain_n();
    sub_1003A52D0(&v32);
    sub_1003A5324();
    swift_allocError();
    swift_willThrow();

    *v7 = v5;
    *(v7 + 8) = v9;
    *(v7 + 12) = v8;
    *(v7 + 16) = v23;
    *(v7 + 20) = v22;
    *(v7 + 22) = v21;
    goto LABEL_8;
  }

  v15 = v9;
  while (1)
  {
    if (v15 < v33)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if ((v15 - v33) >= v34 - v33)
    {
      goto LABEL_38;
    }

    result = swift_beginAccess();
    v16 = *(*(v32 + 24) + (v37 | (v36 << 8)) + v15);
    if (*a4 == 1)
    {
      *a4 = 0;
      if (v16 != 34 && v16 != 92)
      {
        break;
      }

      goto LABEL_12;
    }

    v17 = v16 == 10 || v16 == 13;
    if (v17 || (v16 & 0x80) != 0)
    {
      break;
    }

    if (v16 == 92)
    {
      *a4 = 1;
      *v40 = 1;
    }

    else
    {
      if (!*(*(v32 + 24) + (v37 | (v36 << 8)) + v15) || v16 == 34)
      {
        break;
      }

      *a4 = 0;
    }

LABEL_12:
    if (v8 == ++v15)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1003A52D0(&v32);
  v24 = v5;
  v25 = v9;
  v26 = v8;
  v27 = v23;
  v28 = v22;
  v29 = v21;
  v30 = v9;
  v31 = v8;

  result = sub_1003A52D0(&v24);
  v18 = v15 - v30;
  if (__OFSUB__(v15, v30))
  {
    goto LABEL_42;
  }

  if (v8 < v18 || (v8 - v18) < v9)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (__CFADD__(v20, v9))
  {
    goto LABEL_44;
  }

  if ((v20 + v9) >> 24)
  {
    v19 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v9, v18, v5);

    v5 = v19;
  }

  else
  {
  }

  if (!__CFADD__(v9, v18))
  {
    *(v7 + 8) = v9 + v18;
    return v5;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_10046C184(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) < HIDWORD(a2))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v19 = v6;
  v20 = v7;
  v13[0] = result;
  v13[1] = a2;
  v14 = a3;
  v15 = WORD2(a3);
  v16 = BYTE6(a3);
  v17 = a2;
  v18 = HIDWORD(a2);

  result = sub_100477068(v13);
  if (!v11)
  {
    sub_1003A527C();
    swift_allocError();
    strcpy(v12, "Invalid UTF8");
    v12[13] = 0;
    *(v12 + 7) = -5120;
    *(v12 + 2) = a4;
    *(v12 + 3) = a5;
    *(v12 + 4) = a6;
    swift_willThrow();
  }

  return result;
}

unint64_t sub_10046C278(unint64_t result, uint64_t a2, int64_t a3, char a4)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);

    sub_1004698A4(v8, v5, a3, a4 & 1, &v16);
    if (v4)
    {
      v14 = *v8;

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    return v16;
  }

  return result;
}

uint64_t sub_10046C378(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v14 = a3;
    goto LABEL_16;
  }

  v5 = result;
  v6 = *(result + 8);
  v7 = *(result + 12);
  if (v7 < v6)
  {
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v9 = *(result + 20);
  v10 = *(result + 22);
  if (v8 - (v10 | (v9 << 8)) < v7)
  {
    goto LABEL_31;
  }

  v17 = v10 | (v9 << 8);
  v3 = *result;
  v28 = *result;
  v29 = v6;
  v30 = v7;
  v36 = v8;
  v31 = v8;
  v18 = v10;
  v19 = v9;
  v32 = v9;
  v33 = v10;
  v34 = v6;
  v35 = v7;
  if (v6 != v7)
  {
    v11 = v6;
    while (1)
    {
      if (v11 < v29)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if ((v11 - v29) >= v30 - v29)
      {
        goto LABEL_28;
      }

      result = swift_beginAccess();
      v12 = *(*(v28 + 24) + (v33 | (v32 << 8)) + v11);
      if (v12 == 10 || v12 == 13)
      {
        break;
      }

      if (v7 == ++v11)
      {
        goto LABEL_14;
      }
    }

    swift_retain_n();
    sub_1003A52D0(&v28);
    v20 = v3;
    v21 = v6;
    v22 = v7;
    v23 = v36;
    v24 = v19;
    v25 = v18;
    v26 = v6;
    v27 = v7;

    result = sub_1003A52D0(&v20);
    v15 = v11 - v26;
    if (__OFSUB__(v11, v26))
    {
      goto LABEL_32;
    }

    if (v7 >= v15 && (v7 - v15) >= v6)
    {
      if (__CFADD__(v17, v6))
      {
        goto LABEL_34;
      }

      if ((v17 + v6) >> 24)
      {
        v16 = v11 - v26;
        v15 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v6, v15, v3);

        v3 = v15;
        LODWORD(v15) = v16;
      }

      else
      {
      }

      if (!__CFADD__(v6, v15))
      {
        *(v5 + 8) = v6 + v15;
        return v3;
      }

      goto LABEL_35;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

LABEL_14:
  swift_retain_n();
  sub_1003A52D0(&v28);
  sub_1003A5324();
  swift_allocError();
  swift_willThrow();

  *v5 = v3;
  *(v5 + 8) = v6;
  *(v5 + 12) = v7;
  *(v5 + 16) = v36;
  *(v5 + 20) = v19;
  *(v5 + 22) = v18;
LABEL_16:
  swift_willThrow();
  return v3;
}

uint64_t sub_10046C660(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a2 + 1 < a3)
  {
    v5 = result;
    v7 = *(result + 8);
    v6 = *(result + 12);
    if (v6 >= v7)
    {
      v8 = *(result + 16);
      v9 = *(result + 20);
      v10 = *(result + 22);
      if (v8 - (v10 | (v9 << 8)) >= v6)
      {
        v17 = v10 | (v9 << 8);
        v3 = *result;
        v28 = *result;
        v29 = v7;
        v30 = v6;
        v36 = v8;
        v31 = v8;
        v18 = v10;
        v19 = v9;
        v32 = v9;
        v33 = v10;
        v34 = v7;
        v35 = v6;
        if (v7 == v6)
        {
LABEL_6:
          swift_retain_n();
          sub_1003A52D0(&v28);
          sub_1003A5324();
          swift_allocError();
          swift_willThrow();

          *v5 = v3;
          *(v5 + 8) = v7;
          *(v5 + 12) = v6;
          *(v5 + 16) = v36;
          *(v5 + 20) = v19;
          *(v5 + 22) = v18;
          goto LABEL_8;
        }

        v12 = v7;
        while (1)
        {
          if (v12 < v29)
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          if ((v12 - v29) >= v30 - v29)
          {
            goto LABEL_30;
          }

          result = swift_beginAccess();
          v13 = *(*(v28 + 24) + (v33 | (v32 << 8)) + v12);
          if ((v13 | 4) != 0x2F)
          {
            result = isalnum(v13);
            if (v13 != 61 && result == 0)
            {
              break;
            }
          }

          if (v6 == ++v12)
          {
            goto LABEL_6;
          }
        }

        swift_retain_n();
        sub_1003A52D0(&v28);
        v20 = v3;
        v21 = v7;
        v22 = v6;
        v23 = v36;
        v24 = v19;
        v25 = v18;
        v26 = v7;
        v27 = v6;

        result = sub_1003A52D0(&v20);
        v15 = v12 - v26;
        if (__OFSUB__(v12, v26))
        {
          goto LABEL_34;
        }

        if (v6 >= v15 && (v6 - v15) >= v7)
        {
          if (__CFADD__(v17, v7))
          {
            goto LABEL_36;
          }

          if ((v17 + v7) >> 24)
          {
            v16 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v7, v15, v3);

            v3 = v16;
          }

          else
          {
          }

          if (!__CFADD__(v7, v15))
          {
            *(v5 + 8) = v7 + v15;
            return v3;
          }

          goto LABEL_37;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_1003A5228();
  swift_allocError();
  *v11 = a3;
LABEL_8:
  swift_willThrow();
  return v3;
}

uint64_t sub_10046C958(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2 + 1 < a3)
  {
    v5 = result;
    v6 = *(result + 8);
    v7 = *(result + 12);
    if (v7 >= v6)
    {
      v8 = *(result + 16);
      v9 = *(result + 20);
      v10 = *(result + 22);
      if (v8 - (v10 | (v9 << 8)) >= v7)
      {
        v18 = v10 | (v9 << 8);
        v20 = *(result + 16);
        v21 = *result;
        v31 = *result;
        v32 = v6;
        v33 = v7;
        v34 = v8;
        v19 = v9;
        v35 = v9;
        v22 = v10;
        v36 = v10;
        v37 = v6;
        v38 = v7;
        v39 = v6;
        if (v6 == v7)
        {
LABEL_6:
          swift_retain_n();
          sub_1003A52D0(&v31);
          sub_1003A5324();
          swift_allocError();
          swift_willThrow();

          *v5 = v21;
          *(v5 + 8) = v39;
          *(v5 + 12) = v7;
          *(v5 + 16) = v20;
          *(v5 + 20) = v19;
          *(v5 + 22) = v22;
          goto LABEL_8;
        }

        v3 = 1;
        v12 = v39;
        while (1)
        {
          if (v12 < v32)
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v12 - v32) >= v33 - v32)
          {
            goto LABEL_31;
          }

          result = swift_beginAccess();
          v13 = *(*(v31 + 24) + (v36 | (v35 << 8)) + v12);
          if ((v13 - 59) <= 0xFFFFFFF4)
          {
            v14 = (v13 - 45) > 0x32 || ((1 << (v13 - 45)) & 0x4000000000003) == 0;
            if (v14 && (v13 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
            {
              break;
            }
          }

          if (v7 == ++v12)
          {
            goto LABEL_6;
          }
        }

        v3 = v21;
        swift_retain_n();
        sub_1003A52D0(&v31);
        v23 = v21;
        v15 = v39;
        v24 = v39;
        v25 = v7;
        v26 = v20;
        v27 = v19;
        v28 = v22;
        v29 = v39;
        v30 = v7;

        result = sub_1003A52D0(&v23);
        v16 = v12 - v29;
        if (__OFSUB__(v12, v29))
        {
          goto LABEL_35;
        }

        if (v7 >= v16 && (v7 - v16) >= v15)
        {
          if (__CFADD__(v18, v15))
          {
            goto LABEL_37;
          }

          if ((v18 + v15) >> 24)
          {
            v3 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v15, v16, v21);

            v17 = v16;
            LODWORD(v15) = v39;
          }

          else
          {

            v17 = v16;
          }

          if (!__CFADD__(v15, v17))
          {
            *(v5 + 8) = v15 + v17;
            return v3;
          }

          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1003A5228();
  swift_allocError();
  *v11 = a3;
LABEL_8:
  swift_willThrow();
  return v3;
}

uint64_t sub_10046CC90(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  if (__OFADD__(a2, 1))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v13 = a3;
LABEL_8:
    swift_willThrow();
    return v5;
  }

  v7 = result;
  v8 = *(result + 8);
  v9 = *(result + 12);
  if (v9 < v8)
  {
    goto LABEL_32;
  }

  v10 = *(result + 16);
  v11 = *(result + 20);
  v12 = *(result + 22);
  if (v10 - (v12 | (v11 << 8)) < v9)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v21 = v12 | (v11 << 8);
  v22 = *result;
  v23 = *(result + 22);
  v34 = *result;
  v35 = v8;
  v36 = v9;
  v24 = v11;
  v25 = v10;
  v37 = v10;
  v38 = v11;
  v39 = v12;
  v40 = v8;
  v41 = v9;
  v42 = v8;
  if (v8 == v9)
  {
LABEL_6:
    swift_retain_n();
    sub_1003A52D0(&v34);
    sub_1003A5324();
    swift_allocError();
    swift_willThrow();

    *v7 = v22;
    *(v7 + 8) = v42;
    *(v7 + 12) = v9;
    *(v7 + 16) = v25;
    *(v7 + 20) = v24;
    *(v7 + 22) = v23;
    goto LABEL_8;
  }

  v5 = 1;
  v16 = v42;
  while (1)
  {
    if (v16 < v35)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if ((v16 - v35) >= v36 - v35)
    {
      goto LABEL_30;
    }

    result = swift_beginAccess();
    if (*a4 == 1)
    {
      *a4 = 0;
      goto LABEL_12;
    }

    v17 = *(*(v34 + 24) + (v39 | (v38 << 8)) + v16);
    if (v17 == 92)
    {
      *a4 = 1;
      *a5 = 1;
      goto LABEL_12;
    }

    if (v17 == 34)
    {
      break;
    }

LABEL_12:
    if (v9 == ++v16)
    {
      goto LABEL_6;
    }
  }

  v5 = v22;
  swift_retain_n();
  sub_1003A52D0(&v34);
  v26 = v22;
  v18 = v42;
  v27 = v42;
  v28 = v9;
  v29 = v25;
  v30 = v24;
  v31 = v23;
  v32 = v42;
  v33 = v9;

  result = sub_1003A52D0(&v26);
  v19 = v16 - v32;
  if (__OFSUB__(v16, v32))
  {
    goto LABEL_34;
  }

  if (v9 < v19 || (v9 - v19) < v18)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (__CFADD__(v21, v18))
  {
    goto LABEL_36;
  }

  if ((v21 + v18) >> 24)
  {
    v20 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v18, v19, v22);

    LODWORD(v18) = v42;
    v5 = v20;
  }

  else
  {
  }

  if (!__CFADD__(v18, v19))
  {
    *(v7 + 8) = v18 + v19;
    return v5;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_10046CFC0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2 + 1 < a3)
  {
    v5 = result;
    v6 = *(result + 8);
    v7 = *(result + 12);
    if (v7 >= v6)
    {
      v8 = *(result + 16);
      v9 = *(result + 20);
      v10 = *(result + 22);
      if (v8 - (v10 | (v9 << 8)) >= v7)
      {
        v17 = v10 | (v9 << 8);
        v3 = *result;
        v28 = *result;
        v29 = v6;
        v30 = v7;
        v36 = v8;
        v31 = v8;
        v18 = v10;
        v19 = v9;
        v32 = v9;
        v33 = v10;
        v34 = v6;
        v35 = v7;
        if (v6 == v7)
        {
LABEL_6:
          swift_retain_n();
          sub_1003A52D0(&v28);
          sub_1003A5324();
          swift_allocError();
          swift_willThrow();

          *v5 = v3;
          *(v5 + 8) = v6;
          *(v5 + 12) = v7;
          *(v5 + 16) = v36;
          *(v5 + 20) = v19;
          *(v5 + 22) = v18;
          goto LABEL_8;
        }

        v12 = v6;
        while (1)
        {
          if (v12 < v29)
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v12 - v29) >= v30 - v29)
          {
            goto LABEL_31;
          }

          result = swift_beginAccess();
          v13 = *(*(v28 + 24) + (v33 | (v32 << 8)) + v12);
          v14 = v13 > 0x29 || ((1 << v13) & 0x30400000000) == 0;
          if (!v14 || v13 == 123)
          {
            break;
          }

          if (v7 == ++v12)
          {
            goto LABEL_6;
          }
        }

        swift_retain_n();
        sub_1003A52D0(&v28);
        v20 = v3;
        v21 = v6;
        v22 = v7;
        v23 = v36;
        v24 = v19;
        v25 = v18;
        v26 = v6;
        v27 = v7;

        result = sub_1003A52D0(&v20);
        v15 = v12 - v26;
        if (__OFSUB__(v12, v26))
        {
          goto LABEL_35;
        }

        if (v7 >= v15 && (v7 - v15) >= v6)
        {
          if (__CFADD__(v17, v6))
          {
            goto LABEL_37;
          }

          if ((v17 + v6) >> 24)
          {
            v16 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v6, v15, v3);

            v3 = v16;
          }

          else
          {
          }

          if (!__CFADD__(v6, v15))
          {
            *(v5 + 8) = v6 + v15;
            return v3;
          }

          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1003A5228();
  swift_allocError();
  *v11 = a3;
LABEL_8:
  swift_willThrow();
  return v3;
}

uint64_t sub_10046D2B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 + 1 < a3)
  {
    v5 = result;
    v6 = *(result + 8);
    v7 = *(result + 12);
    if (v7 >= v6)
    {
      v8 = *(result + 16);
      v9 = *(result + 20);
      v10 = *(result + 22);
      if (v8 - (v10 | (v9 << 8)) >= v7)
      {
        v15 = v10 | (v9 << 8);
        v3 = *result;
        v26 = *result;
        v27 = v6;
        v28 = v7;
        v34 = v8;
        v29 = v8;
        v16 = v10;
        v17 = v9;
        v30 = v9;
        v31 = v10;
        v32 = v6;
        v33 = v7;
        if (v6 == v7)
        {
LABEL_6:
          swift_retain_n();
          sub_1003A52D0(&v26);
          sub_1003A5324();
          swift_allocError();
          swift_willThrow();

          *v5 = v3;
          *(v5 + 8) = v6;
          *(v5 + 12) = v7;
          *(v5 + 16) = v34;
          *(v5 + 20) = v17;
          *(v5 + 22) = v16;
          goto LABEL_8;
        }

        v12 = v6;
        while (1)
        {
          if (v12 < v27)
          {
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          if ((v12 - v27) >= v28 - v27)
          {
            goto LABEL_27;
          }

          swift_beginAccess();
          result = *(*(v26 + 24) + (v31 | (v30 << 8)) + v12);
          if (result != 45 && result != 95)
          {
            result = isalnum(result);
            if (!result)
            {
              break;
            }
          }

          if (v7 == ++v12)
          {
            goto LABEL_6;
          }
        }

        swift_retain_n();
        sub_1003A52D0(&v26);
        v18 = v3;
        v19 = v6;
        v20 = v7;
        v21 = v34;
        v22 = v17;
        v23 = v16;
        v24 = v6;
        v25 = v7;

        result = sub_1003A52D0(&v18);
        v13 = v12 - v24;
        if (__OFSUB__(v12, v24))
        {
          goto LABEL_31;
        }

        if (v7 >= v13 && (v7 - v13) >= v6)
        {
          if (__CFADD__(v15, v6))
          {
            goto LABEL_33;
          }

          if ((v15 + v6) >> 24)
          {
            v14 = v12 - v24;
            v13 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v6, v13, v3);

            v3 = v13;
            LODWORD(v13) = v14;
          }

          else
          {
          }

          if (!__CFADD__(v6, v13))
          {
            *(v5 + 8) = v6 + v13;
            return v3;
          }

          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1003A5228();
  swift_allocError();
  *v11 = a3;
LABEL_8:
  swift_willThrow();
  return v3;
}

uint64_t sub_10046D5B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a2 + 1 < a3)
  {
    v5 = result;
    v6 = *(result + 8);
    v7 = *(result + 12);
    if (v7 >= v6)
    {
      v8 = *(result + 16);
      v9 = *(result + 20);
      v10 = *(result + 22);
      if (v8 - (v10 | (v9 << 8)) >= v7)
      {
        v18 = v10 | (v9 << 8);
        v3 = *result;
        v29 = *result;
        v30 = v6;
        v31 = v7;
        v37 = v8;
        v32 = v8;
        v19 = v10;
        v20 = v9;
        v33 = v9;
        v34 = v10;
        v35 = v6;
        v36 = v7;
        if (v6 == v7)
        {
LABEL_6:
          swift_retain_n();
          sub_1003A52D0(&v29);
          sub_1003A5324();
          swift_allocError();
          swift_willThrow();

          *v5 = v3;
          *(v5 + 8) = v6;
          *(v5 + 12) = v7;
          *(v5 + 16) = v37;
          *(v5 + 20) = v20;
          *(v5 + 22) = v19;
          goto LABEL_8;
        }

        v12 = v6;
        while (1)
        {
          if (v12 < v30)
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if ((v12 - v30) >= v31 - v30)
          {
            goto LABEL_32;
          }

          result = swift_beginAccess();
          v13 = *(*(v29 + 24) + (v34 | (v33 << 8)) + v12);
          v14 = v13 == 10 || v13 == 13;
          if (v14 || v13 < 1)
          {
            break;
          }

          if (v7 == ++v12)
          {
            goto LABEL_6;
          }
        }

        swift_retain_n();
        sub_1003A52D0(&v29);
        v21 = v3;
        v22 = v6;
        v23 = v7;
        v24 = v37;
        v25 = v20;
        v26 = v19;
        v27 = v6;
        v28 = v7;

        result = sub_1003A52D0(&v21);
        v16 = v12 - v27;
        if (__OFSUB__(v12, v27))
        {
          goto LABEL_36;
        }

        if (v7 >= v16 && (v7 - v16) >= v6)
        {
          if (__CFADD__(v18, v6))
          {
            goto LABEL_38;
          }

          if ((v18 + v6) >> 24)
          {
            v17 = v12 - v27;
            v16 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v6, v16, v3);

            v3 = v16;
            LODWORD(v16) = v17;
          }

          else
          {
          }

          if (!__CFADD__(v6, v16))
          {
            *(v5 + 8) = v6 + v16;
            return v3;
          }

          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return result;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  sub_1003A5228();
  swift_allocError();
  *v11 = a3;
LABEL_8:
  swift_willThrow();
  return v3;
}