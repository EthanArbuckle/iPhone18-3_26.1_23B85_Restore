Swift::Int sub_10003C128()
{
  v2 = *v0;
  sub_100081988();
  sub_100081238();
  return sub_1000819B8();
}

uint64_t sub_10003C18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003CE64();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10003C1D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003CC10(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10003C20C(uint64_t a1)
{
  v2 = sub_10003CE64();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_10003C248(uint64_t a1)
{
  v2 = sub_10003CE64();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_10003C2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003CE64();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

_OWORD *sub_10003C2FC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000525C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000537E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100052730(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000525C4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1000818E8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_1000068F4(v23);

    return sub_1000068E4(a1, v23);
  }

  else
  {
    sub_100053504(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_10003C44C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10005263C(a2 & 1);
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
      sub_100053988();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1000529E8(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10005263C(a2 & 1);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1000818E8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_100053570(v9, a2 & 1, a1, v20);
  }
}

unint64_t sub_10003C570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006940(&qword_1000B7D58, &qword_100085A10);
    v3 = sub_1000817D8();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001A8DC(v4, &v13, &qword_1000B7D00, qword_100085E80);
      v5 = v13;
      v6 = v14;
      result = sub_1000525C4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000068E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10003C6A0(uint64_t a1)
{
  v2 = sub_100006940(&qword_1000B7D00, qword_100085E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10003C708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100006940(&qword_1000B7D38, &qword_1000859F0);
  v3 = sub_1000817D8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_10005263C(v4);
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

    v8 = sub_10005263C(v4);
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

unint64_t sub_10003C818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006940(&unk_1000B83D0, &unk_1000859E0);
    v3 = sub_1000817D8();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001A8DC(v4, v11, &qword_1000B7D30, &unk_100085BC0);
      v5 = v11[0];
      result = sub_1000526A8(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_1000068E4(&v12, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003C940(uint64_t a1)
{
  v2 = sub_100006940(&qword_1000B7D40, &unk_100085A00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100006940(&qword_1000B7D48, qword_100086060);
    v8 = sub_1000817D8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001A8DC(v10, v6, &qword_1000B7D40, &unk_100085A00);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1000525C4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for DataManager.StateInfo();
      result = sub_10003CE00(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003CB14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006940(&qword_1000B83F0, &qword_1000859F8);
    v3 = sub_1000817D8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000525C4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10003CC10(uint64_t result)
{
  if ((result - 12) < 0xFFFFFFFFFFFFFFF5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10003CC28()
{
  result = qword_1000B7D08;
  if (!qword_1000B7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7D08);
  }

  return result;
}

unint64_t sub_10003CC80()
{
  result = qword_1000B7D10;
  if (!qword_1000B7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7D10);
  }

  return result;
}

unint64_t sub_10003CCDC()
{
  result = qword_1000B7D18;
  if (!qword_1000B7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7D18);
  }

  return result;
}

unint64_t sub_10003CD34()
{
  result = qword_1000B7D20;
  if (!qword_1000B7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7D20);
  }

  return result;
}

unint64_t sub_10003CD8C()
{
  result = qword_1000B7D28;
  if (!qword_1000B7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7D28);
  }

  return result;
}

uint64_t sub_10003CE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.StateInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003CE64()
{
  result = qword_1000B7D50;
  if (!qword_1000B7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7D50);
  }

  return result;
}

Swift::String __swiftcall Data.toHexString()()
{
  sub_10003D7BC(v0, v1);
  sub_100006940(&qword_1000B7530, &qword_100089380);
  sub_10003EEE8(&qword_1000B88A0, &qword_1000B7530, &qword_100089380);
  v2 = sub_100081248();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t Data.init(hexString:)()
{
  if (sub_100081398())
  {
    goto LABEL_148;
  }

  result = sub_100081398();
  if (!result)
  {
    v2 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v1 = result;
  v79 = _swiftEmptyArrayStorage;
  result = sub_10003E078(0, result & ~(result >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v2 = v79;
    do
    {
      v3 = sub_100081438();
      v79 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        v8 = v3;
        v9 = v4;
        sub_10003E078((v5 > 1), v6 + 1, 1);
        v4 = v9;
        v3 = v8;
        v2 = v79;
      }

      v2[2] = v6 + 1;
      v7 = &v2[2 * v6];
      v7[4] = v3;
      v7[5] = v4;
      result = sub_1000813A8();
      --v1;
    }

    while (v1);
LABEL_11:
    v78 = v2[2];
    if (v78)
    {
      v10 = 0;
      v11 = 0;
      v12 = v2[2];
      while (1)
      {
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = __OFADD__(v11, 2);
        v11 += 2;
        if (v14)
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v10;
        if (v11 >= v78)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v13 = 0;
LABEL_19:
    v81 = _swiftEmptyArrayStorage;
    result = sub_10003E058(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      goto LABEL_164;
    }

    v15 = v81;
    if (v13)
    {
      v16 = 0;
      v17 = v2 + 4;
      do
      {
        if (v16 >= v78)
        {
          goto LABEL_152;
        }

        v18 = v16 + 2;
        if (__OFADD__(v16, 2))
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v16 + 2;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_153;
        }

        v20 = v2[2];
        if (v16 >= v20)
        {
          goto LABEL_154;
        }

        if (v16 + 1 >= v20)
        {
          goto LABEL_155;
        }

        v21 = v17[2 * v16 + 1];
        v22 = &v17[2 * v16 + 2];
        v23 = *v22;
        v24 = v22[1];
        v79 = v17[2 * v16];
        v80 = v21;
        v25 = v15;
        swift_bridgeObjectRetain_n();

        v82._countAndFlagsBits = v23;
        v82._object = v24;
        sub_1000813B8(v82);

        v15 = v25;
        v26 = v79;
        v81 = v25;
        v27 = v25[2];
        v28 = v15[3];
        if (v27 >= v28 >> 1)
        {
          result = sub_10003E058((v28 > 1), v27 + 1, 1);
          v15 = v81;
        }

        v15[2] = v27 + 1;
        v29 = &v15[2 * v27];
        v29[4] = v26;
        v29[5] = v21;
        v16 = v19;
        --v13;
      }

      while (v13);
      if (v19 >= v78)
      {
LABEL_48:
        v44 = v15;

        v45 = v44;
        v46 = v44[2];
        if (v46)
        {
          v47 = 0;
          v48 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (v47 >= v45[2])
            {
              goto LABEL_156;
            }

            v49 = &v44[2 * v47 + 4];
            v50 = *v49;
            v51 = v49[1];
            ++v47;
            v52 = HIBYTE(v51) & 0xF;
            v53 = v50 & 0xFFFFFFFFFFFFLL;
            if ((v51 & 0x2000000000000000) != 0)
            {
              v54 = HIBYTE(v51) & 0xF;
            }

            else
            {
              v54 = v50 & 0xFFFFFFFFFFFFLL;
            }

            if (!v54)
            {
              goto LABEL_135;
            }

            if ((v51 & 0x1000000000000000) == 0)
            {
              break;
            }

            LOWORD(v50) = sub_10003E734(v50, v51, 16);

            v45 = v44;
            if ((v50 & 0x100) == 0)
            {
LABEL_138:
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_10003DB4C(0, *(v48 + 2) + 1, 1, v48, &qword_1000B7DA8, qword_1000867C0);
                v48 = result;
              }

              v74 = *(v48 + 2);
              v73 = *(v48 + 3);
              if (v74 >= v73 >> 1)
              {
                result = sub_10003DB4C((v73 > 1), v74 + 1, 1, v48, &qword_1000B7DA8, qword_1000867C0);
                v45 = v44;
                v48 = result;
              }

              else
              {
                v45 = v44;
              }

              *(v48 + 2) = v74 + 1;
              v48[v74 + 32] = v50;
            }

LABEL_135:
            if (v47 == v46)
            {
              goto LABEL_146;
            }
          }

          if ((v51 & 0x2000000000000000) != 0)
          {
            v79 = v50;
            v80 = v51 & 0xFFFFFFFFFFFFFFLL;
            if (v50 == 43)
            {
              if (!v52)
              {
                goto LABEL_160;
              }

              if (--v52)
              {
                LOBYTE(v50) = 0;
                v65 = &v79 + 1;
                while (1)
                {
                  v66 = *v65;
                  v67 = v66 - 48;
                  if ((v66 - 48) >= 0xA)
                  {
                    if ((v66 - 65) < 6)
                    {
                      v67 = v66 - 55;
                    }

                    else
                    {
                      if ((v66 - 97) > 5)
                      {
                        goto LABEL_133;
                      }

                      v67 = v66 - 87;
                    }
                  }

                  if (v50 > 0xFu)
                  {
                    break;
                  }

                  LOBYTE(v50) = v67 + 16 * v50;
                  ++v65;
                  if (!--v52)
                  {
                    goto LABEL_134;
                  }
                }
              }
            }

            else if (v50 == 45)
            {
              if (!v52)
              {
                goto LABEL_162;
              }

              if (--v52)
              {
                LOBYTE(v50) = 0;
                v59 = &v79 + 1;
                while (1)
                {
                  v60 = *v59;
                  v61 = v60 - 48;
                  if ((v60 - 48) >= 0xA)
                  {
                    if ((v60 - 65) < 6)
                    {
                      v61 = v60 - 55;
                    }

                    else
                    {
                      if ((v60 - 97) > 5)
                      {
                        goto LABEL_133;
                      }

                      v61 = v60 - 87;
                    }
                  }

                  if (v50 > 0xFu)
                  {
                    break;
                  }

                  LODWORD(v50) = 16 * (v50 & 0xF) - v61;
                  if ((v50 & 0xFFFFFF00) != 0)
                  {
                    break;
                  }

                  ++v59;
                  if (!--v52)
                  {
                    goto LABEL_134;
                  }
                }
              }
            }

            else if (v52)
            {
              LOBYTE(v50) = 0;
              v70 = &v79;
              while (1)
              {
                v71 = *v70;
                v72 = v71 - 48;
                if ((v71 - 48) >= 0xA)
                {
                  if ((v71 - 65) < 6)
                  {
                    v72 = v71 - 55;
                  }

                  else
                  {
                    if ((v71 - 97) > 5)
                    {
                      goto LABEL_133;
                    }

                    v72 = v71 - 87;
                  }
                }

                if (v50 > 0xFu)
                {
                  break;
                }

                LOBYTE(v50) = v72 + 16 * v50;
                ++v70;
                if (!--v52)
                {
                  goto LABEL_134;
                }
              }
            }

            goto LABEL_133;
          }

          if ((v50 & 0x1000000000000000) != 0)
          {
            result = (v51 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            result = sub_1000816B8();
            v45 = v44;
          }

          v55 = *result;
          if (v55 == 43)
          {
            if (v53 < 1)
            {
              goto LABEL_163;
            }

            v52 = v53 - 1;
            if (v53 == 1)
            {
              goto LABEL_133;
            }

            if (result)
            {
              LOBYTE(v50) = 0;
              v62 = (result + 1);
              while (1)
              {
                v63 = *v62;
                v64 = v63 - 48;
                if ((v63 - 48) >= 0xA)
                {
                  if ((v63 - 65) < 6)
                  {
                    v64 = v63 - 55;
                  }

                  else
                  {
                    if ((v63 - 97) > 5)
                    {
                      goto LABEL_133;
                    }

                    v64 = v63 - 87;
                  }
                }

                if (v50 > 0xFu)
                {
                  goto LABEL_133;
                }

                LOBYTE(v50) = v64 + 16 * v50;
                ++v62;
                if (!--v52)
                {
                  goto LABEL_134;
                }
              }
            }
          }

          else if (v55 == 45)
          {
            if (v53 < 1)
            {
              goto LABEL_161;
            }

            v52 = v53 - 1;
            if (v53 == 1)
            {
              goto LABEL_133;
            }

            if (result)
            {
              LOBYTE(v50) = 0;
              v56 = (result + 1);
              while (1)
              {
                v57 = *v56;
                v58 = v57 - 48;
                if ((v57 - 48) >= 0xA)
                {
                  if ((v57 - 65) < 6)
                  {
                    v58 = v57 - 55;
                  }

                  else
                  {
                    if ((v57 - 97) > 5)
                    {
                      goto LABEL_133;
                    }

                    v58 = v57 - 87;
                  }
                }

                if (v50 > 0xFu)
                {
                  goto LABEL_133;
                }

                LODWORD(v50) = 16 * (v50 & 0xF) - v58;
                if ((v50 & 0xFFFFFF00) != 0)
                {
                  goto LABEL_133;
                }

                ++v56;
                if (!--v52)
                {
                  goto LABEL_134;
                }
              }
            }
          }

          else
          {
            if (!v53)
            {
LABEL_133:
              LOBYTE(v50) = 0;
              LOBYTE(v52) = 1;
LABEL_134:
              LOBYTE(v81) = v52;
              if ((v52 & 1) == 0)
              {
                goto LABEL_138;
              }

              goto LABEL_135;
            }

            if (result)
            {
              LOBYTE(v50) = 0;
              while (1)
              {
                v68 = *result;
                v69 = v68 - 48;
                if ((v68 - 48) >= 0xA)
                {
                  if ((v68 - 65) < 6)
                  {
                    v69 = v68 - 55;
                  }

                  else
                  {
                    if ((v68 - 97) > 5)
                    {
                      goto LABEL_133;
                    }

                    v69 = v68 - 87;
                  }
                }

                if (v50 > 0xFu)
                {
                  goto LABEL_133;
                }

                LOBYTE(v50) = v69 + 16 * v50;
                ++result;
                if (!--v53)
                {
                  LOBYTE(v52) = 0;
                  goto LABEL_134;
                }
              }
            }
          }

          LOBYTE(v50) = 0;
          LOBYTE(v52) = 0;
          goto LABEL_134;
        }

        v48 = _swiftEmptyArrayStorage;
LABEL_146:

        v75 = *(v48 + 2);
        if (v75)
        {
          v76 = sub_100081398();

          if (v76 / v75 != 2)
          {
LABEL_148:

            return 0;
          }
        }

        else
        {
        }

        v77 = sub_10003EE08(v48);

        return v77;
      }
    }

    else
    {
      if (!v78)
      {
        goto LABEL_48;
      }

      v18 = 0;
    }

    v30 = &v2[2 * v18 + 7];
    while (1)
    {
      v31 = v18 + 2;
      v32 = __OFADD__(v18, 2);
      if ((v18 & 0x8000000000000000) != 0)
      {
        break;
      }

      v33 = v2[2];
      if (v18 >= v33)
      {
        goto LABEL_158;
      }

      v34 = v18 + 1;
      if (v34 >= v33)
      {
        goto LABEL_159;
      }

      v35 = *(v30 - 2);
      v36 = *(v30 - 1);
      v37 = *v30;
      v79 = *(v30 - 3);
      v80 = v35;
      v38 = v15;
      swift_bridgeObjectRetain_n();

      v83._countAndFlagsBits = v36;
      v83._object = v37;
      sub_1000813B8(v83);

      v15 = v38;
      v39 = v79;
      v81 = v38;
      v40 = v38[2];
      v41 = v15[3];
      if (v40 >= v41 >> 1)
      {
        result = sub_10003E058((v41 > 1), v40 + 1, 1);
        v15 = v81;
      }

      v30 += 4;
      v15[2] = v40 + 1;
      v42 = &v15[2 * v40];
      v42[4] = v39;
      v42[5] = v35;
      v43 = !v32;
      v18 = v34 + 1;
      if (v31 >= v78)
      {
        v43 = 0;
      }

      if (!v43)
      {
        goto LABEL_48;
      }
    }

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
  }

  __break(1u);
  return result;
}

unint64_t *sub_10003D7BC(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
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
    return &_swiftEmptyArrayStorage;
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
  v8 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = &_swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_10003E058(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
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

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
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

      v13 = v33 + v11;
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

        v18 = sub_100080AE8();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_100080B18();
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

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_100080AE8();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_100080B18();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_100006940(&qword_1000B7528, &unk_100086800);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100084830;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_1000812E8();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_10003E058((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

char *sub_10003DB4C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100006940(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_10003DC38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006940(&qword_1000B7D60, &qword_100085A18);
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

char *sub_10003DD68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006940(&qword_1000B7D88, &qword_100085A38);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10003DE90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100006940(a5, a6);
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
    v16 = &_swiftEmptyArrayStorage;
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
    sub_100006940(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

_BYTE *sub_10003DFC4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100065DD0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10003ED08(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10003ED84(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

char *sub_10003E058(char *a1, int64_t a2, char a3)
{
  result = sub_10003E158(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003E078(char *a1, int64_t a2, char a3)
{
  result = sub_10003E264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003E098(void *a1, int64_t a2, char a3)
{
  result = sub_10003E370(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003E0B8(void *a1, int64_t a2, char a3)
{
  result = sub_10003E600(a1, a2, a3, *v3, &qword_1000B7D78, &qword_100085A30, &qword_1000B7D80, &qword_100085BD0);
  *v3 = result;
  return result;
}

void *sub_10003E0F8(void *a1, int64_t a2, char a3)
{
  result = sub_10003E4B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003E118(void *a1, int64_t a2, char a3)
{
  result = sub_10003E600(a1, a2, a3, *v3, &qword_1000B7D68, &qword_100085A20, &unk_1000B8390, &qword_100086040);
  *v3 = result;
  return result;
}

char *sub_10003E158(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006940(&qword_1000B7D60, &qword_100085A18);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10003E264(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006940(&qword_1000B7DB0, &unk_100085A50);
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

void *sub_10003E370(void *result, int64_t a2, char a3, void *a4)
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
    sub_100006940(&unk_1000B8360, &unk_1000856E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100006940(&qword_1000B7D00, qword_100085E80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003E4B8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100006940(&qword_1000B7D70, &qword_100085A28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100006940(&qword_1000B7D30, &unk_100085BC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003E600(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100006940(a5, a6);
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
    v16 = &_swiftEmptyArrayStorage;
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
    sub_100006940(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unsigned __int8 *sub_10003E734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_100081448();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100049A34();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000816B8();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10003ED08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_100080B28();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_100080AD8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100080C78();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10003ED84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_100080B28();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_100080AD8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10003EE08(uint64_t a1)
{
  v9 = sub_100006940(&qword_1000B7D98, &qword_100085A48);
  v10 = sub_10003EEE8(&qword_1000B7DA0, &qword_1000B7D98, &qword_100085A48);
  v8[0] = a1;
  v2 = sub_10002329C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10003DFC4(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000068F4(v8);
  return v5;
}

uint64_t sub_10003EEE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000069EC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003EF50()
{
  if (*(v0[5] + 288))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    if (qword_1000B73F8 != -1)
    {
      swift_once();
    }

    v3 = sub_100081018();
    v0[6] = sub_100016240(v3, qword_1000B7DB8);
    v4 = sub_100080FF8();
    v5 = sub_1000815C8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Creating data store tables", v6, 2u);
    }

    v7 = v0[5];

    v8 = *(v7 + 152);
    v9 = *(v7 + 248);
    v0[7] = v9;

    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_10003F100;

    return sub_10004D204(v9);
  }
}

uint64_t sub_10003F100()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[5];

    return _swift_task_switch(sub_10003F560, v4, 0);
  }

  else
  {
    v5 = v3[7];

    v6 = swift_task_alloc();
    v3[10] = v6;
    *v6 = v3;
    v6[1] = sub_10003F274;
    v7 = v3[5];

    return sub_1000482D0();
  }
}

uint64_t sub_10003F274(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 40);
    *(v4 + 88) = a1 & 1;

    return _swift_task_switch(sub_10003F3C4, v9, 0);
  }
}

uint64_t sub_10003F3C4()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    v1 = *(v0 + 40);
    v2 = swift_beginAccess();
    v5 = *(v1 + 280);
    if (v5 >> 62)
    {
      v2 = sub_1000817A8();
      v6 = v2;
      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
          return _swift_task_switch(v2, v3, v4);
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            sub_1000816A8();
            swift_unknownObjectRelease();
          }
        }
      }
    }

    v8 = *(v0 + 48);
    v9 = sub_100080FF8();
    v10 = sub_1000815C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Created tables", v11, 2u);
    }
  }

  v3 = *(v0 + 40);
  v2 = sub_10003F53C;
  v4 = 0;

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10003F560()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10003F5C4(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_10003F5E4, v1, 0);
}

uint64_t sub_10003F5E4()
{
  if (qword_1000B73F8 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v1 = sub_100081018();
    v0[20] = sub_100016240(v1, qword_1000B7DB8);
    v2 = sub_100080FF8();
    v3 = sub_1000815B8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Purging all data from read-write tables", v4, 2u);
    }

    v5 = v0[19];

    swift_beginAccess();
    v6 = *(v5 + 280);
    v7 = v6 >> 62 ? sub_1000817A8() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v7)
    {
      break;
    }

    v8 = 0;
    while ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_1000816A8();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_13:
      v11 = *(v9 + 56);
      if ((v11 & 4) != 0 || (v11 & 2) != 0)
      {
      }

      else
      {
        sub_1000816D8();
        v12 = _swiftEmptyArrayStorage[2];
        sub_1000816F8();
        sub_100081708();
        sub_1000816E8();
      }

      ++v8;
      if (v10 == v7)
      {
        goto LABEL_19;
      }
    }

    if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

LABEL_19:
  v0[21] = _swiftEmptyArrayStorage;

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v46 = sub_1000817A8();
    v0[22] = v46;
    if (!v46)
    {
      goto LABEL_62;
    }

LABEL_22:
    v14 = 0;
    while (1)
    {
      v15 = v0[21];
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = sub_1000816A8();
      }

      else
      {
        if (v14 >= *(v15 + 16))
        {
          goto LABEL_58;
        }

        v16 = *(v15 + 8 * v14 + 32);
      }

      v0[23] = v16;
      v0[24] = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_57;
      }

      v18 = v0[18];
      v17 = v0[19];
      if (v16 == v17[33] && (v0[18] & 1) != 0)
      {
        break;
      }

      v20 = v0[18] & 2;
      if (v16 != v17[30] || v20 == 0)
      {
        if (v16 != v17[31] || v20 == 0)
        {
          v33 = v17[19];
          v34 = sub_10003C818(_swiftEmptyArrayStorage);
          v0[39] = v34;
          v35 = swift_task_alloc();
          v0[40] = v35;
          *v35 = v0;
          v35[1] = sub_1000407B0;

          return sub_100050708(v16, v34, 1);
        }

        else
        {
          v37 = v0[20];
          v38 = sub_100080FF8();
          v39 = sub_1000815C8();
          if (os_log_type_enabled(v38, v39))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&_mh_execute_header, v38, v39, "Preserving prescription presence properties", v41, 2u);
          }

          v42 = v0[19];

          v0[25] = *(v42 + 152);
          v43 = *(v42 + 248);
          v0[26] = v43;

          v44 = sub_10003C818(_swiftEmptyArrayStorage);
          v0[27] = v44;
          v45 = swift_task_alloc();
          v0[28] = v45;
          *v45 = v0;
          v45[1] = sub_10003FBA8;

          return sub_10004DAFC(v43, 0, 0, v44, 0, 0);
        }
      }

      v22 = v0[20];
      v29 = sub_100080FF8();
      v23 = sub_1000815C8();
      if (os_log_type_enabled(v29, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = v23;
        v26 = v29;
        v27 = "Preserving RXSystemState";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v26, v25, v27, v24, 2u);
      }

LABEL_24:

      v14 = v0[24];
      if (v14 == v0[22])
      {
        goto LABEL_62;
      }
    }

    v28 = v0[20];
    v29 = sub_100080FF8();
    v30 = sub_1000815C8();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_24;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = v30;
    v26 = v29;
    v27 = "Preserving the sharing data table";
    goto LABEL_23;
  }

  v13 = _swiftEmptyArrayStorage[2];
  v0[22] = v13;
  if (v13)
  {
    goto LABEL_22;
  }

LABEL_62:
  v47 = v0[21];

  v48 = v0[1];

  return v48();
}

uint64_t sub_10003FBA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v11 = *v2;
  v3[29] = a1;
  v3[30] = v1;

  if (v1)
  {
    v5 = v3[19];
    v6 = sub_10003FF98;
  }

  else
  {
    v8 = v3[26];
    v7 = v3[27];
    v9 = v3[19];

    v6 = sub_10003FCD8;
    v5 = v9;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_10003FCD8()
{
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 240);
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v23 = v5;
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        v7 = *(v1 + 32 + 8 * v6);
        if (!*(v7 + 16))
        {
          goto LABEL_21;
        }

        v8 = *(v1 + 32 + 8 * v6);

        v9 = sub_1000526A8(32);
        if ((v10 & 1) == 0)
        {
          goto LABEL_22;
        }

        sub_100006888(*(v7 + 56) + 32 * v9, v0 + 48);
        sub_1000068E4((v0 + 48), (v0 + 16));
        swift_dynamicCast();
        v11 = *(v0 + 112);
        *(v0 + 120) = *(v0 + 104);
        *(v0 + 128) = v11;
        v12 = swift_task_alloc();
        *(v12 + 16) = v0 + 120;
        v13 = sub_100059D50(sub_10004B30C, v12, &off_1000AA318);

        if (v13)
        {
          break;
        }

        ++v6;

        if (v2 == v6)
        {
          v5 = v23;
          goto LABEL_17;
        }
      }

      v5 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 136) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10003E0B8(0, v23[2] + 1, 1);
        v5 = *(v0 + 136);
      }

      v16 = v5[2];
      v15 = v5[3];
      if (v16 >= v15 >> 1)
      {
        sub_10003E0B8((v15 > 1), v16 + 1, 1);
        v5 = *(v0 + 136);
      }

      v3 = v6 + 1;
      v5[2] = v16 + 1;
      v5[v16 + 4] = v7;
    }

    while (v2 - 1 != v6);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_17:
  *(v0 + 248) = v5;
  v17 = *(v0 + 232);
  v18 = *(v0 + 152);
  swift_arrayDestroy();

  v19 = *(v18 + 248);
  *(v0 + 256) = v19;

  v20 = sub_10003C818(_swiftEmptyArrayStorage);
  *(v0 + 264) = v20;
  v21 = swift_task_alloc();
  *(v0 + 272) = v21;
  *v21 = v0;
  v21[1] = sub_100040030;
  v22 = *(v0 + 200);

  sub_100050708(v19, v20, 1);
}

uint64_t sub_10003FF98()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[21];

  swift_arrayDestroy();
  v4 = v0[30];
  v5 = v0[23];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100040030()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  v2[35] = v0;

  v5 = v2[33];
  v6 = v2[32];
  if (v0)
  {
    v7 = v2[31];
    v8 = v2[21];
    v9 = v2[19];

    v10 = sub_100040900;
    v11 = v9;
  }

  else
  {
    v12 = v2[19];

    v10 = sub_1000401B8;
    v11 = v12;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1000401B8()
{
  v1 = *(v0[19] + 248);
  v0[36] = v1;

  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_100040270;
  v3 = v0[31];
  v4 = v0[25];

  return sub_10004EE80(v1, v3);
}

uint64_t sub_100040270()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  v2[38] = v0;

  v5 = v2[36];
  v6 = v2[31];
  if (v0)
  {
    v7 = v2[21];
    v8 = v2[19];

    v9 = sub_100040964;
  }

  else
  {
    v8 = v2[19];

    v9 = sub_1000403EC;
  }

  return _swift_task_switch(v9, v8, 0);
}

void sub_1000403EC()
{
  v1 = v0[23];

  v2 = v0[24];
  if (v2 == v0[22])
  {
LABEL_2:
    v3 = v0[21];

    v4 = v0[1];

    v4();
    return;
  }

  while (1)
  {
    v5 = v0[21];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = sub_1000816A8();
    }

    else
    {
      if (v2 >= *(v5 + 16))
      {
        goto LABEL_40;
      }

      v6 = *(v5 + 8 * v2 + 32);
    }

    v0[23] = v6;
    v0[24] = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v8 = v0[18];
    v7 = v0[19];
    if (v6 == v7[33] && (v0[18] & 1) != 0)
    {
      v18 = v0[20];
      v19 = sub_100080FF8();
      v20 = sub_1000815C8();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_7;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = v20;
      v16 = v19;
      v17 = "Preserving the sharing data table";
      goto LABEL_6;
    }

    v10 = v0[18] & 2;
    if (v6 != v7[30] || v10 == 0)
    {
      break;
    }

    v12 = v0[20];
    v19 = sub_100080FF8();
    v13 = sub_1000815C8();
    if (!os_log_type_enabled(v19, v13))
    {
      goto LABEL_7;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = v13;
    v16 = v19;
    v17 = "Preserving RXSystemState";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v16, v15, v17, v14, 2u);

LABEL_7:

    v2 = v0[24];
    if (v2 == v0[22])
    {
      goto LABEL_2;
    }
  }

  if (v6 != v7[31] || v10 == 0)
  {
    v23 = v7[19];
    v24 = sub_10003C818(_swiftEmptyArrayStorage);
    v0[39] = v24;
    v25 = swift_task_alloc();
    v0[40] = v25;
    *v25 = v0;
    v25[1] = sub_1000407B0;

    sub_100050708(v6, v24, 1);
  }

  else
  {
    v26 = v0[20];
    v27 = sub_100080FF8();
    v28 = sub_1000815C8();
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Preserving prescription presence properties", v30, 2u);
    }

    v31 = v0[19];

    v0[25] = *(v31 + 152);
    v32 = *(v31 + 248);
    v0[26] = v32;

    v33 = sub_10003C818(_swiftEmptyArrayStorage);
    v0[27] = v33;
    v34 = swift_task_alloc();
    v0[28] = v34;
    *v34 = v0;
    v34[1] = sub_10003FBA8;

    sub_10004DAFC(v32, 0, 0, v33, 0, 0);
  }
}

uint64_t sub_1000407B0()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  v2[41] = v0;

  v5 = v2[39];
  if (v0)
  {
    v6 = v2[21];
    v7 = v2[19];

    v8 = sub_1000409C8;
  }

  else
  {
    v7 = v2[19];

    v8 = sub_10004B738;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100040900()
{
  v1 = v0[35];
  v2 = v0[23];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100040964()
{
  v1 = v0[38];
  v2 = v0[23];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000409C8()
{
  v1 = v0[41];
  v2 = v0[23];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100040A2C()
{
  v1[66] = v0;
  v2 = *(*(sub_100006940(&qword_1000B7F28, &qword_100085BF8) - 8) + 64) + 15;
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v3 = type metadata accessor for DataManager.StateInfo();
  v1[69] = v3;
  v4 = *(v3 - 8);
  v1[70] = v4;
  v5 = *(v4 + 64) + 15;
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v6 = sub_100080D98();
  v1[78] = v6;
  v7 = *(v6 - 8);
  v1[79] = v7;
  v8 = *(v7 + 64) + 15;
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();

  return _swift_task_switch(sub_100040BE0, v0, 0);
}

uint64_t sub_100040BE0()
{
  if (qword_1000B73F8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  v0[82] = sub_100016240(v1, qword_1000B7DB8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Validating sharing data on iOS", v4, 2u);
  }

  v5 = v0[81];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[66];

  sub_100080D88();
  sub_100080D28();
  v10 = v9;
  v11 = *(v6 + 8);
  v0[83] = v11;
  v0[84] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v7);
  *(v8 + 328) = v10;
  v0[64] = _swiftEmptyArrayStorage;
  v0[85] = 0;
  v12 = v0[66];
  v13 = *(v12 + 152);
  v14 = *(v12 + 264);
  v0[86] = v14;
  sub_100006940(&qword_1000B7D70, &qword_100085A28);
  inited = swift_initStackObject();
  *(inited + 32) = 58;
  *(inited + 16) = xmmword_100084830;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 0;

  v16 = sub_10003C818(inited);
  v0[87] = v16;
  swift_setDeallocating();
  sub_10001A80C(inited + 32, &qword_1000B7D30, &unk_100085BC0);
  v17 = swift_task_alloc();
  v0[88] = v17;
  *v17 = v0;
  v17[1] = sub_100040E48;

  return sub_10004DAFC(v14, 0, 0, v16, 0, 0);
}

uint64_t sub_100040E48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 704);
  v14 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {
    v6 = v4[87];
    v7 = v4[86];
    v8 = v4[66];
    v9 = v4[64];

    v10 = sub_1000439C4;
  }

  else
  {
    v11 = v4[87];
    v12 = v4[86];
    v8 = v4[66];

    v4[90] = a1;
    v10 = sub_100040FA8;
  }

  return _swift_task_switch(v10, v8, 0);
}

unint64_t sub_100040FA8()
{
  v243 = v0;
  v1 = (v0 + 512);
  v2 = *(v0 + 680);
  sub_100049214(*(v0 + 720));
  if (v2 != 2)
  {
    v118 = *(v0 + 680) + 1;
    *(v0 + 680) = v118;
    v119 = *(v0 + 528);
    v120 = *(&off_1000AA368 + v118 + 32);
    v121 = *(v119 + 152);
    v122 = *(v119 + 264);
    *(v0 + 688) = v122;
    sub_100006940(&qword_1000B7D70, &qword_100085A28);
    inited = swift_initStackObject();
    *(inited + 32) = 58;
    *(inited + 16) = xmmword_100084830;
    *(inited + 64) = &type metadata for Int;
    *(inited + 40) = 32 * v120;

    v124 = sub_10003C818(inited);
    *(v0 + 696) = v124;
    swift_setDeallocating();
    sub_10001A80C(inited + 32, &qword_1000B7D30, &unk_100085BC0);
    v125 = swift_task_alloc();
    *(v0 + 704) = v125;
    *v125 = v0;
    v125[1] = sub_100040E48;

    return sub_10004DAFC(v122, 0, 0, v124, 0, 0);
  }

  v237 = sub_10003C940(_swiftEmptyArrayStorage);
  v235 = sub_10003CB14(_swiftEmptyArrayStorage);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
LABEL_87:
    *(v0 + 728) = v237;
    v126 = *(v0 + 656);

    v127 = sub_100080FF8();
    v128 = sub_1000815C8();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v242 = v130;
      *v129 = 136315138;
      v131 = v235;

      v132 = sub_100081228();
      v134 = v133;

      v135 = sub_1000597A8(v132, v134, &v242);

      *(v129 + 4) = v135;
      _os_log_impl(&_mh_execute_header, v127, v128, "records to delete: %s", v129, 0xCu);
      sub_1000068F4(v130);
    }

    else
    {

      v131 = v235;
    }

    v136 = &type metadata for String;
    *(v0 + 736) = v131;
    v137 = *(v131 + 32);
    *(v0 + 888) = v137;
    v138 = -1;
    v139 = -1 << v137;
    if (-(-1 << v137) < 64)
    {
      v138 = ~(-1 << -v139);
    }

    v140 = v138 & v131[8];

    if (v140)
    {
      v141 = 0;
LABEL_97:
      *(v0 + 752) = v141;
      *(v0 + 744) = v140;
      v143 = *(v0 + 528);
      v144 = __clz(__rbit64(v140)) | (v141 << 6);
      v145 = (v131[6] + 16 * v144);
      v146 = *v145;
      *(v0 + 760) = *v145;
      v147 = v145[1];
      *(v0 + 768) = v147;
      v148 = *(v131[7] + v144);
      *(v0 + 776) = *(v143 + 152);
      v149 = *(v143 + 264);
      *(v0 + 784) = v149;
      sub_100006940(&qword_1000B7D70, &qword_100085A28);
      v150 = swift_initStackObject();
      *(v150 + 16) = xmmword_100085A60;
      *(v150 + 32) = 48;
      *(v150 + 64) = &type metadata for String;
      *(v150 + 40) = v146;
      *(v150 + 48) = v147;
      *(v150 + 72) = 58;
      *(v150 + 104) = &type metadata for Int;
      *(v150 + 80) = 32 * v148;
      swift_bridgeObjectRetain_n();

      v151 = sub_10003C818(v150);
      *(v0 + 792) = v151;
      swift_setDeallocating();
      sub_100006940(&qword_1000B7D30, &unk_100085BC0);
      swift_arrayDestroy();
      v152 = swift_task_alloc();
      *(v0 + 800) = v152;
      *v152 = v0;
      v152[1] = sub_1000425D0;

      return sub_100050708(v149, v151, 0);
    }

    else
    {
      v142 = 0;
      while (((63 - v139) >> 6) - 1 != v142)
      {
        v141 = v142 + 1;
        v140 = v131[v142++ + 9];
        if (v140)
        {
          goto LABEL_97;
        }
      }

      v153 = *(v0 + 728);

      v154 = *(v153 + 32);
      *(v0 + 889) = v154;
      v155 = 1 << v154;
      if (v155 < 64)
      {
        v156 = ~(-1 << v155);
      }

      else
      {
        v156 = -1;
      }

      v157 = v156 & *(v153 + 64);

      v158 = 0;
      while (v157)
      {
        v159 = *(v0 + 728);
LABEL_116:
        v164 = *(v0 + 568);
        v165 = *(v0 + 536);
        v166 = __clz(__rbit64(v157));
        v157 &= v157 - 1;
        v167 = v166 | (v158 << 6);
        v168 = (*(v159 + 48) + 16 * v167);
        v169 = *v168;
        v170 = v168[1];
        sub_10004AD04(*(v159 + 56) + *(*(v0 + 560) + 72) * v167, v164);
        v171 = sub_100006940(&qword_1000B7F30, &unk_100085C00);
        v172 = *(v171 + 48);
        *v165 = v169;
        v165[1] = v170;
        sub_10003CE00(v164, v165 + v172);
        (*(*(v171 - 8) + 56))(v165, 0, 1, v171);

        v162 = v158;
LABEL_117:
        *(v0 + 840) = v162;
        *(v0 + 832) = v157;
        v173 = *(v0 + 544);
        sub_10004AD68(*(v0 + 536), v173);
        v174 = sub_100006940(&qword_1000B7F30, &unk_100085C00);
        if ((*(*(v174 - 8) + 48))(v173, 1, v174) == 1)
        {
          v190 = *(v0 + 736);
          v191 = *(v0 + 728);
          v192 = *(v0 + 648);
          v193 = *(v0 + 640);
          v194 = *(v0 + 616);
          v195 = *(v0 + 608);
          v196 = *(v0 + 600);
          v197 = *(v0 + 592);
          v198 = *(v0 + 584);
          v234 = *(v0 + 576);
          v236 = *(v0 + 568);
          v238 = *(v0 + 544);
          v240 = *(v0 + 536);

          v199 = *(v0 + 8);

          return v199();
        }

        v175 = *(v0 + 544);
        v177 = *v175;
        v176 = v175[1];
        v178 = v175 + *(v174 + 48);
        v179 = *(v178 + *(*(v0 + 552) + 28));
        sub_10004ADD8(v178);
        if (v179)
        {
          if (v179 == 1)
          {
            v189 = 32;
          }

          else
          {
            v189 = 64;
          }

          v200 = *(v0 + 656);

          v201 = sub_100080FF8();
          v202 = sub_1000815C8();

          if (os_log_type_enabled(v201, v202))
          {
            v203 = v189;
            v204 = swift_slowAlloc();
            v205 = swift_slowAlloc();
            v242 = v205;
            *v204 = 136315138;
            *(v204 + 4) = sub_1000597A8(v177, v176, &v242);
            _os_log_impl(&_mh_execute_header, v201, v202, "Updating sync state to active for rxUUID: %s", v204, 0xCu);
            sub_1000068F4(v205);

            v189 = v203;
          }

          v206 = *(v0 + 528);
          v241 = *(v206 + 152);
          v207 = *(v206 + 264);
          *(v0 + 848) = v207;
          sub_100006940(&qword_1000B7D70, &qword_100085A28);
          v208 = swift_initStackObject();
          *(v208 + 16) = xmmword_100085A60;
          *(v208 + 32) = 48;
          *(v208 + 64) = v136;
          *(v208 + 40) = v177;
          *(v208 + 48) = v176;
          *(v208 + 72) = 58;
          *(v208 + 104) = &type metadata for Int;
          *(v208 + 80) = v189;

          v209 = sub_10003C818(v208);
          *(v0 + 856) = v209;
          swift_setDeallocating();
          sub_100006940(&qword_1000B7D30, &unk_100085BC0);
          swift_arrayDestroy();
          v210 = swift_initStackObject();
          *(v210 + 16) = xmmword_100084830;
          *(v210 + 32) = 58;
          v211 = v210 + 32;
          *(v210 + 64) = &type metadata for Int;
          *(v210 + 40) = 0;
          v212 = sub_10003C818(v210);
          *(v0 + 864) = v212;
          swift_setDeallocating();
          sub_10001A80C(v211, &qword_1000B7D30, &unk_100085BC0);
          v213 = swift_task_alloc();
          *(v0 + 872) = v213;
          *v213 = v0;
          v213[1] = sub_10004319C;

          return sub_10004FA98(v207, v209, v212);
        }

        v180 = *(v0 + 656);

        v181 = sub_100080FF8();
        v182 = sub_1000815C8();

        if (os_log_type_enabled(v181, v182))
        {
          v183 = v136;
          v184 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          v242 = v185;
          *v184 = 136315138;
          v186 = sub_1000597A8(v177, v176, &v242);

          *(v184 + 4) = v186;
          _os_log_impl(&_mh_execute_header, v181, v182, "Sync state is already active for rxUUID: %s", v184, 0xCu);
          sub_1000068F4(v185);

          v136 = v183;
        }

        else
        {
        }

        v158 = v162;
      }

      v160 = ((1 << *(v0 + 889)) + 63) >> 6;
      if (v160 <= (v158 + 1))
      {
        v161 = v158 + 1;
      }

      else
      {
        v161 = ((1 << *(v0 + 889)) + 63) >> 6;
      }

      v162 = v161 - 1;
      while (1)
      {
        v163 = v158 + 1;
        if (__OFADD__(v158, 1))
        {
          break;
        }

        if (v163 >= v160)
        {
          v187 = *(v0 + 536);
          v188 = sub_100006940(&qword_1000B7F30, &unk_100085C00);
          (*(*(v188 - 8) + 56))(v187, 1, 1, v188);
          v157 = 0;
          goto LABEL_117;
        }

        v159 = *(v0 + 728);
        v157 = *(v159 + 8 * v163 + 64);
        ++v158;
        if (v157)
        {
          v158 = v163;
          goto LABEL_116;
        }
      }

LABEL_134:
      __break(1u);
LABEL_135:

      return sub_1000818E8();
    }
  }

  v5 = 0;
  v228 = *(v0 + 600);
  v229 = *(v0 + 584);
  v6 = *(v0 + 560);
  v231 = v6;
  v232 = *(v0 + 552);
  v233 = (v0 + 520);
  v230 = (*(v0 + 632) + 16);
  v239 = *(v0 + 528);
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_134;
    }

    v7 = *(v3 + 32 + 8 * v5);
    if (!*(v7 + 16))
    {
      goto LABEL_39;
    }

    v8 = *(v3 + 32 + 8 * v5);

    v9 = sub_1000526A8(19);
    if ((v10 & 1) == 0)
    {
      goto LABEL_38;
    }

    sub_100006888(*(v7 + 56) + 32 * v9, v0 + 384);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_38;
    }

    v11 = *(v0 + 480);
    v12 = *(v0 + 488);
    v13 = *(v239 + 312);
    v14 = sub_100081288();

    v15 = [v13 dateFromString:v14];

    if (!v15)
    {
      goto LABEL_38;
    }

    v16 = *(v0 + 640);
    sub_100080D78();

    if (!*(v7 + 16) || (v17 = sub_1000526A8(58), (v18 & 1) == 0))
    {
      v21 = *(v0 + 672);
      v22 = *(v0 + 664);
      v23 = *(v0 + 640);
      v24 = *(v0 + 624);

      v22(v23, v24);
      goto LABEL_39;
    }

    sub_100006888(*(v7 + 56) + 32 * v17, v0 + 416);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v25 = *(v0 + 672);
      (*(v0 + 664))(*(v0 + 640), *(v0 + 624));

      goto LABEL_39;
    }

    v19 = *v233;
    if (!*v233)
    {
      v20 = 0;
LABEL_22:
      if (!*(v7 + 16))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v19 == 64)
    {
      v20 = 2;
      goto LABEL_22;
    }

    if (v19 != 32)
    {
      goto LABEL_37;
    }

    v20 = 1;
    if (!*(v7 + 16))
    {
LABEL_36:
      v227 = *(v0 + 672);
      v50 = *(v0 + 664);
      v51 = *(v0 + 640);
      v52 = *(v0 + 624);

      v50(v51, v52);
      goto LABEL_39;
    }

LABEL_23:
    v26 = sub_1000526A8(48);
    if ((v27 & 1) == 0)
    {
      goto LABEL_36;
    }

    sub_100006888(*(v7 + 56) + 32 * v26, v0 + 448);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_37:
      v53 = *(v0 + 672);
      (*(v0 + 664))(*(v0 + 640), *(v0 + 624));
LABEL_38:

LABEL_39:
      v54 = *(v0 + 656);
      v55 = sub_100080FF8();
      v56 = sub_1000815D8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Error reading record data. Skipping record.", v57, 2u);
      }

      goto LABEL_42;
    }

    v28 = *(v0 + 504);
    v222 = *(v0 + 496);
    if (v222 == 0xD000000000000024 && 0x80000001000943A0 == v28 || (sub_100081888() & 1) != 0)
    {

      v226 = 0x534E454C2D4F4E3CLL;
      v29 = 0xEB000000003E5345;
    }

    else
    {
      v226 = sub_10004AE34(v7);
      v29 = v75;

      if (!v29)
      {
        v76 = *(v0 + 672);
        (*(v0 + 664))(*(v0 + 640), *(v0 + 624));

        goto LABEL_42;
      }
    }

    v220 = v28;
    v224 = v29;
    if (v237[2])
    {
      v30 = sub_1000525C4(v226, v29);
      if (v31)
      {
        v216 = *(v0 + 640);
        v32 = *(v0 + 616);
        v33 = *(v0 + 608);
        v34 = *(v231 + 72);
        sub_10004AD04(v237[7] + v34 * v30, v33);
        sub_10003CE00(v33, v32);
        v35 = v232[5];
        if (sub_100080D58())
        {
          v214 = v34;
          v36 = *(v0 + 616);
          v37 = (v36 + v232[6]);
          v39 = *v37;
          v38 = v37[1];
          v215 = *(v36 + v232[7]);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v242 = v235;
          v217 = v39;
          result = sub_1000525C4(v39, v38);
          v43 = v235[2];
          v44 = (v42 & 1) == 0;
          v45 = __OFADD__(v43, v44);
          v46 = v43 + v44;
          if (v45)
          {
            goto LABEL_141;
          }

          v47 = v42;
          if (v235[3] >= v46)
          {
            v49 = v232;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v114 = v38;
              v115 = result;
              sub_100053E90();
              v49 = v232;
              result = v115;
              v38 = v114;
              v235 = v242;
            }
          }

          else
          {
            sub_100053264(v46, isUniquelyReferenced_nonNull_native);
            v235 = v242;
            result = sub_1000525C4(v217, v38);
            if ((v47 & 1) != (v48 & 1))
            {
              goto LABEL_135;
            }

            v49 = v232;
          }

          if (v47)
          {
            *(v235[7] + result) = v215;
          }

          else
          {
            v235[(result >> 6) + 8] |= 1 << result;
            v89 = (v235[6] + 16 * result);
            *v89 = v217;
            v89[1] = v38;
            *(v235[7] + result) = v215;
            v90 = v235[2];
            v45 = __OFADD__(v90, 1);
            v91 = v90 + 1;
            if (v45)
            {
              goto LABEL_144;
            }

            v235[2] = v91;

            v49 = v232;
          }

          v92 = *(v0 + 600);
          v219 = *(v0 + 592);
          v93 = v49;
          (*v230)(v92 + v49[5], *(v0 + 640), *(v0 + 624));
          *v92 = v226;
          *(v228 + 8) = v224;
          v94 = (v92 + v93[6]);
          *v94 = v222;
          v94[1] = v220;
          *(v92 + v93[7]) = v20;
          sub_10003CE00(v92, v219);

          v95 = swift_isUniquelyReferenced_nonNull_native();
          v242 = v237;
          result = sub_1000525C4(v226, v224);
          v97 = v237[2];
          v98 = (v96 & 1) == 0;
          v45 = __OFADD__(v97, v98);
          v99 = v97 + v98;
          if (v45)
          {
            goto LABEL_142;
          }

          v100 = v96;
          if (v237[3] >= v99)
          {
            if ((v95 & 1) == 0)
            {
              v117 = result;
              sub_100053C60();
              result = v117;
            }
          }

          else
          {
            sub_100052F28(v99, v95);
            result = sub_1000525C4(v226, v224);
            if ((v100 & 1) != (v101 & 1))
            {
              goto LABEL_135;
            }
          }

          v106 = *(v0 + 592);
          if (v100)
          {
            v107 = result;

            v237 = v242;
            sub_10004B254(v106, v242[7] + v107 * v214);
          }

          else
          {
            v108 = v242;
            v242[(result >> 6) + 8] |= 1 << result;
            v109 = (v108[6] + 16 * result);
            *v109 = v226;
            v109[1] = v224;
            result = sub_10003CE00(v106, v108[7] + result * v214);
            v110 = v108[2];
            v45 = __OFADD__(v110, 1);
            v111 = v110 + 1;
            if (v45)
            {
              goto LABEL_145;
            }

            v237 = v108;
            v108[2] = v111;
          }

          v112 = *(v0 + 672);
          v113 = *(v0 + 616);
          (*(v0 + 664))(*(v0 + 640), *(v0 + 624));
          sub_10004ADD8(v113);
        }

        else
        {

          v77 = swift_isUniquelyReferenced_nonNull_native();
          v242 = v235;
          result = sub_1000525C4(v222, v220);
          v79 = v235[2];
          v80 = (v78 & 1) == 0;
          v45 = __OFADD__(v79, v80);
          v81 = v79 + v80;
          if (v45)
          {
            goto LABEL_140;
          }

          v82 = v78;
          if (v235[3] >= v81)
          {
            if ((v77 & 1) == 0)
            {
              v116 = result;
              sub_100053E90();
              result = v116;
            }
          }

          else
          {
            sub_100053264(v81, v77);
            result = sub_1000525C4(v222, v220);
            if ((v82 & 1) != (v83 & 1))
            {
              goto LABEL_135;
            }
          }

          v84 = *(v0 + 672);
          v85 = *(v0 + 664);
          v86 = *(v0 + 640);
          v87 = *(v0 + 624);
          if (v82)
          {
            v88 = result;
            v225 = *(v0 + 664);

            v235 = v242;
            *(v242[7] + v88) = v20;
            v225(v86, v87);
          }

          else
          {
            v102 = v242;
            v242[(result >> 6) + 8] |= 1 << result;
            v103 = (v102[6] + 16 * result);
            *v103 = v222;
            v103[1] = v220;
            *(v102[7] + result) = v20;
            result = v85(v86, v87);
            v104 = v102[2];
            v45 = __OFADD__(v104, 1);
            v105 = v104 + 1;
            if (v45)
            {
              goto LABEL_143;
            }

            v235 = v102;
            v102[2] = v105;
          }

          sub_10004ADD8(*(v0 + 616));
        }

        goto LABEL_42;
      }
    }

    v58 = *(v0 + 584);
    v59 = *(v0 + 576);
    (*v230)(v58 + v232[5], *(v0 + 640), *(v0 + 624));
    *v58 = v226;
    *(v229 + 8) = v29;
    v60 = (v58 + v232[6]);
    *v60 = v222;
    v60[1] = v220;
    *(v58 + v232[7]) = v20;
    sub_10003CE00(v58, v59);

    v61 = swift_isUniquelyReferenced_nonNull_native();
    v242 = v237;
    v63 = sub_1000525C4(v226, v29);
    v64 = v237[2];
    v65 = (v62 & 1) == 0;
    result = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      break;
    }

    v66 = v62;
    if (v237[3] >= result)
    {
      if ((v61 & 1) == 0)
      {
        sub_100053C60();
      }
    }

    else
    {
      sub_100052F28(result, v61);
      v67 = sub_1000525C4(v226, v224);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_135;
      }

      v63 = v67;
    }

    v221 = *(v0 + 664);
    v223 = *(v0 + 672);
    v69 = *(v0 + 640);
    v218 = *(v0 + 624);
    v70 = *(v0 + 576);
    if (v66)
    {

      v237 = v242;
      sub_10004B254(v70, v242[7] + *(v231 + 72) * v63);
      v221(v69, v218);
    }

    else
    {
      v71 = v242;
      v242[(v63 >> 6) + 8] |= 1 << v63;
      v72 = (v71[6] + 16 * v63);
      *v72 = v226;
      v72[1] = v224;
      sub_10003CE00(v70, v71[7] + *(v231 + 72) * v63);
      result = (v221)(v69, v218);
      v73 = v71[2];
      v45 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v45)
      {
        goto LABEL_139;
      }

      v237 = v71;
      v71[2] = v74;
    }

LABEL_42:
    if (v4 == ++v5)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

uint64_t sub_1000425D0()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v4 = *v1;
  v2[101] = v0;

  v5 = v2[99];
  v6 = v2[98];
  if (v0)
  {
    v7 = v2[96];
    v8 = v2[66];

    return _swift_task_switch(sub_100043AC8, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v2[102] = v9;
    *v9 = v4;
    v9[1] = sub_1000427AC;
    v10 = v2[97];
    v11 = v2[96];
    v12 = v2[95];

    return sub_100051EC0(v12, v11, 1, 1);
  }
}

uint64_t sub_1000427AC()
{
  v2 = *v1;
  v3 = *(*v1 + 816);
  v4 = *v1;
  *(*v1 + 824) = v0;

  v5 = *(v2 + 768);
  v6 = *(v2 + 528);

  if (v0)
  {
    v7 = sub_100043BEC;
  }

  else
  {
    v7 = sub_1000428F4;
  }

  return _swift_task_switch(v7, v6, 0);
}

void sub_1000428F4()
{
  v83 = v0;
  v1 = *(v0 + 752);
  v2 = (*(v0 + 744) - 1) & *(v0 + 744);
  if (v2)
  {
    v3 = *(v0 + 736);
LABEL_7:
    *(v0 + 752) = v1;
    *(v0 + 744) = v2;
    v5 = *(v0 + 528);
    v6 = __clz(__rbit64(v2)) | (v1 << 6);
    v7 = (*(v3 + 48) + 16 * v6);
    v8 = *v7;
    *(v0 + 760) = *v7;
    v9 = v7[1];
    *(v0 + 768) = v9;
    v10 = *(*(v3 + 56) + v6);
    *(v0 + 776) = *(v5 + 152);
    v11 = *(v5 + 264);
    *(v0 + 784) = v11;
    sub_100006940(&qword_1000B7D70, &qword_100085A28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085A60;
    *(inited + 32) = 48;
    *(inited + 64) = &type metadata for String;
    *(inited + 40) = v8;
    *(inited + 48) = v9;
    *(inited + 72) = 58;
    *(inited + 104) = &type metadata for Int;
    *(inited + 80) = 32 * v10;
    swift_bridgeObjectRetain_n();

    v13 = sub_10003C818(inited);
    *(v0 + 792) = v13;
    swift_setDeallocating();
    sub_100006940(&qword_1000B7D30, &unk_100085BC0);
    swift_arrayDestroy();
    v14 = swift_task_alloc();
    *(v0 + 800) = v14;
    *v14 = v0;
    v14[1] = sub_1000425D0;

    sub_100050708(v11, v13, 0);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v3 = *(v0 + 736);
      if (v4 >= (((1 << *(v0 + 888)) + 63) >> 6))
      {
        v15 = *(v0 + 728);

        v16 = *(v15 + 32);
        *(v0 + 889) = v16;
        v17 = 1 << v16;
        if (v17 < 64)
        {
          v18 = ~(-1 << v17);
        }

        else
        {
          v18 = -1;
        }

        v19 = v18 & *(v15 + 64);

        v20 = 0;
        v21 = &unk_1000B7F30;
        if (!v19)
        {
          goto LABEL_17;
        }

        do
        {
          while (1)
          {
            v22 = *(v0 + 728);
LABEL_25:
            v27 = *(v0 + 568);
            v28 = *(v0 + 536);
            v29 = __clz(__rbit64(v19));
            v19 &= v19 - 1;
            v30 = v29 | (v20 << 6);
            v31 = (*(v22 + 48) + 16 * v30);
            v32 = *v31;
            v33 = v31[1];
            sub_10004AD04(*(v22 + 56) + *(*(v0 + 560) + 72) * v30, v27);
            v34 = sub_100006940(v21, &unk_100085C00);
            v35 = *(v34 + 48);
            *v28 = v32;
            v28[1] = v33;
            sub_10003CE00(v27, v28 + v35);
            (*(*(v34 - 8) + 56))(v28, 0, 1, v34);

            v25 = v20;
LABEL_26:
            *(v0 + 840) = v25;
            *(v0 + 832) = v19;
            v36 = *(v0 + 544);
            sub_10004AD68(*(v0 + 536), v36);
            v37 = sub_100006940(v21, &unk_100085C00);
            if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
            {
              v53 = *(v0 + 736);
              v54 = *(v0 + 728);
              v55 = *(v0 + 648);
              v56 = *(v0 + 640);
              v57 = *(v0 + 616);
              v58 = *(v0 + 608);
              v59 = *(v0 + 600);
              v60 = *(v0 + 592);
              v61 = *(v0 + 584);
              v77 = *(v0 + 576);
              v78 = *(v0 + 568);
              v79 = *(v0 + 544);
              v80 = *(v0 + 536);

              v62 = *(v0 + 8);

              v62();
              return;
            }

            v38 = *(v0 + 544);
            v40 = *v38;
            v39 = v38[1];
            v41 = v38 + *(v37 + 48);
            v42 = *(v41 + *(*(v0 + 552) + 28));
            sub_10004ADD8(v41);
            if (v42)
            {
              if (v42 == 1)
              {
                v52 = 32;
              }

              else
              {
                v52 = 64;
              }

              v63 = *(v0 + 656);

              v64 = sub_100080FF8();
              v65 = sub_1000815C8();

              if (os_log_type_enabled(v64, v65))
              {
                v66 = v52;
                v67 = swift_slowAlloc();
                v68 = swift_slowAlloc();
                v82 = v68;
                *v67 = 136315138;
                *(v67 + 4) = sub_1000597A8(v40, v39, &v82);
                _os_log_impl(&_mh_execute_header, v64, v65, "Updating sync state to active for rxUUID: %s", v67, 0xCu);
                sub_1000068F4(v68);

                v52 = v66;
              }

              v69 = *(v0 + 528);
              v81 = *(v69 + 152);
              v70 = *(v69 + 264);
              *(v0 + 848) = v70;
              sub_100006940(&qword_1000B7D70, &qword_100085A28);
              v71 = swift_initStackObject();
              *(v71 + 32) = 48;
              *(v71 + 16) = xmmword_100085A60;
              *(v71 + 64) = &type metadata for String;
              *(v71 + 40) = v40;
              *(v71 + 48) = v39;
              *(v71 + 72) = 58;
              *(v71 + 104) = &type metadata for Int;
              *(v71 + 80) = v52;

              v72 = sub_10003C818(v71);
              *(v0 + 856) = v72;
              swift_setDeallocating();
              sub_100006940(&qword_1000B7D30, &unk_100085BC0);
              swift_arrayDestroy();
              v73 = swift_initStackObject();
              *(v73 + 16) = xmmword_100084830;
              *(v73 + 32) = 58;
              v74 = v73 + 32;
              *(v73 + 64) = &type metadata for Int;
              *(v73 + 40) = 0;
              v75 = sub_10003C818(v73);
              *(v0 + 864) = v75;
              swift_setDeallocating();
              sub_10001A80C(v74, &qword_1000B7D30, &unk_100085BC0);
              v76 = swift_task_alloc();
              *(v0 + 872) = v76;
              *v76 = v0;
              v76[1] = sub_10004319C;

              sub_10004FA98(v70, v72, v75);
              return;
            }

            v43 = *(v0 + 656);

            v44 = sub_100080FF8();
            v45 = sub_1000815C8();

            if (os_log_type_enabled(v44, v45))
            {
              break;
            }

            v20 = v25;
            if (!v19)
            {
              goto LABEL_17;
            }
          }

          v46 = v21;
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v82 = v48;
          *v47 = 136315138;
          v49 = sub_1000597A8(v40, v39, &v82);

          *(v47 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v44, v45, "Sync state is already active for rxUUID: %s", v47, 0xCu);
          sub_1000068F4(v48);

          v21 = v46;

          v20 = v25;
        }

        while (v19);
LABEL_17:
        v23 = ((1 << *(v0 + 889)) + 63) >> 6;
        if (v23 <= (v20 + 1))
        {
          v24 = v20 + 1;
        }

        else
        {
          v24 = ((1 << *(v0 + 889)) + 63) >> 6;
        }

        v25 = v24 - 1;
        while (1)
        {
          v26 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v26 >= v23)
          {
            v50 = *(v0 + 536);
            v51 = sub_100006940(v21, &unk_100085C00);
            (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
            v19 = 0;
            goto LABEL_26;
          }

          v22 = *(v0 + 728);
          v19 = *(v22 + 8 * v26 + 64);
          ++v20;
          if (v19)
          {
            v20 = v26;
            goto LABEL_25;
          }
        }

        __break(1u);
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10004319C()
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v4 = *v1;
  *(*v1 + 880) = v0;

  v5 = v2[108];
  v6 = v2[107];
  v7 = v2[106];
  v8 = v2[66];

  if (v0)
  {
    v9 = sub_100043D10;
  }

  else
  {
    v9 = sub_100043324;
  }

  return _swift_task_switch(v9, v8, 0);
}

void sub_100043324()
{
  v65 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = &unk_1000B7F30;
  if (!v2)
  {
    goto LABEL_5;
  }

  do
  {
    while (1)
    {
      v4 = *(v0 + 728);
LABEL_13:
      v9 = *(v0 + 568);
      v10 = *(v0 + 536);
      v11 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v12 = v11 | (v1 << 6);
      v13 = (*(v4 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      sub_10004AD04(*(v4 + 56) + *(*(v0 + 560) + 72) * v12, v9);
      v16 = sub_100006940(v3, &unk_100085C00);
      v17 = *(v16 + 48);
      *v10 = v14;
      v10[1] = v15;
      sub_10003CE00(v9, v10 + v17);
      (*(*(v16 - 8) + 56))(v10, 0, 1, v16);

      v7 = v1;
LABEL_14:
      *(v0 + 840) = v7;
      *(v0 + 832) = v2;
      v18 = *(v0 + 544);
      sub_10004AD68(*(v0 + 536), v18);
      v19 = sub_100006940(v3, &unk_100085C00);
      if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
      {
        v35 = *(v0 + 736);
        v36 = *(v0 + 728);
        v37 = *(v0 + 648);
        v38 = *(v0 + 640);
        v39 = *(v0 + 616);
        v40 = *(v0 + 608);
        v41 = *(v0 + 600);
        v42 = *(v0 + 592);
        v43 = *(v0 + 584);
        v59 = *(v0 + 576);
        v60 = *(v0 + 568);
        v61 = *(v0 + 544);
        v62 = *(v0 + 536);

        v44 = *(v0 + 8);

        v44();
        return;
      }

      v20 = *(v0 + 544);
      v22 = *v20;
      v21 = v20[1];
      v23 = v20 + *(v19 + 48);
      v24 = *(v23 + *(*(v0 + 552) + 28));
      sub_10004ADD8(v23);
      if (v24)
      {
        if (v24 == 1)
        {
          v34 = 32;
        }

        else
        {
          v34 = 64;
        }

        v45 = *(v0 + 656);

        v46 = sub_100080FF8();
        v47 = sub_1000815C8();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = v34;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v64 = v50;
          *v49 = 136315138;
          *(v49 + 4) = sub_1000597A8(v22, v21, &v64);
          _os_log_impl(&_mh_execute_header, v46, v47, "Updating sync state to active for rxUUID: %s", v49, 0xCu);
          sub_1000068F4(v50);

          v34 = v48;
        }

        v51 = *(v0 + 528);
        v63 = *(v51 + 152);
        v52 = *(v51 + 264);
        *(v0 + 848) = v52;
        sub_100006940(&qword_1000B7D70, &qword_100085A28);
        inited = swift_initStackObject();
        *(inited + 32) = 48;
        *(inited + 16) = xmmword_100085A60;
        *(inited + 64) = &type metadata for String;
        *(inited + 40) = v22;
        *(inited + 48) = v21;
        *(inited + 72) = 58;
        *(inited + 104) = &type metadata for Int;
        *(inited + 80) = v34;

        v54 = sub_10003C818(inited);
        *(v0 + 856) = v54;
        swift_setDeallocating();
        sub_100006940(&qword_1000B7D30, &unk_100085BC0);
        swift_arrayDestroy();
        v55 = swift_initStackObject();
        *(v55 + 16) = xmmword_100084830;
        *(v55 + 32) = 58;
        v56 = v55 + 32;
        *(v55 + 64) = &type metadata for Int;
        *(v55 + 40) = 0;
        v57 = sub_10003C818(v55);
        *(v0 + 864) = v57;
        swift_setDeallocating();
        sub_10001A80C(v56, &qword_1000B7D30, &unk_100085BC0);
        v58 = swift_task_alloc();
        *(v0 + 872) = v58;
        *v58 = v0;
        v58[1] = sub_10004319C;

        sub_10004FA98(v52, v54, v57);
        return;
      }

      v25 = *(v0 + 656);

      v26 = sub_100080FF8();
      v27 = sub_1000815C8();

      if (os_log_type_enabled(v26, v27))
      {
        break;
      }

      v1 = v7;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    v28 = v3;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v64 = v30;
    *v29 = 136315138;
    v31 = sub_1000597A8(v22, v21, &v64);

    *(v29 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "Sync state is already active for rxUUID: %s", v29, 0xCu);
    sub_1000068F4(v30);

    v3 = v28;

    v1 = v7;
  }

  while (v2);
LABEL_5:
  v5 = ((1 << *(v0 + 889)) + 63) >> 6;
  if (v5 <= (v1 + 1))
  {
    v6 = v1 + 1;
  }

  else
  {
    v6 = ((1 << *(v0 + 889)) + 63) >> 6;
  }

  v7 = v6 - 1;
  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v32 = *(v0 + 536);
      v33 = sub_100006940(v3, &unk_100085C00);
      (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
      v2 = 0;
      goto LABEL_14;
    }

    v4 = *(v0 + 728);
    v2 = *(v4 + 8 * v8 + 64);
    ++v1;
    if (v2)
    {
      v1 = v8;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1000439C4()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[71];
  v10 = v0[68];
  v13 = v0[67];
  v14 = v0[89];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100043AC8()
{
  v1 = v0[92];
  v2 = v0[91];

  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[75];
  v8 = v0[74];
  v9 = v0[73];
  v10 = v0[72];
  v11 = v0[71];
  v12 = v0[68];
  v15 = v0[67];
  v16 = v0[101];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100043BEC()
{
  v1 = v0[92];
  v2 = v0[91];

  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[75];
  v8 = v0[74];
  v9 = v0[73];
  v10 = v0[72];
  v11 = v0[71];
  v12 = v0[68];
  v15 = v0[67];
  v16 = v0[103];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100043D10()
{
  v1 = v0[92];
  v2 = v0[91];

  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[75];
  v8 = v0[74];
  v9 = v0[73];
  v10 = v0[72];
  v11 = v0[71];
  v12 = v0[68];
  v15 = v0[67];
  v16 = v0[110];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100043E34(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 184) = a1;
  return _swift_task_switch(sub_100043E58, v1, 0);
}

uint64_t sub_100043E58()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 152);
  v3 = *(v1 + 248);
  *(v0 + 144) = v3;
  v4 = *(v0 + 184);
  sub_100006940(&qword_1000B7D70, &qword_100085A28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084830;
  *(inited + 32) = 32;
  v6 = sub_1000565A4(v4);
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v6;
  *(inited + 48) = v7;

  v8 = sub_10003C818(inited);
  *(v0 + 152) = v8;
  swift_setDeallocating();
  sub_10001A80C(inited + 32, &qword_1000B7D30, &unk_100085BC0);
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_100043FA8;

  return sub_10004DAFC(v3, 0, 0, v8, 0, 0);
}

uint64_t sub_100043FA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v11 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = v3[17];
    v6 = sub_100044494;
  }

  else
  {
    v8 = v3[18];
    v7 = v3[19];
    v9 = v3[17];

    v6 = sub_1000440D8;
    v5 = v9;
  }

  return _swift_task_switch(v6, v5, 0);
}

unint64_t sub_1000440D8()
{
  v40 = v0;
  v1 = v0[21];
  if (!*(v1 + 16))
  {
    v17 = v0[21];
    goto LABEL_26;
  }

  v2 = *(v1 + 32);

  if (!*(v2 + 16))
  {
    goto LABEL_26;
  }

  v3 = sub_1000526A8(53);
  if ((v4 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_100006888(*(v2 + 56) + 32 * v3, (v0 + 11));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v18 = 0;
    goto LABEL_28;
  }

  v6 = v0[15];
  result = v0[16];
  v7 = HIBYTE(result) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if (!((result & 0x2000000000000000) != 0 ? HIBYTE(result) & 0xF : v6 & 0xFFFFFFFFFFFFLL))
  {
LABEL_26:

    goto LABEL_27;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    if ((result & 0x2000000000000000) != 0)
    {
      v39[0] = v0[15];
      v39[1] = result & 0xFFFFFFFFFFFFFFLL;
      if (v6 == 43)
      {
        if (v7)
        {
          v10 = (v7 - 1);
          if (v7 != 1)
          {
            v13 = 0;
            v27 = v39 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                break;
              }

              v13 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v10)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_82:
        __break(1u);
        return result;
      }

      if (v6 != 45)
      {
        if (v7)
        {
          v13 = 0;
          v32 = v39;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++v32;
            if (!--v7)
            {
LABEL_71:
              LOBYTE(v10) = 0;
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }

      if (v7)
      {
        v10 = (v7 - 1);
        if (v7 != 1)
        {
          v13 = 0;
          v20 = v39 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v10)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v10 = ((result & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v37 = v0[16];
        v38 = v0[15];
        v10 = sub_1000816B8();
        result = v37;
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v23 = v8 - 1;
          if (v8 != 1)
          {
            v13 = 0;
            if (v10)
            {
              v24 = v10 + 1;
              while (1)
              {
                v25 = *v24 - 48;
                if (v25 > 9)
                {
                  goto LABEL_72;
                }

                v26 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_72;
                }

                v13 = v26 + v25;
                if (__OFADD__(v26, v25))
                {
                  goto LABEL_72;
                }

                ++v24;
                if (!--v23)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_73;
          }

          goto LABEL_72;
        }

        goto LABEL_81;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v13 = 0;
          if (v10)
          {
            while (1)
            {
              v30 = *v10 - 48;
              if (v30 > 9)
              {
                goto LABEL_72;
              }

              v31 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                goto LABEL_72;
              }

              v13 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_72;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_73;
        }

LABEL_72:
        v13 = 0;
        LOBYTE(v10) = 1;
        goto LABEL_73;
      }

      if (v8 >= 1)
      {
        v12 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (v10)
          {
            v14 = v10 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_72;
              }

              v16 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                goto LABEL_72;
              }

              v13 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                goto LABEL_72;
              }

              ++v14;
              if (!--v12)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_73:
          v35 = v10;
          goto LABEL_74;
        }

        goto LABEL_72;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v13 = sub_1000494A8(v0[15], v0[16], 10);
  v35 = v36;
LABEL_74:

  if (v35)
  {
    v18 = 0;
  }

  else
  {
    v18 = v13;
  }

LABEL_28:
  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_100044494()
{
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_100044500(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 184) = a1;
  return _swift_task_switch(sub_100044524, v1, 0);
}

uint64_t sub_100044524()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 152);
  v3 = *(v1 + 248);
  *(v0 + 144) = v3;
  v4 = *(v0 + 184);
  sub_100006940(&qword_1000B7D70, &qword_100085A28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084830;
  *(inited + 32) = 32;
  v6 = sub_1000565A4(v4);
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v6;
  *(inited + 48) = v7;

  v8 = sub_10003C818(inited);
  *(v0 + 152) = v8;
  swift_setDeallocating();
  sub_10001A80C(inited + 32, &qword_1000B7D30, &unk_100085BC0);
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_100044674;

  return sub_10004DAFC(v3, 0, 0, v8, 0, 0);
}

uint64_t sub_100044674(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v11 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = v3[17];
    v6 = sub_100044494;
  }

  else
  {
    v8 = v3[18];
    v7 = v3[19];
    v9 = v3[17];

    v6 = sub_1000447A4;
    v5 = v9;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000447A4()
{
  v1 = v0[21];
  if (!*(v1 + 16))
  {
    v7 = v0[21];
LABEL_8:

    goto LABEL_9;
  }

  v2 = *(v1 + 32);

  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = sub_1000526A8(53);
  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_100006888(*(v2 + 56) + 32 * v3, (v0 + 11));

  if (swift_dynamicCast())
  {
    v5 = v0[15];
    v6 = v0[16];
    goto LABEL_10;
  }

LABEL_9:
  v5 = 0;
  v6 = 0;
LABEL_10:
  v8 = v0[1];

  return v8(v5, v6);
}

uint64_t sub_100044894(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = *(*(sub_100006940(&qword_1000B7F38, &qword_100085C18) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_100006940(&qword_1000B7F40, &qword_100085C20) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = sub_100006940(&qword_1000B7F48, &qword_100085C28);
  v3[25] = v6;
  v7 = *(v6 - 8);
  v3[26] = v7;
  v8 = *(v7 + 64) + 15;
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000449D4, v2, 0);
}

uint64_t sub_1000449D4()
{
  v41 = v0;
  v1 = v0[22];
  v2 = sub_10003C570(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v3 = *(v1 + 280);
  v40 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
LABEL_31:
    v4 = sub_1000817A8();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v0[26];
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v9 = v0[21];
    v38 = (v7 + 56);
    v39 = v9;
    v36 = (v7 + 32);
    v37 = (v7 + 8);
    v35 = v4;
    v34 = v2;
    while (1)
    {
      if (v6)
      {
        v10 = sub_1000816A8();
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v2 = v34;
          break;
        }
      }

      else
      {
        if (v5 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v10 = *(v3 + 8 * v5 + 32);

        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_19;
        }
      }

      v11 = v10[7];
      if ((v11 & 4) != 0 || (v11 & 2) != 0)
      {
      }

      else
      {
        if (!v9)
        {
          goto LABEL_16;
        }

        v12 = v0[24];
        v0[13] = v0[20];
        v0[14] = v9;
        v0[15] = 42;
        v0[16] = 0xE100000000000000;
        v0[17] = 10798;
        v0[18] = 0xE200000000000000;
        sub_10004B2B8();
        sub_100081648();
        sub_100080E48();
        v13 = v0[27];
        v15 = v0[24];
        v14 = v0[25];
        v16 = v0[23];
        (*v38)(v15, 0, 1, v14);
        (*v36)(v13, v15, v14);
        v17 = v10[8];
        v18 = v10[9];
        sub_100080E38();
        v19 = v0[23];
        (*v37)(v0[27], v0[25]);
        v20 = sub_100006940(&qword_1000B7F58, &unk_100085C30);
        v8 = v3 & 0xFFFFFFFFFFFFFF8;
        if ((*(*(v20 - 8) + 48))(v19, 1, v20) != 1)
        {
          sub_10001A80C(v0[23], &qword_1000B7F38, &qword_100085C18);
          v6 = v3 & 0xC000000000000001;
          v4 = v35;
LABEL_16:
          sub_1000816D8();
          v21 = v40[2];
          sub_1000816F8();
          sub_100081708();
          sub_1000816E8();
          v9 = v39;
          goto LABEL_6;
        }

        v6 = v3 & 0xC000000000000001;
        v4 = v35;
        v9 = v39;
        sub_10001A80C(v0[23], &qword_1000B7F38, &qword_100085C18);
      }

LABEL_6:
      ++v5;
      if (v2 == v4)
      {
        goto LABEL_20;
      }
    }
  }

  v40 = sub_10004A990(v22);
  sub_100049EA8(&v40);

  v23 = v40;
  v0[28] = v40;
  if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
  {
    result = sub_1000817A8();
    v0[29] = result;
    if (result)
    {
      goto LABEL_24;
    }

LABEL_33:
    v30 = v0[27];
    v29 = v0[28];
    v32 = v0[23];
    v31 = v0[24];

    v33 = v0[1];

    return v33(v2);
  }

  result = *(v23 + 16);
  v0[29] = result;
  if (!result)
  {
    goto LABEL_33;
  }

LABEL_24:
  v0[30] = v2;
  v25 = v0[28];
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = sub_1000816A8();
  }

  else
  {
    if (!*(v25 + 16))
    {
      __break(1u);
      return result;
    }

    v26 = *(v25 + 32);
  }

  v0[31] = v26;
  v0[32] = 1;
  v27 = *(v0[22] + 152);
  v28 = swift_task_alloc();
  v0[33] = v28;
  *v28 = v0;
  v28[1] = sub_100044F8C;

  return sub_100051804(v26);
}

uint64_t sub_100044F8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v7 = v4[30];
    v8 = v4[28];
    v9 = v4[22];

    v10 = sub_1000453E4;
    v11 = v9;
  }

  else
  {
    v11 = v4[22];
    v4[35] = a1;
    v10 = sub_1000450D8;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1000450D8()
{
  v2 = *(v0 + 280);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v3 + 64);
  v5 = *(v3 + 72);
  v7 = sub_100006940(&unk_1000B8390, &qword_100086040);
  *(v0 + 16) = v2;
  *(v0 + 40) = v7;
  sub_1000068E4((v0 + 16), (v0 + 48));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 152) = v4;
  v9 = v0 + 152;
  v10 = sub_1000525C4(v6, v5);
  v12 = *(v4 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = v11;
  if (*(*(v0 + 240) + 24) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v23 = v10;
    sub_1000537E4();
    v10 = v23;
    v24 = *(v0 + 248);
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_100052730(v15, isUniquelyReferenced_nonNull_native);
  v16 = *v9;
  v10 = sub_1000525C4(v6, v5);
  if ((v1 & 1) != (v17 & 1))
  {

    return sub_1000818E8();
  }

LABEL_8:
  v19 = *(v0 + 248);
  if (v1)
  {
LABEL_9:
    v20 = v10;

    v21 = *v9;
    v22 = (*(*v9 + 56) + 32 * v20);
    sub_1000068F4(v22);
    sub_1000068E4((v0 + 48), v22);

    goto LABEL_14;
  }

LABEL_12:
  v21 = *v9;
  *(*v9 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v25 = (v21[6] + 16 * v10);
  *v25 = v6;
  v25[1] = v5;
  sub_1000068E4((v0 + 48), (v21[7] + 32 * v10));

  v26 = v21[2];
  v14 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v14)
  {
    __break(1u);
LABEL_26:
    result = sub_1000816A8();
    v34 = result;
    goto LABEL_21;
  }

  v21[2] = v27;
LABEL_14:
  v5 = *(v0 + 256);
  if (v5 == *(v0 + 232))
  {
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 184);
    v30 = *(v0 + 192);

    v32 = *(v0 + 8);

    return v32(v21);
  }

  *(v0 + 240) = v21;
  v33 = *(v0 + 224);
  if ((v33 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (v5 >= *(v33 + 16))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v34 = *(v33 + 8 * v5 + 32);

LABEL_21:
  *(v0 + 248) = v34;
  *(v0 + 256) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  v35 = *(*(v0 + 176) + 152);
  v36 = swift_task_alloc();
  *(v0 + 264) = v36;
  *v36 = v0;
  v36[1] = sub_100044F8C;

  return sub_100051804(v34);
}

uint64_t sub_1000453E4()
{
  v1 = v0[31];
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];

  v5 = v0[1];
  v6 = v0[34];

  return v5();
}

uint64_t sub_100045470(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = *(*(sub_100006940(&qword_1000B7F38, &qword_100085C18) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_100006940(&qword_1000B7F40, &qword_100085C20) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = sub_100006940(&qword_1000B7F48, &qword_100085C28);
  v3[25] = v6;
  v7 = *(v6 - 8);
  v3[26] = v7;
  v8 = *(v7 + 64) + 15;
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000455B0, v2, 0);
}

uint64_t sub_1000455B0()
{
  v42 = v0;
  v1 = v0[22];
  v2 = sub_10003C570(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v3 = *(v1 + 280);
  v41 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
LABEL_31:
    v4 = sub_1000817A8();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v0[26];
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v9 = v0[21];
    v39 = (v7 + 56);
    v40 = v9;
    v37 = (v7 + 32);
    v38 = (v7 + 8);
    v36 = v4;
    v35 = v2;
    while (1)
    {
      if (v6)
      {
        v10 = sub_1000816A8();
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v2 = v35;
          break;
        }
      }

      else
      {
        if (v5 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v10 = *(v3 + 8 * v5 + 32);

        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_19;
        }
      }

      v11 = v10[7];
      if ((v11 & 4) != 0 || (v11 & 2) != 0)
      {
      }

      else
      {
        if (!v9)
        {
          goto LABEL_16;
        }

        v12 = v0[24];
        v0[13] = v0[20];
        v0[14] = v9;
        v0[15] = 42;
        v0[16] = 0xE100000000000000;
        v0[17] = 10798;
        v0[18] = 0xE200000000000000;
        sub_10004B2B8();
        sub_100081648();
        sub_100080E48();
        v13 = v0[27];
        v15 = v0[24];
        v14 = v0[25];
        v16 = v0[23];
        (*v39)(v15, 0, 1, v14);
        (*v37)(v13, v15, v14);
        v17 = v10[8];
        v18 = v10[9];
        sub_100080E38();
        v19 = v0[23];
        (*v38)(v0[27], v0[25]);
        v20 = sub_100006940(&qword_1000B7F58, &unk_100085C30);
        v8 = v3 & 0xFFFFFFFFFFFFFF8;
        if ((*(*(v20 - 8) + 48))(v19, 1, v20) != 1)
        {
          sub_10001A80C(v0[23], &qword_1000B7F38, &qword_100085C18);
          v6 = v3 & 0xC000000000000001;
          v4 = v36;
LABEL_16:
          sub_1000816D8();
          v21 = v41[2];
          sub_1000816F8();
          sub_100081708();
          sub_1000816E8();
          v9 = v40;
          goto LABEL_6;
        }

        v6 = v3 & 0xC000000000000001;
        v4 = v36;
        v9 = v40;
        sub_10001A80C(v0[23], &qword_1000B7F38, &qword_100085C18);
      }

LABEL_6:
      ++v5;
      if (v2 == v4)
      {
        goto LABEL_20;
      }
    }
  }

  v41 = sub_10004A990(v22);
  sub_100049EA8(&v41);

  v24 = v41;
  v0[28] = v41;
  if ((v24 & 0x8000000000000000) != 0 || (v24 & 0x4000000000000000) != 0)
  {
    v25 = sub_1000817A8();
    v0[29] = v25;
    if (v25)
    {
LABEL_24:
      v0[30] = v2;
      v26 = v0[28];
      if ((v26 & 0xC000000000000001) != 0)
      {
        v28 = sub_1000816A8();
      }

      else
      {
        if (!*(v26 + 16))
        {
          __break(1u);
          return _swift_task_switch(v25, v26, v23);
        }

        v27 = *(v26 + 32);
      }

      v0[31] = v28;
      v0[32] = 1;
      v26 = *(v0[22] + 152);
      v0[33] = v26;
      v25 = sub_100045B30;
      v23 = 0;

      return _swift_task_switch(v25, v26, v23);
    }
  }

  else
  {
    v25 = *(v24 + 16);
    v0[29] = v25;
    if (v25)
    {
      goto LABEL_24;
    }
  }

  v30 = v0[27];
  v29 = v0[28];
  v32 = v0[23];
  v31 = v0[24];

  v33 = v0[1];

  return v33(v2);
}

uint64_t sub_100045B30()
{
  v1 = sub_10003C818(_swiftEmptyArrayStorage);
  v0[34] = v1;
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_100045BF0;
  v3 = v0[33];
  v4 = v0[31];

  return sub_10004DAFC(v4, 0, 0, v1, 0, 1);
}

uint64_t sub_100045BF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  v7 = v3[34];
  v8 = v3[33];
  if (v1)
  {
    v9 = v4[28];

    v10 = sub_100045E88;
  }

  else
  {

    v10 = sub_100045D50;
  }

  return _swift_task_switch(v10, v8, 0);
}

uint64_t sub_100045D50()
{
  v1 = v0[36];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *v3;

      v7 = sub_100006048(v6);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_10003DE6C(0, v4[2] + 1, 1, v4);
      }

      v9 = v4[2];
      v8 = v4[3];
      if (v9 >= v8 >> 1)
      {
        v4 = sub_10003DE6C((v8 > 1), v9 + 1, 1, v4);
      }

      v4[2] = v9 + 1;
      v4[v9 + 4] = v7;
      ++v3;
      --v2;
    }

    while (v2);
    v10 = v0[36];
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v0[38] = v4;
  v11 = v0[22];

  return _swift_task_switch(sub_100045F80, v11, 0);
}

uint64_t sub_100045E88()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 176);

  return _swift_task_switch(sub_100045EF4, v2, 0);
}

uint64_t sub_100045EF4()
{
  v1 = v0[31];
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];

  v5 = v0[1];
  v6 = v0[37];

  return v5();
}

uint64_t sub_100045F80()
{
  v2 = *(v0 + 304);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v3 + 64);
  v5 = *(v3 + 72);
  v7 = sub_100006940(&qword_1000B7F70, &qword_100085C58);
  *(v0 + 16) = v2;
  *(v0 + 40) = v7;
  sub_1000068E4((v0 + 16), (v0 + 48));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 152) = v4;
  v9 = v0 + 152;
  v10 = sub_1000525C4(v6, v5);
  v12 = *(v4 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = v11;
  if (*(*(v0 + 240) + 24) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v22 = v10;
    sub_1000537E4();
    v10 = v22;
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_100052730(v15, isUniquelyReferenced_nonNull_native);
  v16 = *v9;
  v10 = sub_1000525C4(v6, v5);
  if ((v1 & 1) != (v17 & 1))
  {

    return sub_1000818E8();
  }

LABEL_8:
  if (v1)
  {
LABEL_9:
    v19 = v10;

    v20 = *v9;
    v21 = (*(*v9 + 56) + 32 * v19);
    sub_1000068F4(v21);
    sub_1000068E4((v0 + 48), v21);
    goto LABEL_14;
  }

LABEL_12:
  v20 = *v9;
  *(*v9 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v20[6] + 16 * v10);
  *v23 = v6;
  v23[1] = v5;
  sub_1000068E4((v0 + 48), (v20[7] + 32 * v10));
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_26;
  }

  v20[2] = v25;
LABEL_14:
  v26 = *(v0 + 248);
  v27 = *(v0 + 256);
  v28 = *(v0 + 232);

  if (v27 != v28)
  {
    v5 = *(v0 + 256);
    *(v0 + 240) = v20;
    v36 = *(v0 + 224);
    if ((v36 & 0xC000000000000001) == 0)
    {
      if (v5 >= *(v36 + 16))
      {
        goto LABEL_28;
      }

      v37 = *(v36 + 8 * v5 + 32);

LABEL_21:
      *(v0 + 248) = v29;
      *(v0 + 256) = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        v36 = *(*(v0 + 176) + 152);
        *(v0 + 264) = v36;
        v29 = sub_100045B30;
        v30 = 0;

        return _swift_task_switch(v29, v36, v30);
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return _swift_task_switch(v29, v36, v30);
    }

LABEL_26:
    v29 = sub_1000816A8();
    goto LABEL_21;
  }

  v32 = *(v0 + 216);
  v31 = *(v0 + 224);
  v34 = *(v0 + 184);
  v33 = *(v0 + 192);

  v35 = *(v0 + 8);

  return v35(v20);
}

Swift::Int sub_100046258()
{
  v1 = *v0;
  sub_100081988();
  sub_100081998(32 * v1);
  return sub_1000819B8();
}

Swift::Int sub_1000462D0()
{
  v1 = *v0;
  sub_100081988();
  sub_100081998(32 * v1);
  return sub_1000819B8();
}

uint64_t *sub_100046314@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 32)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 64)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

void sub_100046364()
{
  v0 = sub_100081018();
  sub_100016278(v0, qword_1000B7DB8);
  sub_100016240(v0, qword_1000B7DB8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1000812B8();

    type metadata accessor for DataManager();
    sub_100006940(&qword_1000B7F20, &qword_100085BD8);
    sub_100081338();
    sub_100081008();
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_100046458(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = v3;
  v145 = *v3;
  swift_defaultActor_initialize();
  v3[25] = sub_10003C708(_swiftEmptyArrayStorage);
  v152 = v3 + 25;
  v3[26] = sub_10003C708(_swiftEmptyArrayStorage);
  v151 = v3 + 26;
  v3[27] = sub_10003C708(_swiftEmptyArrayStorage);
  v149 = v3 + 27;
  v3[28] = sub_10003C708(_swiftEmptyArrayStorage);
  v150 = v3 + 28;
  v3[34] = sub_10003C708(_swiftEmptyArrayStorage);
  v3[35] = _swiftEmptyArrayStorage;
  *(v3 + 288) = 0;
  v3[40] = [objc_allocWithZone(NSNotificationCenter) init];
  v3[41] = 0;
  sub_100006940(&qword_1000B8C80, &qword_100085BE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100085A70;
  v7 = type metadata accessor for CRXCDiopterRange();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___CRXCDiopterRange_minimumDiopter] = 1061158912;
  *&v8[OBJC_IVAR___CRXCDiopterRange_maximumDiopter] = 1067450368;
  *&v8[OBJC_IVAR___CRXCDiopterRange_mappedDiopter] = 1048576000;
  v156.receiver = v8;
  v156.super_class = v7;
  *(v6 + 32) = objc_msgSendSuper2(&v156, "init");
  v9 = objc_allocWithZone(v7);
  *&v9[OBJC_IVAR___CRXCDiopterRange_minimumDiopter] = 1069547520;
  *&v9[OBJC_IVAR___CRXCDiopterRange_maximumDiopter] = 1071644672;
  *&v9[OBJC_IVAR___CRXCDiopterRange_mappedDiopter] = 1056964608;
  v155.receiver = v9;
  v155.super_class = v7;
  *(v6 + 40) = objc_msgSendSuper2(&v155, "init");
  v10 = objc_allocWithZone(v7);
  *&v10[OBJC_IVAR___CRXCDiopterRange_minimumDiopter] = 0x40000000;
  *&v10[OBJC_IVAR___CRXCDiopterRange_maximumDiopter] = 1076887552;
  *&v10[OBJC_IVAR___CRXCDiopterRange_mappedDiopter] = 1061158912;
  v154.receiver = v10;
  v154.super_class = v7;
  *(v6 + 48) = objc_msgSendSuper2(&v154, "init");
  v5[42] = v6;
  sub_100022CA4(a2, (v5 + 14));
  sub_100022CA4(a3, (v5 + 20));
  v5[19] = a1;
  type metadata accessor for PrescriptionNameGenerator();
  swift_allocObject();

  v5[37] = sub_100070114();
  type metadata accessor for AppClipCodeTranscoder();
  v5[38] = swift_allocObject();
  type metadata accessor for DataStoreTableBuilder();
  v11 = 0;
  v12 = 0;
  do
  {
    v153 = v11;
    v13 = *(&off_1000AA180 + v12 + 32);
    inited = swift_initStackObject();
    *(inited + 24) = 0;
    *(inited + 32) = _swiftEmptyArrayStorage;
    v15 = (inited + 32);
    *(inited + 48) = _swiftEmptyArrayStorage;
    *(inited + 56) = 0;
    *(inited + 16) = 2;
    *(inited + 17) = v13;
    *(inited + 18) = 6;
    *(inited + 40) = 55;
    v16 = objc_allocWithZone(MAKVStoreDataField);
    v17 = sub_100081288();
    v18 = [v16 initWithName:v17 type:3 options:9];

    swift_beginAccess();
    v19 = v18;
    sub_100081468();
    if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v76 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();

    sub_100059EE8(56, 1u, 0);

    sub_100059EE8(57, 1u, 0);

    sub_100059EE8(32, 2u, 0);

    sub_100059EE8(52, 2u, 2);

    sub_100059EE8(8, 0, 2);

    sub_100059EE8(25, 1u, 0);

    sub_100059EE8(46, 0, 0);

    sub_100059EE8(47, 0, 0);

    sub_100059EE8(3, 1u, 0);

    sub_100059EE8(4, 1u, 0);

    sub_100059EE8(27, 2u, 2);

    sub_100059EE8(28, 2u, 2);

    sub_100059EE8(0, 3u, 2);

    sub_100059EE8(1, 3u, 2);

    sub_100059EE8(2, 3u, 2);

    v20 = sub_100059EE8(54, 1u, 2);

    swift_beginAccess();
    sub_100049120(&off_1000AA1A8);
    swift_endAccess();
    *(v20 + 56) |= v13 | 0xC;
    v21 = sub_1000592E4();
    if (v4)
    {

      sub_1000068F4(v5 + 14);
      v91 = v5[19];

      sub_1000068F4(v5 + 20);
      v92 = v5[25];

      v93 = v5[26];

      v94 = v5[27];

      v95 = v5[28];

      v96 = v5[34];

      v97 = v5[35];

      v98 = v5[37];

      v99 = v5[38];

      v100 = v5[42];

      swift_defaultActor_destroy();

      sub_1000068F4(a3);
      sub_1000068F4(a2);
      swift_deallocPartialClassInstance();
      return v5;
    }

    v22 = v21;

    swift_beginAccess();
    v23 = *v152;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v157 = *v152;
    *v152 = 0x8000000000000000;
    sub_10003C44C(v22, v13, isUniquelyReferenced_nonNull_native);
    v25 = v157;
    *v152 = v157;
    v26 = swift_endAccess();
    if (!*(v25 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v26 = sub_10005263C(v13);
    if ((v27 & 1) == 0)
    {
      goto LABEL_54;
    }

    v28 = *(*(v25 + 56) + 8 * v26);
    swift_beginAccess();

    sub_100081468();
    if (*((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v77 = *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();
    v29 = swift_initStackObject();
    *(v29 + 24) = 0;
    *(v29 + 32) = _swiftEmptyArrayStorage;
    v30 = (v29 + 32);
    *(v29 + 48) = _swiftEmptyArrayStorage;
    *(v29 + 56) = 0;
    *(v29 + 16) = 2;
    *(v29 + 17) = v13;
    *(v29 + 18) = 7;
    *(v29 + 40) = 48;
    v31 = objc_allocWithZone(MAKVStoreDataField);
    v32 = sub_100081288();
    v33 = [v31 initWithName:v32 type:3 options:9];

    swift_beginAccess();
    v34 = v33;
    sub_100081468();
    if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v78 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();

    sub_100059EE8(22, 0, 6);

    sub_100059EE8(0, 3u, 0);

    sub_100059EE8(23, 0, 6);

    sub_100059EE8(44, 0, 6);

    sub_100059EE8(45, 0, 6);

    sub_100059EE8(27, 2u, 6);

    v35 = sub_100059EE8(28, 2u, 6);

    *(v35 + 56) |= 4uLL;
    v36 = sub_1000592E4();

    swift_beginAccess();
    v37 = *v151;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v157 = *v151;
    *v151 = 0x8000000000000000;
    sub_10003C44C(v36, v13, v38);
    v39 = v157;
    *v151 = v157;
    v26 = swift_endAccess();
    if (!*(v39 + 16))
    {
      goto LABEL_55;
    }

    v26 = sub_10005263C(v13);
    if ((v40 & 1) == 0)
    {
      goto LABEL_56;
    }

    v41 = *(*(v39 + 56) + 8 * v26);
    swift_beginAccess();

    sub_100081468();
    if (*((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v79 = *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();
    v42 = swift_initStackObject();
    *(v42 + 24) = 0;
    *(v42 + 32) = _swiftEmptyArrayStorage;
    v43 = (v42 + 32);
    *(v42 + 48) = _swiftEmptyArrayStorage;
    *(v42 + 56) = 0;
    if (v13)
    {
      v44 = 2;
    }

    else
    {
      v44 = 1;
    }

    *(v42 + 16) = v44;
    *(v42 + 17) = v13;
    *(v42 + 18) = 2;
    *(v42 + 40) = 48;
    v45 = objc_allocWithZone(MAKVStoreDataField);
    v46 = sub_100081288();
    v47 = [v45 initWithName:v46 type:3 options:9];

    swift_beginAccess();
    v48 = v47;
    sub_100081468();
    if (*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v80 = *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();

    sub_100059EE8(43, 0, 4);

    sub_100059EE8(32, 2u, 0);

    sub_100059EE8(7, 0, 0);

    sub_100059EE8(21, 0, 6);

    v49 = sub_100059EE8(22, 0, 6);

    *(v49 + 56) |= 4uLL;
    v50 = *(v49 + 24);
    *(v49 + 24) = NSFileProtectionNone;
    v51 = NSFileProtectionNone;

    v52 = sub_1000592E4();

    swift_beginAccess();
    v53 = *v150;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v157 = *v150;
    *v150 = 0x8000000000000000;
    sub_10003C44C(v52, v13, v54);
    v55 = v157;
    *v150 = v157;
    v26 = swift_endAccess();
    if (!*(v55 + 16))
    {
      goto LABEL_57;
    }

    v26 = sub_10005263C(v13);
    if ((v56 & 1) == 0)
    {
      goto LABEL_58;
    }

    v57 = *(*(v55 + 56) + 8 * v26);
    swift_beginAccess();

    sub_100081468();
    if (*((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v81 = *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();
    v58 = swift_initStackObject();
    *(v58 + 24) = 0;
    *(v58 + 32) = _swiftEmptyArrayStorage;
    *(v58 + 40) = 63;
    *(v58 + 48) = _swiftEmptyArrayStorage;
    *(v58 + 56) = 0;
    *(v58 + 16) = 2;
    *(v58 + 17) = v13;
    *(v58 + 18) = 9;
    sub_100059EE8(48, 2u, 1);

    sub_100059EE8(34, 0, 0);

    sub_100059EE8(35, 1u, 0);

    sub_100059EE8(36, 0, 0);

    sub_100059EE8(37, 1u, 0);

    sub_100059EE8(38, 0, 0);

    sub_100059EE8(39, 1u, 0);

    sub_100059EE8(40, 0, 0);

    sub_100059EE8(41, 1u, 0);

    v59 = sub_100059EE8(42, 0, 0);

    *(v59 + 56) |= 4uLL;
    v60 = sub_1000592E4();

    swift_beginAccess();
    v61 = v5[34];
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v157 = v5[34];
    v5[34] = 0x8000000000000000;
    sub_10003C44C(v60, v13, v62);
    v63 = v157;
    v5[34] = v157;
    v26 = swift_endAccess();
    if (!*(v63 + 16))
    {
      goto LABEL_59;
    }

    v26 = sub_10005263C(v13);
    if ((v64 & 1) == 0)
    {
      goto LABEL_60;
    }

    v65 = *(*(v63 + 56) + 8 * v26);
    swift_beginAccess();

    sub_100081468();
    if (*((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v82 = *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();
    v66 = swift_initStackObject();
    *(v66 + 24) = 0;
    *(v66 + 32) = _swiftEmptyArrayStorage;
    *(v66 + 40) = 63;
    *(v66 + 48) = _swiftEmptyArrayStorage;
    *(v66 + 56) = 0;
    *(v66 + 16) = 2;
    *(v66 + 17) = v13;
    *(v66 + 18) = 4;
    sub_100059EE8(48, 2u, 1);

    v67 = sub_100059EE8(9, 3u, 0);

    v68 = *(v67 + 24);
    *(v67 + 24) = NSFileProtectionNone;
    v69 = v51;

    *(v67 + 56) |= 4uLL;
    v70 = sub_1000592E4();

    swift_beginAccess();
    v71 = *v149;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v157 = *v149;
    sub_10003C44C(v70, v13, v72);
    v73 = v157;
    *v149 = v157;
    v26 = swift_endAccess();
    if (!*(v73 + 16))
    {
      goto LABEL_61;
    }

    v26 = sub_10005263C(v13);
    if ((v74 & 1) == 0)
    {
      goto LABEL_62;
    }

    v75 = *(*(v73 + 56) + 8 * v26);
    swift_beginAccess();

    sub_100081468();
    if (*((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v83 = *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();
    v11 = 1;
    v12 = &_mh_execute_header.magic + 1;
  }

  while ((v153 & 1) == 0);
  v84 = swift_initStackObject();
  *(v84 + 24) = 0;
  *(v84 + 32) = _swiftEmptyArrayStorage;
  v85 = (v84 + 32);
  *(v84 + 48) = _swiftEmptyArrayStorage;
  *(v84 + 56) = 0;
  *(v84 + 16) = 2;
  *(v84 + 18) = 5;
  *(v84 + 40) = 0;
  v86 = objc_allocWithZone(MAKVStoreDataField);
  v87 = sub_100081288();
  v88 = [v86 initWithName:v87 type:4 options:9];

  swift_beginAccess();
  v89 = v88;
  sub_100081468();
  if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v136 = *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();

  v90 = sub_100059EE8(16, 0, 0);

  *(v90 + 56) |= 4uLL;
  v102 = sub_1000592E4();

  v5[29] = v102;
  swift_beginAccess();

  sub_100081468();
  if (*((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v137 = *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();
  v103 = swift_initStackObject();
  *(v103 + 24) = 0;
  *(v103 + 32) = _swiftEmptyArrayStorage;
  v104 = (v103 + 32);
  *(v103 + 48) = _swiftEmptyArrayStorage;
  *(v103 + 56) = 0;
  *(v103 + 16) = 1;
  *(v103 + 18) = 1;
  *(v103 + 40) = 20;
  v105 = objc_allocWithZone(MAKVStoreDataField);
  v106 = sub_100081288();
  v107 = [v105 initWithName:v106 type:3 options:9];

  swift_beginAccess();
  v108 = v107;
  sub_100081468();
  if (*((*v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v138 = *((*v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();

  sub_100059EE8(31, 0, 0);

  sub_100059EE8(11, 0, 0);

  sub_100059EE8(10, 0, 0);

  sub_100059EE8(12, 0, 0);

  sub_100059EE8(13, 0, 0);

  v109 = sub_100059EE8(48, 2u, 10);

  v110 = *(v109 + 24);
  *(v109 + 24) = NSFileProtectionNone;
  v111 = v69;

  *(v109 + 56) |= 4uLL;
  v112 = sub_1000592E4();

  v5[30] = v112;
  swift_beginAccess();

  sub_100081468();
  if (*((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v139 = *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();
  v113 = swift_initStackObject();
  *(v113 + 24) = 0;
  *(v113 + 32) = _swiftEmptyArrayStorage;
  v114 = (v113 + 32);
  *(v113 + 48) = _swiftEmptyArrayStorage;
  *(v113 + 56) = 0;
  *(v113 + 16) = 1;
  *(v113 + 18) = 3;
  *(v113 + 40) = 32;
  v115 = objc_allocWithZone(MAKVStoreDataField);
  v116 = sub_100081288();
  v117 = [v115 initWithName:v116 type:3 options:9];

  swift_beginAccess();
  v118 = v117;
  sub_100081468();
  if (*((*v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v140 = *((*v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();

  v119 = sub_100059EE8(53, 2u, 0);

  v120 = *(v119 + 24);
  *(v119 + 24) = NSFileProtectionNone;
  v121 = v111;

  *(v119 + 56) |= 4uLL;
  v122 = sub_1000592E4();

  v5[31] = v122;
  swift_beginAccess();

  sub_100081468();
  if (*((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v141 = *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();
  v123 = swift_initStackObject();
  *(v123 + 24) = 0;
  *(v123 + 32) = _swiftEmptyArrayStorage;
  *(v123 + 40) = 63;
  *(v123 + 48) = _swiftEmptyArrayStorage;
  *(v123 + 56) = 0;
  *(v123 + 16) = 0;
  *(v123 + 18) = 0;
  sub_100059EE8(20, 0, 9);

  sub_100059EE8(14, 2u, 0);

  sub_100059EE8(5, 1u, 0);

  v124 = sub_100059EE8(6, 1u, 0);

  *(v124 + 56) |= 0xEuLL;
  v125 = sub_1000592E4();

  v5[32] = v125;
  swift_beginAccess();

  sub_100081468();
  if (*((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v142 = *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();
  v126 = swift_initStackObject();
  *(v126 + 24) = 0;
  *(v126 + 32) = _swiftEmptyArrayStorage;
  v127 = (v126 + 32);
  *(v126 + 48) = _swiftEmptyArrayStorage;
  *(v126 + 56) = 0;
  *(v126 + 16) = 258;
  *(v126 + 18) = 8;
  *(v126 + 40) = 48;
  v128 = objc_allocWithZone(MAKVStoreDataField);
  v129 = sub_100081288();
  v130 = [v128 initWithName:v129 type:3 options:9];

  swift_beginAccess();
  v131 = v130;
  sub_100081468();
  if (*((*v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v143 = *((*v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();

  sub_100059EE8(0, 2u, 6);

  sub_100059EE8(1, 2u, 6);

  sub_100059EE8(2, 2u, 6);

  sub_100059EE8(19, 2u, 0);

  sub_100059EE8(10, 0, 0);

  sub_100059EE8(27, 2u, 2);

  sub_100059EE8(28, 2u, 2);

  sub_100059EE8(17, 0, 0);

  sub_100059EE8(51, 2u, 2);

  sub_100059EE8(50, 2u, 2);

  sub_100059EE8(49, 2u, 2);

  sub_100059EE8(26, 2u, 2);

  sub_100059EE8(18, 0, 0);

  sub_100059EE8(59, 0, 0);

  sub_100059EE8(60, 1u, 0);

  sub_100059EE8(61, 1u, 0);

  sub_100059EE8(62, 1u, 0);

  sub_100059EE8(58, 0, 0);

  sub_100059EE8(56, 1u, 0);

  v132 = sub_100059EE8(57, 1u, 0);

  *(v132 + 56) |= 0x18uLL;
  v26 = sub_1000592E4();
LABEL_63:
  v133 = v26;

  v5[33] = v133;
  swift_beginAccess();

  sub_100081468();
  if (*((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v144 = *((v5[35] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();
  v134 = [objc_allocWithZone(NSDateFormatter) init];
  v135 = sub_100081288();
  [v134 setDateFormat:v135];

  sub_1000068F4(a3);
  sub_1000068F4(a2);
  v5[39] = v134;
  return v5;
}

uint64_t sub_1000482D0()
{
  *(v1 + 48) = v0;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_100048364;

  return sub_100043E34(0);
}

uint64_t sub_100048364(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v3 + 48);

    return _swift_task_switch(sub_1000484B0, v8, 0);
  }
}

uint64_t sub_1000484B0()
{
  v1 = v0[8];
  if (v1 < 0)
  {
    if (qword_1000B73F8 != -1)
    {
      swift_once();
    }

    v5 = sub_100081018();
    sub_100016240(v5, qword_1000B7DB8);
    v6 = sub_100080FF8();
    v7 = sub_1000815B8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[8];
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      *(v9 + 4) = v8;
      *(v9 + 12) = 2048;
      *(v9 + 14) = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Upgrading database from schema version %ld to %ld", v9, 0x16u);
    }

    v0[5] = &type metadata for Int;
    v0[2] = 0;
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_100048798;
    v11 = v0[6];

    return sub_100048964(0, (v0 + 2));
  }

  else
  {
    if (v1)
    {
      sub_10004AC50();
      swift_allocError();
      *v2 = 3;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 32) = 5;
      swift_willThrow();
      v3 = v0[1];
      v4 = 0;
    }

    else
    {
      if (qword_1000B73F8 != -1)
      {
        swift_once();
      }

      v13 = sub_100081018();
      sub_100016240(v13, qword_1000B7DB8);
      v14 = sub_100080FF8();
      v15 = sub_1000815B8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Database schema version is %ld; no upgrade necessary", v16, 0xCu);
      }

      v3 = v0[1];
      v4 = v0[8] >> 63;
    }

    return v3(v4);
  }
}

uint64_t sub_100048798()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[6];

    return _swift_task_switch(sub_1000488EC, v4, 0);
  }

  else
  {
    sub_10001A80C((v3 + 2), &qword_1000B75E0, &qword_1000856D0);
    v5 = v3[1];
    v6 = v3[8] >> 63;

    return v5(v6);
  }
}

uint64_t sub_1000488EC()
{
  sub_10001A80C(v0 + 16, &qword_1000B75E0, &qword_1000856D0);
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_100048964(char a1, uint64_t a2)
{
  *(v3 + 304) = a2;
  *(v3 + 312) = v2;
  *(v3 + 400) = a1;
  return _swift_task_switch(sub_100048988, v2, 0);
}

uint64_t sub_100048988()
{
  sub_10000CFA4(*(v0 + 304), v0 + 272);
  v1 = *(v0 + 312);
  v2 = *(v0 + 400);
  if (*(v0 + 296))
  {
    sub_1000068E4((v0 + 272), (v0 + 240));
    v3 = *(v1 + 152);
    *(v0 + 320) = v3;
    *(v0 + 328) = *(v1 + 248);
    sub_100006940(&qword_1000B7D70, &qword_100085A28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085A60;
    *(inited + 32) = 32;
    v5 = sub_1000565A4(v2);
    *(inited + 64) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = v6;
    *(inited + 72) = 53;
    sub_100006888(v0 + 240, inited + 80);

    *(v0 + 336) = sub_10003C818(inited);
    swift_setDeallocating();
    sub_100006940(&qword_1000B7D30, &unk_100085BC0);
    swift_arrayDestroy();

    return _swift_task_switch(sub_100048BF8, v3, 0);
  }

  else
  {
    sub_10001A80C(v0 + 272, &qword_1000B75E0, &qword_1000856D0);
    v7 = *(v1 + 152);
    v8 = *(v1 + 248);
    *(v0 + 368) = v8;
    sub_100006940(&qword_1000B7D70, &qword_100085A28);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_100084830;
    *(v9 + 32) = 32;
    v10 = sub_1000565A4(v2);
    *(v9 + 64) = &type metadata for String;
    *(v9 + 40) = v10;
    *(v9 + 48) = v11;

    v12 = sub_10003C818(v9);
    *(v0 + 376) = v12;
    swift_setDeallocating();
    sub_10001A80C(v9 + 32, &qword_1000B7D30, &unk_100085BC0);
    v13 = swift_task_alloc();
    *(v0 + 384) = v13;
    *v13 = v0;
    v13[1] = sub_100048F6C;

    return sub_100050708(v8, v12, 0);
  }
}

uint64_t sub_100048BF8()
{
  v1 = v0[42];
  sub_100006940(&qword_1000B7D78, &qword_100085A30);
  inited = swift_initStackObject();
  v0[43] = inited;
  *(inited + 16) = xmmword_100084830;
  *(inited + 32) = v1;
  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_100048CC8;
  v5 = v0[40];
  v4 = v0[41];

  return sub_10004EE80(v4, inited);
}

uint64_t sub_100048CC8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v10 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = v2[40];
    v5 = sub_100048E78;
  }

  else
  {
    v6 = v2[43];
    v7 = v2[41];
    v8 = v2[39];

    swift_setDeallocating();
    sub_10001A80C(v6 + 32, &qword_1000B7D80, &qword_100085BD0);
    v5 = sub_100048E14;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100048E14()
{
  sub_1000068F4((v0 + 240));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100048E78()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[39];

  swift_setDeallocating();
  sub_10001A80C(v1 + 32, &qword_1000B7D80, &qword_100085BD0);

  return _swift_task_switch(sub_100048F08, v3, 0);
}

uint64_t sub_100048F08()
{
  sub_1000068F4(v0 + 30);
  v1 = v0[45];
  v2 = v0[1];

  return v2();
}

uint64_t sub_100048F6C()
{
  v2 = *(*v1 + 384);
  v3 = *v1;
  v3[49] = v0;

  if (v0)
  {
    v4 = v3[39];

    return _swift_task_switch(sub_1000490B4, v4, 0);
  }

  else
  {
    v6 = v3[46];
    v5 = v3[47];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1000490B4()
{
  v2 = v0[46];
  v1 = v0[47];

  v3 = v0[49];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100049120(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003DC38(result, v11, 1, v3);
  v3 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100049214(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003DD44(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100006940(&qword_1000B7D80, &qword_100085BD0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100049318()
{
  sub_1000068F4((v0 + 112));
  v1 = *(v0 + 152);

  sub_1000068F4((v0 + 160));
  v2 = *(v0 + 200);

  v3 = *(v0 + 208);

  v4 = *(v0 + 216);

  v5 = *(v0 + 224);

  v6 = *(v0 + 232);

  v7 = *(v0 + 240);

  v8 = *(v0 + 248);

  v9 = *(v0 + 256);

  v10 = *(v0 + 264);

  v11 = *(v0 + 272);

  v12 = *(v0 + 280);

  v13 = *(v0 + 296);

  v14 = *(v0 + 304);

  v15 = *(v0 + 336);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000493D0()
{
  sub_100049318();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_100049420(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100006940(&qword_1000B8C80, &qword_100085BE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unsigned __int8 *sub_1000494A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100081448();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100049A34();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000816B8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100049A34()
{
  v0 = sub_100081458();
  v4 = sub_100049AB4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100049AB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100081378();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_100081638();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100059BE8(v9, 0);
  v12 = sub_100049C0C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_100081378();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1000816B8();
LABEL_4:

  return sub_100081378();
}

unint64_t sub_100049C0C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100049E2C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000813F8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000816B8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100049E2C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000813D8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100049E2C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100081408();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000813E8();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100049EA8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10004ACA4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100049F24(v6);
  return sub_1000816E8();
}

Swift::Int sub_100049F24(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100081838(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DataStoreTable();
        v6 = sub_1000814B8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10004A0E8(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_10004A028(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10004A028(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      result = *(v9 + 64);
      v12 = result == *(*v11 + 64) && *(v9 + 72) == *(*v11 + 72);
      if (v12 || (result = sub_100081888(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v13 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v13;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004A0E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_105:
    v8 = *v86;
    if (!*v86)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_10004A97C(v7);
      v7 = result;
    }

    v80 = *(v7 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = *&v7[16 * v80];
        v82 = *&v7[16 * v80 + 24];
        sub_10004A6B8((*a3 + 8 * v81), (*a3 + 8 * *&v7[16 * v80 + 16]), (*a3 + 8 * v82), v8);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10004A97C(v7);
        }

        if (v80 - 2 >= *(v7 + 2))
        {
          goto LABEL_131;
        }

        v83 = &v7[16 * v80];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_10004A8F0(v80 - 1);
        v80 = *(v7 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(*a3 + 8 * v6);
      v11 = *(*a3 + 8 * v8);
      result = *(v10 + 64);
      if (result == *(v11 + 64) && *(v10 + 72) == *(v11 + 72))
      {
        v13 = 0;
      }

      else
      {
        result = sub_100081888();
        v13 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v14 = v9 + 8 * v8 + 16;
        do
        {
          v15 = *(v14 - 8);
          result = *(*v14 + 64);
          if (result == *(v15 + 64) && *(*v14 + 72) == *(v15 + 72))
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_100081888();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v14 += 8;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v17 = 8 * v6 - 8;
          v18 = 8 * v8;
          v19 = v6;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v21 = *(v22 + v18);
              *(v22 + v18) = *(v22 + v17);
              *(v22 + v17) = v21;
            }

            ++v20;
            v17 -= 8;
            v18 += 8;
          }

          while (v20 < v19);
        }
      }
    }

    v23 = a3[1];
    if (v6 < v23)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v23)
        {
          v24 = a3[1];
        }

        else
        {
          v24 = (v8 + a4);
        }

        if (v24 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v24)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10003DD68(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v35 = *(v7 + 2);
    v34 = *(v7 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_10003DD68((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v36;
    v37 = &v7[16 * v35];
    *(v37 + 4) = v8;
    *(v37 + 5) = v6;
    v38 = *v86;
    if (!*v86)
    {
      goto LABEL_142;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 4);
          v41 = *(v7 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_74:
          if (v43)
          {
            goto LABEL_121;
          }

          v56 = &v7[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_124;
          }

          v62 = &v7[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_128;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v66 = &v7[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_88:
        if (v61)
        {
          goto LABEL_123;
        }

        v69 = &v7[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_126;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v39 - 1;
        if (v39 - 1 >= v36)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v77 = *&v7[16 * v8 + 32];
        v78 = *&v7[16 * v39 + 40];
        sub_10004A6B8((*a3 + 8 * v77), (*a3 + 8 * *&v7[16 * v39 + 32]), (*a3 + 8 * v78), v38);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10004A97C(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_118;
        }

        v79 = &v7[16 * v8];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = sub_10004A8F0(v39);
        v36 = *(v7 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v7[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_119;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_120;
      }

      v51 = &v7[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_122;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_125;
      }

      if (v55 >= v47)
      {
        v73 = &v7[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_129;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v6 - 8;
  v84 = v8;
  v27 = (v8 - v6);
LABEL_43:
  v28 = *(v25 + 8 * v6);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *(v28 + 64) == *(*v30 + 64) && *(v28 + 72) == *(*v30 + 72);
    if (v31 || (result = sub_100081888(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v26 += 8;
      --v27;
      if (v6 != v24)
      {
        goto LABEL_43;
      }

      v6 = v24;
      v8 = v84;
      goto LABEL_54;
    }

    if (!v25)
    {
      break;
    }

    v32 = *v30;
    v28 = v30[1];
    *v30 = v28;
    v30[1] = v32;
    --v30;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_10004A6B8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *(*v6 + 64) == *(*v4 + 64) && *(*v6 + 72) == *(*v4 + 72);
      if (!v16 && (sub_100081888() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = *(v18 - 1);
      v18 -= 8;
      v20 = *(v19 + 72);
      v21 = *(v19 + 64) == *(*v17 + 64) && v20 == *(*v17 + 72);
      if (!v21 && (sub_100081888() & 1) != 0)
      {
        if (v5 + 8 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_10004A8F0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10004A97C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_10004A990(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1000817A8();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100049420(v3, 0);
  sub_10004AA24((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10004AA24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000817A8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000817A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10003EEE8(&qword_1000B7F68, &qword_1000B7F60, &unk_100085C40);
          for (i = 0; i != v6; ++i)
          {
            sub_100006940(&qword_1000B7F60, &unk_100085C40);
            v9 = sub_10004ABC8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DataStoreTable();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}