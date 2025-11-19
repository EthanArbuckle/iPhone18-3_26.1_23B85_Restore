uint64_t sub_1B0BE7848(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  if (sub_1B03B6298(*(a1 + 8), *(a2 + 8)))
  {
    v4 = sub_1B03B6298(v3, v2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t ConnectionCommandIDSet.isDisjoint(with:)(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a1 == a4)
  {
    return sub_1B0B8715C(a5, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t ConnectionCommandIDSet.normalCommandCount.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) <= *(a2 + 16) >> 3)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BE7E2C(a3);
    v5 = a2;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = sub_1B0BE7F24(a3, a2);
  }

  v6 = *(v5 + 16);

  return v6;
}

uint64_t ConnectionCommandIDSet.makeIterator()(int a1, uint64_t a2, uint64_t a3)
{
  v6 = -1 << *(a2 + 32);
  v7 = a2 + 56;
  v8 = ~v6;
  v9 = -v6;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a2 + 56);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = 0;
  v12[6] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5498, &qword_1B0ED0490);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B0BE83AC;
  *(v14 + 24) = v13;
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v14;
}

uint64_t sub_1B0BE7A7C@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  result = swift_beginAccess();
  v7 = a1[5];
  v8 = a1[6];
  if (v8)
  {
    v9 = a1[5];
LABEL_10:
    v13 = 0;
    v14 = *(*(a1[2] + 48) + ((v9 << 8) | (4 * __clz(__rbit64(v8)))));
    a1[5] = v9;
    a1[6] = (v8 - 1) & v8;
    v15 = a2 | (v14 << 32);
LABEL_11:
    *a3 = v15;
    *(a3 + 8) = v13;
  }

  else
  {
    v10 = (a1[4] + 64) >> 6;
    if (v10 <= v7 + 1)
    {
      v11 = v7 + 1;
    }

    else
    {
      v11 = (a1[4] + 64) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v10)
      {
        v15 = 0;
        a1[5] = v12;
        a1[6] = 0;
        v13 = 1;
        goto LABEL_11;
      }

      v8 = *(a1[3] + 8 * v9);
      ++v7;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BE7B60@<X0>(uint64_t *a1@<X8>)
{
  v3 = ConnectionCommandIDSet.makeIterator()(*v1, *(v1 + 8), *(v1 + 16));

  *a1 = v3;
  return result;
}

uint64_t sub_1B0BE7BC0()
{
  v1 = sub_1B0BE89BC(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t sub_1B0BE7C1C(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = ConnectionCommandIDSet.makeIterator()(a4, a5, a6);

  v11 = 0;
  if (!a2 || !a3)
  {
LABEL_11:
    *a1 = v9;
    return v11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_1B0E466E8();
    if (v14)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = v13;
      while (1)
      {
        *a2 = v12;
        if (a3 - 1 == v11)
        {
          break;
        }

        sub_1B0E466E8();
        v12 = v13;
        ++v11;
        ++a2;
        if (v14)
        {
          goto LABEL_11;
        }
      }

      v11 = a3;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BE7CF8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0C0E08C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1B0B93C70(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B0BE7E2C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1B0BE84C8(*(*(v2 + 48) + ((v9 << 8) | (4 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1B0BE7F24(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v49 = a1;
    v50 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v49;
          v16 = v50;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v50 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v49;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v50 << 8) | (4 * v18)));
        v19 = *(v6 + 40);
        sub_1B0E46C28();
        sub_1B0E46C88();
        v20 = sub_1B0E46CB8();
        v21 = -1 << *(v6 + 32);
        v2 = v20 & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v22 = *(v6 + 48);
      if (*(v22 + 4 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v22 + 4 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v53 = v48;
    v54 = v50;
    v55 = v11;
    v52[0] = v49;
    v52[1] = v8;
    v14 = (63 - v21) >> 6;
    v5 = 8 * v14;
    v23 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v6 + 56), v5);
      v43 = sub_1B0BE85DC(v42, v14, v6, v2, v52);

      MEMORY[0x1B272C230](v42, -1, -1);
      v48 = v53;
      v50 = v54;
      v6 = v43;
      goto LABEL_43;
    }

LABEL_18:
    v45 = v14;
    v46 = &v44;
    MEMORY[0x1EEE9AC00](v23);
    v14 = &v44 - v24;
    memcpy(&v44 - v24, (v6 + 56), v5);
    v25 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v26 = v25 - 1;
    v3 = 1;
    v4 = v49;
LABEL_19:
    v47 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v50 << 8) | (4 * v30)));
      v31 = *(v6 + 40);
      sub_1B0E46C28();
      v2 = &v51;
      sub_1B0E46C88();
      v32 = sub_1B0E46CB8();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v6 + 48);
        if (*(v37 + 4 * v34) == v5)
        {
LABEL_20:
          v27 = *(v14 + 8 * v35);
          *(v14 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + 4 * v34) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v50;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v50 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v50 + 1)
    {
      v39 = v50 + 1;
    }

    else
    {
      v39 = v12;
    }

    v50 = v39 - 1;
    v6 = sub_1B0BE87B4(v14, v45, v47, v6);
LABEL_43:
    sub_1B03D91F8();
  }

  else
  {

    v6 = MEMORY[0x1E69E7CD0];
  }

  v40 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1B0BE83AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1B0BE7A7C(*(v1 + 16), *(v1 + 24), a1);
}

unint64_t sub_1B0BE83BC()
{
  result = qword_1EB6E54A0;
  if (!qword_1EB6E54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E54A0);
  }

  return result;
}

unint64_t sub_1B0BE8410()
{
  result = qword_1EB6DCE78;
  if (!qword_1EB6DCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE78);
  }

  return result;
}

unint64_t sub_1B0BE84C8(int a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_1B0E46C28();
  sub_1B0E46C88();
  v5 = sub_1B0E46CB8();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (*(*(v3 + 48) + 4 * v7) != a1)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    v15 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B0C23BAC();
      v13 = v15;
    }

    v9 = *(*(v13 + 48) + 4 * v7);
    sub_1B0B91784(v7);
    v10 = 0;
    *v1 = v15;
  }

  else
  {
LABEL_5:
    v9 = 0;
    v10 = 1;
  }

  return v9 | (v10 << 32);
}

uint64_t sub_1B0BE85DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 8) | (4 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v18 = *(a3 + 40);
    sub_1B0E46C28();
    sub_1B0E46C88();
    result = sub_1B0E46CB8();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 4 * v20) == v17)
      {
LABEL_2:
        v11 = v7[v21];
        v7[v21] = v11 & ~v22;
        if ((v11 & v22) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 4 * v20) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v26 = v12 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_1B0BE87B4(v7, a2, v9, a3);
}

uint64_t sub_1B0BE87B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54B8, ":&\t");
  result = sub_1B0E46228();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_1B0E46C28();
    sub_1B0E46C88();
    result = sub_1B0E46CB8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 4 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B0BE89BC(int a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4308, &qword_1B0EC5050);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size_0(v7);
    v9 = v8 - 32;
    if (v8 < 32)
    {
      v9 = v8 - 25;
    }

    v10 = 2 * (v9 >> 3);
    v7[2] = v6;
    v7[3] = v10;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v10 = *(MEMORY[0x1E69E7CC0] + 24);
  }

  v11 = v7 + 4;
  v12 = v10 >> 1;
  ConnectionCommandIDSet.makeIterator()(a1, a2, a3);
  if (v6)
  {
    v12 -= v6;
    do
    {
      result = sub_1B0E466E8();
      if (v30)
      {
        goto LABEL_37;
      }

      *v11++ = v29;
    }

    while (--v6);
  }

  result = sub_1B0E466E8();
  if ((v30 & 1) == 0)
  {
    v14 = v29;
    while (1)
    {
      if (!v12)
      {
        v15 = v7[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4308, &qword_1B0EC5050);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size_0(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 25;
        }

        v21 = v20 >> 3;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 3);
        v22 = (v18 + 4);
        v23 = v7[3] >> 1;
        if (v7[2])
        {
          if (v18 != v7 || v22 >= &v7[v23 + 4])
          {
            memmove(v18 + 4, v7 + 4, 8 * v23);
          }

          v7[2] = 0;
        }

        v11 = (v22 + 8 * v23);
        v12 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v7 = v18;
      }

      v25 = __OFSUB__(v12--, 1);
      if (v25)
      {
        break;
      }

      *v11++ = v14;
      result = sub_1B0E466E8();
      v14 = v29;
      if (v30)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:

  v26 = v7[3];
  if (v26 < 2)
  {
    return v7;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v12);
  v28 = v27 - v12;
  if (!v25)
  {
    v7[2] = v28;
    return v7;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1B0BE8BE0(uint64_t a1)
{
  v2 = sub_1B0E44578();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1B0BE8FC8();
  sub_1B0E44F08();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54C8, &unk_1B0ED0780);
  v8 = *(a1 + *(result + 36));
  v9 = v28[0];
  v10 = MEMORY[0x1E69E7CC0];
  v11 = 0;
  if (v8)
  {
    v12 = v28[1];
    v13 = (MEMORY[0x1E69E7CC0] + 32);
    do
    {
      v14 = *(v9 + 16);
      if (v12 == v14)
      {
        break;
      }

      if (v12 >= v14)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v15 = *(v9 + v12 + 32);
      if (!v11)
      {
        v16 = *(v10 + 3);
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
        v19 = swift_allocObject();
        v20 = 2 * _swift_stdlib_malloc_size_0(v19) - 64;
        *(v19 + 2) = v18;
        *(v19 + 3) = v20;
        v21 = v19 + 32;
        v22 = *(v10 + 3) >> 1;
        if (*(v10 + 2))
        {
          v23 = v10 + 32;
          if (v19 != v10 || v21 >= &v23[v22])
          {
            memmove(v19 + 32, v23, v22);
          }

          *(v10 + 2) = 0;
        }

        v13 = &v21[v22];
        v11 = (v20 >> 1) - v22;

        v10 = v19;
      }

      v24 = __OFSUB__(v11--, 1);
      if (v24)
      {
        goto LABEL_23;
      }

      *v13++ = v15;
      ++v12;
      --v8;
    }

    while (v8);
  }

  v25 = *(v10 + 3);
  if (v25 < 2)
  {
    return v10;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v11);
  v27 = v26 - v11;
  if (!v24)
  {
    *(v10 + 2) = v27;
    return v10;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B0BE8E14()
{
  result = sub_1B0E466E8();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = 0;
  if ((v18 & 1) == 0)
  {
    v3 = v17;
    v4 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v2)
      {
        v5 = v1[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
        v8 = swift_allocObject();
        v9 = 2 * _swift_stdlib_malloc_size_0(v8) - 64;
        v8[2] = v7;
        v8[3] = v9;
        v10 = (v8 + 4);
        v11 = v1[3] >> 1;
        if (v1[2])
        {
          if (v8 != v1 || v10 >= v1 + v11 + 32)
          {
            memmove(v8 + 4, v1 + 4, v11);
          }

          v1[2] = 0;
        }

        v4 = (v10 + v11);
        v2 = (v9 >> 1) - v11;

        v1 = v8;
      }

      v13 = __OFSUB__(v2--, 1);
      if (v13)
      {
        break;
      }

      *v4++ = v3;
      result = sub_1B0E466E8();
      v3 = v17;
      if (v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v14 = v1[3];
  if (v14 < 2)
  {
    return v1;
  }

  v15 = v14 >> 1;
  v13 = __OFSUB__(v15, v2);
  v16 = v15 - v2;
  if (!v13)
  {
    v1[2] = v16;
    return v1;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1B0BE8FC8()
{
  result = qword_1EB6E54C0;
  if (!qword_1EB6E54C0)
  {
    sub_1B0E44578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E54C0);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0BE9048(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1B0BE9090(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0BE90E4(void *a1, unsigned __int8 *a2)
{
  v42 = a1;
  v51 = _s19CommandOutputBufferV12ContinuationVMa(0);
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54D0, &unk_1B0ED07F0);
  v6 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v8 = (&v40 - v7);
  v52 = _s19CommandOutputBufferV7ElementOMa(0);
  v44 = *(v52 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x1EEE9AC00](v52);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v40 - v13;
  v14 = _s19CommandOutputBufferV7CommandVMa(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &a2[*(type metadata accessor for ConnectionCommand(0) + 20)];
  v20 = *a2;
  LODWORD(a2) = *(a2 + 1);
  v21 = sub_1B0E443C8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v43 = v19;
  v46 = v23;
  v47 = v22;
  v23(v18, v19, v21);
  v24 = &v18[*(v15 + 28)];
  v48 = a2;
  v49 = v20;
  *v24 = v20;
  *(v24 + 1) = a2;
  v18[*(v15 + 32)] = 0;
  v40 = v18;
  v25 = v18;
  v27 = v41;
  v26 = v42;
  sub_1B03D60F8(v25, v41, _s19CommandOutputBufferV7CommandVMa);
  swift_storeEnumTagMultiPayload();
  v28 = *v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v30 = v28[2];
    v29 = v28[3];
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1B0C0C7A8(v29 > 1, v30 + 1, 1, v28);
    }

    v28[2] = v30 + 1;
    v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v44 = *(v44 + 72);
    sub_1B03D6160(v27, v28 + v45 + v44 * v30, _s19CommandOutputBufferV7ElementOMa);
    *v26 = v28;
    v31 = *&v43[*(type metadata accessor for ClientCommand.Encoded() + 20)];
    v43 = *(v31 + 16);
    if (!v43)
    {
      break;
    }

    v26 = 0;
    while (v26 < *(v31 + 16))
    {
      v32 = v46;
      v33 = v31 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v26;
      v34 = *(v50 + 48);
      *v8 = v26;
      v32(v8 + v34, v33, v21);
      v32(v5, v8 + v34, v21);
      v35 = v51;
      v36 = &v5[*(v51 + 20)];
      v37 = v48;
      *v36 = v49;
      *(v36 + 1) = v37;
      *&v5[*(v35 + 24)] = v26;
      sub_1B03D60F8(v5, v12, _s19CommandOutputBufferV12ContinuationVMa);
      swift_storeEnumTagMultiPayload();
      v27 = v28[2];
      v38 = v28[3];
      if (v27 >= v38 >> 1)
      {
        v28 = sub_1B0C0C7A8(v38 > 1, v27 + 1, 1, v28);
      }

      ++v26;
      sub_1B03DA84C(v5, _s19CommandOutputBufferV12ContinuationVMa);
      v28[2] = v27 + 1;
      sub_1B03D6160(v12, v28 + v45 + v27 * v44, _s19CommandOutputBufferV7ElementOMa);
      sub_1B0BEA538(v8);
      if (v43 == v26)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    v28 = sub_1B0C0C7A8(0, v28[2] + 1, 1, v28);
  }

LABEL_10:
  *v42 = v28;
  return sub_1B03DA84C(v40, _s19CommandOutputBufferV7CommandVMa);
}

BOOL sub_1B0BE95B0(void (*a1)(uint64_t *))
{
  v3 = _s19CommandOutputBufferV7ElementOMa(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(*v1 + 16);
  if (v9 != 1)
  {
    goto LABEL_5;
  }

  sub_1B03D60F8(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1B03DA84C(v7, _s19CommandOutputBufferV7ElementOMa);
  if (EnumCaseMultiPayload != 2)
  {
    v9 = *(v8 + 16);
LABEL_5:
    v11 = v9 != 0;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:
  a1(v1);
  return v11;
}

uint64_t sub_1B0BE96F8(void *a1, unsigned __int8 *a2)
{
  v41 = a1;
  v3 = sub_1B0E443C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s19CommandOutputBufferV7ElementOMa(0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = _s19CommandOutputBufferV7CommandVMa(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &a2[*(type metadata accessor for ConnectionCommand(0) + 20)];
  v21 = *a2;
  LODWORD(a2) = *(a2 + 1);
  v39 = v4;
  v22 = *(v4 + 16);
  v42 = v20;
  v45 = v22;
  (v22)(v19);
  v23 = &v19[*(v16 + 28)];
  v46 = a2;
  v47 = v21;
  *v23 = v21;
  v24 = v41;
  *(v23 + 1) = a2;
  v19[*(v16 + 32)] = 1;
  v40 = v19;
  sub_1B03D60F8(v19, v14, _s19CommandOutputBufferV7CommandVMa);
  v48 = v8;
  swift_storeEnumTagMultiPayload();
  v25 = *v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1B0C0C7A8(0, v25[2] + 1, 1, v25);
  }

  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1B0C0C7A8(v26 > 1, v27 + 1, 1, v25);
  }

  v25[2] = v27 + 1;
  v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v43 = *(v43 + 72);
  sub_1B03D6160(v14, v25 + v44 + v43 * v27, _s19CommandOutputBufferV7ElementOMa);
  *v24 = v25;
  v28 = *&v42[*(type metadata accessor for ClientCommand.Encoded() + 20)];
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = (v28 + ((*(v39 + 80) + 32) & ~*(v39 + 80)));
    v42 = *(v39 + 72);
    v31 = (v39 + 8);
    do
    {
      v32 = v45;
      v45(v7, v30, v3);
      v32(v12, v7, v3);
      v33 = &v12[*(_s19CommandOutputBufferV8IdleDoneVMa(0) + 20)];
      v34 = v46;
      *v33 = v47;
      *(v33 + 1) = v34;
      swift_storeEnumTagMultiPayload();
      v36 = v25[2];
      v35 = v25[3];
      if (v36 >= v35 >> 1)
      {
        v25 = sub_1B0C0C7A8(v35 > 1, v36 + 1, 1, v25);
      }

      (*v31)(v7, v3);
      v25[2] = v36 + 1;
      sub_1B03D6160(v12, v25 + v44 + v36 * v43, _s19CommandOutputBufferV7ElementOMa);
      v30 = &v42[v30];
      --v29;
    }

    while (v29);
    *v41 = v25;
  }

  return sub_1B03DA84C(v40, _s19CommandOutputBufferV7CommandVMa);
}

uint64_t sub_1B0BE9B24(void **a1, uint64_t a2)
{
  v4 = _s19CommandOutputBufferV7ElementOMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s19CommandOutputBufferV9HandshakeVMa(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 + *(type metadata accessor for HandshakeReply.Encoded() + 20);
  v15 = *v14;
  v16 = *(v14 + 4);
  v17 = sub_1B0E443C8();
  (*(*(v17 - 8) + 16))(v13, a2, v17);
  v18 = &v13[*(v10 + 28)];
  *v18 = v15;
  *(v18 + 1) = v16;
  sub_1B03D60F8(v13, v8, _s19CommandOutputBufferV9HandshakeVMa);
  swift_storeEnumTagMultiPayload();
  v19 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1B0C0C7A8(0, v19[2] + 1, 1, v19);
  }

  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1B0C0C7A8(v20 > 1, v21 + 1, 1, v19);
  }

  sub_1B03DA84C(v13, _s19CommandOutputBufferV9HandshakeVMa);
  v19[2] = v21 + 1;
  result = sub_1B03D6160(v8, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, _s19CommandOutputBufferV7ElementOMa);
  *a1 = v19;
  return result;
}

uint64_t sub_1B0BE9D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  done = _s19CommandOutputBufferV8IdleDoneVMa(0);
  v5 = *(*(done - 8) + 64);
  MEMORY[0x1EEE9AC00](done - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s19CommandOutputBufferV9HandshakeVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s19CommandOutputBufferV12ContinuationVMa(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s19CommandOutputBufferV7CommandVMa(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s19CommandOutputBufferV7ElementOMa(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D60F8(v2, v23, _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B03D6160(v23, v7, _s19CommandOutputBufferV8IdleDoneVMa);
      v19 = v7;
    }

    else
    {
      sub_1B03D6160(v23, v11, _s19CommandOutputBufferV9HandshakeVMa);
      v19 = v11;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1B03D6160(v23, v15, _s19CommandOutputBufferV12ContinuationVMa);
    v19 = v15;
  }

  else
  {
    sub_1B03D6160(v23, v19, _s19CommandOutputBufferV7CommandVMa);
  }

  v25 = sub_1B0E443C8();
  return (*(*(v25 - 8) + 32))(a1, v19, v25);
}

unint64_t sub_1B0BEA028()
{
  v1 = v0;
  done = _s19CommandOutputBufferV8IdleDoneVMa(0);
  v2 = *(*(done - 8) + 64);
  MEMORY[0x1EEE9AC00](done);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s19CommandOutputBufferV9HandshakeVMa(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s19CommandOutputBufferV12ContinuationVMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s19CommandOutputBufferV7CommandVMa(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s19CommandOutputBufferV7ElementOMa(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D60F8(v1, v20, _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B03D6160(v20, v4, _s19CommandOutputBufferV8IdleDoneVMa);
      v27 = &v4[*(done + 20)];
      v23 = *v27;
      v24 = *(v27 + 1);
      v25 = _s19CommandOutputBufferV8IdleDoneVMa;
      v26 = v4;
    }

    else
    {
      sub_1B03D6160(v20, v8, _s19CommandOutputBufferV9HandshakeVMa);
      v29 = &v8[*(v5 + 20)];
      v23 = *v29;
      v24 = *(v29 + 1);
      v25 = _s19CommandOutputBufferV9HandshakeVMa;
      v26 = v8;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1B03D6160(v20, v12, _s19CommandOutputBufferV12ContinuationVMa);
    v28 = &v12[*(v9 + 20)];
    v23 = *v28;
    v24 = *(v28 + 1);
    v25 = _s19CommandOutputBufferV12ContinuationVMa;
    v26 = v12;
  }

  else
  {
    sub_1B03D6160(v20, v16, _s19CommandOutputBufferV7CommandVMa);
    v22 = &v16[*(v13 + 20)];
    v23 = *v22;
    v24 = *(v22 + 1);
    v25 = _s19CommandOutputBufferV7CommandVMa;
    v26 = v16;
  }

  sub_1B03DA84C(v26, v25);
  return v23 | (v24 << 32);
}

uint64_t sub_1B0BEA368()
{
  v0 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v0 != _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    return 0;
  }

  sub_1B0E443C8();
  sub_1B075CEE0();
  sub_1B0E45668();
  v1 = sub_1B0E456C8();
  if (v4 == v3)
  {
    return 1;
  }

  MEMORY[0x1EEE9AC00](v1);
  sub_1B0E44328();
  return v4;
}

uint64_t sub_1B0BEA47C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B0E44328();
}

uint64_t sub_1B0BEA4D8@<X0>(const void *a1@<X0>, BOOL *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  result = memcmp(v6, a1, v7);
  *a2 = result == 0;
  return result;
}

uint64_t sub_1B0BEA538(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54D0, &unk_1B0ED07F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B0BEA5A0()
{
  result = qword_1EB6E54D8;
  if (!qword_1EB6E54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E54D8);
  }

  return result;
}

unint64_t sub_1B0BEA5F4()
{
  result = qword_1EB6E54E0;
  if (!qword_1EB6E54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E54E0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_20Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_21Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B0BEA82C()
{
  result = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BEA8AC()
{
  result = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BEA92C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_1B0BEA960()
{
  result = _s19CommandOutputBufferV7CommandVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s19CommandOutputBufferV12ContinuationVMa(319);
    if (v2 <= 0x3F)
    {
      result = _s19CommandOutputBufferV8IdleDoneVMa(319);
      if (v3 <= 0x3F)
      {
        result = _s19CommandOutputBufferV9HandshakeVMa(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B0BEAA00()
{
  result = qword_1EB6E54E8;
  if (!qword_1EB6E54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E54E8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for OptionalMillisecondDate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

double sub_1B0BEAAA4@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 5;
  return result;
}

double sub_1B0BEAACC@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1B0BEABDC(v9);
  }

  else
  {
    sub_1B0BEAC20(v9);
  }

  v19 = v9[8];
  v20 = v9[9];
  v21 = v9[10];
  v22 = v10;
  v15 = v9[4];
  v16 = v9[5];
  v17 = v9[6];
  v18 = v9[7];
  v11 = v9[0];
  v12 = v9[1];
  v13 = v9[2];
  v14 = v9[3];
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v11);
  v31 = v21;
  v32 = v22;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v3 = v20;
  *(a2 + 128) = v19;
  *(a2 + 144) = v3;
  *(a2 + 160) = v31;
  *(a2 + 176) = v32;
  v4 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v4;
  v5 = v30;
  *(a2 + 96) = v29;
  *(a2 + 112) = v5;
  v6 = v24;
  *a2 = v23;
  *(a2 + 16) = v6;
  result = *&v25;
  v8 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v8;
  return result;
}

double sub_1B0BEABDC(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

double sub_1B0BEAC20(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

uint64_t sub_1B0BEAC64()
{
  v1 = v0;
  v2 = sub_1B0E43BC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E43B58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  (*(v3 + 16))(v6, v1, v2);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E6977B08])
  {
    (*(v3 + 96))(v6, v2);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E0, &qword_1B0ED0CD0) + 48);
    v16 = *(v8 + 32);
    v16(v14, v6, v7);
    v17 = sub_1B0E43BB8();
    (*(*(v17 - 8) + 8))(&v6[v15], v17);
    v16(v12, v14, v7);
    if ((*(v8 + 88))(v12, v7) == *MEMORY[0x1E6977AF0])
    {
      (*(v8 + 96))(v12, v7);
      v18 = *v12;
      v19 = v12[1];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5510, &qword_1B0ED0CD8);
      sub_1B0398EFC(v12 + *(v20 + 48), &qword_1EB6E5518, &qword_1B0ED0CE0);
      return v18;
    }

    (*(v8 + 8))(v12, v7);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t sub_1B0BEAF64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = a1;
  v53 = type metadata accessor for LoggableCommand(0);
  v5 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s6LoggerVMa_0();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for OutboundContent(0);
  v11 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ClientCommand(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v60 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v52 - v18;
  v19 = sub_1B0E43828();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  v25 = *(v8 + 28);
  v56 = v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  v26 = (v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger + v25);
  v27 = *(v26 + 1);
  v55 = *v26;
  sub_1B0E43838();
  v28 = swift_allocObject();
  v58 = v3;
  v29 = v62;
  swift_weakInit();

  sub_1B0BFF130(v29, a2, v23, sub_1B0BEFC44, v28);

  (*(v20 + 8))(v23, v19);

  sub_1B03FD208(a2, v13, type metadata accessor for OutboundContent);
  if (swift_getEnumCaseMultiPayload())
  {
    v30 = type metadata accessor for OutboundContent;
    v31 = v13;
  }

  else
  {
    v32 = v55;
    v61 = v27;
    v33 = v29;
    v34 = v59;
    sub_1B0423D50(v13, v59, type metadata accessor for ClientCommand);
    v35 = v57;
    sub_1B03FD208(v56, v57, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B03FD208(v34, v60, type metadata accessor for ClientCommand);
    v36 = sub_1B0E43988();
    v37 = sub_1B0E439A8();
    (*(*(v37 - 8) + 8))(v35, v37);
    v38 = sub_1B0E45908();
    if (os_log_type_enabled(v36, v38))
    {
      v39 = v33;
      v40 = HIDWORD(v33);
      v41 = v32;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v42 = 68158466;
      *(v42 + 4) = 2;
      *(v42 + 8) = 256;
      *(v42 + 10) = v41;

      *(v42 + 11) = 2082;
      v44 = ConnectionID.debugDescription.getter(v61);
      v46 = sub_1B0399D64(v44, v45, &v63);

      *(v42 + 13) = v46;
      *(v42 + 21) = 2082;
      v47 = v54;
      v48 = v60;
      sub_1B03FD208(v60, &v54[*(v53 + 20)], type metadata accessor for ClientCommand);
      *v47 = v39;
      *(v47 + 4) = v40;
      v49 = LoggableCommand.makeDescriptionWithoutPII()();
      sub_1B03D6AC4(v47, type metadata accessor for LoggableCommand);
      sub_1B03D6AC4(v48, type metadata accessor for ClientCommand);
      v50 = sub_1B0399D64(v49._countAndFlagsBits, v49._object, &v63);

      *(v42 + 23) = v50;
      _os_log_impl(&dword_1B0389000, v36, v38, "[%.*hhx-%{public}s] Sent 'C: %{public}s'", v42, 0x1Fu);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v43, -1, -1);
      MEMORY[0x1B272C230](v42, -1, -1);
    }

    else
    {

      sub_1B03D6AC4(v60, type metadata accessor for ClientCommand);
    }

    v31 = v34;
    v30 = type metadata accessor for ClientCommand;
  }

  return sub_1B03D6AC4(v31, v30);
}

uint64_t sub_1B0BEB53C()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DCEB8);
  __swift_project_value_buffer(v0, qword_1EB6DCEB8);
  return sub_1B0E43998();
}

uint64_t ConnectionConfiguration.endpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E43BC8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

{
  v3 = sub_1B0E43BC8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ConnectionConfiguration.endpoint.setter(uint64_t a1)
{
  v3 = sub_1B0E43BC8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

{
  v3 = sub_1B0E43BC8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double (*ConnectionConfiguration.endpoint.modify())(void)
{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t ConnectionConfiguration.prohibitConstrainedPaths.getter()
{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 20));
}

{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration() + 20));
}

uint64_t ConnectionConfiguration.prohibitConstrainedPaths.setter(char a1)
{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

{
  result = type metadata accessor for ConnectionConfiguration();
  *(v1 + *(result + 20)) = a1;
  return result;
}

double (*ConnectionConfiguration.prohibitConstrainedPaths.modify())(void)
{
  v0 = *(type metadata accessor for ConnectionConfiguration(0) + 20);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  v0 = *(type metadata accessor for ConnectionConfiguration() + 20);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t ConnectionConfiguration.prohibitedInterfaceTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 24));

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

{
  v1 = *(v0 + *(type metadata accessor for ConnectionConfiguration() + 24));

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t ConnectionConfiguration.prohibitedInterfaceTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConnectionConfiguration(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

{
  v3 = *(type metadata accessor for ConnectionConfiguration() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

double (*ConnectionConfiguration.prohibitedInterfaceTypes.modify())(void)
{
  v0 = *(type metadata accessor for ConnectionConfiguration(0) + 24);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  v0 = *(type metadata accessor for ConnectionConfiguration() + 24);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t ConnectionConfiguration.transportLayerSecurity.getter()
{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
}

{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration() + 28));
}

uint64_t ConnectionConfiguration.transportLayerSecurity.setter(char a1)
{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

{
  result = type metadata accessor for ConnectionConfiguration();
  *(v1 + *(result + 28)) = a1;
  return result;
}

double (*ConnectionConfiguration.transportLayerSecurity.modify())(void)
{
  v0 = *(type metadata accessor for ConnectionConfiguration(0) + 28);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  v0 = *(type metadata accessor for ConnectionConfiguration() + 28);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t ConnectionConfiguration.sourceApplicationBundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ConnectionConfiguration(0) + 32));
  v2 = *v1;
  v3 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

{
  v1 = (v0 + *(type metadata accessor for ConnectionConfiguration() + 32));
  v2 = *v1;
  v3 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t ConnectionConfiguration.sourceApplicationBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double (*ConnectionConfiguration.sourceApplicationBundleIdentifier.modify())(void)
{
  v0 = *(type metadata accessor for ConnectionConfiguration(0) + 32);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  v0 = *(type metadata accessor for ConnectionConfiguration() + 32);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t ConnectionConfiguration.networkAccountIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ConnectionConfiguration(0) + 36));
  v2 = *v1;
  v3 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

{
  v1 = (v0 + *(type metadata accessor for ConnectionConfiguration() + 40));
  v2 = *v1;
  v3 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t ConnectionConfiguration.networkAccountIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double (*ConnectionConfiguration.networkAccountIdentifier.modify())(void)
{
  v0 = *(type metadata accessor for ConnectionConfiguration(0) + 36);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  v0 = *(type metadata accessor for ConnectionConfiguration() + 40);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

BOOL static ConnectionConfiguration.SourceApplicationKind.__derived_enum_equals(_:_:)(int a1, int a2)
{
  return ((a2 ^ a1) & 1) == 0;
}

{
  return ((a2 ^ a1) & 1) == 0;
}

uint64_t ConnectionConfiguration.SourceApplicationKind.hash(into:)(uint64_t a1, char a2)
{
  return MEMORY[0x1B2728D70](a2 & 1);
}

{
  return MEMORY[0x1B2728D70](a2 & 1);
}

uint64_t ConnectionConfiguration.SourceApplicationKind.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t static ConnectionConfiguration.TransportLayerSecurity.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return ((a2 ^ a1) & 0x3F) == 0;
      }
    }

    else if (a2 == 128)
    {
      return 1;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    return a1 == a2;
  }

  return 0;
}

{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return ((a2 ^ a1) & 0x3F) == 0;
      }
    }

    else if (a2 == 128)
    {
      return 1;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    return a1 == a2;
  }

  return 0;
}

uint64_t sub_1B0BEBB40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return v2 == v3;
  }

  return 0;
}

unint64_t sub_1B0BEBBA4()
{
  result = qword_1EB6E54F0;
  if (!qword_1EB6E54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E54F0);
  }

  return result;
}

void sub_1B0BEBC20()
{
  sub_1B0E43BC8();
  if (v0 <= 0x3F)
  {
    sub_1B0BEBCCC();
    if (v1 <= 0x3F)
    {
      sub_1B07CEB70();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0BEBCCC()
{
  if (!qword_1EB6DB0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E54F8, &qword_1B0ED0BA8);
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB0C0);
    }
  }
}

ValueMetadata *type metadata accessor for ConnectionConfiguration.SourceApplicationKind()
{
  return &type metadata for ConnectionConfiguration.SourceApplicationKind;
}

{
  return &type metadata for ConnectionConfiguration.SourceApplicationKind;
}

uint64_t getEnumTagSinglePayload for ConnectionConfiguration.TransportLayerSecurity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ConnectionConfiguration.TransportLayerSecurity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0BEBE98(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_1B0BEBEC4(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

ValueMetadata *type metadata accessor for ConnectionConfiguration.TransportLayerSecurity()
{
  return &type metadata for ConnectionConfiguration.TransportLayerSecurity;
}

{
  return &type metadata for ConnectionConfiguration.TransportLayerSecurity;
}

BOOL sub_1B0BEBF20(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  if (!(v3 >> 62))
  {
    if (v7 >> 62)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v3 >> 62 == 1)
  {
    if (v7 >> 62 != 1)
    {
      return 0;
    }

LABEL_6:
    if (sub_1B0C1BE5C(v3, a1[1], a1[2], v7, v8, v9))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v7 >> 62 != 2 || v7 != 0x8000000000000000 || (v9 | v8) != 0)
  {
    return 0;
  }

LABEL_7:

  return sub_1B0BEE93C(v4, v5, v6, v10, v11, v12);
}

uint64_t sub_1B0BEC000()
{
  v1 = v0;
  v2 = sub_1B0E43828();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s6LoggerVMa_0();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B0E43868();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = tracingSignposter.unsafeMutableAddressor();
  (*(v13 + 16))(v16, v17, v12);
  v31 = OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1B03FD208(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v11, _s6LoggerVMa_0);
  v18 = (*&v11[*(v8 + 28) + 4] << 27) | (v11[*(v8 + 28)] << 59) | 0x800000;
  sub_1B0E43838();
  sub_1B03D6AC4(v11, _s6LoggerVMa_0);
  v19 = sub_1B0E43858();
  v20 = sub_1B0E45AE8();
  if (sub_1B0E45D38())
  {
    v21 = swift_slowAlloc();
    v30 = v2;
    v22 = v21;
    *v21 = 67109120;
    *(v21 + 1) = 2;
    v23 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v19, v20, v23, "Connection.networkStateUpdate", "%u", v22, 8u);
    v24 = v22;
    v2 = v30;
    MEMORY[0x1B272C230](v24, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  (*(v13 + 8))(v16, v12);
  v25 = OBJC_IVAR____TtC15IMAP2Connection10Connection_connection;
  v26 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);

  sub_1B0E43C88();

  sub_1B03D6AC4(v1 + v31, _s6LoggerVMa_0);
  sub_1B03D6AC4(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, type metadata accessor for ConnectionConfiguration);
  sub_1B0BE2890(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate);
  v27 = *(v1 + v25);

  v28 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder);

  return v1;
}

uint64_t sub_1B0BEC378()
{
  sub_1B0BEC000();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0BEC3D8()
{
  result = _s6LoggerVMa_0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ConnectionConfiguration(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1B0BEC4F4()
{
  result = type metadata accessor for ClientCommand(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BEC55C(uint64_t a1)
{
  v86 = type metadata accessor for ConnectionEvent(0);
  v88 = *(v86 - 8);
  v3 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v87 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E43C58();
  v6 = *(v5 - 8);
  v93 = v5;
  v94 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0E441A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v75 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v90 = v75 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v92 = v75 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v75 - v23;
  if (qword_1EB6DCEB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1B0E439A8();
  __swift_project_value_buffer(v25, qword_1EB6DCEB8);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v89 = v1;
  v26 = v11;
  v27 = *(v11 + 16);
  v27(v24, a1, v10);
  v27(v92, a1, v10);
  v27(v90, a1, v10);
  v27(v18, a1, v10);
  v85 = a1;
  v27(v15, a1, v10);
  v28 = sub_1B0E43988();
  v29 = sub_1B0E45908();
  if (os_log_type_enabled(v28, v29))
  {
    v79 = v29;
    v81 = v28;
    v82 = v18;
    v83 = v15;
    v30 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v98[0] = v78;
    *v30 = 68159490;
    *(v30 + 4) = 2;
    *(v30 + 8) = 256;
    v31 = v89 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v32 = v31 + *(_s6LoggerVMa_0() + 20);
    *(v30 + 10) = *v32;

    *(v30 + 11) = 2082;
    v33 = ConnectionID.debugDescription.getter(*(v32 + 4));
    v35 = sub_1B0399D64(v33, v34, v98);

    *(v30 + 13) = v35;
    *(v30 + 21) = 1024;
    LODWORD(v32) = sub_1B0E44148() & 1;
    v36 = *(v26 + 8);
    v36(v24, v10);
    *(v30 + 23) = v32;
    *(v30 + 27) = 2082;
    v37 = v92;
    v38 = sub_1B04258C0();
    v40 = v39;
    v84 = v26 + 8;
    v77 = v36;
    v36(v37, v10);
    v41 = sub_1B0399D64(v38, v40, v98);

    *(v30 + 29) = v41;
    v80 = v30;
    *(v30 + 37) = 2082;
    v42 = v90;
    v43 = sub_1B0E44178();
    v44 = *(v43 + 16);
    v45 = v88;
    if (v44)
    {
      v76 = v10;
      v97 = MEMORY[0x1E69E7CC0];
      sub_1B041D32C(0, v44, 0);
      v46 = v97;
      v92 = *(v94 + 16);
      v47 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v75[1] = v43;
      v48 = v43 + v47;
      v91 = *(v94 + 72);
      v94 += 16;
      v49 = (v94 - 8);
      do
      {
        v50 = v93;
        (v92)(v9, v48, v93);
        v95 = sub_1B0E43BE8();
        v96 = v51;
        MEMORY[0x1B2726E80](10285, 0xE200000000000000);
        v52 = sub_1B0425CC8();
        MEMORY[0x1B2726E80](v52);

        MEMORY[0x1B2726E80](41, 0xE100000000000000);
        v53 = v95;
        v54 = v96;
        (*v49)(v9, v50);
        v97 = v46;
        v56 = *(v46 + 16);
        v55 = *(v46 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_1B041D32C((v55 > 1), v56 + 1, 1);
          v46 = v97;
        }

        *(v46 + 16) = v56 + 1;
        v57 = v46 + 16 * v56;
        *(v57 + 32) = v53;
        *(v57 + 40) = v54;
        v48 += v91;
        --v44;
      }

      while (v44);

      v59 = v87;
      v45 = v88;
      v42 = v90;
      v10 = v76;
    }

    else
    {

      v46 = MEMORY[0x1E69E7CC0];
      v59 = v87;
    }

    v95 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
    v60 = sub_1B0E448E8();
    v62 = v61;

    v63 = v77;
    v77(v42, v10);
    v64 = sub_1B0399D64(v60, v62, v98);

    v65 = v80;
    *(v80 + 39) = v64;
    *(v65 + 47) = 1024;
    v66 = v82;
    LODWORD(v60) = sub_1B0E44128() & 1;
    v63(v66, v10);
    *(v65 + 49) = v60;
    *(v65 + 53) = 1024;
    v67 = v83;
    LODWORD(v64) = sub_1B0E44138() & 1;
    v63(v67, v10);
    *(v65 + 55) = v64;
    v68 = v81;
    _os_log_impl(&dword_1B0389000, v81, v79, "[%.*hhx-%{public}s] Path did change. Constrained: %{BOOL}d, status: %{public}s, interfaces: %{public}s, IPv4: %{BOOL}d, IPv6: %{BOOL}d", v65, 0x3Bu);
    v69 = v78;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v69, -1, -1);
    MEMORY[0x1B272C230](v65, -1, -1);
  }

  else
  {
    v58 = *(v26 + 8);
    v58(v15, v10);
    v58(v18, v10);
    v58(v24, v10);

    v58(v90, v10);
    v58(v92, v10);
    v59 = v87;
    v45 = v88;
  }

  v70 = MEMORY[0x1E69E7CD0];
  v95 = MEMORY[0x1E69E7CD0];
  if (sub_1B0E44148())
  {
    sub_1B0C1FF58();
    v70 = v95;
  }

  *v59 = v70;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
  v71 = *(v45 + 72);
  v72 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1B0EC1E70;
  sub_1B03FD208(v59, v73 + v72, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B0426318(v73);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_1B03D6AC4(v59, type metadata accessor for ConnectionEvent);
}

void sub_1B0BECE50(char a1)
{
  v2 = v1;
  if (qword_1EB6DCEB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B0E439A8();
  __swift_project_value_buffer(v4, qword_1EB6DCEB8);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  oslog = sub_1B0E43988();
  v5 = sub_1B0E45908();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 68158466;
    *(v6 + 4) = 2;
    *(v6 + 8) = 256;
    v8 = v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v9 = v8 + *(_s6LoggerVMa_0() + 20);
    *(v6 + 10) = *v9;

    *(v6 + 11) = 2082;
    v10 = ConnectionID.debugDescription.getter(*(v9 + 4));
    v12 = sub_1B0399D64(v10, v11, &v14);

    *(v6 + 13) = v12;
    *(v6 + 21) = 1024;
    *(v6 + 23) = (a1 & 1) == 0;
    _os_log_impl(&dword_1B0389000, oslog, v5, "[%.*hhx-%{public}s] Is viable: %{BOOL}d", v6, 0x1Bu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1B272C230](v7, -1, -1);
    MEMORY[0x1B272C230](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B0BED048(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B0BED0A8(a1 & 1);
  }

  return result;
}

uint64_t sub_1B0BED0A8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionEvent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB6DCEB0 != -1)
  {
    swift_once();
  }

  v9 = sub_1B0E439A8();
  __swift_project_value_buffer(v9, qword_1EB6DCEB8);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 68158466;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v26 = v4;
    v27 = v13;
    v14 = v5;
    v15 = a1;
    v16 = v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v17 = v16 + *(_s6LoggerVMa_0() + 20);
    *(v12 + 10) = *v17;

    *(v12 + 11) = 2082;
    v18 = ConnectionID.debugDescription.getter(*(v17 + 4));
    v20 = sub_1B0399D64(v18, v19, &v27);

    *(v12 + 13) = v20;
    *(v12 + 21) = 1024;
    v21 = v15 & 1;
    v5 = v14;
    *(v12 + 23) = v21;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] Better path available: %{BOOL}d", v12, 0x1Bu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {

    LOBYTE(v21) = a1 & 1;
  }

  *v8 = v21;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
  v22 = *(v5 + 72);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B0EC1E70;
  sub_1B03FD208(v8, v24 + v23, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B0426318(v24);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_1B03D6AC4(v8, type metadata accessor for ConnectionEvent);
}

uint64_t sub_1B0BED3D0(void (*a1)(char *, char *, uint64_t))
{
  v83 = a1;
  v2 = type metadata accessor for ConnectionEvent(0);
  v3 = *(v2 - 8);
  v80 = v2;
  v81 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = _s6LoggerVMa_0();
  v6 = *(*(v78 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v78);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v75 - v13;
  v15 = sub_1B0E441D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v79 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v75 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v84 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v75 - v25;
  v26 = sub_1B0E44468();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_queue);
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x1E69E8020], v26);
  v32 = v31;
  LOBYTE(v31) = sub_1B0E44488();
  result = (*(v27 + 8))(v30, v26);
  if (v31)
  {
    *(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime) = static MonotonicTime.now()();
    sub_1B03B5C80(v83, v14, &unk_1EB6E5A90, &unk_1B0EDC020);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      return sub_1B0398EFC(v14, &unk_1EB6E5A90, &unk_1B0EDC020);
    }

    else
    {
      v34 = v1;
      v35 = v16;
      v36 = v85;
      (*(v16 + 32))(v85, v14, v15);
      v37 = *(v16 + 16);
      v38 = v84;
      v37(v84, v36, v15);
      if ((*(v16 + 88))(v38, v15) == *MEMORY[0x1E6977D68] && (v37(v22, v84, v15), (*(v16 + 96))(v22, v15), *v22 == 89))
      {
        v83 = v37;
        v39 = v34 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
        v40 = v77;
        sub_1B03FD208(v34 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v77, _s6LoggerVMa_0);

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v41 = sub_1B0E43988();
        v42 = sub_1B0E439A8();
        (*(*(v42 - 8) + 8))(v40, v42);
        v43 = sub_1B0E45908();
        if (os_log_type_enabled(v41, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v86 = v45;
          *v44 = 68158210;
          *(v44 + 4) = 2;
          *(v44 + 8) = 256;
          v46 = v39 + *(v78 + 20);
          *(v44 + 10) = *v46;

          *(v44 + 11) = 2082;
          v47 = ConnectionID.debugDescription.getter(*(v46 + 4));
          v49 = sub_1B0399D64(v47, v48, &v86);

          *(v44 + 13) = v49;
          _os_log_impl(&dword_1B0389000, v41, v43, "[%.*hhx-%{public}s] Failed to send data (connection is cancelled)", v44, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v45);
          MEMORY[0x1B272C230](v45, -1, -1);
          MEMORY[0x1B272C230](v44, -1, -1);
        }

        else
        {
        }

        v69 = v82;
        v54 = v83;
      }

      else
      {
        v77 = v16;
        v50 = v34 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
        sub_1B03FD208(v34 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v9, _s6LoggerVMa_0);

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v51 = v79;
        v37(v79, v85, v15);
        v52 = sub_1B0E43988();
        v53 = sub_1B0E439A8();
        (*(*(v53 - 8) + 8))(v9, v53);
        v54 = v37;
        v55 = sub_1B0E458E8();
        if (os_log_type_enabled(v52, v55))
        {
          v56 = swift_slowAlloc();
          v83 = v54;
          v57 = v56;
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v86 = v76;
          *v57 = 68158466;
          *(v57 + 4) = 2;
          *(v57 + 8) = 256;
          v58 = v50 + *(v78 + 20);
          *(v57 + 10) = *v58;

          *(v57 + 11) = 2082;
          v59 = ConnectionID.debugDescription.getter(*(v58 + 4));
          v61 = sub_1B0399D64(v59, v60, &v86);

          *(v57 + 13) = v61;
          *(v57 + 21) = 2112;
          sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78]);
          v62 = swift_allocError();
          v83(v63, v51, v15);
          v64 = sub_1B0E42CC8();
          v65 = v77;
          (*(v77 + 8))(v51, v15);

          *(v57 + 23) = v64;
          v66 = v75;
          *v75 = v64;
          _os_log_impl(&dword_1B0389000, v52, v55, "[%.*hhx-%{public}s] Failed to send data: %@", v57, 0x1Fu);
          sub_1B0398EFC(v66, &unk_1EB6E2630, &qword_1B0E97970);
          MEMORY[0x1B272C230](v66, -1, -1);
          v67 = v76;
          __swift_destroy_boxed_opaque_existential_0Tm(v76);
          MEMORY[0x1B272C230](v67, -1, -1);
          v68 = v57;
          v54 = v83;
          MEMORY[0x1B272C230](v68, -1, -1);

          v35 = v65;
        }

        else
        {

          v35 = v77;
          (*(v77 + 8))(v51, v15);
        }

        v69 = v82;
      }

      v70 = *(v35 + 8);
      v70(v84, v15);
      v54(v69, v85, v15);
      type metadata accessor for ConnectionEvent.FailureReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
      v71 = *(v81 + 72);
      v72 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1B0EC1E70;
      sub_1B03FD208(v69, v73 + v72, type metadata accessor for ConnectionEvent);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1B0426318(v73);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_1B03D6AC4(v69, type metadata accessor for ConnectionEvent);
      v74 = *(v34 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
      sub_1B0E43E28();
      return (v70)(v85, v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B0BEDDD0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = _s6LoggerVMa_0();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v37 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  if (a2)
  {
    sub_1B03FD208(a3, &v37 - v16, _s6LoggerVMa_0);
    sub_1B03FD208(a3, v15, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v18 = sub_1B0E43988();
    v19 = sub_1B0E45908();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v20 = 68158210;
      *(v20 + 4) = 2;
      *(v20 + 8) = 256;
      v22 = v15[*(v5 + 20)];
      sub_1B03D6AC4(v15, _s6LoggerVMa_0);
      *(v20 + 10) = v22;
      *(v20 + 11) = 2082;
      v23 = *&v17[*(v5 + 20) + 4];
      sub_1B03D6AC4(v17, _s6LoggerVMa_0);
      v24 = ConnectionID.debugDescription.getter(v23);
      v26 = sub_1B0399D64(v24, v25, &v38);

      *(v20 + 13) = v26;
      _os_log_impl(&dword_1B0389000, v18, v19, "[%.*hhx-%{public}s] Did request opportunistic STARTTLS", v20, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x1B272C230](v21, -1, -1);
      v27 = v20;
LABEL_6:
      MEMORY[0x1B272C230](v27, -1, -1);

      return;
    }

    sub_1B03D6AC4(v15, _s6LoggerVMa_0);

    v36 = v17;
  }

  else
  {
    sub_1B03FD208(a3, v12, _s6LoggerVMa_0);
    sub_1B03FD208(a3, v9, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v18 = sub_1B0E43988();
    v28 = sub_1B0E45908();
    if (os_log_type_enabled(v18, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 68158210;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v31 = v9[*(v5 + 20)];
      sub_1B03D6AC4(v9, _s6LoggerVMa_0);
      *(v29 + 10) = v31;
      *(v29 + 11) = 2082;
      v32 = *&v12[*(v5 + 20) + 4];
      sub_1B03D6AC4(v12, _s6LoggerVMa_0);
      v33 = ConnectionID.debugDescription.getter(v32);
      v35 = sub_1B0399D64(v33, v34, &v38);

      *(v29 + 13) = v35;
      _os_log_impl(&dword_1B0389000, v18, v28, "[%.*hhx-%{public}s] Did request STARTTLS", v29, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x1B272C230](v30, -1, -1);
      v27 = v29;
      goto LABEL_6;
    }

    sub_1B03D6AC4(v9, _s6LoggerVMa_0);

    v36 = v12;
  }

  sub_1B03D6AC4(v36, _s6LoggerVMa_0);
}

uint64_t sub_1B0BEE1E0(char a1)
{
  v2 = type metadata accessor for ConnectionEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
      v8 = *(v3 + 72);
      v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1B0EC1E70;
      sub_1B03FD208(v7, v10 + v9, type metadata accessor for ConnectionEvent);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1B0426318(v10);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return sub_1B03D6AC4(v7, type metadata accessor for ConnectionEvent);
    }
  }

  return result;
}

uint64_t sub_1B0BEE394(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionEvent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E441D8();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  type metadata accessor for ConnectionEvent.FailureReason(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
  v10 = *(v5 + 72);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B0EC1E70;
  sub_1B03FD208(v8, v12 + v11, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B0426318(v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1B03D6AC4(v8, type metadata accessor for ConnectionEvent);
  v13 = *(v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  return sub_1B0E43E28();
}

int64_t sub_1B0BEE588()
{
  v1 = _s6LoggerVMa_0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static MonotonicTime.now()();
  v6 = (v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_throttleInfo);
  if (*(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_throttleInfo + 16))
  {
    goto LABEL_2;
  }

  v7 = *v6;
  v8 = v6[1];
  v9 = __OFSUB__(result, *v6);
  v10 = result - *v6;
  if (result >= *v6)
  {
LABEL_8:
    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFSUB__(v7, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = __OFSUB__(0, v7 - result);
  v10 = result - v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v11 = v10 / 1000000000.0;
  if (v11 <= 20.0)
  {
    if (!__OFADD__(v8, 1))
    {
      v6[1] = v8 + 1;
      return result;
    }

    goto LABEL_22;
  }

  if (v11 >= 120.0)
  {
LABEL_2:
    *v6 = result;
    v6[1] = 1;
    *(v6 + 16) = 0;
    return result;
  }

  v12 = result;
  v13 = v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1B03FD208(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v4, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v14 = sub_1B0E43988();
  v15 = sub_1B0E439A8();
  (*(*(v15 - 8) + 8))(v4, v15);
  v16 = sub_1B0E458E8();
  if (!os_log_type_enabled(v14, v16))
  {

    goto LABEL_19;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v25 = v18;
  *v17 = 68158722;
  *(v17 + 4) = 2;
  *(v17 + 8) = 256;
  v19 = v13 + *(v1 + 20);
  *(v17 + 10) = *v19;

  *(v17 + 11) = 2082;
  v20 = ConnectionID.debugDescription.getter(*(v19 + 4));
  v22 = sub_1B0399D64(v20, v21, &v25);

  *(v17 + 13) = v22;
  *(v17 + 21) = 2048;
  *(v17 + 23) = v8;
  *(v17 + 31) = 2048;
  v23 = round(v11);
  if (*&v23 >> 52 > 0x7FEuLL)
  {
    goto LABEL_23;
  }

  if (v23 > -9.22337204e18)
  {
    if (v23 < 9.22337204e18)
    {
      *(v17 + 33) = v23;
      _os_log_impl(&dword_1B0389000, v14, v16, "[%.*hhx-%{public}s] Connection was throttled by server (%ld commands in %ld seconds).", v17, 0x29u);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1B272C230](v18, -1, -1);
      MEMORY[0x1B272C230](v17, -1, -1);

LABEL_19:
      result = v12;
      goto LABEL_2;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B0BEE8A0()
{
  v3 = *v0;
  sub_1B03948EC();
  v1 = sub_1B0E44E98();
  MEMORY[0x1B2726E80](v1);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](62, 0xE100000000000000);

  return 7876668;
}

BOOL sub_1B0BEE93C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 1)
  {
    return a6 == 1;
  }

  if (a6 == 1 || a4 != a1)
  {
    return 0;
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    return a2 == a5 && a3 == a6 || (sub_1B0E46A78() & 1) != 0;
  }

  else
  {
    return !a6;
  }
}

uint64_t sub_1B0BEE9D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E441D8();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConnectionEvent.FailureReason(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v36 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5538, &qword_1B0ED0E00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v36 - v17;
  v20 = (&v36 + *(v19 + 56) - v17);
  sub_1B03FD208(a1, &v36 - v17, type metadata accessor for ConnectionEvent.FailureReason);
  sub_1B03FD208(a2, v20, type metadata accessor for ConnectionEvent.FailureReason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B03FD208(v18, v14, type metadata accessor for ConnectionEvent.FailureReason);
    v23 = *v14;
    v22 = v14[1];
    v24 = v14[2];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B0BD1488(v23, v22, v24);
LABEL_13:
      sub_1B0398EFC(v18, &qword_1EB6E5538, &qword_1B0ED0E00);
LABEL_14:
      v26 = 0;
      return v26 & 1;
    }

    v29 = *v20;
    v30 = v20[1];
    v31 = v20[2];
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        if (v31 != 2)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }

      if (v24 == 3)
      {
        if (v31 != 3)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    else
    {
      if (!v24)
      {
        if (v31)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }

      if (v24 == 1)
      {
        if (v31 != 1)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    if (v31 < 4)
    {
      sub_1B0BD1488(v29, v30, v31);
      v29 = v23;
      v30 = v22;
      v31 = v24;
LABEL_30:
      sub_1B0BD1488(v29, v30, v31);
LABEL_31:
      sub_1B03D6AC4(v18, type metadata accessor for ConnectionEvent.FailureReason);
      goto LABEL_14;
    }

    v32 = *v20;
    v33 = v20[1];
    v34 = v31;
    v35 = static ResponseText.__derived_struct_equals(_:_:)(v23, v22);
    sub_1B0BD1488(v32, v33, v34);
    sub_1B0BD1488(v23, v22, v24);
    if ((v35 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_11:
    sub_1B03D6AC4(v18, type metadata accessor for ConnectionEvent.FailureReason);
    v26 = 1;
    return v26 & 1;
  }

  sub_1B03FD208(v18, v11, type metadata accessor for ConnectionEvent.FailureReason);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v37 + 8))(v11, v4);
    goto LABEL_13;
  }

  v25 = v37;
  (*(v37 + 32))(v7, v20, v4);
  v26 = MEMORY[0x1B27262E0](v11, v7);
  v27 = *(v25 + 8);
  v27(v7, v4);
  v27(v11, v4);
  sub_1B03D6AC4(v18, type metadata accessor for ConnectionEvent.FailureReason);
  return v26 & 1;
}

uint64_t sub_1B0BEEE20(uint64_t a1, uint64_t a2)
{
  v100 = a1;
  v3 = type metadata accessor for UntaggedResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v99 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConnectionEvent.FailureReason(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E43DF8();
  v96 = *(v9 - 8);
  v97 = v9;
  v10 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConnectionEvent(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v93 = (&v93 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v93 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v93 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v93 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v93 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v93 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5540, &qword_1B0ED0E08);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v93 - v34;
  v37 = (&v93 + *(v36 + 56) - v34);
  sub_1B03FD208(v100, &v93 - v34, type metadata accessor for ConnectionEvent);
  v38 = a2;
  v39 = v37;
  sub_1B03FD208(v38, v37, type metadata accessor for ConnectionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v41 = v31;
    v42 = v28;
    v44 = v95;
    v43 = v96;
    v45 = v97;
    v46 = v98;
    v47 = v99;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v48 = v41;
        sub_1B03FD208(v35, v41, type metadata accessor for ConnectionEvent);
        if (swift_getEnumCaseMultiPayload())
        {
          (*(v43 + 8))(v48, v45);
          goto LABEL_38;
        }

        v86 = v43;
        (*(v43 + 32))(v44, v39, v45);
        v50 = MEMORY[0x1B2725F00](v48, v44);
        v87 = *(v86 + 8);
        v87(v44, v45);
        v87(v48, v45);
        goto LABEL_41;
      }

      v66 = v42;
      sub_1B03FD208(v35, v42, type metadata accessor for ConnectionEvent);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1B03D6AC4(v66, type metadata accessor for ConnectionEvent.FailureReason);
        goto LABEL_38;
      }

      sub_1B0423D50(v37, v46, type metadata accessor for ConnectionEvent.FailureReason);
      v50 = sub_1B0BEE9D4(v66, v46);
      sub_1B03D6AC4(v46, type metadata accessor for ConnectionEvent.FailureReason);
      v51 = v66;
      v52 = type metadata accessor for ConnectionEvent.FailureReason;
LABEL_23:
      sub_1B03D6AC4(v51, v52);
LABEL_41:
      v88 = v35;
LABEL_42:
      sub_1B03D6AC4(v88, type metadata accessor for ConnectionEvent);
      return v50 & 1;
    }

    v49 = v37;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B03FD208(v35, v25, type metadata accessor for ConnectionEvent);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1B03D6AC4(v25, type metadata accessor for UntaggedResponse);
        goto LABEL_38;
      }

      sub_1B0423D50(v37, v47, type metadata accessor for UntaggedResponse);
      v50 = static UntaggedResponse.__derived_enum_equals(_:_:)(v25, v47);
      sub_1B03D6AC4(v47, type metadata accessor for UntaggedResponse);
      v51 = v25;
      v52 = type metadata accessor for UntaggedResponse;
      goto LABEL_23;
    }

    sub_1B03FD208(v35, v22, type metadata accessor for ConnectionEvent);
    v67 = *v22;
    v68 = *(v22 + 1);
    v69 = *(v22 + 2);
    v70 = v22[24];
    v71 = v22[28];
    v72 = *(v22 + 8);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1B0BB6FE0(v67, v68, v69, v70);
      goto LABEL_38;
    }

    v100 = v35;
    v74 = *v37;
    v73 = v37[1];
    v75 = v37[2];
    v76 = *(v49 + 24);
    v77 = *(v49 + 28);
    v78 = *(v49 + 8);
    if (v70)
    {
      if (v70 == 1)
      {
        if (v76 == 1)
        {
          LODWORD(v99) = v77;
          v79 = static ResponseText.__derived_struct_equals(_:_:)(v67, v68);
          sub_1B0BB6FE0(v74, v73, v75, 1u);
          v80 = v67;
          v81 = v68;
          v82 = v69;
          v83 = 1;
          goto LABEL_50;
        }

LABEL_58:
        sub_1B0BB6FE0(v74, v73, v75, v76);
        sub_1B0BB6FE0(v67, v68, v69, v70);
        goto LABEL_59;
      }

      if (v76 != 2)
      {
        goto LABEL_58;
      }

      LODWORD(v99) = v77;
      v79 = static ResponseText.__derived_struct_equals(_:_:)(v67, v68);
      sub_1B0BB6FE0(v74, v73, v75, 2u);
      v80 = v67;
      v81 = v68;
      v82 = v69;
      v83 = 2;
    }

    else
    {
      if (v76)
      {
        goto LABEL_58;
      }

      LODWORD(v99) = v77;
      v79 = static ResponseText.__derived_struct_equals(_:_:)(v67, v68);
      sub_1B0BB6FE0(v74, v73, v75, 0);
      v80 = v67;
      v81 = v68;
      v82 = v69;
      v83 = 0;
    }

LABEL_50:
    sub_1B0BB6FE0(v80, v81, v82, v83);
    if (v79)
    {
      v50 = v71 == v99 && v72 == v78;
      v88 = v100;
      goto LABEL_42;
    }

LABEL_59:
    sub_1B03D6AC4(v100, type metadata accessor for ConnectionEvent);
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v53 = v37;
    if (EnumCaseMultiPayload == 4)
    {
      sub_1B03FD208(v35, v19, type metadata accessor for ConnectionEvent);
      v55 = *v19;
      v54 = *(v19 + 1);
      v56 = v19[16];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1B0BCDEB0(v55, v54, v56);
        goto LABEL_38;
      }

      v58 = *v37;
      v57 = v37[1];
      v59 = *(v53 + 16);
      if (v56)
      {
        if (v53[2])
        {
          v60 = sub_1B0AB8858(v55, v54, *v53, v53[1]);
          sub_1B0BCDEB0(v58, v57, 1);
          v61 = v55;
          v62 = v54;
          v63 = 1;
LABEL_64:
          sub_1B0BCDEB0(v61, v62, v63);
          if (v60)
          {
            goto LABEL_30;
          }

LABEL_65:
          sub_1B03D6AC4(v35, type metadata accessor for ConnectionEvent);
          goto LABEL_39;
        }
      }

      else if ((v53[2] & 1) == 0)
      {
        if (v55 == v58 && v54 == v57)
        {
          sub_1B0BCDEB0(v55, v54, 0);
          sub_1B0BCDEB0(v55, v54, 0);
          goto LABEL_30;
        }

        v91 = *v53;
        v92 = v53[1];
        v60 = sub_1B0E46A78();
        sub_1B0BCDEB0(v58, v57, 0);
        v61 = v55;
        v62 = v54;
        v63 = 0;
        goto LABEL_64;
      }

      sub_1B0BCDEB0(*v53, v53[1], v56 ^ 1);
      sub_1B0BCDEB0(v55, v54, v56);
      goto LABEL_65;
    }

    v84 = v93;
    sub_1B03FD208(v35, v93, type metadata accessor for ConnectionEvent);
    v85 = *v84;
    if (swift_getEnumCaseMultiPayload() != 5)
    {

      goto LABEL_38;
    }

    v50 = sub_1B0429CE0(v85, *v37);

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (swift_getEnumCaseMultiPayload() == 8)
    {
LABEL_30:
      sub_1B03D6AC4(v35, type metadata accessor for ConnectionEvent);
      v50 = 1;
      return v50 & 1;
    }

LABEL_38:
    sub_1B0398EFC(v35, &qword_1EB6E5540, &qword_1B0ED0E08);
LABEL_39:
    v50 = 0;
    return v50 & 1;
  }

  v64 = v94;
  sub_1B03FD208(v35, v94, type metadata accessor for ConnectionEvent);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    goto LABEL_38;
  }

  v65 = *v64 ^ *v37;
  sub_1B03D6AC4(v35, type metadata accessor for ConnectionEvent);
  v50 = v65 ^ 1;
  return v50 & 1;
}

uint64_t sub_1B0BEF83C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OutboundContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5500, &unk_1B0ED0CB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v35 - v17;
  v20 = &v35 + *(v19 + 56) - v17;
  sub_1B03FD208(a1, &v35 - v17, type metadata accessor for OutboundContent);
  sub_1B03FD208(a2, v20, type metadata accessor for OutboundContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B03FD208(v18, v14, type metadata accessor for OutboundContent);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B0423D50(v20, v7, type metadata accessor for ClientCommand);
      v29 = static ClientCommand.__derived_enum_equals(_:_:)(v14, v7);
      sub_1B03D6AC4(v7, type metadata accessor for ClientCommand);
      sub_1B03D6AC4(v14, type metadata accessor for ClientCommand);
      sub_1B03D6AC4(v18, type metadata accessor for OutboundContent);
      return v29 & 1;
    }

    sub_1B03D6AC4(v14, type metadata accessor for ClientCommand);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_11;
    }

LABEL_13:
    sub_1B0398EFC(v18, &qword_1EB6E5500, &unk_1B0ED0CB0);
LABEL_14:
    v29 = 0;
    return v29 & 1;
  }

  sub_1B03FD208(v18, v11, type metadata accessor for OutboundContent);
  v23 = *v11;
  v22 = *(v11 + 1);
  v24 = v11[16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0BCDEB0(v23, v22, v24);
    goto LABEL_13;
  }

  v26 = *v20;
  v25 = *(v20 + 1);
  v27 = v20[16];
  if ((v24 & 1) == 0)
  {
    if ((v20[16] & 1) == 0)
    {
      if (v23 == v26 && v22 == v25)
      {
        sub_1B0BCDEB0(v23, v22, 0);
        sub_1B0BCDEB0(v23, v22, 0);
      }

      else
      {
        v32 = *v20;
        v33 = *(v20 + 1);
        v34 = sub_1B0E46A78();
        sub_1B0BCDEB0(v26, v25, 0);
        sub_1B0BCDEB0(v23, v22, 0);
        if ((v34 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_11;
    }

LABEL_18:
    sub_1B0BCDEB0(*v20, *(v20 + 1), v24 ^ 1);
    sub_1B0BCDEB0(v23, v22, v24);
LABEL_19:
    sub_1B03D6AC4(v18, type metadata accessor for OutboundContent);
    goto LABEL_14;
  }

  if ((v20[16] & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = sub_1B0AB8858(v23, v22, *v20, *(v20 + 1));
  sub_1B0BCDEB0(v26, v25, 1);
  sub_1B0BCDEB0(v23, v22, 1);
  if ((v28 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  sub_1B03D6AC4(v18, type metadata accessor for OutboundContent);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_1B0BEFC7C(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_1B0447F00(a1);
  }
}

uint64_t sub_1B0BEFCC8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = *a1 >> 62;
  if (v7)
  {
    if (v7 != 1)
    {
      if (v5 >> 62 != 2)
      {
        return 0;
      }

      if (v5 != 0x8000000000000000 || (v6 | v4) != 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

    v7 = 0;
    if (v5 >> 62 == 1 && *a1 == v5)
    {
      if (WORD1(v2) != WORD1(v5))
      {
        return 0;
      }

      if (v3)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if (!(v5 >> 62) && *a1 == v5)
  {
    if (WORD1(v2) != WORD1(v5))
    {
      return 0;
    }

    if (v3)
    {
LABEL_7:
      if (!v6)
      {
        return 0;
      }

      if (a1[1] != v4 || v3 != v6)
      {
        v8 = a1;
        v9 = a1[1];
        v10 = a2;
        v11 = sub_1B0E46A78();
        a2 = v10;
        v12 = v11;
        a1 = v8;
        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_24:
      v14 = a1[5];
      v15 = a2[5];
      if (v14 == 1)
      {
        if (v15 == 1)
        {
          return 1;
        }
      }

      else if (v15 != 1 && *(a1 + 24) == *(a2 + 24))
      {
        if (v14)
        {
          if (v15 && (a1[4] == a2[4] && v14 == v15 || (sub_1B0E46A78() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v15)
        {
          return 1;
        }
      }

      return 0;
    }

LABEL_16:
    if (v6)
    {
      return 0;
    }

    goto LABEL_24;
  }

  return v7;
}

uint64_t sub_1B0BEFE34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0BEFE90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_1B0BEFEF0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_1B0BEFF30()
{
  result = sub_1B0E441D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B0BEFF9C()
{
  sub_1B0E43DF8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ConnectionEvent.FailureReason(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UntaggedResponse(319);
      if (v2 <= 0x3F)
      {
        sub_1B0BF005C();
        if (v3 <= 0x3F)
        {
          sub_1B0BF00BC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B0BF005C()
{
  if (!qword_1EB6DD0F0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DD0F0);
    }
  }
}

void sub_1B0BF00BC()
{
  if (!qword_1EB6DAD78)
  {
    sub_1B0BF0118();
    v0 = sub_1B0E45588();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DAD78);
    }
  }
}

unint64_t sub_1B0BF0118()
{
  result = qword_1EB6DCE88;
  if (!qword_1EB6DCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE88);
  }

  return result;
}

uint64_t sub_1B0BF01B4()
{
  result = type metadata accessor for ClientCommand.Encoded();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BF0230(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0BF0280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 >> 2) << 32;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_15IMAP2Connection0B6ActionO(uint64_t *a1)
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

uint64_t sub_1B0BF0310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0BF0360(uint64_t result, int a2, int a3)
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = (v3 >> 2) << 32;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
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

unint64_t *sub_1B0BF03AC(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1B0BF0404(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      if (a5 >> 62 == 1)
      {
        return static PushRegistrationResponse.__derived_struct_equals(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      v9 = a3 | a2 | a4;
      if (a1 != 0x8000000000000000 || v9)
      {
        if (a1 != 0x8000000000000001 || v9)
        {
          if (a1 != 0x8000000000000002 || v9)
          {
            if (a1 != 0x8000000000000003 || v9)
            {
              if (a5 >> 62 == 2 && a5 == 0x8000000000000004 && !(a7 | a6 | a8))
              {
                return 1;
              }
            }

            else if (a5 >> 62 == 2 && a5 == 0x8000000000000003 && !(a7 | a6 | a8))
            {
              return 1;
            }
          }

          else if (a5 >> 62 == 2 && a5 == 0x8000000000000002 && !(a7 | a6 | a8))
          {
            return 1;
          }
        }

        else if (a5 >> 62 == 2 && a5 == 0x8000000000000001 && !(a7 | a6 | a8))
        {
          return 1;
        }
      }

      else if (a5 >> 62 == 2 && a5 == 0x8000000000000000 && !(a7 | a6 | a8))
      {
        return 1;
      }
    }
  }

  else if (!(a5 >> 62))
  {
    return ((a5 ^ a1) & 0x101FFLL) == 0;
  }

  return 0;
}

uint64_t ConnectionState.isClosed.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v0, v4, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1B038C704(v4, type metadata accessor for ConnectionState);
    return 0;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1B038C704(v4, type metadata accessor for ConnectionState);
  }

  else if (EnumCaseMultiPayload != 4)
  {
    return 0;
  }

  return 1;
}

uint64_t ConnectionState.isReadyForCommands.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v0, v4, type metadata accessor for ConnectionState);
  v5 = 0;
  v6 = 1 << swift_getEnumCaseMultiPayload();
  if ((v6 & 0xB) != 0)
  {
    goto LABEL_4;
  }

  if ((v6 & 0x30) == 0)
  {
    v5 = 1;
LABEL_4:
    sub_1B038C704(v4, type metadata accessor for ConnectionState);
  }

  return v5;
}

BOOL ConnectionState.selectMailbox(name:)(uint64_t a1, unsigned int a2)
{
  v5 = type metadata accessor for ConnectionState();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v2, v8, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    memcpy(v38, v8, 0x162uLL);
    v10 = *(v8 + 21);
    v39[8] = *(v8 + 20);
    v39[9] = v10;
    v40 = *(v8 + 176);
    v11 = *(v8 + 17);
    v39[4] = *(v8 + 16);
    v39[5] = v11;
    v12 = *(v8 + 19);
    v39[6] = *(v8 + 18);
    v39[7] = v12;
    v13 = *(v8 + 13);
    v39[0] = *(v8 + 12);
    v39[1] = v13;
    v14 = *(v8 + 15);
    v39[2] = *(v8 + 14);
    v39[3] = v14;
    v15 = sub_1B0BE2780(v39);
    v16 = sub_1B03DB9A4(v39);
    if (v15 && (*(v16 + 8) | (*(v16 + 8) << 32)) == (a2 | (a2 << 32)) && (sub_1B04520BC(*v16, a1) & 1) != 0)
    {
      sub_1B0BE278C(v38);
    }

    else
    {
      sub_1B038C704(v2, type metadata accessor for ConnectionState);
      sub_1B0C0B08C(a1, a2, v36);
      v17 = v38[0];
      v18 = v38[23];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B039F420(&v38[1], &v25);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BE278C(v38);
      v33 = v36[8];
      v34 = v36[9];
      v35 = v37;
      v29 = v36[4];
      v30 = v36[5];
      v31 = v36[6];
      v32 = v36[7];
      v25 = v36[0];
      v26 = v36[1];
      v27 = v36[2];
      v28 = v36[3];
      sub_1B0BF5A2C(&v25);
      *v2 = v17;
      *(v2 + 120) = *&v38[15];
      *(v2 + 136) = *&v38[17];
      *(v2 + 152) = *&v38[19];
      *(v2 + 168) = *&v38[21];
      *(v2 + 56) = *&v38[7];
      *(v2 + 72) = *&v38[9];
      *(v2 + 88) = *&v38[11];
      *(v2 + 104) = *&v38[13];
      *(v2 + 8) = *&v38[1];
      *(v2 + 24) = *&v38[3];
      *(v2 + 40) = *&v38[5];
      *(v2 + 184) = v18;
      v19 = v34;
      *(v2 + 320) = v33;
      *(v2 + 336) = v19;
      *(v2 + 352) = v35;
      v20 = v30;
      *(v2 + 256) = v29;
      *(v2 + 272) = v20;
      v21 = v32;
      *(v2 + 288) = v31;
      *(v2 + 304) = v21;
      v22 = v26;
      *(v2 + 192) = v25;
      *(v2 + 208) = v22;
      v23 = v28;
      *(v2 + 224) = v27;
      *(v2 + 240) = v23;
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_1B038C704(v8, type metadata accessor for ConnectionState);
  }

  return EnumCaseMultiPayload == 2;
}

uint64_t sub_1B0BF0A30(uint64_t a1, unint64_t a2, int a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, void (*a7)(uint64_t, unint64_t, void), uint64_t a8)
{
  v49 = a6;
  v9 = v8;
  v44[1] = a8;
  v45 = a7;
  v47 = a2;
  v48 = a5;
  v46 = a3;
  v12 = _s6LoggerVMa_0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v44 - v17;
  v19 = type metadata accessor for ConnectionState();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UnauthenticatedStateWithTasks();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v9, v22, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B04478FC(v22, v26, type metadata accessor for UnauthenticatedStateWithTasks);
    v27 = v50;
    v28 = sub_1B0C3A99C(a1, v47, v46 & 1, v48, v49, a4);
    if (!v27)
    {
      v31 = v30;
      v32 = v29;
      v33 = v28;
      sub_1B038C704(v9, type metadata accessor for ConnectionState);
      sub_1B038CA0C(v26, v9, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      if (v31 != -1)
      {
        v45(v33, v32, v31 & 1);
        sub_1B0BF6ED4(v33, v32, v31);
      }
    }

    return sub_1B038C704(v26, type metadata accessor for UnauthenticatedStateWithTasks);
  }

  else
  {
    sub_1B038C704(v22, type metadata accessor for ConnectionState);
    sub_1B038CA0C(a4, v18, _s6LoggerVMa_0);
    sub_1B038CA0C(a4, v16, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v35 = sub_1B0E43988();
    v36 = sub_1B0E458E8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51 = v38;
      *v37 = 0x204100302;
      *(v37 + 8) = 256;
      v39 = v16[*(v12 + 20)];
      sub_1B038C704(v16, _s6LoggerVMa_0);
      *(v37 + 10) = v39;
      *(v37 + 11) = 2082;
      v40 = *&v18[*(v12 + 20) + 4];
      sub_1B038C704(v18, _s6LoggerVMa_0);
      v41 = ConnectionID.debugDescription.getter(v40);
      v43 = sub_1B0399D64(v41, v42, &v51);

      *(v37 + 13) = v43;
      _os_log_impl(&dword_1B0389000, v35, v36, "[%.*hhx-%{public}s] Received HandshakeQuery, but not in unauthenticated state.", v37, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1B272C230](v38, -1, -1);
      MEMORY[0x1B272C230](v37, -1, -1);
    }

    else
    {
      sub_1B038C704(v16, _s6LoggerVMa_0);

      sub_1B038C704(v18, _s6LoggerVMa_0);
    }

    sub_1B0BF6E80();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1B0BF0E90(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s6LoggerVMa_0();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ConnectionState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UnauthenticatedStateWithTasks();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B04478FC(v3, v16, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B04478FC(v16, v20, type metadata accessor for UnauthenticatedStateWithTasks);
    sub_1B0C3ABE0(a1, a2);
    sub_1B04478FC(v20, v3, type metadata accessor for UnauthenticatedStateWithTasks);
  }

  else
  {
    sub_1B038C704(v16, type metadata accessor for ConnectionState);
    sub_1B038CA0C(a2, v12, _s6LoggerVMa_0);
    sub_1B038CA0C(a2, v10, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v21 = sub_1B0E43988();
    v22 = sub_1B0E458E8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v23 = 0x204100302;
      *(v23 + 8) = 256;
      v24 = v10[*(v6 + 20)];
      sub_1B038C704(v10, _s6LoggerVMa_0);
      *(v23 + 10) = v24;
      *(v23 + 11) = 2082;
      v25 = *&v12[*(v6 + 20) + 4];
      sub_1B038C704(v12, _s6LoggerVMa_0);
      v26 = ConnectionID.debugDescription.getter(v25);
      v28 = sub_1B0399D64(v26, v27, &v33);

      *(v23 + 13) = v28;
      _os_log_impl(&dword_1B0389000, v21, v22, "[%.*hhx-%{public}s] Received did-start-TLS, but not in unauthenticated state.", v23, 0x15u);
      v29 = v32;
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B272C230](v29, -1, -1);
      MEMORY[0x1B272C230](v23, -1, -1);
    }

    else
    {
      sub_1B038C704(v10, _s6LoggerVMa_0);

      sub_1B038C704(v12, _s6LoggerVMa_0);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ConnectionState.hasMailboxSelected.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B038CA0C(v1, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v13, v5, 0x162uLL);
    v6 = *(v5 + 21);
    v14[8] = *(v5 + 20);
    v14[9] = v6;
    v15 = *(v5 + 176);
    v7 = *(v5 + 17);
    v14[4] = *(v5 + 16);
    v14[5] = v7;
    v8 = *(v5 + 19);
    v14[6] = *(v5 + 18);
    v14[7] = v8;
    v9 = *(v5 + 13);
    v14[0] = *(v5 + 12);
    v14[1] = v9;
    v10 = *(v5 + 15);
    v14[2] = *(v5 + 14);
    v14[3] = v10;
    if (sub_1B0BE2780(v14) == 2)
    {
      sub_1B03DB9A4(v14);
      sub_1B0BE278C(v13);
      return 1;
    }

    sub_1B0BE278C(v13);
  }

  else
  {
    sub_1B038C704(v5, type metadata accessor for ConnectionState);
  }

  return 0;
}

uint64_t static AuthenticatedState.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1B0BE5360(*a1, *a2) & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = *(a1 + 120);
  v5 = *(a1 + 152);
  v31[8] = *(a1 + 136);
  v31[9] = v5;
  v31[10] = *(a1 + 168);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v31[4] = *(a1 + 72);
  v31[5] = v7;
  v31[6] = *(a1 + 104);
  v31[7] = v4;
  v8 = *(a1 + 24);
  v31[0] = *(a1 + 8);
  v31[1] = v8;
  v31[2] = *(a1 + 40);
  v31[3] = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 152);
  v30[8] = *(a2 + 136);
  v30[9] = v10;
  v30[10] = *(a2 + 168);
  v11 = *(a2 + 56);
  v12 = *(a2 + 88);
  v30[4] = *(a2 + 72);
  v30[5] = v12;
  v30[6] = *(a2 + 104);
  v30[7] = v9;
  v13 = *(a2 + 24);
  v30[0] = *(a2 + 8);
  v30[1] = v13;
  v30[2] = *(a2 + 40);
  v30[3] = v11;
  if ((static ServerID.__derived_struct_equals(_:_:)(v31, v30) & 1) == 0)
  {
    goto LABEL_5;
  }

  if (sub_1B038F0C4(*(a1 + 184), *(a2 + 184)))
  {
    v14 = *(a1 + 336);
    v28[8] = *(a1 + 320);
    v28[9] = v14;
    v29 = *(a1 + 352);
    v15 = *(a1 + 272);
    v28[4] = *(a1 + 256);
    v28[5] = v15;
    v16 = *(a1 + 304);
    v28[6] = *(a1 + 288);
    v28[7] = v16;
    v17 = *(a1 + 208);
    v28[0] = *(a1 + 192);
    v28[1] = v17;
    v18 = *(a1 + 240);
    v28[2] = *(a1 + 224);
    v28[3] = v18;
    v19 = *(a2 + 336);
    v26[8] = *(a2 + 320);
    v26[9] = v19;
    v27 = *(a2 + 352);
    v20 = *(a2 + 272);
    v26[4] = *(a2 + 256);
    v26[5] = v20;
    v21 = *(a2 + 304);
    v26[6] = *(a2 + 288);
    v26[7] = v21;
    v22 = *(a2 + 208);
    v26[0] = *(a2 + 192);
    v26[1] = v22;
    v23 = *(a2 + 240);
    v26[2] = *(a2 + 224);
    v26[3] = v23;
    v24 = sub_1B0BF4164(v28, v26);
  }

  else
  {
LABEL_5:
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t ConnectionState.kind.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v0, v4, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B038C704(v4, type metadata accessor for ConnectionState);
      return 6;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B038C704(v4, type metadata accessor for ConnectionState);
      return 2;
    }

    else
    {
      sub_1B038C704(v4, type metadata accessor for ConnectionState);
      return 3;
    }
  }

  else
  {
    v7 = sub_1B0E43DF8();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 88))(v4, v7) == *MEMORY[0x1E6977C18];
    (*(v8 + 8))(v4, v7);
    return v9;
  }
}

uint64_t ConnectionState.Kind.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t ConnectionState.nonSensitiveShortLogDescription.getter()
{
  v1 = type metadata accessor for UnauthenticatedState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnauthenticatedStateWithTasks();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E43DF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for ConnectionState();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v0, v18, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B038C704(v18, type metadata accessor for ConnectionState);
      return 0xD000000000000014;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x64656C696166;
    }

    else
    {
      return 0x656C6C65636E6163;
    }
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v34;
      sub_1B04478FC(v18, v34, type metadata accessor for UnauthenticatedStateWithTasks);
      v21 = v33;
      sub_1B038CA0C(v20 + *(v4 + 24), v33, type metadata accessor for UnauthenticatedState);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 5u:
          sub_1B038C704(v21, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000026;
          break;
        case 2u:
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          sub_1B038C704(v21, type metadata accessor for UnauthenticatedState);
          result = 0xD00000000000001FLL;
          break;
        case 3u:
          sub_1B038C704(v21, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000022;
          break;
        case 4u:
          sub_1B038C704(v21, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000020;
          break;
        case 6u:
          sub_1B038C704(v21, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000024;
          break;
        case 7u:
          sub_1B038C704(v21, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000002FLL;
          break;
        case 8u:
          sub_1B038C704(v21, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000023;
          break;
        case 9u:
          sub_1B038C704(v21, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000015;
          break;
        case 0xAu:
          sub_1B038C704(v21, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000017;
          break;
        case 0xBu:
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000001BLL;
          break;
        case 0xCu:
          goto LABEL_27;
        case 0xDu:
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000001CLL;
          break;
        case 0xEu:
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000001ELL;
          break;
        case 0xFu:
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000002CLL;
          break;
        default:
          sub_1B038C704(v21, type metadata accessor for UnauthenticatedState);
LABEL_27:
          sub_1B038C704(v20, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000002BLL;
          break;
      }

      return result;
    }

    memcpy(v35, v18, 0x162uLL);
    v24 = *(v18 + 21);
    v36[8] = *(v18 + 20);
    v36[9] = v24;
    v37 = *(v18 + 176);
    v25 = *(v18 + 17);
    v36[4] = *(v18 + 16);
    v36[5] = v25;
    v26 = *(v18 + 19);
    v36[6] = *(v18 + 18);
    v36[7] = v26;
    v27 = *(v18 + 13);
    v36[0] = *(v18 + 12);
    v36[1] = v27;
    v28 = *(v18 + 15);
    v36[2] = *(v18 + 14);
    v36[3] = v28;
    v29 = sub_1B0BE2780(v36);
    sub_1B03DB9A4(v36);
    sub_1B0BE278C(v35);
    if (v29)
    {
      if (v29 == 1)
      {
        return 0xD000000000000019;
      }

      else
      {
        return 0xD000000000000018;
      }
    }

    return 0xD000000000000013;
  }

  v23 = (*(v8 + 88))(v18, v7);
  if (v23 == *MEMORY[0x1E6977C18])
  {
    (*(v8 + 8))(v18, v7);
    return 0xD000000000000013;
  }

  if (v23 == *MEMORY[0x1E6977C10])
  {
    (*(v8 + 8))(v18, v7);
    return 0xD000000000000012;
  }

  if (v23 == *MEMORY[0x1E6977C08])
  {
    return 0xD000000000000011;
  }

  if (v23 == *MEMORY[0x1E6977C28])
  {
    return 0xD000000000000015;
  }

  if (v23 == *MEMORY[0x1E6977C00])
  {
    return 0xD000000000000011;
  }

  if (v23 == *MEMORY[0x1E6977C20])
  {
    return 0xD000000000000015;
  }

  (*(v8 + 32))(v14, v18, v7);
  v35[0] = 0x697463656E6E6F63;
  v35[1] = 0xEB0000000028676ELL;
  (*(v8 + 16))(v11, v14, v7);
  v30 = sub_1B0E44B88();
  MEMORY[0x1B2726E80](v30);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  v31 = v35[0];
  (*(v8 + 8))(v14, v7);
  return v31;
}

uint64_t sub_1B0BF2228(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v14 = *(a1 + 160);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v16 = *(a2 + 160);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_1B0BF4164(v13, v15) & 1;
}

uint64_t sub_1B0BF22BC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 120);
  v5 = *(a1 + 152);
  v33[8] = *(a1 + 136);
  v33[9] = v5;
  v33[10] = *(a1 + 168);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v33[4] = *(a1 + 72);
  v33[5] = v7;
  v33[6] = *(a1 + 104);
  v33[7] = v4;
  v8 = *(a1 + 24);
  v33[0] = *(a1 + 8);
  v33[1] = v8;
  v33[2] = *(a1 + 40);
  v33[3] = v6;
  v9 = *(a1 + 184);
  v10 = *(a1 + 336);
  v29[8] = *(a1 + 320);
  v29[9] = v10;
  v30 = *(a1 + 352);
  v11 = *(a1 + 272);
  v29[4] = *(a1 + 256);
  v29[5] = v11;
  v12 = *(a1 + 304);
  v29[6] = *(a1 + 288);
  v29[7] = v12;
  v13 = *(a1 + 208);
  v29[0] = *(a1 + 192);
  v29[1] = v13;
  v14 = *(a1 + 240);
  v29[2] = *(a1 + 224);
  v29[3] = v14;
  v15 = *a2;
  v16 = *(a2 + 120);
  v17 = *(a2 + 152);
  v34[8] = *(a2 + 136);
  v34[9] = v17;
  v34[10] = *(a2 + 168);
  v18 = *(a2 + 56);
  v19 = *(a2 + 88);
  v34[4] = *(a2 + 72);
  v34[5] = v19;
  v34[6] = *(a2 + 104);
  v34[7] = v16;
  v20 = *(a2 + 24);
  v34[0] = *(a2 + 8);
  v34[1] = v20;
  v34[2] = *(a2 + 40);
  v34[3] = v18;
  v21 = *(a2 + 184);
  v22 = *(a2 + 336);
  v31[8] = *(a2 + 320);
  v31[9] = v22;
  v32 = *(a2 + 352);
  v23 = *(a2 + 272);
  v31[4] = *(a2 + 256);
  v31[5] = v23;
  v24 = *(a2 + 304);
  v31[6] = *(a2 + 288);
  v31[7] = v24;
  v25 = *(a2 + 208);
  v31[0] = *(a2 + 192);
  v31[1] = v25;
  v26 = *(a2 + 240);
  v31[2] = *(a2 + 224);
  v31[3] = v26;
  if (sub_1B0BE5360(v3, v15) & 1) != 0 && (static ServerID.__derived_struct_equals(_:_:)(v33, v34) & 1) != 0 && (sub_1B038F0C4(v9, v21))
  {
    v27 = sub_1B0BF4164(v29, v31);
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t MailboxSelectionFailure.mailbox.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t MailboxSelectionFailure.mailbox.setter(uint64_t a1, int a2)
{
  v5 = *v2;

  *v2 = a1;
  *(v2 + 2) = a2;
  return result;
}

unint64_t MailboxSelectionFailure.response.getter()
{
  v1 = v0[2];
  sub_1B0B6DCB0(v1, v0[3], v0[4]);
  return v1;
}

unint64_t MailboxSelectionFailure.response.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B6DCF0(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t sub_1B0BF2560(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s15IMAP2Connection23MailboxSelectionFailureV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t AuthenticatedState.mailboxSelection.getter()
{
  v1 = *(v0 + 336);
  v12[8] = *(v0 + 320);
  v12[9] = v1;
  v13 = *(v0 + 352);
  v2 = *(v0 + 272);
  v12[4] = *(v0 + 256);
  v12[5] = v2;
  v3 = *(v0 + 304);
  v12[6] = *(v0 + 288);
  v12[7] = v3;
  v4 = *(v0 + 208);
  v12[0] = *(v0 + 192);
  v12[1] = v4;
  v5 = *(v0 + 240);
  v12[2] = *(v0 + 224);
  v12[3] = v5;
  v6 = sub_1B0BE2780(v12);
  v7 = sub_1B03DB9A4(v12);
  if (!v6)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v7;
  v10 = *(v8 + 2);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

BOOL ConnectionState.isConnectingOrAuthenticating.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v0, v4, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v6 = EnumCaseMultiPayload < 2;
LABEL_6:
    sub_1B038C704(v4, type metadata accessor for ConnectionState);
    return v6;
  }

  if ((EnumCaseMultiPayload - 4) >= 2)
  {
    v6 = 0;
    goto LABEL_6;
  }

  return 0;
}

uint64_t ConnectionState.hasMailboxSelected(_:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionState();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v3, v9, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B038C704(v9, type metadata accessor for ConnectionState);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  memcpy(v26, v9, sizeof(v26));
  v10 = *(v9 + 21);
  v27[8] = *(v9 + 20);
  v27[9] = v10;
  v28 = *(v9 + 176);
  v11 = *(v9 + 17);
  v27[4] = *(v9 + 16);
  v27[5] = v11;
  v12 = *(v9 + 19);
  v27[6] = *(v9 + 18);
  v27[7] = v12;
  v13 = *(v9 + 13);
  v27[0] = *(v9 + 12);
  v27[1] = v13;
  v14 = *(v9 + 15);
  v27[2] = *(v9 + 14);
  v27[3] = v14;
  if (sub_1B0BE2780(v27) != 2)
  {
    sub_1B0BE278C(v26);
    goto LABEL_8;
  }

  v15 = sub_1B03DB9A4(v27);
  v16 = *v15;
  v17 = *(v15 + 8);
  v24[0] = *&v26[192];
  v24[1] = *&v26[208];
  v24[4] = *&v26[256];
  v24[5] = *&v26[272];
  v24[2] = *&v26[224];
  v24[3] = *&v26[240];
  v25 = *&v26[352];
  v24[8] = *&v26[320];
  v24[9] = *&v26[336];
  v24[6] = *&v26[288];
  v24[7] = *&v26[304];
  v18 = sub_1B03DB9A4(v24);
  v19 = *v18;
  v20 = v18[2];
  v21 = v18[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0BE278C(v26);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0BE27E0(&v26[192]);
  if ((v17 | (v17 << 32)) != (a2 | (a2 << 32)))
  {

    goto LABEL_8;
  }

  v22 = sub_1B04520BC(v16, a1);

  return v22 & 1;
}

uint64_t ConnectionState.mailboxSelectionIsInProgress(_:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionState();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B038CA0C(v3, v9, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B038C704(v9, type metadata accessor for ConnectionState);
LABEL_7:
    v16 = 0;
    return v16 & 1;
  }

  memcpy(v19, v9, 0x162uLL);
  v10 = *(v9 + 21);
  v20[8] = *(v9 + 20);
  v20[9] = v10;
  v21 = *(v9 + 176);
  v11 = *(v9 + 17);
  v20[4] = *(v9 + 16);
  v20[5] = v11;
  v12 = *(v9 + 19);
  v20[6] = *(v9 + 18);
  v20[7] = v12;
  v13 = *(v9 + 13);
  v20[0] = *(v9 + 12);
  v20[1] = v13;
  v14 = *(v9 + 15);
  v20[2] = *(v9 + 14);
  v20[3] = v14;
  if (sub_1B0BE2780(v20) != 1 || (v15 = sub_1B03DB9A4(v20), (*(v15 + 8) | (*(v15 + 8) << 32)) != (a2 | (a2 << 32))))
  {
    sub_1B0BE278C(v19);
    goto LABEL_7;
  }

  v16 = sub_1B04520BC(*v15, a1);
  sub_1B0BE278C(v19);
  return v16 & 1;
}

uint64_t ConnectionState.selectedMailbox.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B038CA0C(v2, v7, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    result = sub_1B038C704(v7, type metadata accessor for ConnectionState);
LABEL_6:
    v20 = 0;
    v21 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    goto LABEL_7;
  }

  memcpy(v25, v7, sizeof(v25));
  v8 = *(v7 + 21);
  v26[8] = *(v7 + 20);
  v26[9] = v8;
  v27 = *(v7 + 176);
  v9 = *(v7 + 17);
  v26[4] = *(v7 + 16);
  v26[5] = v9;
  v10 = *(v7 + 19);
  v26[6] = *(v7 + 18);
  v26[7] = v10;
  v11 = *(v7 + 13);
  v26[0] = *(v7 + 12);
  v26[1] = v11;
  v12 = *(v7 + 15);
  v26[2] = *(v7 + 14);
  v26[3] = v12;
  if (sub_1B0BE2780(v26) != 2)
  {
    result = sub_1B0BE278C(v25);
    goto LABEL_6;
  }

  v13 = sub_1B03DB9A4(v26);
  v23[8] = *&v25[320];
  v23[9] = *&v25[336];
  v24 = *&v25[352];
  v23[4] = *&v25[256];
  v23[5] = *&v25[272];
  v23[6] = *&v25[288];
  v23[7] = *&v25[304];
  v23[0] = *&v25[192];
  v23[1] = *&v25[208];
  v23[2] = *&v25[224];
  v23[3] = *&v25[240];
  v14 = sub_1B03DB9A4(v23);
  sub_1B0B37A20(v14, v22);
  result = sub_1B0BE278C(v25);
  v16 = *v13;
  v17 = *(v13 + 16);
  v18 = *(v13 + 32);
  v19 = *(v13 + 48);
  v20 = *(v13 + 64);
  v21 = *(v13 + 72) | (*(v13 + 74) << 16);
LABEL_7:
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = v19;
  *(a1 + 64) = v20;
  *(a1 + 72) = v21;
  *(a1 + 74) = BYTE2(v21);
  return result;
}

uint64_t ConnectionState.anyMailboxSelectionIsInProgress.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B038CA0C(v1, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v13, v5, 0x162uLL);
    v6 = *(v5 + 21);
    v14[8] = *(v5 + 20);
    v14[9] = v6;
    v15 = *(v5 + 176);
    v7 = *(v5 + 17);
    v14[4] = *(v5 + 16);
    v14[5] = v7;
    v8 = *(v5 + 19);
    v14[6] = *(v5 + 18);
    v14[7] = v8;
    v9 = *(v5 + 13);
    v14[0] = *(v5 + 12);
    v14[1] = v9;
    v10 = *(v5 + 15);
    v14[2] = *(v5 + 14);
    v14[3] = v10;
    if (sub_1B0BE2780(v14) == 1)
    {
      sub_1B03DB9A4(v14);
      sub_1B0BE278C(v13);
      return 1;
    }

    sub_1B0BE278C(v13);
  }

  else
  {
    sub_1B038C704(v5, type metadata accessor for ConnectionState);
  }

  return 0;
}

uint64_t sub_1B0BF2E10(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v2, v7, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_1B038C704(v7, type metadata accessor for ConnectionState);
  }

  memcpy(v54, v7, sizeof(v54));
  v8 = *(v7 + 19);
  v9 = *(v7 + 21);
  v49 = *(v7 + 20);
  v50 = v9;
  v10 = *(v7 + 15);
  v11 = *(v7 + 17);
  v45 = *(v7 + 16);
  v46 = v11;
  v12 = *(v7 + 17);
  v13 = *(v7 + 19);
  v47 = *(v7 + 18);
  v48 = v13;
  v14 = *(v7 + 13);
  v41 = *(v7 + 12);
  v42 = v14;
  v15 = *(v7 + 15);
  v17 = *(v7 + 12);
  v16 = *(v7 + 13);
  v43 = *(v7 + 14);
  v44 = v15;
  v18 = *(v7 + 21);
  v52[8] = v49;
  v52[9] = v18;
  v52[4] = v45;
  v52[5] = v12;
  v52[6] = v47;
  v52[7] = v8;
  v52[0] = v17;
  v52[1] = v16;
  v51 = *(v7 + 176);
  v53 = *(v7 + 176);
  v52[2] = v43;
  v52[3] = v10;
  if (sub_1B0BE2780(v52) == 2)
  {
    v19 = sub_1B03DB9A4(v52);
    v26[8] = v49;
    v26[9] = v50;
    v27 = v51;
    v26[4] = v45;
    v26[5] = v46;
    v26[6] = v47;
    v26[7] = v48;
    v26[0] = v41;
    v26[1] = v42;
    v26[2] = v43;
    v26[3] = v44;
    v20 = sub_1B03DB9A4(v26);
    sub_1B0B37A20(v20, v36);
    sub_1B038C704(v2, type metadata accessor for ConnectionState);
    v21 = *v19;
    v38 = v19[1];
    v22 = v19[3];
    v39 = v19[2];
    v40[0] = v22;
    *(v40 + 11) = *(v19 + 59);
    v37 = v21;
    sub_1B0C27A74(a1);
    v30 = v39;
    v31[0] = v40[0];
    *(v31 + 11) = *(v40 + 11);
    v28 = v37;
    v29 = v38;
    sub_1B0BF6E18(&v28);
    v33[8] = *&v54[320];
    v33[9] = *&v54[336];
    v34 = *&v54[352];
    v33[4] = *&v54[256];
    v33[5] = *&v54[272];
    v33[6] = *&v54[288];
    v33[7] = *&v54[304];
    v33[0] = *&v54[192];
    v33[1] = *&v54[208];
    v33[2] = *&v54[224];
    v33[3] = *&v54[240];
    sub_1B0BE27E0(v33);
    *&v54[320] = v31[5];
    *&v54[336] = v31[6];
    *&v54[352] = v32;
    *&v54[256] = v31[1];
    *&v54[272] = v31[2];
    *&v54[304] = v31[4];
    *&v54[288] = v31[3];
    *&v54[192] = v28;
    *&v54[208] = v29;
    *&v54[240] = v31[0];
    *&v54[224] = v30;
    memcpy(v35, v54, 0x162uLL);
    memcpy(v2, v54, 0x162uLL);
    swift_storeEnumTagMultiPayload();
    memcpy(v36, v54, 0x162uLL);
    sub_1B0BF6EEC(v35, &v25);
  }

  else
  {
    memcpy(v36, v54, 0x162uLL);
  }

  return sub_1B0BE278C(v36);
}

uint64_t sub_1B0BF3180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v36 = a4;
  v7 = type metadata accessor for ClientCommand(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s6LoggerVMa_0();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  sub_1B038CA0C(a2, &v34 - v16, _s6LoggerVMa_0);
  sub_1B038CA0C(a2, v15, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0BF7124(a1, v37);
  v18 = sub_1B0E43988();
  v19 = sub_1B0E458C8();
  sub_1B0BF6F78(a1);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = a3;
    v21 = v20;
    v34 = swift_slowAlloc();
    v37[0] = v34;
    *v21 = 68158466;
    *(v21 + 4) = 2;
    *(v21 + 8) = 256;
    v22 = v15[*(v11 + 20)];
    sub_1B038C704(v15, _s6LoggerVMa_0);
    *(v21 + 10) = v22;
    *(v21 + 11) = 2082;
    v23 = *&v17[*(v11 + 20) + 4];
    sub_1B038C704(v17, _s6LoggerVMa_0);
    v24 = ConnectionID.debugDescription.getter(v23);
    v26 = sub_1B0399D64(v24, v25, v37);

    *(v21 + 13) = v26;
    *(v21 + 21) = 2082;
    v27 = sub_1B0C2D8A8();
    v29 = sub_1B0399D64(v27, v28, v37);

    *(v21 + 23) = v29;
    _os_log_impl(&dword_1B0389000, v18, v19, "[%.*hhx-%{public}s] Authentication is sending %{public}s.", v21, 0x1Fu);
    v30 = v34;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v30, -1, -1);
    v31 = v21;
    a3 = v35;
    MEMORY[0x1B272C230](v31, -1, -1);
  }

  else
  {
    sub_1B038C704(v15, _s6LoggerVMa_0);

    sub_1B038C704(v17, _s6LoggerVMa_0);
  }

  sub_1B0BF7124(a1, v37);
  sub_1B0BF34C4(a1, v10);
  v32 = a3(v10);
  sub_1B038C704(v10, type metadata accessor for ClientCommand);
  return v32;
}

uint64_t sub_1B0BF34C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      *a2 = v4;
      type metadata accessor for ClientCommand(0);
    }

    else
    {
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 56);
      if (v8 == 4)
      {
        *a2 = v4;
        *(a2 + 8) = v3;
        *(a2 + 16) = v5;
        *(a2 + 24) = v6;
        *(a2 + 32) = v7;
        *(a2 + 40) = v12;
        *(a2 + 48) = v11;
        *(a2 + 56) = v13;
      }

      type metadata accessor for ClientCommand(0);
    }
  }

  else if (*(a1 + 64))
  {
    if (v8 != 1)
    {
      v17 = *(a1 + 8);
      v18 = v4;
      v19 = v5;
      sub_1B03B5C80(&v18, &v16, &qword_1EB6E5570, &qword_1B0ED2738);
      sub_1B03B5C80(&v17, &v16, &qword_1EB6E5578, &qword_1B0ED2740);
      sub_1B03B5C80(&v19, &v16, &qword_1EB6E5580, &qword_1B0ED2748);
      sub_1B0BF6F78(a1);
      *a2 = v4;
      *(a2 + 8) = v3;
      *(a2 + 16) = v5;
      type metadata accessor for ClientCommand(0);
      return swift_storeEnumTagMultiPayload();
    }

    v10 = *(a1 + 16);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BF6F78(a1);
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 38) = BYTE6(v7);
    *(a2 + 36) = WORD2(v7);
    *(a2 + 32) = v7;
    type metadata accessor for ClientCommand(0);
  }

  else
  {
    v14 = *(a1 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BF6F78(a1);
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    type metadata accessor for ClientCommand(0);
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1B0BF3738(__int128 *a1, uint64_t a2)
{
  v120 = a2;
  v119 = _s6LoggerVMa_0();
  v3 = *(*(v119 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v119);
  v6 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v113 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v113 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v113 - v13;
  v15 = a1[7];
  v16 = a1[9];
  v157 = a1[8];
  v158 = v16;
  v17 = a1[3];
  v18 = a1[5];
  v153 = a1[4];
  v154 = v18;
  v19 = a1[5];
  v20 = a1[7];
  v155 = a1[6];
  v156 = v20;
  v21 = a1[1];
  v149 = *a1;
  v150 = v21;
  v22 = a1[3];
  v24 = *a1;
  v23 = a1[1];
  v151 = a1[2];
  v152 = v22;
  v25 = a1[9];
  v160[8] = v157;
  v160[9] = v25;
  v160[4] = v153;
  v160[5] = v19;
  v160[6] = v155;
  v160[7] = v15;
  v160[0] = v24;
  v160[1] = v23;
  v159 = *(a1 + 80);
  v161 = *(a1 + 80);
  v160[2] = v151;
  v160[3] = v17;
  if (sub_1B0BE2780(v160) == 1)
  {
    v26 = sub_1B03DB9A4(v160);
    v27 = v26;
    v29 = (v26 + 16);
    v28 = *(v26 + 16);
    v31 = *(v26 + 24);
    v30 = *(v26 + 32);
    v32 = *(v26 + 40);
    v33 = *(v26 + 90);
    v34 = v33 >> 5;
    if (v34 > 2)
    {
      if (v34 != 3)
      {
        return;
      }

      v116 = *(v26 + 16);
      v117 = v30;
      v118 = v31;
      v55 = a1[9];
      v146 = a1[8];
      v147 = v55;
      v148 = *(a1 + 80);
      v56 = a1[5];
      v142 = a1[4];
      v143 = v56;
      v57 = a1[7];
      v144 = a1[6];
      v145 = v57;
      v58 = a1[1];
      v138 = *a1;
      v139 = v58;
      v59 = a1[3];
      v140 = a1[2];
      v141 = v59;
      sub_1B0BE2E00(&v149, &v127);
      sub_1B0BF6D44(v29, &v127);
      sub_1B0BE27E0(&v138);
      if (v32 == 0xFF)
      {
        v60 = v120;
        sub_1B038CA0C(v120, v9, _s6LoggerVMa_0);
        sub_1B038CA0C(v60, v6, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v135 = v157;
        v136 = v158;
        v137 = v159;
        v131 = v153;
        v132 = v154;
        v133 = v155;
        v134 = v156;
        v127 = v149;
        v128 = v150;
        v129 = v151;
        v130 = v152;
        v61 = sub_1B03DB9A4(&v127);
        sub_1B0BE2834(v61, &v122);
        v62 = sub_1B0E43988();
        v63 = sub_1B0E458E8();
        sub_1B0BE27E0(&v149);
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          LODWORD(v118) = v63;
          v65 = v64;
          v120 = swift_slowAlloc();
          v121 = v120;
          *v65 = 68158723;
          *(v65 + 4) = 2;
          *(v65 + 8) = 256;
          v117 = v62;
          v66 = v119;
          v67 = v6[*(v119 + 20)];
          sub_1B038C704(v6, _s6LoggerVMa_0);
          *(v65 + 10) = v67;
          *(v65 + 11) = 2082;
          v68 = *&v9[*(v66 + 20) + 4];
          sub_1B038C704(v9, _s6LoggerVMa_0);
          v69 = ConnectionID.debugDescription.getter(v68);
          v71 = sub_1B0399D64(v69, v70, &v121);

          *(v65 + 13) = v71;
          *(v65 + 21) = 2160;
          *(v65 + 23) = 0x786F626C69616DLL;
          *(v65 + 31) = 2085;
          v72 = *(v27 + 8);
          *&v122 = *v27;
          DWORD2(v122) = v72;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v73 = sub_1B0E44BA8();
          v75 = sub_1B0399D64(v73, v74, &v121);

          *(v65 + 33) = v75;
          v76 = v117;
          _os_log_impl(&dword_1B0389000, v117, v118, "[%.*hhx-%{public}s] Unable to select mailbox '%{sensitive,mask.mailbox}s' because attributes were missing.", v65, 0x29u);
          v77 = v120;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v77, -1, -1);
          MEMORY[0x1B272C230](v65, -1, -1);
        }

        else
        {
          sub_1B038C704(v6, _s6LoggerVMa_0);

          sub_1B038C704(v9, _s6LoggerVMa_0);
        }

        v101 = *v27;
        v102 = *(v27 + 8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BE27E0(&v149);
        *&v122 = v101;
        *(&v122 + 1) = v102;
        *&v124 = 0;
        v123 = 0uLL;
        sub_1B0BF6DA0(&v122);
        v103 = v125[6];
        a1[8] = v125[5];
        a1[9] = v103;
        *(a1 + 80) = v126;
        v104 = v125[2];
        a1[4] = v125[1];
        a1[5] = v104;
        v105 = v125[4];
        a1[6] = v125[3];
        a1[7] = v105;
        v106 = v123;
        *a1 = v122;
        a1[1] = v106;
        v54 = v124;
        v53 = v125[0];
      }

      else
      {
        v78 = v120;
        sub_1B038CA0C(v120, v14, _s6LoggerVMa_0);
        sub_1B038CA0C(v78, v12, _s6LoggerVMa_0);
        sub_1B0BF6E04(*(v27 + 16), *(v27 + 24), *(v27 + 32), *(v27 + 40));
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0BE2E00(&v149, &v127);
        sub_1B0BF6D44(v29, &v127);
        v79 = sub_1B0E43988();
        v80 = sub_1B0E458E8();
        sub_1B0BE27E0(&v149);
        sub_1B0BF6CA4(v29);
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          *&v122 = v120;
          *v81 = 68158979;
          *(v81 + 4) = 2;
          *(v81 + 8) = 256;
          v115 = v79;
          v82 = v119;
          v113 = v12[*(v119 + 20)];
          v114 = v80;
          sub_1B038C704(v12, _s6LoggerVMa_0);
          *(v81 + 10) = v113;
          *(v81 + 11) = 2082;
          v83 = *&v14[*(v82 + 20) + 4];
          sub_1B038C704(v14, _s6LoggerVMa_0);
          v84 = ConnectionID.debugDescription.getter(v83);
          v86 = sub_1B0399D64(v84, v85, &v122);

          *(v81 + 13) = v86;
          *(v81 + 21) = 2160;
          *(v81 + 23) = 0x786F626C69616DLL;
          *(v81 + 31) = 2085;
          v87 = *(v27 + 8);
          *&v127 = *v27;
          DWORD2(v127) = v87;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v88 = sub_1B0E44BA8();
          v90 = sub_1B0399D64(v88, v89, &v122);

          *(v81 + 33) = v90;
          *(v81 + 41) = 2082;
          v91 = v116;
          sub_1B04420D8(v116);
          v92 = v117;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v93 = ResponseText.debugDescription.getter(v91, v118, v92);
          v95 = v94;
          sub_1B0447F00(v91);

          v96 = sub_1B0399D64(v93, v95, &v122);

          *(v81 + 43) = v96;
          v97 = v115;
          _os_log_impl(&dword_1B0389000, v115, v114, "[%.*hhx-%{public}s] Unable to select mailbox '%{sensitive,mask.mailbox}s': %{public}s", v81, 0x33u);
          v98 = v120;
          swift_arrayDestroy();
          v99 = v98;
          v100 = v118;
          MEMORY[0x1B272C230](v99, -1, -1);
          MEMORY[0x1B272C230](v81, -1, -1);

          sub_1B0BF6CA4(v29);
        }

        else
        {
          sub_1B038C704(v12, _s6LoggerVMa_0);

          sub_1B0BF6CA4(v29);
          sub_1B038C704(v14, _s6LoggerVMa_0);
          v92 = v117;
          v100 = v118;
          v91 = v116;
        }

        v107 = *v27;
        v108 = *(v27 + 8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B04420D8(v91);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BF6CA4(v29);
        sub_1B0BE27E0(&v149);
        *&v127 = v107;
        *(&v127 + 1) = v108;
        *&v128 = v91;
        *(&v128 + 1) = v100;
        *&v129 = v92;
        sub_1B0BF6DA0(&v127);
        v109 = v136;
        a1[8] = v135;
        a1[9] = v109;
        *(a1 + 80) = v137;
        v110 = v132;
        a1[4] = v131;
        a1[5] = v110;
        v111 = v134;
        a1[6] = v133;
        a1[7] = v111;
        v112 = v128;
        *a1 = v127;
        a1[1] = v112;
        v54 = v129;
        v53 = v130;
      }
    }

    else
    {
      if (v34 < 2)
      {
        return;
      }

      v120 = *(v26 + 48);
      v35 = *(v26 + 64);
      v119 = *(v26 + 56);
      v36 = *(v26 + 72);
      v118 = *(v26 + 80);
      v37 = *(v26 + 88) | (v33 << 16);
      v38 = a1[5];
      v131 = a1[4];
      v132 = v38;
      v137 = *(a1 + 80);
      v39 = a1[9];
      v135 = a1[8];
      v136 = v39;
      v40 = a1[7];
      v133 = a1[6];
      v134 = v40;
      v41 = a1[3];
      v129 = a1[2];
      v130 = v41;
      v42 = a1[1];
      v127 = *a1;
      v128 = v42;
      v44 = *(v26 + 48);
      v43 = *(v26 + 64);
      v45 = *(v26 + 32);
      *(v125 + 11) = *(v26 + 75);
      v123 = v45;
      v124 = v44;
      v125[0] = v43;
      v122 = *v29;
      BYTE10(v125[1]) &= 0x1Fu;
      v46 = v30;
      v47 = v28;
      v48 = v31;
      sub_1B0B37A20(&v122, &v138);
      sub_1B0BE27E0(&v127);
      *&v138 = v47;
      *(&v138 + 1) = v48;
      *&v139 = v46;
      *(&v139 + 1) = v32;
      *&v140 = v120;
      *(&v140 + 1) = v119;
      *&v141 = v35;
      *(&v141 + 1) = v36;
      *&v142 = v118;
      BYTE10(v142) = BYTE2(v37) & 0x1F;
      WORD4(v142) = v37;
      sub_1B0BF6E18(&v138);
      v49 = v147;
      a1[8] = v146;
      a1[9] = v49;
      *(a1 + 80) = v148;
      v50 = v143;
      a1[4] = v142;
      a1[5] = v50;
      v51 = v145;
      a1[6] = v144;
      a1[7] = v51;
      v52 = v139;
      *a1 = v138;
      a1[1] = v52;
      v54 = v140;
      v53 = v141;
    }

    a1[2] = v54;
    a1[3] = v53;
  }
}

uint64_t _s15IMAP2Connection23MailboxSelectionFailureV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    v8 = a2[4];
    if (*(result + 32))
    {
      if (v8)
      {
        v9 = *(result + 16);
        v10 = *(result + 24);
        v11 = a2[2];
        sub_1B04420D8(v11);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v12 = static ResponseText.__derived_struct_equals(_:_:)(v9, v10);
        sub_1B0447F00(v11);

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BF4164(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  v99 = *(a2 + 128);
  v100 = v4;
  v101 = *(a2 + 160);
  v5 = *(a2 + 80);
  v95 = *(a2 + 64);
  v96 = v5;
  v6 = *(a2 + 112);
  v97 = *(a2 + 96);
  v98 = v6;
  v7 = *(a2 + 16);
  v91 = *a2;
  v92 = v7;
  v8 = *(a2 + 48);
  v93 = *(a2 + 32);
  v94 = v8;
  v9 = *(a1 + 144);
  v73[8] = *(a1 + 128);
  v73[9] = v9;
  v74 = *(a1 + 160);
  v10 = *(a1 + 80);
  v73[4] = *(a1 + 64);
  v73[5] = v10;
  v11 = *(a1 + 112);
  v73[6] = *(a1 + 96);
  v73[7] = v11;
  v12 = *(a1 + 16);
  v73[0] = *a1;
  v73[1] = v12;
  v13 = *(a1 + 48);
  v73[2] = *(a1 + 32);
  v73[3] = v13;
  v14 = sub_1B0BE2780(v73);
  v15 = sub_1B03DB9A4(v73);
  if (!v14)
  {
    v24 = *v15;
    v23 = *(v15 + 8);
    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    v27 = *(v15 + 32);
    v28 = *(a2 + 144);
    v83 = *(a2 + 128);
    v84 = v28;
    v85 = *(a2 + 160);
    v29 = *(a2 + 80);
    v79 = *(a2 + 64);
    v80 = v29;
    v30 = *(a2 + 112);
    v81 = *(a2 + 96);
    v82 = v30;
    v31 = *(a2 + 16);
    v75 = *a2;
    v76 = v31;
    v32 = *(a2 + 48);
    v77 = *(a2 + 32);
    v78 = v32;
    if (sub_1B0BE2780(&v75))
    {
      goto LABEL_14;
    }

    v33 = sub_1B03DB9A4(&v75);
    v34 = *v33;
    v35 = v33[1];
    v37 = v33[2];
    v36 = v33[3];
    v38 = v33[4];
    if (v24)
    {
      if (v34)
      {
        *&v53 = *v33;
        DWORD2(v53) = v35;
        *&v54 = v37;
        *(&v54 + 1) = v36;
        *&v55 = v38;
        v86 = v24;
        v87 = v23;
        v88 = v26;
        v89 = v25;
        v90 = v27;
        v39 = v38;
        v40 = v36;
        sub_1B0BE2E00(a2, &v63);
        sub_1B0BE2E00(a1, &v63);
        v41 = _s15IMAP2Connection23MailboxSelectionFailureV23__derived_struct_equalsySbAC_ACtFZ_0(&v86, &v53);

        sub_1B0B6DCF0(v37, v40, v39);
        sub_1B0BE27E0(a1);
        if (v41)
        {
          v22 = 1;
          return v22 & 1;
        }

LABEL_14:
        v22 = 0;
        return v22 & 1;
      }
    }

    else if (!v34)
    {
      v70 = v99;
      v71 = v100;
      v72 = v101;
      *&v66[16] = v95;
      v67 = v96;
      v68 = v97;
      v69 = v98;
      v63 = v91;
      v64 = v92;
      v65 = v93;
      *v66 = v94;
      v51 = sub_1B03DB9A4(&v63);
      sub_1B0BE2DA8(*v51, *(v51 + 8), *(v51 + 16), *(v51 + 24), *(v51 + 32));
      v22 = 1;
      return v22 & 1;
    }

    v48 = a2;
    v52 = v38;
    v49 = v36;
    sub_1B0BE2E00(v48, &v63);
    sub_1B0BE2E00(a1, &v63);
    sub_1B0BF5EF8(v24, v23, v26, v25, v27);
    sub_1B0BF5EF8(v34, v35, v37, v49, v52);
    goto LABEL_14;
  }

  if (v14 != 1)
  {
    v64 = *(v15 + 16);
    v65 = *(v15 + 32);
    *v66 = *(v15 + 48);
    *&v66[11] = *(v15 + 59);
    v63 = *v15;
    v42 = *(a2 + 144);
    v83 = *(a2 + 128);
    v84 = v42;
    v85 = *(a2 + 160);
    v43 = *(a2 + 80);
    v79 = *(a2 + 64);
    v80 = v43;
    v44 = *(a2 + 112);
    v81 = *(a2 + 96);
    v82 = v44;
    v45 = *(a2 + 16);
    v75 = *a2;
    v76 = v45;
    v46 = *(a2 + 48);
    v77 = *(a2 + 32);
    v78 = v46;
    if (sub_1B0BE2780(&v75) == 2)
    {
      v47 = sub_1B03DB9A4(&v75);
      v54 = v47[1];
      v55 = v47[2];
      *v56 = v47[3];
      *&v56[11] = *(v47 + 59);
      v53 = *v47;
      v22 = _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(&v63, &v53);
      return v22 & 1;
    }

    goto LABEL_14;
  }

  v82 = *(v15 + 112);
  v83 = *(v15 + 128);
  v84 = *(v15 + 144);
  v85 = *(v15 + 160);
  v78 = *(v15 + 48);
  v79 = *(v15 + 64);
  v80 = *(v15 + 80);
  v81 = *(v15 + 96);
  v75 = *v15;
  v76 = *(v15 + 16);
  v77 = *(v15 + 32);
  v16 = *(a2 + 16);
  v53 = *a2;
  v54 = v16;
  v17 = *(a2 + 80);
  *&v56[16] = *(a2 + 64);
  v57 = v17;
  v18 = *(a2 + 48);
  v55 = *(a2 + 32);
  *v56 = v18;
  v62 = *(a2 + 160);
  v19 = *(a2 + 144);
  v60 = *(a2 + 128);
  v61 = v19;
  v20 = *(a2 + 112);
  v58 = *(a2 + 96);
  v59 = v20;
  if (sub_1B0BE2780(&v53) != 1)
  {
    goto LABEL_14;
  }

  v21 = sub_1B03DB9A4(&v53);
  v69 = *(v21 + 112);
  v70 = *(v21 + 128);
  v71 = *(v21 + 144);
  v72 = *(v21 + 160);
  *v66 = *(v21 + 48);
  *&v66[16] = *(v21 + 64);
  v67 = *(v21 + 80);
  v68 = *(v21 + 96);
  v63 = *v21;
  v64 = *(v21 + 16);
  v65 = *(v21 + 32);
  v22 = sub_1B0C0AC10(&v75, &v63);
  return v22 & 1;
}

uint64_t sub_1B0BF4574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5568, &qword_1B0ED2730);
    v3 = sub_1B0E46228();
    v4 = 0;
    v5 = v3 + 56;
    v29 = v1;
    v30 = a1 + 32;
    v28 = v3;
    while (1)
    {
      v31 = v4;
      v6 = (v30 + 32 * v4);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = *(v6 + 24);
      v11 = *(v3 + 40);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1B0E46C68();
      if (v10 != 1)
      {
        MEMORY[0x1B2728DB0](v9 >> 14);
      }

      result = sub_1B0E46CB8();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        do
        {
          v19 = v18 + 32 * v14;
          result = *v19;
          v20 = *(v19 + 16);
          v21 = *(v19 + 24);
          v22 = *v19 == v8 && *(v19 + 8) == v7;
          if (v22 || (result = sub_1B0E46A78(), (result & 1) != 0))
          {
            if (v21)
            {
              if (v10)
              {
                goto LABEL_3;
              }
            }

            else
            {
              if (((v20 ^ v9) & 0xFFFFFFFFFFFFC000) != 0)
              {
                v23 = 1;
              }

              else
              {
                v23 = v10;
              }

              if ((v23 & 1) == 0)
              {
LABEL_3:

                v3 = v28;
                v1 = v29;
                goto LABEL_4;
              }
            }
          }

          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
        }

        while ((v16 & (1 << v14)) != 0);
        v3 = v28;
        v1 = v29;
        v18 = *(v28 + 48);
      }

      *(v5 + 8 * v15) = v16 | v17;
      v24 = v18 + 32 * v14;
      *v24 = v8;
      *(v24 + 8) = v7;
      *(v24 + 16) = v9;
      *(v24 + 24) = v10;
      v25 = *(v3 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v3 + 16) = v27;
LABEL_4:
      v4 = v31 + 1;
      if (v31 + 1 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B0BF4770(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B0BF70D0();
  result = MEMORY[0x1B2727570](v2, &type metadata for Capability, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v6 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      v9 = *(v5 - 3);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C1FB18(v10, v9, v8, v7, v6);

      v5 += 32;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1B0BF4820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s6LoggerVMa_0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v75 - v13;
  v82 = type metadata accessor for ClientCommand(0);
  v15 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v83 = (&v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ConnectionState();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(a3, v20, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_1B038C704(v20, type metadata accessor for ConnectionState);
  }

  v79 = a3;
  v80 = a4;
  v76 = a2;
  v77 = v12;
  v75 = v8;
  v78 = v14;
  v81 = a1;
  v21 = *v20;
  v22 = *(v20 + 120);
  v23 = *(v20 + 152);
  v121 = *(v20 + 136);
  v122 = v23;
  v123 = *(v20 + 168);
  v24 = *(v20 + 56);
  v25 = *(v20 + 88);
  v117 = *(v20 + 72);
  v118 = v25;
  v119 = *(v20 + 104);
  v120 = v22;
  v26 = *(v20 + 24);
  v113 = *(v20 + 8);
  v114 = v26;
  v115 = *(v20 + 40);
  v116 = v24;
  v27 = *(v20 + 23);
  v28 = *(v20 + 21);
  v110 = *(v20 + 20);
  v111 = v28;
  v112 = *(v20 + 176);
  v29 = *(v20 + 17);
  v106 = *(v20 + 16);
  v107 = v29;
  v30 = *(v20 + 19);
  v108 = *(v20 + 18);
  v109 = v30;
  v31 = *(v20 + 13);
  v102 = *(v20 + 12);
  v103 = v31;
  v32 = *(v20 + 15);
  v104 = *(v20 + 14);
  v105 = v32;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33 = Capability.id.unsafeMutableAddressor();
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  v37 = *(v33 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v34) = sub_1B039F8EC(v34, v35, v36, v37, v21);
  v38 = v21;

  if ((v34 & 1) != 0 && (v39 = v81, (sub_1B038F0C4(v27, v81) & 1) == 0))
  {
    v42 = v79;
    sub_1B038C704(v79, type metadata accessor for ConnectionState);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    *&v101[120] = v120;
    *&v101[136] = v121;
    *&v101[152] = v122;
    *&v101[168] = v123;
    *&v101[56] = v116;
    *&v101[72] = v117;
    *&v101[88] = v118;
    *&v101[104] = v119;
    *&v101[8] = v113;
    *&v101[24] = v114;
    *&v101[40] = v115;
    *v101 = v21;
    *&v101[184] = v39;
    *&v101[320] = v110;
    *&v101[336] = v111;
    *&v101[352] = v112;
    *&v101[256] = v106;
    *&v101[272] = v107;
    *&v101[304] = v109;
    *&v101[288] = v108;
    *&v101[192] = v102;
    *&v101[208] = v103;
    *&v101[240] = v105;
    *&v101[224] = v104;
    memcpy(v42, v101, 0x162uLL);
    swift_storeEnumTagMultiPayload();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BF6EEC(v101, v84);
    sub_1B0C090B4(v39, v124);
    *(v84 + 7) = v124[0];
    *(&v84[2] + 7) = v124[1];
    *(&v84[4] + 7) = v124[2];
    *(&v84[6] + 7) = v124[3];
    *(&v84[8] + 7) = v125;
    v96 = 3;
    *&v97[16] = *&v84[2];
    *&v97[32] = *&v84[4];
    *&v97[48] = *&v84[6];
    *&v97[63] = *(&v84[7] + 7);
    *v97 = *v84;
    v99 = 0;
    v98 = 0;
    v100 = 0;
    v130 = v125;
    v128 = *&v97[39];
    v129 = *&v97[55];
    v126 = *&v97[7];
    v127 = *&v97[23];
    v43 = sub_1B0C06D08();
    v45 = v44;
    v47 = v46;
    sub_1B0BF6F24(&v96);
    v48 = v83;
    *v83 = v43;
    *(v48 + 8) = v45;
    *(v48 + 16) = v47;
    swift_storeEnumTagMultiPayload();

    v82 = CommandConnection.send(_:)(v48);
    v50 = v49;
    CommandConnection.flush()();
    sub_1B038C704(v48, type metadata accessor for ClientCommand);
    if (v50)
    {
    }

    else
    {
      v79 = v47;
      v80 = v45;
      v83 = v43;
      v51 = v76;
      v52 = v78;
      sub_1B038CA0C(v76, v78, _s6LoggerVMa_0);
      v53 = v77;
      sub_1B038CA0C(v51, v77, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v54 = sub_1B0E43988();
      v55 = sub_1B0E45908();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v76 = v38;
        v57 = v56;
        v58 = swift_slowAlloc();
        v59 = v53;
        v60 = v58;
        v84[0] = v58;
        *v57 = 68158722;
        *(v57 + 4) = 2;
        *(v57 + 8) = 256;
        v61 = v75;
        v62 = *(v59 + *(v75 + 20));
        sub_1B038C704(v59, _s6LoggerVMa_0);
        *(v57 + 10) = v62;
        *(v57 + 11) = 2082;
        v63 = *(v52 + *(v61 + 20) + 4);
        sub_1B038C704(v52, _s6LoggerVMa_0);
        v64 = ConnectionID.debugDescription.getter(v63);
        v66 = sub_1B0399D64(v64, v65, v84);

        *(v57 + 13) = v66;
        *(v57 + 21) = 2080;
        v67 = sub_1B0C091FC(v81);
        if (v68)
        {
          v69 = v68;
        }

        else
        {
          v67 = 4999502;
          v69 = 0xE300000000000000;
        }

        v70 = sub_1B0399D64(v67, v69, v84);

        *(v57 + 23) = v70;
        *(v57 + 31) = 2082;
        v39 = v81;
        v71 = Tag.debugDescription.getter(v82 & 0xFFFFFFFF000000FFLL);
        v73 = sub_1B0399D64(v71, v72, v84);

        *(v57 + 33) = v73;
        _os_log_impl(&dword_1B0389000, v54, v55, "[%.*hhx-%{public}s] Sending connection traits %s as %{public}s", v57, 0x29u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v60, -1, -1);
        v74 = v57;
        v38 = v76;
        MEMORY[0x1B272C230](v74, -1, -1);
      }

      else
      {
        sub_1B038C704(v53, _s6LoggerVMa_0);

        sub_1B038C704(v52, _s6LoggerVMa_0);
      }
    }

    *&v84[15] = v120;
    *&v84[17] = v121;
    *&v84[19] = v122;
    *&v84[21] = v123;
    *&v84[7] = v116;
    *&v84[9] = v117;
    *&v84[11] = v118;
    *&v84[13] = v119;
    *&v84[1] = v113;
    *&v84[3] = v114;
    v84[0] = v38;
    *&v84[5] = v115;
    v84[23] = v39;
    v93 = v110;
    v94 = v111;
    v95 = v112;
    v89 = v106;
    v90 = v107;
    v92 = v109;
    v91 = v108;
    v85 = v102;
    v86 = v103;
    v88 = v105;
    v87 = v104;
    v41 = v84;
  }

  else
  {
    *&v101[120] = v120;
    *&v101[136] = v121;
    *&v101[152] = v122;
    *&v101[168] = v123;
    *&v101[56] = v116;
    *&v101[72] = v117;
    *&v101[88] = v118;
    *&v101[104] = v119;
    *&v101[8] = v113;
    *&v101[24] = v114;
    *&v101[40] = v115;
    *v101 = v21;
    *&v101[184] = v27;
    *&v101[320] = v110;
    *&v101[336] = v111;
    *&v101[352] = v112;
    *&v101[256] = v106;
    *&v101[272] = v107;
    *&v101[304] = v109;
    *&v101[288] = v108;
    *&v101[192] = v102;
    *&v101[208] = v103;
    *&v101[240] = v105;
    *&v101[224] = v104;
    v41 = v101;
  }

  return sub_1B0BE278C(v41);
}

uint64_t sub_1B0BF5170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5550, &qword_1B0ED2720);
    v2 = sub_1B0E46228();
    v3 = v2 + 56;
    while (1)
    {
      v4 = *(v2 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](0);
      result = sub_1B0E46CB8();
      v6 = result & ~(-1 << *(v2 + 32));
      v7 = v6 >> 6;
      v8 = *(v3 + 8 * (v6 >> 6));
      v9 = 1 << v6;
      if ((v9 & v8) == 0)
      {
        *(v3 + 8 * v7) = v9 | v8;
        v10 = *(v2 + 16);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v12;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B0BF5254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a5;
  v63 = type metadata accessor for ClientCommand(0);
  v11 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = _s6LoggerVMa_0();
  v14 = *(*(v61 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v61);
  v17 = &v57[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v57[-v19];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v57[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v57[-v24];
  if (a2 < 0)
  {
    sub_1B038CA0C(a4, v20, _s6LoggerVMa_0);
    sub_1B038CA0C(a4, v17, _s6LoggerVMa_0);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = sub_1B0E43988();
    v41 = sub_1B0E45908();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v62 = a1;
      v43 = v42;
      v59 = swift_slowAlloc();
      v66 = v59;
      *v43 = 68158723;
      *(v43 + 4) = 2;
      *(v43 + 8) = 256;
      v44 = v61;
      v45 = *(v61 + 20);
      v58 = v41;
      v46 = v17[v45];
      v60 = a6;
      sub_1B038C704(v17, _s6LoggerVMa_0);
      *(v43 + 10) = v46;
      *(v43 + 11) = 2082;
      v47 = *&v20[*(v44 + 20) + 4];
      sub_1B038C704(v20, _s6LoggerVMa_0);
      v48 = ConnectionID.debugDescription.getter(v47);
      v50 = sub_1B0399D64(v48, v49, &v66);

      *(v43 + 13) = v50;
      *(v43 + 21) = 2160;
      *(v43 + 23) = 0x786F626C69616DLL;
      *(v43 + 31) = 2085;
      v64 = v62;
      v65 = a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v51 = sub_1B0E44BA8();
      v53 = sub_1B0399D64(v51, v52, &v66);

      *(v43 + 33) = v53;
      _os_log_impl(&dword_1B0389000, v40, v58, "[%.*hhx-%{public}s] Mailbox selection: Requesting mailbox status '%{sensitive,mask.mailbox}s'.", v43, 0x29u);
      v54 = v59;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v54, -1, -1);
      a1 = v62;
      MEMORY[0x1B272C230](v43, -1, -1);
    }

    else
    {
      sub_1B038C704(v17, _s6LoggerVMa_0);

      sub_1B038C704(v20, _s6LoggerVMa_0);
    }

    *v13 = a1;
    *(v13 + 2) = a2;
    *(v13 + 2) = a3;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1B038CA0C(a4, &v57[-v24], _s6LoggerVMa_0);
    sub_1B038CA0C(a4, v23, _s6LoggerVMa_0);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = sub_1B0E43988();
    v27 = sub_1B0E45908();
    sub_1B0BF6CF8(a1, a2);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v58 = v27;
      v29 = v28;
      v59 = swift_slowAlloc();
      v66 = v59;
      *v29 = 68158723;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = v61;
      v31 = v23[*(v61 + 20)];
      v60 = a6;
      sub_1B038C704(v23, _s6LoggerVMa_0);
      *(v29 + 10) = v31;
      *(v29 + 11) = 2082;
      v32 = *&v25[*(v30 + 20) + 4];
      sub_1B038C704(v25, _s6LoggerVMa_0);
      v33 = ConnectionID.debugDescription.getter(v32);
      v35 = sub_1B0399D64(v33, v34, &v66);

      *(v29 + 13) = v35;
      *(v29 + 21) = 2160;
      *(v29 + 23) = 0x786F626C69616DLL;
      *(v29 + 31) = 2085;
      v64 = a1;
      v65 = a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v36 = sub_1B0E44BA8();
      v38 = sub_1B0399D64(v36, v37, &v66);

      *(v29 + 33) = v38;
      _os_log_impl(&dword_1B0389000, v26, v58, "[%.*hhx-%{public}s] Selecting mailbox '%{sensitive,mask.mailbox}s'.", v29, 0x29u);
      v39 = v59;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v39, -1, -1);
      MEMORY[0x1B272C230](v29, -1, -1);
    }

    else
    {
      sub_1B038C704(v23, _s6LoggerVMa_0);

      sub_1B038C704(v25, _s6LoggerVMa_0);
    }

    *v13 = a1;
    *(v13 + 2) = a2;
    *(v13 + 2) = v62;
    swift_storeEnumTagMultiPayload();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v55 = CommandConnection.send(_:)(v13);
  CommandConnection.flush()();
  sub_1B038C704(v13, type metadata accessor for ClientCommand);
  return v55;
}

uint64_t sub_1B0BF58F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1B0E46228();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      v13 = *(v5 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v12);
      result = sub_1B0E46CB8();
      v15 = ~(-1 << *(v5 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v7 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v5 + 48);
      if ((v19 & v18) != 0)
      {
        while (*(v20 + v16) != v12)
        {
          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v7 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if (((1 << v16) & v18) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v17) = v19 | v18;
        *(v20 + v16) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

int8x16_t sub_1B0BF5A2C(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v3 = *(a1 + 88) & 0x1E101FFLL;
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v2;
  *(a1 + 88) = v3;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1B0ED0F80);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v1 & 0x1FF | 0x4000;
  return result;
}

unint64_t sub_1B0BF5A98()
{
  result = qword_1EB6E5548;
  if (!qword_1EB6E5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5548);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore212ResponseTextVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection23MailboxSelectionFailureVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection21MailboxSelectionStateV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection21MailboxSelectionStateV0E0O(uint64_t a1)
{
  if ((*(a1 + 72) | (*(a1 + 74) << 16)) << 8 >> 8 >= 0)
  {
    return *(a1 + 74) >> 5;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1B0BF5B70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 354))
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

uint64_t sub_1B0BF5BB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 354) = 1;
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

    *(result + 354) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection18AuthenticatedStateV16MailboxSelectionO(uint64_t a1)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 12) & 3;
  }
}

uint64_t sub_1B0BF5C94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 13))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 12);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0BF5CDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0BF5D24(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 12) = a2;
  return result;
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1B0BF5D8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 72) >> 2) & 0x80000000 | (*(a1 + 48) >> 33);
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

double sub_1B0BF5DEC(uint64_t a1, int a2, int a3)
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
    *(a1 + 160) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 162) = 1;
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
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = -a2 << 33;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0x200000000;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0;
      return result;
    }

    *(a1 + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1B0BF5E80(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v3 = *(a1 + 88) & 0x1E101FFLL;
  v4 = *(a1 + 160) & 0x1FF | (a2 << 14);
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v2;
  *(a1 + 88) = v3;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1B0ED0F80);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v4;
  return result;
}

unint64_t sub_1B0BF5EF8(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    return sub_1B0B6DCF0(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1B0BF5F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a5;
  v63 = type metadata accessor for ClientCommand(0);
  v11 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = _s6LoggerVMa_0();
  v14 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v16 = &v57[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57[-v24];
  if (a2 < 0)
  {
    sub_1B038CA0C(a4, v19, _s6LoggerVMa_0);
    sub_1B038CA0C(a4, v16, _s6LoggerVMa_0);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = sub_1B0E43988();
    v41 = sub_1B0E45908();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v62 = a1;
      v43 = v42;
      v59 = swift_slowAlloc();
      v66 = v59;
      *v43 = 68158723;
      *(v43 + 4) = 2;
      *(v43 + 8) = 256;
      v44 = v61;
      v45 = *(v61 + 20);
      v58 = v41;
      v46 = v16[v45];
      v60 = a6;
      sub_1B038C704(v16, _s6LoggerVMa_0);
      *(v43 + 10) = v46;
      *(v43 + 11) = 2082;
      v47 = *&v19[*(v44 + 20) + 4];
      sub_1B038C704(v19, _s6LoggerVMa_0);
      v48 = ConnectionID.debugDescription.getter(v47);
      v50 = sub_1B0399D64(v48, v49, &v66);

      *(v43 + 13) = v50;
      *(v43 + 21) = 2160;
      *(v43 + 23) = 0x786F626C69616DLL;
      *(v43 + 31) = 2085;
      v64 = v62;
      v65 = a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v51 = sub_1B0E44BA8();
      v53 = sub_1B0399D64(v51, v52, &v66);

      *(v43 + 33) = v53;
      _os_log_impl(&dword_1B0389000, v40, v58, "[%.*hhx-%{public}s] Mailbox selection: Requesting mailbox status '%{sensitive,mask.mailbox}s'.", v43, 0x29u);
      v54 = v59;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v54, -1, -1);
      a1 = v62;
      MEMORY[0x1B272C230](v43, -1, -1);
    }

    else
    {
      sub_1B038C704(v16, _s6LoggerVMa_0);

      sub_1B038C704(v19, _s6LoggerVMa_0);
    }

    *v13 = a1;
    *(v13 + 2) = a2;
    *(v13 + 2) = a3;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1B038CA0C(a4, &v57[-v24], _s6LoggerVMa_0);
    sub_1B038CA0C(a4, v22, _s6LoggerVMa_0);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = sub_1B0E43988();
    v27 = sub_1B0E45908();
    sub_1B0BF6CF8(a1, a2);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v58 = v27;
      v29 = v28;
      v59 = swift_slowAlloc();
      v66 = v59;
      *v29 = 68158723;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = v61;
      v31 = v22[*(v61 + 20)];
      v60 = a6;
      sub_1B038C704(v22, _s6LoggerVMa_0);
      *(v29 + 10) = v31;
      *(v29 + 11) = 2082;
      v32 = *&v25[*(v30 + 20) + 4];
      sub_1B038C704(v25, _s6LoggerVMa_0);
      v33 = ConnectionID.debugDescription.getter(v32);
      v35 = sub_1B0399D64(v33, v34, &v66);

      *(v29 + 13) = v35;
      *(v29 + 21) = 2160;
      *(v29 + 23) = 0x786F626C69616DLL;
      *(v29 + 31) = 2085;
      v64 = a1;
      v65 = a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v36 = sub_1B0E44BA8();
      v38 = sub_1B0399D64(v36, v37, &v66);

      *(v29 + 33) = v38;
      _os_log_impl(&dword_1B0389000, v26, v58, "[%.*hhx-%{public}s] Selecting mailbox '%{sensitive,mask.mailbox}s'.", v29, 0x29u);
      v39 = v59;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v39, -1, -1);
      MEMORY[0x1B272C230](v29, -1, -1);
    }

    else
    {
      sub_1B038C704(v22, _s6LoggerVMa_0);

      sub_1B038C704(v25, _s6LoggerVMa_0);
    }

    *v13 = a1;
    *(v13 + 2) = a2;
    *(v13 + 2) = v62;
    swift_storeEnumTagMultiPayload();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v55 = CommandConnection.send(_:)(v13);
  sub_1B038C704(v13, type metadata accessor for ClientCommand);
  return v55;
}

uint64_t sub_1B0BF65C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for ConnectionState();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v81 - v15;
  swift_retain_n();
  v17 = sub_1B044D8E4();
  sub_1B038CA0C(a2, v16, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    sub_1B038C704(v16, type metadata accessor for ConnectionState);
    goto LABEL_20;
  }

  v89 = a5;
  sub_1B038C704(a2, type metadata accessor for ConnectionState);
  memcpy(v120, v16, 0x162uLL);
  v18 = *(v16 + 19);
  v19 = *(v16 + 21);
  v114 = *(v16 + 20);
  v115 = v19;
  v20 = *(v16 + 15);
  v21 = *(v16 + 17);
  v110 = *(v16 + 16);
  v111 = v21;
  v22 = *(v16 + 17);
  v23 = *(v16 + 19);
  v112 = *(v16 + 18);
  v113 = v23;
  v24 = *(v16 + 13);
  v106 = *(v16 + 12);
  v107 = v24;
  v25 = *(v16 + 15);
  v27 = *(v16 + 12);
  v26 = *(v16 + 13);
  v108 = *(v16 + 14);
  v109 = v25;
  v28 = *(v16 + 21);
  v117[8] = v114;
  v117[9] = v28;
  v117[4] = v110;
  v117[5] = v22;
  v117[6] = v112;
  v117[7] = v18;
  v117[0] = v27;
  v117[1] = v26;
  v116 = *(v16 + 176);
  v118 = *(v16 + 176);
  v117[2] = v108;
  v117[3] = v20;
  if (sub_1B0BE2780(v117) == 1)
  {
    v87 = a4;
    v90 = a1;
    v29 = sub_1B03DB9A4(v117);
    v97[8] = v120[20];
    v97[9] = v120[21];
    v98 = v120[22];
    v97[4] = v120[16];
    v97[5] = v120[17];
    v97[6] = v120[18];
    v97[7] = v120[19];
    v97[0] = v120[12];
    v97[1] = v120[13];
    v97[2] = v120[14];
    v97[3] = v120[15];
    v99[8] = v114;
    v99[9] = v115;
    v100 = v116;
    v99[4] = v110;
    v99[5] = v111;
    v99[6] = v112;
    v99[7] = v113;
    v99[0] = v106;
    v99[1] = v107;
    v99[2] = v108;
    v99[3] = v109;
    v30 = sub_1B03DB9A4(v99);
    sub_1B0BE2834(v30, &v91);
    sub_1B0BE27E0(v97);
    v31 = *v29;
    v32 = *(v29 + 8);
    v105 = *v29;
    v33 = *(v29 + 16);
    v34 = *(v29 + 24);
    v35 = *(v29 + 32);
    v36 = *(v29 + 40);
    v38 = *(v29 + 48);
    v37 = *(v29 + 56);
    v39 = *(v29 + 64);
    v40 = *(v29 + 72);
    v41 = *(v29 + 80);
    v42 = *(v29 + 88) | (*(v29 + 90) << 16);
    v43 = *(v29 + 91);
    v44 = *(v29 + 107);
    v45 = *(v29 + 123);
    v46 = *(v29 + 139);
    *(v104 + 15) = *(v29 + 154);
    v103 = v45;
    v104[0] = v46;
    v101 = v43;
    v102 = v44;
    if ((v42 & 0xE00000) == 0x800000)
    {
      v47 = v38 | v37 | v39;
      if (!(v35 | v34 | v33 | v36 | v47 | v40 | v41) && v42 == 0x800000)
      {
        v88 = v38;
        v89 = v33;
        v81 = v40;
        v82 = v39;
        v83 = v41;
        v84 = v37;
        v85 = v35;
        v86 = v34;
        v48 = v31;
        v49 = v32;

        v50 = v87(v48, v49, 0, v90, v17, a3);
        LOBYTE(v48) = v51;

        if (v48)
        {
          v52 = 0x800000;
          v54 = v85;
          v53 = v86;
          v56 = v83;
          v55 = v84;
          v38 = v88;
          v57 = v89;
          v59 = v81;
          v58 = v82;
        }

        else
        {
          v70 = v88;
          v72 = v85;
          v71 = v86;
          *&v91 = v89;
          *(&v91 + 1) = v86;
          *&v92 = v85;
          *(&v92 + 1) = v36;
          v88 = v10;
          v89 = v50;
          v73 = v83;
          v74 = v84;
          *&v93 = v70;
          *(&v93 + 1) = v84;
          *&v94 = v82;
          *(&v94 + 1) = v81;
          *&v95 = v83;
          BYTE10(v95) = 0x80;
          WORD4(v95) = 0;
          sub_1B0BF6CA4(&v91);
          v56 = v73;
          v57 = v89;
          v55 = v74;
          v54 = v72;
          v53 = v71;
          v38 = 0;
          v58 = 0;
          v59 = 0;
          v52 = 0;
        }

        goto LABEL_18;
      }

      if (v42 == 0x800000 && v33 == 1 && !(v35 | v34 | v36 | v47 | v40 | v41))
      {
        v81 = v40;
        v82 = v39;
        v83 = v41;
        v84 = v37;
        v85 = v35;
        v86 = v34;
        v88 = v32;

        v60 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v89 = v87(v60, v88 | 0x8000000000000000, v89, v90, v17, a3);
        LODWORD(v88) = v61;

        if (v88)
        {
          v52 = 0x800000;
          v57 = 1;
          v54 = v85;
          v53 = v86;
          v56 = v83;
          v55 = v84;
          v59 = v81;
          v58 = v82;
        }

        else
        {
          v75 = v86;
          *&v91 = 1;
          *(&v91 + 1) = v86;
          v76 = v38;
          v78 = v84;
          v77 = v85;
          *&v92 = v85;
          *(&v92 + 1) = v36;
          *&v93 = v76;
          *(&v93 + 1) = v84;
          *&v94 = v82;
          *(&v94 + 1) = v81;
          v88 = v10;
          v79 = v83;
          *&v95 = v83;
          BYTE10(v95) = 0x80;
          WORD4(v95) = 0;
          sub_1B0BF6CA4(&v91);
          v56 = v79;
          v57 = v89;
          v55 = v78;
          v54 = v77;
          v53 = v75;
          v38 = 0;
          v58 = 0;
          v59 = 0;
          v52 = 0x200000;
        }

        goto LABEL_18;
      }
    }

    v88 = v38;
    v89 = v33;
    v62 = v34;
    v85 = a3;
    v86 = v14;
    v63 = v36;
    v64 = v35;
    v65 = v37;
    v87 = a2;
    v66 = v41;
    v67 = v39;
    v68 = v40;
    v69 = v42;

    v52 = v69;
    v59 = v68;
    v58 = v67;
    v56 = v66;
    v38 = v88;
    v57 = v89;
    v14 = v86;
    a2 = v87;
    v55 = v65;
    v54 = v64;
    v36 = v63;
    v53 = v62;
LABEL_18:
    v91 = v105;
    *(&v96[1] + 11) = v102;
    *(&v96[2] + 11) = v103;
    *(&v96[3] + 11) = v104[0];
    *&v92 = v57;
    *(&v92 + 1) = v53;
    *&v93 = v54;
    *(&v93 + 1) = v36;
    *&v94 = v38;
    *(&v94 + 1) = v55;
    *&v95 = v58;
    *(&v95 + 1) = v59;
    *&v96[0] = v56;
    WORD4(v96[0]) = v52;
    BYTE10(v96[0]) = BYTE2(v52);
    *(&v96[4] + 10) = *(v104 + 15);
    *(v96 + 11) = v101;
    sub_1B0BF5A2C(&v91);
    v120[20] = v96[3];
    v120[21] = v96[4];
    LOWORD(v120[22]) = v96[5];
    v120[16] = v95;
    v120[17] = v96[0];
    v120[18] = v96[1];
    v120[19] = v96[2];
    v120[12] = v91;
    v120[13] = v92;
    v120[14] = v93;
    v120[15] = v94;
    a1 = v90;
    goto LABEL_19;
  }

LABEL_19:
  memcpy(a2, v120, 0x162uLL);
  swift_storeEnumTagMultiPayload();
LABEL_20:
  sub_1B038CA0C(a2, v14, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B038C704(a2, type metadata accessor for ConnectionState);
    memcpy(v119, v14, sizeof(v119));
    sub_1B0BF3738(&v119[192], a1);
    memcpy(a2, v119, 0x162uLL);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1B038C704(v14, type metadata accessor for ConnectionState);
  }
}

uint64_t sub_1B0BF6CF8(uint64_t a1, uint64_t a2)
{

  if (a2 < 0)
  {
  }

  return result;
}

int8x16_t sub_1B0BF6DA0(uint64_t a1)
{
  v1 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v2 = *(a1 + 88) & 0x1E101FFLL;
  v3 = *(a1 + 160) & 0x1FF;
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v1;
  *(a1 + 88) = v2;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1B0ED0F80);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v3;
  return result;
}

unint64_t sub_1B0BF6E04(unint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1B0A91FD0(result, a2, a3, a4);
  }

  return result;
}

int8x16_t sub_1B0BF6E18(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v3 = *(a1 + 88) & 0x1E101FFLL;
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v2;
  *(a1 + 88) = v3;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1B0ED0F80);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v1 & 0x1FF | 0x8000;
  return result;
}

unint64_t sub_1B0BF6E80()
{
  result = qword_1EB6E5560;
  if (!qword_1EB6E5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5560);
  }

  return result;
}

uint64_t sub_1B0BF6ED4(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B0BCDEB0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B0BF6FCC(uint64_t a1)
{
  v3 = *(_s6LoggerVMa_0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1B0BF3180(a1, v1 + v4, v6, v7);
}

unint64_t sub_1B0BF70D0()
{
  result = qword_1EB6DE9D8;
  if (!qword_1EB6DE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE9D8);
  }

  return result;
}

uint64_t sub_1B0BF71E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C69662D6B636162;
    }

    else
    {
      v4 = 0x72657865646E69;
    }

    if (v2)
    {
      v3 = 0xE90000000000006CLL;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6574616E6F646572;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6369646F69726570;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1752397168;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6C69662D6B636162;
    }

    else
    {
      v9 = 0x72657865646E69;
    }

    if (a2)
    {
      v8 = 0xE90000000000006CLL;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6369646F69726570;
    if (a2 != 3)
    {
      v6 = 1752397168;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6574616E6F646572;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1B0E46A78();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t ConnectionTrait.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x72657865646E69;
  v2 = 0x6574616E6F646572;
  v3 = 0x6369646F69726570;
  if (a1 != 3)
  {
    v3 = 1752397168;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6C69662D6B636162;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0BF7410@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s15IMAP2Connection0B5TraitO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1B0BF7440(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x72657865646E69;
  v5 = 0xE800000000000000;
  v6 = 0x6574616E6F646572;
  v7 = 0xE800000000000000;
  v8 = 0x6369646F69726570;
  if (v2 != 3)
  {
    v8 = 1752397168;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C69662D6B636162;
    v3 = 0xE90000000000006CLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1B0BF74DC()
{
  v1 = *v0;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0BF75BC()
{
  *v0;
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0BF7688()
{
  v1 = *v0;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t _s15IMAP2Connection0B5TraitO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1B0E467E8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t ConnectionUsage.mailboxesUsage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t ConnectionUsage.nonMailboxUsage.setter(uint64_t a1)
{
  result = sub_1B03C81E4(*(v1 + 8));
  *(v1 + 8) = a1;
  return result;
}

BOOL static ConnectionUsage.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((_s15IMAP2Connection23MailboxesSelectionUsageV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a3) & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }
    }

    else if (a4 < 2 || (sub_1B0BE9028(a2, a4) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return !a4;
}

uint64_t static ConnectionUsage.NonMailboxUsage.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return sub_1B0BE9028();
}

BOOL sub_1B0BF793C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_s15IMAP2Connection23MailboxesSelectionUsageV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v3 < 2 || (sub_1B0BE9028(v2, v3) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return !v3;
}

uint64_t sub_1B0BF79D4(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_1B0BE9028();
}

uint64_t _s15IMAP2Connection07CommandB0C12RecentErrorsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_11:
    v17 = 0;
    return v17 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1B0BF8140(v14, v11);
      sub_1B0BF8140(v15, v7);
      if (*v11 != *v7)
      {
        break;
      }

      v17 = _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(v11 + *(v4 + 20), v7 + *(v4 + 20));
      sub_1B0BF81A4(v7);
      sub_1B0BF81A4(v11);
      if (v17)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1B0BF81A4(v7);
    sub_1B0BF81A4(v11);
    goto LABEL_11;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1B0BF7BC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      if (v7 <= 2)
      {
        break;
      }

      if (*i <= 4u)
      {
        if (v7 == 3)
        {
          if (v10 != 3)
          {
            return 0;
          }
        }

        else if (v10 != 4)
        {
          return 0;
        }

LABEL_24:
        if ((v5 != v8 || v6 != v9) && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v7 == 5)
      {
        if (v10 != 5)
        {
          return 0;
        }

        goto LABEL_24;
      }

      if (v5 > 1)
      {
        v12 = v5 ^ 2;
        result = 0;
        if (v12 | v6)
        {
          if (v10 != 6 || v8 != 3)
          {
            return result;
          }
        }

        else if (v10 != 6 || v8 != 2)
        {
          return result;
        }

LABEL_41:
        if (v9)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (v5 | v6)
      {
        if (v10 != 6)
        {
          return 0;
        }

        result = 0;
        if (v8 != 1)
        {
          return result;
        }

        goto LABEL_41;
      }

      result = 0;
      if (v10 != 6 || v9 | v8)
      {
        return result;
      }

LABEL_6:
      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i)
    {
      if (v7 == 1)
      {
        if (v10 != 1)
        {
          return 0;
        }
      }

      else if (v10 != 2)
      {
        return 0;
      }
    }

    else if (*v3)
    {
      return 0;
    }

    goto LABEL_24;
  }

  return 1;
}

uint64_t _s15IMAP2Connection23MailboxesSelectionUsageV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + 40 * v3;
    v7 = v5 + 40 * v3;
    if (*v6 != *v7)
    {
      return 0;
    }

    if ((*(v6 + 16) | (*(v6 + 16) << 32)) != (*(v7 + 16) | (*(v7 + 16) << 32)))
    {
      return 0;
    }

    v8 = *(v6 + 8);
    v9 = *(v7 + 8);
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    v11 = *(v6 + 24);
    v12 = *(v6 + 32);
    v13 = *(v7 + 24);
    v14 = *(v7 + 32);
    if (v10)
    {
      v15 = v8 == v9;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = (v8 + 32);
      result = v9 + 32;
      while (v10)
      {
        if (*v16 != *result)
        {
          return 0;
        }

        ++v16;
        ++result;
        if (!--v10)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    if (v12)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          if (v13 != 1)
          {
            LOBYTE(v14) = 0;
          }

          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v13 <= 1)
          {
            v14 = 0;
          }

          if (v14 != 1)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v13)
        {
          LOBYTE(v14) = 0;
        }

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v11 != v13)
      {
        LOBYTE(v14) = 1;
      }

      if (v14)
      {
        return 0;
      }
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BF7EA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0BF7EF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1B0BF7F50(void *result, int a2)
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

uint64_t sub_1B0BF7F80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v20 = v5[2];
    v21 = v8;
    v9 = v5[4];
    v10 = v5[1];
    v18 = *v5;
    v19 = v10;
    v11 = v6[3];
    v25 = v6[2];
    v26 = v11;
    v27 = v6[4];
    v12 = *v6;
    v24 = v6[1];
    v22 = v9;
    v23 = v12;
    v13 = v10;
    if ((*(&v21 + 1) & 0x1000000000000000) != 0)
    {
      v28[0] = v18;
      v28[1] = v19;
      v28[2] = v20;
      v29 = v21;
      v30 = *(&v21 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v31 = v22;
      if ((*(&v26 + 1) & 0x1000000000000000) == 0)
      {
        return 0;
      }

      v32[0] = v23;
      v32[1] = v24;
      v32[2] = v25;
      v33 = v26;
      v34 = *(&v26 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v35 = v27;
      sub_1B0BD6700(&v23, v17);
      sub_1B0BD6700(&v18, v17);
      v15 = sub_1B0C0FEBC(v28, v32);
      sub_1B0BD2F90(&v23);
      sub_1B0BD2F90(&v18);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((HIBYTE(v26) & 0x10) != 0)
      {
        return 0;
      }

      v14 = v24;
      if (v18 != v23 && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      if (v13 != v14 && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 += 5;
    v5 += 5;
  }

  return 1;
}

uint64_t sub_1B0BF8140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BF81A4(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CommandConnection.Constraint.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0BF8284()
{
  result = qword_1EB6E55A8;
  if (!qword_1EB6E55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E55A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO7CRAMMD5V5StateO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1B0BF8334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3A && *(a1 + 128))
  {
    return (*a1 + 58);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x39)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1B0BF83A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_1B0BF8444(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v32 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v47 = MEMORY[0x1E69E7CC0];
    v33 = a2 >> 62;
    sub_1B041D32C(0, v5 & ~(v5 >> 63), 0);
    v9 = v33;
    if (v33)
    {
      if (v33 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v34 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v47;
    v31 = &v35 + v10;
    do
    {
      if (v11 >= v5)
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
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v34 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1B0E42A98();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1B0E42AC8();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v35 = a1;
          v36 = BYTE2(a1);
          v37 = BYTE3(a1);
          v38 = v32;
          v39 = BYTE5(a1);
          v40 = BYTE6(a1);
          v41 = HIBYTE(a1);
          v42 = a2;
          v43 = BYTE2(a2);
          v44 = BYTE3(a2);
          v45 = BYTE4(a2);
          v46 = BYTE5(a2);
          v20 = v31[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1B0E42A98();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1B0E42AC8();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v33;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55C8, &qword_1B0ED3128);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B0EC1E70;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1B0E44B18();
      v47 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v30 = v22;
        v27 = v23;
        sub_1B041D32C((v24 > 1), v25 + 1, 1);
        v9 = v33;
        v23 = v27;
        v22 = v30;
        v8 = v47;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

LABEL_39:
  v28 = *MEMORY[0x1E69E9840];
  return v8;
}