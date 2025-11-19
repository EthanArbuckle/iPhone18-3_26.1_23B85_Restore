uint64_t sub_1B0441638(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v3(&v6, v7);
  return v6;
}

uint64_t sub_1B0441680@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1B04416B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1B2726F90]();
  result = sub_1B0CFD188(v6, a1, a2);
  if (v9)
  {
    v10 = *(a3 + 40);
    v11 = __CFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      *(a3 + 40) = v12;
      return v8;
    }

    __break(1u);
  }

  else
  {
    v13 = *(a3 + 48);
    v11 = __CFADD__(v13, 1);
    v14 = v13 + 1;
    if (!v11)
    {
      *(a3 + 48) = v14;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0CFD270(v6, a1, a2);
      return a1;
    }
  }

  __break(1u);
  return result;
}

Swift::UInt64 sub_1B0441754(Swift::UInt64 result)
{
  if (result)
  {
    v1 = result;
    v2 = PCG32Random.next()();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = PCG32Random.next()();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::UInt64 __swiftcall PCG32Random.next()()
{
  v1 = v0[1];
  v2 = v1 + 0x5851F42D4C957F2DLL * *v0;
  v3 = __ROR4__((*v0 >> 45) ^ (*v0 >> 27), *v0 >> 59);
  *v0 = v1 + 0x5851F42D4C957F2DLL * v2;
  return __ROR4__((v2 >> 45) ^ (v2 >> 27), v2 >> 59) | (v3 << 32);
}

unint64_t sub_1B0441810(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1B0E44EA8() != a1 || v9 != a2)
  {
    v10 = sub_1B0E46A78();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1B0E44D08();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

char *sub_1B0441900(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E59F0, &unk_1B0EDA820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B0441A0C(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
LABEL_16:
      swift_willThrow();
      return v8;
    }

    v12 = result;
    v13 = *result;
    v14 = *(result + 8);
    v15 = *(result + 16);
    v34 = *(result + 22);
    v35 = *(result + 20);
    v8 = a7;

    sub_1B0E034F8(v12, v9, a3, a4, a5, a6, v8);
    if (v7)
    {

      v19 = *v12;

LABEL_15:
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v35;
      *(v12 + 22) = v34;
      goto LABEL_16;
    }

    v8 = v18;

    if (v9 + 1 >= a3)
    {
      sub_1B0439BCC();
      v24 = swift_allocError();
      *v25 = a3;
    }

    else
    {
      v33 = *v12;
      v21 = *(v12 + 8);
      v22 = *(v12 + 16);
      v32 = *(v12 + 20);
      v23 = *(v12 + 22);
      if (v9 + 2 < a3)
      {
        sub_1B0436204(v12);
        goto LABEL_14;
      }

      sub_1B0439BCC();
      v24 = swift_allocError();
      *v26 = a3;
      swift_willThrow();
      *v12 = v33;
      *(v12 + 8) = v21;
      *(v12 + 16) = v22;
      *(v12 + 20) = v32;
      *(v12 + 22) = v23;
    }

    swift_willThrow();
    v27 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {
      v29 = *v12;

      sub_1B0447F00(v8);

      goto LABEL_15;
    }

LABEL_14:
    v28 = sub_1B0E00714(v12, v9, a3);
    sub_1B0DFF2E8(v28, v31, v30 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 219);

    return v8;
  }

  __break(1u);
  return result;
}

void sub_1B0441D28(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t (*a8)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      goto LABEL_6;
    }

    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
    v17 = *(a1 + 20);
    v18 = *(a1 + 22);
    sub_1B0441264(a1, &v51);
    if (v10)
    {
      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = v16;
      *(a1 + 20) = v17;
      *(a1 + 22) = v18;
LABEL_6:
      swift_willThrow();
      return;
    }

    v20 = sub_1B0DFF2E8(v51, v52, v53 | (v54 << 32) | (v55 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
    v43 = a4(v20);
    v44 = v21;

    v22 = *a1;
    v23 = *(a1 + 8);
    v24 = *(a1 + 16);
    v25 = *(a1 + 20);
    v26 = *(a1 + 22);
    sub_1B0436204(a1);
    v27 = sub_1B0441A0C(a1, a2, a3, a4, a5, a6, a7);
    v29 = v28;
    v31 = v30;
    sub_1B04420D8(v27);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v32 = a8(v43, v44, v27, v29, v31);
    if (v35 == -1)
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_1B0E46298();

      v51 = 0xD000000000000017;
      v52 = 0x80000001B0F30050;
      MEMORY[0x1B2726E80](v43, v44);

      v40 = v51;
      v41 = v52;
      sub_1B0436554();
      swift_allocError();
      *v42 = v40;
      v42[1] = v41;
      v42[2] = 0xD000000000000020;
      v42[3] = 0x80000001B0F2FA10;
      v42[4] = a10;
      swift_willThrow();
      sub_1B0447F00(v27);
    }

    else
    {
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v39 = v35;
      sub_1B0447F00(v27);

      *a9 = v36;
      *(a9 + 8) = v37;
      *(a9 + 16) = v38;
      *(a9 + 24) = v39;
    }
  }
}

unint64_t sub_1B04420D8(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1B04420EC(result);
  }

  return result;
}

unint64_t sub_1B04420EC(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B044218C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B04421AC(a1, a2, a3, a4);
}

uint64_t sub_1B04421AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
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
      sub_1B0439BCC();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = result;
      v9 = *result;
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 20);
      v13 = *(result + 22);

      sub_1B0DFE880(0x202AuLL, 0xE200000000000000, 0, 0, v7, v5, a3);
      if (!v4)
      {
        v21 = sub_1B0D9EA70(v7, v5, a3);
        sub_1B0DFE880(0x2820484354454620uLL, 0xE800000000000000, 0, 0, v7, v5, a3);

        LODWORD(v22[0]) = v21;
        result = sub_1B041BA38(v22);
        v16 = v22[9];
        *(a4 + 128) = v22[8];
        *(a4 + 144) = v16;
        *(a4 + 160) = v22[10];
        *(a4 + 176) = v23;
        v17 = v22[5];
        *(a4 + 64) = v22[4];
        *(a4 + 80) = v17;
        v18 = v22[7];
        *(a4 + 96) = v22[6];
        *(a4 + 112) = v18;
        v19 = v22[1];
        *a4 = v22[0];
        *(a4 + 16) = v19;
        v20 = v22[3];
        *(a4 + 32) = v22[2];
        *(a4 + 48) = v20;
        return result;
      }

      v14 = *v7;

      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0442358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0442390(a1, a2, a3, a4);
}

uint64_t sub_1B0442390@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
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
      sub_1B0439BCC();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = result;
      v9 = *result;
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 20);
      v13 = *(result + 22);

      sub_1B0DFE880(0x202AuLL, 0xE200000000000000, 0, 0, v7, v5, a3);
      if (!v4)
      {
        v21 = sub_1B0D9EA70(v7, v5, a3);
        sub_1B0DFE880(0x4354454644495520uLL, 0xEB00000000282048, 0, 0, v7, v5, a3);

        LODWORD(v22[0]) = v21;
        result = sub_1B0D043DC(v22);
        v16 = v22[9];
        *(a4 + 128) = v22[8];
        *(a4 + 144) = v16;
        *(a4 + 160) = v22[10];
        *(a4 + 176) = v23;
        v17 = v22[5];
        *(a4 + 64) = v22[4];
        *(a4 + 80) = v17;
        v18 = v22[7];
        *(a4 + 96) = v22[6];
        *(a4 + 112) = v18;
        v19 = v22[1];
        *a4 = v22[0];
        *(a4 + 16) = v19;
        v20 = v22[3];
        *(a4 + 32) = v22[2];
        *(a4 + 48) = v20;
        return result;
      }

      v14 = *v7;

      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t type metadata accessor for ResponsePayload()
{
  result = qword_1EB6DE6A8;
  if (!qword_1EB6DE6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B04425B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1B043A260(a1, a2, a3, a4, a5, a6, a7, v15);
  if (!v8)
  {
    v11 = v15[7];
    a8[6] = v15[6];
    a8[7] = v11;
    a8[8] = v15[8];
    v12 = v15[3];
    a8[2] = v15[2];
    a8[3] = v12;
    v13 = v15[5];
    a8[4] = v15[4];
    a8[5] = v13;
    v14 = v15[1];
    *a8 = v15[0];
    a8[1] = v14;
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

unint64_t sub_1B044262C(unint64_t result, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v8 = result;
      v9 = *result;
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 20);
      v5 = *(result + 22);

      sub_1B0DFE880(0x44454C42414E45uLL, 0xE700000000000000, 0, 0, v8, v6, a3);
      if (v4)
      {
        v13 = *v8;
      }

      else
      {
        v47 = v5;
        if (v6 + 1 >= a3)
        {
          sub_1B0439BCC();
          swift_allocError();
          *v33 = a3;
        }

        else
        {
          v15 = *v8;
          v16 = *(v8 + 8);
          v44 = *(v8 + 16);
          v45 = v12;
          v42 = *(v8 + 22);
          v43 = *(v8 + 20);

          if (v6 + 2 >= a3)
          {
            sub_1B0439BCC();
            v34 = swift_allocError();
            *v35 = a3;
            v5 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v39 = v15;
            v40 = v11;
            v41 = v9;
            v17 = v6 + 3;
            v18 = *v8;
            v19 = *(v8 + 8);
            v20 = *(v8 + 16);
            v21 = *(v8 + 20);
            v22 = *(v8 + 22);
            if (v17 < a3)
            {
              v23 = MEMORY[0x1E69E7CC0];
              v46 = v17;
              do
              {
                swift_retain_n();
                sub_1B0436204(v8);

                sub_1B0441264(v8, v51);

                v49 = v49 & 0xFF00000000000000 | v52 | (v53 << 32) | (v54 << 48);
                v24 = sub_1B0DFF2E8(v51[0], v51[1], v49, 0xD000000000000020, 0x80000001B0F2FA10, 115);
                v25 = a4(v24);
                v27 = v26;

                v28 = sub_1B0441810(61, 0xE100000000000000, v25, v27);
                v48 = v29;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v23 = sub_1B0441900(0, *(v23 + 2) + 1, 1, v23);
                }

                v31 = *(v23 + 2);
                v30 = *(v23 + 3);
                if (v31 >= v30 >> 1)
                {
                  v23 = sub_1B0441900((v30 > 1), v31 + 1, 1, v23);
                }

                *(v23 + 2) = v31 + 1;
                v32 = &v23[32 * v31];
                *(v32 + 4) = v25;
                *(v32 + 5) = v27;
                *(v32 + 6) = v28;
                v32[56] = v48 & 1;
                v18 = *v8;
                v19 = *(v8 + 8);
                v20 = *(v8 + 16);
                v21 = *(v8 + 20);
                v22 = *(v8 + 22);
              }

              while (v46 < a3);
            }

            sub_1B0439BCC();
            v34 = swift_allocError();
            *v36 = a3;

            v5 = MEMORY[0x1E69E7CC0];
            swift_willThrow();

            v15 = v39;
            *v8 = v18;
            *(v8 + 8) = v19;
            *(v8 + 16) = v20;
            *(v8 + 20) = v21;
            *(v8 + 22) = v22;
            v9 = v41;
            v11 = v40;
          }

          swift_willThrow();
          v55 = v34;
          v37 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
          if (swift_dynamicCast())
          {

            return v5;
          }

          *v8 = v15;
          *(v8 + 8) = v16;
          *(v8 + 16) = v44;
          *(v8 + 20) = v43;
          *(v8 + 22) = v42;
          v12 = v45;
        }

        swift_willThrow();
        v38 = *v8;

        v5 = v47;
      }

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v5;
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0442B4C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  return sub_1B0DAA68C(a1, a2, a3, *(v4 + 16), a4);
}

void sub_1B0442BAC(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      v20 = a7;
      sub_1B0439BCC();
      v21 = swift_allocError();
      *v23 = a3;
    }

    else
    {
      v12 = *a1;
      v13 = *(a1 + 8);
      v14 = *(a1 + 16);
      v15 = *(a1 + 20);
      v16 = *(a1 + 22);

      v19 = a6;
      v20 = a7;
      sub_1B0442EF8(a1, v9, a3, a4, a5, v19, a7, v40);
      v21 = v8;
      if (!v8)
      {
        v36 = v40[0];
        v38 = v40[1];
        v32 = v41;
LABEL_15:

        *a8 = v36;
        *(a8 + 16) = v38;
        *(a8 + 32) = v32;
        return;
      }

      v22 = *a1;

      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      *(a1 + 20) = v15;
      *(a1 + 22) = v16;
    }

    swift_willThrow();
    v39 = v21;
    v24 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v39 = v21;
      v25 = v21;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v31 = a3;
      swift_willThrow();
      return;
    }

    v26 = *a1;
    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    v29 = *(a1 + 20);
    v30 = *(a1 + 22);

    sub_1B0443174(a1, v9, a3, a4, a5, a6, v20, v42);
    v36 = v42[0];
    v38 = v42[1];
    v32 = v43;
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1B0442E70(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0442BAC(a1, a2, a3, a4, a5, a6, a7, v11);
  if (!v8)
  {
    v10 = v11[1];
    *a8 = v11[0];
    *(a8 + 16) = v10;
    *(a8 + 32) = v12;
    type metadata accessor for ResponsePayload();
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B0442EF8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0DFE880(0x415441444154454DuLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v41 = a8;
    v18 = sub_1B0DB3AC0(a1, a2, a3, a4, a5, a6, a7);
    v20 = v19;
    v35 = v21;
    v38 = HIDWORD(v21);
    swift_beginAccess();
    v22 = v38 - v35;
    if (v38 == v35)
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v36 = ((v20 >> 24) & 0xFFFF00 | BYTE6(v20)) + v35;
      v39 = *(v18 + 24);
      __n = v22;
      v24 = sub_1B0C0C9F0(v22, 0);
      memcpy(v24 + 4, (v39 + v36), __n);
      v23 = v24;
    }

    v40 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v23);
    v37 = v25;

    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v28 = a3;
      return swift_willThrow();
    }

    else
    {
      v26 = *a1;
      v27 = *(a1 + 8);
      v32 = *(a1 + 20);
      __na = *(a1 + 16);
      v31 = *(a1 + 22);

      sub_1B0436204(a1);

      result = sub_1B0D9AA80(a1, a2, a3, a4, a5, a6, a7);
      *v41 = result;
      *(v41 + 8) = v29;
      *(v41 + 16) = v30;
      *(v41 + 24) = v40;
      *(v41 + 32) = v37;
    }
  }

  return result;
}

uint64_t sub_1B0443174@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0DFE880(0x415441444154454DuLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v39 = a8;
    v18 = sub_1B0DB3AC0(a1, a2, a3, a4, a5, a6, a7);
    v20 = v19;
    v33 = v21;
    v36 = HIDWORD(v21);
    swift_beginAccess();
    v22 = v36 - v33;
    if (v36 == v33)
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v34 = ((v20 >> 24) & 0xFFFF00 | BYTE6(v20)) + v33;
      v37 = *(v18 + 24);
      __n = v22;
      v24 = sub_1B0C0C9F0(v22, 0);
      memcpy(v24 + 4, (v37 + v34), __n);
      v23 = v24;
    }

    v38 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v23);
    v35 = v25;

    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v28 = a3;
      return swift_willThrow();
    }

    else
    {
      v26 = *a1;
      v27 = *(a1 + 8);
      v30 = *(a1 + 20);
      __na = *(a1 + 16);
      v29 = *(a1 + 22);

      sub_1B0436204(a1);

      result = sub_1B0D9B208(a1, a2, a3, a4, a5, a6, a7);
      *v39 = result;
      *(v39 + 8) = v38;
      *(v39 + 16) = v35 | 0x8000000000000000;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_1B0443418(uint64_t result, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v20 = *(result + 22);
    v21 = *(result + 20);

    sub_1B0441D28(v10, v8, a3, a4, a5, a6, a7, sub_1B0E33560, &v22, 100);
    if (v7)
    {
      v18 = *v10;

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
      return swift_willThrow();
    }

    return v22;
  }

  return result;
}

uint64_t sub_1B0443564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0443418(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    *a8 = result;
    *(a8 + 8) = v11;
    *(a8 + 16) = v12;
    *(a8 + 24) = v13;
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1B04435B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  if (a3)
  {

    v9 = sub_1B0455ECC();
    v10 = sub_1B0E43CB8();
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  a6(v9, v10, a4 & 1, a5);

  return sub_1B044EF38(v9);
}

uint64_t sub_1B0443660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_1B0E441D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    *(result + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime) = static MonotonicTime.now()();
    if (a1 != 1)
    {
      sub_1B044390C(a1);
    }

    sub_1B03B5C80(a4, v9, &unk_1EB6E5A90, &unk_1B0EDC020);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1B0398EFC(v9, &unk_1EB6E5A90, &unk_1B0EDC020);
      v17 = *(v16 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1B0BF02EC;
      *(v19 + 24) = v18;
      swift_retain_n();
      sub_1B0E43CE8();
    }

    else
    {
      (*(v11 + 32))(v14, v9, v10);
      sub_1B0BEE394(v14);

      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t sub_1B044390C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionEvent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s6LoggerVMa_0();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  if (a1)
  {
    return sub_1B0443F28(a1);
  }

  v15 = v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1B03FD208(v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, &v28 - v12, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v16 = sub_1B0E43988();
  v17 = sub_1B0E439A8();
  (*(*(v17 - 8) + 8))(v13, v17);
  v18 = sub_1B0E45908();
  if (os_log_type_enabled(v16, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 68158210;
    *(v19 + 4) = 2;
    *(v19 + 8) = 256;
    v21 = v15 + *(v9 + 20);
    *(v19 + 10) = *v21;

    *(v19 + 11) = 2082;
    v22 = ConnectionID.debugDescription.getter(*(v21 + 4));
    v24 = sub_1B0399D64(v22, v23, &v29);

    *(v19 + 13) = v24;
    _os_log_impl(&dword_1B0389000, v16, v18, "[%.*hhx-%{public}s] Did complete STARTTLS", v19, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x1B272C230](v20, -1, -1);
    MEMORY[0x1B272C230](v19, -1, -1);
  }

  else
  {
  }

  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
  v25 = *(v5 + 72);
  v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B0EC1E70;
  sub_1B03FD208(v8, v27 + v26, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B0426318(v27);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_1B03D6AC4(v8, type metadata accessor for ConnectionEvent);
}

uint64_t sub_1B0443F28(uint64_t a1)
{
  v110 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for UntaggedResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5528, &qword_1B0ED0CF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v91 = &v82 - v8;
  v90 = type metadata accessor for Response(0);
  v9 = *(v90 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v90);
  v88 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v82 - v13;
  v93 = type metadata accessor for Response(0);
  v14 = *(*(v93 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v93);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v82 - v18;
  v94 = type metadata accessor for ConnectionEvent(0);
  v95 = *(v94 - 8);
  v19 = *(v95 + 64);
  v20 = MEMORY[0x1EEE9AC00](v94);
  v87 = (&v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v20);
  v86 = &v82 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v102 = (&v82 - v24);
  v101 = type metadata accessor for ResponseOrContinuationRequest(0);
  v25 = *(v101 - 8);
  v26 = *(v25 + 64);
  result = MEMORY[0x1EEE9AC00](v101);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  if (!v30)
  {
    goto LABEL_29;
  }

  v83 = v9;
  v84 = v1;
  v31 = sub_1B0444C78(0, v30, 0, MEMORY[0x1E69E7CC0]);
  v96 = OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
  v97 = v17;
  v32 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v100 = *(v25 + 72);
  do
  {
    sub_1B03FD208(v32, v29, type metadata accessor for ResponseOrContinuationRequest);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v103;
      sub_1B0423D50(v29, v103, type metadata accessor for Response);
      sub_1B03FD208(v34, v17, type metadata accessor for Response);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v104 = v31;
        v36 = *(v17 + 1);
        v35 = *(v17 + 2);
        v37 = *(v17 + 3);
        v38 = *(v17 + 4);
        v39 = v17[40];
        v106 = v37;
        v107 = v38;
        *&__dst = 0x4C54544F5248545BLL;
        *(&__dst + 1) = 0xEB000000005D4445;
        sub_1B0A91FD0(v35, v37, v38, v39);
        sub_1B07C7F5C();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v40 = sub_1B0E45F58();
        sub_1B0447F00(v35);
        swift_bridgeObjectRelease_n();
        if (v40)
        {
          sub_1B0BEE588();
        }

        sub_1B0BB6FE0(v35, v37, v38, v39);
        v31 = v104;
        v17 = v97;
      }

      else
      {
        sub_1B03D6AC4(v17, type metadata accessor for Response);
      }

      swift_beginAccess();
      v33 = v103;
      ServerResponseTranscoder.append(_:)(v103);
      swift_endAccess();
      sub_1B03D6AC4(v33, type metadata accessor for Response);
      goto LABEL_5;
    }

    v104 = v31;
    v41 = *v29;
    v42 = *(v29 + 1);
    v43 = *(v29 + 2);
    v44 = v29[24];
    v98 = v42;
    v99 = v41;
    if ((v44 & 1) == 0)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v49 = v43;
      goto LABEL_18;
    }

    swift_beginAccess();
    v45 = *(v41 + 24) + ((v43 >> 24) & 0xFFFF00 | BYTE6(v43));
    v108 = MEMORY[0x1E69E6290];
    v109 = MEMORY[0x1E6969DF8];
    v106 = v45 + v42;
    v107 = v45 + HIDWORD(v42);
    v46 = __swift_project_boxed_opaque_existential_0(&v106, MEMORY[0x1E69E6290]);
    v42 = *v46;
    if (*v46)
    {
      v47 = v46[1];
      v48 = v47 - v42;
      if (v47 != v42)
      {
        if (v48 <= 14)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v47 - v42;
          memcpy(&__dst, v42, v47 - v42);
          v42 = __dst;
          v49 = v85 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v85 = v49;
        }

        else
        {
          v53 = sub_1B0E42AD8();
          v54 = *(v53 + 48);
          v55 = *(v53 + 52);
          swift_allocObject();
          v56 = sub_1B0E42A88();
          v57 = v56;
          if (v48 >= 0x7FFFFFFF)
          {
            sub_1B0E42EC8();
            v42 = swift_allocObject();
            *(v42 + 16) = 0;
            *(v42 + 24) = v48;
            v49 = v57 | 0x8000000000000000;
          }

          else
          {
            v42 = v48 << 32;
            v49 = v56 | 0x4000000000000000;
          }
        }

        goto LABEL_15;
      }

      v42 = 0;
    }

    v49 = 0xC000000000000000;
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0Tm(&v106);
LABEL_18:
    v50 = v102;
    *v102 = v42;
    v50[1] = v49;
    *(v50 + 16) = v44;
    swift_storeEnumTagMultiPayload();
    sub_1B0BD30C8(v42, v49, v44);
    v52 = v104[2];
    v51 = v104[3];
    if (v52 >= v51 >> 1)
    {
      v104 = sub_1B0444C78(v51 > 1, v52 + 1, 1, v104);
    }

    sub_1B0BCDEB0(v42, v49, v44);
    sub_1B0BEFC7C(v99, v98, v43, v44);
    v31 = v104;
    v104[2] = v52 + 1;
    sub_1B0423D50(v102, v31 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v52, type metadata accessor for ConnectionEvent);
    v17 = v97;
LABEL_5:
    v32 += v100;
    --v30;
  }

  while (v30);
  swift_beginAccess();
  v58 = v91;
  v59 = v84;
  ServerResponseTranscoder.parseNext()(v91);
  v60 = v59;
  if (v59)
  {
    swift_endAccess();
  }

  else
  {
    v62 = (v83 + 48);
    while (1)
    {
      swift_endAccess();
      if ((*v62)(v58, 1, v90) == 1)
      {
        break;
      }

      v75 = v58;
      v76 = v92;
      sub_1B0423D50(v75, v92, type metadata accessor for Response);
      v77 = v76;
      v78 = v88;
      sub_1B03FD208(v77, v88, type metadata accessor for Response);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = v60;
        v64 = *v78;
        v65 = *(v78 + 4);
        v66 = *(v78 + 8);
        v67 = *(v78 + 16);
        v68 = *(v78 + 24);
        v69 = *(v78 + 32);
        v70 = v87;
        *v87 = v66;
        v70[1] = v67;
        v70[2] = v68;
        *(v70 + 24) = v69;
        *(v70 + 28) = v64;
        *(v70 + 8) = v65;
        swift_storeEnumTagMultiPayload();
        sub_1B0A91FD0(v66, v67, v68, v69);
        v72 = v31[2];
        v71 = v31[3];
        v73 = v72 + 1;
        if (v72 >= v71 >> 1)
        {
          v31 = sub_1B0444C78(v71 > 1, v72 + 1, 1, v31);
        }

        sub_1B0BB6FE0(v66, v67, v68, v69);
        v74 = v87;
        v60 = v63;
      }

      else
      {
        v79 = v78;
        v80 = v89;
        sub_1B0423D50(v79, v89, type metadata accessor for UntaggedResponse);
        sub_1B03FD208(v80, v86, type metadata accessor for UntaggedResponse);
        swift_storeEnumTagMultiPayload();
        v72 = v31[2];
        v81 = v31[3];
        v73 = v72 + 1;
        if (v72 >= v81 >> 1)
        {
          v31 = sub_1B0444C78(v81 > 1, v72 + 1, 1, v31);
        }

        sub_1B03D6AC4(v89, type metadata accessor for UntaggedResponse);
        v74 = v86;
      }

      sub_1B03D6AC4(v92, type metadata accessor for Response);
      v31[2] = v73;
      sub_1B0423D50(v74, v31 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v72, type metadata accessor for ConnectionEvent);
      swift_beginAccess();
      v58 = v91;
      ServerResponseTranscoder.parseNext()(v91);
    }

    sub_1B0398EFC(v58, &qword_1EB6E5528, &qword_1B0ED0CF0);
    if (v31[2] && swift_unknownObjectWeakLoadStrong())
    {
      sub_1B0426318(v31);
      swift_unknownObjectRelease();
    }
  }

LABEL_29:
  v61 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t type metadata accessor for Response(uint64_t a1)
{
  return sub_1B0390488(a1, &unk_1EB6DD0C0);
}

{
  return sub_1B0390488(a1, &unk_1EB6DE068);
}

size_t sub_1B0444A9C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
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

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216ResponseTextCodeOSg(void *a1)
{
  v1 = (((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3));
  v2 = v1 ^ 0x7E;
  v3 = 128 - v1;
  if (v2 >= 0x6E)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216ResponseTextCodeO(void *a1)
{
  v1 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  if (v1 <= 0x10)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 17;
  }
}

void *ServerResponseTranscoder.append(_:)(uint64_t a1)
{
  result = *v1;
  v4 = *(*v1 + 24);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    if (*(*v1 + 16) < v5 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B04467C8(isUniquelyReferenced_nonNull_native, v5);
      v7 = *v1;
    }

    v8 = *(type metadata accessor for Response(0) - 8);
    return sub_1B0444DB8((v7 + 16), v7 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), a1);
  }

  return result;
}

void *sub_1B0444DB8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for Response(0);
        result = sub_1B0446A38(a3, a2 + *(*(v10 - 8) + 72) * v5, type metadata accessor for Response);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void ServerResponseTranscoder.parseNext()(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6580, &unk_1B0EE7F58);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v46 - v5;
  v6 = type metadata accessor for Response(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Response(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v46 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v46 - v20;
  v51 = v1;
  v22 = *v1;
  v23 = *(*v1 + 24);
  if (!v23)
  {
    (*(v7 + 56))(a1, 1, 1, v6);
    return;
  }

  if (v23 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v46 = v19;
  v47 = v7;
  v48 = v6;
  v49 = a1;
  v24 = v22[4];
  v25 = v22[2];
  if (v24 < v25)
  {
    v25 = 0;
  }

  v26 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v27 = *(v11 + 72);
  sub_1B0446A38(v22 + v26 + (v24 - v25) * v27, v15, type metadata accessor for Response);
  sub_1B044533C(v15, v18, type metadata accessor for Response);
  sub_1B044533C(v18, v21, type metadata accessor for Response);
  v29 = v52;
  v28 = v53;
  sub_1B0D0677C(v52);
  if (!v28)
  {
    if (v22[3] < 1)
    {
      v43 = 1;
      v41 = v48;
      v40 = v49;
      v42 = v47;
      v35 = v50;
      goto LABEL_20;
    }

    v31 = v51;
    v32 = *v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B0D0B5C8();
    }

    v33 = *v31;
    v34 = *v31 + v26 + *(*v31 + 32) * v27;
    v35 = v50;
    sub_1B044533C(v34, v50, type metadata accessor for Response);
    v36 = v33[4];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (!v37)
    {
      v39 = v33[3];
      if (v38 >= v33[2])
      {
        v38 = 0;
      }

      v33[4] = v38;
      v41 = v48;
      v40 = v49;
      v42 = v47;
      if (!__OFSUB__(v39, 1))
      {
        v43 = 0;
        v33[3] = v39 - 1;
        v29 = v52;
LABEL_20:
        sub_1B0446AA0(v21, type metadata accessor for Response);
        (*(v11 + 56))(v35, v43, 1, v46);
        sub_1B0398EFC(v35, &qword_1EB6E6580, &unk_1B0EE7F58);
        sub_1B044533C(v29, v40, type metadata accessor for Response);
        (*(v42 + 56))(v40, 0, 1, v41);
        return;
      }

LABEL_24:
      __break(1u);
      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v57 = v28;
  v30 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast() && (v56 & 1) == 0)
  {
    v44 = v54;
    v45 = v55;

    sub_1B0D06B78(v44 | ((v45 & 1) << 32), v49);
    sub_1B0446AA0(v21, type metadata accessor for Response);
  }

  else
  {

    swift_willThrow();
    sub_1B0446AA0(v21, type metadata accessor for Response);
  }
}

uint64_t sub_1B044533C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B04453A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B044540C(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5468, &qword_1B0ED0458);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v69 - v6;
  v8 = type metadata accessor for ConnectionEvent(0);
  v85 = *(v8 - 8);
  v9 = v85[8];
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v69 - v12;
  v82 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v14 = *(*(v82 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v82);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v69 - v18;
  v86 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v84 = *(v86 - 8);
  v20 = *(v84 + 64);
  v21 = MEMORY[0x1EEE9AC00](v86);
  v77 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v74 = &v69 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v79 = &v69 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v73 = &v69 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v72 = &v69 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v75 = (&v69 - v32);
  result = MEMORY[0x1EEE9AC00](v31);
  v35 = &v69 - v34;
  v36 = *v2;
  v37 = *(*v2 + 16);
  v83 = (*v2 + 16);
  if (v37)
  {
    v38 = 0;
    while (v38 < *v83)
    {
      v39 = v36;
      sub_1B038C9A4(v36 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v38, v35, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B038CB4C(&v35[*(v86 + 20)], v19, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      result = swift_getEnumCaseMultiPayload();
      if ((result - 1) < 5)
      {
        result = sub_1B038D690(v19, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      else if (result != 6)
      {
        sub_1B038D690(v19, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v76 = 0;
        v36 = v39;
        goto LABEL_10;
      }

      ++v38;
      v36 = v39;
      if (v37 == v38)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_9:
  v76 = 1;
LABEL_10:
  v70 = v36;
  v71 = v2;
  v40 = *(a2 + 16);
  v41 = v78;
  if (v40)
  {
    v42 = a2 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v80 = v85[9];
    v43 = (v84 + 48);
    v85 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1B038C9A4(v42, v13, type metadata accessor for ConnectionEvent);
      v44 = v81;
      sub_1B038C9A4(v13, v81, type metadata accessor for ConnectionEvent);
      sub_1B04380C8(v41, v44, v7);
      sub_1B038D690(v13, type metadata accessor for ConnectionEvent);
      if ((*v43)(v7, 1, v86) == 1)
      {
        sub_1B0398EFC(v7, &qword_1EB6E5468, &qword_1B0ED0458);
      }

      else
      {
        v45 = v77;
        sub_1B038CB4C(v7, v77, type metadata accessor for CommandConnection.RecentErrors.Error);
        if (v76)
        {
          goto LABEL_18;
        }

        sub_1B038C9A4(v45 + *(v86 + 20), v17, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if ((EnumCaseMultiPayload - 1) < 5)
        {
          sub_1B038D690(v17, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_18:
          v47 = v74;
          sub_1B038CB4C(v45, v74, type metadata accessor for CommandConnection.RecentErrors.Error);
          sub_1B038CB4C(v47, v79, type metadata accessor for CommandConnection.RecentErrors.Error);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_1B0446C54(0, v85[2] + 1, 1, v85);
          }

          v49 = v85[2];
          v48 = v85[3];
          if (v49 >= v48 >> 1)
          {
            v85 = sub_1B0446C54(v48 > 1, v49 + 1, 1, v85);
          }

          v51 = v84;
          v50 = v85;
          v85[2] = v49 + 1;
          sub_1B038CB4C(v79, v50 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v49, type metadata accessor for CommandConnection.RecentErrors.Error);
          v41 = v78;
          goto LABEL_13;
        }

        if (EnumCaseMultiPayload)
        {
          goto LABEL_18;
        }

        sub_1B038D690(v17, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        sub_1B038D690(v45, type metadata accessor for CommandConnection.RecentErrors.Error);
      }

LABEL_13:
      v42 += v80;
      if (!--v40)
      {
        goto LABEL_26;
      }
    }
  }

  v85 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v52 = MonotonicTime.init(seconds:since:)(v41, -4.0);
  result = *v83;
  if (!*v83)
  {
    v60 = 0;
    goto LABEL_42;
  }

  v53 = 0;
  v54 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v55 = *(v84 + 72);
  v86 = v54;
  v57 = v70;
  v56 = v71;
  while (1)
  {
    v58 = *(v70 + v54);
    v59 = v52 - v58;
    if (v52 >= v58)
    {
      if (__OFSUB__(v52, v58))
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (__OFSUB__(v58, v52))
      {
        goto LABEL_65;
      }

      v59 = v52 - v58;
      if (__OFSUB__(0, v58 - v52))
      {
        goto LABEL_66;
      }
    }

    if (v59 > 0)
    {
      break;
    }

    ++v53;
    v54 += v55;
    if (result == v53)
    {
      v60 = result;
      goto LABEL_42;
    }
  }

  v60 = v53 + 1;
  if (__OFADD__(v53, 1))
  {
    goto LABEL_76;
  }

  if (v60 != result)
  {
    v61 = v55 + v54;
    while (v60 < result)
    {
      v62 = v57;
      v63 = v75;
      result = sub_1B038C9A4(v57 + v61, v75, type metadata accessor for CommandConnection.RecentErrors.Error);
      v64 = *v63;
      v65 = __OFSUB__(v52, *v63);
      v66 = v52 - *v63;
      if (v66 < 0 != v65)
      {
        v65 = __OFSUB__(v64, v52);
        v67 = v64 - v52;
        if (v65)
        {
          goto LABEL_69;
        }

        v66 = -v67;
        if (__OFSUB__(0, v67))
        {
          goto LABEL_70;
        }
      }

      else if (v65)
      {
        goto LABEL_68;
      }

      result = sub_1B038D690(v75, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v66 <= 0)
      {
        if (v60 != v53)
        {
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          v68 = *v83;
          if (v53 >= *v83)
          {
            goto LABEL_72;
          }

          result = sub_1B038C9A4(v57 + v86 + v53 * v55, v72, type metadata accessor for CommandConnection.RecentErrors.Error);
          if (v60 >= v68)
          {
            goto LABEL_73;
          }

          sub_1B038C9A4(v57 + v61, v73, type metadata accessor for CommandConnection.RecentErrors.Error);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_1B0C0DF7C(v57);
          }

          result = sub_1B0BE2D30(v73, v62 + v86 + v53 * v55);
          if (v60 >= *(v62 + 16))
          {
            goto LABEL_74;
          }

          sub_1B0BE2D30(v72, v62 + v61);
          v57 = v62;
          *v56 = v62;
        }

        ++v53;
      }

      ++v60;
      result = v57[2];
      v83 = v57 + 2;
      v61 += v55;
      if (v60 == result)
      {
        goto LABEL_41;
      }
    }

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
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v60 = result;
LABEL_41:
  result = v53;
  if (v60 >= v53)
  {
LABEL_42:
    sub_1B0445E64(result, v60);
    return sub_1B0445F24(v85);
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_1B0445D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B0445DD8(uint64_t result, double a2)
{
  v2 = round(a2 * 1000000000.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  if (v2 >= 1)
  {
    v4 = __OFADD__(result, v3);
    result += v3;
    if (!v4)
    {
      return result;
    }

    __break(1u);
  }

  v4 = __OFSUB__(0, v3);
  v5 = -v3;
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = __OFSUB__(result, v5);
  result -= v5;
  if (v4)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0445E64(unint64_t result, uint64_t a2)
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

    v4 = sub_1B0446C54(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1B0446C7C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1B0445F24(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1B0446C54(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0446050(unint64_t a1)
{
  v3 = _s6LoggerVMa_0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConnectionState();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 >> 60) - 2 <= 3)
  {
    v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v1 + v11, v10, type metadata accessor for ConnectionState);
    result = swift_getEnumCaseMultiPayload();
    if (result > 2)
    {
      if ((result - 4) < 2)
      {
        return result;
      }
    }

    else if (result >= 2)
    {
      sub_1B038D690(v10, type metadata accessor for ConnectionState);
      goto LABEL_5;
    }

    return sub_1B038D690(v10, type metadata accessor for ConnectionState);
  }

LABEL_5:
  v13 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  v14 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  swift_beginAccess();
  v15 = *(v1 + v14);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = sub_1B044CC18(v13, v15);
  v18 = v17;
  v20 = v19;

  v21 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
  swift_beginAccess();
  if (*(v1 + v21))
  {
    sub_1B044CD04(a1);
    v23 = sub_1B044CD74();
    v24 = *v22;
    if (*v22)
    {
      v25 = v22;
      sub_1B044CD04(a1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v25 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1B044CDD4(0, *(v24 + 2) + 1, 1, v24);
        *v25 = v24;
      }

      v28 = *(v24 + 2);
      v27 = *(v24 + 3);
      if (v28 >= v27 >> 1)
      {
        v24 = sub_1B044CDD4((v27 > 1), v28 + 1, 1, v24);
        *v25 = v24;
      }

      *(v24 + 2) = v28 + 1;
      v29 = &v24[40 * v28];
      *(v29 + 8) = v13;
      *(v29 + 5) = a1;
      *(v29 + 12) = v16;
      *(v29 + 7) = v18;
      *(v29 + 8) = v20;
      (v23)(v52, 0);
    }

    else
    {
      (v23)(v52, 0);
    }

    goto LABEL_20;
  }

  v51 = v16;
  v30 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1B038C9A4(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v6, _s6LoggerVMa_0);
  sub_1B044CD04(a1);
  v31 = v1;

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v32 = sub_1B0E43988();
  v33 = sub_1B0E439A8();
  (*(*(v33 - 8) + 8))(v6, v33);
  v34 = sub_1B0E458E8();
  if (os_log_type_enabled(v32, v34))
  {
    v35 = swift_slowAlloc();
    v50 = v13;
    v13 = v35;
    v36 = swift_slowAlloc();
    v52[0] = v36;
    *v13 = 68158210;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v37 = v30 + *(v3 + 20);
    *(v13 + 10) = *v37;
    v38 = v31;

    *(v13 + 11) = 2082;
    v39 = ConnectionID.debugDescription.getter(*(v37 + 4));
    v41 = sub_1B0399D64(v39, v40, v52);

    *(v13 + 13) = v41;
    _os_log_impl(&dword_1B0389000, v32, v34, "[%.*hhx-%{public}s] Trying to enqueue event outside withEnqueuedSend.", v13, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x1B272C230](v36, -1, -1);
    v42 = v13;
    LODWORD(v13) = v50;
    MEMORY[0x1B272C230](v42, -1, -1);
  }

  else
  {

    v38 = v31;
  }

  v43 = v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v45 = v51;
  if (!Strong)
  {
LABEL_20:
    sub_1B044CEF8(a1);
    goto LABEL_21;
  }

  v46 = *(v43 + 8);
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5460, "x(\t");
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1B0EC1E70;
  *(v48 + 32) = v13;
  *(v48 + 40) = a1;
  *(v48 + 48) = v45;
  *(v48 + 56) = v18;
  *(v48 + 64) = v20;
  v49 = *(v46 + 8);
  sub_1B044CD04(a1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v49(v48, ObjectType, v46);
  sub_1B044CEF8(a1);

  swift_unknownObjectRelease();
LABEL_21:
}

uint64_t sub_1B04465E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0DFE880(0xD000000000000013, 0x80000001B0F30030, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (v18 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    else
    {
      v19 = *a1;
      v20 = *(a1 + 8);
      v23 = *(a1 + 20);
      v24 = *(a1 + 16);
      v22 = *(a1 + 22);

      sub_1B0DB29B0(a1, v18, a3, a4, a5, a6, a7, a8);

      type metadata accessor for MessageData();
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

size_t sub_1B04467C8(char a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (*v2 + 16);
  v7 = *v6;
  v8 = type metadata accessor for Response(0);
  v9 = v8;
  if (v7 >= a2)
  {
    v18 = *(v8 - 8);
    v19 = *(v18 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65A0, &qword_1B0EE8188);
    v20 = *(v18 + 72);
    v15 = swift_allocObject();
    v21 = *(v5 + 24);
    *(v15 + 16) = v7;
    *(v15 + 24) = v21;
    if (v21 >= 1)
    {
      sub_1B0D0B4B0(v15 + 16, v15 + ((v19 + 40) & ~v19), v6, v5 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_1B0E435C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  if (a1)
  {
    v12 = *(v5 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65A0, &qword_1B0EE8188);
    v13 = *(v10 + 72);
    v14 = (v11 + 40) & ~v11;
    v15 = swift_allocObject();
    result = _swift_stdlib_malloc_size_0(v15);
    if (v13)
    {
      if (result - v14 != 0x8000000000000000 || v13 != -1)
      {
        *(v15 + 16) = (result - v14) / v13;
        *(v15 + 24) = v12;
        *(v15 + 32) = 0;
        if (v12 >= 1)
        {
          sub_1B0D0B1F8(v15 + 16, v15 + v14, v6, v5 + v14);
          *(v5 + 24) = 0;
        }

LABEL_19:

        *v2 = v15;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65A0, &qword_1B0EE8188);
  v22 = *(v10 + 72);
  v23 = (v11 + 40) & ~v11;
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v15);
  if (!v22)
  {
    goto LABEL_21;
  }

  if (result - v23 != 0x8000000000000000 || v22 != -1)
  {
    v25 = *(v5 + 24);
    *(v15 + 16) = (result - v23) / v22;
    *(v15 + 24) = v25;
    *(v15 + 32) = 0;
    if (v25 >= 1)
    {
      sub_1B0D0B38C(v15 + 16, v15 + v23, v6, v5 + v23);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0446A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0446AA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0446B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0446B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0446BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

unint64_t sub_1B0446C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for CommandConnection.RecentErrors.Error(0);
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

uint64_t sub_1B0446DE4(unint64_t a1, void *a2, uint64_t a3, _OWORD *a4, void (*a5)(void), uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v88 = a3;
  v89 = a7;
  v85 = a5;
  v86 = a6;
  v87 = a2;
  v11 = type metadata accessor for UntaggedResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v91 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UnauthenticatedStateWithTasks();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ConnectionState();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v84 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v83 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v83 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v83 - v27;
  v90 = v8;
  sub_1B038CA0C(v8, &v83 - v27, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B038C704(v28, type metadata accessor for ConnectionState);
  }

  else
  {
    v29 = v90;
    sub_1B038C704(v90, type metadata accessor for ConnectionState);
    sub_1B038C704(v28, type metadata accessor for ConnectionState);
    v30 = static MonotonicTime.now()();
    *(v29 + *(v14 + 28)) = MEMORY[0x1E69E7CC0];
    *v29 = v87;
    v29[1] = v30;
    v31 = *(v14 + 24);
    type metadata accessor for UnauthenticatedState();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  sub_1B038CA0C(v90, v26, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B038C704(v26, type metadata accessor for ConnectionState);
    sub_1B038CA0C(v90, v23, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v139, v23, 0x162uLL);
      v47 = *(v23 + 19);
      v48 = *(v23 + 21);
      v134 = *(v23 + 20);
      v135 = v48;
      v49 = *(v23 + 15);
      v50 = *(v23 + 17);
      v130 = *(v23 + 16);
      v131 = v50;
      v52 = *(v23 + 17);
      v51 = *(v23 + 18);
      v53 = v51;
      v133 = *(v23 + 19);
      v132 = v51;
      v54 = *(v23 + 13);
      v126 = *(v23 + 12);
      v127 = v54;
      v55 = *(v23 + 14);
      v57 = *(v23 + 12);
      v56 = *(v23 + 13);
      v58 = v55;
      v129 = *(v23 + 15);
      v128 = v55;
      v59 = *(v23 + 21);
      v137[8] = v134;
      v137[9] = v59;
      v137[4] = v130;
      v137[5] = v52;
      v137[7] = v47;
      v137[6] = v53;
      v137[0] = v57;
      v137[1] = v56;
      v136 = *(v23 + 176);
      v138 = *(v23 + 176);
      v137[3] = v49;
      v137[2] = v58;
      if (sub_1B0BE2780(v137) == 1)
      {
        v60 = sub_1B03DB9A4(v137);
        v97[8] = v134;
        v97[9] = v135;
        v98 = v136;
        v97[4] = v130;
        v97[5] = v131;
        v97[7] = v133;
        v97[6] = v132;
        v97[0] = v126;
        v97[1] = v127;
        v97[2] = v128;
        v97[3] = v129;
        v61 = sub_1B03DB9A4(v97);
        sub_1B0BE2834(v61, v114);
        v62 = v90;
        sub_1B038C704(v90, type metadata accessor for ConnectionState);
        v63 = *(v60 + 144);
        v123 = *(v60 + 128);
        v124 = v63;
        v125 = *(v60 + 160);
        v64 = *(v60 + 80);
        v119 = *(v60 + 64);
        v120 = v64;
        v65 = *(v60 + 96);
        v122 = *(v60 + 112);
        v121 = v65;
        v66 = *(v60 + 16);
        v115 = *v60;
        v116 = v66;
        v67 = *(v60 + 32);
        v118 = *(v60 + 48);
        v117 = v67;
        sub_1B0C09D2C(a1, v89);
        v99[8] = v123;
        v99[9] = v124;
        v99[4] = v119;
        v99[5] = v120;
        v99[7] = v122;
        v99[6] = v121;
        v99[0] = v115;
        v99[1] = v116;
        v99[3] = v118;
        v99[2] = v117;
        v109 = v123;
        v110 = v124;
        v105 = v119;
        v106 = v120;
        v108 = v122;
        v107 = v121;
        v101 = v115;
        v102 = v116;
        v100 = v125;
        v111 = v125;
        v104 = v118;
        v103 = v117;
        sub_1B0BF5A2C(&v101);
        v112[8] = v139[20];
        v112[9] = v139[21];
        v113 = v139[22];
        v112[4] = v139[16];
        v112[5] = v139[17];
        v112[7] = v139[19];
        v112[6] = v139[18];
        v112[0] = v139[12];
        v112[1] = v139[13];
        v112[3] = v139[15];
        v112[2] = v139[14];
        sub_1B0BE2834(v99, v114);
        sub_1B0BE27E0(v112);
        v139[20] = v109;
        v139[21] = v110;
        LOWORD(v139[22]) = v111;
        v139[16] = v105;
        v139[17] = v106;
        v139[18] = v107;
        v139[19] = v108;
        v139[12] = v101;
        v139[13] = v102;
        v139[14] = v103;
        v139[15] = v104;
        memcpy(v114, v139, 0x162uLL);
        memcpy(v62, v139, 0x162uLL);
        swift_storeEnumTagMultiPayload();
        sub_1B038CA0C(v62, v84, type metadata accessor for ConnectionState);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_1B0BF6EEC(v114, v93);
          v68 = v90;
          sub_1B038C704(v90, type metadata accessor for ConnectionState);
          memcpy(v96, v84, sizeof(v96));
          sub_1B0BF3738(&v96[192], v89);
          v93[8] = v123;
          v93[9] = v124;
          LOWORD(v93[10]) = v125;
          v93[4] = v119;
          v93[5] = v120;
          v93[6] = v121;
          v93[7] = v122;
          v93[0] = v115;
          v93[1] = v116;
          v93[2] = v117;
          v93[3] = v118;
          sub_1B0BF7180(v93);
          memcpy(v68, v96, 0x162uLL);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v94[8] = v123;
          v94[9] = v124;
          v95 = v125;
          v94[4] = v119;
          v94[5] = v120;
          v94[6] = v121;
          v94[7] = v122;
          v94[0] = v115;
          v94[1] = v116;
          v94[2] = v117;
          v94[3] = v118;
          sub_1B0BF6EEC(v114, v93);
          sub_1B0BF7180(v94);
          sub_1B038C704(v84, type metadata accessor for ConnectionState);
        }

        memcpy(v93, v139, 0x162uLL);
        return sub_1B0BE278C(v93);
      }

      memcpy(v114, v139, 0x162uLL);
      sub_1B0BE278C(v114);
    }

    else
    {
      sub_1B038C704(v23, type metadata accessor for ConnectionState);
    }

    return sub_1B0BF2E10(a1);
  }

  sub_1B038C704(v90, type metadata accessor for ConnectionState);
  v32 = v92;
  v33 = sub_1B04478FC(v26, v92, type metadata accessor for UnauthenticatedStateWithTasks);
  v87 = &v83;
  MEMORY[0x1EEE9AC00](v33);
  v34 = v89;
  *(&v83 - 2) = v88;
  *(&v83 - 1) = a4;
  v35 = sub_1B0C3A488(a1, v34, v32 + *(v14 + 24), sub_1B0447A74, (&v83 - 4));
  if (v35 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v36 = v35;
    v85();
    sub_1B044B414(v36);
  }

  if (a1 >> 60 == 4)
  {
    v69 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v70 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v71 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v72 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v73 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    sub_1B0A91FD0(v70, v71, v72, *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30));
    v74 = sub_1B0C3BAA0(v70, v71, v72, v73, v69, v89);
    v75 = *(v74 + 2);
    if (v75)
    {
      LODWORD(v84) = v73;
      v88 = v17;
      v89 = v72;
      v91 = v71;
      v83 = v74;
      v76 = v74 + 7;
      v77 = v85;
      do
      {
        v78 = *(v76 - 3);
        v79 = *(v76 - 2);
        v80 = *(v76 - 1);
        v81 = *v76;
        sub_1B0BE2C30(v78);
        (v77)(v78, v79, v80, v81);
        sub_1B044B428(v78);
        v76 += 4;
        --v75;
      }

      while (v75);
      sub_1B0BB6FE0(v70, v91, v89, v84);
    }

    else
    {
      sub_1B0BB6FE0(v70, v71, v72, v73);
    }
  }

  else if (a1 >> 60 == 3)
  {
    v37 = v89;
    v88 = v17;
    v38 = swift_projectBox();
    sub_1B038CA0C(v38, v91, type metadata accessor for UntaggedResponse);
    v39 = *(v14 + 28);
    v40 = *(v92 + v39);
    v41 = v40[2];
    if (v41)
    {
      v42 = *(v92 + v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }

      while (1)
      {
        v43 = 0;
        v44 = (v40 + 5);
        while (v43 < v40[2])
        {
          ++v43;
          v45 = *(v44 + 24);
          v46 = *(v44 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
          (*(v46 + 24))(v91, v37, v45, v46);
          *(v92 + v39) = v40;
          v44 += 48;
          if (v41 == v43)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_32:
        v40 = sub_1B0C0DFC8(v40);
      }
    }

LABEL_14:
    sub_1B038C704(v91, type metadata accessor for UntaggedResponse);
  }

  sub_1B04478FC(v92, v90, type metadata accessor for UnauthenticatedStateWithTasks);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B04478FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0447964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B04479C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1B0447A24@<D0>(void (*a1)(_OWORD *__return_ptr)@<X0>, _OWORD *a2@<X8>)
{
  a1(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

double sub_1B0447A74@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(v7);
  v5 = v7[1];
  *a1 = v7[0];
  a1[1] = v5;
  result = *&v8;
  a1[2] = v8;
  return result;
}

unint64_t sub_1B0447ABC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  sub_1B0E43FA8();
  sub_1B0E43F48();
  v2 = sub_1B0E43E58();

  result = 0;
  if (v2)
  {
    sub_1B0E43F98();
    swift_dynamicCastClassUnconditional();
    v4 = sub_1B0E43F88();
    negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(v4);
    negotiated_tls_ciphersuite = sec_protocol_metadata_get_negotiated_tls_ciphersuite(v4);
    if (sec_protocol_metadata_get_server_name(v4))
    {
      sub_1B0E44D88();
    }

    swift_unknownObjectRelease();

    return negotiated_tls_protocol_version | (negotiated_tls_ciphersuite << 16);
  }

  return result;
}

uint64_t sub_1B0447BC4()
{
  v1 = sub_1B0E43BC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E43B58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
  if (v14 >> 6)
  {
    if (v14 >> 6 != 1)
    {
      return 0;
    }

    v14 &= 0x3Fu;
  }

  (*(v2 + 16))(v5, v0, v1);
  if ((*(v2 + 88))(v5, v1) == *MEMORY[0x1E6977B08])
  {
    (*(v2 + 96))(v5, v1);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E0, &qword_1B0ED0CD0) + 48);
    v16 = *(v7 + 32);
    v16(v13, v5, v6);
    v17 = sub_1B0E43BB8();
    (*(*(v17 - 8) + 8))(&v5[v15], v17);
    v16(v11, v13, v6);
    if ((*(v7 + 88))(v11, v6) == *MEMORY[0x1E6977AF0])
    {
      (*(v7 + 96))(v11, v6);
      v18 = *v11;
      v19 = *(v11 + 1);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5510, &qword_1B0ED0CD8);
      sub_1B0398EFC(&v11[*(v20 + 48)], &qword_1EB6E5518, &qword_1B0ED0CE0);
    }

    else
    {
      (*(v7 + 8))(v11, v6);
    }
  }

  else
  {
    (*(v2 + 8))(v5, v1);
  }

  return v14;
}

unint64_t sub_1B0447F00(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1B0447F14(result);
  }

  return result;
}

unint64_t sub_1B0447F14(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0447F9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 >= a4 && (HIDWORD(a4) - a4) - 2 >= a1 - a4)
  {
    swift_beginAccess();
    v6 = 0;
    v5 = *(*(a3 + 24) + ((a5 >> 24) & 0xFFFF00 | BYTE6(a5)) + a1);
    v11 = bswap32(v5) >> 16;
    if ((a2 & 1) == 0)
    {
      LOWORD(v5) = v11;
    }

    v5 = v5;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5 | (v6 << 16);
}

uint64_t sub_1B0448078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 22);
  result = sub_1B0447F9C(v7, 0, *a1, v7 | (v8 << 32), v9 | (v10 << 32) | (v11 << 48));
  if ((result & 0x10000) != 0)
  {
    if (v8 != v7)
    {
      goto LABEL_14;
    }

    sub_1B0D3EA30();
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
      sub_1B0436554();
      swift_allocError();
      *v17 = 0x6E776F6E6B6E55;
      v17[1] = 0xE700000000000000;
      v17[2] = 0xD000000000000020;
      v17[3] = 0x80000001B0F2FA10;
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
      sub_1B0436554();
      swift_allocError();
      *v22 = 0x6E776F6E6B6E55;
      v22[1] = 0xE700000000000000;
      v22[2] = 0xD000000000000020;
      v22[3] = 0x80000001B0F2FA10;
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
    sub_1B0439BCC();
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

    sub_1B0448078(a1, v19, a3);
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

uint64_t sub_1B0448354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseParser._Response();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B04483B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_1B0448440(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
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

void *sub_1B0448650()
{
  v2 = v1;
  v3 = v0;
  v76 = _s19CommandOutputBufferV7ElementOMa(0);
  v75 = *(v76 - 8);
  v4 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v80 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Response(0);
  v6 = *(*(v74 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v74);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5680, &qword_1B0EE8170);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v67 - v13;
  v15 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v81 = *(v15 - 8);
  v16 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v92 = (&v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for ResponseOrContinuationRequest(0);
  v18 = *(v93 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v93);
  v89 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v90 = &v67 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v67 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v88 = &v67 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v67 - v29;
  swift_beginAccess();
  v31 = ServerResponseFramingParser.popAllFrames()();
  swift_endAccess();
  result = sub_1B0449140(0, *(v31 + 16), 0, MEMORY[0x1E69E7CC0]);
  v91 = result;
  v87 = *(v31 + 16);
  if (!v87)
  {
LABEL_36:

    sub_1B0E44008();
    swift_retain_n();
    v66 = v91;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E43FF8();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5688, &qword_1B0ED3910);
    v94 = v66;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44028();

    sub_1B0E440D8();
  }

  v72 = v9;
  v33 = v18;
  v34 = 0;
  v35 = v81;
  v86 = v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v78 = v33;
  v79 = v14;
  v82 = (v33 + 48);
  v83 = (v33 + 56);
  v84 = v26;
  v71 = v3;
  v85 = v31;
  while (v34 < *(v31 + 16))
  {
    sub_1B03FD270(v86 + *(v35 + 72) * v34, v92, type metadata accessor for ServerResponseFramingParser.Frame);
    sub_1B0E440F8();
    sub_1B0E44058();

    if (v95)
    {
      if (swift_dynamicCast())
      {
        v36 = v96;
        v37 = v97;
        goto LABEL_11;
      }
    }

    else
    {
      sub_1B0398EFC(&v94, &qword_1EB6E29B0, &qword_1B0E9F008);
    }

    v38 = ConnectionLoggerID.invalid.unsafeMutableAddressor();
    v36 = *v38;
    v37 = *(v38 + 1);
LABEL_11:
    sub_1B0449168(v92, v36 | (v37 << 32), v30);
    if (v2)
    {
    }

    swift_beginAccess();
    if ((*(v3 + 241) & 1) == 0)
    {
      v39 = *(v3 + 232);
      v77 = *(v3 + 240);
      sub_1B03FD270(v30, v26, type metadata accessor for ResponseOrContinuationRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = v73;
        sub_1B04498A0(v26, v73, type metadata accessor for Response);
        v41 = v72;
        sub_1B03FD270(v40, v72, type metadata accessor for Response);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v68 = v39;
          v42 = *v41;
          v43 = *(v41 + 8);
          v44 = *(v41 + 16);
          v45 = *(v41 + 24);
          v46 = *(v41 + 32);
          v70 = 0;
          v47 = *(v41 + 40);
          v67 = Tag.init(_:)(v42, v43);
          v69 = v48;
          v49 = v45;
          v35 = v81;
          v50 = v46;
          v14 = v79;
          v2 = v70;
          sub_1B0BB6FE0(v44, v49, v50, v47);
          sub_1B03D6B24(v40, type metadata accessor for Response);
          v3 = v71;
          if ((v69 & 1) == 0 && (v77 & 1) == 0 && v68 == v67 && !((v67 ^ v68) >> 32))
          {
            *(v71 + 232) = 0;
            *(v3 + 240) = 1;
          }
        }

        else
        {
          sub_1B03D6B24(v40, type metadata accessor for Response);
          sub_1B03D6B24(v41, type metadata accessor for Response);
          v3 = v71;
        }
      }

      else
      {
        sub_1B03D6B24(v26, type metadata accessor for ResponseOrContinuationRequest);
      }
    }

    v51 = v90;
    sub_1B03FD270(v30, v90, type metadata accessor for ResponseOrContinuationRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1B03D6B24(v51, type metadata accessor for ResponseOrContinuationRequest);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03FD270(v30, v14, type metadata accessor for ResponseOrContinuationRequest);
      v53 = 0;
      v26 = v84;
      goto LABEL_32;
    }

    v54 = *(v3 + 208);
    v26 = v84;
    if (*(v54 + 16))
    {
      sub_1B03FD270(v54 + ((*(v75 + 80) + 32) & ~*(v75 + 80)), v80, _s19CommandOutputBufferV7ElementOMa);
      v55 = swift_getEnumCaseMultiPayload();
      if ((v55 - 1) < 2)
      {
        result = sub_1B03D6B24(v80, _s19CommandOutputBufferV7ElementOMa);
        v56 = *(v3 + 216);
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_41;
        }

        *(v3 + 216) = v58;
        v53 = 1;
        goto LABEL_32;
      }

      if (v55 != 3)
      {
        sub_1B0BEA5F4();
        swift_allocError();
        swift_willThrow();
        sub_1B03D6B24(v80, _s19CommandOutputBufferV7ElementOMa);

        swift_endAccess();

        return sub_1B03D6B24(v30, type metadata accessor for ResponseOrContinuationRequest);
      }

      result = sub_1B03D6B24(v80, _s19CommandOutputBufferV7ElementOMa);
    }

    v59 = *(v3 + 224);
    v57 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v57)
    {
      goto LABEL_40;
    }

    *(v3 + 224) = v60;
    sub_1B03FD270(v30, v14, type metadata accessor for ResponseOrContinuationRequest);
    v53 = 0;
LABEL_32:
    v61 = v93;
    (*v83)(v14, v53, 1, v93);
    swift_endAccess();
    if ((*v82)(v14, 1, v61) == 1)
    {
      sub_1B03D6B24(v30, type metadata accessor for ResponseOrContinuationRequest);
      result = sub_1B0398EFC(v14, &qword_1EB6E5680, &qword_1B0EE8170);
    }

    else
    {
      v62 = v88;
      sub_1B04498A0(v14, v88, type metadata accessor for ResponseOrContinuationRequest);
      sub_1B03FD270(v62, v89, type metadata accessor for ResponseOrContinuationRequest);
      v64 = v91[2];
      v63 = v91[3];
      if (v64 >= v63 >> 1)
      {
        v91 = sub_1B0449140(v63 > 1, v64 + 1, 1, v91);
      }

      sub_1B03D6B24(v88, type metadata accessor for ResponseOrContinuationRequest);
      sub_1B03D6B24(v30, type metadata accessor for ResponseOrContinuationRequest);
      v65 = v91;
      v91[2] = v64 + 1;
      result = sub_1B04498A0(v89, v65 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v64, type metadata accessor for ResponseOrContinuationRequest);
      v14 = v79;
      v35 = v81;
    }

    ++v34;
    v31 = v85;
    if (v87 == v34)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t ServerResponseFramingParser.popAllFrames()()
{
  result = *(v0 + 184);
  *(v0 + 184) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B0449168@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03FD270(a1, v9, type metadata accessor for ServerResponseFramingParser.Frame);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B03D6B24(a1, type metadata accessor for ServerResponseFramingParser.Frame);
    return sub_1B04498A0(v9, a3, type metadata accessor for ResponseOrContinuationRequest);
  }

  v11 = HIDWORD(a2);
  if (EnumCaseMultiPayload != 1)
  {
    v12 = *v9;
    v31 = *(v9 + 1);
    v61 = *(v9 + 4);
    v60 = *(v9 + 5);
    v32 = *(v9 + 14);
    v33 = v9[30];
    if (qword_1EB6DCD50 != -1)
    {
      swift_once();
    }

    v34 = sub_1B0E439A8();
    __swift_project_value_buffer(v34, qword_1EB6DCD58);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v35 = v12;

    v18 = sub_1B0E43988();
    v36 = sub_1B0E458F8();

    if (!os_log_type_enabled(v18, v36))
    {
      goto LABEL_17;
    }

    v58 = v33;
    v59 = v32;
    v62 = a1;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    a1 = swift_slowAlloc();
    v64 = a1;
    *v37 = 68158979;
    *(v37 + 4) = 2;
    *(v37 + 8) = 256;
    *(v37 + 10) = a2;
    *(v37 + 11) = 2082;
    v39 = ConnectionID.debugDescription.getter(HIDWORD(a2));
    LOBYTE(a2) = v40;
    v41 = sub_1B0399D64(v39, v40, &v64);

    *(v37 + 13) = v41;
    *(v37 + 21) = 2112;
    v42 = sub_1B0E42CC8();
    *(v37 + 23) = v42;
    *v38 = v42;
    *(v37 + 31) = 1040;
    v11 = v61;
    v43 = v60 - v61;
    if (v60 - v61 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v43 <= 0x7FFFFFFF)
    {
      *(v37 + 33) = v43;
      *(v37 + 37) = 2101;
      swift_beginAccess();
      *(v37 + 39) = v11 + (v58 | (v59 << 8)) + *(v31 + 24);
      _os_log_impl(&dword_1B0389000, v18, v36, "[%.*hhx-%{public}s]: Failed to parse: %@. Buffer: %{sensitive}.*P", v37, 0x2Fu);
      sub_1B0398EFC(v38, &unk_1EB6E2630, &qword_1B0E97970);
      MEMORY[0x1B272C230](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(a1);
      MEMORY[0x1B272C230](a1, -1, -1);
      MEMORY[0x1B272C230](v37, -1, -1);

      a1 = v62;
LABEL_18:
      swift_willThrow();

      return sub_1B03D6B24(a1, type metadata accessor for ServerResponseFramingParser.Frame);
    }

    __break(1u);
    goto LABEL_26;
  }

  v12 = *v9;
  v13 = *(v9 + 1);
  if (!v13)
  {
    if (qword_1EB6DCD50 == -1)
    {
LABEL_21:
      v44 = sub_1B0E439A8();
      __swift_project_value_buffer(v44, qword_1EB6DCD58);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v45 = v12;
      v46 = sub_1B0E43988();
      v47 = sub_1B0E458F8();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v63 = v50;
        *v48 = 68158466;
        *(v48 + 4) = 2;
        *(v48 + 8) = 256;
        *(v48 + 10) = a2;
        *(v48 + 11) = 2082;
        v51 = ConnectionID.debugDescription.getter(v11);
        v53 = a1;
        v54 = sub_1B0399D64(v51, v52, &v63);

        *(v48 + 13) = v54;
        a1 = v53;
        *(v48 + 21) = 2112;
        v55 = sub_1B0E42CC8();
        *(v48 + 23) = v55;
        *v49 = v55;
        _os_log_impl(&dword_1B0389000, v46, v47, "[%.*hhx-%{public}s]: Framing error: %@", v48, 0x1Fu);
        sub_1B0398EFC(v49, &unk_1EB6E2630, &qword_1B0E97970);
        MEMORY[0x1B272C230](v49, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        MEMORY[0x1B272C230](v50, -1, -1);
        MEMORY[0x1B272C230](v48, -1, -1);
      }

      swift_willThrow();
      return sub_1B03D6B24(a1, type metadata accessor for ServerResponseFramingParser.Frame);
    }

LABEL_26:
    swift_once();
    goto LABEL_21;
  }

  v61 = HIDWORD(a2);
  v14 = v9[30];
  LODWORD(v60) = *(v9 + 14);
  v15 = *(v9 + 6);
  v16 = *(v9 + 2);
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v17 = sub_1B0E439A8();
  __swift_project_value_buffer(v17, qword_1EB6DCD58);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();

  v18 = sub_1B0E43988();
  v19 = sub_1B0E458F8();

  if (!os_log_type_enabled(v18, v19))
  {
    goto LABEL_17;
  }

  v57 = v14;
  v62 = a1;
  v58 = v15;
  v59 = HIDWORD(v16);
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v64 = v21;
  *v20 = 68158723;
  *(v20 + 4) = 2;
  *(v20 + 8) = 256;
  *(v20 + 10) = a2;
  *(v20 + 11) = 2082;
  v22 = ConnectionID.debugDescription.getter(v61);
  v24 = sub_1B0399D64(v22, v23, &v64);

  *(v20 + 13) = v24;
  *(v20 + 21) = 1040;
  v26 = v59 - v16;
  if (v26 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v61 = v21;
    a1 = v62;
    if (v26 <= 0x7FFFFFFF)
    {
      v27 = v60 | (v57 << 16);
      v28 = v58 & 0xFF000000FFFFFFFFLL | ((*&v27 & 0xFFFFFFLL) << 32);
      v29 = HIWORD(v27);
      *(v20 + 23) = v26;
      *(v20 + 27) = 2101;
      swift_beginAccess();
      *(v20 + 29) = *(v13 + 24) + v16 + ((v28 >> 24) & 0xFFFF00 | v29);
      _os_log_impl(&dword_1B0389000, v18, v19, "[%.*hhx-%{public}s]: Framing error. Buffer: %{sensitive}.*P", v20, 0x25u);
      v30 = v61;
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      MEMORY[0x1B272C230](v30, -1, -1);
      MEMORY[0x1B272C230](v20, -1, -1);
LABEL_17:

      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B04498A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0449908(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v117 = a1;
  v118 = a3;
  v116 = _s6LoggerVMa_0();
  v6 = *(*(v116 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v116);
  v9 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v111 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v111 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v111 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v111 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v111 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v114 = &v111 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v115 = (&v111 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v112 = &v111 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v113 = &v111 - v31;
  v119 = v4;
  sub_1B04479C4(v4, type metadata accessor for UnauthenticatedState);
  v33 = *a2;
  v32 = a2[1];
  v34 = a2[2];
  v35 = *a2 >> 62;
  if (v35)
  {
    if (v35 == 1)
    {
      v36 = v118;
      v37 = v24;
      sub_1B0433BE8(v118, v24, _s6LoggerVMa_0);
      sub_1B0433BE8(v36, v21, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B044A64C(v33);
      sub_1B044A64C(v33);
      sub_1B044A64C(v33);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v38 = sub_1B0E43988();
      v39 = sub_1B0E45908();
      if (os_log_type_enabled(v38, v39))
      {
        v114 = v33 >> 16;
        v40 = swift_slowAlloc();
        v118 = v38;
        v41 = v40;
        v115 = swift_slowAlloc();
        v120[0] = v115;
        *v41 = 68158722;
        *(v41 + 4) = 2;
        *(v41 + 8) = 256;
        v42 = v116;
        v43 = v21[*(v116 + 20)];
        sub_1B04479C4(v21, _s6LoggerVMa_0);
        *(v41 + 10) = v43;
        *(v41 + 11) = 2082;
        v44 = *(v37 + *(v42 + 20) + 4);
        sub_1B04479C4(v37, _s6LoggerVMa_0);
        v45 = ConnectionID.debugDescription.getter(v44);
        v47 = sub_1B0399D64(v45, v46, v120);

        *(v41 + 13) = v47;
        *(v41 + 21) = 512;
        sub_1B044A65C(v33);
        *(v41 + 23) = v33;
        sub_1B044A65C(v33);
        *(v41 + 25) = 512;
        sub_1B044A65C(v33);
        *(v41 + 27) = v114;
        sub_1B044A65C(v33);
        v48 = v39;
        v49 = v118;
        _os_log_impl(&dword_1B0389000, v118, v48, "[%.*hhx-%{public}s] Using TLS protocol %hu, cipher suite %hu", v41, 0x1Du);
        v50 = v115;
        __swift_destroy_boxed_opaque_existential_0Tm(v115);
        MEMORY[0x1B272C230](v50, -1, -1);
        MEMORY[0x1B272C230](v41, -1, -1);

LABEL_19:
        v107 = v119;
        v67 = v117;
LABEL_20:
        *v107 = v67;
        type metadata accessor for UnauthenticatedState();
        swift_storeEnumTagMultiPayload();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return 0x8000000000000001;
      }

      sub_1B044A65C(v33);
      sub_1B044A65C(v33);
      sub_1B04479C4(v21, _s6LoggerVMa_0);
      sub_1B044A65C(v33);
      sub_1B044A65C(v33);

      v82 = v24;
      goto LABEL_18;
    }

    v63 = Capability.startTLS.unsafeMutableAddressor();
    v64 = v63[1];
    v65 = v63[2];
    v66 = *(v63 + 24);
    v120[0] = *v63;
    v120[1] = v64;
    v120[2] = v65;
    v121 = v66;
    MEMORY[0x1EEE9AC00](v63);
    *(&v111 - 2) = v120;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v67 = v117;
    v68 = sub_1B0C32414(sub_1B0C10BD0, (&v111 - 4), v117);

    if ((v68 & 1) == 0)
    {
      v94 = v118;
      v95 = v115;
      sub_1B0433BE8(v118, v115, _s6LoggerVMa_0);
      v96 = v114;
      sub_1B0433BE8(v94, v114, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v97 = sub_1B0E43988();
      v98 = sub_1B0E458E8();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v120[0] = v100;
        *v99 = 68158210;
        *(v99 + 4) = 2;
        *(v99 + 8) = 256;
        v101 = v116;
        v102 = *(v96 + *(v116 + 20));
        sub_1B04479C4(v96, _s6LoggerVMa_0);
        *(v99 + 10) = v102;
        *(v99 + 11) = 2082;
        v103 = *(v95 + *(v101 + 20) + 4);
        sub_1B04479C4(v95, _s6LoggerVMa_0);
        v104 = ConnectionID.debugDescription.getter(v103);
        v106 = sub_1B0399D64(v104, v105, v120);

        *(v99 + 13) = v106;
        _os_log_impl(&dword_1B0389000, v97, v98, "[%.*hhx-%{public}s] Connection is insecure, but server does not support STARTTLS.", v99, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v100);
        MEMORY[0x1B272C230](v100, -1, -1);
        MEMORY[0x1B272C230](v99, -1, -1);
      }

      else
      {
        sub_1B04479C4(v96, _s6LoggerVMa_0);

        sub_1B04479C4(v95, _s6LoggerVMa_0);
      }

      v107 = v119;
      goto LABEL_20;
    }

    v69 = v118;
    v70 = v113;
    sub_1B0433BE8(v118, v113, _s6LoggerVMa_0);
    v71 = v112;
    sub_1B0433BE8(v69, v112, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v72 = sub_1B0E43988();
    v73 = sub_1B0E45908();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v120[0] = v75;
      *v74 = 68158210;
      *(v74 + 4) = 2;
      *(v74 + 8) = 256;
      v76 = v116;
      v77 = *(v71 + *(v116 + 20));
      sub_1B04479C4(v71, _s6LoggerVMa_0);
      *(v74 + 10) = v77;
      *(v74 + 11) = 2082;
      v78 = *(v70 + *(v76 + 20) + 4);
      sub_1B04479C4(v70, _s6LoggerVMa_0);
      v79 = ConnectionID.debugDescription.getter(v78);
      v81 = sub_1B0399D64(v79, v80, v120);

      *(v74 + 13) = v81;
      _os_log_impl(&dword_1B0389000, v72, v73, "[%.*hhx-%{public}s] Server supports STARTTLS and connection is insecure. Attempting STARTTLS.", v74, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      MEMORY[0x1B272C230](v75, -1, -1);
      MEMORY[0x1B272C230](v74, -1, -1);
    }

    else
    {
      sub_1B04479C4(v71, _s6LoggerVMa_0);

      sub_1B04479C4(v70, _s6LoggerVMa_0);
    }

    type metadata accessor for UnauthenticatedState();
    swift_storeEnumTagMultiPayload();
    v110 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return ClientCommand.EncodingOptions.init(_:)(v110) & 0x101FF;
  }

  else
  {
    if (a2[5] == 1)
    {
      v51 = v12;
      v52 = v118;
      sub_1B0433BE8(v118, v12, _s6LoggerVMa_0);
      sub_1B0433BE8(v52, v9, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B044A64C(v33);
      sub_1B044A64C(v33);
      sub_1B044A64C(v33);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v53 = sub_1B0E43988();
      v54 = sub_1B0E45908();
      if (os_log_type_enabled(v53, v54))
      {
        v115 = (v33 >> 16);
        v55 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v120[0] = v118;
        *v55 = 68158722;
        *(v55 + 4) = 2;
        *(v55 + 8) = 256;
        v56 = v116;
        v57 = v9[*(v116 + 20)];
        sub_1B04479C4(v9, _s6LoggerVMa_0);
        *(v55 + 10) = v57;
        *(v55 + 11) = 2082;
        v58 = *(v51 + *(v56 + 20) + 4);
        sub_1B04479C4(v51, _s6LoggerVMa_0);
        v59 = ConnectionID.debugDescription.getter(v58);
        v61 = sub_1B0399D64(v59, v60, v120);

        *(v55 + 13) = v61;
        *(v55 + 21) = 512;
        sub_1B044A65C(v33);
        *(v55 + 23) = v33;
        sub_1B044A65C(v33);
        *(v55 + 25) = 512;
        sub_1B044A65C(v33);
        *(v55 + 27) = v115;
        sub_1B044A65C(v33);
        _os_log_impl(&dword_1B0389000, v53, v54, "[%.*hhx-%{public}s] Using opportunistic TLS protocol %hu, cipher suite %hu", v55, 0x1Du);
        v62 = v118;
        __swift_destroy_boxed_opaque_existential_0Tm(v118);
        MEMORY[0x1B272C230](v62, -1, -1);
        MEMORY[0x1B272C230](v55, -1, -1);

        goto LABEL_19;
      }

      sub_1B044A65C(v33);
      sub_1B044A65C(v33);
      sub_1B04479C4(v9, _s6LoggerVMa_0);
      sub_1B044A65C(v33);
      sub_1B044A65C(v33);

      v82 = v51;
LABEL_18:
      sub_1B04479C4(v82, _s6LoggerVMa_0);
      goto LABEL_19;
    }

    v83 = v118;
    sub_1B0433BE8(v118, v18, _s6LoggerVMa_0);
    sub_1B0433BE8(v83, v15, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v84 = sub_1B0E43988();
    v85 = sub_1B0E458E8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v120[0] = v87;
      *v86 = 68158210;
      *(v86 + 4) = 2;
      *(v86 + 8) = 256;
      v88 = v116;
      v89 = v15[*(v116 + 20)];
      sub_1B04479C4(v15, _s6LoggerVMa_0);
      *(v86 + 10) = v89;
      *(v86 + 11) = 2082;
      v90 = *&v18[*(v88 + 20) + 4];
      sub_1B04479C4(v18, _s6LoggerVMa_0);
      v91 = ConnectionID.debugDescription.getter(v90);
      v93 = sub_1B0399D64(v91, v92, v120);

      *(v86 + 13) = v93;
      _os_log_impl(&dword_1B0389000, v84, v85, "[%.*hhx-%{public}s] Connection is using opportunistic TLS. But we require a secure connection.", v86, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v87);
      MEMORY[0x1B272C230](v87, -1, -1);
      MEMORY[0x1B272C230](v86, -1, -1);
    }

    else
    {
      sub_1B04479C4(v15, _s6LoggerVMa_0);

      sub_1B04479C4(v18, _s6LoggerVMa_0);
    }

    v109 = v119;
    v119[1] = 0;
    v109[2] = 0;
    *v109 = 5;
    *(v109 + 24) = -64;
    type metadata accessor for UnauthenticatedState();
    swift_storeEnumTagMultiPayload();
    return 0xFFFFFFFF00000000;
  }
}

uint64_t sub_1B044A64C(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B044A65C(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_15IMAP2Connection20UnauthenticatedStateO0B3TLSO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection0B13ConfigurationV14TLSRequirementO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B044A72C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = _s6LoggerVMa_0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  if (!(a1 >> 62))
  {
    v30 = *(*(v4 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
    return sub_1B0BFFDBC(a1 & 0x101FF);
  }

  if (a1 >> 62 == 1)
  {
    v45 = a4;
    v17 = v14;
    v18 = v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v13, _s6LoggerVMa_0);
    v19 = v4;

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v20 = sub_1B0E43988();
    v21 = sub_1B0E439A8();
    (*(*(v21 - 8) + 8))(v13, v21);
    v22 = sub_1B0E458C8();
    if (os_log_type_enabled(v20, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 68158210;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      v25 = v18 + *(v17 + 20);
      *(v23 + 10) = *v25;
      v26 = v19;

      *(v23 + 11) = 2082;
      v27 = ConnectionID.debugDescription.getter(*(v25 + 4));
      v29 = sub_1B0399D64(v27, v28, &v46);

      *(v23 + 13) = v29;
      _os_log_impl(&dword_1B0389000, v20, v22, "[%.*hhx-%{public}s] Finishing push registration.", v23, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1B272C230](v24, -1, -1);
      MEMORY[0x1B272C230](v23, -1, -1);
    }

    else
    {

      v26 = v19;
    }

    v37 = *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration + 8);
    return (*(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration))(a1, a2, a3, v45);
  }

  v32 = a3 | a2 | a4;
  if (a1 == 0x8000000000000000 && !v32)
  {
    v33 = *(v4 + 16);
    v34 = v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration;
    v35 = *(v34 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
    if (v35 >> 6)
    {
      if (v35 >> 6 != 1)
      {
        v36 = 1;
        sub_1B0C3140C();
        goto LABEL_21;
      }

      LOBYTE(v35) = v35 & 0x3F;
    }

    sub_1B0420CD0(v34, v35, v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger);
    v36 = 0;
LABEL_21:
    v40 = *(v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
    sub_1B038C9A4(v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v16, _s6LoggerVMa_0);
    v41 = (*(v10 + 80) + 17) & ~*(v10 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v36;
    sub_1B038CB4C(v16, v42 + v41, _s6LoggerVMa_0);

    sub_1B0BFF7B0(v43, sub_1B0BE2BA8, v42);
  }

  if (a1 == 0x8000000000000001 && !v32)
  {
    return sub_1B044AD20("[%.*hhx-%{public}s] Requesting credentials.", &OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials, sub_1B0BE2C1C);
  }

  if (a1 == 0x8000000000000002 && !v32)
  {
    v38 = *(*(v4 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
    v39 = swift_allocObject();
    swift_weakInit();

    sub_1B0C00370(sub_1B0BE2BA0, v39);
  }

  if (a1 == 0x8000000000000003 && !v32)
  {
    return sub_1B044AD20("[%.*hhx-%{public}s] Requesting push information.", &OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation, sub_1B0BE2C7C);
  }

  v44 = *(*(v4 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  return sub_1B0C0097C();
}

uint64_t sub_1B044AC50()
{
  v1 = *(_s6LoggerVMa_0() - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1B0E439A8();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_1B044AD20(const char *a1, void *a2, uint64_t a3)
{
  v7 = v3;
  v8 = _s6LoggerVMa_0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1B038C9A4(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v11, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v13 = sub_1B0E43988();
  v14 = sub_1B0E439A8();
  (*(*(v14 - 8) + 8))(v11, v14);
  v15 = sub_1B0E458C8();
  if (os_log_type_enabled(v13, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 68158210;
    *(v17 + 4) = 2;
    *(v17 + 8) = 256;
    v19 = v12 + *(v8 + 20);
    *(v17 + 10) = *v19;

    *(v17 + 11) = 2082;
    v20 = ConnectionID.debugDescription.getter(*(v19 + 4));
    v22 = sub_1B0399D64(v20, v21, &v29);

    *(v17 + 13) = v22;
    _os_log_impl(&dword_1B0389000, v13, v15, a1, v17, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x1B272C230](v18, -1, -1);
    a2 = v28;
    MEMORY[0x1B272C230](v17, -1, -1);
  }

  else
  {
  }

  v23 = v7 + *a2;
  v25 = *v23;
  v24 = *(v23 + 8);
  v26 = swift_allocObject();
  swift_weakInit();

  v25(a3, v26);
}

void sub_1B044AFB0(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Engine.Logger(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 32);
  v12 = *(v3 + 40);
  *(swift_allocObject() + 16) = a1;
  v14 = v13();

  v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests;
  swift_beginAccess();

  v16 = *(v4 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v4 + v15);
  *(v4 + v15) = 0x8000000000000000;
  sub_1B044B2A0(a1, a2, a3, v14, isUniquelyReferenced_nonNull_native);
  *(v4 + v15) = v27;
  swift_endAccess();
  v18 = v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_1B03903A8(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v11, type metadata accessor for Engine.Logger);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v19 = sub_1B0E43988();
  v20 = sub_1B0E439A8();
  (*(*(v20 - 8) + 8))(v11, v20);
  v21 = sub_1B0E458D8();
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    *(v22 + 10) = *(v18 + *(v8 + 20));

    *(v22 + 11) = 2080;
    LODWORD(v27) = v14;
    sub_1B07467B8();
    v24 = sub_1B0E44E98();
    v26 = sub_1B0399D64(v24, v25, &v28);

    *(v22 + 13) = v26;
    *(v22 + 21) = 1024;
    *(v22 + 23) = a1;
    _os_log_impl(&dword_1B0389000, v19, v21, "[%.*hhx] Sending action %s: request %u for credentials.", v22, 0x1Bu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x1B272C230](v23, -1, -1);
    MEMORY[0x1B272C230](v22, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1B044B2A0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1B03A2724(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1B0C4A9AC(v18, a5 & 1);
      v22 = *v6;
      result = sub_1B03A2724(a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1B0C4B380();
      result = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 4 * result) = a4;
    v27 = v24[7] + 24 * result;
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3;
    v28 = v24[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v24[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v25 = v24[7] + 24 * result;
  v26 = *(v25 + 16);
  *v25 = a1;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3;
}

unint64_t sub_1B044B414(unint64_t result)
{
  if (result <= 0xFFFFFFFEFFFFFFFFLL)
  {
    return sub_1B044B428(result);
  }

  return result;
}

unint64_t sub_1B044B428(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_1B044B474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL _s15IMAP2Connection29UnauthenticatedStateWithTasksV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedStateWithTasks();
  if ((sub_1B044B6EC(a1 + *(v4 + 24), (a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1B0BFE554(0, v7, 0);
    v8 = v29;
    v9 = v6 + 32;
    do
    {
      sub_1B0C3C2E4(v9, &v25);
      *(&v22 + 1) = v26;
      v23 = v27;
      v24 = v28;
      v10 = v25;
      __swift_destroy_boxed_opaque_existential_0Tm(&v22 + 1);
      v29 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_1B0BFE554((v11 > 1), v12 + 1, 1);
        v8 = v29;
      }

      v8[2] = (v12 + 1);
      v8[v12 + 4] = v10;
      v9 += 48;
      --v7;
    }

    while (v7);
    v5 = *(v4 + 28);
  }

  v13 = *(a2 + v5);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1B0BFE554(0, v14, 0);
    v15 = v29;
    v16 = v13 + 32;
    do
    {
      sub_1B0C3C2E4(v16, &v25);
      *(&v22 + 1) = v26;
      v23 = v27;
      v24 = v28;
      v17 = v25;
      __swift_destroy_boxed_opaque_existential_0Tm(&v22 + 1);
      v29 = v15;
      v19 = v15[2];
      v18 = v15[3];
      if (v19 >= v18 >> 1)
      {
        sub_1B0BFE554((v18 > 1), v19 + 1, 1);
        v15 = v29;
      }

      v15[2] = (v19 + 1);
      v15[v19 + 4] = v17;
      v16 += 48;
      --v14;
    }

    while (v14);
  }

  v20 = sub_1B044DB64(v8, v15);

  return (v20 & 1) != 0;
}

uint64_t sub_1B044B6EC(uint64_t a1, uint64_t *a2)
{
  v132 = a1;
  v133 = a2;
  v2 = type metadata accessor for Authenticator();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v125 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnauthenticatedState();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v129 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v130 = &v124 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v131 = &v124 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v128 = &v124 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v127 = &v124 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v124 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v124 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = (&v124 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v126 = &v124 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = (&v124 - v29);
  MEMORY[0x1EEE9AC00](v28);
  v32 = (&v124 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E59E0, &unk_1B0EDA800);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v37 = &v124 - v36;
  v38 = (&v124 + *(v35 + 56) - v36);
  sub_1B0433BE8(v132, &v124 - v36, type metadata accessor for UnauthenticatedState);
  v39 = v133;
  v133 = v38;
  sub_1B0433BE8(v39, v38, type metadata accessor for UnauthenticatedState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B0433BE8(v37, v30, type metadata accessor for UnauthenticatedState);
      v68 = *v30;
      v69 = v133;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_32;
    case 2u:
      v65 = v126;
      sub_1B0433BE8(v37, v126, type metadata accessor for UnauthenticatedState);
      v66 = v133;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v67 = v125;
        sub_1B0C3A6F0(v66, v125, type metadata accessor for Authenticator);
        v58 = sub_1B0BD61C4(v65, v67);
        sub_1B04479C4(v67, type metadata accessor for Authenticator);
        sub_1B04479C4(v65, type metadata accessor for Authenticator);
        goto LABEL_33;
      }

      sub_1B04479C4(v65, type metadata accessor for Authenticator);
      goto LABEL_20;
    case 3u:
      sub_1B0433BE8(v37, v25, type metadata accessor for UnauthenticatedState);
      v68 = *v25;
      v69 = v133;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_19;
      }

LABEL_32:
      v58 = sub_1B044DA4C(v68, *v69);

      goto LABEL_33;
    case 4u:
      sub_1B0433BE8(v37, v22, type metadata accessor for UnauthenticatedState);
      v44 = *v22;
      v45 = *(v22 + 120);
      v46 = *(v22 + 152);
      v144 = *(v22 + 136);
      v145 = v46;
      v146 = *(v22 + 168);
      v47 = *(v22 + 56);
      v48 = *(v22 + 88);
      v140 = *(v22 + 72);
      v141 = v48;
      v142 = *(v22 + 104);
      v143 = v45;
      v49 = *(v22 + 24);
      v136 = *(v22 + 8);
      v137 = v49;
      v138 = *(v22 + 40);
      v139 = v47;
      v50 = v133;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    case 5u:
      sub_1B0433BE8(v37, v19, type metadata accessor for UnauthenticatedState);
      v44 = *v19;
      v85 = *(v19 + 120);
      v86 = *(v19 + 152);
      v144 = *(v19 + 136);
      v145 = v86;
      v146 = *(v19 + 168);
      v87 = *(v19 + 56);
      v88 = *(v19 + 88);
      v140 = *(v19 + 72);
      v141 = v88;
      v142 = *(v19 + 104);
      v143 = v85;
      v89 = *(v19 + 24);
      v136 = *(v19 + 8);
      v137 = v89;
      v138 = *(v19 + 40);
      v139 = v87;
      v50 = v133;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    case 6u:
      v91 = v127;
      sub_1B0433BE8(v37, v127, type metadata accessor for UnauthenticatedState);
      v44 = *v91;
      v92 = *(v91 + 120);
      v93 = *(v91 + 152);
      v144 = *(v91 + 136);
      v145 = v93;
      v146 = *(v91 + 168);
      v94 = *(v91 + 56);
      v95 = *(v91 + 88);
      v140 = *(v91 + 72);
      v141 = v95;
      v142 = *(v91 + 104);
      v143 = v92;
      v96 = *(v91 + 24);
      v136 = *(v91 + 8);
      v137 = v96;
      v138 = *(v91 + 40);
      v139 = v94;
      v50 = v133;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    case 7u:
      v70 = v128;
      sub_1B0433BE8(v37, v128, type metadata accessor for UnauthenticatedState);
      v71 = *v70;
      v72 = *(v70 + 120);
      v73 = *(v70 + 152);
      v144 = *(v70 + 136);
      v145 = v73;
      v146 = *(v70 + 168);
      v74 = *(v70 + 56);
      v75 = *(v70 + 88);
      v140 = *(v70 + 72);
      v141 = v75;
      v142 = *(v70 + 104);
      v143 = v72;
      v76 = *(v70 + 24);
      v136 = *(v70 + 8);
      v137 = v76;
      v138 = *(v70 + 40);
      v139 = v74;
      v77 = v133;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_18;
      }

      v78 = *v77;
      v79 = *(v77 + 15);
      v80 = *(v77 + 19);
      v155 = *(v77 + 17);
      v156 = v80;
      v157 = *(v77 + 21);
      v81 = *(v77 + 7);
      v82 = *(v77 + 11);
      v151 = *(v77 + 9);
      v152 = v82;
      v153 = *(v77 + 13);
      v154 = v79;
      v83 = *(v77 + 3);
      v147 = *(v77 + 1);
      v148 = v83;
      v149 = *(v77 + 5);
      v150 = v81;
      v84 = sub_1B044DA4C(v71, v78);

      if ((v84 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_14;
    case 8u:
      v107 = v131;
      sub_1B0433BE8(v37, v131, type metadata accessor for UnauthenticatedState);
      v108 = *(v107 + 16);
      v134[0] = *v107;
      v134[1] = v108;
      v109 = *(v107 + 48);
      v134[2] = *(v107 + 32);
      v134[3] = v109;
      v44 = *(v107 + 64);
      v110 = *(v107 + 184);
      v111 = *(v107 + 216);
      v144 = *(v107 + 200);
      v145 = v111;
      v146 = *(v107 + 232);
      v112 = *(v107 + 120);
      v113 = *(v107 + 152);
      v140 = *(v107 + 136);
      v141 = v113;
      v142 = *(v107 + 168);
      v143 = v110;
      v114 = *(v107 + 88);
      v136 = *(v107 + 72);
      v137 = v114;
      v138 = *(v107 + 104);
      v139 = v112;
      v115 = v133;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_1B039FF14(&v136);

        sub_1B0A1C37C(v134);
        goto LABEL_20;
      }

      v116 = *(v115 + 1);
      v135[0] = *v115;
      v135[1] = v116;
      v117 = *(v115 + 3);
      v135[2] = *(v115 + 2);
      v135[3] = v117;
      v51 = v115[8];
      v118 = *(v115 + 23);
      v119 = *(v115 + 27);
      v155 = *(v115 + 25);
      v156 = v119;
      v157 = *(v115 + 29);
      v120 = *(v115 + 15);
      v121 = *(v115 + 19);
      v151 = *(v115 + 17);
      v152 = v121;
      v153 = *(v115 + 21);
      v154 = v118;
      v122 = *(v115 + 11);
      v147 = *(v115 + 9);
      v148 = v122;
      v149 = *(v115 + 13);
      v150 = v120;
      v123 = static PushRegistrationInfo.__derived_struct_equals(_:_:)(v134, v135);
      sub_1B0A1C37C(v134);
      sub_1B0A1C37C(v135);
      if (v123)
      {
        goto LABEL_13;
      }

      sub_1B039FF14(&v147);

      sub_1B039FF14(&v136);
      goto LABEL_51;
    case 9u:
      v59 = v130;
      sub_1B0433BE8(v37, v130, type metadata accessor for UnauthenticatedState);
      v44 = *v59;
      v60 = *(v59 + 120);
      v61 = *(v59 + 152);
      v144 = *(v59 + 136);
      v145 = v61;
      v146 = *(v59 + 168);
      v62 = *(v59 + 56);
      v63 = *(v59 + 88);
      v140 = *(v59 + 72);
      v141 = v63;
      v142 = *(v59 + 104);
      v143 = v60;
      v64 = *(v59 + 24);
      v136 = *(v59 + 8);
      v137 = v64;
      v138 = *(v59 + 40);
      v139 = v62;
      v50 = v133;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_18:
        sub_1B039FF14(&v136);
LABEL_19:

        goto LABEL_20;
      }

LABEL_12:
      v51 = *v50;
      v52 = *(v50 + 15);
      v53 = *(v50 + 19);
      v155 = *(v50 + 17);
      v156 = v53;
      v157 = *(v50 + 21);
      v54 = *(v50 + 7);
      v55 = *(v50 + 11);
      v151 = *(v50 + 9);
      v152 = v55;
      v153 = *(v50 + 13);
      v154 = v52;
      v56 = *(v50 + 3);
      v147 = *(v50 + 1);
      v148 = v56;
      v149 = *(v50 + 5);
      v150 = v54;
LABEL_13:
      v57 = sub_1B044DA4C(v44, v51);

      if ((v57 & 1) == 0)
      {
LABEL_30:
        sub_1B039FF14(&v147);
        sub_1B039FF14(&v136);
        goto LABEL_52;
      }

LABEL_14:
      v58 = static ServerID.__derived_struct_equals(_:_:)(&v136, &v147);
      sub_1B039FF14(&v136);
      sub_1B039FF14(&v147);
LABEL_33:
      sub_1B04479C4(v37, type metadata accessor for UnauthenticatedState);
      return v58 & 1;
    case 0xAu:
      v97 = v129;
      sub_1B0433BE8(v37, v129, type metadata accessor for UnauthenticatedState);
      v98 = *v97;
      v99 = *(v97 + 8);
      v100 = *(v97 + 16);
      v101 = *(v97 + 24);
      v102 = v133;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v132 = v37;
        v103 = *v102;
        v104 = v102[1];
        v105 = v102[2];
        v106 = *(v102 + 24);
        v58 = sub_1B0C373C8(v98, v99, v100, v101, *v102, v104, v105, v106);
        sub_1B0BD1458(v103, v104, v105, v106);
        sub_1B0BD1458(v98, v99, v100, v101);
        sub_1B04479C4(v132, type metadata accessor for UnauthenticatedState);
        return v58 & 1;
      }

      sub_1B0BD1458(v98, v99, v100, v101);
LABEL_20:
      sub_1B0398EFC(v37, &qword_1EB6E59E0, &unk_1B0EDA800);
      goto LABEL_21;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    default:
      sub_1B0433BE8(v37, v32, type metadata accessor for UnauthenticatedState);
      v40 = *v32;
      v41 = v133;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_19;
      }

      v42 = *v41;
      if (!v40)
      {
        if (!v42)
        {
          goto LABEL_37;
        }

LABEL_51:

        goto LABEL_52;
      }

      if (!v42)
      {
        goto LABEL_51;
      }

      v43 = sub_1B044DA4C(v40, v42);

      if (v43)
      {
LABEL_37:
        sub_1B04479C4(v37, type metadata accessor for UnauthenticatedState);
        v58 = 1;
        return v58 & 1;
      }

LABEL_52:
      sub_1B04479C4(v37, type metadata accessor for UnauthenticatedState);
LABEL_21:
      v58 = 0;
      return v58 & 1;
  }
}

uint64_t sub_1B044C2EC()
{
  v1 = v0;
  v25 = sub_1B0E43828();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E43868();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConnectionState();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v1 + v15, v14, type metadata accessor for ConnectionState);
  v16 = sub_1B044C5EC();
  sub_1B038D690(v14, type metadata accessor for ConnectionState);
  result = sub_1B044C5EC();
  v18 = v16;
  if (v16 != result)
  {
    v19 = tracingSignposter.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v19, v6);
    v20 = (*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_engineID) << 59) | (*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) << 27) | 0x800000;
    sub_1B0E43838();
    v21 = sub_1B0E43858();
    v22 = sub_1B0E45AE8();
    if (sub_1B0E45D38())
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v18;
      v24 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v21, v22, v24, "Connection.imapStateUpdate", "%u", v23, 8u);
      MEMORY[0x1B272C230](v23, -1, -1);
    }

    (*(v2 + 8))(v5, v25);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1B044C5EC()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B044C754(v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B044C7B8(v5);
      return 7;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B044C7B8(v5);
      return 1;
    }

    else
    {
      memcpy(v15, v5, 0x162uLL);
      v8 = *(v5 + 21);
      v16[8] = *(v5 + 20);
      v16[9] = v8;
      v17 = *(v5 + 176);
      v9 = *(v5 + 17);
      v16[4] = *(v5 + 16);
      v16[5] = v9;
      v10 = *(v5 + 19);
      v16[6] = *(v5 + 18);
      v16[7] = v10;
      v11 = *(v5 + 13);
      v16[0] = *(v5 + 12);
      v16[1] = v11;
      v12 = *(v5 + 15);
      v16[2] = *(v5 + 14);
      v16[3] = v12;
      v13 = sub_1B0BE2780(v16);
      sub_1B03DB9A4(v16);
      sub_1B0BE278C(v15);
      return (v13 + 2);
    }
  }

  else
  {
    sub_1B044C7B8(v5);
    return 0;
  }
}

uint64_t sub_1B044C754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B044C7B8(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConnectionState.mailboxSelectionPayload(old:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31[-v9];
  sub_1B038CA0C(a1, &v31[-v9], type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v43, v10, sizeof(v43));
    v11 = *(v10 + 21);
    v52 = *(v10 + 20);
    v53 = v11;
    v54 = *(v10 + 176);
    v12 = *(v10 + 17);
    v48 = *(v10 + 16);
    v49 = v12;
    v13 = *(v10 + 19);
    v50 = *(v10 + 18);
    v51 = v13;
    v14 = *(v10 + 13);
    v44 = *(v10 + 12);
    v45 = v14;
    v15 = *(v10 + 15);
    v46 = *(v10 + 14);
    v47 = v15;
    if (sub_1B0BE2780(&v44) == 2)
    {
      v16 = sub_1B03DB9A4(&v44);
      v40 = *&v43[320];
      v41 = *&v43[336];
      v42 = *&v43[352];
      v36 = *&v43[256];
      v37 = *&v43[272];
      v38 = *&v43[288];
      v39 = *&v43[304];
      v32 = *&v43[192];
      v33 = *&v43[208];
      v34 = *&v43[224];
      v35 = *&v43[240];
      v17 = sub_1B03DB9A4(&v32);
      sub_1B0B37A20(v17, __dst);
      sub_1B0BE278C(v43);
      memmove(__dst, v16, 0x4BuLL);
      goto LABEL_7;
    }

    sub_1B0BE278C(v43);
  }

  else
  {
    sub_1B038C704(v10, type metadata accessor for ConnectionState);
  }

  memset(__dst, 0, 75);
LABEL_7:
  sub_1B038CA0C(v2, v8, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B038C704(v8, type metadata accessor for ConnectionState);
    if (!*&__dst[0])
    {
      return 0xF000000000000007;
    }

LABEL_14:
    sub_1B0398EFC(__dst, &qword_1EB6E4580, &qword_1B0EC5720);
    return 0x8000000000000000;
  }

  memcpy(v43, v8, sizeof(v43));
  v18 = *(v8 + 21);
  v52 = *(v8 + 20);
  v53 = v18;
  v54 = *(v8 + 176);
  v19 = *(v8 + 17);
  v48 = *(v8 + 16);
  v49 = v19;
  v20 = *(v8 + 19);
  v50 = *(v8 + 18);
  v51 = v20;
  v21 = *(v8 + 13);
  v44 = *(v8 + 12);
  v45 = v21;
  v22 = *(v8 + 15);
  v46 = *(v8 + 14);
  v47 = v22;
  if (sub_1B0BE2780(&v44) != 2)
  {
    sub_1B0BE278C(v43);
    if (!*&__dst[0])
    {
      return 0xF000000000000007;
    }

    goto LABEL_14;
  }

  v23 = sub_1B03DB9A4(&v44);
  v40 = *&v43[320];
  v41 = *&v43[336];
  v42 = *&v43[352];
  v36 = *&v43[256];
  v37 = *&v43[272];
  v38 = *&v43[288];
  v39 = *&v43[304];
  v32 = *&v43[192];
  v33 = *&v43[208];
  v34 = *&v43[224];
  v35 = *&v43[240];
  v24 = sub_1B03DB9A4(&v32);
  sub_1B0B37A20(v24, v31);
  sub_1B0BE278C(v43);
  if (*&__dst[0])
  {
    if ((DWORD2(__dst[0]) | (DWORD2(__dst[0]) << 32)) == (*(v23 + 8) | (*(v23 + 8) << 32)))
    {
      v25 = sub_1B04520BC(*&__dst[0], *v23);
      sub_1B0398EFC(__dst, &qword_1EB6E4580, &qword_1B0EC5720);
      if (v25)
      {
        sub_1B0BE27E0(&v43[192]);
        return 0xF000000000000007;
      }
    }

    else
    {
      sub_1B0398EFC(__dst, &qword_1EB6E4580, &qword_1B0EC5720);
    }
  }

  v27 = swift_allocObject();
  *(v27 + 16) = *v23;
  v29 = *(v23 + 32);
  v28 = *(v23 + 48);
  v30 = *(v23 + 16);
  *(v27 + 75) = *(v23 + 59);
  *(v27 + 48) = v29;
  *(v27 + 64) = v28;
  *(v27 + 32) = v30;
  return v27 | 0x2000000000000000;
}

uint64_t sub_1B044CBD0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1B044CC18(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CD0];
  v11 = MEMORY[0x1E69E7CD0];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 32;
    v6 = (a2 + 36);
    v7 = *(a2 + 16);
    do
    {
      if (*(v6 - 1) == a1)
      {
        sub_1B0C1FA20(&v10, *v6);
      }

      v6 += 10;
      --v7;
    }

    while (v7);
    v11 = v3;
    do
    {
      if (*v5 == a1 && *(v5 + 24) != 0)
      {
        sub_1B0C1FA20(&v10, *(v5 + 4));
      }

      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return a1;
}

unint64_t sub_1B044CD04(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6 || v1 == 7)
      {
      }
    }

    else if (v1 == 4 || v1 == 5)
    {
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  return result;
}

char *sub_1B044CDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5460, "x(\t");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1B044CEF8(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6 || v1 == 7)
      {
      }
    }

    else if (v1 == 4 || v1 == 5)
    {
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  return result;
}

uint64_t sub_1B044CF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1B044CFCC(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 184) = -1;
  return result;
}

uint64_t sub_1B044CFF8(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1B044D00C(uint64_t a1, uint64_t (*a2)(_OWORD *), uint64_t a3)
{
  v4 = v3;
  v73 = a2;
  v74 = a3;
  v6 = _s6LoggerVMa_0();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v70 = &v68 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v68 - v16;
  sub_1B044D768(a1, &v68 - v16, _s6LoggerVMa_0);
  sub_1B044D768(a1, v15, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v69 = a1;
  v18 = sub_1B0E43988();
  v19 = sub_1B0E458D8();
  v20 = os_log_type_enabled(v18, v19);
  v71 = v10;
  v78 = v4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v90[0] = v22;
    *v21 = 68158210;
    *(v21 + 4) = 2;
    *(v21 + 8) = 256;
    v23 = v15[*(v6 + 20)];
    sub_1B044D830(v15, _s6LoggerVMa_0);
    *(v21 + 10) = v23;
    v10 = v71;
    *(v21 + 11) = 2082;
    v24 = *&v17[*(v6 + 20) + 4];
    sub_1B044D830(v17, _s6LoggerVMa_0);
    v25 = ConnectionID.debugDescription.getter(v24);
    v27 = sub_1B0399D64(v25, v26, v90);

    *(v21 + 13) = v27;
    _os_log_impl(&dword_1B0389000, v18, v19, "[%.*hhx-%{public}s] Checking for new actions.", v21, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v28 = v22;
    v4 = v78;
    MEMORY[0x1B272C230](v28, -1, -1);
    MEMORY[0x1B272C230](v21, -1, -1);
  }

  else
  {
    sub_1B044D830(v15, _s6LoggerVMa_0);

    sub_1B044D830(v17, _s6LoggerVMa_0);
  }

  v29 = type metadata accessor for UnauthenticatedStateWithTasks();
  v30 = *(v29 + 24);
  v31 = *(v29 + 28);
  v75 = *v4;
  v76 = v30;
  v77 = v6;
  v72 = v31;
  while (1)
  {
    v32 = *(v4 + v31);
    v33 = v32[2];
    v79 = v32;
    if (v33)
    {
      v82 = MEMORY[0x1E69E7CC0];
      sub_1B0BFE594(0, v33, 0);
      v34 = v82;
      v35 = (v32 + 4);
      do
      {
        sub_1B0C3C2E4(v35, v80);
        v37 = *(&v81 + 1);
        v36 = v81;
        __swift_project_boxed_opaque_existential_0(v80 + 1, v81);
        v38 = (*(v37 + 8))(v36, v37);
        sub_1B0398EFC(v80, &qword_1EB6E5708, ",w\b");
        v82 = v34;
        v40 = *(v34 + 16);
        v39 = *(v34 + 24);
        v41 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          sub_1B0BFE594((v39 > 1), v40 + 1, 1);
          v34 = v82;
        }

        *(v34 + 16) = v41;
        *(v34 + v40 + 32) = v38;
        v35 += 48;
        --v33;
      }

      while (v33);
      v10 = v71;
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
      v41 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    v42 = sub_1B044D890();
    *&v80[0] = MEMORY[0x1B2727570](v41, &type metadata for TaskID, v42);
    v43 = *(v34 + 16);
    v4 = v78;
    if (v43)
    {
      v44 = (v34 + 32);
      do
      {
        v45 = *v44++;
        sub_1B0C1FD08(&v82, v45);
        --v43;
      }

      while (v43);
    }

    sub_1B043336C(*&v80[0], v75, &v83);

    v46 = v77;
    if (!v84)
    {
      sub_1B0398EFC(&v83, &qword_1EB6E5A20, &qword_1B0EDBD70);
      return;
    }

    sub_1B0450C74(&v83, v85);
    v47 = v86;
    v48 = v87;
    __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
    (*(v48 + 16))(v88, v47, v48);
    if (v89 == 255)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v85);
      return;
    }

    v90[0] = v88[0];
    v90[1] = v88[1];
    v90[2] = v88[2];
    v90[3] = v88[3];
    v91 = v89;
    v49 = v73(v90);
    if (v50)
    {
      break;
    }

    *&v80[0] = v49;
    sub_1B03D2CA8(v85, v80 + 8);
    v51 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_1B0C0C434(0, v51[2] + 1, 1, v51);
    }

    v53 = v51[2];
    v52 = v51[3];
    if (v53 >= v52 >> 1)
    {
      v51 = sub_1B0C0C434((v52 > 1), v53 + 1, 1, v51);
    }

    v51[2] = v53 + 1;
    v54 = &v51[6 * v53];
    v55 = v80[0];
    v56 = v81;
    v54[3] = v80[1];
    v54[4] = v56;
    v54[2] = v55;
    v31 = v72;
    *(v4 + v72) = v51;
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
    sub_1B0398EFC(v88, &qword_1EB6E5A28, &qword_1B0EDBD78);
  }

  sub_1B0398EFC(v88, &qword_1EB6E5A28, &qword_1B0EDBD78);
  __swift_destroy_boxed_opaque_existential_0Tm(v85);
  v57 = v69;
  v58 = v70;
  sub_1B044D768(v69, v70, _s6LoggerVMa_0);
  sub_1B044D768(v57, v10, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v59 = sub_1B0E43988();
  v60 = sub_1B0E458C8();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v80[0] = v62;
    *v61 = 68158210;
    *(v61 + 4) = 2;
    *(v61 + 8) = 256;
    v63 = v10[*(v46 + 20)];
    sub_1B044D830(v10, _s6LoggerVMa_0);
    *(v61 + 10) = v63;
    *(v61 + 11) = 2082;
    v64 = *(v58 + *(v46 + 20) + 4);
    sub_1B044D830(v58, _s6LoggerVMa_0);
    v65 = ConnectionID.debugDescription.getter(v64);
    v67 = sub_1B0399D64(v65, v66, v80);

    *(v61 + 13) = v67;
    _os_log_impl(&dword_1B0389000, v59, v60, "[%.*hhx-%{public}s] No connection available to send command.", v61, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    MEMORY[0x1B272C230](v62, -1, -1);
    MEMORY[0x1B272C230](v61, -1, -1);
  }

  else
  {
    sub_1B044D830(v10, _s6LoggerVMa_0);

    sub_1B044D830(v58, _s6LoggerVMa_0);
  }
}

uint64_t sub_1B044D768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B044D7D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B044D830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B044D890()
{
  result = qword_1EB6DCD78;
  if (!qword_1EB6DCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCD78);
  }

  return result;
}

uint64_t sub_1B044D8E4()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v1, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v15, v5, 0x162uLL);
    v6 = v15[0];
    v7 = Capability.condStore.unsafeMutableAddressor();
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = *(v7 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v6) = sub_1B039F8EC(v8, v9, v10, v11, v6);

    if (v6)
    {
      v12 = sub_1B0BF5170(&unk_1F271B8A8);
      sub_1B0BE278C(v15);
      return v12;
    }

    sub_1B0BE278C(v15);
  }

  else
  {
    sub_1B038C704(v5, type metadata accessor for ConnectionState);
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B044DA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a2 + 48);
    v6 = *(a2 + 56);
    v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v7 || (v8 = a1, v9 = *(a1 + 32), v10 = a2, v11 = sub_1B0E46A78(), a2 = v10, v12 = v11, a1 = v8, (v12 & 1) != 0))
    {
      v13 = (a1 + 88);
      v14 = v2 - 1;
      for (i = (a2 + 88); ; i += 32)
      {
        if (v4)
        {
          if ((v6 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v6 & 1 | (((v5 ^ v3) & 0xFFFFFFFFFFFFC000) != 0))
        {
          return 0;
        }

        if (!v14)
        {
          break;
        }

        v3 = *(v13 - 1);
        v4 = *v13;
        v5 = *(i - 1);
        v6 = *i;
        v16 = *(v13 - 3) == *(i - 3) && *(v13 - 2) == *(i - 2);
        if (!v16 && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }

        v13 += 32;
        --v14;
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B044DB64(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vceq_s32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

void sub_1B044DBD8()
{
  v1 = v0;
  v2 = _s6LoggerVMa_0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7)
  {
    *(v1 + v6) = 0;
    if (*(v7 + 16) && (v8 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate, swift_unknownObjectWeakLoadStrong()))
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v7, ObjectType, v9);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v11 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v5, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v12 = sub_1B0E43988();
    v13 = sub_1B0E439A8();
    (*(*(v13 - 8) + 8))(v5, v13);
    v14 = sub_1B0E458E8();
    if (os_log_type_enabled(v12, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 68158210;
      *(v15 + 4) = 2;
      *(v15 + 8) = 256;
      v17 = v11 + *(v2 + 20);
      *(v15 + 10) = *v17;

      *(v15 + 11) = 2082;
      v18 = ConnectionID.debugDescription.getter(*(v17 + 4));
      v20 = sub_1B0399D64(v18, v19, &v21);

      *(v15 + 13) = v20;
      _os_log_impl(&dword_1B0389000, v12, v14, "[%.*hhx-%{public}s] Trying to send nil enqueued events.", v15, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x1B272C230](v16, -1, -1);
      MEMORY[0x1B272C230](v15, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1B044DE78(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState();
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 80);
  if (v8)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      if (*(v8 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == *(a1 + 32))
      {
        v10 = *(v1 + 88);
        v11 = (a1 + 40);
        v12 = v9 + 1;
        while (--v12)
        {
          v13 = *v11;
          v11 += 5;
          if (v13 == 0x8000000000000010)
          {
            v14 = *(*v8 + 304);
            v15 = *(v1 + 80);

            v14(v16);
            sub_1B0C3D620(v10, v7);

            return sub_1B038C7C4(v7, type metadata accessor for ConnectionState);
          }
        }
      }
    }
  }

  return result;
}

uint64_t _s5StateO6ActionOMa()
{
  result = qword_1EB6DC268;
  if (!qword_1EB6DC268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B044E010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1B0E441D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConnectionState();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  if (*(v3 + 16) == 2 && *v3 == a1)
  {
    sub_1B044C754(a2, &v31 - v17);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      sub_1B044C7B8(v18);
      *v3 = a1 + 1;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      (*(v8 + 56))(a3, 1, 1, v7);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
      return (*(*(v25 - 8) + 56))(a3, 0, 2, v25);
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        *v3 = a1 + 1;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
        (*(*(v24 - 8) + 56))(a3, 2, 2, v24);
        return sub_1B044C7B8(v18);
      }
    }

    else
    {
      sub_1B044C754(v18, v16);
      v26 = sub_1B0E43DF8();
      v27 = *(v26 - 8);
      if ((*(v27 + 88))(v16, v26) == *MEMORY[0x1E6977C18])
      {
        (*(v27 + 96))(v16, v26);
        v28 = *(v8 + 32);
        v28(v11, v16, v7);
        *v3 = a1 + 1;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        v28(a3, v11, v7);
        (*(v8 + 56))(a3, 0, 1, v7);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
        (*(*(v29 - 8) + 56))(a3, 0, 2, v29);
        return sub_1B044C7B8(v18);
      }

      (*(v27 + 8))(v16, v26);
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
    (*(*(v30 - 8) + 56))(a3, 1, 2, v30);
    return sub_1B044C7B8(v18);
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v21 = *(*(v20 - 8) + 56);

  return v21(a3, 1, 2, v20);
}

uint64_t sub_1B044E460(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateO6ActionOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B044E4C4()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  v9 = sub_1B0E44488();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_11;
  }

  swift_beginAccess();
  v10 = *(v1 + 72);
  if (*(v1 + 64) && *(v1 + 64) == 1)
  {
    if (v10)
    {
      return;
    }

    v11 = swift_allocObject();
    swift_weakInit();

    v12 = sub_1B0C3D0E8(v8, sub_1B0C3E1FC, v11);

    v13 = *(v1 + 72);
    *(v1 + 72) = v12;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_1B0E45AA8();
    if (qword_1EB6DC1B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B0E439A8();
    __swift_project_value_buffer(v14, qword_1EB6DC1C0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v15 = sub_1B0E43988();
    v16 = sub_1B0E45908();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 68157952;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      *(v17 + 10) = *(v1 + 24);

      _os_log_impl(&dword_1B0389000, v15, v16, "[%.*hhx] Did create timer.", v17, 0xBu);
      MEMORY[0x1B272C230](v17, -1, -1);
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_13;
  }

  if (!v10)
  {
    return;
  }

  v18 = *(v1 + 72);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1B0E45A98();
  v19 = *(v1 + 72);
  *(v1 + 72) = 0;
  swift_unknownObjectRelease();
  if (qword_1EB6DC1B0 != -1)
  {
    goto LABEL_16;
  }

LABEL_11:
  v20 = sub_1B0E439A8();
  __swift_project_value_buffer(v20, qword_1EB6DC1C0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v15 = sub_1B0E43988();
  v21 = sub_1B0E45908();
  if (os_log_type_enabled(v15, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 68157952;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    *(v22 + 10) = *(v1 + 24);
    swift_unknownObjectRelease();

    _os_log_impl(&dword_1B0389000, v15, v21, "[%.*hhx] Did cancel timer.", v22, 0xBu);
    MEMORY[0x1B272C230](v22, -1, -1);

    return;
  }

LABEL_13:
  swift_unknownObjectRelease();
}

uint64_t sub_1B044E8C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1B044E8FC()
{
  v2 = v0;
  v3 = sub_1B0E44468();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = sub_1B0E44488();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_6:
    v15 = sub_1B0E439A8();
    __swift_project_value_buffer(v15, qword_1EB6DC1C0);
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    swift_retain_n();
    v16 = sub_1B0E43988();
    v17 = sub_1B0E45908();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v18 = 68158466;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v20 = *(v2 + 24);

      *(v18 + 10) = v20;

      *(v18 + 11) = 2082;
      v21 = ConnectionID.debugDescription.getter(*(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
      v23 = sub_1B0399D64(v21, v22, &v44);

      *(v18 + 13) = v23;
      *(v18 + 21) = 2048;

      *(v18 + 23) = v1;

      _os_log_impl(&dword_1B0389000, v16, v17, "[%.*hhx] Did cancel connection %{public}s, generation %ld", v18, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B272C230](v19, -1, -1);
      MEMORY[0x1B272C230](v18, -1, -1);

      return;
    }

    goto LABEL_17;
  }

  swift_beginAccess();
  v10 = (v2 + 80);
  v3 = *(v2 + 80);
  v1 = *(v2 + 88);
  if (!*(v2 + 64) || *(v2 + 64) == 1)
  {
    if (!v3)
    {
      return;
    }

    v11 = *(*v3 + 536);
    v12 = *(v2 + 80);

    v11(v13);
    v14 = *v10;
    *v10 = 0;
    *(v2 + 88) = 0;

    if (qword_1EB6DC1B0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v24 = *(v2 + 48);
  if (v3)
  {
    if (v24 == v1)
    {
      return;
    }

    v25 = *(*v3 + 536);
    v26 = *(v2 + 80);
    v27 = swift_retain_n();
    v25(v27);
  }

  v28 = *(v2 + 104);
  v29 = (*(v2 + 96))(v2, &off_1F2721238);
  v30 = *(v2 + 80);
  *(v2 + 80) = v29;
  *(v2 + 88) = v24;

  v31 = *(*v29 + 528);

  v31(v32);

  if (qword_1EB6DC1B0 != -1)
  {
    swift_once();
  }

  v33 = sub_1B0E439A8();
  __swift_project_value_buffer(v33, qword_1EB6DC1C0);
  swift_retain_n();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_retain_n();
  v34 = sub_1B0E43988();
  v35 = sub_1B0E45908();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v36 = 68158722;
    *(v36 + 4) = 2;
    *(v36 + 8) = 256;
    v38 = *(v2 + 24);

    *(v36 + 10) = v38;

    *(v36 + 11) = 2082;
    v39 = ConnectionID.debugDescription.getter(*(v29 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
    v41 = sub_1B0399D64(v39, v40, &v44);

    *(v36 + 13) = v41;
    *(v36 + 21) = 2048;
    v43 = (*(*v29 + 432))(v42);

    *(v36 + 23) = v43;

    *(v36 + 31) = 2048;

    *(v36 + 33) = v24;

    _os_log_impl(&dword_1B0389000, v34, v35, "[%.*hhx] Did create connection %{public}s [C%llu], generation %ld", v36, 0x29u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1B272C230](v37, -1, -1);
    MEMORY[0x1B272C230](v36, -1, -1);
  }

  else
  {
  }

LABEL_17:
}

unint64_t get_enum_tag_for_layout_string_15IMAP2Connection5EventV7PayloadO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 60;
  }

  else
  {
    return (*a1 >> 3) + 8;
  }
}

uint64_t sub_1B044EF38(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1B044EF48(uint64_t a1)
{
  v3 = *(_s6LoggerVMa_0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B0429DF4(a1, (v1 + v4), v6, v7);
}

uint64_t sub_1B044EFF4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange;
  *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange) = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B044F088(v5, a1);

  if (*(v2 + v4) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1B04504BC();
      result = swift_unknownObjectRelease();
    }

    *(v2 + v4) = 0;
  }

  return result;
}

uint64_t sub_1B044F088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26[-v9];
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents;
  swift_beginAccess();
  if (*(a1 + v11))
  {
    v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(a1 + v12, v10, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v13 = sub_1B0E439A8();
    v14 = *(v13 - 8);
    result = (*(v14 + 48))(v10, 1, v13);
    if (result != 1)
    {

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v16 = sub_1B0E43988();
      v17 = sub_1B0E458D8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 68157952;
        *(v18 + 4) = 2;
        *(v18 + 8) = 256;
        *(v18 + 10) = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&dword_1B0389000, v16, v17, "[%.*hhx] withEnqueuedSend() called while we already have enqueued events.", v18, 0xBu);
        MEMORY[0x1B272C230](v18, -1, -1);
      }

      else
      {
      }

      (*(v14 + 8))(v10, v13);
      return sub_1B044F4CC(a2);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  *(a1 + v11) = MEMORY[0x1E69E7CC0];
  sub_1B044F4CC(a2);
  v19 = *(a1 + v11);
  if (v19)
  {
    *(a1 + v11) = 0;
    if (*(v19 + 16) && swift_unknownObjectWeakLoadStrong())
    {
      sub_1B041F3D0(v19);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v20 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(a1 + v20, v8, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v21 = sub_1B0E439A8();
    v22 = *(v21 - 8);
    result = (*(v22 + 48))(v8, 1, v21);
    if (result == 1)
    {
      goto LABEL_19;
    }

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v23 = sub_1B0E43988();
    v24 = sub_1B0E458E8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 68157952;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      *(v25 + 10) = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&dword_1B0389000, v23, v24, "[%.*hhx] nil enqueued events after enqueueing.", v25, 0xBu);
      MEMORY[0x1B272C230](v25, -1, -1);
    }

    else
    {
    }

    return (*(v22 + 8))(v8, v21);
  }
}

uint64_t sub_1B044F4CC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 64);
    do
    {
      v3 = *(v2 - 3);
      v4 = *(v2 - 4);
      v5 = *(v2 - 1);
      v6 = *v2;
      v7 = *(v2 - 8);
      v8 = v3;
      v9 = v4;
      v10 = v5;
      v11 = v6;
      sub_1B044CD04(v3);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B044F574(&v7);
      sub_1B044CEF8(v3);

      v2 += 5;
      --v1;
    }

    while (v1);
  }

  return result;
}

int64_t sub_1B044F574(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v114 = &v112 - v5;
  v124 = type metadata accessor for ConnectionState();
  v6 = *(*(v124 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v124);
  v125 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v121 = &v112 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v126 = &v112 - v12;
  v123 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v13 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v128 = (&v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v131 = *(v127 - 8);
  v15 = *(v131 + 64);
  v16 = MEMORY[0x1EEE9AC00](v127);
  v130 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v112 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v112 - v21);
  v23 = sub_1B0E44468();
  v24 = *(v23 - 8);
  v25 = v24[8];
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v27 = v28;
  v29 = v24[13];
  v115 = *MEMORY[0x1E69E8020];
  v116 = v29;
  v117 = v24 + 13;
  v29(v27);
  v30 = v28;
  v31 = sub_1B0E44488();
  v33 = v24[1];
  v32 = (v24 + 1);
  v119 = v27;
  v120 = v32;
  v118 = v33;
  result = (v33)(v27, v23);
  if ((v31 & 1) == 0)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v35 = *(a1 + 8);
  v136 = v35;
  v36 = v35 >> 60;
  if (v35 >> 60 == 1)
  {
    v113 = v23;
    v129 = a1;
    v58 = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    LODWORD(v124) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
    v121 = (v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
    v122 = v1;
    v32 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState + 8);
    v59 = *(v58 + 16);
    v126 = v58;
    if (v59)
    {
      v60 = 0;
      v61 = MEMORY[0x1E69E7CC0];
      v125 = v59;
      while (v60 < *(v58 + 16))
      {
        v62 = (*(v131 + 80) + 32) & ~*(v131 + 80);
        v63 = *(v131 + 72);
        sub_1B03C623C(v58 + v62 + v63 * v60, v22, type metadata accessor for CommandConnection.RecentErrors.Error);
        if (v32 >= *v22)
        {
          sub_1B038C824(v22, type metadata accessor for CommandConnection.RecentErrors.Error);
        }

        else
        {
          sub_1B038CBB4(v22, v130, type metadata accessor for CommandConnection.RecentErrors.Error);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v137 = v61;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0C57BB4(0, *(v61 + 16) + 1, 1);
            v61 = v137;
          }

          v66 = *(v61 + 16);
          v65 = *(v61 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_1B0C57BB4(v65 > 1, v66 + 1, 1);
            v61 = v137;
          }

          *(v61 + 16) = v66 + 1;
          sub_1B038CBB4(v130, v61 + v62 + v66 * v63, type metadata accessor for CommandConnection.RecentErrors.Error);
          v59 = v125;
          v58 = v126;
        }

        if (v59 == ++v60)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v61 = MEMORY[0x1E69E7CC0];
LABEL_43:
    *&v137 = v61;

    sub_1B0C56874(&v137);

    v73 = v137;
    v74 = *(v137 + 16);
    if (!v74)
    {
      v79 = v32;
LABEL_66:

      v82 = v121;
      v83 = *v121;
      *v121 = v124;
      *(v82 + 1) = v79;
      sub_1B0C4D17C(v83);
      if (CommandConnection.RecentErrors.containsAuthenticationFailure.getter(v126))
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v46 = Strong;
          v85 = *(Strong + 16);
          v86 = v119;
          *v119 = v85;
          v87 = v113;
          v116(v86, v115, v113);
          v88 = v85;
          LOBYTE(v85) = sub_1B0E44488();
          v118(v86, v87);
          if ((v85 & 1) == 0)
          {
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v89 = *(v46 + 40);
          (*(v46 + 32))(0xB000000000000010);
          swift_unknownObjectRelease();
        }
      }

      return sub_1B0C52BF4(v129);
    }

    v75 = 0;
    v76 = v137 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    while (1)
    {
      if (v75 >= *(v73 + 16))
      {
        goto LABEL_82;
      }

      sub_1B03C623C(v76 + *(v131 + 72) * v75, v20, type metadata accessor for CommandConnection.RecentErrors.Error);
      v79 = *v20;
      if (v32 >= *v20)
      {
        v77 = type metadata accessor for CommandConnection.RecentErrors.Error;
        v78 = v20;
      }

      else
      {
        v80 = v128;
        sub_1B03C623C(v20 + *(v127 + 20), v128, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        if (!swift_getEnumCaseMultiPayload())
        {
          v32 = *v80;
          v130 = v80[1];
          v46 = v80[2];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B50, &unk_1B0EDC5D8);
          if (v46)
          {
            if (v124 != 1)
            {
              if (v124 == 2)
              {
                sub_1B038C824(v20, type metadata accessor for CommandConnection.RecentErrors.Error);
                sub_1B0BD1488(v32, v130, v46);
                v81 = 2;
              }

              else if (v46 == 1)
              {
                sub_1B038C824(v20, type metadata accessor for CommandConnection.RecentErrors.Error);
                v81 = 2;
              }

              else
              {
                if (v124 && v124 != 3)
                {
                  goto LABEL_89;
                }

                sub_1B038C824(v20, type metadata accessor for CommandConnection.RecentErrors.Error);
                sub_1B0BD1488(v32, v130, v46);
                v81 = 3;
              }

              goto LABEL_59;
            }

            sub_1B038C824(v20, type metadata accessor for CommandConnection.RecentErrors.Error);
            sub_1B0BD1488(v32, v130, v46);
          }

          else
          {
            sub_1B038C824(v20, type metadata accessor for CommandConnection.RecentErrors.Error);
          }

          v81 = 1;
LABEL_59:
          LODWORD(v124) = v81;
          goto LABEL_47;
        }

        sub_1B038C824(v20, type metadata accessor for CommandConnection.RecentErrors.Error);
        v77 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind;
        v78 = v80;
      }

      sub_1B038C824(v78, v77);
      v79 = v32;
LABEL_47:
      ++v75;
      v32 = v79;
      if (v74 == v75)
      {
        goto LABEL_66;
      }
    }
  }

  if (v36 == 8 && v35 == 0x8000000000000010)
  {
    *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange) = 1;
    return result;
  }

  v131 = v35;
  v37 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v20 = *(v1 + v37);
  v122 = v1;
  v129 = a1;
  v112 = v36;
  v113 = v23;
  if (!(v20 >> 62))
  {
    v38 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

LABEL_85:
  v38 = sub_1B0E46138();
LABEL_8:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v38)
  {
    v39 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x1B2728410](v39, v20);
        v32 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v39 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v40 = *(v20 + 8 * v39 + 32);

        v32 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      v41 = *(v40 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      if (v41 == *v129)
      {
        break;
      }

      ++v39;
      if (v32 == v38)
      {
        goto LABEL_19;
      }
    }

    v68 = v121;
    (*(*v40 + 304))(v67);
    v69 = v125;
    sub_1B038CBB4(v68, v125, type metadata accessor for ConnectionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
      }
    }

    else if (EnumCaseMultiPayload >= 2)
    {
      sub_1B038C824(v69, type metadata accessor for ConnectionState);
      if (v112)
      {
        if (v112 != 2)
        {
          v71 = v129;
          if (v112 == 8 && v131 == 0x8000000000000000)
          {
            v139 = 0u;
            memset(v140, 0, 27);
            v137 = 0u;
            v138 = 0u;
            v72 = v129;
            sub_1B0C53354(&v137, v41);
            v71 = v72;
          }

          goto LABEL_79;
        }

        v90 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v91 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v92 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        *(v135 + 11) = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
        v93 = *(v135 + 11);
        v134[2] = v91;
        v135[0] = v92;
        v134[1] = v90;
        v134[0] = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *(v140 + 11) = v93;
        v94 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v138 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v139 = v94;
        v140[0] = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v137 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1B0B37A20(v134, v133);
        sub_1B0C53354(&v137, v41);
        sub_1B0B37A7C(v134);
LABEL_78:
        v71 = v129;
LABEL_79:
        sub_1B0C52808(v71);
      }

      v95 = static MonotonicTime.now()();
      v96 = v122;
      v97 = v122 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
      v98 = *(v122 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
      *v97 = 0;
      *(v97 + 8) = v95;
      sub_1B0C4D17C(v98);
      v99 = swift_unknownObjectWeakLoadStrong();
      if (!v99)
      {
LABEL_77:
        v105 = v96 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
        swift_beginAccess();
        *v105 = 0;
        *(v105 + 8) = 0;
        *(v105 + 16) = 1;
        v106 = *(**(v96 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer) + 208);
        v107 = v96;

        v106(v108);

        v109 = type metadata accessor for ConnectionStatus.Error(0);
        v110 = v114;
        (*(*(v109 - 8) + 56))(v114, 1, 1, v109);
        v111 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
        swift_beginAccess();
        sub_1B03DC928(v110, v107 + v111);
        swift_endAccess();
        goto LABEL_78;
      }

      v46 = v99;
      v100 = *(v99 + 16);
      v101 = v119;
      *v119 = v100;
      v102 = v113;
      v116(v101, v115, v113);
      v103 = v100;
      LOBYTE(v100) = sub_1B0E44488();
      v118(v101, v102);
      if (v100)
      {
        v104 = *(v46 + 40);
        (*(v46 + 32))(0xB000000000000008);
        swift_unknownObjectRelease();
        goto LABEL_77;
      }

      goto LABEL_87;
    }

    return sub_1B038C824(v69, type metadata accessor for ConnectionState);
  }

LABEL_19:

  v42 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v43 = v122;
  swift_beginAccess();
  v44 = v43 + v42;
  v45 = v126;
  sub_1B03B5C80(v44, v126, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v46 = sub_1B0E439A8();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) != 1)
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v48 = v129;
    v49 = *(v129 + 4);
    *&v134[0] = *(v129 + 3);
    v133[0] = v49;
    sub_1B0C5A0E4(&v136, &v132);
    sub_1B03B5C80(v134, &v132, &qword_1EB6E5B48, &qword_1B0EDC5D0);
    sub_1B03B5C80(v133, &v132, &qword_1EB6E5B48, &qword_1B0EDC5D0);
    v50 = sub_1B0E43988();
    v51 = v43;
    v52 = sub_1B0E458E8();
    sub_1B0C5A140(&v136);
    sub_1B0398EFC(v134, &qword_1EB6E5B48, &qword_1B0EDC5D0);
    sub_1B0398EFC(v133, &qword_1EB6E5B48, &qword_1B0EDC5D0);
    if (os_log_type_enabled(v50, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v132 = v54;
      *v53 = 68158210;
      *(v53 + 4) = 2;
      *(v53 + 8) = 256;
      *(v53 + 10) = *(v51 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v53 + 11) = 2082;
      v55 = ConnectionID.debugDescription.getter(*v48);
      v57 = sub_1B0399D64(v55, v56, &v132);

      *(v53 + 13) = v57;
      _os_log_impl(&dword_1B0389000, v50, v52, "[%.*hhx] Got callback for connection %{public}s but this connection is unknown to the pool.", v53, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x1B272C230](v54, -1, -1);
      MEMORY[0x1B272C230](v53, -1, -1);
    }

    else
    {
    }

    return (*(v47 + 8))(v126, v46);
  }

LABEL_88:
  __break(1u);
LABEL_89:
  sub_1B0BD67B0(v32, v130, v46);
  sub_1B0E46A68();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B04504CC()
{
  v18 = 0;
  v14 = sub_1B0E44468();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v15 = (&v4 - v10);
  v18 = v0;

  v11 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v11);
  v1 = v12;
  *v15 = v11;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v16 = sub_1B0E44488();
  (*(v12 + 8))(v15, v14);
  result = v16;
  if (v16)
  {

    v8 = v9 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment;
    swift_beginAccess();
    if ((*v8 & 0xFF00) == 0x200)
    {
      swift_endAccess();
      v7 = 2;
    }

    else
    {
      v6 = *(v8 + 1);
      swift_endAccess();
      v7 = v6 & 1;
    }

    v17 = v7;
    if (v7 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v17;
    }

    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Behavior11RunningTaskV0D0O(uint64_t a1)
{
  if ((*(a1 + 45) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 45) & 3;
  }
}

unint64_t sub_1B045070C(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Task.Logger(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v45 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v45 - v13;
  v15 = type metadata accessor for UntaggedResponse(0);
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v20 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
      {
        sub_1B0450DB0(v2, v50);
        if (v51)
        {
          sub_1B0B7ABB4(v50);
        }

        else
        {
          sub_1B0450C74(v50, &v52);
          v26 = *(v2 + 48);
          v27 = *(v2 + 56);
          v28 = v53;
          v29 = v54;
          __swift_mutable_project_boxed_opaque_existential_1(&v52, v53);
          (*(v29 + 64))(v20, v26, v27, v28, v29);
          sub_1B0B7ABB4(v2);
          sub_1B0450C74(&v52, v2);
          *(v2 + 45) = 0;
        }

        v30 = type metadata accessor for RunningTask();
        v31 = sub_1B0390340(v2 + *(v30 + 28), v14, type metadata accessor for Task.Logger);
        MEMORY[0x1EEE9AC00](v31);
        v45[-2] = v20;
        v45[-1] = v14;
        sub_1B0B76AEC(a1, sub_1B0B7C698);
        v25 = v14;
      }

      else
      {
        v24 = type metadata accessor for RunningTask();
        sub_1B0390340(v2 + *(v24 + 28), v9, type metadata accessor for Task.Logger);
        sub_1B0B77560(v9, v20, a1, a2);
        v25 = v9;
      }

      return sub_1B0453E78(v25, type metadata accessor for Task.Logger);
    }
  }

  else
  {
    v21 = *(a1 + 24);
    v22 = *(a1 + 48);
    if (((1 << (v21 >> 60)) & 0x1E7) == 0)
    {
      v55 = *(a1 + 40);
      if (v21 >> 60 == 3)
      {
        v23 = swift_projectBox();
        sub_1B0390340(v23, v19, type metadata accessor for UntaggedResponse);
        sub_1B0450DB0(v2, v50);
        if (v51)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B044CD04(v21);
          sub_1B0B7ABB4(v50);
        }

        else
        {
          sub_1B0450C74(v50, &v52);
          v38 = *(v2 + 48);
          v48 = *(v2 + 56);
          v49 = v38;
          v39 = v54;
          v47 = v53;
          v40 = __swift_mutable_project_boxed_opaque_existential_1(&v52, v53);
          v41 = *(v39 + 56);
          v45[1] = v40;
          v45[2] = v39 + 56;
          v46 = v41;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B044CD04(v21);
          v42 = v49;
          v49 = v2;
          v46(v19, v42, v48, v47, v39);
          v2 = v49;
          sub_1B0B7ABB4(v49);
          sub_1B0450C74(&v52, v2);
          *(v2 + 45) = 0;
        }

        v43 = type metadata accessor for RunningTask();
        v44 = sub_1B0390340(v2 + *(v43 + 28), v14, type metadata accessor for Task.Logger);
        MEMORY[0x1EEE9AC00](v44);
        v45[-4] = a2;
        v45[-3] = v19;
        v45[-2] = v14;
        sub_1B0B76AEC(a1, sub_1B0B7C720);

        sub_1B0453E78(v14, type metadata accessor for Task.Logger);
        v36 = type metadata accessor for UntaggedResponse;
        v37 = v19;
      }

      else
      {
        v32 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v33 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v34 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v48 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v49 = v32;
        v47 = v34;
        LODWORD(v46) = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v35 = type metadata accessor for RunningTask();
        sub_1B0390340(v2 + *(v35 + 28), v12, type metadata accessor for Task.Logger);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B044CD04(v21);
        sub_1B0B76D20(v12, v49, v33, v48, v47, v46, a1, a2);

        v36 = type metadata accessor for Task.Logger;
        v37 = v12;
      }

      sub_1B0453E78(v37, v36);
      return sub_1B044CEF8(v21);
    }
  }

  return result;
}

uint64_t sub_1B0450C74(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1B0450C8C()
{
  result = qword_1EB6DE008;
  if (!qword_1EB6DE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE008);
  }

  return result;
}

uint64_t sub_1B0450CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0450D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1B0450DE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0450E2C(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_1B0450E2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 64))(v5, *(a1 + 16));
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1B0450E84@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0450ED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0450F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0450DB0(a1, v40);
  if (v41)
  {
    if (v41 == 1)
    {
      sub_1B0450C74(v40, v37);
      v6 = v38;
      v7 = v39;
      __swift_project_boxed_opaque_existential_0(v37, v38);
      (*(v7 + 32))(&v42, v6, v7);
      v8 = v43;
      v9 = v44;
      v45 = v42;
      sub_1B039E440(&v45);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      sub_1B04513B4();
      if (v10)
      {
      }

      else
      {
        v12 = *(a3 + 16);
        v13 = a3 + 32;
        if (a2)
        {
          sub_1B0BA7CA4(v8, v9, v13, v12, (a2 + 16));
        }

        else
        {
          sub_1B03A912C(v8, v9, v13, v12);
        }

        v15 = v14;

        if (v15)
        {
          v16 = a1 + *(type metadata accessor for RunningTask() + 28);
          v17 = v16 + *(type metadata accessor for Task.Logger(0) + 20);
          v19 = *v17;
          v18 = *(v17 + 8);
          v20 = *(v17 + 16);
          v21 = *(v17 + 24);
          v22 = *(v17 + 32);
          v47 = *(v17 + 40);
          if (v21 < 0)
          {
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v23 = sub_1B0E43988();
            v31 = sub_1B0E458D8();
            if (!os_log_type_enabled(v23, v31))
            {

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              return 1;
            }

            v25 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v37[0] = v36;
            *v25 = 68159235;
            v46 = v31;
            *(v25 + 4) = 2;
            *(v25 + 8) = 256;
            *(v25 + 10) = v19;
            *(v25 + 11) = 2082;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v32 = sub_1B0399D64(v18, v20, v37);

            *(v25 + 13) = v32;
            *(v25 + 21) = 1040;
            *(v25 + 23) = 2;
            *(v25 + 27) = 512;

            *(v25 + 29) = v21;

            *(v25 + 31) = 2160;
            *(v25 + 33) = 0x786F626C69616DLL;
            *(v25 + 41) = 2085;

            *&v40[0] = v22;
            DWORD2(v40[0]) = v47;
            v33 = sub_1B0E44BA8();
            v35 = sub_1B0399D64(v33, v34, v37);

            *(v25 + 43) = v35;
            _os_log_impl(&dword_1B0389000, v23, v46, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Pruning. No mailbox affinity, not targeting mailboxes-to-be-selected.", v25, 0x33u);
            swift_arrayDestroy();
            v30 = v36;
          }

          else
          {
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v23 = sub_1B0E43988();
            v24 = sub_1B0E458D8();
            if (!os_log_type_enabled(v23, v24))
            {

              sub_1B0A92018(v19, v18, v20, v21);
              return 1;
            }

            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *&v40[0] = v26;
            *v25 = 68158210;
            *(v25 + 4) = 2;
            *(v25 + 8) = 256;
            *(v25 + 10) = v19;
            *(v25 + 11) = 2082;
            v27 = sub_1B0399D64(v18, v20, v40);
            v28 = v18;
            v29 = v27;
            sub_1B0A92018(v19, v28, v20, v21);
            *(v25 + 13) = v29;
            _os_log_impl(&dword_1B0389000, v23, v24, "[%.*hhx-%{public}s] Pruning. No mailbox affinity, not targeting mailboxes-to-be-selected.", v25, 0x15u);
            __swift_destroy_boxed_opaque_existential_0Tm(v26);
            v30 = v26;
          }

          MEMORY[0x1B272C230](v30, -1, -1);
          MEMORY[0x1B272C230](v25, -1, -1);

          return 1;
        }
      }
    }
  }

  else
  {
    sub_1B0B7ABB4(v40);
  }

  return 0;
}

uint64_t sub_1B04513B4()
{
  sub_1B0450DB0(v0, v9);
  if (v12)
  {
    if (v12 == 1)
    {
      v1 = v10;
      v2 = v11;
      sub_1B0450C74(v9, v6);
      if ((v2 & 1) == 0)
      {
        v4 = v7;
        v5 = v8;
        __swift_project_boxed_opaque_existential_0(v6, v7);
        (*(v5 + 32))(&v13, v4, v5);
        v14 = v13;
        sub_1B039E440(&v14);
        __swift_destroy_boxed_opaque_existential_0Tm(v6);
        return v1;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v6);
    }
  }

  else
  {
    sub_1B0B7ABB4(v9);
  }

  return 0;
}

uint64_t sub_1B0451498(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B0E46C28();
  sub_1B0E461D8();
  v7 = sub_1B0E46CB8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *a2;
    do
    {
      sub_1B03D0A20(*(v5 + 48) + 48 * v9, &v19);
      if (v19 == v11)
      {
        v12 = MEMORY[0x1B27282E0](&v20, a2 + 8);
        sub_1B03B04BC(&v19);
        if (v12)
        {
          sub_1B03B04BC(a2);
          sub_1B03D0A20(*(v5 + 48) + 48 * v9, a1);
          return 0;
        }
      }

      else
      {
        sub_1B03B04BC(&v19);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B03D0A20(a2, &v19);
  v18 = *v3;
  sub_1B0451674(&v19, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  v16 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v16;
  a1[2] = *(a2 + 32);
  return 1;
}

uint64_t sub_1B0451674(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_1B0B054C8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1B0B07C38();
      goto LABEL_15;
    }

    sub_1B0B09AE4(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1B0E46C28();
  sub_1B0E461D8();
  result = sub_1B0E46CB8();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = *v6;
    do
    {
      sub_1B03D0A20(*(v9 + 48) + 48 * a2, &v21);
      if (v21 == v13)
      {
        v14 = MEMORY[0x1B27282E0](&v22, v6 + 8);
        result = sub_1B03B04BC(&v21);
        if (v14)
        {
          result = sub_1B0E46B98();
          __break(1u);
          break;
        }
      }

      else
      {
        result = sub_1B03B04BC(&v21);
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v16 = (*(v15 + 48) + 48 * a2);
  v17 = *(v6 + 16);
  *v16 = *v6;
  v16[1] = v17;
  v16[2] = *(v6 + 32);
  v18 = *(v15 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v20;
  }

  return result;
}

uint64_t sub_1B0451868()
{
  if (qword_1EB6DDF28 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

_DWORD *sub_1B04518C4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void *sub_1B0451A90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = _s18InProgressMessagesVMa(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B0451BC0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t sub_1B0451D10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s18InProgressMessagesVMa(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B0451E64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B0451ED8();
  result = MEMORY[0x1B2727570](v2, &type metadata for SyncStep, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B03BDD7C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1B0451ED8()
{
  result = qword_1EB6DD1C0;
  if (!qword_1EB6DD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD1C0);
  }

  return result;
}

unint64_t sub_1B0451F2C()
{
  v2 = qword_1EB6DE980;
  if (!qword_1EB6DE980)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE980);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0451FA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0451FE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_1B045202C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B0E46A78() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B04520BC(uint64_t a1, uint64_t a2)
{
  v12 = sub_1B03B1F78(a1);
  v2 = sub_1B03B1F78(a2);
  result = v12;
  if (v12 != v2)
  {
    v9 = 0;
    return v9 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v9 = 1;
    return v9 & 1;
  }

  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; (i & 0x8000000000000000) == 0; ++i)
    {
      if (i >= v12)
      {
        goto LABEL_22;
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      has_malloc_size = _swift_stdlib_has_malloc_size();
      sub_1B071D0C4(i, has_malloc_size & 1, a1);
      v7 = sub_1B071D114(i, has_malloc_size & 1, a1);
      v6 = _swift_stdlib_has_malloc_size();
      sub_1B071D0C4(i, v6 & 1, a2);
      result = sub_1B071D114(i, v6 & 1, a2);
      if (v7 != result)
      {
        v9 = 0;
        return v9 & 1;
      }

      if (i + 1 == v12)
      {
        v9 = 1;
        return v9 & 1;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static MailboxName.== infix(_:_:)(uint64_t result, int a2, uint64_t a3, int a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (!v4 || result == a3)
  {
    return 1;
  }

  v5 = (result + 32);
  v6 = (a3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B04522DC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) | (*(a1 + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)))
  {
    return sub_1B04520BC(*a1, *a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0452308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0450DB0(a1, v14);
  if (!v15)
  {
    sub_1B0B7ABB4(v14);
    goto LABEL_5;
  }

  if (v15 != 1)
  {
LABEL_5:
    v6 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  sub_1B0450C74(v14, v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_0(v11, v12);
  (*(v5 + 32))(&v16, v4, v5);
  v6 = v17;
  v7 = v18;
  v19 = v16;
  sub_1B039E440(&v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
LABEL_6:
  result = type metadata accessor for RunningTask();
  v9 = a1 + *(result + 36);
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  return result;
}

char *sub_1B04523F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4380, &qword_1B0EC50C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B04524FC(char *a1, int64_t a2, char a3)
{
  result = sub_1B04523F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B045251C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B0452620(char *a1, int64_t a2, char a3)
{
  result = sub_1B045251C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1B0452640(unint64_t result)
{
  if (result >= 2)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

unint64_t sub_1B0452650(NSObject *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void, void, void, void, void), uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8, __int128 a9, unsigned __int8 a10, uint64_t a11, unint64_t a12)
{
  v229 = a8;
  v228 = a7;
  v225 = a5;
  v226 = a6;
  v210 = a3;
  v231 = a2;
  v224 = a1;
  v13 = a12;
  LODWORD(v279) = a10;
  v14 = type metadata accessor for MailboxSyncState();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v204 = &v197[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v222 = type metadata accessor for Command();
  v17 = *(v222 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v222);
  v21 = &v197[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v215 = &v197[-v22];
  v221 = type metadata accessor for ClientCommand(0);
  v23 = *(v221 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v221);
  v205 = &v197[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x1EEE9AC00](v25);
  v206 = &v197[-v28];
  MEMORY[0x1EEE9AC00](v27);
  v209 = &v197[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v202 = &v197[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x1EEE9AC00](v32);
  v201 = &v197[-v35];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v207 = &v197[-v37];
  v38 = MEMORY[0x1EEE9AC00](v36);
  v214 = &v197[-v39];
  MEMORY[0x1EEE9AC00](v38);
  v213 = &v197[-v40];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BD0, &qword_1B0EC9300);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v200 = &v197[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v43);
  v212 = &v197[-v45];
  v276 = a9;
  v46 = v225;
  v47 = v231;
  LOBYTE(v277) = v279;
  *(&v277 + 1) = a11;
  v278 = a12;
  v232 = a11;
  v48 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0452640(a12);
  v211 = v21;
  v203 = v21 + 8;
  v220 = (v23 + 48);
  v216 = (v17 + 56);
  v208 = (v23 + 56);
  v223 = a12;
  v279 = a4;
  while (1)
  {
    while (1)
    {
      v50 = swift_allocObject();
      v52 = v228;
      v51 = v229;
      *(v50 + 16) = v226;
      *(v50 + 24) = v52;
      *(v50 + 32) = v51;
      v53 = v277;
      *(v50 + 40) = v276;
      *(v50 + 56) = v53;
      *(v50 + 72) = v278;
      sub_1B0450DB0(v46, v250);
      v227 = v50;
      if (v253)
      {
        break;
      }

      sub_1B0450C74(v250, &v236);
      v64 = *(type metadata accessor for RunningTask() + 48);
      v65 = *(v46 + v64);
      *(v46 + v64) = v65 + 1;
      v66 = *(v46 + 48);
      v217 = *(v46 + 56);
      v218 = v66;
      v67 = *(&v237 + 1);
      v68 = v238;
      __swift_mutable_project_boxed_opaque_existential_1(&v236, *(&v237 + 1));
      v69 = *(v68 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v13);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v13);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v13);
      v219 = v65;
      v70 = v213;
      v69(v65 & 0xFFFFFF, v218, v217, v67, v68);
      v71 = v214;
      sub_1B03B5C80(v70, v214, &qword_1EB6E4BC8, &qword_1B0EC92F8);
      if ((*v220)(v71, 1, v221) == 1)
      {
        sub_1B0398EFC(v70, &qword_1EB6E4BC8, &qword_1B0EC92F8);
        v72 = v212;
        (*v216)(v212, 1, 1, v222);
      }

      else
      {
        v73 = v209;
        sub_1B0423C18(v71, v209, type metadata accessor for ClientCommand);
        v72 = v212;
        sub_1B0390340(v73, v212, type metadata accessor for ClientCommand);
        v74 = v222;
        swift_storeEnumTagMultiPayload();
        (*v216)(v72, 0, 1, v74);
        sub_1B0453E78(v73, type metadata accessor for ClientCommand);
        sub_1B0398EFC(v70, &qword_1EB6E4BC8, &qword_1B0EC92F8);
      }

      v75 = v230;
      v76 = v224;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v13 = v223;
      sub_1B0452640(v223);
      v46 = v225;
      v77 = v75;
      v78 = sub_1B0B7ACA4(v72, v219 & 0xFFFFFF, v225, v76, v226, v228, v229, &v276);

      sub_1B03C81E4(v13);
      sub_1B0398EFC(v72, &qword_1EB6E4BD0, &qword_1B0EC9300);
      v48 = v279;
      v230 = v77;
      if (v77)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v236);

        goto LABEL_55;
      }

      if (v78 < 2u)
      {
        sub_1B0B7ABB4(v46);
        sub_1B03D2CA8(&v236, v46);
        *(v46 + 45) = 0;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v236);

      sub_1B03C81E4(v13);

      sub_1B03C81E4(v13);
      v47 = v231;
      v49 = v78;
      if (v78)
      {
LABEL_48:
        v151 = v49 == 1;
        goto LABEL_51;
      }
    }

    if (v253 != 1)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v13);

      v151 = 1;
LABEL_51:
      v62 = v224;
      goto LABEL_58;
    }

    v54 = v251;
    if (v252)
    {
      sub_1B0450C74(v250, &v236);
      v55 = *(&v237 + 1);
      v56 = v238;
      __swift_project_boxed_opaque_existential_0(&v236, *(&v237 + 1));
      v57 = *(v56 + 32);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v13);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v13);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v13);
      v57(&v254, v55, v56);
      v58 = v255;
      LODWORD(v56) = v256;
      v271 = v254;
      sub_1B039E440(&v271);
      v59 = v215;
      *v215 = v54;
      v60 = 1;
      *(v59 + 4) = 1;
      *(v59 + 1) = v58;
      v59[4] = v56;
      swift_storeEnumTagMultiPayload();
      sub_1B0390340(v59, v211, type metadata accessor for Command);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E68, &unk_1B0EDC5C0);
          v120 = *&v203[*(v119 + 48)];
        }

        v121 = v205;
        sub_1B0423C18(v211, v205, type metadata accessor for ClientCommand);
        v122 = v121;
        v63 = v207;
        sub_1B0423C18(v122, v207, type metadata accessor for ClientCommand);
        v60 = 0;
        v62 = v224;
        v46 = v225;
        v47 = v231;
        v48 = v279;
      }

      else
      {
        if ((EnumCaseMultiPayload - 2) < 2)
        {
          sub_1B0453E78(v211, type metadata accessor for Command);
        }

        v62 = v224;
        v46 = v225;
        v47 = v231;
        v48 = v279;
        v63 = v207;
      }

      v123 = v60;
      v124 = v221;
      (*v208)(v63, v123, 1, v221);
      if ((*v220)(v63, 1, v124) == 1)
      {
        sub_1B0398EFC(v63, &qword_1EB6E4BC8, &qword_1B0EC92F8);
      }

      else
      {
        v125 = v206;
        sub_1B0423C18(v63, v206, type metadata accessor for ClientCommand);
        v126 = *(v226 + 272);
        v127 = *(v226 + 280);
        v128 = *(v226 + 264);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        LOBYTE(v128) = sub_1B0B7D688(v125, v128, v126);

        sub_1B0453E78(v125, type metadata accessor for ClientCommand);
        if ((v128 & 1) == 0)
        {
          sub_1B0453E78(v215, type metadata accessor for Command);
          goto LABEL_80;
        }
      }

      v129 = v215;
      v130 = v230;
      v131 = v228(v215, &v276);
      v230 = v130;
      if (v130)
      {
        sub_1B0453E78(v129, type metadata accessor for Command);
        __swift_destroy_boxed_opaque_existential_0Tm(&v236);

LABEL_54:

        v13 = v223;
LABEL_55:
        sub_1B03C81E4(v13);

        sub_1B03C81E4(v13);
        goto LABEL_63;
      }

      v133 = v131;
      v134 = v132;
      sub_1B0453E78(v129, type metadata accessor for Command);
      if ((v134 & 1) == 0)
      {
        sub_1B0B7ABB4(v46);
        sub_1B03D2CA8(&v236, v46);
        *(v46 + 40) = v133;
        *(v46 + 44) = 256;
        v135 = v46 + *(type metadata accessor for RunningTask() + 52);
        v137 = *v135;
        v136 = *(v135 + 8);
        v138 = *(&v237 + 1);
        v139 = v238;
        __swift_project_boxed_opaque_existential_0(&v236, *(&v237 + 1));
        (*(v139 + 32))(&v263, v138, v139);
        v140 = v264;
        v141 = v265;
        v270 = v263;
        sub_1B039E440(&v270);
        v142 = *(&v237 + 1);
        v143 = v238;
        __swift_project_boxed_opaque_existential_0(&v236, *(&v237 + 1));
        v144 = (*(v143 + 48))(v142, v143);
        v137(v231, v140, v141, v144);
        v48 = v279;
        v47 = v231;

        v46 = v225;

        __swift_destroy_boxed_opaque_existential_0Tm(&v236);

        v13 = v223;
        sub_1B03C81E4(v223);

        sub_1B03C81E4(v13);
        continue;
      }

      v13 = v223;
LABEL_80:
      __swift_destroy_boxed_opaque_existential_0Tm(&v236);

      sub_1B03C81E4(v13);

      sub_1B03C81E4(v13);
      v151 = 0;
      goto LABEL_58;
    }

    sub_1B0450C74(v250, v247);
    v79 = v248;
    v80 = v249;
    __swift_project_boxed_opaque_existential_0(v247, v248);
    v81 = *(v80 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0452640(v13);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0452640(v13);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0452640(v13);
    v81(&v257, v79, v80);
    v274 = v258;
    v275 = v259;
    v273 = v257;
    sub_1B039E440(&v273);
    if (*(v231 + 192) != 1)
    {
      v62 = v224;
      v46 = v225;
      v48 = v279;
      goto LABEL_57;
    }

    v82 = *(v231 + 168);
    v83 = *(v82 + 16);
    v62 = v224;
    v48 = v279;
    if (!v83)
    {
      break;
    }

    v84 = 0;
    v85 = v82 + 32;
    v46 = v225;
    v86 = v54;
    while (1)
    {
      v87 = (v85 + 176 * v84);
      v88 = *v87;
      v89 = v87[2];
      v237 = v87[1];
      v238 = v89;
      v236 = v88;
      v90 = v87[3];
      v91 = v87[4];
      v92 = v87[6];
      v241 = v87[5];
      v242 = v92;
      v239 = v90;
      v240 = v91;
      v93 = v87[7];
      v94 = v87[8];
      v95 = v87[10];
      v245 = v87[9];
      v246 = v95;
      v243 = v93;
      v244 = v94;
      v96 = v242;
      if (v242)
      {
        v97 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v86 = v54;
        v98 = *(v96 + v97);
        v48 = v279;
      }

      else
      {
        v98 = 0;
      }

      if ((DWORD2(v237) | (DWORD2(v237) << 32)) == (v275 | (v275 << 32)))
      {
        v99 = *(v237 + 16);
        if (v99 == *(v274 + 16))
        {
          if (v99 && v237 != v274)
          {
            v100 = (v237 + 32);
            v101 = (v274 + 32);
            while (*v100 == *v101)
            {
              ++v100;
              ++v101;
              if (!--v99)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_19;
          }

LABEL_30:
          if (v96 && v98 == v86)
          {
            break;
          }
        }
      }

LABEL_19:
      if (++v84 == v83)
      {
        goto LABEL_57;
      }
    }

    v102 = v96 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v103 = _s13SelectedStateV7WrappedVMa(0);
    sub_1B0390340(v102 + *(v103 + 20), v204, type metadata accessor for MailboxSyncState);
    v104 = v248;
    v105 = v249;
    __swift_project_boxed_opaque_existential_0(v247, v248);
    v106 = *(v105 + 32);
    sub_1B03A35B8(&v236, v233);

    v106(&v260, v104, v105);
    v218 = v261;
    v198 = v262;
    v272 = v260;
    sub_1B039E440(&v272);
    v107 = *(type metadata accessor for RunningTask() + 48);
    LODWORD(v106) = *(v46 + v107);
    *(v46 + v107) = v106 + 1;
    v108 = *(v46 + 48);
    v109 = *(v46 + 56);
    v217 = v248;
    v110 = v249;
    __swift_mutable_project_boxed_opaque_existential_1(v247, v248);
    v199 = *(v110 + 80);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v219 = v106;
    v111 = v106 & 0xFFFFFF;
    v112 = v201;
    v199(v111, v108, v109, v204, v224, v217, v110);

    v113 = v202;
    sub_1B0B7B704(v112, v202);
    if ((*v220)(v113, 1, v221) == 1)
    {

      v114 = 1;
      v115 = v230;
      v47 = v231;
      v116 = v222;
      v117 = v227;
      v118 = v200;
    }

    else
    {
      v145 = v209;
      sub_1B0423C18(v113, v209, type metadata accessor for ClientCommand);
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E68, &unk_1B0EDC5C0);
      v118 = v200;
      v147 = v200 + *(v146 + 48);
      sub_1B0423C18(v145, v200, type metadata accessor for ClientCommand);
      *v147 = v54;
      v147[4] = 0;
      *(v147 + 1) = v218;
      *(v147 + 4) = v198;
      v116 = v222;
      swift_storeEnumTagMultiPayload();
      v114 = 0;
      v115 = v230;
      v47 = v231;
      v117 = v227;
    }

    (*v216)(v118, v114, 1, v116);
    v148 = v115;
    v149 = sub_1B0B7B774(v118, v219 & 0xFFFFFF, sub_1B0B7B6E0, v117, v46, v224);
    v150 = v118;
    v48 = v279;
    v230 = v148;
    if (v148)
    {
      sub_1B0398EFC(v150, &qword_1EB6E4BD0, &qword_1B0EC9300);
      sub_1B0453E78(v204, type metadata accessor for MailboxSyncState);

      sub_1B03A3614(&v236);
      sub_1B039E440(&v274);
      __swift_destroy_boxed_opaque_existential_0Tm(v247);

      goto LABEL_54;
    }

    sub_1B0398EFC(v150, &qword_1EB6E4BD0, &qword_1B0EC9300);
    if (v149 < 2u)
    {
      sub_1B0B7ABB4(v46);
      sub_1B03D2CA8(v247, v46);
      *(v46 + 40) = v54;
      *(v46 + 44) = 256;
    }

    sub_1B0453E78(v204, type metadata accessor for MailboxSyncState);

    sub_1B03A3614(&v236);
    sub_1B039E440(&v274);
    __swift_destroy_boxed_opaque_existential_0Tm(v247);

    v13 = v223;
    sub_1B03C81E4(v223);

    sub_1B03C81E4(v13);
    v49 = v149;
    if (v149)
    {
      goto LABEL_48;
    }
  }

  v46 = v225;
LABEL_57:
  sub_1B039E440(&v274);
  __swift_destroy_boxed_opaque_existential_0Tm(v247);

  v13 = v223;
  sub_1B03C81E4(v223);

  sub_1B03C81E4(v13);
  v151 = 0;
  v47 = v231;
LABEL_58:
  v152 = v210;
  do
  {
    v153 = sub_1B04547FC(v62, v47, v152, v48);
  }

  while (!v153);
  if (v153 != 1 || !v151 || *(*(v46 + 48) + 16))
  {
LABEL_63:

    v154 = v13;
    return sub_1B03C81E4(v154);
  }

  v156 = v62 + *(type metadata accessor for Task.Logger(0) + 20);
  v157 = *(v156 + 1);
  v229 = *v156;
  v279 = v157;
  v158 = *(v156 + 2);
  v159 = *(v156 + 3);
  v160 = *(v156 + 4);
  v161 = *(v156 + 10);
  if (v159 < 0)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v171 = sub_1B0E43988();
    LODWORD(v227) = sub_1B0E45908();
    if (os_log_type_enabled(v171, v227))
    {
      v172 = swift_slowAlloc();
      v224 = v171;
      v173 = v172;
      v226 = swift_slowAlloc();
      v233[0] = v226;
      *v173 = 68159235;
      *(v173 + 4) = 2;
      *(v173 + 8) = 256;
      *(v173 + 10) = v229;
      *(v173 + 11) = 2082;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v174 = sub_1B0399D64(v279, v158, v233);
      LODWORD(v228) = v161;
      v175 = v174;

      *(v173 + 13) = v175;
      *(v173 + 21) = 1040;
      *(v173 + 23) = 2;
      v46 = v225;
      *(v173 + 27) = 512;

      *(v173 + 29) = v159;

      *(v173 + 31) = 2160;
      *(v173 + 33) = 0x786F626C69616DLL;
      *(v173 + 41) = 2085;

      *&v236 = v160;
      DWORD2(v236) = v228;
      v176 = sub_1B0E44BA8();
      v178 = sub_1B0399D64(v176, v177, v233);

      *(v173 + 43) = v178;
      v179 = v224;
      _os_log_impl(&dword_1B0389000, v224, v227, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking task as complete.", v173, 0x33u);
      v180 = v226;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v180, -1, -1);
      MEMORY[0x1B272C230](v173, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v162 = sub_1B0E43988();
    v163 = sub_1B0E45908();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v227 = v160;
      LODWORD(v228) = v161;
      v166 = v165;
      *&v236 = v165;
      *v164 = 68158210;
      *(v164 + 4) = 2;
      *(v164 + 8) = 256;
      v226 = v159;
      v167 = v229;
      *(v164 + 10) = v229;
      *(v164 + 11) = 2082;
      v168 = v279;
      v169 = sub_1B0399D64(v279, v158, &v236);
      sub_1B0A92018(v167, v168, v158, v226);
      *(v164 + 13) = v169;
      v46 = v225;
      _os_log_impl(&dword_1B0389000, v162, v163, "[%.*hhx-%{public}s] Marking task as complete.", v164, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v166);
      MEMORY[0x1B272C230](v166, -1, -1);
      v170 = v164;
      v62 = v224;
      MEMORY[0x1B272C230](v170, -1, -1);
    }

    else
    {

      sub_1B0A92018(v229, v279, v158, v159);
    }

    v13 = v223;
  }

  sub_1B0450DB0(v46, &v236);
  if (!BYTE13(v238))
  {
    sub_1B0450C74(&v236, v233);
    v195 = v234;
    v196 = v235;
    __swift_project_boxed_opaque_existential_0(v233, v234);
    (*(v196 + 88))(v231, v62, v195, v196);
    sub_1B0B7ABB4(v46);
    *v46 = 0u;
    *(v46 + 16) = 0u;
    *(v46 + 29) = 0u;
    *(v46 + 45) = 2;
    __swift_destroy_boxed_opaque_existential_0Tm(v233);
    goto LABEL_63;
  }

  if (BYTE13(v238) != 1)
  {
    goto LABEL_63;
  }

  sub_1B0450C74(&v236, v233);
  v181 = v46 + *(type metadata accessor for RunningTask() + 56);
  v182 = *(v181 + 8);
  v279 = *v181;
  v183 = v46;
  v184 = v234;
  v185 = v235;
  __swift_project_boxed_opaque_existential_0(v233, v234);
  (*(v185 + 32))(&v266, v184, v185);
  v186 = v267;
  v187 = v268;
  v269 = v266;
  sub_1B039E440(&v269);
  v188 = v62;
  v189 = v234;
  v190 = v235;
  __swift_project_boxed_opaque_existential_0(v233, v234);
  v191 = (*(v190 + 48))(v189, v190);
  v192 = v231;
  v279(v231, v186, v187, v191, v188);

  v193 = v234;
  v194 = v235;
  __swift_project_boxed_opaque_existential_0(v233, v234);
  (*(v194 + 128))(v192, v188, v193, v194);
  sub_1B0B7ABB4(v183);
  *v183 = 0u;
  *(v183 + 16) = 0u;
  *(v183 + 29) = 0u;
  *(v183 + 45) = 2;
  __swift_destroy_boxed_opaque_existential_0Tm(v233);

  v154 = v223;
  return sub_1B03C81E4(v154);
}

uint64_t sub_1B0453E30()
{
  v1 = *(v0 + 64);

  if (*(v0 + 72) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B0453E78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0453ED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ConnectionState.hasMailboxSelectedOrSelectionIsInProgress(_:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionState();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v34 - v11;
  sub_1B038CA0C(v3, v34 - v11, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B038C704(v12, type metadata accessor for ConnectionState);
    goto LABEL_9;
  }

  memcpy(v36, v12, sizeof(v36));
  v13 = *(v12 + 21);
  v45 = *(v12 + 20);
  v46 = v13;
  v47 = *(v12 + 176);
  v14 = *(v12 + 17);
  v41 = *(v12 + 16);
  v42 = v14;
  v15 = *(v12 + 19);
  v43 = *(v12 + 18);
  v44 = v15;
  v16 = *(v12 + 13);
  v37 = *(v12 + 12);
  v38 = v16;
  v17 = *(v12 + 15);
  v39 = *(v12 + 14);
  v40 = v17;
  if (sub_1B0BE2780(&v37) != 2)
  {
    sub_1B0BE278C(v36);
    goto LABEL_9;
  }

  v18 = sub_1B03DB9A4(&v37);
  v19 = *v18;
  v20 = *(v18 + 8);
  v34[0] = *&v36[192];
  v34[1] = *&v36[208];
  v34[4] = *&v36[256];
  v34[5] = *&v36[272];
  v34[2] = *&v36[224];
  v34[3] = *&v36[240];
  v35 = *&v36[352];
  v34[8] = *&v36[320];
  v34[9] = *&v36[336];
  v34[6] = *&v36[288];
  v34[7] = *&v36[304];
  v21 = sub_1B03DB9A4(v34);
  v22 = *v21;
  v23 = v21[2];
  v24 = v21[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0BE278C(v36);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0BE27E0(&v36[192]);
  if ((v20 | (v20 << 32)) != (a2 | (a2 << 32)))
  {

LABEL_9:
    sub_1B038CA0C(v3, v10, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v36, v10, sizeof(v36));
      v27 = *(v10 + 21);
      v45 = *(v10 + 20);
      v46 = v27;
      v47 = *(v10 + 176);
      v28 = *(v10 + 17);
      v41 = *(v10 + 16);
      v42 = v28;
      v29 = *(v10 + 19);
      v43 = *(v10 + 18);
      v44 = v29;
      v30 = *(v10 + 13);
      v37 = *(v10 + 12);
      v38 = v30;
      v31 = *(v10 + 15);
      v39 = *(v10 + 14);
      v40 = v31;
      if (sub_1B0BE2780(&v37) == 1)
      {
        v32 = sub_1B03DB9A4(&v37);
        if ((*(v32 + 8) | (*(v32 + 8) << 32)) == (a2 | (a2 << 32)))
        {
          v26 = sub_1B04520BC(*v32, a1);
          sub_1B0BE278C(v36);
          return v26 & 1;
        }
      }

      sub_1B0BE278C(v36);
    }

    else
    {
      sub_1B038C704(v10, type metadata accessor for ConnectionState);
    }

    v26 = 0;
    return v26 & 1;
  }

  v25 = sub_1B04520BC(v19, a1);

  if ((v25 & 1) == 0)
  {
    goto LABEL_9;
  }

  v26 = 1;
  return v26 & 1;
}