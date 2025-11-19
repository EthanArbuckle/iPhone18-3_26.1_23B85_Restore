uint64_t sub_1B0B6D9B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || ((a1[4] ^ a2[4]) & 1) != 0 || ((a1[5] ^ a2[5]) & 1) != 0 || a1[6] != a2[6] || a1[7] != a2[7] || ((a1[8] ^ a2[8]) & 1) != 0 || a1[9] != a2[9])
  {
    return 0;
  }

  v2 = a2[24];
  if (a1[24])
  {
    if (!a2[24])
    {
      return v2 & 1;
    }
  }

  else
  {
    if (*(a1 + 2) != *(a2 + 2))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  v5 = a2[40];
  if (a1[40])
  {
    v2 = 0;
    if (v3)
    {
      if ((a2[40] & 1) == 0 || !v4)
      {
        return v2 & 1;
      }
    }

    else if ((a2[40] & 1) == 0 || v4)
    {
      return v2 & 1;
    }
  }

  else
  {
    v2 = 0;
    if ((a2[40] & 1) != 0 || v3 != v4)
    {
      return v2 & 1;
    }
  }

  if (a1[41] != a2[41])
  {
    return 0;
  }

  v2 = a1[42] ^ a2[42] ^ 1;
  return v2 & 1;
}

uint64_t sub_1B0B6DAF4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vmovn_s64(vceqq_s64(vandq_s8(vzip1q_s64(*a2, *a1), v5), vdupq_n_s64(2uLL)));
  if (v6.i8[4])
  {
    if ((v6.i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6.i8[0])
    {
      return 0;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40) | (*(a1 + 42) << 16);
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *(a2 + 40) | (*(a2 + 42) << 16);
    v29[0] = *a2;
    v29[1] = v10;
    v30 = v11;
    v31 = v12;
    v32 = BYTE2(v12);
    v25[0] = v4;
    v25[1] = v7;
    v26 = v8;
    v27 = v9;
    v28 = BYTE2(v9);
    if ((sub_1B0B6D9B8(v25, v29) & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *(a2 + 48);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = sub_1B0B72F70(v13, v14);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v17 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if ((*(a1 + 65) ^ *(a2 + 65)))
  {
    return 0;
  }

  v19 = *(a1 + 72);
  v20 = *(a2 + 72);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v22 = *(a1 + 80);
    v21 = *(a1 + 88);
    v24 = *(a2 + 80);
    v23 = *(a2 + 88);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v21) = static Namespace.__derived_struct_equals(_:_:)(v19, v22, v21, v20, v24, v23);

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1B0B6DCB0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1B04420D8(result);

    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

unint64_t sub_1B0B6DCF0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1B0447F00(result);
  }

  return result;
}

uint64_t sub_1B0B6DD30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B6DD98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4568, &qword_1B0EC55C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s6RemoteV6ServerV11ListSupportVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6RemoteV6ServerV11ListSupportVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0B6DFC0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[43])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0B6E004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _s6RemoteV6ServerV13SearchSupportVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *_s6RemoteV6ServerV13SearchSupportVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0B6E1C0()
{
  result = qword_1EB6E4B08;
  if (!qword_1EB6E4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B08);
  }

  return result;
}

unint64_t sub_1B0B6E218()
{
  result = qword_1EB6E4B10;
  if (!qword_1EB6E4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B10);
  }

  return result;
}

unint64_t sub_1B0B6E270()
{
  result = qword_1EB6E4B18;
  if (!qword_1EB6E4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B18);
  }

  return result;
}

unint64_t sub_1B0B6E2C8()
{
  result = qword_1EB6E4B20;
  if (!qword_1EB6E4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B20);
  }

  return result;
}

unint64_t sub_1B0B6E320()
{
  result = qword_1EB6E4B28;
  if (!qword_1EB6E4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B28);
  }

  return result;
}

unint64_t sub_1B0B6E408()
{
  result = qword_1EB6E4B30;
  if (!qword_1EB6E4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B30);
  }

  return result;
}

unint64_t sub_1B0B6E460()
{
  result = qword_1EB6E4B38;
  if (!qword_1EB6E4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B38);
  }

  return result;
}

unint64_t sub_1B0B6E4B8()
{
  result = qword_1EB6E4B40;
  if (!qword_1EB6E4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B40);
  }

  return result;
}

unint64_t sub_1B0B6E510()
{
  result = qword_1EB6E4B48;
  if (!qword_1EB6E4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B48);
  }

  return result;
}

unint64_t sub_1B0B6E568()
{
  result = qword_1EB6E4B50;
  if (!qword_1EB6E4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B50);
  }

  return result;
}

unint64_t sub_1B0B6E5C0()
{
  result = qword_1EB6E4B58;
  if (!qword_1EB6E4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B58);
  }

  return result;
}

unint64_t sub_1B0B6E618()
{
  result = qword_1EB6E4B60;
  if (!qword_1EB6E4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B60);
  }

  return result;
}

uint64_t sub_1B0B6E6BC(uint64_t result)
{
  if (*(v1 + 24) == 1)
  {
    v2 = result;
    v3 = *v1;
    v4 = *(v1 + 8);
    v44 = (v1 + 8);
    v5 = *(v1 + 16);
    v51 = *v1;
    v6 = result + 64;
    v7 = 1 << *(result + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(result + 64);
    v41 = v5;
    v42 = v4;
    sub_1B03B9A2C(v3, v4, v5, 1);
    v10 = (v7 + 63) >> 6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = 0;
    v12 = 0;
    v43 = v3;
    v48 = v1;
    v45 = v2;
    v13 = v3 + 32;
LABEL_7:
    while (v9)
    {
      v15 = v9;
LABEL_13:
      v9 = (v15 - 1) & v15;
      v17 = *(v3 + 16);
      if (v17)
      {
        v47 = (v15 - 1) & v15;
        v18 = 0;
        v19 = (*(v2 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v15)))));
        v20 = *v19;
        v21 = v19[1];
        v22 = *v19 + 32;
        while (1)
        {
          v23 = (v13 + 176 * v18);
          if (v23[1] == v21)
          {
            v24 = *v23;
            v25 = *(*v23 + 16);
            if (v25 == *(v20 + 16))
            {
              break;
            }
          }

LABEL_15:
          if (++v18 == v17)
          {
            v9 = v47;
            goto LABEL_7;
          }
        }

        if (v25)
        {
          v26 = v24 == v20;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          v27 = (v24 + 32);
          v28 = v22;
          while (v25)
          {
            if (*v27 != *v28)
            {
              goto LABEL_15;
            }

            ++v27;
            ++v28;
            if (!--v25)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_26:
        v29 = v23[17];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v46 = v29;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B1AF0(v11);
        v30 = *(v1 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *(v1 + 32);
        *&v50[0] = v32;
        v34 = sub_1B03B8A9C(v20, v21);
        v35 = v32[2];
        v36 = (v33 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          goto LABEL_39;
        }

        v38 = v33;
        if (v32[3] >= v37)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0B8D6A0();
            v32 = *&v50[0];
          }
        }

        else
        {
          sub_1B0B2FCE0(v37, isUniquelyReferenced_nonNull_native);
          v32 = *&v50[0];
          v39 = sub_1B03B8A9C(v20, v21);
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_40;
          }

          v34 = v39;
        }

        *(v48 + 32) = v32;
        if (v38)
        {
        }

        else
        {
          sub_1B0A9BC3C(v34, v20, v21, MEMORY[0x1E69E7CD0], v32);
        }

        v9 = v47;
        v14 = v32[7] + 8 * v34;
        sub_1B03B00C8(v46);
        sub_1B0BAFC50(v18, v49);
        v50[8] = v49[8];
        v50[9] = v49[9];
        v50[10] = v49[10];
        v50[4] = v49[4];
        v50[5] = v49[5];
        v50[6] = v49[6];
        v50[7] = v49[7];
        v50[0] = v49[0];
        v50[1] = v49[1];
        v50[2] = v49[2];
        v50[3] = v49[3];
        sub_1B03A3614(v50);
        v11 = sub_1B0B6EA2C;
        v3 = v51;
        v1 = v48;
        v2 = v45;
        v13 = v51 + 32;
      }
    }

    while (1)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v16 >= v10)
      {

        sub_1B03BB638(v43, v42, v41, 1);
        result = sub_1B03B1AF0(v11);
        *v1 = v3;
        *v44 = 0;
        v44[1] = 0;
        *(v1 + 24) = 1;
        return result;
      }

      v15 = *(v6 + 8 * v16);
      ++v12;
      if (v15)
      {
        v12 = v16;
        goto LABEL_13;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = sub_1B0E46BA8();
    __break(1u);
  }

  return result;
}

void sub_1B0B6EA3C(uint64_t a1)
{
  v3 = type metadata accessor for Task.Logger(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v16 = *(v1 + 48);
  if (*(v16 + 16) == 1 && (sub_1B0B86A1C(v16, v54), v54[0]))
  {
    v17 = v54[2];
    v18 = v55;

    sub_1B03B1C38(a1, v15, type metadata accessor for Task.Logger);
    sub_1B03B1C38(a1, v12, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = sub_1B0E43988();
    v20 = sub_1B0E45908();

    if (os_log_type_enabled(v19, v20))
    {
      v49 = v18;
      v21 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50 = v48;
      *v21 = 68158723;
      *(v21 + 4) = 2;
      *(v21 + 8) = 256;
      v22 = *&v12[*(v3 + 20)];
      sub_1B03B1E20(v12, type metadata accessor for Task.Logger);
      *(v21 + 10) = v22;
      *(v21 + 11) = 2082;
      v23 = &v15[*(v3 + 20)];
      v24 = *(v23 + 1);
      v25 = *(v23 + 2);
      v26 = *(v23 + 3);
      v27 = *(v23 + 4);
      v28 = *(v23 + 10);
      sub_1B0A982D8(*v23, v24, v25, v26);
      sub_1B03B1E20(v15, type metadata accessor for Task.Logger);
      if (v26 < 0)
      {
      }

      v29 = sub_1B0399D64(v24, v25, &v50);

      *(v21 + 13) = v29;
      *(v21 + 21) = 2160;
      *(v21 + 23) = 0x786F626C69616DLL;
      *(v21 + 31) = 2085;
      v51 = v17;
      v52 = v49;
      v30 = sub_1B0E44BA8();
      v32 = sub_1B0399D64(v30, v31, &v50);

      *(v21 + 33) = v32;
      _os_log_impl(&dword_1B0389000, v19, v20, "[%.*hhx-%{public}s] Created task for '%{sensitive,mask.mailbox}s'", v21, 0x29u);
      v33 = v48;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v33, -1, -1);
      v34 = v21;
LABEL_11:
      MEMORY[0x1B272C230](v34, -1, -1);

      return;
    }

    sub_1B03B1E20(v12, type metadata accessor for Task.Logger);

    v47 = v15;
  }

  else
  {
    sub_1B03B1C38(a1, v9, type metadata accessor for Task.Logger);
    sub_1B03B1C38(a1, v6, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0B707F8(v1, &v51);
    v19 = sub_1B0E43988();
    v35 = sub_1B0E45908();
    if (os_log_type_enabled(v19, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v37;
      *v36 = 68158466;
      *(v36 + 4) = 2;
      *(v36 + 8) = 256;
      v38 = *&v6[*(v3 + 20)];
      sub_1B03B1E20(v6, type metadata accessor for Task.Logger);
      *(v36 + 10) = v38;
      *(v36 + 11) = 2082;
      v39 = &v9[*(v3 + 20)];
      v40 = *(v39 + 1);
      v41 = *(v39 + 2);
      v42 = *(v39 + 3);
      v43 = *(v39 + 4);
      v44 = *(v39 + 10);
      sub_1B0A982D8(*v39, v40, v41, v42);
      sub_1B03B1E20(v9, type metadata accessor for Task.Logger);
      if (v42 < 0)
      {
      }

      v45 = sub_1B0399D64(v40, v41, &v50);

      *(v36 + 13) = v45;
      *(v36 + 21) = 2048;
      v46 = *(v53 + 16);
      sub_1B0B70830(&v51);
      *(v36 + 23) = v46;
      _os_log_impl(&dword_1B0389000, v19, v35, "[%.*hhx-%{public}s] Created task for %ld mailboxes.", v36, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1B272C230](v37, -1, -1);
      v34 = v36;
      goto LABEL_11;
    }

    sub_1B0B70830(&v51);
    sub_1B03B1E20(v6, type metadata accessor for Task.Logger);

    v47 = v9;
  }

  sub_1B03B1E20(v47, type metadata accessor for Task.Logger);
}

uint64_t sub_1B0B6EF90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v34 = a3;
  v32 = type metadata accessor for ClientCommand(0);
  v4 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v33 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v3 + 48);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v37 = v6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = (*(v37 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v37 + 56) + 32 * v15;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((sub_1B0B714A4(v17, v18, v35, v36, sub_1B0B705E0) & 1) == 0)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v28 = v33;
    *v33 = v20;
    *(v28 + 8) = v21;
    *(v28 + 16) = v22;
    *(v28 + 24) = v23;
    swift_storeEnumTagMultiPayload();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B78, &qword_1B0EC8E50);
    v30 = *(v29 + 48);
    v31 = v34;
    *v34 = v17;
    v31[1] = v18;
    sub_1B0423BB0(v28, v31 + v30, type metadata accessor for ClientCommand);
    return (*(*(v29 - 8) + 56))(v31, 0, 1, v29);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B78, &qword_1B0EC8E50);
    v25 = *(*(v24 - 8) + 56);
    v26 = v24;
    v27 = v34;

    return v25(v27, 1, 1, v26);
  }
}

void sub_1B0B6F258(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, unsigned __int8 a6, uint64_t a7)
{
  v15 = type metadata accessor for Task.Logger(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v93 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v85 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v89 = &v85 - v25;
  v97 = v7;
  v26 = *(v7 + 48);
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v92 = v24;
  v94 = a1;
  v95 = a2;
  v27 = sub_1B03B8A9C(a1, a2);
  if ((v28 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v29 = *(v26 + 56) + 32 * v27;
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  LODWORD(v29) = *(v29 + 24);
  v90 = v31;
  v91 = v29;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33 = v96;
  sub_1B0A9174C(a7, a3, a4, a5, a6);
  v34 = v33;
  if (v33)
  {
    v35 = v93;
    sub_1B03B1C38(a7, v93, type metadata accessor for Task.Logger);
    sub_1B03B1C38(a7, v18, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = v32;
    v37 = sub_1B0E43988();
    v38 = sub_1B0E458E8();

    if (os_log_type_enabled(v37, v38))
    {
      LODWORD(v89) = v38;
      v87 = v36;
      v39 = v30;
      v96 = v33;
      v40 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v100 = v88;
      *v40 = 68159235;
      *(v40 + 4) = 2;
      *(v40 + 8) = 256;
      v41 = v92;
      v42 = *&v18[*(v92 + 20)];
      sub_1B03B1E20(v18, type metadata accessor for Task.Logger);
      *(v40 + 10) = v42;
      *(v40 + 11) = 2082;
      v43 = v35 + *(v41 + 20);
      v44 = *(v43 + 8);
      v45 = *(v43 + 16);
      v46 = *(v43 + 24);
      v47 = *(v43 + 32);
      v48 = *(v43 + 40);
      sub_1B0A982D8(*v43, v44, v45, v46);
      sub_1B03B1E20(v35, type metadata accessor for Task.Logger);
      if (v46 < 0)
      {
      }

      v49 = sub_1B0399D64(v44, v45, &v100);

      *(v40 + 13) = v49;
      *(v40 + 21) = 2160;
      *(v40 + 23) = 0x786F626C69616DLL;
      *(v40 + 31) = 2085;
      v98 = v39;
      v99 = v90;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v50 = sub_1B0E44BA8();
      v52 = sub_1B0399D64(v50, v51, &v100);

      *(v40 + 33) = v52;
      *(v40 + 41) = 2160;
      *(v40 + 43) = 0x786F626C69616DLL;
      *(v40 + 51) = 2085;

      v98 = v87;
      v99 = v91;
      v53 = sub_1B0E44BA8();
      v55 = sub_1B0399D64(v53, v54, &v100);

      *(v40 + 53) = v55;
      _os_log_impl(&dword_1B0389000, v37, v89, "[%.*hhx-%{public}s] Failed to rename '%{sensitive,mask.mailbox}s' to '%{sensitive,mask.mailbox}s'.", v40, 0x3Du);
      v56 = v88;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v56, -1, -1);
      MEMORY[0x1B272C230](v40, -1, -1);

      v57 = v94;
      v58 = v95;
      v34 = v96;
    }

    else
    {
      sub_1B03B1E20(v18, type metadata accessor for Task.Logger);

      sub_1B03B1E20(v35, type metadata accessor for Task.Logger);
      v57 = v94;
      v58 = v95;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B019E4(&v98, v57, v58);
  }

  else
  {
    v59 = v89;
    sub_1B03B1C38(a7, v89, type metadata accessor for Task.Logger);
    v60 = v88;
    sub_1B03B1C38(a7, v88, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v61 = v32;
    v62 = sub_1B0E43988();
    v63 = sub_1B0E45908();

    if (os_log_type_enabled(v62, v63))
    {
      LODWORD(v93) = v63;
      v87 = v61;
      v64 = v30;
      v96 = 0;
      v65 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v100 = v86;
      *v65 = 68159235;
      *(v65 + 4) = 2;
      *(v65 + 8) = 256;
      v66 = v92;
      v67 = *(v60 + *(v92 + 20));
      sub_1B03B1E20(v60, type metadata accessor for Task.Logger);
      *(v65 + 10) = v67;
      *(v65 + 11) = 2082;
      v68 = v59 + *(v66 + 20);
      v69 = *(v68 + 8);
      v70 = *(v68 + 16);
      v71 = *(v68 + 24);
      v72 = v59;
      v73 = *(v68 + 32);
      v74 = *(v68 + 40);
      sub_1B0A982D8(*v68, v69, v70, v71);
      sub_1B03B1E20(v72, type metadata accessor for Task.Logger);
      if (v71 < 0)
      {
      }

      v75 = sub_1B0399D64(v69, v70, &v100);

      *(v65 + 13) = v75;
      *(v65 + 21) = 2160;
      *(v65 + 23) = 0x786F626C69616DLL;
      *(v65 + 31) = 2085;
      v98 = v64;
      v99 = v90;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v76 = sub_1B0E44BA8();
      v78 = sub_1B0399D64(v76, v77, &v100);

      *(v65 + 33) = v78;
      *(v65 + 41) = 2160;
      *(v65 + 43) = 0x786F626C69616DLL;
      *(v65 + 51) = 2085;

      v98 = v87;
      v99 = v91;
      v79 = sub_1B0E44BA8();
      v81 = sub_1B0399D64(v79, v80, &v100);

      *(v65 + 53) = v81;
      _os_log_impl(&dword_1B0389000, v62, v93, "[%.*hhx-%{public}s] Did rename '%{sensitive,mask.mailbox}s' to '%{sensitive,mask.mailbox}s'.", v65, 0x3Du);
      v82 = v86;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v82, -1, -1);
      MEMORY[0x1B272C230](v65, -1, -1);

      v83 = v94;
      v84 = v95;
    }

    else
    {
      sub_1B03B1E20(v60, type metadata accessor for Task.Logger);

      sub_1B03B1E20(v59, type metadata accessor for Task.Logger);
      v83 = v94;
      v84 = v95;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B019E4(&v98, v83, v84);
  }
}

uint64_t sub_1B0B6FA2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0B70708();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1B0B6FA8C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B6E6BC(v4);

  *(a1 + 137) = 1;
  return result;
}

unint64_t sub_1B0B6FAF8()
{
  result = qword_1EB6E4B68;
  if (!qword_1EB6E4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B68);
  }

  return result;
}

unint64_t sub_1B0B6FB50(uint64_t a1)
{
  result = sub_1B0B6FB78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B6FB78()
{
  result = qword_1EB6E4B70;
  if (!qword_1EB6E4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B70);
  }

  return result;
}

uint64_t sub_1B0B6FBCC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v8 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v9 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = *v3;
  if (!v8)
  {
LABEL_10:
    v14 = isUniquelyReferenced_nonNull_native;
    sub_1B0B070C8();
    isUniquelyReferenced_nonNull_native = v14;
    v9 = v15;
  }

  v10 = *(v9 + 48) + 16 * isUniquelyReferenced_nonNull_native;
  v11 = *v10;
  v12 = *(v10 + 8);
  sub_1B0B91420(isUniquelyReferenced_nonNull_native);
  *v3 = v15;
  return v11;
}

uint64_t sub_1B0B6FCA4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v8 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v9 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = *v3;
  if (!v8)
  {
LABEL_10:
    v14 = isUniquelyReferenced_nonNull_native;
    sub_1B0B0722C();
    isUniquelyReferenced_nonNull_native = v14;
    v9 = v15;
  }

  v10 = (*(v9 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  v11 = *v10;
  v12 = v10[1];
  sub_1B0B915D8(isUniquelyReferenced_nonNull_native);
  *v3 = v15;
  return v11;
}

uint64_t sub_1B0B6FDD0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = a2[1];
  if (v3 >> 60 == 11)
  {
    return v4 >> 60 == 11;
  }

  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (((v4 >> 60) | 4) == 0xF)
  {
    return 0;
  }

  return sub_1B0AB8858(*(a1 + 8), v3, *a2, v4) & 1;
}

uint64_t sub_1B0B6FE60(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = a2 + 24;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = result & 1;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v4 + 8 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_21;
    }

    v10 = *(v8 + 12);
    v8 += 2;
    ++v2;
    if (v10 == v6)
    {
      v11 = *v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B09D64(0, *(v7 + 16) + 1, 1);
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1B0B09D64((v12 > 1), v13 + 1, 1);
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 8 * v13;
      *(v14 + 32) = v11;
      *(v14 + 36) = v10;
      v2 = v9;
      goto LABEL_2;
    }
  }

  v15 = *(v7 + 16);
  if (v15)
  {
    sub_1B0B09D44(0, v15, 0);
    v16 = *(v5 + 16);
    v17 = 32;
    do
    {
      v18 = *(v7 + v17);
      v19 = *(v5 + 24);
      if (v16 >= v19 >> 1)
      {
        sub_1B0B09D44((v19 > 1), v16 + 1, 1);
      }

      *(v5 + 16) = v16 + 1;
      *(v5 + 4 * v16 + 32) = v18;
      v17 += 8;
      ++v16;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1B0B70024(char a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0B6FE60(a1 & 1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_1B03B1C38(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

uint64_t sub_1B0B70260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v17 = a2;
  v18 = BYTE4(a2) & 1;
  v14[2] = &v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0B14C30(sub_1B0B70860, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v6 = v4;
    sub_1B0B09D44(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = *(v15 + 16);
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1B0B09D44((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 4 * v9 + 32) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1B0B70394(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  result = sub_1B0B70260(a1, a2 | ((HIDWORD(a2) & 1) << 32), a4);
  v24 = *(result + 16);
  if (v24)
  {
    v15 = 0;
    v22 = result + 32;
    v25 = result;
    while (v15 < *(result + 16))
    {
      v16 = *(v26 + 16);
      if (v16)
      {
        v17 = *(v22 + 4 * v15);
        v18 = v26 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        v19 = *(v23 + 72);
        do
        {
          sub_1B03B1C38(v18, v13, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v13, v10, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v10, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v20 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v10, type metadata accessor for ClientCommand);
            if (v20 == v17)
            {
              v21 = 1;
              goto LABEL_13;
            }
          }

          v18 += v19;
          --v16;
        }

        while (v16);
      }

      ++v15;
      result = v25;
      if (v15 == v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v21 = 0;
LABEL_13:

    return v21;
  }

  return result;
}

uint64_t sub_1B0B705E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a1;
  v16[1] = a2;
  v14[2] = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0B14DE4(sub_1B0B707A8, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v6 = v4;
    sub_1B0B09D44(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = *(v15 + 16);
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1B0B09D44((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 4 * v9 + 32) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1B0B70708()
{
  v1 = *(v0 + 64);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = -1 << *(v1 + 32);
  v3 = sub_1B0E460B8();
  v4 = sub_1B0B6FCA4(v3, *(v1 + 36));
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v4;
}

uint64_t sub_1B0B707A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 16) == v2[1])
  {
    return sub_1B04520BC(*(a1 + 8), *v2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0B708B0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 40;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v5 + 16 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_21;
    }

    v10 = *v8;
    v8 += 2;
    ++v3;
    if (v10 == v2)
    {
      v11 = *(v8 - 6);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B09F44(0, *(v7 + 16) + 1, 1);
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1B0B09F44((v12 > 1), v13 + 1, 1);
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v2;
      v3 = v9;
      goto LABEL_2;
    }
  }

  v15 = *(v7 + 16);
  if (v15)
  {
    sub_1B0B09D44(0, v15, 0);
    v16 = v6;
    v17 = *(v6 + 16);
    v18 = 32;
    do
    {
      v19 = *(v7 + v18);
      v20 = *(v16 + 24);
      if (v17 >= v20 >> 1)
      {
        sub_1B0B09D44((v20 > 1), v17 + 1, 1);
      }

      *(v16 + 16) = v17 + 1;
      *(v16 + 4 * v17 + 32) = v19;
      v18 += 16;
      ++v17;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

uint64_t sub_1B0B70A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0B708B0(a1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_1B03B1C38(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

uint64_t sub_1B0B70C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19[-v7];
  v20 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B1527C(sub_1B0B71F14, v19, a2);
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1B0B09D44(0, v11, 0);
    v12 = v21;
    v13 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_1B0B71F70(v13, v8);
      v15 = *v8;
      sub_1B0B71FE0(v8);
      v21 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B0B09D44((v16 > 1), v17 + 1, 1);
        v12 = v21;
      }

      *(v12 + 16) = v17 + 1;
      *(v12 + 4 * v17 + 32) = v15;
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1B0B70E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0B70C9C(a1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_1B03B1C38(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

uint64_t sub_1B0B710C8(uint64_t a1, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  v25 = a1;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0B71AE0(a2, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_1B03B1C38(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

uint64_t sub_1B0B71364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a1;
  v16[1] = a2;
  v14[2] = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0B1596C(sub_1B0B72048, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v6 = v4;
    sub_1B0B09D44(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = *(v15 + 16);
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1B0B09D44((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 4 * v9 + 32) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1B0B714A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, double))
{
  v30 = a3;
  v9 = type metadata accessor for TaskHistory.Previous(0);
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  result = a5(a1, a2, a4, v14);
  v28 = *(result + 16);
  if (v28)
  {
    v18 = 0;
    v26 = result + 32;
    v29 = result;
    while (v18 < *(result + 16))
    {
      v19 = *(v30 + 16);
      if (v19)
      {
        v20 = *(v26 + 4 * v18);
        v21 = v30 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v22 = *(v27 + 72);
        do
        {
          sub_1B03B1C38(v21, v16, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v16, v12, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v12, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v23 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v12, type metadata accessor for ClientCommand);
            if (v23 == v20)
            {
              v24 = 1;
              goto LABEL_13;
            }
          }

          v21 += v22;
          --v19;
        }

        while (v19);
      }

      ++v18;
      result = v29;
      if (v18 == v28)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v24 = 0;
LABEL_13:

    return v24;
  }

  return result;
}

uint64_t sub_1B0B716F0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = result;
  v4 = *(a2 + 16);
  v5 = a2 + 24;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v5 + 8 * v2);
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_21;
    }

    v10 = *(v8 + 12);
    v8 += 2;
    ++v2;
    if (v10 == v3)
    {
      v11 = *v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B0A464(0, *(v7 + 16) + 1, 1);
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1B0B0A464((v12 > 1), v13 + 1, 1);
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 8 * v13;
      *(v14 + 32) = v11;
      *(v14 + 36) = v3;
      v2 = v9;
      goto LABEL_2;
    }
  }

  v15 = *(v7 + 16);
  if (v15)
  {
    sub_1B0B09D44(0, v15, 0);
    v16 = v6;
    v17 = *(v6 + 16);
    v18 = 32;
    do
    {
      v19 = *(v7 + v18);
      v20 = *(v6 + 24);
      if (v17 >= v20 >> 1)
      {
        sub_1B0B09D44((v20 > 1), v17 + 1, 1);
      }

      *(v6 + 16) = v17 + 1;
      *(v6 + 4 * v17 + 32) = v19;
      v18 += 8;
      ++v17;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

uint64_t sub_1B0B718A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0B716F0(a1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_1B03B1C38(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

uint64_t sub_1B0B71AE0(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = (a1 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *v5++;
      v7 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2(0, *(v6 + 16) + 1, 1);
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        a2(v9 > 1, v10 + 1, 1);
      }

      *(v6 + 16) = v11;
      *(v6 + 4 * v10 + 32) = v7;
      --v2;
    }

    while (v2);
  }

  else
  {
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v11)
    {
      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_15;
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1B0B09D44(0, v11, 0);
  v12 = v3;
  v13 = *(v3 + 16);
  v14 = 32;
  do
  {
    v15 = *(v6 + v14);
    v16 = *(v12 + 24);
    if (v13 >= v16 >> 1)
    {
      sub_1B0B09D44((v16 > 1), v13 + 1, 1);
    }

    *(v12 + 16) = v13 + 1;
    *(v12 + 4 * v13 + 32) = v15;
    v14 += 4;
    ++v13;
    --v11;
  }

  while (v11);
LABEL_15:

  return v12;
}

uint64_t sub_1B0B71C80(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v8 = result;
  v9 = 0;
  v10 = a4 + 56;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = (v10 + 32 * v9);
    v13 = v9;
    while (1)
    {
      if (v13 >= v4)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_31;
      }

      v15 = *(v12 - 2);
      v14 = *(v12 - 1);
      v16 = *v12;
      if ((*v12 & 1) == 0)
      {
        break;
      }

      if ((a3 & 1) != 0 && v15 == v8 && v14 == a2)
      {
        v28 = v10;
        v15 = v8;
        v14 = a2;
        goto LABEL_15;
      }

LABEL_4:
      ++v13;
      v12 += 32;
      if (v9 == v4)
      {
        goto LABEL_22;
      }
    }

    if (a3 & 1) != 0 || ((v15 ^ v8))
    {
      goto LABEL_4;
    }

    v28 = v10;
LABEL_15:
    v26 = *(v12 - 6);
    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = a2;
    if ((result & 1) == 0)
    {
      result = sub_1B0B09FA4(0, *(v11 + 16) + 1, 1);
    }

    v10 = v28;
    v18 = *(v11 + 16);
    v17 = *(v11 + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      result = sub_1B0B09FA4((v17 > 1), v18 + 1, 1);
      v19 = v18 + 1;
      v10 = v28;
      v5 = MEMORY[0x1E69E7CC0];
    }

    *(v11 + 16) = v19;
    v20 = v11 + 32 * v18;
    *(v20 + 32) = v26;
    *(v20 + 40) = v15;
    *(v20 + 48) = v14;
    *(v20 + 56) = v16;
    a2 = v27;
  }

  while (v9 != v4);
LABEL_22:
  v21 = *(v11 + 16);
  if (v21)
  {
    sub_1B0B09D44(0, v21, 0);
    v22 = *(v5 + 16);
    v23 = 32;
    do
    {
      v24 = *(v11 + v23);
      v25 = *(v5 + 24);
      if (v22 >= v25 >> 1)
      {
        sub_1B0B09D44((v25 > 1), v22 + 1, 1);
      }

      *(v5 + 16) = v22 + 1;
      *(v5 + 4 * v22 + 32) = v24;
      v23 += 32;
      ++v22;
      --v21;
    }

    while (v21);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

BOOL sub_1B0B71EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else if ((a4 & 0x100000000) != 0)
  {
    return 0;
  }

  return a2 == a4 && (sub_1B04520BC(a1, a3) & 1) != 0;
}

uint64_t sub_1B0B71F14(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  return sub_1B0ABBF54(a1 + *(v4 + 52), v3) & 1;
}

uint64_t sub_1B0B71F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B71FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B0B7208C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  sub_1B0A92638(a1, &v26 - v9);
  sub_1B0A92638(a1, v7);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B72D5C(v2, v30);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B72D5C(v2, v29);
  v11 = sub_1B0E43988();
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 68159747;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v15 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v15;
    *(v13 + 11) = 2082;
    v16 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_1B0399D64(*(v16 + 1), *(v16 + 2), &v28);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    LOWORD(v15) = *(v15 + 12);
    sub_1B0A9269C(v7);
    *(v13 + 29) = v15;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v17 = *(v16 + 4);
    LODWORD(v16) = *(v16 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v10);
    v26 = v17;
    v27 = v16;
    v18 = sub_1B0E44BA8();
    v20 = sub_1B0399D64(v18, v19, &v28);

    *(v13 + 43) = v20;
    *(v13 + 51) = 1024;
    if (v31)
    {
      v21 = 0;
    }

    else
    {
      v21 = v30[26];
    }

    sub_1B0B72D94(v30);
    *(v13 + 53) = v21;
    *(v13 + 57) = 2082;
    v22 = sub_1B0425504(*&v29[109]);
    v24 = v23;
    sub_1B0B72D94(v29);
    v25 = sub_1B0399D64(v22, v24, &v28);

    *(v13 + 59) = v25;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Local UID validity: 0x%x, reason: %{public}s", v13, 0x43u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v14, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B0B72D94(v30);
    sub_1B0A9269C(v7);

    sub_1B0B72D94(v29);
    sub_1B0A9269C(v10);
  }
}

void sub_1B0B723A8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34[-v10];
  if ((*(v2 + 145) & 1) == 0)
  {
    v12 = *(v2 + 144);
    v13 = *(v2 + 136);
    v14 = *(v2 + 128);
    v16 = *(v2 + 112);
    v15 = *(v2 + 120);
    v39 = v16;
    v40 = BYTE4(v16) & 1;
    v41 = v15;
    v42 = v14 & 1;
    v43 = v13;
    v44 = v12 & 1;
    v17 = sub_1B0B260E0(*(v2 + 24), *(v2 + 32), (a1 + 168), &v39);
    if (v17)
    {
      v19 = sub_1B0B72AE8((a1 + 216), v17, v18);
      v20 = *(*(a1 + 216) + 16);
      if (v20 < v19)
      {
        __break(1u);
        return;
      }

      sub_1B0BAD05C(v19, v20);
    }

    if ((*(v2 + 108) & 1) == 0)
    {
      v21 = *(v2 + 104);
      sub_1B0A92638(a2, v11);
      sub_1B0A92638(a2, v8);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v22 = sub_1B0E43988();
      v23 = sub_1B0E458E8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v35 = v21;
        v25 = v24;
        v26 = swift_slowAlloc();
        v38 = v26;
        *v25 = 68159747;
        *(v25 + 4) = 2;
        *(v25 + 8) = 256;
        v27 = &v8[*(v5 + 20)];
        *(v25 + 10) = *v27;
        *(v25 + 11) = 2082;
        v28 = &v11[*(v5 + 20)];
        *(v25 + 13) = sub_1B0399D64(*(v28 + 1), *(v28 + 2), &v38);
        *(v25 + 21) = 1040;
        *(v25 + 23) = 2;
        *(v25 + 27) = 512;
        LOWORD(v27) = *(v27 + 12);
        sub_1B0A9269C(v8);
        *(v25 + 29) = v27;
        *(v25 + 31) = 2160;
        *(v25 + 33) = 0x786F626C69616DLL;
        *(v25 + 41) = 2085;
        v29 = *(v28 + 4);
        LODWORD(v28) = *(v28 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v11);
        v36 = v29;
        v37 = v28;
        v30 = sub_1B0E44BA8();
        v32 = sub_1B0399D64(v30, v31, &v38);

        *(v25 + 43) = v32;
        *(v25 + 51) = 1024;
        *(v25 + 53) = v35;
        *(v25 + 57) = 1024;
        if ((v16 & 0x100000000) != 0)
        {
          v33 = 0;
        }

        else
        {
          v33 = v16;
        }

        *(v25 + 59) = v33;
        _os_log_impl(&dword_1B0389000, v22, v23, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did delete all existing local messages due to validity change: 0x%x → 0x%x", v25, 0x3Fu);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v26, -1, -1);
        MEMORY[0x1B272C230](v25, -1, -1);
      }

      else
      {
        sub_1B0A9269C(v8);

        sub_1B0A9269C(v11);
      }
    }
  }
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1B0B7273C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
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

uint64_t sub_1B0B72784(uint64_t result, int a2, int a3)
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
      *(result + 146) = 1;
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

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0B72800@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t *a4@<X8>)
{
  result = sub_1B0B729D0(a1, a2, a3);
  *a4 = result;
  return result;
}

unint64_t sub_1B0B72854()
{
  result = qword_1EB6DDF20;
  if (!qword_1EB6DDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF20);
  }

  return result;
}

unint64_t sub_1B0B728A8(uint64_t a1)
{
  result = sub_1B0B728D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B728D0()
{
  result = qword_1EB6DDF18;
  if (!qword_1EB6DDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF18);
  }

  return result;
}

uint64_t sub_1B0B72924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = v6 + 48 * result;
    if (*(v7 + 32) == a3)
    {
      v8 = *(v7 + 24);
      v9 = *(v8 + 16);
      if (v9 == *(a2 + 16))
      {
        break;
      }
    }

LABEL_3:
    if (++result == v3)
    {
      return 0;
    }
  }

  if (v9)
  {
    v10 = v8 == a2;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = (v8 + 32);
    v12 = (a2 + 32);
    while (v9)
    {
      if (*v11 != *v12)
      {
        goto LABEL_3;
      }

      ++v11;
      ++v12;
      if (!--v9)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1B0B729D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 20);
  v6 = *(v3 + 108);
  if (v5)
  {
    if (*(v3 + 108))
    {
      return 0xF000000000000007;
    }
  }

  else
  {
    if (v4 != *(v3 + 104))
    {
      v6 = 1;
    }

    if ((v6 & 1) == 0)
    {
      return 0xF000000000000007;
    }
  }

  v7 = *(a3 + 32);
  if (v7 < 2)
  {
    v8 = *(a3 + 24);
    if ((*(v3 + 145) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
    if ((*(v3 + 145) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v9 = 0x100000000;
  if (!*(a3 + 20))
  {
    v9 = 0;
  }

  *(v3 + 112) = v9 | v4;
  *(v3 + 120) = xmmword_1B0EA4610;
  *(v3 + 136) = v8;
  *(v3 + 144) = v7 > 1;
  *(v3 + 145) = 0;
LABEL_14:
  if (sub_1B0A9F17C(a1, a2))
  {
    return 0xF000000000000007;
  }

  v11 = swift_allocObject();
  v12 = *(v3 + 8);
  *(v11 + 16) = *v3;
  *(v11 + 24) = v12;
  *(v11 + 32) = v4;
  *(v11 + 36) = v5;
  *(v11 + 40) = 0;
  *(v11 + 48) = 1;
  *(v11 + 56) = v8;
  *(v11 + 64) = v7 > 1;
  v13 = v11 | 0x1000000000000004;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v13;
}

uint64_t sub_1B0B72AE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = sub_1B0B72924(*a1, a2, a3);
  v7 = result;
  if (v3)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      v10 = *(v4 + 16);
      if (v8 == v10)
      {
        return v7;
      }

      if (v8 >= v10)
      {
        goto LABEL_30;
      }

      v11 = v4 + 32 + 48 * v8;
      v13 = *(v11 + 24);
      v12 = *(v11 + 32);
      if (v12 == a3 && (v14 = *(v13 + 16), v14 == *(a2 + 16)))
      {
        if (v14)
        {
          v15 = v13 == a2;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v16 = (v13 + 32);
          v17 = (a2 + 32);
          while (v14)
          {
            if (*v16 != *v17)
            {
              goto LABEL_21;
            }

            ++v16;
            ++v17;
            if (!--v14)
            {
              goto LABEL_7;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          break;
        }
      }

      else
      {
LABEL_21:
        if (v7 != v8)
        {
          if (v7 >= v10)
          {
            goto LABEL_33;
          }

          v18 = v4 + 32 + 48 * v7;
          v19 = *v18;
          v36 = *(v18 + 16);
          v20 = *(v18 + 24);
          v34 = *(v18 + 40);
          v35 = *(v18 + 32);
          v22 = *v11;
          v21 = *(v11 + 8);
          v38 = *(v11 + 16);
          v40 = *(v11 + 40);
          v37 = *(v18 + 8);
          sub_1B03B2000(*v18, v37);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v39 = v22;
          v23 = v22;
          v24 = v21;
          sub_1B03B2000(v23, v21);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0B8C8D8(v4);
            v4 = result;
          }

          if (v7 >= *(v4 + 16))
          {
            goto LABEL_34;
          }

          v25 = v4 + 32 + 48 * v7;
          v26 = *v25;
          v27 = *(v25 + 8);
          v28 = *(v25 + 24);
          *v25 = v39;
          *(v25 + 8) = v24;
          *(v25 + 16) = v38;
          *(v25 + 24) = v13;
          *(v25 + 32) = v12;
          *(v25 + 40) = v40;
          sub_1B0391D50(v26, v27);

          if (v8 >= *(v4 + 16))
          {
            goto LABEL_35;
          }

          v29 = v4 + 32 + 48 * v8;
          v30 = *v29;
          v31 = *(v29 + 8);
          v32 = *(v29 + 24);
          *v29 = v19;
          *(v29 + 8) = v37;
          *(v29 + 16) = v36;
          *(v29 + 24) = v20;
          *(v29 + 32) = v35;
          *(v29 + 40) = v34;
          sub_1B0391D50(v30, v31);

          *a1 = v4;
        }

        v9 = __OFADD__(v7++, 1);
        if (v9)
        {
          goto LABEL_32;
        }
      }

LABEL_7:
      v9 = __OFADD__(v8++, 1);
      if (v9)
      {
        goto LABEL_31;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _s13IMAP2Behavior19RunningSyncRequestsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v27 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v26 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = *(*(v3 + 48) + 4 * v11);
    v13 = (*(v3 + 56) + 32 * v11);
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = v13[16];
    v17 = *(v13 + 3);
    v18 = sub_1B03FE284(v12);
    if ((v19 & 1) == 0)
    {
      return 0;
    }

    v20 = v2;
    v21 = (*(v2 + 56) + 32 * v18);
    v22 = *(v21 + 1);
    v23 = *(v21 + 3);
    v28 = *v21;
    v29 = v21[16];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v24 = static SyncRequest.__derived_struct_equals(_:_:)(v28, v22, v29, v14, v15, v16);

    result = 0;
    if (v24)
    {
      v25 = v23 == v17;
      v2 = v20;
      if (v25)
      {
        continue;
      }
    }

    return result;
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v26)
    {
      return 1;
    }

    v10 = *(v27 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v7 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B72F70(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 48) + 16 * v12;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v3 + 56) + 72 * v12;
    v17 = *(v16 + 64);
    v19 = *(v16 + 32);
    v18 = *(v16 + 48);
    v36 = *(v16 + 16);
    v20 = *v16;
    v37 = v19;
    v38 = v18;
    v35 = v20;
    v39 = v17;
    v32 = v18;
    v33 = v36;
    v30 = v19;
    v31 = v20;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03BB0B4(&v35, v34);
    v21 = v14 == 0;
    if (!v14)
    {
      return v21;
    }

    v42[0] = v31;
    v42[1] = v33;
    v42[2] = v30;
    v42[3] = v32;
    v43 = v17;
    v22 = sub_1B03AB888(v14, v15);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      sub_1B039E440(v42);
      return 0;
    }

    v25 = *(a2 + 56) + 72 * v22;
    v40[0] = *v25;
    v27 = *(v25 + 32);
    v26 = *(v25 + 48);
    v28 = *(v25 + 16);
    v41 = *(v25 + 64);
    v40[2] = v27;
    v40[3] = v26;
    v40[1] = v28;
    sub_1B03BB0B4(v40, &v35);
    v29 = static RemoteMailbox.__derived_struct_equals(_:_:)(v40, v42);
    sub_1B039E440(v40);
    result = sub_1B039E440(v42);
    if ((v29 & 1) == 0)
    {
      return v21;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B73180(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = sub_1B03B8A9C(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    v16 = v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((v16 & 1) == 0)
    {

      return 0;
    }

    v17 = sub_1B03B6298(*(*(a2 + 56) + 8 * v14), v13);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0B732C0(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 2 * v12);
    result = sub_1B03B8A9C(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 2 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B733CC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v31 = result;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
LABEL_13:
    v14 = v10 | (v4 << 6);
    v15 = *(*(v3 + 48) + 4 * v14);
    v16 = (*(v3 + 56) + 24 * v14);
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = v16[16];
    v20 = sub_1B03FE284(v15);
    if (v21)
    {
      v22 = (*(v2 + 56) + 24 * v20);
      v23 = *(v22 + 1);
      v24 = v22[16];
      v25 = v11;
      v26 = *v22;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v27 = v26;
      v8 = v25;
      v28 = v24;
      v2 = a2;
      v29 = static SyncRequest.__derived_struct_equals(_:_:)(v27, v23, v28, v17, v18, v19);

      v3 = v31;

      if (v29)
      {
        continue;
      }
    }

    return 0;
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0B73554(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_17:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    v15 = *(v3 + 56) + 12 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    result = sub_1B0ADFFE8(v14);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v19 = *(a2 + 56) + 12 * result;
    if (*(v19 + 8))
    {
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v16 == *v19)
      {
        v9 = v17;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B73688(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_154:
    result = 1;
LABEL_157:
    v85 = *MEMORY[0x1E69E9840];
    return result;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_156:
    result = 0;
    goto LABEL_157;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (!v8)
      {
        v11 = v4;
        while (1)
        {
          v4 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v4 >= v9)
          {
            goto LABEL_154;
          }

          v12 = *(v5 + 8 * v4);
          ++v11;
          if (v12)
          {
            v10 = __clz(__rbit64(v12));
            v97 = (v12 - 1) & v12;
            goto LABEL_13;
          }
        }

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
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
      }

      v10 = __clz(__rbit64(v8));
      v97 = (v8 - 1) & v8;
LABEL_13:
      v13 = v10 | (v4 << 6);
      v14 = *(*(v3 + 48) + 4 * v13);
      v15 = (*(v3 + 56) + 24 * v13);
      v16 = *v15;
      v18 = *(v15 + 1);
      v17 = *(v15 + 2);
      sub_1B03B2000(v18, v17);
      v19 = sub_1B03FE284(v14);
      if ((v20 & 1) == 0 || (v21 = (*(v2 + 56) + 24 * v19), v16 != *v21))
      {
LABEL_155:
        sub_1B0391D50(v18, v17);
        goto LABEL_156;
      }

      v22 = *(v21 + 1);
      v23 = *(v21 + 2);
      v24 = v23 >> 62;
      v25 = v17 >> 62;
      if (v23 >> 62 == 3)
      {
        if (v22)
        {
          v26 = 0;
        }

        else
        {
          v26 = v23 == 0xC000000000000000;
        }

        if (v26 && v17 >> 62 == 3 && !v18 && v17 == 0xC000000000000000)
        {
          v29 = 0;
          v30 = 0xC000000000000000;
          goto LABEL_59;
        }

LABEL_39:
        v31 = 0;
        if (v25 <= 1)
        {
          goto LABEL_37;
        }

        goto LABEL_40;
      }

      if (v24 > 1)
      {
        if (v24 != 2)
        {
          goto LABEL_39;
        }

        v33 = *(v22 + 16);
        v32 = *(v22 + 24);
        v34 = __OFSUB__(v32, v33);
        v31 = v32 - v33;
        if (v34)
        {
          goto LABEL_161;
        }

        if (v25 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v24)
      {
        LODWORD(v31) = HIDWORD(v22) - v22;
        if (__OFSUB__(HIDWORD(v22), v22))
        {
          goto LABEL_162;
        }

        v31 = v31;
        if (v25 <= 1)
        {
LABEL_37:
          if (v25)
          {
            LODWORD(v35) = HIDWORD(v18) - v18;
            if (__OFSUB__(HIDWORD(v18), v18))
            {
              goto LABEL_159;
            }

            v35 = v35;
          }

          else
          {
            v35 = BYTE6(v17);
          }

          goto LABEL_46;
        }
      }

      else
      {
        v31 = BYTE6(v23);
        if (v25 <= 1)
        {
          goto LABEL_37;
        }
      }

LABEL_40:
      if (v25 != 2)
      {
        if (v31)
        {
          goto LABEL_155;
        }

        goto LABEL_58;
      }

      v37 = *(v18 + 16);
      v36 = *(v18 + 24);
      v34 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v34)
      {
        goto LABEL_160;
      }

LABEL_46:
      if (v31 != v35)
      {
        goto LABEL_155;
      }

      if (v31 >= 1)
      {
        break;
      }

LABEL_58:
      v29 = v18;
      v30 = v17;
LABEL_59:
      sub_1B0391D50(v29, v30);
      v8 = v97;
    }

    if (v24 <= 1)
    {
      break;
    }

    if (v24 != 2)
    {
      memset(__s1, 0, 14);
      if (v25 == 2)
      {
        v67 = *(v18 + 16);
        v89 = *(v18 + 24);
        v94 = v22;
        sub_1B03B2000(v22, v23);
        v68 = sub_1B0E42A98();
        v93 = v2;
        if (v68)
        {
          v69 = sub_1B0E42AC8();
          if (__OFSUB__(v67, v69))
          {
            goto LABEL_176;
          }

          v68 += v67 - v69;
        }

        v70 = &v89[-v67];
        if (__OFSUB__(v89, v67))
        {
          goto LABEL_170;
        }

        v71 = sub_1B0E42AB8();
        if (!v68)
        {
          goto LABEL_187;
        }

LABEL_119:
        if (v71 >= v70)
        {
          v74 = v70;
        }

        else
        {
          v74 = v71;
        }

        v55 = memcmp(__s1, v68, v74);
        sub_1B0391D50(v94, v23);
        sub_1B0391D50(v18, v17);
        v2 = v93;
        goto LABEL_148;
      }

      if (v25 != 1)
      {
LABEL_81:
        __s2 = v18;
        v99 = v17;
        v100 = BYTE2(v17);
        v101 = BYTE3(v17);
        v102 = BYTE4(v17);
        v103 = BYTE5(v17);
        v55 = memcmp(__s1, &__s2, BYTE6(v17));
        v58 = v18;
        v59 = v17;
LABEL_151:
        sub_1B0391D50(v58, v59);
        goto LABEL_152;
      }

      v86 = ((v18 >> 32) - v18);
      if (v18 >> 32 < v18)
      {
        goto LABEL_167;
      }

      v94 = v22;
      sub_1B03B2000(v22, v23);
      v51 = sub_1B0E42A98();
      if (!v51)
      {
        goto LABEL_183;
      }

      v52 = v51;
      v53 = sub_1B0E42AC8();
      if (__OFSUB__(v18, v53))
      {
        goto LABEL_172;
      }

      v41 = (v18 - v53 + v52);
      result = sub_1B0E42AB8();
      if (!v41)
      {
        goto LABEL_184;
      }

      goto LABEL_77;
    }

    v91 = v2;
    v95 = v22;
    v43 = *(v22 + 16);
    sub_1B03B2000(v22, v23);
    v44 = sub_1B0E42A98();
    if (v44)
    {
      v45 = v44;
      v46 = sub_1B0E42AC8();
      if (__OFSUB__(v43, v46))
      {
        goto LABEL_164;
      }

      v87 = (v43 - v46 + v45);
    }

    else
    {
      v87 = 0;
    }

    sub_1B0E42AB8();
    v3 = a1;
    if (v25 == 2)
    {
      v76 = *(v18 + 16);
      v75 = *(v18 + 24);
      v60 = sub_1B0E42A98();
      if (v60)
      {
        v77 = sub_1B0E42AC8();
        if (__OFSUB__(v76, v77))
        {
          goto LABEL_178;
        }

        v60 += v76 - v77;
      }

      v34 = __OFSUB__(v75, v76);
      v78 = v75 - v76;
      if (v34)
      {
        goto LABEL_173;
      }

      v79 = sub_1B0E42AB8();
      if (v79 >= v78)
      {
        v63 = v78;
      }

      else
      {
        v63 = v79;
      }

      v64 = v87;
      if (!v87)
      {
        goto LABEL_193;
      }

      v2 = v91;
      if (!v60)
      {
        goto LABEL_192;
      }
    }

    else
    {
      if (v25 != 1)
      {
        result = v87;
        v2 = v91;
        __s1[0] = v18;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        if (!v87)
        {
          goto LABEL_188;
        }

LABEL_150:
        v55 = memcmp(result, __s1, BYTE6(v17));
        sub_1B0391D50(v18, v17);
        v58 = v95;
        v59 = v23;
        goto LABEL_151;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_168;
      }

      v60 = sub_1B0E42A98();
      if (v60)
      {
        v61 = sub_1B0E42AC8();
        if (__OFSUB__(v18, v61))
        {
          goto LABEL_180;
        }

        v60 += v18 - v61;
      }

      v2 = v91;
      v62 = sub_1B0E42AB8();
      if (v62 >= (v18 >> 32) - v18)
      {
        v63 = (v18 >> 32) - v18;
      }

      else
      {
        v63 = v62;
      }

      v64 = v87;
      if (!v87)
      {
        goto LABEL_190;
      }

      if (!v60)
      {
        goto LABEL_189;
      }
    }

LABEL_144:
    if (v64 == v60)
    {
      sub_1B0391D50(v18, v17);
      sub_1B0391D50(v95, v23);
      v3 = a1;
      v8 = v97;
    }

    else
    {
      v55 = memcmp(v64, v60, v63);
      sub_1B0391D50(v18, v17);
      v56 = v95;
      v57 = v23;
LABEL_147:
      sub_1B0391D50(v56, v57);
LABEL_148:
      v3 = a1;
LABEL_152:
      v8 = v97;
      if (v55)
      {
        goto LABEL_156;
      }
    }
  }

  if (!v24)
  {
    __s1[0] = v22;
    LOWORD(__s1[1]) = v23;
    BYTE2(__s1[1]) = BYTE2(v23);
    BYTE3(__s1[1]) = BYTE3(v23);
    BYTE4(__s1[1]) = BYTE4(v23);
    BYTE5(__s1[1]) = BYTE5(v23);
    if (!v25)
    {
      goto LABEL_81;
    }

    v94 = v22;
    if (v25 != 1)
    {
      v72 = *(v18 + 16);
      v90 = *(v18 + 24);
      sub_1B03B2000(v22, v23);
      v68 = sub_1B0E42A98();
      v93 = v2;
      if (v68)
      {
        v73 = sub_1B0E42AC8();
        if (__OFSUB__(v72, v73))
        {
          goto LABEL_177;
        }

        v68 += v72 - v73;
      }

      v70 = &v90[-v72];
      if (__OFSUB__(v90, v72))
      {
        goto LABEL_169;
      }

      v71 = sub_1B0E42AB8();
      if (!v68)
      {
        goto LABEL_191;
      }

      goto LABEL_119;
    }

    v86 = ((v18 >> 32) - v18);
    if (v18 >> 32 < v18)
    {
      goto LABEL_166;
    }

    sub_1B03B2000(v22, v23);
    v38 = sub_1B0E42A98();
    if (!v38)
    {
      goto LABEL_194;
    }

    v39 = v38;
    v40 = sub_1B0E42AC8();
    if (__OFSUB__(v18, v40))
    {
      goto LABEL_171;
    }

    v41 = (v18 - v40 + v39);
    result = sub_1B0E42AB8();
    if (!v41)
    {
      goto LABEL_195;
    }

LABEL_77:
    if (result >= v86)
    {
      v54 = v86;
    }

    else
    {
      v54 = result;
    }

    v55 = memcmp(__s1, v41, v54);
    sub_1B0391D50(v94, v23);
    v56 = v18;
    v57 = v17;
    goto LABEL_147;
  }

  v92 = v2;
  v47 = v22;
  if (v22 > v22 >> 32)
  {
    goto LABEL_163;
  }

  v95 = v22;
  sub_1B03B2000(v22, v23);
  v48 = sub_1B0E42A98();
  if (v48)
  {
    v49 = v48;
    v50 = sub_1B0E42AC8();
    if (__OFSUB__(v47, v50))
    {
      goto LABEL_165;
    }

    v88 = (v47 - v50 + v49);
  }

  else
  {
    v88 = 0;
  }

  sub_1B0E42AB8();
  v3 = a1;
  if (v25 == 2)
  {
    v81 = *(v18 + 16);
    v80 = *(v18 + 24);
    v60 = sub_1B0E42A98();
    if (v60)
    {
      v82 = sub_1B0E42AC8();
      if (__OFSUB__(v81, v82))
      {
        goto LABEL_179;
      }

      v60 += v81 - v82;
    }

    v34 = __OFSUB__(v80, v81);
    v83 = v80 - v81;
    if (v34)
    {
      goto LABEL_175;
    }

    v84 = sub_1B0E42AB8();
    if (v84 >= v83)
    {
      v63 = v83;
    }

    else
    {
      v63 = v84;
    }

    v64 = v88;
    if (!v88)
    {
      goto LABEL_186;
    }

    v2 = v92;
    if (!v60)
    {
      goto LABEL_185;
    }

    goto LABEL_144;
  }

  if (v25 != 1)
  {
    result = v88;
    v2 = v92;
    __s1[0] = v18;
    LOWORD(__s1[1]) = v17;
    BYTE2(__s1[1]) = BYTE2(v17);
    BYTE3(__s1[1]) = BYTE3(v17);
    BYTE4(__s1[1]) = BYTE4(v17);
    BYTE5(__s1[1]) = BYTE5(v17);
    if (!v88)
    {
      goto LABEL_196;
    }

    goto LABEL_150;
  }

  if (v18 >> 32 < v18)
  {
    goto LABEL_174;
  }

  v60 = sub_1B0E42A98();
  if (v60)
  {
    v65 = sub_1B0E42AC8();
    if (__OFSUB__(v18, v65))
    {
      goto LABEL_181;
    }

    v60 += v18 - v65;
  }

  v2 = v92;
  v66 = sub_1B0E42AB8();
  if (v66 >= (v18 >> 32) - v18)
  {
    v63 = (v18 >> 32) - v18;
  }

  else
  {
    v63 = v66;
  }

  v64 = v88;
  if (!v88)
  {
    goto LABEL_182;
  }

  if (v60)
  {
    goto LABEL_144;
  }

  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  sub_1B0E42AB8();
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
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  result = sub_1B0E42AB8();
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
  return result;
}

uint64_t sub_1B0B74018(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_154:
    result = 1;
LABEL_157:
    v83 = *MEMORY[0x1E69E9840];
    return result;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_156:
    result = 0;
    goto LABEL_157;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v11 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v12 = v4;
      do
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_159;
        }

        if (v4 >= v9)
        {
          goto LABEL_154;
        }

        v13 = *(v5 + 8 * v4);
        ++v12;
      }

      while (!v13);
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
LABEL_13:
      v14 = v10 | (v4 << 6);
      v15 = *(*(v3 + 48) + 4 * v14);
      v16 = (*(v3 + 56) + 16 * v14);
      v18 = *v16;
      v17 = v16[1];
      sub_1B03B2000(*v16, v17);
      result = v17 >> 60 == 15;
      if (v17 >> 60 == 15)
      {
        goto LABEL_157;
      }

      v95 = v11;
      v20 = sub_1B03FE284(v15);
      if ((v21 & 1) == 0)
      {
        goto LABEL_155;
      }

      v22 = (*(v2 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v24 >> 62;
      v26 = v17 >> 62;
      if (v24 >> 62 != 3)
      {
        break;
      }

      if (v23)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == 0xC000000000000000;
      }

      v28 = v27 && v17 >> 62 == 3;
      if (!v28 || (!v18 ? (v29 = v17 == 0xC000000000000000) : (v29 = 0), !v29))
      {
LABEL_39:
        v32 = 0;
        if (v26 > 1)
        {
          goto LABEL_40;
        }

LABEL_37:
        if (!v26)
        {
          v36 = BYTE6(v17);
          goto LABEL_46;
        }

        LODWORD(v36) = HIDWORD(v18) - v18;
        if (!__OFSUB__(HIDWORD(v18), v18))
        {
          v36 = v36;
          goto LABEL_46;
        }

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
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
      }

      v30 = 0;
      v31 = 0xC000000000000000;
LABEL_59:
      sub_1B0391D50(v30, v31);
      v8 = v95;
    }

    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_39;
      }

      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (!v35)
      {
        if (v26 > 1)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_161;
    }

    if (v25)
    {
      LODWORD(v32) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_162;
      }

      v32 = v32;
      if (v26 <= 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v32 = BYTE6(v24);
      if (v26 <= 1)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    if (v26 != 2)
    {
      if (v32)
      {
        goto LABEL_155;
      }

LABEL_58:
      v30 = v18;
      v31 = v17;
      goto LABEL_59;
    }

    v38 = *(v18 + 16);
    v37 = *(v18 + 24);
    v35 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (v35)
    {
      goto LABEL_160;
    }

LABEL_46:
    if (v32 != v36)
    {
LABEL_155:
      sub_1B0391D50(v18, v17);
      goto LABEL_156;
    }

    if (v32 < 1)
    {
      goto LABEL_58;
    }

    if (v25 > 1)
    {
      break;
    }

    if (!v25)
    {
      __s1[0] = v23;
      LOWORD(__s1[1]) = v24;
      BYTE2(__s1[1]) = BYTE2(v24);
      BYTE3(__s1[1]) = BYTE3(v24);
      BYTE4(__s1[1]) = BYTE4(v24);
      BYTE5(__s1[1]) = BYTE5(v24);
      if (!v26)
      {
        goto LABEL_81;
      }

      v92 = v23;
      if (v26 != 1)
      {
        v70 = *(v18 + 16);
        v88 = *(v18 + 24);
        sub_1B03B2000(v23, v24);
        v67 = sub_1B0E42A98();
        v91 = v2;
        if (v67)
        {
          v71 = sub_1B0E42AC8();
          if (__OFSUB__(v70, v71))
          {
            goto LABEL_177;
          }

          v67 += v70 - v71;
        }

        v69 = &v88[-v70];
        if (__OFSUB__(v88, v70))
        {
          goto LABEL_169;
        }

        result = sub_1B0E42AB8();
        if (!v67)
        {
          goto LABEL_187;
        }

        goto LABEL_119;
      }

      v84 = ((v18 >> 32) - v18);
      if (v18 >> 32 < v18)
      {
        goto LABEL_167;
      }

      sub_1B03B2000(v23, v24);
      v39 = sub_1B0E42A98();
      if (!v39)
      {
        goto LABEL_186;
      }

      v40 = v39;
      v41 = sub_1B0E42AC8();
      if (__OFSUB__(v18, v41))
      {
        goto LABEL_171;
      }

      v42 = (v18 - v41 + v40);
      result = sub_1B0E42AB8();
      if (!v42)
      {
        goto LABEL_193;
      }

      goto LABEL_77;
    }

    v90 = v2;
    v47 = v23;
    if (v23 > v23 >> 32)
    {
      goto LABEL_163;
    }

    v93 = v23;
    sub_1B03B2000(v23, v24);
    v48 = sub_1B0E42A98();
    if (v48)
    {
      v49 = v48;
      v50 = sub_1B0E42AC8();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_165;
      }

      v86 = (v47 - v50 + v49);
    }

    else
    {
      v86 = 0;
    }

    sub_1B0E42AB8();
    v3 = a1;
    if (v26 == 2)
    {
      v79 = *(v18 + 16);
      v78 = *(v18 + 24);
      v60 = sub_1B0E42A98();
      if (v60)
      {
        v80 = sub_1B0E42AC8();
        if (__OFSUB__(v79, v80))
        {
          goto LABEL_179;
        }

        v60 += v79 - v80;
      }

      v35 = __OFSUB__(v78, v79);
      v81 = v78 - v79;
      if (v35)
      {
        goto LABEL_175;
      }

      v82 = sub_1B0E42AB8();
      if (v82 >= v81)
      {
        v63 = v81;
      }

      else
      {
        v63 = v82;
      }

      result = v86;
      if (!v86)
      {
        goto LABEL_197;
      }

      v2 = v90;
      if (!v60)
      {
        goto LABEL_196;
      }
    }

    else
    {
      if (v26 != 1)
      {
        result = v86;
        v2 = v90;
        __s1[0] = v18;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        if (!v86)
        {
          goto LABEL_194;
        }

        goto LABEL_150;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_174;
      }

      v60 = sub_1B0E42A98();
      if (v60)
      {
        v64 = sub_1B0E42AC8();
        if (__OFSUB__(v18, v64))
        {
          goto LABEL_181;
        }

        v60 += v18 - v64;
      }

      v2 = v90;
      v65 = sub_1B0E42AB8();
      if (v65 >= (v18 >> 32) - v18)
      {
        v63 = (v18 >> 32) - v18;
      }

      else
      {
        v63 = v65;
      }

      result = v86;
      if (!v86)
      {
        goto LABEL_185;
      }

      if (!v60)
      {
        goto LABEL_184;
      }
    }

LABEL_144:
    if (result == v60)
    {
      sub_1B0391D50(v18, v17);
      sub_1B0391D50(v93, v24);
      v3 = a1;
      v8 = v95;
    }

    else
    {
      v55 = memcmp(result, v60, v63);
      sub_1B0391D50(v18, v17);
      v56 = v93;
      v57 = v24;
LABEL_147:
      sub_1B0391D50(v56, v57);
LABEL_148:
      v3 = a1;
LABEL_152:
      v8 = v95;
      result = 0;
      if (v55)
      {
        goto LABEL_157;
      }
    }
  }

  if (v25 == 2)
  {
    v89 = v2;
    v93 = v23;
    v43 = *(v23 + 16);
    sub_1B03B2000(v23, v24);
    v44 = sub_1B0E42A98();
    if (v44)
    {
      v45 = v44;
      v46 = sub_1B0E42AC8();
      if (__OFSUB__(v43, v46))
      {
        goto LABEL_164;
      }

      v85 = (v43 - v46 + v45);
    }

    else
    {
      v85 = 0;
    }

    sub_1B0E42AB8();
    v3 = a1;
    if (v26 == 2)
    {
      v74 = *(v18 + 16);
      v73 = *(v18 + 24);
      v60 = sub_1B0E42A98();
      if (v60)
      {
        v75 = sub_1B0E42AC8();
        if (__OFSUB__(v74, v75))
        {
          goto LABEL_178;
        }

        v60 += v74 - v75;
      }

      v35 = __OFSUB__(v73, v74);
      v76 = v73 - v74;
      if (v35)
      {
        goto LABEL_173;
      }

      v77 = sub_1B0E42AB8();
      if (v77 >= v76)
      {
        v63 = v76;
      }

      else
      {
        v63 = v77;
      }

      result = v85;
      if (!v85)
      {
        goto LABEL_190;
      }

      v2 = v89;
      if (!v60)
      {
        goto LABEL_189;
      }
    }

    else
    {
      if (v26 != 1)
      {
        result = v85;
        v2 = v89;
        __s1[0] = v18;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        if (!v85)
        {
          goto LABEL_188;
        }

LABEL_150:
        v55 = memcmp(result, __s1, BYTE6(v17));
        sub_1B0391D50(v18, v17);
        v58 = v93;
        v59 = v24;
        goto LABEL_151;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_170;
      }

      v60 = sub_1B0E42A98();
      if (v60)
      {
        v61 = sub_1B0E42AC8();
        if (__OFSUB__(v18, v61))
        {
          goto LABEL_180;
        }

        v60 += v18 - v61;
      }

      v2 = v89;
      v62 = sub_1B0E42AB8();
      if (v62 >= (v18 >> 32) - v18)
      {
        v63 = (v18 >> 32) - v18;
      }

      else
      {
        v63 = v62;
      }

      result = v85;
      if (!v85)
      {
        goto LABEL_192;
      }

      if (!v60)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_144;
  }

  memset(__s1, 0, 14);
  if (v26 == 2)
  {
    v66 = *(v18 + 16);
    v87 = *(v18 + 24);
    v92 = v23;
    sub_1B03B2000(v23, v24);
    v67 = sub_1B0E42A98();
    v91 = v2;
    if (v67)
    {
      v68 = sub_1B0E42AC8();
      if (__OFSUB__(v66, v68))
      {
        goto LABEL_176;
      }

      v67 += v66 - v68;
    }

    v69 = &v87[-v66];
    if (__OFSUB__(v87, v66))
    {
      goto LABEL_168;
    }

    result = sub_1B0E42AB8();
    if (!v67)
    {
      goto LABEL_195;
    }

LABEL_119:
    if (result >= v69)
    {
      v72 = v69;
    }

    else
    {
      v72 = result;
    }

    v55 = memcmp(__s1, v67, v72);
    sub_1B0391D50(v92, v24);
    sub_1B0391D50(v18, v17);
    v2 = v91;
    goto LABEL_148;
  }

  if (v26 != 1)
  {
LABEL_81:
    __s2 = v18;
    v97 = v17;
    v98 = BYTE2(v17);
    v99 = BYTE3(v17);
    v100 = BYTE4(v17);
    v101 = BYTE5(v17);
    v55 = memcmp(__s1, &__s2, BYTE6(v17));
    v58 = v18;
    v59 = v17;
LABEL_151:
    sub_1B0391D50(v58, v59);
    goto LABEL_152;
  }

  v84 = ((v18 >> 32) - v18);
  if (v18 >> 32 < v18)
  {
    goto LABEL_166;
  }

  v92 = v23;
  sub_1B03B2000(v23, v24);
  v51 = sub_1B0E42A98();
  if (v51)
  {
    v52 = v51;
    v53 = sub_1B0E42AC8();
    if (__OFSUB__(v18, v53))
    {
      goto LABEL_172;
    }

    v42 = (v18 - v53 + v52);
    result = sub_1B0E42AB8();
    if (!v42)
    {
      goto LABEL_183;
    }

LABEL_77:
    if (result >= v84)
    {
      v54 = v84;
    }

    else
    {
      v54 = result;
    }

    v55 = memcmp(__s1, v42, v54);
    sub_1B0391D50(v92, v24);
    v56 = v18;
    v57 = v17;
    goto LABEL_147;
  }

  sub_1B0E42AB8();
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  result = sub_1B0E42AB8();
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
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
  return result;
}

uint64_t sub_1B0B749AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 4 * v12);
    v14 = *(v3 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 9);
    v18 = sub_1B03FE284(v13);
    if ((v19 & 1) == 0)
    {
      return 0;
    }

    v20 = *(a2 + 56) + 16 * v18;
    if (*(v20 + 8) == 1)
    {
      result = 0;
      if (!v16)
      {
        return result;
      }
    }

    else
    {
      if (v16)
      {
        return 0;
      }

      result = 0;
      if (*v20 != v15)
      {
        return result;
      }
    }

    if ((v17 ^ *(v20 + 9)))
    {
      return result;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t RunningSyncRequests.Change.started.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1);

  return sub_1B0450C74(a1, v1);
}

uint64_t RunningSyncRequests.Change.completed.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 40));

  return sub_1B0450C74(a1, v1 + 40);
}

uint64_t RunningSyncRequests.Change.init<A, B>(started:completed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  a7[3] = a3;
  a7[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7);
  v17 = *(a3 - 8);
  (*(v17 + 16))(boxed_opaque_existential_1, a1, a3);
  a7[8] = a4;
  a7[9] = a6;
  v14 = __swift_allocate_boxed_opaque_existential_1(a7 + 5);
  (*(*(a4 - 8) + 32))(v14, a2, a4);
  v15 = *(v17 + 8);

  return v15(a1, a3);
}

uint64_t sub_1B0B74D20@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 32);
  *a2 = *result;
  *(a2 + 4) = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static RunningSyncRequests.Change.Started.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    switch(BYTE4(a1))
    {
      case 2u:
        if (BYTE4(a2) == 2)
        {
          return 1;
        }

        break;
      case 3u:
        if (BYTE4(a2) == 3)
        {
          return 1;
        }

        break;
      case 4u:
        if (BYTE4(a2) == 4)
        {
          return 1;
        }

        break;
      default:
        if (BYTE4(a2) - 2 >= 3 && ((HIDWORD(a2) ^ HIDWORD(a1)) & 1) == 0)
        {
          return 1;
        }

        break;
    }
  }

  return 0;
}

BOOL sub_1B0B74E1C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v2 != 4)
  {
    return (v3 - 2) >= 3 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 4;
}

BOOL static RunningSyncRequests.Change.Completed.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  if (BYTE4(a1) == 2)
  {
    if (BYTE4(a3) == 2)
    {
      return a2 == a4;
    }
  }

  else
  {
    if (BYTE4(a1) != 3)
    {
      if (BYTE4(a1) == 4)
      {
        if (BYTE4(a3) != 4)
        {
          return 0;
        }
      }

      else if (BYTE4(a3) - 2 < 3 || ((HIDWORD(a3) ^ HIDWORD(a1)) & 1) != 0)
      {
        return 0;
      }

      return a2 == a4;
    }

    if (BYTE4(a3) == 3)
    {
      return a2 == a4;
    }
  }

  return 0;
}

BOOL sub_1B0B74F9C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  else
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        if (v3 != 4)
        {
          return 0;
        }
      }

      else if (v3 - 2) < 3 || ((v3 ^ v2))
      {
        return 0;
      }

      return *(a1 + 8) == *(a2 + 8);
    }

    if (v3 == 3)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  return 0;
}

uint64_t sub_1B0B75030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1B0B75078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy46_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0B75140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 46))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 45);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0B7517C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 30) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      *(result + 45) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0B751C8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 29) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 45) = a2;
  return result;
}

uint64_t sub_1B0B75280@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E69E7CC0];
  *(a3 + 48) = MEMORY[0x1E69E7CC0];
  *(a3 + 56) = v6;
  v7 = type metadata accessor for RunningTask();
  v8 = a3 + v7[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a3 + v7[13]);
  *v9 = sub_1B0B75200;
  v9[1] = 0;
  v10 = (a3 + v7[14]);
  *v10 = sub_1B0B75228;
  v10[1] = 0;
  sub_1B0B7ABE4(a1, v18);
  if (v19)
  {
    sub_1B0450C74(v18, v15);
    sub_1B03D2CA8(v15, a3);
    *(a3 + 40) = 0;
    *(a3 + 44) = 257;
  }

  else
  {
    sub_1B0450C74(v18, v15);
    sub_1B03D2CA8(v15, a3);
    *(a3 + 45) = 0;
  }

  v11 = v16;
  v12 = v17;
  __swift_project_boxed_opaque_existential_0(v15, v16);
  (*(v12 + 16))(v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  sub_1B0B7ABE4(a1, v18);
  sub_1B0BAF464(v18, a2, a3 + v7[7]);
  *(a3 + v7[8]) = 0;
  *(a3 + v7[11]) = 1;
  *(a3 + v7[12]) = 1;
  v13 = static MonotonicTime.now()();
  result = sub_1B0B7AC40(a1);
  *(a3 + v7[10]) = v13;
  return result;
}

unint64_t sub_1B0B7544C()
{
  result = qword_1EB6E4BB0;
  if (!qword_1EB6E4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4BB0);
  }

  return result;
}

uint64_t sub_1B0B754A0()
{
  v3 = *v0;
  v1 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v1);

  return 35;
}

uint64_t sub_1B0B75508()
{
  sub_1B0450DB0(v0, v12);
  if (!v16)
  {
    goto LABEL_4;
  }

  if (v16 == 1)
  {
    if ((v15 & 1) == 0)
    {
      sub_1B0450C74(v12[0].i8, v9);
      v5 = v11;
      __swift_project_boxed_opaque_existential_0(v9, v10);
      v6 = *(v5 + 8);
      v7 = sub_1B0E46A88();
      sub_1B0E46298();
      MEMORY[0x1B2726E80](0x6E6E6F63206E6F20, 0xEF206E6F69746365);
      sub_1B0E46508();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](0, 0xE000000000000000);

      v3 = v7;
      goto LABEL_9;
    }

LABEL_4:
    sub_1B0450C74(v12[0].i8, v9);
    v1 = v11;
    __swift_project_boxed_opaque_existential_0(v9, v10);
    v2 = *(v1 + 8);
    v3 = sub_1B0E46A88();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v3;
  }

  v4 = vorrq_s8(v12[0], v12[1]);
  if (v14 | (v15 << 32) | *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v13)
  {
    return 0x64656C696146;
  }

  else
  {
    return 0x6574656C706D6F43;
  }
}

uint64_t sub_1B0B756E8()
{
  v1 = type metadata accessor for TaskHistory.Running(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v52 - v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - v12;
  v59 = v0;
  v60 = v9;
  v14 = *(v0 + 48);
  v15 = *(v14 + 16);
  v61 = v16;
  v52 = v11;
  v56 = v14;
  if (v15)
  {
    v17 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B0390340(v17, v13, type metadata accessor for TaskHistory.Running);
      sub_1B0390340(v13, v6, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B0453E78(v13, type metadata accessor for TaskHistory.Running);
        sub_1B0453E78(v6, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v20 = *v6;
        v21 = v6[1];
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B0453E78(v6 + *(v22 + 64), type metadata accessor for ClientCommand);
        LOBYTE(v62[0]) = v20;
        HIDWORD(v62[0]) = v21;
        v23 = sub_1B0E44B88();
        v25 = v24;
        sub_1B0453E78(v13, type metadata accessor for TaskHistory.Running);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1B0AFF0E8(0, *(v19 + 2) + 1, 1, v19);
        }

        v27 = *(v19 + 2);
        v26 = *(v19 + 3);
        if (v27 >= v26 >> 1)
        {
          v19 = sub_1B0AFF0E8((v26 > 1), v27 + 1, 1, v19);
        }

        *(v19 + 2) = v27 + 1;
        v28 = &v19[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
        v9 = v60;
      }

      v17 += v18;
      --v15;
    }

    while (v15);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v62[0] = v19;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  v54 = sub_1B03B11C4();
  v55 = v29;
  v57 = sub_1B0E448E8();
  v58 = v30;

  v31 = *(v56 + 16);
  if (v31)
  {
    v32 = v53;
    v33 = v56 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v34 = *(v52 + 72);
    v35 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B0390340(v33, v9, type metadata accessor for TaskHistory.Running);
      sub_1B0390340(v9, v32, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = *v32;
        sub_1B03E1BE8(*(v32 + 8));
        LODWORD(v62[0]) = v36;
        sub_1B07467B8();
        v37 = sub_1B0E44E98();
        v39 = v38;
        sub_1B0453E78(v9, type metadata accessor for TaskHistory.Running);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1B0AFF0E8(0, *(v35 + 2) + 1, 1, v35);
        }

        v41 = *(v35 + 2);
        v40 = *(v35 + 3);
        if (v41 >= v40 >> 1)
        {
          v35 = sub_1B0AFF0E8((v40 > 1), v41 + 1, 1, v35);
        }

        *(v35 + 2) = v41 + 1;
        v42 = &v35[16 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v39;
        v9 = v60;
      }

      else
      {
        sub_1B0453E78(v9, type metadata accessor for TaskHistory.Running);
        sub_1B0453E78(v32, type metadata accessor for TaskHistory.Running);
      }

      v33 += v34;
      --v31;
    }

    while (v31);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v62[0] = v35;
  v43 = sub_1B0E448E8();
  v45 = v44;

  v46 = sub_1B0B75508();
  v48 = v47;
  v62[0] = 0;
  v62[1] = 0xE000000000000000;
  sub_1B0E46298();

  strcpy(v62, " commands: {");
  BYTE5(v62[1]) = 0;
  HIWORD(v62[1]) = -5120;
  MEMORY[0x1B2726E80](v57, v58);

  MEMORY[0x1B2726E80](0x6F69746361202C7DLL, 0xED00007B203A736ELL);
  MEMORY[0x1B2726E80](v43, v45);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  v49 = v62[0];
  v50 = v62[1];
  v62[0] = v46;
  v62[1] = v48;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](v49, v50);

  return v62[0];
}

void sub_1B0B75C78(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RunningTask();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v17 = type metadata accessor for State.Logger();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v2 + *(v10 + 40));
  if (v22 <= a1)
  {
LABEL_6:
    v23 = a1 - v22;
    if (!__OFSUB__(a1, v22))
    {
      goto LABEL_7;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v22, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v23 = a1 - v22;
  if (__OFSUB__(0, v22 - a1))
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v24 = v23 / 1000000000.0;
  if (v24 > 9.0)
  {
    v59 = v2;
    v60 = v21;
    v58 = v19;
    v25 = *(v2 + 48);
    v26 = *(v25 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    if (v26)
    {
      v54 = a2;
      v55 = v10;
      v56 = v16;
      v57 = v13;
      v61 = MEMORY[0x1E69E7CC0];
      sub_1B041D32C(0, v26, 0);
      v27 = v61;
      v28 = v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v29 = *(v6 + 72);
      do
      {
        sub_1B0390340(v28, v9, type metadata accessor for TaskHistory.Running);
        v30 = sub_1B0BB0264();
        v32 = v31;
        sub_1B0453E78(v9, type metadata accessor for TaskHistory.Running);
        v61 = v27;
        v34 = *(v27 + 16);
        v33 = *(v27 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1B041D32C((v33 > 1), v34 + 1, 1);
          v27 = v61;
        }

        *(v27 + 16) = v34 + 1;
        v35 = v27 + 16 * v34;
        *(v35 + 32) = v30;
        *(v35 + 40) = v32;
        v28 += v29;
        --v26;
      }

      while (v26);
      v16 = v56;
      v13 = v57;
      a2 = v54;
      v10 = v55;
    }

    v61 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v36 = sub_1B0E448E8();
    v38 = v37;

    v39 = v60;
    sub_1B0390340(a2, v60, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v40 = v59;
    sub_1B0390340(v59, v16, type metadata accessor for RunningTask);
    sub_1B0390340(v40, v13, type metadata accessor for RunningTask);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v41 = sub_1B0E43988();
    v42 = sub_1B0E458E8();

    if (os_log_type_enabled(v41, v42))
    {
      v59 = v36;
      v43 = v39;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61 = v45;
      *v44 = 68158978;
      *(v44 + 4) = 2;
      *(v44 + 8) = 256;
      v46 = *(v43 + *(v58 + 20));
      sub_1B0453E78(v43, type metadata accessor for State.Logger);
      *(v44 + 10) = v46;
      *(v44 + 11) = 2082;
      v47 = &v16[*(v10 + 28)];
      v48 = &v47[*(type metadata accessor for Task.Logger(0) + 20)];
      v49 = *(v48 + 1);
      v50 = *(v48 + 2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0453E78(v16, type metadata accessor for RunningTask);
      v51 = sub_1B0399D64(v49, v50, &v61);

      *(v44 + 13) = v51;
      *(v44 + 21) = 2048;
      if (*&v24 >> 52 <= 0x7FEuLL)
      {
        if (v24 > -9.22337204e18)
        {
          if (v24 < 9.22337204e18)
          {
            *(v44 + 23) = v24;
            *(v44 + 31) = 2048;
            v52 = *(*(v13 + 6) + 16);
            sub_1B0453E78(v13, type metadata accessor for RunningTask);
            *(v44 + 33) = v52;
            *(v44 + 41) = 2082;
            v53 = sub_1B0399D64(v59, v38, &v61);

            *(v44 + 43) = v53;
            _os_log_impl(&dword_1B0389000, v41, v42, "[%.*hhx] Task %{public}s has been running for %ld s. Still running %ld: %{public}s", v44, 0x33u);
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v45, -1, -1);
            MEMORY[0x1B272C230](v44, -1, -1);

            return;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_1B0453E78(v13, type metadata accessor for RunningTask);
    sub_1B0453E78(v39, type metadata accessor for State.Logger);

    sub_1B0453E78(v16, type metadata accessor for RunningTask);
  }
}

void *sub_1B0B76258(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a4 & 0x100000000) == 0)
  {
    v9 = a4;
    v12 = result[3];
    v13 = result[4];
    v14 = result;
    v18[8] = a5;
    __swift_project_boxed_opaque_existential_0(result, v12);
    (*(v13 + 32))(&v19, v12, v13);
    v15 = v20;
    v16 = v21;
    v22 = v19;
    v17 = sub_1B039E440(&v22);
    MEMORY[0x1EEE9AC00](v17);
    v18[2] = v14;
    v18[3] = a6;
    v18[4] = a2;
    v18[5] = a3;
    v18[6] = a7;
    sub_1B0B7637C(v9, v15, v16, sub_1B0B7C754, v18);
  }

  return result;
}

uint64_t sub_1B0B7637C(int a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v58 = a1;
  v11 = type metadata accessor for MailboxSyncState();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 192) != 1)
  {
    return 1;
  }

  v15 = *(v5 + 168);
  v16 = *(v15 + 16);
  if (!v16)
  {
    return 1;
  }

  v41 = v14;
  v42 = a5;
  v43 = a4;
  v44 = v6;
  v17 = 0;
  v18 = v15 + 32;
  v19 = a3 | (a3 << 32);
  v45 = (a2 + 32);
  while (1)
  {
    v20 = (v18 + 176 * v17);
    v21 = *v20;
    v22 = v20[2];
    v48 = v20[1];
    v49 = v22;
    v47 = v21;
    v23 = v20[3];
    v24 = v20[4];
    v25 = v20[6];
    v52 = v20[5];
    v53 = v25;
    v50 = v23;
    v51 = v24;
    v26 = v20[7];
    v27 = v20[8];
    v28 = v20[10];
    v56 = v20[9];
    v57 = v28;
    v54 = v26;
    v55 = v27;
    v29 = v53;
    if (v53)
    {
      v30 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v31 = *(v29 + v30);
    }

    else
    {
      v31 = 0;
    }

    if ((DWORD2(v48) | (DWORD2(v48) << 32)) == v19)
    {
      v32 = *(v48 + 16);
      if (v32 == *(a2 + 16))
      {
        if (v32 && v48 != a2)
        {
          v33 = (v48 + 32);
          v34 = v45;
          while (*v33 == *v34)
          {
            ++v33;
            ++v34;
            if (!--v32)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_4;
        }

LABEL_15:
        if (v29 && v31 == v58)
        {
          break;
        }
      }
    }

LABEL_4:
    if (++v17 == v16)
    {
      return 1;
    }
  }

  v35 = v29 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v36 = _s13SelectedStateV7WrappedVMa(0);
  v37 = v41;
  sub_1B0390340(v35 + *(v36 + 20), v41, type metadata accessor for MailboxSyncState);
  sub_1B03A35B8(&v47, &v46);

  v38 = v44;
  v43(&v59, v37);
  sub_1B0453E78(v37, type metadata accessor for MailboxSyncState);

  result = sub_1B03A3614(&v47);
  if (!v38)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0B76610(int a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v58 = a1;
  v11 = type metadata accessor for MailboxSyncState();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 192) != 1)
  {
    return 3;
  }

  v15 = *(v5 + 168);
  v16 = *(v15 + 16);
  if (!v16)
  {
    return 3;
  }

  v41 = v14;
  v42 = a5;
  v43 = a4;
  v44 = v6;
  v17 = 0;
  v18 = v15 + 32;
  v19 = a3 | (a3 << 32);
  v45 = (a2 + 32);
  while (1)
  {
    v20 = (v18 + 176 * v17);
    v21 = *v20;
    v22 = v20[2];
    v48 = v20[1];
    v49 = v22;
    v47 = v21;
    v23 = v20[3];
    v24 = v20[4];
    v25 = v20[6];
    v52 = v20[5];
    v53 = v25;
    v50 = v23;
    v51 = v24;
    v26 = v20[7];
    v27 = v20[8];
    v28 = v20[10];
    v56 = v20[9];
    v57 = v28;
    v54 = v26;
    v55 = v27;
    v29 = v53;
    if (v53)
    {
      v30 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v31 = *(v29 + v30);
    }

    else
    {
      v31 = 0;
    }

    if ((DWORD2(v48) | (DWORD2(v48) << 32)) == v19)
    {
      v32 = *(v48 + 16);
      if (v32 == *(a2 + 16))
      {
        if (v32 && v48 != a2)
        {
          v33 = (v48 + 32);
          v34 = v45;
          while (*v33 == *v34)
          {
            ++v33;
            ++v34;
            if (!--v32)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_4;
        }

LABEL_15:
        if (v29 && v31 == v58)
        {
          break;
        }
      }
    }

LABEL_4:
    if (++v17 == v16)
    {
      return 3;
    }
  }

  v35 = v29 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v36 = _s13SelectedStateV7WrappedVMa(0);
  v37 = v41;
  sub_1B0390340(v35 + *(v36 + 20), v41, type metadata accessor for MailboxSyncState);
  sub_1B03A35B8(&v47, &v46);

  v38 = v44;
  v43(&v59, v37);
  sub_1B0453E78(v37, type metadata accessor for MailboxSyncState);

  result = sub_1B03A3614(&v47);
  if (!v38)
  {
    return v59;
  }

  return result;
}

unint64_t sub_1B0B768A4(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  if (!(result >> 62))
  {
    v14 = *(result + 16);
    v15 = *(result + 24);
    v16 = *(result + 40);
    v17 = *(result + 48);
    sub_1B0450DB0(a2, v22);
    if (v25 == 1)
    {
      v27 = v16;
      v18 = v23;
      v19 = v24;
      sub_1B0450C74(v22, v26);
      if ((v19 & 1) != 0 || v14 != v18)
      {
        return __swift_destroy_boxed_opaque_existential_0Tm(v26);
      }

      v20 = *(a2 + 48);
      v21 = *(a2 + 56);
      sub_1B044CD04(v15);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (sub_1B0BB2528(v15, v20))
      {
        LOBYTE(v22[0]) = 0;
        sub_1B0B7874C(v26, v20, v21, v14, a3, a4, a5);
        sub_1B044CEF8(v15);

        if (v5)
        {
          return __swift_destroy_boxed_opaque_existential_0Tm(v26);
        }

        sub_1B0B7ABB4(a2);
        result = sub_1B0450C74(v26, a2);
        *(a2 + 40) = v14;
        *(a2 + 44) = 256;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        sub_1B044CEF8(v15);
      }

      return result;
    }

    return sub_1B0B7ABB4(v22);
  }

  if (result >> 62 != 1)
  {
    return result;
  }

  sub_1B0450DB0(a2, v22);
  if (v25 != 1)
  {
    return sub_1B0B7ABB4(v22);
  }

  v10 = v23;
  v11 = v24;
  sub_1B0450C74(v22, v26);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  LOBYTE(v22[0]) = v11;
  sub_1B0B7874C(v26, v12, v13, v10 | (v11 << 32), a3, a4, a5);
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  sub_1B0B7ABB4(a2);
  result = sub_1B0450C74(v26, a2);
  *(a2 + 40) = v10;
  *(a2 + 44) = v11;
  *(a2 + 45) = 1;
  return result;
}

unint64_t sub_1B0B76AEC(unint64_t result, void (*a2)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  if (!(result >> 62))
  {
    v9 = *(result + 16);
    v10 = *(result + 24);
    v11 = *(result + 40);
    v12 = *(result + 48);
    sub_1B0450DB0(v2, v17);
    if (v20 == 1)
    {
      v22 = v12;
      v13 = v18;
      v14 = v19;
      sub_1B0450C74(v17, v21);
      if ((v14 & 1) != 0 || v9 != v13)
      {
        return __swift_destroy_boxed_opaque_existential_0Tm(v21);
      }

      v15 = *(v2 + 48);
      v16 = *(v2 + 56);
      sub_1B044CD04(v10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (sub_1B0BB2528(v10, v15))
      {
        LOBYTE(v17[0]) = 0;
        a2(v21, v15, v16, v9);
        sub_1B044CEF8(v10);

        if (v3)
        {
          return __swift_destroy_boxed_opaque_existential_0Tm(v21);
        }

        sub_1B0B7ABB4(v2);
        result = sub_1B0450C74(v21, v2);
        *(v2 + 40) = v9;
        *(v2 + 44) = 256;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        sub_1B044CEF8(v10);
      }

      return result;
    }

    return sub_1B0B7ABB4(v17);
  }

  if (result >> 62 != 1)
  {
    return result;
  }

  sub_1B0450DB0(v2, v17);
  if (v20 != 1)
  {
    return sub_1B0B7ABB4(v17);
  }

  v5 = v18;
  v6 = v19;
  sub_1B0450C74(v17, v21);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  LOBYTE(v17[0]) = v6;
  a2(v21, v7, v8, v5 | (v6 << 32));
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  sub_1B0B7ABB4(v2);
  result = sub_1B0450C74(v21, v2);
  *(v2 + 40) = v5;
  *(v2 + 44) = v6;
  *(v2 + 45) = 1;
  return result;
}

uint64_t sub_1B0B76D20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8)
{
  v10 = v9;
  v11 = v8;
  v83 = a7;
  v84 = a8;
  LODWORD(v92) = a6;
  v85 = a4;
  v86 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BE0, &qword_1B0EC9338);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v78 - v17);
  v19 = type metadata accessor for ClientCommand(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v82 = &v78 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v78 - v26;
  sub_1B0BB04F0(a2, v18);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BE8, &qword_1B0EC9340);
  if ((*(*(v28 - 8) + 48))(v18, 1, v28) == 1)
  {
    return sub_1B0398EFC(v18, &qword_1EB6E4BE0, &qword_1B0EC9338);
  }

  v81 = v23;
  v30 = *v18;
  sub_1B0423C18(v18 + *(v28 + 48), v27, type metadata accessor for ClientCommand);
  sub_1B0450DB0(v11, v87);
  if (v88)
  {
    v31 = sub_1B0B7ABB4(v87);
    goto LABEL_5;
  }

  v79 = a2;
  sub_1B0450C74(v87, &v89);
  v57 = v90;
  v56 = v91;
  __swift_mutable_project_boxed_opaque_existential_1(&v89, v90);
  v58 = *(v56 + 72);
  v80 = v27;
  v58(v30, v27, a3, v85, v86, v92, a1, v57, v56);
  v10 = v9;
  if (!v9)
  {
    sub_1B0B7ABB4(v11);
    v31 = sub_1B0450C74(&v89, v11);
    *(v11 + 45) = 0;
    a2 = v79;
    v27 = v80;
LABEL_5:
    MEMORY[0x1EEE9AC00](v31);
    *(&v78 - 16) = v30;
    *(&v78 - 7) = v27;
    *(&v78 - 6) = a3;
    v32 = v86;
    *(&v78 - 5) = v85;
    *(&v78 - 4) = v32;
    *(&v78 - 24) = v92;
    v77 = a1;
    sub_1B0B768A4(v83, v11, v84, sub_1B0B7C7E4, (&v78 - 10));
    if (!v10)
    {
      LODWORD(v85) = v30;
      v79 = a2;
      v92 = 0;
      v33 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
      v34 = *(v33 + 8);
      v86 = *v33;
      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      v37 = *(v33 + 32);
      v38 = *(v33 + 40);
      if (v35 < 0)
      {
        v59 = *(v33 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v80 = v27;
        v60 = v81;
        sub_1B0390340(v27, v81, type metadata accessor for ClientCommand);
        v61 = sub_1B0E43988();
        v62 = sub_1B0E458C8();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          LODWORD(v82) = v38;
          v64 = v34;
          v65 = v63;
          v84 = swift_slowAlloc();
          *&v89 = v84;
          *v65 = 68160003;
          LODWORD(v83) = v62;
          *(v65 + 4) = 2;
          *(v65 + 8) = 256;
          *(v65 + 10) = v86;
          *(v65 + 11) = 2082;
          *(v65 + 13) = sub_1B0399D64(v64, v36, &v89);
          *(v65 + 21) = 1040;
          *(v65 + 23) = 2;
          *(v65 + 27) = 512;
          *(v65 + 29) = v35;

          *(v65 + 31) = 2160;
          *(v65 + 33) = 0x786F626C69616DLL;
          *(v65 + 41) = 2085;
          *&v87[0] = v37;
          DWORD2(v87[0]) = v82;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v66 = sub_1B0E44BA8();
          v68 = sub_1B0399D64(v66, v67, &v89);

          *(v65 + 43) = v68;
          *(v65 + 51) = 2082;
          v69 = ClientCommand.logIdentifier.getter();
          v71 = v70;
          sub_1B0453E78(v60, type metadata accessor for ClientCommand);
          v72 = sub_1B0399D64(v69, v71, &v89);

          *(v65 + 53) = v72;
          *(v65 + 61) = 2082;
          v73 = Tag.debugDescription.getter(v79 & 0xFFFFFFFF000000FFLL);
          v75 = sub_1B0399D64(v73, v74, &v89);

          *(v65 + 63) = v75;
          *(v65 + 71) = 1024;
          *(v65 + 73) = v85;
          _os_log_impl(&dword_1B0389000, v61, v83, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed '%{public}s' (%{public}s, #%u)", v65, 0x4Du);
          v76 = v84;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v76, -1, -1);
          MEMORY[0x1B272C230](v65, -1, -1);
        }

        else
        {

          sub_1B0453E78(v60, type metadata accessor for ClientCommand);
        }

        v27 = v80;
      }

      else
      {
        v39 = v34;
        v40 = *(v33 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v41 = v82;
        sub_1B0390340(v27, v82, type metadata accessor for ClientCommand);
        v42 = sub_1B0E43988();
        v43 = sub_1B0E458C8();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          LODWORD(v83) = v43;
          v45 = v41;
          v46 = v44;
          v84 = swift_slowAlloc();
          *&v87[0] = v84;
          *v46 = 68158978;
          *(v46 + 4) = 2;
          *(v46 + 8) = 256;
          v47 = v86;
          *(v46 + 10) = v86;
          sub_1B0A92018(v47, v39, v36, v35);
          *(v46 + 11) = 2082;
          *(v46 + 13) = sub_1B0399D64(v39, v36, v87);
          *(v46 + 21) = 2082;
          v48 = ClientCommand.logIdentifier.getter();
          v50 = v49;
          sub_1B0453E78(v45, type metadata accessor for ClientCommand);
          v51 = sub_1B0399D64(v48, v50, v87);

          *(v46 + 23) = v51;
          *(v46 + 31) = 2082;
          v52 = Tag.debugDescription.getter(v79 & 0xFFFFFFFF000000FFLL);
          v54 = sub_1B0399D64(v52, v53, v87);

          *(v46 + 33) = v54;
          *(v46 + 41) = 1024;
          *(v46 + 43) = v85;
          _os_log_impl(&dword_1B0389000, v42, v83, "[%.*hhx-%{public}s] Completed '%{public}s' (%{public}s, #%u)", v46, 0x2Fu);
          v55 = v84;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v55, -1, -1);
          MEMORY[0x1B272C230](v46, -1, -1);
        }

        else
        {
          sub_1B0A92018(v86, v39, v36, v35);

          sub_1B0453E78(v41, type metadata accessor for ClientCommand);
        }
      }
    }

    return sub_1B0453E78(v27, type metadata accessor for ClientCommand);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v89);
  v27 = v80;
  return sub_1B0453E78(v27, type metadata accessor for ClientCommand);
}

uint64_t sub_1B0B77560(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v6 = v5;
  v10 = sub_1B0BB08D8(a2);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    v13 = v10;
    v14 = v11;
    sub_1B0450DB0(v4, v69);
    if (v70)
    {
      v15 = sub_1B0B7ABB4(v69);
    }

    else
    {
      v74 = a1;
      sub_1B0450C74(v69, &v71);
      v16 = v14;
      v17 = v13;
      v19 = v72;
      v18 = v73;
      __swift_mutable_project_boxed_opaque_existential_1(&v71, v72);
      (*(v18 + 80))(v17, v16, v19, v18);
      v6 = v5;
      if (v5)
      {
        sub_1B0AEF160(v17, v16);
        __swift_destroy_boxed_opaque_existential_0Tm(&v71);
        return v12 & 1;
      }

      sub_1B0B7ABB4(v4);
      v15 = sub_1B0450C74(&v71, v4);
      *(v4 + 45) = 0;
      v13 = v17;
      v14 = v16;
      a1 = v74;
    }

    MEMORY[0x1EEE9AC00](v15);
    v62[4] = v13;
    v63 = v14;
    v64 = a1;
    sub_1B0B768A4(a3, v4, a4, sub_1B0B7C8E4, v62);
    if (v6)
    {
      sub_1B0AEF160(v13, v14);
      return v12 & 1;
    }

    v74 = 0;
    v20 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
    v22 = *v20;
    v21 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    v26 = *(v20 + 40);
    if (v24 < 0)
    {
      v66 = *v20;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03E14B4(v14);
      v45 = sub_1B0E43988();
      v46 = sub_1B0E458C8();
      sub_1B0AEF160(v13, v14);
      LODWORD(v68) = v46;
      v47 = v46;
      v33 = v45;
      if (os_log_type_enabled(v45, v47))
      {
        v48 = swift_slowAlloc();
        v67 = v26;
        v49 = v25;
        v50 = v48;
        v65 = swift_slowAlloc();
        *&v71 = v65;
        *v50 = 68159747;
        *(v50 + 4) = 2;
        *(v50 + 8) = 256;
        *(v50 + 10) = v66;
        *(v50 + 11) = 2082;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v51 = v13;
        v52 = sub_1B0399D64(v21, v23, &v71);

        *(v50 + 13) = v52;
        *(v50 + 21) = 1040;
        *(v50 + 23) = 2;
        *(v50 + 27) = 512;

        *(v50 + 29) = v24;

        *(v50 + 31) = 2160;
        *(v50 + 33) = 0x786F626C69616DLL;
        *(v50 + 41) = 2085;

        *&v69[0] = v49;
        DWORD2(v69[0]) = v67;
        v53 = sub_1B0E44BA8();
        v55 = sub_1B0399D64(v53, v54, &v71);

        *(v50 + 43) = v55;
        *(v50 + 51) = 2082;
        v56 = Action.kind.getter(v14);
        v57 = Action.Kind.description.getter(v56);
        v59 = sub_1B0399D64(v57, v58, &v71);

        *(v50 + 53) = v59;
        *(v50 + 61) = 1024;
        *(v50 + 63) = v51;
        _os_log_impl(&dword_1B0389000, v33, v68, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed action '%{public}s' (#%u)", v50, 0x43u);
        v60 = v65;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v60, -1, -1);
        MEMORY[0x1B272C230](v50, -1, -1);
        v44 = v51;
        goto LABEL_15;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v27 = *(v20 + 32);
      v28 = *(v20 + 40);
      sub_1B0A982D8(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24));
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03E14B4(v14);
      v29 = sub_1B0E43988();
      v68 = v24;
      v30 = v29;
      v31 = sub_1B0E458C8();
      sub_1B0AEF160(v13, v14);
      LODWORD(v66) = v31;
      v32 = v31;
      v33 = v30;
      if (os_log_type_enabled(v30, v32))
      {
        v34 = swift_slowAlloc();
        v67 = v26;
        v35 = v34;
        v36 = swift_slowAlloc();
        *&v69[0] = v36;
        *v35 = 68158722;
        *(v35 + 4) = 2;
        *(v35 + 8) = 256;
        *(v35 + 10) = v22;
        *(v35 + 11) = 2082;
        v37 = sub_1B0399D64(v21, v23, v69);
        v65 = v13;
        v38 = v37;
        sub_1B0A92018(v22, v21, v23, v68);
        *(v35 + 13) = v38;
        *(v35 + 21) = 2082;
        v39 = Action.kind.getter(v14);
        v40 = Action.Kind.description.getter(v39);
        v42 = sub_1B0399D64(v40, v41, v69);

        *(v35 + 23) = v42;
        *(v35 + 31) = 1024;
        v43 = v65;
        *(v35 + 33) = v65;
        _os_log_impl(&dword_1B0389000, v33, v66, "[%.*hhx-%{public}s] Completed action '%{public}s' (#%u)", v35, 0x25u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v36, -1, -1);
        MEMORY[0x1B272C230](v35, -1, -1);
        v44 = v43;
LABEL_15:
        sub_1B0AEF160(v44, v14);

LABEL_19:
        v12 = 1;
        return v12 & 1;
      }

      sub_1B0A92018(v22, v21, v23, v68);
    }

    sub_1B0AEF160(v13, v14);
    goto LABEL_19;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1B0B77B7C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for State.Logger();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0450DB0(v4, &v42);
  if (v45 != 1)
  {
    return sub_1B0B7ABB4(&v42);
  }

  sub_1B0450C74(&v42, v46);
  v14 = v47;
  v15 = v48;
  __swift_project_boxed_opaque_existential_0(v46, v47);
  (*(v15 + 32))(&v49, v14, v15);
  v53 = v50;
  v54 = v51;
  *v52 = v49;
  sub_1B039E440(v52);
  if ((v54 | (v54 << 32)) == (a2 | (a2 << 32)))
  {
    v16 = sub_1B04520BC(v53, a1);
    sub_1B039E440(&v53);
    if (v16)
    {
      sub_1B0390340(a4, v13, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03D2CA8(v46, &v42);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v17 = sub_1B0E43988();
      v18 = sub_1B0E458C8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = v36;
        *v19 = 68158723;
        *(v19 + 4) = 2;
        *(v19 + 8) = 256;
        v20 = v13[*(v10 + 20)];
        sub_1B0453E78(v13, type metadata accessor for State.Logger);
        *(v19 + 10) = v20;
        *(v19 + 11) = 2160;
        *(v19 + 13) = 0x786F626C69616DLL;
        *(v19 + 21) = 2085;
        v38 = a1;
        v39 = a2;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v21 = sub_1B0E44BA8();
        v23 = sub_1B0399D64(v21, v22, &v37);

        *(v19 + 23) = v23;
        *(v19 + 31) = 2082;
        v24 = v43;
        v25 = v44;
        __swift_project_boxed_opaque_existential_0(&v42, v43);
        v26 = (*(v25 + 72))(v24, v25);
        v28 = v27;
        __swift_destroy_boxed_opaque_existential_0Tm(&v42);
        v29 = sub_1B0399D64(v26, v28, &v37);

        *(v19 + 33) = v29;
        _os_log_impl(&dword_1B0389000, v17, v18, "[%.*hhx] [%{sensitive,mask.mailbox}s] Marking task '%{public}s' as failed because we de-selected its mailbox.", v19, 0x29u);
        v30 = v36;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v30, -1, -1);
        MEMORY[0x1B272C230](v19, -1, -1);
      }

      else
      {
        sub_1B0453E78(v13, type metadata accessor for State.Logger);

        __swift_destroy_boxed_opaque_existential_0Tm(&v42);
      }

      sub_1B0450DB0(v5, &v42);
      if (v45)
      {
        if (v45 == 1)
        {
          sub_1B0450C74(&v42, &v38);
          v32 = v40;
          v33 = v41;
          __swift_project_boxed_opaque_existential_0(&v38, v40);
          v34 = type metadata accessor for RunningTask();
          (*(v33 + 136))(a3, v5 + *(v34 + 28), v32, v33);
          sub_1B0B7ABB4(v5);
          *v5 = 1;
          *(v5 + 8) = 0u;
          *(v5 + 24) = 0u;
          *(v5 + 37) = 0;
          *(v5 + 45) = 2;
          __swift_destroy_boxed_opaque_existential_0Tm(&v38);
        }
      }

      else
      {
        sub_1B0B7ABB4(v5);
        *v5 = 1;
        *(v5 + 8) = 0u;
        *(v5 + 24) = 0u;
        *(v5 + 37) = 0;
        *(v5 + 45) = 2;
        sub_1B0B7ABB4(&v42);
      }
    }
  }

  else
  {
    sub_1B039E440(&v53);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v46);
}

unint64_t sub_1B0B78004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t (*a6)(unint64_t)@<X5>, char *a7@<X8>)
{
  v9 = *(type metadata accessor for RunningTask() + 44);
  v10 = *(a2 + v9);
  *(a2 + v9) = v10 + 1;
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v14 = *(a3 + 24);
  v13 = *(a3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a3, v14);
  v15 = *(v13 + 88);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v60 = v10;
  v16 = v15(v10 & 0xFFFFFF, v11, v12, a1, a4, v14, v13);

  if ((~v16 & 0xF000000000000007) != 0)
  {
    v55 = a2;
    v56 = a3;
    v62 = a6(v16);
    v19 = a4 + *(type metadata accessor for Task.Logger(0) + 20);
    v20 = *v19;
    v21 = *(v19 + 8);
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    v24 = *(v19 + 32);
    v25 = *(v19 + 40);
    if (v22 < 0)
    {
      v39 = *(v19 + 16);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03E14B4(v16);
      v40 = sub_1B0E43988();
      v41 = sub_1B0E458C8();
      sub_1B0B7C1A0(v16);
      if (os_log_type_enabled(v40, v41))
      {
        log = v40;
        v42 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v71 = v59;
        *v42 = 68159747;
        *(v42 + 4) = 2;
        *(v42 + 8) = 256;
        *(v42 + 10) = v20;
        *(v42 + 11) = 2082;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v43 = HIDWORD(v24);
        v44 = sub_1B0399D64(v21, v23, &v71);

        *(v42 + 13) = v44;
        *(v42 + 21) = 1040;
        *(v42 + 23) = 2;
        *(v42 + 27) = 512;

        *(v42 + 29) = v22;

        *(v42 + 31) = 2160;
        *(v42 + 33) = 0x786F626C69616DLL;
        *(v42 + 41) = 2085;

        HIDWORD(v67) = v43;
        v68 = v25;
        v45 = sub_1B0E44BA8();
        v47 = sub_1B0399D64(v45, v46, &v71);

        *(v42 + 43) = v47;
        *(v42 + 51) = 2082;
        v48 = Action.kind.getter(v16);
        v49 = Action.Kind.description.getter(v48);
        v51 = sub_1B0399D64(v49, v50, &v71);

        *(v42 + 53) = v51;
        *(v42 + 61) = 2080;
        LODWORD(v67) = v62;
        sub_1B07467B8();
        v52 = sub_1B0E44E98();
        v54 = sub_1B0399D64(v52, v53, &v71);

        *(v42 + 63) = v54;
        _os_log_impl(&dword_1B0389000, log, v41, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' %s", v42, 0x47u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v59, -1, -1);
        MEMORY[0x1B272C230](v42, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
      v26 = *(v19 + 32);
      v27 = *(v19 + 40);
      sub_1B0A982D8(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24));
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03E14B4(v16);
      v28 = sub_1B0E43988();
      v29 = sub_1B0E458C8();
      sub_1B0B7C1A0(v16);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v67 = v66;
        *v30 = 68158722;
        *(v30 + 4) = 2;
        *(v30 + 8) = 256;
        *(v30 + 10) = v20;
        *(v30 + 11) = 2082;
        v31 = sub_1B0399D64(v21, v23, &v67);
        sub_1B0A92018(v20, v21, v23, v22);
        *(v30 + 13) = v31;
        *(v30 + 21) = 2082;
        v32 = Action.kind.getter(v16);
        v33 = Action.Kind.description.getter(v32);
        v35 = sub_1B0399D64(v33, v34, &v67);

        *(v30 + 23) = v35;
        *(v30 + 31) = 2080;
        LODWORD(v71) = v62;
        sub_1B07467B8();
        v36 = sub_1B0E44E98();
        v38 = sub_1B0399D64(v36, v37, &v67);

        *(v30 + 33) = v38;
        _os_log_impl(&dword_1B0389000, v28, v29, "[%.*hhx-%{public}s] Sent '%{public}s' %s", v30, 0x29u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v66, -1, -1);
        MEMORY[0x1B272C230](v30, -1, -1);
      }

      else
      {

        sub_1B0A92018(v20, v21, v23, v22);
      }
    }

    sub_1B03D2CA8(v56, &v67);
    v69 = a5;
    v70 = 256;
    sub_1B0B7C1B4(&v67, v55);
    sub_1B0BB0FA8(v16, v62, v60 & 0xFFFFFF);
    result = sub_1B0B7C1A0(v16);
    v18 = 0;
  }

  else
  {
    sub_1B03D2CA8(a3, &v67);
    v69 = a5;
    v70 = 256;
    result = sub_1B0B7C1B4(&v67, a2);
    v18 = 1;
  }

  *a7 = v18;
  return result;
}

uint64_t sub_1B0B7862C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0390340(a1, v7, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    result = sub_1B0453E78(v7, type metadata accessor for TaskHistory.Running);
    v10 = 0;
  }

  else
  {
    v10 = *v7;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
    result = sub_1B0453E78(v7 + *(v11 + 64), type metadata accessor for ClientCommand);
  }

  *a2 = v10;
  *(a2 + 4) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t *sub_1B0B7874C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v69 = a7;
  v14 = type metadata accessor for MailboxSyncState();
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 0x100000000) == 0)
  {
    v46 = v18;
    v47 = a6;
    v48 = a3;
    v49 = a2;
    v50 = v7;
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v19);
    (*(v20 + 32))(&v63, v19, v20);
    v67 = v64;
    v68 = v65;
    *v66 = v63;
    sub_1B039E440(v66);
    if (*(a5 + 192) == 1)
    {
      v21 = *(a5 + 168);
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = 0;
        v24 = v21 + 32;
        do
        {
          v25 = (v24 + 176 * v23);
          v26 = *v25;
          v27 = v25[2];
          v53 = v25[1];
          v54 = v27;
          v52 = v26;
          v28 = v25[3];
          v29 = v25[4];
          v30 = v25[6];
          v57 = v25[5];
          v58 = v30;
          v55 = v28;
          v56 = v29;
          v31 = v25[7];
          v32 = v25[8];
          v33 = v25[10];
          v61 = v25[9];
          v62 = v33;
          v59 = v31;
          v60 = v32;
          v34 = v58;
          if (v58)
          {
            v35 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
            swift_beginAccess();
            v36 = *(v34 + v35);
          }

          else
          {
            v36 = 0;
          }

          if ((DWORD2(v53) | (DWORD2(v53) << 32)) == (v68 | (v68 << 32)))
          {
            v37 = *(v53 + 16);
            if (v37 == *(v67 + 16))
            {
              if (!v37 || v53 == v67)
              {
LABEL_16:
                if (v34 && v36 == a4)
                {
                  v40 = v34 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                  swift_beginAccess();
                  v41 = _s13SelectedStateV7WrappedVMa(0);
                  v42 = v46;
                  sub_1B0390340(v40 + *(v41 + 20), v46, type metadata accessor for MailboxSyncState);
                  v43 = v49;
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v44 = v48;
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B03A35B8(&v52, &v51);

                  v47(a1, v42, v43, v44);
                  sub_1B0453E78(v42, type metadata accessor for MailboxSyncState);

                  sub_1B03A3614(&v52);

                  return sub_1B039E440(&v67);
                }
              }

              else
              {
                v38 = (v53 + 32);
                v39 = (v67 + 32);
                while (*v38 == *v39)
                {
                  ++v38;
                  ++v39;
                  if (!--v37)
                  {
                    goto LABEL_16;
                  }
                }
              }
            }
          }

          ++v23;
        }

        while (v23 != v22);
      }
    }

    sub_1B039E440(&v67);
    sub_1B0B7C890();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

void sub_1B0B78A8C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TaskHistory.Running(0);
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v77[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for RunningTask();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v77[-v13];
  v84 = sub_1B0E43828();
  v83 = *(v84 - 8);
  v15 = *(v83 + 64);
  v16 = MEMORY[0x1EEE9AC00](v84);
  v18 = &v77[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v82 = &v77[-v20];
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v77[-v21];
  v86 = sub_1B0E43868();
  v85 = *(v86 - 8);
  v22 = *(v85 + 64);
  v23 = MEMORY[0x1EEE9AC00](v86);
  v25 = &v77[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v80 = &v77[-v26];
  v27 = *tracingLog.unsafeMutableAddressor();
  v28 = sub_1B0E45D38();

  if (v28)
  {
    sub_1B0450DB0(v2, &v90);
    v29 = v2;
    if (v93 == 1)
    {
      sub_1B0450C74(&v90, v94);
      v30 = tracingSignposter.unsafeMutableAddressor();
      (*(v85 + 16))(v80, v30, v86);
      v31 = *(v2 + *(v8 + 32));
      v32 = v81;
      sub_1B0E43838();
      sub_1B0390340(v2, v14, type metadata accessor for RunningTask);
      sub_1B03D2CA8(v94, &v90);
      v33 = sub_1B0E43858();
      v34 = sub_1B0E45AD8();
      if (sub_1B0E45D38())
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v89 = v36;
        *v35 = 136315651;
        *&v95 = *(v14 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BB8, &qword_1B0EC92F0);
        v37 = sub_1B0E44B88();
        v78 = v34;
        v38 = v29;
        v40 = v39;
        sub_1B0453E78(v14, type metadata accessor for RunningTask);
        v41 = sub_1B0399D64(v37, v40, &v89);

        *(v35 + 4) = v41;
        *(v35 + 12) = 2160;
        *(v35 + 14) = 0x786F626C69616DLL;
        *(v35 + 22) = 2085;
        v42 = v91;
        v43 = v92;
        __swift_project_boxed_opaque_existential_0(&v90, v91);
        v44 = *(v43 + 32);
        v45 = v43;
        v29 = v38;
        v44(&v95, v42, v45);
        v98 = v95;
        sub_1B039E440(&v98);
        v87 = v96;
        v88 = v97;
        v46 = sub_1B0E44BA8();
        v48 = v47;
        __swift_destroy_boxed_opaque_existential_0Tm(&v90);
        v49 = sub_1B0399D64(v46, v48, &v89);

        *(v35 + 24) = v49;
        v50 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v33, v78, v50, "BehaviorTask", "M %s,%{sensitive,mask.mailbox}s", v35, 0x20u);
        swift_arrayDestroy();
        v51 = v36;
        v32 = v81;
        MEMORY[0x1B272C230](v51, -1, -1);
        MEMORY[0x1B272C230](v35, -1, -1);
      }

      else
      {

        sub_1B0453E78(v14, type metadata accessor for RunningTask);
        __swift_destroy_boxed_opaque_existential_0Tm(&v90);
      }

      v63 = v84;
      v64 = v83;
      (*(v83 + 16))(v82, v32, v84);
      v65 = sub_1B0E43968();
      v66 = *(v65 + 48);
      v67 = *(v65 + 52);
      swift_allocObject();
      sub_1B0E43958();

      (*(v64 + 8))(v32, v63);
      (*(v85 + 8))(v80, v86);
      __swift_destroy_boxed_opaque_existential_0Tm(v94);
    }

    else
    {
      sub_1B0B7ABB4(&v90);
      v52 = tracingSignposter.unsafeMutableAddressor();
      (*(v85 + 16))(v25, v52, v86);
      v31 = *(v2 + *(v8 + 32));
      sub_1B0E43838();
      sub_1B0390340(v2, v12, type metadata accessor for RunningTask);
      v53 = sub_1B0E43858();
      v54 = sub_1B0E45AD8();
      if (sub_1B0E45D38())
      {
        v55 = swift_slowAlloc();
        v78 = v54;
        v56 = v55;
        v80 = swift_slowAlloc();
        *&v90 = v80;
        *v56 = 136315138;
        v94[0] = *(v12 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BB8, &qword_1B0EC92F0);
        v57 = sub_1B0E44B88();
        v81 = v29;
        v59 = v58;
        sub_1B0453E78(v12, type metadata accessor for RunningTask);
        v60 = sub_1B0399D64(v57, v59, &v90);
        v29 = v81;

        *(v56 + 4) = v60;
        v61 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v53, v78, v61, "BehaviorTask", "A %s", v56, 0xCu);
        v62 = v80;
        __swift_destroy_boxed_opaque_existential_0Tm(v80);
        MEMORY[0x1B272C230](v62, -1, -1);
        MEMORY[0x1B272C230](v56, -1, -1);
      }

      else
      {

        sub_1B0453E78(v12, type metadata accessor for RunningTask);
      }

      v68 = v83;
      v69 = v84;
      (*(v83 + 16))(v82, v18, v84);
      v70 = sub_1B0E43968();
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();
      sub_1B0E43958();

      (*(v68 + 8))(v18, v69);
      (*(v85 + 8))(v25, v86);
    }

    v73 = *(v29 + 6);
    v74 = *(v73 + 16);
    if (v74)
    {
      v75 = v73 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
      v76 = *(v79 + 72);
      do
      {
        sub_1B0390340(v75, v7, type metadata accessor for TaskHistory.Running);
        sub_1B0B793EC(a1, v31);
        sub_1B0453E78(v7, type metadata accessor for TaskHistory.Running);
        v75 += v76;
        --v74;
      }

      while (v74);
    }
  }
}

uint64_t sub_1B0B793EC(uint64_t a1, int a2)
{
  LODWORD(v92) = a2;
  v91 = a1;
  v3 = sub_1B0E43828();
  v94 = *(v3 - 8);
  v95 = v3;
  v4 = *(v94 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v93 = &v84 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v84 - v10;
  v11 = sub_1B0E43868();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v84 - v17;
  v19 = type metadata accessor for ClientCommand(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v88 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v84 - v26;
  v28 = type metadata accessor for TaskHistory.Running(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0390340(v2, v31, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = *v31;
  v33 = v31[1];
  if (EnumCaseMultiPayload == 1)
  {
    v35 = v31[1];
    v36 = *(v31 + 1);
    v37 = tracingSignposter.unsafeMutableAddressor();
    v89 = v12;
    (*(v12 + 16))(v16, v37, v11);
    sub_1B0E43838();
    sub_1B03E14B4(v36);
    sub_1B03E14B4(v36);
    v38 = sub_1B0E43858();
    v39 = sub_1B0E45AD8();
    v40 = v7;
    if (sub_1B0E45D38())
    {
      v41 = v34;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v90 = v11;
      v44 = v43;
      v96 = v43;
      *v42 = 67109890;
      *(v42 + 4) = v41;
      *(v42 + 8) = 2080;
      v45 = Action.kind.getter(v36);
      v46 = Action.Kind.description.getter(v45);
      v48 = sub_1B0399D64(v46, v47, &v96);

      *(v42 + 10) = v48;
      *(v42 + 18) = 1024;
      *(v42 + 20) = v35;
      *(v42 + 24) = 1024;
      v49 = dword_1B0EC951C[(v36 >> 58) & 0x3C | (v36 >> 1) & 3];
      sub_1B03E1BE8(v36);
      *(v42 + 26) = v49;
      sub_1B03E1BE8(v36);
      v50 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v38, v39, v50, "BehaviorAction", "ID: %u name: %s %u %u", v42, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      v51 = v44;
      v11 = v90;
      MEMORY[0x1B272C230](v51, -1, -1);
      MEMORY[0x1B272C230](v42, -1, -1);
    }

    else
    {
      sub_1B03E1BE8(v36);
      sub_1B03E1BE8(v36);
    }

    v73 = v94;
    v74 = v95;
    (*(v94 + 16))(v93, v40, v95);
    v75 = sub_1B0E43968();
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    swift_allocObject();
    sub_1B0E43958();

    sub_1B03E1BE8(v36);
    (*(v73 + 8))(v40, v74);
    return (*(v89 + 8))(v16, v11);
  }

  else
  {
    v86 = *v31;
    v85 = v31[2];
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
    sub_1B0423C18(v31 + *(v52 + 64), v27, type metadata accessor for ClientCommand);
    v53 = tracingSignposter.unsafeMutableAddressor();
    v54 = *(v12 + 16);
    v90 = v11;
    v54(v18, v53, v11);
    v55 = v87;
    sub_1B0E43838();
    sub_1B0390340(v27, v25, type metadata accessor for ClientCommand);
    v92 = v27;
    v56 = v27;
    v57 = v88;
    sub_1B0390340(v56, v88, type metadata accessor for ClientCommand);
    v58 = sub_1B0E43858();
    v59 = sub_1B0E45AD8();
    v60 = v18;
    if (sub_1B0E45D38())
    {
      v61 = swift_slowAlloc();
      v89 = v12;
      v84 = v59;
      v62 = v61;
      v91 = swift_slowAlloc();
      v96 = v91;
      *v62 = 136447234;
      v63 = v86;
      v64 = Tag.debugDescription.getter(v86 | (v33 << 32));
      v66 = sub_1B0399D64(v64, v65, &v96);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      v67 = ClientCommand.logIdentifier.getter();
      v69 = v68;
      sub_1B0453E78(v25, type metadata accessor for ClientCommand);
      v70 = sub_1B0399D64(v67, v69, &v96);

      *(v62 + 14) = v70;
      *(v62 + 22) = 1024;
      *(v62 + 24) = v85;
      *(v62 + 28) = 1024;
      *(v62 + 30) = v63;
      *(v62 + 34) = 1024;
      LODWORD(v70) = sub_1B0B7A864() + 1;
      sub_1B0453E78(v57, type metadata accessor for ClientCommand);
      *(v62 + 36) = v70;
      v71 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v58, v84, v71, "BehaviorCommand", "tag: %{public}s, name: %s %u %u %u", v62, 0x28u);
      v72 = v91;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v72, -1, -1);
      v12 = v89;
      MEMORY[0x1B272C230](v62, -1, -1);
    }

    else
    {
      sub_1B0453E78(v57, type metadata accessor for ClientCommand);

      sub_1B0453E78(v25, type metadata accessor for ClientCommand);
    }

    v79 = v94;
    v80 = v95;
    (*(v94 + 16))(v93, v55, v95);
    v81 = sub_1B0E43968();
    v82 = *(v81 + 48);
    v83 = *(v81 + 52);
    swift_allocObject();
    sub_1B0E43958();

    (*(v79 + 8))(v55, v80);
    (*(v12 + 8))(v60, v90);
    return sub_1B0453E78(v92, type metadata accessor for ClientCommand);
  }
}

void sub_1B0B79C14(uint64_t a1)
{
  v2 = type metadata accessor for TaskHistory.Running(0);
  v67 = *(v2 - 8);
  v3 = *(v67 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v59 - v7;
  v9 = sub_1B0E43878();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B0E43828();
  v13 = *(v12 - 8);
  v71 = v12;
  v72 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v69 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v68 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - v19;
  v21 = sub_1B0E43868();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *tracingLog.unsafeMutableAddressor();
  v27 = sub_1B0E45D38();

  if (v27)
  {
    v28 = tracingSignposter.unsafeMutableAddressor();
    v62 = v22;
    v63 = v21;
    v29 = *(v22 + 16);
    v60 = v25;
    v29(v25, v28, v21);
    v30 = *(v70 + *(type metadata accessor for RunningTask() + 32));
    v61 = a1;
    sub_1B0E43838();
    v32 = v71;
    v31 = v72;
    (*(v72 + 16))(v68, v20, v71);
    v33 = sub_1B0E43968();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_1B0E43958();
    v36 = *(v31 + 8);
    v72 = v31 + 8;
    v36(v20, v32);
    v37 = v36;
    v38 = v60;
    v39 = sub_1B0E43858();
    v40 = v69;
    sub_1B0E43948();
    LODWORD(v68) = sub_1B0E45AC8();
    v41 = sub_1B0E45D38();
    v42 = v71;
    if (v41)
    {
      v59 = v37;

      v43 = v64;
      sub_1B0E43978();

      v44 = v65;
      v45 = v66;
      if ((*(v65 + 88))(v43, v66) == *MEMORY[0x1E69E93E8])
      {
        v46 = "[Error] Interval already ended";
      }

      else
      {
        (*(v44 + 8))(v43, v45);
        v46 = "";
      }

      v47 = swift_slowAlloc();
      *v47 = 0;
      v48 = v69;
      v49 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v39, v68, v49, "BehaviorTask", v46, v47, 2u);
      v50 = v47;
      v40 = v48;
      MEMORY[0x1B272C230](v50, -1, -1);
      v42 = v71;
      v37 = v59;
    }

    v37(v40, v42);
    (*(v62 + 8))(v38, v63);
    v51 = *(v70 + 48);
    v52 = *(v51 + 16);
    v53 = v61;
    if (v52)
    {
      v54 = v51 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v55 = *(v67 + 72);
      do
      {
        sub_1B0390340(v54, v8, type metadata accessor for TaskHistory.Running);
        sub_1B0390340(v8, v6, type metadata accessor for TaskHistory.Running);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          v56 = *v6;
          sub_1B03E1BE8(v6[1]);
        }

        else
        {
          v56 = *v6;
          v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
          sub_1B0453E78(v6 + *(v58 + 64), type metadata accessor for ClientCommand);
        }

        sub_1B0B7A1F4(v53, v30, v56, EnumCaseMultiPayload == 1);
        sub_1B0453E78(v8, type metadata accessor for TaskHistory.Running);
        v54 += v55;
        --v52;
      }

      while (v52);
    }
  }
}

uint64_t sub_1B0B7A1F4(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  LODWORD(v69) = a4;
  v70 = a3;
  v4 = sub_1B0E43878();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v62 - v8;
  v9 = sub_1B0E43828();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v65 = &v62 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v62 - v19;
  v21 = sub_1B0E43868();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v62 - v27;
  v29 = tracingSignposter.unsafeMutableAddressor();
  v71 = v22;
  v30 = *(v22 + 16);
  v31 = (v10 + 16);
  v32 = (v10 + 8);
  if ((v69 & 1) == 0)
  {
    v69 = v21;
    v30(v28, v29, v21);
    sub_1B0E43838();
    (*v31)(v18, v20, v9);
    v44 = sub_1B0E43968();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    sub_1B0E43958();
    v47 = *v32;
    (*v32)(v20, v9);
    v48 = sub_1B0E43858();
    v49 = v65;
    sub_1B0E43948();
    v50 = sub_1B0E45AC8();
    if (sub_1B0E45D38())
    {
      v70 = v9;

      v51 = v63;
      sub_1B0E43978();

      v53 = v67;
      v52 = v68;
      if ((*(v67 + 88))(v51, v68) == *MEMORY[0x1E69E93E8])
      {
        v54 = "[Error] Interval already ended";
      }

      else
      {
        (*(v53 + 8))(v51, v52);
        v54 = "";
      }

      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v48, v50, v60, "BehaviorCommand", v54, v59, 2u);
      MEMORY[0x1B272C230](v59, -1, -1);

      v55 = v49;
      v56 = v70;
    }

    else
    {

      v55 = v49;
      v56 = v9;
    }

    v47(v55, v56);
    goto LABEL_15;
  }

  v30(v26, v29, v21);
  sub_1B0E43838();
  (*v31)(v18, v20, v9);
  v33 = sub_1B0E43968();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_1B0E43958();
  v36 = *v32;
  (*v32)(v20, v9);
  v37 = sub_1B0E43858();
  v38 = v66;
  sub_1B0E43948();
  v39 = sub_1B0E45AC8();
  if (sub_1B0E45D38())
  {
    LODWORD(v65) = v39;
    v69 = v21;
    v70 = v26;

    v40 = v64;
    sub_1B0E43978();

    v42 = v67;
    v41 = v68;
    if ((*(v67 + 88))(v40, v68) == *MEMORY[0x1E69E93E8])
    {
      v43 = "[Error] Interval already ended";
    }

    else
    {
      (*(v42 + 8))(v40, v41);
      v43 = "";
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v37, v65, v58, "BehaviorAction", v43, v57, 2u);
    MEMORY[0x1B272C230](v57, -1, -1);

    v36(v38, v9);
    v28 = v70;
LABEL_15:
    v21 = v69;
    return (*(v71 + 8))(v28, v21);
  }

  v36(v38, v9);
  v28 = v26;
  return (*(v71 + 8))(v28, v21);
}

uint64_t sub_1B0B7A864()
{
  v1 = type metadata accessor for ClientCommand(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0390340(v0, v4, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 9:
      sub_1B0453E78(v4, type metadata accessor for ClientCommand);
      goto LABEL_11;
    case 10:
      v12 = *v4;

      v13 = v4[2];

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v15 = *(v14 + 64);
      sub_1B0391D50(*(v4 + *(v14 + 80)), *(v4 + *(v14 + 80) + 8));
      v8 = &unk_1EB6E2990;
      v9 = &qword_1B0E9B060;
      v10 = v4 + v15;
      goto LABEL_8;
    case 11:
    case 12:
    case 13:
    case 14:
      sub_1B0453E78(v4, type metadata accessor for ClientCommand);
      goto LABEL_4;
    case 15:
      v11 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48));

      sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return 4;
    case 16:
      v16 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48) + 8);

      sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return 5;
    case 17:
    case 18:
      v7 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48));

      v8 = &unk_1EB6E1AF0;
      v9 = &unk_1B0E9AF40;
      v10 = v4;
LABEL_8:
      sub_1B0398EFC(v10, v8, v9);
      result = 2;
      break;
    case 19:
LABEL_4:
      result = 3;
      break;
    case 22:
    case 23:
    case 24:
    case 25:
    case 29:
      return result;
    case 26:
    case 27:
    case 28:
LABEL_11:
      result = 1;
      break;
    default:
      sub_1B0453E78(v4, type metadata accessor for ClientCommand);
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_1B0B7AAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0390340(a1, v7, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *v7;
    result = sub_1B03E1BE8(v7[1]);
  }

  else
  {
    v9 = *v7;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
    result = sub_1B0453E78(v7 + *(v11 + 64), type metadata accessor for ClientCommand);
  }

  *a2 = v9;
  *(a2 + 8) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t sub_1B0B7ACA4(uint64_t (*a1)(uint64_t a1), int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v106 = a1;
  v104 = a7;
  v105 = a8;
  v102 = a5;
  v103 = a6;
  v95 = a4;
  v101 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v100 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v92 - v13;
  v14 = type metadata accessor for ClientCommand(0);
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = *(v97 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v93 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v94 = &v92 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v92 - v20;
  v21 = type metadata accessor for Command();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BD8, &qword_1B0EC9308);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v92 - v32;
  sub_1B03B5C80(v106, &v92 - v32, &qword_1EB6E4BD0, &qword_1B0EC9300);
  v34 = *(v27 + 56);
  v35 = a2;
  *&v33[v34] = a2;
  sub_1B03B5C80(v33, v31, &qword_1EB6E4BD8, &qword_1B0EC9308);
  if ((*(v22 + 48))(v31, 1, v21) == 1)
  {
    sub_1B0398EFC(v33, &qword_1EB6E4BD8, &qword_1B0EC9308);
    sub_1B0398EFC(v31, &qword_1EB6E4BD0, &qword_1B0EC9300);
    return 1;
  }

  else
  {
    sub_1B0423C18(v31, v25, type metadata accessor for Command);
    v37 = v107;
    v38 = sub_1B0BA790C(v25, v102, v103, v104, v105);
    if (v37)
    {
      sub_1B0453E78(v25, type metadata accessor for Command);
      return sub_1B0398EFC(v33, &qword_1EB6E4BD8, &qword_1B0EC9308);
    }

    else if (v39)
    {
      v40 = v101 + *(type metadata accessor for RunningTask() + 36);
      if (*(v40 + 8))
      {
        v41 = static MonotonicTime.now()();
        sub_1B0453E78(v25, type metadata accessor for Command);
        sub_1B0398EFC(v33, &qword_1EB6E4BD8, &qword_1B0EC9308);
        *v40 = v41;
        *(v40 + 8) = 0;
      }

      else
      {
        sub_1B0453E78(v25, type metadata accessor for Command);
        sub_1B0398EFC(v33, &qword_1EB6E4BD8, &qword_1B0EC9308);
      }

      return 2;
    }

    else
    {
      v107 = v38;
      v42 = v99;
      sub_1B0A91328(v99);
      if ((*(v97 + 48))(v42, 1, v98) == 1)
      {
        sub_1B0398EFC(v42, &qword_1EB6E4BC8, &qword_1B0EC92F8);
      }

      else
      {
        v43 = v42;
        v44 = v96;
        sub_1B0423C18(v43, v96, type metadata accessor for ClientCommand);
        v45 = v95 + *(type metadata accessor for Task.Logger(0) + 20);
        v46 = *v45;
        v105 = *(v45 + 8);
        v47 = *(v45 + 16);
        v48 = *(v45 + 24);
        v49 = *(v45 + 32);
        LODWORD(v106) = *(v45 + 40);
        v103 = v46;
        v104 = v48;
        if (v48 < 0)
        {
          v70 = v47;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v71 = v49;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v72 = v93;
          sub_1B0390340(v44, v93, type metadata accessor for ClientCommand);
          v73 = sub_1B0E43988();
          v74 = sub_1B0E458C8();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v102 = v33;
            v76 = v75;
            v99 = swift_slowAlloc();
            v110 = v99;
            *v76 = 68159747;
            LODWORD(v98) = v74;
            *(v76 + 4) = 2;
            *(v76 + 8) = 256;
            *(v76 + 10) = v103;
            *(v76 + 11) = 2082;
            *(v76 + 13) = sub_1B0399D64(v105, v70, &v110);
            *(v76 + 21) = 1040;
            *(v76 + 23) = 2;
            *(v76 + 27) = 512;
            *(v76 + 29) = v104;

            *(v76 + 31) = 2160;
            *(v76 + 33) = 0x786F626C69616DLL;
            *(v76 + 41) = 2085;
            v108 = v71;
            v109 = v106;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v77 = sub_1B0E44BA8();
            v79 = sub_1B0399D64(v77, v78, &v110);

            *(v76 + 43) = v79;
            *(v76 + 51) = 2082;
            v80 = ClientCommand.logIdentifier.getter();
            v81 = v72;
            v82 = v25;
            v84 = v83;
            sub_1B0453E78(v81, type metadata accessor for ClientCommand);
            v85 = sub_1B0399D64(v80, v84, &v110);

            *(v76 + 53) = v85;
            *(v76 + 61) = 2082;
            v86 = Tag.debugDescription.getter(v107 & 0xFFFFFFFF000000FFLL);
            v88 = sub_1B0399D64(v86, v87, &v110);

            *(v76 + 63) = v88;
            v25 = v82;
            _os_log_impl(&dword_1B0389000, v73, v98, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' command as %{public}s", v76, 0x47u);
            v89 = v99;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v89, -1, -1);
            v90 = v76;
            v33 = v102;
            MEMORY[0x1B272C230](v90, -1, -1);
          }

          else
          {

            sub_1B0453E78(v72, type metadata accessor for ClientCommand);
          }

          sub_1B0453E78(v96, type metadata accessor for ClientCommand);
        }

        else
        {
          v102 = v33;
          v50 = v47;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v51 = v94;
          sub_1B0390340(v44, v94, type metadata accessor for ClientCommand);
          v52 = sub_1B0E43988();
          v53 = sub_1B0E458C8();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            LODWORD(v97) = v53;
            v55 = v51;
            v56 = v54;
            v98 = swift_slowAlloc();
            v99 = v25;
            v108 = v98;
            *v56 = 68158722;
            *(v56 + 4) = 2;
            *(v56 + 8) = 256;
            v57 = v103;
            v58 = v104;
            *(v56 + 10) = v103;
            v59 = v105;
            sub_1B0A92018(v57, v105, v50, v58);
            *(v56 + 11) = 2082;
            *(v56 + 13) = sub_1B0399D64(v59, v50, &v108);
            *(v56 + 21) = 2082;
            v60 = ClientCommand.logIdentifier.getter();
            v62 = v61;
            v106 = type metadata accessor for ClientCommand;
            sub_1B0453E78(v55, type metadata accessor for ClientCommand);
            v63 = sub_1B0399D64(v60, v62, &v108);

            *(v56 + 23) = v63;
            *(v56 + 31) = 2082;
            v64 = Tag.debugDescription.getter(v107 & 0xFFFFFFFF000000FFLL);
            v66 = sub_1B0399D64(v64, v65, &v108);

            *(v56 + 33) = v66;
            _os_log_impl(&dword_1B0389000, v52, v97, "[%.*hhx-%{public}s] Sent '%{public}s' command as %{public}s", v56, 0x29u);
            v67 = v98;
            swift_arrayDestroy();
            v25 = v99;
            MEMORY[0x1B272C230](v67, -1, -1);
            MEMORY[0x1B272C230](v56, -1, -1);

            v68 = v96;
            v69 = v106;
          }

          else
          {

            sub_1B0A92018(v103, v105, v50, v104);
            sub_1B0453E78(v51, type metadata accessor for ClientCommand);
            v68 = v44;
            v69 = type metadata accessor for ClientCommand;
          }

          sub_1B0453E78(v68, v69);
          v33 = v102;
        }
      }

      v91 = v100;
      sub_1B0A91328(v100);
      sub_1B0BB0B38(v91, v107, v35);
      sub_1B0398EFC(v91, &qword_1EB6E4BC8, &qword_1B0EC92F8);
      sub_1B0453E78(v25, type metadata accessor for Command);
      sub_1B0398EFC(v33, &qword_1EB6E4BD8, &qword_1B0EC9308);
      return 0;
    }
  }
}

uint64_t sub_1B0B7B704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B7B774(uint64_t a1, int a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v94 = a3;
  v85 = a6;
  v92 = a5;
  v93 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v82 - v12;
  v13 = type metadata accessor for ClientCommand(0);
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = *(v87 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v83 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v84 = &v82 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v82 - v19;
  v20 = type metadata accessor for Command();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BD8, &qword_1B0EC9308);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = a1;
  v33 = &v82 - v32;
  sub_1B03B5C80(v31, &v82 - v32, &qword_1EB6E4BD0, &qword_1B0EC9300);
  v34 = *(v26 + 56);
  v91 = a2;
  *&v33[v34] = a2;
  sub_1B03B5C80(v33, v30, &qword_1EB6E4BD8, &qword_1B0EC9308);
  if ((*(v21 + 48))(v30, 1, v20) == 1)
  {
    sub_1B0398EFC(v33, &qword_1EB6E4BD8, &qword_1B0EC9308);
    sub_1B0398EFC(v30, &qword_1EB6E4BD0, &qword_1B0EC9300);
    return 1;
  }

  sub_1B0423C18(v30, v24, type metadata accessor for Command);
  v36 = v95;
  v37 = (v94)(v24);
  v39 = v24;
  if (v36)
  {
    sub_1B0453E78(v24, type metadata accessor for Command);
    return sub_1B0398EFC(v33, &qword_1EB6E4BD8, &qword_1B0EC9308);
  }

  if ((v38 & 1) == 0)
  {
    v94 = v37;
    v42 = v89;
    sub_1B0A91328(v89);
    if ((*(v87 + 48))(v42, 1, v88) == 1)
    {
      sub_1B0398EFC(v42, &qword_1EB6E4BC8, &qword_1B0EC92F8);
LABEL_22:
      v81 = v90;
      sub_1B0A91328(v90);
      sub_1B0BB0B38(v81, v94, v91);
      sub_1B0398EFC(v81, &qword_1EB6E4BC8, &qword_1B0EC92F8);
      sub_1B0453E78(v39, type metadata accessor for Command);
      sub_1B0398EFC(v33, &qword_1EB6E4BD8, &qword_1B0EC9308);
      return 0;
    }

    v93 = v33;
    v43 = v86;
    sub_1B0423C18(v42, v86, type metadata accessor for ClientCommand);
    v44 = v85 + *(type metadata accessor for Task.Logger(0) + 20);
    v45 = *(v44 + 8);
    v95 = *v44;
    v47 = *(v44 + 16);
    v46 = *(v44 + 24);
    v48 = *(v44 + 32);
    LODWORD(v89) = *(v44 + 40);
    v87 = v46;
    v88 = v45;
    if (v46 < 0)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v49 = v83;
      sub_1B0390340(v43, v83, type metadata accessor for ClientCommand);
      v67 = sub_1B0E43988();
      v68 = sub_1B0E458C8();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v98 = v85;
        *v69 = 68159747;
        *(v69 + 4) = 2;
        *(v69 + 8) = 256;
        *(v69 + 10) = v95;
        v95 = 0;
        *(v69 + 11) = 2082;
        *(v69 + 13) = sub_1B0399D64(v88, v47, &v98);
        *(v69 + 21) = 1040;
        *(v69 + 23) = 2;
        *(v69 + 27) = 512;
        *(v69 + 29) = v87;

        *(v69 + 31) = 2160;
        *(v69 + 33) = 0x786F626C69616DLL;
        *(v69 + 41) = 2085;
        v96 = v48;
        v97 = v89;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v70 = sub_1B0E44BA8();
        v72 = sub_1B0399D64(v70, v71, &v98);

        *(v69 + 43) = v72;
        *(v69 + 51) = 2082;
        v73 = ClientCommand.logIdentifier.getter();
        v75 = v74;
        sub_1B0453E78(v49, type metadata accessor for ClientCommand);
        v76 = sub_1B0399D64(v73, v75, &v98);

        *(v69 + 53) = v76;
        *(v69 + 61) = 2082;
        v77 = Tag.debugDescription.getter(v94 & 0xFFFFFFFF000000FFLL);
        v79 = sub_1B0399D64(v77, v78, &v98);

        *(v69 + 63) = v79;
        _os_log_impl(&dword_1B0389000, v67, v68, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' command as %{public}s", v69, 0x47u);
        v80 = v85;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v80, -1, -1);
        MEMORY[0x1B272C230](v69, -1, -1);

        v65 = v86;
LABEL_20:
        v66 = type metadata accessor for ClientCommand;
        goto LABEL_21;
      }
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v49 = v84;
      sub_1B0390340(v43, v84, type metadata accessor for ClientCommand);
      v50 = sub_1B0E43988();
      v51 = sub_1B0E458C8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = v47;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v85 = v39;
        v83 = v54;
        v96 = v54;
        *v53 = 68158722;
        *(v53 + 4) = 2;
        *(v53 + 8) = 256;
        v55 = v95;
        *(v53 + 10) = v95;
        v56 = v88;
        sub_1B0A92018(v55, v88, v52, v87);
        *(v53 + 11) = 2082;
        *(v53 + 13) = sub_1B0399D64(v56, v52, &v96);
        *(v53 + 21) = 2082;
        v57 = ClientCommand.logIdentifier.getter();
        v59 = v58;
        v95 = type metadata accessor for ClientCommand;
        sub_1B0453E78(v49, type metadata accessor for ClientCommand);
        v60 = sub_1B0399D64(v57, v59, &v96);

        *(v53 + 23) = v60;
        *(v53 + 31) = 2082;
        v61 = Tag.debugDescription.getter(v94 & 0xFFFFFFFF000000FFLL);
        v63 = sub_1B0399D64(v61, v62, &v96);

        *(v53 + 33) = v63;
        _os_log_impl(&dword_1B0389000, v50, v51, "[%.*hhx-%{public}s] Sent '%{public}s' command as %{public}s", v53, 0x29u);
        v64 = v83;
        swift_arrayDestroy();
        v39 = v85;
        MEMORY[0x1B272C230](v64, -1, -1);
        MEMORY[0x1B272C230](v53, -1, -1);

        v65 = v86;
        v66 = v95;
LABEL_21:
        sub_1B0453E78(v65, v66);
        v33 = v93;
        goto LABEL_22;
      }

      sub_1B0A92018(v95, v88, v47, v87);
    }

    sub_1B0453E78(v49, type metadata accessor for ClientCommand);
    v65 = v43;
    goto LABEL_20;
  }

  v40 = v92 + *(type metadata accessor for RunningTask() + 36);
  if (*(v40 + 8) == 1)
  {
    v41 = static MonotonicTime.now()();
    sub_1B0453E78(v24, type metadata accessor for Command);
    sub_1B0398EFC(v33, &qword_1EB6E4BD8, &qword_1B0EC9308);
    *v40 = v41;
    *(v40 + 8) = 0;
  }

  else
  {
    sub_1B0453E78(v24, type metadata accessor for Command);
    sub_1B0398EFC(v33, &qword_1EB6E4BD8, &qword_1B0EC9308);
  }

  return 2;
}

unint64_t sub_1B0B7C1A0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1B03E1BE8(result);
  }

  return result;
}

uint64_t sub_1B0B7C1FC(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for TaskHistory.Running(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  result = sub_1B0450DB0(v5, v50);
  if (v53)
  {
    if (v53 != 1)
    {
      return result;
    }

    v19 = a4;
    v20 = v51;
    v21 = v52;
    sub_1B0450C74(v50, v47);
    if ((v21 & 1) == 0 && v20 == a1)
    {
      goto LABEL_5;
    }

    v36 = v48;
    v37 = v49;
    __swift_project_boxed_opaque_existential_0(v47, v48);
    (*(v37 + 32))(&v54, v36, v37);
    v58 = v55;
    v59 = v56;
    *v57 = v54;
    sub_1B039E440(v57);
    if (a2 && (v59 | (v59 << 32)) == (a3 | (a3 << 32)))
    {
      v38 = sub_1B04520BC(v58, a2);
      sub_1B039E440(&v58);
      if (v38)
      {
LABEL_5:
        sub_1B0450DB0(v5, v45);
        if (v46)
        {
          if (v46 == 1)
          {
            sub_1B0450C74(v45, v42);
            v22 = v43;
            v23 = v44;
            __swift_project_boxed_opaque_existential_0(v42, v43);
            v24 = type metadata accessor for RunningTask();
            (*(v23 + 136))(v19, v5 + *(v24 + 28), v22, v23);
            sub_1B0B7ABB4(v5);
            *v5 = 1;
            *(v5 + 8) = 0u;
            *(v5 + 24) = 0u;
            *(v5 + 37) = 0;
            *(v5 + 45) = 2;
            __swift_destroy_boxed_opaque_existential_0Tm(v42);
          }
        }

        else
        {
          sub_1B0B7ABB4(v5);
          *v5 = 1;
          *(v5 + 8) = 0u;
          *(v5 + 24) = 0u;
          *(v5 + 37) = 0;
          *(v5 + 45) = 2;
          sub_1B0B7ABB4(v45);
        }
      }
    }

    else
    {
      sub_1B039E440(&v58);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  v40 = a4;
  v41 = v5;
  v25 = *(v5 + 48);
  v26 = *(v25 + 16);
  if (!v26)
  {
    return sub_1B0B7ABB4(v50);
  }

  v27 = v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v28 = *(v11 + 72);
  while (1)
  {
    sub_1B0390340(v27, v17, type metadata accessor for TaskHistory.Running);
    sub_1B0423C18(v17, v15, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B0453E78(v15, type metadata accessor for TaskHistory.Running);
LABEL_11:
    v27 += v28;
    if (!--v26)
    {
      return sub_1B0B7ABB4(v50);
    }
  }

  v29 = *v15;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
  sub_1B0453E78(v15 + *(v30 + 64), type metadata accessor for ClientCommand);
  if (v29 != a1)
  {
    goto LABEL_11;
  }

  v31 = v41;
  sub_1B0450DB0(v41, v45);
  v32 = v40;
  if (v46)
  {
    if (v46 == 1)
    {
      sub_1B0450C74(v45, v47);
      v33 = v48;
      v34 = v49;
      __swift_project_boxed_opaque_existential_0(v47, v48);
      v35 = type metadata accessor for RunningTask();
      (*(v34 + 136))(v32, v31 + *(v35 + 28), v33, v34);
      sub_1B0B7ABB4(v31);
      *v31 = 1;
      *(v31 + 8) = 0u;
      *(v31 + 24) = 0u;
      *(v31 + 37) = 0;
      *(v31 + 45) = 2;
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
    }
  }

  else
  {
    sub_1B0B7ABB4(v31);
    *v31 = 1;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 37) = 0;
    *(v31 + 45) = 2;
    sub_1B0B7ABB4(v45);
  }

  return sub_1B0B7ABB4(v50);
}

uint64_t sub_1B0B7C698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  return (*(v9 + 104))(v7, a2, a3, v6, v8, v9);
}

uint64_t sub_1B0B7C754(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v8);
  return (*(v9 + 96))(v4, v5, v6, a1, v7, v8, v9);
}

uint64_t sub_1B0B7C7E4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 64);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(v2 + 56);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  return (*(v10 + 112))(v3, v4, v5, v6, v7, v11, a2, v8, v9, v10);
}

unint64_t sub_1B0B7C890()
{
  result = qword_1EB6E4BF0;
  if (!qword_1EB6E4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4BF0);
  }

  return result;
}

uint64_t sub_1B0B7C8E4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  return (*(v8 + 120))(v4, v6, a2, v5, v7, v8);
}

unint64_t sub_1B0B7C9A0()
{
  result = qword_1EB6E4BF8;
  if (!qword_1EB6E4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4BF8);
  }

  return result;
}

unint64_t sub_1B0B7C9F8()
{
  result = qword_1EB6E4C00;
  if (!qword_1EB6E4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4C00);
  }

  return result;
}

unint64_t sub_1B0B7CA50()
{
  result = qword_1EB6E4C08;
  if (!qword_1EB6E4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4C08);
  }

  return result;
}

uint64_t sub_1B0B7CAB8(uint64_t *a1, uint64_t a2)
{
  result = sub_1B0450DB0(a2, v31);
  if (!v32)
  {
    return sub_1B0B7ABB4(v31);
  }

  if (v32 == 1)
  {
    sub_1B0450C74(v31, v28);
    v6 = v29;
    v7 = v30;
    __swift_project_boxed_opaque_existential_0(v28, v29);
    (*(v7 + 32))(&v33, v6, v7);
    v8 = v34;
    v9 = v35;
    v36 = v33;
    sub_1B039E440(&v36);
    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_1B0450DB0(a2, v31);
    if (v32)
    {
      if (v32 == 1)
      {
        sub_1B0450C74(v31, v28);
        v10 = v29;
        v2 = v30;
        __swift_project_boxed_opaque_existential_0(v28, v29);
        v11 = (*(v2 + 40))(v10, v2);
        __swift_destroy_boxed_opaque_existential_0(v28);
        v12 = v11;
        goto LABEL_9;
      }
    }

    else
    {
      sub_1B0B7ABB4(v31);
    }

    v12 = MEMORY[0x1E69E7CD0];
LABEL_9:
    v13 = *(v12 + 16);

    if (!v13)
    {
    }

    sub_1B0450DB0(a2, v31);
    if (v32)
    {
      if (v32 == 1)
      {
        sub_1B0450C74(v31, v28);
        v14 = v29;
        v15 = v30;
        __swift_project_boxed_opaque_existential_0(v28, v29);
        v16 = (*(v15 + 40))(v14, v15);
        __swift_destroy_boxed_opaque_existential_0(v28);
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B0B7ABB4(v31);
    }

    v16 = MEMORY[0x1E69E7CD0];
LABEL_16:
    v17 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[0] = *a1;
    v19 = *&v31[0];
    v21 = sub_1B03AB888(v8, v9);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v2) = v20;
      if (v19[3] < v24)
      {
        sub_1B0B33C48(v24, isUniquelyReferenced_nonNull_native);
        v19 = *&v31[0];
        v25 = sub_1B03AB888(v8, v9);
        if ((v2 & 1) != (v26 & 1))
        {
          result = sub_1B0E46BA8();
          __break(1u);
          return result;
        }

        v21 = v25;
        *a1 = v19;
        if ((v2 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_23:

LABEL_27:
        v27 = v19[7] + 8 * v21;
        return sub_1B0AFBD00(v16);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        *a1 = v19;
        if (v20)
        {
          goto LABEL_23;
        }

LABEL_26:
        sub_1B0A9BDC4(v21, v8, v9, MEMORY[0x1E69E7CD0], v19);
        goto LABEL_27;
      }
    }

    sub_1B0B8F2BC();
    v19 = *&v31[0];
    *a1 = *&v31[0];
    if (v2)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1B0B7CD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  (*(a5 + 16))(v35, a4, a5);
  v9 = sub_1B03D0AD8(v35, a2);
  sub_1B03B04BC(v35);
  if (v9)
  {
    return 0;
  }

  result = (*(v5 + 24))(v6, v5);
  v33 = *(result + 16);
  if (!v33)
  {

    goto LABEL_17;
  }

  v30 = a3;
  v31 = v6;
  v32 = v5;
  v11 = 0;
  v34 = result + 32;
  v12 = a2 + 56;
  do
  {
    if (v11 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v13 = result;
    sub_1B03D0A20(v34 + 48 * v11, v38);
    if (*(a2 + 16))
    {
      v14 = *(a2 + 40);
      sub_1B0E46C28();
      sub_1B0E461D8();
      v15 = sub_1B0E46CB8();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if ((*(v12 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        v19 = v38[0];
        do
        {
          sub_1B03D0A20(*(a2 + 48) + 48 * v17, v35);
          if (v35[0] == v19)
          {
            v20 = MEMORY[0x1B27282E0](&v35[1], &v38[1]);
            sub_1B03B04BC(v35);
            if (v20)
            {
              sub_1B03B04BC(v38);

              return 0;
            }
          }

          else
          {
            sub_1B03B04BC(v35);
          }

          v17 = (v17 + 1) & v18;
        }

        while (((*(v12 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
      }
    }

    ++v11;
    sub_1B03B04BC(v38);
    result = v13;
  }

  while (v11 != v33);

  v6 = v31;
  v5 = v32;
  a3 = v30;
LABEL_17:
  (*(v5 + 32))(v35, v6, v5);
  v21 = v36;
  v22 = v37;
  *v38 = *v35;
  sub_1B039E440(v38);
  if (!*(a3 + 16))
  {

    return 1;
  }

  v23 = sub_1B03AB888(v21, v22);
  v25 = v24;

  if (v25)
  {
    v26 = *(*(a3 + 56) + 8 * v23);
    v27 = *(v5 + 48);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v28 = v27(v6, v5);
    v29 = sub_1B0B872CC(v28, v26);

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B0B7D080(uint64_t result)
{
  v2 = *(v1 + 8);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = sub_1B0B8CA2C(v2);
    }

    for (i = 0; i != v3; ++i)
    {
      if (i >= *(v2 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      v6 = *(type metadata accessor for RunningTask() - 8);
      result = v4(&v2[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i]);
    }

    *(v1 + 8) = v2;
  }

  return result;
}

uint64_t sub_1B0B7D174(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RunningTask();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  sub_1B0450D48(a1, &v18 - v11, type metadata accessor for RunningTask);
  v13 = *(v2 + 4);
  *&v12[*(v5 + 40)] = v13;
  *(v2 + 4) = (v13 + 1) & 0xFFFFFF;
  sub_1B0B78A8C(*v2);
  sub_1B0450D48(v12, v10, type metadata accessor for RunningTask);
  v14 = *(v2 + 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1B043B274(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1B043B274(v15 > 1, v16 + 1, 1, v14);
  }

  sub_1B0450ED8(v12, type metadata accessor for RunningTask);
  v14[2] = v16 + 1;
  result = sub_1B0B7EA14(v10, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, type metadata accessor for RunningTask);
  *(v2 + 1) = v14;
  return result;
}

unsigned int *sub_1B0B7D354(unsigned int *result, uint64_t a2, uint64_t a3)
{
  if (*(*(v3 + 8) + 16))
  {
    v5 = result;
    sub_1B0B7DEE0(result, a3);
    MEMORY[0x1EEE9AC00](v7);
    v10[0] = v5;
    v10[1] = a2;
    v8 = sub_1B0B7D080(sub_1B0B7E968);
    MEMORY[0x1EEE9AC00](v8);
    v10[2] = v3;
    v10[3] = a3;
    result = sub_1B03C9E58(sub_1B0455540, v10);
    v9 = *(*(v3 + 8) + 16);
    if (v9 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_1B03AD818(result, v9);
    }
  }

  return result;
}

uint64_t sub_1B0B7D460(uint64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for RunningTask();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v10, 0);
    v11 = v24;
    v12 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    do
    {
      sub_1B0450D48(v12, v9, type metadata accessor for RunningTask);
      sub_1B0450D48(v9, v6, type metadata accessor for RunningTask);
      v13 = sub_1B0E44BA8();
      v15 = v14;
      sub_1B0450ED8(v9, type metadata accessor for RunningTask);
      v24 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B041D32C((v16 > 1), v17 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v12 += v22;
      --v10;
    }

    while (v10);
  }

  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v19 = sub_1B0E448E8();

  return v19;
}

uint64_t sub_1B0B7D688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientCommand(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0450D48(a1, v9, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 10:
      v17 = *v9;

      v18 = v9[2];

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v20 = *(v19 + 64);
      sub_1B0391D50(*(v9 + *(v19 + 80)), *(v9 + *(v19 + 80) + 8));
      v21 = &unk_1EB6E2990;
      v22 = &qword_1B0E9B060;
      v23 = v9 + v20;
      goto LABEL_10;
    case 15:
      v24 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48));
      goto LABEL_9;
    case 16:
      v25 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48) + 8);
LABEL_9:

      v21 = &unk_1EB6E1AF0;
      v22 = &unk_1B0E9AF40;
      v23 = v9;
LABEL_10:
      sub_1B0398EFC(v23, v21, v22);
      goto LABEL_3;
    case 17:
    case 18:
      v13 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48);
      v14 = *v13;
      v15 = *(v13 + 2);
      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v16 = sub_1B0B7D8A4(v14, v15, a2, a3);

      v11 = v16 ^ 1;
      return v11 & 1;
    case 19:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
      return v11 & 1;
    default:
      sub_1B0450ED8(v9, type metadata accessor for ClientCommand);
LABEL_3:
      v11 = 1;
      return v11 & 1;
  }
}