char *sub_249FFF1F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_249FFF310(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2E5B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_249FFF414(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E5A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_249FFF530(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E5A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_249FFF678()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E508);

  return sub_249FFDCC0();
}

uint64_t sub_249FFF808()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_startingAngle];
  v3 = v2 + 0.1;
  v4 = v2 < 359.0;
  v5 = 0.0;
  if (v4)
  {
    v5 = v3;
  }

  *&v1[OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_startingAngle] = v5;
  return sub_249FFDD70([v1 invalidateLayout]);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_249FFF888()
{
  result = qword_27EF2E7A0;
  if (!qword_27EF2E7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2E5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E7A0);
  }

  return result;
}

uint64_t sub_249FFF8EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249FFF934(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x24C20C990](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x24C20C990](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x24C20C990](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x24C20C990](*&v9);
}

uint64_t sub_249FFF9B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E600);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A006238();
  sub_24A021D28();
  v12 = 0;
  sub_24A021BE8();
  if (!v1)
  {
    v11 = 1;
    sub_24A021BE8();
    v10 = 2;
    sub_24A021BE8();
    v9 = 3;
    sub_24A021BE8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_249FFFB8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a3;
  v16 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E670);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A006A30();
  sub_24A021D28();
  v18 = a2;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E648);
  sub_24A006B94(&qword_27EF2E678, &qword_2810D9BA0);
  sub_24A021C08();
  if (!v5)
  {
    v18 = v15;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E650);
    sub_24A006C8C();
    sub_24A021C08();
    v18 = a4;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E668);
    sub_24A006DBC(&qword_27EF2E698);
    sub_24A021C08();
    LOBYTE(v18) = 3;
    sub_24A021BF8();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_249FFFE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A005F04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_249FFFE64(uint64_t a1)
{
  v2 = sub_24A006238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FFFEA0(uint64_t a1)
{
  v2 = sub_24A006238();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_249FFFEDC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A00603C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_249FFFF2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24A021CB8();
  sub_249FFF934(v1, v2, v3, v4);
  return sub_24A021CE8();
}

uint64_t sub_249FFFFA0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24A021CB8();
  sub_249FFF934(v1, v2, v3, v4);
  return sub_24A021CE8();
}

uint64_t sub_24A000004()
{
  v1 = 0x73726F6C6F63;
  v2 = 0x70616D7865646E69;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x6C6F63696A6F6D65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A000084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A006558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A0000AC(uint64_t a1)
{
  v2 = sub_24A006A30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A0000E8(uint64_t a1)
{
  v2 = sub_24A006A30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A000124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24A0066BC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_24A000174(void *a1)
{
  v2 = v1;
  sub_24A021528();
  v4 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_glyphNamesCache;
  v5 = MEMORY[0x277D84F90];
  *(v2 + v4) = sub_24A0202E0(MEMORY[0x277D84F90]);
  *(v2 + OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_colors) = v5;
  v6 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_dominantColors;
  *(v2 + v6) = sub_24A0202F4(v5);
  v7 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_accentColors;
  *(v2 + v7) = sub_24A0202F4(v5);
  v8 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_contextualColors;
  *(v2 + v8) = sub_24A0202F4(v5);
  *(v2 + OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_ctFont) = a1;
  v9 = a1;
  *(v2 + OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_cgFont) = CTFontCopyGraphicsFont(v9, 0);
  v10 = sub_24A0007E0();
  if (v11 >> 60 != 15)
  {
    v15 = v10;
    v16 = v11;
    sub_24A021388();
    swift_allocObject();
    sub_24A021378();
    sub_24A006340();
    v56 = v15;
    sub_24A021368();

    v18 = v60;
    v19 = v64;
    v20 = *(v60 + 16);
    v21 = MEMORY[0x277D84F90];
    v54 = v16;
    v55 = v9;
    if (v20)
    {
      v61 = MEMORY[0x277D84F90];
      result = sub_249FDCC20(0, v20, 0);
      v21 = v61;
      v22 = v18 + 32;
      while (1)
      {
        v23 = *v22;
        v24 = *(*v22 + 16);
        if (!v24)
        {
          break;
        }

        if (v24 == 1)
        {
          goto LABEL_33;
        }

        if (v24 < 3)
        {
          goto LABEL_34;
        }

        v25 = v23[4];
        v26 = v23[5];
        v27 = v23[6];
        v62 = v21;
        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_249FDCC20((v28 > 1), v29 + 1, 1);
          v21 = v62;
        }

        *(v21 + 16) = v29 + 1;
        v30 = (v21 + 32 * v29);
        v30[4] = v25;
        v30[5] = v26;
        v30[6] = v27;
        v30[7] = 0x406FE00000000000;
        v22 += 8;
        if (!--v20)
        {
          v19 = v64;
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      *(v2 + OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_colors) = v21;

      v31 = v19 + 64;
      v32 = 1 << *(v19 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v19 + 64);
      v52 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_accentColors;
      v53 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_dominantColors;
      v50 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_contextualColors;
      v35 = (v32 + 63) >> 6;

      v36 = 0;
      result = v56;
      v51 = v19 + 64;
      if (v34)
      {
        while (1)
        {
          v37 = v36;
LABEL_23:
          v38 = __clz(__rbit64(v34)) | (v37 << 6);
          v39 = *(*(v19 + 56) + 8 * v38);
          if ((v39 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v39 >= *(v63 + 16))
          {
            goto LABEL_36;
          }

          v40 = *(v63 + 32 + 8 * v39);
          if (!v40[2])
          {
            goto LABEL_37;
          }

          v41 = (*(v19 + 48) + 16 * v38);
          v43 = *v41;
          v42 = v41[1];
          v44 = v40[4];
          swift_beginAccess();
          swift_bridgeObjectRetain_n();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v57 = *(v2 + v53);
          *(v2 + v53) = 0x8000000000000000;
          sub_24A018A24(v44, v43, v42, isUniquelyReferenced_nonNull_native);

          *(v2 + v53) = v57;
          result = swift_endAccess();
          if (v40[2] < 2uLL)
          {
            goto LABEL_38;
          }

          v46 = v40[5];
          swift_beginAccess();

          v47 = swift_isUniquelyReferenced_nonNull_native();
          v58 = *(v2 + v52);
          *(v2 + v52) = 0x8000000000000000;
          sub_24A018A24(v46, v43, v42, v47);

          *(v2 + v52) = v58;
          result = swift_endAccess();
          if (v40[2] < 3uLL)
          {
            goto LABEL_39;
          }

          v34 &= v34 - 1;
          v48 = v40[6];

          swift_beginAccess();
          v49 = swift_isUniquelyReferenced_nonNull_native();
          v59 = *(v2 + v50);
          *(v2 + v50) = 0x8000000000000000;
          sub_24A018A24(v48, v43, v42, v49);

          *(v2 + v50) = v59;
          swift_endAccess();
          v36 = v37;
          v16 = v54;
          v9 = v55;
          result = v56;
          v19 = v64;
          v31 = v51;
          if (!v34)
          {
            goto LABEL_20;
          }
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return result;
      }

LABEL_20:
      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v37 >= v35)
        {
          sub_24A006394(result, v16);

          return v2;
        }

        v34 = *(v31 + 8 * v37);
        ++v36;
        if (v34)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = sub_24A021518();
  v13 = sub_24A021888();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_249FC9000, v12, v13, "No background table data in font", v14, 2u);
    MEMORY[0x24C20D580](v14, -1, -1);
  }

  return v2;
}

CFDataRef sub_24A0007E0()
{
  if (sub_24A021718() != 4)
  {
    return 0;
  }

  v1 = 0;
  while (1)
  {
    v2 = sub_24A021768();
    if ((v2 & 0x10000) != 0)
    {
      break;
    }

    v3 = v1 << 8;
    v1 = (v1 << 8) + v2;
    if (__CFADD__(v3, v2))
    {
      __break(1u);
      return 0;
    }
  }

  result = CTFontCopyTable(*(v0 + OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_ctFont), v1, 0);
  if (result)
  {
    v5 = result;
    v6 = sub_24A021478();

    return v6;
  }

  return result;
}

uint64_t sub_24A0008C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E1A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A0246F0;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = *(v0 + OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_ctFont);
  type metadata accessor for CTFont(0);
  *(inited + 64) = v4;
  *(inited + 40) = v3;
  v5 = v2;
  v6 = v3;
  sub_24A020404(inited);
  swift_setDeallocating();
  sub_249FECCF8(inited + 32, &qword_27EF2E1B0);
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = sub_24A021658();
  type metadata accessor for Key(0);
  sub_24A0062F8(&qword_2810D9B70, type metadata accessor for Key);
  v9 = sub_24A021608();

  v10 = [v7 initWithString:v8 attributes:v9];

  v11 = CTLineCreateWithAttributedString(v10);
  CTLineGetGlyphRuns(v11);
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for CTRun(0);
  result = sub_24A0217D8();
  __break(1u);
  return result;
}

void *sub_24A000C68(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v72 = *MEMORY[0x277D85DE8];
  v6 = sub_24A021438();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 16) & 1) == 0)
  {
    v26 = sub_24A0008C0();
    v64 = MEMORY[0x277D84FA0];
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v27 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_contextualColors;
        goto LABEL_21;
      }
    }

    else if (a2)
    {
      v27 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_accentColors;
      goto LABEL_21;
    }

    v27 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_dominantColors;
LABEL_21:
    v28 = (v2 + v27);
    swift_beginAccess();
    v29 = *v28;

    v30 = sub_24A005D84(v26);
    v32 = v31;

    if (*(v29 + 16))
    {
      v33 = sub_24A004A10(v30, v32);
      v35 = v34;

      if (v35)
      {
        v36 = *(*(v29 + 56) + 8 * v33);

LABEL_35:

        v44 = *(v36 + 16);
        if (v44)
        {
          v45 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_colors;
          v46 = (v36 + 32);
          while (1)
          {
            v48 = *v46++;
            v47 = v48;
            if ((v48 & 0x8000000000000000) != 0)
            {
              break;
            }

            v49 = *(v3 + v45);
            if (v47 >= *(v49 + 16))
            {
              goto LABEL_47;
            }

            sub_24A00193C(&aBlock, *(v49 + 32 * v47 + 32), *(v49 + 32 * v47 + 40), *(v49 + 32 * v47 + 48), *(v49 + 32 * v47 + 56));
            if (!--v44)
            {
              goto LABEL_40;
            }
          }

          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_40:

        v50 = v64;
        v51 = v64[2];
        if (v51)
        {
          v14 = sub_24A0018C0(v64[2], 0, &qword_27EF2E128);
          v52 = sub_24A005B18(&aBlock, v14 + 2, v51, v50);
          sub_24A0062F0();
          if (v52 == v51)
          {
            return v14;
          }

          __break(1u);
        }

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
    }

    v36 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v10 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v11 = sub_24A021468();
  v12 = [v10 initWithData_];

  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = [v12 imageByPreparingThumbnailOfSize_];

  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v57 = v7;
  v15 = [objc_allocWithZone(EMP_TSDImageColorAnalyzer) initWithImage_];
  v70 = sub_24A00DBAC;
  v71 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v68 = sub_24A001854;
  v69 = &block_descriptor_6;
  v16 = _Block_copy(&aBlock);
  [v15 filterInterestingColorsUsingBlock_];
  _Block_release(v16);
  v17 = [v15 interestingColors];
  v18 = [v17 count];
  v64 = v14;
  sub_249FDCC20(0, v18 & ~(v18 >> 63), 0);
  v14 = v64;
  sub_24A021858();
  if (v18 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v54 = v17;
  v55 = v15;
  v56 = v13;
  if (v18)
  {
    sub_24A0062F8(&qword_27EF2E608, MEMORY[0x277CC9178]);
    v58 = vdupq_n_s64(0x406FE00000000000uLL);
    while (1)
    {
      sub_24A021928();
      if (!v69)
      {
        break;
      }

      sub_249FF3C68(&aBlock, &v65);
      sub_24A0062A4();
      if (swift_dynamicCast())
      {
        v19 = v63;
        *&v65 = 0;
        v62 = 0.0;
        v63 = 0.0;
        v61 = 0.0;
        [*&v19 getRed:&v65 green:&v63 blue:&v62 alpha:{&v61, v54, v55, v56}];

        *&v20.f64[0] = v65;
        v21.f64[0] = v62;
        v20.f64[1] = v63;
        v21.f64[1] = v61;
        v59 = vmulq_f64(v21, v58);
        v60 = vmulq_f64(v20, v58);
      }

      else
      {
        v59 = 0u;
        v60 = 0u;
      }

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v64 = v14;
      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        sub_249FDCC20((v22 > 1), v23 + 1, 1);
        v14 = v64;
      }

      v14[2] = v23 + 1;
      v24 = &v14[4 * v23];
      v25 = v59;
      v24[2] = v60;
      v24[3] = v25;
      if (!--v18)
      {
        goto LABEL_24;
      }
    }

LABEL_49:
    __break(1u);
  }

LABEL_24:
  sub_24A0062F8(&qword_27EF2E608, MEMORY[0x277CC9178]);
  sub_24A021928();
  if (v66)
  {
    v60 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      sub_249FF7BBC(&v65, &aBlock);
      sub_249FF3C68(&aBlock, &v65);
      sub_24A0062A4();
      if (swift_dynamicCast())
      {
        v37 = v63;
        *&v65 = 0;
        v62 = 0.0;
        v63 = 0.0;
        v61 = 0.0;
        [*&v37 getRed:&v65 green:&v63 blue:&v62 alpha:&v61];

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        *&v38.f64[0] = v65;
        v38.f64[1] = v63;
        v39 = vmulq_f64(v38, v60);
        v38.f64[0] = v62;
        v38.f64[1] = v61;
        v40 = vmulq_f64(v38, v60);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        v39 = 0uLL;
        v40 = 0uLL;
      }

      v64 = v14;
      v42 = v14[2];
      v41 = v14[3];
      if (v42 >= v41 >> 1)
      {
        v58 = v40;
        v59 = v39;
        sub_249FDCC20((v41 > 1), v42 + 1, 1);
        v40 = v58;
        v39 = v59;
        v14 = v64;
      }

      v14[2] = v42 + 1;
      v43 = &v14[4 * v42];
      v43[2] = v39;
      v43[3] = v40;
      sub_24A021928();
    }

    while (v66);
  }

  (*(v57 + 8))(v9, v6);
  sub_249FECCF8(&v65, &qword_27EF2E440);
  return v14;
}

uint64_t sub_24A0013F4(__int128 *a1, unsigned __int8 a2)
{
  v2 = *(a1 + 16);
  v7 = *a1;
  v8 = v2;
  v3 = sub_24A000C68(&v7, a2);
  v4 = v3[2];
  if (v4)
  {
    *&v7 = MEMORY[0x277D84F90];
    sub_24A021A48();
    v5 = (v3 + 7);
    do
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v5 - 3) / 255.0 green:*(v5 - 2) / 255.0 blue:*(v5 - 1) / 255.0 alpha:*v5 / 255.0];
      sub_24A021A28();
      sub_24A021A58();
      sub_24A021A68();
      sub_24A021A38();
      v5 += 4;
      --v4;
    }

    while (v4);

    return v7;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_24A001538()
{
  v0 = sub_24A021658();
  v1 = CTFontCreateWithName(v0, 0.0, 0);

  type metadata accessor for EmojiBackground();
  v2 = swift_allocObject();
  result = sub_24A000174(v1);
  qword_2810DDD28 = v2;
  return result;
}

uint64_t sub_24A0015BC()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster15EmojiBackground_logger;
  v2 = sub_24A021538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_24A00168C()
{
  sub_24A0015BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EmojiBackground()
{
  result = qword_2810DA950;
  if (!qword_2810DA950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A001738()
{
  result = sub_24A021538();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24A001800()
{
  result = qword_2810DA9B8;
  if (!qword_2810DA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA9B8);
  }

  return result;
}

uint64_t sub_24A001854(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void *sub_24A0018C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 1;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 5);
  return result;
}

uint64_t sub_24A00193C(double *a1, double a2, double a3, double a4, double a5)
{
  v11 = *v5;
  sub_24A021CB8();
  sub_249FFF934(a2, a3, a4, a5);
  v12 = sub_24A021CE8();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = (*(v11 + 48) + 32 * v14);
      v17 = *v16 == a2 && v16[1] == a3;
      v18 = v17 && v16[2] == a4;
      if (v18 && v16[3] == a5)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    result = 0;
    a2 = *v16;
    a3 = v16[1];
    a4 = v16[2];
    a5 = v16[3];
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    sub_24A002F90(v14, isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
    *v5 = v22;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  return result;
}

uint64_t sub_24A001A90(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_24A021CA8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24A003128(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24A001B70(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v112 = *MEMORY[0x277D85DE8];
  v9 = *v4;
  sub_24A021CB8();
  v102 = a1;
  v100 = v4;
  if (a4)
  {
    MEMORY[0x24C20C980](1);
    sub_24A021488();
  }

  else
  {
    MEMORY[0x24C20C980](0);
    sub_24A021708();
  }

  v10 = sub_24A021CE8();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_158:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v100;
    v80 = a4 & 1;
    sub_249FE4E60(a2, a3, v80);
    sub_24A003248(a2, a3, v80, v12, isUniquelyReferenced_nonNull_native);
    *v100 = *__s1;
    *v102 = a2;
    *(v102 + 8) = a3;
    *(v102 + 16) = v80;
    return 1;
  }

  v104 = ~v11;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v101 = v14;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v98 = v15;
  v99 = a4;
  v103 = a3 >> 62;
  v96 = (a2 >> 32) - a2;
  v97 = a2 >> 32;
  while (1)
  {
    v17 = *(v9 + 48) + 24 * v12;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    if (v20)
    {
      break;
    }

    if (a4)
    {
      goto LABEL_16;
    }

    if (v19 == a2 && v18 == a3)
    {

      sub_249FE4EC4(a2, a3, 0);
LABEL_160:
      v82 = a2;
      v83 = a3;
      v81 = 0;
      goto LABEL_164;
    }

    v26 = sub_24A021C38();
    sub_249FE4E60(a2, a3, 0);
    sub_249FE4E60(v19, v18, 0);
    sub_249FE4EC4(v19, v18, 0);
    sub_249FE4EC4(a2, a3, 0);
    if (v26)
    {
      goto LABEL_160;
    }

LABEL_18:
    v12 = (v12 + 1) & v104;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_158;
    }
  }

  if ((a4 & 1) == 0)
  {
    v16 = 0;
    goto LABEL_17;
  }

  v21 = v18 >> 62;
  if (v18 >> 62 == 3)
  {
    if (v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = v18 == 0xC000000000000000;
    }

    v24 = !v22 || a3 >> 62 != 3;
    if (((v24 | v101) & 1) == 0)
    {
      sub_249FE4E70(0, 0xC000000000000000);
      sub_249FE4EC4(0, 0xC000000000000000, 1);
      v82 = 0;
      v83 = 0xC000000000000000;
LABEL_163:
      v81 = 1;
LABEL_164:
      sub_249FE4EC4(v82, v83, v81);
      v84 = *(v9 + 48) + 24 * v12;
      v85 = *v84;
      v86 = *(v84 + 8);
      v87 = *(v84 + 16);
      *v102 = *v84;
      *(v102 + 8) = v86;
      *(v102 + 16) = v87;
      sub_249FE4E60(v85, v86, v87);
      return 0;
    }

    goto LABEL_48;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
LABEL_48:
      v27 = 0;
      goto LABEL_49;
    }

    v29 = *(v19 + 16);
    v28 = *(v19 + 24);
    v30 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v30)
    {
      goto LABEL_167;
    }
  }

  else if (v21)
  {
    LODWORD(v27) = HIDWORD(v19) - v19;
    if (__OFSUB__(HIDWORD(v19), v19))
    {
      goto LABEL_168;
    }

    v27 = v27;
  }

  else
  {
    v27 = BYTE6(v18);
  }

LABEL_49:
  if (v103 > 1)
  {
    if (v103 == 2)
    {
      v33 = *(a2 + 16);
      v32 = *(a2 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_166;
      }

      goto LABEL_55;
    }

    if (!v27)
    {
      goto LABEL_161;
    }

LABEL_16:
    v16 = 1;
LABEL_17:
    sub_249FE4E60(a2, a3, v16);
    sub_249FE4E60(v19, v18, v20);
    sub_249FE4EC4(v19, v18, v20);
    sub_249FE4EC4(a2, a3, v16);
    goto LABEL_18;
  }

  v31 = BYTE6(a3);
  if (v103)
  {
    v31 = HIDWORD(a2) - a2;
    if (v98)
    {
      __break(1u);
LABEL_166:
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
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
    }
  }

LABEL_55:
  if (v27 != v31)
  {
    goto LABEL_16;
  }

  if (v27 < 1)
  {
LABEL_161:
    sub_249FE4E70(v19, v18);
    sub_249FE4EC4(v19, v18, 1);
LABEL_162:
    v82 = a2;
    v83 = a3;
    goto LABEL_163;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      *__s1 = v19;
      *&__s1[8] = v18;
      __s1[10] = BYTE2(v18);
      __s1[11] = BYTE3(v18);
      __s1[12] = BYTE4(v18);
      __s1[13] = BYTE5(v18);
      if (!v103)
      {
        goto LABEL_81;
      }

      if (v103 == 1)
      {
        if (v97 < a2)
        {
          goto LABEL_172;
        }

        sub_249FE4E60(v19, v18, 1);
        sub_249FE4E60(a2, a3, 1);
        sub_249FE4E60(v19, v18, 1);
        v34 = sub_24A0213E8();
        if (!v34)
        {
          goto LABEL_200;
        }

        v35 = v34;
        v36 = sub_24A021408();
        if (__OFSUB__(a2, v36))
        {
          goto LABEL_177;
        }

        v37 = (a2 - v36 + v35);
        v38 = sub_24A0213F8();
        if (!v37)
        {
          goto LABEL_199;
        }

LABEL_113:
        if (v38 >= v96)
        {
          v62 = (a2 >> 32) - a2;
        }

        else
        {
          v62 = v38;
        }

        v49 = memcmp(__s1, v37, v62);
        sub_249FE4EC4(v19, v18, 1);
LABEL_117:
        sub_249FE4EC4(v19, v18, 1);
        v63 = a2;
        v64 = a3;
LABEL_144:
        sub_249FE4EC4(v63, v64, 1);
        if (!v49)
        {
          goto LABEL_162;
        }

        goto LABEL_18;
      }

      v89 = *(a2 + 24);
      v95 = *(a2 + 16);
      sub_249FE4E60(v19, v18, 1);
      sub_249FE4E60(a2, a3, 1);
      sub_249FE4E60(v19, v18, 1);
      v46 = sub_24A0213E8();
      if (v46)
      {
        v57 = sub_24A021408();
        v58 = v95;
        if (__OFSUB__(v95, v57))
        {
          goto LABEL_183;
        }

        v46 = &v95[v46 - v57];
      }

      else
      {
        v58 = v95;
      }

      v75 = v89 - v58;
      if (__OFSUB__(v89, v58))
      {
        goto LABEL_175;
      }

      v76 = sub_24A0213F8();
      if (!v46)
      {
        goto LABEL_198;
      }

      goto LABEL_153;
    }

    if (v19 > v19 >> 32)
    {
      goto LABEL_169;
    }

    sub_249FE4E60(v19, v18, 1);
    sub_249FE4E60(a2, a3, 1);
    sub_249FE4E60(v19, v18, 1);
    v43 = sub_24A0213E8();
    if (v43)
    {
      v44 = v43;
      v45 = sub_24A021408();
      if (__OFSUB__(v19, v45))
      {
        goto LABEL_171;
      }

      v93 = (v19 - v45 + v44);
    }

    else
    {
      v93 = 0;
    }

    a4 = v99;
    sub_24A0213F8();
    if (v103 == 2)
    {
      v69 = *(a2 + 16);
      v91 = *(a2 + 24);
      v50 = sub_24A0213E8();
      if (v50)
      {
        v70 = sub_24A021408();
        if (__OFSUB__(v69, v70))
        {
          goto LABEL_185;
        }

        v50 += v69 - v70;
      }

      v30 = __OFSUB__(v91, v69);
      v71 = v91 - v69;
      if (v30)
      {
        goto LABEL_181;
      }

      v72 = sub_24A0213F8();
      if (v72 >= v71)
      {
        v53 = v71;
      }

      else
      {
        v53 = v72;
      }

      result = v93;
      if (!v93)
      {
        goto LABEL_192;
      }

      a4 = v99;
      if (!v50)
      {
        goto LABEL_191;
      }

      goto LABEL_139;
    }

    if (v103 == 1)
    {
      if (v97 < a2)
      {
        goto LABEL_180;
      }

      v50 = sub_24A0213E8();
      if (v50)
      {
        v55 = sub_24A021408();
        if (__OFSUB__(a2, v55))
        {
          goto LABEL_187;
        }

        v50 += a2 - v55;
      }

      v56 = sub_24A0213F8();
      v53 = (a2 >> 32) - a2;
      if (v56 < v96)
      {
        v53 = v56;
      }

      result = v93;
      if (!v93)
      {
        goto LABEL_203;
      }

      if (!v50)
      {
        goto LABEL_202;
      }

      goto LABEL_139;
    }

    result = v93;
    *__s1 = a2;
    *&__s1[8] = a3;
    __s1[10] = BYTE2(a3);
    __s1[11] = BYTE3(a3);
    __s1[12] = BYTE4(a3);
    __s1[13] = BYTE5(a3);
    if (!v93)
    {
      goto LABEL_201;
    }

    goto LABEL_142;
  }

  if (v21 == 2)
  {
    v39 = *(v19 + 16);
    sub_249FE4E60(v19, v18, 1);
    sub_249FE4E60(a2, a3, 1);
    sub_249FE4E60(v19, v18, 1);
    v40 = sub_24A0213E8();
    if (v40)
    {
      v41 = v40;
      v42 = sub_24A021408();
      if (__OFSUB__(v39, v42))
      {
        goto LABEL_170;
      }

      v92 = (v39 - v42 + v41);
    }

    else
    {
      v92 = 0;
    }

    a4 = v99;
    sub_24A0213F8();
    if (v103 == 2)
    {
      v65 = *(a2 + 16);
      v90 = *(a2 + 24);
      v50 = sub_24A0213E8();
      if (v50)
      {
        v66 = sub_24A021408();
        if (__OFSUB__(v65, v66))
        {
          goto LABEL_184;
        }

        v50 += v65 - v66;
      }

      v30 = __OFSUB__(v90, v65);
      v67 = v90 - v65;
      if (v30)
      {
        goto LABEL_179;
      }

      v68 = sub_24A0213F8();
      if (v68 >= v67)
      {
        v53 = v67;
      }

      else
      {
        v53 = v68;
      }

      result = v92;
      if (!v92)
      {
        goto LABEL_197;
      }

      a4 = v99;
      if (!v50)
      {
        goto LABEL_196;
      }

      goto LABEL_139;
    }

    if (v103 == 1)
    {
      if (v97 < a2)
      {
        goto LABEL_174;
      }

      v50 = sub_24A0213E8();
      if (v50)
      {
        v51 = sub_24A021408();
        if (__OFSUB__(a2, v51))
        {
          goto LABEL_186;
        }

        v50 += a2 - v51;
      }

      v52 = sub_24A0213F8();
      v53 = (a2 >> 32) - a2;
      if (v52 < v96)
      {
        v53 = v52;
      }

      result = v92;
      if (!v92)
      {
        goto LABEL_195;
      }

      if (!v50)
      {
        goto LABEL_194;
      }

LABEL_139:
      if (result == v50)
      {
        sub_249FE4EC4(a2, a3, 1);
        sub_249FE4EC4(v19, v18, 1);
        sub_249FE4EC4(a2, a3, 1);
        v82 = v19;
        v83 = v18;
        goto LABEL_163;
      }

      v73 = v53;
      v74 = v50;
      goto LABEL_143;
    }

    result = v92;
    *__s1 = a2;
    *&__s1[8] = a3;
    __s1[10] = BYTE2(a3);
    __s1[11] = BYTE3(a3);
    __s1[12] = BYTE4(a3);
    __s1[13] = BYTE5(a3);
    if (!v92)
    {
      goto LABEL_193;
    }

LABEL_142:
    v74 = __s1;
    v73 = BYTE6(a3);
LABEL_143:
    v49 = memcmp(result, v74, v73);
    sub_249FE4EC4(v19, v18, 1);
    sub_249FE4EC4(a2, a3, 1);
    v63 = v19;
    v64 = v18;
    goto LABEL_144;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v103)
  {
LABEL_81:
    __s2 = a2;
    v106 = a3;
    v107 = BYTE2(a3);
    v108 = BYTE3(a3);
    v109 = BYTE4(a3);
    v110 = BYTE5(a3);
    sub_249FE4E60(a2, a3, 1);
    sub_249FE4E60(v19, v18, 1);
    v49 = memcmp(__s1, &__s2, BYTE6(a3));
    goto LABEL_117;
  }

  if (v103 == 2)
  {
    v88 = *(a2 + 24);
    v94 = *(a2 + 16);
    sub_249FE4E60(v19, v18, 1);
    sub_249FE4E60(a2, a3, 1);
    sub_249FE4E60(v19, v18, 1);
    v46 = sub_24A0213E8();
    if (v46)
    {
      v47 = sub_24A021408();
      v48 = v94;
      if (__OFSUB__(v94, v47))
      {
        goto LABEL_182;
      }

      v46 = &v94[v46 - v47];
    }

    else
    {
      v48 = v94;
    }

    v75 = v88 - v48;
    if (__OFSUB__(v88, v48))
    {
      goto LABEL_176;
    }

    v76 = sub_24A0213F8();
    if (!v46)
    {
      goto LABEL_190;
    }

LABEL_153:
    if (v76 >= v75)
    {
      v77 = v75;
    }

    else
    {
      v77 = v76;
    }

    v78 = memcmp(__s1, v46, v77);
    sub_249FE4EC4(v19, v18, 1);
    sub_249FE4EC4(v19, v18, 1);
    sub_249FE4EC4(a2, a3, 1);
    a4 = v99;
    if (!v78)
    {
      goto LABEL_162;
    }

    goto LABEL_18;
  }

  if (v97 < a2)
  {
    goto LABEL_173;
  }

  sub_249FE4E60(v19, v18, 1);
  sub_249FE4E60(a2, a3, 1);
  sub_249FE4E60(v19, v18, 1);
  v59 = sub_24A0213E8();
  if (v59)
  {
    v60 = v59;
    v61 = sub_24A021408();
    if (__OFSUB__(a2, v61))
    {
      goto LABEL_178;
    }

    v37 = (a2 - v61 + v60);
    v38 = sub_24A0213F8();
    if (!v37)
    {
      goto LABEL_189;
    }

    goto LABEL_113;
  }

  sub_24A0213F8();
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  result = sub_24A0213F8();
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
  return result;
}

uint64_t sub_24A00280C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E610);
  result = sub_24A021988();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v1 + 48) + 32 * (v13 | (v4 << 6)));
      v29 = v16[1];
      v30 = *v16;
      sub_24A021CB8();
      v17 = *&v30;
      if (*&v30 == 0.0)
      {
        v17 = 0.0;
      }

      MEMORY[0x24C20C990](*&v17);
      v18 = *(&v30 + 1);
      if (*(&v30 + 1) == 0.0)
      {
        v18 = 0.0;
      }

      MEMORY[0x24C20C990](*&v18);
      v19 = *&v29;
      if (*&v29 == 0.0)
      {
        v19 = 0.0;
      }

      MEMORY[0x24C20C990](*&v19);
      v20 = *(&v29 + 1);
      if (*(&v29 + 1) == 0.0)
      {
        v20 = 0.0;
      }

      MEMORY[0x24C20C990](*&v20);
      result = sub_24A021CE8();
      v21 = -1 << *(v3 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v10 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v10 + 8 * v23);
          if (v27 != -1)
          {
            v11 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v22) & ~*(v10 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v3 + 48) + 32 * v11);
      *v12 = v30;
      v12[1] = v29;
      ++*(v3 + 16);
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v4 >= v9)
      {
        break;
      }

      v15 = v5[v4];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v1 + 32);
    if (v28 >= 64)
    {
      bzero((v1 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v28;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_24A002ACC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E618);
  result = sub_24A021988();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_24A021CA8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24A002CF0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E620);
  result = sub_24A021988();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_24A021CB8();
      if (v20)
      {
        MEMORY[0x24C20C980](1);
        sub_24A021488();
      }

      else
      {
        MEMORY[0x24C20C980](0);
        sub_24A021708();
      }

      result = sub_24A021CE8();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_24A002F90(unint64_t result, char a2, double a3, double a4, double a5, double a6)
{
  v7 = *(*v6 + 16);
  v8 = *(*v6 + 24);
  if (v8 > v7 && (a2 & 1) != 0)
  {
    goto LABEL_14;
  }

  v23 = a5;
  v24 = a6;
  v21 = a3;
  v22 = a4;
  if (a2)
  {
    sub_24A00280C();
    goto LABEL_8;
  }

  if (v8 <= v7)
  {
    sub_24A004318();
LABEL_8:
    v10 = *v6;
    sub_24A021CB8();
    sub_249FFF934(v21, v22, v23, v24);
    v11 = sub_24A021CE8();
    v12 = -1 << *(v10 + 32);
    result = v11 & ~v12;
    if ((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
    {
      v13 = ~v12;
      a5 = v23;
      a6 = v24;
      v14.f64[0] = v23;
      v14.f64[1] = v24;
      a3 = v21;
      a4 = v22;
      v15.f64[0] = v21;
      v15.f64[1] = v22;
      while ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(*(v10 + 48) + 32 * result), v15), vceqq_f64(*(*(v10 + 48) + 32 * result + 16), v14)))) & 1) == 0)
      {
        result = (result + 1) & v13;
        if (((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v9 = result;
  sub_24A003F24();
  result = v9;
LABEL_13:
  a5 = v23;
  a6 = v24;
  a3 = v21;
  a4 = v22;
LABEL_14:
  v16 = *v6;
  *(*v6 + 8 * (result >> 6) + 56) |= 1 << result;
  v17 = (*(v16 + 48) + 32 * result);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_24A021C78();
  __break(1u);
  return result;
}

uint64_t sub_24A003128(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A002ACC();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24A004070();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24A00459C();
  }

  v8 = *v3;
  result = sub_24A021CA8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A021C78();
  __break(1u);
  return result;
}

uint64_t sub_24A003248(uint64_t result, unint64_t a2, char a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v108 = *MEMORY[0x277D85DE8];
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_162;
  }

  if (a5)
  {
    sub_24A002CF0();
    goto LABEL_8;
  }

  if (v12 > v11)
  {
    result = sub_24A0041B0();
LABEL_162:
    v82 = *v6;
    *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
    v83 = *(v82 + 48) + 24 * a4;
    *v83 = v10;
    *(v83 + 8) = a2;
    *(v83 + 16) = a3 & 1;
    v84 = *(v82 + 16);
    v33 = __OFADD__(v84, 1);
    v85 = v84 + 1;
    if (v33)
    {
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
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
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
    }

    *(v82 + 16) = v85;
    return result;
  }

  sub_24A00478C();
LABEL_8:
  v13 = *v5;
  sub_24A021CB8();
  if (a3)
  {
    MEMORY[0x24C20C980](1);
    sub_24A021488();
  }

  else
  {
    MEMORY[0x24C20C980](0);
    sub_24A021708();
  }

  result = sub_24A021CE8();
  v14 = -1 << *(v13 + 32);
  a4 = result & ~v14;
  v100 = v13 + 56;
  if (((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_162;
  }

  v99 = ~v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 == 0xC000000000000000;
  }

  v16 = !v15;
  v97 = v16;
  v17 = __OFSUB__(HIDWORD(v10), v10);
  v94 = v17;
  v98 = a2 >> 62;
  v92 = (v10 >> 32) - v10;
  v93 = v10 >> 32;
  v95 = v5;
  v96 = v13;
  while (1)
  {
    v19 = *(v13 + 48) + 24 * a4;
    v21 = *v19;
    v20 = *(v19 + 8);
    LOBYTE(v22) = *(v19 + 16);
    if (v22)
    {
      break;
    }

    if (a3)
    {
      goto LABEL_23;
    }

    if (v21 == v10 && v20 == a2)
    {
      goto LABEL_204;
    }

    v30 = sub_24A021C38();
    sub_249FE4E60(v21, v20, 0);
    sub_249FE4E60(v10, a2, 0);
    sub_249FE4EC4(v21, v20, 0);
    result = sub_249FE4EC4(v10, a2, 0);
    if (v30)
    {
      goto LABEL_209;
    }

LABEL_25:
    a4 = (a4 + 1) & v99;
    if (((*(v100 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_162;
    }
  }

  if ((a3 & 1) == 0)
  {
    v18 = 0;
    goto LABEL_24;
  }

  v23 = v20 >> 62;
  if (v20 >> 62 == 3)
  {
    if (v21)
    {
      v24 = 0;
    }

    else
    {
      v24 = v20 == 0xC000000000000000;
    }

    v26 = !v24 || a2 >> 62 != 3;
    if (((v26 | v97) & 1) == 0)
    {
      v86 = 0xC000000000000000;
      sub_249FE4E60(0, 0xC000000000000000, 1);
      sub_249FE4E60(0, 0xC000000000000000, 1);
      v87 = 0;
      v10 = 0;
      a2 = 0xC000000000000000;
      goto LABEL_208;
    }

    goto LABEL_39;
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
LABEL_39:
      v27 = 0;
      goto LABEL_40;
    }

    v40 = *(v21 + 16);
    v39 = *(v21 + 24);
    v33 = __OFSUB__(v39, v40);
    v27 = v39 - v40;
    if (v33)
    {
      goto LABEL_168;
    }
  }

  else if (v23)
  {
    LODWORD(v27) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      goto LABEL_167;
    }

    v27 = v27;
  }

  else
  {
    v27 = BYTE6(v20);
  }

LABEL_40:
  if (v98 > 1)
  {
    if (v98 == 2)
    {
      v32 = *(v10 + 16);
      v31 = *(v10 + 24);
      v33 = __OFSUB__(v31, v32);
      v28 = v31 - v32;
      if (v33)
      {
        goto LABEL_165;
      }

      goto LABEL_57;
    }

    if (!v27)
    {
      goto LABEL_206;
    }

LABEL_23:
    v18 = 1;
LABEL_24:
    sub_249FE4E60(v21, v20, v22);
    sub_249FE4E60(v10, a2, v18);
    sub_249FE4EC4(v21, v20, v22);
    result = sub_249FE4EC4(v10, a2, v18);
    goto LABEL_25;
  }

  v28 = BYTE6(a2);
  if (v98)
  {
    v28 = HIDWORD(v10) - v10;
    if (v94)
    {
      goto LABEL_166;
    }
  }

LABEL_57:
  if (v27 != v28)
  {
    goto LABEL_23;
  }

  if (v27 < 1)
  {
LABEL_206:
    sub_249FE4E60(v21, v20, 1);
    sub_249FE4E60(v10, a2, 1);
    v86 = v20;
    v87 = v21;
    goto LABEL_208;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      *__s1 = v21;
      *&__s1[8] = v20;
      __s1[10] = BYTE2(v20);
      __s1[11] = BYTE3(v20);
      __s1[12] = BYTE4(v20);
      __s1[13] = BYTE5(v20);
      if (v98)
      {
        if (v98 != 1)
        {
          v22 = *(v10 + 16);
          v63 = *(v10 + 24);
          sub_249FE4E70(v21, v20);
          sub_249FE4E60(v21, v20, 1);
          sub_249FE4E60(v10, a2, 1);
          v49 = sub_24A0213E8();
          if (v49)
          {
            v64 = sub_24A021408();
            if (__OFSUB__(v22, v64))
            {
              goto LABEL_182;
            }

            v49 += v22 - v64;
          }

          v33 = __OFSUB__(v63, v22);
          v51 = v63 - v22;
          if (v33)
          {
            goto LABEL_176;
          }

          v52 = sub_24A0213F8();
          if (!v49)
          {
            goto LABEL_190;
          }

          goto LABEL_120;
        }

        if (v93 < v10)
        {
          goto LABEL_172;
        }

        sub_249FE4E70(v21, v20);
        sub_249FE4E60(v21, v20, 1);
        sub_249FE4E60(v10, a2, 1);
        v34 = sub_24A0213E8();
        if (!v34)
        {
          goto LABEL_193;
        }

        v35 = v34;
        v36 = sub_24A021408();
        if (__OFSUB__(v10, v36))
        {
          goto LABEL_177;
        }

        v37 = (v10 - v36 + v35);
        v38 = sub_24A0213F8();
        if (!v37)
        {
          goto LABEL_192;
        }

LABEL_128:
        if (v38 >= v92)
        {
          v70 = (v10 >> 32) - v10;
        }

        else
        {
          v70 = v38;
        }

        v66 = memcmp(__s1, v37, v70);
        sub_249FE4EC4(v21, v20, 1);
        sub_249FE4EC4(v21, v20, 1);
        v71 = v10;
        v72 = a2;
        goto LABEL_155;
      }

      goto LABEL_90;
    }

    if (v21 > v21 >> 32)
    {
      goto LABEL_169;
    }

    sub_249FE4E70(v21, v20);
    sub_249FE4E60(v21, v20, 1);
    sub_249FE4E60(v10, a2, 1);
    v45 = sub_24A0213E8();
    if (v45)
    {
      v46 = v45;
      v47 = sub_24A021408();
      if (__OFSUB__(v21, v47))
      {
        goto LABEL_171;
      }

      v91 = (v21 - v47 + v46);
    }

    else
    {
      v91 = 0;
    }

    v6 = v95;
    sub_24A0213F8();
    v13 = v96;
    if (v98 == 2)
    {
      v78 = *(v10 + 16);
      v89 = *(v10 + 24);
      v56 = sub_24A0213E8();
      if (v56)
      {
        v79 = sub_24A021408();
        if (__OFSUB__(v78, v79))
        {
          goto LABEL_186;
        }

        v56 += v78 - v79;
      }

      v33 = __OFSUB__(v89, v78);
      v80 = v89 - v78;
      if (v33)
      {
        goto LABEL_181;
      }

      v81 = sub_24A0213F8();
      if (v81 >= v80)
      {
        v59 = v80;
      }

      else
      {
        v59 = v81;
      }

      v60 = v91;
      if (!v91)
      {
        goto LABEL_201;
      }

      v6 = v95;
      if (!v56)
      {
        goto LABEL_200;
      }

LABEL_153:
      if (v60 == v56)
      {
        sub_249FE4EC4(v21, v20, 1);
        v86 = a2;
        v87 = v10;
        a2 = v20;
        v10 = v21;
        goto LABEL_208;
      }

      v66 = memcmp(v60, v56, v59);
      sub_249FE4EC4(v21, v20, 1);
      sub_249FE4EC4(v10, a2, 1);
      v71 = v21;
      v72 = v20;
LABEL_155:
      result = sub_249FE4EC4(v71, v72, 1);
LABEL_156:
      v13 = v96;
      if (!v66)
      {
        goto LABEL_209;
      }

      goto LABEL_25;
    }

    if (v98 == 1)
    {
      if (v93 < v10)
      {
        goto LABEL_180;
      }

      v56 = sub_24A0213E8();
      if (v56)
      {
        v61 = sub_24A021408();
        if (__OFSUB__(v10, v61))
        {
          goto LABEL_187;
        }

        v56 += v10 - v61;
      }

      v62 = sub_24A0213F8();
      v59 = (v10 >> 32) - v10;
      if (v62 < v92)
      {
        v59 = v62;
      }

      v60 = v91;
      if (!v91)
      {
        goto LABEL_203;
      }

      if (!v56)
      {
        goto LABEL_202;
      }

      goto LABEL_153;
    }

    v77 = v91;
    *__s1 = v10;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v91)
    {
      goto LABEL_199;
    }

LABEL_159:
    v53 = memcmp(v77, __s1, BYTE6(a2));
    sub_249FE4EC4(v21, v20, 1);
    sub_249FE4EC4(v10, a2, 1);
    v54 = v21;
    v55 = v20;
LABEL_160:
    result = sub_249FE4EC4(v54, v55, 1);
    if (!v53)
    {
      goto LABEL_209;
    }

    goto LABEL_25;
  }

  if (v23 == 2)
  {
    v41 = *(v21 + 16);
    sub_249FE4E70(v21, v20);
    sub_249FE4E60(v21, v20, 1);
    sub_249FE4E60(v10, a2, 1);
    v42 = sub_24A0213E8();
    if (v42)
    {
      v43 = v42;
      v44 = sub_24A021408();
      if (__OFSUB__(v41, v44))
      {
        goto LABEL_170;
      }

      v90 = (v41 - v44 + v43);
    }

    else
    {
      v90 = 0;
    }

    v6 = v95;
    sub_24A0213F8();
    v13 = v96;
    if (v98 == 2)
    {
      v73 = *(v10 + 16);
      v88 = *(v10 + 24);
      v56 = sub_24A0213E8();
      if (v56)
      {
        v74 = sub_24A021408();
        if (__OFSUB__(v73, v74))
        {
          goto LABEL_184;
        }

        v56 += v73 - v74;
      }

      v33 = __OFSUB__(v88, v73);
      v75 = v88 - v73;
      if (v33)
      {
        goto LABEL_179;
      }

      v76 = sub_24A0213F8();
      if (v76 >= v75)
      {
        v59 = v75;
      }

      else
      {
        v59 = v76;
      }

      v60 = v90;
      if (!v90)
      {
        goto LABEL_198;
      }

      v6 = v95;
      if (!v56)
      {
        goto LABEL_197;
      }

      goto LABEL_153;
    }

    if (v98 == 1)
    {
      if (v93 < v10)
      {
        goto LABEL_174;
      }

      v56 = sub_24A0213E8();
      if (v56)
      {
        v57 = sub_24A021408();
        if (__OFSUB__(v10, v57))
        {
          goto LABEL_185;
        }

        v56 += v10 - v57;
      }

      v58 = sub_24A0213F8();
      v59 = (v10 >> 32) - v10;
      if (v58 < v92)
      {
        v59 = v58;
      }

      v60 = v90;
      if (!v90)
      {
        goto LABEL_196;
      }

      if (!v56)
      {
        goto LABEL_195;
      }

      goto LABEL_153;
    }

    v77 = v90;
    *__s1 = v10;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v90)
    {
      goto LABEL_194;
    }

    goto LABEL_159;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v98)
  {
LABEL_90:
    __s2 = v10;
    v102 = a2;
    v103 = BYTE2(a2);
    v104 = BYTE3(a2);
    v105 = BYTE4(a2);
    v106 = BYTE5(a2);
    sub_249FE4E60(v21, v20, 1);
    sub_249FE4E60(v10, a2, 1);
    v53 = memcmp(__s1, &__s2, BYTE6(a2));
    sub_249FE4EC4(v21, v20, 1);
    v54 = v10;
    v55 = a2;
    goto LABEL_160;
  }

  if (v98 == 2)
  {
    v22 = *(v10 + 16);
    v48 = *(v10 + 24);
    sub_249FE4E70(v21, v20);
    sub_249FE4E60(v21, v20, 1);
    sub_249FE4E60(v10, a2, 1);
    v49 = sub_24A0213E8();
    if (v49)
    {
      v50 = sub_24A021408();
      if (__OFSUB__(v22, v50))
      {
        goto LABEL_183;
      }

      v49 += v22 - v50;
    }

    v33 = __OFSUB__(v48, v22);
    v51 = v48 - v22;
    if (v33)
    {
      goto LABEL_175;
    }

    v52 = sub_24A0213F8();
    if (!v49)
    {
      goto LABEL_191;
    }

LABEL_120:
    if (v52 >= v51)
    {
      v65 = v51;
    }

    else
    {
      v65 = v52;
    }

    v66 = memcmp(__s1, v49, v65);
    sub_249FE4EC4(v21, v20, 1);
    sub_249FE4EC4(v21, v20, 1);
    result = sub_249FE4EC4(v10, a2, 1);
    v6 = v95;
    goto LABEL_156;
  }

  if (v93 < v10)
  {
    goto LABEL_173;
  }

  sub_249FE4E70(v21, v20);
  sub_249FE4E60(v21, v20, 1);
  sub_249FE4E60(v10, a2, 1);
  v67 = sub_24A0213E8();
  if (v67)
  {
    v68 = v67;
    v69 = sub_24A021408();
    if (__OFSUB__(v10, v69))
    {
      goto LABEL_178;
    }

    v37 = (v10 - v69 + v68);
    v38 = sub_24A0213F8();
    if (!v37)
    {
      goto LABEL_189;
    }

    goto LABEL_128;
  }

  sub_24A0213F8();
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  sub_24A0213F8();
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  sub_249FE4E60(v10, a2, 0);
  sub_249FE4E60(v10, a2, 0);
  v86 = a2;
  v87 = v10;
LABEL_208:
  sub_249FE4EC4(v87, v86, v22);
  sub_249FE4EC4(v10, a2, v22);
LABEL_209:
  result = sub_24A021C78();
  __break(1u);
  return result;
}

void *sub_24A003F24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E610);
  v2 = *v0;
  v3 = sub_24A021978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; v19[1] = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 32 * v14;
      v18 = (*(v2 + 48) + v17);
      v19 = (*(v4 + 48) + v17);
      v20 = v18[1];
      *v19 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A004070()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E618);
  v2 = *v0;
  v3 = sub_24A021978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A0041B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E620);
  v2 = *v0;
  v3 = sub_24A021978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_249FE4E60(v19, v20, v21);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24A004318()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E610);
  result = sub_24A021988();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_15:
      v15 = (*(v1 + 48) + 32 * (v12 | (v4 << 6)));
      v27 = v15[1];
      v28 = *v15;
      sub_24A021CB8();
      v16 = *&v28;
      if (*&v28 == 0.0)
      {
        v16 = 0.0;
      }

      MEMORY[0x24C20C990](*&v16);
      v17 = *(&v28 + 1);
      if (*(&v28 + 1) == 0.0)
      {
        v17 = 0.0;
      }

      MEMORY[0x24C20C990](*&v17);
      v18 = *&v27;
      if (*&v27 == 0.0)
      {
        v18 = 0.0;
      }

      MEMORY[0x24C20C990](*&v18);
      v19 = *(&v27 + 1);
      if (*(&v27 + 1) == 0.0)
      {
        v19 = 0.0;
      }

      MEMORY[0x24C20C990](*&v19);
      result = sub_24A021CE8();
      v20 = -1 << *(v3 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v9 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v9 + 8 * v22);
          if (v26 != -1)
          {
            v10 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_34;
      }

      v10 = __clz(__rbit64((-1 << v21) & ~*(v9 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = (*(v3 + 48) + 32 * v10);
      *v11 = v28;
      v11[1] = v27;
      ++*(v3 + 16);
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_32;
      }

      v14 = *(v1 + 56 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v7 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_32:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_24A00459C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E618);
  result = sub_24A021988();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_24A021CA8();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24A00478C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E620);
  result = sub_24A021988();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_24A021CB8();
      if (v20)
      {
        MEMORY[0x24C20C980](1);
        sub_249FE4E70(v18, v19);
        sub_24A021488();
      }

      else
      {
        MEMORY[0x24C20C980](0);

        sub_24A021708();
      }

      result = sub_24A021CE8();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_24A004A10(uint64_t a1, uint64_t a2)
{
  sub_24A021CB8();
  sub_24A021708();
  v4 = sub_24A021CE8();

  return sub_24A004C94(a1, a2, v4);
}

unint64_t sub_24A004A88(uint64_t a1)
{
  sub_24A021698();
  sub_24A021CB8();
  sub_24A021708();
  v2 = sub_24A021CE8();

  return sub_24A004D4C(a1, v2);
}

unint64_t sub_24A004B1C(uint64_t a1)
{
  v2 = sub_24A021CA8();

  return sub_24A004E50(a1, v2);
}

unint64_t sub_24A004B60(uint64_t a1, uint64_t a2)
{
  sub_24A021CB8();
  MEMORY[0x24C20C980](a1);
  MEMORY[0x24C20C980](a2);
  v4 = sub_24A021CE8();

  return sub_24A004EBC(a1, a2, v4);
}

const void *sub_24A004BE0(uint64_t a1, unint64_t a2, char a3)
{
  sub_24A021CB8();
  if (a3)
  {
    MEMORY[0x24C20C980](1);
    sub_24A021488();
  }

  else
  {
    MEMORY[0x24C20C980](0);
    sub_24A021708();
  }

  v6 = sub_24A021CE8();

  return sub_24A004F34(a1, a2, a3 & 1, v6);
}

unint64_t sub_24A004C94(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24A021C38())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24A004D4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_24A021698();
      v8 = v7;
      if (v6 == sub_24A021698() && v8 == v9)
      {
        break;
      }

      v11 = sub_24A021C38();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24A004E50(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24A004EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

const void *sub_24A004F34(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if (((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return v7;
  }

  v8 = v4;
  v94 = ~v6;
  if (a1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2 == 0xC000000000000000;
  }

  v12 = a2 >> 62;
  v13 = !v11;
  v87 = HIDWORD(a1);
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v90 = v14;
  v91 = v13;
  __n = BYTE6(a2);
  v93 = a2 >> 62;
  v88 = a1;
  v89 = HIDWORD(a1) - a1;
  v85 = (a1 >> 32) - a1;
  v86 = a1 >> 32;
  while (1)
  {
    v16 = *(v8 + 48) + 24 * v7;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (v19)
    {
      break;
    }

    if (a3)
    {
      goto LABEL_13;
    }

    if (v18 == a1 && v17 == a2)
    {
      sub_249FE4E60(a1, a2, 0);
      sub_249FE4E60(a1, a2, 0);
      sub_249FE4EC4(a1, a2, 0);
      sub_249FE4EC4(a1, a2, 0);
      return v7;
    }

    v25 = sub_24A021C38();
    sub_249FE4E60(v18, v17, 0);
    sub_249FE4E60(a1, a2, 0);
    sub_249FE4EC4(v18, v17, 0);
    sub_249FE4EC4(a1, a2, 0);
    if (v25)
    {
      return v7;
    }

LABEL_15:
    v7 = (v7 + 1) & v94;
    if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return v7;
    }
  }

  if ((a3 & 1) == 0)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v20 = v17 >> 62;
  if (v17 >> 62 == 3)
  {
    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = v17 == 0xC000000000000000;
    }

    v23 = !v21 || v12 < 3;
    if (((v23 | v91) & 1) == 0)
    {
      sub_249FE4E60(0, 0xC000000000000000, 1);
      sub_249FE4E60(0, 0xC000000000000000, 1);
      sub_249FE4EC4(0, 0xC000000000000000, 1);
      v77 = 0;
      v78 = 0xC000000000000000;
LABEL_155:
      sub_249FE4EC4(v77, v78, 1);
      return v7;
    }
  }

  else
  {
    if (v20 <= 1)
    {
      if (v20)
      {
        LODWORD(v26) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_159;
        }

        v26 = v26;
        if (v12 > 1)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v26 = BYTE6(v17);
        if (v12 > 1)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_45;
    }

    if (v20 == 2)
    {
      v28 = *(v18 + 16);
      v27 = *(v18 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_158;
      }

      if (v12 > 1)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }
  }

  v26 = 0;
  if (v12 > 1)
  {
LABEL_49:
    if (v12 == 2)
    {
      v32 = *(a1 + 16);
      v31 = *(a1 + 24);
      v29 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v29)
      {
        goto LABEL_157;
      }

      goto LABEL_51;
    }

    if (!v26)
    {
      goto LABEL_154;
    }

LABEL_13:
    v15 = 1;
LABEL_14:
    sub_249FE4E60(v18, v17, v19);
    sub_249FE4E60(a1, a2, v15);
    sub_249FE4EC4(v18, v17, v19);
    sub_249FE4EC4(a1, a2, v15);
    v12 = v93;
    goto LABEL_15;
  }

LABEL_45:
  v30 = __n;
  if (v12)
  {
    v30 = v89;
    if (v90)
    {
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
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
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
    }
  }

LABEL_51:
  if (v26 != v30)
  {
    goto LABEL_13;
  }

  if (v26 < 1)
  {
LABEL_154:
    sub_249FE4E60(v18, v17, 1);
    sub_249FE4E60(a1, a2, 1);
    sub_249FE4EC4(v18, v17, 1);
    v77 = a1;
    v78 = a2;
    goto LABEL_155;
  }

  if (v20 <= 1)
  {
    if (!v20)
    {
      __s1[0] = v18;
      LOWORD(__s1[1]) = v17;
      BYTE2(__s1[1]) = BYTE2(v17);
      BYTE3(__s1[1]) = BYTE3(v17);
      BYTE4(__s1[1]) = BYTE4(v17);
      BYTE5(__s1[1]) = BYTE5(v17);
      if (!v12)
      {
        goto LABEL_81;
      }

      if (v12 == 1)
      {
        if (v86 < v88)
        {
          goto LABEL_163;
        }

        sub_249FE4E70(v18, v17);
        sub_249FE4E60(v18, v17, 1);
        sub_249FE4E60(a1, a2, 1);
        v33 = sub_24A0213E8();
        if (!v33)
        {
          goto LABEL_190;
        }

        v34 = v33;
        v35 = sub_24A021408();
        if (__OFSUB__(v88, v35))
        {
          goto LABEL_168;
        }

        v36 = (v88 - v35 + v34);
        result = sub_24A0213F8();
        if (!v36)
        {
          goto LABEL_191;
        }

LABEL_120:
        if (result >= v85)
        {
          v64 = v85;
        }

        else
        {
          v64 = result;
        }

        v50 = memcmp(__s1, v36, v64);
        sub_249FE4EC4(v18, v17, 1);
LABEL_124:
        sub_249FE4EC4(v18, v17, 1);
        v65 = a1;
        v66 = a2;
LABEL_151:
        sub_249FE4EC4(v65, v66, 1);
        if (!v50)
        {
          return v7;
        }

        goto LABEL_15;
      }

      v57 = *(a1 + 16);
      v84 = *(a1 + 24);
      sub_249FE4E70(v18, v17);
      sub_249FE4E60(v18, v17, 1);
      sub_249FE4E60(a1, a2, 1);
      v46 = sub_24A0213E8();
      if (v46)
      {
        v58 = sub_24A021408();
        if (__OFSUB__(v57, v58))
        {
          goto LABEL_174;
        }

        v46 += v57 - v58;
      }

      v29 = __OFSUB__(v84, v57);
      v48 = &v84[-v57];
      if (v29)
      {
        goto LABEL_166;
      }

      v49 = sub_24A0213F8();
      if (!v46)
      {
        goto LABEL_189;
      }

      goto LABEL_111;
    }

    if (v18 > v18 >> 32)
    {
      goto LABEL_160;
    }

    sub_249FE4E70(v18, v17);
    sub_249FE4E60(v18, v17, 1);
    sub_249FE4E60(a1, a2, 1);
    v42 = sub_24A0213E8();
    if (v42)
    {
      v43 = v42;
      v44 = sub_24A021408();
      if (__OFSUB__(v18, v44))
      {
        goto LABEL_162;
      }

      v82 = (v18 - v44 + v43);
    }

    else
    {
      v82 = 0;
    }

    v12 = v93;
    sub_24A0213F8();
    if (v93 == 2)
    {
      v71 = *(a1 + 16);
      v80 = *(a1 + 24);
      v51 = sub_24A0213E8();
      if (v51)
      {
        v72 = sub_24A021408();
        if (__OFSUB__(v71, v72))
        {
          goto LABEL_176;
        }

        v51 += v71 - v72;
      }

      v29 = __OFSUB__(v80, v71);
      v73 = v80 - v71;
      if (v29)
      {
        goto LABEL_172;
      }

      v74 = sub_24A0213F8();
      if (v74 >= v73)
      {
        v54 = v73;
      }

      else
      {
        v54 = v74;
      }

      result = v82;
      if (!v82)
      {
        goto LABEL_183;
      }

      v12 = v93;
      if (!v51)
      {
        goto LABEL_182;
      }

      goto LABEL_146;
    }

    if (v93 == 1)
    {
      if (v86 < v88)
      {
        goto LABEL_171;
      }

      v51 = sub_24A0213E8();
      if (v51)
      {
        v55 = sub_24A021408();
        if (__OFSUB__(v88, v55))
        {
          goto LABEL_178;
        }

        v51 += v88 - v55;
      }

      v56 = sub_24A0213F8();
      v54 = v85;
      if (v56 < v85)
      {
        v54 = v56;
      }

      result = v82;
      if (!v82)
      {
        goto LABEL_194;
      }

      if (!v51)
      {
        goto LABEL_193;
      }

      goto LABEL_146;
    }

    result = v82;
    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v87;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v82)
    {
      goto LABEL_192;
    }

    goto LABEL_149;
  }

  if (v20 == 2)
  {
    v38 = *(v18 + 16);
    sub_249FE4E70(v18, v17);
    sub_249FE4E60(v18, v17, 1);
    sub_249FE4E60(a1, a2, 1);
    v39 = sub_24A0213E8();
    if (v39)
    {
      v40 = v39;
      v41 = sub_24A021408();
      if (__OFSUB__(v38, v41))
      {
        goto LABEL_161;
      }

      v81 = (v38 - v41 + v40);
    }

    else
    {
      v81 = 0;
    }

    v12 = v93;
    sub_24A0213F8();
    if (v93 == 2)
    {
      v67 = *(a1 + 16);
      v79 = *(a1 + 24);
      v51 = sub_24A0213E8();
      if (v51)
      {
        v68 = sub_24A021408();
        if (__OFSUB__(v67, v68))
        {
          goto LABEL_175;
        }

        v51 += v67 - v68;
      }

      v29 = __OFSUB__(v79, v67);
      v69 = v79 - v67;
      if (v29)
      {
        goto LABEL_170;
      }

      v70 = sub_24A0213F8();
      if (v70 >= v69)
      {
        v54 = v69;
      }

      else
      {
        v54 = v70;
      }

      result = v81;
      if (!v81)
      {
        goto LABEL_188;
      }

      v12 = v93;
      if (!v51)
      {
        goto LABEL_187;
      }

      goto LABEL_146;
    }

    if (v93 == 1)
    {
      if (v86 < v88)
      {
        goto LABEL_165;
      }

      v51 = sub_24A0213E8();
      if (v51)
      {
        v52 = sub_24A021408();
        if (__OFSUB__(v88, v52))
        {
          goto LABEL_177;
        }

        v51 += v88 - v52;
      }

      v53 = sub_24A0213F8();
      v54 = v85;
      if (v53 < v85)
      {
        v54 = v53;
      }

      result = v81;
      if (!v81)
      {
        goto LABEL_186;
      }

      if (!v51)
      {
        goto LABEL_185;
      }

LABEL_146:
      if (result == v51)
      {
        sub_249FE4EC4(v18, v17, 1);
        sub_249FE4EC4(a1, a2, 1);
        v77 = v18;
        v78 = v17;
        goto LABEL_155;
      }

      v75 = v54;
      v76 = v51;
      goto LABEL_150;
    }

    result = v81;
    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v87;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v81)
    {
      goto LABEL_184;
    }

LABEL_149:
    v76 = __s1;
    v75 = __n;
LABEL_150:
    v50 = memcmp(result, v76, v75);
    sub_249FE4EC4(v18, v17, 1);
    sub_249FE4EC4(a1, a2, 1);
    v65 = v18;
    v66 = v17;
    goto LABEL_151;
  }

  memset(__s1, 0, 14);
  if (!v12)
  {
LABEL_81:
    __s2 = a1;
    v97 = BYTE2(a1);
    v98 = BYTE3(a1);
    v99 = v87;
    v100 = BYTE5(a1);
    v101 = BYTE6(a1);
    v102 = HIBYTE(a1);
    v103 = a2;
    v104 = BYTE2(a2);
    v105 = BYTE3(a2);
    v106 = BYTE4(a2);
    v107 = BYTE5(a2);
    sub_249FE4E60(v18, v17, 1);
    sub_249FE4E60(a1, a2, 1);
    v50 = memcmp(__s1, &__s2, __n);
    goto LABEL_124;
  }

  if (v12 == 2)
  {
    v45 = *(a1 + 16);
    v83 = *(a1 + 24);
    sub_249FE4E70(v18, v17);
    sub_249FE4E60(v18, v17, 1);
    sub_249FE4E60(a1, a2, 1);
    v46 = sub_24A0213E8();
    if (v46)
    {
      v47 = sub_24A021408();
      if (__OFSUB__(v45, v47))
      {
        goto LABEL_173;
      }

      v46 += v45 - v47;
    }

    v29 = __OFSUB__(v83, v45);
    v48 = &v83[-v45];
    if (v29)
    {
      goto LABEL_167;
    }

    v49 = sub_24A0213F8();
    if (!v46)
    {
      goto LABEL_181;
    }

LABEL_111:
    if (v49 >= v48)
    {
      v59 = v48;
    }

    else
    {
      v59 = v49;
    }

    v60 = memcmp(__s1, v46, v59);
    sub_249FE4EC4(v18, v17, 1);
    sub_249FE4EC4(v18, v17, 1);
    sub_249FE4EC4(a1, a2, 1);
    v12 = v93;
    if (!v60)
    {
      return v7;
    }

    goto LABEL_15;
  }

  if (v86 < v88)
  {
    goto LABEL_164;
  }

  sub_249FE4E70(v18, v17);
  sub_249FE4E60(v18, v17, 1);
  sub_249FE4E60(a1, a2, 1);
  v61 = sub_24A0213E8();
  if (v61)
  {
    v62 = v61;
    v63 = sub_24A021408();
    if (__OFSUB__(v88, v63))
    {
      goto LABEL_169;
    }

    v36 = (v88 - v63 + v62);
    result = sub_24A0213F8();
    if (!v36)
    {
      goto LABEL_180;
    }

    goto LABEL_120;
  }

  sub_24A0213F8();
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  result = sub_24A0213F8();
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
  return result;
}

void *sub_24A005B18(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = (*(a4 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v7)))));
      v15 = v14[1];
      v7 &= v7 - 1;
      *a2 = *v14;
      a2[1] = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_24A005C1C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      v20 = *(a4 + 56) + 24 * v18;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      *v11 = v19;
      *(v11 + 8) = v21;
      *(v11 + 16) = v22;
      *(v11 + 24) = v23;
      if (v14 == v10)
      {
        sub_249FE4E60(v21, v22, v23);
        goto LABEL_24;
      }

      v11 += 32;
      sub_249FE4E60(v21, v22, v23);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v25 = v12 + 1;
    }

    else
    {
      v25 = (63 - v7) >> 6;
    }

    v12 = v25 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24A005D84(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 == 1)
  {
    return sub_24A021C28();
  }

  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_249FDCC40(0, v2, 0);
    v3 = v13;
    v4 = v1 + 32;
    do
    {
      v4 += 8;
      v5 = sub_24A021C28();
      v14 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_249FDCC40((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v14;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v2;
    }

    while (v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF68);
    sub_249FE4DB0();
    v12 = sub_24A021628();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A005F04(uint64_t a1, uint64_t a2)
{
  if (a1 == 114 && a2 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 103 && a2 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000 || (sub_24A021C38() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 97 && a2 == 0xE100000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_24A021C38();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_24A00603C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E5F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A006238();
  sub_24A021D08();
  v9[15] = 0;
  sub_24A021B58();
  v7 = v6;
  v9[14] = 1;
  sub_24A021B58();
  v9[13] = 2;
  sub_24A021B58();
  v9[12] = 3;
  sub_24A021B58();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24A006238()
{
  result = qword_27EF2E5F8;
  if (!qword_27EF2E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E5F8);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24A0062A4()
{
  result = qword_2810D9B48;
  if (!qword_2810D9B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810D9B48);
  }

  return result;
}

uint64_t sub_24A0062F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A006340()
{
  result = qword_2810DA960;
  if (!qword_2810DA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA960);
  }

  return result;
}

uint64_t sub_24A006394(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_249FE4ED4(a1, a2);
  }

  return a1;
}

uint64_t sub_24A0063A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24A0063F0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_24A006454()
{
  result = qword_27EF2E628;
  if (!qword_27EF2E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E628);
  }

  return result;
}

unint64_t sub_24A0064AC()
{
  result = qword_27EF2E630;
  if (!qword_27EF2E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E630);
  }

  return result;
}

unint64_t sub_24A006504()
{
  result = qword_27EF2E638;
  if (!qword_27EF2E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E638);
  }

  return result;
}

uint64_t sub_24A006558(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73726F6C6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_24A021C38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F63696A6F6D65 && a2 == 0xEB0000000073726FLL || (sub_24A021C38() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70616D7865646E69 && a2 == 0xE800000000000000 || (sub_24A021C38() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24A021C38();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24A0066BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E640);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_24A006A30();
  sub_24A021D08();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E648);
    v10 = 0;
    sub_24A006B94(&qword_2810D9BB0, &qword_2810D9B98);
    sub_24A021B78();
    v7 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E650);
    v10 = 1;
    sub_24A006A84();
    sub_24A021B78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E668);
    v10 = 2;
    sub_24A006DBC(&qword_2810D9BE8);
    v9 = 0;
    sub_24A021B78();
    LOBYTE(v11) = 3;
    sub_24A021B68();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24A006A30()
{
  result = qword_2810DA978;
  if (!qword_2810DA978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA978);
  }

  return result;
}

unint64_t sub_24A006A84()
{
  result = qword_2810D9BB8;
  if (!qword_2810D9BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2E650);
    sub_24A006D30(&qword_2810D9BA8, &qword_2810D9B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D9BB8);
  }

  return result;
}

uint64_t sub_24A006B28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2E660);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A006B94(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2E648);
    sub_24A006C20(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A006C20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2E008);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A006C8C()
{
  result = qword_27EF2E680;
  if (!qword_27EF2E680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2E650);
    sub_24A006D30(&qword_27EF2E688, &qword_27EF2E690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E680);
  }

  return result;
}

uint64_t sub_24A006D30(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2E658);
    sub_24A006B28(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A006DBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2E668);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A006E40()
{
  result = qword_27EF2E6A0;
  if (!qword_27EF2E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E6A0);
  }

  return result;
}

unint64_t sub_24A006E98()
{
  result = qword_2810DA968;
  if (!qword_2810DA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA968);
  }

  return result;
}

unint64_t sub_24A006EF0()
{
  result = qword_2810DA970;
  if (!qword_2810DA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA970);
  }

  return result;
}

uint64_t sub_24A006F50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v3, *v4), vceqq_f64(v3[1], v4[1]))));
    if ((v5 & 1) == 0)
    {
      break;
    }

    v3 += 2;
    v4 += 2;
    --v2;
  }

  while (v2);
  return v5 & 1;
}

uint64_t sub_24A006FD4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A007030(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *i;
    v12 = *(v3 - 2);
    v11 = *(v3 - 1);
    if ((*i & 1) == 0)
    {
      if (*v3)
      {
        goto LABEL_148;
      }

      if (v9 != v12 || v8 != v11)
      {
        v17 = sub_24A021C38();
        sub_249FE4E60(v12, v11, 0);
        sub_249FE4E60(v9, v8, 0);
        sub_249FE4EC4(v9, v8, 0);
        sub_249FE4EC4(v12, v11, 0);
        if ((v17 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_7;
      }

      sub_249FE4E60(*(i - 2), *(i - 1), 0);
      sub_249FE4E60(v9, v8, 0);
      sub_249FE4EC4(v9, v8, 0);
      v5 = v9;
      v6 = v8;
      v7 = 0;
      goto LABEL_6;
    }

    if ((*v3 & 1) == 0)
    {
      v71 = *(v3 - 2);
      v72 = 0;
      goto LABEL_150;
    }

    v13 = v8 >> 62;
    v14 = v11 >> 62;
    if (v8 >> 62 == 3)
    {
      v15 = 0;
      if (!v9 && v8 == 0xC000000000000000 && v11 >> 62 == 3)
      {
        v15 = 0;
        if (!v12 && v11 == 0xC000000000000000)
        {
          sub_249FE4E60(0, 0xC000000000000000, 1);
          sub_249FE4E60(0, 0xC000000000000000, 1);
          sub_249FE4EC4(0, 0xC000000000000000, 1);
          v5 = 0;
          v6 = 0xC000000000000000;
          v7 = 1;
          goto LABEL_6;
        }
      }

LABEL_33:
      if (v14 > 1)
      {
        goto LABEL_27;
      }

      goto LABEL_34;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        v15 = BYTE6(v8);
        if (v14 > 1)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }

      LODWORD(v15) = HIDWORD(v9) - v9;
      if (__OFSUB__(HIDWORD(v9), v9))
      {
        goto LABEL_155;
      }

      v15 = v15;
      if (v14 <= 1)
      {
        goto LABEL_34;
      }

LABEL_27:
      if (v14 == 2)
      {
        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        v20 = __OFSUB__(v18, v19);
        v21 = v18 - v19;
        if (v20)
        {
          goto LABEL_153;
        }

        goto LABEL_40;
      }

      if (v15)
      {
        goto LABEL_148;
      }

LABEL_51:
      sub_249FE4E60(*(v3 - 2), *(v3 - 1), 1);
      sub_249FE4E60(v9, v8, 1);
      sub_249FE4EC4(v9, v8, 1);
      v5 = v12;
      v6 = v11;
      v7 = 1;
LABEL_6:
      sub_249FE4EC4(v5, v6, v7);
      goto LABEL_7;
    }

    if (v13 == 2)
    {
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      v20 = __OFSUB__(v22, v23);
      v15 = v22 - v23;
      if (v20)
      {
        goto LABEL_154;
      }

      goto LABEL_33;
    }

    v15 = 0;
    if (v14 > 1)
    {
      goto LABEL_27;
    }

LABEL_34:
    if (v14)
    {
      LODWORD(v21) = HIDWORD(v12) - v12;
      if (__OFSUB__(HIDWORD(v12), v12))
      {
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
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
      }

      v21 = v21;
    }

    else
    {
      v21 = BYTE6(v11);
    }

LABEL_40:
    if (v15 != v21)
    {
LABEL_148:
      v71 = *(v3 - 2);
      v72 = 1;
LABEL_150:
      sub_249FE4E60(v71, *(v3 - 1), v72);
      sub_249FE4E60(v9, v8, v10);
      sub_249FE4EC4(v9, v8, v10);
      sub_249FE4EC4(v71, v11, v72);
      return 0;
    }

    if (v15 < 1)
    {
      goto LABEL_51;
    }

    if (v13 > 1)
    {
      break;
    }

    if (!v13)
    {
      __s1[0] = *(i - 2);
      LOWORD(__s1[1]) = v8;
      BYTE2(__s1[1]) = BYTE2(v8);
      BYTE3(__s1[1]) = BYTE3(v8);
      BYTE4(__s1[1]) = BYTE4(v8);
      BYTE5(__s1[1]) = BYTE5(v8);
      if (v14)
      {
        if (v14 == 1)
        {
          v24 = v12;
          v77 = (v12 >> 32) - v12;
          if (v12 >> 32 < v12)
          {
            goto LABEL_160;
          }

          sub_249FE4E60(v12, v11, 1);
          sub_249FE4E60(v9, v8, 1);
          v25 = v12;
          sub_249FE4E60(v12, v11, 1);
          sub_249FE4E60(v9, v8, 1);
          v26 = sub_24A0213E8();
          if (!v26)
          {
            goto LABEL_184;
          }

          v27 = v26;
          v28 = sub_24A021408();
          if (__OFSUB__(v24, v28))
          {
            goto LABEL_165;
          }

          v29 = (v24 - v28 + v27);
          result = sub_24A0213F8();
          if (!v29)
          {
            goto LABEL_185;
          }

LABEL_113:
          if (result >= v77)
          {
            v61 = v77;
          }

          else
          {
            v61 = result;
          }

          v56 = memcmp(__s1, v29, v61);
          sub_249FE4EC4(v9, v8, 1);
          goto LABEL_117;
        }

        v53 = *(v12 + 16);
        v52 = *(v12 + 24);
        sub_249FE4E60(v12, v11, 1);
        sub_249FE4E60(v9, v8, 1);
        v80 = v12;
        sub_249FE4E60(v12, v11, 1);
        sub_249FE4E60(v9, v8, 1);
        v40 = sub_24A0213E8();
        if (v40)
        {
          v54 = sub_24A021408();
          if (__OFSUB__(v53, v54))
          {
            goto LABEL_170;
          }

          v40 += v53 - v54;
        }

        v20 = __OFSUB__(v52, v53);
        v42 = v52 - v53;
        if (v20)
        {
          goto LABEL_163;
        }

        v43 = sub_24A0213F8();
        if (!v40)
        {
          goto LABEL_179;
        }

        goto LABEL_105;
      }

LABEL_73:
      v81 = v12;
      v82 = v11;
      v83 = BYTE2(v11);
      v84 = BYTE3(v11);
      v85 = BYTE4(v11);
      v86 = BYTE5(v11);
      sub_249FE4E60(v12, v11, 1);
      sub_249FE4E60(v9, v8, 1);
      sub_249FE4E60(v12, v11, 1);
      sub_249FE4E60(v9, v8, 1);
      result = __s1;
      v44 = &v81;
      v45 = BYTE6(v11);
      goto LABEL_145;
    }

    if (v9 > v9 >> 32)
    {
      goto LABEL_156;
    }

    sub_249FE4E60(*(v3 - 2), *(v3 - 1), 1);
    sub_249FE4E60(v9, v8, 1);
    v79 = v12;
    sub_249FE4E60(v12, v11, 1);
    sub_249FE4E60(v9, v8, 1);
    v35 = sub_24A0213E8();
    if (v35)
    {
      v36 = v35;
      v37 = sub_24A021408();
      if (__OFSUB__(v9, v37))
      {
        goto LABEL_158;
      }

      v76 = (v9 - v37 + v36);
    }

    else
    {
      v76 = 0;
    }

    sub_24A0213F8();
    v12 = v79;
    if (v14 == 2)
    {
      v66 = *(v79 + 16);
      v74 = *(v79 + 24);
      v46 = sub_24A0213E8();
      if (v46)
      {
        v67 = sub_24A021408();
        if (__OFSUB__(v66, v67))
        {
          goto LABEL_173;
        }

        v46 += v66 - v67;
      }

      v20 = __OFSUB__(v74, v66);
      v68 = v74 - v66;
      if (v20)
      {
        goto LABEL_168;
      }

      v69 = sub_24A0213F8();
      if (v69 >= v68)
      {
        v49 = v68;
      }

      else
      {
        v49 = v69;
      }

      result = v76;
      if (!v76)
      {
        goto LABEL_187;
      }

      if (!v46)
      {
        goto LABEL_186;
      }

      goto LABEL_140;
    }

    if (v14 == 1)
    {
      if (v79 >> 32 < v79)
      {
        goto LABEL_167;
      }

      v46 = sub_24A0213E8();
      if (v46)
      {
        v50 = sub_24A021408();
        if (__OFSUB__(v79, v50))
        {
          goto LABEL_174;
        }

        v46 += v79 - v50;
      }

      v12 = v79;
      v51 = sub_24A0213F8();
      if (v51 >= (v79 >> 32) - v79)
      {
        v49 = (v79 >> 32) - v79;
      }

      else
      {
        v49 = v51;
      }

      result = v76;
      if (!v76)
      {
        goto LABEL_182;
      }

      if (!v46)
      {
        goto LABEL_181;
      }

      goto LABEL_140;
    }

    result = v76;
    __s1[0] = v79;
    LOWORD(__s1[1]) = v11;
    BYTE2(__s1[1]) = BYTE2(v11);
    BYTE3(__s1[1]) = BYTE3(v11);
    BYTE4(__s1[1]) = BYTE4(v11);
    BYTE5(__s1[1]) = BYTE5(v11);
    if (!v76)
    {
      goto LABEL_180;
    }

LABEL_144:
    v45 = BYTE6(v11);
    v44 = __s1;
LABEL_145:
    v70 = memcmp(result, v44, v45);
    sub_249FE4EC4(v9, v8, 1);
    sub_249FE4EC4(v12, v11, 1);
    sub_249FE4EC4(v12, v11, 1);
    sub_249FE4EC4(v9, v8, 1);
    if (v70)
    {
      return 0;
    }

LABEL_7:
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v13 != 2)
  {
    memset(__s1, 0, 14);
    if (v14)
    {
      if (v14 != 2)
      {
        v57 = v12;
        v77 = (v12 >> 32) - v12;
        if (v12 >> 32 < v12)
        {
          goto LABEL_159;
        }

        sub_249FE4E60(v12, v11, 1);
        sub_249FE4E60(v9, v8, 1);
        v25 = v12;
        sub_249FE4E60(v12, v11, 1);
        sub_249FE4E60(v9, v8, 1);
        v58 = sub_24A0213E8();
        if (!v58)
        {
          goto LABEL_176;
        }

        v59 = v58;
        v60 = sub_24A021408();
        if (__OFSUB__(v57, v60))
        {
          goto LABEL_164;
        }

        v29 = (v57 - v60 + v59);
        result = sub_24A0213F8();
        if (!v29)
        {
          goto LABEL_177;
        }

        goto LABEL_113;
      }

      v39 = *(v12 + 16);
      v38 = *(v12 + 24);
      sub_249FE4E60(v12, v11, 1);
      sub_249FE4E60(v9, v8, 1);
      v80 = v12;
      sub_249FE4E60(v12, v11, 1);
      sub_249FE4E60(v9, v8, 1);
      v40 = sub_24A0213E8();
      if (v40)
      {
        v41 = sub_24A021408();
        if (__OFSUB__(v39, v41))
        {
          goto LABEL_169;
        }

        v40 += v39 - v41;
      }

      v20 = __OFSUB__(v38, v39);
      v42 = v38 - v39;
      if (v20)
      {
        goto LABEL_161;
      }

      v43 = sub_24A0213F8();
      if (!v40)
      {
        goto LABEL_178;
      }

LABEL_105:
      if (v43 >= v42)
      {
        v55 = v42;
      }

      else
      {
        v55 = v43;
      }

      v56 = memcmp(__s1, v40, v55);
      sub_249FE4EC4(v9, v8, 1);
      v25 = v80;
LABEL_117:
      sub_249FE4EC4(v25, v11, 1);
      sub_249FE4EC4(v25, v11, 1);
      sub_249FE4EC4(v9, v8, 1);
      if (v56)
      {
        return 0;
      }

      goto LABEL_7;
    }

    goto LABEL_73;
  }

  v31 = *(v9 + 16);
  sub_249FE4E60(*(v3 - 2), *(v3 - 1), 1);
  sub_249FE4E60(v9, v8, 1);
  v78 = v12;
  sub_249FE4E60(v12, v11, 1);
  sub_249FE4E60(v9, v8, 1);
  v32 = sub_24A0213E8();
  if (v32)
  {
    v33 = v32;
    v34 = sub_24A021408();
    if (__OFSUB__(v31, v34))
    {
      goto LABEL_157;
    }

    v75 = (v31 - v34 + v33);
  }

  else
  {
    v75 = 0;
  }

  sub_24A0213F8();
  v12 = v78;
  if (v14 != 2)
  {
    if (v14 == 1)
    {
      if (v78 >> 32 < v78)
      {
        goto LABEL_162;
      }

      v46 = sub_24A0213E8();
      if (v46)
      {
        v47 = sub_24A021408();
        if (__OFSUB__(v78, v47))
        {
          goto LABEL_172;
        }

        v46 += v78 - v47;
      }

      v12 = v78;
      v48 = sub_24A0213F8();
      if (v48 >= (v78 >> 32) - v78)
      {
        v49 = (v78 >> 32) - v78;
      }

      else
      {
        v49 = v48;
      }

      result = v75;
      if (!v75)
      {
        goto LABEL_189;
      }

      if (!v46)
      {
        goto LABEL_188;
      }

LABEL_140:
      if (result == v46)
      {
        sub_249FE4EC4(v9, v8, 1);
        sub_249FE4EC4(v12, v11, 1);
        sub_249FE4EC4(v12, v11, 1);
        v5 = v9;
        v6 = v8;
        v7 = 1;
        goto LABEL_6;
      }

      v45 = v49;
      v44 = v46;
      goto LABEL_145;
    }

    result = v75;
    __s1[0] = v78;
    LOWORD(__s1[1]) = v11;
    BYTE2(__s1[1]) = BYTE2(v11);
    BYTE3(__s1[1]) = BYTE3(v11);
    BYTE4(__s1[1]) = BYTE4(v11);
    BYTE5(__s1[1]) = BYTE5(v11);
    if (!v75)
    {
      goto LABEL_183;
    }

    goto LABEL_144;
  }

  v62 = *(v78 + 16);
  v73 = *(v78 + 24);
  v46 = sub_24A0213E8();
  if (v46)
  {
    v63 = sub_24A021408();
    if (__OFSUB__(v62, v63))
    {
      goto LABEL_171;
    }

    v46 += v62 - v63;
  }

  v20 = __OFSUB__(v73, v62);
  v64 = v73 - v62;
  if (v20)
  {
    goto LABEL_166;
  }

  v65 = sub_24A0213F8();
  if (v65 >= v64)
  {
    v49 = v64;
  }

  else
  {
    v49 = v65;
  }

  result = v75;
  if (!v75)
  {
    goto LABEL_175;
  }

  if (v46)
  {
    goto LABEL_140;
  }

  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  sub_24A0213F8();
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  result = sub_24A0213F8();
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
  return result;
}

uint64_t sub_24A007C58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_configuration;
  swift_beginAccess();
  v16[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v16[3] = *(v3 + 48);
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v17 = *(v3 + 128);
  v16[6] = v8;
  v16[7] = v9;
  v16[5] = v7;
  v10 = *(v3 + 112);
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = v10;
  *(a2 + 128) = *(v3 + 128);
  v11 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v11;
  v12 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v12;
  v13 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v13;
  return sub_24A00A0A0(v16, &v15, &qword_27EF2E168);
}

void sub_24A007D20(__int128 *a1, void *a2)
{
  v2 = a1[7];
  v26 = a1[6];
  v27 = v2;
  v28 = *(a1 + 128);
  v3 = a1[3];
  v22 = a1[2];
  v23 = v3;
  v4 = a1[5];
  v24 = a1[4];
  v25 = v4;
  v5 = a1[1];
  v6 = *a2 + OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_configuration;
  v20 = *a1;
  v21 = v5;
  swift_beginAccess();
  v29[0] = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  v29[3] = *(v6 + 48);
  v29[4] = v9;
  v29[1] = v7;
  v29[2] = v8;
  v10 = *(v6 + 80);
  v11 = *(v6 + 96);
  v12 = *(v6 + 112);
  v30 = *(v6 + 128);
  v29[6] = v11;
  v29[7] = v12;
  v29[5] = v10;
  *v6 = v20;
  v13 = v21;
  v14 = v22;
  v15 = v24;
  *(v6 + 48) = v23;
  *(v6 + 64) = v15;
  *(v6 + 16) = v13;
  *(v6 + 32) = v14;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  *(v6 + 128) = v28;
  *(v6 + 96) = v17;
  *(v6 + 112) = v18;
  *(v6 + 80) = v16;
  sub_24A00A0A0(&v20, &v19, &qword_27EF2E168);
  sub_249FECCF8(v29, &qword_27EF2E168);
  sub_24A008AE0();
}

uint64_t sub_24A007E30@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_configuration;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v3 + 128);
  *(a1 + 128) = *(v3 + 128);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_24A00A0A0(v17, &v16, &qword_27EF2E168);
}

void sub_24A007EF0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_configuration;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v12[6] = *(v3 + 96);
  v12[7] = v4;
  v13 = *(v3 + 128);
  v5 = *(v3 + 48);
  v12[2] = *(v3 + 32);
  v12[3] = v5;
  v6 = *(v3 + 80);
  v12[4] = *(v3 + 64);
  v12[5] = v6;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v9;
  *(v3 + 128) = *(a1 + 128);
  v10 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v10;
  v11 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v11;
  sub_249FECCF8(v12, &qword_27EF2E168);
  sub_24A008AE0();
}

void (*sub_24A007FAC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24A008010;
}

void sub_24A008010(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24A008AE0();
  }
}

double sub_24A008044()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_wakeProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24A008088(double a1)
{
  v3 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_wakeProgress;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = (1.0 - a1) * 0.5 + 0.0;
  *&v4 = v4;
  [*(v1 + OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_overlayLayer) setOpacity_];
  v6 = sub_24A008698();
  if (*(v5 + 24))
  {
    v7 = v5;
    swift_beginAccess();
    v8 = *(v1 + v3);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v9);
    (*(v10 + 64))(v9, v10, v8);
  }

  return (v6)(v12, 0);
}

void (*sub_24A008198(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_wakeProgress;
  *(v3 + 56) = v1;
  *(v3 + 64) = v4;
  swift_beginAccess();
  return sub_24A008220;
}

void sub_24A008220(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[7];
    v5 = (1.0 - *(v4 + v3[8])) * 0.5 + 0.0;
    *&v5 = v5;
    [*(v4 + OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_overlayLayer) setOpacity_];
    v7 = sub_24A008698();
    if (*(v6 + 24))
    {
      v8 = v6;
      v10 = v3[7];
      v9 = v3[8];
      swift_beginAccess();
      v11 = *(v10 + v9);
      v12 = *(v8 + 24);
      v13 = *(v8 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v8, v12);
      (*(v13 + 64))(v12, v13, v11);
    }

    (v7)(v3, 0);
  }

  free(v3);
}

uint64_t sub_24A008334(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_unlockProgress;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v6 = sub_24A008698();
  if (*(v5 + 24))
  {
    v7 = v5;
    swift_beginAccess();
    v8 = *(v3 + v4);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v9);
    (*(v10 + 88))(v9, v10, v8);
  }

  return (v6)(v12, 0);
}

double sub_24A008414()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_unlockProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24A008458(double a1)
{
  v3 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_unlockProgress;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = sub_24A008698();
  if (*(v4 + 24))
  {
    v6 = v4;
    swift_beginAccess();
    v7 = *(v1 + v3);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v6, v8);
    (*(v9 + 88))(v8, v9, v7);
  }

  return (v5)(v11, 0);
}

void (*sub_24A008534(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_unlockProgress;
  *(v3 + 56) = v1;
  *(v3 + 64) = v4;
  swift_beginAccess();
  return sub_24A0085BC;
}

void sub_24A0085BC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = sub_24A008698();
    if (*(v4 + 24))
    {
      v6 = v4;
      v8 = v3[7];
      v7 = v3[8];
      swift_beginAccess();
      v9 = *(v8 + v7);
      v10 = *(v6 + 24);
      v11 = *(v6 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v6, v10);
      (*(v11 + 88))(v10, v11, v9);
    }

    (v5)(v3, 0);
  }

  free(v3);
}

void sub_24A0086F8()
{
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [objc_allocWithZone(MEMORY[0x277CDCFA8]) initWithFrame_];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor_];

  v15 = *&v0[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_sceneView];
  *&v0[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_sceneView] = v13;
  v16 = v13;

  v17 = [v1 mainScreen];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v0 setView_];
  v27 = [v0 view];
  if (!v27)
  {
    __break(1u);
    goto LABEL_8;
  }

  v28 = v27;
  [v27 addSubview_];

  v29 = *&v0[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_overlayLayer];
  v30 = [v12 blackColor];
  v31 = [v30 CGColor];

  [v29 setBackgroundColor_];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v33 = v32;
  [v32 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  [v29 setFrame_];
  [v29 setOpacity_];
  v42 = [v0 view];
  if (!v42)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = [v42 layer];

  [v44 addSublayer_];
}

void sub_24A008A50()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for EmojiSceneViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_24A008AE0();
}

void sub_24A008AE0()
{
  v1 = v0;
  if (![v0 isViewLoaded])
  {
    return;
  }

  v2 = &v0[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_configuration];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v4 = *(v2 + 7);
  v72 = *(v2 + 6);
  v73 = v4;
  v5 = *(v2 + 1);
  v6 = *(v2 + 3);
  v68 = *(v2 + 2);
  v69 = v6;
  v7 = *(v2 + 3);
  v8 = *(v2 + 5);
  v70 = *(v2 + 4);
  v71 = v8;
  v9 = *(v2 + 1);
  v67[0] = *v2;
  v67[1] = v9;
  v10 = *(v2 + 7);
  v81 = v72;
  v82 = v10;
  v77 = v68;
  v78 = v7;
  v79 = v70;
  v80 = v3;
  v74 = v2[128];
  v83 = v2[128];
  v75 = v67[0];
  v76 = v5;
  if (sub_249FE499C(&v75) != 1)
  {
    v15 = *&v1[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_sceneView];
    if (!v15)
    {
LABEL_40:
      v1[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_currentLayoutStyle] = BYTE10(v81);
      return;
    }

    v16 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_scene;
    swift_beginAccess();
    sub_24A00A0A0(&v1[v16], v64, &qword_27EF2E6D8);
    v17 = v1[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_currentLayoutStyle];
    if (v17 == 3)
    {
      if (BYTE10(v81) != 1)
      {
        if (BYTE10(v81) != 2)
        {
          if (BYTE10(v81) == 3)
          {
            goto LABEL_16;
          }

          goto LABEL_14;
        }

LABEL_19:
        sub_24A00A0A0(v67, &v55, &qword_27EF2E168);
        [v15 bounds];
        v28 = v27;
        v30 = v29;
        v31 = type metadata accessor for ExpandingSpiralScene();
        v32 = [objc_allocWithZone(v31) initWithSize_];
        sub_249FECCF8(v64, &qword_27EF2E6D8);
        v64[0] = v32;
        v65 = v31;
        v24 = &off_285D28058;
        goto LABEL_21;
      }

LABEL_20:
      sub_24A00A0A0(v67, &v55, &qword_27EF2E168);
      [v15 bounds];
      v34 = v33;
      v36 = v35;
      v37 = type metadata accessor for CircularScene();
      v38 = [objc_allocWithZone(v37) initWithSize_];
      sub_249FECCF8(v64, &qword_27EF2E6D8);
      v64[0] = v38;
      v65 = v37;
      v24 = &off_285D27B08;
      goto LABEL_21;
    }

    if (BYTE10(v81) != 3)
    {
      if (v17 == BYTE10(v81))
      {
LABEL_16:
        sub_24A00A0A0(v67, &v55, &qword_27EF2E168);
        v25 = v15;
        v26 = 0;
        goto LABEL_22;
      }

      if (BYTE10(v81) == 1)
      {
        goto LABEL_20;
      }

      if (BYTE10(v81) == 2)
      {
        goto LABEL_19;
      }
    }

LABEL_14:
    sub_24A00A0A0(v67, &v55, &qword_27EF2E168);
    [v15 bounds];
    v19 = v18;
    v21 = v20;
    v22 = type metadata accessor for OffsetGridScene();
    v23 = [objc_allocWithZone(v22) initWithSize_];
    sub_249FECCF8(v64, &qword_27EF2E6D8);
    v64[0] = v23;
    v65 = v22;
    v24 = &off_285D28A48;
LABEL_21:
    v66 = v24;
    v26 = 1;
LABEL_22:
    sub_24A00A0A0(v64, &v55, &qword_27EF2E6D8);
    if (!*(&v56 + 1))
    {
      sub_249FECCF8(&v55, &qword_27EF2E6D8);
      if (!v26)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    sub_249FECD58(&v55, v52);
    v39 = v1[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_currentSizeVariant];
    v40 = BYTE11(v81);
    if (v39 == 3)
    {
      if (BYTE11(v81) == 3)
      {
LABEL_30:
        v61 = v81;
        v62 = v82;
        v63 = v83;
        v57 = v77;
        v58 = v78;
        v59 = v79;
        v60 = v80;
        v55 = v75;
        v56 = v76;
        v43 = EmojiPosterConfiguration.emojis.getter();
        v44 = v53;
        v45 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        v46 = (*(v45 + 8))(v44, v45);
        LOBYTE(v44) = sub_24A007030(v43, v46);

        if ((v44 & 1) == 0)
        {
          v61 = v81;
          v62 = v82;
          v63 = v83;
          v57 = v77;
          v58 = v78;
          v59 = v79;
          v60 = v80;
          v55 = v75;
          v56 = v76;
          v47 = EmojiPosterConfiguration.emojis.getter();
          v48 = v53;
          v49 = v54;
          __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
          (*(v49 + 16))(v47, v48, v49);
        }

        __swift_destroy_boxed_opaque_existential_1(v52);
        if (!v26)
        {
          goto LABEL_36;
        }

LABEL_33:
        sub_24A00A0A0(v64, &v55, &qword_27EF2E6D8);
        swift_beginAccess();
        sub_24A00A39C(&v55, &v1[v16]);
        swift_endAccess();
        sub_24A00A0A0(v64, &v55, &qword_27EF2E6D8);
        if (!*(&v56 + 1))
        {
          sub_249FECCF8(v64, &qword_27EF2E6D8);

          v51 = &v55;
          goto LABEL_38;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E6F0);
        sub_24A00A350();
        if (swift_dynamicCast())
        {
          v50 = v52[0];
          [v52[0] setScaleMode_];
          [v15 presentScene_];

          v51 = v64;
LABEL_38:
          sub_249FECCF8(v51, &qword_27EF2E6D8);
          goto LABEL_39;
        }

LABEL_36:
        sub_249FECCF8(v64, &qword_27EF2E6D8);

LABEL_39:
        sub_249FECCF8(v67, &qword_27EF2E168);
        goto LABEL_40;
      }
    }

    else if (v39 == BYTE11(v81))
    {
      goto LABEL_30;
    }

    v41 = v53;
    v42 = v54;
    __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    LOBYTE(v55) = v40;
    (*(v42 + 40))(&v55, v41, v42);
    goto LABEL_30;
  }

  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClassUnconditional();
    v14 = [v13 scene];
    if (v14)
    {

      [v13 presentScene_];
    }
  }
}

id sub_24A0091E0(void *a1, double a2, double a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  aBlock[4] = sub_24A0093E8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A0093F4;
  aBlock[3] = &block_descriptor_7;
  v8 = _Block_copy(aBlock);
  v9 = v3;

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
  v11.receiver = v9;
  v11.super_class = type metadata accessor for EmojiSceneViewController();
  return objc_msgSendSuper2(&v11, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
}

void sub_24A0092F8(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_scene;
  swift_beginAccess();
  sub_24A00A0A0(a4 + v7, v9, &qword_27EF2E6D8);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E6F0);
    sub_24A00A350();
    if (swift_dynamicCast())
    {
      [v8 setSize_];
    }
  }

  else
  {
    sub_249FECCF8(v9, &qword_27EF2E6D8);
  }
}

uint64_t sub_24A0093F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A00960C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

uint64_t sub_24A009678(double a1)
{
  v3 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_scene;
  swift_beginAccess();
  sub_24A00A0A0(v1 + v3, &v7, &qword_27EF2E6D8);
  if (!v8)
  {
    return sub_249FECCF8(&v7, &qword_27EF2E6D8);
  }

  sub_249FECD58(&v7, v9);
  v4 = v10;
  v5 = v11;
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  (*(v5 + 88))(v4, v5, a1);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

id EmojiSceneViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A021658();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EmojiSceneViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_configuration];
  sub_249FE389C(v17);
  v7 = v17[7];
  *(v6 + 6) = v17[6];
  *(v6 + 7) = v7;
  v6[128] = v18;
  v8 = v17[3];
  *(v6 + 2) = v17[2];
  *(v6 + 3) = v8;
  v9 = v17[5];
  *(v6 + 4) = v17[4];
  *(v6 + 5) = v9;
  v10 = v17[1];
  *v6 = v17[0];
  *(v6 + 1) = v10;
  v3[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_currentLayoutStyle] = 3;
  v3[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_currentSizeVariant] = 3;
  v11 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_overlayLayer;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v3[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_sceneView] = 0;
  *&v3[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_wakeProgress] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_unlockProgress] = 0x3FF0000000000000;
  v12 = &v3[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_scene];
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  if (a2)
  {
    v13 = sub_24A021658();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for EmojiSceneViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id EmojiSceneViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmojiSceneViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_configuration];
  sub_249FE389C(v14);
  v4 = v14[7];
  *(v3 + 6) = v14[6];
  *(v3 + 7) = v4;
  v3[128] = v15;
  v5 = v14[3];
  *(v3 + 2) = v14[2];
  *(v3 + 3) = v5;
  v6 = v14[5];
  *(v3 + 4) = v14[4];
  *(v3 + 5) = v6;
  v7 = v14[1];
  *v3 = v14[0];
  *(v3 + 1) = v7;
  v1[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_currentLayoutStyle] = 3;
  v1[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_currentSizeVariant] = 3;
  v8 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_overlayLayer;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v1[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_sceneView] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_unlockProgress] = 0x3FF0000000000000;
  v9 = &v1[OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_scene];
  v10 = type metadata accessor for EmojiSceneViewController();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v13.receiver = v1;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id EmojiSceneViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiSceneViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A009C14@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_configuration;
  swift_beginAccess();
  v16[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v16[3] = *(v3 + 48);
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v17 = *(v3 + 128);
  v16[6] = v8;
  v16[7] = v9;
  v16[5] = v7;
  v10 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v10;
  *(a1 + 128) = *(v3 + 128);
  v11 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v11;
  v12 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v12;
  v13 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v13;
  return sub_24A00A0A0(v16, &v15, &qword_27EF2E168);
}

void sub_24A009CDC(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_configuration;
  swift_beginAccess();
  v14[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v14[3] = *(v3 + 48);
  v14[4] = v6;
  v14[1] = v4;
  v14[2] = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v15 = *(v3 + 128);
  v14[6] = v8;
  v14[7] = v9;
  v14[5] = v7;
  v10 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v10;
  *(v3 + 128) = *(a1 + 128);
  v11 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v11;
  v12 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v12;
  v13 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v13;
  sub_249FECCF8(v14, &qword_27EF2E168);
  sub_24A008AE0();
}

void (*sub_24A009DA4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_24A008010;
}

double sub_24A009E0C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_wakeProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*sub_24A009E78(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24A008198(v2);
  return sub_249FE4784;
}

double sub_24A009EEC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_unlockProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_24A009F34(double a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_unlockProgress;
  swift_beginAccess();
  *(v3 + v4) = a1;
  v6 = sub_24A008698();
  if (*(v5 + 24))
  {
    v7 = v5;
    swift_beginAccess();
    v8 = *(v3 + v4);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v9);
    (*(v10 + 88))(v9, v10, v8);
  }

  return (v6)(v12, 0);
}

void (*sub_24A00A014(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11EmojiPoster24EmojiSceneViewController_unlockProgress;
  *(v3 + 56) = *v1;
  *(v3 + 64) = v4;
  swift_beginAccess();
  return sub_24A0085BC;
}

uint64_t sub_24A00A0A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24A00A350()
{
  result = qword_27EF2E6F8;
  if (!qword_27EF2E6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF2E6F8);
  }

  return result;
}

uint64_t sub_24A00A39C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E6D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A00A468(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A00A4D4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_249FF514C;
}

uint64_t sub_24A00A574@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v14[1] = v3[1];
  v14[0] = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *(v15 + 10) = *(v3 + 74);
  v14[3] = v6;
  v15[0] = v7;
  v14[2] = v5;
  v8 = v3[1];
  *a2 = *v3;
  a2[1] = v8;
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  *(a2 + 74) = *(v3 + 74);
  a2[3] = v10;
  a2[4] = v11;
  a2[2] = v9;
  return sub_249FDDE00(v14, v13);
}

void sub_24A00A61C(__int128 *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[4];
  v18 = a1[3];
  v19[0] = v3;
  *(v19 + 10) = *(a1 + 74);
  v4 = a1[1];
  v15 = *a1;
  v5 = (*a2 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration);
  v16 = v4;
  v17 = v2;
  swift_beginAccess();
  v6 = v5[1];
  v20[0] = *v5;
  v20[1] = v6;
  v7 = v5[2];
  v8 = v5[3];
  v9 = v5[4];
  *(v21 + 10) = *(v5 + 74);
  v20[3] = v8;
  v21[0] = v9;
  v20[2] = v7;
  v11 = v18;
  v10 = v19[0];
  v12 = v17;
  *(v5 + 74) = *(v19 + 10);
  v5[3] = v11;
  v5[4] = v10;
  v5[2] = v12;
  v13 = v16;
  *v5 = v15;
  v5[1] = v13;
  sub_249FDDE00(&v15, v14);
  sub_249FDDE80(v20);
  sub_24A00C60C();
}

uint64_t sub_24A00A6EC@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration);
  swift_beginAccess();
  v4 = v3[2];
  v6 = v3[4];
  v12 = v3[3];
  v5 = v12;
  v13[0] = v6;
  *(v13 + 10) = *(v3 + 74);
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  v11[2] = v4;
  *(a1 + 74) = *(v13 + 10);
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_249FDDE00(v11, v10);
}

void sub_24A00A77C(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration);
  swift_beginAccess();
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v9[0] = v3[4];
  *(v9 + 10) = *(v3 + 74);
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  v6 = a1[3];
  v3[2] = a1[2];
  v3[3] = v6;
  v3[4] = a1[4];
  *(v3 + 74) = *(a1 + 74);
  v7 = a1[1];
  *v3 = *a1;
  v3[1] = v7;
  sub_249FDDE80(v8);
  sub_24A00C60C();
}

void (*sub_24A00A818(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24A00A87C;
}

void sub_24A00A87C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24A00C60C();
  }
}

id BackgroundConfigurationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackgroundConfigurationController.init()()
{
  *&v0[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_effectView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v0[v1] = v3;
  v4 = OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_verticalStackView;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v5 = OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_styleSegmentedControl;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
  v6 = &v0[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24A024720;
  v8 = objc_opt_self();
  v15 = EmojiPosterBackgroundColor.init(_:)([v8 lightGrayColor]);
  v16 = EmojiPosterBackgroundColor.init(_:)([v8 blackColor]);
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0x3FF0000000000000;
  *(v6 + 4) = v7;
  *(v6 + 5) = &unk_285D26068;
  *&v0[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController] = 0;
  EmojiPosterBackgroundColor.init(_:)([v8 whiteColor]);
  v9 = v14[1];
  v10 = v14[2];
  v11 = &v0[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration];
  *v11 = 0;
  *(v11 + 8) = v9;
  *(v11 + 24) = v10;
  v12 = type metadata accessor for BackgroundConfigurationController();
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 44) = 0;
  v14[0].receiver = v0;
  v14[0].super_class = v12;
  return [(objc_super *)v14 initWithNibName:0 bundle:0];
}

id BackgroundConfigurationController.init(backgroundConfiguration:)(_OWORD *a1)
{
  *&v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_effectView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v1[v3] = v5;
  v6 = OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_verticalStackView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v7 = OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_styleSegmentedControl;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
  v8 = &v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A024720;
  v10 = objc_opt_self();
  v16 = EmojiPosterBackgroundColor.init(_:)([v10 lightGrayColor]);
  EmojiPosterBackgroundColor.init(_:)([v10 blackColor]);
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0x3FF0000000000000;
  *(v8 + 4) = v9;
  *(v8 + 5) = &unk_285D26098;
  *&v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController] = 0;
  v11 = &v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration];
  v12 = a1[3];
  *(v11 + 2) = a1[2];
  *(v11 + 3) = v12;
  *(v11 + 4) = a1[4];
  *(v11 + 74) = *(a1 + 74);
  v13 = a1[1];
  *v11 = *a1;
  *(v11 + 1) = v13;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for BackgroundConfigurationController();
  return objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
}

id sub_24A00AD24(void *a1)
{
  *&v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_effectView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v1[v3] = v5;
  v6 = OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_verticalStackView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v7 = OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_styleSegmentedControl;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
  v8 = &v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A024720;
  v10 = objc_opt_self();
  v18 = EmojiPosterBackgroundColor.init(_:)([v10 lightGrayColor]);
  v19 = EmojiPosterBackgroundColor.init(_:)([v10 blackColor]);
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0x3FF0000000000000;
  *(v8 + 4) = v9;
  *(v8 + 5) = &unk_285D260C8;
  *&v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController] = 0;
  EmojiPosterBackgroundColor.init(_:)([v10 whiteColor]);
  v11 = v17[1];
  v12 = v17[2];
  v13 = &v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration];
  *v13 = 0;
  *(v13 + 8) = v11;
  *(v13 + 24) = v12;
  v14 = type metadata accessor for BackgroundConfigurationController();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 44) = 0;
  v17[0].receiver = v1;
  v17[0].super_class = v14;
  v15 = [(objc_super *)v17 initWithCoder:a1];

  if (v15)
  {
  }

  return v15;
}

void sub_24A00AF70()
{
  v54.receiver = v0;
  v54.super_class = type metadata accessor for BackgroundConfigurationController();
  objc_msgSendSuper2(&v54, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_effectView];
  [v1 addSubview_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_24A00B698();
  sub_24A00B5BC();
  v4 = *&v0[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_verticalStackView];
  v5 = *&v0[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_styleSegmentedControl];
  [v4 addArrangedSubview_];
  v6 = &v0[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration];
  swift_beginAccess();
  if (*(v6 + 9))
  {
    sub_24A00C428();
  }

  v7 = [v0 view];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  [v7 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E208);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A0275F0;
  v10 = [v0 view];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v4 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-20.0];

  *(v9 + 32) = v14;
  v15 = [v0 view];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [v15 trailingAnchor];

  v18 = [v4 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:20.0];

  *(v9 + 40) = v19;
  v20 = [v0 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v4 topAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v9 + 48) = v24;
  v25 = [v0 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [v25 bottomAnchor];

  v28 = [v4 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v9 + 56) = v29;
  v30 = [v0 view];
  if (!v30)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v31 = v30;
  v32 = [v30 leadingAnchor];

  v33 = [v3 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v9 + 64) = v34;
  v35 = [v0 view];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v35;
  v37 = [v35 trailingAnchor];

  v38 = [v3 trailingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v9 + 72) = v39;
  v40 = [v0 view];
  if (!v40)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v41 = v40;
  v42 = [v40 topAnchor];

  v43 = [v3 topAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v9 + 80) = v44;
  v45 = [v0 view];
  if (v45)
  {
    v46 = v45;
    v47 = objc_opt_self();
    v48 = [v46 bottomAnchor];

    v49 = [v3 bottomAnchor];
    v50 = [v48 constraintEqualToAnchor_];

    *(v9 + 88) = v50;
    v51 = [v5 heightAnchor];
    v52 = [v51 constraintGreaterThanOrEqualToConstant_];

    *(v9 + 96) = v52;
    sub_249FECDC0(0, &qword_2810D9B80);
    v53 = sub_24A0217C8();

    [v47 activateConstraints_];

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_24A00B5BC()
{
  v1 = *&v0[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_verticalStackView];
  [v1 setAxis_];
  [v1 setDistribution_];
  [v1 setLayoutMarginsRelativeArrangement_];
  [v1 setSpacing_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

void sub_24A00B698()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_249FECDC0(0, &qword_27EF2E370);
  type metadata accessor for BackgroundViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_24A021418();

  v10 = sub_24A021908();
  v4 = [v2 bundleForClass_];
  sub_24A021418();

  v5 = sub_24A021908();
  v6 = [v2 &selRef_heightAnchor + 3];
  sub_24A021418();

  v7 = sub_24A021908();
  v8 = [v2 &selRef_heightAnchor + 3];
  sub_24A021418();

  v12 = sub_24A021908();
  v9 = *(v11 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_styleSegmentedControl);
  [v9 insertSegmentWithAction:v10 atIndex:0 animated:{0, 0, 0, 0, sub_24A00CDD0, v0}];
  [v9 insertSegmentWithAction:v5 atIndex:1 animated:0];
  [v9 insertSegmentWithAction:v7 atIndex:2 animated:0];
  [v9 insertSegmentWithAction:v12 atIndex:3 animated:0];
  [v9 sizeToFit];
  [v9 setSelectedSegmentIndex_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
}

void sub_24A00BB38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      v4 = &v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration];
      swift_beginAccess();
      v5 = *(v4 + 1);
      v29[0] = *v4;
      v29[1] = v5;
      v6 = *(v4 + 2);
      v7 = *(v4 + 3);
      v8 = *(v4 + 4);
      *&v30[10] = *(v4 + 74);
      v29[3] = v7;
      *v30 = v8;
      v29[2] = v6;
      *v4 = 0;
      *(v4 + 40) = 0u;
      *(v4 + 56) = 0u;
      *(v4 + 72) = 0u;
      *(v4 + 44) = 0;
      sub_249FDDE80(v29);
      sub_24A00C60C();
      v9 = *&v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController];
      if (!v9)
      {
LABEL_6:
        ObjectType = swift_getObjectType();
        v13 = *(v4 + 1);
        v25[0] = *v4;
        v25[1] = v13;
        v15 = *(v4 + 3);
        v14 = *(v4 + 4);
        v16 = *(v4 + 2);
        *(v26 + 10) = *(v4 + 74);
        v25[3] = v15;
        v26[0] = v14;
        v25[2] = v16;
        v17 = *(v4 + 3);
        v22 = *(v4 + 2);
        v23 = v17;
        v24[0] = *(v4 + 4);
        *(v24 + 10) = *(v4 + 74);
        v18 = *(v4 + 1);
        v20 = *v4;
        v21 = v18;
        v19 = *(v3 + 16);
        sub_249FDDE00(v25, v27);
        v19(v1, &v20, ObjectType, v3);

        swift_unknownObjectRelease();
        v27[2] = v22;
        v27[3] = v23;
        v28[0] = v24[0];
        *(v28 + 10) = *(v24 + 10);
        v27[0] = v20;
        v27[1] = v21;
        sub_249FDDE80(v27);
        return;
      }

      v10 = [v9 view];
      if (v10)
      {
        v11 = v10;
        [v10 setHidden_];

        goto LABEL_6;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_24A00BD44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      sub_24A00C428();
      v4 = &v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration];
      swift_beginAccess();
      v5 = v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties];
      v7 = *&v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties + 24];
      v6 = *&v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties + 32];
      v8 = *&v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties + 40];
      v9 = *&v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties + 8];
      v10 = *(v4 + 1);
      v34[0] = *v4;
      v34[1] = v10;
      v12 = *(v4 + 3);
      v11 = *(v4 + 4);
      v13 = *(v4 + 2);
      *&v35[10] = *(v4 + 74);
      v34[3] = v12;
      *v35 = v11;
      v34[2] = v13;
      *v4 = 1;
      *(v4 + 5) = v5;
      *(v4 + 3) = v9;
      *(v4 + 8) = v7;
      *(v4 + 9) = v6;
      *(v4 + 10) = v8;
      *(v4 + 44) = 0;

      sub_249FDDE80(v34);
      sub_24A00C60C();
      v14 = *&v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController];
      if (!v14)
      {
LABEL_6:
        ObjectType = swift_getObjectType();
        v18 = *(v4 + 1);
        v30[0] = *v4;
        v30[1] = v18;
        v20 = *(v4 + 3);
        v19 = *(v4 + 4);
        v21 = *(v4 + 2);
        *(v31 + 10) = *(v4 + 74);
        v30[3] = v20;
        v31[0] = v19;
        v30[2] = v21;
        v22 = *(v4 + 3);
        v27 = *(v4 + 2);
        v28 = v22;
        v29[0] = *(v4 + 4);
        *(v29 + 10) = *(v4 + 74);
        v23 = *(v4 + 1);
        v25 = *v4;
        v26 = v23;
        v24 = *(v3 + 16);
        sub_249FDDE00(v30, v32);
        v24(v1, &v25, ObjectType, v3);

        swift_unknownObjectRelease();
        v32[2] = v27;
        v32[3] = v28;
        v33[0] = v29[0];
        *(v33 + 10) = *(v29 + 10);
        v32[0] = v25;
        v32[1] = v26;
        sub_249FDDE80(v32);
        return;
      }

      v15 = [v14 view];
      if (v15)
      {
        v16 = v15;
        [v15 setHidden_];

        goto LABEL_6;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_24A00BF84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      v4 = &v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration];
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
      v5 = swift_allocObject();
      __asm { FMOV            V1.2D, #1.0 }

      v5[1] = xmmword_24A024720;
      v5[2] = _Q1;
      v5[3] = xmmword_24A024730;
      v5[4] = _Q1;
      v5[5] = xmmword_24A024740;
      v11 = *(v4 + 1);
      v35[0] = *v4;
      v35[1] = v11;
      v13 = *(v4 + 3);
      v12 = *(v4 + 4);
      v14 = *(v4 + 2);
      *&v36[10] = *(v4 + 74);
      v35[3] = v13;
      *v36 = v12;
      v35[2] = v14;
      *v4 = 3;
      *(v4 + 5) = 1;
      *(v4 + 6) = 0;
      *(v4 + 7) = 0;
      *(v4 + 8) = 0x3FF0000000000000;
      *(v4 + 9) = v5;
      *(v4 + 10) = &unk_285D25A38;
      *(v4 + 44) = 0;
      sub_249FDDE80(v35);
      sub_24A00C60C();
      v15 = *&v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController];
      if (!v15)
      {
LABEL_6:
        ObjectType = swift_getObjectType();
        v19 = *(v4 + 1);
        v31[0] = *v4;
        v31[1] = v19;
        v21 = *(v4 + 3);
        v20 = *(v4 + 4);
        v22 = *(v4 + 2);
        *(v32 + 10) = *(v4 + 74);
        v31[3] = v21;
        v32[0] = v20;
        v31[2] = v22;
        v23 = *(v4 + 3);
        v28 = *(v4 + 2);
        v29 = v23;
        v30[0] = *(v4 + 4);
        *(v30 + 10) = *(v4 + 74);
        v24 = *(v4 + 1);
        v26 = *v4;
        v27 = v24;
        v25 = *(v3 + 16);
        sub_249FDDE00(v31, v33);
        v25(v1, &v26, ObjectType, v3);

        swift_unknownObjectRelease();
        v33[2] = v28;
        v33[3] = v29;
        v34[0] = v30[0];
        *(v34 + 10) = *(v30 + 10);
        v33[0] = v26;
        v33[1] = v27;
        sub_249FDDE80(v33);
        return;
      }

      v16 = [v15 view];
      if (v16)
      {
        v17 = v16;
        [v16 setHidden_];

        goto LABEL_6;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_24A00C1E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      v4 = &v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration];
      swift_beginAccess();
      v24 = *(v4 + 24);
      v25 = *(v4 + 8);
      static GradientProperties.vignetteProperties()(v35);
      v5 = v35[0];
      v6 = *&v35[24];
      v7 = *&v35[8];
      v8 = v36;
      v9 = *(v4 + 1);
      *v35 = *v4;
      *&v35[16] = v9;
      v10 = *(v4 + 2);
      v11 = *(v4 + 3);
      v12 = *(v4 + 4);
      *&v38[10] = *(v4 + 74);
      v37 = v11;
      *v38 = v12;
      v36 = v10;
      *v4 = 4;
      *(v4 + 24) = v24;
      *(v4 + 8) = v25;
      *(v4 + 5) = v5;
      *(v4 + 3) = v7;
      *(v4 + 8) = v6;
      *(v4 + 72) = v8;
      *(v4 + 44) = 0;
      sub_249FDDE80(v35);
      sub_24A00C60C();
      v13 = *&v1[OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController];
      if (!v13)
      {
LABEL_6:
        ObjectType = swift_getObjectType();
        v17 = *(v4 + 1);
        v31[0] = *v4;
        v31[1] = v17;
        v19 = *(v4 + 3);
        v18 = *(v4 + 4);
        v20 = *(v4 + 2);
        *(v32 + 10) = *(v4 + 74);
        v31[3] = v19;
        v32[0] = v18;
        v31[2] = v20;
        v21 = *(v4 + 3);
        v28 = *(v4 + 2);
        v29 = v21;
        v30[0] = *(v4 + 4);
        *(v30 + 10) = *(v4 + 74);
        v22 = *(v4 + 1);
        v26 = *v4;
        v27 = v22;
        v23 = *(v3 + 16);
        sub_249FDDE00(v31, v33);
        v23(v1, &v26, ObjectType, v3);

        swift_unknownObjectRelease();
        v33[2] = v28;
        v33[3] = v29;
        v34[0] = v30[0];
        *(v34 + 10) = *(v30 + 10);
        v33[0] = v26;
        v33[1] = v27;
        sub_249FDDE80(v33);
        return;
      }

      v14 = [v13 view];
      if (v14)
      {
        v15 = v14;
        [v14 setHidden_];

        goto LABEL_6;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_24A00C428()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController;
  if (!*(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties + 24);
    v3 = *(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties + 32);
    v4 = *(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties + 40);
    LOBYTE(v13) = *(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties);
    v14 = *(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties + 8);
    v15 = v2;
    v16 = v3;
    v17 = v4;
    objc_allocWithZone(type metadata accessor for GradientConfigurationController());

    v5 = v0;
    v6 = GradientConfigurationController.init(gradientProperties:)(&v13);
    v7 = &v6[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate];
    swift_beginAccess();
    *(v7 + 1) = &protocol witness table for BackgroundConfigurationController;
    swift_unknownObjectWeakAssign();
    v8 = *(v5 + v1);
    *(v5 + v1) = v6;
    v9 = v6;

    v10 = *(v5 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_verticalStackView);
    v11 = [v9 view];
    if (v11)
    {
      v12 = v11;
      [v10 insertArrangedSubview:v11 atIndex:0];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24A00C56C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v2, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A00C60C()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 > 2)
  {
    if (v2 != 3)
    {
LABEL_13:
      [*(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_styleSegmentedControl) setSelectedSegmentIndex_];
      v9 = *(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController);
      if (!v9)
      {
        return;
      }

      v7 = [v9 view];
      if (!v7)
      {
LABEL_19:
        __break(1u);
        return;
      }

LABEL_15:
      v5 = v7;
      [v7 setHidden_];
      goto LABEL_16;
    }

    [*(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_styleSegmentedControl) setSelectedSegmentIndex_];
    v6 = *(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController);
    if (!v6)
    {
      return;
    }

    v7 = [v6 view];
    if (v7)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_10:
    [*(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_styleSegmentedControl) setSelectedSegmentIndex_];
    v8 = *(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController);
    if (!v8)
    {
      return;
    }

    v7 = [v8 view];
    if (v7)
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v2 - 1 >= 2)
  {
    goto LABEL_10;
  }

  [*(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_styleSegmentedControl) setSelectedSegmentIndex_];
  v3 = *(v0 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_gradientController);
  if (!v3)
  {
    return;
  }

  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  [v4 setHidden_];
LABEL_16:
}

id BackgroundConfigurationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A021658();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BackgroundConfigurationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundConfigurationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A00C99C(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = (v1 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_backgroundConfiguration);
  swift_beginAccess();
  v9 = *v8;
  v10 = v1 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_editingGradientProperties;

  v22 = *(v8 + 8);
  v23 = *(v8 + 24);
  *v10 = v2;
  *(v10 + 8) = v3;
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v7;
  *(v10 + 40) = v6;

  v11 = *(v8 + 3);
  v35[2] = *(v8 + 2);
  v35[3] = v11;
  v36[0] = *(v8 + 4);
  *(v36 + 10) = *(v8 + 74);
  v12 = *(v8 + 1);
  v35[0] = *v8;
  v35[1] = v12;
  *v8 = v9;
  *(v8 + 8) = v22;
  *(v8 + 24) = v23;
  *(v8 + 5) = v2;
  *(v8 + 6) = v3;
  *(v8 + 7) = v4;
  *(v8 + 8) = v5;
  *(v8 + 9) = v7;
  *(v8 + 10) = v6;
  *(v8 + 44) = 0;

  sub_249FDDE80(v35);
  sub_24A00C60C();
  v13 = v1 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    v17 = *(v8 + 3);
    v18 = *(v8 + 1);
    v30 = *(v8 + 2);
    v31 = v17;
    v19 = *(v8 + 3);
    v32[0] = *(v8 + 4);
    *(v32 + 10) = *(v8 + 74);
    v20 = *(v8 + 1);
    v29[0] = *v8;
    v29[1] = v20;
    v26 = v30;
    v27 = v19;
    v28[0] = *(v8 + 4);
    *(v28 + 10) = *(v8 + 74);
    v24 = v29[0];
    v25 = v18;
    v21 = *(v15 + 16);
    sub_249FDDE00(v29, v33);
    v21(v1, &v24, ObjectType, v15);
    swift_unknownObjectRelease();
    v33[2] = v26;
    v33[3] = v27;
    v34[0] = v28[0];
    *(v34 + 10) = *(v28 + 10);
    v33[0] = v24;
    v33[1] = v25;
    return sub_249FDDE80(v33);
  }

  return result;
}

uint64_t sub_24A00CDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24A021968();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 0;
    v6 = 0;
    *(a2 + 16) = -1;
  }

  else
  {
    sub_24A00DC68(result, *(a1 + 36), a1, v8);
    v5 = v8[0];
    v6 = v8[1];
    v7 = v9;
    *(a2 + 16) = v9;
    sub_249FE4E60(v5, v6, v7);
    result = sub_249FE4EC4(v5, v6, v7);
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

id sub_24A00CE94()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.811764706 green:0.768627451 blue:0.721568627 alpha:1.0];
  qword_27EF30990 = result;
  return result;
}

uint64_t sub_24A00CEE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E748);
    v1 = sub_24A021AD8();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    sub_249FECDC0(0, &qword_2810D9B50);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_249FF7BBC((v27 + 8), v25);
    sub_249FF7BBC(v25, v27);
    sub_24A021698();
    sub_24A021CB8();
    sub_24A021708();
    v16 = sub_24A021CE8();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_249FF7BBC(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_24A00D19C(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = [objc_opt_self() whiteColor];
  [v14 set];

  [a1 fillRect_];
  v15 = sub_24A021658();
  sub_24A00CEE4(a8);
  type metadata accessor for Key(0);
  sub_249FEA2C4();
  v16 = sub_24A021608();

  [v15 drawInRect:v16 withAttributes:{a2, a3, a4, a5}];
}

uint64_t sub_24A00D2E4(uint64_t a1)
{
  v6 = *(a1 + 16);
  v7 = (v6 * 66) >> 64;
  v8 = 66 * v6;
  if (v7 == v8 >> 63)
  {
    v1 = a1;
    v5 = v8;
    v16[0] = 0;
    v16[1] = 0;
    v3 = 0x4049000000000000;
    v4 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
    if (qword_2810DA9A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = qword_2810DDD28;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v5;
  *(v10 + 40) = v3;
  *(v10 + 48) = v1;
  *(v10 + 56) = v2;
  *(v10 + 64) = v16;
  *(v10 + 72) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24A00F3A4;
  *(v11 + 24) = v10;
  v15[4] = sub_249FF0340;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_249FEA0AC;
  v15[3] = &block_descriptor_7;
  v12 = _Block_copy(v15);

  v13 = [v4 imageWithActions_];

  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if ((v12 & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

void sub_24A00D504(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, double *a8)
{
  v15 = [objc_opt_self() whiteColor];
  [v15 set];

  v47 = a1;
  [a1 fillRect_];
  v46 = *(a2 + 16);
  if (!v46)
  {
    return;
  }

  v16 = 0;
  v45 = a2 + 32;
  while (1)
  {
    v49 = v16;
    v17 = v45 + 24 * v16;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v51 = v19;
    v52 = v18;
    v53 = v20;
    sub_249FE4E60(v19, v18, v20);
    v48 = sub_24A00F3B8(&v51);
    [v48 drawAtPoint_];
    *a8 = *a8 + 50.0;
    v50 = v18;
    v51 = v19;
    v52 = v18;
    v53 = v20;
    v21 = sub_24A000C68(&v51, 0);
    v22 = v21[2];
    if (v22)
    {
      break;
    }

    v24 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_15;
    }

LABEL_9:
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_16:

LABEL_17:
    *a8 = *a8 + 8.0;
    v51 = v19;
    v52 = v50;
    v53 = v20;
    v29 = sub_24A000C68(&v51, 2u);
    v30 = v29[2];
    if (v30)
    {
      v51 = MEMORY[0x277D84F90];
      sub_24A021A48();
      v31 = (v29 + 7);
      do
      {
        [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v31 - 3) / 255.0 green:*(v31 - 2) / 255.0 blue:*(v31 - 1) / 255.0 alpha:*v31 / 255.0];
        sub_24A021A28();
        sub_24A021A58();
        sub_24A021A68();
        sub_24A021A38();
        v31 += 4;
        --v30;
      }

      while (v30);

      v32 = v51;
      if (!(v51 >> 62))
      {
LABEL_21:
        if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        goto LABEL_22;
      }
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_21;
      }
    }

    if (!sub_24A021A98())
    {
LABEL_28:

      goto LABEL_29;
    }

LABEL_22:
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x24C20C690](0, v32);
    }

    else
    {
      if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v33 = *(v32 + 32);
    }

    v34 = v33;

    v35 = *a8;
    v36 = a8[1];
    [v34 set];
    [v47 fillRect_];

LABEL_29:
    *a8 = *a8 + 4.0;
    v51 = v19;
    v52 = v50;
    v53 = v20;
    v37 = sub_24A000C68(&v51, 1u);
    v38 = v37[2];
    if (v38)
    {
      v51 = MEMORY[0x277D84F90];
      sub_24A021A48();
      v39 = (v37 + 7);
      do
      {
        [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v39 - 3) / 255.0 green:*(v39 - 2) / 255.0 blue:*(v39 - 1) / 255.0 alpha:*v39 / 255.0];
        sub_24A021A28();
        sub_24A021A58();
        sub_24A021A68();
        sub_24A021A38();
        v39 += 4;
        --v38;
      }

      while (v38);

      v40 = v51;
      if (!(v51 >> 62))
      {
LABEL_33:
        if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_33;
      }
    }

    if (!sub_24A021A98())
    {
LABEL_3:

      sub_249FE4EC4(v19, v50, v20);
      goto LABEL_4;
    }

LABEL_34:
    if ((v40 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x24C20C690](0, v40);
    }

    else
    {
      if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v41 = *(v40 + 32);
    }

    v42 = v41;

    v43 = *a8;
    v44 = a8[1];
    [v42 set];
    [v47 fillRect_];

    sub_249FE4EC4(v19, v50, v20);
LABEL_4:
    v16 = v49 + 1;
    *a8 = *a8 + 4.0;
    if (v49 + 1 == v46)
    {
      return;
    }
  }

  v51 = MEMORY[0x277D84F90];
  sub_24A021A48();
  v23 = (v21 + 7);
  do
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v23 - 3) / 255.0 green:*(v23 - 2) / 255.0 blue:*(v23 - 1) / 255.0 alpha:*v23 / 255.0];
    sub_24A021A28();
    sub_24A021A58();
    sub_24A021A68();
    sub_24A021A38();
    v23 += 4;
    --v22;
  }

  while (v22);

  v24 = v51;
  if (!(v51 >> 62))
  {
    goto LABEL_9;
  }

LABEL_15:
  if (!sub_24A021A98())
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x24C20C690](0, v24);
    goto LABEL_13;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v24 + 32);
LABEL_13:
    v26 = v25;

    v27 = *a8;
    v28 = a8[1];
    [v26 set];
    [v47 fillRect_];

    goto LABEL_17;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_24A00DBAC(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = 0.0;
  v7[0] = 0.0;
  v5 = 0.0;
  if (![a1 getRed:v7 green:&v6 blue:&v5 alpha:0])
  {
    return 1;
  }

  v1 = v7[0] <= 0.95 || v6 <= 0.95;
  if (!v1 && v5 > 0.95)
  {
    return 1;
  }

  v3 = v7[0] < 0.05;
  if (v6 >= 0.05)
  {
    v3 = 0;
  }

  return v5 < 0.05 && v3;
}

uint64_t sub_24A00DC68@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(a3 + 48) + 24 * result;
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    *a4 = *v4;
    *(a4 + 8) = v6;
    *(a4 + 16) = v7;
    return sub_249FE4E60(v5, v6, v7);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24A00DCCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24A00F748();
  result = MEMORY[0x24C20C500](v2, &type metadata for Emoji, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      sub_249FE4E60(v8, v7, *v5);
      sub_24A001B70(v9, v8, v7, v6);
      sub_249FE4EC4(v9[0], v9[1], v10);
      v5 += 24;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

unint64_t sub_24A00DD78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  if (qword_2810DA9A0 != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    *&v11 = v1;
    *(&v11 + 1) = v2;
    v12 = v3;
    result = sub_24A0013F4(&v11, 2u);
    if (result >> 62)
    {
      break;
    }

    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_4:
    if ((result & 0xC000000000000001) != 0)
    {
      goto LABEL_16;
    }

    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_7:
    swift_once();
  }

  v5 = result;
  v6 = sub_24A021A98();
  result = v5;
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_9:

  *&v11 = v1;
  *(&v11 + 1) = v2;
  v12 = v3;
  result = sub_24A0013F4(&v11, 0);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_18:

    return 0;
  }

  v9 = result;
  v10 = sub_24A021A98();
  result = v9;
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_16:
    v7 = MEMORY[0x24C20C690](0);
    goto LABEL_14;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    v7 = *(result + 32);
LABEL_14:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A00DEF4(uint64_t a1)
{
  if (qword_2810DA9A0 != -1)
  {
    v22 = a1;
    swift_once();
    a1 = v22;
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    return 0;
  }

  v1 = 0;
  v24 = a1 + 32;
  v25 = qword_2810DDD28;
  while (1)
  {
    v2 = v24 + 24 * v1;
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    v29 = *v2;
    v30 = v3;
    v31 = v4;
    v26 = v29;
    v27 = v3;
    v28 = v4;
    sub_249FE4E60(v29, v3, v4);
    v5 = v25;
    v6 = sub_24A000C68(&v29, 2u);
    v7 = v6[2];
    if (v7)
    {
      v29 = MEMORY[0x277D84F90];
      sub_24A021A48();
      v8 = (v6 + 7);
      do
      {
        [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v8 - 3) / 255.0 green:*(v8 - 2) / 255.0 blue:*(v8 - 1) / 255.0 alpha:*v8 / 255.0];
        sub_24A021A28();
        sub_24A021A58();
        sub_24A021A68();
        v5 = &v29;
        sub_24A021A38();
        v8 += 4;
        --v7;
      }

      while (v7);

      v9 = v29;
      if (!(v29 >> 62))
      {
LABEL_9:
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        goto LABEL_10;
      }
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_9;
      }
    }

    v5 = v9;
    v17 = sub_24A021A98();
    v9 = v5;
    if (v17)
    {
LABEL_35:
      if ((v9 & 0xC000000000000001) == 0)
      {
        v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

        v9 = sub_249FE4EC4(v26, v27, v28);
        if (v20)
        {
          return 1;
        }

        __break(1u);
LABEL_38:
        if ((v9 & 0xC000000000000001) == 0)
        {
          v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

          sub_249FE4EC4(v26, v27, v28);
          if (v21)
          {
            return 1;
          }

          __break(1u);
LABEL_43:
          MEMORY[0x24C20C690](0, v5);
          sub_249FE4EC4(v26, v27, v28);
          swift_unknownObjectRelease();
LABEL_33:

          return 1;
        }
      }

      MEMORY[0x24C20C690](0, v9);
      swift_unknownObjectRelease();

      sub_249FE4EC4(v26, v27, v28);
      return 1;
    }

LABEL_10:

    v29 = v26;
    v30 = v27;
    v31 = v28;
    v5 = v25;
    v10 = sub_24A000C68(&v29, 0);
    v11 = v10[2];
    if (v11)
    {
      v29 = MEMORY[0x277D84F90];
      sub_24A021A48();
      v12 = (v10 + 7);
      do
      {
        [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v12 - 3) / 255.0 green:*(v12 - 2) / 255.0 blue:*(v12 - 1) / 255.0 alpha:*v12 / 255.0];
        sub_24A021A28();
        sub_24A021A58();
        sub_24A021A68();
        v5 = &v29;
        sub_24A021A38();
        v12 += 4;
        --v11;
      }

      while (v11);

      v9 = v29;
      if (!(v29 >> 62))
      {
LABEL_14:
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        goto LABEL_15;
      }
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_14;
      }
    }

    v5 = v9;
    v18 = sub_24A021A98();
    v9 = v5;
    if (v18)
    {
      goto LABEL_38;
    }

LABEL_15:

    v29 = v26;
    v30 = v27;
    v31 = v28;
    v13 = sub_24A000C68(&v29, 1u);
    v14 = v13[2];
    if (v14)
    {
      break;
    }

    v5 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_29;
    }

LABEL_19:
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_30;
    }

LABEL_20:
    ++v1;
    sub_249FE4EC4(v26, v27, v28);

    if (v1 == v23)
    {
      return 0;
    }
  }

  v29 = MEMORY[0x277D84F90];
  sub_24A021A48();
  v15 = (v13 + 7);
  do
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v15 - 3) / 255.0 green:*(v15 - 2) / 255.0 blue:*(v15 - 1) / 255.0 alpha:*v15 / 255.0];
    sub_24A021A28();
    sub_24A021A58();
    sub_24A021A68();
    sub_24A021A38();
    v15 += 4;
    --v14;
  }

  while (v14);

  v5 = v29;
  if (!(v29 >> 62))
  {
    goto LABEL_19;
  }

LABEL_29:
  result = sub_24A021A98();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_30:
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v5 + 32);
    sub_249FE4EC4(v26, v27, v28);

    goto LABEL_33;
  }

  __break(1u);
  return result;
}