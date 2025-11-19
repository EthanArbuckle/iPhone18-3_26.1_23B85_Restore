uint64_t sub_232B803F8(uint64_t a1)
{
  type metadata accessor for DUExtractionAttributeKey();
  v3 = v2;
  sub_232BA4E80();
  sub_232BA4DA4(v4, v5);
  v6 = sub_232CE9C60();
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(a1 + 56) + 16 * v14);
    v16 = v15[1];
    if (v16)
    {
      v33 = v3;
      v17 = *(*(a1 + 48) + 8 * v14);
      v35 = *v15;

      v18 = v17;
      sub_232BA6E88();
      v19 = sub_232B20540(v17);
      v34 = v20;
      if (__OFADD__(v6[2], (v20 & 1) == 0))
      {
        goto LABEL_21;
      }

      v21 = v19;
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      if (sub_232CEA5C0())
      {
        v22 = v17;
        v23 = sub_232B20540(v17);
        v25 = v34;
        if ((v34 & 1) != (v24 & 1))
        {
          goto LABEL_23;
        }

        v21 = v23;
      }

      else
      {
        v22 = v17;
        v25 = v34;
      }

      if (v25)
      {
        v26 = (v6[7] + 16 * v21);
        v27 = v26[1];
        *v26 = v35;
        v26[1] = v16;

        v3 = v33;
      }

      else
      {
        v6[(v21 >> 6) + 8] |= 1 << v21;
        *(v6[6] + 8 * v21) = v22;
        v28 = (v6[7] + 16 * v21);
        *v28 = v35;
        v28[1] = v16;
        v29 = v6[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_22;
        }

        v6[2] = v31;
        v3 = v33;
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return v6;
    }

    v9 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

id sub_232B80670()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_232CE9D20();

  v2 = [v0 initWithString_];

  return v2;
}

void sub_232B806E4(void *a1)
{
  v1 = [a1 subResults];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
  v3 = sub_232CE9FE0();

  v4 = sub_232B26B10(v3);
  if (!v4)
  {
LABEL_26:

    return;
  }

  v5 = v4;
  if (v4 < 1)
  {
    goto LABEL_31;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2383922C0](v6, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = [v8 type];
    v11 = sub_232CE9D50();
    v13 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = *(v7 + 16);
      sub_232B35ECC();
      v7 = v27;
    }

    v14 = *(v7 + 16);
    if (v14 >= *(v7 + 24) >> 1)
    {
      sub_232B35ECC();
      v7 = v28;
    }

    *(v7 + 16) = v14 + 1;
    v15 = v7 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v13;
    v16 = sub_232B806E4(v9);
    v17 = *(v16 + 16);
    v18 = *(v7 + 16);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    v20 = v16;
    v21 = *(v7 + 24) >> 1;
    if (v21 < v19)
    {
      if (v18 > v19)
      {
        v29 = *(v7 + 16);
      }

      sub_232B35ECC();
      v7 = v30;
      v18 = *(v30 + 16);
      v21 = *(v30 + 24) >> 1;
      if (*(v20 + 16))
      {
LABEL_15:
        if ((v21 - v18) < v17)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v23 = *(v7 + 16);
          v24 = __OFADD__(v23, v17);
          v25 = v23 + v17;
          if (v24)
          {
            goto LABEL_30;
          }

          *(v7 + 16) = v25;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v22 = *(v16 + 16);
      if (v17)
      {
        goto LABEL_15;
      }
    }

    if (v17)
    {
      goto LABEL_28;
    }

LABEL_23:
    ++v6;

    if (v5 == v6)
    {
      goto LABEL_26;
    }
  }

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

void sub_232B80968()
{
  sub_232BA6250();
  v30 = v2;
  v4 = [v3 subResults];
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = v4;
  sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
  v6 = sub_232CE9FE0();

  v7 = sub_232B26B10(v6);
  if (!v7)
  {
LABEL_26:

LABEL_27:
    sub_232BA6234();
    return;
  }

  v8 = v7;
  if (v7 < 1)
  {
    goto LABEL_32;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = sub_232B35128();
      v12 = MEMORY[0x2383922C0](v11);
    }

    else
    {
      v12 = *(v6 + 8 * v9 + 32);
    }

    v13 = v12;
    v14 = [v12 type];
    sub_232CE9D50();
    sub_232BA6298();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = *(v10 + 16);
      sub_232BA57A8();
      sub_232B35ECC();
      v10 = v26;
    }

    v15 = *(v10 + 16);
    if (v15 >= *(v10 + 24) >> 1)
    {
      sub_232BA65D4();
      sub_232B35ECC();
      v10 = v27;
    }

    *(v10 + 16) = v15 + 1;
    v16 = v10 + 16 * v15;
    *(v16 + 32) = v0;
    *(v16 + 40) = v1;
    v17 = v30(v13);
    v0 = *(v17 + 16);
    v18 = *(v10 + 16);
    v19 = v18 + v0;
    if (__OFADD__(v18, v0))
    {
      break;
    }

    v1 = v17;
    v20 = *(v10 + 24) >> 1;
    if (v20 < v19)
    {
      if (v18 > v19)
      {
        v28 = *(v10 + 16);
      }

      sub_232BA65D4();
      sub_232B35ECC();
      v10 = v29;
      v18 = *(v29 + 16);
      v20 = *(v29 + 24) >> 1;
      if (*(v1 + 16))
      {
LABEL_15:
        if ((v20 - v18) < v0)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v0)
        {
          v22 = *(v10 + 16);
          v23 = __OFADD__(v22, v0);
          v24 = v22 + v0;
          if (v23)
          {
            goto LABEL_31;
          }

          *(v10 + 16) = v24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v21 = *(v17 + 16);
      if (v0)
      {
        goto LABEL_15;
      }
    }

    if (v0)
    {
      goto LABEL_29;
    }

LABEL_23:
    ++v9;

    if (v8 == v9)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_232B80BB0()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_232CE89D0();
  v13 = sub_232B48F0C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  if (v11)
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    v18 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v18 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      if ((v1 & 1) == 0)
      {
        v41 = v5;
        sub_232BA7230();
        sub_232CE9DD0();
        sub_232BA6800();
        sub_232CE9DD0();

        v26 = sub_232CE9F50();

        if (v26)
        {
          sub_232BA6800();
          sub_232CE9E60();
          sub_232BA67A4();
          v30 = sub_232B80F38(v27, v28, v29);
          MEMORY[0x238391B80](v30);

          sub_232CE89B0();
          sub_232B48080();
          sub_232BA6C44();
          sub_232CEA3A0();
          v31 = sub_232BA6148();
          v32(v31, v12);
        }

        v5 = v41;
        if (!v3)
        {
          goto LABEL_24;
        }

LABEL_12:
        v25 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v25 = v5 & 0xFFFFFFFFFFFFLL;
        }

        if (!v25)
        {
          goto LABEL_24;
        }

        if (v1)
        {
          sub_232BA5C94();
          if ((sub_232CE9F60() & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        sub_232BA7230();
        sub_232CE9DD0();
        sub_232BA5D68();
        sub_232BA5C94();
        sub_232CE9DD0();
        v33 = sub_232CE9F60();

        if (v33)
        {
LABEL_22:
          sub_232BA5C94();
          sub_232CE9E60();
          sub_232BA67A4();
          v35 = sub_232B8100C(v34);
          MEMORY[0x238391B80](v35);
          sub_232BA5F44();

          sub_232CE89B0();
          sub_232B48080();
          sub_232BA6C44();
          sub_232CEA3A0();
          v36 = sub_232BA6148();
          v37(v36, v12);
        }

LABEL_24:
        sub_232CE89B0();
        sub_232B48080();
        sub_232BA6C44();
        sub_232CEA3A0();
        v38 = *(v15 + 8);
        v39 = sub_232B5A008();
        v40(v39);

        goto LABEL_25;
      }

      sub_232BA6800();
      if (sub_232CE9F50())
      {
        sub_232BA6800();
        sub_232CE9E60();
        sub_232BA67A4();
        v22 = sub_232B80F38(v19, v20, v21);
        MEMORY[0x238391B80](v22);

        sub_232CE89B0();
        sub_232B48080();
        sub_232BA6C44();
        sub_232CEA3A0();
        v23 = sub_232BA6148();
        v24(v23, v12);

        if (!v3)
        {
          goto LABEL_24;
        }

        goto LABEL_12;
      }
    }

    else
    {
LABEL_10:
    }

    if (!v3)
    {
      goto LABEL_24;
    }

    goto LABEL_12;
  }

LABEL_25:
  sub_232BA7224();
  sub_232B20A00();
}

unint64_t sub_232B80F38(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_232CE9E80();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_232CE9FB0();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232B8100C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_232CE9E80();
    v1 = sub_232CE9FB0();

    return v1;
  }

  return result;
}

uint64_t sub_232B810CC()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_232B81134@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_232B810CC();
  *a2 = result;
  return result;
}

uint64_t sub_232B81164()
{
  v1 = sub_232BA6734();
  result = sub_232B77394(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_232B811DC()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

void sub_232B81220(char a1)
{
  switch(a1)
  {
    case 4:
    case 5:
      sub_232BA6E04();
      break;
    default:
      return;
  }
}

uint64_t sub_232B81328@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_232B811DC();
  *a2 = result;
  return result;
}

void sub_232B81358()
{
  v1 = sub_232BA6734();
  sub_232B81220(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_232B813A0()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_232B813E4(char a1)
{
  result = 0x616D7269666E6F43;
  switch(a1)
  {
    case 1:
      result = 0x657461647055;
      break;
    case 2:
      result = 0x616C6C65636E6143;
      break;
    case 3:
      result = sub_232BA66D0();
      break;
    case 4:
      result = 0x6E776F6E6B6E55;
      break;
    case 5:
      result = 0x6E7275746552;
      break;
    case 6:
      result = 0x646E75666552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232B814B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_232B813A0();
  *a2 = result;
  return result;
}

uint64_t sub_232B814E8()
{
  v1 = sub_232BA6734();
  result = sub_232B813E4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_232B81530()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_232B81574(char a1)
{
  result = 0x6C61636973796850;
  switch(a1)
  {
    case 1:
      result = 0x206C617469676944;
      break;
    case 2:
      result = 0x7069726373627553;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232B81654@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_232B81530();
  *a2 = result;
  return result;
}

unint64_t sub_232B81684()
{
  v1 = sub_232BA6734();
  result = sub_232B81574(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_232B816CC()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

void sub_232B81710(char a1)
{
  switch(a1)
  {
    case 2:
    case 6:
      sub_232BA6E04();
      break;
    case 4:
      sub_232BA66D0();
      break;
    default:
      return;
  }
}

uint64_t sub_232B81840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_232B816CC();
  *a2 = result;
  return result;
}

void sub_232B81870()
{
  v1 = sub_232BA6734();
  sub_232B81710(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_232B818A8()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

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

uint64_t sub_232B81948@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_232B818A8();
  *a2 = result;
  return result;
}

void sub_232B81978()
{
  sub_232BA6734();
  sub_232B818F4();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_232B819B0()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_232B819F4(char a1)
{
  result = 0x6E69617254;
  switch(a1)
  {
    case 1:
      result = 7566658;
      break;
    case 2:
      result = 1952542530;
      break;
    case 3:
      result = 0x636972656E6547;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232B81A88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_232B819B0();
  *a2 = result;
  return result;
}

uint64_t sub_232B81AB8()
{
  v1 = sub_232BA6734();
  result = sub_232B819F4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_232B8298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_232BA66A0();
  v16 = v15;
  v18 = v17;
  sub_232BA5AD8();
  sub_232BA667C();
  sub_232CE98C0();
  if (v13)
  {
    v19 = sub_232CE98D0();
    sub_232BA5190(v19);
    (*(v20 + 8))(v16);
  }

  else
  {
    sub_232BA56B0();
    sub_232CE98C0();
    sub_232BA6658();
    sub_232CE98C0();
    sub_232BA723C();
    v32 = v21;
    sub_232BA55DC();
    sub_232CE98C0();
    sub_232BA667C();
    sub_232CE98C0();
    sub_232BA723C();
    v31 = v22;
    v23 = sub_232BA6160();
    sub_232BA5C14(v23);
    sub_232CE98C0();
    sub_232BA723C();
    v30 = v24;
    sub_232BA6C74();
    sub_232CE98C0();
    sub_232BA723C();
    v29 = v25;
    sub_232BA6160();
    sub_232CE98C0();
    sub_232BA6C74();
    sub_232CE98C0();
    sub_232BA6160();
    sub_232BA667C();
    sub_232CE98C0();
    sub_232BA6C74();
    sub_232CE98C0();
    sub_232BA1EE8();
    v26 = sub_232BA5AD8();
    sub_232BA6430(v26);
    sub_232CE98C0();
    v27 = sub_232CE98D0();
    sub_232BA5190(v27);
    (*(v28 + 8))(v16);
    __src[0] = v35;
    __src[1] = v36;
    __src[2] = v35;
    __src[3] = v36;
    __src[4] = v14;
    __src[5] = v32;
    __src[6] = v35;
    __src[7] = v36;
    __src[8] = v14;
    __src[9] = v31;
    __src[10] = v14;
    __src[11] = v30;
    __src[12] = v14;
    __src[13] = v29;
    __src[14] = v35;
    __src[15] = v36;
    __src[16] = v35;
    __src[17] = v36;
    __src[18] = v35;
    __src[19] = v36;
    __src[20] = v35;
    __src[21] = v36;
    LOBYTE(__src[22]) = a13;
    v37 = v35;
    v38 = v36;
    v39 = v14;
    v40 = v32;
    v41 = v35;
    v42 = v36;
    v43 = v14;
    v44 = v31;
    v45 = v14;
    v46 = v30;
    v47 = v14;
    v48 = v29;
    v49 = v35;
    v50 = v36;
    v51 = v35;
    v52 = v36;
    v53 = v35;
    v54 = v36;
    v55 = v35;
    v56 = v36;
    v57 = a13;
    sub_232BA1F3C(__src, v33);
    sub_232BA1F74(&v35);
    memcpy(v18, __src, 0xB1uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232B8318C()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_2814E3DD8);
  sub_232B135C4(v0, qword_2814E3DD8);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF89F0;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232BA1EE8();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232B84DB4()
{
  sub_232BA66A0();
  v2 = v1;
  v4 = v3;
  sub_232BA1FA4();
  sub_232CE98C0();
  if (v0)
  {
    v6 = sub_232CE98D0();
    sub_232BA5190(v6);
    (*(v7 + 8))(v2);
  }

  else
  {
    v5 = sub_232BA63DC();
    sub_232BA63BC(v5);
    sub_232CE98C0();
    v8 = v55;
    v9 = v56;
    sub_232BA63DC();
    sub_232CE98C0();
    v101 = v56;
    sub_232BA714C();
    sub_232CE98C0();
    v52 = v55;
    v42 = v56;
    sub_232BA678C();
    sub_232CE98C0();
    v51 = v55;
    v10 = v55;
    v41 = v56;
    sub_232BA7138();
    sub_232BA6CBC();
    sub_232CE98C0();
    v40 = v56;
    sub_232BA6BFC();
    v50 = v55;
    v11 = v55;
    v39 = v56;
    sub_232BA56B0();
    sub_232CE98C0();
    v49 = v55;
    v38 = v56;
    sub_232BA6ACC();
    sub_232BA6CBC();
    sub_232CE98C0();
    v48 = v55;
    v37 = v56;
    sub_232BA6CBC();
    sub_232CE98C0();
    v47 = v55;
    v36 = v56;
    sub_232BA6128();
    sub_232CE98C0();
    v46 = v55;
    v35 = v56;
    sub_232BA70FC();
    sub_232BA6CBC();
    sub_232BA69B4();
    v45 = v55;
    v34 = v56;
    sub_232BA69B4();
    v44 = v55;
    v33 = v56;
    sub_232BA56B0();
    sub_232BA69B4();
    v43 = v55;
    v32 = v56;
    sub_232BA674C();
    sub_232BA69B4();
    v23 = v55;
    v31 = v56;
    sub_232BA5A14();
    sub_232BA70C0();
    sub_232BA69B4();
    v22 = v55;
    v30 = v56;
    sub_232BA70AC();
    sub_232BA5FB0();
    sub_232BA69B4();
    v12 = v55;
    v29 = v56;
    sub_232BA65E0();
    sub_232BA69B4();
    v21 = v55;
    v28 = v56;
    sub_232BA6128();
    sub_232BA69B4();
    v20 = v55;
    v27 = v56;
    sub_232BA6128();
    sub_232BA69B4();
    v19 = v55;
    v26 = v56;
    sub_232BA6128();
    sub_232BA69B4();
    v18 = v55;
    v25 = v56;
    sub_232BA6128();
    sub_232BA69B4();
    v17 = v55;
    v24 = v56;
    sub_232BA1FF8();
    sub_232BA69B4();
    v13 = sub_232CE98D0();
    sub_232BA5190(v13);
    (*(v14 + 8))(v2);
    sub_232BA7054(v100);
    HIDWORD(__src[0]) = v15;
    LOBYTE(__src[0]) = v55;
    sub_232BA7054(v100);
    HIDWORD(v55) = v16;
    v56 = v8;
    __src[1] = v8;
    __src[2] = v9;
    v57 = v9;
    v58 = v52;
    __src[3] = v52;
    __src[4] = v101;
    v59 = v101;
    v60 = v51;
    __src[5] = v51;
    __src[6] = v42;
    v61 = v42;
    v62 = v10;
    __src[7] = v10;
    __src[8] = v41;
    v63 = v41;
    v64 = v50;
    __src[9] = v50;
    __src[10] = v40;
    v65 = v40;
    v66 = v11;
    __src[11] = v11;
    __src[12] = v39;
    v67 = v39;
    v68 = v49;
    __src[13] = v49;
    __src[14] = v38;
    v69 = v38;
    v70 = v48;
    __src[15] = v48;
    __src[16] = v37;
    v71 = v37;
    v72 = v47;
    __src[17] = v47;
    __src[18] = v36;
    v73 = v36;
    v74 = v46;
    __src[19] = v46;
    __src[20] = v35;
    v75 = v35;
    v76 = v45;
    __src[21] = v45;
    __src[22] = v34;
    v77 = v34;
    v78 = v44;
    __src[23] = v44;
    __src[24] = v33;
    v79 = v33;
    v80 = v43;
    __src[25] = v43;
    __src[26] = v32;
    v81 = v32;
    v82 = v23;
    __src[27] = v23;
    __src[28] = v31;
    v83 = v31;
    v84 = v22;
    __src[29] = v22;
    __src[30] = v30;
    v85 = v30;
    v86 = v12;
    __src[31] = v12;
    __src[32] = v29;
    v87 = v29;
    v88 = v21;
    __src[33] = v21;
    __src[34] = v28;
    v89 = v28;
    v90 = v20;
    __src[35] = v20;
    __src[36] = v27;
    v91 = v27;
    v92 = v19;
    __src[37] = v19;
    __src[38] = v26;
    v93 = v26;
    v94 = v18;
    __src[39] = v18;
    __src[40] = v25;
    v95 = v25;
    v96 = v17;
    __src[41] = v17;
    __src[42] = v24;
    v97 = v24;
    LOBYTE(__src[43]) = v99;
    v98 = v99;
    sub_232BA204C(__src, v53);
    sub_232BA2084(&v55);
    memcpy(v4, __src, 0x159uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232B85E4C()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_2814E3F48);
  sub_232B135C4(v0, qword_2814E3F48);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF8A00;
  sub_232BA1FA4();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232BA1FF8();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232B878F4()
{
  sub_232BA66A0();
  v2 = v1;
  v4 = v3;
  sub_232BA20B4();
  sub_232CE98C0();
  if (v0)
  {
    v6 = sub_232CE98D0();
    sub_232BA5190(v6);
    (*(v7 + 8))(v2);
  }

  else
  {
    sub_232BA2108();
    sub_232CE98C0();
    v5 = sub_232BA63DC();
    sub_232BA63BC(v5);
    sub_232CE98C0();
    v8 = v50;
    sub_232BA714C();
    sub_232CE98C0();
    v46 = v49;
    v91 = v50;
    sub_232CE98C0();
    v45 = v49;
    v39 = v50;
    sub_232BA7138();
    sub_232CE98C0();
    v38 = v50;
    sub_232BA6BFC();
    v44 = v49;
    v37 = v50;
    sub_232BA6BFC();
    v43 = v49;
    v36 = v50;
    sub_232BA70AC();
    sub_232BA5FB0();
    sub_232CE98C0();
    v42 = v49;
    v35 = v50;
    sub_232BA65E0();
    sub_232CE98C0();
    v23 = v49;
    v40 = v49;
    v41 = v49;
    v34 = v50;
    sub_232BA6ACC();
    sub_232CE98C0();
    sub_232BA5F74();
    v22 = v49;
    v33 = v50;
    sub_232BA6A3C();
    sub_232BA5B78();
    v21 = v49;
    v32 = v50;
    sub_232BA6A3C();
    v20 = v49;
    v31 = v50;
    sub_232BA5FB0();
    sub_232BA6A3C();
    v19 = v49;
    v30 = v50;
    sub_232BA5FB0();
    sub_232BA5B78();
    sub_232BA6A3C();
    v18 = v49;
    v29 = v50;
    sub_232BA6A3C();
    v17 = v49;
    v28 = v50;
    sub_232BA6A3C();
    v9 = v49;
    v27 = v50;
    sub_232BA6A3C();
    v16 = v49;
    v26 = v50;
    sub_232BA6A3C();
    v15 = v49;
    v25 = v50;
    sub_232BA674C();
    sub_232BA6A3C();
    v14 = v49;
    v24 = v50;
    sub_232BA5A14();
    sub_232BA70C0();
    sub_232BA6A3C();
    v10 = sub_232CE98D0();
    sub_232BA5190(v10);
    (*(v11 + 8))(v2);
    sub_232BA7060(v90);
    HIWORD(__src[0]) = v12;
    LOBYTE(__src[0]) = v49;
    BYTE1(__src[0]) = v49;
    BYTE1(v49) = v49;
    sub_232BA7060(v90);
    HIWORD(v49) = v13;
    v50 = v46;
    __src[1] = v46;
    __src[2] = v8;
    v51 = v8;
    v52 = v45;
    __src[3] = v45;
    __src[4] = v91;
    v53 = v91;
    v54 = v23;
    __src[5] = v23;
    __src[6] = v39;
    v55 = v39;
    v56 = v44;
    __src[7] = v44;
    __src[8] = v38;
    v57 = v38;
    v58 = v40;
    __src[9] = v40;
    __src[10] = v37;
    v59 = v37;
    v60 = v43;
    __src[11] = v43;
    __src[12] = v36;
    v61 = v36;
    v62 = v42;
    __src[13] = v42;
    __src[14] = v35;
    v63 = v35;
    v64 = v41;
    __src[15] = v41;
    __src[16] = v34;
    v65 = v34;
    v66 = v22;
    __src[17] = v22;
    __src[18] = v33;
    v67 = v33;
    v68 = v21;
    __src[19] = v21;
    __src[20] = v32;
    v69 = v32;
    v70 = v20;
    __src[21] = v20;
    __src[22] = v31;
    v71 = v31;
    v72 = v19;
    __src[23] = v19;
    __src[24] = v30;
    v73 = v30;
    v74 = v18;
    __src[25] = v18;
    __src[26] = v29;
    v75 = v29;
    v76 = v17;
    __src[27] = v17;
    __src[28] = v28;
    v77 = v28;
    v78 = v9;
    __src[29] = v9;
    __src[30] = v27;
    v79 = v27;
    v80 = v16;
    __src[31] = v16;
    __src[32] = v26;
    v81 = v26;
    v82 = v15;
    __src[33] = v15;
    __src[34] = v25;
    v83 = v25;
    __src[35] = v14;
    __src[36] = v24;
    v84 = v14;
    v85 = v24;
    v86 = v88;
    __src[37] = v88;
    __src[38] = v89;
    v87 = v89;
    sub_232BA215C(__src, v47);
    sub_232BA2194(&v49);
    memcpy(v4, __src, 0x138uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232B88784()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_2814E3F30);
  sub_232B135C4(v0, qword_2814E3F30);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF8A10;
  sub_232BA20B4();
  sub_232CE9910();
  sub_232BA2108();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232B8970C()
{
  sub_232BA66A0();
  sub_232BA71F4();
  sub_232BA7248();
  sub_232CE98C0();
  if (v1)
  {
    v3 = sub_232CE98D0();
    sub_232BA5190(v3);
    (*(v4 + 8))(v0);
  }

  else
  {
    v5 = v29;
    v6 = v30;
    sub_232BA56B0();
    sub_232CE98C0();
    v7 = v29;
    v56 = v30;
    sub_232BA6BFC();
    v26 = v30;
    sub_232CE98C0();
    v18 = v29;
    v25 = v30;
    sub_232CE98C0();
    v17 = v29;
    v24 = v30;
    sub_232BA6BFC();
    v16 = v29;
    v23 = v30;
    sub_232BA6BFC();
    v15 = v29;
    v22 = v30;
    sub_232BA6BFC();
    v14 = v29;
    v21 = v30;
    sub_232BA56B0();
    sub_232CE98C0();
    v12 = v29;
    v13 = v29;
    v20 = v30;
    sub_232BA56B0();
    sub_232CE98C0();
    v11 = v29;
    v19 = v30;
    sub_232BA1EE8();
    sub_232CE98C0();
    v8 = v29;
    sub_232BA6BFC();
    v9 = sub_232CE98D0();
    sub_232BA5190(v9);
    (*(v10 + 8))(v0);
    __src[0] = v5;
    __src[1] = v6;
    __src[2] = v7;
    __src[3] = v56;
    __src[4] = v18;
    __src[5] = v26;
    __src[6] = v17;
    __src[7] = v25;
    __src[8] = v16;
    __src[9] = v24;
    __src[10] = v15;
    __src[11] = v23;
    __src[12] = v13;
    __src[13] = v22;
    __src[14] = v14;
    __src[15] = v21;
    __src[16] = v12;
    __src[17] = v20;
    __src[18] = v11;
    __src[19] = v19;
    LOBYTE(__src[20]) = v8;
    *(&__src[20] + 1) = v55[0];
    HIDWORD(__src[20]) = *(v55 + 3);
    __src[21] = v53;
    __src[22] = v54;
    v29 = v5;
    v30 = v6;
    v31 = v7;
    v32 = v56;
    v33 = v18;
    v34 = v26;
    v35 = v17;
    v36 = v25;
    v37 = v16;
    v38 = v24;
    v39 = v15;
    v40 = v23;
    v41 = v13;
    v42 = v22;
    v43 = v14;
    v44 = v21;
    v45 = v12;
    v46 = v20;
    v47 = v11;
    v48 = v19;
    v49 = v8;
    *v50 = v55[0];
    *&v50[3] = *(v55 + 3);
    v51 = v53;
    v52 = v54;
    sub_232BA21C4(__src, v27);
    sub_232BA21FC(&v29);
    memcpy(v2, __src, 0xB8uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232B89EA0()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_2814E3F78);
  sub_232B135C4(v0, qword_2814E3F78);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF89F0;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232BA1EE8();
  sub_232CE9910();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232B8AF2C()
{
  sub_232BA66A0();
  v3 = v2;
  v5 = v4;
  sub_232BA667C();
  sub_232CE98C0();
  if (v0)
  {
    v6 = sub_232CE98D0();
    sub_232BA5190(v6);
    (*(v7 + 8))(v3);
  }

  else
  {
    sub_232BA6C14();
    sub_232CE98C0();
    sub_232BA6728();
    v66 = v8;
    sub_232BA6C14();
    sub_232CE98C0();
    sub_232BA6728();
    v24 = v9;
    sub_232CE98C0();
    sub_232BA6728();
    v23 = v10;
    sub_232CE98C0();
    sub_232BA6728();
    v22 = v11;
    sub_232BA5C14(0x5F6C65746F68);
    sub_232CE98C0();
    sub_232BA6728();
    v21 = v12;
    sub_232CE98C0();
    sub_232BA6A9C();
    sub_232BA6728();
    v20 = v13;
    sub_232BA5F74();
    sub_232CE98C0();
    sub_232BA6728();
    v19 = v14;
    sub_232BA5B78();
    sub_232BA6A9C();
    sub_232CE98C0();
    sub_232BA6A9C();
    sub_232BA60C4();
    sub_232CE98C0();
    sub_232BA60B4();
    sub_232CE98C0();
    sub_232BA6C14();
    sub_232BA6A24();
    sub_232BA6C14();
    sub_232BA6A24();
    sub_232BA1EE8();
    sub_232BA6A24();
    sub_232BA6C14();
    sub_232BA6A24();
    sub_232BA6A24();
    sub_232BA5B28(0x6D6F6F72u);
    sub_232BA6A24();
    sub_232BA6A24();
    v15 = sub_232CE98D0();
    sub_232BA5190(v15);
    (*(v16 + 8))(v3);
    sub_232BA7054(v65);
    HIDWORD(__src[26]) = v17;
    __src[0] = v27;
    __src[1] = v28;
    v29 = v1;
    __src[2] = v1;
    __src[3] = v66;
    v30 = v66;
    v31 = v1;
    __src[4] = v1;
    __src[5] = v24;
    v32 = v24;
    v33 = v1;
    __src[6] = v1;
    __src[7] = v23;
    v34 = v23;
    v35 = v1;
    __src[8] = v1;
    __src[9] = v22;
    v36 = v22;
    v37 = v1;
    __src[10] = v1;
    __src[11] = v21;
    v38 = v21;
    v39 = v1;
    __src[12] = v1;
    __src[13] = v20;
    v40 = v20;
    v41 = v1;
    __src[14] = v1;
    __src[15] = v19;
    v42 = v19;
    v43 = v27;
    __src[16] = v27;
    __src[17] = v28;
    v44 = v28;
    v45 = v27;
    __src[18] = v27;
    __src[19] = v28;
    v46 = v28;
    v47 = v27;
    __src[20] = v27;
    __src[21] = v28;
    v48 = v28;
    v49 = v27;
    __src[22] = v27;
    __src[23] = v28;
    v50 = v28;
    v51 = v27;
    __src[24] = v27;
    __src[25] = v28;
    v52 = v28;
    LOBYTE(__src[26]) = v27;
    v53 = v27;
    sub_232BA7054(v65);
    v54 = v18;
    v55 = v27;
    __src[27] = v27;
    __src[28] = v28;
    v56 = v28;
    v57 = v27;
    __src[29] = v27;
    __src[30] = v28;
    v58 = v28;
    __src[31] = v27;
    __src[32] = v28;
    v59 = v27;
    v60 = v28;
    v61 = v63;
    __src[33] = v63;
    __src[34] = v64;
    v62 = v64;
    sub_232BA222C(__src, v25);
    sub_232BA2264(&v27);
    memcpy(v5, __src, 0x118uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232B8BBE4()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_2814E3E50);
  sub_232B135C4(v0, qword_2814E3E50);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF6730;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232BA1EE8();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232B8C05C()
{
  sub_232B35110();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  sub_232B2D120(v7);
  v9 = *(v8 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  sub_232BA6FF8();
  v11 = sub_232B679D8(*v0, *(v0 + 8), v6, v4, &unk_28480D9B0);
  v13 = MEMORY[0x277D84F98];
  v14 = MEMORY[0x277D06620];
  v321 = v4;
  v322 = v6;
  if (v12)
  {
    v323 = v11;
    v324 = v12;
    sub_232CE8E10();
    sub_232B55484();
    sub_232B12504(v15, v16, v17, v18);
    sub_232B48080();

    sub_232BA63D0();
    sub_232CEA3D0();
    v20 = v19;
    sub_232BA4D50(v1, &qword_27DDC7398, &unk_232CF9070);
    if ((v20 & 1) == 0)
    {
      v30 = [objc_opt_self() sharedInstance];
      sub_232BA62A4();
      v31 = sub_232CE9D20();

      v32 = [v30 nameForCarrier_];

      sub_232CE9D50();
      v14 = MEMORY[0x277D06620];
      v33 = *MEMORY[0x277D06620];
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA54D4();
      sub_232B1FCE4();
      v34 = *MEMORY[0x277D06618];
      swift_isUniquelyReferenced_nonNull_native();
      goto LABEL_8;
    }

    v21 = [objc_opt_self() sharedInstance];
    sub_232BA62A4();
    v22 = sub_232CE9D20();
    v23 = [v21 carrierIataCodeForCarrierName_];

    v24 = sub_232CE9D50();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v14 = MEMORY[0x277D06620];
      v28 = *MEMORY[0x277D06620];
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5678();
      sub_232B1FCE4();
      v29 = *MEMORY[0x277D06618];
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA6050();
LABEL_8:
      sub_232B1FCE4();
      v13 = v323;
      v6 = v322;
      goto LABEL_9;
    }

    v6 = v322;
    v14 = MEMORY[0x277D06620];
  }

LABEL_9:
  v35 = *MEMORY[0x277D06630];
  v36 = *(v2 + 16);
  v37 = *(v2 + 24);
  sub_232BA5E88();
  v43 = sub_232B679D8(v38, v39, v40, v41, v42);
  if (v44)
  {
    v323 = v43;
    v324 = v44;
    sub_232CE8E10();
    sub_232B55484();
    sub_232B12504(v45, v46, v47, v48);
    sub_232B48080();

    sub_232BA63D0();
    sub_232CEA3D0();
    v50 = v49;
    sub_232BA4D50(v1, &qword_27DDC7398, &unk_232CF9070);

    if ((v50 & 1) == 0)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5678();
      sub_232BA5FF8();
      sub_232B1FCE4();
      v13 = v323;
      goto LABEL_15;
    }
  }

  sub_232BA655C();
  if (v51)
  {
    sub_232BA5CA0();
    swift_isUniquelyReferenced_nonNull_native();
    v323 = v13;
    v52 = v14;
    v53 = *(v13 + 24);
    sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
    sub_232BA53E0();
    v14 = v52;
    sub_232CEA5C0();
    sub_232BA5F68();

    sub_232BA5744();
    sub_232BA4E80();
    sub_232BA4DA4(v55, v56);
    sub_232BA550C();
    v6 = v322;
    sub_232CEA5E0();
  }

LABEL_15:
  sub_232B2053C(*v14, v13);
  if (v57)
  {
    v58 = v57;
    v59 = sub_232BA5CAC();
    sub_232B2053C(v59, v60);
    if (v61)
    {
      v35 = v61;
      v62 = *MEMORY[0x277D06628];
      v324 = v58;

      v63 = sub_232BA7218();
      MEMORY[0x238391C30](v63);

      v64 = sub_232BA62A4();
      MEMORY[0x238391C30](v64);

      v14 = v58;
      swift_isUniquelyReferenced_nonNull_native();
      v323 = v13;
      v6 = v322;
      sub_232BA6628();
      sub_232B1FCE4();
    }

    else
    {
    }
  }

  v65 = *MEMORY[0x277D066B8];
  v66 = *(v2 + 32);
  v67 = *(v2 + 40);
  sub_232BA5E88();
  sub_232B679D8(v68, v69, v70, v71, v72);
  if (v73)
  {
    sub_232BA5D68();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA5678();
    sub_232BA5D4C();
    v13 = v323;
  }

  else
  {
    sub_232BA658C();
    if (v74)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5744();
      sub_232BA4E80();
      sub_232BA4DA4(v76, v77);
      sub_232BA550C();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v78 = *MEMORY[0x277D064B8];
  v79 = *(v2 + 64);
  v80 = *(v2 + 72);
  sub_232BA5E88();
  sub_232B679D8(v81, v82, v83, v84, v85);
  if (v86)
  {
    sub_232BA5D68();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA5678();
    sub_232BA5D4C();
    v13 = v323;
  }

  else
  {
    sub_232BA658C();
    if (v87)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5744();
      sub_232BA4E80();
      sub_232BA4DA4(v89, v90);
      sub_232BA550C();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v91 = *MEMORY[0x277D067B0];
  v92 = *(v2 + 80);
  v93 = *(v2 + 88);
  sub_232BA5E88();
  sub_232B679D8(v94, v95, v96, v97, v98);
  if (v99)
  {
    sub_232BA5D68();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA5678();
    sub_232BA5D4C();
    v13 = v323;
  }

  else
  {
    sub_232BA658C();
    if (v100)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5744();
      sub_232BA4E80();
      sub_232BA4DA4(v102, v103);
      sub_232BA550C();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v104 = *(v2 + 368);
  sub_232BA740C();
  v105 = *MEMORY[0x277D06560];
  v106 = *(v2 + 112);
  v107 = *(v2 + 120);
  v108 = *(v2 + 128);
  v109 = *(v2 + 136);
  sub_232BA58C0();
  sub_232B787F0(v110, v111, v112, v113, v114, v115, v116, v117);
  if (v118)
  {
    sub_232BA6298();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA5678();
    sub_232B45AB0();
    sub_232B1FCE4();
    v13 = v323;
  }

  else
  {
    sub_232BA66B8();
    if (v119)
    {
      sub_232BA67B0();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5918();
      sub_232BA4E80();
      sub_232BA4DA4(v121, v122);
      sub_232BA5880();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v123 = *MEMORY[0x277D06448];
  v124 = *(v2 + 240);
  v125 = *(v2 + 248);
  v126 = *(v2 + 256);
  v127 = *(v2 + 264);
  sub_232BA58C0();
  sub_232B787F0(v128, v129, v130, v131, v132, v133, v134, v135);
  if (v136)
  {
    sub_232BA6298();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA5678();
    sub_232B45AB0();
    sub_232B1FCE4();
    v13 = v323;
  }

  else
  {
    sub_232BA66B8();
    if (v137)
    {
      sub_232BA67B0();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5918();
      sub_232BA4E80();
      sub_232BA4DA4(v139, v140);
      sub_232BA5880();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v141 = *MEMORY[0x277D064B0];
  v142 = *(v2 + 144);
  v143 = *(v2 + 152);
  v144 = *(v2 + 160);
  v145 = *(v2 + 168);
  sub_232BA58C0();
  sub_232B787F0(v146, v147, v148, v149, v150, v151, v152, v153);
  if (v154)
  {
    sub_232BA65BC();
    sub_232BA5678();
    sub_232BA64A4();
    sub_232B1FCE4();
    v13 = v323;
  }

  else
  {
    sub_232BA66B8();
    if (v155)
    {
      sub_232BA6574();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5764();
      sub_232BA4E80();
      sub_232BA4DA4(v157, v158);
      sub_232BA5578();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v159 = *MEMORY[0x277D06558];
  v160 = *(v2 + 176);
  v161 = *(v2 + 184);
  sub_232BA5E88();
  sub_232B679D8(v162, v163, v164, v165, v166);
  if (v167)
  {
    sub_232BA5D0C();
    sub_232BA54D4();
    sub_232BA65A4();
    v13 = v323;
  }

  else
  {
    sub_232BA655C();
    if (v168)
    {
      sub_232BA6574();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5764();
      sub_232BA4E80();
      sub_232BA4DA4(v170, v171);
      sub_232BA5578();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v172 = *MEMORY[0x277D06550];
  v173 = *(v2 + 192);
  v174 = *(v2 + 200);
  sub_232BA5E88();
  sub_232B679D8(v175, v176, v177, v178, v179);
  if (v180)
  {
    sub_232BA5D0C();
    sub_232BA54D4();
    sub_232BA65A4();
    v13 = v323;
  }

  else
  {
    sub_232BA655C();
    if (v181)
    {
      sub_232BA6574();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5764();
      sub_232BA4E80();
      sub_232BA4DA4(v183, v184);
      sub_232BA5578();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v185 = *MEMORY[0x277D06570];
  v186 = *(v2 + 208);
  v187 = *(v2 + 216);
  sub_232BA5E88();
  sub_232B679D8(v188, v189, v190, v191, v192);
  if (v193)
  {
    sub_232BA5D0C();
    sub_232BA54D4();
    sub_232BA65A4();
    v13 = v323;
  }

  else
  {
    sub_232BA655C();
    if (v194)
    {
      sub_232BA6574();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5764();
      sub_232BA4E80();
      sub_232BA4DA4(v196, v197);
      sub_232BA5578();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v198 = *MEMORY[0x277D06568];
  v199 = *(v2 + 224);
  v200 = *(v2 + 232);
  sub_232BA5E88();
  sub_232B679D8(v201, v202, v203, v204, v205);
  if (v206)
  {
    sub_232BA5D0C();
    sub_232BA54D4();
    sub_232BA65A4();
    v13 = v323;
  }

  else
  {
    sub_232BA655C();
    if (v207)
    {
      sub_232BA6574();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5764();
      sub_232BA4E80();
      sub_232BA4DA4(v209, v210);
      sub_232BA5578();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v211 = *MEMORY[0x277D066C8];
  v212 = *(v2 + 96);
  v213 = *(v2 + 104);
  sub_232BA5E88();
  sub_232B679D8(v214, v215, v216, v217, v218);
  if (v219)
  {
    sub_232BA5D0C();
    sub_232BA54D4();
    sub_232BA65A4();
    v13 = v323;
  }

  else
  {
    sub_232BA655C();
    if (v220)
    {
      sub_232BA6574();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5764();
      sub_232BA4E80();
      sub_232BA4DA4(v222, v223);
      sub_232BA5578();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v224 = *MEMORY[0x277D06440];
  v225 = *(v2 + 272);
  v226 = *(v2 + 280);
  sub_232BA5E88();
  sub_232B679D8(v227, v228, v229, v230, v231);
  if (v232)
  {
    sub_232BA5D0C();
    sub_232BA54D4();
    sub_232BA65A4();
    v13 = v323;
  }

  else
  {
    sub_232BA655C();
    if (v233)
    {
      sub_232BA6574();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5764();
      sub_232BA4E80();
      sub_232BA4DA4(v235, v236);
      sub_232BA5578();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v237 = *MEMORY[0x277D06438];
  v238 = *(v2 + 288);
  v239 = *(v2 + 296);
  sub_232BA5E88();
  sub_232B679D8(v240, v241, v242, v243, v244);
  if (v245)
  {
    sub_232BA5D0C();
    sub_232BA54D4();
    sub_232BA65A4();
    v13 = v323;
  }

  else
  {
    sub_232BA655C();
    if (v246)
    {
      sub_232BA6574();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5764();
      sub_232BA4E80();
      sub_232BA4DA4(v248, v249);
      sub_232BA5578();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v250 = *MEMORY[0x277D06458];
  v251 = *(v2 + 304);
  v252 = *(v2 + 312);
  sub_232BA5E88();
  sub_232B679D8(v253, v254, v255, v256, v257);
  if (v258)
  {
    sub_232BA5D0C();
    sub_232BA54D4();
    sub_232BA65A4();
    v13 = v323;
  }

  else
  {
    sub_232BA655C();
    if (v259)
    {
      sub_232BA6574();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5764();
      sub_232BA4E80();
      sub_232BA4DA4(v261, v262);
      sub_232BA5578();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v263 = *MEMORY[0x277D06450];
  v264 = *(v2 + 320);
  v265 = *(v2 + 328);
  sub_232BA5E88();
  sub_232B679D8(v266, v267, v268, v269, v270);
  if (v271)
  {
    sub_232BA5D0C();
    sub_232BA54D4();
    sub_232BA65A4();
    v13 = v323;
  }

  else
  {
    sub_232BA655C();
    if (v272)
    {
      sub_232BA6574();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5764();
      sub_232BA4E80();
      sub_232BA4DA4(v274, v275);
      sub_232BA5578();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v276 = *MEMORY[0x277D06580];
  v277 = *(v2 + 336);
  v278 = *(v2 + 344);
  sub_232BA5E88();
  sub_232B679D8(v279, v280, v281, v282, v283);
  if (v284)
  {
    sub_232BA5D0C();
    sub_232BA54D4();
    sub_232BA65A4();
    v13 = v323;
  }

  else
  {
    sub_232BA655C();
    if (v285)
    {
      sub_232BA6574();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5764();
      sub_232BA4E80();
      sub_232BA4DA4(v287, v288);
      sub_232BA5578();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v289 = *MEMORY[0x277D06520];
  v290 = *(v2 + 352);
  v291 = *(v2 + 360);
  sub_232BA5E88();
  sub_232B679D8(v292, v293, v294, v295, v296);
  if (v297)
  {
    sub_232BA5D0C();
    sub_232BA54D4();
    sub_232BA65A4();
    v13 = v323;
  }

  else
  {
    sub_232BA655C();
    if (v298)
    {
      sub_232BA6574();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5764();
      sub_232BA4E80();
      sub_232BA4DA4(v300, v301);
      sub_232BA5578();
      v6 = v322;
      sub_232CEA5E0();
    }
  }

  v302 = *MEMORY[0x277D06798];
  v303 = *MEMORY[0x277D06538];
  v304 = v2;
  sub_232B7D3F0(*(v2 + 376), *(v2 + 384), *(v2 + 392), *(v2 + 400), v6, v321);
  sub_232BA7094();
  if (v305)
  {
    sub_232BA65BC();
    sub_232BA5678();
    sub_232BA6980();
  }

  else
  {
    sub_232BA66B8();
    if (v306)
    {
      sub_232BA6D04();
      swift_isUniquelyReferenced_nonNull_native();
      v323 = v13;
      v307 = *(v13 + 24);
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      v304 = &v323;
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5B8C();
      type metadata accessor for DUExtractionAttributeKey();
      sub_232BA4E80();
      sub_232BA4DA4(v309, v310);
      sub_232BA5E64();
      sub_232CEA5E0();
    }
  }

  if (v6)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA5678();
    sub_232BA5FEC();
    sub_232B1FCE4();
  }

  else
  {
    sub_232BA655C();
    if (v311)
    {
      sub_232BA6A54();
      sub_232BA570C();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA53E0();
      sub_232CEA5C0();
      sub_232BA5F68();

      sub_232BA5BA0();
      sub_232BA4E80();
      sub_232BA4DA4(v313, v314);
      sub_232BA59E0();
      sub_232CEA5E0();
    }
  }

  v315 = *MEMORY[0x277D06608];
  v316 = *MEMORY[0x277D06820];
  sub_232CE9D50();
  sub_232BA5EAC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_232BA5678();
  sub_232B41C8C();
  sub_232B1FCE4();
  v317 = v323;
  v318 = *MEMORY[0x277D065F8];
  sub_232BA6530();
  sub_232BA5F44();

  swift_isUniquelyReferenced_nonNull_native();
  v323 = v317;
  sub_232BA5C64();
  sub_232B1FCE4();
  v319 = v323;
  v320 = *MEMORY[0x277D06578];
  sub_232BA6504();
  sub_232BA5F44();

  swift_isUniquelyReferenced_nonNull_native();
  v323 = v319;
  sub_232BA5C64();
  sub_232B1FCE4();
  sub_232B20A00();
}

void sub_232B8D530()
{
  sub_232BA66A0();
  v2 = v1;
  v4 = v3;
  sub_232BA56B0();
  sub_232CE98C0();
  if (v0)
  {
    v5 = sub_232CE98D0();
    sub_232BA5190(v5);
    (*(v6 + 8))(v2);
  }

  else
  {
    sub_232BA6B5C();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232BA56F8();
    sub_232BA5F9C();
    sub_232CE98C0();
    sub_232BA7274();
    v18 = v7;
    sub_232BA56B0();
    sub_232CE98C0();
    sub_232BA7274();
    v17 = v8;
    sub_232BA70D4();
    sub_232CE98C0();
    sub_232BA7274();
    v16 = v9;
    v10 = sub_232BA7268();
    sub_232BA5B28(v10);
    sub_232CE98C0();
    sub_232BA60C4();
    sub_232BA6344();
    sub_232BA7274();
    v15 = v11;
    sub_232CE98C0();
    sub_232BA60B4();
    sub_232BA6344();
    sub_232CE98C0();
    sub_232BA5F74();
    sub_232CE98C0();
    sub_232BA5B78();
    sub_232CE98C0();
    sub_232BA64B0();
    sub_232BA64B0();
    sub_232BA64B0();
    sub_232BA6344();
    sub_232BA68E8();
    sub_232BA6B4C();
    sub_232BA68E8();
    sub_232BA68E8();
    sub_232BA64B0();
    sub_232BA64B0();
    sub_232BA56B0();
    sub_232BA68E8();
    sub_232BA68E8();
    sub_232BA6B5C();
    sub_232BA68E8();
    sub_232BA64B0();
    sub_232BA1EE8();
    v12 = sub_232BA5AD8();
    sub_232BA6430(v12);
    sub_232BA68E8();
    sub_232BA646C();
    sub_232BA68E8();
    sub_232BA56C0();
    sub_232BA68E8();
    v13 = sub_232CE98D0();
    sub_232BA5190(v13);
    (*(v14 + 8))(v2);
    *(&__src[46] + 1) = v75[0];
    *v68 = v75[0];
    HIDWORD(__src[46]) = *(v75 + 3);
    __src[0] = v21;
    __src[1] = v22;
    v23 = v21;
    __src[2] = v21;
    __src[3] = v22;
    v24 = v22;
    v25 = v21;
    __src[4] = v21;
    __src[5] = v22;
    v26 = v22;
    v27 = 0;
    __src[6] = 0;
    __src[7] = v18;
    v28 = v18;
    v29 = 0;
    __src[8] = 0;
    __src[9] = v17;
    v30 = v17;
    v31 = 0;
    __src[10] = 0;
    __src[11] = v16;
    v32 = v16;
    v33 = 0;
    __src[12] = 0;
    __src[13] = v15;
    v34 = v15;
    v35 = v21;
    __src[14] = v21;
    __src[15] = v22;
    v36 = v22;
    v37 = v21;
    __src[16] = v21;
    __src[17] = v22;
    v38 = v22;
    v39 = v21;
    __src[18] = v21;
    __src[19] = v22;
    v40 = v22;
    v41 = v21;
    __src[20] = v21;
    __src[21] = v22;
    v42 = v22;
    v43 = v21;
    __src[22] = v21;
    __src[23] = v22;
    v44 = v22;
    v45 = v21;
    __src[24] = v21;
    __src[25] = v22;
    v46 = v22;
    v47 = v21;
    __src[26] = v21;
    __src[27] = v22;
    v48 = v22;
    v49 = v21;
    __src[28] = v21;
    __src[29] = v22;
    v50 = v22;
    v51 = v21;
    __src[30] = v21;
    __src[31] = v22;
    v52 = v22;
    v53 = v21;
    __src[32] = v21;
    __src[33] = v22;
    v54 = v22;
    v55 = v21;
    __src[34] = v21;
    __src[35] = v22;
    v56 = v22;
    v57 = v21;
    __src[36] = v21;
    __src[37] = v22;
    v58 = v22;
    v59 = v21;
    __src[38] = v21;
    __src[39] = v22;
    v60 = v22;
    v61 = v21;
    __src[40] = v21;
    __src[41] = v22;
    v62 = v22;
    v63 = v21;
    __src[42] = v21;
    __src[43] = v22;
    v64 = v22;
    v65 = v21;
    __src[44] = v21;
    __src[45] = v22;
    v66 = v22;
    LOBYTE(__src[46]) = v21;
    v67 = v21;
    *&v68[3] = *(v75 + 3);
    __src[47] = v21;
    __src[48] = v22;
    v69 = v21;
    v70 = v22;
    v71 = v73;
    __src[49] = v73;
    __src[50] = v74;
    v72 = v74;
    sub_232BA2294(__src, v19);
    sub_232BA22CC(&v21);
    memcpy(v4, __src, 0x198uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232B8E8B0()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_2814E3E08);
  sub_232B135C4(v0, qword_2814E3E08);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF8A20;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232BA1EE8();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232B901C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_232BA66A0();
  sub_232BA71F4();
  sub_232CE98C0();
  if (v14)
  {
    v16 = sub_232CE98D0();
    sub_232BA5190(v16);
    (*(v17 + 8))(v13);
  }

  else
  {
    sub_232BA56F8();
    sub_232BA5F9C();
    sub_232CE98C0();
    sub_232BA56B0();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232BA6F7C();
    sub_232BA70FC();
    sub_232BA718C();
    sub_232CE98C0();
    sub_232BA6F7C();
    sub_232BA6B4C();
    sub_232BA718C();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232BA6F7C();
    sub_232BA56B0();
    sub_232CE98C0();
    sub_232BA6D58();
    sub_232BA5F74();
    sub_232BA718C();
    sub_232BA6D58();
    sub_232BA5B78();
    sub_232BA718C();
    sub_232BA6D58();
    sub_232BA6ACC();
    sub_232BA6D58();
    sub_232BA646C();
    sub_232BA6D58();
    sub_232BA56C0();
    sub_232BA6D58();
    sub_232BA1EE8();
    sub_232BA6D58();
    v18 = sub_232CE98D0();
    sub_232BA5190(v18);
    (*(v19 + 8))(v13);
    __src[0] = v22;
    __src[1] = v23;
    v24 = v22;
    __src[2] = v22;
    __src[3] = v23;
    v25 = v23;
    v26 = v22;
    __src[4] = v22;
    __src[5] = v23;
    v27 = v23;
    v28 = v22;
    __src[6] = v22;
    __src[7] = v23;
    v29 = v23;
    v30 = v22;
    __src[8] = v22;
    __src[9] = v23;
    v31 = v23;
    v32 = v22;
    __src[10] = v22;
    __src[11] = v23;
    v33 = v23;
    v34 = v22;
    __src[12] = v22;
    __src[13] = v23;
    v35 = v23;
    v36 = v22;
    __src[14] = v22;
    __src[15] = v23;
    v37 = v23;
    v38 = v22;
    __src[16] = v22;
    __src[17] = v23;
    v39 = v23;
    v40 = v22;
    __src[18] = v22;
    __src[19] = v23;
    v41 = v23;
    v42 = v22;
    __src[20] = v22;
    __src[21] = v23;
    v43 = v23;
    v44 = v22;
    __src[22] = v22;
    __src[23] = v23;
    v45 = v23;
    v46 = v22;
    __src[24] = v22;
    __src[25] = v23;
    v47 = v23;
    v48 = v22;
    __src[26] = v22;
    __src[27] = v23;
    v49 = v23;
    v50 = v22;
    __src[28] = v22;
    __src[29] = v23;
    v51 = v23;
    v52 = v22;
    __src[30] = v22;
    __src[31] = v23;
    v53 = v23;
    v54 = v22;
    __src[32] = v22;
    __src[33] = v23;
    v55 = v23;
    LOBYTE(__src[34]) = a13;
    v56 = a13;
    sub_232BA22FC(__src, v20);
    sub_232BA2334(&v22);
    memcpy(v15, __src, 0x111uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232B90EAC()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_2814E3E70);
  sub_232B135C4(v0, qword_2814E3E70);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF6730;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232BA1EE8();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232B930C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_232BA66A0();
  v17 = v16;
  v19 = v18;
  sub_232BA71F4();
  sub_232CE98C0();
  if (v14)
  {
    v20 = sub_232CE98D0();
    sub_232BA5190(v20);
    (*(v21 + 8))(v13);
  }

  else
  {
    sub_232BA55DC();
    sub_232CE98C0();
    sub_232BA56B0();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232BA6CB0();
    v37 = v22;
    sub_232BA6F7C();
    sub_232BA6CB0();
    v36 = v23;
    v24 = sub_232BA7268();
    sub_232BA5B28(v24);
    sub_232CE98C0();
    sub_232BA6CB0();
    v35 = v25;
    v26 = sub_232BA5AD8();
    sub_232BA5C14(v26);
    sub_232CE98C0();
    sub_232BA6CB0();
    v34 = v27;
    sub_232BA6F7C();
    sub_232BA6CB0();
    v33 = v28;
    sub_232BA56B0();
    sub_232CE98C0();
    sub_232BA56B0();
    sub_232CE98C0();
    sub_232BA5AD8();
    sub_232BA60C4();
    sub_232CE98C0();
    sub_232BA60B4();
    sub_232BA6F34();
    v29 = sub_232BA60F0();
    sub_232BA7110(v29);
    sub_232BA6F34();
    v30 = sub_232BA60F0();
    sub_232BA70E8(v30);
    sub_232BA6F34();
    sub_232BA6F34();
    sub_232BA1EE8();
    sub_232BA6F34();
    v31 = sub_232CE98D0();
    sub_232BA5190(v31);
    (*(v32 + 8))(v13);
    __src[0] = v40;
    __src[1] = v41;
    __src[2] = v40;
    __src[3] = v41;
    __src[4] = v40;
    __src[5] = v41;
    __src[6] = 0;
    __src[7] = v37;
    __src[8] = 0;
    __src[9] = v36;
    __src[10] = 0;
    __src[11] = v35;
    __src[12] = 0;
    __src[13] = v34;
    __src[14] = 0;
    __src[15] = v33;
    __src[16] = v40;
    __src[17] = v41;
    __src[18] = v40;
    __src[19] = v41;
    __src[20] = v40;
    __src[21] = v41;
    __src[22] = v40;
    __src[23] = v41;
    __src[24] = v40;
    __src[25] = v41;
    __src[26] = v40;
    __src[27] = v41;
    __src[28] = v40;
    __src[29] = v41;
    LOBYTE(__src[30]) = a13;
    v42 = v40;
    v43 = v41;
    v44 = v40;
    v45 = v41;
    v46 = 0;
    v47 = v37;
    v48 = 0;
    v49 = v36;
    v50 = 0;
    v51 = v35;
    v52 = 0;
    v53 = v34;
    v54 = 0;
    v55 = v33;
    v56 = v40;
    v57 = v41;
    v58 = v40;
    v59 = v41;
    v60 = v40;
    v61 = v41;
    v62 = v40;
    v63 = v41;
    v64 = v40;
    v65 = v41;
    v66 = v40;
    v67 = v41;
    v68 = v40;
    v69 = v41;
    v70 = a13;
    v19(__src, v38);
    v17(&v40);
    memcpy(v15, __src, 0xF1uLL);
  }

  sub_232BA6688();
}

void sub_232B93C0C()
{
  sub_232B35110();
  v1 = v0;
  v2 = sub_232CE9940();
  sub_232B135FC(v2, v1);
  v3 = sub_232B5EFF4();
  sub_232B135C4(v3, v4);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v5 = sub_232CE9920();
  sub_232B27FBC(v5);
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF8A30;
  sub_232BA6004();
  sub_232BA55DC();
  sub_232BA6004();
  sub_232BA56B0();
  sub_232BA6004();
  sub_232BA6004();
  sub_232BA6004();
  v10 = sub_232BA7268();
  sub_232BA5B28(v10);
  sub_232BA6004();
  v11 = sub_232BA5AD8();
  sub_232BA5C14(v11);
  sub_232BA6004();
  sub_232BA6004();
  sub_232BA56B0();
  sub_232BA6004();
  sub_232BA56B0();
  sub_232BA6004();
  sub_232BA60C4();
  sub_232BA6004();
  sub_232BA60B4();
  sub_232BA6004();
  v12 = sub_232BA60F0();
  sub_232BA7110(v12);
  sub_232BA6004();
  v13 = sub_232BA60F0();
  sub_232BA70E8(v13);
  sub_232BA6004();
  sub_232BA6004();
  sub_232BA1EE8();
  sub_232CE9910();
  sub_232CE9930();
  sub_232B20A00();
}

void sub_232B94780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_232BA66A0();
  v15 = v14;
  v17 = v16;
  sub_232BA5AD8();
  sub_232BA667C();
  sub_232CE98C0();
  if (v13)
  {
    v18 = sub_232CE98D0();
    sub_232BA5190(v18);
    (*(v19 + 8))(v15);
  }

  else
  {
    sub_232BA55DC();
    sub_232CE98C0();
    sub_232BA7040();
    sub_232CE98C0();
    sub_232BA6160();
    sub_232CE98C0();
    sub_232BA6160();
    sub_232BA667C();
    sub_232CE98C0();
    sub_232BA6C74();
    sub_232CE98C0();
    sub_232BA6C74();
    sub_232CE98C0();
    sub_232BA5AD8();
    sub_232CE98C0();
    sub_232BA1EE8();
    v20 = sub_232BA5AD8();
    sub_232BA6430(v20);
    sub_232CE98C0();
    v21 = sub_232CE98D0();
    sub_232BA5190(v21);
    (*(v22 + 8))(v15);
    __src[0] = v25;
    __src[1] = v26;
    __src[2] = v25;
    __src[3] = v26;
    __src[4] = v25;
    __src[5] = v26;
    __src[6] = v25;
    __src[7] = v26;
    __src[8] = v25;
    __src[9] = v26;
    __src[10] = v25;
    __src[11] = v26;
    __src[12] = v25;
    __src[13] = v26;
    __src[14] = v25;
    __src[15] = v26;
    LOBYTE(__src[16]) = a13;
    v27 = v25;
    v28 = v26;
    v29 = v25;
    v30 = v26;
    v31 = v25;
    v32 = v26;
    v33 = v25;
    v34 = v26;
    v35 = v25;
    v36 = v26;
    v37 = v25;
    v38 = v26;
    v39 = v25;
    v40 = v26;
    v41 = a13;
    sub_232BA2434(__src, v23);
    sub_232BA246C(&v25);
    memcpy(v17, __src, 0x81uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232B94D3C()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_2814E3F90);
  sub_232B135C4(v0, qword_2814E3F90);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF8A40;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232BA1EE8();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232B95D3C()
{
  sub_232BA66A0();
  v2 = v1;
  v4 = v3;
  sub_232BA667C();
  sub_232CE98C0();
  if (v0)
  {
    v5 = sub_232CE98D0();
    sub_232BA5190(v5);
    (*(v6 + 8))(v2);
  }

  else
  {
    sub_232BA55DC();
    sub_232CE98C0();
    sub_232BA5F9C();
    sub_232CE98C0();
    sub_232BA667C();
    sub_232CE98C0();
    sub_232BA7040();
    sub_232CE98C0();
    sub_232BA63BC(0x5F656E6F6870);
    sub_232CE98C0();
    sub_232BA56B0();
    sub_232CE98C0();
    sub_232BA56B0();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232BA646C();
    sub_232CE98C0();
    sub_232BA56C0();
    sub_232CE98C0();
    sub_232BA1EE8();
    sub_232BA6A24();
    sub_232BA6658();
    sub_232BA6A24();
    sub_232BA6374();
    sub_232BA6A24();
    sub_232BA6374();
    sub_232BA6A24();
    v7 = sub_232CE98D0();
    sub_232BA5190(v7);
    (*(v8 + 8))(v2);
    __src[0] = v11;
    __src[1] = v12;
    __src[2] = v11;
    __src[3] = v12;
    __src[4] = v11;
    __src[5] = v12;
    __src[6] = v11;
    __src[7] = v12;
    __src[8] = v11;
    __src[9] = v12;
    __src[10] = v11;
    __src[11] = v12;
    __src[12] = v11;
    __src[13] = v12;
    __src[14] = v11;
    __src[15] = v12;
    __src[16] = v11;
    __src[17] = v12;
    __src[18] = v11;
    __src[19] = v12;
    __src[20] = v11;
    __src[21] = v12;
    LOBYTE(__src[22]) = v11;
    *(&__src[22] + 1) = v43[0];
    HIDWORD(__src[22]) = *(v43 + 3);
    __src[23] = v11;
    __src[24] = v12;
    __src[25] = v11;
    __src[26] = v12;
    __src[27] = v41;
    __src[28] = v42;
    v13 = v11;
    v14 = v12;
    v15 = v11;
    v16 = v12;
    v17 = v11;
    v18 = v12;
    v19 = v11;
    v20 = v12;
    v21 = v11;
    v22 = v12;
    v23 = v11;
    v24 = v12;
    v25 = v11;
    v26 = v12;
    v27 = v11;
    v28 = v12;
    v29 = v11;
    v30 = v12;
    v31 = v11;
    v32 = v12;
    v33 = v11;
    *v34 = v43[0];
    *&v34[3] = *(v43 + 3);
    v35 = v11;
    v36 = v12;
    v37 = v11;
    v38 = v12;
    v39 = v41;
    v40 = v42;
    sub_232BA249C(__src, v9);
    sub_232BA24D4(&v11);
    memcpy(v4, __src, 0xE8uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232B96748()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_2814E3F60);
  sub_232B135C4(v0, qword_2814E3F60);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF8A50;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232BA1EE8();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232B97E90()
{
  sub_232BA66A0();
  sub_232BA71F4();
  sub_232CE98C0();
  if (v1)
  {
    v4 = sub_232CE98D0();
    sub_232BA5190(v4);
    (*(v5 + 8))(v0);
  }

  else
  {
    sub_232BA56B0();
    sub_232CE98C0();
    sub_232BA56F8();
    sub_232BA5F9C();
    sub_232CE98C0();
    sub_232BA6C38();
    v19 = v6;
    sub_232BA70D4();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232BA6C38();
    v18 = v7;
    sub_232CE98C0();
    sub_232BA6C38();
    v17 = v8;
    sub_232BA60C4();
    sub_232CE98C0();
    sub_232BA6C38();
    v16 = v9;
    sub_232BA60B4();
    sub_232CE98C0();
    sub_232BA6C38();
    v15 = v10;
    sub_232BA7268();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232BA7004();
    sub_232BA6B4C();
    sub_232BA6D40();
    sub_232BA7004();
    sub_232BA6D40();
    sub_232BA6D40();
    sub_232BA2504();
    sub_232BA6D40();
    sub_232BA1EE8();
    sub_232BA6D40();
    sub_232BA646C();
    sub_232BA6D40();
    sub_232BA56C0();
    sub_232BA6D40();
    v11 = sub_232CE98D0();
    sub_232BA5190(v11);
    (*(v12 + 8))(v0);
    sub_232BA7060(v59);
    HIWORD(__src[28]) = v13;
    __src[0] = v22;
    __src[1] = v23;
    v24 = v22;
    __src[2] = v22;
    __src[3] = v23;
    v25 = v23;
    v26 = v2;
    __src[4] = v2;
    __src[5] = v19;
    v27 = v19;
    v28 = v22;
    __src[6] = v22;
    __src[7] = v23;
    v29 = v23;
    v30 = v2;
    __src[8] = v2;
    __src[9] = v18;
    v31 = v18;
    v32 = v2;
    __src[10] = v2;
    __src[11] = v17;
    v33 = v17;
    v34 = v2;
    __src[12] = v2;
    __src[13] = v16;
    v35 = v16;
    v36 = v2;
    __src[14] = v2;
    __src[15] = v15;
    v37 = v15;
    v38 = v22;
    __src[16] = v22;
    __src[17] = v23;
    v39 = v23;
    v40 = v22;
    __src[18] = v22;
    __src[19] = v23;
    v41 = v23;
    v42 = v22;
    __src[20] = v22;
    __src[21] = v23;
    v43 = v23;
    v44 = v22;
    __src[22] = v22;
    __src[23] = v23;
    v45 = v23;
    v46 = v22;
    __src[24] = v22;
    __src[25] = v23;
    v47 = v23;
    v48 = v22;
    __src[26] = v22;
    __src[27] = v23;
    v49 = v23;
    LOBYTE(__src[28]) = v22;
    v50 = v22;
    BYTE1(__src[28]) = v22;
    v51 = v22;
    sub_232BA7060(v59);
    v52 = v14;
    __src[29] = v22;
    __src[30] = v23;
    v53 = v22;
    v54 = v23;
    v55 = v57;
    __src[31] = v57;
    __src[32] = v58;
    v56 = v58;
    sub_232BA2558(__src, v20);
    sub_232BA2590(&v22);
    memcpy(v3, __src, 0x108uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232B98AC4()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_2814E3EF8);
  sub_232B135C4(v0, qword_2814E3EF8);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF6730;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232BA2504();
  sub_232CE9910();
  sub_232BA1EE8();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232B98F50()
{
  sub_232BA66A0();
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = (*v0 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      memcpy(__dst, v2, 0x111uLL);
      sub_232BA22FC(__dst, v86);
      v4 = sub_232B35090();
      sub_232B8EEB0(v4);
      sub_232BA2334(__dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BA5784();
        v3 = v6;
      }

      sub_232BA5988();
      if (v5)
      {
        sub_232BA5848();
        v3 = v7;
      }

      sub_232BA5978();
      v2 += 280;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = v0[1];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      memcpy(v86, v10, sizeof(v86));
      sub_232BA2294(v86, v77);
      sub_232B35090();
      sub_232B8C05C();
      sub_232BA22CC(v86);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BA5784();
        v3 = v11;
      }

      sub_232BA5988();
      if (v5)
      {
        sub_232BA5848();
        v3 = v12;
      }

      sub_232BA5978();
      v10 += 408;
      --v9;
    }

    while (v9);
  }

  v13 = v0[2];
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      memcpy(v85, v15, sizeof(v85));
      sub_232BA222C(v85, v77);
      v16 = sub_232B35090();
      sub_232B8A1E4(v16);
      sub_232BA2264(v85);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BA5784();
        v3 = v17;
      }

      sub_232BA5988();
      if (v5)
      {
        sub_232BA5848();
        v3 = v18;
      }

      sub_232BA5978();
      v15 += 280;
      --v14;
    }

    while (v14);
  }

  v19 = v0[3];
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (v19 + 32);
    do
    {
      memcpy(v84, v21, sizeof(v84));
      sub_232BA21C4(v84, v77);
      v22 = sub_232B35090();
      sub_232B88C94(v22);
      sub_232BA21FC(v84);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BA5784();
        v3 = v23;
      }

      sub_232BA5988();
      if (v5)
      {
        sub_232BA5848();
        v3 = v24;
      }

      sub_232BA5978();
      v21 += 184;
      --v20;
    }

    while (v20);
  }

  v25 = v0[4];
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = (v25 + 32);
    do
    {
      memcpy(v83, v27, 0xF1uLL);
      sub_232BA2364(v83, v77);
      v28 = sub_232B35090();
      sub_232B91320(v28);
      sub_232BA239C(v83);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BA5784();
        v3 = v29;
      }

      sub_232BA5988();
      if (v5)
      {
        sub_232BA5848();
        v3 = v30;
      }

      sub_232BA5978();
      v27 += 248;
      --v26;
    }

    while (v26);
  }

  v31 = v0[5];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = (v31 + 32);
    do
    {
      memcpy(v82, v33, 0xF1uLL);
      sub_232BA23CC(v82, v77);
      v34 = sub_232B35090();
      sub_232B921FC(v34);
      sub_232BA2404(v82);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BA5784();
        v3 = v35;
      }

      sub_232BA5988();
      if (v5)
      {
        sub_232BA5848();
        v3 = v36;
      }

      sub_232BA5978();
      v33 += 248;
      --v32;
    }

    while (v32);
  }

  v37 = v0[6];
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = (v37 + 32);
    do
    {
      memcpy(v81, v39, 0x81uLL);
      sub_232BA2434(v81, v77);
      v40 = sub_232B35090();
      sub_232B93EC8(v40);
      sub_232BA246C(v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BA5784();
        v3 = v41;
      }

      sub_232BA5988();
      if (v5)
      {
        sub_232BA5848();
        v3 = v42;
      }

      sub_232BA5978();
      v39 += 136;
      --v38;
    }

    while (v38);
  }

  v43 = v0[7];
  v44 = *(v43 + 16);
  if (v44)
  {
    v45 = (v43 + 32);
    do
    {
      memcpy(v80, v45, sizeof(v80));
      sub_232BA249C(v80, v77);
      v46 = sub_232B35090();
      sub_232B94FF4(v46);
      sub_232BA24D4(v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BA5784();
        v3 = v47;
      }

      sub_232BA5988();
      if (v5)
      {
        sub_232BA5848();
        v3 = v48;
      }

      sub_232BA5978();
      v45 += 232;
      --v44;
    }

    while (v44);
  }

  v49 = v0[8];
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = (v49 + 32);
    do
    {
      memcpy(v79, v51, sizeof(v79));
      sub_232BA2558(v79, v77);
      v52 = sub_232B35090();
      sub_232B96B2C(v52);
      sub_232BA2590(v79);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BA5784();
        v3 = v53;
      }

      sub_232BA5988();
      if (v5)
      {
        sub_232BA5848();
        v3 = v54;
      }

      sub_232BA5978();
      v51 += 264;
      --v50;
    }

    while (v50);
  }

  v55 = v0[9];
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = (v55 + 32);
    do
    {
      memcpy(v78, v57, 0xB1uLL);
      sub_232BA1F3C(v78, v77);
      v58 = sub_232B35090();
      sub_232B81AF0(v58);
      sub_232BA1F74(v78);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BA5784();
        v3 = v59;
      }

      sub_232BA5988();
      if (v5)
      {
        sub_232BA5848();
        v3 = v60;
      }

      sub_232BA5978();
      v57 += 184;
      --v56;
    }

    while (v56);
  }

  v61 = v0[10];
  v62 = *(v61 + 16);
  if (v62)
  {
    v63 = (v61 + 32);
    do
    {
      memcpy(v77, v63, 0x159uLL);
      sub_232BA204C(v77, v76);
      v64 = sub_232B35090();
      sub_232B834F0(v64);
      sub_232BA2084(v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BA5784();
        v3 = v65;
      }

      sub_232BA5988();
      if (v5)
      {
        sub_232BA5848();
        v3 = v66;
      }

      sub_232BA5978();
      v63 += 352;
      --v62;
    }

    while (v62);
  }

  v67 = v0[11];
  v68 = *(v67 + 16);
  if (v68)
  {
    v69 = (v67 + 32);
    do
    {
      memcpy(v76, v69, 0x138uLL);
      sub_232BA215C(v76, v75);
      v70 = sub_232B35090();
      v71 = sub_232B863CC(v70);
      sub_232BA2194(v76);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BA5784();
        v3 = v73;
      }

      v72 = *(v3 + 16);
      if (v72 >= *(v3 + 24) >> 1)
      {
        sub_232B36640();
        v3 = v74;
      }

      *(v3 + 16) = v72 + 1;
      *(v3 + 8 * v72 + 32) = v71;
      v69 += 312;
      --v68;
    }

    while (v68);
  }

  sub_232BA6688();
}

void *sub_232B99600@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_232BA5E64();
  sub_232B124A8(v5, v6);
  sub_232BA720C();
  sub_232BA295C(v7, v8, v9, v10);
  sub_232CE98C0();
  if (v2)
  {
    v11 = sub_232CE98D0();
    sub_232BA5190(v11);
    return (*(v12 + 8))(a1);
  }

  else
  {
    v14 = sub_232BA5E64();
    sub_232B124A8(v14, v15);
    sub_232BA720C();
    sub_232BA295C(v16, v17, v18, v19);
    sub_232BA6B5C();
    sub_232CE98C0();
    sub_232B124A8(&qword_27DDC7438, &qword_232CF9118);
    sub_232BA60A8();
    sub_232BA295C(v20, v21, v22, v23);
    sub_232CE98C0();
    sub_232B124A8(&qword_27DDC7440, &qword_232CF9120);
    sub_232BA295C(&qword_2814DFA00, &qword_27DDC7440, &qword_232CF9120, sub_232BA26BC);
    sub_232BA7248();
    sub_232CE98C0();
    v24 = sub_232BA6074();
    sub_232B124A8(v24, v25);
    sub_232BA6358();
    sub_232BA295C(v26, v27, v28, v29);
    sub_232BA60F0();
    sub_232BA6EA0();
    v30 = sub_232BA6074();
    sub_232B124A8(v30, v31);
    sub_232BA6358();
    sub_232BA295C(v32, v33, v34, v35);
    sub_232BA6EA0();
    v36 = sub_232BA6074();
    sub_232B124A8(v36, v37);
    sub_232BA6358();
    sub_232BA295C(v38, v39, v40, v41);
    sub_232BA6EA0();
    v42 = sub_232BA6074();
    sub_232B124A8(v42, v43);
    sub_232BA6358();
    sub_232BA295C(v44, v45, v46, v47);
    sub_232BA6EA0();
    v48 = sub_232BA6074();
    sub_232B124A8(v48, v49);
    sub_232BA6358();
    sub_232BA295C(v50, v51, v52, v53);
    sub_232BA6EA0();
    sub_232B124A8(&qword_27DDC7470, &qword_232CF9150);
    sub_232BA295C(&qword_2814DF988, &qword_27DDC7470, &qword_232CF9150, sub_232BA28B4);
    sub_232CE98C0();
    sub_232B124A8(&qword_27DDC7478, &qword_232CF9158);
    sub_232BA295C(&qword_2814DF9E8, &qword_27DDC7478, &qword_232CF9158, sub_232BA2908);
    sub_232BA63DC();
    sub_232CE98C0();
    sub_232B124A8(&qword_27DDC7480, &qword_232CF9160);
    sub_232BA60A8();
    sub_232BA295C(v54, v55, v56, v57);
    sub_232BA6EA0();
    v58 = sub_232CE98D0();
    sub_232BA5190(v58);
    (*(v59 + 8))(a1);
    __src[0] = v62[0];
    __src[1] = v62[0];
    __src[2] = v62[0];
    __src[3] = v62[0];
    __src[4] = v62[0];
    __src[5] = v62[0];
    __src[6] = v62[0];
    __src[7] = v62[0];
    __src[8] = v62[0];
    __src[9] = v62[0];
    __src[10] = v62[0];
    __src[11] = v63;
    v62[1] = v62[0];
    v62[2] = v62[0];
    v62[3] = v62[0];
    v62[4] = v62[0];
    v62[5] = v62[0];
    v62[6] = v62[0];
    v62[7] = v62[0];
    v62[8] = v62[0];
    v62[9] = v62[0];
    v62[10] = v62[0];
    v62[11] = v63;
    sub_232BA2A2C(__src, v60);
    sub_232BA2A64(v62);
    return memcpy(a2, __src, 0x60uLL);
  }
}

uint64_t sub_232B9A04C()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_2814E3E20);
  sub_232B135C4(v0, qword_2814E3E20);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  v1 = *(sub_232CE9920() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_232CF89F0;
  sub_232B124A8(&qword_27DDC7428, &qword_232CF9108);
  sub_232BA295C(&qword_2814DF9B0, &qword_27DDC7428, &qword_232CF9108, sub_232BA25C0);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC7430, &qword_232CF9110);
  sub_232BA295C(&qword_2814DF998, &qword_27DDC7430, &qword_232CF9110, sub_232BA2614);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC7438, &qword_232CF9118);
  sub_232BA295C(&qword_2814DF9A8, &qword_27DDC7438, &qword_232CF9118, sub_232BA2668);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC7440, &qword_232CF9120);
  sub_232BA295C(&qword_2814DFA00, &qword_27DDC7440, &qword_232CF9120, sub_232BA26BC);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC7448, &qword_232CF9128);
  sub_232BA295C(&qword_2814DF990, &qword_27DDC7448, &qword_232CF9128, sub_232BA2710);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC7450, &qword_232CF9130);
  sub_232BA295C(&qword_2814DF9A0, &qword_27DDC7450, &qword_232CF9130, sub_232BA2764);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC7458, &qword_232CF9138);
  sub_232BA295C(&qword_2814DFA08, &qword_27DDC7458, &qword_232CF9138, sub_232BA27B8);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC7460, &qword_232CF9140);
  sub_232BA295C(&qword_2814DF9F8, &qword_27DDC7460, &qword_232CF9140, sub_232BA280C);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC7468, &qword_232CF9148);
  sub_232BA295C(&qword_2814DF9C8, &qword_27DDC7468, &qword_232CF9148, sub_232BA2860);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC7470, &qword_232CF9150);
  sub_232BA295C(&qword_2814DF988, &qword_27DDC7470, &qword_232CF9150, sub_232BA28B4);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC7478, &qword_232CF9158);
  sub_232BA295C(&qword_2814DF9E8, &qword_27DDC7478, &qword_232CF9158, sub_232BA2908);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC7480, &qword_232CF9160);
  sub_232BA295C(&qword_2814DF9D8, &qword_27DDC7480, &qword_232CF9160, sub_232BA29D8);
  sub_232CE9910();
  return sub_232CE9930();
}

uint64_t sub_232B9A6F8()
{
  v0 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  sub_232B135FC(v0, qword_2814E3EB0);
  sub_232B135C4(v0, qword_2814E3EB0);
  return sub_232CE8F20();
}

uint64_t sub_232B9A750()
{
  result = sub_232CE8F40();
  qword_27DDD4FB0 = result;
  *algn_27DDD4FB8 = v1;
  return result;
}

uint64_t sub_232B9A774()
{
  sub_232B26C44();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[14] = v5;
  v6 = sub_232CE9780();
  v1[19] = v6;
  sub_232B27FBC(v6);
  v1[20] = v7;
  v9 = *(v8 + 64);
  v1[21] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_232B9A824()
{
  sub_232B26C44();
  v1 = v0[21];
  v2 = v0[18];
  sub_232B9E25C();
  swift_task_alloc();
  sub_232BA6740();
  v0[22] = v3;
  *v3 = v4;
  v3[1] = sub_232B9A8C8;
  v5 = v0[21];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[16];

  return sub_232B9AAFC();
}

uint64_t sub_232B9A8C8()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 184) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232B9A9C4()
{
  sub_232B26C7C();
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[14];
  v4[3] = &type metadata for Events;
  v4[4] = &off_284811AF0;
  v5 = swift_allocObject();
  *v4 = v5;
  memcpy((v5 + 16), v0 + 2, 0x60uLL);
  v6 = *(v2 + 8);
  v7 = sub_232B5EFF4();
  v8(v7);

  sub_232B26CF4();

  return v9();
}

uint64_t sub_232B9AA84()
{
  sub_232B26C44();
  (*(v0[20] + 8))(v0[21], v0[19]);

  sub_232B26CF4();
  v2 = v0[23];

  return v1();
}

uint64_t sub_232B9AAFC()
{
  sub_232B482F8();
  v0[14] = v1;
  v2 = sub_232B124A8(&qword_27DDC7340, &qword_232CF9010);
  v0[15] = v2;
  sub_232B27FBC(v2);
  v0[16] = v3;
  v5 = *(v4 + 64);
  v0[17] = sub_232B27FCC();
  swift_task_alloc();
  sub_232BA6740();
  v0[18] = v6;
  *v6 = v7;
  sub_232BA6FD0(v6);
  sub_232BA7440();

  return sub_232B9CD74(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_232B9AC10()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  v3[19] = v0;

  if (v0)
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(MEMORY[0x277D0D900] + 4);
    v13 = swift_task_alloc();
    v3[20] = v13;
    sub_232BA5960();
    v16 = sub_232BA4DA4(v14, v15);
    v17 = sub_232BA1908();
    *v13 = v7;
    v13[1] = sub_232B9ADC0;
    v18 = v3[17];
    v19 = v3[15];

    return MEMORY[0x282165A90](v3 + 2, &type metadata for Events, &type metadata for Events, v19, &type metadata for Events, v16, v17);
  }
}

uint64_t sub_232B9ADC0()
{
  sub_232B26C7C();
  v2 = *v1;
  sub_232B51338();
  *v4 = v3;
  v5 = v2[20];
  *v4 = *v1;
  *(v3 + 168) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  sub_232B48304();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B9AF18()
{
  sub_232B26C44();
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);

  sub_232B26CF4();

  return v3();
}

uint64_t sub_232B9AF74()
{
  sub_232B26C44();
  v1 = *(v0 + 136);
  memcpy(*(v0 + 112), (v0 + 16), 0x60uLL);

  sub_232B26CF4();

  return v2();
}

uint64_t sub_232B9AFE4()
{
  sub_232B26C44();
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);

  sub_232B26CF4();

  return v3();
}

uint64_t sub_232B9B040()
{
  sub_232B26C44();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_232CE9780();
  v1[6] = v5;
  sub_232B27FBC(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232B9B0EC()
{
  sub_232B26C44();
  v1 = v0[8];
  v2 = v0[5];
  sub_232B9E25C();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_232B9B190;
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_232B9B388();
}

uint64_t sub_232B9B190()
{
  sub_232B482F8();
  v3 = v2;
  v5 = v4;
  sub_232B26C70();
  v7 = v6;
  sub_232B51338();
  *v8 = v7;
  v10 = *(v9 + 72);
  v11 = *v1;
  sub_232B26B3C();
  *v12 = v11;
  v7[10] = v0;

  if (!v0)
  {
    v7[11] = v3;
    v7[12] = v5;
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_232B9B2A8()
{
  sub_232B26C44();
  v1 = sub_232BA6FBC();
  v2(v1);

  v3 = v0[1];
  v5 = v0[11];
  v4 = v0[12];

  return v3(v4, v5);
}

uint64_t sub_232B9B31C()
{
  sub_232B26C44();
  v1 = sub_232BA6FBC();
  v2(v1);

  sub_232B26CF4();
  v4 = *(v0 + 80);

  return v3();
}

uint64_t sub_232B9B388()
{
  sub_232B482F8();
  v1 = sub_232B124A8(&qword_27DDC7340, &qword_232CF9010);
  v0[2] = v1;
  sub_232B27FBC(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = sub_232B27FCC();
  swift_task_alloc();
  sub_232BA6740();
  v0[5] = v5;
  *v5 = v6;
  sub_232BA6FD0(v5);
  sub_232BA7440();

  return sub_232B9BAB4(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_232B9B498()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(MEMORY[0x277D0D8E8] + 4);
    v13 = swift_task_alloc();
    *(v3 + 56) = v13;
    sub_232BA5960();
    sub_232BA4DA4(v14, v15);
    *v13 = v7;
    v16 = sub_232BA6F94();

    return MEMORY[0x282165A78](v16);
  }
}

uint64_t sub_232B9B61C()
{
  sub_232B482F8();
  sub_232BA7124();
  sub_232B51338();
  *v4 = v3;
  v5 = v2[7];
  v6 = *v1;
  *v4 = *v1;
  *(v3 + 64) = v0;

  (*(v2[3] + 8))(v2[4], v2[2]);
  if (!v0)
  {

    v11 = *(v6 + 8);
    sub_232BA5FEC();
    sub_232BA7440();

    __asm { BRAA            X3, X16 }
  }

  sub_232B48304();
  sub_232BA7440();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232B9B7AC()
{
  sub_232B26C44();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  sub_232B26CF4();

  return v3();
}

uint64_t sub_232B9B808()
{
  sub_232B26C44();
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  sub_232B26CF4();

  return v3();
}

void sub_232B9B898()
{
  sub_232B35110();
  v41 = v1;
  v42 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  sub_232B2D120(v8);
  v10 = *(v9 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = sub_232CE8E10();
  v15 = sub_232B48F0C(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_232B20704();
  v20 = sub_232CE9170();
  v21 = sub_232B2D120(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_232B20704();
  v26 = v25 - v24;
  v27 = v5(0);
  sub_232B2D120(v27);
  v29 = *(v28 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v30);
  v32 = &v41 - v31;
  sub_232B2036C(v7, v13, &qword_27DDC7398, &unk_232CF9070);
  v33 = sub_232BA6D28();
  sub_232B351B0(v33, v34, v14);
  if (v35)
  {
    sub_232CE8D50();
    v36 = sub_232BA6D28();
    sub_232B351B0(v36, v37, v14);
    if (!v35)
    {
      sub_232BA4D50(v13, &qword_27DDC7398, &unk_232CF9070);
    }
  }

  else
  {
    v38 = *(v17 + 32);
    v39 = sub_232B35090();
    v40(v39);
  }

  sub_232CE9160();
  v3(v26);
  v42(v32);
  sub_232B20A00();
}

uint64_t sub_232B9BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[46] = a3;
  v6[47] = a4;
  v6[44] = a1;
  v6[45] = a2;
  v7 = *(*(sub_232B124A8(&qword_27DDC7350, &unk_232CF9020) - 8) + 64) + 15;
  v6[50] = swift_task_alloc();
  v8 = sub_232B124A8(&qword_27DDC7358, &unk_232CFB250);
  v6[51] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[52] = swift_task_alloc();
  v10 = sub_232CE9280();
  v6[53] = v10;
  v11 = *(v10 - 8);
  v6[54] = v11;
  v12 = *(v11 + 64) + 15;
  v6[55] = swift_task_alloc();
  v13 = sub_232CE92A0();
  v6[56] = v13;
  v14 = *(v13 - 8);
  v6[57] = v14;
  v15 = *(v14 + 64) + 15;
  v6[58] = swift_task_alloc();
  v16 = *(*(sub_232B124A8(&qword_27DDC7360, &unk_232CF9030) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v17 = sub_232CE9900();
  v6[60] = v17;
  v18 = *(v17 - 8);
  v6[61] = v18;
  v19 = *(v18 + 64) + 15;
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v20 = sub_232CE9210();
  v6[64] = v20;
  v21 = *(v20 - 8);
  v6[65] = v21;
  v22 = *(v21 + 64) + 15;
  v6[66] = swift_task_alloc();
  v23 = sub_232CE9150();
  v6[67] = v23;
  v24 = *(v23 - 8);
  v6[68] = v24;
  v25 = *(v24 + 64) + 15;
  v6[69] = swift_task_alloc();
  v26 = sub_232CE91F0();
  v6[70] = v26;
  v27 = *(v26 - 8);
  v6[71] = v27;
  v28 = *(v27 + 64) + 15;
  v6[72] = swift_task_alloc();
  v29 = sub_232B124A8(&qword_27DDC7368, &unk_232CFB260);
  v6[73] = v29;
  v30 = *(v29 - 8);
  v6[74] = v30;
  v31 = *(v30 + 64) + 15;
  v6[75] = swift_task_alloc();
  v32 = sub_232CE9B10();
  v6[76] = v32;
  v33 = *(v32 - 8);
  v6[77] = v33;
  v34 = *(v33 + 64) + 15;
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v6[84] = swift_task_alloc();
  v6[85] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B9BF18, 0, 0);
}

uint64_t sub_232B9BF18()
{
  sub_232BA5D74();
  v4 = sub_232BA6E30("JXH4S7HJxMW1DrKgkSOMVbFAOlk.");
  *(v4 + 16) = v0;
  sub_232BA7294();

  sub_232CE9B00();
  v5 = sub_232BA682C();
  (v4)(v5);
  sub_232B9CC58();
  v6 = *MEMORY[0x277D0E550];
  v7 = sub_232BA6CE0();
  v8(v7);
  sub_232BA621C();
  v1[88] = sub_232BA4DA4(v9, v10);
  sub_232BA6050();
  sub_232CE9BE0();
  v11 = *(v2 + 8);
  v12 = sub_232BA7198();
  v13(v12);
  v14 = sub_232BA62A4();
  (v4)(v14);
  sub_232B124A8(&qword_27DDC7370, &unk_232CF9040);
  inited = swift_initStackObject();
  v16 = sub_232BA5A90(inited, xmmword_232CF6460);
  sub_232BA6EF8(v16, MEMORY[0x277D42EC0], v62, v66, v70, v74, v78);
  v1[89] = sub_232B124A8(&qword_27DDC7378, &unk_232CFB270);
  sub_232B5EFF4();
  sub_232CE9C60();
  sub_232BA6050();
  sub_232CE9C10();

  (v4)(v107, v3);
  v1[90] = type metadata accessor for DUEventAdapter();
  sub_232BA59C8();
  sub_232BA7374();
  v17 = v94;
  sub_232BA6050();
  v18 = sub_232CE9BA0();
  v26 = sub_232BA6634(v18, v19, v20, v21, v22, v23, v24, v25, v63, v67, v71, v75, v79, v82, v85, v88, v91);
  v27(v26);
  v28 = sub_232BA61D4();
  (v4)(v28);
  sub_232BA59B0();
  sub_232B9B898();
  sub_232BA6050();
  v29 = sub_232CE9BC0();
  v37 = sub_232BA680C(v29, v30, v31, v32, v33, v34, v35, v36, v64, v68, v72, v76, v80, v83, v86, v89, v92, v94, v96, v98, v100);
  v38(v37);
  (v4)(v17, v3);
  sub_232CE9C60();
  sub_232BA6050();
  sub_232CE9B90();

  (v4)(v103, v3);
  v1[95] = *(v104 + 32);
  sub_232BA63D0();
  v39 = swift_beginAccess();
  v47 = sub_232BA67D4(v39, v40, v41, v42, v43, v44, v45, v46, v65, v69, v73, v77, v81, v84, v87, v90, v93, v95, v97, v99, v101, v102, v103, v104, v105, v106);
  v48(v47);
  sub_232BA6050();
  sub_232CE9BF0();
  v49 = sub_232BA6AAC();
  v50(v49);
  v51 = sub_232BA61D4();
  (v4)(v51);
  sub_232CE98F0();
  v52 = sub_232BA5CE4();
  sub_232B12504(v52, v53, v54, v55);
  sub_232BA6870();
  v56 = *(MEMORY[0x277D0E540] + 4);
  swift_task_alloc();
  sub_232BA6740();
  v1[96] = v57;
  *v57 = v58;
  v57[1] = sub_232B9C30C;
  v59 = v1[50];
  sub_232BA6458();

  return MEMORY[0x282166B60](v60);
}

uint64_t sub_232B9C30C()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 768);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 776) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232B9C408()
{
  v1 = v0[50];
  v2 = sub_232B124A8(&qword_27DDC7380, &unk_232CF9050);
  sub_232B351B0(v1, 1, v2);
  if (v3)
  {
    sub_232BA4D50(v1, &qword_27DDC7350, &unk_232CF9020);
  }

  else
  {
    v55 = v0[93];
    v57 = v0[94];
    v47 = v0[91];
    v49 = v0[92];
    v40 = v0[89];
    v74 = v0[86];
    v76 = v0[87];
    v64 = v0[84];
    v66 = v0[85];
    v70 = v0[76];
    v72 = v0[77];
    v42 = v0[72];
    v43 = v0[70];
    v51 = v0[69];
    v53 = v0[67];
    v4 = v0[62];
    v37 = v0[61];
    v38 = v0[60];
    v39 = v0[63];
    v78 = v0[58];
    v68 = v0[57];
    v36 = v0[55];
    v5 = v0[53];
    v6 = v0[54];
    v62 = v6;
    v7 = v0[51];
    v8 = v0[52];
    v41 = v0[46];
    v60 = v0[56];
    v34 = *(v7 + 48);
    v35 = *(v2 + 48);
    v9 = *(v68 + 32);
    (v9)(v8, v1, v60);
    v10 = *(v6 + 32);
    v11 = v1 + v35;
    v12 = v5;
    v45 = v5;
    v10(v8 + v34, v11, v5);
    v13 = *(v7 + 48);
    sub_232BA5E94();
    v9();
    v10(v36, v8 + v13, v12);
    sub_232CE9270();
    (*(v37 + 8))(v39, v38);
    v14 = *(v37 + 32);
    v15 = sub_232BA5FEC();
    v16(v15);
    sub_232CE9C60();
    sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_232CF5E60;
    *(inited + 32) = 0xD000000000000069;
    *(inited + 40) = 0x8000000232D050A0;
    sub_232BA59C8();
    sub_232B9B898();
    *(inited + 72) = v43;
    sub_232BA18A8((inited + 48));
    sub_232CE9190();
    v47(v42, v43);
    *(inited + 80) = 0xD000000000000065;
    *(inited + 88) = 0x8000000232D05110;
    sub_232BA59B0();
    sub_232B9B898();
    *(inited + 120) = v53;
    sub_232BA18A8((inited + 96));
    sub_232CE9180();
    v18 = sub_232B5EFF4();
    v55(v18);
    sub_232CE9C60();
    sub_232B124A8(&qword_27DDC7388, &qword_232CF9060);
    v19 = swift_initStackObject();
    v20 = sub_232BA6308(v19, xmmword_232CF6460);
    v19[4].n128_u64[1] = v20;
    sub_232BA5998();
    v19[5].n128_u64[0] = sub_232BA4DA4(v21, v22);
    sub_232BA18A8(&v19[3]);
    sub_232BA5C58(v20);
    (*(v23 + 16))();
    sub_232B124A8(&qword_27DDC7390, &qword_232CF9068);
    sub_232CE9C60();
    sub_232CE9260();

    (*(v62 + 8))(v36, v45);
    (*(v68 + 8))(v78, v60);
    v74(v66, v70);
    (*(v72 + 32))(v66, v64, v70);
  }

  v44 = v0[95];
  v24 = v0[88];
  v25 = v0[86];
  v26 = v0[85];
  v27 = v0[84];
  v48 = v0[87];
  v50 = v0[83];
  v52 = v0[82];
  v54 = v0[81];
  v56 = v0[80];
  v58 = v0[79];
  v28 = v0[76];
  v59 = v0[78];
  v61 = v0[75];
  v63 = v0[72];
  v65 = v0[69];
  v29 = v0[63];
  v67 = v0[66];
  v69 = v0[62];
  v30 = v0[61];
  v46 = v0[60];
  v71 = v0[59];
  v73 = v0[58];
  v75 = v0[55];
  v77 = v0[52];
  v79 = v0[50];
  v31 = v0[44];
  sub_232BA5FF8();
  sub_232CE9B80();
  v0[43] = *(v44 + OBJC_IVAR____TtCC21DocumentUnderstanding14DUEventAdapterP33_7DFF5EDDB67079A377F3E66D4A02DD0811_ClientInfo__model);
  sub_232CE8FC0();
  sub_232CE9C00();
  v25(v27, v28);
  (*(v30 + 8))(v29, v46);
  v25(v26, v28);

  sub_232B26CF4();

  return v32();
}

uint64_t sub_232B9CAB8()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v14 = v0[80];
  v15 = v0[79];
  v8 = v0[76];
  v16 = v0[78];
  v17 = v0[75];
  v18 = v0[72];
  v19 = v0[69];
  v20 = v0[66];
  v21 = v0[62];
  v22 = v0[59];
  v23 = v0[58];
  v9 = v0[55];
  v24 = v0[52];
  v25 = v0[50];
  (*(v0[61] + 8))(v0[63], v0[60]);
  v10 = sub_232B2080C();
  v2(v10);

  sub_232B26CF4();
  v12 = v0[97];

  return v11();
}

uint64_t sub_232B9CC58()
{
  v0 = sub_232BA5FEC();
  v2 = sub_232B124A8(v0, v1);
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B3516C();
  sub_232BA6ABC();
  MEMORY[0x28223BE20](v6);
  sub_232BA72D4();
  sub_232CE9000();
  sub_232B351FC();
  sub_232B12504(v7, v8, v9, v10);
  sub_232BA5E64();
  sub_232BA71B0();
  sub_232B2036C(v11, v12, v13, v14);
  sub_232BA6604();
  sub_232CE9040();
  sub_232CE9030();
  sub_232CE9010();
  sub_232CE9020();
  v15 = sub_232BA648C();
  return sub_232BA4D50(v15, v16, &qword_232CFB2C0);
}

uint64_t sub_232B9CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[46] = a3;
  v6[47] = a4;
  v6[44] = a1;
  v6[45] = a2;
  v7 = *(*(sub_232B124A8(&qword_27DDC7350, &unk_232CF9020) - 8) + 64) + 15;
  v6[50] = swift_task_alloc();
  v8 = sub_232B124A8(&qword_27DDC7358, &unk_232CFB250);
  v6[51] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[52] = swift_task_alloc();
  v10 = sub_232CE9280();
  v6[53] = v10;
  v11 = *(v10 - 8);
  v6[54] = v11;
  v12 = *(v11 + 64) + 15;
  v6[55] = swift_task_alloc();
  v13 = sub_232CE92A0();
  v6[56] = v13;
  v14 = *(v13 - 8);
  v6[57] = v14;
  v15 = *(v14 + 64) + 15;
  v6[58] = swift_task_alloc();
  v16 = *(*(sub_232B124A8(&qword_27DDC7360, &unk_232CF9030) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v17 = sub_232CE9900();
  v6[60] = v17;
  v18 = *(v17 - 8);
  v6[61] = v18;
  v19 = *(v18 + 64) + 15;
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v20 = sub_232CE9210();
  v6[64] = v20;
  v21 = *(v20 - 8);
  v6[65] = v21;
  v22 = *(v21 + 64) + 15;
  v6[66] = swift_task_alloc();
  v23 = sub_232CE9150();
  v6[67] = v23;
  v24 = *(v23 - 8);
  v6[68] = v24;
  v25 = *(v24 + 64) + 15;
  v6[69] = swift_task_alloc();
  v26 = sub_232CE91F0();
  v6[70] = v26;
  v27 = *(v26 - 8);
  v6[71] = v27;
  v28 = *(v27 + 64) + 15;
  v6[72] = swift_task_alloc();
  v29 = sub_232B124A8(&qword_27DDC7368, &unk_232CFB260);
  v6[73] = v29;
  v30 = *(v29 - 8);
  v6[74] = v30;
  v31 = *(v30 + 64) + 15;
  v6[75] = swift_task_alloc();
  v32 = sub_232CE9B10();
  v6[76] = v32;
  v33 = *(v32 - 8);
  v6[77] = v33;
  v34 = *(v33 + 64) + 15;
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v6[84] = swift_task_alloc();
  v6[85] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B9D1D8, 0, 0);
}

uint64_t sub_232B9D1D8()
{
  sub_232BA5D74();
  v4 = sub_232BA6E30("0owJX_P6bGsd1i4JsCjfpiMDfpY.");
  *(v4 + 16) = v0;
  sub_232BA7294();

  sub_232CE9B00();
  v5 = sub_232BA682C();
  (v4)(v5);
  sub_232B9CC58();
  v6 = *MEMORY[0x277D0E550];
  v7 = sub_232BA6CE0();
  v8(v7);
  sub_232BA621C();
  v1[88] = sub_232BA4DA4(v9, v10);
  sub_232BA6050();
  sub_232CE9BE0();
  v11 = *(v2 + 8);
  v12 = sub_232BA7198();
  v13(v12);
  v14 = sub_232BA62A4();
  (v4)(v14);
  sub_232B124A8(&qword_27DDC7370, &unk_232CF9040);
  inited = swift_initStackObject();
  v16 = sub_232BA5A90(inited, xmmword_232CF6460);
  sub_232BA6EF8(v16, MEMORY[0x277D42EC0], v61, v65, v69, v73, v77);
  v1[89] = sub_232B124A8(&qword_27DDC7378, &unk_232CFB270);
  sub_232B5EFF4();
  sub_232CE9C60();
  sub_232BA6050();
  sub_232CE9C10();

  (v4)(v106, v3);
  v1[90] = type metadata accessor for DUEventAdapter();
  sub_232BA59C8();
  sub_232BA7374();
  v17 = v93;
  sub_232BA6050();
  v18 = sub_232CE9BA0();
  v26 = sub_232BA6634(v18, v19, v20, v21, v22, v23, v24, v25, v62, v66, v70, v74, v78, v81, v84, v87, v90);
  v27(v26);
  v28 = sub_232BA61D4();
  (v4)(v28);
  sub_232BA59B0();
  sub_232B9B898();
  sub_232BA6050();
  v29 = sub_232CE9BC0();
  v37 = sub_232BA680C(v29, v30, v31, v32, v33, v34, v35, v36, v63, v67, v71, v75, v79, v82, v85, v88, v91, v93, v95, v97, v99);
  v38(v37);
  (v4)(v17, v3);
  sub_232CE9C60();
  sub_232BA6050();
  sub_232CE9B90();

  (v4)(v102, v3);
  v1[95] = *(v103 + 32);
  sub_232BA63D0();
  v39 = swift_beginAccess();
  v47 = sub_232BA67D4(v39, v40, v41, v42, v43, v44, v45, v46, v64, v68, v72, v76, v80, v83, v86, v89, v92, v94, v96, v98, v100, v101, v102, v103, v104, v105);
  v48(v47);
  sub_232BA6050();
  sub_232CE9BF0();
  v49 = sub_232BA6AAC();
  v50(v49);
  v51 = sub_232BA61D4();
  (v4)(v51);
  sub_232CE98F0();
  v52 = sub_232BA5CE4();
  sub_232B12504(v52, v53, v54, v55);
  sub_232BA6870();
  v56 = *(MEMORY[0x277D0E540] + 4);
  swift_task_alloc();
  sub_232BA6740();
  v1[96] = v57;
  *v57 = v58;
  v57[1] = sub_232B9D5CC;
  v59 = v1[50];
  sub_232BA6458();

  return MEMORY[0x282166B60]();
}

uint64_t sub_232B9D5CC()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 768);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 776) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_232B9D6C8()
{
  sub_232BA66A0();
  v0 = sub_232CE9B10();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232CE9780();
  sub_232BA5998();
  sub_232BA4DA4(v7, v8);
  sub_232CE9B40();
  sub_232B124A8(&qword_27DDC73A8, &qword_232CF9080);
  v9 = *(v1 + 72);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_232CF6460;
  (*(v2 + 16))(v11 + v10, v6, v0);
  MEMORY[0x2383918C0](v11);

  v12 = *(v2 + 8);
  v13 = sub_232BA71E8();
  v14(v13);
  sub_232BA6688();
}

unsigned __int8 *sub_232B9D854(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v59 = a4;
  v62 = a3;
  v10 = sub_232CE8FE0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v58[2] = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_232CE9080();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v58[1] = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v58 - v19;
  v21 = sub_232CE9210();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  v61 = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_232CE9C60();
  sub_232CE9200();
  (*(v22 + 32))(v6 + OBJC_IVAR____TtCC21DocumentUnderstanding14DUEventAdapterP33_7DFF5EDDB67079A377F3E66D4A02DD0811_ClientInfo_trackingConfig, v25, v21);
  v26 = sub_232B1E0D0(0xD000000000000015, 0x8000000232D058B0, a5);
  v28 = v27;

  if (v28)
  {
    v30 = HIBYTE(v28) & 0xF;
    v31 = v26 & 0xFFFFFFFFFFFFLL;
    if ((v28 & 0x2000000000000000) != 0)
    {
      v32 = HIBYTE(v28) & 0xF;
    }

    else
    {
      v32 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
      goto LABEL_64;
    }

    if ((v28 & 0x1000000000000000) != 0)
    {
      sub_232BA2B04(v26, v28, 10);
      goto LABEL_64;
    }

    if ((v28 & 0x2000000000000000) != 0)
    {
      v63[0] = v26;
      v63[1] = v28 & 0xFFFFFFFFFFFFFFLL;
      if (v26 == 43)
      {
        if (v30)
        {
          if (--v30)
          {
            v46 = 0;
            v47 = v63 + 1;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                break;
              }

              v49 = 10 * v46;
              if ((v46 * 10) >> 64 != (10 * v46) >> 63)
              {
                break;
              }

              v46 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                break;
              }

              ++v47;
              if (!--v30)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_73:
        __break(1u);
        return result;
      }

      if (v26 != 45)
      {
        if (v30)
        {
          v53 = 0;
          v54 = v63;
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              break;
            }

            v56 = 10 * v53;
            if ((v53 * 10) >> 64 != (10 * v53) >> 63)
            {
              break;
            }

            v53 = v56 + v55;
            if (__OFADD__(v56, v55))
            {
              break;
            }

            ++v54;
            if (!--v30)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v30)
      {
        if (--v30)
        {
          v38 = 0;
          v39 = v63 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              break;
            }

            v38 = v41 - v40;
            if (__OFSUB__(v41, v40))
            {
              break;
            }

            ++v39;
            if (!--v30)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((v26 & 0x1000000000000000) != 0)
      {
        result = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_232CEA550();
      }

      v33 = *result;
      if (v33 == 43)
      {
        if (v31 >= 1)
        {
          v30 = v31 - 1;
          if (v31 != 1)
          {
            v42 = 0;
            if (result)
            {
              v43 = result + 1;
              while (1)
              {
                v44 = *v43 - 48;
                if (v44 > 9)
                {
                  goto LABEL_62;
                }

                v45 = 10 * v42;
                if ((v42 * 10) >> 64 != (10 * v42) >> 63)
                {
                  goto LABEL_62;
                }

                v42 = v45 + v44;
                if (__OFADD__(v45, v44))
                {
                  goto LABEL_62;
                }

                ++v43;
                if (!--v30)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_54;
          }

          goto LABEL_62;
        }

        goto LABEL_72;
      }

      if (v33 != 45)
      {
        if (v31)
        {
          v50 = 0;
          if (result)
          {
            while (1)
            {
              v51 = *result - 48;
              if (v51 > 9)
              {
                goto LABEL_62;
              }

              v52 = 10 * v50;
              if ((v50 * 10) >> 64 != (10 * v50) >> 63)
              {
                goto LABEL_62;
              }

              v50 = v52 + v51;
              if (__OFADD__(v52, v51))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v31)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_54;
        }

LABEL_62:
        LOBYTE(v30) = 1;
        goto LABEL_63;
      }

      if (v31 >= 1)
      {
        v30 = v31 - 1;
        if (v31 != 1)
        {
          v34 = 0;
          if (result)
          {
            v35 = result + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                goto LABEL_62;
              }

              v37 = 10 * v34;
              if ((v34 * 10) >> 64 != (10 * v34) >> 63)
              {
                goto LABEL_62;
              }

              v34 = v37 - v36;
              if (__OFSUB__(v37, v36))
              {
                goto LABEL_62;
              }

              ++v35;
              if (!--v30)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_54:
          LOBYTE(v30) = 0;
LABEL_63:
          v64 = v30;
LABEL_64:

          goto LABEL_65;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_65:
  sub_232CE8FC0();
  if (qword_2814E0CA0 != -1)
  {
    swift_once();
  }

  v57 = sub_232B135C4(v16, qword_2814E3EB0);
  (*(v17 + 16))(v20, v57, v16);
  sub_232CE8FD0();
  sub_232CE9070();
  *(v6 + OBJC_IVAR____TtCC21DocumentUnderstanding14DUEventAdapterP33_7DFF5EDDB67079A377F3E66D4A02DD0811_ClientInfo__model) = sub_232CE8FB0();
  return v6;
}

uint64_t (*sub_232B9DEAC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_232B9DF24()
{
  sub_232BA0BA8();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_232B9DFA4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_232B9E054;

  return sub_232B9B040();
}

uint64_t sub_232B9E054()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = sub_232B5A008();
  }

  return v7(v6);
}

uint64_t sub_232B9E150()
{
  v0 = sub_232BA5FEC();
  v2 = sub_232B124A8(v0, v1);
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B3516C();
  sub_232BA6ABC();
  MEMORY[0x28223BE20](v6);
  sub_232BA72D4();
  sub_232CE9000();
  sub_232B351FC();
  sub_232B12504(v7, v8, v9, v10);
  sub_232BA5E64();
  sub_232BA71B0();
  sub_232B2036C(v11, v12, v13, v14);
  sub_232BA6604();
  sub_232CE9040();
  sub_232CE9030();
  sub_232CE9010();
  sub_232CE9020();
  v15 = sub_232BA648C();
  return sub_232BA4D50(v15, v16, &qword_232CFB2C0);
}

uint64_t sub_232B9E25C()
{
  v1 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  sub_232B48F0C(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  if (qword_2814E0CA0 != -1)
  {
    swift_once();
  }

  v9 = sub_232B135C4(v1, qword_2814E3EB0);
  (*(v3 + 16))(v8, v9, v1);
  v10 = *(v0 + 24);

  return sub_232CE9770();
}

uint64_t sub_232B9E3B8()
{
  sub_232B26C7C();
  v0 = *MEMORY[0x277CCA5B8];
  sub_232CE9D50();
  sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF6460;
  v2 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_232CE9D50();
  *(inited + 40) = v3;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD000000000000036;
  *(inited + 56) = 0x8000000232D051A0;
  v4 = sub_232CE9C60();
  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v6 = sub_232B5EFF4();
  sub_232BC8980(v6, v7, 45, v4);
  swift_willThrow();
  sub_232B26CF4();

  return v8();
}

uint64_t sub_232B9E4E0()
{
  sub_232B26C44();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_232CE9780();
  v1[6] = v5;
  sub_232B27FBC(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232B9E58C()
{
  sub_232B26C44();
  v1 = v0[8];
  v2 = v0[5];
  sub_232B9E25C();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_232B9E630;
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_232B9E748();
}

uint64_t sub_232B9E630()
{
  sub_232B482F8();
  v3 = v2;
  v5 = v4;
  sub_232B26C70();
  v7 = v6;
  sub_232B51338();
  *v8 = v7;
  v10 = *(v9 + 72);
  v11 = *v1;
  sub_232B26B3C();
  *v12 = v11;
  v7[10] = v0;

  if (!v0)
  {
    v7[11] = v3;
    v7[12] = v5;
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_232B9E748()
{
  sub_232B482F8();
  v2 = v1;
  v3 = sub_232B124A8(&qword_27DDC73B8, &qword_232CF90B8);
  v0[2] = v3;
  sub_232B27FBC(v3);
  v0[3] = v4;
  v6 = *(v5 + 64);
  v0[4] = sub_232B27FCC();
  swift_task_alloc();
  sub_232BA6740();
  v0[5] = v7;
  *v7 = v8;
  v7[1] = sub_232B9E85C;
  sub_232BA71B0();

  return sub_232B9EC90(v9, v10, v11, v12, v2);
}

uint64_t sub_232B9E85C()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(MEMORY[0x277D0D8C8] + 4);
    v13 = swift_task_alloc();
    *(v3 + 56) = v13;
    sub_232BA5960();
    sub_232BA4DA4(v14, v15);
    *v13 = v7;
    v16 = sub_232BA6F94();

    return MEMORY[0x282165A58](v16);
  }
}

uint64_t sub_232B9E9E0()
{
  sub_232B482F8();
  sub_232BA7124();
  sub_232B51338();
  *v4 = v3;
  v5 = v2[7];
  v6 = *v1;
  *v4 = *v1;
  *(v3 + 64) = v0;

  (*(v2[3] + 8))(v2[4], v2[2]);
  if (!v0)
  {

    v11 = *(v6 + 8);
    sub_232BA5FEC();
    sub_232BA7440();

    __asm { BRAA            X3, X16 }
  }

  sub_232B48304();
  sub_232BA7440();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232B9EBA4(uint64_t a1, char a2, char *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(unint64_t, unint64_t, uint64_t, void, uint64_t))
{
  v9 = v6;
  v12 = *a3;
  *(v9 + 24) = sub_232CE9C60();
  *(v9 + 16) = v12;
  v13 = sub_232CE9C60();
  v14 = a5(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v9 + 32) = a6(0xD000000000000025, 0x8000000232D05880, a1, a2 & 1, v13);
  return v9;
}

uint64_t sub_232B9EC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = *(*(sub_232B124A8(&qword_27DDC73C8, &qword_232CF90C8) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v7 = sub_232B124A8(&qword_27DDC73D0, &unk_232CF90D0);
  v5[34] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v9 = sub_232CE9280();
  v5[36] = v9;
  v10 = *(v9 - 8);
  v5[37] = v10;
  v11 = *(v10 + 64) + 15;
  v5[38] = swift_task_alloc();
  v12 = sub_232CE9290();
  v5[39] = v12;
  v13 = *(v12 - 8);
  v5[40] = v13;
  v14 = *(v13 + 64) + 15;
  v5[41] = swift_task_alloc();
  v15 = *(*(sub_232B124A8(&qword_27DDC7360, &unk_232CF9030) - 8) + 64) + 15;
  v5[42] = swift_task_alloc();
  v16 = sub_232CE9900();
  v5[43] = v16;
  v17 = *(v16 - 8);
  v5[44] = v17;
  v18 = *(v17 + 64) + 15;
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v19 = sub_232CE9210();
  v5[47] = v19;
  v20 = *(v19 - 8);
  v5[48] = v20;
  v21 = *(v20 + 64) + 15;
  v5[49] = swift_task_alloc();
  v22 = sub_232CE9120();
  v5[50] = v22;
  v23 = *(v22 - 8);
  v5[51] = v23;
  v24 = *(v23 + 64) + 15;
  v5[52] = swift_task_alloc();
  v25 = sub_232CE9110();
  v5[53] = v25;
  v26 = *(v25 - 8);
  v5[54] = v26;
  v27 = *(v26 + 64) + 15;
  v5[55] = swift_task_alloc();
  v28 = sub_232B124A8(&qword_27DDC73D8, &unk_232CFB2B0);
  v5[56] = v28;
  v29 = *(v28 - 8);
  v5[57] = v29;
  v30 = *(v29 + 64) + 15;
  v5[58] = swift_task_alloc();
  v31 = sub_232CE91C0();
  v5[59] = v31;
  v32 = *(v31 - 8);
  v5[60] = v32;
  v33 = *(v32 + 64) + 15;
  v5[61] = swift_task_alloc();
  v34 = sub_232CE91B0();
  v5[62] = v34;
  v35 = *(v34 - 8);
  v5[63] = v35;
  v36 = *(v35 + 64) + 15;
  v5[64] = swift_task_alloc();
  v37 = sub_232B124A8(&qword_27DDC73E0, &qword_232CF90E0);
  v5[65] = v37;
  v38 = *(v37 - 8);
  v5[66] = v38;
  v39 = *(v38 + 64) + 15;
  v5[67] = swift_task_alloc();
  v40 = sub_232B124A8(&qword_27DDC7368, &unk_232CFB260);
  v5[68] = v40;
  v41 = *(v40 - 8);
  v5[69] = v41;
  v42 = *(v41 + 64) + 15;
  v5[70] = swift_task_alloc();
  v43 = sub_232CE9AE0();
  v5[71] = v43;
  v44 = *(v43 - 8);
  v5[72] = v44;
  v45 = *(v44 + 64) + 15;
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B9F270, 0, 0);
}

uint64_t sub_232B9F270()
{
  v78 = v0[79];
  v75 = v0[78];
  v71 = v0[77];
  v60 = v0[76];
  v1 = v0[74];
  v2 = v0[73];
  v79 = v0[72];
  v80 = v0[75];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[68];
  v57 = v0[67];
  v58 = v0[66];
  v59 = v0[65];
  v51 = v0[64];
  v52 = v0[63];
  v53 = v0[62];
  v54 = v0[61];
  v55 = v0[60];
  v56 = v0[59];
  v67 = v0[58];
  v68 = v0[57];
  v69 = v0[56];
  v61 = v0[55];
  v62 = v0[54];
  v63 = v0[53];
  v66 = v0[52];
  v64 = v0[51];
  v65 = v0[50];
  v72 = v0[48];
  v73 = v0[47];
  v74 = v0[49];
  v76 = v0[42];
  v77 = v0[46];
  v7 = v0[32];
  v49 = v0[31];
  v8 = v0[29];
  v70 = v0[30];
  *(swift_task_alloc() + 16) = v8;
  sub_232CE9AF0();

  sub_232B9E150();
  v50 = *MEMORY[0x277D0E550];
  (*(v5 + 104))(v4);
  v0[80] = sub_232BA4DA4(&qword_2814DFA48, MEMORY[0x277D42D40]);
  sub_232BA5880();
  sub_232CE9BE0();
  (*(v5 + 8))(v4, v6);
  v9 = *(v79 + 8);
  v0[81] = v9;
  v0[82] = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = sub_232BA7224();
  v9(v10);
  v0[83] = sub_232B124A8(&qword_27DDC7370, &unk_232CF9040);
  inited = swift_initStackObject();
  v12 = sub_232BA5A90(inited, xmmword_232CF6460);
  v13 = MEMORY[0x277D42EC0];
  v12[4].n128_u64[1] = MEMORY[0x277D837D0];
  v12[5].n128_u64[0] = v13;
  v12[3].n128_u64[0] = v49;
  v12[3].n128_u64[1] = v7;

  v0[84] = sub_232B124A8(&qword_27DDC7378, &unk_232CFB270);
  sub_232B5EFF4();
  sub_232CE9C60();
  sub_232BA5C64();
  sub_232CE9C10();

  (v9)(v1, v3);
  sub_232CE91D0();
  v14 = sub_232BA5CE4();
  sub_232B12504(v14, v15, v16, v17);
  (*(v52 + 104))(v51, *MEMORY[0x277D0E5C0], v53);
  sub_232CE91A0();
  sub_232B55484();
  sub_232B12504(v18, v19, v20, v21);
  (*(v55 + 104))(v54, *MEMORY[0x277D0E5C8], v56);
  sub_232B2080C();
  sub_232CE91E0();
  (*(v58 + 104))(v57, v50, v59);
  sub_232BA5D34();
  sub_232CE9BB0();
  (*(v58 + 8))(v57, v59);
  v22 = sub_232BA7224();
  v9(v22);
  sub_232CE9130();
  sub_232B55484();
  sub_232B12504(v23, v24, v25, v26);
  (*(v62 + 104))(v61, *MEMORY[0x277D0E578], v63);
  sub_232CE9100();
  sub_232B55484();
  sub_232B12504(v27, v28, v29, v30);
  (*(v64 + 104))(v66, *MEMORY[0x277D0E580], v65);
  sub_232B37C0C();
  sub_232CE9140();
  (*(v68 + 104))(v67, v50, v69);
  sub_232CE9BD0();
  v31 = *(v68 + 8);
  v32 = sub_232BA64A4();
  v33(v32);
  (v9)(v60, v3);
  sub_232CE9C60();
  sub_232BA5C64();
  sub_232CE9B90();

  v34 = sub_232BA5ED4();
  v9(v34);
  v35 = *(v70 + 32);
  v0[85] = v35;
  v36 = OBJC_IVAR____TtCC21DocumentUnderstanding18DUEventDraftGatingP33_7DFF5EDDB67079A377F3E66D4A02DD0811_ClientInfo_trackingConfig;
  sub_232BA63D0();
  swift_beginAccess();
  (*(v72 + 16))(v74, v35 + v36, v73);
  sub_232BA59E0();
  sub_232CE9BF0();
  v37 = sub_232BA6AAC();
  v38(v37);
  v39 = sub_232BA5CAC();
  v9(v39);
  sub_232CE98F0();
  v40 = sub_232BA5CE4();
  sub_232B12504(v40, v41, v42, v43);
  sub_232BA6870();
  v44 = *(MEMORY[0x277D0E538] + 4);
  swift_task_alloc();
  sub_232BA6740();
  v0[86] = v45;
  *v45 = v46;
  v45[1] = sub_232B9F8AC;
  v47 = v0[33];
  sub_232BA6458();

  return MEMORY[0x282166B58]();
}

uint64_t sub_232B9F8AC()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 688);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 696) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232B9F9A8()
{
  v1 = v0[33];
  v2 = sub_232B124A8(&qword_27DDC73E8, &qword_232CF90E8);
  sub_232B351B0(v1, 1, v2);
  if (v3)
  {
    sub_232BA4D50(v1, &qword_27DDC73C8, &qword_232CF90C8);
  }

  else
  {
    v53 = v0[84];
    v49 = v0[83];
    v68 = v0[81];
    v70 = v0[82];
    v58 = v0[78];
    v60 = v0[79];
    v64 = v0[71];
    v66 = v0[72];
    v4 = v0[45];
    v43 = v0[44];
    v45 = v0[43];
    v47 = v0[46];
    v72 = v0[41];
    v62 = v0[40];
    v5 = v0[39];
    v6 = v0[37];
    v56 = v6;
    v39 = v0[36];
    v41 = v0[38];
    v7 = v0[34];
    v8 = v0[35];
    v51 = v0[29];
    v35 = *(v7 + 48);
    v37 = *(v2 + 48);
    v9 = *(v62 + 32);
    v10 = sub_232B35128();
    (v9)(v10);
    v11 = *(v6 + 32);
    v11(v8 + v35, v1 + v37, v39);
    v12 = *(v7 + 48);
    sub_232BA6358();
    v9();
    v11(v41, v8 + v12, v39);
    sub_232CE9270();
    (*(v43 + 8))(v47, v45);
    (*(v43 + 32))(v47, v4, v45);
    inited = swift_initStackObject();
    v14 = sub_232BA6308(inited, xmmword_232CF6460);
    inited[4].n128_u64[1] = v14;
    sub_232BA5998();
    inited[5].n128_u64[0] = sub_232BA4DA4(v15, v16);
    sub_232BA18A8(&inited[3]);
    sub_232BA5C58(v14);
    (*(v17 + 16))();
    sub_232BA5FEC();
    sub_232CE9C60();
    sub_232CE9C60();
    sub_232BA71B0();
    sub_232CE9250();

    (*(v56 + 8))(v41, v39);
    (*(v62 + 8))(v72, v5);
    v68(v60, v64);
    v18 = *(v66 + 32);
    v19 = sub_232BA7224();
    v20(v19);
  }

  v33 = v0[85];
  v21 = v0[81];
  v22 = v0[80];
  v23 = v0[79];
  v24 = v0[78];
  v36 = v0[82];
  v38 = v0[77];
  v40 = v0[76];
  v42 = v0[75];
  v44 = v0[74];
  v46 = v0[73];
  v25 = v0[71];
  v48 = v0[70];
  v50 = v0[67];
  v52 = v0[64];
  v54 = v0[61];
  v55 = v0[58];
  v57 = v0[55];
  v59 = v0[52];
  v61 = v0[49];
  v26 = v0[46];
  v63 = v0[45];
  v27 = v0[44];
  v34 = v0[43];
  v65 = v0[42];
  v67 = v0[41];
  v69 = v0[38];
  v71 = v0[35];
  v73 = v0[33];
  v28 = v0[28];
  sub_232CE9B80();
  v0[27] = *(v33 + OBJC_IVAR____TtCC21DocumentUnderstanding18DUEventDraftGatingP33_7DFF5EDDB67079A377F3E66D4A02DD0811_ClientInfo__model);
  sub_232CE8FC0();
  sub_232CE9C00();
  v29 = sub_232BA7160();
  v21(v29);
  (*(v27 + 8))(v26, v34);
  v30 = sub_232BA7198();
  v21(v30);

  sub_232B26CF4();

  return v31();
}

uint64_t sub_232B9FED4()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[75];
  v12 = v0[74];
  v13 = v0[73];
  v8 = v0[71];
  v14 = v0[70];
  v15 = v0[67];
  v16 = v0[64];
  v17 = v0[61];
  v18 = v0[58];
  v19 = v0[55];
  v20 = v0[52];
  v21 = v0[49];
  v22 = v0[45];
  v23 = v0[42];
  v24 = v0[41];
  v25 = v0[38];
  v26 = v0[35];
  v27 = v0[33];
  (*(v0[44] + 8))(v0[46], v0[43]);
  v2(v3, v8);

  sub_232B26CF4();
  v10 = v0[87];

  return v9();
}

uint64_t sub_232BA00A0(uint64_t a1)
{
  v2 = sub_232CE9B70();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232CE9780();
  v16[3] = v8;
  v16[4] = sub_232BA4DA4(&qword_2814DFA60, MEMORY[0x277D0E698]);
  v9 = sub_232BA18A8(v16);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  v10 = MEMORY[0x277D42E18];
  sub_232CE9B60();
  sub_232B2040C(v16);
  sub_232B124A8(&qword_27DDC73F0, &qword_232CF90F0);
  v11 = *(v3 + 72);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_232CF6460;
  (*(v4 + 16))(v13 + v12, v7, v2);
  MEMORY[0x2383918E0](v13, v2, v10);

  return (*(v4 + 8))(v7, v2);
}

unsigned __int8 *sub_232BA02C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_232CE8FE0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232CE9080();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v58[3] = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v58[2] = v58 - v21;
  v22 = sub_232CE9210();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_232CE9C60();
  sub_232CE9200();
  (*(v23 + 32))(v6 + OBJC_IVAR____TtCC21DocumentUnderstanding18DUEventDraftGatingP33_7DFF5EDDB67079A377F3E66D4A02DD0811_ClientInfo_trackingConfig, v26, v22);
  v27 = sub_232B1E0D0(0xD000000000000015, 0x8000000232D058B0, a5);
  v29 = v28;

  v60 = v6;
  v59 = a4;
  v58[4] = v15;
  if (v29)
  {
    v31 = HIBYTE(v29) & 0xF;
    v32 = v27 & 0xFFFFFFFFFFFFLL;
    if ((v29 & 0x2000000000000000) != 0)
    {
      v33 = HIBYTE(v29) & 0xF;
    }

    else
    {
      v33 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      if ((v29 & 0x1000000000000000) != 0)
      {
        v35 = sub_232BA2B04(v27, v29, 10);
        v53 = v57;
        goto LABEL_65;
      }

      if ((v29 & 0x2000000000000000) != 0)
      {
        v61[0] = v27;
        v61[1] = v29 & 0xFFFFFFFFFFFFFFLL;
        if (v27 == 43)
        {
          if (v31)
          {
            if (--v31)
            {
              v35 = 0;
              v45 = v61 + 1;
              while (1)
              {
                v46 = *v45 - 48;
                if (v46 > 9)
                {
                  break;
                }

                v47 = 10 * v35;
                if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                {
                  break;
                }

                v35 = v47 + v46;
                if (__OFADD__(v47, v46))
                {
                  break;
                }

                ++v45;
                if (!--v31)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

LABEL_78:
          __break(1u);
          return result;
        }

        if (v27 != 45)
        {
          if (v31)
          {
            v35 = 0;
            v50 = v61;
            while (1)
            {
              v51 = *v50 - 48;
              if (v51 > 9)
              {
                break;
              }

              v52 = 10 * v35;
              if ((v35 * 10) >> 64 != (10 * v35) >> 63)
              {
                break;
              }

              v35 = v52 + v51;
              if (__OFADD__(v52, v51))
              {
                break;
              }

              ++v50;
              if (!--v31)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        if (v31)
        {
          if (--v31)
          {
            v35 = 0;
            v39 = v61 + 1;
            while (1)
            {
              v40 = *v39 - 48;
              if (v40 > 9)
              {
                break;
              }

              v41 = 10 * v35;
              if ((v35 * 10) >> 64 != (10 * v35) >> 63)
              {
                break;
              }

              v35 = v41 - v40;
              if (__OFSUB__(v41, v40))
              {
                break;
              }

              ++v39;
              if (!--v31)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        if ((v27 & 0x1000000000000000) != 0)
        {
          result = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_232CEA550();
        }

        v34 = *result;
        if (v34 == 43)
        {
          if (v32 >= 1)
          {
            v31 = v32 - 1;
            if (v32 != 1)
            {
              v35 = 0;
              if (result)
              {
                v42 = result + 1;
                while (1)
                {
                  v43 = *v42 - 48;
                  if (v43 > 9)
                  {
                    goto LABEL_63;
                  }

                  v44 = 10 * v35;
                  if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v35 = v44 + v43;
                  if (__OFADD__(v44, v43))
                  {
                    goto LABEL_63;
                  }

                  ++v42;
                  if (!--v31)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_55;
            }

            goto LABEL_63;
          }

          goto LABEL_77;
        }

        if (v34 != 45)
        {
          if (v32)
          {
            v35 = 0;
            if (result)
            {
              while (1)
              {
                v48 = *result - 48;
                if (v48 > 9)
                {
                  goto LABEL_63;
                }

                v49 = 10 * v35;
                if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                {
                  goto LABEL_63;
                }

                v35 = v49 + v48;
                if (__OFADD__(v49, v48))
                {
                  goto LABEL_63;
                }

                ++result;
                if (!--v32)
                {
                  goto LABEL_55;
                }
              }
            }

            goto LABEL_55;
          }

LABEL_63:
          v35 = 0;
          LOBYTE(v31) = 1;
          goto LABEL_64;
        }

        if (v32 >= 1)
        {
          v31 = v32 - 1;
          if (v32 != 1)
          {
            v35 = 0;
            if (result)
            {
              v36 = result + 1;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  goto LABEL_63;
                }

                v38 = 10 * v35;
                if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                {
                  goto LABEL_63;
                }

                v35 = v38 - v37;
                if (__OFSUB__(v38, v37))
                {
                  goto LABEL_63;
                }

                ++v36;
                if (!--v31)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_55:
            LOBYTE(v31) = 0;
LABEL_64:
            v62 = v31;
            v53 = v31;
LABEL_65:

            if (v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = v35;
            }

            v58[0] = v54;
            goto LABEL_69;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }
  }

  v58[0] = 0;
LABEL_69:
  v58[1] = a3;
  sub_232CE8FC0();
  if (qword_27DDC6388 != -1)
  {
    swift_once();
  }

  sub_232CE8F60();
  sub_232BA4DA4(&qword_27DDC7490, MEMORY[0x277D29B48]);

  sub_232CE8F70();
  sub_232CE8FD0();
  sub_232CE9070();
  v55 = sub_232CE8FB0();
  v56 = v60;
  *(v60 + OBJC_IVAR____TtCC21DocumentUnderstanding18DUEventDraftGatingP33_7DFF5EDDB67079A377F3E66D4A02DD0811_ClientInfo__model) = v55;
  return v56;
}

uint64_t sub_232BA0938(uint64_t *a1, void *a2)
{
  v5 = *(v2 + 24);

  v6 = *a1;
  v7 = sub_232CE9210();
  sub_232BA5190(v7);
  (*(v8 + 8))(v2 + v6);
  v9 = *(v2 + *a2);

  return v2;
}

uint64_t sub_232BA09C0(uint64_t *a1, void *a2)
{
  v2 = sub_232BA0938(a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_232BA0A20@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  sub_232BA63D0();
  swift_beginAccess();
  v6 = sub_232CE9210();
  sub_232B13F24(v6);
  return (*(v7 + 16))(a2, v4 + v5);
}

uint64_t sub_232BA0AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *a4;
  swift_beginAccess();
  v8 = sub_232CE9210();
  sub_232B13F24(v8);
  (*(v9 + 40))(v6 + v7, a1);
  return swift_endAccess();
}

uint64_t (*sub_232BA0B30())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_232BA0BA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_232BA0C1C()
{
  result = sub_232CE9210();
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

uint64_t sub_232BA0CC4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_232BA4E58;

  return sub_232B9E4E0();
}

uint64_t sub_232BA0FBC()
{
  sub_232BA1D98();
  sub_232BA1DEC();
  return sub_232CEA500();
}

uint64_t sub_232BA1054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return MEMORY[0x2821662E8](a1, a2, v7, v8);
}

uint64_t sub_232BA1108(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  sub_232BA5CAC();
  sub_232BA5F5C();
  return sub_232CEA500();
}

void sub_232BA11A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_232B8298C(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], __src[1], SBYTE2(__src[1]), SHIBYTE(__src[1]));
  if (!v9)
  {
    memcpy(a9, __src, 0xB1uLL);
  }
}

void sub_232BA1214(void *a1@<X8>)
{
  sub_232B84DB4();
  if (!v1)
  {
    memcpy(a1, v3, 0x159uLL);
  }
}

void sub_232BA128C(void *a1@<X8>)
{
  sub_232B878F4();
  if (!v1)
  {
    memcpy(a1, __src, 0x138uLL);
  }
}

void sub_232BA1304(void *a1@<X8>)
{
  sub_232B8970C();
  if (!v1)
  {
    memcpy(a1, __src, 0xB8uLL);
  }
}

void sub_232BA1374(void *a1@<X8>)
{
  sub_232B8AF2C();
  if (!v1)
  {
    memcpy(a1, __src, 0x118uLL);
  }
}

void sub_232BA13EC(void *a1@<X8>)
{
  sub_232B8D530();
  if (!v1)
  {
    memcpy(a1, __src, 0x198uLL);
  }
}

void sub_232BA1464(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_232B901C0(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], __src[1], SBYTE2(__src[1]), SHIBYTE(__src[1]));
  if (!v9)
  {
    memcpy(a9, __src, 0x111uLL);
  }
}

void sub_232BA1580(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  sub_232B930C0(a1, a2, a3, a2, a3, a4, a5, a6, v9, __src[0], __src[1], SBYTE2(__src[1]), SHIBYTE(__src[1]));
  if (!v7)
  {
    memcpy(a7, __src, 0xF1uLL);
  }
}

void sub_232BA1600(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_232B94780(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], __src[1], SBYTE2(__src[1]), SHIBYTE(__src[1]));
  if (!v9)
  {
    memcpy(a9, __src, 0x81uLL);
  }
}

void sub_232BA1670(void *a1@<X8>)
{
  sub_232B95D3C();
  if (!v1)
  {
    memcpy(a1, __src, 0xE8uLL);
  }
}

void sub_232BA16E8(void *a1@<X8>)
{
  sub_232B97E90();
  if (!v1)
  {
    memcpy(a1, __src, 0x108uLL);
  }
}

uint64_t sub_232BA1760@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_232CE9940();
  sub_232B135C4(v5, a2);
  sub_232BA5C58(v5);
  v7 = *(v6 + 16);

  return v7(a3);
}

void *sub_232BA17F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_232B99600(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

uint64_t *sub_232BA18A8(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_232BA1908()
{
  result = qword_2814DFAA8;
  if (!qword_2814DFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFAA8);
  }

  return result;
}

id sub_232BA1978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_232CE9D20();
  sub_232BA5CA0();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v4 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_232CE8B30();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_232BA1A50()
{
  result = qword_27DDC73F8;
  if (!qword_27DDC73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC73F8);
  }

  return result;
}

unint64_t sub_232BA1AA4()
{
  result = qword_27DDC7400;
  if (!qword_27DDC7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7400);
  }

  return result;
}

unint64_t sub_232BA1AF8()
{
  result = qword_2814E13B8;
  if (!qword_2814E13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13B8);
  }

  return result;
}

unint64_t sub_232BA1B4C()
{
  result = qword_2814E13C0;
  if (!qword_2814E13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13C0);
  }

  return result;
}

unint64_t sub_232BA1BA0()
{
  result = qword_2814E17F8;
  if (!qword_2814E17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E17F8);
  }

  return result;
}

unint64_t sub_232BA1BF4()
{
  result = qword_2814E1800;
  if (!qword_2814E1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1800);
  }

  return result;
}

unint64_t sub_232BA1C48()
{
  result = qword_27DDC7408;
  if (!qword_27DDC7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7408);
  }

  return result;
}

unint64_t sub_232BA1C9C()
{
  result = qword_27DDC7410;
  if (!qword_27DDC7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7410);
  }

  return result;
}

unint64_t sub_232BA1CF0()
{
  result = qword_2814E14F0;
  if (!qword_2814E14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E14F0);
  }

  return result;
}

unint64_t sub_232BA1D44()
{
  result = qword_2814E14F8;
  if (!qword_2814E14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E14F8);
  }

  return result;
}

unint64_t sub_232BA1D98()
{
  result = qword_2814E13E8;
  if (!qword_2814E13E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13E8);
  }

  return result;
}

unint64_t sub_232BA1DEC()
{
  result = qword_2814E13F0;
  if (!qword_2814E13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13F0);
  }

  return result;
}

unint64_t sub_232BA1E40()
{
  result = qword_2814E13A0;
  if (!qword_2814E13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13A0);
  }

  return result;
}

unint64_t sub_232BA1E94()
{
  result = qword_2814E13A8;
  if (!qword_2814E13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13A8);
  }

  return result;
}

unint64_t sub_232BA1EE8()
{
  result = qword_2814E13C8;
  if (!qword_2814E13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13C8);
  }

  return result;
}

unint64_t sub_232BA1FA4()
{
  result = qword_2814E1808;
  if (!qword_2814E1808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1808);
  }

  return result;
}

unint64_t sub_232BA1FF8()
{
  result = qword_27DDC7420;
  if (!qword_27DDC7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7420);
  }

  return result;
}

unint64_t sub_232BA20B4()
{
  result = qword_2814E13F8;
  if (!qword_2814E13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13F8);
  }

  return result;
}

unint64_t sub_232BA2108()
{
  result = qword_2814E1500;
  if (!qword_2814E1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1500);
  }

  return result;
}

unint64_t sub_232BA2504()
{
  result = qword_2814E13B0;
  if (!qword_2814E13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13B0);
  }

  return result;
}

unint64_t sub_232BA25C0()
{
  result = qword_2814E0260;
  if (!qword_2814E0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E0260);
  }

  return result;
}

unint64_t sub_232BA2614()
{
  result = qword_2814DFA98;
  if (!qword_2814DFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA98);
  }

  return result;
}

unint64_t sub_232BA2668()
{
  result = qword_2814DFAC8;
  if (!qword_2814DFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFAC8);
  }

  return result;
}

unint64_t sub_232BA26BC()
{
  result = qword_2814E1830;
  if (!qword_2814E1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1830);
  }

  return result;
}

unint64_t sub_232BA2710()
{
  result = qword_2814DFA88;
  if (!qword_2814DFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA88);
  }

  return result;
}

unint64_t sub_232BA2764()
{
  result = qword_2814DFAB8;
  if (!qword_2814DFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFAB8);
  }

  return result;
}

unint64_t sub_232BA27B8()
{
  result = qword_2814E1840;
  if (!qword_2814E1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1840);
  }

  return result;
}

unint64_t sub_232BA280C()
{
  result = qword_2814E1810;
  if (!qword_2814E1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1810);
  }

  return result;
}

unint64_t sub_232BA2860()
{
  result = qword_2814E13D8;
  if (!qword_2814E13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13D8);
  }

  return result;
}

unint64_t sub_232BA28B4()
{
  result = qword_2814DFA78;
  if (!qword_2814DFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA78);
  }

  return result;
}

unint64_t sub_232BA2908()
{
  result = qword_2814E17E8;
  if (!qword_2814E17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E17E8);
  }

  return result;
}

uint64_t sub_232BA295C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_232B27EEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_232BA29D8()
{
  result = qword_2814E1410;
  if (!qword_2814E1410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1410);
  }

  return result;
}

void *sub_232BA2A94(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_232B124A8(&qword_27DDC7488, &qword_232CF9168);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_232BA2B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v80 = a2;

  result = sub_232CE9FA0();
  v7 = result;
  v8 = v6;
  if ((v6 & 0x1000000000000000) != 0)
  {
    sub_232B5A008();
    sub_232BA3010();
    sub_232BA5EAC();

    v8 = v3;
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v6 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v7 & 0x1000000000000000) != 0)
    {
      result = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      sub_232B5A008();
      result = sub_232CEA550();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          sub_232BA6C20();
          if (v26 ^ v27 | v25)
          {
            v30 = 65;
          }

          if (!(v26 ^ v27 | v25))
          {
            v31 = 58;
          }

          if (v28)
          {
            v18 = 0;
            v32 = (v28 + 1);
            do
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v31)
              {
                if (v33 < 0x41 || v33 >= v30)
                {
                  sub_232BA6D34();
                  if (!v23 || v33 >= v35)
                  {
                    goto LABEL_142;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v18 * a3;
              if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v18 = v36 + (v33 + v34);
              if (__OFADD__(v36, (v33 + v34)))
              {
                goto LABEL_141;
              }

              ++v32;
              --v29;
            }

            while (v29);
LABEL_52:
            v7 = v18;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v7 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (result)
        {
          v40 = 0;
          do
          {
            v41 = *result;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                v7 = 0;
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_142;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            v43 = v40 * a3;
            if ((v40 * a3) >> 64 != (v40 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v40 = v43 + (v41 + v42);
            if (__OFADD__(v43, (v41 + v42)))
            {
              goto LABEL_141;
            }

            ++result;
            --v9;
          }

          while (v9);
          v7 = v43 + (v41 + v42);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        sub_232BA6C20();
        if (v12 ^ v13 | v11)
        {
          v16 = 65;
        }

        if (!(v12 ^ v13 | v11))
        {
          v17 = 58;
        }

        if (v14)
        {
          v18 = 0;
          v19 = (v14 + 1);
          while (1)
          {
            v20 = *v19;
            if (v20 < 0x30 || v20 >= v17)
            {
              if (v20 < 0x41 || v20 >= v16)
              {
                sub_232BA6D34();
                if (!v23 || v20 >= v22)
                {
                  goto LABEL_142;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }
            }

            else
            {
              v21 = -48;
            }

            v24 = v18 * a3;
            if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v18 = v24 - (v20 + v21);
            if (__OFSUB__(v24, (v20 + v21)))
            {
              goto LABEL_141;
            }

            ++v19;
            if (!--v15)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v7 = 0;
LABEL_142:

        return v7;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v44 = HIBYTE(v8) & 0xF;
  v79 = v7;
  v80 = v8 & 0xFFFFFFFFFFFFFFLL;
  if (v7 != 43)
  {
    if (v7 != 45)
    {
      if (v44)
      {
        sub_232BA5EF0();
        if (v69 ^ v70 | v68)
        {
          v72 = 65;
        }

        if (!(v69 ^ v70 | v68))
        {
          v73 = 58;
        }

        v74 = &v79;
        while (1)
        {
          v75 = *v74;
          if (v75 < 0x30 || v75 >= v73)
          {
            if (v75 < 0x41 || v75 >= v72)
            {
              sub_232BA6D34();
              if (!v23 || v75 >= v77)
              {
                goto LABEL_142;
              }

              v76 = -87;
            }

            else
            {
              v76 = -55;
            }
          }

          else
          {
            v76 = -48;
          }

          v78 = v49 * a3;
          if ((v49 * a3) >> 64 != (v49 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v49 = v78 + (v75 + v76);
          if (__OFADD__(v78, (v75 + v76)))
          {
            goto LABEL_141;
          }

          ++v74;
          if (!--v71)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v44)
    {
      if (v44 != 1)
      {
        sub_232BA5EF0();
        if (v46 ^ v47 | v45)
        {
          v50 = 65;
        }

        if (!(v46 ^ v47 | v45))
        {
          v51 = 58;
        }

        v52 = &v79 + 1;
        while (1)
        {
          v53 = *v52;
          if (v53 < 0x30 || v53 >= v51)
          {
            if (v53 < 0x41 || v53 >= v50)
            {
              sub_232BA6D34();
              if (!v23 || v53 >= v55)
              {
                goto LABEL_142;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v56 = v49 * a3;
          if ((v49 * a3) >> 64 != (v49 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v49 = v56 - (v53 + v54);
          if (__OFSUB__(v56, (v53 + v54)))
          {
            goto LABEL_141;
          }

          ++v52;
          if (!--v48)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v44)
  {
    if (v44 != 1)
    {
      sub_232BA5EF0();
      if (v58 ^ v59 | v57)
      {
        v61 = 65;
      }

      if (!(v58 ^ v59 | v57))
      {
        v62 = 58;
      }

      v63 = &v79 + 1;
      do
      {
        v64 = *v63;
        if (v64 < 0x30 || v64 >= v62)
        {
          if (v64 < 0x41 || v64 >= v61)
          {
            sub_232BA6D34();
            if (!v23 || v64 >= v66)
            {
              goto LABEL_142;
            }

            v65 = -87;
          }

          else
          {
            v65 = -55;
          }
        }

        else
        {
          v65 = -48;
        }

        v67 = v49 * a3;
        if ((v49 * a3) >> 64 != (v49 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v49 = v67 + (v64 + v65);
        if (__OFADD__(v67, (v64 + v65)))
        {
          goto LABEL_141;
        }

        ++v63;
        --v60;
      }

      while (v60);
LABEL_140:
      v7 = v49;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_232BA3010()
{
  v0 = sub_232BA307C();
  v4 = sub_232BA30B0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_232BA30B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_232CE9E10();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_232CEA360();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_232BA2A94(v9, 0);
  v12 = sub_232BA3210(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_232CE9E10();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_232CEA550();
LABEL_4:

  return sub_232CE9E10();
}

unint64_t sub_232BA3210(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_232BD336C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_232CE9EF0();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_232CEA550();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_232BD336C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_232CE9ED0();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for ReceivedDateRelationship(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReceivedDateRelationship(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ConfirmationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfirmationStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrderStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OrderStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProductType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ProductType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShippingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShippingStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShippingEmailType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DUExtractionCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TransportationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_232BA3D5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_232BA3D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA3E24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 345))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_232BA3E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 344) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 345) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 345) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA3F18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 312))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_232BA3F58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA4000(uint64_t a1, int a2)
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

uint64_t sub_232BA4040(uint64_t result, int a2, int a3)
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

uint64_t sub_232BA40C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_232BA4104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA41A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 408))
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

uint64_t sub_232BA41E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA42A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 273))
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