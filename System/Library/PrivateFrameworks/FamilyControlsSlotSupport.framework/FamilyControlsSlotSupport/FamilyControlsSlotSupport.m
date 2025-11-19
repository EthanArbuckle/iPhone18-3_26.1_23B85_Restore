unint64_t IdentifierType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_29EB3829C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t LabelSlotType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_29EB38394()
{
  v1 = *v0;
  sub_29EB3A0C4();
  MEMORY[0x29EDA8970](v1);
  return sub_29EB3A104();
}

uint64_t sub_29EB3840C()
{
  v1 = *v0;
  sub_29EB3A0C4();
  MEMORY[0x29EDA8970](v1);
  return sub_29EB3A104();
}

uint64_t *sub_29EB38450@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t FamilyActivityTokenSlotTag.tokenData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenData);
  sub_29EB384C8(v1, *(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenData + 8));
  return v1;
}

uint64_t sub_29EB384C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id FamilyActivityTokenSlotTag.init(slotType:tokenData:tokenType:width:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *&v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_slotType] = a1;
  v6 = &v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenData];
  *v6 = a2;
  *(v6 + 1) = a3;
  *&v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenType] = a4;
  *&v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_width] = a5;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for FamilyActivityTokenSlotTag();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t FamilyActivityTokenSlotTag.init(coder:)(void *a1)
{
  v2 = sub_29EB3A044();
  v3 = [a1 decodeIntegerForKey_];

  if (v3 < 2)
  {
    sub_29EB39D68(0, &qword_2A18819D0, 0x29EDB8DA0);
    v4 = sub_29EB3A094();
    if (v4)
    {
      v5 = v4;
      sub_29EB3A014();
    }
  }

  type metadata accessor for FamilyActivityTokenSlotTag();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_29EB38830(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29EB38844(a1, a2);
  }

  return a1;
}

uint64_t sub_29EB38844(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_29EB388C0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_slotType);
  v4 = sub_29EB3A044();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenData);
  v6 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenData + 8);
  v7 = sub_29EB3A004();
  v8 = sub_29EB3A044();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenType);
  v10 = sub_29EB3A044();
  [a1 encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_width);
  v12 = sub_29EB3A034();
  v13 = sub_29EB3A044();
  [a1 encodeObject:v12 forKey:v13];
}

uint64_t sub_29EB38AD8()
{
  sub_29EB3A114();
  MEMORY[0x29EDA8970](*(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_slotType));
  v1 = *(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenData);
  v2 = *(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenData + 8);
  sub_29EB3A024();
  MEMORY[0x29EDA8970](*(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenType));
  v3 = *(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_width);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x29EDA8980](*&v3);
  return sub_29EB3A0F4();
}

BOOL sub_29EB38B74(uint64_t a1)
{
  sub_29EB38C60(a1, v6);
  if (v7)
  {
    type metadata accessor for FamilyActivityTokenSlotTag();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_slotType) == *&v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_slotType] && (sub_29EB39BDC(*(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenData), *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenData + 8), *&v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenData], *&v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenData + 8]) & 1) != 0 && *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenType) == *&v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_tokenType])
      {
        v2 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_width);
        v3 = *&v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport26FamilyActivityTokenSlotTag_width];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_29EB38D18(v6);
  }

  return 0;
}

uint64_t sub_29EB38C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18819D8, &qword_29EB3A480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_29EB38D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18819D8, &qword_29EB3A480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id FamilyActivityTokenSlotTag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FamilyActivityIdentifierSlotTag.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifier + 8);

  return v1;
}

id sub_29EB38EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, double a9)
{
  v19 = objc_allocWithZone(v9);
  *&v19[*a5] = a1;
  v20 = &v19[*a6];
  *v20 = a2;
  *(v20 + 1) = a3;
  *&v19[*a7] = a4;
  *&v19[*a8] = a9;
  v22.receiver = v19;
  v22.super_class = v9;
  return objc_msgSendSuper2(&v22, sel_init);
}

id FamilyActivityIdentifierSlotTag.init(slotType:identifier:identifierType:width:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *&v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_slotType] = a1;
  v6 = &v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifier];
  *v6 = a2;
  *(v6 + 1) = a3;
  *&v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifierType] = a4;
  *&v5[OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_width] = a5;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for FamilyActivityIdentifierSlotTag();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t FamilyActivityIdentifierSlotTag.init(coder:)(void *a1)
{
  v2 = sub_29EB3A044();
  v3 = [a1 decodeIntegerForKey_];

  if (v3 < 2)
  {
    sub_29EB39D68(0, &qword_2A1881A00, 0x29EDBA0F8);
    v4 = sub_29EB3A094();
    if (v4)
    {
      v7 = 0;
      v5 = v4;
      sub_29EB3A054();
    }
  }

  type metadata accessor for FamilyActivityIdentifierSlotTag();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_29EB39254(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_slotType);
  v4 = sub_29EB3A044();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifier);
  v6 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifier + 8);
  v7 = sub_29EB3A044();
  v8 = sub_29EB3A044();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifierType);
  v10 = sub_29EB3A044();
  [a1 encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_width);
  v12 = sub_29EB3A034();
  v13 = sub_29EB3A044();
  [a1 encodeObject:v12 forKey:v13];
}

uint64_t sub_29EB39468()
{
  sub_29EB3A114();
  MEMORY[0x29EDA8970](*(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_slotType));
  v1 = *(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifier + 8);
  sub_29EB3A064();
  MEMORY[0x29EDA8970](*(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifierType));
  v3 = *(v0 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_width);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x29EDA8980](*&v3);
  return sub_29EB3A0F4();
}

BOOL sub_29EB39504(uint64_t a1)
{
  sub_29EB38C60(a1, v7);
  if (v8)
  {
    type metadata accessor for FamilyActivityIdentifierSlotTag();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_slotType) == *&v6[OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_slotType])
      {
        v2 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifier) == *&v6[OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifier] && *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifier + 8) == *&v6[OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifier + 8];
        if (v2 || (sub_29EB3A0B4()) && *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifierType) == *&v6[OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_identifierType])
        {
          v3 = *(v1 + OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_width);
          v4 = *&v6[OBJC_IVAR____TtC25FamilyControlsSlotSupport31FamilyActivityIdentifierSlotTag_width];

          return v3 == v4;
        }
      }
    }
  }

  else
  {
    sub_29EB38D18(v7);
  }

  return 0;
}

uint64_t sub_29EB39618(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_29EB3A0A4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_29EB38D18(v10);
  return v8 & 1;
}

id sub_29EB39718(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29EB39764@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_29EB39FD4();
    if (v10)
    {
      v11 = sub_29EB39FF4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_29EB39FE4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x29EDCA608];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_29EB39FD4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_29EB39FF4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_29EB39FE4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_29EB39994(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_29EB39B24(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_29EB38844(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_29EB39764(v14, a3, a4, &v13);
  v10 = v4;
  sub_29EB38844(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x29EDCA608];
  return v10 & 1;
}

uint64_t sub_29EB39B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_29EB39FD4();
  v11 = result;
  if (result)
  {
    result = sub_29EB39FF4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_29EB39FE4();
  sub_29EB39764(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_29EB39BDC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_29EB384C8(a3, a4);
          return sub_29EB39994(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_29EB39D68(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_29EB39DB4()
{
  result = qword_2A1881A08;
  if (!qword_2A1881A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1881A08);
  }

  return result;
}

unint64_t sub_29EB39E0C()
{
  result = qword_2A1881A10;
  if (!qword_2A1881A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1881A10);
  }

  return result;
}

unint64_t sub_29EB39F68()
{
  result = qword_2A1881A88;
  if (!qword_2A1881A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1881A88);
  }

  return result;
}