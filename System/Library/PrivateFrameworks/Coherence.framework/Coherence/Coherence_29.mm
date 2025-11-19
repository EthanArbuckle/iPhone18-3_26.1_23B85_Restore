uint64_t sub_1AE03C634(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A8, &unk_1AE251E20);
    v7 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v7);
    v9 = 0;
    v10 = result - 32;
    if (result < 32)
    {
      v10 = result - 17;
    }

    v11 = v10 >> 4;
    *(v7 + 2) = v6;
    *(v7 + 3) = 2 * v11;
    v37 = v3;
    v12 = v3 + 32;
    v13 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    v14 = v7 + 48;
    while (1)
    {
      if (v5 == v9)
      {
        __break(1u);
        goto LABEL_43;
      }

      v15 = *(a2 + 32 + 8 * v9);
      *(v14 - 2) = *(v12 + 8 * v9);
      *(v14 - 1) = v15;
      if (v6 - 1 == v9)
      {
        break;
      }

      ++v9;
      v14 += 16;
      if (v4 == v9)
      {
        __break(1u);
        break;
      }
    }

    v3 = v37;
    if (v4 > v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 24);

    v14 = v7 + 32;
    v13 = v16 >> 1;
    if (v4 > v5)
    {
LABEL_15:
      v17 = v3 + 32;
      v38 = v17;
      v39 = a2 + 32;
      while (v6 < v4)
      {
        v18 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_44;
        }

        if (v5 == v6)
        {
          goto LABEL_38;
        }

        if (v6 >= v5)
        {
          goto LABEL_45;
        }

        v19 = *(v17 + 8 * v6);
        v20 = *(v39 + 8 * v6);
        if (v13)
        {
          v21 = *(v39 + 8 * v6);

          v22 = __OFSUB__(v13--, 1);
          if (v22)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v23 = *(v7 + 3);
          if (((v23 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_47;
          }

          v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
          if (v24 <= 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = v24;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A8, &unk_1AE251E20);
          v26 = swift_allocObject();
          v27 = _swift_stdlib_malloc_size(v26);
          v28 = v27 - 32;
          if (v27 < 32)
          {
            v28 = v27 - 17;
          }

          v29 = v28 >> 4;
          *(v26 + 2) = v25;
          *(v26 + 3) = 2 * (v28 >> 4);
          v30 = v26 + 32;
          v31 = *(v7 + 3) >> 1;
          v14 = &v26[16 * v31 + 32];
          v32 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;
          if (*(v7 + 2))
          {
            v33 = v7 + 32;
            if (v26 != v7 || v30 >= &v33[16 * v31])
            {
              memmove(v30, v33, 16 * v31);
            }

            *(v7 + 2) = 0;
          }

          else
          {
          }

          v7 = v26;
          v17 = v38;
          v22 = __OFSUB__(v32, 1);
          v13 = v32 - 1;
          if (v22)
          {
            goto LABEL_46;
          }
        }

        *v14 = v19;
        *(v14 + 1) = v20;
        v14 += 16;
        ++v6;
        if (v18 == v4)
        {
          goto LABEL_38;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

LABEL_38:
  v34 = *(v7 + 3);
  if (v34 < 2)
  {
    return v7;
  }

  v35 = v34 >> 1;
  v22 = __OFSUB__(v35, v13);
  v36 = v35 - v13;
  if (!v22)
  {
    *(v7 + 2) = v36;
    return v7;
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1AE03C8CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = (a2 + result + 32);
      v7 = (MEMORY[0x1E69E7CC0] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA108, &qword_1AE241920);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_1AE03CA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = BYTE1(a6);
  if (BYTE1(a6) != 255)
  {
    a7();

    a8(a4, a5, a6, v8);
  }
}

double sub_1AE03CAFC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 122) = 0u;
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

uint64_t sub_1AE03CB58(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  return sub_1ADDD86D8(v4, v3);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1AE03CBB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_1AE03CBF8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1AE03CC80()
{
  result = qword_1EB5BCD48;
  if (!qword_1EB5BCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BCD48);
  }

  return result;
}

uint64_t CRVoid.merge(_:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB5B9908 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1EB5D750A;
  *a1 = word_1EB5D7508;
  *(a1 + 2) = v1;
  return result;
}

uint64_t sub_1AE03CF20@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB5B9908 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1EB5D750A;
  *a1 = word_1EB5D7508;
  *(a1 + 2) = v1;
  return result;
}

unint64_t sub_1AE03CFCC(uint64_t a1)
{
  result = sub_1AE03CFF4();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1AE03CFF4()
{
  result = qword_1EB5BCD50[0];
  if (!qword_1EB5BCD50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5BCD50);
  }

  return result;
}

uint64_t dispatch thunk of ReferenceDifferencer.observableDifference<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))();
}

{
  return (*(a5 + 16))();
}

uint64_t dispatch thunk of ReferenceVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))();
}

{
  return (*(a5 + 24))();
}

uint64_t sub_1AE03D11C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 16) || (v6 = *(a3 + 40), sub_1AE23E31C(), sub_1AE23BECC(), v7 = sub_1AE23E34C(), v8 = a3 + 56, v9 = -1 << *(a3 + 32), v10 = v7 & ~v9, ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
  {
LABEL_64:
    result = 0;
    goto LABEL_65;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v44 = v13;
  v14 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v41 = v15;
  v39 = a2;
  v40 = HIDWORD(a1) - a1;
  v42 = v11;
  v43 = BYTE6(a2);
  v38 = a1;
  while (1)
  {
    v16 = (*(a3 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_37;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_68;
      }

      if (v14 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_69;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_34:
        v27 = v43;
        if (v14)
        {
          v27 = v40;
          if (v41)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_63;
      }

      goto LABEL_14;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
    }

LABEL_40:
    if (v23 == v27)
    {
      if (v23 < 1)
      {
        goto LABEL_63;
      }

      if (v19 <= 1)
      {
        if (!v19)
        {
          *v46 = v18;
          *&v46[8] = v17;
          v46[10] = BYTE2(v17);
          v46[11] = BYTE3(v17);
          v46[12] = BYTE4(v17);
          v46[13] = BYTE5(v17);
          sub_1ADDD86D8(v18, v17);
          sub_1ADDD8820(v46, a1, a2, v45);
          sub_1ADDCC35C(v18, v17);
          if (v45[0])
          {
            goto LABEL_63;
          }

LABEL_61:
          v11 = v42;
          goto LABEL_14;
        }

        if (v18 >> 32 < v18)
        {
          goto LABEL_70;
        }

        sub_1ADDD86D8(v18, v17);
        v32 = sub_1AE23BB7C();
        if (v32)
        {
          v34 = sub_1AE23BBAC();
          if (__OFSUB__(v18, v34))
          {
            goto LABEL_73;
          }

          v32 += v18 - v34;
        }

LABEL_59:
        sub_1AE23BB9C();
        v35 = v32;
        a1 = v38;
        a2 = v39;
        sub_1ADDD8820(v35, v38, v39, v46);
        sub_1ADDCC35C(v18, v17);
        if (v46[0])
        {
          goto LABEL_63;
        }

        v8 = a3 + 56;
        goto LABEL_61;
      }

      if (v19 == 2)
      {
        v31 = *(v18 + 16);
        v30 = *(v18 + 24);
        sub_1ADDD86D8(v18, v17);
        v32 = sub_1AE23BB7C();
        if (v32)
        {
          v33 = sub_1AE23BBAC();
          if (__OFSUB__(v31, v33))
          {
            goto LABEL_72;
          }

          v32 += v31 - v33;
        }

        if (__OFSUB__(v30, v31))
        {
          goto LABEL_71;
        }

        goto LABEL_59;
      }

      *&v46[6] = 0;
      *v46 = 0;
      sub_1ADDD86D8(v18, v17);
      sub_1ADDD8820(v46, a1, a2, v45);
      sub_1ADDCC35C(v18, v17);
      if (v45[0])
      {
        goto LABEL_63;
      }
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17 == 0xC000000000000000;
  }

  v22 = !v20 || v14 < 3;
  if ((v22 | v44))
  {
LABEL_37:
    v23 = 0;
    if (v14 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_63:
  result = 1;
LABEL_65:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE03D540(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_1ADDD86D8(v5, v6);

  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v1;
  v23 = v9;
  v10 = sub_1ADDDE7CC(v5, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v11;
  if (v9[3] < v15)
  {
    sub_1ADF6AF70(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_1ADDDE7CC(v5, v6);
    if ((v2 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v10 = sub_1AE23E27C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  *v3 = v9;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v3 = v10;
  sub_1ADF6E6B0(v10, v5, v6, a1, 0, v9);
  sub_1ADDD86D8(v5, v6);

  v10 = v3;
LABEL_8:
  while (1)
  {
    v17 = v9[7] + 16 * v10;
    v19 = *(v17 + 8);
    v18 = (v17 + 8);
    v20 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v22 = v10;
    sub_1ADF703A0();
    v10 = v22;
    v9 = v23;
    *v3 = v23;
    if ((v2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *v18 = v20;
  sub_1ADDCC35C(v5, v6);
}

uint64_t sub_1AE03D6C8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CD0];
  *(result + 24) = a1;
  return result;
}

uint64_t sub_1AE03D704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for TypedReference();
  v3 = type metadata accessor for Ref();
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v3, WitnessTable);
  v8 = v9;
  sub_1ADF97074(&v8);
  v6 = v5;
  swift_beginAccess();
  sub_1ADEC0BB0(&v9, v6);
  swift_endAccess();
}

uint64_t sub_1AE03D880(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v12 = v2[3];
  v11.n128_u64[0] = v4;
  v11.n128_u64[1] = v5;
  v6 = *(*(v3 + 88) + 16);
  v7 = *(v6 + 64);
  swift_unknownObjectRetain();
  sub_1ADDD86D8(v4, v5);
  LOBYTE(v3) = v7(&v11, *(v3 + 80), v6);
  sub_1ADDCC35C(v11.n128_i64[0], v11.n128_u64[1]);
  result = swift_unknownObjectRelease();
  if ((v3 & 1) == 0)
  {
    type metadata accessor for TypedReference();
    v11.n128_u64[0] = v4;
    v11.n128_u64[1] = v5;
    sub_1ADF97074(&v11);
    v10 = v9;
    swift_beginAccess();
    sub_1ADDD86D8(v4, v5);
    sub_1ADEC0BB0(&v12, v10);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1AE03D9C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1AE03DA3C(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  swift_beginAccess();
  sub_1AE03D540(v3);
  return swift_endAccess();
}

uint64_t *sub_1AE03DA90(uint64_t *result)
{
  if (*(v1 + 24))
  {
    v2 = 1;
  }

  else
  {
    v4 = *result;
    v3 = result[1];
    v5 = *(v1 + 16);

    sub_1ADDD86D8(v4, v3);
    v2 = sub_1AE03D11C(v4, v3, v5);

    result = sub_1ADDCC35C(v4, v3);
  }

  *(v1 + 24) = v2 & 1;
  return result;
}

uint64_t sub_1AE03DB18()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE03DB98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  sub_1ADDD86D8(v1, v2);
  sub_1ADDE0110(v4, v1, v2);
  swift_endAccess();
  return sub_1ADDCC35C(v4[0], v4[1]);
}

uint64_t sub_1AE03DC7C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AE03DCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v51 = a4;
  v49 = a5;
  v10 = type metadata accessor for FinalizedTimestamp(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v47 = *(a3 - 8);
  v19 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v45 - v27;
  v29 = *(a1 + 16);
  v50 = v30;
  if (v29 >> 60 || (v29 & 0xF000000000000007) == 0xF000000000000007)
  {
    type metadata accessor for Proto_Register._StorageClass();
    inited = swift_initStaticObject();
  }

  else
  {
    inited = *(v29 + 16);
  }

  swift_beginAccess();
  if (*(inited + 32))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v32 = 0xD000000000000021;
    *(v32 + 8) = 0x80000001AE2626E0;
    *(v32 + 16) = 0;
    swift_willThrow();
  }

  v46 = v18;
  v34 = *(inited + 16);
  v33 = *(inited + 24);

  sub_1ADE058D4(v34, v33, a2, v15);
  if (v6)
  {
  }

  v36 = v15;
  v37 = v46;
  sub_1ADE172E4(v36, v46);
  swift_beginAccess();
  if (*(inited + 48))
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();

    v39 = sub_1ADDE77B4(v38, a2);

    v40 = v39;
    v41 = v50;
    (*(*(*(v51 + 16) + 8) + 8))(v40, v50);

    v43 = *(v47 + 32);
    v43(v28, v25, v41);
    v43(v22, v28, v41);
    v44 = v48;
    sub_1ADE172E4(v46, v48);
    return sub_1AE03EDB4(v22, v44, v41, v49);
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v42 = 0xD000000000000016;
    *(v42 + 8) = 0x80000001AE262710;
    *(v42 + 16) = 0;
    swift_willThrow();

    return sub_1ADE173B8(v37);
  }
}

uint64_t *sub_1AE03E130(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) >= 2u)
  {
    v27 = v3;
    v25 = type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    type metadata accessor for Proto_Register._StorageClass();
    v9 = swift_initStaticObject();
    v10 = sub_1ADDF66A8(v2);
    v11 = *(v2 + *(type metadata accessor for FinalizedTimestamp(0) + 20));
    v26 = inited;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      v9 = sub_1ADDE8D20(v9);
    }

    v12 = swift_beginAccess();
    v4 = &v25;
    *(v9 + 16) = v10;
    *(v9 + 24) = v11;
    *(v9 + 32) = 0;
    MEMORY[0x1EEE9AC00](v12);
    v22[1] = *(a2 + 16);
    v23 = v2;
    v24 = a1;
    v13 = v27;
    v14 = sub_1ADE6B9FC(sub_1AE0451D4, v22);
    if (v13)
    {
    }

    else
    {
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        v9 = sub_1ADDE8D20(v9);
      }

      v4 = v26;
      swift_beginAccess();
      v16 = *(v9 + 48);
      *(v9 + 48) = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = swift_allocObject();
        v18 = v4[2];
        *(v17 + 16) = v18;
        sub_1ADE5215C(v18);

        v4 = v17;
      }

      v19 = swift_allocObject();
      *(v19 + 16) = v9;
      v20 = v4[2];
      v4[2] = v19;
      sub_1ADE52174(v20);
    }
  }

  else
  {
    v4 = 0x80000001AE2611D0;
    sub_1ADE42E40();
    swift_allocError();
    *v5 = 0xD00000000000003ALL;
    *(v5 + 8) = 0x80000001AE2611D0;
    *(v5 + 16) = 3;
    swift_willThrow();
  }

  return v4;
}

uint64_t (*CRDTRegister._value.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t CRDTRegister.value.setter(uint64_t a1, uint64_t a2)
{
  sub_1AE043E64(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*CRDTRegister.value.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *a1 = v2;
  v5 = type metadata accessor for FinalizedTimestamp(0);
  a1[1] = v5;
  v6 = *(*(v5 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  a1[2] = v7;
  result = sub_1AE03E4E8;
  v9 = v2 + *(a2 + 36);
  return result;
}

void sub_1AE03E4E8(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = a1[2];
  }

  else
  {
    if (qword_1ED96AC50 != -1)
    {
      v9 = a1;
      swift_once();
      a1 = v9;
    }

    v3 = a1[1];
    v2 = a1[2];
    v4 = *a1;
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    v5 = *(v3 + 20);
    v6 = *(v4 + v5);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
      return;
    }

    *&v2[v5] = v8;
    sub_1ADFAF2E4(v2, v4);
  }

  free(v2);
}

uint64_t sub_1AE03E648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, v6);
  v10 = type metadata accessor for CRDTRegister();
  return CRDTRegister.wrappedValue.setter(v8, v10);
}

uint64_t (*CRDTRegister.crdt.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_1AE03E778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = type metadata accessor for CRDTRegister();
  v8 = CRDTRegister.wrappedValue.modify(v11, v7);
  (*(*(v6 - 8) + 24))(v9, a1, v6);
  return (v8)(v11, 0);
}

void (*CRDTRegister.wrappedValue.modify(uint64_t *a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = CRDTRegister.crdt.modify(v4, a2);
  return sub_1ADDDD89C;
}

uint64_t sub_1AE03E908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for CRDTRegister();
  v8 = CRDTRegister.projectedValue.modify();
  (*(*(v7 - 8) + 24))(v9, a1, v7);
  return v8(&v11, 0);
}

uint64_t CRDTRegister.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

uint64_t CRDTRegister.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, a2, v8);
  CRDTRegister.init(_:)(v10, a2, a3);
  return (*(v6 + 8))(a1, a2);
}

uint64_t CRDTRegister.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1ED966C80 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FinalizedTimestamp(0);
  v7 = __swift_project_value_buffer(v6, qword_1EB5D74D0);
  sub_1ADED0548(v7, a3);
  v8 = type metadata accessor for CRDTRegister();
  v9 = *(*(a2 - 8) + 32);
  v10 = a3 + *(v8 + 36);

  return v9(v10, a1, a2);
}

uint64_t CRDTRegister.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED966C80 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FinalizedTimestamp(0);
  v12 = __swift_project_value_buffer(v11, qword_1EB5D74D0);
  sub_1ADED0548(v12, a3);
  (*(*(*(a2 + 16) + 8) + 40))(a1);
  if (v3)
  {
    return sub_1ADE173B8(a3);
  }

  v14 = type metadata accessor for CRDTRegister();
  return (*(v7 + 32))(a3 + *(v14 + 36), v10, a1);
}

uint64_t sub_1AE03EDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1ADE172E4(a2, a4);
  v7 = type metadata accessor for CRDTRegister();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a1, a3);
}

uint64_t CRDTRegister.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for FinalizedTimestamp(0);
  v13 = *(result + 20);
  v14 = *(v3 + v13);
  v15 = *(a1 + v13);
  if (v14 == v15)
  {
    if ((sub_1ADF5EB00() & 1) == 0)
    {
      result = sub_1AE23BF8C();
      if (result)
      {
        (*(v8 + 16))(v11, a1 + *(a2 + 36), v7);
        v16 = v3 + *(a2 + 36);
        (*(*(*(a2 + 24) + 8) + 8))(v11, v7);
        return (*(v8 + 8))(v11, v7);
      }

      goto LABEL_9;
    }

LABEL_6:
    v17 = *(a2 - 8);
    (*(v17 + 8))(v3, a2);
    result = (*(v17 + 16))(v3, a1, a2);
    if (qword_1EB5B9910 != -1)
    {
      result = swift_once();
    }

    v18 = &word_1EB5D750B;
    goto LABEL_12;
  }

  if (v14 < v15)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (qword_1EB5B9908 != -1)
  {
    result = swift_once();
  }

  v18 = &word_1EB5D7508;
LABEL_12:
  v19 = *v18;
  v20 = *(v18 + 2);
  *a3 = v19;
  *(a3 + 2) = v20;
  return result;
}

uint64_t CRDTRegister.newRefs(from:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v15 = *(v14 + 24);
  v16 = *(v15 + 16);
  if (((*(v16 + 80))(v5, v16, v11) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v17 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
  v18 = *(a1 + v17);
  v19 = *(v2 + v17);
  if (v18 != v19)
  {
    if (v18 >= v19)
    {
      return MEMORY[0x1E69E7CD0];
    }

LABEL_7:
    (*(v6 + 16))(v13, v2 + *(a2 + 36), v5);
    v21 = sub_1ADECE30C(v5, v16);
    (*(v6 + 8))(v13, v5);
    return v21;
  }

  if (sub_1ADF5EB00())
  {
    goto LABEL_7;
  }

  if (sub_1AE23BF8C())
  {
    v20 = *(v6 + 16);
    v20(v13, v2 + *(a2 + 36), v5);
    v20(v9, a1 + *(a2 + 36), v5);
    v21 = (*(v15 + 64))(v9, v5, v15);
    v22 = *(v6 + 8);
    v22(v9, v5);
    v22(v13, v5);
    return v21;
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t CRDTRegister.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2 + *(v10 + 36), v5);
  (*(*(*(a2 + 24) + 16) + 48))(a1, v5);
  return (*(v6 + 8))(v9, v5);
}

Swift::Bool __swiftcall CRDTRegister.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v1 + *(v6 + 36), v3);
  LOBYTE(v2) = (*(*(*(v2 + 24) + 16) + 56))(v3);
  (*(v4 + 8))(v8, v3);
  return v2 & 1;
}

uint64_t CRDTRegister.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  (*(v8 + 16))(v11, v3 + *(v16 + 36), v7, v13);
  (*(*(*(a2 + 24) + 16) + 24))(a1, v7);
  (*(v8 + 8))(v11, v7);
  return CRDTRegister.init(_:)(v15, v7, a3);
}

uint64_t CRDTRegister.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CRDTRegister.copy(renamingReferences:)(&v7, a2, a3);
}

uint64_t CRDTRegister.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1AE23DA2C();

  strcpy(v10, "CRDTRegister[");
  HIWORD(v10[1]) = -4864;
  (*(v4 + 16))(v7, v1 + *(a1 + 36), v3);
  v8 = sub_1AE23CD6C();
  MEMORY[0x1B26FB670](v8);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);
  return v10[0];
}

uint64_t CRDTRegister.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v6 = *(a2 + 16);
  v67 = *(v6 - 8);
  v7 = *(v67 + 8);
  MEMORY[0x1EEE9AC00](a1);
  v66 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = v58 - v10;
  v12 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1AE23D7CC();
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v58 - v16;
  v64 = *(AssociatedTypeWitness - 8);
  v18 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v58 - v20;
  v22 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
  v23 = *(v3 + v22);
  v24 = *(a1 + v22);
  if (v23 == v24)
  {
    if ((sub_1ADF5EB00() & 1) == 0)
    {
      if (sub_1AE23BF8C())
      {
        v58[0] = v14;
        v25 = *(a2 + 36);
        v61 = v3;
        v62 = a1;
        v26 = v67 + 16;
        v27 = *(v67 + 2);
        v59 = v27;
        v28 = v3 + v25;
        v29 = v65;
        v27(v65, v28, v6);
        v30 = v27;
        v31 = v62 + *(a2 + 36);
        v32 = v66;
        v58[1] = v26;
        v30(v66, v31, v6);
        v33 = *(v12 + 72);
        v60 = v12;
        v33(v32, v6, v12);
        v34 = *(v67 + 1);
        v34(v32, v6);
        v67 = v34;
        v34(v29, v6);
        v35 = v64;
        if ((*(v64 + 48))(v17, 1, AssociatedTypeWitness) == 1)
        {
          (*(v63 + 8))(v17, v58[0]);
          v36 = v65;
          v37 = v59;
          v59(v65, v61 + *(a2 + 36), v6);
          v38 = v62;
          v39 = v66;
          v37(v66, v62 + *(a2 + 36), v6);
          LOBYTE(v37) = (*(v60 + 88))(v39, v6, v60);
          v40 = v67;
          v67(v39, v6);
          v40(v36, v6);
          if ((v37 & 1) == 0)
          {
            v57 = type metadata accessor for CRDTRegister.MutatingAction();
            v43 = *(*(v57 - 8) + 56);
            v44 = v68;
            v56 = 1;
            return v43(v44, v56, 1, v57);
          }

          v41 = v68;
          v59(v68, v38 + *(a2 + 36), v6);
          v42 = type metadata accessor for CRDTRegister.MutatingAction();
          swift_storeEnumTagMultiPayload();
          v43 = *(*(v42 - 8) + 56);
          v44 = v41;
        }

        else
        {
          v53 = *(v35 + 32);
          v53(v21, v17, AssociatedTypeWitness);
          v54 = *(swift_getTupleTypeMetadata2() + 48);
          v55 = v68;
          sub_1ADED0548(v61, v68);
          v53((v55 + v54), v21, AssociatedTypeWitness);
          v42 = type metadata accessor for CRDTRegister.MutatingAction();
          swift_storeEnumTagMultiPayload();
          v43 = *(*(v42 - 8) + 56);
          v44 = v55;
        }

        v56 = 0;
        v57 = v42;
        return v43(v44, v56, 1, v57);
      }

      goto LABEL_9;
    }
  }

  else if (v23 >= v24)
  {
LABEL_9:
    v50 = v68;
    (*(v67 + 2))(v68, a1 + *(a2 + 36), v6);
    v51 = type metadata accessor for CRDTRegister.MutatingAction();
    swift_storeEnumTagMultiPayload();
    v46 = *(*(v51 - 8) + 56);
    v48 = v50;
    v49 = 0;
    v47 = v51;
    goto LABEL_10;
  }

  v45 = type metadata accessor for CRDTRegister.MutatingAction();
  v46 = *(*(v45 - 8) + 56);
  v47 = v45;
  v48 = v68;
  v49 = 1;
LABEL_10:

  return v46(v48, v49, 1, v47);
}

uint64_t CRDTRegister.apply(_:)(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v52 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1AE23D7CC();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v43 - v7;
  v51 = AssociatedTypeWitness;
  v50 = *(AssociatedTypeWitness - 8);
  v8 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v43 - v10;
  v48 = type metadata accessor for FinalizedTimestamp(0);
  v11 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v3;
  v18 = type metadata accessor for CRDTRegister.MutatingAction();
  v19 = sub_1AE23D7CC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v43 - v22;
  v24 = *(v18 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v43 - v31;
  (*(v20 + 16))(v23, v54, v19, v30);
  if ((*(v24 + 48))(v23, 1, v18) == 1)
  {
    return (*(v20 + 8))(v23, v19);
  }

  (*(v24 + 32))(v32, v23, v18);
  (*(v24 + 16))(v28, v32, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v48;
    v35 = v51;
    v36 = *(swift_getTupleTypeMetadata2() + 48);
    v37 = v47;
    sub_1ADE172E4(v28, v47);
    v38 = v50;
    v39 = &v28[v36];
    v40 = v49;
    (*(v50 + 32))(v49, v39, v35);
    if (*(v53 + *(v34 + 20)) == *(v37 + *(v34 + 20)) && (sub_1AE23BF8C() & 1) != 0)
    {
      v41 = v43;
      (*(v38 + 16))(v43, v40, v35);
      (*(v38 + 56))(v41, 0, 1, v35);
      v42 = *(v52 + 36);
      (*(v46 + 80))(v41, v2);
      (*(v44 + 8))(v41, v45);
    }

    (*(v38 + 8))(v40, v35);
    sub_1ADE173B8(v37);
  }

  else
  {
    (*(v13 + 32))(v17, v28, v2);
    sub_1AE043E64(v17, v52);
    (*(v13 + 8))(v17, v2);
  }

  return (*(v24 + 8))(v32, v18);
}

uint64_t CRDTRegister.hasDelta(from:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
  v14 = *(a1 + v13);
  v15 = *(v2 + v13);
  if (v14 == v15)
  {
    if (sub_1ADF5EB00())
    {
      v16 = 1;
    }

    else if (sub_1AE23BF8C())
    {
      v18 = v6[2];
      v18(v12, v2 + *(a2 + 36), v5);
      v18(v9, a1 + *(a2 + 36), v5);
      v16 = (*(*(a2 + 24) + 88))(v9, v5);
      v19 = v6[1];
      v19(v9, v5);
      v19(v12, v5);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = v14 < v15;
  }

  return v16 & 1;
}

uint64_t CRDTRegister.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a1;
  v8 = *(a3 + 16);
  v57 = *(v8 - 8);
  v9 = v57[8];
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v47 - v12;
  v14 = *(v13 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1AE23D7CC();
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v47 - v18;
  v52 = *(AssociatedTypeWitness - 8);
  v19 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v49 = &v47 - v21;
  v22 = type metadata accessor for CRDTRegister.Partial.PartialCases();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v47 - v24;
  v26 = type metadata accessor for FinalizedTimestamp(0);
  v27 = v4;
  v28 = *(v26 + 20);
  v29 = *(a2 + v28);
  v30 = *(v4 + v28);
  if (v29 != v30)
  {
    if (v29 >= v30)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v31 = sub_1ADF5EB00();
  v27 = v4;
  if (v31)
  {
LABEL_7:
    (*(*(a3 - 8) + 16))(v25, v27, a3);
    swift_storeEnumTagMultiPayload();
    (*(v58 + 32))(a4, v25, v22);
    goto LABEL_8;
  }

  if ((sub_1AE23BF8C() & 1) == 0)
  {
LABEL_9:
    v41 = type metadata accessor for CRDTRegister.Partial();
    v42 = 1;
    return (*(*(v41 - 8) + 56))(a4, v42, 1);
  }

  v47 = v4;
  v48 = a4;
  v32 = v4 + *(a3 + 36);
  v33 = v57[2];
  v33(v56, v32, v8);
  v34 = a2 + *(a3 + 36);
  v35 = v53;
  v33(v53, v34, v8);
  v36 = v56;
  (*(v14 + 96))(v54, v35, v8, v14);
  v37 = v57[1];
  v37(v35, v8);
  v38 = v36;
  v39 = v55;
  v37(v38, v8);
  v40 = v52;
  if ((*(v52 + 48))(v39, 1, AssociatedTypeWitness) == 1)
  {
    (*(v50 + 8))(v39, v51);
    a4 = v48;
    goto LABEL_9;
  }

  v44 = *(v40 + 32);
  v45 = v49;
  v44(v49, v39, AssociatedTypeWitness);
  v46 = *(swift_getTupleTypeMetadata2() + 48);
  sub_1ADED0548(v47, v25);
  v44(&v25[v46], v45, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  a4 = v48;
  (*(v58 + 32))(v48, v25, v22);
LABEL_8:
  v41 = type metadata accessor for CRDTRegister.Partial();
  v42 = 0;
  return (*(*(v41 - 8) + 56))(a4, v42, 1);
}

uint64_t CRDTRegister.canMerge(delta:)(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v3 = *(a2 + 16);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v34 - v10;
  v12 = type metadata accessor for FinalizedTimestamp(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRDTRegister.Partial.PartialCases();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v34 - v20;
  (*(v17 + 16))(&v34 - v20, v39, v16, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(swift_getTupleTypeMetadata2() + 48);
    sub_1ADE172E4(v21, v15);
    v23 = v37;
    (*(v37 + 32))(v11, &v21[v22], AssociatedTypeWitness);
    v24 = *(v12 + 20);
    v25 = v38;
    v26 = *(v38 + v24);
    v27 = *&v15[v24];
    if (v26 == v27)
    {
      if (sub_1AE23BF8C())
      {
        v28 = *(a2 + 36);
        v29 = v36;
        v30 = v25 + v28;
        v31 = v35;
        (*(v36 + 16))(v35, v30, v3);
        v32 = (*(v7 + 104))(v11, v3, v7);
        (*(v29 + 8))(v31, v3);
      }

      else
      {
        v32 = sub_1ADF5EB00();
      }
    }

    else
    {
      v32 = v27 < v26;
    }

    (*(v23 + 8))(v11, AssociatedTypeWitness);
    sub_1ADE173B8(v15);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    v32 = 1;
  }

  return v32 & 1;
}

BOOL CRDTRegister.merge(delta:)(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v33 - v7;
  v9 = type metadata accessor for FinalizedTimestamp(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v3;
  v18 = type metadata accessor for CRDTRegister.Partial.PartialCases();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - v21;
  (*(v23 + 16))(&v33 - v21, v36, v18, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *(swift_getTupleTypeMetadata2() + 48);
    sub_1ADE172E4(v22, v12);
    v25 = v35;
    (*(v35 + 32))(v8, &v22[v24], AssociatedTypeWitness);
    v26 = *(v9 + 20);
    v27 = *(v37 + v26);
    v28 = *&v12[v26];
    if (v27 == v28)
    {
      if (sub_1AE23BF8C())
      {
        v29 = *(a2 + 36);
        v30 = (*(v4 + 112))(v8, v34, v4);
      }

      else
      {
        v30 = sub_1ADF5EB00();
      }

      v31 = v30;
    }

    else
    {
      v31 = v28 < v27;
    }

    (*(v25 + 8))(v8, AssociatedTypeWitness);
    sub_1ADE173B8(v12);
  }

  else
  {
    (*(v13 + 32))(v17, v22, a2);
    CRDTRegister.merge(_:)(v17, a2, v38);
    (*(v13 + 8))(v17, a2);
    return 1;
  }

  return v31;
}

uint64_t CRDTRegister.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v50 = a2;
  v8 = *(a3 + 16);
  v52 = *(v8 - 8);
  v9 = v52[8];
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v45 - v12;
  v14 = *(*(v13 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1AE23D7CC();
  v47 = *(v16 - 8);
  v48 = v16;
  v17 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  v25 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
  v26 = *(v4 + v25);
  v27 = *(a1 + v25);
  if (v26 == v27)
  {
    if ((sub_1ADF5EB00() & 1) == 0)
    {
      if (sub_1AE23BF8C())
      {
        v46 = a4;
        v28 = v4 + *(a3 + 36);
        v29 = v52[2];
        v29(v51, v28, v8);
        v30 = a1 + *(a3 + 36);
        v31 = v49;
        v29(v49, v30, v8);
        v32 = v51;
        (*(v14 + 40))(v31, v50, v8, v14);
        v33 = v52[1];
        v33(v31, v8);
        v33(v32, v8);
        if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
        {
          (*(v47 + 8))(v19, v48);
          v34 = type metadata accessor for WrappedObservableDifference();
          return (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
        }

        else
        {
          v42 = *(v20 + 32);
          v42(v24, v19, AssociatedTypeWitness);
          v43 = v46;
          v42(v46, v24, AssociatedTypeWitness);
          (*(v20 + 56))(v43, 0, 1, AssociatedTypeWitness);
          v44 = type metadata accessor for WrappedObservableDifference();
          return (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
        }
      }

      goto LABEL_8;
    }
  }

  else if (v26 >= v27)
  {
LABEL_8:
    (*(v20 + 56))(a4, 1, 1, AssociatedTypeWitness);
    v41 = type metadata accessor for WrappedObservableDifference();
    v37 = *(*(v41 - 8) + 56);
    v38 = v41;
    v39 = a4;
    v40 = 0;
    goto LABEL_9;
  }

  v36 = type metadata accessor for WrappedObservableDifference();
  v37 = *(*(v36 - 8) + 56);
  v38 = v36;
  v39 = a4;
  v40 = 1;
LABEL_9:

  return v37(v39, v40, 1, v38);
}

uint64_t CRDTRegister.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE64C4C(a2, a3, a4);
    swift_setDeallocating();
    v9 = *(inited + 16);
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v10 = 0xD000000000000014;
    *(v10 + 8) = 0x80000001AE25FB50;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t CRDTRegister.encode(to:)(uint64_t a1, uint64_t a2)
{
  result = sub_1ADDFCC74();
  if (!v2)
  {
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);

    sub_1ADE6BB44();
  }

  return result;
}

uint64_t CRDTRegister.isDefaultState.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED966C80 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FinalizedTimestamp(0);
  if (*(v1 + *(v8 + 20)) == *(__swift_project_value_buffer(v8, qword_1EB5D74D0) + *(v8 + 20)) && (sub_1AE23BF8C() & 1) != 0)
  {
    (*(v4 + 16))(v7, v1 + *(a1 + 36), v3);
    v9 = (*(*(*(*(a1 + 24) + 16) + 8) + 48))(v3);
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t static CRDTRegister.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = type metadata accessor for FinalizedTimestamp(0);
  if (*(a1 + *(v15 + 20)) == *(a2 + *(v15 + 20)) && (sub_1AE23BF8C() & 1) != 0)
  {
    v16 = type metadata accessor for CRDTRegister();
    v17 = *(v16 + 36);
    v18 = *(v16 + 16);
    v19 = *(*(v18 - 8) + 16);
    v25 = a4;
    v19(v14, a1 + v17, v18);
    v19(v11, a2 + *(v16 + 36), v18);
    v20 = *(v25 + 24);
    v21 = sub_1AE23CCBC();
    v22 = *(v8 + 8);
    v22(v11, a3);
    v22(v14, a3);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1AE041C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRDTRegister();
  (*(*(*(v12 + 16) - 8) + 16))(v11, a1 + *(v12 + 36));
  (*(*(*(a4 + 16) + 8) + 16))(a2, a3);
  return (*(v8 + 8))(v11, a3);
}

uint64_t CRDTRegister<>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_1AE23E3BC();
  (*(v5 + 16))(v8, v2 + *(a2 + 36), v4);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1AE23E06C();
  (*(v5 + 8))(v8, v4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t CRDTRegister.Partial.merge(delta:)(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  v91 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = *(AssociatedTypeWitness - 8);
  v5 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v97 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v89 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v89 - v10;
  v11 = type metadata accessor for FinalizedTimestamp(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v89 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v89 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v89 - v19;
  v20 = type metadata accessor for CRDTRegister();
  v101 = *(v20 - 8);
  v102 = v20;
  v21 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v89 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v89 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v89 - v30;
  v89 = v3;
  v90 = v2;
  v32 = type metadata accessor for CRDTRegister.Partial.PartialCases();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(*(TupleTypeMetadata2 - 8) + 64);
  v35.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v37 = &v89 - v36;
  v39 = &v89 + *(v38 + 56) - v36;
  v99 = *(v32 - 8);
  v40 = *(v99 + 16);
  v40(&v89 - v36, v105, v32, v35);
  (v40)(v39, v104, v32);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v84 = v101;
      v83 = v102;
      v85 = *(v101 + 32);
      v85(v31, v37, v102);
      v85(v28, v39, v83);
      CRDTRegister.merge(_:)(v28, v83, v106);
      (*(v84 + 8))(v28, v83);
      v86 = v105;
      (*(v99 + 8))(v105, v32);
      v85(v86, v31, v83);
      goto LABEL_17;
    }

    v59 = v11;
    v60 = AssociatedTypeWitness;
    v61 = *(swift_getTupleTypeMetadata2() + 48);
    v62 = v101;
    v63 = v93;
    v104 = *(v101 + 32);
    (v104)(v93, v37, v102);
    v64 = v94;
    sub_1ADE172E4(v39, v94);
    v65 = v103;
    v66 = &v39[v61];
    v67 = v96;
    (*(v103 + 32))(v96, v66, v60);
    v68 = *(v59 + 20);
    v69 = *(v64 + v68);
    v70 = *&v63[v68];
    if (v69 == v70)
    {
      if ((sub_1ADF5EB00() & 1) == 0)
      {
        if (sub_1AE23BF8C())
        {
          v71 = v102;
          v72 = *(v102 + 36);
          v73 = v64;
          v74 = (*(v90 + 112))(v67, v89);
          (*(v65 + 8))(v67, v60);
          sub_1ADE173B8(v73);
          if ((v74 & 1) == 0)
          {
            (*(v62 + 8))(v63, v71);
            goto LABEL_26;
          }

          v75 = v105;
          (*(v99 + 8))(v105, v32);
          (v104)(v75, v63, v71);
LABEL_17:
          swift_storeEnumTagMultiPayload();
          v58 = 1;
          return v58 & 1;
        }

LABEL_25:
        (*(v65 + 8))(v67, v60);
        sub_1ADE173B8(v64);
        (*(v62 + 8))(v63, v102);
        goto LABEL_26;
      }
    }

    else if (v69 >= v70)
    {
      goto LABEL_25;
    }

    (*(v65 + 8))(v67, v60);
    sub_1ADE173B8(v64);
    (*(v62 + 8))(v63, v102);
    v58 = 1;
    return v58 & 1;
  }

  v41 = swift_getTupleTypeMetadata2();
  v42 = *(v41 + 48);
  v43 = v11;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v76 = v92;
    sub_1ADE172E4(v37, v92);
    v78 = v101;
    v77 = v102;
    (*(v101 + 32))(v23, v39, v102);
    v79 = *(v43 + 20);
    v80 = *(v76 + v79);
    v81 = *&v23[v79];
    v82 = v103;
    if (v80 == v81)
    {
      if ((sub_1ADF5EB00() & 1) == 0)
      {
        v58 = sub_1ADF5EB00();
LABEL_27:
        (*(v78 + 8))(v23, v77);
        sub_1ADE173B8(v76);
        (*(v82 + 8))(&v37[v42], AssociatedTypeWitness);
        return v58 & 1;
      }
    }

    else if (v80 >= v81)
    {
      v58 = v81 < v80;
      goto LABEL_27;
    }

    (*(v78 + 8))(v23, v77);
    sub_1ADE173B8(v76);
    (*(*(v91 - 8) + 24))(v105, v104);
    (*(v82 + 8))(&v37[v42], AssociatedTypeWitness);
    v58 = 1;
    return v58 & 1;
  }

  v104 = v41;
  v44 = v98;
  sub_1ADE172E4(v37, v98);
  v45 = v95;
  sub_1ADE172E4(v39, v95);
  v46 = *(v103 + 32);
  v47 = &v37[v42];
  v48 = v43;
  v49 = v100;
  v46(v100, v47, AssociatedTypeWitness);
  v50 = &v39[v42];
  v51 = v44;
  v52 = v97;
  v46(v97, v50, AssociatedTypeWitness);
  if (*(v51 + *(v48 + 20)) != *(v45 + *(v48 + 20)) || (sub_1AE23BF8C() & 1) == 0)
  {
    v87 = *(v103 + 8);
    v87(v52, AssociatedTypeWitness);
    v87(v49, AssociatedTypeWitness);
    sub_1ADE173B8(v45);
LABEL_19:
    sub_1ADE173B8(v51);
LABEL_26:
    v58 = 0;
    return v58 & 1;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = (*(AssociatedConformanceWitness + 16))(v52, AssociatedTypeWitness, AssociatedConformanceWitness);
  v55 = *(v103 + 8);
  v55(v52, AssociatedTypeWitness);
  sub_1ADE173B8(v45);
  if ((v54 & 1) == 0)
  {
    v55(v100, AssociatedTypeWitness);
    goto LABEL_19;
  }

  v56 = v105;
  (*(v99 + 8))(v105, v32);
  v57 = *(v104 + 48);
  sub_1ADE172E4(v51, v56);
  v46((v56 + v57), v100, AssociatedTypeWitness);
  v58 = 1;
  swift_storeEnumTagMultiPayload();
  return v58 & 1;
}

uint64_t CRDTRegister.Partial.canMerge(delta:)(uint64_t a1, uint64_t a2)
{
  v86 = a1;
  v2 = *(a2 + 16);
  v72 = *(v2 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v71 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v8 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v71 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v71 - v13;
  v14 = type metadata accessor for FinalizedTimestamp(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v71 - v23;
  v24 = type metadata accessor for CRDTRegister();
  v82 = *(v24 - 8);
  v83 = v24;
  v25 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v74 = v2;
  v75 = &v71 - v29;
  v73 = v6;
  v30 = type metadata accessor for CRDTRegister.Partial.PartialCases();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = *(*(TupleTypeMetadata2 - 8) + 64);
  v33.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v35 = &v71 - v34;
  v37 = &v71 + *(v36 + 56) - v34;
  v38 = *(v30 - 8);
  v39 = *(v38 + 16);
  v39(&v71 - v34, v85, v30, v33);
  (v39)(v37, v86, v30);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v38 + 8))(v37, v30);
      (*(v82 + 8))(v35, v83);
      v50 = 1;
      return v50 & 1;
    }

    v52 = v14;
    v53 = *(swift_getTupleTypeMetadata2() + 48);
    v54 = v82;
    v55 = v75;
    v56 = v35;
    v57 = v83;
    (*(v82 + 32))(v75, v56, v83);
    v58 = v76;
    sub_1ADE172E4(v37, v76);
    v59 = v84;
    v60 = v81;
    (*(v84 + 32))(v81, &v37[v53], AssociatedTypeWitness);
    v61 = *(v52 + 20);
    v62 = *(v58 + v61);
    v63 = *&v55[v61];
    if (v62 == v63)
    {
      if ((sub_1ADF5EB00() & 1) == 0)
      {
        if (sub_1AE23BF8C())
        {
          v64 = v71;
          (*(*(*(v57 + 16) - 8) + 16))(v71, &v55[*(v57 + 36)]);
          v65 = v74;
          v50 = (*(v73 + 104))(v60, v74);
          (*(v72 + 8))(v64, v65);
          (*(v59 + 8))(v60, AssociatedTypeWitness);
          sub_1ADE173B8(v58);
          (*(v54 + 8))(v55, v57);
          return v50 & 1;
        }

        goto LABEL_19;
      }
    }

    else if (v62 >= v63)
    {
LABEL_19:
      (*(v59 + 8))(v60, AssociatedTypeWitness);
      sub_1ADE173B8(v58);
      (*(v54 + 8))(v55, v57);
      goto LABEL_20;
    }

    (*(v59 + 8))(v60, AssociatedTypeWitness);
    sub_1ADE173B8(v58);
    (*(v54 + 8))(v55, v57);
    v50 = 1;
    return v50 & 1;
  }

  v40 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v78;
    sub_1ADE172E4(v35, v78);
    v42 = v77;
    sub_1ADE172E4(v37, v77);
    v43 = v84;
    v44 = *(v84 + 32);
    v45 = &v35[v40];
    v46 = v80;
    v44(v80, v45, AssociatedTypeWitness);
    v47 = &v37[v40];
    v48 = v79;
    v44(v79, v47, AssociatedTypeWitness);
    if (*(v41 + *(v14 + 20)) == *(v42 + *(v14 + 20)) && (sub_1AE23BF8C() & 1) != 0)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v50 = (*(AssociatedConformanceWitness + 24))(v48, AssociatedTypeWitness, AssociatedConformanceWitness);
      v51 = *(v43 + 8);
      v51(v48, AssociatedTypeWitness);
      v51(v46, AssociatedTypeWitness);
      sub_1ADE173B8(v42);
      sub_1ADE173B8(v41);
      return v50 & 1;
    }

    v69 = *(v43 + 8);
    v69(v48, AssociatedTypeWitness);
    v69(v46, AssociatedTypeWitness);
    sub_1ADE173B8(v42);
    sub_1ADE173B8(v41);
LABEL_20:
    v50 = 0;
    return v50 & 1;
  }

  sub_1ADE172E4(v35, v21);
  v67 = v82;
  v66 = v83;
  (*(v82 + 32))(v27, v37, v83);
  v68 = v84;
  if (*&v27[*(v14 + 20)] == *&v21[*(v14 + 20)])
  {
    v50 = sub_1AE23BF8C() ^ 1;
  }

  else
  {
    v50 = 1;
  }

  (*(v67 + 8))(v27, v66);
  sub_1ADE173B8(v21);
  (*(v68 + 8))(&v35[v40], AssociatedTypeWitness);
  return v50 & 1;
}

uint64_t CRDTRegister.Partial.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v23 - v7;
  v9 = type metadata accessor for CRDTRegister();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for CRDTRegister.Partial.PartialCases();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  (*(v19 + 16))(&v23 - v17, v23, v14, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for FinalizedTimestamp(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v5 + 32))(v8, &v18[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(v24, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v8, AssociatedTypeWitness);
    return sub_1ADE173B8(v18);
  }

  else
  {
    (*(v10 + 32))(v13, v18, v9);
    CRDTRegister.visitReferences(_:)(v24, v9);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t CRDTRegister.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FinalizedTimestamp(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = v39 - v15;
  v16 = type metadata accessor for CRDTRegister.Partial.PartialCases();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = v39 - v20;
  if (!*(a1 + 64))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v25 = 0xD000000000000014;
    *(v25 + 8) = 0x80000001AE25FB50;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  v39[1] = v8;
  v40 = v19;
  v42 = v13;
  v43 = v11;
  v41 = v18;
  type metadata accessor for CRDecoder.CRDTContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = 0;
  *(inited + 32) = 1;

  v23 = *(sub_1ADDE78C8() + 16);
  if (v23 >> 60 || (v23 & 0xF000000000000007) == 0xF000000000000007)
  {
    type metadata accessor for Proto_Register._StorageClass();
    v24 = swift_initStaticObject();
  }

  else
  {
    v24 = *(v23 + 16);
  }

  swift_beginAccess();
  if (*(v24 + 56))
  {
    result = swift_beginAccess();
    if (*(v24 + 32))
    {
      __break(1u);
    }

    else
    {
      v40 = a4;
      type metadata accessor for CRDecoder();
      swift_allocObject();

      sub_1ADDE77B4(v27, a1);

      v28 = *(swift_getAssociatedConformanceWitness() + 8);
      v29 = *(v28 + 8);

      v31 = v45;
      v29(v30, AssociatedTypeWitness, v28);
      if (v31)
      {

LABEL_20:
      }

      if (*(v24 + 32))
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v24 + 16);
      }

      if (*(v24 + 32))
      {
        v34 = 0;
      }

      else
      {
        v34 = *(v24 + 24);
      }

      v35 = v43;
      sub_1ADE058D4(v33, v34, a1, v43);

      v37 = *(swift_getTupleTypeMetadata2() + 48);
      v38 = v40;
      sub_1ADE172E4(v35, v40);
      (*(v42 + 32))(v38 + v37, v44, AssociatedTypeWitness);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v32 = v45;
    CRDTRegister.init(from:)(a1, a2, a3, v21);
    if (v32)
    {
      goto LABEL_20;
    }

    v36 = v41;
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 32))(a4, v21, v36);
  }

  return result;
}

uint64_t CRDTRegister.Partial.encode(to:)(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v43 - v6;
  v46 = type metadata accessor for FinalizedTimestamp(0);
  v8 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRDTRegister();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  v45 = v2;
  v16 = type metadata accessor for CRDTRegister.Partial.PartialCases();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  (*(v21 + 16))(&v43 - v19, v48, v16, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v46;
    v23 = *(swift_getTupleTypeMetadata2() + 48);
    sub_1ADE172E4(v20, v10);
    v24 = v47;
    (*(v47 + 32))(v7, &v20[v23], AssociatedTypeWitness);
    v25 = v50;
    v26 = v49;
    v27 = sub_1ADDFCC74();
    if (v26)
    {
      sub_1ADE173B8(v10);
      return (*(v24 + 8))(v7, AssociatedTypeWitness);
    }

    else
    {
      v44 = AssociatedTypeWitness;
      v49 = v7;
      v29 = v27;
      type metadata accessor for Proto_Register._StorageClass();
      inited = swift_initStaticObject();
      v43 = v29;

      v31 = sub_1ADDF66A8(v10);
      v32 = *(v22 + 20);
      v48 = v10;
      v33 = *&v10[v32];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADDE8D20(inited);
      }

      v34 = swift_beginAccess();
      *(inited + 16) = v31;
      *(inited + 24) = v33;
      *(inited + 32) = 0;
      MEMORY[0x1EEE9AC00](v34);
      v35 = v45;
      *(&v43 - 4) = v3;
      *(&v43 - 3) = v35;
      v36 = v49;
      *(&v43 - 2) = v49;
      *(&v43 - 1) = v25;
      v37 = sub_1ADE6B9FC(sub_1AE044050, (&v43 - 6));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v47;
      v40 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADDE8D20(inited);
      }

      swift_beginAccess();
      v41 = *(inited + 56);
      *(inited + 56) = v37;

      swift_beginAccess();

      sub_1AE1B783C(v42);
      swift_endAccess();

      sub_1ADE173B8(v48);

      return (*(v39 + 8))(v36, v40);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v20, v11);
    CRDTRegister.encode(to:)(v50, v11);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_1AE043D60(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedConformanceWitness() + 8);
  v4 = *(v3 + 16);
  v5 = swift_checkMetadataState();
  return v4(a2, v5, v3);
}

uint64_t sub_1AE043E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FinalizedTimestamp(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(*(a2 + 16) - 8) + 24))(v3 + *(a2 + 36), a1, v8);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  result = sub_1AE23BFBC();
  v12 = *(v6 + 20);
  v13 = *(v3 + v12);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *&v10[v12] = v15;
    return sub_1ADFAF2E4(v10, v3);
  }

  return result;
}

uint64_t sub_1AE044050()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_1AE043D60(v0[4], v0[5]);
}

uint64_t sub_1AE04407C(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t keypath_getTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 16);
  v7 = *(v5 - 8);
  v8 = type metadata accessor for CRDTRegister();
  return a4(v8);
}

uint64_t sub_1AE044128(uint64_t a1)
{
  result = type metadata accessor for FinalizedTimestamp(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE0441B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1AE0443FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = ((v15 + v13) & ~v13) + *(v11 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_49:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v10 >= v12)
  {
    if (v10 >= a2)
    {
      v25 = *(v9 + 56);

      v25(a1, a2);
    }

    else if (v15)
    {
      v24 = ~v10 + a2;
      bzero(a1, v15);
      *a1 = v24;
    }
  }

  else
  {
    v23 = *(v11 + 56);

    v23(&a1[v15 + v13] & ~v13, a2, v12);
  }
}

uint64_t sub_1AE0446F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for FinalizedTimestamp(255);
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    result = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE0447B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = (*(*(sub_1AE23BFEC() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(a3 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = ((v7 + *(v9 + 80) + 8) & ~*(v9 + 80)) + *(v9 + 64);
  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 254) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 < 2)
    {
LABEL_26:
      v18 = *(a1 + v11);
      if (v18 >= 2)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_26;
  }

LABEL_15:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 255;
}

void sub_1AE04499C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (*(*(sub_1AE23BFEC() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(a4 + 24);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = ((v9 + *(v11 + 80) + 8) & ~*(v11 + 80)) + *(v11 + 64);
  if (v12 <= v8)
  {
    v12 = v8;
  }

  v13 = v12 + 1;
  if (a3 < 0xFF)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 + ~(-1 << (8 * v13)) - 254) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFE)
  {
    v15 = a2 - 255;
    if (v13 >= 4)
    {
      bzero(a1, v12 + 1);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v16 = (v15 >> (8 * v13)) + 1;
    if (v12 != -1)
    {
      v19 = v15 & ~(-1 << (8 * v13));
      bzero(a1, v13);
      if (v13 != 3)
      {
        if (v13 == 2)
        {
          *a1 = v19;
          if (v14 > 1)
          {
LABEL_39:
            if (v14 == 2)
            {
              *&a1[v13] = v16;
            }

            else
            {
              *&a1[v13] = v16;
            }

            return;
          }
        }

        else
        {
          *a1 = v15;
          if (v14 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v14)
        {
          a1[v13] = v16;
        }

        return;
      }

      *a1 = v19;
      a1[2] = BYTE2(v19);
    }

    if (v14 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v12] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v14 == 2)
  {
    *&a1[v13] = 0;
    goto LABEL_24;
  }

  *&a1[v13] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AE044C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for CRDTRegister.Partial.PartialCases();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE044C70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for CRDTRegister();
  if (v4 <= 0x3F)
  {
    type metadata accessor for FinalizedTimestamp(255);
    swift_getAssociatedTypeWitness();
    result = swift_getTupleTypeMetadata2();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE044D34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1AE23BFEC();
  v7 = *(a3 + 24);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = ((v8 + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = ((v8 + *(v10 + 80)) & ~*(v10 + 80)) + *(v10 + 64);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 254) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v17 < 2)
    {
LABEL_26:
      v19 = *(a1 + v12);
      if (v19 >= 2)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_26;
  }

LABEL_15:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 255;
}

void sub_1AE044F48(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1AE23BFEC();
  v9 = *(a4 + 24);
  v10 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = ((v10 + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = ((v10 + *(v12 + 80)) & ~*(v12 + 80)) + *(v12 + 64);
  if (v13 <= v11)
  {
    v13 = v11;
  }

  v14 = v13 + 1;
  if (a3 < 0xFF)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 254) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFE)
  {
    v16 = a2 - 255;
    if (v14 >= 4)
    {
      bzero(a1, v13 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v13 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_39:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v13] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_24;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AE04520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = a7;
  v80 = a6;
  v78 = a5;
  v90 = a2;
  v11 = sub_1AE23D7CC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = &v63 - v13;
  v82 = *(a4 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v93 = &v63 - v23;
  v24 = a3;
  v81 = sub_1AE23D7CC();
  v64 = *(v81 - 8);
  v25 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v89 = &v63 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v92 = &v63 - v30;
  v31 = *(a1 + 16);
  if ((~v31 & 0xF000000000000007) != 0 && ((v31 >> 59) & 0x1E | (v31 >> 2) & 1) == 0xA)
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v33 + 16);

  v94 = MEMORY[0x1B26FB2D0](v34 >> 1, a3, a4, v80);
  v87 = *(v18 + 56);
  v88 = v18 + 56;
  result = v87(v92, 1, 1, a3);
  v36 = *(a1 + 16);
  v91 = v7;
  if ((~v36 & 0xF000000000000007) != 0 && ((v36 >> 59) & 0x1E | (v36 >> 2) & 1) == 0xA)
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v38 = v81;
  v86 = *(v37 + 16);
  if (v86)
  {
    v39 = v24;
    v71 = v17;
    v72 = a4;
    v63 = a1;
    v40 = 0;
    v83 = (v18 + 48);
    v84 = (v64 + 16);
    v70 = (v18 + 32);
    v69 = (v18 + 16);
    v68 = (v82 + 16);
    v67 = (v82 + 56);
    v66 = (v82 + 8);
    v73 = (v18 + 8);
    v41 = (v64 + 8);
    v65 = (v64 + 32);
    v42 = v93;
    v43 = v90;
    v85 = v37;
    v74 = (v64 + 8);
    while (v40 < *(v37 + 16))
    {
      v44 = *(v37 + 8 * v40 + 32);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v93 = sub_1ADE0262C(v44, v43);

      v45 = v89;
      (*v84)(v89, v92, v38);
      if ((*v83)(v45, 1, v39) == 1)
      {
        v46 = *v41;
        (*v41)(v45, v38);
        v47 = v41;
        v48 = v77;
        v49 = v91;
        (*(*(*(v78 + 8) + 8) + 8))(v93, v39);
        v91 = v49;
        if (v49)
        {

          v46(v92, v38);
        }

        v50 = v39;
        v51 = v92;
        v46(v92, v38);

        v87(v48, 0, 1, v50);
        v52 = v51;
        v39 = v50;
        result = (*v65)(v52, v48, v38);
        v43 = v90;
        v41 = v47;
      }

      else
      {
        v82 = v44;
        (*v70)(v42, v45, v39);
        v53 = *(*(v79 + 8) + 8);
        v54 = *(v53 + 8);

        v56 = v42;
        v57 = v71;
        v58 = v72;
        v59 = v91;
        v54(v55, v72, v53);
        v91 = v59;
        if (v59)
        {

          (*v73)(v56, v39);
          (*v74)(v92, v81);
        }

        v60 = v56;
        (*v69)(v75, v56, v39);
        v61 = v76;
        (*v68)(v76, v57, v58);
        (*v67)(v61, 0, 1, v58);
        sub_1AE23CB1C();
        sub_1AE23CB8C();

        (*v66)(v57, v58);
        (*v73)(v56, v39);
        v41 = v74;
        v62 = v92;
        v38 = v81;
        (*v74)(v92, v81);
        result = v87(v62, 1, 1, v39);
        v43 = v90;
        v42 = v60;
      }

      ++v40;
      v37 = v85;
      if (v86 == v40)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    (*(v64 + 8))(v92, v38);
    return v94;
  }

  return result;
}

uint64_t sub_1AE045A4C()
{
  type metadata accessor for Proto_Value._StorageClass();
  inited = swift_initStaticObject();
  sub_1AE23CB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCC8, &qword_1AE251C00);
  swift_getWitnessTable();
  sub_1AE0488DC();
  v1 = sub_1AE23CF3C();
  if (!v9)
  {
    v2 = v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = swift_allocObject();
      v4 = *(inited + 16);
      *(v3 + 16) = v4;
      sub_1ADE51B2C(v4);

      inited = v3;
    }

    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = v5 | 0x5000000000000000;
    v7 = *(inited + 16);
    *(inited + 16) = v6;
    sub_1ADE51B48(v7);
  }

  return inited;
}

uint64_t Dictionary<>.observableDifference(from:with:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v128 = a2;
  v133 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v110 = sub_1AE23D7CC();
  v145 = *(v110 - 8);
  v14 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v97 - v17;
  v143 = *(AssociatedTypeWitness - 8);
  v18 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v97 - v20;
  v99 = sub_1AE23D7CC();
  v98 = *(v99 - 8);
  v21 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v23 = &v97 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v107 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v130 = &v97 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v146 = &v97 - v31;
  v112 = *(a5 - 8);
  v32 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v141 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v117 = &v97 - v36;
  v111 = *(a4 - 8);
  v37 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v116 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1AE23D7CC();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v142 = &v97 - v42;
  v43 = sub_1AE23CA7C();
  v131 = a1;
  v44 = sub_1AE23CA7C();
  result = 0;
  if (v43 != v44)
  {
    return result;
  }

  v147 = sub_1AE23C9CC();
  v140 = a7;
  v124 = v23;
  v129 = a4;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v46 = sub_1AE23DC1C();
    v132 = 0;
    v47 = 0;
    v48 = 0;
    v49 = v46 | 0x8000000000000000;
  }

  else
  {
    v50 = -1 << *(a3 + 32);
    v47 = ~v50;
    v51 = *(a3 + 64);
    v132 = a3 + 64;
    v52 = -v50;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    else
    {
      v53 = -1;
    }

    v48 = v53 & v51;
    v49 = a3;
  }

  v144 = (v111 + 32);
  v54 = (v112 + 32);
  v125 = (v25 + 56);
  v97 = v47;
  v55 = (v47 + 64) >> 6;
  v106 = v111 + 16;
  v105 = v112 + 16;
  v123 = (v25 + 48);
  v138 = (v25 + 16);
  v119 = (v112 + 48);
  v120 = (v112 + 8);
  v121 = (v111 + 8);
  v114 = v133 + 40;
  v113 = (v143 + 48);
  v104 = (v143 + 32);
  v103 = (v143 + 16);
  v102 = (v143 + 56);
  v101 = (v143 + 8);
  v118 = (v25 + 8);
  v100 = (v145 + 8);

  v56 = 0;
  v134 = AssociatedTypeWitness;
  v126 = v49;
  v139 = v54;
  v115 = v55;
  v57 = v48;
  v122 = TupleTypeMetadata2;
  while (1)
  {
    v58 = v142;
    v136 = v56;
    v137 = v57;
    if ((v49 & 0x8000000000000000) == 0)
    {
      break;
    }

    v74 = sub_1AE23DC3C();
    v61 = v129;
    if (!v74)
    {
      (*v125)(v58, 1, 1, TupleTypeMetadata2);
LABEL_30:
      sub_1ADDDCE74();
      v96 = v147;
      if ((MEMORY[0x1B26FB370]() & 1) == 0)
      {
        return v96;
      }

      return 1;
    }

    v75 = v116;
    sub_1AE23DFEC();
    swift_unknownObjectRelease();
    v76 = v117;
    sub_1AE23DFEC();
    swift_unknownObjectRelease();
    v77 = *(TupleTypeMetadata2 + 48);
    (*v144)(v58, v75, v61);
    (*v54)(&v58[v77], v76, a5);
    (*v125)(v58, 0, 1, TupleTypeMetadata2);
    v63 = v136;
    v145 = v137;
LABEL_24:
    v78 = v124;
    if ((*v123)(v58, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_30;
    }

    v143 = v63;
    v79 = *(TupleTypeMetadata2 + 48);
    v80 = v146;
    (*v144)(v146, v58, v61);
    v81 = v61;
    v82 = *v54;
    (*v54)(&v80[v79], &v58[v79], a5);
    v83 = v130;
    v135 = *v138;
    v135(v130, v80, TupleTypeMetadata2);
    v84 = v78;
    v85 = a5;
    v86 = *(TupleTypeMetadata2 + 48);
    sub_1AE23CB7C();
    if ((*v119)(v84, 1, a5) == 1)
    {
      (*v118)(v80, v122);
      sub_1ADDDCE74();

      (*(v98 + 8))(v84, v99);
      (*v120)(&v83[v86], a5);
      (*v121)(v83, v81);
      return 0;
    }

    v87 = v141;
    v82(v141, v84, v85);
    v88 = *v120;
    (*v120)(&v83[v86], v85);
    (*v121)(v83, v81);
    v89 = v127;
    (*(v133 + 40))(v87, v128, v85);
    v90 = v89;
    v91 = v89;
    v92 = v134;
    if ((*v113)(v91, 1, v134) == 1)
    {
      v88(v87, v85);
      TupleTypeMetadata2 = v122;
      (*v118)(v80, v122);
      result = (*v100)(v90, v110);
    }

    else
    {
      v93 = v108;
      (*v104)(v108, v90, v92);
      v94 = v107;
      TupleTypeMetadata2 = v122;
      v135(v107, v146, v122);
      v137 = *(TupleTypeMetadata2 + 48);
      v95 = v109;
      (*v103)(v109, v93, v92);
      (*v102)(v95, 0, 1, v92);
      sub_1AE23CB1C();
      sub_1AE23CB8C();
      (*v101)(v93, v92);
      v88(v141, v85);
      (*v118)(v146, TupleTypeMetadata2);
      result = (v88)(&v94[v137], v85);
    }

    v56 = v143;
    v57 = v145;
    a5 = v85;
    v49 = v126;
    v54 = v139;
    v55 = v115;
  }

  v59 = v57;
  v60 = v56;
  v61 = v129;
  if (v57)
  {
LABEL_20:
    v145 = (v59 - 1) & v59;
    v65 = __clz(__rbit64(v59)) | (v60 << 6);
    v66 = a5;
    v67 = v111;
    v68 = v116;
    (*(v111 + 16))(v116, *(v49 + 48) + *(v111 + 72) * v65, v129);
    v69 = *(v49 + 56);
    v70 = v112;
    v71 = v117;
    (*(v112 + 16))(v117, v69 + *(v112 + 72) * v65, v66);
    v72 = *(TupleTypeMetadata2 + 48);
    v73 = *(v67 + 32);
    a5 = v66;
    v58 = v142;
    v73(v142, v68, v61);
    v54 = v139;
    (*(v70 + 32))(&v58[v72], v71, a5);
    (*v125)(v58, 0, 1, TupleTypeMetadata2);
    v63 = v60;
    goto LABEL_24;
  }

  if (v55 <= v56 + 1)
  {
    v62 = v56 + 1;
  }

  else
  {
    v62 = v55;
  }

  v63 = v62 - 1;
  v64 = v56;
  while (1)
  {
    v60 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v60 >= v55)
    {
      (*v125)(v142, 1, 1, TupleTypeMetadata2);
      v145 = 0;
      goto LABEL_24;
    }

    v59 = *(v132 + 8 * v60);
    ++v64;
    if (v59)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t Dictionary<>.visitReferences(_:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a7;
  v71 = a5;
  v89 = a4;
  v68 = *(a4 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v88 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = v66 - v13;
  v67 = *(v14 - 8);
  v15 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v74 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v66 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v79 = sub_1AE23D7CC();
  v22 = *(v79 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78 = v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v66 - v26;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v28 = sub_1AE23DC1C();
    v29 = 0;
    v30 = 0;
    v81 = v28 | 0x8000000000000000;
    v82 = 0;
  }

  else
  {
    v31 = -1 << *(a2 + 32);
    v29 = ~v31;
    v32 = *(a2 + 64);
    v81 = a2;
    v82 = a2 + 64;
    v33 = -v31;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v30 = v34 & v32;
  }

  v86 = (v67 + 32);
  v85 = (v68 + 32);
  v76 = TupleTypeMetadata2 - 8;
  v66[1] = v29;
  v35 = (v29 + 64) >> 6;
  v66[3] = v67 + 16;
  v66[2] = v68 + 16;
  v75 = (v22 + 32);
  v72 = (v68 + 8);
  v73 = (v67 + 8);

  v37 = 0;
  v38 = v74;
  v80 = v20;
  v77 = v27;
  v39 = v82;
  v40 = v30;
  while (1)
  {
    v83 = v37;
    v84 = v40;
    if ((v81 & 0x8000000000000000) == 0)
    {
      break;
    }

    v51 = sub_1AE23DC3C();
    v43 = v89;
    if (v51)
    {
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v50 = v69;
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v42 = v83;
      v87 = v84;
      goto LABEL_21;
    }

    v54 = 1;
    v45 = v83;
    v87 = v84;
    v38 = v74;
    v53 = v78;
LABEL_22:
    v55 = *(TupleTypeMetadata2 - 8);
    (*(v55 + 56))(v53, v54, 1, TupleTypeMetadata2);
    v56 = v77;
    (*v75)();
    if ((*(v55 + 48))(v56, 1, TupleTypeMetadata2) == 1)
    {
      return sub_1ADDDCE74();
    }

    v57 = *(TupleTypeMetadata2 + 48);
    (*v86)(v38, v56, a3);
    (*v85)(v88, &v56[v57], v43);
    v58 = a3;
    v60 = a1[3];
    v59 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v60);
    if ((*(v59 + 8))(v60, v59) & 1) != 0 || ((*(*(v71 + 8) + 48))(a1, v58), v61 = a1[3], v62 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v61), v63 = (*(v62 + 8))(v61, v62), v39 = v82, (v63))
    {
      sub_1ADDDCE74();
      (*v72)(v88, v89);
      return (*v73)(v38, v58);
    }

    v64 = v88;
    v65 = v89;
    (*(*(v70 + 8) + 48))(a1, v89);
    (*v72)(v64, v65);
    result = (*v73)(v38, v58);
    v37 = v45;
    v40 = v87;
    a3 = v58;
    v20 = v80;
  }

  v41 = v40;
  v42 = v37;
  v43 = v89;
  if (v40)
  {
LABEL_18:
    v87 = (v41 - 1) & v41;
    v47 = __clz(__rbit64(v41)) | (v42 << 6);
    v48 = v81;
    (*(v67 + 16))(v20, *(v81 + 48) + *(v67 + 72) * v47, a3);
    v49 = *(v48 + 56) + *(v68 + 72) * v47;
    v50 = v69;
    (*(v68 + 16))(v69, v49, v43);
LABEL_21:
    v52 = *(TupleTypeMetadata2 + 48);
    v53 = v78;
    (*v86)(v78, v20, a3);
    (*v85)(&v53[v52], v50, v43);
    v54 = 0;
    v45 = v42;
    v38 = v74;
    goto LABEL_22;
  }

  if (v35 <= v37 + 1)
  {
    v44 = v37 + 1;
  }

  else
  {
    v44 = v35;
  }

  v45 = v44 - 1;
  v46 = v37;
  while (1)
  {
    v42 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v42 >= v35)
    {
      v87 = 0;
      v54 = 1;
      v53 = v78;
      goto LABEL_22;
    }

    v41 = *(v39 + 8 * v42);
    ++v46;
    if (v41)
    {
      v20 = v80;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t Dictionary<>.copy(renamingReferences:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = a5;
  v80 = a7;
  v78 = a1;
  v10 = sub_1AE23D7CC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = &v67 - v12;
  v69 = *(a4 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v67 - v17;
  v68 = *(a3 - 8);
  v18 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v74 = &v67 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v67 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = sub_1AE23D7CC();
  v26 = *(v83 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v88 = &v67 - v30;
  v99 = sub_1AE23C9CC();
  sub_1AE23CA7C();
  v94 = a4;
  v95 = a3;
  v73 = sub_1AE23CB1C();
  sub_1AE23CA3C();
  if ((a2 & 0xC000000000000001) != 0)
  {
    v31 = sub_1AE23DC1C();
    v32 = 0;
    v33 = 0;
    v86 = v31 | 0x8000000000000000;
    v87 = 0;
  }

  else
  {
    v34 = -1 << *(a2 + 32);
    v32 = ~v34;
    v35 = *(a2 + 64);
    v86 = a2;
    v87 = a2 + 64;
    v36 = -v34;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v33 = v37 & v35;
  }

  v92 = (v68 + 32);
  v91 = (v69 + 32);
  v85 = TupleTypeMetadata2;
  v82 = TupleTypeMetadata2 - 8;
  v67 = v32;
  v98 = (v32 + 64) >> 6;
  v89 = (v69 + 16);
  v90 = (v68 + 16);
  v81 = (v26 + 32);
  v72 = (v69 + 56);
  v71 = (v69 + 8);
  v70 = (v68 + 8);

  v39 = 0;
  v41 = v86;
  v40 = v87;
  if ((v86 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v42 = v33;
  v43 = v39;
  v45 = v84;
  v44 = v85;
  if (v33)
  {
LABEL_16:
    v93 = (v42 - 1) & v42;
    v50 = __clz(__rbit64(v42)) | (v43 << 6);
    v51 = v41;
    (*(v68 + 16))(v96, *(v41 + 48) + *(v68 + 72) * v50, v95);
    (*(v69 + 16))(v97, *(v51 + 56) + *(v69 + 72) * v50, v94);
LABEL_19:
    v53 = *(v44 + 48);
    (*v92)(v45, v96, v95);
    (*v91)(&v45[v53], v97, v94);
    v54 = 0;
    v47 = v43;
    goto LABEL_20;
  }

  if (v98 <= v39 + 1)
  {
    v46 = v39 + 1;
  }

  else
  {
    v46 = v98;
  }

  v47 = v46 - 1;
  v48 = v39;
  v49 = v88;
  while (1)
  {
    v43 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      return result;
    }

    if (v43 >= v98)
    {
      break;
    }

    v42 = *(v40 + 8 * v43);
    ++v48;
    if (v42)
    {
      goto LABEL_16;
    }
  }

  v93 = 0;
  v54 = 1;
  while (1)
  {
    v55 = *(v44 - 8);
    (*(v55 + 56))(v45, v54, 1, v44);
    (*v81)(v49, v45, v83);
    if ((*(v55 + 48))(v49, 1, v44) == 1)
    {
      break;
    }

    v56 = *(v44 + 48);
    v58 = v95;
    v57 = v96;
    (*v92)(v96, v49, v95);
    v59 = v97;
    v60 = v94;
    (*v91)(v97, &v49[v56], v94);
    v61 = v74;
    v62 = v78;
    (*(*(v79 + 8) + 24))(v78, v58);
    v63 = v76;
    (*(*(v80 + 8) + 24))(v62, v60);
    (*v90)(v75, v61, v58);
    v64 = v77;
    (*v89)(v77, v63, v60);
    (*v72)(v64, 0, 1, v60);
    sub_1AE23CB8C();
    v65 = *v71;
    (*v71)(v63, v60);
    v66 = *v70;
    (*v70)(v61, v58);
    v65(v59, v60);
    result = v66(v57, v58);
    v39 = v47;
    v33 = v93;
    v41 = v86;
    v40 = v87;
    if ((v86 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    v52 = sub_1AE23DC3C();
    v45 = v84;
    v44 = v85;
    if (v52)
    {
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v43 = v39;
      v93 = v33;
      goto LABEL_19;
    }

    v54 = 1;
    v47 = v39;
    v93 = v33;
LABEL_20:
    v49 = v88;
  }

  sub_1ADDDCE74();
  return v99;
}

uint64_t Dictionary<>.copy(renamingReferences:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v16 = v13;

  v14 = Dictionary<>.copy(renamingReferences:)(&v16, a2, a3, a4, a5, a6, a7);

  return v14;
}

uint64_t Dictionary<>.needToFinalizeTimestamps()()
{
  sub_1AE23CB1C();
  swift_getWitnessTable();
  return sub_1AE23CF4C() & 1;
}

uint64_t sub_1AE047A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(*(a4 + 8) + 56))(a2))
  {
    return 1;
  }

  v9 = *(swift_getTupleTypeMetadata2() + 48);
  return (*(*(a6 + 8) + 56))(a3) & 1;
}

uint64_t Dictionary<>.finalizeTimestamps(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v79 = a1;
  v9 = a2[3];
  v10 = sub_1AE23D7CC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = v64 - v12;
  v67 = *(v9 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[2];
  v66 = *(v17 - 8);
  v18 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v77 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v64 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = sub_1AE23D7CC();
  v90 = *(v83 - 8);
  v24 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v85 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v81 = a4;
  v82 = v64 - v27;
  v28 = *v4;
  v29 = a2[4];
  v80 = a3;
  result = Dictionary<>.needToFinalizeTimestamps()();
  if ((result & 1) == 0)
  {
    return result;
  }

  v91 = sub_1AE23C9CC();
  sub_1AE23CA7C();
  result = sub_1AE23CA3C();
  v31 = v28;
  v65 = v5;
  v72 = a2;
  if ((v28 & 0xC000000000000001) != 0)
  {
    result = sub_1AE23DC1C();
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v31 = result | 0x8000000000000000;
  }

  else
  {
    v35 = -1 << *(v28 + 32);
    v32 = v28 + 64;
    v33 = ~v35;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v34 = v37 & *(v28 + 64);
  }

  v38 = v85;
  v39 = 0;
  v40 = (v66 + 32);
  v89 = (v67 + 32);
  v75 = TupleTypeMetadata2 - 8;
  v64[1] = v33;
  v41 = (v33 + 64) >> 6;
  v87 = (v66 + 16);
  v86 = (v67 + 16);
  v74 = (v90 + 32);
  v70 = (v67 + 56);
  v69 = (v67 + 8);
  v68 = (v66 + 8);
  v76 = v31;
  for (i = v41; ; v41 = i)
  {
    v73 = v34;
    v84 = v39;
    if ((v31 & 0x8000000000000000) == 0)
    {
      break;
    }

    v55 = sub_1AE23DC3C();
    v44 = TupleTypeMetadata2;
    if (v55)
    {
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v43 = v84;
      v38 = v85;
      v90 = v34;
      goto LABEL_21;
    }

    v57 = 1;
    v63 = v34;
    v46 = v84;
    v38 = v85;
    v90 = v63;
LABEL_22:
    v58 = *(v44 - 8);
    (*(v58 + 56))(v38, v57, 1, v44);
    v59 = v82;
    (*v74)();
    if ((*(v58 + 48))(v59, 1, v44) == 1)
    {
      result = sub_1ADDDCE74();
      *v65 = v91;
      return result;
    }

    v60 = *(v44 + 48);
    (*v40)(v23, v59, v17);
    (*v89)(v16, &v59[v60], v9);
    v61 = v79;
    (*(*(v80 + 8) + 64))(v79, v17);
    (*(*(v81 + 8) + 64))(v61, v9);
    (*v87)(v77, v23, v17);
    v62 = v78;
    (*v86)(v78, v16, v9);
    (*v70)(v62, 0, 1, v9);
    v38 = v85;
    sub_1AE23CB8C();
    (*v69)(v16, v9);
    result = (*v68)(v23, v17);
    v39 = v46;
    v34 = v90;
    v31 = v76;
  }

  v42 = v34;
  v43 = v39;
  v44 = TupleTypeMetadata2;
  if (v34)
  {
LABEL_18:
    v90 = (v42 - 1) & v42;
    v48 = __clz(__rbit64(v42)) | (v43 << 6);
    v49 = v38;
    v50 = v40;
    v51 = v16;
    v52 = v32;
    v53 = v31;
    (*(v66 + 16))(v23, *(v31 + 48) + *(v66 + 72) * v48, v17);
    v54 = *(v53 + 56);
    v32 = v52;
    v16 = v51;
    v40 = v50;
    v38 = v49;
    v44 = TupleTypeMetadata2;
    (*(v67 + 16))(v16, v54 + *(v67 + 72) * v48, v9);
LABEL_21:
    v56 = *(v44 + 48);
    (*v40)(v38, v23, v17);
    (*v89)(&v38[v56], v16, v9);
    v57 = 0;
    v46 = v43;
    goto LABEL_22;
  }

  if (v41 <= v39 + 1)
  {
    v45 = v39 + 1;
  }

  else
  {
    v45 = v41;
  }

  v46 = v45 - 1;
  v47 = v39;
  while (1)
  {
    v43 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v43 >= v41)
    {
      v90 = 0;
      v57 = 1;
      goto LABEL_22;
    }

    v42 = *(v32 + 8 * v43);
    ++v47;
    if (v42)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Dictionary<>.canContainAssets.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(*(a3 + 8) + 72))())
  {
    return 1;
  }

  else
  {
    return (*(*(a5 + 8) + 72))(a2) & 1;
  }
}

uint64_t static Dictionary<>.canContainReferences.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(*(a5 + 8) + 80))(a2))
  {
    return 1;
  }

  else
  {
    return (*(*(a3 + 8) + 80))(a1) & 1;
  }
}

uint64_t sub_1AE048370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary<>.copy(renamingReferences:)(a1, *v4, a2[2], a2[3], *(a3 - 8), a2[4], *(a3 - 16));
  *a4 = result;
  return result;
}

uint64_t sub_1AE0483AC@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary<>.copy(renamingReferences:)(a1, *v4, a2[2], a2[3], *(a3 - 8), a2[4], *(a3 - 16));
  *a4 = result;
  return result;
}

uint64_t sub_1AE0483E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  result = Dictionary<>.observableDifference(from:with:)(*a1, a2, *v6, a3[2], a3[3], a5, a3[4], *(a4 - 16));
  *a6 = result;
  return result;
}

uint64_t sub_1AE04843C(void *a1, uint64_t a2)
{
  v4 = *(a2 - 16);
  v3 = *(a2 - 8);
  v5 = *v2;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  return Dictionary<>.needToFinalizeTimestamps()();
}

uint64_t sub_1AE048480@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary<>.init(from:)(a1, a2[2], a2[3], *(a3 - 8), a2[4], *(a3 - 16));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Dictionary<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    v12 = sub_1ADE660B0(a2, a3, a4, a5, a6);
  }

  else
  {
    v12 = 0x80000001AE25FB70;
    sub_1ADE42E40();
    swift_allocError();
    *v13 = 0xD000000000000017;
    *(v13 + 8) = 0x80000001AE25FB70;
    *(v13 + 16) = 0;
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_1AE0485C4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  v6 = *v3;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  return Dictionary<>.encode(to:)();
}

uint64_t Dictionary<>.encode(to:)()
{
  result = sub_1ADE71C08();
  if (!v0)
  {

    sub_1ADE6DCDC();
  }

  return result;
}

uint64_t sub_1AE048688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v20 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA290, &qword_1AE241D78);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AE241900;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = a6;
  v19[8] = a7;
  v19[9] = a1;
  v19[10] = a2;
  v17 = sub_1ADE6B938(sub_1AE048940);
  if (v8)
  {
    *(v16 + 16) = 0;
  }

  else
  {
    v19[1] = v19;
    *(v16 + 32) = v17;
    MEMORY[0x1EEE9AC00](v17);
    result = sub_1ADE6B938(sub_1AE048988);
    *(v16 + 40) = result;
    *v20 = v16;
  }

  return result;
}

uint64_t sub_1AE048818(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE048868(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AE0488DC()
{
  result = qword_1EB5BCF58;
  if (!qword_1EB5BCF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BCCC8, &qword_1AE251C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BCF58);
  }

  return result;
}

uint64_t sub_1AE048988()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  return (*(*(*(v3 + 8) + 8) + 16))(v5, v2);
}

uint64_t sub_1AE048A4C(void *a1, uint64_t a2)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v21 = *(v23 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v20 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10();
  v22 = v7;
  sub_1AE23E3CC();
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = (*(a2 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v26 = *(*(a2 + 56) + 8 * v16);
      v24 = v18;
      v25 = v19;
      sub_1AE048F64();

      sub_1AE23DD5C();
      if (v2)
      {
        break;
      }

      v11 &= v11 - 1;

      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    (*(v21 + 8))(v22, v23);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        (*(v21 + 8))(v22, v23);
      }

      v11 = *(a2 + 64 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRStruct_0.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10();
  v26 = v9;
  sub_1AE23E3CC();
  result = (*(*(a3 + 8) + 24))(a2);
  v12 = result;
  v13 = 0;
  v14 = result + 64;
  v15 = 1 << *(result + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(result + 64);
  v18 = (v15 + 63) >> 6;
  if (v17)
  {
    while (1)
    {
      v19 = v13;
LABEL_8:
      v20 = __clz(__rbit64(v17)) | (v19 << 6);
      v21 = (*(v12 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v30 = *(*(v12 + 56) + 8 * v20);
      v28 = v22;
      v29 = v23;
      sub_1AE048F64();

      sub_1AE23DD5C();
      if (v3)
      {
        break;
      }

      v17 &= v17 - 1;

      v13 = v19;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    (*(v25 + 8))(v26, v27);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v19 >= v18)
      {

        return (*(v25 + 8))(v26, v27);
      }

      v17 = *(v14 + 8 * v19);
      ++v13;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1AE048F10()
{
  result = qword_1EB5BCF68;
  if (!qword_1EB5BCF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BCF68);
  }

  return result;
}

unint64_t sub_1AE048F64()
{
  result = qword_1EB5BCF70[0];
  if (!qword_1EB5BCF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5BCF70);
  }

  return result;
}

uint64_t CRStruct_0.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(v4 + 24);
  v6 = v5(a2, v4);
  v7 = v5(a2, v4);
  v8 = sub_1AE2200E4(v7, v6);

  return v8;
}

uint64_t CRStruct_0.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(v4 + 24);
  v6 = v5(a2, v4);
  v7 = v5(a2, v4);
  v8 = sub_1AE21FE14(v7, v6);

  return v8 & 1;
}

uint64_t sub_1AE049114@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AE156B60(*v2, a1);
  *a2 = result;
  return result;
}

uint64_t CRStruct_0.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  v8 = *(a3 + 8);
  v9 = (*(v8 + 24))(a2, v8);
  v10 = sub_1AE156B60(v9, a1);

  return (*(v8 + 32))(v10, a2, v8);
}

uint64_t sub_1AE049230@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v8 = v5;

  v6 = sub_1AE156B60(v4, &v8);

  *a2 = v6;
  return result;
}

uint64_t CRStruct_0.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1)
  {
    a1 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v13 = a1;
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  v8 = *(a3 + 8);
  v9 = *(v8 + 24);

  v10 = v9(a2, v8);
  v11 = sub_1AE156B60(v10, &v13);

  return (*(v8 + 32))(v11, a2, v8);
}

uint64_t CRStruct_0.observableDifference(from:with:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *(*(*(a1 + 8) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a2, 1, 1, AssociatedTypeWitness);
}

uint64_t CRStruct_0.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(a3 + 8) + 24))(a2);
  sub_1ADDDC764(a1, v4);
}

uint64_t sub_1AE0494B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AE21F75C(*a1, &v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 2) = v4;
  return result;
}

uint64_t CRStruct_0.merge(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = (*(v5 + 24))(a1, v5);
  v7 = (*(v5 + 40))(v9, a1, v5);
  sub_1AE21F75C(v6, &v10);

  v7(v9, 0);
  LOWORD(v6) = v10;
  LOBYTE(v7) = v11;
  result = (*(v5 + 64))(a1, v5);
  *a3 = v6;
  *(a3 + 2) = v7;
  return result;
}

uint64_t sub_1AE04965C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (sub_1AE21FE14(*a2, *a1))
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1AE21FE14(v2, v3) ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1AE0496AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AE1570D4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AE0496D8(uint64_t a1)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v4 = *(sub_1ADDE78C8() + 16);
    if ((~v4 & 0xF000000000000007) != 0 && (v4 & 0xF000000000000000) == 0x3000000000000000)
    {
      v10 = (v4 & 0xFFFFFFFFFFFFFFFLL);
      v6 = v10[2];
      v7 = v10[3];
      v8 = v10[4];
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
      v7 = MEMORY[0x1E69E7CC0];
      v8 = MEMORY[0x1E69E7CC0];
    }

    v1 = sub_1AE207790(v6, v7, v8, a1);
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v9 = 0xD000000000000014;
    *(v9 + 8) = 0x80000001AE25FB50;
    *(v9 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t CRStruct_0.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v13 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v15 = sub_1ADDE78C8();
    sub_1AE049F44(v15, a1, a2, a3, v12);

    if (!v4)
    {
      return (*(v9 + 32))(a4, v12, a2);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v17 = 0xD000000000000014;
    *(v17 + 8) = 0x80000001AE25FB50;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1AE0499EC(uint64_t a1, uint64_t a2)
{
  result = sub_1ADDFCC74();
  if (!v2)
  {
    v6 = result;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v6;
    *(inited + 24) = a1;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    sub_1AE04A4B8(inited, a2);
    swift_setDeallocating();
    v8 = *(inited + 16);

    v9 = *(inited + 24);
  }

  return result;
}

uint64_t CRStruct_0.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ADDFCD3C(a1, a2, a3, CRStruct_0.encode(to:));
}

{
  v4 = v3;
  v44 = a1;
  v6 = *(a3 + 8);
  (*(v6 + 56))(a2, v6);
  result = (*(v6 + 24))(a2, v6);
  v8 = 0;
  v10 = result + 64;
  v9 = *(result + 64);
  v45 = result;
  v11 = 1 << *(result + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v42 = v14;
  v43 = result + 64;
  while (v13)
  {
    v18 = v44;
LABEL_12:
    v20 = __clz(__rbit64(v13)) | (v8 << 6);
    v21 = (*(v45 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v49 = *(*(v45 + 56) + 8 * v20);
    v24 = *(v18 + 24);
    MEMORY[0x1EEE9AC00](result);
    v41[2] = &v49;
    v41[3] = v18;

    sub_1ADE6B9FC(sub_1AE157230, v41);
    v47 = v4;
    if (v4)
    {
    }

    v25 = *(v18 + 16);
    v46 = sub_1ADE66494(v23, v22);

    swift_beginAccess();
    v26 = *(*(v25 + 24) + 16);
    v27 = (~v26 & 0xF000000000000007) != 0 && (v26 & 0xF000000000000000) == 0x3000000000000000;
    v28 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
    if (v27)
    {
      v31 = (v26 & 0xFFFFFFFFFFFFFFFLL);
      v29 = v31[2];
      v30 = v31[3];
      v28 = v31[4];
    }

    v48 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1ADDF69D0(0, *(v29 + 2) + 1, 1, v29);
    }

    v33 = *(v29 + 2);
    v32 = *(v29 + 3);
    if (v33 >= v32 >> 1)
    {
      v29 = sub_1ADDF69D0((v32 > 1), v33 + 1, 1, v29);
    }

    *(v29 + 2) = v33 + 1;
    *&v29[8 * v33 + 32] = v46;

    MEMORY[0x1B26FB860](v34);
    if (*(v48 + 16) >= *(v48 + 24) >> 1)
    {
      v40 = *(v48 + 16);
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    v35 = v48;
    v36 = *(v25 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = *(v25 + 24);
      type metadata accessor for Proto_CRDT._StorageClass();
      v38 = swift_allocObject();
      *(v38 + 16) = 0xF000000000000007;
      v39 = *(v37 + 16);
      *(v38 + 16) = v39;
      *(v25 + 24) = v38;
      sub_1ADE5215C(v39);
    }

    v13 &= v13 - 1;
    v15 = *(v25 + 24);
    v16 = swift_allocObject();
    *(v16 + 16) = v29;
    *(v16 + 24) = v35;
    *(v16 + 32) = v28;
    v17 = *(v15 + 16);
    *(v15 + 16) = v16 | 0x3000000000000000;
    swift_endAccess();
    sub_1ADE52174(v17);

    v4 = v47;
    v14 = v42;
    v10 = v43;
  }

  v18 = v44;
  while (1)
  {
    v19 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v19 >= v14)
    {
    }

    v13 = *(v10 + 8 * v19);
    ++v8;
    if (v13)
    {
      v8 = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t CRStruct_0.minEncodingVersion.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = (*(*(a1 + 8) + 24))();
  sub_1AE21FFB0(v3, a2);
}

uint64_t sub_1AE049B5C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1AE049B8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1AE049BA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AE23DD9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AE049BE8(uint64_t a1)
{
  v2 = sub_1AE048F10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AE049C24(uint64_t a1)
{
  v2 = sub_1AE048F10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CRStruct_Base.init(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 48))(a2, a3);
}

Swift::Void __swiftcall CRStruct_Base.merge(additionalFields:)(Swift::OpaquePointer additionalFields)
{
  v3 = (*(v1 + 40))(v4);
  sub_1AE21F75C(additionalFields._rawValue, v5);
  v3(v4, 0);
}

Coherence::MergeResult __swiftcall CRStruct_Base.merge(additionalFields:)(Swift::OpaquePointer additionalFields)
{
  v4 = v2;
  v5 = (*(v1 + 40))(v7);
  sub_1AE21F75C(additionalFields._rawValue, v4);
  return v5(v7, 0);
}

Swift::Bool __swiftcall CRStruct_Base.additionalFieldsHasDelta(from:)(Swift::OpaquePointer from)
{
  v3 = (*(v1 + 24))();
  LOBYTE(from._rawValue) = sub_1AE21FE14(from._rawValue, v3);

  return from._rawValue & 1;
}

uint64_t CRStruct_Base.copyAdditionalFields(renamingReferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 24))(a2, a3);
  v5 = sub_1AE156B60(v4, a1);

  return v5;
}

uint64_t CRStruct_Base.copyAdditionalFields(renamingReferences:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v8 = v5;

  v6 = CRStruct_Base.copyAdditionalFields(renamingReferences:)(&v8, a2, a3);

  return v6;
}

uint64_t CRStruct_Base.additionalFieldsMinEncodingVersion.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = (*(a1 + 24))();
  sub_1AE21FFB0(v3, a2);
}

uint64_t sub_1AE049F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 16);
  if ((~v8 & 0xF000000000000007) != 0 && (v8 & 0xF000000000000000) == 0x3000000000000000)
  {
    v13 = (v8 & 0xFFFFFFFFFFFFFFFLL);
    v10 = v13[2];
    v11 = v13[3];
    v12 = v13[4];
    v14 = a5;

    a5 = v14;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1AE04A01C(v10, v11, v12, a2, a3, a4, a5);
}

uint64_t sub_1AE04A01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a4;
  v11 = *(a6 + 8);
  v12 = *(v11 + 48);
  v54 = a7;
  v12(a5, v11);
  v13 = *(v11 + 16);
  v55 = a5;
  v56 = v13(a5, v11);
  v14 = *(a1 + 16);

  if (v14)
  {
    v16 = 0;
    v52 = a2 + 32;
    v53 = a1 + 32;
    v51 = v11;
    v49 = v11 + 40;
    v46 = v14 - 1;
    v17 = MEMORY[0x1E69E7CC8];
    v47 = a3;
    v50 = v14;
LABEL_3:
    v48 = v17;
    while (v16 < *(a1 + 16))
    {
      if (v16 >= *(a2 + 16))
      {
        goto LABEL_25;
      }

      v18 = *(v53 + 8 * v16);
      v19 = *(v52 + 8 * v16);
      type metadata accessor for CRDecoder();
      swift_allocObject();

      v20 = v57;

      v21 = sub_1ADDE77B4(v19, v20);

      v23 = *(v21 + 32);
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v18 >= v24;
      }

      else
      {
        v25 = 1;
      }

      if (v25)
      {

        swift_bridgeObjectRelease_n();
        sub_1ADE42E40();
        v43 = swift_allocError();
        *v44 = 0xD000000000000015;
        *(v44 + 8) = 0x80000001AE25FCF0;
        *(v44 + 16) = 0;
        v59 = v43;
        swift_willThrow();

        return (*(*(v55 - 8) + 8))(v54);
      }

      v26 = v23 + 16 * v18;
      v27 = *(v26 + 32);
      v28 = *(v26 + 40);
      v61[0] = v27;
      v61[1] = v28;
      MEMORY[0x1EEE9AC00](v22);
      v45[2] = v61;

      v29 = v59;
      if (sub_1ADDE8768(sub_1AE162B7C, v45, v56))
      {
        v59 = v29;
        v40 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61[0] = v40;
        sub_1ADDE88A8(v21, v27, v28, isUniquelyReferenced_nonNull_native);

        v17 = v61[0];
        if (v46 == v16++)
        {
          goto LABEL_21;
        }

        goto LABEL_3;
      }

      AnyCRDT.init(from:)(v30, &v62);
      v59 = v29;
      if (v29)
      {

        swift_bridgeObjectRelease_n();
        return (*(*(v55 - 8) + 8))(v54);
      }

      ++v16;
      v31 = a2;
      v32 = a1;
      v33 = v62;
      v58 = (*(v51 + 40))(v61, v55);
      v35 = v34;
      v36 = *v34;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v60 = *v35;
      *v35 = 0x8000000000000000;
      v38 = v33;
      a1 = v32;
      a2 = v31;
      sub_1ADEBF524(v38, v27, v28, v37);

      v39 = *v35;
      *v35 = v60;

      v58(v61, 0);

      if (v50 == v16)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_21:

    swift_bridgeObjectRelease_n();
    if (v59)
    {
      (*(*(v55 - 8) + 8))(v54);
    }
  }

  return result;
}

uint64_t sub_1AE04A4B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  v42 = a2;

  v11 = 0;
  v39 = v9;
  v40 = v5;
  v41 = a1;
  while (v8)
  {
LABEL_10:
    v16 = __clz(__rbit64(v8)) | (v11 << 6);
    v17 = (*(v42 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v46 = *(*(v42 + 56) + 8 * v16);
    v20 = *(a1 + 24);
    MEMORY[0x1EEE9AC00](result);
    v38[2] = &v46;
    v38[3] = a1;

    sub_1ADE6B9FC(sub_1AE162BA0, v38);
    if (v3)
    {
    }

    v21 = *(a1 + 16);
    v43 = sub_1ADE66494(v19, v18);

    swift_beginAccess();
    v22 = *(*(v21 + 24) + 16);
    v23 = (~v22 & 0xF000000000000007) != 0 && (v22 & 0xF000000000000000) == 0x3000000000000000;
    v24 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v27 = (v22 & 0xFFFFFFFFFFFFFFFLL);
      v25 = v27[2];
      v26 = v27[3];
      v24 = v27[4];
    }

    v45 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = 0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1ADDF69D0(0, *(v25 + 2) + 1, 1, v25);
    }

    v30 = *(v25 + 2);
    v29 = *(v25 + 3);
    if (v30 >= v29 >> 1)
    {
      v25 = sub_1ADDF69D0((v29 > 1), v30 + 1, 1, v25);
    }

    *(v25 + 2) = v30 + 1;
    *&v25[8 * v30 + 32] = v43;

    MEMORY[0x1B26FB860](v31);
    if (*(v45 + 16) >= *(v45 + 24) >> 1)
    {
      v37 = *(v45 + 16);
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    v32 = v45;
    v33 = *(v21 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = *(v21 + 24);
      type metadata accessor for Proto_CRDT._StorageClass();
      v35 = swift_allocObject();
      *(v35 + 16) = 0xF000000000000007;
      v36 = *(v34 + 16);
      *(v35 + 16) = v36;
      *(v21 + 24) = v35;
      sub_1ADE5215C(v36);
    }

    v8 &= v8 - 1;
    v12 = *(v21 + 24);
    v13 = swift_allocObject();
    *(v13 + 16) = v25;
    *(v13 + 24) = v32;
    *(v13 + 32) = v24;
    v14 = *(v12 + 16);
    *(v12 + 16) = v13 | 0x3000000000000000;
    swift_endAccess();
    sub_1ADE52174(v14);

    v3 = v44;
    v5 = v40;
    a1 = v41;
    v9 = v39;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
    }

    v8 = *(v5 + 8 * v15);
    ++v11;
    if (v8)
    {
      v11 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE04ABE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t (*a6)(void *)@<X5>, void *a7@<X8>)
{
  v8 = a5;
  v12 = *(a1 + 16);
  if ((~v12 & 0xF000000000000007) != 0 && (v12 & 0xF000000000000000) == 0x3000000000000000)
  {
    v17 = (v12 & 0xFFFFFFFFFFFFFFFLL);
    v14 = v17[2];
    v15 = v17[3];
    v16 = v17[4];
    v20 = a7;

    v8 = a5;
    a7 = v20;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADDE7FC8(v14, v15, v16, a2, a3, a4, v8, a6, a7);
}

uint64_t CRStruct_2.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ADDFCD3C(a1, a2, a3, CRStruct_2.encode(to:));
}

{
  return sub_1ADDFCFF0(a1, a2, a3, CRStruct_2.encodeFields(to:), sub_1AE162BA0);
}

uint64_t CRStruct_2.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32[7] = a1;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = v25 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v25 - v14;
  (*(v6 + 48))(v32, a2, v6, v13);
  v16 = v32[0];
  v17 = v32[1];
  v25[0] = v32[3];
  v29 = v32[5];
  v30 = v32[4];

  v25[1] = v4;
  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = v17;
  v20 = v31;
  sub_1ADDFD59C(v15, v16, v19, v10, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v20)
  {

    return (*(v11 + 8))(v15, v10);
  }

  else
  {
    (*(v11 + 8))(v15, v10);

    v22 = v26;
    swift_getAtKeyPath();

    v23 = v28;
    v24 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v22, v25[0], v30, v23, *(*(v24 + 16) + 8));

    return (*(v27 + 8))(v22, v23);
  }
}

uint64_t CRStruct_3.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ADDFCD3C(a1, a2, a3, CRStruct_3.encode(to:));
}

{
  return sub_1ADDFCFF0(a1, a2, a3, CRStruct_3.encodeFields(to:), sub_1AE162BA0);
}

uint64_t CRStruct_3.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45[11] = a1;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = &v29 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v29 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  (*(v6 + 64))(v45, a2, v6, v14);
  v17 = v45[0];
  v18 = v45[1];
  v19 = v45[2];
  v34 = v45[3];
  v39 = v45[4];
  v41 = v45[5];
  v30 = v45[6];
  v43 = v45[7];
  v20 = v45[8];

  v38 = v4;
  swift_getAtKeyPath();
  v44 = v19;

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = v42;
  sub_1ADDFD59C(v16, v17, v18, v12, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v22)
  {

    v23 = v40;
  }

  else
  {
    v29 = v20;
    v42 = v18;
    (*(v40 + 8))(v16, v12);

    v25 = v35;
    swift_getAtKeyPath();

    v26 = v37;
    v27 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v25, v34, v39, v26, *(*(v27 + 16) + 8));
    (*(v36 + 8))(v25, v26);

    v16 = v31;
    swift_getAtKeyPath();

    v12 = AssociatedTypeWitness;
    v28 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v16, v30, v43, v12, *(*(v28 + 16) + 8));

    v23 = v32;
  }

  return (*(v23 + 8))(v16, v12);
}

uint64_t CRStruct_4.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ADDFCD3C(a1, a2, a3, CRStruct_4.encode(to:));
}

{
  return sub_1ADDFCFF0(a1, a2, a3, CRStruct_4.encodeFields(to:), sub_1AE162BA0);
}

uint64_t CRStruct_4.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v45 - v6;
  v69 = swift_getAssociatedTypeWitness();
  v50 = *(v69 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v49 = &v45 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v45 - v11;
  v62 = swift_getAssociatedTypeWitness();
  v66 = *(v62 - 8);
  v12 = *(v66 + 64);
  v13 = MEMORY[0x1EEE9AC00](v62);
  v64 = &v45 - v14;
  (*(v4 + 80))(&TupleTypeMetadata2, a2, v4, v13);
  v65 = TupleTypeMetadata2;
  v15 = v75;
  v63 = v76;
  v73 = v78;
  v72 = v79;
  v16 = v81;
  v17 = v82;
  v18 = v84;
  v19 = v85;
  v86[0] = TupleTypeMetadata2;
  v86[1] = v75;
  v86[2] = v76;
  v86[3] = v77;
  v51 = v77;
  v86[4] = v78;
  v86[5] = v79;
  v48 = v80;
  v86[6] = v80;
  v86[7] = v81;
  v86[8] = v82;
  v86[9] = v83;
  v45 = v83;
  v86[10] = v84;
  v86[11] = v85;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = v9;
  sub_1AE23DB8C();
  v75 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v76 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v77 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v21 = *(TupleTypeMetadata - 8);
  v22 = *(v21 + 16);
  v70 = TupleTypeMetadata;
  v55 = v21 + 16;
  v54 = v22;
  (v22)(&TupleTypeMetadata2, v86);

  v59 = v19;

  v60 = v18;
  v23 = v64;

  v57 = v17;
  v24 = v62;

  v58 = v16;
  v25 = a2;

  swift_getAtKeyPath();

  v56 = v4;
  v26 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
  v27 = v65;
  v65 = v15;
  v28 = v67;
  sub_1ADDFD59C(v23, v27, v15, v24, v26);
  if (v28)
  {
    (*(v21 + 8))(v86, v70);
    v29 = *(v66 + 8);
    v30 = v23;
  }

  else
  {
    v67 = v21;
    (*(v66 + 8))(v23, v24);
    v31 = v70;
    v54(&TupleTypeMetadata2, v86, v70);
    v32 = v73;

    v33 = v61;
    swift_getAtKeyPath();

    v34 = v53;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v33, v51, v32, v34, *(*(AssociatedConformanceWitness + 16) + 8));
    (*(v52 + 8))(v61, v34);
    v54(&TupleTypeMetadata2, v86, v31);
    v36 = v25;
    v37 = v58;

    v38 = v49;
    swift_getAtKeyPath();

    v66 = v36;
    v39 = v69;
    v40 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v38, v48, v37, v39, *(*(v40 + 16) + 8));
    (*(v50 + 8))(v38, v39);
    v54(&TupleTypeMetadata2, v86, v70);
    v42 = v60;

    v43 = v46;
    swift_getAtKeyPath();

    v24 = AssociatedTypeWitness;
    v44 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v43, v45, v42, v24, *(*(v44 + 16) + 8));
    (*(v67 + 8))(v86, v70);
    v29 = *(v47 + 8);
    v30 = v43;
  }

  return v29(v30, v24);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_5.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v82[1] = v82 - v6;
  v96 = swift_getAssociatedTypeWitness();
  v7 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v82[2] = v82 - v8;
  v97 = swift_getAssociatedTypeWitness();
  v9 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v82[3] = v82 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v84 = v82 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v87 = v82 - v17;
  v18 = *(v4 + 96);
  v94 = v4;
  v18(&TupleTypeMetadata2, v3, v4, v16);
  v104 = v113;
  v98 = v115;
  v107 = v116;
  v19 = v118;
  v20 = v119;
  v21 = v121;
  v128[1] = v122;
  v22 = v124;
  v23 = v125;
  v91 = TupleTypeMetadata2;
  v126[0] = TupleTypeMetadata2;
  v126[1] = v112;
  v108 = v112;
  v126[2] = v113;
  v126[3] = v114;
  v90 = v114;
  v126[4] = v115;
  v126[5] = v116;
  v89 = v117;
  v126[6] = v117;
  v126[7] = v118;
  v126[8] = v119;
  v126[9] = v120;
  v88 = v120;
  v126[10] = v121;
  v126[11] = v122;
  v85 = v123;
  v126[12] = v123;
  v127[0] = v124;
  v127[1] = v125;
  v86 = v14;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = v11;
  sub_1AE23DB8C();
  v112 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v113 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v114 = swift_getTupleTypeMetadata2();
  v93 = v3;
  sub_1AE23DB8C();
  v24 = v21;
  v25 = rawValue;
  v115 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v92 = *(TupleTypeMetadata - 8);
  v27 = *(v92 + 16);
  v103 = TupleTypeMetadata;
  v100 = v92 + 16;
  v109 = v27;
  (v27)(&TupleTypeMetadata2, v126);

  v110 = v23;

  v106 = v22;

  v28 = v20;

  v29 = v98;

  v30 = v25[2];
  v101 = v19;
  v102 = v24;
  if (v30)
  {
    v31 = sub_1ADDD7A10(v91, v108);
    v33 = v32;

    if (v33)
    {
      v34 = *(v25[7] + 8 * v31);
      v109(&TupleTypeMetadata2, v126, v103);

      v82[0] = v20;

      v35 = v86;
      v36 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v37 = *(v36 + 8);

      v39 = v105;
      v37(v38, v35, v36);
      v105 = v39;
      if (v39)
      {
LABEL_34:

        (*(v92 + 8))(v126, v103);
        return;
      }

      swift_setAtWritableKeyPath();

      v25 = rawValue;
      v29 = v98;
      v19 = v101;
      v28 = v82[0];
    }

    else
    {
      v19 = v101;
    }

    v40 = v103;
    v24 = v102;
  }

  else
  {

    v40 = v103;
  }

  v41 = v40;
  (v109)(&TupleTypeMetadata2, v126);

  v42 = v28;

  if (v25[2])
  {
    v43 = sub_1ADDD7A10(v90, v29);
    v45 = v44;

    if (v45)
    {
      v46 = *(v25[7] + 8 * v43);
      v109(&TupleTypeMetadata2, v126, v41);

      v47 = v101;

      v48 = v83;
      v49 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v50 = *(v49 + 8);

      v52 = v105;
      v50(v51, v48, v49);
      v105 = v52;
      if (v52)
      {
        v53 = v127;
LABEL_33:
        v81 = *(v53 - 32);
        goto LABEL_34;
      }

      swift_setAtWritableKeyPath();

      v25 = rawValue;
      v19 = v47;
      v41 = v103;
      v24 = v102;
    }

    else
    {
      v19 = v101;
      v24 = v102;
    }
  }

  else
  {
  }

  v109(&TupleTypeMetadata2, v126, v41);

  if (v25[2])
  {
    v54 = sub_1ADDD7A10(v89, v19);
    v56 = v55;

    if (v56)
    {
      v82[0] = v42;
      v57 = *(v25[7] + 8 * v54);
      v109(&TupleTypeMetadata2, v126, v103);

      v58 = v97;
      v59 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v60 = *(v59 + 8);

      v62 = v105;
      v60(v61, v58, v59);
      v105 = v62;
      if (v62)
      {
        v53 = &v110;
        goto LABEL_33;
      }

      swift_setAtWritableKeyPath();

      v25 = rawValue;
      v41 = v103;
      v24 = v102;
    }

    else
    {
      v24 = v102;
      v41 = v103;
    }
  }

  else
  {
  }

  v109(&TupleTypeMetadata2, v126, v41);

  if (v25[2])
  {
    v63 = sub_1ADDD7A10(v88, v24);
    v65 = v64;

    if (v65)
    {
      v66 = *(v25[7] + 8 * v63);
      v109(&TupleTypeMetadata2, v126, v41);

      v67 = v96;
      v68 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v69 = *(v68 + 8);

      v71 = v105;
      v69(v70, v67, v68);
      v105 = v71;
      if (v71)
      {
        goto LABEL_34;
      }

      swift_setAtWritableKeyPath();

      v25 = rawValue;
      v41 = v103;
    }
  }

  else
  {
  }

  v109(&TupleTypeMetadata2, v126, v41);

  if (v25[2])
  {
    v72 = sub_1ADDD7A10(v85, v106);
    v74 = v73;

    if (v74)
    {
      v75 = *(v25[7] + 8 * v72);
      v109(&TupleTypeMetadata2, v126, v41);

      v76 = AssociatedTypeWitness;
      v77 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v78 = *(v77 + 8);

      v80 = v105;
      v78(v79, v76, v77);
      v105 = v80;
      if (v80)
      {
        v53 = v128;
        goto LABEL_33;
      }

      swift_setAtWritableKeyPath();
      (*(v92 + 8))(v126, v41);
    }

    else
    {
      (*(v92 + 8))(v126, v41);
    }
  }

  else
  {
    (*(v92 + 8))(v126, v41);
  }
}

uint64_t CRStruct_5.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ADDFCD3C(a1, a2, a3, CRStruct_5.encode(to:));
}

{
  return sub_1ADDFCFF0(a1, a2, a3, CRStruct_5.encodeFields(to:), sub_1AE162BA0);
}

uint64_t CRStruct_5.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v50 - v6;
  v79 = swift_getAssociatedTypeWitness();
  v56 = *(v79 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v55 = &v50 - v8;
  v80 = swift_getAssociatedTypeWitness();
  v59 = *(v80 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v58 = &v50 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v50 - v13;
  v72 = swift_getAssociatedTypeWitness();
  v75 = *(v72 - 8);
  v14 = *(v75 + 64);
  v15 = MEMORY[0x1EEE9AC00](v72);
  v73 = &v50 - v16;
  (*(v4 + 96))(&TupleTypeMetadata2, a2, v4, v15);
  v74 = TupleTypeMetadata2;
  v102 = v87;
  v17 = v88;
  v85 = v90;
  v81 = v91;
  v84 = v93;
  v83 = v94;
  v18 = v96;
  v19 = v97;
  v21 = v99;
  v20 = v100;
  v101[0] = TupleTypeMetadata2;
  v101[1] = v87;
  v101[2] = v88;
  v101[3] = v89;
  v61 = v89;
  v101[4] = v90;
  v101[5] = v91;
  v57 = v92;
  v101[6] = v92;
  v101[7] = v93;
  v101[8] = v94;
  v101[9] = v95;
  v54 = v95;
  v101[10] = v96;
  v101[11] = v97;
  v51 = v98;
  v101[12] = v98;
  v101[13] = v99;
  v101[14] = v100;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = v11;
  sub_1AE23DB8C();
  v87 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v88 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v89 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v90 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v23 = *(TupleTypeMetadata - 8);
  v24 = *(v23 + 16);
  v82 = TupleTypeMetadata;
  v64 = v23 + 16;
  v63 = v24;
  (v24)(&TupleTypeMetadata2, v101);
  v25 = v102;

  v68 = v20;

  v62 = v21;

  v65 = v19;
  v26 = v73;

  v66 = v18;

  swift_getAtKeyPath();
  v67 = v17;
  v27 = v72;

  v69 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = v77;
  sub_1ADDFD59C(v26, v74, v25, v27, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v29)
  {
    (*(v23 + 8))(v101, v82);
    v30 = *(v75 + 8);
    v31 = v26;
  }

  else
  {
    v33 = v26;
    v34 = v60;
    v77 = v23;
    (*(v75 + 8))(v33, v27);
    v63(&TupleTypeMetadata2, v101, v82);
    v35 = v85;

    v36 = v70;
    swift_getAtKeyPath();

    v37 = v71;
    v38 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v36, v61, v35, v37, *(*(v38 + 16) + 8));
    (*(v34 + 8))(v70, v71);
    v63(&TupleTypeMetadata2, v101, v82);
    v39 = v84;

    v40 = v58;
    swift_getAtKeyPath();

    v41 = v80;
    v42 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v40, v57, v39, v41, *(*(v42 + 16) + 8));
    (*(v59 + 8))(v40, v41);
    v63(&TupleTypeMetadata2, v101, v82);
    v43 = v66;

    v44 = v55;
    swift_getAtKeyPath();

    v45 = v79;
    v46 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v44, v54, v43, v45, *(*(v46 + 16) + 8));
    (*(v56 + 8))(v44, v45);
    v63(&TupleTypeMetadata2, v101, v82);
    v47 = v62;

    v48 = v52;
    swift_getAtKeyPath();

    v27 = AssociatedTypeWitness;
    v49 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v48, v51, v47, v27, *(*(v49 + 16) + 8));
    (*(v77 + 8))(v101, v82);
    v30 = *(v53 + 8);
    v31 = v48;
  }

  return v30(v31, v27);
}

uint64_t CRStruct_6.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ADDFCD3C(a1, a2, a3, CRStruct_6.encode(to:));
}

{
  return sub_1ADDFCFF0(a1, a2, a3, CRStruct_6.encodeFields(to:), sub_1AE162BA0);
}

uint64_t CRStruct_6.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v56 = &v55 - v6;
  v87 = swift_getAssociatedTypeWitness();
  v60 = *(v87 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v59 = &v55 - v8;
  v88 = swift_getAssociatedTypeWitness();
  v63 = *(v88 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v62 = &v55 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v66 = *(v11 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v55 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v55 - v16;
  v79 = swift_getAssociatedTypeWitness();
  v83 = *(v79 - 8);
  v17 = *(v83 + 64);
  v18 = MEMORY[0x1EEE9AC00](v79);
  v82 = &v55 - v19;
  (*(v4 + 112))(&TupleTypeMetadata2, a2, v4, v18);
  v81 = TupleTypeMetadata2;
  v116 = v98;
  v95 = v101;
  v96 = v99;
  v93 = v104;
  v94 = v102;
  v80 = v107;
  v91 = v108;
  v92 = v105;
  v90 = v110;
  v20 = v111;
  v21 = v113;
  v22 = v114;
  v115[0] = TupleTypeMetadata2;
  v115[1] = v98;
  v115[2] = v99;
  v115[3] = v100;
  v69 = v100;
  v115[4] = v101;
  v115[5] = v102;
  v64 = v103;
  v115[6] = v103;
  v115[7] = v104;
  v115[8] = v105;
  v115[9] = v106;
  v61 = v106;
  v115[10] = v107;
  v115[11] = v108;
  v58 = v109;
  v115[12] = v109;
  v115[13] = v110;
  v115[14] = v111;
  v115[15] = v112;
  v55 = v112;
  v115[16] = v113;
  v115[17] = v114;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v70 = v14;
  sub_1AE23DB8C();
  v98 = swift_getTupleTypeMetadata2();
  v67 = v11;
  sub_1AE23DB8C();
  v99 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v100 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v101 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v102 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v24 = *(TupleTypeMetadata - 8);
  v25 = *(v24 + 16);
  v89 = TupleTypeMetadata;
  v73 = v25;
  v74 = v24 + 16;
  (v25)(&TupleTypeMetadata2, v115);
  v26 = v116;

  v76 = v22;

  v77 = v21;
  v27 = v79;

  v75 = v20;

  v28 = v80;

  v29 = v82;
  swift_getAtKeyPath();

  v71 = v4;
  v72 = a2;
  v30 = v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = v85;
  sub_1ADDFD59C(v29, v81, v26, v27, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v32)
  {
    (*(v24 + 8))(v115, v89);
    return (*(v83 + 8))(v29, v27);
  }

  else
  {
    v34 = v68;
    v85 = v24;
    (*(v83 + 8))(v30, v27);
    v73(&TupleTypeMetadata2, v115, v89);
    v35 = v95;

    v36 = v78;
    swift_getAtKeyPath();

    v37 = v70;
    v38 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v36, v69, v35, v37, *(*(v38 + 16) + 8));
    (*(v34 + 8))(v78, v37);
    v73(&TupleTypeMetadata2, v115, v89);
    v39 = v93;

    v40 = v65;
    swift_getAtKeyPath();

    v41 = v67;
    v42 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v40, v64, v39, v41, *(*(v42 + 16) + 8));
    (*(v66 + 8))(v40, v41);
    v73(&TupleTypeMetadata2, v115, v89);
    v43 = v28;

    v44 = v62;
    swift_getAtKeyPath();

    v45 = v88;
    v46 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v44, v61, v43, v45, *(*(v46 + 16) + 8));
    (*(v63 + 8))(v44, v45);
    v73(&TupleTypeMetadata2, v115, v89);
    v47 = v90;

    v48 = v59;
    swift_getAtKeyPath();

    v49 = v87;
    v50 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v48, v58, v47, v49, *(*(v50 + 16) + 8));
    (*(v60 + 8))(v48, v49);
    v73(&TupleTypeMetadata2, v115, v89);
    v51 = v77;

    v52 = v56;
    swift_getAtKeyPath();

    v53 = AssociatedTypeWitness;
    v54 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v52, v55, v51, v53, *(*(v54 + 16) + 8));
    (*(v85 + 8))(v115, v89);
    return (*(v57 + 8))(v52, v53);
  }
}

uint64_t CRStruct_7.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ADDFCD3C(a1, a2, a3, CRStruct_7.encode(to:));
}

{
  return sub_1ADDFCFF0(a1, a2, a3, CRStruct_7.encodeFields(to:), sub_1AE162BA0);
}

uint64_t CRStruct_7.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v63 = &v61 - v6;
  v94 = swift_getAssociatedTypeWitness();
  v67 = *(v94 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v66 = &v61 - v8;
  v95 = swift_getAssociatedTypeWitness();
  v70 = *(v95 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v69 = &v61 - v10;
  v96 = swift_getAssociatedTypeWitness();
  v73 = *(v96 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v72 = &v61 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v76 = *(v13 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v61 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v78 = *(v16 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v61 - v18;
  v88 = swift_getAssociatedTypeWitness();
  v90 = *(v88 - 8);
  v19 = *(v90 + 64);
  v20 = MEMORY[0x1EEE9AC00](v88);
  v22 = &v61 - v21;
  (*(v4 + 128))(&TupleTypeMetadata2, a2, v4, v20);
  v89 = TupleTypeMetadata2;
  v98 = v111;
  v108 = v114;
  v109 = v112;
  v106 = v117;
  v107 = v115;
  v104 = v120;
  v105 = v118;
  v102 = v123;
  v103 = v121;
  v100 = v126;
  v101 = v124;
  v99 = v127;
  v23 = v129;
  v24 = v130;
  v131[0] = TupleTypeMetadata2;
  v131[1] = v111;
  v131[2] = v112;
  v131[3] = v113;
  v79 = v113;
  v131[4] = v114;
  v131[5] = v115;
  v75 = v116;
  v131[6] = v116;
  v131[7] = v117;
  v131[8] = v118;
  v131[9] = v119;
  v71 = v119;
  v131[10] = v120;
  v131[11] = v121;
  v68 = v122;
  v131[12] = v122;
  v131[13] = v123;
  v131[14] = v124;
  v131[15] = v125;
  v65 = v125;
  v131[16] = v126;
  v131[17] = v127;
  v62 = v128;
  v131[18] = v128;
  v131[19] = v129;
  v131[20] = v130;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = v16;
  sub_1AE23DB8C();
  v111 = swift_getTupleTypeMetadata2();
  v77 = v13;
  sub_1AE23DB8C();
  v112 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v113 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v114 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v115 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v116 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v26 = *(TupleTypeMetadata - 8);
  v27 = *(v26 + 16);
  v97 = TupleTypeMetadata;
  v83 = v27;
  v84 = v26 + 16;
  (v27)(&TupleTypeMetadata2, v131);
  v28 = v98;

  v85 = v24;
  v29 = v88;

  v80 = v23;

  swift_getAtKeyPath();

  v81 = v4;
  v82 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = v92;
  sub_1ADDFD59C(v22, v89, v28, v29, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v31)
  {
    (*(v26 + 8))(v131, v97);
    return (*(v90 + 8))(v22, v29);
  }

  else
  {
    v33 = v78;
    v92 = v26;
    (*(v90 + 8))(v22, v29);
    v34 = v97;
    v83(&TupleTypeMetadata2, v131, v97);
    v35 = v108;

    v36 = v86;
    swift_getAtKeyPath();

    v37 = v87;
    v38 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v36, v79, v35, v37, *(*(v38 + 16) + 8));
    (*(v33 + 8))(v86, v87);
    v83(&TupleTypeMetadata2, v131, v34);
    v39 = v106;

    v40 = v74;
    swift_getAtKeyPath();

    v41 = v77;
    v42 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v40, v75, v39, v41, *(*(v42 + 16) + 8));
    (*(v76 + 8))(v40, v41);
    v83(&TupleTypeMetadata2, v131, v97);
    v43 = v104;

    v44 = v72;
    swift_getAtKeyPath();
    v45 = v44;

    v46 = v96;
    v47 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v45, v71, v43, v46, *(*(v47 + 16) + 8));
    (*(v73 + 8))(v45, v46);
    v83(&TupleTypeMetadata2, v131, v97);
    v48 = v102;

    v49 = v69;
    swift_getAtKeyPath();

    v50 = v95;
    v51 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v49, v68, v48, v50, *(*(v51 + 16) + 8));
    (*(v70 + 8))(v49, v50);
    v83(&TupleTypeMetadata2, v131, v97);
    v52 = v100;

    v53 = v66;
    swift_getAtKeyPath();

    v54 = v94;
    v55 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v53, v65, v52, v54, *(*(v55 + 16) + 8));
    (*(v67 + 8))(v53, v54);
    v56 = v97;
    v83(&TupleTypeMetadata2, v131, v97);
    v57 = v80;

    v58 = v63;
    swift_getAtKeyPath();

    v59 = AssociatedTypeWitness;
    v60 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v58, v62, v57, v59, *(*(v60 + 16) + 8));
    (*(v92 + 8))(v131, v56);
    return (*(v64 + 8))(v58, v59);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_8.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v110[1] = v110 - v6;
  v128 = swift_getAssociatedTypeWitness();
  v7 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v110[2] = v110 - v8;
  v129 = swift_getAssociatedTypeWitness();
  v9 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v110[3] = v110 - v10;
  v130 = swift_getAssociatedTypeWitness();
  v11 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v110[4] = v110 - v12;
  v131 = swift_getAssociatedTypeWitness();
  v13 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v112 = v110 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v115 = v110 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v118 = v110 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v121 = v110 - v24;
  v25 = *(v4 + 144);
  v133 = v4;
  v25(&TupleTypeMetadata2, v3, v4, v23);
  v153 = v156;
  v142 = v159;
  v143 = v164;
  v136 = v158;
  v137 = v165;
  v138 = v161;
  v139 = v167;
  v145 = v168;
  v146 = v170;
  v152 = v171;
  v147 = v155;
  v148 = v173;
  v150 = v162;
  v151 = v174;
  v26 = v176;
  v27 = v177;
  v124 = v157;
  v125 = TupleTypeMetadata2;
  v178[0] = TupleTypeMetadata2;
  v178[1] = v155;
  v178[2] = v156;
  v178[3] = v157;
  v178[4] = v158;
  v178[5] = v159;
  v122 = v163;
  v123 = v160;
  v178[6] = v160;
  v178[7] = v161;
  v178[8] = v162;
  v178[9] = v163;
  v178[10] = v164;
  v178[11] = v165;
  v119 = v166;
  v120 = v21;
  v178[12] = v166;
  v178[13] = v167;
  v178[14] = v168;
  v116 = v169;
  v178[15] = v169;
  v178[16] = v170;
  v178[17] = v171;
  v113 = v172;
  v178[18] = v172;
  v178[19] = v173;
  v178[20] = v174;
  v111 = v175;
  v178[21] = v175;
  v178[22] = v176;
  v178[23] = v177;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v117 = v18;
  sub_1AE23DB8C();
  v155 = swift_getTupleTypeMetadata2();
  v114 = v15;
  sub_1AE23DB8C();
  v156 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v157 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v158 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v159 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v160 = swift_getTupleTypeMetadata2();
  v132 = v3;
  sub_1AE23DB8C();
  v161 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v126 = *(TupleTypeMetadata - 8);
  v29 = *(v126 + 16);
  v149 = TupleTypeMetadata;
  v135 = v126 + 16;
  v144 = v29;
  (v29)(&TupleTypeMetadata2, v178);

  v134 = v26;

  v30 = rawValue[2];
  v140 = v27;
  if (v30)
  {
    v31 = sub_1ADDD7A10(v125, v147);
    v33 = v32;

    if (v33)
    {
      v34 = *(rawValue[7] + 8 * v31);
      v35 = v144;
      v144(&TupleTypeMetadata2, v178, v149);

      v36 = v120;
      v37 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v38 = *(v37 + 8);

      v40 = v141;
      v38(v39, v36, v37);
      v141 = v40;
      if (v40)
      {
        v41 = v149;
LABEL_49:

        (*(v126 + 8))(v178, v41);
        return;
      }

      swift_setAtWritableKeyPath();

      v35(&TupleTypeMetadata2, v178, v149);
    }

    else
    {
      v144(&TupleTypeMetadata2, v178, v149);
    }
  }

  else
  {

    v144(&TupleTypeMetadata2, v178, v149);
  }

  v42 = v138;

  if (rawValue[2])
  {
    v43 = sub_1ADDD7A10(v124, v136);
    v45 = v44;

    if (v45)
    {
      v125 = *(rawValue[7] + 8 * v43);
      v144(&TupleTypeMetadata2, v178, v149);

      v46 = v42;

      v47 = v117;
      v48 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v49 = *(v48 + 8);

      v51 = v141;
      v49(v50, v47, v48);
      v141 = v51;
      if (v51)
      {
        v41 = v149;
        goto LABEL_49;
      }

      swift_setAtWritableKeyPath();

      v53 = v143;
      v52 = v139;
      v42 = v46;
      v144(&TupleTypeMetadata2, v178, v149);
    }

    else
    {
      v52 = v139;
      v53 = v143;
      v144(&TupleTypeMetadata2, v178, v149);
    }
  }

  else
  {

    v52 = v139;
    v53 = v143;
    v144(&TupleTypeMetadata2, v178, v149);
  }

  if (rawValue[2])
  {
    v54 = sub_1ADDD7A10(v123, v42);
    v56 = v55;

    if ((v56 & 1) == 0)
    {
      v53 = v143;
      v144(&TupleTypeMetadata2, v178, v149);
      goto LABEL_23;
    }

    v57 = *(rawValue[7] + 8 * v54);
    v144(&TupleTypeMetadata2, v178, v149);

    v53 = v143;

    v58 = v114;
    v59 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v60 = *(v59 + 8);

    v62 = v141;
    v60(v61, v58, v59);
    v141 = v62;
    if (v62)
    {
      goto LABEL_48;
    }

    swift_setAtWritableKeyPath();

    v52 = v139;
  }

  else
  {
  }

  v144(&TupleTypeMetadata2, v178, v149);
LABEL_23:

  if (rawValue[2])
  {
    v63 = sub_1ADDD7A10(v122, v53);
    v65 = v64;

    if ((v65 & 1) == 0)
    {
      v52 = v139;
      v144(&TupleTypeMetadata2, v178, v149);
      goto LABEL_31;
    }

    v66 = *(rawValue[7] + 8 * v63);
    v144(&TupleTypeMetadata2, v178, v149);

    v67 = v131;
    v68 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v69 = *(v68 + 8);

    v71 = v141;
    v69(v70, v67, v68);
    v141 = v71;
    if (v71)
    {
      v41 = v149;
      goto LABEL_49;
    }

    swift_setAtWritableKeyPath();

    v52 = v139;
  }

  else
  {
  }

  v144(&TupleTypeMetadata2, v178, v149);
LABEL_31:

  if (rawValue[2])
  {
    v72 = sub_1ADDD7A10(v119, v52);
    v74 = v73;

    if (v74)
    {
      v75 = *(rawValue[7] + 8 * v72);
      v144(&TupleTypeMetadata2, v178, v149);

      v76 = v130;
      v77 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v78 = *(v77 + 8);

      v80 = v141;
      v78(v79, v76, v77);
      v141 = v80;
      if (v80)
      {
        goto LABEL_48;
      }

      swift_setAtWritableKeyPath();
    }
  }

  else
  {
  }

  v144(&TupleTypeMetadata2, v178, v149);

  if (rawValue[2])
  {
    v81 = sub_1ADDD7A10(v116, v146);
    v83 = v82;

    if (v83)
    {
      v84 = *(rawValue[7] + 8 * v81);
      v144(&TupleTypeMetadata2, v178, v149);

      v85 = v129;
      v86 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v87 = *(v86 + 8);

      v89 = v141;
      v87(v88, v85, v86);
      v141 = v89;
      if (v89)
      {
        v41 = v149;
        goto LABEL_49;
      }

      swift_setAtWritableKeyPath();
    }
  }

  else
  {
  }

  v144(&TupleTypeMetadata2, v178, v149);

  if (rawValue[2])
  {
    v90 = sub_1ADDD7A10(v113, v148);
    v92 = v91;

    if (v92)
    {
      v93 = *(rawValue[7] + 8 * v90);
      v144(&TupleTypeMetadata2, v178, v149);

      v94 = v128;
      v95 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v96 = *(v95 + 8);

      v98 = v141;
      v96(v97, v94, v95);
      v141 = v98;
      if (v98)
      {
LABEL_48:
        v41 = v149;
        goto LABEL_49;
      }

      swift_setAtWritableKeyPath();

      v99 = v144;
    }

    else
    {
      v99 = v144;
    }
  }

  else
  {

    v99 = v144;
  }

  v100 = v149;
  v99(&TupleTypeMetadata2, v178, v149);

  if (rawValue[2])
  {
    v101 = sub_1ADDD7A10(v111, v134);
    v103 = v102;

    if (v103)
    {
      v104 = *(rawValue[7] + 8 * v101);
      v41 = v149;
      v144(&TupleTypeMetadata2, v178, v149);

      v105 = AssociatedTypeWitness;
      v106 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v107 = *(v106 + 8);

      v109 = v141;
      v107(v108, v105, v106);
      v141 = v109;
      if (v109)
      {
        goto LABEL_49;
      }

      swift_setAtWritableKeyPath();
      (*(v126 + 8))(v178, v41);
    }

    else
    {
      (*(v126 + 8))(v178, v149);
    }
  }

  else
  {
    (*(v126 + 8))(v178, v100);
  }
}

uint64_t CRStruct_8.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ADDFCD3C(a1, a2, a3, CRStruct_8.encode(to:));
}

{
  return sub_1ADDFCFF0(a1, a2, a3, CRStruct_8.encodeFields(to:), sub_1AE162BA0);
}

uint64_t CRStruct_8.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  v5 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v68 = &v66 - v6;
  v100 = swift_getAssociatedTypeWitness();
  v72 = *(v100 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v71 = &v66 - v8;
  v101 = swift_getAssociatedTypeWitness();
  v75 = *(v101 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v74 = &v66 - v10;
  v102 = swift_getAssociatedTypeWitness();
  v78 = *(v102 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v77 = &v66 - v12;
  v104 = swift_getAssociatedTypeWitness();
  v81 = *(v104 - 8);
  v13 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v80 = &v66 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v85 = *(v15 - 8);
  v16 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v66 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v86 = *(v18 - 8);
  v19 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v66 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v97 = *(v21 - 8);
  v22 = *(v97 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v96 = &v66 - v24;
  v106 = v4;
  (*(v4 + 144))(&TupleTypeMetadata2, a2, v4, v23);
  v95 = TupleTypeMetadata2;
  v119 = v125;
  v120 = v123;
  v107 = v122;
  v108 = v126;
  v117 = v129;
  v118 = v128;
  v115 = v132;
  v116 = v131;
  v113 = v135;
  v114 = v134;
  v111 = v138;
  v112 = v137;
  v109 = v141;
  v110 = v140;
  v145[0] = TupleTypeMetadata2;
  v145[1] = v122;
  v145[2] = v123;
  v87 = v124;
  v145[3] = v124;
  v145[4] = v125;
  v145[5] = v126;
  v83 = v127;
  v145[6] = v127;
  v145[7] = v128;
  v145[8] = v129;
  v79 = v130;
  v145[9] = v130;
  v145[10] = v131;
  v145[11] = v132;
  v76 = v133;
  v145[12] = v133;
  v145[13] = v134;
  v145[14] = v135;
  v73 = v136;
  v145[15] = v136;
  v145[16] = v137;
  v145[17] = v138;
  v70 = v139;
  v145[18] = v139;
  v145[19] = v140;
  v145[20] = v141;
  v67 = v142;
  v145[21] = v142;
  v145[22] = v143;
  v25 = v143;
  v145[23] = v144;
  v26 = v144;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = v18;
  sub_1AE23DB8C();
  v122 = swift_getTupleTypeMetadata2();
  v84 = v15;
  sub_1AE23DB8C();
  v123 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v124 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v125 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v126 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v127 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v128 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v28 = *(TupleTypeMetadata - 8);
  v29 = *(v28 + 16);
  v105 = TupleTypeMetadata;
  v89 = v29;
  v90 = v28 + 16;
  (v29)(&TupleTypeMetadata2, v145);
  v30 = v107;

  v91 = v26;

  v92 = v25;

  v31 = v96;
  swift_getAtKeyPath();

  v88 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = v98;
  sub_1ADDFD59C(v31, v95, v30, v21, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v33)
  {
    (*(v28 + 8))(v145, v105);
    v34 = v97;
  }

  else
  {
    v36 = v31;
    v37 = v86;
    v98 = v28;
    (*(v97 + 8))(v36, v21);
    v38 = v105;
    v89(&TupleTypeMetadata2, v145, v105);
    v39 = v119;

    v40 = v93;
    swift_getAtKeyPath();

    v41 = v94;
    v42 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v40, v87, v39, v41, *(*(v42 + 16) + 8));
    (*(v37 + 8))(v93, v94);
    v89(&TupleTypeMetadata2, v145, v38);
    v43 = v118;

    v44 = v82;
    swift_getAtKeyPath();

    v45 = v84;
    v46 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v44, v83, v43, v45, *(*(v46 + 16) + 8));
    (*(v85 + 8))(v44, v45);
    v89(&TupleTypeMetadata2, v145, v105);
    v47 = v116;

    v48 = v80;
    swift_getAtKeyPath();

    v49 = v104;
    v50 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v48, v79, v47, v49, *(*(v50 + 16) + 8));
    (*(v81 + 8))(v48, v49);
    v89(&TupleTypeMetadata2, v145, v105);
    v51 = v114;

    v52 = v77;
    swift_getAtKeyPath();

    v53 = v102;
    v54 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v52, v76, v51, v53, *(*(v54 + 16) + 8));
    (*(v78 + 8))(v52, v53);
    v89(&TupleTypeMetadata2, v145, v105);
    v55 = v112;

    v56 = v74;
    swift_getAtKeyPath();

    v57 = v101;
    v58 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v56, v73, v55, v57, *(*(v58 + 16) + 8));
    (*(v75 + 8))(v56, v57);
    v89(&TupleTypeMetadata2, v145, v105);
    v59 = v110;

    v60 = v71;
    swift_getAtKeyPath();

    v61 = v100;
    v62 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v60, v70, v59, v61, *(*(v62 + 16) + 8));
    (*(v72 + 8))(v60, v61);
    v63 = v105;
    v89(&TupleTypeMetadata2, v145, v105);
    v64 = v92;

    v31 = v68;
    swift_getAtKeyPath();

    v21 = AssociatedTypeWitness;
    v65 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v31, v67, v64, v21, *(*(v65 + 16) + 8));
    (*(v98 + 8))(v145, v63);
    v34 = v69;
  }

  return (*(v34 + 8))(v31, v21);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_9.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v119[0] = v119 - v6;
  v136 = swift_getAssociatedTypeWitness();
  v7 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v119[1] = v119 - v8;
  v137 = swift_getAssociatedTypeWitness();
  v9 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v119[2] = v119 - v10;
  v138 = swift_getAssociatedTypeWitness();
  v11 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v119[3] = v119 - v12;
  v139 = swift_getAssociatedTypeWitness();
  v13 = *(*(v139 - 8) + 64);
  MEMORY[0x1EEE9AC00](v139);
  v121 = v119 - v14;
  v140 = swift_getAssociatedTypeWitness();
  v15 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v123 = v119 - v16;
  v141 = swift_getAssociatedTypeWitness();
  v17 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v125 = v119 - v18;
  v142 = swift_getAssociatedTypeWitness();
  v19 = *(*(v142 - 8) + 64);
  MEMORY[0x1EEE9AC00](v142);
  v127 = v119 - v20;
  v143 = swift_getAssociatedTypeWitness();
  v21 = *(*(v143 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v143);
  v129 = v119 - v23;
  v24 = *(v4 + 160);
  v145 = v4;
  v24(&TupleTypeMetadata2, v3, v4, v22);
  v25 = v172;
  v157 = v176;
  v166 = v178;
  v167 = v175;
  v152 = v179;
  v154 = v181;
  v26 = v182;
  v161 = v185;
  v162 = v184;
  v160 = v187;
  v148 = v188;
  v27 = v190;
  v164 = v193;
  v165 = v191;
  v155 = v169;
  v156 = v194;
  v133 = TupleTypeMetadata2;
  v195[0] = TupleTypeMetadata2;
  v195[1] = v169;
  v195[2] = v170;
  v28 = v170;
  v131 = v174;
  v132 = v171;
  v195[3] = v171;
  v195[4] = v172;
  v195[5] = v173;
  v29 = v173;
  v195[6] = v174;
  v195[7] = v175;
  v195[8] = v176;
  v130 = v177;
  v195[9] = v177;
  v195[10] = v178;
  v195[11] = v179;
  v128 = v180;
  v195[12] = v180;
  v195[13] = v181;
  v195[14] = v182;
  v126 = v183;
  v195[15] = v183;
  v195[16] = v184;
  v195[17] = v185;
  v124 = v186;
  v195[18] = v186;
  v195[19] = v187;
  v195[20] = v188;
  v122 = v189;
  v195[21] = v189;
  v195[22] = v190;
  v195[23] = v191;
  v120 = v192;
  v195[24] = v192;
  v195[25] = v193;
  v195[26] = v194;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v169 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v170 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v171 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v172 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v173 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v174 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v175 = swift_getTupleTypeMetadata2();
  v144 = v3;
  sub_1AE23DB8C();
  v176 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v134 = *(TupleTypeMetadata - 8);
  v31 = *(v134 + 16);
  v163 = TupleTypeMetadata;
  v158 = v31;
  v159 = v134 + 16;
  (v31)(&TupleTypeMetadata2, v195);
  v151 = v28;

  v150 = v27;

  v32 = rawValue[2];
  v153 = v25;
  v149 = v29;
  v147 = v26;
  if (!v32)
  {

    goto LABEL_6;
  }

  v33 = sub_1ADDD7A10(v133, v155);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    v158(&TupleTypeMetadata2, v195, v163);
    goto LABEL_7;
  }

  v36 = *(rawValue[7] + 8 * v33);
  v158(&TupleTypeMetadata2, v195, v163);

  v37 = v143;
  v38 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
  v39 = *(v38 + 8);

  v41 = v146;
  v39(v40, v37, v38);
  if (v41)
  {
    goto LABEL_60;
  }

  v146 = 0;
  swift_setAtWritableKeyPath();

  v158(&TupleTypeMetadata2, v195, v163);
LABEL_7:

  if (rawValue[2])
  {
    v42 = sub_1ADDD7A10(v132, v153);
    v44 = v43;

    if (v44)
    {
      v45 = *(rawValue[7] + 8 * v42);
      v158(&TupleTypeMetadata2, v195, v163);

      v46 = v142;
      v47 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v48 = *(v47 + 8);

      v50 = v146;
      v48(v49, v46, v47);
      if (v50)
      {
        goto LABEL_60;
      }

      v146 = 0;
      swift_setAtWritableKeyPath();

      v158(&TupleTypeMetadata2, v195, v163);
    }

    else
    {
      v158(&TupleTypeMetadata2, v195, v163);
    }
  }

  else
  {

    v158(&TupleTypeMetadata2, v195, v163);
  }

  if (rawValue[2])
  {
    v51 = sub_1ADDD7A10(v131, v167);
    v53 = v52;

    if (v53)
    {
      v54 = *(rawValue[7] + 8 * v51);
      v158(&TupleTypeMetadata2, v195, v163);

      v55 = v141;
      v56 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v57 = *(v56 + 8);

      v59 = v146;
      v57(v58, v55, v56);
      if (v59)
      {
        goto LABEL_60;
      }

      v146 = 0;
      swift_setAtWritableKeyPath();

      v158(&TupleTypeMetadata2, v195, v163);
    }

    else
    {
      v158(&TupleTypeMetadata2, v195, v163);
    }
  }

  else
  {

    v158(&TupleTypeMetadata2, v195, v163);
  }

  if (rawValue[2])
  {
    v60 = sub_1ADDD7A10(v130, v166);
    v62 = v61;

    if (v62)
    {
      v63 = *(rawValue[7] + 8 * v60);
      v158(&TupleTypeMetadata2, v195, v163);

      v64 = v140;
      v65 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v66 = *(v65 + 8);

      v68 = v146;
      v66(v67, v64, v65);
      if (v68)
      {
        v69 = v134;
LABEL_61:

        (*(v69 + 8))(v195, v163);
        return;
      }

      v146 = 0;
      swift_setAtWritableKeyPath();

      v158(&TupleTypeMetadata2, v195, v163);
    }

    else
    {
      v158(&TupleTypeMetadata2, v195, v163);
    }
  }

  else
  {

    v158(&TupleTypeMetadata2, v195, v163);
  }

  if (rawValue[2])
  {
    v70 = sub_1ADDD7A10(v128, v154);
    v72 = v71;

    if (v72)
    {
      v143 = *(rawValue[7] + 8 * v70);
      v158(&TupleTypeMetadata2, v195, v163);

      v73 = v139;
      v74 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v75 = *(v74 + 8);

      v77 = v146;
      v75(v76, v73, v74);
      if (v77)
      {
        goto LABEL_60;
      }

      v146 = 0;
      swift_setAtWritableKeyPath();

      v158(&TupleTypeMetadata2, v195, v163);
    }

    else
    {
      v158(&TupleTypeMetadata2, v195, v163);
    }
  }

  else
  {

    v158(&TupleTypeMetadata2, v195, v163);
  }

  v78 = v150;

  if (rawValue[2])
  {
    v79 = sub_1ADDD7A10(v126, v162);
    v81 = v80;

    if (v81)
    {
      v143 = *(rawValue[7] + 8 * v79);
      v158(&TupleTypeMetadata2, v195, v163);

      v82 = v138;
      v83 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v84 = *(v83 + 8);

      v86 = v146;
      v84(v85, v82, v83);
      if (v86)
      {
        goto LABEL_60;
      }

      v146 = 0;
      swift_setAtWritableKeyPath();

      v78 = v150;
      v158(&TupleTypeMetadata2, v195, v163);
    }

    else
    {
      v78 = v150;
      v158(&TupleTypeMetadata2, v195, v163);
    }
  }

  else
  {

    v158(&TupleTypeMetadata2, v195, v163);
  }

  if (rawValue[2])
  {
    v87 = sub_1ADDD7A10(v124, v160);
    v89 = v88;

    if (v89)
    {
      v90 = *(rawValue[7] + 8 * v87);
      v158(&TupleTypeMetadata2, v195, v163);

      v91 = v150;

      v92 = v137;
      v93 = v91;
      v94 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v95 = *(v94 + 8);

      v97 = v146;
      v95(v96, v92, v94);
      if (v97)
      {
        goto LABEL_60;
      }

      v146 = 0;
      swift_setAtWritableKeyPath();

      v78 = v93;
      v158(&TupleTypeMetadata2, v195, v163);
    }

    else
    {
      v78 = v150;
      v158(&TupleTypeMetadata2, v195, v163);
    }
  }

  else
  {

    v158(&TupleTypeMetadata2, v195, v163);
  }

  if (!rawValue[2])
  {

    v107 = v158;
LABEL_56:
    v108 = v163;
    v107(&TupleTypeMetadata2, v195, v163);
    goto LABEL_57;
  }

  v98 = sub_1ADDD7A10(v122, v78);
  v100 = v99;

  if ((v100 & 1) == 0)
  {
    v107 = v158;
    goto LABEL_56;
  }

  v101 = *(rawValue[7] + 8 * v98);
  v158(&TupleTypeMetadata2, v195, v163);

  v102 = v136;
  v103 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
  v104 = *(v103 + 8);

  v106 = v146;
  v104(v105, v102, v103);
  if (v106)
  {
    goto LABEL_60;
  }

  v146 = 0;
  swift_setAtWritableKeyPath();

  v108 = v163;
  v158(&TupleTypeMetadata2, v195, v163);
LABEL_57:

  if (rawValue[2])
  {
    v109 = sub_1ADDD7A10(v120, v164);
    v111 = v110;

    if (v111)
    {
      v112 = *(rawValue[7] + 8 * v109);
      v113 = v163;
      v158(&TupleTypeMetadata2, v195, v163);

      v114 = AssociatedTypeWitness;
      v115 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v116 = *(v115 + 8);

      v118 = v146;
      v116(v117, v114, v115);
      if (v118)
      {
LABEL_60:
        v69 = v134;
        goto LABEL_61;
      }

      swift_setAtWritableKeyPath();
      (*(v134 + 8))(v195, v113);
    }

    else
    {
      (*(v134 + 8))(v195, v163);
    }
  }

  else
  {
    (*(v134 + 8))(v195, v108);
  }
}

uint64_t CRStruct_9.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ADDFCD3C(a1, a2, a3, CRStruct_9.encode(to:));
}

{
  return sub_1ADDFCFF0(a1, a2, a3, CRStruct_9.encodeFields(to:), sub_1AE162BA0);
}

uint64_t CRStruct_9.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  v5 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = &v73 - v6;
  v111 = swift_getAssociatedTypeWitness();
  v79 = *(v111 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v78 = &v73 - v8;
  v112 = swift_getAssociatedTypeWitness();
  v82 = *(v112 - 8);
  v9 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v81 = &v73 - v10;
  v113 = swift_getAssociatedTypeWitness();
  v85 = *(v113 - 8);
  v11 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v84 = &v73 - v12;
  v114 = swift_getAssociatedTypeWitness();
  v88 = *(v114 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v87 = &v73 - v14;
  v115 = swift_getAssociatedTypeWitness();
  v91 = *(v115 - 8);
  v15 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v90 = &v73 - v16;
  v116 = swift_getAssociatedTypeWitness();
  v94 = *(v116 - 8);
  v17 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v92 = &v73 - v18;
  v132 = swift_getAssociatedTypeWitness();
  v95 = *(v132 - 8);
  v19 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v104 = &v73 - v20;
  v161 = swift_getAssociatedTypeWitness();
  v107 = *(v161 - 8);
  v21 = *(v107 + 64);
  v22 = MEMORY[0x1EEE9AC00](v161);
  v106 = &v73 - v23;
  v118 = v4;
  (*(v4 + 160))(&TupleTypeMetadata2, a2, v4, v22);
  v105 = TupleTypeMetadata2;
  v130 = v137;
  v131 = v135;
  v119 = v138;
  v128 = v141;
  v129 = v140;
  v126 = v144;
  v127 = v143;
  v124 = v147;
  v125 = v146;
  v122 = v150;
  v123 = v149;
  v120 = v153;
  v121 = v152;
  v24 = v156;
  v25 = v158;
  v26 = v159;
  v160[0] = TupleTypeMetadata2;
  v160[1] = v134;
  v27 = v134;
  v160[2] = v135;
  v96 = v136;
  v160[3] = v136;
  v160[4] = v137;
  v160[5] = v138;
  v93 = v139;
  v160[6] = v139;
  v160[7] = v140;
  v160[8] = v141;
  v89 = v142;
  v160[9] = v142;
  v160[10] = v143;
  v160[11] = v144;
  v86 = v145;
  v160[12] = v145;
  v160[13] = v146;
  v160[14] = v147;
  v83 = v148;
  v160[15] = v148;
  v160[16] = v149;
  v160[17] = v150;
  v80 = v151;
  v160[18] = v151;
  v160[19] = v152;
  v160[20] = v153;
  v77 = v154;
  v160[21] = v154;
  v160[22] = v155;
  v28 = v155;
  v160[23] = v156;
  v74 = v157;
  v160[24] = v157;
  v160[25] = v158;
  v160[26] = v159;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v134 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v135 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v136 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v137 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v138 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v139 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v140 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v141 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v30 = *(TupleTypeMetadata - 8);
  v31 = *(v30 + 16);
  v117 = TupleTypeMetadata;
  v99 = v31;
  v100 = v30 + 16;
  (v31)(&TupleTypeMetadata2, v160);

  v103 = v26;

  v97 = v25;

  v101 = v24;

  v102 = v28;

  v32 = v106;
  swift_getAtKeyPath();

  v98 = a2;
  v33 = v161;
  v34 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
  v35 = v105;
  v105 = v27;
  v36 = v109;
  sub_1ADDFD59C(v32, v35, v27, v33, v34);
  if (v36)
  {
    (*(v30 + 8))(v160, v117);
    v37 = *(v107 + 8);
    v38 = v32;
  }

  else
  {
    v40 = v95;
    v109 = v30;
    (*(v107 + 8))(v32, v33);
    v41 = v117;
    v99(&TupleTypeMetadata2, v160, v117);
    v42 = v130;

    v43 = v104;
    swift_getAtKeyPath();

    v44 = v132;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v43, v96, v42, v44, *(*(AssociatedConformanceWitness + 16) + 8));
    (*(v40 + 8))(v104, v132);
    v99(&TupleTypeMetadata2, v160, v41);
    v46 = v129;

    v47 = v92;
    swift_getAtKeyPath();

    v48 = v116;
    v49 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v47, v93, v46, v48, *(*(v49 + 16) + 8));
    (*(v94 + 8))(v47, v48);
    v99(&TupleTypeMetadata2, v160, v117);
    v50 = v127;

    v51 = v90;
    swift_getAtKeyPath();

    v52 = v115;
    v53 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v51, v89, v50, v52, *(*(v53 + 16) + 8));
    (*(v91 + 8))(v51, v52);
    v99(&TupleTypeMetadata2, v160, v117);
    v54 = v125;

    v55 = v87;
    swift_getAtKeyPath();

    v56 = v114;
    v57 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v55, v86, v54, v56, *(*(v57 + 16) + 8));
    (*(v88 + 8))(v55, v56);
    v99(&TupleTypeMetadata2, v160, v117);
    v58 = v123;

    v59 = v84;
    swift_getAtKeyPath();

    v60 = v113;
    v61 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v59, v83, v58, v60, *(*(v61 + 16) + 8));
    (*(v85 + 8))(v59, v60);
    v99(&TupleTypeMetadata2, v160, v117);
    v62 = v121;

    v63 = v81;
    swift_getAtKeyPath();

    v64 = v112;
    v65 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v63, v80, v62, v64, *(*(v65 + 16) + 8));
    (*(v82 + 8))(v63, v64);
    v99(&TupleTypeMetadata2, v160, v117);
    v66 = v102;

    v67 = v78;
    swift_getAtKeyPath();

    v68 = v111;
    v69 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v67, v77, v66, v68, *(*(v69 + 16) + 8));
    (*(v79 + 8))(v67, v68);
    v99(&TupleTypeMetadata2, v160, v117);
    v70 = v97;

    v71 = v75;
    swift_getAtKeyPath();

    v33 = AssociatedTypeWitness;
    v72 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v71, v74, v70, v33, *(*(v72 + 16) + 8));
    (*(v109 + 8))(v160, v117);
    v37 = *(v76 + 8);
    v38 = v71;
  }

  return v37(v38, v33);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_10_Final.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v126[1] = v126 - v6;
  v145 = swift_getAssociatedTypeWitness();
  v7 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v126[2] = v126 - v8;
  v146 = swift_getAssociatedTypeWitness();
  v9 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v126[3] = v126 - v10;
  v147 = swift_getAssociatedTypeWitness();
  v11 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147);
  v126[4] = v126 - v12;
  v148 = swift_getAssociatedTypeWitness();
  v13 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v128 = v126 - v14;
  v149 = swift_getAssociatedTypeWitness();
  v15 = *(*(v149 - 8) + 64);
  MEMORY[0x1EEE9AC00](v149);
  v130 = v126 - v16;
  v150 = swift_getAssociatedTypeWitness();
  v17 = *(*(v150 - 8) + 64);
  MEMORY[0x1EEE9AC00](v150);
  v132 = v126 - v18;
  v151 = swift_getAssociatedTypeWitness();
  v19 = *(*(v151 - 8) + 64);
  MEMORY[0x1EEE9AC00](v151);
  v134 = v126 - v20;
  v152 = swift_getAssociatedTypeWitness();
  v21 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v136 = v126 - v22;
  v153 = swift_getAssociatedTypeWitness();
  v23 = *(*(v153 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v153);
  v138 = v126 - v25;
  v26 = *(v4 + 176);
  v155 = v4;
  v26(&TupleTypeMetadata2, v3, v4, v24);
  v158 = v181;
  v163 = v187;
  v164 = v184;
  v160 = v188;
  v161 = v185;
  v178 = v190;
  v179 = v182;
  v162 = v194;
  v172 = v193;
  v173 = v196;
  v159 = v199;
  v175 = v200;
  v170 = v191;
  v171 = v202;
  v176 = v203;
  v177 = v197;
  v27 = v205;
  v28 = v206;
  v29 = v208;
  v30 = v209;
  v142 = TupleTypeMetadata2;
  v210[0] = TupleTypeMetadata2;
  v210[1] = v181;
  v210[2] = v182;
  v140 = v186;
  v141 = v183;
  v210[3] = v183;
  v210[4] = v184;
  v210[5] = v185;
  v210[6] = v186;
  v210[7] = v187;
  v210[8] = v188;
  v139 = v189;
  v210[9] = v189;
  v210[10] = v190;
  v210[11] = v191;
  v137 = v192;
  v210[12] = v192;
  v210[13] = v193;
  v210[14] = v194;
  v135 = v195;
  v210[15] = v195;
  v210[16] = v196;
  v210[17] = v197;
  v133 = v198;
  v210[18] = v198;
  v210[19] = v199;
  v210[20] = v200;
  v131 = v201;
  v210[21] = v201;
  v210[22] = v202;
  v210[23] = v203;
  v129 = v204;
  v210[24] = v204;
  v210[25] = v205;
  v210[26] = v206;
  v127 = v207;
  v210[27] = v207;
  v210[28] = v208;
  v210[29] = v209;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v181 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v182 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v183 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v184 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v185 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v186 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v187 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v188 = swift_getTupleTypeMetadata2();
  v154 = v3;
  sub_1AE23DB8C();
  v189 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v143 = *(TupleTypeMetadata - 8);
  v32 = *(v143 + 16);
  v174 = TupleTypeMetadata;
  v168 = v32;
  v169 = v143 + 16;
  (v32)(&TupleTypeMetadata2, v210);

  v157 = v30;

  v167 = v29;

  v165 = v28;

  v166 = v27;

  if (rawValue[2])
  {
    v33 = sub_1ADDD7A10(v142, v158);
    v35 = v34;

    if (v35)
    {
      v36 = *(rawValue[7] + 8 * v33);
      v168(&TupleTypeMetadata2, v210, v174);

      v37 = v153;
      v38 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v39 = *(v38 + 8);

      v41 = v156;
      v39(v40, v37, v38);
      if (v41)
      {
        v42 = v174;
        v43 = v143;
LABEL_69:

        (*(v43 + 8))(v210, v42);
        return;
      }

      v156 = 0;
      swift_setAtWritableKeyPath();

      v168(&TupleTypeMetadata2, v210, v174);
    }

    else
    {
      v168(&TupleTypeMetadata2, v210, v174);
    }
  }

  else
  {

    v168(&TupleTypeMetadata2, v210, v174);
  }

  if (rawValue[2])
  {
    v44 = sub_1ADDD7A10(v141, v164);
    v46 = v45;

    if (v46)
    {
      v153 = *(rawValue[7] + 8 * v44);
      v168(&TupleTypeMetadata2, v210, v174);

      v47 = v152;
      v48 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v49 = *(v48 + 8);

      v51 = v156;
      v49(v50, v47, v48);
      if (v51)
      {
        v42 = v174;
LABEL_68:
        v43 = v143;
        goto LABEL_69;
      }

      v156 = 0;
      swift_setAtWritableKeyPath();

      v168(&TupleTypeMetadata2, v210, v174);
    }

    else
    {
      v168(&TupleTypeMetadata2, v210, v174);
    }
  }

  else
  {

    v168(&TupleTypeMetadata2, v210, v174);
  }

  if (rawValue[2])
  {
    v52 = sub_1ADDD7A10(v140, v163);
    v54 = v53;

    if (v54)
    {
      v55 = *(rawValue[7] + 8 * v52);
      v168(&TupleTypeMetadata2, v210, v174);

      v56 = v151;
      v57 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v58 = *(v57 + 8);

      v60 = v156;
      v58(v59, v56, v57);
      if (v60)
      {
        v42 = v174;
        v43 = v143;
        goto LABEL_69;
      }

      v156 = 0;
      swift_setAtWritableKeyPath();
    }
  }

  else
  {
  }

  v168(&TupleTypeMetadata2, v210, v174);

  if (rawValue[2])
  {
    v61 = sub_1ADDD7A10(v139, v178);
    v63 = v62;

    if (v63)
    {
      v153 = *(rawValue[7] + 8 * v61);
      v42 = v174;
      v168(&TupleTypeMetadata2, v210, v174);

      v64 = v150;
      v65 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v66 = *(v65 + 8);

      v68 = v156;
      v66(v67, v64, v65);
      if (v68)
      {
        goto LABEL_68;
      }

      v156 = 0;
      swift_setAtWritableKeyPath();

      v168(&TupleTypeMetadata2, v210, v174);
    }

    else
    {
      v168(&TupleTypeMetadata2, v210, v174);
    }
  }

  else
  {

    v168(&TupleTypeMetadata2, v210, v174);
  }

  if (rawValue[2])
  {
    v69 = sub_1ADDD7A10(v137, v172);
    v71 = v70;

    if (v71)
    {
      v72 = *(rawValue[7] + 8 * v69);
      v168(&TupleTypeMetadata2, v210, v174);

      v73 = v149;
      v74 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v75 = *(v74 + 8);

      v77 = v156;
      v75(v76, v73, v74);
      if (v77)
      {
        v42 = v174;
        goto LABEL_68;
      }

      v156 = 0;
      swift_setAtWritableKeyPath();

      v168(&TupleTypeMetadata2, v210, v174);
    }

    else
    {
      v168(&TupleTypeMetadata2, v210, v174);
    }
  }

  else
  {

    v168(&TupleTypeMetadata2, v210, v174);
  }

  v78 = v171;

  if (rawValue[2])
  {
    v79 = sub_1ADDD7A10(v135, v173);
    v81 = v80;

    if (v81)
    {
      v82 = *(rawValue[7] + 8 * v79);
      v168(&TupleTypeMetadata2, v210, v174);

      v83 = v148;
      v84 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v85 = *(v84 + 8);

      v87 = v156;
      v85(v86, v83, v84);
      if (v87)
      {
        v42 = v174;
        goto LABEL_68;
      }

      v156 = 0;
      swift_setAtWritableKeyPath();

      v78 = v171;
      v168(&TupleTypeMetadata2, v210, v174);
    }

    else
    {
      v78 = v171;
      v168(&TupleTypeMetadata2, v210, v174);
    }
  }

  else
  {

    v168(&TupleTypeMetadata2, v210, v174);
  }

  if (rawValue[2])
  {
    v88 = sub_1ADDD7A10(v133, v159);
    v90 = v89;

    if (v90)
    {
      v91 = *(rawValue[7] + 8 * v88);
      v168(&TupleTypeMetadata2, v210, v174);

      v92 = v171;

      v93 = v147;
      v94 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v95 = *(v94 + 8);

      v97 = v156;
      v95(v96, v93, v94);
      if (v97)
      {
        v42 = v174;
        goto LABEL_68;
      }

      v156 = 0;
      swift_setAtWritableKeyPath();

      v78 = v92;
      v168(&TupleTypeMetadata2, v210, v174);
    }

    else
    {
      v78 = v171;
      v168(&TupleTypeMetadata2, v210, v174);
    }
  }

  else
  {

    v168(&TupleTypeMetadata2, v210, v174);
  }

  if (rawValue[2])
  {
    v98 = sub_1ADDD7A10(v131, v78);
    v100 = v99;

    if (v100)
    {
      v101 = *(rawValue[7] + 8 * v98);
      v168(&TupleTypeMetadata2, v210, v174);

      v102 = v146;
      v103 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v104 = *(v103 + 8);

      v106 = v156;
      v104(v105, v102, v103);
      if (v106)
      {
        v42 = v174;
        goto LABEL_68;
      }

      v156 = 0;
      swift_setAtWritableKeyPath();
    }
  }

  else
  {
  }

  v168(&TupleTypeMetadata2, v210, v174);

  if (rawValue[2])
  {
    v107 = sub_1ADDD7A10(v129, v166);
    v109 = v108;

    if ((v109 & 1) == 0)
    {
      v115 = v168;
      goto LABEL_65;
    }

    v153 = *(rawValue[7] + 8 * v107);
    v168(&TupleTypeMetadata2, v210, v174);

    v110 = v145;
    v111 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v112 = *(v111 + 8);

    v114 = v156;
    v112(v113, v110, v111);
    if (v114)
    {
      v42 = v174;
      goto LABEL_68;
    }

    v156 = 0;
    swift_setAtWritableKeyPath();
  }

  else
  {
  }

  v115 = v168;
LABEL_65:
  v116 = v174;
  v115(&TupleTypeMetadata2, v210, v174);

  if (rawValue[2])
  {
    v117 = sub_1ADDD7A10(v127, v167);
    v119 = v118;

    if (v119)
    {
      v120 = *(rawValue[7] + 8 * v117);
      v42 = v174;
      v168(&TupleTypeMetadata2, v210, v174);

      v121 = AssociatedTypeWitness;
      v122 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v123 = *(v122 + 8);

      v125 = v156;
      v123(v124, v121, v122);
      if (v125)
      {
        goto LABEL_68;
      }

      swift_setAtWritableKeyPath();
      (*(v143 + 8))(v210, v42);
    }

    else
    {
      (*(v143 + 8))(v210, v174);
    }
  }

  else
  {
    (*(v143 + 8))(v210, v116);
  }
}

uint64_t sub_1AE057C64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *))
{
  v11 = *(*(a2 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v12 + 64))
  {
    v21 = v14;
    v22 = v13;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v18 = sub_1ADDE78C8();
    sub_1AE04ABE8(v18, a1, a2, a3, a4, a5, v16);

    if (!v5)
    {
      return (*(v21 + 32))(v22, v16, a2);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v20 = 0xD000000000000014;
    *(v20 + 8) = 0x80000001AE25FB50;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t CRStruct_10_Final.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ADDFCD3C(a1, a2, a3, CRStruct_10_Final.encode(to:));
}

{
  return sub_1ADDFCFF0(a1, a2, a3, CRStruct_10_Final.encodeFields(to:), sub_1AE162BA0);
}

uint64_t CRStruct_10_Final.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v109 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  v5 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v75 - v6;
  v112 = swift_getAssociatedTypeWitness();
  v80 = *(v112 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v79 = &v75 - v8;
  v113 = swift_getAssociatedTypeWitness();
  v83 = *(v113 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v82 = &v75 - v10;
  v114 = swift_getAssociatedTypeWitness();
  v86 = *(v114 - 8);
  v11 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v85 = &v75 - v12;
  v115 = swift_getAssociatedTypeWitness();
  v89 = *(v115 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v88 = &v75 - v14;
  v116 = swift_getAssociatedTypeWitness();
  v92 = *(v116 - 8);
  v15 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v91 = &v75 - v16;
  v117 = swift_getAssociatedTypeWitness();
  v95 = *(v117 - 8);
  v17 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v94 = &v75 - v18;
  v118 = swift_getAssociatedTypeWitness();
  v98 = *(v118 - 8);
  v19 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v96 = &v75 - v20;
  v140 = swift_getAssociatedTypeWitness();
  v99 = *(v140 - 8);
  v21 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v105 = &v75 - v22;
  v172 = swift_getAssociatedTypeWitness();
  v108 = *(v172 - 8);
  v23 = *(v108 + 64);
  v24 = MEMORY[0x1EEE9AC00](v172);
  v106 = &v75 - v25;
  v139 = v4;
  v26 = *(v4 + 176);
  v121 = a2;
  v26(&TupleTypeMetadata2, a2, v4, v24);
  v107 = TupleTypeMetadata2;
  v137 = v145;
  v138 = v143;
  v122 = v148;
  v123 = v142;
  v135 = v149;
  v136 = v146;
  v133 = v152;
  v134 = v151;
  v131 = v155;
  v132 = v154;
  v129 = v158;
  v130 = v157;
  v127 = v161;
  v128 = v160;
  v125 = v164;
  v126 = v163;
  v124 = v166;
  v27 = v167;
  v120 = v169;
  v171[0] = TupleTypeMetadata2;
  v28 = v142;
  v171[1] = v142;
  v171[2] = v143;
  v100 = v144;
  v171[3] = v144;
  v171[4] = v145;
  v171[5] = v146;
  v97 = v147;
  v171[6] = v147;
  v171[7] = v148;
  v171[8] = v149;
  v93 = v150;
  v171[9] = v150;
  v171[10] = v151;
  v171[11] = v152;
  v90 = v153;
  v171[12] = v153;
  v171[13] = v154;
  v171[14] = v155;
  v87 = v156;
  v171[15] = v156;
  v171[16] = v157;
  v171[17] = v158;
  v84 = v159;
  v171[18] = v159;
  v171[19] = v160;
  v171[20] = v161;
  v81 = v162;
  v171[21] = v162;
  v171[22] = v163;
  v171[23] = v164;
  v78 = v165;
  v171[24] = v165;
  v171[25] = v166;
  v171[26] = v167;
  v75 = v168;
  v171[27] = v168;
  v171[28] = v169;
  v29 = v170;
  v171[29] = v170;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v142 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v143 = swift_getTupleTypeMetadata2();
  v30 = v106;
  sub_1AE23DB8C();
  v144 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v145 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v146 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v147 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v148 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v149 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v150 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v32 = *(TupleTypeMetadata - 8);
  v33 = *(v32 + 16);
  v119 = TupleTypeMetadata;
  v101 = v33;
  v102 = v32 + 16;
  (v33)(&TupleTypeMetadata2, v171);

  v104 = v29;

  v103 = v27;

  swift_getAtKeyPath();

  v34 = v172;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = v110;
  sub_1ADDFD59C(v30, v107, v28, v34, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v36)
  {
    (*(v32 + 8))(v171, v119);
    return (*(v108 + 8))(v30, v34);
  }

  else
  {
    v110 = v32;
    (*(v108 + 8))(v30, v34);
    v38 = v119;
    v101(&TupleTypeMetadata2, v171, v119);
    v39 = v137;

    v40 = v105;
    swift_getAtKeyPath();

    v41 = v140;
    v42 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v40, v100, v39, v41, *(*(v42 + 16) + 8));
    (*(v99 + 8))(v105, v140);
    v101(&TupleTypeMetadata2, v171, v38);
    v43 = v122;

    v44 = v96;
    swift_getAtKeyPath();

    v45 = v118;
    v46 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v44, v97, v43, v45, *(*(v46 + 16) + 8));
    (*(v98 + 8))(v44, v45);
    v101(&TupleTypeMetadata2, v171, v119);
    v47 = v134;

    v48 = v94;
    swift_getAtKeyPath();

    v49 = v117;
    v50 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v48, v93, v47, v49, *(*(v50 + 16) + 8));
    (*(v95 + 8))(v48, v49);
    v101(&TupleTypeMetadata2, v171, v119);
    v51 = v132;

    v52 = v91;
    swift_getAtKeyPath();

    v53 = v116;
    v54 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v52, v90, v51, v53, *(*(v54 + 16) + 8));
    (*(v92 + 8))(v52, v53);
    v101(&TupleTypeMetadata2, v171, v119);
    v55 = v130;

    v56 = v88;
    swift_getAtKeyPath();

    v57 = v115;
    v58 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v56, v87, v55, v57, *(*(v58 + 16) + 8));
    (*(v89 + 8))(v56, v57);
    v101(&TupleTypeMetadata2, v171, v119);
    v59 = v128;

    v60 = v85;
    swift_getAtKeyPath();

    v61 = v114;
    v62 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v60, v84, v59, v61, *(*(v62 + 16) + 8));
    (*(v86 + 8))(v60, v61);
    v101(&TupleTypeMetadata2, v171, v119);
    v63 = v126;

    v64 = v82;
    swift_getAtKeyPath();

    v65 = v113;
    v66 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v64, v81, v63, v65, *(*(v66 + 16) + 8));
    (*(v83 + 8))(v64, v65);
    v101(&TupleTypeMetadata2, v171, v119);
    v67 = v124;

    v68 = v79;
    swift_getAtKeyPath();

    v69 = v112;
    v70 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v68, v78, v67, v69, *(*(v70 + 16) + 8));
    (*(v80 + 8))(v68, v69);
    v101(&TupleTypeMetadata2, v171, v119);
    v71 = v120;

    v72 = v76;
    swift_getAtKeyPath();

    v73 = AssociatedTypeWitness;
    v74 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v72, v75, v71, v73, *(*(v74 + 16) + 8));
    (*(v110 + 8))(v171, v119);
    return (*(v77 + 8))(v72, v73);
  }
}

uint64_t CRStruct_1.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v23[1] = a4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(*(a2 - 8) + 16))(a4, v5, a2, v16);
  (*(v9 + 32))(a2, v9);
  v23[2] = v17;

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(a1, AssociatedTypeWitness);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  swift_setAtWritableKeyPath();

  v19 = *(v9 + 8);
  v20 = (*(v19 + 24))(a2, v19);
  v21 = sub_1AE156B60(v20, a1);

  (*(v19 + 32))(v21, a2, v19);
}