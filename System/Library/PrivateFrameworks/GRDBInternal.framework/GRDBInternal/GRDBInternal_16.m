uint64_t sub_1B223A9BC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    type metadata accessor for DatabaseCollation();
    v8 = *(v4 + 40);
    sub_1B2253420();
    MEMORY[0x1B2742F10](0);
    v9 = sub_1B2253470();
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);

      v14 = static DatabaseCollation.== infix(_:_:)(v13, a1);

      if (v14)
      {
        v15 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v2;
        v19 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B22492E0();
          v17 = v19;
        }

        v7 = *(*(v17 + 48) + 8 * v11);
        sub_1B223B244(v11);
        *v2 = v19;
        return v7;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = sub_1B2252C50();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = sub_1B223ACA0(v5, a1);

  return v7;
}

uint64_t sub_1B223AB48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;

  v6 = sub_1B2252C20();
  v7 = swift_unknownObjectRetain();
  sub_1B2247318(v7, v6, v8, v9, v10, v11, v12, v13, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v36);
  v15 = v14;
  v35 = v14;
  v16 = *(v14 + 40);
  sub_1B2253420();
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);

  sub_1B2252370();
  sub_1B2253450();
  v20 = sub_1B2253470();
  v21 = ~(-1 << *(v15 + 32));
  while (1)
  {
    v22 = v20 & v21;
    if (((*(v15 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for DatabaseFunction();
    if (static DatabaseFunction.== infix(_:_:)(*(*(v15 + 48) + 8 * v22), a2))
    {

      v23 = *(*(v15 + 48) + 8 * v22);
      sub_1B223B074(v22);
      if (static DatabaseFunction.== infix(_:_:)(a2, v23))
      {
        *v3 = v35;
        return v23;
      }

      __break(1u);
      break;
    }

    v20 = v22 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B223ACA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;

  v6 = sub_1B2252C20();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1B22474C8(v7, v6);
  v18 = v8;
  v9 = *(v8 + 40);
  sub_1B2253420();
  MEMORY[0x1B2742F10](0);
  v10 = sub_1B2253470();
  v11 = ~(-1 << *(v8 + 32));

  while (1)
  {
    v12 = v10 & v11;
    if (((*(v8 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for DatabaseCollation();
    v13 = *(*(v8 + 48) + 8 * v12);

    v15 = static DatabaseCollation.== infix(_:_:)(v14, a2);

    if (v15)
    {

      v16 = *(*(v8 + 48) + 8 * v12);
      sub_1B223B244(v12);
      if (static DatabaseCollation.== infix(_:_:)(a2, v16))
      {
        *v3 = v18;
        return v16;
      }

      __break(1u);
      break;
    }

    v10 = v12 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B223AE00(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1B2252BE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v30 = 24 * v6;
        v11 = *(v3 + 40);
        v12 = v3;
        v13 = *(v3 + 48) + 24 * v6;
        v15 = *v13;
        v14 = *(v13 + 8);
        v16 = *(v13 + 16);
        sub_1B2253420();
        switch(v16)
        {
          case 1:
            if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v17 = *&v15;
            }

            else
            {
              v17 = 0.0;
            }

            goto LABEL_12;
          case 2:
            sub_1B2113A20(v15, v14, 2);
            sub_1B2252370();
            break;
          case 3:
            sub_1B2113A20(v15, v14, 3);
            sub_1B2251DF0();
            break;
          case 4:
            MEMORY[0x1B2742F10](0);
            break;
          default:
            v17 = v15;
LABEL_12:
            MEMORY[0x1B2742F40](*&v17);
            break;
        }

        v18 = sub_1B2253470();
        sub_1B2113A44(v15, v14, v16);
        v19 = v18 & v7;
        if (v2 >= v10)
        {
          v20 = v19 < v10 || v2 < v19;
        }

        else
        {
          v20 = v19 < v10 && v2 < v19;
        }

        v3 = v12;
        if (!v20)
        {
          v21 = *(v12 + 48);
          v22 = v21 + 24 * v2;
          v23 = (v21 + v30);
          v24 = 24 * v2 < v30 || v22 >= v23 + 24;
          if (v24 || v2 != v6)
          {
            v26 = *v23;
            *(v22 + 16) = *(v23 + 2);
            *v22 = v26;
            v2 = v6;
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v27 = *(v3 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v29;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B223B074(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1B2252BE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_1B2253420();
        v13 = *(v12 + 16);
        v14 = *(v12 + 24);
        v15 = *(v12 + 32);

        sub_1B2252370();
        sub_1B2253450();
        v16 = sub_1B2253470();

        v17 = v16 & v7;
        if (v2 >= v10)
        {
          if (v17 >= v10 && v2 >= v17)
          {
LABEL_15:
            v20 = *(v3 + 48);
            v21 = (v20 + 8 * v2);
            v22 = (v20 + 8 * v6);
            if (v2 != v6 || v21 >= v22 + 1)
            {
              *v21 = *v22;
              v2 = v6;
            }
          }
        }

        else if (v17 >= v10 || v2 >= v17)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B223B244(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1B2252BE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        sub_1B2253420();
        MEMORY[0x1B2742F10](0);
        v12 = sub_1B2253470() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1B223B3DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0x80) == 0)
  {
  }

  return result;
}

unint64_t sub_1B223B3F0()
{
  result = qword_1EB7A3348;
  if (!qword_1EB7A3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3348);
  }

  return result;
}

unint64_t sub_1B223B448()
{
  result = qword_1EB7A3350;
  if (!qword_1EB7A3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3350);
  }

  return result;
}

unint64_t sub_1B223B4A0()
{
  result = qword_1EB7A3358;
  if (!qword_1EB7A3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3358);
  }

  return result;
}

unint64_t sub_1B223B4F8()
{
  result = qword_1EB7A3360;
  if (!qword_1EB7A3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3360);
  }

  return result;
}

unint64_t sub_1B223B550()
{
  result = qword_1EB7A3368;
  if (!qword_1EB7A3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3368);
  }

  return result;
}

unint64_t sub_1B223B5A8()
{
  result = qword_1EB7A3370;
  if (!qword_1EB7A3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3370);
  }

  return result;
}

unint64_t sub_1B223B600()
{
  result = qword_1EB7A3378;
  if (!qword_1EB7A3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3378);
  }

  return result;
}

unint64_t sub_1B223B658()
{
  result = qword_1EB7A3380;
  if (!qword_1EB7A3380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3380);
  }

  return result;
}

unint64_t sub_1B223B6B0()
{
  result = qword_1EB7A3388;
  if (!qword_1EB7A3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3388);
  }

  return result;
}

unint64_t sub_1B223B708()
{
  result = qword_1EB7A3390;
  if (!qword_1EB7A3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3390);
  }

  return result;
}

unint64_t sub_1B223B760()
{
  result = qword_1EB7A3398;
  if (!qword_1EB7A3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3398);
  }

  return result;
}

uint64_t sub_1B223B7BC()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Database.ConflictResolution(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B223B9A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1B211727C(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return sub_1B211727C((*a1 | (v4 << 8)) - 4);
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

      return sub_1B211727C((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1B211727C((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1B211727C(v8);
}

_BYTE *sub_1B223BA2C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B223BB30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 24) >> 2) & 0xFFFFFFC0 | (*(a1 + 24) >> 1) & 0x3F;
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

uint64_t sub_1B223BB7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (4 * -a2) & 0x3FFFFFF00 | (2 * (-a2 & 0x3FLL));
      *(result + 32) = 0;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Database.TransactionCompletion(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B223BD0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 25))
    {
      return sub_1B211727C(*a1 + 126);
    }

    v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
    if (v3 >= 0x7E)
    {
      return sub_1B211727C(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return sub_1B211727C(v3);
}

uint64_t sub_1B223BD50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1B223BDF0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1B211727C(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_1B211727C((*a1 | (v4 << 8)) - 3);
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

      return sub_1B211727C((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1B211727C((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1B211727C(v8);
}

_BYTE *sub_1B223BE74(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B223BF54()
{
  result = qword_1EB7A33A0;
  if (!qword_1EB7A33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A33A0);
  }

  return result;
}

uint64_t sub_1B223BFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a2;
  v7[1] = a3;
  return v4(a1, v7);
}

uint64_t sub_1B223C018(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2, a2[1]);
}

uint64_t sub_1B223C04C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_1B223C24C()
{

  return sub_1B2252190();
}

uint64_t sub_1B223C26C(uint64_t a1, uint64_t a2)
{
  result = sub_1B2131D90(a2);
  if ((v5 & 1) == 0)
  {
    if (*(a2 + 36) == v4)
    {
      return result == 1 << *(a2 + 32);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Row.copy()()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1B21139A0(v0 + 2, v1);
  v3 = *(v2 + 112);
  v4 = sub_1B224B2B4();
  return v5(v4, v1, v2);
}

uint64_t Row.subscript.getter()
{
  return sub_1B2241810();
}

{
  return sub_1B2241E3C();
}

{
  return sub_1B22407B8();
}

{
  return sub_1B22407B8();
}

{
  return sub_1B2241810();
}

{
  return sub_1B2241810();
}

{
  sub_1B2126324();
  return sub_1B2241D28(v0, v1, v2);
}

{
  return sub_1B2241E3C();
}

void sub_1B223C344(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v20 = 0;
    if ((v1 & 0x8000000000000000) == 0)
    {
      v15 = v1;
      v3 = 0;
      v16 = a1;
      while (2)
      {
        v4 = v3 + 1;
        if (!__OFADD__(v3, 1))
        {
          Row.subscript.getter();
          v6 = v5;
          v8 = v7;

          sub_1B2113A20(v17, v18, v19);

          sub_1B2113A44(v17, v18, v19);

          MEMORY[0x1B2741EB0](58, 0xE100000000000000);
          v9 = 0xE400000000000000;
          v10 = 1280070990;
          switch(v19)
          {
            case 1:
              v10 = sub_1B22527C0();
              goto LABEL_10;
            case 2:

              v10 = sub_1B2252330();
              goto LABEL_10;
            case 3:
              sub_1B2126638(v17, v18);
              v12 = sub_1B2251DA0();
              MEMORY[0x1B2741EB0](v12);

              MEMORY[0x1B2741EB0](41, 0xE100000000000000);
              sub_1B2113A44(v17, v18, 3);
              v10 = 0x2861746144;
              v9 = 0xE500000000000000;
              goto LABEL_11;
            case 4:
              goto LABEL_11;
            default:
              v10 = sub_1B2252FD0();
LABEL_10:
              v9 = v11;
LABEL_11:
              MEMORY[0x1B2741EB0](v10, v9);

              sub_1B2113A44(v17, v18, v19);
              v13 = *(v21 + 16);
              if (v13 >= *(v21 + 24) >> 1)
              {
                sub_1B2116B10();
              }

              *(v21 + 16) = v13 + 1;
              v14 = v21 + 16 * v13;
              *(v14 + 32) = v6;
              *(v14 + 40) = v8;
              if (v20 < 0 || *(v16 + 72) <= v20)
              {
                goto LABEL_18;
              }

              ++v20;
              ++v3;
              if (v4 == v15)
              {
                return;
              }

              continue;
          }
        }

        break;
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Int_optional __swiftcall Row.index(forColumn:)(Swift::String forColumn)
{
  sub_1B211D530();
  v2 = v1[6];
  sub_1B21139A0(v1 + 2, v1[5]);
  v3 = sub_1B224B1FC();
  v5 = v4(v3);
  v7 = v6 & 1;
  result.value = v5;
  result.is_nil = v7;
  return result;
}

uint64_t Row.description.getter()
{
  sub_1B223C344(v0);
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B211ABBC(qword_1ED85E790);
  sub_1B2252250();

  v1 = sub_1B2115FBC();
  MEMORY[0x1B2741EB0](v1);

  MEMORY[0x1B2741EB0](93, 0xE100000000000000);

  return 91;
}

uint64_t sub_1B223C788(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CD0];
  v8 = MEMORY[0x1E69E7CD0];
  v5 = *(a1 + 16);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    goto LABEL_5;
  }

  v6 = *(v5 + 16);
  swift_retain_n();

  sub_1B222FA58(v6, v5, a1);
  if (!v2)
  {
    *(v5 + 24) = 1;

    v4 = v8;
LABEL_5:

    return v4;
  }

  return v4;
}

uint64_t Row.__allocating_init(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1B224B3C8(MEMORY[0x1E69E7CC0]);
    v42 = v53;
    result = sub_1B2131D90(v1);
    v6 = result;
    v7 = 0;
    v8 = v1 + 64;
    v34 = v4;
    v35 = v2;
    v33 = v1 + 72;
    v36 = v1 + 64;
    v37 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v1 + 36) != v4)
      {
        goto LABEL_28;
      }

      v39 = v7;
      v40 = v4;
      v38 = v5;
      v10 = (*(v1 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B211E1E0(*(v1 + 56) + 40 * v6, v51, &qword_1EB7A0E30, &unk_1B2259360);
      v41 = v11;
      v48[0] = v11;
      v48[1] = v12;
      v49[0] = v51[0];
      v49[1] = v51[1];
      v50 = v52;
      sub_1B211E1E0(v49, v45, &qword_1EB7A0E30, &unk_1B2259360);
      v13 = v46;
      if (v46)
      {
        v14 = v47;
        sub_1B21139A0(v45, v46);
        v15 = *(v14 + 24);

        v15(v43, v13, v14);
        v16 = v43[0];
        v17 = v43[1];
        v18 = v44;
        sub_1B2113208(v45);
      }

      else
      {

        sub_1B212ACBC(v45, &qword_1EB7A0E30);
        v16 = 0;
        v17 = 0;
        v18 = 4;
      }

      result = sub_1B212ACBC(v48, &unk_1EB7A1270);
      v19 = v42;
      v53 = v42;
      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1B216EB80((v20 > 1), v21 + 1, 1);
        v19 = v53;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 40 * v21;
      *(v22 + 32) = v41;
      *(v22 + 40) = v12;
      *(v22 + 48) = v16;
      *(v22 + 56) = v17;
      *(v22 + 64) = v18;
      v1 = v37;
      v23 = 1 << *(v37 + 32);
      if (v6 >= v23)
      {
        goto LABEL_29;
      }

      v8 = v36;
      v24 = *(v36 + 8 * v9);
      if ((v24 & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      v42 = v19;
      if (*(v37 + 36) != v40)
      {
        goto LABEL_31;
      }

      v25 = v24 & (-2 << (v6 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v9 << 6;
        v27 = v9 + 1;
        v28 = (v33 + 8 * v9);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1B21268C8(v6, v40, v38 & 1);
            v23 = __clz(__rbit64(v29)) + v26;
            goto LABEL_22;
          }
        }

        result = sub_1B21268C8(v6, v40, v38 & 1);
      }

LABEL_22:
      v5 = 0;
      v7 = v39 + 1;
      v6 = v23;
      v4 = v34;
      if (v39 + 1 == v35)
      {

        v31 = v42;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
LABEL_25:
    sub_1B212D678();
    v32 = swift_allocObject();
    return sub_1B21840C8(v31, v32);
  }

  return result;
}

{
  v2 = 0;
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  v5 = *(a1 + 32);
  sub_1B21115A0();
  sub_1B2125FE8();
  v7 = v6 >> 6;
  v8 = MEMORY[0x1E69E7CC8];
  v33 = v6 >> 6;
  v34 = v4;
  if (v1)
  {
    while (1)
    {
      v9 = v2;
LABEL_7:
      v10 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
      v11 = v10 | (v9 << 6);
      sub_1B223182C(*(a1 + 48) + 40 * v11, &v38);
      sub_1B21721B4(*(a1 + 56) + 32 * v11, v37);
      *__src = v38;
      *&__src[16] = v39;
      *&__src[32] = v40;
      sub_1B2226E2C(v37, &__src[40]);
LABEL_8:
      memcpy(__dst, __src, 0x48uLL);
      if (!*(&__dst[1] + 1))
      {

        return Row.__allocating_init(_:)(v8);
      }

      sub_1B2226E2C((&__dst[2] + 8), v37);
      *__src = __dst[0];
      *&__src[16] = __dst[1];
      *&__src[32] = *&__dst[2];
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1B2113208(v37);

        return 0;
      }

      v12 = v38;
      sub_1B21721B4(v37, v36);
      sub_1B21721B4(v36, v35);
      sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1B21217FC(&v38, __src);
      v13 = *&__src[32];
      sub_1B21139A0(__src, *&__src[24]);
      v14 = *(v13 + 24);
      v15 = sub_1B2116164();
      v16(v15);
      sub_1B2113208(v36);
      v17 = v38;
      v18 = v39;
      sub_1B2113208(__src);
      *__src = v17;
      __src[16] = v18;
      *&__src[24] = &type metadata for DatabaseValue;
      *&__src[32] = &protocol witness table for DatabaseValue;
      sub_1B2113A20(v17, *(&v17 + 1), v18);
      swift_isUniquelyReferenced_nonNull_native();
      *&v38 = v8;
      v19 = sub_1B211E590();
      if (__OFADD__(v8[2], (v20 & 1) == 0))
      {
        goto LABEL_27;
      }

      v21 = v19;
      v22 = v20;
      sub_1B21619D8(&qword_1EB7A2238, &qword_1B226BA40);
      if (sub_1B2252E70())
      {
        v23 = sub_1B211E590();
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_29;
        }

        v21 = v23;
      }

      if (v22)
      {

        v8 = v38;
        sub_1B214670C(__src, *(v38 + 56) + 40 * v21, &qword_1EB7A0E30, &unk_1B2259360);
        sub_1B2113A44(v17, *(&v17 + 1), v18);
        sub_1B2113208(v37);
      }

      else
      {
        v8 = v38;
        *(v38 + 8 * (v21 >> 6) + 64) |= 1 << v21;
        *(v8[6] + 16 * v21) = v12;
        v25 = v8[7] + 40 * v21;
        v26 = *&__src[32];
        v27 = *&__src[16];
        *v25 = *__src;
        *(v25 + 16) = v27;
        *(v25 + 32) = v26;
        sub_1B2113A44(v17, *(&v17 + 1), v18);
        sub_1B2113208(v37);
        v28 = v8[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_28;
        }

        v8[2] = v30;
      }

      v7 = v33;
      v4 = v34;
      if (!v1)
      {
        goto LABEL_3;
      }
    }

    sub_1B2113208(v36);
    sub_1B2113208(v37);
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_1B212ACBC(&v38, &qword_1EB7A0E30);

    return 0;
  }

  else
  {
LABEL_3:
    while (1)
    {
      v9 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        v1 = 0;
        memset(__src, 0, sizeof(__src));
        goto LABEL_8;
      }

      v1 = *(v4 + 8 * v9);
      ++v2;
      if (v1)
      {
        v2 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_1B2253390();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B223CC34()
{
  sub_1B2116AD0();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    return 0;
  }

  sub_1B2131988();
  v3 = sub_1B2122D50();
  result = sub_1B22301D0(v3);
  if (!v1 && (v4 & 0x100) != 0)
  {
    *(v0 + 24) = 1;
  }

  return result;
}

uint64_t sub_1B223CCB4()
{
  sub_1B2116AD0();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    return 3;
  }

  sub_1B2131988();
  v3 = sub_1B2122D50();
  result = sub_1B22302C0(v3);
  if (!v1 && result == 3)
  {
    *(v0 + 24) = 1;
    return 3;
  }

  return result;
}

uint64_t sub_1B223CD28@<X0>(uint64_t a1@<X8>)
{
  sub_1B21118B8();
  result = swift_beginAccess();
  if (*(v1 + 24) == 1)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    sub_1B2131988();
    v5 = sub_1B2122D50();
    result = sub_1B2230398(v5, v6);
    if (!v2)
    {
      if (v8)
      {
        *a1 = v7;
        *(a1 + 8) = v8;
        *(a1 + 16) = v9;
        *(a1 + 24) = v10 & 1;
      }

      else
      {
        result = sub_1B21C2698(v7, 0);
        *(v1 + 24) = 1;
        *a1 = v7;
        *(a1 + 8) = 0;
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
      }

      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
    }
  }

  return result;
}

uint64_t sub_1B223CE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a7 + 16))
  {
    v9 = sub_1B211E590();
    if (v10)
    {
      v11 = (*(a7 + 56) + 24 * v9);
      a3 = *v11;
      v12 = v11[1];
      v13 = v11[2];
    }
  }

  return a3;
}

uint64_t sub_1B223CE94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = sub_1B2131D90(a3);
  if (v14)
  {
    goto LABEL_19;
  }

  v15 = *(a3 + 36);
  if (v15 != v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = 1 << *(a3 + 32);
  if (v16 < result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = *(a1 + 16);
  if (v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(a1 + 2) != v15)
  {
    goto LABEL_15;
  }

  v18 = *a1;
  if (*a1 < result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = *(a1 + 40);
  if (v19)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (v15 != *(a1 + 8))
  {
    goto LABEL_17;
  }

  v20 = a1[3];
  if (v16 < v20)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = *(a1 + 3);
  v22 = *(a1 + 9);
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5;
  *a6 = v18;
  *(a6 + 8) = v15;
  *(a6 + 12) = v21;
  *(a6 + 16) = v17;
  *(a6 + 24) = v20;
  *(a6 + 32) = v15;
  *(a6 + 36) = v22;
  *(a6 + 40) = v19;
}

uint64_t sub_1B223CFBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(v3 + 72);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 >= a2)
  {
    a3[1] = a2;
    a3[2] = v3;
    *a3 = result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B223CFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;

  result = sub_1B2131D90(a2);
  *(a5 + 32) = result;
  *(a5 + 40) = v8;
  *(a5 + 48) = v9 & 1;
  v10 = *(a2 + 36);
  *(a5 + 56) = 1 << *(a2 + 32);
  *(a5 + 64) = v10;
  *(a5 + 72) = 0;
  return result;
}

uint64_t sub_1B223D070(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v7 = a3;
  v8 = a2;
  v9 = result;
  if (a4)
  {
    v11 = a6 + 64;
    result = sub_1B224B040(result, a2, a3 & 1);
    v12 = 0;
    while ((v9 & 0x8000000000000000) == 0)
    {
      v13 = 1 << *(a6 + 32);
      if (v9 >= v13)
      {
        break;
      }

      v14 = v9 >> 6;
      v15 = *(v11 + 8 * (v9 >> 6));
      if (((v15 >> v9) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a6 + 36) != v8)
      {
        goto LABEL_21;
      }

      v16 = v15 & (-2 << (v9 & 0x3F));
      if (v16)
      {
        v13 = __clz(__rbit64(v16)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v14 << 6;
        v18 = v14 + 1;
        v19 = (a6 + 72 + 8 * v14);
        while (v18 < (v13 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_1B21268C8(v9, v8, v7 & 1);
            v13 = __clz(__rbit64(v20)) + v17;
            goto LABEL_15;
          }
        }

        result = sub_1B21268C8(v9, v8, v7 & 1);
      }

LABEL_15:
      v7 = 0;
      ++v12;
      v8 = *(a6 + 36);
      v9 = v13;
      if (v12 >= a4)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1B224B040(result, a2, a3 & 1);
  return v9;
}

uint64_t sub_1B223D208(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8, uint64_t a9)
{
  if (a4 < 0)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v12 = a4;
    v14 = a2;
    v15 = result;
    result = sub_1B224B040(result, a2, a3 & 1);
    if (!v12)
    {
      return v15;
    }

    v16 = 0;
    v17 = a9 + 64;
    v18 = a3 | a7;
    v29 = v12;
    while ((v18 & 1) == 0)
    {
      if (v14 != a6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v15 == a5)
      {
        return 0;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v19 = 1 << *(a9 + 32);
      if (v15 >= v19)
      {
        goto LABEL_24;
      }

      v20 = v15 >> 6;
      v21 = *(v17 + 8 * (v15 >> 6));
      if (((v21 >> v15) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a9 + 36) != a6)
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v15 & 0x3F));
      if (v22)
      {
        v15 = __clz(__rbit64(v22)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = a5;
        v24 = v20 << 6;
        v25 = v20 + 1;
        v26 = (a9 + 72 + 8 * v20);
        while (v25 < (v19 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1B21268C8(v15, v14, 0);
            v17 = a9 + 64;
            v15 = __clz(__rbit64(v27)) + v24;
            goto LABEL_18;
          }
        }

        result = sub_1B21268C8(v15, v14, 0);
        v17 = a9 + 64;
        v15 = v19;
LABEL_18:
        a5 = v23;
        v12 = v29;
      }

      ++v16;
      v14 = *(a9 + 36);
      v18 = a7;
      if (v16 >= v12)
      {
        return v15;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B223D3D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B223D3EC(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    goto LABEL_13;
  }

  if (*(a4 + 8) != a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*a4 > result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a4 + 32) != a2)
  {
    goto LABEL_11;
  }

  if (*(a4 + 24) <= result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B223D44C(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    goto LABEL_13;
  }

  if (*(a4 + 8) != a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*a4 > result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a4 + 32) != a2)
  {
    goto LABEL_11;
  }

  if (*(a4 + 24) < result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B223D4AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B223D4C0(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_14;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*result < *a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a2 + 40) & 1) != 0 || (*(result + 40))
  {
    goto LABEL_15;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_12;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B223D53C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t Row.unadapted.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1B21139A0(v0 + 2, v1);
  v3 = *(v2 + 104);
  v4 = sub_1B224B2B4();
  return v5(v4, v1, v2);
}

void sub_1B223DD24(uint64_t a1)
{
  v2 = 0;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = *(a1 + 32);
  sub_1B21115A0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) != 0)
  {
    while (1)
    {
      v11 = v2;
LABEL_7:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = *(*(a1 + 48) + ((v11 << 9) | (8 * v12)));
      sub_1B22463C0();
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v2;
    if (v8)
    {
      v2 = v11;
      goto LABEL_7;
    }
  }
}

void sub_1B223DDFC(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void (*a4)(_OWORD *__return_ptr, __n128)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v27 = a5;
  v11 = sub_1B22522F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 4)
  {
    if (!(a2 | a1))
    {
      a1 = 0;
      a2 = 0xF000000000000000;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a3 == 3)
  {
    sub_1B2113A20(a1, a2, 3);
    goto LABEL_10;
  }

  v22 = a6;
  if (a3 != 2 || (sub_1B22522E0(), v21 = sub_1B22522B0(), v18 = v17, (*(v12 + 8))(v16, v11), v18 >> 60 == 15))
  {
LABEL_8:
    a4(v25, v14);
    v23[0] = a1;
    v23[1] = a2;
    v24 = a3;
    sub_1B21A2FC0();
    swift_allocError();
    sub_1B2183238(MEMORY[0x1E6969080], v25, v23, v19);
    v26[0] = v25[0];
    v26[1] = v25[1];
    v26[2] = v25[2];
    v26[3] = v25[3];
    sub_1B218450C(v26);
    swift_willThrow();
    return;
  }

  a1 = v21;
  a2 = v18;
  a6 = v22;
LABEL_10:
  *a6 = a1;
  a6[1] = a2;
}

uint64_t Row.PrefetchedRowsView.keys.getter()
{
  v11 = MEMORY[0x1E69E7CD0];
  v1 = sub_1B2131F80(*v0, v0[1]);
  v2 = v1[2];
  if (v2)
  {
    do
    {
      v4 = v1[4];
      v3 = v1[5];
      v5 = v1[6];
      v6 = v1[7];
      v7 = v1[8];

      if (!swift_isUniquelyReferenced_nonNull_native() || (v2 - 1) > v1[3] >> 1)
      {
        sub_1B2126410();
        sub_1B2162EC0();
        v1 = v8;
      }

      sub_1B212ACBC((v1 + 4), &qword_1EB7A0E50);
      v9 = v1[2];
      memmove(v1 + 4, v1 + 9, 40 * v9 - 40);
      v1[2] = v9 - 1;
      if (v5)
      {
        sub_1B2139304();
      }

      sub_1B216D048(v6, v7);

      v2 = v1[2];
    }

    while (v2);

    return v11;
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }
}

double Row.scopesTree.getter@<D0>(_OWORD *a1@<X8>)
{
  Row.scopes.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void Row.ScopesTreeView.names.getter()
{
  sub_1B2111F14();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v52 = MEMORY[0x1E69E7CD0];
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v5 = sub_1B2131D90(v2);
  v7 = v6;
  v9 = v8;
  v45 = v4;

  v46 = v3;

  v51 = v9 & 1;
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v42 = v51;

    v43 = sub_1B2117C38();
    sub_1B21268C8(v43, v44, v42);
    sub_1B2111588();
  }

  else
  {
    while (*(v2 + 36) == v7)
    {
      sub_1B212209C();
      if (v5 == v10)
      {
        goto LABEL_8;
      }

      v11 = sub_1B2243724(v50, v5, v7, 0, v2);
      v13 = v12;
      v14 = type metadata accessor for Row();
      sub_1B214D38C(v50, v47);
      v15 = v48;
      v16 = v49;
      sub_1B21A1628(v47, v48);
      sub_1B21115E0();
      v18 = *(v17 + 64);
      MEMORY[0x1EEE9AC00](v19);
      sub_1B2111844();
      v22 = v21 - v20;
      (*(v23 + 16))(v21 - v20);

      v25 = sub_1B21B64A0(v24, v22, v14, v15, v16);
      sub_1B2113208(v47);
      sub_1B218F9CC(v11, v13, v46, v45);
      v27 = v26;
      v29 = v28;
      sub_1B2113208(v50);
      if (v27)
      {

        sub_1B21118B8();
        swift_beginAccess();
        v31 = *(v25 + 80);
        v30 = *(v25 + 88);
        *(v25 + 80) = v27;
        *(v25 + 88) = v29;
      }

      v32 = sub_1B2117C38();
      v34 = sub_1B224A534(v32, v33, 0, v2);
      v36 = v35;
      v38 = v37;
      v39 = sub_1B2117C38();
      sub_1B21268C8(v39, v40, 0);
      v51 = v38 & 1;
      sub_1B224B2A8();
      sub_1B2139304();

      v41 = Row.scopes.getter();
      Row.ScopesTreeView.names.getter(v41);

      sub_1B213FE4C();

      v5 = v34;
      v7 = v36;
      if (v38)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

Swift::Bool __swiftcall Row.hasColumn(_:)(Swift::String a1)
{
  sub_1B211D530();
  v2 = v1[6];
  sub_1B21139A0(v1 + 2, v1[5]);
  v3 = sub_1B224B1FC();
  v4(v3);
  return (v5 & 1) == 0;
}

void Row.decode<A>(_:forKey:)()
{
  sub_1B2111640();
  v32 = v1;
  v33 = v2;
  v4 = v3;
  v31 = v5;
  v6 = sub_1B2252B00();
  sub_1B211280C(v6);
  v30 = v7;
  v9 = *(v8 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  v14 = *(v13 + 88);
  v15 = sub_1B211F390();
  v17 = v16(v15);
  if (v18)
  {
    v35 = 0uLL;
    LOBYTE(v36) = -1;

    RowDecodingContext.init(row:key:)(v19, &v35, v34);
    sub_1B21A2FC0();
    sub_1B21152FC();
    v20 = sub_1B211F390();
    static RowDecodingError.columnNotFound(_:context:)(v20, v21, v22, v23);
    v35 = v34[0];
    v36 = v34[1];
    v37 = v34[2];
    v38 = v34[3];
    sub_1B218450C(&v35);
    swift_willThrow();
    goto LABEL_12;
  }

  v24 = v17;
  v25 = v0[8];
  if (!v25)
  {
    Row.fastDecode<A>(_:atUncheckedIndex:)();
    goto LABEL_12;
  }

  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v17 <= 0x7FFFFFFF)
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v30 - 2) = v0;
    *(&v30 - 1) = v24;
    v26 = sqlite3_column_type(v25, v24);
    if (v26 != 5)
    {
      (*(v33 + 8))(v25, v24, v4, v33);
      if (sub_1B2122A98(v12, 1, v4) != 1)
      {
        sub_1B2111808(v4);
        (*(v29 + 32))(v31, v12, v4);
        goto LABEL_12;
      }

      v26 = (*(v30 + 8))(v12, v6);
    }

    MEMORY[0x1EEE9AC00](v26);
    sub_1B21156F0();
    *(v27 - 16) = sub_1B222EEE8;
    *(v27 - 8) = &v30 - 4;
    static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v25, v24, sub_1B222EEEC, v28, v4);
LABEL_12:
    sub_1B2112FDC();
    return;
  }

  __break(1u);
}

void Row.containsNonNullValue.getter()
{
  sub_1B2111F14();
  v38 = *v0;
  v1 = v0[9];
  if (v1 < 0)
  {
    goto LABEL_30;
  }

  v2 = 0;
  while (1)
  {
    if (v1 == v2)
    {
      Row.scopes.getter();
      v8 = v43;
      v9 = v44;

      v10 = sub_1B2131D90(v43);
      v12 = v11;
      v14 = v13;

      if (v14)
      {
        goto LABEL_31;
      }

      v37 = v43 + 64;
      while (1)
      {
        if (v12 != *(v8 + 36))
        {
          goto LABEL_26;
        }

        if (v10 == 1 << *(v8 + 32))
        {

          sub_1B21268C8(v10, v12, 0);
          goto LABEL_24;
        }

        sub_1B2243724(&v42, v10, v12, 0, v8);
        sub_1B214D38C(&v42, v39);
        v16 = v40;
        v15 = v41;
        sub_1B21A1628(v39, v40);
        sub_1B21115E0();
        v18 = *(v17 + 64);
        MEMORY[0x1EEE9AC00](v19);
        sub_1B2111844();
        v22 = v21 - v20;
        (*(v23 + 16))(v21 - v20);

        v25 = sub_1B21B64A0(v24, v22, v38, v16, v15);
        sub_1B2113208(v39);
        if (*(v9 + 16))
        {
          v26 = sub_1B211E590();
          v28 = v27;

          if (v28)
          {
            v29 = *(v9 + 56) + 24 * v26;
            v30 = *(v29 + 8);
            v31 = *(v29 + 16);

            sub_1B2113208(&v42);
            sub_1B21118B8();
            swift_beginAccess();
            v33 = *(v25 + 80);
            v32 = *(v25 + 88);
            *(v25 + 80) = v30;
            *(v25 + 88) = v31;

            goto LABEL_16;
          }
        }

        else
        {
        }

        sub_1B2113208(&v42);
LABEL_16:
        if (v10 < 0)
        {
          goto LABEL_27;
        }

        v34 = *(v8 + 32);
        sub_1B2113B98();
        if (v10 >= -v35)
        {
          goto LABEL_27;
        }

        if (((*(v37 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_28;
        }

        if (*(v8 + 36) != v12)
        {
          goto LABEL_29;
        }

        v10 = sub_1B2252BF0();
        v12 = *(v8 + 36);
        v36 = Row.containsNonNullValue.getter();

        if (v36)
        {

          sub_1B21268C8(v10, v12, 0);
          goto LABEL_24;
        }
      }
    }

    if (__OFADD__(v2, 1))
    {
      break;
    }

    v3 = v0[6];
    sub_1B21139A0(v0 + 2, v0[5]);
    sub_1B224B38C();
    v5 = *(v4 + 40);
    v6 = sub_1B2113B50();
    ++v2;
    if ((v7(v6) & 1) == 0)
    {
LABEL_24:
      sub_1B2111588();
      return;
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
LABEL_31:
  __break(1u);
}

uint64_t sub_1B223EBCC(uint64_t a1)
{
  if (a1 < 0 || (sub_1B224B374(), v2 ^ v3 | v1))
  {
    sub_1B2111608();
    sub_1B2112EEC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    sub_1B211E6C0();
    sub_1B224B38C();
    v5 = *(v4 + 72);
    sub_1B21223F4();
    sub_1B2127108();
    return v6();
  }

  return result;
}

Swift::Bool __swiftcall Row.hasNull(atIndex:)(Swift::Int atIndex)
{
  if (atIndex < 0 || (sub_1B224B374(), v3 ^ v4 | v2))
  {
    sub_1B2111608();
    sub_1B2112EEC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v5 = v1[6];
    sub_1B21139A0(v1 + 2, v1[5]);
    v6 = *(v5 + 40);
    sub_1B224B54C();
    return v7() & 1;
  }

  return result;
}

void Row.decode<A>(_:atIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B2111640();
  v16 = sub_1B211EFF8(v15);
  sub_1B211280C(v16);
  v18 = *(v17 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v19);
  v23 = v30 - v22;
  if ((v13 & 0x8000000000000000) == 0 && *(v10 + 72) > v13)
  {
    v24 = *(v10 + 64);
    if (!v24)
    {
      sub_1B224B21C();
      Row.fastDecode<A>(_:atUncheckedIndex:)();
      goto LABEL_11;
    }

    if (!(v13 >> 31))
    {
      v30[1] = v21;
      v30[2] = v14;
      v31 = v11;
      MEMORY[0x1EEE9AC00](v20);
      v25 = sub_1B224B340();
      if (v25 != 5)
      {
        (*(v31 + 8))(v24, v13, v12);
        if (sub_1B2122A98(v23, 1, v12) != 1)
        {
          sub_1B2111808(v12);
          (*(v29 + 32))(a10, v23, v12);
          goto LABEL_11;
        }

        sub_1B21265E0();
        v25 = v26(v23, v16);
      }

      MEMORY[0x1EEE9AC00](v25);
      sub_1B21156F0();
      *(v27 - 16) = sub_1B222EEE8;
      *(v27 - 8) = v14;
      static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v24, v13, sub_1B222EEEC, v28, v12);
LABEL_11:
      sub_1B2112FDC();
      return;
    }

    __break(1u);
  }

  sub_1B2116728();
  v30[0] = 825;
  sub_1B2112EEC();
  sub_1B2252EC0();
  __break(1u);
}

uint64_t Row.prefetchedRows.getter@<X0>(void *a1@<X8>)
{
  sub_1B21115FC();
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t Row.__allocating_init()()
{
  sub_1B212D678();
  v0 = swift_allocObject();

  return sub_1B2131A6C(v0);
}

uint64_t Row.__allocating_init(dictionaryLiteral:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_1B224B3C8(MEMORY[0x1E69E7CC0]);
    v4 = 0;
    v5 = a1 + 32;
    v6 = v31;
    v7 = a1;
    v22 = v2;
    while (v4 < *(v7 + 16))
    {
      sub_1B211E1E0(v5, v29, &qword_1EB7A3320, &qword_1B226ACC8);
      v8 = v29[1];
      v23 = v29[0];
      sub_1B211E1E0(&v30, v26, &qword_1EB7A0E30, &unk_1B2259360);
      v9 = v27;
      if (v27)
      {
        v10 = v28;
        sub_1B21139A0(v26, v27);
        (*(v10 + 24))(v24, v9, v10);
        v12 = v24[0];
        v11 = v24[1];
        v13 = v25;
        sub_1B2113208(v26);
      }

      else
      {
        sub_1B224B2A8();
        sub_1B212ACBC(v14, v15);
        v12 = 0;
        v11 = 0;
        v13 = 4;
      }

      result = sub_1B212ACBC(v29, &qword_1EB7A3320);
      v31 = v6;
      v16 = *(v6 + 16);
      if (v16 >= *(v6 + 24) >> 1)
      {
        sub_1B2126410();
        result = sub_1B216EB80(v18, v19, v20);
        v6 = v31;
      }

      ++v4;
      *(v6 + 16) = v16 + 1;
      v17 = v6 + 40 * v16;
      *(v17 + 32) = v23;
      *(v17 + 40) = v8;
      *(v17 + 48) = v12;
      *(v17 + 56) = v11;
      *(v17 + 64) = v13;
      v5 += 56;
      if (v22 == v4)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_12:
    sub_1B212D678();
    v21 = swift_allocObject();
    return sub_1B21840C8(v6, v21);
  }

  return result;
}

uint64_t Row.hashValue.getter()
{
  sub_1B2253420();
  Row.hash(into:)();
  return sub_1B2253470();
}

void static Row.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B2111F14();
  a19 = v21;
  a20 = v24;
  if (v22 == v23)
  {
    goto LABEL_59;
  }

  v25 = v20;
  v26 = v23;
  v27 = v22;
  v28 = *(v22 + 72);
  if (v28 != *(v23 + 72))
  {
    goto LABEL_59;
  }

  v134 = v25;
  v148 = v22;
  v149 = 0;
  v150 = v23;
  v151 = 0;

  v29 = 0;
  v30 = v28;
  v136 = v27;
  v137 = v26;
  v135 = v28;
  while (1)
  {
    if (!v30)
    {
      goto LABEL_20;
    }

    v138 = v30;
    Row.subscript.getter();
    v32 = v31;
    v139 = v33;
    v143 = v33;
    v144 = v31;
    v35 = v145;
    v34 = v146;
    v36 = v147;

    sub_1B2113A20(v35, v34, v36);

    v142 = v35;
    sub_1B2113A44(v35, v34, v36);
    if (*(v27 + 72) <= v29)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v140 = v34;
    LODWORD(v141) = v36;
    v37 = v29 + 1;
    v149 = v29 + 1;
    if (v29 == v28)
    {
      break;
    }

    Row.subscript.getter();
    v39 = v38;
    v41 = v40;
    v143 = v38;
    v144 = v40;
    v43 = v145;
    v42 = v146;
    v44 = v147;

    v45 = sub_1B211F3C4();
    sub_1B2113A20(v45, v46, v47);

    v48 = sub_1B211F3C4();
    sub_1B2113A44(v48, v49, v50);
    if (*(v26 + 72) <= v29)
    {
      goto LABEL_62;
    }

    v29 = (v29 + 1);
    v151 = v37;
    if (sub_1B224B380() == v39 && v32 == v41)
    {

      sub_1B224B538();
    }

    else
    {
      v52 = sub_1B224B474();

      sub_1B224B538();
      if ((v52 & 1) == 0)
      {

        v130 = sub_1B211F3C4();
        sub_1B2113A44(v130, v131, v132);
        sub_1B2113A44(v142, v37, &v148);
LABEL_59:
        sub_1B2111588();
        return;
      }
    }

    v143 = v142;
    v144 = v37;
    LOBYTE(v145) = &v148;
    v152 = v43;
    v153 = v42;
    v154 = v44;
    v53 = static DatabaseValue.== infix(_:_:)(&v143, &v152);
    v54 = sub_1B211F3C4();
    sub_1B2113A44(v54, v55, v56);
    v57 = sub_1B224B29C();
    sub_1B2113A44(v57, v58, &v148);
    v30 = v138 - 1;
    v26 = v137;
    v27 = v136;
    v28 = v135;
    if ((v53 & 1) == 0)
    {

LABEL_17:

      goto LABEL_59;
    }
  }

  sub_1B2113A44(v142, v140, v141);
LABEL_20:

  Row.scopes.getter();
  v59 = v149;

  Row.scopes.getter();
  v60 = v149;

  if ((sub_1B2242B58(v59, v60) & 1) == 0)
  {

LABEL_58:

    goto LABEL_59;
  }

  v133[1] = v60;
  v62 = v59 + 64;
  v61 = *(v59 + 64);
  v63 = *(v59 + 32);
  sub_1B21115A0();
  v66 = v65 & v64;
  v68 = (v67 + 63) >> 6;

  v69 = 0;
  v141 = v59;
  while (v66)
  {
LABEL_27:
    v71 = (*(v59 + 48) + ((v69 << 10) | (16 * __clz(__rbit64(v66)))));
    v72 = *v71;
    v73 = v71[1];

    Row.scopes.getter();
    v75 = v152;
    v74 = v153;
    v76 = v155;
    if (!*(v153 + 16))
    {

LABEL_34:

      v142 = 0;
      goto LABEL_38;
    }

    v77 = sub_1B224B3EC();
    if ((v78 & 1) == 0)
    {

      sub_1B213B3D8();
      goto LABEL_34;
    }

    v138 = v72;
    v79 = sub_1B2243724(&v148, v77, *(v74 + 36), 0, v74);
    sub_1B224B410(v79, v80, &a9);
    v81 = v146;
    v142 = v147;
    sub_1B21A1628(&v143, v146);
    v135 = v133;
    sub_1B21115E0();
    v83 = *(v82 + 64);
    MEMORY[0x1EEE9AC00](v84);
    sub_1B2111844();
    v85 = v75;
    v88 = v87 - v86;
    (*(v89 + 16))(v87 - v86);

    v142 = sub_1B21B64A0(v90, v88, v134, v81, v142);
    sub_1B2113208(&v143);
    if (*(v76 + 16))
    {
      v135 = v85;
      v91 = sub_1B211E590();
      v93 = v92;

      if (v93)
      {
        v94 = *(v76 + 56) + 24 * v91;
        v95 = *(v94 + 8);
        v96 = *(v94 + 16);

        sub_1B2113208(&v148);
        v97 = v142;
        sub_1B21118B8();
        swift_beginAccess();
        v98 = *(v97 + 88);
        v139 = *(v97 + 80);
        v133[0] = v98;
        *(v97 + 80) = v95;
        *(v97 + 88) = v96;

        sub_1B213B3D8();

        sub_1B224B380();

        goto LABEL_38;
      }

      sub_1B2113208(&v148);

      sub_1B213B3D8();
    }

    else
    {
      sub_1B224B380();

      sub_1B2113208(&v148);

      sub_1B213B3D8();
    }

LABEL_38:
    Row.scopes.getter();
    v99 = v153;
    v100 = v155;
    if (!*(v153 + 16))
    {

LABEL_45:
      v116 = 0;
      goto LABEL_48;
    }

    v101 = sub_1B224B3EC();
    v103 = v102;

    if ((v103 & 1) == 0)
    {

      sub_1B213B3D8();

      goto LABEL_45;
    }

    v104 = sub_1B2243724(&v148, v101, *(v99 + 36), 0, v99);
    sub_1B224B410(v104, v105, &a12);
    v106 = v146;
    v107 = v147;
    sub_1B21A1628(&v143, v146);
    v138 = v133;
    sub_1B21115E0();
    v109 = *(v108 + 64);
    MEMORY[0x1EEE9AC00](v110);
    sub_1B2111844();
    v113 = v112 - v111;
    (*(v114 + 16))(v112 - v111);

    v116 = sub_1B21B64A0(v115, v113, v134, v106, v107);
    sub_1B2113208(&v143);
    if (!*(v100 + 16))
    {
      sub_1B224B380();

LABEL_47:
      sub_1B2113208(&v148);

      sub_1B213B3D8();

      goto LABEL_48;
    }

    v138 = sub_1B211E590();
    v118 = v117;

    if ((v118 & 1) == 0)
    {
      goto LABEL_47;
    }

    v119 = *(v100 + 56) + 24 * v138;
    v120 = *(v119 + 8);
    v121 = *(v119 + 16);

    sub_1B2113208(&v148);
    sub_1B21118B8();
    swift_beginAccess();
    v122 = *(v116 + 88);
    v139 = *(v116 + 80);
    v138 = v122;
    *(v116 + 80) = v120;
    *(v116 + 88) = v121;

    sub_1B213B3D8();

    sub_1B224B380();

LABEL_48:
    v59 = v141;
    v123 = v142;
    v66 &= v66 - 1;
    if (v142)
    {
      if (!v116)
      {
        goto LABEL_53;
      }

      v124 = static Row.== infix(_:_:)(v123, v116);

      if ((v124 & 1) == 0)
      {
        sub_1B224B368();

        goto LABEL_17;
      }
    }

    else if (v116)
    {
LABEL_53:
      sub_1B224B368();

      goto LABEL_17;
    }
  }

  while (1)
  {
    v70 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v70 >= v68)
    {

      v125 = v136;
      sub_1B21115FC();
      swift_beginAccess();
      v127 = *(v125 + 80);
      v126 = *(v125 + 88);
      v128 = v137;
      sub_1B21115FC();
      swift_beginAccess();
      v129 = *(v128 + 88);
      LOBYTE(v128) = sub_1B21B8000(v127, *(v128 + 80));

      if (v128)
      {

        sub_1B21D34AC(v126, v129);

        sub_1B224B368();

        goto LABEL_59;
      }

      sub_1B224B368();
      goto LABEL_58;
    }

    v66 = *(v62 + 8 * v70);
    ++v69;
    if (v66)
    {
      v69 = v70;
      goto LABEL_27;
    }
  }

LABEL_63:
  __break(1u);
}

uint64_t Row.hash(into:)()
{
  v1 = *(v0 + 72);
  MEMORY[0x1B2742F10](v1);
  if (v1)
  {

    v2 = 0;
    while (1)
    {
      Row.subscript.getter();

      v3 = sub_1B21146D8();
      sub_1B2113A20(v3, v4, v19);

      v5 = sub_1B21146D8();
      result = sub_1B2113A44(v5, v6, v19);
      if (*(v0 + 72) <= v2)
      {
        break;
      }

      ++v2;
      sub_1B2252370();

      switch(v19)
      {
        case 1:
          if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v8 = *&v18;
          }

          else
          {
            v8 = 0.0;
          }

          goto LABEL_13;
        case 2:
          v9 = sub_1B21146D8();
          sub_1B2113A20(v9, v10, 2);
          sub_1B224B29C();
          sub_1B2252370();
          v11 = sub_1B21146D8();
          v13 = 2;
          goto LABEL_9;
        case 3:
          v14 = sub_1B21146D8();
          sub_1B2113A20(v14, v15, 3);
          sub_1B224B29C();
          sub_1B2251DF0();
          v11 = sub_1B21146D8();
          v13 = 3;
LABEL_9:
          sub_1B2113A44(v11, v12, v13);
          break;
        case 4:
          MEMORY[0x1B2742F10](0);
          break;
        default:
          v8 = v18;
LABEL_13:
          MEMORY[0x1B2742F40](*&v8);
          break;
      }

      v16 = sub_1B21146D8();
      sub_1B2113A44(v16, v17, v19);
      if (v1 == v2)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_17:
  }

  return result;
}

uint64_t sub_1B22402B0()
{
  v1 = *v0;
  sub_1B2253420();
  Row.hash(into:)();
  return sub_1B2253470();
}

uint64_t sub_1B22402F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B224036C(a1, a3);
  if (a2 < 1)
  {
    if (result <= 0 && result > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = sub_1B2183FB4(a1, a2, a4);
    v8 = 0;
    goto LABEL_11;
  }

  if (result < 0 || result >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  *a4 = 0;
  v8 = 1;
LABEL_11:
  *(a4 + 8) = v8;
  return result;
}

uint64_t sub_1B224036C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 72);
  if (v3 >= a2 && ((a2 | result) & 0x8000000000000000) == 0 && v3 >= result)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2240394@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Row.__allocating_init(dictionaryLiteral:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B2240434@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  *a2 = v3;
  if (v3 < 0 || v3 >= *(v2 + 72))
  {
    goto LABEL_6;
  }

  return result;
}

void sub_1B22404DC(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

uint64_t sub_1B2240670@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);

  v8 = sub_1B213CEBC();
  sub_1B2113A20(v8, v9, v10);
  v11 = sub_1B213CEBC();
  result = sub_1B2113A44(v11, v12, v13);
  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t Row.subscript.getter(uint64_t a1)
{
  if (a1 < 0 || (sub_1B224B374(), v3 ^ v4 | v2))
  {
    sub_1B2111608();
    sub_1B2112EEC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v5 = v1[6];
    sub_1B21139A0(v1 + 2, v1[5]);
    v6 = *(v5 + 48);
    v7 = sub_1B2115FBC();
    v8(v7);
    v9 = sub_1B2114748();
    DatabaseValue.Storage.value.getter(v9, v10, v11, v12);
    v13 = sub_1B2114748();

    return sub_1B2113A44(v13, v14, v15);
  }

  return result;
}

void Row.decodeIfPresent<A>(_:atIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B2111640();
  v17 = sub_1B211EFF8(v16);
  sub_1B211280C(v17);
  v19 = *(v18 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v20);
  v24 = v35 - v23;
  if ((v14 & 0x8000000000000000) == 0 && *(v11 + 72) > v14)
  {
    v25 = *(v11 + 64);
    if (!v25)
    {
      sub_1B224B21C();
      Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
      goto LABEL_12;
    }

    if (!(v14 >> 31))
    {
      v35[1] = v22;
      v35[2] = v15;
      v35[3] = v10;
      MEMORY[0x1EEE9AC00](v21);
      if (sub_1B224B340() == 5)
      {
        v26 = a10;
        v27 = 1;
LABEL_11:
        sub_1B21117B4(v26, v27, 1, v13);
        goto LABEL_12;
      }

      v35[0] = v35;
      v28 = *(v12 + 8);
      sub_1B211F200();
      v29();
      if (sub_1B2122A98(v24, 1, v13) != 1)
      {
        sub_1B2111808(v13);
        (*(v34 + 32))(a10, v24, v13);
        sub_1B224B52C();
        v26 = a10;
        v27 = 0;
        goto LABEL_11;
      }

      sub_1B21265E0();
      v31 = v30(v24, v17);
      MEMORY[0x1EEE9AC00](v31);
      sub_1B21156F0();
      *(v32 - 16) = sub_1B222EEE8;
      *(v32 - 8) = v15;
      static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v25, v14, sub_1B222EEEC, v33, v13);
      sub_1B224B52C();
LABEL_12:
      sub_1B2112FDC();
      return;
    }

    __break(1u);
  }

  sub_1B2116728();
  v35[0] = 803;
  sub_1B2112EEC();
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B2240ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if ((a2 & 0x8000000000000000) == 0 && *(v6 + 72) > a2)
  {
    return a6(v6);
  }

  sub_1B2111608();
  sub_1B2112EEC();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

void Row.decodeIfPresent<A>(_:forKey:)()
{
  sub_1B2111640();
  v2 = v1;
  v3 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  v4 = *(v3 + 88);
  sub_1B2138D84();
  v5();
  if (v6)
  {
    v7 = sub_1B224B520();
    sub_1B21117B4(v7, v8, 1, v2);
  }

  else
  {
    static DatabaseValueConvertible.decodeIfPresent(fromRow:atUncheckedIndex:)();
  }

  sub_1B2112FDC();
}

{
  sub_1B2111640();
  v28[2] = v1;
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1B2252B00();
  sub_1B211280C(v7);
  v28[1] = v8;
  v10 = *(v9 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - v12;
  v14 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  v15 = *(v14 + 88);
  sub_1B2138D84();
  v17 = v16();
  if (v18)
  {
    goto LABEL_6;
  }

  v19 = v17;
  v20 = v0[8];
  if (!v20)
  {
    Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
    goto LABEL_11;
  }

  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v17 <= 0x7FFFFFFF)
  {
    MEMORY[0x1EEE9AC00](v17);
    v28[-2] = v0;
    v28[-1] = v19;
    if (sqlite3_column_type(v20, v19) != 5)
    {
      v28[0] = v28;
      (*(v29 + 8))(v20, v19, v4, v29);
      if (sub_1B2122A98(v13, 1, v4) == 1)
      {
        sub_1B21265E0();
        v24 = v23(v13, v7);
        MEMORY[0x1EEE9AC00](v24);
        sub_1B21156F0();
        *(v25 - 16) = sub_1B222EEE8;
        *(v25 - 8) = &v28[-4];
        static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v20, v19, sub_1B222EEEC, v26, v4);
        sub_1B224B52C();
        goto LABEL_11;
      }

      sub_1B2111808(v4);
      (*(v27 + 32))(v6, v13, v4);
      sub_1B224B52C();
      v21 = v6;
      v22 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v21 = sub_1B224B520();
LABEL_7:
    sub_1B21117B4(v21, v22, 1, v4);
LABEL_11:
    sub_1B2112FDC();
    return;
  }

  __break(1u);
}

void Row.decode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v6 = v3[6];
  sub_1B21139A0(v3 + 2, v7);
  sub_1B224B38C();
  (*(v8 + 88))(a2, a3, v7, v6);
  if (v9)
  {
    v13 = 0uLL;
    LOBYTE(v14) = -1;

    RowDecodingContext.init(row:key:)(v10, &v13, v12);
    sub_1B21A2FC0();
    sub_1B21152FC();
    static RowDecodingError.columnNotFound(_:context:)(a2, a3, v12, v11);
    v13 = v12[0];
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    sub_1B218450C(&v13);
    swift_willThrow();
  }

  else
  {
    static DatabaseValueConvertible.decode(fromRow:atUncheckedIndex:)();
  }
}

uint64_t Row.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1B2151D4C(a1);
  v5 = sub_1B212CFD8(v3, v4);
  v6(v5);
  Row.subscript.getter(a2);
}

void sub_1B2241384()
{
  sub_1B224B638();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1B2151D4C(v6);
  v10 = v9(v7, v8);
  v1(v10, v10, v11, v5, v3);

  sub_1B224B5E0();
}

uint64_t sub_1B2241520(uint64_t a1)
{
  if (a1 < 0 || (sub_1B224B374(), v2 ^ v3 | v1))
  {
    sub_1B2111608();
    sub_1B2112EEC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    sub_1B211E6C0();
    sub_1B224B38C();
    v5 = *(v4 + 80);
    sub_1B21223F4();
    sub_1B2127108();
    return v6();
  }

  return result;
}

uint64_t sub_1B2241600()
{
  v1 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  v2 = *(v1 + 88);
  sub_1B2138D84();
  v3();
  if (v4)
  {
    return 0;
  }

  v6 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  v7 = *(v6 + 80);
  sub_1B224B2B4();
  sub_1B2127108();
  return v8();
}

uint64_t Row.dataNoCopy<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2151D4C(a3);
  v5 = sub_1B212CFD8(v3, v4);
  v6(v5);
  sub_1B2241600();

  return sub_1B2112FD0();
}

uint64_t sub_1B2241790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);

  sub_1B2113A20(v4, v5, v6);

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1B2241874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Row.scopes.getter();
  v58 = a2;
  v46 = a3;
  v9 = Row.ScopesTreeView.subscript.getter();

  if (v9)
  {
    Row.containsNonNullValue.getter();
    if (v10)
    {
      return (*(a5 + 8))(v9);
    }

    else
    {
      *&v48 = v58;
      *(&v48 + 1) = v46;
      v49 = 2;

      RowDecodingContext.init(row:key:)(v5, &v48, &v50);
      sub_1B224B2E0();
      sub_1B2252CD0();

      *&v48 = 0x2065706F6373;
      *(&v48 + 1) = 0xE600000000000000;

      v18 = sub_1B2252330();
      MEMORY[0x1B2741EB0](v18);

      MEMORY[0x1B2741EB0](0xD00000000000001ALL, 0x80000001B22710F0);
      v47 = *(&v48 + 1);
      v58 = v48;

      v19 = sub_1B2183FE0();
      v20 = v51;
      v21 = v52;
      v22 = v55;
      v42 = v54;
      v23 = v56;
      v24 = v57;
      v25 = v53;
      v26 = sub_1B2113B50();
      sub_1B21841CC(v26, v27, v25);

      sub_1B211CF8C(v23);
      sub_1B218450C(&v50);
      sub_1B21A2FC0();
      sub_1B21152FC();
      v28 = v58;
      *v29 = a4;
      *(v29 + 8) = v28;
      *(v29 + 16) = v47;
      *(v29 + 24) = v19;
      *(v29 + 32) = v20;
      *(v29 + 40) = v21;
      *(v29 + 48) = v25;
      *(v29 + 56) = v42;
      *(v29 + 64) = v22;
      *(v29 + 72) = v23;
      *(v29 + 80) = v24;
      *(v29 + 88) = v48;
      *(v29 + 104) = 1;
      swift_willThrow();
    }
  }

  else
  {
    Row.scopes.getter();
    Row.ScopesTreeView.names.getter();
    v13 = v12;

    if (*(v13 + 16))
    {
      v14 = sub_1B2138D90();
      RowDecodingContext.init(row:key:)(v14, &v48, &v50);
      sub_1B224B2E0();
      sub_1B2252CD0();

      sub_1B214700C();
      v15 = sub_1B2252330();
      MEMORY[0x1B2741EB0](v15);

      MEMORY[0x1B2741EB0](0xD000000000000015, 0x80000001B22710D0);
      sub_1B219C744();

      v16 = sub_1B2115C84();
      MEMORY[0x1B2742080](v16);
      sub_1B224B434();
      v17 = sub_1B2116164();
    }

    else
    {

      v30 = sub_1B2138D90();
      RowDecodingContext.init(row:key:)(v30, &v48, &v50);
      sub_1B224B2E0();
      sub_1B2252CD0();

      sub_1B214700C();
      v17 = sub_1B2252330();
    }

    MEMORY[0x1B2741EB0](v17);

    v43 = *(&v48 + 1);
    v45 = v48;

    v31 = sub_1B2183FE0();
    v32 = v51;
    v33 = v52;
    v34 = v55;
    v41 = v54;
    v35 = v56;
    v36 = v57;
    v37 = v53;
    v38 = sub_1B2113B50();
    sub_1B21841CC(v38, v39, v37);

    sub_1B211CF8C(v35);
    sub_1B218450C(&v50);
    LOBYTE(v48) = 0;
    sub_1B21A2FC0();
    sub_1B21152FC();
    *v40 = v58;
    *(v40 + 8) = a2;
    *(v40 + 16) = 2;
    *(v40 + 24) = v45;
    *(v40 + 32) = v43;
    *(v40 + 40) = v31;
    *(v40 + 48) = v32;
    *(v40 + 56) = v33;
    *(v40 + 64) = v37;
    *(v40 + 72) = v41;
    *(v40 + 80) = v34;
    *(v40 + 88) = v35;
    *(v40 + 96) = v36;
    *(v40 + 104) = v48;
    swift_willThrow();
  }
}

uint64_t sub_1B2241D28@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  Row.scopes.getter();
  sub_1B2117214();
  v5 = Row.ScopesTreeView.subscript.getter();

  if (!v5)
  {
    goto LABEL_5;
  }

  Row.containsNonNullValue.getter();
  if ((v6 & 1) == 0)
  {

LABEL_5:
    v7 = 1;
    return sub_1B21117B4(a3, v7, 1, a1);
  }

  (*(a2 + 8))(v5, a1);
  v7 = 0;
  return sub_1B21117B4(a3, v7, 1, a1);
}

void sub_1B2241EA4()
{
  sub_1B2111640();
  v40 = v1;
  v42 = v2;
  v4 = v3;
  v6 = *(*(v5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111808(AssociatedTypeWitness);
  v9 = *(v8 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B21115FC();
  swift_beginAccess();
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v43[0] = v11;
  v43[1] = v12;

  v13 = Row.PrefetchedRowsView.subscript.getter();

  if (!v13)
  {
    if (*(sub_1B2157184() + 16))
    {
      v20 = sub_1B224B1A8();
      sub_1B213FF28(v20);
      sub_1B21325FC();
      sub_1B2252CD0();
      sub_1B224B5A0();

      v21 = sub_1B2252330();
      MEMORY[0x1B2741EB0](v21);

      MEMORY[0x1B2741EB0](v11 - 16, 0x80000001B2271090);
      sub_1B219C744();

      v22 = sub_1B2115C84();
      MEMORY[0x1B2742080](v22);
      sub_1B224B434();
      v23 = sub_1B2116164();
      MEMORY[0x1B2741EB0](v23);

      sub_1B224B188();
      sub_1B2183FE0();
      sub_1B224B558();
      v24 = v44;
      sub_1B2121270();
      v25 = sub_1B2113978();
      sub_1B211CF8C(v25);
      sub_1B218450C(v43);
      sub_1B21A2FC0();
      v26 = sub_1B21152FC();
      *v27 = v4;
      v27[1] = v40;
      sub_1B211AED0(v26, v27);
      sub_1B224B4E0(v28, v29);
      *(v31 + 72) = v24;
    }

    else
    {

      v32 = sub_1B224B1A8();
      sub_1B213FF28(v32);
      sub_1B21325FC();
      sub_1B2252CD0();

      v33 = sub_1B2252330();
      MEMORY[0x1B2741EB0](v33);

      sub_1B224B188();
      sub_1B2183FE0();
      sub_1B224B558();
      v39 = v44;
      sub_1B2121270();
      v34 = sub_1B2113978();
      sub_1B211CF8C(v34);
      sub_1B218450C(v43);
      sub_1B21A2FC0();
      v35 = sub_1B21152FC();
      *v36 = v4;
      v36[1] = v40;
      sub_1B211AED0(v35, v36);
      sub_1B224B4E0(v37, v38);
      *(v31 + 72) = v39;
    }

    sub_1B224B490(v30, v31);

    goto LABEL_14;
  }

  sub_1B2117214();
  sub_1B2252980();
  sub_1B2116B08(v13);
  sub_1B2252950();
  v41 = sub_1B2116B08(v13);
  if (!v41)
  {
LABEL_9:

LABEL_14:
    sub_1B2112FDC();
    return;
  }

  if (v41 >= 1)
  {
    v14 = 0;
    v15 = *(v42 + 8);
    v16 = v13 & 0xC000000000000001;
    v17 = v13;
    do
    {
      if (v16)
      {
        MEMORY[0x1B27427E0](v14, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v14 + 32);
      }

      ++v14;

      v15(v19, AssociatedTypeWitness, v42);
      sub_1B2252960();

      v13 = v17;
    }

    while (v41 != v14);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1B22422E0()
{
  sub_1B2111640();
  v49 = v1;
  v60 = v2;
  v53 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1B21115E0();
  v48 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  sub_1B21115FC();
  swift_beginAccess();
  v17 = *(v0 + 88);
  v58[0] = *(v0 + 80);
  v58[1] = v17;

  v18 = Row.PrefetchedRowsView.subscript.getter();

  if (!v18)
  {
    if (*(sub_1B2157184() + 16))
    {
      v28 = sub_1B224B1A8();
      sub_1B213FF28(v28);
      sub_1B21325FC();
      sub_1B2252CD0();
      sub_1B224B5A0();
      v52 = v9;
      v54 = v9;
      v55 = v7;

      v29 = sub_1B2252330();
      MEMORY[0x1B2741EB0](v29);

      MEMORY[0x1B2741EB0](v9 - 16, 0x80000001B2271090);
      sub_1B219C744();

      v30 = sub_1B2115C84();
      MEMORY[0x1B2742080](v30);
      sub_1B224B434();
      v31 = sub_1B2116164();
      MEMORY[0x1B2741EB0](v31);

      sub_1B224B188();
      sub_1B2183FE0();
      sub_1B224B558();
      v32 = v59;
      sub_1B2121270();
      v33 = sub_1B2113978();
      sub_1B211CF8C(v33);
      sub_1B218450C(v58);
      LOBYTE(v56) = 0;
      sub_1B21A2FC0();
      v34 = sub_1B21152FC();
      *v35 = v52;
      v35[1] = v7;
      sub_1B211AED0(v34, v35);
      sub_1B224B4E0(v36, v37);
      *(v39 + 72) = v32;
    }

    else
    {

      v40 = sub_1B224B1A8();
      sub_1B213FF28(v40);
      sub_1B21325FC();
      sub_1B2252CD0();

      v56 = v9;
      v57 = 0x80000001B2271060;
      v54 = v9;
      v55 = v7;

      v41 = sub_1B2252330();
      MEMORY[0x1B2741EB0](v41);

      sub_1B224B188();
      sub_1B2183FE0();
      sub_1B224B558();
      v51 = v59;
      sub_1B2121270();
      v42 = sub_1B2113978();
      sub_1B211CF8C(v42);
      sub_1B218450C(v58);
      LOBYTE(v56) = 0;
      sub_1B21A2FC0();
      v43 = sub_1B21152FC();
      *v44 = v9;
      v44[1] = v7;
      sub_1B211AED0(v43, v44);
      sub_1B224B4E0(v45, v46);
      *(v39 + 72) = v51;
    }

    sub_1B224B490(v38, v39);

    goto LABEL_15;
  }

  v19 = sub_1B2116B08(v18);
  v58[0] = MEMORY[0x1B27422D0](v19, v5, v60);
  v20 = sub_1B2116B08(v18);
  if (!v20)
  {
LABEL_9:

LABEL_15:
    sub_1B2122C74();
    sub_1B2112FDC();
    return;
  }

  v21 = v20;
  if (v20 >= 1)
  {
    v22 = 0;
    v51 = *(v53 + 8);
    v52 = v53 + 8;
    v50 = v18 & 0xC000000000000001;
    v23 = (v48 + 8);
    v24 = v18;
    do
    {
      if (v50)
      {
        v25 = sub_1B211F390();
        MEMORY[0x1B27427E0](v25);
      }

      else
      {
        v26 = *(v18 + 8 * v22 + 32);
      }

      ++v22;

      v51(v27, v5, v53);
      sub_1B2252810();
      sub_1B2111658();
      sub_1B2252800();

      (*v23)(v16, v5);
      v18 = v24;
    }

    while (v21 != v22);
    goto LABEL_9;
  }

  __break(1u);
}

void *Row.unscoped.getter()
{
  v1 = *v0;
  v2 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  v3 = *(v2 + 96);
  sub_1B224B2B4();
  sub_1B224B54C();
  v5 = v4();
  sub_1B21115FC();
  swift_beginAccess();
  if (*(v5[10] + 16))
  {
    v6 = v5[6];
    sub_1B21139A0(v5 + 2, v5[5]);
    v7 = *(v6 + 112);
    v8 = sub_1B2115FBC();
    v10 = v9(v8);
    sub_1B214D38C(v10 + 16, v23);

    v11 = v24;
    v12 = v25;
    sub_1B21A1628(v23, v24);
    sub_1B21115E0();
    v14 = *(v13 + 64);
    MEMORY[0x1EEE9AC00](v15);
    sub_1B2111844();
    (*(v18 + 16))(v17 - v16);
    v19 = sub_1B2138CAC();
    v21 = sub_1B224A5B4(v19, v20, v11, v12);

    sub_1B2113208(v23);
    return v21;
  }

  return v5;
}

uint64_t static Row.fetchSet<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B211E230(a1, a2, a3, a4);
  v6 = v5();
  if (!v4)
  {
    v15 = v25;
    if (v25)
    {
      v22 = 0uLL;

      v19 = static Row.fetchAll(_:arguments:adapter:)(v23, &v22, &v24);
      v20 = sub_1B2113978();
      v15(v20);
      sub_1B2168FE4(v19);
      v21 = sub_1B2113B50();
      sub_1B2112F4C(v21);
      sub_1B2142D18(&v23);
    }

    else
    {
      v16 = sub_1B224B280(v6, v7, v8, v9, v10, v11, v12, v13, v22, *(&v22 + 1), v23);
      static Row.fetchSet(_:arguments:adapter:)(v16, v17, v18);
      sub_1B2142D18(&v23);
    }
  }

  return sub_1B2122C74();
}

uint64_t sub_1B2242B58(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_10:
    if (*(a2 + 16))
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(a1 + 48) + ((v9 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];

      sub_1B211E590();
      LOBYTE(v14) = v15;

      if (v14)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return 1;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t Row.ScopesView.subscript.getter()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 8);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = *v1;
  v5 = v1[3];
  sub_1B211E590();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 36);
  Row.ScopesView.subscript.getter();
  v9 = v8;

  return v9;
}

BOOL static Row.PrefetchedRowsView.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  result = 0;
  if (sub_1B21B8000(*a1, *a2))
  {
    v4 = sub_1B2112FD0();
    sub_1B21D34AC(v4, v5);
    if (v6)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B2242D54(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (!a1)
  {
    v5 = v1[5];
    v6 = v1[6];
    sub_1B21139A0(v1 + 2, v5);
    v7 = (*(v6 + 104))(v1, v5, v6);
    static Row.== infix(_:_:)(v1, v7, v8, v9, v10, v11, v12, v13, v61, v62, v64, v67, v69, v70, v71, v72, v73, *(&v73 + 1), v74, v75);
    v15 = v14;

    if (v15)
    {
      swift_beginAccess();
      if (!*(v2[10] + 16))
      {
        return Row.description.getter();
      }
    }
  }

  v16 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    if (v16 < 0)
    {
      goto LABEL_31;
    }

    v76 = a1 + 1;
    v77 = 8224;
    v78 = 0xE200000000000000;
    sub_1B21619D8(&qword_1EB7A2330, &qword_1B225EC10);
    sub_1B211ABBC(&qword_1ED85DA30);
    v17 = sub_1B2252250();
    v19 = v18;

    v20 = Row.description.getter();
    v68 = v2;
    if (a1)
    {
      v79 = v20;
      v80 = v21;
    }

    else
    {
      v76 = 549426914;
      v77 = 0xA400000000000000;
      MEMORY[0x1B2741EB0](v20, v21);

      v79 = 549426914;
      v80 = 0xA400000000000000;
      v22 = v2[5];
      v23 = v2[6];
      sub_1B21139A0(v2 + 2, v22);
      v24 = (*(v23 + 104))(v2, v22, v23);
      static Row.== infix(_:_:)(v2, v24, v25, v26, v27, v28, v29, v30, v61, v62, v64, v2, v69, v70, v71, v72, v73, *(&v73 + 1), v74, v75);
      if ((v31 & 1) == 0)
      {
        MEMORY[0x1B2741EB0](v17, v19);

        MEMORY[0x1B2741EB0](0x6574706164616E75, 0xEB00000000203A64);

        v32 = Row.description.getter();
        v34 = v33;
        v76 = 10;
        v77 = 0xE100000000000000;

        MEMORY[0x1B2741EB0](v32, v34);

        MEMORY[0x1B2741EB0](10, 0xE100000000000000);
      }
    }

    Row.scopes.getter();
    *&v73 = sub_1B2131C40(v76, v77);
    sub_1B2249A6C(&v73);

    v35 = *(v73 + 16);
    v36 = v17;
    v65 = v16;
    if (v35)
    {
      v37 = (v73 + 48);
      do
      {
        v39 = *(v37 - 2);
        v38 = *(v37 - 1);
        v40 = *v37;
        v37 += 3;
        v76 = 10;
        v77 = 0xE100000000000000;

        MEMORY[0x1B2741EB0](v36, v19);

        MEMORY[0x1B2741EB0](8237, 0xE200000000000000);

        MEMORY[0x1B2741EB0](v39, v38);

        MEMORY[0x1B2741EB0](8250, 0xE200000000000000);

        v41 = v76;
        v42 = v77;
        v43 = sub_1B2242D54(v65);
        v45 = v44;
        v76 = v41;
        v77 = v42;

        MEMORY[0x1B2741EB0](v43, v45);

        MEMORY[0x1B2741EB0](v76, v77);

        --v35;
      }

      while (v35);
    }

    v63 = v36;
    v66 = v19;

    swift_beginAccess();
    v73 = *(v68 + 5);
    Row.PrefetchedRowsView.keys.getter();
    sub_1B219C744();
    v4 = v46;

    v47 = 0;
    v48 = v4[2];
    for (i = v4 + 5; ; i += 2)
    {
      if (v48 == v47)
      {

        return v79;
      }

      if (v47 >= v4[2])
      {
        break;
      }

      v51 = *(i - 1);
      v50 = *i;
      v52 = v68[11];
      *&v73 = v68[10];
      *(&v73 + 1) = v52;

      v53 = Row.PrefetchedRowsView.subscript.getter();

      if (!v53)
      {
        goto LABEL_32;
      }

      if (v53 >> 62)
      {
        v54 = sub_1B2252C20();
      }

      else
      {
        v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v54)
      {
        if (v54 == 1)
        {
          v55 = 0x776F722031;
          v56 = 0xE500000000000000;
        }

        else
        {
          *&v73 = sub_1B2252FD0();
          *(&v73 + 1) = v57;
          MEMORY[0x1B2741EB0](0x73776F7220, 0xE500000000000000);
          v56 = *(&v73 + 1);
          v55 = v73;
        }
      }

      else
      {
        v56 = 0xE500000000000000;
        v55 = 0x776F722030;
      }

      *&v73 = 10;
      *(&v73 + 1) = 0xE100000000000000;
      MEMORY[0x1B2741EB0](v63, v66);

      MEMORY[0x1B2741EB0](8235, 0xE200000000000000);

      MEMORY[0x1B2741EB0](v51, v50);

      v58 = v73;
      *&v73 = 8250;
      *(&v73 + 1) = 0xE200000000000000;
      MEMORY[0x1B2741EB0](v55, v56);

      v59 = v73;
      v73 = v58;

      MEMORY[0x1B2741EB0](v59, *(&v59 + 1));

      MEMORY[0x1B2741EB0](v73, *(&v73 + 1));

      ++v47;
    }

    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);

  __break(1u);
  return result;
}

Swift::Int sub_1B22434A4@<X0>(GRDBInternal::RowIndex a1@<X0>, Swift::Int *a2@<X8>)
{
  result = RowIndex.distance(to:)(a1);
  *a2 = result;
  return result;
}

Swift::Int __swiftcall RowIndex.distance(to:)(GRDBInternal::RowIndex to)
{
  v2 = __OFSUB__(*to.index, *v1);
  result = *to.index - *v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

GRDBInternal::RowIndex __swiftcall RowIndex.advanced(by:)(GRDBInternal::RowIndex by)
{
  if (__OFADD__(*v2, by.index))
  {
    __break(1u);
  }

  else
  {
    sub_1B211815C(v1);
  }

  return by;
}

void *sub_1B224352C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (__OFADD__(a4, a6))
  {
    __break(1u);
  }

  else
  {
    *result = a4 + a6;
    return 0;
  }

  return result;
}

uint64_t Row.ScopesView.endIndex.getter()
{
  v1 = *(v0 + 8);
  result = 1 << *(v1 + 32);
  v3 = *(v1 + 36);
  return result;
}

void Row.ScopesView.subscript.getter()
{
  sub_1B2111F14();
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  sub_1B2243724(v30, v5, v6, v4 & 1, v0[1]);
  v7 = type metadata accessor for Row();
  sub_1B214D38C(v30, v27);
  v8 = v28;
  v9 = v29;
  sub_1B21A1628(v27, v28);
  sub_1B21115E0();
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B2111844();
  v15 = v14 - v13;
  (*(v16 + 16))(v14 - v13);

  v18 = sub_1B21B64A0(v17, v15, v7, v8, v9);
  sub_1B2113208(v27);
  v19 = sub_1B2112FD0();
  sub_1B218F9CC(v19, v20, v2, v3);
  v22 = v21;
  v24 = v23;
  sub_1B2113208(v30);
  if (v22)
  {

    sub_1B21118B8();
    swift_beginAccess();
    v26 = *(v18 + 80);
    v25 = *(v18 + 88);
    *(v18 + 80) = v22;
    *(v18 + 88) = v24;
  }

  sub_1B2112FD0();
  sub_1B2111588();
}

uint64_t sub_1B2243724(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    sub_1B214D38C(*(a5 + 56) + 40 * a2, result);

    return sub_1B2112FD0();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B22437B0@<X0>(uint64_t a1@<X8>)
{
  result = Row.ScopesView.startIndex.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1B22437E0@<X0>(uint64_t a1@<X8>)
{
  result = Row.ScopesView.endIndex.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  return result;
}

uint64_t (*sub_1B224380C(void *a1, uint64_t *a2))(uint64_t a1)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  Row.ScopesView.subscript.getter();
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v8;
  return sub_1B2243860;
}

uint64_t sub_1B2243860(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
}

uint64_t sub_1B224389C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return sub_1B223CE94(&v5, *v2, v2[1], v2[2], v2[3], a2);
}

uint64_t sub_1B22438E4()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_1B223C26C(*v0, v0[1]);
}

uint64_t sub_1B22438FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[3];
  result = sub_1B223D070(*a1, *(a1 + 8), *(a1 + 16), a2, *v3, v3[1]);
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  return result;
}

uint64_t sub_1B2243944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[3];
  result = sub_1B223D208(*a1, *(a1 + 8), *(a1 + 16), a2, *a3, *(a3 + 8), *(a3 + 16), *v4, v4[1]);
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  return result;
}

unint64_t sub_1B22439A8(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v5 = v2[3];
  return sub_1B21268D4(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16), *v2, v2[1]);
}

uint64_t sub_1B2243A1C(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, __int128 *, void, void, void, void))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = a2[1];
  v11 = *a2;
  v12[0] = v9;
  *(v12 + 9) = *(a2 + 25);
  return a5(v6, v7, v8, &v11, *v5, v5[1], v5[2], v5[3]);
}

uint64_t sub_1B2243A70(__int128 *a1, __int128 *a2)
{
  v3 = a1[1];
  v10 = *a1;
  v11[0] = v3;
  *(v11 + 9) = *(a1 + 25);
  v4 = a2[1];
  v12 = *a2;
  v13[0] = v4;
  *(v13 + 9) = *(a2 + 25);
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  return sub_1B223D4C0(&v10, &v12);
}

uint64_t sub_1B2243AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = Row.ScopesView.index(after:)(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void sub_1B2243AFC()
{
  sub_1B2123510();
  v2 = v1;
  v3 = *(v0 + 8);
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  v7 = sub_1B2114748();
  v11 = sub_1B224A534(v7, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v16 = sub_1B2114748();
  sub_1B21268C8(v16, v17, v18);
  *v2 = v11;
  v2[1] = v13;
  *(v2 + 16) = v15 & 1;
  sub_1B2115ED4();
}

void sub_1B2243B60()
{
  sub_1B2123510();
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  v6 = v0[2];
  v5 = v0[3];
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v6;
  v1[3] = v5;

  v7 = sub_1B2131D90(v4);
  v9 = v8;
  v11 = v10;

  v2[4] = v7;
  v2[5] = v9;
  *(v2 + 48) = v11 & 1;
  sub_1B2115ED4();
}

const void *sub_1B2243C00()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_1B2184060(*v0, v0[1]);
}

uint64_t sub_1B2243C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v7 = sub_1B21146D8();
    v9 = sub_1B21B808C(v7, v8);

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (sub_1B21B8000(a2, a5))
  {
    v10 = sub_1B2115C84();
    sub_1B21D34AC(v10, v11);
    if (v12)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B2243CD0(uint64_t result, void *a2)
{
  if (a2[2])
  {
    v3 = v2;
    v4 = result;
    v6 = a2[4];
    v5 = a2[5];

    sub_1B21777AC(0, 1);
    if (a2[2])
    {
      v7 = sub_1B211DF80(MEMORY[0x1E69E7CC0]);
      v9 = v8;
      v10 = *v3;
      v11 = v3[1];
      v12 = sub_1B2138CAC();
      v16 = sub_1B223CE18(v12, v13, 0, v7, v9, v14, v15);
      v18 = v17;
      v20 = v19;

      v21 = sub_1B224B29C();
      sub_1B2243CD0(v21);

      v22 = sub_1B218FABC(v16, v18, v20, v6, v5);
    }

    else
    {

      v24 = sub_1B211DF80(MEMORY[0x1E69E7CC0]);
      v26 = v25;
      v27 = *v3;
      v28 = v3[1];
      v29 = sub_1B2138CAC();
      sub_1B223CE18(v29, v30, 0, v24, v26, v31, v32);
      v34 = v33;
      v36 = v35;

      v22 = sub_1B218FABC(v4, v34, v36, v6, v5);
    }

    sub_1B224B04C(v22, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1B2243EB0(_BOOL8 result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v2 = a2 + 40 * result;
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);

  sub_1B2113A20(v4, v5, v6);

  v8 = v6 == 4 && (v5 | v4) == 0;
  sub_1B2113A44(v4, v5, v6);
  return v8;
}

BOOL sub_1B2243FA0(_BOOL8 result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v2 = a2 + 24 * result;
  v4 = *(v2 + 48) == 4;
  v3 = *(v2 + 40) | *(v2 + 32);
  return v4 && v3 == 0;
}

void sub_1B2243FDC()
{
  sub_1B2123510();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1B21115E0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2111844();
  v17 = v16 - v15;
  type metadata accessor for Row();
  (*(v11 + 16))(v17, v7, v3);
  v18 = sub_1B2113978();
  v20 = sub_1B224A5B4(v18, v19, v3, v1);
  v21 = v5;
  v22 = 1;
  RowDecodingContext.init(row:key:)(v20, &v21, v9);
  sub_1B2115ED4();
}

void sub_1B22440CC(unint64_t a1, uint64_t a2)
{
  v5 = sub_1B22522F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v29 = v2;
  v10 = a2 + 40 * a1;
  v12 = *(v10 + 40);
  v11 = *(v10 + 48);
  v13 = *(v10 + 56);
  v14 = *(v10 + 64);

  sub_1B2113A20(v11, v13, v14);

  if (v14 != 3)
  {
    if (v14 == 2 && (sub_1B22522E0(), v21 = sub_1B22522B0(), v16 = v15, (*(v6 + 8))(v9, v5), v16 >> 60 != 15))
    {
      sub_1B2113A44(v11, v13, 2);
    }

    else
    {
      type metadata accessor for Row();
      v17 = swift_allocObject();

      v19 = sub_1B21840C8(v18, v17);
      v25 = a1;
      LOBYTE(v26) = 1;
      RowDecodingContext.init(row:key:)(v19, &v25, v24);
      v22[0] = v11;
      v22[1] = v13;
      v23 = v14;
      sub_1B21A2FC0();
      swift_allocError();
      sub_1B2183238(MEMORY[0x1E6969080], v24, v22, v20);
      v25 = v24[0];
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      sub_1B218450C(&v25);
      swift_willThrow();
      sub_1B2113A44(v11, v13, v14);
    }
  }
}

void sub_1B2244314(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B22522F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v30 = a3;
  v12 = a2 + 24 * a1;
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  v15 = *(v12 + 48);
  if (v15 == 3)
  {
    sub_1B2113A20(*(v12 + 32), *(v12 + 40), 3);
  }

  else
  {
    if (v15 == 2)
    {
      v22[2] = v3;
      sub_1B2113A20(v13, v14, 2);
      sub_1B22522E0();
      v22[1] = sub_1B22522B0();
      v17 = v16;
      (*(v8 + 8))(v11, v7);
      if (v17 >> 60 != 15)
      {
        sub_1B2113A44(v13, v14, 2);
        return;
      }
    }

    else
    {
      sub_1B2113A20(*(v12 + 32), *(v12 + 40), *(v12 + 48));
    }

    type metadata accessor for Row();
    v18 = swift_allocObject();

    v19 = v30;

    v20 = sub_1B211EF2C(a2, v19, v18);
    v26 = a1;
    LOBYTE(v27) = 1;
    RowDecodingContext.init(row:key:)(v20, &v26, v25);
    v23[0] = v13;
    v23[1] = v14;
    v24 = v15;
    sub_1B21A2FC0();
    swift_allocError();
    sub_1B2183238(MEMORY[0x1E6969080], v25, v23, v21);
    v26 = v25[0];
    v27 = v25[1];
    v28 = v25[2];
    v29 = v25[3];
    sub_1B218450C(&v26);
    swift_willThrow();
    sub_1B2113A44(v13, v14, v15);
  }
}

unint64_t sub_1B2244590(unint64_t result, uint64_t a2)
{
  v12 = a2;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = a2 + 40 * result;
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  v7 = *(v4 + 56);
  v8 = *(v4 + 64);

  sub_1B2113A20(v6, v7, v8);

  MEMORY[0x1EEE9AC00](v9);
  v10[2] = &v12;
  v10[3] = v3;
  sub_1B223DDFC(v6, v7, v8, sub_1B224B00C, v10, &v11);
  result = sub_1B2113A44(v6, v7, v8);
  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t sub_1B224469C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v11[0] = a2;
  v11[1] = a3;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = a2 + 24 * result;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  MEMORY[0x1EEE9AC00](result);
  v9[2] = v11;
  v9[3] = v8;
  sub_1B2113A20(v5, v6, v7);
  sub_1B223DDFC(v5, v6, v7, sub_1B224B120, v9, &v10);
  result = sub_1B2113A44(v5, v6, v7);
  if (!v3)
  {
    return v10;
  }

  return result;
}

unint64_t sub_1B2244794@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v4 = a2 + 40 * result;
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = *(v4 + 56);
    v8 = *(v4 + 64);

    v9 = sub_1B213CEBC();
    sub_1B2113A20(v9, v10, v11);

    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B2244810(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = a2 + 40 * result;
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = *(v2 + 56);
    v7 = *(v2 + 64);

    v8 = sub_1B213CEBC();
    sub_1B2113A20(v8, v9, v10);
    v11 = sub_1B213CEBC();
    sub_1B2113A44(v11, v12, v13);
    return sub_1B2112FD0();
  }

  __break(1u);
  return result;
}

void sub_1B2244884()
{
  sub_1B2123510();
  v1 = v0;
  v2 = sub_1B2252220();
  v4 = v3;
  v5 = 0;
  v6 = *(v1 + 16);
  v7 = (v1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    if (sub_1B2252220() == v2 && v10 == v4)
    {

      break;
    }

    v12 = sub_1B22531F0();

    if (v12)
    {
      break;
    }

    ++v5;
    v7 += 5;
  }

  sub_1B2115ED4();
}

uint64_t sub_1B22449CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B2252220();
  v7 = v6;
  v8 = 0;
  v9 = *(a4 + 16);
  for (i = (a4 + 40); ; i += 2)
  {
    if (v9 == v8)
    {
      v16 = 0;
      goto LABEL_12;
    }

    v11 = *(i - 1);
    v12 = *i;
    if (sub_1B2252220() == v5 && v13 == v7)
    {
      break;
    }

    v15 = sub_1B22531F0();

    if (v15)
    {
      goto LABEL_11;
    }

    ++v8;
  }

LABEL_11:
  v16 = v8;
LABEL_12:

  return v16;
}

uint64_t sub_1B2244AA4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B219B190();
}

void sub_1B2244B34(uint64_t a1@<X1>, uint64_t a2@<X2>, sqlite3_stmt *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v25 = a6;
  v15 = sub_1B2252B00();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v22 - v19;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v22 = v18;
  v23 = v17;
  v24 = a8;
  MEMORY[0x1EEE9AC00](v17);
  *(&v22 - 4) = a2;
  *(&v22 - 3) = a3;
  *(&v22 - 2) = a4;
  *(&v22 - 1) = a1;
  v21 = sqlite3_column_type(a3, a1);
  if (v21 == 5)
  {
LABEL_6:
    MEMORY[0x1EEE9AC00](v21);
    *(&v22 - 2) = sub_1B224B100;
    *(&v22 - 1) = (&v22 - 6);
    static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(a3, a1, sub_1B222EEEC, (&v22 - 4), a5);
    return;
  }

  (*(a7 + 8))(a3, a1, a5, a7);
  if (sub_1B2122A98(v20, 1, a5) == 1)
  {
    v21 = (*(v22 + 8))(v20, v23);
    goto LABEL_6;
  }

  (*(*(a5 - 8) + 32))(v24, v20, a5);
}

void sub_1B2244D7C(uint64_t a1@<X1>, uint64_t a2@<X2>, sqlite3_stmt *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v23[1] = a6;
  v24 = a7;
  v25 = a8;
  v13 = sub_1B2252B00();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = v23 - v17;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v23[0] = v16;
  MEMORY[0x1EEE9AC00](v15);
  v23[-4] = a2;
  v23[-3] = a3;
  v23[-2] = a4;
  v23[-1] = a1;
  if (sqlite3_column_type(a3, a1) == 5)
  {
    v19 = v25;
    v20 = 1;
  }

  else
  {
    (*(v24 + 8))(a3, a1, a5, v24);
    if (sub_1B2122A98(v18, 1, a5) == 1)
    {
      v21 = (*(v23[0] + 8))(v18, v13);
      MEMORY[0x1EEE9AC00](v21);
      v23[-2] = sub_1B224B128;
      v23[-1] = &v23[-6];
      static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(a3, a1, sub_1B222EEEC, &v23[-4], a5);
      return;
    }

    v22 = v25;
    (*(*(a5 - 8) + 32))(v25, v18, a5);
    v19 = v22;
    v20 = 0;
  }

  sub_1B21117B4(v19, v20, 1, a5);
}

void sub_1B224508C(uint64_t a1, void *a2, sqlite3_stmt *a3)
{
  v6 = sub_1B2251D80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (sqlite3_column_type(a3, a1) == 5)
  {
    sub_1B21A2FC0();
    swift_allocError();
    sub_1B2183444(MEMORY[0x1E6969080], a2, a1, v11);
    swift_willThrow();
  }

  else
  {
    v12 = sqlite3_column_blob(a3, a1);
    if (v12)
    {
      v13 = v12;
      v14 = sqlite3_column_bytes(a3, a1);
      (*(v7 + 104))(v10, *MEMORY[0x1E6969010], v6);
      MEMORY[0x1B2741870](v13, v14, v10);
    }
  }
}

void sub_1B2245228(uint64_t a1, uint64_t a2, sqlite3_stmt *a3)
{
  v5 = sub_1B2251D80();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (sqlite3_column_type(a3, a1) != 5)
  {
    v10 = sqlite3_column_blob(a3, a1);
    if (v10)
    {
      v11 = v10;
      v12 = sqlite3_column_bytes(a3, a1);
      (*(v6 + 104))(v9, *MEMORY[0x1E6969010], v5);
      MEMORY[0x1B2741870](v11, v12, v9);
    }
  }
}

uint64_t sub_1B2245388(unint64_t a1)
{
  result = Statement.columnNames.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v3 = result + 16 * a1;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2245400()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1B219B190();
}

uint64_t sub_1B224540C(unint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_1B2245388(a1);
}

char *sub_1B2245534(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

char *sub_1B224555C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[176 * a2] <= a3)
  {
    return sub_1B2116900(result, a3, 176 * a2);
  }

  return result;
}

char *sub_1B224557C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[232 * a2] <= a3)
  {
    return sub_1B2116900(result, a3, 232 * a2);
  }

  return result;
}

char *sub_1B224559C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[208 * a2] <= a3)
  {
    return sub_1B2116900(result, a3, 208 * a2);
  }

  return result;
}

char *sub_1B22455BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

char *sub_1B22455E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[216 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

void sub_1B224560C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B21619D8(&qword_1EB7A1BB8, &unk_1B226C230);
  v51 = a2;
  v7 = sub_1B2252EF0();
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v49 = v2;
  v50 = v5;
  v8 = 0;
  v10 = v5 + 64;
  v9 = *(v5 + 64);
  v11 = *(v5 + 32);
  sub_1B21154D4();
  v15 = (v14 + 63) >> 6;
  v16 = v7 + 64;
  if ((v13 & v12) == 0)
  {
LABEL_6:
    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v15)
      {
        break;
      }

      ++v20;
      if (*(v10 + 8 * v8))
      {
        sub_1B211667C();
        v52 = v22 & v21;
        goto LABEL_11;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_32;
    }

    v43 = *(v5 + 32);
    sub_1B2113108();
    v3 = v49;
    if (v45 != v46)
    {
      sub_1B211E564(v44);
    }

    else
    {
      v47 = sub_1B2122A88();
      sub_1B2148CEC(v47, v48, v10);
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    sub_1B2135344();
    v52 = v19;
LABEL_11:
    v23 = v17 | (v8 << 6);
    v24 = (*(v5 + 48) + 16 * v23);
    v25 = v24[1];
    v53 = *v24;
    v26 = (*(v5 + 56) + v23 * v18);
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[2];
    if ((v51 & 1) == 0)
    {
    }

    v30 = *(v7 + 40);
    sub_1B2253420();
    sub_1B2252370();
    v31 = sub_1B2253470();
    sub_1B211647C(v31);
    v33 = *(v16 + 8 * v32);
    sub_1B213CF74();
    if (v34)
    {
      break;
    }

    sub_1B2112110();
LABEL_23:
    sub_1B2111AE8();
    *(v16 + v38) |= v39;
    v41 = *(v7 + 48) + 16 * v40;
    sub_1B224B58C(v40);
    *v42 = v27;
    v42[1] = v28;
    v42[2] = v29;
    sub_1B212D15C();
    v5 = v50;
    if (!v52)
    {
      goto LABEL_6;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v34)
    {
      if (v36)
      {
        break;
      }
    }

    if (v35 == v37)
    {
      v35 = 0;
    }

    if (*(v16 + 8 * v35) != -1)
    {
      sub_1B2118398();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1B2245854()
{
  sub_1B2111F14();
  v3 = v0;
  v5 = v4;
  sub_1B21181AC(v6);
  sub_1B21619D8(&qword_1EB7A1BC8, &qword_1B2259958);
  sub_1B2115F64();
  sub_1B2252EF0();
  sub_1B224B1C8();
  if (!v7)
  {
LABEL_30:

    *v3 = v5;
    sub_1B2111588();
    return;
  }

  v40 = v1;
  v8 = 0;
  v10 = v1 + 64;
  v9 = *(v1 + 64);
  v11 = *(v1 + 32);
  sub_1B21154D4();
  sub_1B212D708();
  v12 = v5 + 64;
  if (!v2)
  {
LABEL_4:
    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v3)
      {
        break;
      }

      ++v14;
      if (*(v10 + 8 * v8))
      {
        sub_1B211667C();
        v2 = v16 & v15;
        goto LABEL_9;
      }
    }

    if (v5)
    {
      sub_1B211DAB8();
      if (v36 != v37)
      {
        sub_1B211E564(v35);
      }

      else
      {
        v38 = sub_1B2122A88();
        sub_1B2148CEC(v38, v39, v10);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_1B21140F0();
LABEL_9:
    sub_1B21131E8(v13 | (v8 << 6));
    if (v5)
    {
      v19 = (v18 + 176 * v17);
      v20 = *v19;
      memcpy(v44, v19 + 1, sizeof(v44));
      v41 = *(v19 + 170);
    }

    else
    {
      memcpy(__dst, (v18 + 176 * v17), 0xABuLL);
      v41 = BYTE2(__dst[21]);
      v20 = __dst[0];

      sub_1B21818BC(__dst, v42);
      memcpy(v44, &__dst[1], sizeof(v44));
    }

    v21 = *(v5 + 40);
    sub_1B2253420();
    sub_1B224B2A8();
    sub_1B2252370();
    v22 = sub_1B2253470();
    sub_1B211647C(v22);
    v24 = *(v12 + 8 * v23);
    sub_1B213CF74();
    if (v25)
    {
      break;
    }

    sub_1B2112110();
LABEL_22:
    sub_1B2111AE8();
    *(v12 + v29) |= v30;
    sub_1B211EB30(v31);
    v34 = v33 + 176 * v32;
    *v34 = v20;
    memcpy((v34 + 8), v44, 0xA2uLL);
    *(v34 + 170) = v41;
    sub_1B212D15C();
    v1 = v40;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v25)
    {
      if (v27)
      {
        break;
      }
    }

    if (v26 == v28)
    {
      v26 = 0;
    }

    sub_1B212E31C(v26);
    if (!v25)
    {
      sub_1B2118398();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1B2245A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1B2122614();
  v17 = v12;
  v19 = v18;
  sub_1B21181AC(v20);
  sub_1B21619D8(&qword_1EB7A2168, &unk_1B226ACD0);
  sub_1B2115F64();
  sub_1B2146FA8();
  sub_1B224B1C8();
  if (!v21)
  {
LABEL_29:

LABEL_30:
    *v17 = v19;
    sub_1B2115CEC();
    return;
  }

  v48 = v13;
  v22 = 0;
  v24 = v13 + 64;
  v23 = *(v13 + 64);
  v25 = *(v13 + 32);
  sub_1B21154D4();
  sub_1B212D708();
  if (!v14)
  {
LABEL_4:
    v27 = v22;
    while (1)
    {
      v22 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v22 >= v12)
      {
        break;
      }

      ++v27;
      if (*(v24 + 8 * v22))
      {
        sub_1B211667C();
        v14 = v29 & v28;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v17 = v12;
      goto LABEL_30;
    }

    sub_1B211DAB8();
    v17 = v12;
    if (v44 != v45)
    {
      sub_1B211E564(v43);
    }

    else
    {
      v46 = sub_1B2122A88();
      sub_1B2148CEC(v46, v47, v24);
    }

    *(v13 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_1B21140F0();
LABEL_9:
    sub_1B21131E8(v26 | (v22 << 6));
    v32 = *(v31 + 8 * v30);
    if ((a12 & 1) == 0)
    {
    }

    sub_1B224B4B4();
    sub_1B224B2A8();
    sub_1B2252370();
    v33 = sub_1B2253470();
    sub_1B211647C(v33);
    v35 = *(v19 + 64 + 8 * v34);
    sub_1B213CF74();
    if (v36)
    {
      break;
    }

    sub_1B2112110();
LABEL_21:
    sub_1B2111AE8();
    sub_1B213CBD0();
    v42 = (v41 + 16 * v40);
    *v42 = v15;
    v42[1] = v16;
    *(*(v19 + 56) + 8 * v40) = v32;
    sub_1B212D15C();
    v13 = v48;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v36)
    {
      if (v38)
      {
        break;
      }
    }

    if (v37 == v39)
    {
      v37 = 0;
    }

    sub_1B212E31C(v37);
    if (!v36)
    {
      sub_1B2118398();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1B2245C80(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_1B21619D8(a3, a4);
  sub_1B2138CAC();
  v51 = a2;
  v10 = sub_1B2252EF0();
  if (!*(v8 + 16))
  {
LABEL_31:

LABEL_32:
    *v6 = v10;
    return;
  }

  v48 = v5;
  v11 = 0;
  v13 = (v8 + 64);
  v12 = *(v8 + 64);
  v14 = *(v8 + 32);
  sub_1B21154D4();
  v18 = (v17 + 63) >> 6;
  v50 = v8;
  if ((v16 & v15) == 0)
  {
LABEL_6:
    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v11 >= v18)
      {
        break;
      }

      ++v22;
      if (v13[v11])
      {
        sub_1B211667C();
        v52 = v24 & v23;
        goto LABEL_11;
      }
    }

    if ((v51 & 1) == 0)
    {

      v6 = v48;
      goto LABEL_32;
    }

    v42 = *(v8 + 32);
    sub_1B2113108();
    v6 = v48;
    if (v43 != v44)
    {
      sub_1B2113B98();
      *v13 = v45;
    }

    else
    {
      v46 = sub_1B2122A88();
      sub_1B2148CEC(v46, v47, v13);
    }

    *(v8 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    sub_1B2135344();
    v52 = v21;
LABEL_11:
    v25 = v19 | (v11 << 6);
    v26 = (*(v8 + 48) + 16 * v25);
    v27 = v26[1];
    v53 = *v26;
    v28 = (*(v8 + 56) + v25 * v20);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(v28 + 16);
    if ((v51 & 1) == 0)
    {

      a5(v29, v30, v31);
    }

    v32 = *(v10 + 40);
    sub_1B2253420();
    sub_1B2252370();
    v33 = sub_1B2253470();
    sub_1B211647C(v33);
    v35 = *(v10 + 64 + 8 * v34);
    sub_1B213CF74();
    if (v36)
    {
      break;
    }

    sub_1B2112110();
LABEL_23:
    sub_1B2111AE8();
    sub_1B212D8C4();
    sub_1B224B58C(v40);
    *v41 = v29;
    *(v41 + 8) = v30;
    *(v41 + 16) = v31;
    sub_1B212D15C();
    v8 = v50;
    if (!v52)
    {
      goto LABEL_6;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v36)
    {
      if (v38)
      {
        break;
      }
    }

    if (v37 == v39)
    {
      v37 = 0;
    }

    sub_1B2134C2C(v37);
    if (!v36)
    {
      sub_1B2118398();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1B2245EB4()
{
  sub_1B2111F14();
  v3 = v0;
  v5 = v4;
  sub_1B21181AC(v6);
  sub_1B21619D8(&qword_1EB7A1BE8, &qword_1B226C280);
  sub_1B2115F64();
  sub_1B2146FA8();
  sub_1B224B1C8();
  if (!v7)
  {
LABEL_30:

LABEL_31:
    *v3 = v5;
    sub_1B2111588();
    return;
  }

  v42 = v1;
  v8 = 0;
  v10 = v1 + 64;
  v9 = *(v1 + 64);
  v11 = *(v1 + 32);
  sub_1B21154D4();
  sub_1B212D708();
  v12 = v5 + 64;
  if (!v2)
  {
LABEL_4:
    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v0)
      {
        break;
      }

      ++v14;
      if (*(v10 + 8 * v8))
      {
        sub_1B211667C();
        v2 = v16 & v15;
        goto LABEL_9;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v0;
      goto LABEL_31;
    }

    sub_1B211DAB8();
    v3 = v0;
    if (v38 != v39)
    {
      sub_1B211E564(v37);
    }

    else
    {
      v40 = sub_1B2122A88();
      sub_1B2148CEC(v40, v41, v10);
    }

    *(v1 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_1B21140F0();
LABEL_9:
    sub_1B21131E8(v13 | (v8 << 6));
    if (v43)
    {
      v20 = (v18 + v17 * v19);
      v62 = *(v20 + 8);
      v63 = *(v20 + 24);
      v60 = *v20;
      v61 = v20[40];
      v44 = *(v20 + 8);
      v47 = *(v20 + 72);
      v45 = *(v20 + 11);
      v46 = *(v20 + 7);
      v21 = *(v20 + 12);
      v48 = v21;
      v49 = *(v20 + 6);
      v51 = *(v20 + 13);
      v50 = v20[112];
      v52 = *(v20 + 120);
      v53 = *(v20 + 136);
      v55 = v20[152];
      v56 = *(v20 + 11);
      v54 = *(v20 + 10);
      v58 = *(v20 + 25);
      v59 = *(v20 + 24);
      v57 = v20[208];
      v22 = v20[209];
    }

    else
    {
      memcpy(__dst, (v18 + v17 * v19), 0xD2uLL);
      v62 = *(__dst + 8);
      v63 = *(&__dst[1] + 8);
      v60 = __dst[0];
      v61 = BYTE8(__dst[2]);
      v58 = *(&__dst[12] + 1);
      v59 = *&__dst[12];
      v57 = __dst[13];
      v22 = BYTE1(__dst[13]);
      v56 = __dst[11];
      v55 = BYTE8(__dst[9]);
      v53 = *(&__dst[8] + 8);
      v54 = __dst[10];
      v52 = *(&__dst[7] + 8);
      v50 = __dst[7];
      v51 = *(&__dst[6] + 1);
      v47 = *(&__dst[4] + 8);
      v48 = *&__dst[6];
      v49 = *&__dst[3];
      v45 = *(&__dst[5] + 1);
      v46 = *(&__dst[3] + 1);
      v44 = *&__dst[4];

      sub_1B2181728(__dst, v64);
    }

    v23 = *(v5 + 40);
    sub_1B2253420();
    sub_1B224B2A8();
    sub_1B2252370();
    v24 = sub_1B2253470();
    sub_1B211647C(v24);
    v26 = *(v12 + 8 * v25);
    sub_1B213CF74();
    if (v27)
    {
      break;
    }

    sub_1B2112110();
LABEL_22:
    LOBYTE(__dst[0]) = v22;
    sub_1B2111AE8();
    *(v12 + v31) |= v32;
    sub_1B211EB30(v33);
    v36 = v35 + 216 * v34;
    *v36 = v60;
    *(v36 + 24) = v63;
    *(v36 + 8) = v62;
    *(v36 + 40) = v61;
    *(v36 + 48) = v49;
    *(v36 + 56) = v46;
    *(v36 + 64) = v44;
    *(v36 + 72) = v47;
    *(v36 + 88) = v45;
    *(v36 + 96) = v48;
    *(v36 + 104) = v51;
    *(v36 + 112) = v50;
    *(v36 + 120) = v52;
    *(v36 + 136) = v53;
    *(v36 + 152) = v55;
    *(v36 + 160) = v54;
    *(v36 + 176) = v56;
    *(v36 + 192) = v59;
    *(v36 + 200) = v58;
    *(v36 + 208) = v57;
    *(v36 + 209) = v22;
    sub_1B212D15C();
    v1 = v42;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v27)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    if (*(v12 + 8 * v28) != -1)
    {
      sub_1B2118398();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1B2246220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1B2122614();
  a33 = v37;
  a34 = v38;
  v39 = v34;
  v41 = v40;
  sub_1B21181AC(v42);
  sub_1B21619D8(&qword_1EB7A34D0, &qword_1B226C288);
  sub_1B2115F64();
  sub_1B2146FA8();
  sub_1B224B1C8();
  if (!v43)
  {
LABEL_29:

LABEL_30:
    *v39 = v41;
    sub_1B2115CEC();
    return;
  }

  v44 = 0;
  v45 = *(v35 + 64);
  v46 = *(v35 + 32);
  sub_1B21154D4();
  sub_1B212D708();
  if (!v36)
  {
LABEL_4:
    v48 = v44;
    while (1)
    {
      v44 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v44 >= v34)
      {
        break;
      }

      ++v48;
      if (*(v35 + 64 + 8 * v44))
      {
        sub_1B211667C();
        v36 = v50 & v49;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v39 = v34;
      goto LABEL_30;
    }

    sub_1B211DAB8();
    v39 = v34;
    if (v64 != v65)
    {
      sub_1B211E564(v63);
    }

    else
    {
      v66 = sub_1B2122A88();
      sub_1B2148CEC(v66, v67, v35 + 64);
    }

    *(v35 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_1B21140F0();
LABEL_9:
    v51 = v47 | (v44 << 6);
    v52 = *(*(v35 + 48) + 8 * v51);
    v53 = *(*(v35 + 56) + 8 * v51);
    if ((a12 & 1) == 0)
    {
    }

    sub_1B224B4B4();
    sub_1B2192880(&a14, v52);
    v54 = sub_1B2253470();
    sub_1B211647C(v54);
    v56 = *(v41 + 64 + 8 * v55);
    sub_1B213CF74();
    if (v57)
    {
      break;
    }

    sub_1B2112110();
LABEL_21:
    sub_1B2111AE8();
    sub_1B213CBD0();
    *(v62 + 8 * v61) = v52;
    *(*(v41 + 56) + 8 * v61) = v53;
    sub_1B212D15C();
    if (!v36)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v57)
    {
      if (v59)
      {
        break;
      }
    }

    if (v58 == v60)
    {
      v58 = 0;
    }

    sub_1B212E31C(v58);
    if (!v57)
    {
      sub_1B2118398();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

BOOL sub_1B22463C0()
{
  v3 = v1;
  sub_1B211D530();
  v4 = *v1;
  v5 = *(v4 + 40);
  v6 = sub_1B2253410();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v4 + 48) + 8 * v8) == v0)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  v10 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_1B224805C(v0, v8, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v9 == 0;
  *v2 = v0;
  return result;
}

BOOL sub_1B224648C(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v161 = *MEMORY[0x1E69E9840];
  v9 = *v4;
  v10 = *(*v4 + 40);
  v11 = a4;
  sub_1B2253420();
  DatabaseValue.hash(into:)();
  sub_1B2253470();
  v157 = v9;
  v12 = *(v9 + 32);
  sub_1B2113B98();
  v158 = ~v14;
  v159 = v15;
  v17 = v11 == 4 && (a3 | a2) == 0;
  v155 = v17;
  v19 = *&a2 != 0.0 || a3 != 0xC000000000000000;
  v153 = v19;
  v20 = __OFSUB__(HIDWORD(a2), a2);
  v151 = v20;
  v21 = *&a2 > -9.22337204e18;
  if (*&a2 >= 9.22337204e18)
  {
    v21 = 0;
  }

  if (trunc(*&a2) != *&a2)
  {
    v21 = 0;
  }

  v154 = v21;
  while (2)
  {
    v22 = v13 & v158;
    v23 = (1 << (v13 & v158)) & *(v159 + (((v13 & v158) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v23)
    {
      v99 = *v152;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160 = *v152;
      v101 = sub_1B2122C80();
      sub_1B2113A20(v101, v102, a4);
      v103 = sub_1B2122C80();
      sub_1B2248160(v103, v104, a4, v22, isUniquelyReferenced_nonNull_native);
      *v152 = v160;
      *a1 = *&a2;
      *(a1 + 8) = a3;
      *(a1 + 16) = a4;
      goto LABEL_86;
    }

    v24 = *(v157 + 48) + 24 * v22;
    v26 = *v24;
    v25 = *(v24 + 8);
    v27 = *(v24 + 16);
    switch(v27)
    {
      case 1:
        v48 = *v24;
        if (a4)
        {
          if (a4 != 1)
          {
            goto LABEL_56;
          }

          v156 = 24 * v22;
          v49 = sub_1B2111658();
          v51 = sub_1B2117AFC(v49, v50, 1);
          sub_1B2113A44(v51, v52, 1);
          v53 = sub_1B2111658();
          sub_1B2113A44(v53, v54, 1);
          if (v26 == *&a2)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v156 = 24 * v22;
          v77 = sub_1B2111658();
          v79 = sub_1B2117AFC(v77, v78, 1);
          sub_1B2113A44(v79, v80, 0);
          v81 = sub_1B2111658();
          sub_1B2113A44(v81, v82, 1);
          v83 = trunc(v26);
          if (v26 > -9.22337204e18 && v26 < 9.22337204e18 && v83 == v26 && v26 == a2)
          {
            goto LABEL_84;
          }
        }

        goto LABEL_58;
      case 2:
        if (a4 != 2)
        {
          v55 = sub_1B2111658();
          sub_1B2113A20(v55, v56, 2);

          goto LABEL_56;
        }

        v156 = 24 * v22;
        if (*&v26 == a2 && v25 == a3)
        {
          v112 = sub_1B2122C80();
          sub_1B2113A20(v112, v113, 2);
          v114 = sub_1B2122C80();
          v109 = sub_1B2117AFC(v114, v115, 2);
          v111 = 2;
          goto LABEL_85;
        }

        sub_1B2111658();
        sub_1B211F200();
        v36 = sub_1B22531F0();
        v37 = sub_1B2122C80();
        v39 = sub_1B211F774(v37, v38, 2);
        v41 = sub_1B211F774(v39, v40, 2);
        v43 = sub_1B2117AFC(v41, v42, 2);
        sub_1B2113A44(v43, v44, 2);
        if (v36)
        {
          goto LABEL_84;
        }

        goto LABEL_58;
      case 3:
        if (a4 != 3)
        {
          v57 = sub_1B2117E98();
          v60 = sub_1B211F774(v57, v58, v59);
          sub_1B2126638(v60, v61);
LABEL_56:
          v62 = sub_1B2122C80();
          sub_1B2113A20(v62, v63, a4);
          v64 = a4;
          goto LABEL_57;
        }

        v47 = v26 != 0.0 || v25 != 0xC000000000000000 || a3 >> 62 != 3;
        if (!v47 && !v153)
        {
          v156 = 24 * v22;
          v131 = sub_1B2111A28();
          sub_1B2113A20(v131, v132, v133);
          v134 = sub_1B2111A28();
          sub_1B2113A20(v134, v135, v136);
          v137 = sub_1B2111A28();
          sub_1B2113A20(v137, v138, v139);
          v140 = sub_1B2111A28();
          sub_1B2113A44(v140, v141, v142);
          v143 = sub_1B2111A28();
          sub_1B2113A44(v143, v144, v145);
          v129 = 0;
          v130 = 0xC000000000000000;
          goto LABEL_83;
        }

        break;
      case 4:
        if (!v155)
        {
          goto LABEL_56;
        }

        v156 = 24 * v22;
        v105 = sub_1B2111658();
        sub_1B2113A44(v105, v106, 4);
        sub_1B2113A44(0, 0, 4);
        v107 = sub_1B2111658();
        sub_1B2113A44(v107, v108, 4);
        v109 = 0;
        v110 = 0;
        v111 = 4;
        goto LABEL_85;
      default:
        if (a4)
        {
          if (a4 != 1)
          {
            goto LABEL_56;
          }

          v156 = 24 * v22;
          v28 = sub_1B2111658();
          v30 = sub_1B2117AFC(v28, v29, 0);
          sub_1B2113A44(v30, v31, 1);
          v32 = sub_1B2111658();
          sub_1B2113A44(v32, v33, 0);
          v34 = v154;
          if (*&v26 != *&a2)
          {
            v34 = 0;
          }

          if (v34)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v156 = 24 * v22;
          v71 = sub_1B2111658();
          v73 = sub_1B2117AFC(v71, v72, 0);
          sub_1B2113A44(v73, v74, 0);
          v75 = sub_1B2111658();
          sub_1B2113A44(v75, v76, 0);
          if (*&v26 == a2)
          {
            goto LABEL_84;
          }
        }

        goto LABEL_58;
    }

    v87 = BYTE6(a3);
    switch(a3 >> 62)
    {
      case 1uLL:
        v87 = HIDWORD(a2) - a2;
        if (v151)
        {
          goto LABEL_88;
        }

        goto LABEL_77;
      case 2uLL:
        v89 = *(a2 + 16);
        v88 = *(a2 + 24);
        v90 = __OFSUB__(v88, v89);
        v87 = v88 - v89;
        if (!v90)
        {
          goto LABEL_77;
        }

        __break(1u);
LABEL_88:
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        return result;
      case 3uLL:
        goto LABEL_81;
      default:
LABEL_77:
        if (v87)
        {
          v27 = 3;
          v91 = sub_1B2122C80();
          v93 = sub_1B21223D0(v91, v92);
          sub_1B2113A20(v93, v94, v95);
          v96 = sub_1B2117E98();
          sub_1B2113A20(v96, v97, v98);
          v64 = 3;
LABEL_57:
          v65 = sub_1B2111658();
          v67 = sub_1B2117AFC(v65, v66, v27);
          sub_1B2113A44(v67, v68, v64);
          v69 = sub_1B2111658();
          sub_1B2113A44(v69, v70, v27);
LABEL_58:
          v13 = v22 + 1;
          continue;
        }

LABEL_81:
        v156 = 24 * v22;
        v116 = sub_1B2122C80();
        v118 = sub_1B21223D0(v116, v117);
        v121 = sub_1B211F774(v118, v119, v120);
        v123 = sub_1B21223D0(v121, v122);
        sub_1B2113A44(v123, v124, v125);
        v126 = sub_1B2114564();
        sub_1B2113A44(v126, v127, v128);
        v129 = sub_1B2111658();
LABEL_83:
        sub_1B2113A44(v129, v130, 3);
LABEL_84:
        v109 = sub_1B2122C80();
        v111 = a4;
LABEL_85:
        sub_1B2113A44(v109, v110, v111);
        v146 = *(v157 + 48) + v156;
        v147 = *v146;
        v148 = *(v146 + 8);
        *a1 = *v146;
        *(a1 + 8) = v148;
        v149 = *(v146 + 16);
        *(a1 + 16) = v149;
        sub_1B2113A20(v147, v148, v149);
LABEL_86:
        result = v23 == 0;
        *MEMORY[0x1E69E9840];
        return result;
    }
  }
}

uint64_t sub_1B2246F14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B21619D8(&qword_1EB7A34B8, &qword_1B226C260);
    v2 = sub_1B2252C80();
    v31 = v2;
    sub_1B2252C10();
    while (1)
    {
      v3 = sub_1B2252C40();
      if (!v3)
      {

        return v2;
      }

      v21 = v3;
      type metadata accessor for TableAlias();
      swift_dynamicCast();
      v8 = *(v2 + 16);
      if (*(v2 + 24) <= v8)
      {
        sub_1B2247E24(v8 + 1, &qword_1EB7A34B8, &qword_1B226C260, sub_1B2138CB8, v4, v5, v6, v7, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, vars0, vars8);
      }

      v2 = v31;
      v9 = *(v31 + 40);
      sub_1B2253420();
      sub_1B2138CB8();
      result = sub_1B2253470();
      v11 = v31 + 56;
      v12 = -1 << *(v31 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v31 + 56 + 8 * (v13 >> 6))) == 0)
      {
        break;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v31 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v31 + 48) + 8 * v15) = v30;
      ++*(v31 + 16);
    }

    v16 = 0;
    v17 = (63 - v12) >> 6;
    while (++v14 != v17 || (v16 & 1) == 0)
    {
      v18 = v14 == v17;
      if (v14 == v17)
      {
        v14 = 0;
      }

      v16 |= v18;
      v19 = *(v11 + 8 * v14);
      if (v19 != -1)
      {
        v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B2247118(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B21619D8(&qword_1EB7A34A0, &unk_1B226C240);
    v2 = sub_1B2252C80();
    v31 = v2;
    sub_1B2252C10();
    while (1)
    {
      v3 = sub_1B2252C40();
      if (!v3)
      {

        return v2;
      }

      v21 = v3;
      type metadata accessor for Row();
      swift_dynamicCast();
      v8 = *(v2 + 16);
      if (*(v2 + 24) <= v8)
      {
        sub_1B2247E24(v8 + 1, &qword_1EB7A34A0, &unk_1B226C240, Row.hash(into:), v4, v5, v6, v7, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, vars0, vars8);
      }

      v2 = v31;
      v9 = *(v31 + 40);
      sub_1B2253420();
      Row.hash(into:)();
      result = sub_1B2253470();
      v11 = v31 + 56;
      v12 = -1 << *(v31 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v31 + 56 + 8 * (v13 >> 6))) == 0)
      {
        break;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v31 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v31 + 48) + 8 * v15) = v30;
      ++*(v31 + 16);
    }

    v16 = 0;
    v17 = (63 - v12) >> 6;
    while (++v14 != v17 || (v16 & 1) == 0)
    {
      v18 = v14 == v17;
      if (v14 == v17)
      {
        v14 = 0;
      }

      v16 |= v18;
      v19 = *(v11 + 8 * v14);
      if (v19 != -1)
      {
        v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1B2247318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1B2122614();
  if (v19)
  {
    sub_1B21619D8(&qword_1EB7A34B0, &qword_1B226C258);
    v20 = sub_1B2252C80();
    v35 = v20;
    sub_1B2252C10();
    while (1)
    {
      if (!sub_1B2252C40())
      {

        goto LABEL_18;
      }

      type metadata accessor for DatabaseFunction();
      swift_dynamicCast();
      if (*(v20 + 24) <= *(v20 + 16))
      {
        sub_1B2125E6C();
      }

      v20 = v35;
      v21 = *(v35 + 40);
      sub_1B2253420();
      v22 = *(a19 + 16);
      v23 = *(a19 + 24);
      v24 = *(a19 + 32);
      sub_1B2252370();
      sub_1B2253450();
      v25 = sub_1B2253470();
      v26 = -1 << *(v35 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v35 + 56 + 8 * (v27 >> 6))) == 0)
      {
        break;
      }

      sub_1B224B4F8();
LABEL_15:
      sub_1B2134C18(v29);
      *(v33 + 8 * v34) = a19;
      ++*(v35 + 16);
    }

    v30 = 0;
    v31 = (63 - v26) >> 6;
    while (++v28 != v31 || (v30 & 1) == 0)
    {
      v32 = v28 == v31;
      if (v28 == v31)
      {
        v28 = 0;
      }

      v30 |= v32;
      if (*(v35 + 56 + 8 * v28) != -1)
      {
        sub_1B224B4CC();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    sub_1B2115CEC();
  }
}

uint64_t sub_1B22474C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B21619D8(&qword_1EB7A34A8, &qword_1B226C250);
    v2 = sub_1B2252C80();
    v15 = v2;
    sub_1B2252C10();
    while (1)
    {
      if (!sub_1B2252C40())
      {

        return v2;
      }

      type metadata accessor for DatabaseCollation();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1B2124804();
      }

      v2 = v15;
      v3 = *(v15 + 40);
      sub_1B2253420();
      MEMORY[0x1B2742F10](0);
      result = sub_1B2253470();
      v5 = -1 << *(v15 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      sub_1B224B4F8();
LABEL_15:
      sub_1B2134C18(v8);
      *(v12 + 8 * v13) = v14;
      ++*(v15 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      if (*(v15 + 56 + 8 * v7) != -1)
      {
        sub_1B224B4CC();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B224767C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B21619D8(&qword_1EB7A2340, qword_1B225D9B0);
  result = sub_1B2252C70();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1B2148CEC(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v34 = v17[3];
    v21 = *(v6 + 40);
    sub_1B2253420();
    sub_1B2252370();
    result = sub_1B2253470();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v6 + 48) + 32 * v25);
    *v30 = v18;
    v30[1] = v19;
    v30[2] = v20;
    v30[3] = v34;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B22478EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B21619D8(&qword_1EB7A22D0, &unk_1B225D340);
  result = sub_1B2252C70();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_1B2148CEC(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_1B2253410();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B2247B10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B21619D8(&qword_1EB7A34C8, &qword_1B226C278);
  result = sub_1B2252C70();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_39:

    *v2 = v6;
    return result;
  }

  v36 = v2;
  v37 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      sub_1B2148CEC(0, (v35 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v35;
    }

    v2 = v36;
    *(v3 + 16) = 0;
    goto LABEL_39;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v6 + 40);
    sub_1B2253420();
    switch(v20)
    {
      case 1:
        if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v22 = *&v18;
        }

        else
        {
          v22 = 0.0;
        }

        goto LABEL_23;
      case 2:
        sub_1B2113A20(v18, v19, 2);
        sub_1B2252370();
        v23 = v18;
        v24 = v19;
        v25 = 2;
        goto LABEL_19;
      case 3:
        sub_1B2113A20(v18, v19, 3);
        sub_1B2251DF0();
        v23 = v18;
        v24 = v19;
        v25 = 3;
LABEL_19:
        sub_1B2113A44(v23, v24, v25);
        break;
      case 4:
        MEMORY[0x1B2742F10](0);
        break;
      default:
        v22 = v18;
LABEL_23:
        MEMORY[0x1B2742F40](*&v22);
        break;
    }

    result = sub_1B2253470();
    v26 = -1 << *(v6 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_33:
    *(v13 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = *(v6 + 48) + 24 * v29;
    *v34 = v18;
    *(v34 + 8) = v19;
    *(v34 + 16) = v20;
    ++*(v6 + 16);
    v3 = v37;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v13 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_33;
    }
  }

LABEL_41:
  __break(1u);
  return result;
}

void sub_1B2247E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1B2122614();
  a31 = v36;
  a32 = v37;
  v75 = v38;
  v39 = v32;
  v41 = sub_1B21181AC(v40);
  v43 = sub_1B212CFD8(v41, v42);
  sub_1B21619D8(v43, v44);
  sub_1B2115F64();
  sub_1B2252C70();
  sub_1B224B1C8();
  if (!v45)
  {
LABEL_25:

    *v39 = v34;
    sub_1B2115CEC();
    return;
  }

  v46 = 0;
  v47 = *(v33 + 56);
  v48 = *(v33 + 32);
  sub_1B212B4E4();
  v51 = v50 & v49;
  v53 = (v52 + 63) >> 6;
  v54 = v34 + 56;
  if ((v50 & v49) == 0)
  {
LABEL_4:
    v56 = v46;
    while (1)
    {
      v46 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v46 >= v53)
      {
        break;
      }

      ++v56;
      if (*(v33 + 56 + 8 * v46))
      {
        sub_1B211667C();
        v51 = v58 & v57;
        goto LABEL_9;
      }
    }

    sub_1B211DAB8();
    if (v71 != v72)
    {
      sub_1B211E564(v70);
    }

    else
    {
      v73 = sub_1B2122A88();
      sub_1B2148CEC(v73, v74, v33 + 56);
    }

    v39 = v32;
    *(v33 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    sub_1B21140F0();
LABEL_9:
    v59 = *(*(v33 + 48) + 8 * (v55 | (v46 << 6)));
    sub_1B224B4B4();
    v75(&a12);
    sub_1B2253470();
    v60 = *(v34 + 32);
    sub_1B2124268();
    if (((v35 << v62) & ~*(v54 + 8 * v61)) == 0)
    {
      break;
    }

    sub_1B2112110();
LABEL_19:
    sub_1B2111AE8();
    *(v54 + v67) |= v68;
    *(*(v34 + 48) + 8 * v69) = v59;
    sub_1B212D15C();
    if (!v51)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v66)
    {
      if (v64)
      {
        break;
      }
    }

    if (v63 == v65)
    {
      v63 = 0;
    }

    if (*(v54 + 8 * v63) != -1)
    {
      sub_1B2118398();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

unint64_t sub_1B2247FB4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v6 = *(a2 + 40);
  sub_1B2253420();
  a3(v9);
  sub_1B2253470();
  v7 = *(a2 + 32);
  sub_1B2113B98();
  result = sub_1B2252C00();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B224805C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B22478EC(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1B22493D4(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_1B2253410();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1B2248F08();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1B2253380();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_1B2248160(uint64_t a1, unint64_t a2, char a3, unint64_t a4, char a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_1B2247B10(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_1B22491C8();
        goto LABEL_86;
      }

      sub_1B22495C0(v10 + 1);
    }

    v47 = v5;
    v12 = *v5;
    v13 = *(*v5 + 40);
    v52 = a1;
    v53 = a2;
    v54 = a3;
    sub_1B2253420();
    DatabaseValue.hash(into:)();
    v14 = sub_1B2253470();
    v51 = ~(-1 << *(v12 + 32));
    v15 = v12 + 56;
    v17 = a3 == 4 && (a2 | a1) == 0;
    v50 = v17;
    v19 = *&a1 != 0.0 || a2 != 0xC000000000000000;
    v48 = v19;
    v20 = __OFSUB__(HIDWORD(a1), a1);
    v46 = v20;
    v21 = *&a1 > -9.22337204e18;
    if (*&a1 >= 9.22337204e18)
    {
      v21 = 0;
    }

    if (trunc(*&a1) != *&a1)
    {
      v21 = 0;
    }

    v49 = v21;
    while (1)
    {
      a4 = v14 & v51;
      if (((*(v15 + (((v14 & v51) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v51)) & 1) == 0)
      {
        break;
      }

      v22 = *(v12 + 48) + 24 * a4;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      switch(v25)
      {
        case 1:
          v33 = *v22;
          if (a3)
          {
            if (a3 != 1)
            {
              goto LABEL_65;
            }

            sub_1B2113A44(*&v23, v24, 1);
            sub_1B2113A44(a1, a2, 1);
            sub_1B2113A44(*&v23, v24, 1);
            if (v23 == *&a1)
            {
              goto LABEL_95;
            }
          }

          else
          {
            sub_1B2113A44(*&v23, v24, 1);
            sub_1B2113A44(a1, a2, 0);
            sub_1B2113A44(*&v23, v24, 1);
            v35 = trunc(v23);
            if (v23 > -9.22337204e18 && v23 < 9.22337204e18 && v35 == v23 && v23 == a1)
            {
              goto LABEL_95;
            }
          }

          break;
        case 2:
          if (a3 != 2)
          {
            sub_1B2113A20(*&v23, v24, 2);

            goto LABEL_65;
          }

          if (*&v23 == a1 && v24 == a2)
          {
            sub_1B2113A20(a1, a2, 2);
            sub_1B2113A20(a1, a2, 2);
            v24 = a2;
            v23 = *&a1;
LABEL_94:
            sub_1B2113A44(a1, a2, v25);
            sub_1B2113A44(*&v23, v24, v25);
LABEL_95:
            sub_1B2253380();
            __break(1u);
            JUMPOUT(0);
          }

          v28 = sub_1B22531F0();
          sub_1B2113A20(a1, a2, 2);
          sub_1B2113A20(*&v23, v24, 2);
          sub_1B2113A44(*&v23, v24, 2);
          sub_1B2113A44(a1, a2, 2);
          if (v28)
          {
            goto LABEL_95;
          }

          break;
        case 3:
          if (a3 == 3)
          {
            v31 = v23 != 0.0 || v24 != 0xC000000000000000 || a2 >> 62 != 3;
            if (!v31 && !v48)
            {
              a2 = 0xC000000000000000;
              sub_1B2113A20(0, 0xC000000000000000, 3);
              sub_1B2113A20(0, 0xC000000000000000, 3);
              sub_1B2113A20(0, 0xC000000000000000, 3);
              sub_1B2113A44(0, 0xC000000000000000, 3);
              *&a1 = 0.0;
              v23 = 0.0;
              v24 = 0xC000000000000000;
              goto LABEL_94;
            }

            v32 = BYTE6(a2);
            switch(a2 >> 62)
            {
              case 1uLL:
                v32 = HIDWORD(a1) - a1;
                if (v46)
                {
                  goto LABEL_90;
                }

                goto LABEL_83;
              case 2uLL:
                v40 = *(a1 + 16);
                v39 = *(a1 + 24);
                v41 = __OFSUB__(v39, v40);
                v32 = v39 - v40;
                if (!v41)
                {
                  goto LABEL_83;
                }

                goto LABEL_89;
              case 3uLL:
                goto LABEL_93;
              default:
LABEL_83:
                if (!v32)
                {
LABEL_93:
                  sub_1B2113A20(*&v23, v24, 3);
                  sub_1B2113A20(a1, a2, 3);
                  sub_1B2113A20(*&v23, v24, 3);
                  sub_1B2113A44(*&v23, v24, 3);
                  goto LABEL_94;
                }

                v25 = 3;
                sub_1B2113A20(*&v23, v24, 3);
                sub_1B2113A20(a1, a2, 3);
                sub_1B2113A20(*&v23, v24, 3);
                v34 = 3;
                v15 = v12 + 56;
                break;
            }
          }

          else
          {
            sub_1B2113A20(*&v23, v24, 3);
            sub_1B2126638(*&v23, v24);
LABEL_65:
            sub_1B2113A20(a1, a2, a3);
            v34 = a3;
          }

          sub_1B2113A44(*&v23, v24, v25);
          sub_1B2113A44(a1, a2, v34);
          sub_1B2113A44(*&v23, v24, v25);
          break;
        case 4:
          if (!v50)
          {
            goto LABEL_65;
          }

          sub_1B2113A44(*&v23, v24, 4);
          a2 = 0;
          *&a1 = 0.0;
          goto LABEL_94;
        default:
          if (a3)
          {
            if (a3 != 1)
            {
              goto LABEL_65;
            }

            sub_1B2113A44(*&v23, v24, 0);
            sub_1B2113A44(a1, a2, 1);
            sub_1B2113A44(*&v23, v24, 0);
            v26 = v49;
            if (*&v23 != *&a1)
            {
              v26 = 0;
            }

            if (v26)
            {
              goto LABEL_95;
            }
          }

          else
          {
            sub_1B2113A44(*&v23, v24, 0);
            sub_1B2113A44(a1, a2, 0);
            sub_1B2113A44(*&v23, v24, 0);
            if (*&v23 == a1)
            {
              goto LABEL_95;
            }
          }

          break;
      }

      v14 = a4 + 1;
    }

    v5 = v47;
  }

LABEL_86:
  v42 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v43 = *(v42 + 48) + 24 * a4;
  *v43 = *&a1;
  *(v43 + 8) = a2;
  *(v43 + 16) = a3;
  v44 = *(v42 + 16);
  v41 = __OFADD__(v44, 1);
  v45 = v44 + 1;
  if (v41)
  {
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
  }

  *(v42 + 16) = v45;
  *MEMORY[0x1E69E9840];
}

void *sub_1B2248DB0()
{
  v1 = v0;
  sub_1B21619D8(&qword_1EB7A22C0, &unk_1B225D990);
  v2 = *v0;
  v3 = sub_1B2252C60();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_1B2248F08()
{
  v1 = v0;
  sub_1B21619D8(&qword_1EB7A22D0, &unk_1B225D340);
  v2 = *v0;
  v3 = sub_1B2252C60();
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

void *sub_1B2249048()
{
  v1 = v0;
  sub_1B21619D8(&qword_1EB7A3498, &qword_1B226C228);
  v2 = *v0;
  v3 = sub_1B2252C60();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + (v17 << 6));
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_1B2148158(v27, &v26);
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

void sub_1B22491C8()
{
  sub_1B2123510();
  v4 = v0;
  sub_1B21619D8(&qword_1EB7A34C8, &qword_1B226C278);
  v5 = *v0;
  v6 = sub_1B2252C60();
  if (*(v5 + 16))
  {
    v7 = sub_1B213CDAC();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v1, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v5 + 16);
    sub_1B212209C();
    sub_1B212604C(v13);
    while (v3)
    {
      sub_1B213CCE8();
LABEL_15:
      v18 = 3 * (v14 | (v12 << 6));
      v19 = *(v5 + 48) + 8 * v18;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 48) + 8 * v18;
      *v23 = *v19;
      *(v23 + 8) = v21;
      *(v23 + 16) = v22;
      sub_1B2113A20(v20, v21, v22);
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v2)
      {
        goto LABEL_17;
      }

      ++v15;
      if (*(v1 + v12))
      {
        sub_1B211667C();
        v3 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v4 = v6;
    sub_1B2115ED4();
  }
}

void sub_1B22492F4()
{
  sub_1B2123510();
  v4 = v0;
  sub_1B21619D8(v5, v6);
  v7 = *v0;
  v8 = sub_1B2252C60();
  if (*(v7 + 16))
  {
    v9 = sub_1B213CDAC();
    if (v12)
    {
      v13 = v9 >= v11;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      memmove(v9, v1, 8 * v10);
    }

    v14 = 0;
    *(v8 + 16) = *(v7 + 16);
    sub_1B212209C();
    sub_1B212604C(v15);
    while (v3)
    {
      sub_1B213CCE8();
LABEL_15:
      *(*(v8 + 48) + 8 * (v16 | (v14 << 6))) = *(*(v7 + 48) + 8 * (v16 | (v14 << 6)));
    }

    v17 = v14;
    while (1)
    {
      v14 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v14 >= v2)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v1 + v14))
      {
        sub_1B211667C();
        v3 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v4 = v8;
    sub_1B2115ED4();
  }
}

uint64_t sub_1B22493D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B21619D8(&qword_1EB7A22D0, &unk_1B225D340);
  result = sub_1B2252C70();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_1B2253410();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B22495C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B21619D8(&qword_1EB7A34C8, &qword_1B226C278);
  result = sub_1B2252C70();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v6 + 40);
        sub_1B2253420();
        switch(v20)
        {
          case 1:
            if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v22 = *&v18;
            }

            else
            {
              v22 = 0.0;
            }

            goto LABEL_23;
          case 2:
            sub_1B2113A20(v18, v19, 2);
            sub_1B2113A20(v18, v19, 2);
            sub_1B2252370();
            v23 = v18;
            v24 = v19;
            v25 = 2;
            goto LABEL_19;
          case 3:
            sub_1B2113A20(v18, v19, 3);
            sub_1B2113A20(v18, v19, 3);
            sub_1B2251DF0();
            v23 = v18;
            v24 = v19;
            v25 = 3;
LABEL_19:
            sub_1B2113A44(v23, v24, v25);
            break;
          case 4:
            MEMORY[0x1B2742F10](0);
            break;
          default:
            v22 = v18;
LABEL_23:
            MEMORY[0x1B2742F40](*&v22);
            break;
        }

        result = sub_1B2253470();
        v26 = -1 << *(v6 + 32);
        v27 = result & ~v26;
        v28 = v27 >> 6;
        if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
        {
          break;
        }

        v29 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_33:
        *(v13 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v34 = *(v6 + 48) + 24 * v29;
        *v34 = v18;
        *(v34 + 8) = v19;
        *(v34 + 16) = v20;
        ++*(v6 + 16);
        v3 = v36;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v13 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_33;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v35;
          goto LABEL_37;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_37:
    *v2 = v6;
  }

  return result;
}

void sub_1B22498C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1B2122614();
  a31 = v35;
  a32 = v38;
  v69 = v39;
  v40 = v32;
  v41 = *v32;
  if (*(*v32 + 24) > v36)
  {
    v42 = *(*v32 + 24);
  }

  v43 = sub_1B212CFD8(v36, v37);
  sub_1B21619D8(v43, v44);
  v45 = sub_1B2252C70();
  if (*(v41 + 16))
  {
    v68 = v40;
    v46 = 0;
    v47 = *(v41 + 56);
    v48 = *(v41 + 32);
    sub_1B212B4E4();
    sub_1B2125FE8();
    v50 = v49 >> 6;
    v51 = v45 + 56;
    if (v33)
    {
      while (1)
      {
        sub_1B2149880();
LABEL_11:
        v56 = *(*(v41 + 48) + 8 * (v52 | (v46 << 6)));
        v57 = *(v45 + 40);
        sub_1B2253420();

        v69(&a12);
        sub_1B2253470();
        v58 = *(v45 + 32);
        sub_1B2124268();
        if (((v34 << v60) & ~*(v51 + 8 * v59)) == 0)
        {
          break;
        }

        sub_1B2112110();
LABEL_21:
        sub_1B2111AE8();
        *(v51 + v65) |= v66;
        *(*(v45 + 48) + 8 * v67) = v56;
        ++*(v45 + 16);
        if (!v33)
        {
          goto LABEL_6;
        }
      }

      sub_1B2114850();
      while (1)
      {
        sub_1B211FE98();
        if (v64)
        {
          if (v62)
          {
            break;
          }
        }

        if (v61 == v63)
        {
          v61 = 0;
        }

        if (*(v51 + 8 * v61) != -1)
        {
          sub_1B2118398();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_6:
      v53 = v46;
      while (1)
      {
        v46 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v46 >= v50)
        {

          v40 = v68;
          goto LABEL_25;
        }

        ++v53;
        if (*(v41 + 56 + 8 * v46))
        {
          sub_1B211667C();
          v33 = v55 & v54;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v40 = v45;
    sub_1B2115CEC();
  }
}

uint64_t sub_1B2249A6C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A1610(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B2249AD8(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B2249AD8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B21619D8(&qword_1EB7A0E40, &unk_1B226BA30);
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B2249CB8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B2249BDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B2249BDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1B22531F0();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B2249CB8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1B22531F0();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1B22531F0()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = (v9 + a4);
          }

          if (v31 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = (v9 - v7);
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_1B22531F0() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v8[2] + 1, 1, v8);
        v8 = v89;
      }

      v45 = v8[2];
      v44 = v8[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_1B2161EC4(v44 > 1, v45 + 1, 1, v8);
        v8 = v90;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v7;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        v93 = v8 + 4;
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = v49;
          v84 = &v47[2 * v49];
          v85 = v84[1];
          sub_1B224A340((*a3 + 24 * *v81), (*a3 + 24 * *v84), *a3 + 24 * v85, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v85 < v82)
          {
            goto LABEL_105;
          }

          v86 = v8;
          v87 = v8[2];
          if (v83 > v87)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v85;
          if (v83 >= v87)
          {
            goto LABEL_107;
          }

          v46 = v87 - 1;
          memmove(v84, v84 + 2, 16 * (v87 - 1 - v83));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          v47 = v93;
          if (!v88)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1B224A208(&v97, *a1, a3);
LABEL_103:
}

uint64_t sub_1B224A208(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1B224A340((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1B224A340(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1B22531F0() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 24;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
LABEL_29:
  v17 = v6 - 24;
  for (v5 -= 24; v11 > v4 && v6 > v7; v5 -= 24)
  {
    v19 = *(v11 - 3) == *(v6 - 3) && *(v11 - 2) == *(v6 - 2);
    if (!v19 && (sub_1B22531F0() & 1) != 0)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v21;
        v6 = v17;
      }

      goto LABEL_29;
    }

    if (v11 != (v5 + 24))
    {
      v20 = *(v11 - 24);
      *(v5 + 16) = *(v11 - 1);
      *v5 = v20;
    }

    v11 -= 24;
  }

LABEL_46:
  v22 = (v11 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_1B224A534(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_1B2252BF0();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1B224A5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  (*(v6 + 32))(&v17 - v12, v11);
  v14 = swift_allocObject();
  (*(v6 + 16))(v9, v13, a3);
  v15 = sub_1B224A700(v9, v14, a3, a4);
  (*(v6 + 8))(v13, a3);
  return v15;
}

void *sub_1B224A700(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  v8 = sub_1B212FF14(v11);
  (*(*(a3 - 8) + 32))(v8, a1, a3);
  a2[10] = sub_1B211DF80(MEMORY[0x1E69E7CC0]);
  a2[11] = v9;
  a2[7] = 0;
  a2[8] = 0;
  sub_1B214D38C(v11, (a2 + 2));
  a2[9] = (*(a4 + 8))(a3, a4);
  sub_1B2113208(v11);
  return a2;
}

uint64_t sub_1B224A7D4@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for Row();
  v6 = swift_allocObject();

  v8 = sub_1B21840C8(v7, v6);
  v10 = a2;
  v11 = 1;
  return RowDecodingContext.init(row:key:)(v8, &v10, a3);
}

uint64_t sub_1B224A848@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  type metadata accessor for Row();
  v7 = swift_allocObject();

  v8 = sub_1B211EF2C(v5, v6, v7);
  v10 = a2;
  v11 = 1;
  return RowDecodingContext.init(row:key:)(v8, &v10, a3);
}

unint64_t sub_1B224A970()
{
  result = qword_1EB7A33F8;
  if (!qword_1EB7A33F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A33F8);
  }

  return result;
}

unint64_t sub_1B224A9C4()
{
  result = qword_1EB7A3400;
  if (!qword_1EB7A3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3400);
  }

  return result;
}

unint64_t sub_1B224AB20(uint64_t a1)
{
  result = sub_1B214BDD4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1B2161A20(&qword_1EB7A3410, &qword_1B226BAB8);
    sub_1B224ABD8(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B224ABD8(uint64_t a1)
{
  result = sub_1B214BDD4(a1);
  if (!result)
  {
    type metadata accessor for Row();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B224AC14()
{
  result = qword_1EB7A0B20;
  if (!qword_1EB7A0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A0B20);
  }

  return result;
}

unint64_t sub_1B224AC9C(uint64_t a1)
{
  result = sub_1B214BDD4(a1);
  if (!result)
  {
    sub_1B2161A20(&qword_1EB7A33F0, &qword_1B226BAB0);
    sub_1B224A970();
    sub_1B224A9C4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B224AD9C()
{
  result = qword_1EB7A0B18;
  if (!qword_1EB7A0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A0B18);
  }

  return result;
}

unint64_t sub_1B224AE00()
{
  result = qword_1EB7A3450;
  if (!qword_1EB7A3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3450);
  }

  return result;
}

void *sub_1B224AFA0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return sub_1B224B3BC(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_1B224B3BC(result, a2);
    }
  }

  return result;
}

void sub_1B224B018()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  sub_1B2243FDC();
}

uint64_t sub_1B224B040(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B224B04C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_1B224B09C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return sub_1B224B3BC(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_1B224B3BC(result, a2);
    }
  }

  return result;
}

uint64_t sub_1B224B188()
{
  v2 = *(v0 - 192);
  *(v0 - 72) = *(v0 - 200);
  *(v0 - 224) = v2;
  v3 = *(v0 - 176);
}

uint64_t sub_1B224B1A8()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = -1;
}

uint64_t sub_1B224B2F0(sqlite3_stmt *a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr), uint64_t a4)
{
  v8 = *(v6 - 96);

  return static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(a1, v4, a3, a4, v5);
}

uint64_t sub_1B224B318()
{

  return sub_1B2252B00();
}

uint64_t sub_1B224B340()
{

  return sqlite3_column_type(v1, v0);
}

uint64_t sub_1B224B398(sqlite3_stmt *a1, int a2, void (*a3)(_OWORD *__return_ptr), uint64_t a4)
{
  v7 = *(v5 - 96);

  return static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(a1, a2, a3, a4, v4);
}

void *sub_1B224B3C8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;

  return sub_1B216EB80(0, v1, 0);
}

unint64_t sub_1B224B3EC()
{
  *(v1 - 272) = v0;

  return sub_1B211E590();
}

uint64_t sub_1B224B410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = a1;
  *(v3 - 280) = a2;

  return sub_1B214D38C(v3 - 160, v3 - 200);
}

uint64_t sub_1B224B434()
{
}

void sub_1B224B450()
{
  v2 = *(v0 - 96);

  Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
}

uint64_t sub_1B224B474()
{

  return sub_1B22531F0();
}

uint64_t sub_1B224B490(uint64_t a1, uint64_t a2)
{
  *(a2 + 80) = v2;
  *(a2 + 88) = v3;
  *(a2 + 96) = v4;
  *(a2 + 104) = *(v5 - 200);

  return swift_willThrow();
}

uint64_t sub_1B224B4B4()
{
  v2 = *(v0 + 40);

  return sub_1B2253420();
}

uint64_t sub_1B224B564(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  return result;
}

void sub_1B224B58C(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v3;
  v5 = *(v4 + 56) + 24 * a1;
}

void sub_1B224B5A0()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B224B5C0()
{

  return swift_dynamicCast();
}

uint64_t sub_1B224B5F8()
{
  v3 = *v0;
}

uint64_t sub_1B224B618()
{
}

uint64_t sub_1B224B650(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1B21619D8(a3, a4);
}

uint64_t static FetchableRecord<>.fetchCursor<A>(_:keys:)()
{
  sub_1B2115F74();
  sub_1B2116494(v0, v1);
  static TableRecord.filter<A>(keys:)();
  sub_1B211D53C();
  sub_1B21179A0();
  swift_getWitnessTable();
  sub_1B2114310();
  sub_1B2112F0C();
  v2 = FetchRequest<>.fetchCursor(_:)();
  sub_1B21142EC(v2, v3, v4, v5, v6, v7, v8, v9, v23, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  sub_1B211283C();
  v11 = *(v10 + 8);
  v20 = sub_1B2114028(v12, v13, v14, v15, v16, v17, v18, v19, v24);
  v21(v20);
  return sub_1B212CDA8();
}

uint64_t static FetchableRecord<>.fetchAll<A>(_:keys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __src[23] = a5;
  sub_1B21115E0();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B21149B0();
  (*(v10 + 16))(v6);
  swift_getAssociatedTypeWitness();
  sub_1B2114104();
  __src[0] = sub_1B22526C0();
  sub_1B22526A0();
  sub_1B2111968();
  swift_getWitnessTable();
  if (sub_1B2252900())
  {

    sub_1B2115EC8();
    sub_1B2252600();
  }

  else
  {
    sub_1B2111B28();
    swift_getWitnessTable();
    sub_1B2144174();
    static TableRecord.filter<A>(keys:)();

    memcpy(v18, __src, sizeof(v18));
    sub_1B2115EC8();
    InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
    sub_1B21179A0();
    swift_getWitnessTable();
    sub_1B2122D60();
    FetchRequest<>.fetchAll(_:)();
    sub_1B2113118();
    sub_1B2111808(InterfaceRequest);
    if (v5)
    {
      v13 = *(v12 + 8);
    }

    else
    {
      v16 = *(v12 + 8);
    }

    v14 = sub_1B2123554();
    v15(v14);
  }

  return sub_1B212CDA8();
}

uint64_t static FetchableRecord<>.fetchOne<A>(_:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a7;
  v34 = a6;
  v37 = a5;
  v38 = a3;
  v36 = a1;
  v39 = a8;
  v11 = sub_1B2252B00();
  sub_1B21115E0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  sub_1B21115E0();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1B21149B0();
  (*(v13 + 16))(v21, a2, v11);
  if (sub_1B2122A98(v21, 1, a4) == 1)
  {
    (*(v13 + 8))(v21, v11);
    return sub_1B21117B4(v39, 1, 1, v38);
  }

  else
  {
    v28 = *(v23 + 32);
    v29 = sub_1B2114104();
    v30(v29);
    (*(v23 + 16))(v18, v8, a4);
    sub_1B21117B4(v18, 0, 1, a4);
    static TableRecord.filter<A>(key:)(__src, v18, v38, a4, v34, v35);
    (*(v13 + 8))(v18, v11);
    memcpy(v41, __src, sizeof(v41));
    InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
    sub_1B21179A0();
    swift_getWitnessTable();
    FetchRequest<>.fetchOne(_:)();
    memcpy(v40, v41, 0xA2uLL);
    sub_1B2111808(InterfaceRequest);
    (*(v32 + 8))(v40, InterfaceRequest);
    return (*(v23 + 8))(v8, a4);
  }
}

uint64_t static FetchableRecord<>.fetchCursor<A>(_:ids:)()
{
  sub_1B2115F74();
  v2 = sub_1B2116494(v0, v1);
  static TableRecord<>.filter<A>(ids:)(v2, v3, v4, v5, v7, v6);
  sub_1B211D53C();
  sub_1B21179A0();
  swift_getWitnessTable();
  sub_1B2114310();
  sub_1B2112F0C();
  v8 = FetchRequest<>.fetchCursor(_:)();
  sub_1B21142EC(v8, v9, v10, v11, v12, v13, v14, v15, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  sub_1B211283C();
  v17 = *(v16 + 8);
  v26 = sub_1B2114028(v18, v19, v20, v21, v22, v23, v24, v25, v30);
  v27(v26);
  return sub_1B212CDA8();
}

{
  sub_1B2115F74();
  v2 = sub_1B2116494(v0, v1);
  static TableRecord<>.filter<A>(ids:)(v2, v3, v4, v5, v8, v9, v6, v7);
  sub_1B211D53C();
  sub_1B21179A0();
  swift_getWitnessTable();
  sub_1B2114310();
  sub_1B2112F0C();
  v10 = FetchRequest<>.fetchCursor(_:)();
  sub_1B21142EC(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  sub_1B211283C();
  v19 = *(v18 + 8);
  v28 = sub_1B2114028(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  v29(v28);
  return sub_1B212CDA8();
}

uint64_t static FetchableRecord<>.fetchSet<A>(_:keys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __src[23] = a5;
  sub_1B21115E0();
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1B21149B0();
  (*(v14 + 16))(v8);
  swift_getAssociatedTypeWitness();
  sub_1B2114104();
  __src[0] = sub_1B22526C0();
  sub_1B22526A0();
  sub_1B2111968();
  swift_getWitnessTable();
  if (sub_1B2252900())
  {

    sub_1B2115EC8();
    v15 = sub_1B2252600();
    if (sub_1B2252640())
    {
      sub_1B224CAAC(v15, a3, a7);
    }

    else
    {
    }
  }

  else
  {
    sub_1B2111B28();
    swift_getWitnessTable();
    sub_1B2144174();
    static TableRecord.filter<A>(keys:)();

    memcpy(v27, __src, sizeof(v27));
    sub_1B2115EC8();
    InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
    sub_1B21179A0();
    swift_getWitnessTable();
    v17 = sub_1B2122D60();
    FetchRequest<>.fetchSet(_:)(v17, v18, v19, v20, a7);
    sub_1B2113118();
    sub_1B2111808(InterfaceRequest);
    if (v7)
    {
      v22 = *(v21 + 8);
    }

    else
    {
      v25 = *(v21 + 8);
    }

    v23 = sub_1B2123554();
    v24(v23);
  }

  return sub_1B212CDA8();
}

uint64_t static FetchableRecord<>.fetchCursor(_:keys:)()
{
  sub_1B212E010();
  v2 = sub_1B2116494(v0, v1);
  static TableRecord.filter(keys:)(v2, v3, v5, v4, v5, v6, v7, v8);
  sub_1B211D53C();
  sub_1B21179A0();
  swift_getWitnessTable();
  sub_1B2114310();
  sub_1B2112F0C();
  v9 = FetchRequest<>.fetchCursor(_:)();
  sub_1B21142EC(v9, v10, v11, v12, v13, v14, v15, v16, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  sub_1B211283C();
  v18 = *(v17 + 8);
  v27 = sub_1B2114028(v19, v20, v21, v22, v23, v24, v25, v26, v31);
  v28(v27);
  return sub_1B212CDA8();
}

uint64_t static FetchableRecord<>.fetchAll(_:keys:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    v6 = sub_1B211230C(a1, a2);
    static TableRecord.filter(keys:)(v6, a3, v8, v7, v8, v9, v10, v11);
    sub_1B2111634();
    type metadata accessor for QueryInterfaceRequest();
    sub_1B21179A0();
    swift_getWitnessTable();
    sub_1B2114310();
    v12 = FetchRequest<>.fetchAll(_:)();
    if (v4)
    {
      sub_1B211608C(v12, v13, v14, v15, v16, v17, v18, v19, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
      sub_1B21142DC();
      v29 = *(v28 + 8);
    }

    else
    {
      v3 = v12;
      sub_1B211608C(v12, v13, v14, v15, v16, v17, v18, v19, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
      sub_1B21142DC();
      v33 = *(v32 + 8);
    }

    v30 = sub_1B2112FF4(v20, v21, v22, v23, v24, v25, v26, v27, v36);
    v31(v30);
  }

  else
  {
    sub_1B2111634();
    return sub_1B2252600();
  }

  return v3;
}

uint64_t sub_1B224CAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  if (sub_1B2252640())
  {
    sub_1B2252CA0();
    v14 = sub_1B2252C90();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  v38 = sub_1B2252640();
  if (v38)
  {
    v35 = v7;
    v36 = v5;
    v15 = 0;
    v43 = (v6 + 16);
    v44 = v14 + 56;
    v40 = (v6 + 32);
    v42 = v6 + 8;
    v37 = v13;
    while (1)
    {
      v16 = sub_1B2252620();
      sub_1B22525C0();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = v17(v13, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15), a2);
      }

      else
      {
        v41 = v15;
        result = sub_1B2252CF0();
        if (v35 != 8)
        {
          goto LABEL_23;
        }

        v46 = result;
        v17 = *v43;
        (*v43)(v13, &v46, a2);
        result = swift_unknownObjectRelease();
        v15 = v41;
      }

      v41 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = *v40;
      v39(v45, v13, a2);
      v19 = *(v14 + 40);
      v20 = sub_1B2252210();
      v21 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v22 = v20 & v21;
        v23 = (v20 & v21) >> 6;
        v24 = *(v44 + 8 * v23);
        v25 = 1 << (v20 & v21);
        if ((v25 & v24) == 0)
        {
          break;
        }

        v26 = v14;
        v17(v8, (*(v14 + 48) + *(v6 + 72) * v22), a2);
        v27 = a3;
        v28 = *(a3 + 8);
        v29 = sub_1B2252270();
        v30 = *(v6 + 8);
        v30(v8, a2);
        if (v29)
        {
          v30(v45, a2);
          a3 = v27;
          v13 = v37;
          v14 = v26;
          v15 = v41;
          goto LABEL_16;
        }

        v20 = v22 + 1;
        a3 = v27;
        v14 = v26;
      }

      v31 = v45;
      *(v44 + 8 * v23) = v25 | v24;
      result = (v39)(*(v14 + 48) + *(v6 + 72) * v22, v31, a2);
      v32 = *(v14 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      v13 = v37;
      v15 = v41;
      if (v33)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v34;
LABEL_16:
      v5 = v36;
      if (v15 == v38)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

uint64_t DatabaseFunction.__allocating_init(_:argumentCount:pure:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B21154F0();
  v9 = sub_1B21179B8();
  DatabaseFunction.init(_:argumentCount:pure:function:)(v9, v10, v11, v12, a5, a6);
  return v6;
}

void *DatabaseFunction.callAsFunction(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(a1 + 16);
  if (*(v2 + 56) == 1)
  {
    if (v7)
    {
      v41 = MEMORY[0x1E69E7CC0];

      sub_1B21185F4();
      v8 = v41;
      v9 = a1 + 32;
      do
      {
        sub_1B211EE68(v9, &v35);
        sub_1B21139A0(&v35, v38);
        v10 = sub_1B2115B0C();
        v11(v10);
        sub_1B2113208(&v35);
        sub_1B2111CC0();
        if (v20)
        {
          sub_1B2116914();
          v8 = v41;
        }

        sub_1B21164A4(v12, v13, v14, v15, v16, v17, v18, v19, v35, v36, v37, v38, v39, __src[0]);
        v9 += 40;
        --v7;
      }

      while (v7);
    }

    else
    {
      v32 = *(v2 + 24);

      v8 = MEMORY[0x1E69E7CC0];
    }

    __src[0] = v6;
    __src[1] = v5;
    LOWORD(__src[2]) = 0;
  }

  else
  {
    if (v7)
    {
      v41 = MEMORY[0x1E69E7CC0];

      sub_1B21185F4();
      v8 = v41;
      v21 = a1 + 32;
      do
      {
        sub_1B211EE68(v21, &v35);
        sub_1B21139A0(&v35, v38);
        v22 = sub_1B2115B0C();
        v23(v22);
        sub_1B2113208(&v35);
        sub_1B2111CC0();
        if (v20)
        {
          sub_1B2116914();
          v8 = v41;
        }

        sub_1B21164A4(v24, v25, v26, v27, v28, v29, v30, v31, v35, v36, v37, v38, v39, __src[0]);
        v21 += 40;
        --v7;
      }

      while (v7);
    }

    else
    {
      v33 = *(v2 + 24);

      v8 = MEMORY[0x1E69E7CC0];
    }

    __src[0] = v6;
    __src[1] = v5;
    LOWORD(__src[2]) = 1;
  }

  __src[3] = v8;
  sub_1B2179374(__src);
  return memcpy(a2, __src, 0xA3uLL);
}

uint64_t sub_1B224D078(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (*(v1 + 36))
  {
    v7 = 2049;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1B2252350();
  function_v2 = sqlite3_create_function_v2(v3, (v8 + 32), v6, v7, 0, 0, 0, 0, 0);

  if (function_v2)
  {
    v11 = Database.lastErrorMessage.getter();
    if (!v12)
    {
      if (!sqlite3_errstr(function_v2))
      {
        __break(1u);
      }

      v11 = sub_1B22523F0();
    }

    LODWORD(v25) = function_v2;
    sub_1B2112F20(v11, v12, v13, v14, v15, v16, v17, v18, xDestroy, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

BOOL sub_1B224D168(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = sub_1B22531F0();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_1B224D1EC()
{
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t sub_1B224D254()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  return sub_1B224D1EC();
}

uint64_t sub_1B224D260()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  return sub_1B224D1BC();
}

uint64_t sub_1B224D26C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t DatabaseFunction.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DatabaseFunction.init(_:argumentCount:pure:function:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  if ((a3 & 0x100000000) != 0)
  {
    v9 = -1;
  }

  else
  {
    v9 = a3;
  }

  *(v6 + 32) = v9;
  *(v6 + 36) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;
  *(v6 + 40) = sub_1B224E61C;
  *(v6 + 48) = v10;
  *(v6 + 56) = 0;
  return v6;
}

uint64_t sub_1B224D38C(int a1, sqlite3_value **a2, void (*a3)(void))
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    goto LABEL_26;
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!a1)
  {
    goto LABEL_24;
  }

  v24 = a3;
  v5 = a1;
  v27 = MEMORY[0x1E69E7CC0];
  sub_1B2114114();
  v3 = v27;
  while (2)
  {
    if (!v5)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v6 = *a2;
    if (!*a2)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    v7 = 0.0;
    v8 = 0;
    v9 = 4;
    switch(sqlite3_value_type(*a2))
    {
      case 1:
        v7 = COERCE_DOUBLE(sqlite3_value_int64(v6));
        v8 = 0;
        v9 = 0;
        goto LABEL_20;
      case 2:
        v8 = 0;
        v7 = sqlite3_value_double(v6);
        v9 = 1;
        goto LABEL_20;
      case 3:
        if (!sqlite3_value_text(v6))
        {
          goto LABEL_28;
        }

        v7 = COERCE_DOUBLE(sub_1B2252400());
        v8 = v18;
        v9 = 2;
LABEL_20:
        v27 = v3;
        v19 = *(v3 + 16);
        if (v19 >= *(v3 + 24) >> 1)
        {
          sub_1B2114114();
          v3 = v27;
        }

        *(v3 + 16) = v19 + 1;
        v20 = v3 + 24 * v19;
        *(v20 + 32) = v7;
        *(v20 + 40) = v8;
        *(v20 + 48) = v9;
        ++a2;
        if (--v5)
        {
          continue;
        }

        a3 = v24;
        break;
      case 4:
        v10 = sqlite3_value_blob(v6);
        if (v10 && (v11 = v10, (v12 = sqlite3_value_bytes(v6)) != 0))
        {
          v13 = v12;
          if (v12 < 15)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = v12;
            memcpy(&__dst, v11, v12);
            v7 = *&__dst;
            v8 = v25 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v9 = 3;
            v25 = v8;
          }

          else
          {
            v14 = sub_1B2251BF0();
            v15 = *(v14 + 48);
            v16 = *(v14 + 52);
            swift_allocObject();
            if (v13 == 0x7FFFFFFF)
            {
              v17 = sub_1B2251BB0();
              sub_1B2251DB0();
              v7 = COERCE_DOUBLE(swift_allocObject());
              *(*&v7 + 16) = xmmword_1B226BA10;
              v8 = v17 | 0x8000000000000000;
            }

            else
            {
              *&v7 = v13 << 32;
              v8 = sub_1B2251BB0() | 0x4000000000000000;
            }

            v9 = 3;
          }
        }

        else
        {
          v7 = 0.0;
          v9 = 3;
          v8 = 0xC000000000000000;
        }

        goto LABEL_20;
      case 5:
        goto LABEL_20;
      default:
        *&__dst = 0;
        *(&__dst + 1) = 0xE000000000000000;
        sub_1B2252CD0();

        *&__dst = 0xD00000000000001ELL;
        *(&__dst + 1) = 0x80000001B22712B0;
        v23 = sub_1B2252FD0();
        MEMORY[0x1B2741EB0](v23);

        result = sub_1B2252EC0();
        __break(1u);
        return result;
    }

    break;
  }

LABEL_24:
  a3(v3);

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DatabaseFunction.__allocating_init<A>(_:argumentCount:pure:aggregate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B21154F0();
  v10 = sub_1B21179B8();
  DatabaseFunction.init<A>(_:argumentCount:pure:aggregate:)(v10, v11, v12, v13, v14, a6, a7);
  return v7;
}

uint64_t DatabaseFunction.init<A>(_:argumentCount:pure:aggregate:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  if ((a3 & 0x100000000) != 0)
  {
    v10 = -1;
  }

  else
  {
    v10 = a3;
  }

  *(v7 + 32) = v10;
  *(v7 + 36) = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = a6;
  *(v11 + 24) = a7;
  *(v7 + 40) = sub_1B224E638;
  *(v7 + 48) = v11;
  *(v7 + 56) = 1;
  return v7;
}

uint64_t sub_1B224D7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 8);
  a3[3] = a1;
  a3[4] = a2;
  sub_1B212FF14(a3);
  return v5(a1, a2);
}

uint64_t sub_1B224D834()
{
  sub_1B2113208((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

void *sub_1B224D86C(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  result = sqlite3_user_data(a1);
  if (result)
  {
    v7 = result;
    type metadata accessor for DatabaseFunction();
    v9 = v7[2];
    v8 = v7[3];

    v9(v10, a2, a3);
    sub_1B224D95C(v10, a1);

    return sub_1B2122B98(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B224D95C(uint64_t a1, sqlite3_context *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  sub_1B21446E0(a1, v18);
  v3 = v19;
  if (v19)
  {
    v4 = v20;
    sub_1B21139A0(v18, v19);
    (*(v4 + 24))(v16, v3, v4);
    v5 = v16[0];
    v6 = v16[1];
    v7 = v17;
    sub_1B2113208(v18);
    switch(v7)
    {
      case 1:
        sqlite3_result_double(a2, *&v5);
        break;
      case 2:
        if (qword_1ED85E010 != -1)
        {
          swift_once();
        }

        v12 = qword_1ED861908;
        v13 = sub_1B2252350();
        sub_1B2113A44(v5, v6, 2);
        sqlite3_result_text(a2, (v13 + 32), -1, v12);

        break;
      case 3:
        switch(v6 >> 62)
        {
          case 1uLL:
            v15 = v5 >> 32;
            if (v5 >> 32 < v5)
            {
              __break(1u);
            }

            v14 = v5;
            goto LABEL_22;
          case 2uLL:
            v14 = *(v5 + 16);
            v15 = *(v5 + 24);
LABEL_22:
            sub_1B224E8CC(v14, v15, v6 & 0x3FFFFFFFFFFFFFFFLL, a2);
            goto LABEL_23;
          case 3uLL:
            memset(v18, 0, 14);
            if (qword_1ED85E010 != -1)
            {
              swift_once();
            }

            v10 = qword_1ED861908;
            v11 = a2;
            v9 = 0;
            goto LABEL_19;
          default:
            v18[0] = v5;
            LOWORD(v18[1]) = v6;
            BYTE2(v18[1]) = BYTE2(v6);
            BYTE3(v18[1]) = BYTE3(v6);
            BYTE4(v18[1]) = BYTE4(v6);
            BYTE5(v18[1]) = BYTE5(v6);
            v9 = BYTE6(v6);
            if (qword_1ED85E010 != -1)
            {
              swift_once();
              v9 = BYTE6(v6);
            }

            v10 = qword_1ED861908;
            v11 = a2;
LABEL_19:
            sqlite3_result_blob(v11, v18, v9, v10);
LABEL_23:
            sub_1B2113A44(v5, v6, 3);
            break;
        }

        break;
      case 4:
        goto LABEL_5;
      default:
        sqlite3_result_int64(a2, v5);
        break;
    }
  }

  else
  {
    sub_1B2122B98(v18);
LABEL_5:
    sqlite3_result_null(a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B224DC50(void *a1, sqlite3_context *a2)
{
  v3 = a1;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if (swift_dynamicCast())
  {
    if (v8)
    {
      v4 = sub_1B2252350();
      sqlite3_result_error(a2, (v4 + 32), -1);
    }

    sqlite3_result_error_code(a2, v7);

    return sub_1B211A378(v9);
  }

  else
  {
    sub_1B2252E10();
    v6 = sub_1B2252350();

    sqlite3_result_error(a2, (v6 + 32), -1);
  }
}

uint64_t sub_1B224DD9C(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  LODWORD(v4) = a2;
  v32 = *MEMORY[0x1E69E9840];
  type metadata accessor for DatabaseFunction();
  v6 = sub_1B224E1BC(a1);

  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    goto LABEL_24;
  }

  v28 = v6;
  v4 = v4;
  v30 = MEMORY[0x1E69E7CC0];
  sub_1B2114114();
  v7 = v30;
  while (2)
  {
    if (!v4)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v8 = *a3;
    if (!*a3)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    v9 = 0.0;
    v10 = 0;
    v11 = 4;
    switch(sqlite3_value_type(*a3))
    {
      case 1:
        v9 = COERCE_DOUBLE(sqlite3_value_int64(v8));
        v10 = 0;
        v11 = 0;
        goto LABEL_20;
      case 2:
        v10 = 0;
        v9 = sqlite3_value_double(v8);
        v11 = 1;
        goto LABEL_20;
      case 3:
        if (!sqlite3_value_text(v8))
        {
          goto LABEL_28;
        }

        v9 = COERCE_DOUBLE(sub_1B2252400());
        v10 = v20;
        v11 = 2;
LABEL_20:
        v21 = *(v30 + 16);
        if (v21 >= *(v30 + 24) >> 1)
        {
          sub_1B2114114();
        }

        *(v30 + 16) = v21 + 1;
        v22 = v30 + 24 * v21;
        *(v22 + 32) = v9;
        *(v22 + 40) = v10;
        *(v22 + 48) = v11;
        ++a3;
        if (--v4)
        {
          continue;
        }

        v6 = v28;
        break;
      case 4:
        v12 = sqlite3_value_blob(v8);
        if (v12 && (v13 = v12, (v14 = sqlite3_value_bytes(v8)) != 0))
        {
          v15 = v14;
          if (v14 < 15)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = v14;
            memcpy(&__dst, v13, v14);
            v9 = *&__dst;
            v10 = v29 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v11 = 3;
            v29 = v10;
          }

          else
          {
            v16 = sub_1B2251BF0();
            v17 = *(v16 + 48);
            v18 = *(v16 + 52);
            swift_allocObject();
            if (v15 == 0x7FFFFFFF)
            {
              v19 = sub_1B2251BB0();
              sub_1B2251DB0();
              v9 = COERCE_DOUBLE(swift_allocObject());
              *(*&v9 + 16) = xmmword_1B226BA10;
              v10 = v19 | 0x8000000000000000;
            }

            else
            {
              *&v9 = v15 << 32;
              v10 = sub_1B2251BB0() | 0x4000000000000000;
            }

            v11 = 3;
          }
        }

        else
        {
          v9 = 0.0;
          v11 = 3;
          v10 = 0xC000000000000000;
        }

        goto LABEL_20;
      case 5:
        goto LABEL_20;
      default:
        *&__dst = 0;
        *(&__dst + 1) = 0xE000000000000000;
        sub_1B2252CD0();

        *&__dst = 0xD00000000000001ELL;
        *(&__dst + 1) = 0x80000001B22712B0;
        v27 = sub_1B2252FD0();
        MEMORY[0x1B2741EB0](v27);

        result = sub_1B2252EC0();
        __break(1u);
        return result;
    }

    break;
  }

LABEL_24:
  swift_beginAccess();
  v23 = v6[5];
  v24 = v6[6];
  sub_1B21A1628((v6 + 2), v23);
  (*(v24 + 16))(v7, v23, v24);
  swift_endAccess();

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B224E1BC(sqlite3_context *a1)
{
  result = sqlite3_aggregate_context(a1, 8);
  if (result)
  {
    v3 = result;
    v4 = 0;
    while (v4 != 8)
    {
      if (*(result + v4++))
      {
        return *result;
      }
    }

    result = sqlite3_user_data(a1);
    if (!result)
    {
      goto LABEL_10;
    }

    v8 = result[2];
    v7 = result[3];

    v8(v11, v9);

    sub_1B211EE68(v11, v10);
    type metadata accessor for DatabaseFunction.AggregateContext();
    v6 = swift_allocObject();
    *(v6 + 56) = 0;
    sub_1B21217FC(v10, v6 + 16);
    *v3 = v6;
    sub_1B2113208(v11);
    return v6;
  }

  else
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B224E298(sqlite3_context *a1)
{
  type metadata accessor for DatabaseFunction();
  v2 = sub_1B224E1BC(a1);
  if (v2[7])
  {
  }

  else
  {
    swift_beginAccess();
    sub_1B211EE68((v2 + 2), v7);
    v4 = v8;
    v5 = v9;
    sub_1B21139A0(v7, v8);
    (*(v5 + 24))(v6, v4, v5);
    sub_1B224D95C(v6, a1);

    sub_1B2122B98(v6);
    return sub_1B2113208(v7);
  }
}

void sub_1B224E3DC(void *a1, uint64_t a2, sqlite3_context *a3)
{
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = a3;
  v4 = a1;
  if (qword_1ED85E010 != -1)
  {
LABEL_10:
    swift_once();
  }

  sqlite3_result_blob(v3, v4, v5, qword_1ED861908);
}

uint64_t DatabaseFunction.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_1B224E640();
  return v0;
}

uint64_t DatabaseFunction.__deallocating_deinit()
{
  DatabaseFunction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

uint64_t DatabaseFunction.hashValue.getter()
{
  sub_1B2253420();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1B2252370();
  sub_1B2253450();
  return sub_1B2253470();
}

uint64_t DatabaseFunction.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1B2252370();
  return sub_1B2253450();
}

uint64_t sub_1B224E5B8()
{
  v1 = *v0;
  sub_1B2253420();
  DatabaseFunction.hash(into:)();
  return sub_1B2253470();
}

unint64_t sub_1B224E64C()
{
  result = qword_1ED85E830;
  if (!qword_1ED85E830)
  {
    type metadata accessor for DatabaseFunction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E830);
  }

  return result;
}

__n128 sub_1B224E7D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B224E7E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1B224E824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B224E878()
{
  result = qword_1EB7A34E0;
  if (!qword_1EB7A34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A34E0);
  }

  return result;
}

void sub_1B224E8CC(uint64_t a1, uint64_t a2, uint64_t a3, sqlite3_context *a4)
{
  v7 = sub_1B2251BC0();
  if (v7)
  {
    v8 = sub_1B2251BE0();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1B2251BD0();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v7[v12];
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1B224E3DC(v7, v14, a4);
}

uint64_t static ValueObservationScheduler.async(onQueue:)(void *a1)
{
  v6 = sub_1B2111770();
  v7 = &off_1F29778E8;
  *&v5 = a1;
  type metadata accessor for ValueObservationScheduler();
  v2 = swift_allocObject();
  sub_1B21217FC(&v5, v2 + 16);
  v3 = a1;
  return v2;
}

uint64_t sub_1B224E9FC()
{
  v3 = &type metadata for ImmediateImpl;
  v4 = &off_1F2977948;
  type metadata accessor for ValueObservationScheduler();
  v0 = swift_allocObject();
  result = sub_1B21217FC(&v2, v0 + 16);
  qword_1EB7A34E8 = v0;
  return result;
}

uint64_t static ValueObservationScheduler.immediate.getter()
{
  if (qword_1EB7A0D98 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B224EAB8(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  sub_1B21139A0(v2 + 2, v5);
  if ((*(v6 + 16))(v5, v6))
  {
    return a1();
  }

  v8 = v2[5];
  v9 = v2[6];
  sub_1B21139A0(v2 + 2, v8);
  return (*(v9 + 8))(a1, a2, v8, v9);
}

uint64_t ValueObservationScheduler.__deallocating_deinit()
{
  sub_1B2113208((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B224EBC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B22520F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B2252120();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B2111770();
  v14 = sub_1B2252A30();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F2977960;
  v15 = _Block_copy(aBlock);

  sub_1B2252100();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B212C084();
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B212C0DC();
  sub_1B2252BC0();
  MEMORY[0x1B2742540](0, v13, v8, v15);
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1B224EE28()
{
  if ([objc_opt_self() isMainThread])
  {
    return 1;
  }

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B224EEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B22520F0();
  v5 = sub_1B211280C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B2252120();
  v13 = sub_1B211280C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F2977900;
  v20 = _Block_copy(aBlock);

  sub_1B2252100();
  v22[1] = MEMORY[0x1E69E7CC0];
  sub_1B212C084();
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B212C0DC();
  sub_1B2252BC0();
  MEMORY[0x1B2742540](0, v19, v11, v20);
  _Block_release(v20);
  (*(v7 + 8))(v11, v4);
  (*(v15 + 8))(v19, v12);
}

uint64_t sub_1B224F128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B224F158(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1B224F198(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B224F214()
{
  sub_1B2111640();
  v1 = v0;
  v2 = *(v0 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B213CA68();
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      memcpy(__dst, v3, 0xA3uLL);
      memcpy(v7, v3, sizeof(v7));
      sub_1B2127DC0(__dst, __src);
      swift_getAtKeyPath();
      sub_1B21356F8(__dst);
      memcpy(v7, __src, sizeof(v7));
      v4 = *(v8 + 16);
      if (v4 >= *(v8 + 24) >> 1)
      {
        sub_1B2114574();
        sub_1B213CA68();
      }

      *(v8 + 16) = v4 + 1;
      memcpy((v8 + 168 * v4 + 32), v7, 0xA3uLL);
      v3 += 168;
      --v2;
    }

    while (v2);
  }

  sub_1B2112FDC();
}

unint64_t sub_1B224F344(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1B216EC38(0, v2, 0);
  v3 = v15;
  v7 = (a1 + 40);
  while (*(a2 + 16))
  {
    v8 = *(v7 - 1);
    v9 = *v7;

    result = sub_1B211E590();
    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }

    memcpy(__dst, (*(a2 + 56) + 176 * result), 0xABuLL);
    sub_1B21818BC(__dst, v13);

    v15 = v3;
    v12 = *(v3 + 16);
    v11 = *(v3 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1B216EC38(v11 > 1, v12 + 1, 1);
      v3 = v15;
    }

    *(v3 + 16) = v12 + 1;
    result = memcpy((v3 + 176 * v12 + 32), __dst, 0xABuLL);
    v7 += 2;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B224F47C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(result + 16))
  {
    v7 = result;
    v8 = swift_allocObject();
    v8[5] = &type metadata for RangeRowAdapter;
    v8[6] = &protocol witness table for RangeRowAdapter;
    v8[2] = a2;
    v8[3] = a3;
    v8[7] = v7;

    v9 = &protocol witness table for ScopeAdapter;
    v10 = &type metadata for ScopeAdapter;
    a2 = v8;
  }

  else
  {
    a4[1] = a3;
    v9 = &protocol witness table for RangeRowAdapter;
    v10 = &type metadata for RangeRowAdapter;
  }

  a4[3] = v10;
  a4[4] = v9;
  *a4 = a2;
  return result;
}

const void *sub_1B224F530()
{
  memcpy(__dst, v0, sizeof(__dst));
  v2 = sub_1B21223F4();
  sub_1B2139BC4(v2, v3, v4);
  if (!v1)
  {
    type metadata accessor for StatementArgumentsSink();
    sub_1B2111758();

    v5 = sub_1B2114D98(0);
    type metadata accessor for SQLGenerationContext();
    swift_initStackObject();

    sub_1B2117164(v6, v5, MEMORY[0x1E69E7CC0]);
    v0 = sub_1B2178F60();
  }

  return v0;
}

uint64_t sub_1B224F63C()
{
  v1 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  v2 = __dst[0];
  v19 = __dst[0];
  v3 = __dst[1];
  type metadata accessor for TableAlias();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B2257570;
  *(v5 + 32) = v4;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();

  v6 = sub_1B2114D98(0);
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v8 = sub_1B2117164(v7, v6, v5);
  v9 = sub_1B2138500();
  swift_allocObject();

  sub_1B2138A30(v10, v9);
  sub_1B2251608(__src);
  memcpy(v32, __src, sizeof(v32));
  memcpy(v26, v1, sizeof(v26));
  memcpy(v30, v1, sizeof(v30));
  sub_1B21619D8(&qword_1EB7A0EB8, &qword_1B22545D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B22546B0;
  memcpy(v33, __src, 0xA3uLL);
  sub_1B214D464(v33);
  memcpy((v11 + 32), v33, 0xB8uLL);
  sub_1B2251644(v1, v25);
  sub_1B224FB7C(v11, v27);
  swift_setDeallocating();
  sub_1B21B717C();
  sub_1B21A6408(v27, v26);
  memcpy(v29, v26, sizeof(v29));
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_1B2252CD0();

  strcpy(v26, "DELETE FROM ");
  BYTE5(v26[1]) = 0;
  HIWORD(v26[1]) = -5120;
  v25[0] = 34;
  v25[1] = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v19, v3);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  v12 = v25[1];
  MEMORY[0x1B2741EB0](v25[0], v25[1]);

  MEMORY[0x1B2741EB0](0x20455245485720, 0xE700000000000000);
  v23 = v26[0];
  v24 = v26[1];
  v22[3] = &type metadata for SQLExpression;
  v22[4] = &protocol witness table for SQLExpression;
  v22[0] = swift_allocObject();
  memcpy((v22[0] + 16), v32, 0xA3uLL);
  sub_1B21DA908(v22);
  v13 = v33[25];
  v14 = sub_1B2127E58(v8, 0);
  if (v13)
  {
    sub_1B2142BCC(v29);

    memcpy(v25, v26, 0xA3uLL);
    sub_1B21356F8(v25);

    sub_1B2113208(v22);
  }

  else
  {
    v16 = v14;
    v17 = v15;
    memcpy(v25, v26, 0xA3uLL);
    sub_1B21356F8(v25);
    sub_1B2113208(v22);
    MEMORY[0x1B2741EB0](v16, v17);

    MEMORY[0x1B2741EB0](0x28204E4920, 0xE500000000000000);
    sub_1B21376C4();
    MEMORY[0x1B2741EB0]();

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    v12 = sub_1B212641C(v23, v24, 0);

    sub_1B211B048(&v21);
    v20 = v21;
    Statement.arguments.setter(&v20);
    sub_1B2142BCC(v29);
  }

  return v12;
}

void *sub_1B224FB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a2;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v74 = a2;
    v83 = MEMORY[0x1E69E7CC0];
    sub_1B213A1C8();
    v6 = v83;
    v8 = *(v2 + 16);
    v9 = (a1 + 32);
    do
    {
      memcpy(__dst, v9, sizeof(__dst));
      memcpy(v82, v9, sizeof(v82));
      switch(sub_1B213A580(v82))
      {
        case 1u:
          v42 = sub_1B213AA9C(v82);
          v43 = memcpy(v78, v42, 0xA3uLL);
          sub_1B21220D8(v43, v44, v45, v46, v47, v48, v49, v50, v72, v74, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], v77, *v78, *&v78[8], *&v78[16], *&v78[24], *&v78[32], *&v78[40], *&v78[48], *&v78[56], *&v78[64], *&v78[72], *&v78[80], *&v78[88], *&v78[96], *&v78[104], *&v78[112], *&v78[120], *&v78[128], *&v78[136], *&v78[144], *&v78[152], *&v78[160], *&v78[168], *&v78[176], v79, v80[0]);
          v51 = sub_1B2112318();
          sub_1B213BBD8(v51, v52);
          sub_1B213A5CC(__dst);
          memcpy(v78, __src, 0xA3uLL);
          sub_1B214D464(v78);
          goto LABEL_9;
        case 2u:
          v11 = sub_1B213AA9C(v82);
          v13 = v11[21];
          v12 = v11[22];
          v14 = memcpy(v78, v11, 0xA3uLL);
          v22 = sub_1B21220D8(v14, v15, v16, v17, v18, v19, v20, v21, v72, v74, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], v77, *v78, *&v78[8], *&v78[16], *&v78[24], *&v78[32], *&v78[40], *&v78[48], *&v78[56], *&v78[64], *&v78[72], *&v78[80], *&v78[88], *&v78[96], *&v78[104], *&v78[112], *&v78[120], *&v78[128], *&v78[136], *&v78[144], *&v78[152], *&v78[160], *&v78[168], *&v78[176], v79, v80[0]);
          sub_1B21220D8(v22, v23, v24, v25, v26, v27, v28, v29, v73, v75, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], v77, *v78, *&v78[8], *&v78[16], *&v78[24], *&v78[32], *&v78[40], *&v78[48], *&v78[56], *&v78[64], *&v78[72], *&v78[80], *&v78[88], *&v78[96], *&v78[104], *&v78[112], *&v78[120], *&v78[128], *&v78[136], *&v78[144], *&v78[152], *&v78[160], *&v78[168], *&v78[176], v79, v80[0]);
          v30 = sub_1B2112318();
          sub_1B213BBD8(v30, v31);
          sub_1B21356F8(v11);
          sub_1B213A5CC(__dst);
          memcpy(v78, __src, 0xA8uLL);
          *&v78[168] = v13;
          *&v78[176] = v12;
          sub_1B2155A5C(v78);
          goto LABEL_9;
        case 3u:
          v32 = sub_1B213AA9C(v82);
          sub_1B21220D8(v32, v33, v34, v35, v36, v37, v38, v39, v72, v74, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], v77, *v32, *&v78[8], *&v78[16], *&v78[24], *&v78[32], *&v78[40], *&v78[48], *&v78[56], *&v78[64], *&v78[72], *&v78[80], *&v78[88], *&v78[96], *&v78[104], *&v78[112], *&v78[120], *&v78[128], *&v78[136], *&v78[144], *&v78[152], *&v78[160], *&v78[168], *&v78[176], v79, v80[0]);
          v40 = sub_1B2112318();
          sub_1B2153E58(v40, v41);
          sub_1B213A5CC(__dst);
          *v78 = *__src;
          sub_1B216ED24(v78);
          goto LABEL_9;
        case 4u:
          *v78 = v8;
          sub_1B213A59C(v78);

          sub_1B213A5CC(__dst);
LABEL_9:
          memcpy(v80, v78, sizeof(v80));
          break;
        default:
          sub_1B213AA9C(v82);
          memcpy(v78, __dst, sizeof(v78));
          v10 = *sub_1B213AA9C(v78);
          memcpy(v80, __dst, sizeof(v80));

          break;
      }

      v83 = v6;
      v54 = *(v6 + 16);
      v53 = *(v6 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1B211156C(v53);
        sub_1B2114574();
        sub_1B213A1C8();
        v6 = v83;
      }

      *(v6 + 16) = v54 + 1;
      memcpy((v6 + 184 * v54 + 32), v80, 0xB8uLL);
      v9 += 184;
      --v5;
    }

    while (v5);
    v4 = v74;
  }

  v56 = *(v3 + 80);
  v55 = *(v3 + 88);
  *__src = *(v3 + 24);
  *v78 = *v3;
  *&v78[16] = *(v3 + 16);
  v57 = *(v3 + 57);
  *v80 = *(v3 + 41);
  *&v80[16] = v57;
  *&v80[31] = *(v3 + 72);
  memcpy(__dst, (v3 + 96), 0x48uLL);
  v58 = swift_allocObject();
  *(v58 + 16) = v6;
  sub_1B22515A0(v3, v82);
  sub_1B212AC5C(__src, &qword_1EB7A2230, &unk_1B225BB20);
  sub_1B21A4AD0(v56, v55, v59, v60, v61, v62, v63, v64, v72, v74);
  v66 = v65;
  v68 = v67;

  *v4 = *v78;
  v69 = *&v78[16];
  v70 = *&v80[16];
  *(v4 + 41) = *v80;
  *(v4 + 16) = v69;
  *(v4 + 24) = sub_1B22516AC;
  *(v4 + 32) = v58;
  *(v4 + 40) = 0;
  *(v4 + 57) = v70;
  *(v4 + 72) = *&v80[31];
  *(v4 + 80) = v66;
  *(v4 + 88) = v68;
  return memcpy((v4 + 96), __dst, 0x48uLL);
}

uint64_t sub_1B224FEF8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = v3;
  v47 = *(a3 + 16);
  v6 = *a2;
  memcpy(__dst, v3, sizeof(__dst));
  v7 = __dst[0];
  v8 = __dst[1];
  type metadata accessor for TableAlias();
  v9 = swift_allocObject();
  v46 = v7;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 1;
  sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B2257570;
  *(v10 + 32) = v9;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  v45 = v8;

  v11 = sub_1B2114D98(0);
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v13 = sub_1B2117164(v12, v11, v10);
  v14 = sub_1B2138500();
  swift_allocObject();

  sub_1B2138A30(v15, v14);
  sub_1B2251608(__src);
  memcpy(v64, __src, sizeof(v64));
  memcpy(v59, v5, 0xB8uLL);
  memcpy(v69, v5, sizeof(v69));
  sub_1B21619D8(&qword_1EB7A0EB8, &qword_1B22545D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B22546B0;
  memcpy(v65, __src, 0xA3uLL);
  sub_1B214D464(v65);
  memcpy((v16 + 32), v65, 0xB8uLL);
  sub_1B2251644(v5, v62);
  sub_1B224FB7C(v16, v66);
  swift_setDeallocating();
  sub_1B21B717C();
  sub_1B21A6408(v66, v59);
  memcpy(v68, v59, sizeof(v68));
  v60 = 0x20455441445055;
  v61 = 0xE700000000000000;
  switch(v6)
  {
    case 1:
      goto LABEL_11;
    default:
      v18 = 0x54524F4241;
      v19 = sub_1B22531F0();

      v20 = v4;
      if ((v19 & 1) == 0)
      {
        v59[0] = 2118223;
        v59[1] = 0xE300000000000000;
        v21 = 0xE500000000000000;
        switch(v6)
        {
          case 0:
            v21 = 0xE800000000000000;
            v18 = 0x4B4341424C4C4F52;
            break;
          case 1:
            break;
          case 2:
            v21 = 0xE400000000000000;
            v18 = 1279869254;
            break;
          case 3:
            v21 = 0xE600000000000000;
            v18 = 0x45524F4E4749;
            break;
          case 4:
            v21 = 0xE700000000000000;
            v18 = 0x4543414C504552;
            break;
          default:
            JUMPOUT(0);
        }

        MEMORY[0x1B2741EB0](v18, v21);

        MEMORY[0x1B2741EB0](32, 0xE100000000000000);
        MEMORY[0x1B2741EB0](v59[0], v59[1]);
LABEL_11:

        v20 = v4;
      }

      v59[0] = 34;
      v59[1] = 0xE100000000000000;
      MEMORY[0x1B2741EB0](v46, v45);
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);
      MEMORY[0x1B2741EB0](v59[0], v59[1]);

      MEMORY[0x1B2741EB0](0x2054455320, 0xE500000000000000);
      v70 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v49 = v70;
      v22 = a3 + 32;
      v17 = v47 - 1;
      break;
  }

  while (1)
  {
    sub_1B214FAC0(v22, v59);
    v23 = v59[3];
    v24 = v59[4];
    sub_1B21139A0(v59, v59[3]);
    (*(*(*(v24 + 8) + 8) + 8))(v62, v23);
    v25 = sub_1B2127E58(v13, 0);
    if (v20)
    {
      sub_1B2142BCC(v68);

      memcpy(v58, v62, 0xA3uLL);
      sub_1B21356F8(v58);

      sub_1B214FAF8(v59);

      return v17;
    }

    v27 = v25;
    v28 = v26;
    memcpy(v57, v62, 0xA3uLL);
    sub_1B21356F8(v57);
    v56[0] = v27;
    v56[1] = v28;

    MEMORY[0x1B2741EB0](2112800, 0xE300000000000000);

    v29 = v56[0];
    v30 = v56[1];
    memcpy(v58, &v59[5], 0xA3uLL);
    memcpy(v56, &v59[5], 0xA3uLL);
    sub_1B2127DC0(v58, v55);
    v31 = v13;
    v20 = 0;
    v32 = sub_1B2127E58(v13, 0);
    v34 = v33;
    memcpy(v55, v56, 0xA3uLL);
    sub_1B21356F8(v55);
    v53[0] = v29;
    v53[1] = v30;

    MEMORY[0x1B2741EB0](v32, v34);

    sub_1B214FAF8(v59);
    v35 = v49;
    v70 = v49;
    v36 = *(v49 + 16);
    if (v36 >= *(v49 + 24) >> 1)
    {
      sub_1B2116B10();
      v35 = v70;
    }

    *(v35 + 16) = v36 + 1;
    v37 = v35 + 16 * v36;
    *(v37 + 32) = v29;
    *(v37 + 40) = v30;
    if (!v17)
    {
      break;
    }

    v49 = v35;
    --v17;
    v22 += 208;
    v13 = v31;
  }

  v53[0] = v35;
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340);
  v38 = sub_1B2252250();
  v40 = v39;

  MEMORY[0x1B2741EB0](v38, v40);

  MEMORY[0x1B2741EB0](0x20455245485720, 0xE700000000000000);
  v54[3] = &type metadata for SQLExpression;
  v54[4] = &protocol witness table for SQLExpression;
  v54[0] = swift_allocObject();
  memcpy((v54[0] + 16), v64, 0xA3uLL);
  sub_1B21DA908(v54);
  v41 = sub_1B2127E58(v31, 0);
  v43 = v42;
  memcpy(v52, v53, 0xA3uLL);
  sub_1B21356F8(v52);
  sub_1B2113208(v54);
  MEMORY[0x1B2741EB0](v41, v43);

  MEMORY[0x1B2741EB0](0x28204E4920, 0xE500000000000000);
  sub_1B21376C4();
  MEMORY[0x1B2741EB0]();

  MEMORY[0x1B2741EB0](41, 0xE100000000000000);
  v17 = sub_1B212641C(v60, v61, 0);

  sub_1B211B048(&v51);
  v50 = v51;
  Statement.arguments.setter(&v50);

  sub_1B2142BCC(v68);

  return v17;
}

uint64_t sub_1B22508F4(uint64_t a1, uint64_t a2, uint64_t *__src, uint64_t *a4)
{
  v5 = v4;
  v8 = *a4;
  v9 = *__src;
  memcpy(__dst, __src + 1, 0xA2uLL);
  v32 = 0;
  v33 = 0xE000000000000000;
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v28 = v4;
      v29 = a1;
      v35 = a2;
      v32 = 40;
      v33 = 0xE100000000000000;
      v30[0] = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v11 = v30[0];
      v12 = (v9 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        __srca[0] = 34;
        __srca[1] = 0xE100000000000000;

        MEMORY[0x1B2741EB0](v13, v14);
        MEMORY[0x1B2741EB0](34, 0xE100000000000000);

        v30[0] = v11;
        v15 = *(v11 + 16);
        if (v15 >= *(v11 + 24) >> 1)
        {
          sub_1B2116B10();
          v11 = v30[0];
        }

        *(v11 + 16) = v15 + 1;
        v16 = v11 + 16 * v15;
        *(v16 + 32) = 34;
        *(v16 + 40) = 0xE100000000000000;
        v12 += 2;
        --v10;
      }

      while (v10);
      __srca[0] = v11;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340);
      v17 = sub_1B2252250();
      v19 = v18;

      MEMORY[0x1B2741EB0](v17, v19);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      a2 = v35;
      v5 = v28;
      a1 = v29;
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  swift_allocObject();

  v22 = sub_1B2138A30(v21, v20);
  memcpy(__srca, __dst, 0xA2uLL);
  sub_1B214CFE0(__dst, v30);
  v23 = sub_1B214D03C(v22);
  if (v5)
  {

    memcpy(v30, __srca, 0xA2uLL);
    sub_1B21DAF74(v30);
  }

  else
  {
    v26 = v23;
    v27 = v24;
    memcpy(v30, __srca, 0xA2uLL);
    sub_1B21DAF74(v30);
    MEMORY[0x1B2741EB0](a1, a2);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](v32, v33);

    MEMORY[0x1B2741EB0](0x2820534120, 0xE500000000000000);
    MEMORY[0x1B2741EB0](v26, v27);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);

    return 34;
  }
}

uint64_t sub_1B2250C7C()
{
  v0 = sub_1B2252F40();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2250CD0(char a1)
{
  if (a1)
  {
    return 1313427274;
  }

  else
  {
    return 0x494F4A205446454CLL;
  }
}

uint64_t sub_1B2250D28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B2250C7C();
  *a2 = result;
  return result;
}

uint64_t sub_1B2250D58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B2250CD0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B2250D84(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v68 = a1;
  v5 = *v3;
  v7 = *(v3 + 1);
  v6 = *(v3 + 2);
  v52 = v3[40];
  v57 = *(v3 + 8);
  v50 = *(v3 + 12);
  v51 = *(v3 + 3);
  v47 = *(v3 + 13);
  v48 = *(v3 + 4);
  v54 = *(v3 + 17);
  v55 = *(v3 + 16);
  if (v5 == 1 && (a3 & 1) == 0)
  {
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v9 = *(v3 + 6);
    v8 = *(v3 + 7);
    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    if (v5)
    {
      v10 = 1313427274;
    }

    else
    {
      v10 = 0x494F4A205446454CLL;
    }

    if (v5)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE90000000000004ELL;
    }

    MEMORY[0x1B2741EB0](v10, v11);

    MEMORY[0x1B2741EB0](32, 0xE100000000000000);
    v12 = v9;
    v13 = v57;
    v14 = sub_1B213ACD0(v68, v12, v8, v57);
    if (v4)
    {
    }

    else
    {
      v49 = v5;
      MEMORY[0x1B2741EB0](v14);

      v67[0] = v63[0];
      v67[1] = v63[1];
      v16 = sub_1B2139B70();
      if (v52 < 0)
      {
        v24 = v6;
        v7(v66, a2, v57);
      }

      else
      {
        v17 = sub_1B2138F90();
        if (v52)
        {
          v19 = v17;
        }

        else
        {
          v19 = v7;
        }

        if (v52)
        {
          v20 = v18;
        }

        else
        {
          v20 = v6;
        }

        if (v52)
        {
          v21 = v7;
        }

        else
        {
          v21 = v17;
        }

        if (v52)
        {
          v22 = v6;
        }

        else
        {
          v22 = v18;
        }

        if (v51)
        {
          v23 = v48;
        }

        else
        {
          v23 = 0;
        }

        v67[2] = v19;
        v67[3] = v20;
        v67[4] = v21;
        v67[5] = v22;
        v67[6] = v51;
        v67[7] = v23;

        v24 = sub_1B21D9790(v16);

        sub_1B21D9D18(v52 & 1, v24);

        v13 = v57;
        sub_1B21C5B9C();

        memcpy(v63, v64, 0xA3uLL);
        nullsub_1(v63);
        memcpy(v66, v63, 0xA3uLL);
      }

      memcpy(v65, v66, 0xA3uLL);
      v25 = v50;
      if (sub_1B213EA68(v65) != 1)
      {
        sub_1B213B944();
        v26 = v27;
        v28 = *(v27 + 16);
        v24 = (v28 + 1);
        if (v28 < *(v27 + 24) >> 1)
        {
          goto LABEL_33;
        }

        goto LABEL_54;
      }

      v26 = MEMORY[0x1E69E7CC0];
      if (v50)
      {
        goto LABEL_34;
      }

      while (1)
      {
        if (*(v26 + 16))
        {
          v30 = MEMORY[0x1B2741EB0](542002976, 0xE400000000000000);
          if (qword_1ED85DC80 != -1)
          {
            v30 = swift_once();
          }

          *v64 = xmmword_1ED85DC88;
          *&v64[16] = xmmword_1ED85DC98;
          *&v64[32] = word_1ED85DCA8;
          v64[34] = byte_1ED85DCAA;
          MEMORY[0x1EEE9AC00](v30);
          sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
          sub_1B211AB74(&qword_1ED85D868, &qword_1EB7A1CD8, &unk_1B225EDE0);
          swift_getKeyPath();

          sub_1B224F214();
          v32 = v31;

          sub_1B213B4BC(v64, v32, v63);

          v25 = sub_1B2127E58(v68, 0);
          v34 = v33;
          memcpy(v64, v63, 0xA3uLL);
          sub_1B21356F8(v64);
          v24 = v67;
          MEMORY[0x1B2741EB0](v25, v34);
        }

        v35 = v54;
        v36 = *(v55 + 16);
        if (!v36)
        {
          return v67[0];
        }

        v13 = 0;
        v37 = v36 - 1;
        v28 = v55 + 40;
        while (v13 < v36)
        {
          if (!v35[2])
          {
            goto LABEL_52;
          }

          v25 = *(v28 - 8);
          v38 = *v28;

          v24 = v35;
          v39 = sub_1B211E590();
          if ((v40 & 1) == 0)
          {
            goto LABEL_53;
          }

          v41 = (v35[7] + 216 * v39);
          memcpy(v61, v41, sizeof(v61));
          memcpy(v60, v41, sizeof(v60));
          memmove(v62, v41, 0xD8uLL);
          v63[0] = v25;
          v63[1] = v38;
          memcpy(&v63[2], v60, 0xD8uLL);
          sub_1B21A63AC(v61, &v58);
          sub_1B21A63AC(v62, &v58);
          sub_1B212AC5C(v63, &qword_1EB7A1CB8, &qword_1B225A4C0);
          memcpy(v64, v62, sizeof(v64));
          v58 = 32;
          v59 = 0xE100000000000000;
          memcpy(v60, v62, sizeof(v60));
          v42 = sub_1B2250D84(v68, v57, v49 & a3);
          MEMORY[0x1B2741EB0](v42);

          v25 = v59;
          v24 = v67;
          MEMORY[0x1B2741EB0](v58, v59);

          sub_1B21A6464(v64);
          if (v37 == v13)
          {
            return v67[0];
          }

          v35 = v54;
          v36 = *(v55 + 16);
          v28 += 16;
          ++v13;
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        sub_1B213B944();
        v26 = v43;
LABEL_33:
        *(v26 + 16) = v24;
        memcpy((v26 + 168 * v28 + 32), v65, 0xA3uLL);
        if (v25)
        {
LABEL_34:
          sub_1B2139B70();
          v25(v63);

          memcpy(v62, v63, 0xA3uLL);
          memcpy(v61, v63, 0xA3uLL);
          sub_1B213BBD8(v13, v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = *(v26 + 16);
            sub_1B213B944();
            v26 = v45;
          }

          v29 = *(v26 + 16);
          v24 = (v29 + 1);
          if (v29 >= *(v26 + 24) >> 1)
          {
            sub_1B213B944();
            v26 = v46;
          }

          sub_1B21356F8(v62);
          *(v26 + 16) = v24;
          memcpy((v26 + 168 * v29 + 32), v64, 0xA3uLL);
        }
      }
    }
  }

  return result;
}

void sub_1B2251608(uint64_t a1)
{
  *a1 = 1;
  bzero((a1 + 8), 0x98uLL);
  *(a1 + 162) = -88;
  *(a1 + 160) = 0;
}

uint64_t sub_1B225167C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = sub_1B213AFF8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B22516D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1B2251710(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B225179C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1B22517DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLQualifiedJoin.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B2251944()
{
  result = qword_1EB7A3510;
  if (!qword_1EB7A3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3510);
  }

  return result;
}