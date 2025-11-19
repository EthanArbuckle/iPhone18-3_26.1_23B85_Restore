uint64_t sub_24A784610(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CAA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E680, &qword_24A838C88);
  v48 = a2;
  result = sub_24A82D964();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_24A78B7D0(v31 + v32 * v28, v52, type metadata accessor for FMIPDeviceLostModeMetadata);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_24A78B768(v33 + v32 * v28, v52, type metadata accessor for FMIPDeviceLostModeMetadata);
      }

      v34 = *(v16 + 40);
      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0]);
      result = sub_24A82CF54();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_24A78B7D0(v52, *(v16 + 56) + v32 * v24, type metadata accessor for FMIPDeviceLostModeMetadata);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

unint64_t sub_24A784AB0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_24A77EF00(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_24A781354(v13, a3 & 1);
      v17 = *v4;
      result = sub_24A77EF00(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for SPBeaconTaskName(0);
        result = sub_24A82DC44();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_24A786140();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + 8 * result) = a1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a2;
}

void sub_24A784C04(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_24A6A2D48(a3, a4);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      sub_24A78629C();
      v15 = v23;
      goto LABEL_8;
    }

    sub_24A781610(v20, a5 & 1);
    v24 = *v7;
    v15 = sub_24A6A2D48(a3, a4);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      sub_24A82DC44();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * v15;
    v28 = *(v27 + 8);
    *v27 = a1 & 1;
    *(v27 + 1) = BYTE1(a1) & 1;
    *(v27 + 2) = BYTE2(a1) & 1;
    *(v27 + 3) = HIBYTE(a1);
    *(v27 + 8) = a2;
    *(v27 + 16) = a6;
  }

  else
  {
    sub_24A7858B0(v15, a3, a4, a1 & 0xFF010101, a2, v26, a6);
  }
}

uint64_t sub_24A784D98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A6A2D48(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24A786440();
      goto LABEL_7;
    }

    sub_24A781904(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_24A6A2D48(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24A82DC44();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0) - 8) + 72) * v12;

    return sub_24A78B898(a1, v20);
  }

LABEL_13:
  sub_24A785924(v12, a2, a3, a1, v18);
}

uint64_t sub_24A784F1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A6A2D48(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for FMIPMonitoredDevice(0);
      return sub_24A78B650(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for FMIPMonitoredDevice);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24A787468();
    goto LABEL_7;
  }

  sub_24A7833F4(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_24A6A2D48(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_24A82DC44();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24A7859C8(v12, a2, a3, a1, v18);
}

_OWORD *sub_24A785088(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24A77EFD4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24A7876C0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24A78376C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_24A77EFD4(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_24A82DC44();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    sub_24A6876E8(v21);

    return sub_24A6A50DC(a1, v21);
  }

  else
  {

    return sub_24A785A74(v9, a2, a1, v20);
  }
}

uint64_t sub_24A7851B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24A77EDF8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_24A78783C();
      goto LABEL_7;
    }

    sub_24A783AA0(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_24A77EDF8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_24A785ADC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24A82DC44();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_24A785380(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24A77EDF8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_24A787ABC();
    goto LABEL_7;
  }

  sub_24A783E7C(result, a3 & 1);
  v22 = *v4;
  result = sub_24A77EDF8(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_24A82DC44();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_24A785B94(v15, v12, a1 & 1, v21);
}

uint64_t sub_24A785520(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24A77EDF8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_24A787D40(&qword_27EF5E6A0, &unk_24A838CB0);
    goto LABEL_7;
  }

  sub_24A784250(result, a3 & 1, &qword_27EF5E6A0, &unk_24A838CB0);
  v22 = *v4;
  result = sub_24A77EDF8(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_24A82DC44();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_24A785B94(v15, v12, a1, v21);
}

uint64_t sub_24A7856DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24A77EDF8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for FMIPDeviceLostModeMetadata();
      return sub_24A78B650(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for FMIPDeviceLostModeMetadata);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24A787FB0();
    goto LABEL_7;
  }

  sub_24A784610(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_24A77EDF8(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_24A82DC44();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_24A785C4C(v15, v12, a1, v21);
}

unint64_t sub_24A7858B0(unint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = (a6[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a6[7] + 24 * result;
  *v8 = a4 & 1;
  *(v8 + 1) = BYTE1(a4) & 1;
  *(v8 + 2) = BYTE2(a4) & 1;
  *(v8 + 3) = HIBYTE(a4);
  *(v8 + 8) = a5;
  *(v8 + 16) = a7;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_24A785924(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  result = sub_24A78B908(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_24A7859C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for FMIPMonitoredDevice(0);
  result = sub_24A78B7D0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for FMIPMonitoredDevice);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_24A785A74(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_24A6A50DC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_24A785ADC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24A82CAA4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24A785B94(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24A82CAA4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24A785C4C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24A82CAA4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for FMIPDeviceLostModeMetadata();
  result = sub_24A78B7D0(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for FMIPDeviceLostModeMetadata);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_24A785D3C()
{
  v1 = v0;
  v34 = sub_24A82CAA4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E710, &qword_24A838D38);
  v4 = *v0;
  v5 = sub_24A82D954();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = sub_24A6BB350(v24);
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_24A785FBC()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5D038, &qword_24A830E48);
  v2 = *v0;
  v3 = sub_24A82D954();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_24A786140()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5E788, &unk_24A838D90);
  v2 = *v0;
  v3 = sub_24A82D954();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_24A78629C()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5DF38, &qword_24A837158);
  v2 = *v0;
  v3 = sub_24A82D954();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 1);
        v25 = *(v22 + 2);
        v26 = *(v22 + 3);
        v27 = *(v22 + 8);
        v28 = *(v22 + 16);
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 1) = v24;
        *(v30 + 2) = v25;
        *(v30 + 3) = v26;
        *(v30 + 8) = v27;
        *(v30 + 16) = v28;

        result = v27;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_24A786440()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - v4;
  sub_24A6BBA94(&qword_27EF5E6D8, &qword_24A838D00);
  v5 = *v0;
  v6 = sub_24A82D954();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_24A67E964(*(v5 + 56) + v27, v31, &unk_27EF5E150, &unk_24A83CCC0);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_24A78B908(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    v7 = v33;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_24A78669C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_24A6BBA94(a1, a2);
  v4 = *v2;
  v5 = sub_24A82D954();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_24A7867F8()
{
  v1 = v0;
  v2 = type metadata accessor for FMReverseGeocodingRequest();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E6D0, &qword_24A838CF8);
  v6 = *v0;
  v7 = sub_24A82D954();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_24A78B768(*(v6 + 48) + v22, v5, type metadata accessor for FMReverseGeocodingRequest);
        v21 *= 288;
        memcpy(v27, (*(v6 + 56) + v21), 0x120uLL);
        sub_24A78B7D0(v5, *(v8 + 48) + v22, type metadata accessor for FMReverseGeocodingRequest);
        memcpy((*(v8 + 56) + v21), v27, 0x120uLL);
        result = sub_24A76ECE4(v27, &v26);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_24A786A60()
{
  v1 = v0;
  v32 = sub_24A82CAA4();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E688, &unk_24A838C90);
  v4 = *v0;
  v5 = sub_24A82D954();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_24A786CD4()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPItem();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E648, &qword_24A838C50);
  v5 = *v0;
  v6 = sub_24A82D954();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_24A78B768(*(v5 + 56) + v27, v31, type metadata accessor for FMIPItem);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_24A78B7D0(v26, *(v28 + 56) + v27, type metadata accessor for FMIPItem);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_24A786F2C()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDeviceConnectedState(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24A82CAA4();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E640, &unk_24A838C40);
  v7 = *v0;
  v8 = sub_24A82D954();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_24A78B768(*(v7 + 56) + v28, v37, type metadata accessor for FMIPDeviceConnectedState);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_24A78B7D0(v27, *(v29 + 56) + v28, type metadata accessor for FMIPDeviceConnectedState);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_24A787258()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5E7A0, &qword_24A838DB0);
  v2 = *v0;
  v3 = sub_24A82D954();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_24A71FF60(&v43, &v42))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 56);
      v19 = (*(v2 + 48) + 16 * v16);
      v21 = *v19;
      v20 = v19[1];
      v16 *= 208;
      v23 = *(v18 + v16 + 16);
      v22 = *(v18 + v16 + 32);
      v24 = *(v18 + v16 + 64);
      v46 = *(v18 + v16 + 48);
      v47 = v24;
      v25 = *(v18 + v16 + 128);
      v27 = *(v18 + v16 + 80);
      v26 = *(v18 + v16 + 96);
      v50 = *(v18 + v16 + 112);
      v51 = v25;
      v48 = v27;
      v49 = v26;
      v29 = *(v18 + v16 + 160);
      v28 = *(v18 + v16 + 176);
      v30 = *(v18 + v16 + 144);
      *(v54 + 9) = *(v18 + v16 + 185);
      v53 = v29;
      v54[0] = v28;
      v52 = v30;
      v43 = *(v18 + v16);
      v44 = v23;
      v45 = v22;
      v31 = (*(v4 + 48) + v17);
      *v31 = v21;
      v31[1] = v20;
      v32 = (*(v4 + 56) + v16);
      *v32 = v43;
      v33 = v44;
      v34 = v45;
      v35 = v47;
      v32[3] = v46;
      v32[4] = v35;
      v32[1] = v33;
      v32[2] = v34;
      v36 = v48;
      v37 = v49;
      v38 = v51;
      v32[7] = v50;
      v32[8] = v38;
      v32[5] = v36;
      v32[6] = v37;
      v39 = v52;
      v40 = v53;
      v41 = v54[0];
      *(v32 + 185) = *(v54 + 9);
      v32[10] = v40;
      v32[11] = v41;
      v32[9] = v39;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_24A787468()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPMonitoredDevice(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E620, &qword_24A838C08);
  v5 = *v0;
  v6 = sub_24A82D954();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_24A78B768(*(v5 + 56) + v27, v31, type metadata accessor for FMIPMonitoredDevice);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_24A78B7D0(v26, *(v28 + 56) + v27, type metadata accessor for FMIPMonitoredDevice);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_24A7876C0()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5E6B0, &qword_24A838CD0);
  v2 = *v0;
  v3 = sub_24A82D954();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + v17);
        sub_24A67E168(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_24A6A50DC(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_24A78783C()
{
  v1 = v0;
  v34 = sub_24A82CAA4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E698, &qword_24A838CA8);
  v4 = *v0;
  v5 = sub_24A82D954();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_24A787ABC()
{
  v1 = v0;
  v32 = sub_24A82CAA4();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E670, &qword_24A838C78);
  v4 = *v0;
  v5 = sub_24A82D954();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_24A787D40(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_24A82CAA4();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(a1, a2);
  v8 = *v2;
  v9 = sub_24A82D954();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + v24);
        result = (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + v24) = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

char *sub_24A787FB0()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24A82CAA4();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5E680, &qword_24A838C88);
  v7 = *v0;
  v8 = sub_24A82D954();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_24A78B768(*(v7 + 56) + v28, v37, type metadata accessor for FMIPDeviceLostModeMetadata);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_24A78B7D0(v27, *(v29 + 56) + v28, type metadata accessor for FMIPDeviceLostModeMetadata);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

unint64_t sub_24A7882DC()
{
  result = qword_27EF5E530;
  if (!qword_27EF5E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E530);
  }

  return result;
}

unint64_t sub_24A788330()
{
  result = qword_27EF5E538;
  if (!qword_27EF5E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E538);
  }

  return result;
}

unint64_t sub_24A788384()
{
  result = qword_27EF5E558;
  if (!qword_27EF5E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E558);
  }

  return result;
}

void sub_24A7883D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24A7E0224(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_24A788444(v4);
  *a1 = v2;
}

void sub_24A788444(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24A82DB74();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_24A82D2A4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24A7887A4(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24A78853C(0, v2, 1, a1);
  }
}

void sub_24A78853C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = sub_24A82CA34();
  v8 = *(*(v40 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v35 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v41 = *a4;
    v15 = v41 + 24 * a3 - 24;
    v16 = a1 - a3;
LABEL_5:
    v37 = v15;
    v38 = a3;
    v17 = *(v41 + 24 * a3 + 8);
    v36 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *(v15 + 8);
      v20 = v17;
      v21 = v19;
      v22 = [v20 timestamp];
      sub_24A82C9F4();

      v23 = [v21 timestamp];
      v24 = v39;
      sub_24A82C9F4();

      LOBYTE(v23) = sub_24A82C9B4();
      v25 = *v14;
      v26 = v24;
      v27 = v40;
      (*v14)(v26, v40);
      v25(v13, v27);

      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v15 = v37 + 24;
        v16 = v36 - 1;
        if (v38 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v28 = *(v15 + 24);
      v29 = *(v15 + 25);
      v30 = *(v15 + 26);
      v31 = *(v15 + 27);
      v17 = *(v15 + 32);
      v32 = *(v15 + 40);
      *(v15 + 24) = *v15;
      *(v15 + 40) = *(v15 + 16);
      *v15 = v28;
      *(v15 + 1) = v29;
      *(v15 + 2) = v30;
      *(v15 + 3) = v31;
      *(v15 + 8) = v17;
      *(v15 + 16) = v32;
      v15 -= 24;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24A7887A4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = v5;
  v129 = a4;
  v130 = a1;
  v140 = sub_24A82CA34();
  v9 = *(*(v140 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v140);
  v139 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v138 = &v125 - v13;
  v14 = a3[1];
  v131 = a3;
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_90:
    v6 = *v130;
    if (!*v130)
    {
      goto LABEL_129;
    }

    v4 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v120 = v4;
    }

    else
    {
LABEL_123:
      v120 = sub_24A7E016C(v4);
    }

    v141 = v120;
    v4 = *(v120 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v121 = *&v120[16 * v4];
        v122 = v120;
        v123 = *&v120[16 * v4 + 24];
        sub_24A7890B8((*a3 + 24 * v121), (*a3 + 24 * *&v120[16 * v4 + 16]), *a3 + 24 * v123, v6);
        if (v7)
        {
          goto LABEL_101;
        }

        if (v123 < v121)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_24A7E016C(v122);
        }

        if (v4 - 2 >= *(v122 + 2))
        {
          goto LABEL_117;
        }

        v124 = &v122[16 * v4];
        *v124 = v121;
        *(v124 + 1) = v123;
        v141 = v122;
        sub_24A7E00E0(v4 - 1);
        v120 = v141;
        v4 = *(v141 + 2);
        a3 = v131;
        if (v4 <= 1)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_127;
    }

LABEL_101:

    return;
  }

  v15 = 0;
  v137 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 + 1 >= v14)
    {
      v30 = v15 + 1;
      v40 = v129;
    }

    else
    {
      v135 = v14;
      v127 = v16;
      v128 = v7;
      v17 = *a3;
      v18 = *(*a3 + 24 * (v15 + 1) + 8);
      v19 = v15;
      v134 = 24 * v15;
      v20 = v17 + 24 * v15;
      v21 = *(v20 + 8);
      v22 = v18;
      v23 = v21;
      v24 = [v22 timestamp];
      v25 = v138;
      sub_24A82C9F4();

      v26 = [v23 timestamp];
      v27 = v139;
      sub_24A82C9F4();

      LODWORD(v136) = sub_24A82C9B4();
      v4 = *v137;
      v28 = v140;
      (*v137)(v27, v140);
      (v4)(v25, v28);

      v126 = v19;
      v29 = v19 + 2;
      v6 = v20 + 56;
      while (1)
      {
        v30 = v135;
        if (v135 == v29)
        {
          break;
        }

        v31 = *(v6 - 24);
        v32 = *v6;
        v33 = v31;
        v34 = [v32 timestamp];
        v35 = v138;
        sub_24A82C9F4();

        v36 = [v33 timestamp];
        v37 = v139;
        sub_24A82C9F4();

        LODWORD(v36) = sub_24A82C9B4() & 1;
        v38 = v37;
        v39 = v140;
        (v4)(v38, v140);
        (v4)(v35, v39);

        ++v29;
        v6 += 24;
        if ((v136 & 1) != v36)
        {
          v30 = v29 - 1;
          break;
        }
      }

      a3 = v131;
      v16 = v127;
      v7 = v128;
      v40 = v129;
      v15 = v126;
      if (v136)
      {
        if (v30 < v126)
        {
          goto LABEL_120;
        }

        if (v126 < v30)
        {
          v41 = 24 * v30 - 8;
          v42 = v134 + 16;
          v43 = v30;
          v44 = v126;
          do
          {
            if (v44 != --v43)
            {
              v54 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v45 = (v54 + v42);
              v46 = *(v54 + v42 - 16);
              v47 = (v54 + v41);
              v48 = *(v45 - 15);
              v49 = *(v45 - 14);
              v50 = *(v45 - 13);
              v51 = *(v45 - 1);
              v52 = *v45;
              v53 = *v47;
              *(v45 - 1) = *(v47 - 1);
              *v45 = v53;
              *(v47 - 16) = v46;
              *(v47 - 15) = v48;
              *(v47 - 14) = v49;
              *(v47 - 13) = v50;
              *(v47 - 1) = v51;
              *v47 = v52;
            }

            ++v44;
            v41 -= 24;
            v42 += 24;
          }

          while (v44 < v43);
        }
      }
    }

    v55 = a3[1];
    if (v30 < v55)
    {
      if (__OFSUB__(v30, v15))
      {
        goto LABEL_119;
      }

      if (v30 - v15 < v40)
      {
        if (__OFADD__(v15, v40))
        {
          goto LABEL_121;
        }

        if (v15 + v40 >= v55)
        {
          v56 = a3[1];
        }

        else
        {
          v56 = v15 + v40;
        }

        if (v56 < v15)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v30 != v56)
        {
          break;
        }
      }
    }

    v57 = v30;
    if (v30 < v15)
    {
      goto LABEL_118;
    }

LABEL_29:
    v58 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v58;
    }

    else
    {
      v16 = sub_24A78056C(0, *(v58 + 2) + 1, 1, v58);
    }

    v4 = *(v16 + 2);
    v59 = *(v16 + 3);
    v6 = v4 + 1;
    if (v4 >= v59 >> 1)
    {
      v16 = sub_24A78056C((v59 > 1), v4 + 1, 1, v16);
    }

    *(v16 + 2) = v6;
    v60 = &v16[16 * v4];
    *(v60 + 4) = v15;
    *(v60 + 5) = v57;
    v61 = *v130;
    if (!*v130)
    {
      goto LABEL_128;
    }

    v132 = v57;
    if (v4)
    {
      while (1)
      {
        v62 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v63 = *(v16 + 4);
          v64 = *(v16 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_48:
          if (v66)
          {
            goto LABEL_107;
          }

          v79 = &v16[16 * v6];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_110;
          }

          v85 = &v16[16 * v62 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_114;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v6 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v89 = &v16[16 * v6];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_62:
        if (v84)
        {
          goto LABEL_109;
        }

        v92 = &v16[16 * v62];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_112;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_69:
        v4 = v62 - 1;
        if (v62 - 1 >= v6)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v100 = v16;
        v101 = *&v16[16 * v4 + 32];
        v6 = *&v16[16 * v62 + 40];
        sub_24A7890B8((*a3 + 24 * v101), (*a3 + 24 * *&v16[16 * v62 + 32]), *a3 + 24 * v6, v61);
        if (v7)
        {
          goto LABEL_101;
        }

        if (v6 < v101)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_24A7E016C(v100);
        }

        if (v4 >= *(v100 + 2))
        {
          goto LABEL_104;
        }

        v102 = &v100[16 * v4];
        *(v102 + 4) = v101;
        *(v102 + 5) = v6;
        v141 = v100;
        v4 = &v141;
        sub_24A7E00E0(v62);
        v16 = v141;
        v6 = *(v141 + 2);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v16[16 * v6 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_105;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_106;
      }

      v74 = &v16[16 * v6];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_108;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_111;
      }

      if (v78 >= v70)
      {
        v96 = &v16[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_115;
        }

        if (v65 < v99)
        {
          v62 = v6 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v14 = a3[1];
    v15 = v132;
    if (v132 >= v14)
    {
      goto LABEL_90;
    }
  }

  v127 = v16;
  v128 = v7;
  v136 = *a3;
  v103 = v136 + 24 * v30 - 24;
  v126 = v15;
  v4 = v15 - v30;
  v132 = v56;
LABEL_80:
  v134 = v103;
  v135 = v30;
  v104 = *(v136 + 24 * v30 + 8);
  v133 = v4;
  while (1)
  {
    v105 = *(v103 + 8);
    v6 = v104;
    v106 = v105;
    v107 = [v6 timestamp];
    v108 = v138;
    sub_24A82C9F4();

    v109 = [v106 timestamp];
    v110 = v139;
    sub_24A82C9F4();

    LOBYTE(v109) = sub_24A82C9B4();
    v111 = *v137;
    v112 = v110;
    v113 = v140;
    (*v137)(v112, v140);
    v111(v108, v113);

    if ((v109 & 1) == 0)
    {
LABEL_79:
      v30 = v135 + 1;
      v103 = v134 + 24;
      v57 = v132;
      v4 = v133 - 1;
      if (v135 + 1 != v132)
      {
        goto LABEL_80;
      }

      v16 = v127;
      v7 = v128;
      a3 = v131;
      v15 = v126;
      if (v132 < v126)
      {
        goto LABEL_118;
      }

      goto LABEL_29;
    }

    if (!v136)
    {
      break;
    }

    v114 = *(v103 + 24);
    v115 = *(v103 + 25);
    v116 = *(v103 + 26);
    v117 = *(v103 + 27);
    v104 = *(v103 + 32);
    v118 = *(v103 + 40);
    *(v103 + 24) = *v103;
    *(v103 + 40) = *(v103 + 16);
    *v103 = v114;
    *(v103 + 1) = v115;
    *(v103 + 2) = v116;
    *(v103 + 3) = v117;
    *(v103 + 8) = v104;
    *(v103 + 16) = v118;
    v103 -= 24;
    if (__CFADD__(v4++, 1))
    {
      goto LABEL_79;
    }
  }

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
}

uint64_t sub_24A7890B8(id *a1, id *a2, unint64_t a3, id *a4)
{
  v61 = sub_24A82CA34();
  v8 = *(v61 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v61);
  v60 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = v55 - v12;
  v13 = (a2 - a1) / 24;
  v14 = (a3 - a2) / 24;
  if (v13 >= v14)
  {
    v62 = a1;
    v33 = a2;
    if (a4 != a2 || &a2[3 * v14] <= a4)
    {
      memmove(a4, a2, 24 * v14);
    }

    v15 = &a4[3 * v14];
    if ((a3 - a2) >= 24 && a2 > v62)
    {
      v55[1] = v8 + 8;
      v56 = a4;
      v34 = (v8 + 8);
LABEL_23:
      v35 = a3 - 24;
      v57 = v33;
      do
      {
        v36 = v35;
        v37 = (v35 + 24);
        v38 = *(v33 - 2);
        v39 = v15;
        v40 = *(v15 - 2);
        v58 = v40;
        v41 = v38;
        v42 = [v40 timestamp];
        v43 = v59;
        sub_24A82C9F4();

        v44 = [v41 timestamp];
        v45 = v60;
        sub_24A82C9F4();

        LOBYTE(v44) = sub_24A82C9B4();
        v46 = *v34;
        v47 = v45;
        v48 = v61;
        (*v34)(v47, v61);
        v46(v43, v48);

        if (v44)
        {
          v15 = v39;
          v51 = v57 - 3;
          a3 = v36;
          if (v37 != v57)
          {
            v52 = *v51;
            *(v36 + 16) = *(v57 - 1);
            *v36 = v52;
          }

          a4 = v56;
          if (v39 <= v56 || (v33 = v51, v51 <= v62))
          {
            v33 = v51;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        v49 = v39 - 3;
        if (v37 != v39)
        {
          v50 = *v49;
          *(v36 + 16) = *(v39 - 1);
          *v36 = v50;
        }

        v35 = v36 - 24;
        v15 = v39 - 3;
        a4 = v56;
        v33 = v57;
      }

      while (v49 > v56);
      v15 = v39 - 3;
    }
  }

  else
  {
    if (a4 != a1 || &a1[3 * v13] <= a4)
    {
      memmove(a4, a1, 24 * v13);
    }

    v15 = &a4[3 * v13];
    if (a2 - a1 >= 24 && a2 < a3)
    {
      v16 = a2;
      v57 = a3;
      v58 = v15;
      v17 = (v8 + 8);
      while (1)
      {
        v62 = a1;
        v18 = a4[1];
        v19 = v16[1];
        v20 = v18;
        v21 = [v19 timestamp];
        v22 = v59;
        sub_24A82C9F4();

        v23 = [v20 timestamp];
        v24 = v60;
        sub_24A82C9F4();

        LOBYTE(v23) = sub_24A82C9B4();
        v25 = a4;
        v26 = *v17;
        v27 = v24;
        v28 = v61;
        (*v17)(v27, v61);
        v26(v22, v28);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v29 = v16;
        v30 = v62;
        v31 = v62 == v16;
        v16 += 3;
        a4 = v25;
        v15 = v58;
        if (!v31)
        {
          goto LABEL_13;
        }

LABEL_14:
        a1 = v30 + 3;
        if (a4 >= v15 || v16 >= v57)
        {
          goto LABEL_16;
        }
      }

      v29 = v25;
      a4 = v25 + 3;
      v30 = v62;
      v15 = v58;
      if (v62 == v25)
      {
        goto LABEL_14;
      }

LABEL_13:
      v32 = *v29;
      v30[2] = v29[2];
      *v30 = v32;
      goto LABEL_14;
    }

LABEL_16:
    v33 = a1;
  }

LABEL_34:
  v53 = (v15 - a4) / 24;
  if (v33 != a4 || v33 >= &a4[3 * v53])
  {
    memmove(v33, a4, 24 * v53);
  }

  return 1;
}

void sub_24A789570(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x24C21D5E0](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v7 = *v4;
      v8 = v4[1];
      v9 = v4[2];
      v10 = v4[3];
      v11 = *(v4 + 1);
      v12 = *(v4 + 2);
      sub_24A82DCE4();
      sub_24A82DCE4();
      sub_24A82DCE4();
      v5 = v11;
      sub_24A82D094();

      sub_24A82D5F4();
      if (v12 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v12;
      }

      MEMORY[0x24C21D610](*&v6);

      v4 += 24;
      --v3;
    }

    while (v3);
  }
}

BOOL _s8FMIPCore15FMIPUnknownItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPUnknownItemUTMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v41 - v11);
  v13 = sub_24A6BBA94(&qword_27EF5E768, &qword_24A83F520);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for FMIPUnknownItem();
  if (*(a1 + v17[15]) != *(a2 + v17[15]) || *(a1 + v17[13]) != *(a2 + v17[13]))
  {
    return 0;
  }

  v18 = v17[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = v17;
    if ((*v19 != *v21 || v20 != v22) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = v17;
    if (v22)
    {
      return 0;
    }
  }

  if ((sub_24A82CA74() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v23[16]) != *(a2 + v23[16]))
  {
    return 0;
  }

  if (*(a1 + v23[7]) != *(a2 + v23[7]))
  {
    return 0;
  }

  v24 = v23;
  if ((sub_24A7D8828(*(a1 + v23[8]), *(a2 + v23[8])) & 1) == 0)
  {
    return 0;
  }

  v25 = v23[5];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if (v26 != *v28 || (v29 = v23, v27 != v28[1]))
  {
    v30 = sub_24A82DC04();
    v29 = v23;
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  if (!_s8FMIPCore15FMIPProductTypeO2eeoiySbAC_ACtFZ_0(a1 + v29[9], a2 + v29[9]))
  {
    return 0;
  }

  if (*(a1 + v23[10]) != *(a2 + v23[10]))
  {
    return 0;
  }

  v31 = v23;
  if (*(a1 + v23[14]) != *(a2 + v23[14]))
  {
    return 0;
  }

  v32 = v23[12];
  v33 = *(a2 + v32);
  if (*(a1 + v32))
  {
    if (!v33)
    {
      return 0;
    }

    v43 = *(a1 + v32);
    v44 = sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
    v42 = v33;
    v43 = v43;
    v34 = sub_24A82D5E4();

    v31 = v24;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v35 = v31[11];
  v36 = *(v13 + 48);
  sub_24A67E964(a1 + v35, v16, &qword_27EF5E520, &qword_24A8384B0);
  v44 = v36;
  sub_24A67E964(a2 + v35, &v16[v36], &qword_27EF5E520, &qword_24A8384B0);
  v37 = *(v5 + 48);
  if (v37(v16, 1, v4) != 1)
  {
    sub_24A67E964(v16, v12, &qword_27EF5E520, &qword_24A8384B0);
    v38 = v44;
    if (v37(&v16[v44], 1, v4) != 1)
    {
      sub_24A78B7D0(&v16[v38], v8, type metadata accessor for FMIPUnknownItemUTMetadata);
      v39 = _s8FMIPCore25FMIPUnknownItemUTMetadataV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_24A78B838(v8, type metadata accessor for FMIPUnknownItemUTMetadata);
      sub_24A78B838(v12, type metadata accessor for FMIPUnknownItemUTMetadata);
      sub_24A67F378(v16, &qword_27EF5E520, &qword_24A8384B0);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_32;
    }

    sub_24A78B838(v12, type metadata accessor for FMIPUnknownItemUTMetadata);
LABEL_30:
    sub_24A67F378(v16, &qword_27EF5E768, &qword_24A83F520);
    return 0;
  }

  if (v37(&v16[v44], 1, v4) != 1)
  {
    goto LABEL_30;
  }

  sub_24A67F378(v16, &qword_27EF5E520, &qword_24A8384B0);
LABEL_32:
  if (*(a1 + v24[17]) == *(a2 + v24[17]) && *(a1 + v24[18]) == *(a2 + v24[18]))
  {
    return *(a1 + v24[19]) == *(a2 + v24[19]);
  }

  return 0;
}

unint64_t sub_24A789DD4(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E718, &qword_24A838D40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_24A6BBA94(&qword_27EF5E710, &qword_24A838D38);
    v8 = sub_24A82D974();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24A67E964(v10, v6, &qword_27EF5E718, &qword_24A838D40);
      result = sub_24A77EDF8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24A82CAA4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A789FBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5D038, &qword_24A830E48);
    v3 = sub_24A82D974();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24A6A2D48(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A78A0C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5E778, &qword_24A838D80);
    v3 = sub_24A82D974();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      result = sub_24A77EF00(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A78A1B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5E788, &unk_24A838D90);
    v3 = sub_24A82D974();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_24A77EF00(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A78A2A4()
{
  result = qword_27EF5E578;
  if (!qword_27EF5E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E578);
  }

  return result;
}

uint64_t sub_24A78A2F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(&qword_27EF5E540, &unk_24A8384C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A78A370()
{
  result = qword_27EF5E590;
  if (!qword_27EF5E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E590);
  }

  return result;
}

unint64_t sub_24A78A3C4()
{
  result = qword_27EF5E598;
  if (!qword_27EF5E598)
  {
    sub_24A6CCDC0(&qword_27EF5E520, &qword_24A8384B0);
    sub_24A67F050(&qword_27EF5E5A0, type metadata accessor for FMIPUnknownItemUTMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E598);
  }

  return result;
}

unint64_t sub_24A78A47C()
{
  result = qword_27EF5E5A8;
  if (!qword_27EF5E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E5A8);
  }

  return result;
}

unint64_t sub_24A78A4D4()
{
  result = qword_27EF5E5B0;
  if (!qword_27EF5E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E5B0);
  }

  return result;
}

unint64_t sub_24A78A528()
{
  result = qword_27EF5E5B8;
  if (!qword_27EF5E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E5B8);
  }

  return result;
}

unint64_t sub_24A78A580()
{
  result = qword_27EF5E5C0;
  if (!qword_27EF5E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E5C0);
  }

  return result;
}

unint64_t sub_24A78A5D8()
{
  result = qword_27EF5E5C8;
  if (!qword_27EF5E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E5C8);
  }

  return result;
}

unint64_t sub_24A78A630()
{
  result = qword_27EF5E5D0;
  if (!qword_27EF5E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E5D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPUnknownItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPUnknownItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A78A878()
{
  result = qword_27EF5E608;
  if (!qword_27EF5E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E608);
  }

  return result;
}

unint64_t sub_24A78A8D0()
{
  result = qword_27EF5E610;
  if (!qword_27EF5E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E610);
  }

  return result;
}

unint64_t sub_24A78A928()
{
  result = qword_27EF5E618;
  if (!qword_27EF5E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E618);
  }

  return result;
}

unint64_t sub_24A78A97C(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E6F8, &qword_24A838D20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_24A6BBA94(&qword_27EF5E698, &qword_24A838CA8);
    v8 = sub_24A82D974();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24A67E964(v10, v6, &qword_27EF5E6F8, &qword_24A838D20);
      result = sub_24A77EDF8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24A82CAA4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A78AB88(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E6E8, &qword_24A838D10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_24A6BBA94(&qword_27EF5E670, &qword_24A838C78);
    v8 = sub_24A82D974();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24A67E964(v10, v6, &qword_27EF5E6E8, &qword_24A838D10);
      result = sub_24A77EDF8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24A82CAA4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A78AD70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5E638, &qword_24A838C28);
    v3 = sub_24A82D974();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A67E964(v4, &v11, &unk_27EF5E190, &unk_24A838C30);
      v5 = v11;
      result = sub_24A77EF00(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24A6A50DC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A78AE98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5E6B0, &qword_24A838CD0);
    v3 = sub_24A82D974();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A67E964(v4, v10, &qword_27EF5E6B8, &qword_24A838CD8);
      result = sub_24A77EFD4(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_24A6A50DC(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A78AFB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5E740, &qword_24A838D58);
    v3 = sub_24A82D974();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_24A77F0D4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_24A78B0B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_24A6BBA94(&qword_27EF5E6A8, &unk_24A838CC0);
  v3 = sub_24A82D974();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_24A77F188(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_24A77F188(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24A78B1C0(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E798, &qword_24A838DA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_24A6BBA94(&qword_27EF5E680, &qword_24A838C88);
    v8 = sub_24A82D974();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24A67E964(v10, v6, &qword_27EF5E798, &qword_24A838DA8);
      result = sub_24A77EDF8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24A82CAA4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for FMIPDeviceLostModeMetadata();
      result = sub_24A78B7D0(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for FMIPDeviceLostModeMetadata);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A78B400(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_24A6BBA94(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_24A6BBA94(a4, a5);
    v15 = sub_24A82D974();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_24A67E964(v17, v13, a2, v28);
      result = sub_24A77EDF8(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_24A82CAA4();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + v21) = v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24A78B604()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A78B650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A78B768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A78B7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A78B838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A78B898(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A78B908(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A78B978()
{
  result = qword_27EF5E720;
  if (!qword_27EF5E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E720);
  }

  return result;
}

unint64_t sub_24A78B9CC()
{
  result = qword_27EF5E728;
  if (!qword_27EF5E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E728);
  }

  return result;
}

void FMIPLocation.init(safeLocation:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 location];
  v5 = [a1 location];
  v6 = [v5 floor];

  if (v6)
  {
    v7 = [v6 level];

    v8 = v7;
  }

  else
  {
    v8 = -1.0;
  }

  v27 = 1;
  v26 = 0;
  v25 = 1;
  if (qword_27EF5CBF8 != -1)
  {
    swift_once();
  }

  v9 = qword_27EF5E7B8;
  if (qword_27EF5E7B8)
  {
    v10 = qword_27EF5E7B8;
  }

  else
  {
    v10 = v4;
    v9 = 0;
  }

  LODWORD(v24[0]) = 67174401;
  v24[1] = v10;
  *&v24[2] = v8;
  v11 = v9;
  v12 = FMIPLocation.debugDescription.getter();
  v14 = v13;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_281518F88);

  v16 = sub_24A82CD94();
  v17 = sub_24A82D4C4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136380675;
    v20 = sub_24A68761C(v12, v14, v24);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_24A675000, v16, v17, "FMIPLocation: initialized %{private}s", v18, 0xCu);
    sub_24A6876E8(v19);
    MEMORY[0x24C21E1D0](v19, -1, -1);
    MEMORY[0x24C21E1D0](v18, -1, -1);

    v21 = v27;
    v22 = v26;
    v23 = v25;
  }

  else
  {

    v22 = 0;
    v23 = 1;
    v21 = 1;
  }

  *a2 = v21;
  *(a2 + 1) = v22;
  *(a2 + 2) = v23;
  *(a2 + 3) = 4;
  *(a2 + 8) = v10;
  *(a2 + 16) = v8;
}

void FMIPLocation.init(location:shiftedLocation:)(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v23 = *(a1 + 1);
  v8 = *(a1 + 2);
  v27 = *a1;
  v26 = v5;
  v25 = v6;
  if (qword_27EF5CBF8 != -1)
  {
    v21 = a2;
    swift_once();
    a2 = v21;
  }

  v9 = qword_27EF5E7B8;
  v22 = a2;
  if (qword_27EF5E7B8)
  {
    v10 = qword_27EF5E7B8;
  }

  else
  {
    v10 = a2;
    v9 = 0;
  }

  LOBYTE(v24[0]) = v4;
  BYTE1(v24[0]) = v5;
  BYTE2(v24[0]) = v6;
  BYTE3(v24[0]) = v7;
  v24[1] = v10;
  v24[2] = v8;
  v11 = v9;
  v12 = FMIPLocation.debugDescription.getter();
  v14 = v13;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_281518F88);

  v16 = sub_24A82CD94();
  v17 = sub_24A82D4C4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136380675;
    v20 = sub_24A68761C(v12, v14, v24);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_24A675000, v16, v17, "FMIPLocation: initialized %{private}s", v18, 0xCu);
    sub_24A6876E8(v19);
    MEMORY[0x24C21E1D0](v19, -1, -1);
    MEMORY[0x24C21E1D0](v18, -1, -1);

    v4 = v27;
    v5 = v26;
    v6 = v25;
  }

  else
  {
  }

  *a3 = v4;
  *(a3 + 1) = v5;
  *(a3 + 2) = v6;
  *(a3 + 3) = v7;
  *(a3 + 8) = v10;
  *(a3 + 16) = v8;
}

void FMIPLocation.init(beaconLocation:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A82CA34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 latitude];
  v10 = v9;
  [a1 longitude];
  v12 = v11;
  [a1 horizontalAccuracy];
  v14 = v13;
  v15 = [a1 timestamp];
  sub_24A82C9F4();

  v20 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v16 = sub_24A82C994();
  v17 = [v20 initWithCoordinate:v16 altitude:v10 horizontalAccuracy:v12 verticalAccuracy:-1.0 course:v14 speed:-1.0 timestamp:{-1.0, -1.0}];

  v18 = *(v5 + 8);
  v18(v8, v4);
  v19 = [a1 source];
  sub_24A78CB20(&v44);

  LODWORD(v20) = v44;
  v21 = [a1 timestamp];
  sub_24A82C9F4();

  sub_24A82C9C4();
  v23 = v22;
  v18(v8, v4);
  v43 = v23 < -3600.0;
  v42 = 0;
  v41 = 1;
  if (qword_27EF5CBF8 != -1)
  {
    swift_once();
  }

  v24 = qword_27EF5E7B8;
  if (qword_27EF5E7B8)
  {
    v25 = qword_27EF5E7B8;
  }

  else
  {
    v25 = v17;
    v24 = 0;
  }

  LOBYTE(v40[0]) = v23 < -3600.0;
  *(v40 + 1) = 256;
  BYTE3(v40[0]) = v20;
  v40[1] = v25;
  v40[2] = 0xBFF0000000000000;
  v26 = v24;
  v27 = FMIPLocation.debugDescription.getter();
  v29 = v28;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v30 = sub_24A82CDC4();
  sub_24A6797D0(v30, qword_281518F88);

  v31 = sub_24A82CD94();
  v32 = sub_24A82D4C4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    HIDWORD(v39) = v20;
    v20 = v17;
    v35 = v34;
    v40[0] = v34;
    *v33 = 136380675;
    v36 = sub_24A68761C(v27, v29, v40);

    *(v33 + 4) = v36;
    _os_log_impl(&dword_24A675000, v31, v32, "FMIPLocation: initialized %{private}s", v33, 0xCu);
    sub_24A6876E8(v35);
    MEMORY[0x24C21E1D0](v35, -1, -1);
    MEMORY[0x24C21E1D0](v33, -1, -1);

    LOBYTE(v20) = BYTE4(v39);
  }

  else
  {
  }

  v37 = v42;
  v38 = v41;
  *a2 = v43;
  *(a2 + 1) = v37;
  *(a2 + 2) = v38;
  *(a2 + 3) = v20;
  *(a2 + 8) = v25;
  *(a2 + 16) = 0xBFF0000000000000;
}

FMIPCore::FMIPLocationType_optional __swiftcall FMIPLocationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82DC24();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24A78C490(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = FMIPLocationType.rawValue.getter();
  v4 = v3;
  if (v2 == FMIPLocationType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24A82DC04();
  }

  return v7 & 1;
}

uint64_t sub_24A78C52C()
{
  v1 = *v0;
  sub_24A82DCC4();
  FMIPLocationType.rawValue.getter();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A78C594()
{
  v2 = *v0;
  FMIPLocationType.rawValue.getter();
  sub_24A82D094();
}

uint64_t sub_24A78C5F8()
{
  v1 = *v0;
  sub_24A82DCC4();
  FMIPLocationType.rawValue.getter();
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A78C668@<X0>(unint64_t *a1@<X8>)
{
  result = FMIPLocationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24A78C6C0(unsigned __int8 a1)
{
  v1 = 0x656475746974616CLL;
  if (a1 > 5u)
  {
    v7 = 0x6E6F697469736F70;
    v8 = 0x6D617453656D6974;
    if (a1 != 10)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x6E6F697461636F6CLL;
    if (a1 != 7)
    {
      v9 = 0x64757469676E6F6CLL;
    }

    if (a1 != 6)
    {
      v1 = v9;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6564757469746C61;
    v3 = 0x756363616E497369;
    v4 = 0x646C4F7369;
    if (a1 == 4)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000012;
    if (a1 == 1)
    {
      v5 = 0x76654C726F6F6C66;
    }

    if (a1)
    {
      v2 = v5;
    }

    if (a1 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24A78C85C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24A78C6C0(*a1);
  v5 = v4;
  if (v3 == sub_24A78C6C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A78C8E4()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A78C6C0(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A78C948()
{
  sub_24A78C6C0(*v0);
  sub_24A82D094();
}

uint64_t sub_24A78C99C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A78C6C0(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A78C9FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A78E4A0();
  *a2 = result;
  return result;
}

uint64_t sub_24A78CA2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A78C6C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A78CA74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A78E4A0();
  *a1 = result;
  return result;
}

uint64_t sub_24A78CAA8(uint64_t a1)
{
  v2 = sub_24A688018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A78CAE4(uint64_t a1)
{
  v2 = sub_24A688018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A78CB20@<X0>(char *a1@<X8>)
{
  v2 = *MEMORY[0x277D49768];
  v3 = sub_24A82CFC4();
  v5 = v4;
  if (v3 == sub_24A82CFC4() && v5 == v6)
  {
    v10 = 7;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_24A82DC04();

  if (v8)
  {
    v10 = 7;
    goto LABEL_9;
  }

  v11 = *MEMORY[0x277D49700];
  v12 = sub_24A82CFC4();
  v14 = v13;
  if (v12 == sub_24A82CFC4() && v14 == v15)
  {
    v10 = 8;
    goto LABEL_8;
  }

  v17 = sub_24A82DC04();

  if (v17)
  {
    v10 = 8;
    goto LABEL_9;
  }

  v18 = *MEMORY[0x277D49708];
  v19 = sub_24A82CFC4();
  v21 = v20;
  if (v19 == sub_24A82CFC4() && v21 == v22)
  {
    v10 = 9;
    goto LABEL_8;
  }

  v23 = sub_24A82DC04();

  if (v23)
  {
    v10 = 9;
    goto LABEL_9;
  }

  v24 = *MEMORY[0x277D49728];
  v25 = sub_24A82CFC4();
  v27 = v26;
  if (v25 == sub_24A82CFC4() && v27 == v28)
  {
    v10 = 10;
    goto LABEL_8;
  }

  v29 = sub_24A82DC04();

  if (v29)
  {
    v10 = 10;
    goto LABEL_9;
  }

  v30 = *MEMORY[0x277D49738];
  v31 = sub_24A82CFC4();
  v33 = v32;
  if (v31 == sub_24A82CFC4() && v33 == v34)
  {
    v10 = 11;
    goto LABEL_8;
  }

  v35 = sub_24A82DC04();

  if (v35)
  {
    v10 = 11;
    goto LABEL_9;
  }

  v36 = *MEMORY[0x277D49740];
  v37 = sub_24A82CFC4();
  v39 = v38;
  if (v37 == sub_24A82CFC4() && v39 == v40)
  {
    v10 = 12;
    goto LABEL_8;
  }

  v41 = sub_24A82DC04();

  if (v41)
  {
    v10 = 12;
    goto LABEL_9;
  }

  v42 = *MEMORY[0x277D49770];
  v43 = sub_24A82CFC4();
  v45 = v44;
  if (v43 == sub_24A82CFC4() && v45 == v46)
  {
    v10 = 14;
    goto LABEL_8;
  }

  v47 = sub_24A82DC04();

  if (v47)
  {
    v10 = 14;
    goto LABEL_9;
  }

  v48 = *MEMORY[0x277D49730];
  v49 = sub_24A82CFC4();
  v51 = v50;
  if (v49 == sub_24A82CFC4() && v51 == v52)
  {
    v10 = 1;
    goto LABEL_8;
  }

  v53 = sub_24A82DC04();

  if (v53)
  {
    v10 = 1;
    goto LABEL_9;
  }

  v54 = *MEMORY[0x277D49758];
  v55 = sub_24A82CFC4();
  v57 = v56;
  if (v55 == sub_24A82CFC4() && v57 == v58)
  {
    v10 = 15;
    goto LABEL_8;
  }

  v59 = sub_24A82DC04();

  if (v59)
  {
    v10 = 15;
    goto LABEL_9;
  }

  v60 = *MEMORY[0x277D49748];
  v61 = sub_24A82CFC4();
  v63 = v62;
  if (v61 == sub_24A82CFC4() && v63 == v64)
  {
    v10 = 18;
    goto LABEL_8;
  }

  v65 = sub_24A82DC04();

  if (v65)
  {
    v10 = 18;
    goto LABEL_9;
  }

  v66 = *MEMORY[0x277D49750];
  v67 = sub_24A82CFC4();
  v69 = v68;
  if (v67 == sub_24A82CFC4() && v69 == v70)
  {
    v10 = 17;
    goto LABEL_8;
  }

  v71 = sub_24A82DC04();

  if (v71)
  {
    v10 = 17;
    goto LABEL_9;
  }

  v72 = *MEMORY[0x277D49760];
  v73 = sub_24A82CFC4();
  v75 = v74;
  if (v73 == sub_24A82CFC4() && v75 == v76)
  {
    v10 = 19;
    goto LABEL_8;
  }

  v77 = sub_24A82DC04();

  if (v77)
  {
    v10 = 19;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  *a1 = v10;
  return result;
}

void FMIPLocation.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5E7D0, &unk_24A838E38);
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v17 = v1[2];
  v18 = v9;
  v16 = v1[3];
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v12 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A688018();
  sub_24A82DD84();
  v13 = [v10 timestamp];
  if (v13)
  {
    v14 = v13;
    v31 = 5;
    sub_24A82DB14();
    if (!v2)
    {
      v30 = 3;
      sub_24A82DB14();
      v29 = 4;
      sub_24A82DB14();
      v28 = v16;
      FMIPLocationType.rawValue.getter();
      v27 = 9;
      sub_24A82DB04();

      v26 = 1;
      sub_24A82DB24();
      [v10 altitude];
      v25 = 0;
      sub_24A82DB24();
      [v10 coordinate];
      v24 = 6;
      sub_24A82DB24();
      [v10 coordinate];
      v23 = 8;
      sub_24A82DB24();
      [v10 horizontalAccuracy];
      v22 = 2;
      sub_24A82DB24();
      [v10 verticalAccuracy];
      v21 = 11;
      sub_24A82DB24();
      [v14 fm_epoch];
      v20 = 10;
      sub_24A82DB54();
    }

    (*(v19 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t FMIPLocation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  sub_24A82DCE4();
  sub_24A82DCE4();
  sub_24A82DCE4();
  FMIPLocationType.rawValue.getter();
  sub_24A82D094();

  sub_24A82D5F4();
  v7 = 0.0;
  if (v6 != 0.0)
  {
    v7 = v6;
  }

  return MEMORY[0x24C21D610](*&v7);
}

uint64_t FMIPLocation.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 1);
  v7 = *(v0 + 2);
  sub_24A82DCC4();
  FMIPLocation.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A78D5F4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 1);
  v7 = *(v0 + 2);
  sub_24A82DCC4();
  FMIPLocation.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A78D66C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 1);
  v7 = *(v0 + 2);
  sub_24A82DCC4();
  FMIPLocation.hash(into:)();
  return sub_24A82DD24();
}

uint64_t CLLocation.isEqual(_:)(uint64_t a1)
{
  v3 = sub_24A82CA34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  sub_24A718050(a1, v37);
  if (!v38)
  {
    sub_24A6F6C40(v37);
    goto LABEL_12;
  }

  sub_24A679170(0, &qword_27EF5D830, 0x277CE41F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v32 = 0;
    return v32 & 1;
  }

  v11 = v36;
  [v36 coordinate];
  v13 = v12;
  [v1 coordinate];
  if (v13 != v14)
  {
    goto LABEL_11;
  }

  [v11 coordinate];
  v16 = v15;
  [v1 coordinate];
  if (v16 != v17)
  {
    goto LABEL_11;
  }

  [v11 altitude];
  v19 = v18;
  [v1 altitude];
  if (v19 != v20)
  {
    goto LABEL_11;
  }

  [v11 course];
  v22 = v21;
  [v1 course];
  if (v22 != v23 || ([v11 horizontalAccuracy], v25 = v24, objc_msgSend(v1, sel_horizontalAccuracy), v25 != v26) || (objc_msgSend(v11, sel_verticalAccuracy), v28 = v27, objc_msgSend(v1, sel_verticalAccuracy), v28 != v29))
  {
LABEL_11:

    goto LABEL_12;
  }

  v30 = [v11 timestamp];
  sub_24A82C9F4();

  v31 = [v1 timestamp];
  sub_24A82C9F4();

  v32 = sub_24A82C9E4();
  v33 = *(v4 + 8);
  v33(v8, v3);
  v33(v10, v3);
  return v32 & 1;
}

uint64_t sub_24A78D9A8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_24A82D694();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = CLLocation.isEqual(_:)(v8);

  sub_24A6F6C40(v8);
  return v6 & 1;
}

uint64_t sub_24A78DA20(void *a1)
{
  v1 = a1;
  v2 = CLLocation.hash.getter();

  return v2;
}

uint64_t CLLocation.hash.getter()
{
  v1 = sub_24A82CA34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82DD34();
  [v0 coordinate];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x24C21D610](*&v6);
  [v0 coordinate];
  if (v7 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  MEMORY[0x24C21D610](*&v8);
  [v0 altitude];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x24C21D610](*&v9);
  [v0 course];
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x24C21D610](*&v10);
  [v0 horizontalAccuracy];
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x24C21D610](*&v11);
  [v0 verticalAccuracy];
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x24C21D610](*&v12);
  v13 = [v0 timestamp];
  sub_24A82C9F4();

  sub_24A82CA14();
  (*(v2 + 8))(v5, v1);
  return sub_24A82DD14();
}

uint64_t sub_24A78DC2C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_24A78DC78@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_24A82D1A4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_24A78006C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_24A78006C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_24A82D184();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_24A82D0B4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_24A82D0B4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_24A82D1A4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_24A78006C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_24A82D1A4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_24A78006C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_24A78006C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_24A82D0B4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A78E060(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_24A68761C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **sub_24A78E0BC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
  v14 = 0;
  if ((sub_24A82D5E4() & 1) != 0 && v7 == v13 && ((v2 ^ v8) & 1) == 0 && ((v3 ^ v9) & 1) == 0 && ((v4 ^ v10) & 1) == 0)
  {
    v15 = FMIPLocationType.rawValue.getter();
    v17 = v16;
    if (v15 == FMIPLocationType.rawValue.getter() && v17 == v18)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_24A82DC04();
    }
  }

  return v14 & 1;
}

unint64_t sub_24A78E20C()
{
  result = qword_27EF5E7D8;
  if (!qword_27EF5E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E7D8);
  }

  return result;
}

unint64_t sub_24A78E264()
{
  result = qword_27EF5E7E0;
  if (!qword_27EF5E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E7E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPLocationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPLocationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A78E408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A78E44C()
{
  result = qword_27EF5E7E8;
  if (!qword_27EF5E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E7E8);
  }

  return result;
}

uint64_t sub_24A78E4A0()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

void sub_24A78E504(void *a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);

  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v2 + 24);

    _os_log_impl(&dword_24A675000, v5, v6, "FMIPGarbageCollector: scheduleAccountVerification alreadyPending?: %{BOOL}d", v7, 8u);
    MEMORY[0x24C21E1D0](v7, -1, -1);

    if (*(v2 + 24))
    {
      return;
    }
  }

  else
  {

    if (*(v2 + 24))
    {
      return;
    }
  }

  if (*(v2 + 40))
  {
    v8 = [a1 userInfo];
    if (v8)
    {
      v9 = v8;
      v10 = sub_24A82CEF4();

      v11 = *MEMORY[0x277CB8A60];
      v17 = sub_24A82CFC4();
      v18 = v12;
      sub_24A82D7D4();
      if (*(v10 + 16) && (v13 = sub_24A77EF90(v19), (v14 & 1) != 0))
      {
        sub_24A67E168(*(v10 + 56) + 32 * v13, v20);
        sub_24A78B714(v19);

        if (swift_dynamicCast())
        {
          v15 = *(v2 + 40);
          if (!v15)
          {

            return;
          }

          if (v17 == *(v2 + 32) && v15 == v18)
          {

LABEL_23:
            sub_24A78E7F4();
            return;
          }

          v16 = sub_24A82DC04();

          if (v16)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {

        sub_24A78B714(v19);
      }
    }
  }

  else
  {

    sub_24A78E7F4();
  }
}

uint64_t sub_24A78E7F4()
{
  v1 = v0;
  v2 = sub_24A82CDF4();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_24A82CE54();
  v38 = *(v40 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24A82CE74();
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = sub_24A82CE04();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_281518F88);
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v1;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24A675000, v20, v21, "FMIPGarbageCollector: Dispatching verification on background", v23, 2u);
    v24 = v23;
    v1 = v22;
    MEMORY[0x24C21E1D0](v24, -1, -1);
  }

  sub_24A67B054();
  (*(v15 + 104))(v18, *MEMORY[0x277D851A8], v14);
  v35 = sub_24A82D5A4();
  (*(v15 + 8))(v18, v14);
  sub_24A82CE64();
  v25 = v13;
  sub_24A82CE94();
  v26 = *(v7 + 8);
  v27 = v36;
  v26(v11, v36);
  aBlock[4] = sub_24A78F164;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC8488;
  v28 = _Block_copy(aBlock);

  v29 = v37;
  sub_24A82CE24();
  v43 = MEMORY[0x277D84F90];
  sub_24A6FA9B0();
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  v30 = v39;
  v31 = v42;
  sub_24A82D6B4();
  v32 = v35;
  MEMORY[0x24C21CE50](v25, v29, v30, v28);
  _Block_release(v28);

  (*(v41 + 8))(v30, v31);
  (*(v38 + 8))(v29, v40);
  v26(v25, v27);
}

void sub_24A78ECE8(uint64_t a1)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPGarbageCollector: Async verifying account", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  sub_24A67A288();
  *(a1 + 24) = 0;
}

void sub_24A78EDD0()
{
  v28[3] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() defaultManager];
  v26 = *(v0 + 64);
  v27 = v1;
  v25 = *(v26 + 16);
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (i >= *(v26 + 16))
      {
        goto LABEL_25;
      }

      v3 = v26 + 32 + 16 * i;
      v5 = *v3;
      v4 = *(v3 + 8);

      v6 = sub_24A82CF94();
      v28[0] = 0;
      v7 = [v27 contentsOfDirectoryAtPath:v6 error:v28];

      v8 = v28[0];
      if (!v7)
      {
        v18 = v28[0];
        goto LABEL_15;
      }

      v9 = sub_24A82D244();
      v10 = v8;

      v11 = *(v9 + 16);
      if (!v11)
      {
LABEL_3:

        continue;
      }

      v12 = 0;
      v13 = (v9 + 40);
      while (1)
      {
        if (v12 >= *(v9 + 16))
        {
          __break(1u);
LABEL_25:
          __break(1u);
        }

        v15 = *(v13 - 1);
        v14 = *v13;
        v28[0] = v5;
        v28[1] = v4;

        MEMORY[0x24C21C9E0](v15, v14);

        v16 = sub_24A82CF94();

        v28[0] = 0;
        LODWORD(v14) = [v27 removeItemAtPath:v16 error:v28];

        if (!v14)
        {
          break;
        }

        ++v12;
        v17 = v28[0];
        v13 += 2;
        if (v11 == v12)
        {
          goto LABEL_3;
        }
      }

      v18 = v28[0];

LABEL_15:

      v19 = sub_24A82C7F4();

      swift_willThrow();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v20 = sub_24A82CDC4();
      sub_24A6797D0(v20, qword_281518F88);
      v21 = sub_24A82CD94();
      v22 = sub_24A82D4E4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_24A675000, v21, v22, "FMIPGarbageCollector: Error deleting file", v23, 2u);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A74F510();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A78F114()
{
  v1 = *(v0 + 40);

  sub_24A6BAF88(v0 + 48);
  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

char sub_24A78F16C@<W0>(_BYTE *a1@<X8>)
{
  v3 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13 - v6;
  v8 = *(v1 + 56);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = type metadata accessor for FMIPDevice();
    sub_24A78F6B4(v8 + *(v10 + 112) + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v7);
    v11 = type metadata accessor for FMIPPlaySoundMetadata();
    if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
    {
      result = sub_24A78F724(v7);
LABEL_5:
      LOBYTE(v9) = 0;
      goto LABEL_8;
    }

    v12 = *v7;
    sub_24A78F78C(v7);
    result = FMIPActionStatus.init(rawValue:)(qword_24A839288[v12]).value;
    LOBYTE(v9) = v14;
    if (v14 == 18)
    {
      LOBYTE(v9) = 0;
    }
  }

LABEL_8:
  *a1 = v9;
  return result;
}

uint64_t sub_24A78F314(uint64_t *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28[-1] - v5;
  sub_24A698230(a1, v28);
  v7 = sub_24A6F5EE8(v28);
  v8 = v7;
  if (!v1)
  {
    v9 = *(v7 + 56);
    if (v9 && *(v9 + 16))
    {
      v10 = type metadata accessor for FMIPDevice();
      sub_24A78F6B4(v9 + *(v10 + 112) + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v6);
      v11 = type metadata accessor for FMIPPlaySoundMetadata();
      v12 = (*(*(v11 - 8) + 48))(v6, 1, v11);

      if (v12 == 1)
      {
        v13 = 7104878;
        sub_24A78F724(v6);
        v14 = 0xE300000000000000;
      }

      else
      {
        v13 = FMIPPlaySoundMetadata.debugDescription.getter();
        v14 = v15;
        sub_24A78F78C(v6);
      }
    }

    else
    {
      v13 = 7104878;

      v14 = 0xE300000000000000;
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v16 = sub_24A82CDC4();
    sub_24A6797D0(v16, qword_281518F88);

    v17 = sub_24A82CD94();
    v18 = sub_24A82D504();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28[0] = v27;
      *v19 = 134218498;
      sub_24A78F16C(&v29);
      *(v19 + 4) = qword_24A839288[v29];

      *(v19 + 12) = 2080;
      v20 = sub_24A68761C(v13, v14, v28);

      *(v19 + 14) = v20;
      *(v19 + 22) = 2080;
      v21 = sub_24A6F6244();
      v23 = v22;

      v24 = sub_24A68761C(v21, v23, v28);

      *(v19 + 24) = v24;
      _os_log_impl(&dword_24A675000, v17, v18, "FMIPPlaySoundResponse: initialized with coder status %ld metadata: %s - %s", v19, 0x20u);
      v25 = v27;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v19, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v8;
}

uint64_t sub_24A78F6B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A78F724(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A78F78C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPPlaySoundMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_24A78F7E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A82C604();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  sub_24A82C594();
  sub_24A82C5D4();
  v10 = sub_24A78FD0C(a1, a2, v8);
  v12 = v11;

  (*(v5 + 8))(v8, v4);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    return 1;
  }

  if (v10 != a1 || v12 != a2)
  {
    v15 = sub_24A82DC04();

    return (v15 & 1) == 0;
  }

  return 0;
}

id sub_24A78F9A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_24A82CFC4();
  a4(v5);

  v6 = sub_24A82CF94();

  return v6;
}

id FMPhoneNumberUtil.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMPhoneNumberUtil.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FMPhoneNumberUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A78FD0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v30 = a3;
  v6 = sub_24A82C604();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = 0xE000000000000000;
  v11 = HIBYTE(a2) & 0xF;
  v34 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v29 = v11;
  if (v11)
  {
    v12 = 0;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v26[1] = v3;
    v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v13 = (v8 + 16);
    v14 = (v8 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_24A82D844();
        v18 = v17;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v31[0] = v34;
          v31[1] = v28;
          v16 = v31 + v12;
        }

        else
        {
          v15 = v27;
          if ((v34 & 0x1000000000000000) == 0)
          {
            v15 = sub_24A82D8B4();
          }

          v16 = (v15 + v12);
        }

        v19 = *v16;
        if ((*v16 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v21 = (__clz(v19 ^ 0xFF) - 24);
        if (v21 <= 2)
        {
          if (v21 != 1)
          {
            v22 = v16[1] & 0x3F | ((v19 & 0x1F) << 6);
            v18 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v18 = 1;
          goto LABEL_15;
        }

        if (v21 == 3)
        {
          v23 = ((v19 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3Fu;
          v18 = 3;
        }

        else
        {
          v24 = ((v19 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3Fu;
          v18 = 4;
        }
      }

LABEL_15:
      (*v13)(v10, v30, v6);
      v20 = sub_24A82C5E4();
      (*v14)(v10, v6);
      if (v20)
      {
        sub_24A82D074();
      }

      v12 += v18;
      if (v12 >= v29)
      {
        return v32;
      }
    }
  }

  return 0;
}

uint64_t sub_24A78FF90()
{
  result = CPPhoneNumberCopyHomeCountryCode();
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v1 = result;
  v2 = sub_24A82CFC4();
  v4 = v3;

  v5 = v4 & 0x2000000000000000;
  v6 = HIBYTE(v4) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    result = CPPhoneNumberCopyActiveCountryCode();
    if (result)
    {
      v9 = result;

      v2 = sub_24A82CFC4();
      v11 = v10;

      v5 = v11 & 0x2000000000000000;
      v6 = HIBYTE(v11) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_8:
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (!v12)
  {
    result = CPPhoneNumberCopyNetworkCountryCode();
    if (result)
    {
      v13 = result;

      v2 = sub_24A82CFC4();
      v15 = v14;

      v5 = v15 & 0x2000000000000000;
      v6 = HIBYTE(v15) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_14:
  if (v5)
  {
    v16 = v6;
  }

  else
  {
    v16 = v7;
  }

  if (v16)
  {
    goto LABEL_20;
  }

  result = CPPhoneNumberCopyLastKnownNetworkCountryCode();
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v17 = result;

  v2 = sub_24A82CFC4();
  v19 = v18;

  v5 = v19 & 0x2000000000000000;
  v6 = HIBYTE(v19) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
LABEL_20:
  if (v5)
  {
    v20 = v6;
  }

  else
  {
    v20 = v7;
  }

  if (!v20)
  {

    return 29557;
  }

  return v2;
}

uint64_t sub_24A7900CC(uint64_t a1)
{
  sub_24A78FF90();
  v2 = *MEMORY[0x277CBECE8];
  v3 = sub_24A82CF94();
  v4 = sub_24A82CF94();

  v5 = CFPhoneNumberCreate();

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  String = CFPhoneNumberCreateString();
  if (!String)
  {

LABEL_5:

    return a1;
  }

  v8 = String;
  a1 = sub_24A82CFC4();

  return a1;
}

uint64_t sub_24A7901BC(uint64_t a1)
{
  if (qword_27EF5CC30 != -1)
  {
    swift_once();
  }

  v2 = qword_27EF5F5D0;
  v3 = sub_24A82CF94();
  LOBYTE(v2) = [v2 evaluateWithObject_];

  if (v2)
  {
  }

  else
  {
    a1 = sub_24A7900CC(a1);
    v5 = v4;

    v6 = sub_24A82D154();

    if ((v6 & 1) == 0 && sub_24A82D0A4() >= 2)
    {
      MEMORY[0x24C21C9E0](a1, v5);

      return 43;
    }
  }

  return a1;
}

FMIPCore::FMIPPeopleFindingEvent __swiftcall FMIPPeopleFindingEvent.init(hasToken:findButtonAvailable:availabilityLatency:withinNearbyRange:startedDiscovering:)(Swift::Bool hasToken, Swift::Bool findButtonAvailable, Swift::Double availabilityLatency, Swift::Bool withinNearbyRange, Swift::Bool startedDiscovering)
{
  *v5 = hasToken;
  *(v5 + 1) = findButtonAvailable;
  *(v5 + 8) = availabilityLatency;
  *(v5 + 16) = withinNearbyRange;
  *(v5 + 17) = startedDiscovering;
  result.availabilityLatency = availabilityLatency;
  result.withinNearbyRange = findButtonAvailable;
  result.hasToken = hasToken;
  return result;
}

Swift::Void __swiftcall FMIPManager.enqueue(event:)(FMIPCore::FMIPPeopleFindingEvent event)
{
  v1 = **&event.hasToken;
  v2 = *(*&event.hasToken + 1);
  v3 = *(*&event.hasToken + 8);
  v4 = *(*&event.hasToken + 16);
  v5 = *(*&event.hasToken + 17);
  v6 = sub_24A82CF94();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 17) = v2;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 33) = v5;
  v9[4] = sub_24A790828;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A6AEADC;
  v9[3] = &unk_285DC84D8;
  v8 = _Block_copy(v9);

  AnalyticsSendEventLazy();
  _Block_release(v8);
}

void static FMIPAnalytics.sendPeopleFindingEventAnalytics(event:)(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = a1[16];
  v5 = a1[17];
  v6 = sub_24A82CF94();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 17) = v2;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 33) = v5;
  v9[4] = sub_24A790920;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A6AEADC;
  v9[3] = &unk_285DC8528;
  v8 = _Block_copy(v9);

  AnalyticsSendEventLazy();
  _Block_release(v8);
}

unint64_t sub_24A790628(unsigned int a1, unsigned int a2, double a3)
{
  v3 = a2;
  v5 = a1;
  v6 = (a1 >> 8) & 1;
  v7 = (a2 >> 8) & 1;
  v8 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v9, 0x6E656B6F54736168, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v11, 0xD000000000000013, 0x800000024A847BB0, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v13, 0xD000000000000013, 0x800000024A847BD0, v14);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v15, 0xD000000000000011, 0x800000024A847BF0, v16);
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v17, 0xD000000000000012, 0x800000024A847C10, v18);
  return v8;
}

unint64_t sub_24A79082C()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24A790628(v1 | *(v0 + 16), v2 | *(v0 + 32), *(v0 + 24));
}

__n128 initializeBufferWithCopyOfBuffer for FMIPPeopleFindingEvent(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FMIPPeopleFindingEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPPeopleFindingEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24A790928(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

void sub_24A790970(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_24A82D224();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v1 setEnabledTopics_];
}

uint64_t sub_24A7909E0()
{
  v1 = v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_24A790A30(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A790A9C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A738E54;
}

uint64_t sub_24A790B3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_preferencesStore + 8);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_preferencesStore);
  ObjectType = swift_getObjectType();
  v4 = (v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topicAPSToken);
  v5 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topicAPSToken);
  v6 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topicAPSToken + 8);
  v7 = *(v1 + 16);

  v7(v5, v6, ObjectType, v1);
  v8 = v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    v11 = swift_getObjectType();
    v12 = *v4;
    v13 = v4[1];
    v14 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_publicAPSToken);
    v15 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_publicAPSToken + 8);
    v16 = *(v10 + 8);

    v16(v0, v12, v13, v14, v15, v11, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

id FMAPSConnectionHandler.__deallocating_deinit()
{
  v1 = &v0[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection];
  if (*&v0[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection])
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v4(0, ObjectType, v2);
    swift_unknownObjectRelease();
    if (*v1)
    {
      v5 = *(v1 + 1);
      v6 = *v1;
      v7 = swift_getObjectType();
      v8 = *(v5 + 40);
      swift_unknownObjectRetain();
      v8(v7, v5);
      swift_unknownObjectRelease();
    }
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for FMAPSConnectionHandler();
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_24A790E44(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection))
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection + 8);
    v3 = *(result + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection);
    ObjectType = swift_getObjectType();
    sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_24A8327A0;
    v6 = *(v1 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic);
    v7 = *(v1 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic + 8);
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    v8 = *(v2 + 32);
    swift_unknownObjectRetain();

    v8(v5, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A790F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A82CE54();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connectionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  sub_24A82CE24();
  v21 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_24A79121C(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection))
  {
    v1 = *(result + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection + 8);
    v2 = *(result + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection);
    ObjectType = swift_getObjectType();
    v4 = *(v1 + 32);
    swift_unknownObjectRetain();
    v4(0, ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id FMAPSConnectionHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_24A791558(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = sub_24A82CDF4();
  v6 = *(v5 - 8);
  isa = v6[8].isa;
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CE54();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v16 = sub_24A82CDC4();
    sub_24A6797D0(v16, qword_281518F88);
    v17 = v2;
    v40 = sub_24A82CD94();
    v18 = sub_24A82D504();

    if (os_log_type_enabled(v40, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_24A68761C(*&v17[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic], *&v17[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic + 8], aBlock);
      _os_log_impl(&dword_24A675000, v40, v18, "FMAPSConnectionHandler: Topic APS Token was nil for %s.", v19, 0xCu);
      sub_24A6876E8(v20);
      MEMORY[0x24C21E1D0](v20, -1, -1);
      MEMORY[0x24C21E1D0](v19, -1, -1);
    }

    else
    {
      v37 = v40;
    }
  }

  else
  {
    v38 = v13;
    v39 = v12;
    v40 = v6;
    v21 = sub_24A82C8E4();
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v22 = sub_24A82CDC4();
    sub_24A6797D0(v22, qword_281518F88);
    v23 = v21;
    v24 = sub_24A82CD94();
    v25 = sub_24A82D504();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_24A675000, v24, v25, "FMAPSConnectionHandler: Topic APS Token received %@.", v26, 0xCu);
      sub_24A67CDA4(v27);
      MEMORY[0x24C21E1D0](v27, -1, -1);
      MEMORY[0x24C21E1D0](v26, -1, -1);
    }

    v29 = [v23 fm_hexString];
    v30 = sub_24A82CFC4();
    v32 = v31;

    v33 = *&v3[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connectionQueue];
    v34 = swift_allocObject();
    v34[2] = v3;
    v34[3] = v30;
    v34[4] = v32;
    aBlock[4] = sub_24A791EE4;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC86D8;
    v35 = _Block_copy(aBlock);
    v36 = v3;
    sub_24A82CE24();
    v41 = MEMORY[0x277D84F90];
    sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v15, v9, v35);
    _Block_release(v35);

    (v40[1].isa)(v9, v5);
    (*(v38 + 8))(v15, v39);
  }
}

uint64_t sub_24A791AC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);

  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v11 = 136315394;
    if (!a2)
    {
LABEL_13:

      __break(1u);
      goto LABEL_14;
    }

    v14 = v13;
    result = sub_24A68761C(a1, a2, v20);
    *(v11 + 4) = result;
    *(v11 + 12) = 2112;
    if (!a3)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v16 = sub_24A82CED4();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMAPSConnectionHandler: Received message for topic: %s \n Message: %@", v11, 0x16u);
    sub_24A67CDA4(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  else
  {
  }

  v17 = v4 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = *(v17 + 8);
  ObjectType = swift_getObjectType();
  (*(v18 + 16))(v4, a3, ObjectType, v18);
  return swift_unknownObjectRelease();
}

uint64_t FMIPLostModeAction.email.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email + 8);

  return v1;
}

uint64_t FMIPLostModeAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message + 8);

  return v1;
}

uint64_t FMIPLostModeAction.phoneNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber + 8);

  return v1;
}

uint64_t FMIPLostModeAction.passcode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode + 8);

  return v1;
}

uint64_t FMIPLostModeAction.__allocating_init(device:message:phoneNumber:email:passcode:trackingEnabled:emailUpdatesEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isLostModeEnabled) = 1;
  *(v21 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isSoundEnabled) = 0;
  v22 = (v21 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email);
  *v22 = a6;
  v22[1] = a7;
  v23 = (v21 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message);
  *v23 = a2;
  v23[1] = a3;
  v24 = (v21 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber);
  *v24 = a4;
  v24[1] = a5;
  v25 = (v21 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode);
  *v25 = a8;
  v25[1] = a9;
  *(v21 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isUserTextEnabled) = (a3 | a5) != 0;
  *(v21 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isTrackingEnabled) = a10;
  *(v21 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isEmailUpdatesEnabled) = a11;
  *(v21 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v26 = (v21 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v21 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v21 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v21 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v21 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v30 = 0;
  v30[1] = 0;
  *(v21 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D558(a1, v21 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v21;
}

uint64_t FMIPLostModeAction.init(device:message:phoneNumber:email:passcode:trackingEnabled:emailUpdatesEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  *(v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isLostModeEnabled) = 1;
  *(v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isSoundEnabled) = 0;
  v12 = (v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email);
  *v12 = a6;
  v12[1] = a7;
  v13 = (v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message);
  *v13 = a2;
  v13[1] = a3;
  v14 = (v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber);
  *v14 = a4;
  v14[1] = a5;
  v15 = (v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode);
  *v15 = a8;
  v15[1] = a9;
  *(v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isUserTextEnabled) = (a3 | a5) != 0;
  *(v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isTrackingEnabled) = a10;
  *(v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isEmailUpdatesEnabled) = a11;
  *(v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v16 = (v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v20 = 0;
  v20[1] = 0;
  *(v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D558(a1, v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v11;
}

uint64_t sub_24A7923CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber + 8);

  v4 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode + 8);
}

uint64_t FMIPLostModeAction.deinit()
{
  v0 = FMIPDeviceAction.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber + 8);

  v4 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode + 8);

  return v0;
}

uint64_t FMIPLostModeAction.__deallocating_deinit()
{
  v0 = FMIPDeviceAction.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber + 8);

  v4 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t FMIPLostModeItemAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message + 8);

  return v1;
}

uint64_t FMIPLostModeItemAction.phoneNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber + 8);

  return v1;
}

uint64_t FMIPLostModeItemAction.email.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email + 8);

  return v1;
}

uint64_t FMIPLostModeItemAction.__allocating_init(item:message:phoneNumber:email:trackingEnabled:emailUpdatesEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message);
  *v21 = a2;
  v21[1] = a3;
  v22 = (v20 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber);
  *v22 = a4;
  v22[1] = a5;
  *(v20 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isUserTextEnabled) = (a3 | a5) != 0;
  *(v20 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isTrackingEnabled) = a8;
  *(v20 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isEmailUpdatesEnabled) = a9;
  v23 = (v20 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email);
  *v23 = a6;
  v23[1] = a7;
  sub_24A68D558(a1, v20 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v20;
}

uint64_t FMIPLostModeItemAction.init(item:message:phoneNumber:email:trackingEnabled:emailUpdatesEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v10 = (v9 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message);
  *v10 = a2;
  v10[1] = a3;
  v11 = (v9 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber);
  *v11 = a4;
  v11[1] = a5;
  *(v9 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isUserTextEnabled) = (a3 | a5) != 0;
  *(v9 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isTrackingEnabled) = a8;
  *(v9 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isEmailUpdatesEnabled) = a9;
  v12 = (v9 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email);
  *v12 = a6;
  v12[1] = a7;
  sub_24A68D558(a1, v9 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v9;
}

uint64_t sub_24A792844()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email + 8);
}

uint64_t FMIPLostModeItemAction.deinit()
{
  sub_24A6CB3F0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email + 8);

  return v0;
}

uint64_t FMIPLostModeItemAction.__deallocating_deinit()
{
  sub_24A6CB3F0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s8FMIPCore18FMIPLostModeActionC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message + 8);
  v3 = *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message) || v2 != v3)
    {
      v5 = a1;
      v6 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message);
      v7 = a2;
      v8 = sub_24A82DC04();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber + 8);
  v11 = *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber + 8);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber) || v10 != v11)
    {
      v13 = a1;
      v14 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber);
      v15 = a2;
      v16 = sub_24A82DC04();
      a2 = v15;
      v17 = v16;
      a1 = v13;
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

  v18 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email + 8);
  v19 = *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email + 8);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email) || v18 != v19)
    {
      v21 = a1;
      v22 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email);
      v23 = a2;
      v24 = sub_24A82DC04();
      a2 = v23;
      v25 = v24;
      a1 = v21;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  v26 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode + 8);
  v27 = *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode + 8);
  if (!v26)
  {
    if (!v27)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (!v27)
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode) || v26 != v27)
  {
    v29 = a1;
    v30 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode);
    v31 = a2;
    v32 = sub_24A82DC04();
    a2 = v31;
    v33 = v32;
    a1 = v29;
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_37:
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isUserTextEnabled) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isUserTextEnabled) || *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isTrackingEnabled) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isTrackingEnabled) || *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isEmailUpdatesEnabled) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isEmailUpdatesEnabled))
  {
    return 0;
  }

  v35 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v36 = a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;

  return static FMIPDevice.== infix(_:_:)(v35, v36);
}

void sub_24A792E68()
{
  if ([v0 isCancelled])
  {
    if (qword_27EF5CB88 != -1)
    {
      swift_once();
    }

    v1 = sub_24A82CDC4();
    sub_24A6797D0(v1, qword_27EF78C00);
    oslog = sub_24A82CD94();
    v2 = sub_24A82D504();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_24A675000, oslog, v2, "FMReverseGeocodingOperation: operation cancelled", v3, 2u);
      MEMORY[0x24C21E1D0](v3, -1, -1);
    }
  }
}

void sub_24A792FBC()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_24A82CAE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMReverseGeocodingOperation();
  v29.receiver = v0;
  v29.super_class = v11;
  objc_msgSendSuper2(&v29, sel_start);
  v27 = objc_opt_self();
  v12 = [v27 sharedService];
  v13 = [v12 defaultTraits];

  sub_24A793A40();
  v14 = &v1[OBJC_IVAR____TtC8FMIPCore27FMReverseGeocodingOperation_request];
  v15 = *&v1[OBJC_IVAR____TtC8FMIPCore27FMReverseGeocodingOperation_request + 16];
  sub_24A7F7FFC(v15);
  v17 = v16;

  v18 = type metadata accessor for FMReverseGeocodingRequest();
  sub_24A6F434C(&v14[*(v18 + 24)], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24A793A8C(v5);
  }

  else
  {
    v26 = v1;
    (*(v7 + 32))(v10, v5, v6);
    sub_24A82CAB4();
    sub_24A82CAD4();

    [v13 clearDeviceDisplayLanguages];
    if (v13)
    {
      v19 = v13;
      v20 = sub_24A82CF94();

      [v19 addDeviceDisplayLanguage_];

      (*(v7 + 8))(v10, v6);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v1 = v26;
  }

  if (v14[*(v18 + 32)] == 1 && v17)
  {
    [v17 setHorizontalAccuracy_];
  }

  v21 = [v27 sharedService];
  v22 = [v21 ticketForReverseGeocodeLocation:v17 traits:v13];

  if (v22)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v1;
    aBlock[4] = sub_24A793AF4;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7937A4;
    aBlock[3] = &unk_285DC87C8;
    v24 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v25 = v1;

    [v22 submitWithHandler:v24 timeout:25 networkActivity:0];
    swift_unknownObjectRelease_n();

    _Block_release(v24);
  }

  else
  {
  }
}

void sub_24A7933C8(unint64_t a1, id a2, char *a3)
{
  v6 = &unk_27EF78000;
  v7 = &off_278FE8000;
  if (a2)
  {
    v8 = a2;
    if (qword_27EF5CB88 != -1)
    {
      swift_once();
    }

    v9 = sub_24A82CDC4();
    sub_24A6797D0(v9, qword_27EF78C00);
    v10 = a2;
    v11 = sub_24A82CD94();
    v12 = sub_24A82D4E4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_24A82DC74();
      v17 = sub_24A68761C(v15, v16, &v35);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_24A675000, v11, v12, "FMReverseGeocodingOperation: reverse geocoding completed with error: %s", v13, 0xCu);
      sub_24A6876E8(v14);
      v6 = &unk_27EF78000;
      MEMORY[0x24C21E1D0](v14, -1, -1);
      v18 = v13;
      v7 = &off_278FE8000;
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    v19 = &a3[v6[464]];
    v21 = *v19;
    v20 = *(v19 + 1);
    v22 = a2;
    v21(0, a2);

    [a3 v7[139]];
  }

  if (a1)
  {
    if (a1 >> 62)
    {
      if (!sub_24A82D744())
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C21D180](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v23 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    if (qword_27EF5CB88 != -1)
    {
      swift_once();
    }

    v24 = sub_24A82CDC4();
    sub_24A6797D0(v24, qword_27EF78C00);
    swift_unknownObjectRetain();
    v25 = sub_24A82CD94();
    v26 = sub_24A82D504();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136315138;
      v35 = 0;
      v36 = 0xE000000000000000;
      v37 = v28;
      sub_24A6BBA94(&unk_27EF5E940, qword_24A839598);
      sub_24A82D914();
      v29 = sub_24A68761C(v35, v36, &v37);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_24A675000, v25, v26, "FMReverseGeocodingOperation: reverse geocoding completed with item: %s", v27, 0xCu);
      sub_24A6876E8(v28);
      v30 = v28;
      v7 = &off_278FE8000;
      MEMORY[0x24C21E1D0](v30, -1, -1);
      MEMORY[0x24C21E1D0](v27, -1, -1);
    }

    v31 = &a3[v6[464]];
    v33 = *v31;
    v32 = *(v31 + 1);
    v34 = swift_unknownObjectRetain();
    v33(v34, a2);
    swift_unknownObjectRelease();
    [a3 v7[139]];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24A7937A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_24A6BBA94(&unk_27EF5E940, qword_24A839598);
    v4 = sub_24A82D244();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_24A7938BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMReverseGeocodingOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FMReverseGeocodingOperation()
{
  result = qword_27EF5E8C0;
  if (!qword_27EF5E8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A793998()
{
  result = type metadata accessor for FMReverseGeocodingRequest();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24A793A40()
{
  result = qword_27EF5E938;
  if (!qword_27EF5E938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF5E938);
  }

  return result;
}

uint64_t sub_24A793A8C(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A793AFC(uint64_t a1)
{
  v2 = type metadata accessor for FMReverseGeocodingRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24A793B6C()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_24A82CF94();
  [v0 postNotificationName:v1 object:0];
}

uint64_t sub_24A793C40()
{
  v1 = *(v0 + 16);

  sub_24A6BAF88(v0 + 24);

  return swift_deallocClassInstance();
}

void FMIPItemLostModeMetadata.init(lostModeInfo:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_24A82CA34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = [a1 phoneNumber];
  if (v16)
  {
    v17 = v16;
    v18 = sub_24A82CFC4();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *a2 = v18;
  a2[1] = v20;
  v21 = [a1 message];
  if (v21)
  {
    v22 = v21;
    v23 = sub_24A82CFC4();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  a2[2] = v23;
  a2[3] = v25;
  v26 = [a1 timestamp];
  if (v26)
  {
    v27 = v26;
    sub_24A82C9F4();

    v28 = *(v9 + 32);
    v28(v7, v13, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v28(v15, v7, v8);
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    sub_24A82CA24();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_24A793F90(v7);
    }
  }

  v29 = type metadata accessor for FMIPItemLostModeMetadata();
  (*(v9 + 32))(a2 + *(v29 + 24), v15, v8);
  v30 = [a1 email];
  if (v30)
  {
    v31 = v30;
    v32 = sub_24A82CFC4();
    v34 = v33;
  }

  else
  {

    v32 = 0;
    v34 = 0xE000000000000000;
  }

  v35 = (a2 + *(v29 + 28));
  *v35 = v32;
  v35[1] = v34;
}

uint64_t sub_24A793F90(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPItemLostModeMetadata.ownerNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMIPItemLostModeMetadata.message.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMIPItemLostModeMetadata.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPItemLostModeMetadata() + 24);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPItemLostModeMetadata.email.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPItemLostModeMetadata() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_24A794120()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7941EC()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7942A4()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A79436C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A7951A0();
  *a2 = result;
  return result;
}

void sub_24A79439C(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000726562;
  v3 = 0x6D754E72656E776FLL;
  v4 = 0xE900000000000070;
  v5 = 0x6D617473656D6974;
  if (*v1 != 2)
  {
    v5 = 0x6C69616D65;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6567617373656DLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_24A794424()
{
  v1 = 0x6D754E72656E776FLL;
  v2 = 0x6D617473656D6974;
  if (*v0 != 2)
  {
    v2 = 0x6C69616D65;
  }

  if (*v0)
  {
    v1 = 0x6567617373656DLL;
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

uint64_t sub_24A7944A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A7951A0();
  *a1 = result;
  return result;
}

uint64_t sub_24A7944D0(uint64_t a1)
{
  v2 = sub_24A79490C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A79450C(uint64_t a1)
{
  v2 = sub_24A79490C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPItemLostModeMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_24A82CA34();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24A6BBA94(&qword_27EF5E950, &qword_24A839618);
  v39 = *(v41 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v34 - v8;
  v10 = type metadata accessor for FMIPItemLostModeMetadata();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A79490C();
  v42 = v9;
  v15 = v43;
  sub_24A82DD64();
  if (v15)
  {
    v33 = a1;
  }

  else
  {
    v43 = v13;
    v16 = a1;
    v17 = v6;
    v18 = v39;
    v19 = v40;
    v47 = 0;
    v20 = v41;
    v36 = sub_24A82DA44();
    v37 = v21;
    v46 = 1;
    v34 = sub_24A82DA44();
    v35 = v22;
    v45 = 2;
    sub_24A794F10(&qword_27EF5E960);
    sub_24A82DA84();
    v44 = 3;
    v24 = sub_24A82DA44();
    v25 = *(v18 + 8);
    v26 = v42;
    v42 = v27;
    v25(v26, v20);
    v28 = v43;
    v29 = v37;
    *v43 = v36;
    *(v28 + 1) = v29;
    v30 = v35;
    *(v28 + 2) = v34;
    *(v28 + 3) = v30;
    (*(v19 + 32))(&v28[*(v10 + 24)], v17, v3);
    v31 = &v28[*(v10 + 28)];
    v32 = v42;
    *v31 = v24;
    v31[1] = v32;
    sub_24A794960(v28, v38);
    v33 = v16;
  }

  return sub_24A6876E8(v33);
}

unint64_t sub_24A79490C()
{
  result = qword_27EF5E958;
  if (!qword_27EF5E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E958);
  }

  return result;
}

uint64_t sub_24A794960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemLostModeMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMIPItemLostModeMetadata.init(ownerNumber:message:timestamp:email:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for FMIPItemLostModeMetadata();
  v13 = *(v12 + 24);
  v14 = sub_24A82CA34();
  result = (*(*(v14 - 8) + 32))(&a8[v13], a5, v14);
  v16 = &a8[*(v12 + 28)];
  *v16 = a6;
  *(v16 + 1) = a7;
  return result;
}

uint64_t FMIPItemLostModeMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5E968, &unk_24A839620);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A79490C();
  sub_24A82DD84();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  sub_24A82DB04();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v21[14] = 1;
    sub_24A82DB04();
    v16 = type metadata accessor for FMIPItemLostModeMetadata();
    v17 = *(v16 + 24);
    v21[13] = 2;
    sub_24A82CA34();
    sub_24A794F10(&qword_27EF5E970);
    sub_24A82DB44();
    v18 = (v3 + *(v16 + 28));
    v19 = *v18;
    v20 = v18[1];
    v21[12] = 3;
    sub_24A82DB04();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t static FMIPItemLostModeMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for FMIPItemLostModeMetadata();
  v7 = *(v6 + 24);
  if ((sub_24A82C9E4() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v6 + 28);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t FMIPItemLostModeMetadata.debugDescription.getter()
{
  v1 = v0;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0xD000000000000018, 0x800000024A839610);
  MEMORY[0x24C21C9E0](0x7265626D756D203ALL, 0xEA0000000000203ALL);
  MEMORY[0x24C21C9E0](*v1, v1[1]);
  MEMORY[0x24C21C9E0](0x6567617373656D20, 0xEA0000000000203ALL);
  MEMORY[0x24C21C9E0](v1[2], v1[3]);
  MEMORY[0x24C21C9E0](0x617473656D697420, 0xEC000000203A706DLL);
  v2 = type metadata accessor for FMIPItemLostModeMetadata();
  v3 = *(v2 + 24);
  sub_24A82CA34();
  sub_24A794F10(&qword_27EF5E7C0);
  v4 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v4);

  MEMORY[0x24C21C9E0](0x203A6C69616D6520, 0xE800000000000000);
  MEMORY[0x24C21C9E0](*(v1 + *(v2 + 28)), *(v1 + *(v2 + 28) + 8));
  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24A794F10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24A82CA34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A794F54(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  if ((sub_24A82C9E4() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a3 + 28);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  if (v10 == *v12 && v11 == v12[1])
  {
    return 1;
  }

  return sub_24A82DC04();
}

unint64_t sub_24A79509C()
{
  result = qword_27EF5E978;
  if (!qword_27EF5E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E978);
  }

  return result;
}

unint64_t sub_24A7950F4()
{
  result = qword_27EF5E980;
  if (!qword_27EF5E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E980);
  }

  return result;
}

unint64_t sub_24A79514C()
{
  result = qword_27EF5E988;
  if (!qword_27EF5E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E988);
  }

  return result;
}

uint64_t sub_24A7951A0()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void *sub_24A7951EC(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5E9B0, &unk_24A839AD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  v36 = type metadata accessor for FMIPDiscoveredAccessory();
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v30 = &v29 - v11;
  v34 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24A82D704();
    sub_24A679170(0, &qword_27EF5DDE8, 0x277D49668);
    sub_24A796540();
    result = sub_24A82D414();
    a1 = v38;
    v13 = v39;
    v15 = v40;
    v14 = v41;
    v16 = v42;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = a1 + 56;
    v15 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a1 + 56);

    v14 = 0;
  }

  v33 = v15;
  v31 = v7;
  v20 = (v7 + 48);
  v35 = MEMORY[0x277D84F90];
  while (a1 < 0)
  {
    v24 = sub_24A82D784();
    if (!v24 || (v37 = v24, sub_24A679170(0, &qword_27EF5DDE8, 0x277D49668), swift_dynamicCast(), (v23 = v43) == 0))
    {
LABEL_24:
      sub_24A6BAFBC();
      return v35;
    }

LABEL_17:
    sub_24A716290(v23, v6);
    if ((*v20)(v6, 1, v36) == 1)
    {
      result = sub_24A67F378(v6, &qword_27EF5E9B0, &unk_24A839AD8);
    }

    else
    {
      v25 = v30;
      sub_24A79C638(v6, v30);
      sub_24A79C638(v25, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_24A780908(0, v35[2] + 1, 1, v35);
      }

      v27 = v35[2];
      v26 = v35[3];
      if (v27 >= v26 >> 1)
      {
        v35 = sub_24A780908(v26 > 1, v27 + 1, 1, v35);
      }

      v28 = v35;
      v35[2] = v27 + 1;
      result = sub_24A79C638(v32, v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27);
    }
  }

  v21 = v14;
  v22 = v16;
  if (v16)
  {
LABEL_13:
    v16 = (v22 - 1) & v22;
    v23 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= ((v15 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v22 = *(v13 + 8 * v14);
    ++v21;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t DiscoveryType.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t sub_24A79563C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D24C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3);
}

uint64_t sub_24A7956BC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D1CC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  sub_24A6A7314(v3);
  result = sub_24A6AFFE8(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.discoveredAccessoriesCallback.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24A6A7314(v1);
  return v1;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.discoveredAccessoriesCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  result = sub_24A6AFFE8(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24A7957E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D034;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3);
}

uint64_t sub_24A795864(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79CFFC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_24A6A7314(v3);
  result = sub_24A6AFFE8(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.lostAccessoriesCallback.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24A6A7314(v1);
  return v1;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.lostAccessoriesCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  result = sub_24A6AFFE8(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_24A79598C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A680678;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3);
}

uint64_t sub_24A795A0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79CFD4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_24A6A7314(v3);
  result = sub_24A6AFFE8(v7);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.detectedPairingAccessoryCallback.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_24A6A7314(v1);
  return v1;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.detectedPairingAccessoryCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  result = sub_24A6AFFE8(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_24A795B34@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79CFCC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3);
}

uint64_t sub_24A795BB4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79CFC4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  sub_24A6A7314(v3);
  result = sub_24A6AFFE8(v7);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.errorHandler.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_24A6A7314(v1);
  return v1;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.errorHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  result = sub_24A6AFFE8(*(v2 + 48));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_24A795CDC()
{
  v2 = *v0;
  v1 = v0[1];
  if (*v0)
  {
    v3 = v0[1];
  }

  sub_24A6A7314(v2);
  return v2;
}

uint64_t sub_24A795D14(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v2[1];
  result = sub_24A6AFFE8(*v2);
  *v2 = a1;
  v2[1] = v4;
  return result;
}

void *(*sub_24A795D50(void *a1))(void *result)
{
  v2 = v1[1];
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v1;
  return sub_24A795D84;
}

void *sub_24A795D84(void *result)
{
  v2 = result[1];
  v1 = result[2];
  if (!*result)
  {
    v2 = 0;
  }

  *v1 = *result;
  v1[1] = v2;
  return result;
}

uint64_t sub_24A795D9C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 24);
  }

  sub_24A6A7314(v2);
  return v2;
}

uint64_t sub_24A795DD4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v2 + 24);
  result = sub_24A6AFFE8(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = v4;
  return result;
}

void *(*sub_24A795E10(void *a1))(void *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (!v2)
  {
    v3 = 0;
  }

  *a1 = v2;
  a1[1] = v3;
  a1[2] = v1;
  return sub_24A795E44;
}

void *sub_24A795E44(void *result)
{
  v2 = result[1];
  v1 = result[2];
  if (!*result)
  {
    v2 = 0;
  }

  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_24A795E5C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_24A6A7314(v1);
  return v1;
}

uint64_t sub_24A795E90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  result = sub_24A6AFFE8(*(v2 + 48));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_24A795EE8(__int128 *a1, void *a2)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v3 = a1[3];
  v14 = a1[2];
  v15 = v3;
  v4 = *a2;
  swift_beginAccess();
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[4];
  v16[2] = v4[3];
  v16[3] = v7;
  v16[0] = v5;
  v16[1] = v6;
  v8 = v15;
  v4[3] = v14;
  v4[4] = v8;
  v9 = v13;
  v4[1] = v12;
  v4[2] = v9;
  sub_24A795FDC(&v12, v11);
  return sub_24A796078(v16);
}

uint64_t sub_24A795F7C@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[2];
  v8[0] = v1[1];
  v8[1] = v3;
  v5 = v1[4];
  v9 = v1[3];
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24A795FDC(v8, v7);
}

uint64_t sub_24A796014(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v8[0] = v1[1];
  v8[1] = v3;
  v4 = v1[4];
  v8[2] = v1[3];
  v8[3] = v4;
  v5 = a1[1];
  v1[1] = *a1;
  v1[2] = v5;
  v6 = a1[3];
  v1[3] = a1[2];
  v1[4] = v6;
  return sub_24A796078(v8);
}

uint64_t sub_24A7960F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
}

uint64_t sub_24A796158()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t FMIPAccessoryDiscoveryController.__allocating_init(discoveryType:)(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  FMIPAccessoryDiscoveryController.init(discoveryType:)(a1);
  return v2;
}

uint64_t FMIPAccessoryDiscoveryController.init(discoveryType:)(unsigned __int8 *a1)
{
  v2 = v1;
  v20 = sub_24A82D554();
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82D534();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24A82CE54();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v21 = *a1;
  sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  sub_24A82CE24();
  v22 = MEMORY[0x277D84F90];
  sub_24A6956F8(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A7964DC();
  sub_24A82D6B4();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v20);
  *(v1 + 80) = sub_24A82D594();
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = MEMORY[0x277D84FA0];
  v12 = objc_allocWithZone(MEMORY[0x277D495F0]);
  sub_24A679170(0, &qword_27EF5DDE8, 0x277D49668);
  sub_24A796540();
  v13 = sub_24A82D394();
  v14 = [v12 initWithAccessories_];

  *(v2 + 88) = v21;
  v15 = v14;
  v16 = sub_24A79BE48(v14);

  v17 = *(v2 + 96);
  *(v2 + 96) = v16;

  return v2;
}

unint64_t sub_24A7964DC()
{
  result = qword_2815146E0;
  if (!qword_2815146E0)
  {
    sub_24A6CCDC0(&unk_27EF5EF50, &unk_24A836510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815146E0);
  }

  return result;
}