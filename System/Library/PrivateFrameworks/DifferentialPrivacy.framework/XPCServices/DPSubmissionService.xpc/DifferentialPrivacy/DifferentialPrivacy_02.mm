uint64_t sub_100035444(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x1000000000000) != 0)
  {
    sub_10001C55C();
    swift_allocError();
    *v12 = 0xD000000000000085;
    *(v12 + 8) = 0x800000010005B740;
    v13 = 1;
LABEL_6:
    *(v12 + 16) = v13;
    return swift_willThrow();
  }

  v6 = a4;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v9);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v16 = v8 + 16;
  v8 = *(v8 + 16);
  v15 = *(v16 + 8);
  v11 = v15 - v8;
  if (__OFSUB__(v15, v8))
  {
    __break(1u);
LABEL_11:
    v17 = __OFSUB__(HIDWORD(v8), v8);
    v18 = HIDWORD(v8) - v8;
    if (v17)
    {
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
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v11 = v18;
  }

LABEL_14:
  LOBYTE(v77) = 0;
  result = sub_10003F9BC(a2, a3 & 0xFFFFFFFFFFFFLL, a4);
  if (v4)
  {
    return result;
  }

  v20 = result;
  v17 = __OFADD__(v11, result);
  v21 = v11 + result;
  if (v17)
  {
    goto LABEL_114;
  }

  sub_1000502D0(v21);
  v22 = sub_10003915C(a2);
  v23 = v20 - v22;
  if (__OFSUB__(v20, v22))
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v24 = v22;
  if (v22 < 1)
  {
    goto LABEL_22;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_117;
  }

  if (HIDWORD(v23))
  {
    goto LABEL_118;
  }

  sub_100015344(v22, a1, v20 - v22);
LABEL_22:
  v73 = v24;
  v74 = v23;
  v25 = *(v6 + 16);

  if (v25)
  {
    v26 = v6 + 32;
    v75 = v11;
    while (1)
    {
      v76 = v25;
      v27 = *(v26 + 2);
      v28 = *(v26 + 4);
      v29 = *(v26 + 6);
      v5 = *(v26 + 8);
      v6 = *(v26 + 16);
      v30 = *v26;
      sub_10001414C(v5, v6);
      sub_1000158CC(1uLL, a1, v30);
      sub_1000155F4(2uLL, a1, v27);
      sub_1000155F4(2uLL, a1, v28);
      sub_1000155F4(2uLL, a1, v29);
      v31 = v6 >> 62;
      if ((v6 >> 62) <= 1)
      {
        break;
      }

      if (v31 == 2)
      {
        v34 = *(v5 + 16);
        v33 = *(v5 + 24);
        v32 = v33 - v34;
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_120;
        }

LABEL_32:
        sub_10001414C(v5, v6);
        goto LABEL_34;
      }

      v32 = 0;
LABEL_34:
      sub_100038F60(v32, 0xFFFF00000001uLL);
      v35 = v32 + 2;
      if (__OFADD__(v32, 2))
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v36 = *a1;
      v37 = a1[1];
      v38 = v37 >> 62;
      if ((v37 >> 62) > 1)
      {
        if (v38 == 2)
        {
          v41 = v36 + 16;
          v39 = *(v36 + 16);
          v40 = *(v41 + 8);
          v17 = __OFSUB__(v40, v39);
          v36 = v40 - v39;
          if (v17)
          {
            goto LABEL_121;
          }
        }

        else
        {
          v36 = 0;
        }
      }

      else if (v38)
      {
        v17 = __OFSUB__(HIDWORD(v36), v36);
        LODWORD(v36) = HIDWORD(v36) - v36;
        if (v17)
        {
          goto LABEL_122;
        }

        v36 = v36;
      }

      else
      {
        v36 = BYTE6(v37);
      }

      if (__OFADD__(v36, v35))
      {
        goto LABEL_111;
      }

      sub_1000502D0(v36 + v35);
      if (v31 > 1)
      {
        if (v31 != 2)
        {
          LODWORD(v42) = 0;
          goto LABEL_59;
        }

        v44 = *(v5 + 16);
        v43 = *(v5 + 24);
        v42 = v43 - v44;
        if (__OFSUB__(v43, v44))
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (!v31)
        {
          LODWORD(v42) = BYTE6(v6);
          goto LABEL_59;
        }

        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_123;
        }

        v42 = HIDWORD(v5) - v5;
      }

      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      if (HIDWORD(v42))
      {
        goto LABEL_113;
      }

LABEL_59:
      sub_100015344(2uLL, a1, v42);
      v79 = &type metadata for Data;
      v80 = &protocol witness table for Data;
      v77 = v5;
      v78 = v6;
      v45 = sub_1000140EC(&v77, &type metadata for Data);
      v46 = *v45;
      v47 = v45[1] >> 62;
      if (v47 <= 1)
      {
        if (v47)
        {
          v50 = v46;
          if (v46 >> 32 < v46)
          {
            goto LABEL_125;
          }

          sub_10001414C(v5, v6);
          if (sub_100050220() && __OFSUB__(v50, sub_100050240()))
          {
            goto LABEL_130;
          }

          v11 = v75;
          sub_100050230();
        }

        else
        {
LABEL_71:
          sub_10001414C(v5, v6);
        }

        sub_1000502E0();
        goto LABEL_73;
      }

      if (v47 != 2)
      {
        goto LABEL_71;
      }

      v48 = *(v46 + 16);
      v49 = *(v46 + 24);
      sub_10001414C(v5, v6);
      if (sub_100050220() && __OFSUB__(v48, sub_100050240()))
      {
        goto LABEL_129;
      }

      if (__OFSUB__(v49, v48))
      {
        goto LABEL_126;
      }

      sub_100050230();
      sub_1000502E0();
      v11 = v75;
LABEL_73:
      v26 += 24;
      sub_100013E74(&v77);
      sub_100013E20(v5, v6);
      sub_100013E20(v5, v6);
      --v25;
      if (v76 == 1)
      {
        goto LABEL_74;
      }
    }

    if (!v31)
    {
      v32 = BYTE6(v6);
      goto LABEL_34;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      goto LABEL_119;
    }

    v32 = HIDWORD(v5) - v5;
    goto LABEL_32;
  }

LABEL_74:

  v51 = *a1;
  v52 = a1[1];
  v53 = v52 >> 62;
  if ((v52 >> 62) > 1)
  {
    v54 = v73;
    v55 = v74;
    if (v53 == 2)
    {
      v58 = *(v51 + 16);
      v57 = *(v51 + 24);
      v17 = __OFSUB__(v57, v58);
      v56 = v57 - v58;
      if (v17)
      {
        __break(1u);
        sub_100013E20(v5, v6);
        sub_100013E20(v5, v6);
      }
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v54 = v73;
    v55 = v74;
    if (v53)
    {
      LODWORD(v56) = HIDWORD(v51) - v51;
      if (__OFSUB__(HIDWORD(v51), v51))
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v56 = v56;
    }

    else
    {
      v56 = BYTE6(v52);
    }
  }

  v17 = __OFSUB__(v56, v11);
  v59 = v56 - v11;
  if (v17)
  {
    goto LABEL_127;
  }

  v60 = v59 - v54;
  if (__OFSUB__(v59, v54))
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v53 <= 1)
  {
    if (!v53)
    {
      v61 = BYTE6(v52);
      goto LABEL_95;
    }

    goto LABEL_93;
  }

  if (v53 != 2)
  {
    if (v11 <= 0)
    {
      v51 = 0;
      goto LABEL_106;
    }

LABEL_109:
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_1000508F0(19);
    v67 = sub_100050950();
    v69 = v68;

    v77 = v67;
    v78 = v69;
    v81._countAndFlagsBits = 0x616574736E69202CLL;
    v81._object = 0xEE0020746F672064;
    sub_100050770(v81);
    v82._countAndFlagsBits = sub_100050950();
    sub_100050770(v82);

    v83._countAndFlagsBits = 46;
    v83._object = 0xE100000000000000;
    sub_100050770(v83);
    v84._countAndFlagsBits = v77;
    v70 = v78;
    v77 = 0xD000000000000027;
    v78 = 0x800000010005BDB0;
    v84._object = v70;
    sub_100050770(v84);

    v71 = v77;
    v72 = v78;
    sub_10001C55C();
    swift_allocError();
    *v12 = v71;
    *(v12 + 8) = v72;
    v13 = 5;
    goto LABEL_6;
  }

  v63 = *(v51 + 16);
  v62 = *(v51 + 24);
  v17 = __OFSUB__(v62, v63);
  v61 = v62 - v63;
  if (v17)
  {
    __break(1u);
LABEL_93:
    LODWORD(v61) = HIDWORD(v51) - v51;
    if (__OFSUB__(HIDWORD(v51), v51))
    {
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
    }

    v61 = v61;
  }

LABEL_95:
  if (v61 < v11)
  {
    goto LABEL_109;
  }

  if (v53 == 2)
  {
    v65 = v51 + 16;
    v64 = *(v51 + 16);
    v52 = *(v65 + 8);
    v17 = __OFSUB__(v52, v64);
    v51 = v52 - v64;
    if (!v17)
    {
      goto LABEL_106;
    }

    __break(1u);
LABEL_105:
    v51 = BYTE6(v52);
    goto LABEL_106;
  }

  if (v53 != 1)
  {
    goto LABEL_105;
  }

  v17 = __OFSUB__(HIDWORD(v51), v51);
  LODWORD(v51) = HIDWORD(v51) - v51;
  if (v17)
  {
    goto LABEL_134;
  }

  v51 = v51;
LABEL_106:
  v17 = __OFSUB__(v51, v11);
  v66 = v51 - v11;
  if (v17)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v66 < v54 || v60 != v55)
  {
    goto LABEL_109;
  }

  return result;
}

uint64_t sub_100035CD4()
{
  sub_10001C55C();
  swift_allocError();
  *v0 = 0xD000000000000085;
  *(v0 + 8) = 0x800000010005B740;
  *(v0 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_100035D40(uint64_t a1)
{
  v3 = *a1;
  v5 = *v1;
  v4 = v1[1];
  v6 = *(a1 + 8) | (*(a1 + 9) << 8);
  result = sub_10003D000(*a1, v6, *v1, v4);
  if (!v2)
  {
    v9[0] = sub_100036B70(result);
    v9[1] = v8;
    sub_100015AD4(v9, v3, v6, v5, v4);
    return v9[0];
  }

  return result;
}

unint64_t sub_100035DDC(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = v3;
  if ((a3 & 0x10000) != 0)
  {
    a2 = 0;
  }

  v16 = v3[2];
  v17 = v3[3];
  v18 = *(v3 + 8);
  v14 = *v3;
  v15 = v3[1];
  result = sub_100035F40(a1, a2, a3 & 1 | BYTE2(a3) & 1u);
  if (!v4)
  {
    v8 = *(v3 + 10);
    v9 = *(v3 + 11);
    v10 = *(v3 + 12);
    v11 = *(v3 + 13);
    v12 = *(v3 + 14);
    v13 = *(v5 + 15);
    sub_1000155F4(2uLL, a1, *(v5 + 36));
    sub_10001414C(v8, v9);
    sub_100015AD4(a1, 0xFFFF00000001, 1, v8, v9);
    sub_100013E20(v8, v9);
    sub_10001414C(v10, v11);
    sub_100015AD4(a1, 0x2000000000, 1, v10, v11);
    sub_100013E20(v10, v11);
    sub_10001414C(v12, v13);
    sub_100015AD4(a1, 0xFFFF00000000, 1, v12, v13);
    return sub_100013E20(v12, v13);
  }

  return result;
}

unint64_t sub_100035F40(uint64_t *a1, uint64_t a2, char a3)
{
  result = sub_1000155F4(2uLL, a1, *v3);
  if (!v4)
  {
    v9 = v3[1];
    v10 = v3[2];
    sub_10001414C(v9, v10);
    sub_100015AD4(a1, 0x2000000020, 1, v9, v10);
    sub_100013E20(v9, v10);
    v11 = v3[3];
    v12 = v3[4];
    sub_10001414C(v11, v12);
    sub_100015AD4(a1, 0x2000000020, 1, v11, v12);
    sub_100013E20(v11, v12);
    if (a3)
    {
      sub_10001C55C();
      swift_allocError();
      *v13 = 0xD000000000000052;
      *(v13 + 8) = 0x800000010005BDE0;
      *(v13 + 16) = 1;
      return swift_willThrow();
    }

    else
    {
      v14 = v3[5];
      v15 = v3[6];
      sub_10001414C(v14, v15);
      sub_100015AD4(a1, a2 | (a2 << 32), 1, v14, v15);
      sub_100013E20(v14, v15);
      v17 = v3[7];
      v16 = v3[8];
      sub_10001414C(v17, v16);
      sub_100015AD4(a1, a2 & 0xFFFFFFFF00000000 | HIDWORD(a2), 1, v17, v16);
      return sub_100013E20(v17, v16);
    }
  }

  return result;
}

void sub_100036110()
{
  v11 = v0[2];
  v12 = v0[3];
  v13 = *(v0 + 8);
  v9 = *v0;
  v10 = v0[1];
  v5 = *(v0 + 72);
  v6 = *(v0 + 88);
  v7 = *(v0 + 104);
  v8 = *(v0 + 15);
  v2 = PPM_0_2_1.Token.encodedLength(with:)(0, 1);
  if (!v1)
  {
    v3 = v2;
    sub_10003C670();
    if (__OFADD__(v3, v4))
    {
      __break(1u);
    }
  }
}

void sub_100036198(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[3];
  v26 = v1[4];
  v27 = v3;
  v28 = v4;
  v29 = v1[7];
  v6 = v1[1];
  v22 = *v1;
  v23 = v6;
  v7 = v1[3];
  v9 = *v1;
  v8 = v1[1];
  v24 = v1[2];
  v25 = v7;
  v36 = v24;
  v37 = v5;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 10);
  if (*(a1 + 10))
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v38 = *(v1 + 8);
  v34 = v9;
  v35 = v8;
  v14 = PPM_0_2_1.Token.encodedLength(with:)(v13, (v12 | v11) & 1);
  if (!v2)
  {
    v15 = v14;
    v16 = *(v1 + 88);
    v30 = *(v1 + 72);
    v31 = v16;
    v32 = *(v1 + 104);
    v33 = *(v1 + 15);
    sub_10003C670();
    v18 = __OFADD__(v15, v17);
    v19 = v15 + v17;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      v21[0] = sub_100036B70(v19);
      v21[1] = v20;
      sub_100035DDC(v21, v10, v11 | (v12 << 16));
    }
  }
}

void sub_1000362B8()
{
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_100032BA4();
}

uint64_t sub_100036304()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return PPM_0_2_1.Token.encodedLength(with:)(0, 1);
}

uint64_t sub_100036350(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v1[3];
  v12 = v1[2];
  v13 = v5;
  v14 = *(v1 + 8);
  v6 = v1[1];
  v10 = *v1;
  v11 = v6;
  result = PPM_0_2_1.Token.encodedLength(with:)(v3, v4);
  if (!v2)
  {
    v9[0] = sub_100036B70(result);
    v9[1] = v8;
    sub_100035F40(v9, v3, v4);
    return v9[0];
  }

  return result;
}

uint64_t sub_1000363E8()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_100032D44();
}

void sub_10003642C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  sub_10003C670();
}

void sub_100036470()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  sub_100037A50();
}

uint64_t sub_1000364BC()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = sub_100050270();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v8 = 0;
  v9 = sub_100050250() | 0x4000000000000000;
  sub_10001508C(8uLL, &v8, v3);
  if (v1)
  {
    return sub_100013E20(v8, v9);
  }

  sub_10001508C(8uLL, &v8, v2);
  return v8;
}

void sub_1000365F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v11 = v6 + 16;
    v6 = *(v6 + 16);
    v10 = *(v11 + 8);
    v9 = v10 - v6;
    if (!__OFSUB__(v10, v6))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7);
    goto LABEL_11;
  }

  v12 = __OFSUB__(HIDWORD(v6), v6);
  v13 = HIDWORD(v6) - v6;
  if (v12)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v9 = v13;
LABEL_11:
  sub_100038F60(v9, a3);
  if (!v4 && __OFADD__(v9, sub_10003915C(a3)))
  {
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_100036768(unsigned int *a1)
{
  v3 = *v1;
  v4 = 0x10000000000;
  if (!*(a1 + 5))
  {
    v4 = 0;
  }

  v5 = v4 | *a1 | (*(a1 + 4) << 32);
  LOBYTE(v8[0]) = 0;
  result = sub_10003F9BC(0xFFFF00000001uLL, v5, v3);
  if (!v2)
  {
    v8[0] = sub_100036B70(result);
    v8[1] = v7;
    v9 = 0;
    sub_100035444(v8, 0xFFFF00000001uLL, v5, v3);
    return v8[0];
  }

  return result;
}

unint64_t sub_10003681C()
{
  v2 = *v0;
  LOBYTE(v5[0]) = 0;
  result = sub_10003F9BC(0xFFFF00000001uLL, 0x10000000000, v2);
  if (!v1)
  {
    v5[0] = sub_100036B70(result);
    v5[1] = v4;
    v6 = 0;
    sub_100035444(v5, 0xFFFF00000001uLL, 0x10000000000, v2);
    return v5[0];
  }

  return result;
}

void sub_1000368B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_100042D8C();
}

void sub_1000368F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_100037404();
}

void sub_1000369CC()
{
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 14);
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_100042ED0();
}

void sub_100036A20()
{
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 14);
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1000377F0();
}

void sub_100036AE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  sub_100042BC8();
}

void sub_100036B2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  sub_10003717C();
}

uint64_t sub_100036B70(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = sub_100050270();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_100050250();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1000502B0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100036C14()
{
  v2 = *(v0 + 20);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 28);
  v3 = *(v0 + 24);
  v11 = v4;
  result = PPM_0_2_1.QueryConfig.QueryTypeSelector.encodedLength(with:)(v5, v3, v4);
  if (!v1)
  {
    v8 = __OFADD__(result, 15);
    result += 15;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      v10[0] = sub_100036B70(result);
      v10[1] = v9;
      sub_10001508C(8uLL, v10, *v0);
      sub_1000155F4(2uLL, v10, *(v0 + 8));
      sub_100015344(4uLL, v10, *(v0 + 12));
      sub_100015344(1uLL, v10, v2);
      v11 = v3;
      sub_100033A64(v10, v5, (v6 << 32) | v3, v4);
      return v10[0];
    }
  }

  return result;
}

uint64_t sub_100036D2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v6 = result;
  v7 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v8 = HIDWORD(a2) - a2;
  }

LABEL_11:
  result = sub_100038F60(v8, 0xFFFF00000001uLL);
  if (!v3)
  {
    result = sub_10003915C(0xFFFF00000001);
    v11 = v8 + result;
    if (__OFADD__(v8, result))
    {
      __break(1u);
    }

    else
    {
      result = v11 + 7;
      if (!__OFADD__(v11, 7))
      {
        v13[0] = sub_100036B70(result);
        v13[1] = v12;
        sub_1000158CC(1uLL, v13, v6);
        sub_1000155F4(2uLL, v13, v6 >> 16);
        sub_1000155F4(2uLL, v13, SHIDWORD(v6));
        sub_1000155F4(2uLL, v13, HIWORD(v6));
        sub_10001414C(a2, a3);
        sub_100015AD4(v13, 0xFFFF00000001, 1, a2, a3);
        sub_100013E20(a2, a3);
        return v13[0];
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_100036EB0()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *v0;
  v9 = *(v0 + 12);
  v4 = *(v0 + 10);
  v15 = v5;
  v14 = v7;
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(v8, v3 | (v4 << 16), v5, v6, v7);
  if (!v1)
  {
    if (__OFADD__(result++, 1))
    {
      __break(1u);
    }

    else
    {
      v13[0] = sub_100036B70(result);
      v13[1] = v12;
      sub_100015344(1uLL, v13, v2);
      v15 = v4;
      v14 = v5;
      sub_100015CBC(v13, v8, v3 | (v4 << 16) | (v9 << 32), v5, v6, v7);
      return v13[0];
    }
  }

  return result;
}

uint64_t sub_100036FC8(uint64_t *a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  sub_10001414C(*v1, v5);
  sub_100015AD4(a1, 0xFF00000001, 1, v4, v5);
  result = sub_100013E20(v4, v5);
  if (!v2)
  {
    v15 = *(v1 + 16);
    v7 = v15;
    sub_100038080(&v15, v13);
    sub_100015AD4(a1, 0xFFFF00000001, 1, v7, *(&v7 + 1));
    sub_1000380DC(&v15);
    v14 = *(v1 + 32);
    v8 = v14;
    sub_100038080(&v14, v13);
    sub_100015AD4(a1, 0xFFFF00000001, 1, v8, *(&v8 + 1));
    sub_1000380DC(&v14);
    v9 = *(v1 + 48);
    v10 = *(v1 + 56);
    sub_10001414C(v9, v10);
    sub_100015AD4(a1, 0xFFFF00000001, 1, v9, v10);
    sub_100013E20(v9, v10);
    sub_10001508C(8uLL, a1, *(v1 + 64));
    v12 = *(v1 + 72);
    v11 = *(v1 + 80);
    sub_10001414C(v12, v11);
    sub_100015AD4(a1, 0xFFFF00000001, 1, v12, v11);
    return sub_100013E20(v12, v11);
  }

  return result;
}

void sub_10003717C()
{
  sub_100042BC8();
  if (!v1)
  {
    v9[0] = sub_100036B70(v2);
    v9[1] = v3;
    v13 = *v0;
    v4 = v13;
    sub_100037F20(&v13, v8);
    sub_100015AD4(v9, 0x2000000020, 1, v4, *(&v4 + 1));
    sub_100037F7C(&v13);
    v10 = v0[1];
    v11 = *(v0 + 4);
    v12 = v10;
    v5 = v10;
    sub_100037FD0(&v12, v8);
    sub_100015AD4(v9, 0x1000000010, 1, v5, *(&v5 + 1));
    sub_10003802C(&v10);
    sub_10001508C(8uLL, v9, v11);
    v6 = *(v0 + 5);
    v7 = *(v0 + 6);
    sub_10001414C(v6, v7);
    sub_100015AD4(v9, 0xFFFFFFFF00000000, 1, v6, v7);
    sub_100013E20(v6, v7);
  }
}

uint64_t sub_1000372C8()
{
  v2 = *(v0 + 12);
  v3 = *(v0 + 16);
  v4 = *(v0 + 18);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 8);
  v9 = *(v0 + 20);
  LOBYTE(v13[0]) = v4 & 1;
  v15 = v5 & 1;
  v14 = v7 & 1;
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(v8, v3 | ((v4 & 1) << 16), v5 & 1, v6, v7 & 1);
  if (!v1)
  {
    v11 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      result += 5;
      if (!__OFADD__(v11, 4))
      {
        v13[0] = sub_100036B70(result);
        v13[1] = v12;
        sub_100015344(4uLL, v13, *v0);
        sub_100015344(1uLL, v13, v2);
        v15 = v4 & 1;
        v14 = v5 & 1;
        sub_100015CBC(v13, v8, v3 | ((v4 & 1) << 16) | (v9 << 32), v5 & 1, v6, v7 & 1);
        return v13[0];
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100037404()
{
  sub_100042D8C();
  if (!v1)
  {
    v8[0] = sub_100036B70(v2);
    v8[1] = v3;
    sub_1000158CC(1uLL, v8, *v0);
    v4 = *(v0 + 8);
    v5 = *(v0 + 16);
    sub_10001414C(v4, v5);
    sub_100015AD4(v8, 0xFFFF00000001, 1, v4, v5);
    sub_100013E20(v4, v5);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    sub_10001414C(v6, v7);
    sub_100015AD4(v8, 0xFFFFFFFF00000001, 1, v6, v7);
    sub_100013E20(v6, v7);
  }
}

uint64_t sub_100037500(uint64_t result, unint64_t a2, unint64_t a3)
{
  v6 = result;
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v8 = HIDWORD(result) - result;
  }

LABEL_11:
  result = sub_100038F60(v8, 0x1000000010uLL);
  if (!v3)
  {
    result = sub_10003915C(0x1000000010);
    v11 = v8 + result;
    if (__OFADD__(v8, result))
    {
      __break(1u);
    }

    else
    {
      result = v11 + 8;
      if (!__OFADD__(v11, 8))
      {
        v13[0] = sub_100036B70(result);
        v13[1] = v12;
        sub_10001414C(v6, a2);
        sub_100015AD4(v13, 0x1000000010, 1, v6, a2);
        sub_100013E20(v6, a2);
        sub_10001508C(8uLL, v13, a3);
        return v13[0];
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_100037634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10002BC58(a1, a2, a3, a4);
  if (!v5)
  {
    v22[0] = sub_100036B70(result);
    v22[1] = v7;
    v8 = *v4;
    v9 = *(v4 + 8);
    v10 = *(v4 + 10);
    v11 = *(v4 + 12);
    v12 = *(v4 + 16);
    v21 = *(v4 + 24);
    v13 = *(v4 + 32);
    sub_100015344(1uLL, v22, *(v4 + 4));
    v24 = v10 & 1;
    v23 = v12 & 1;
    sub_100015CBC(v22, v8, v9 | (v11 << 32) | ((v10 & 1) << 16), v12 & 1, v21, v13 & 1);
    LOBYTE(v11) = *(v4 + 40);
    v14 = *(v4 + 44);
    v15 = *(v4 + 48);
    v16 = *(v4 + 50);
    v17 = *(v4 + 52);
    v18 = *(v4 + 56);
    v19 = *(v4 + 64);
    v20 = *(v4 + 72);
    sub_100015344(1uLL, v22, v14);
    v24 = v16 & 1;
    v23 = v18 & 1;
    sub_100015CBC(v22, v11, v15 | (v17 << 32) | ((v16 & 1) << 16), v18 & 1, v19, v20 & 1);
    return v22[0];
  }

  return result;
}

uint64_t sub_100037784(uint64_t a1)
{
  v2 = HIDWORD(a1);
  v4[0] = 0;
  sub_100015344(4uLL, v4, a1);
  if (v1)
  {
    return sub_100013E20(v4[0], v4[1]);
  }

  sub_100015344(4uLL, v4, v2);
  return v4[0];
}

void sub_1000377F0()
{
  sub_100042ED0();
  if (!v1)
  {
    v13[0] = sub_100036B70(v2);
    v13[1] = v3;
    v4 = *(v0 + 16);
    sub_100015AD4(v13, 0x1000000010, 1, *v0, *(v0 + 8));
    sub_10001508C(8uLL, v13, v4);
    sub_100015AD4(v13, 0xFFFFFFFF00000000, 1, *(v0 + 24), *(v0 + 32));
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    sub_1000158CC(1uLL, v13, *(v0 + 40));
    sub_100015AD4(v13, 0xFFFF00000001, 1, v5, v6);
    sub_100015AD4(v13, 0xFFFFFFFF00000001, 1, v7, v8);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    sub_1000158CC(1uLL, v13, *(v0 + 80));
    sub_100015AD4(v13, 0xFFFF00000001, 1, v9, v10);
    sub_100015AD4(v13, 0xFFFFFFFF00000001, 1, v11, v12);
  }
}

unint64_t sub_100037944(unint64_t result, unint64_t a2, unint64_t a3)
{
  v6 = result;
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v8 = HIDWORD(result) - result;
  }

LABEL_11:
  result = sub_100038F60(v8, a3);
  if (!v3)
  {
    v11 = sub_10003915C(a3);
    v12 = __OFADD__(v8, v11);
    result = v8 + v11;
    if (!v12)
    {
      v14[0] = sub_100036B70(result);
      v14[1] = v13;
      sub_10001414C(v6, a2);
      sub_100015AD4(v14, a3, 1, v6, a2);
      sub_100013E20(v6, a2);
      return v14[0];
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

void sub_100037A50()
{
  sub_10003C670();
  if (!v1)
  {
    v10[0] = sub_100036B70(v2);
    v10[1] = v3;
    sub_1000155F4(2uLL, v10, *v0);
    v4 = v0[1];
    v5 = v0[2];
    sub_10001414C(v4, v5);
    sub_100015AD4(v10, 0xFFFF00000001, 1, v4, v5);
    sub_100013E20(v4, v5);
    v6 = v0[3];
    v7 = v0[4];
    sub_10001414C(v6, v7);
    sub_100015AD4(v10, 0x2000000000, 1, v6, v7);
    sub_100013E20(v6, v7);
    v8 = v0[5];
    v9 = v0[6];
    sub_10001414C(v8, v9);
    sub_100015AD4(v10, 0xFFFF00000000, 1, v8, v9);
    sub_100013E20(v8, v9);
  }
}

void sub_100037B8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a1;
  sub_100042B28(a1, a2, a3);
  if (!v3)
  {
    v9[0] = sub_100036B70(v7);
    v9[1] = v8;
    sub_100015344(2uLL, v9, v6);
    sub_10001414C(a2, a3);
    sub_100015AD4(v9, 0xFFFF00000000, 1, a2, a3);
    sub_100013E20(a2, a3);
  }
}

uint64_t sub_100037C4C(uint64_t a1, unint64_t a2)
{
  v4[0] = 0;
  sub_100015344(a2, v4, HIDWORD(a1));
  result = v4[0];
  if (v2)
  {
    return sub_100013E20(v4[0], v4[1]);
  }

  return result;
}

uint64_t sub_100037C9C(char a1)
{
  v3[0] = 0;
  sub_1000158CC(1uLL, v3, a1);
  result = v3[0];
  if (v1)
  {
    return sub_100013E20(v3[0], v3[1]);
  }

  return result;
}

uint64_t sub_100037CE8(int a1)
{
  v3[0] = 0;
  sub_1000155F4(2uLL, v3, a1);
  result = v3[0];
  if (v1)
  {
    return sub_100013E20(v3[0], v3[1]);
  }

  return result;
}

uint64_t sub_100037D34(unsigned int a1, unint64_t a2)
{
  v4[0] = 0;
  sub_100015344(a2, v4, a1);
  result = v4[0];
  if (v2)
  {
    return sub_100013E20(v4[0], v4[1]);
  }

  return result;
}

uint64_t sub_100037D84(unint64_t a1)
{
  v3[0] = 0;
  sub_10001508C(8uLL, v3, a1);
  result = v3[0];
  if (v1)
  {
    return sub_100013E20(v3[0], v3[1]);
  }

  return result;
}

unint64_t sub_100037DD0(uint64_t a1)
{
  result = sub_100037DF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100037DF8()
{
  result = qword_10007D678;
  if (!qword_10007D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D678);
  }

  return result;
}

__n128 sub_100037E58(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100037E6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100037EB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

id _DPDediscoAlgorithmParametersOtherParams.__allocating_init(cohortSize:sigma:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithCohortSize:a1 sigma:0 piRapporPrime:a2 piRapporAlpha0:0.0 piRapporAlpha1:0.0];
}

id _DPDediscoAlgorithmParametersOtherParams.__allocating_init(piRapporPrime:piRapporAlpha0:piRapporAlpha1:)(uint64_t a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);

  return [v7 initWithCohortSize:0 sigma:a1 piRapporPrime:0.0 piRapporAlpha0:a2 piRapporAlpha1:a3];
}

id _DPDediscoAlgorithmParametersOtherParams.__allocating_init(cohortSize:sigma:piRapporPrime:piRapporAlpha0:piRapporAlpha1:)(uint64_t a1, int a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_cohortSize] = a1;
  *&v11[OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_sigma] = a3;
  *&v11[OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporPrime] = a2;
  *&v11[OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporAlpha0] = a4;
  *&v11[OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporAlpha1] = a5;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, "init");
}

id _DPDediscoAlgorithmParametersOtherParams.init(cohortSize:sigma:piRapporPrime:piRapporAlpha0:piRapporAlpha1:)(uint64_t a1, int a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_cohortSize] = a1;
  *&v5[OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_sigma] = a3;
  *&v5[OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporPrime] = a2;
  *&v5[OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporAlpha0] = a4;
  *&v5[OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporAlpha1] = a5;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for _DPDediscoAlgorithmParametersOtherParams();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t _DPDediscoAlgorithmParametersOtherParams.serialize()()
{
  v1 = type metadata accessor for DediscoAlgorithmParametersOtherParams();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_1000385AC();
  sub_1000504E0();
  v5 = sub_1000504B0();
  sub_100038604(v4);
  return v5;
}

unint64_t sub_1000385AC()
{
  result = qword_10007C7D8;
  if (!qword_10007C7D8)
  {
    type metadata accessor for DediscoAlgorithmParametersOtherParams();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C7D8);
  }

  return result;
}

uint64_t sub_100038604(uint64_t a1)
{
  v2 = type metadata accessor for DediscoAlgorithmParametersOtherParams();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id _DPDediscoAlgorithmParametersOtherParams.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _DPDediscoAlgorithmParametersOtherParams();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100038864(uint64_t a1)
{
  v2 = *(v1 + 16);
  *a1 = *(v2 + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_cohortSize);
  *(a1 + 8) = *(v2 + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_sigma);
  *(a1 + 16) = *(v2 + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporPrime);
  *(a1 + 24) = *(v2 + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporAlpha0);
  result = *(v2 + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporAlpha1);
  *(a1 + 32) = result;
  return result;
}

unint64_t RangeReplaceableCollection<>.encodedLength(with:)(unint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x100) != 0)
  {
    goto LABEL_6;
  }

  v6 = *(a4 + 8);
  v7 = sub_1000507C0();
  result = sub_100038F60(v7, a1);
  if (!v4)
  {
    v9 = sub_10003915C(a1);
    v10 = __OFADD__(v7, v9);
    result = v7 + v9;
    if (v10)
    {
      __break(1u);
LABEL_6:
      sub_10001C55C();
      swift_allocError();
      *v11 = 0xD000000000000085;
      *(v11 + 8) = 0x800000010005B740;
      *(v11 + 16) = 1;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t RangeReplaceableCollection<>.encode<A>(into:with:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a4 - 8) + 64);
  v9 = __chkstk_darwin(a1);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v10 & 0x100) != 0)
  {
    sub_10001C55C();
    swift_allocError();
    *v31 = 0xD000000000000085;
    *(v31 + 8) = 0x800000010005B740;
    *(v31 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    v35 = v14;
    v36 = v11;
    v17 = v9;
    v18 = v13;
    v19 = v12;
    result = RangeReplaceableCollection<>.encodedLength(with:)(a2, v10, a4, v12);
    if (!v5)
    {
      v21 = result;
      v33 = v4;
      v34 = v19;
      v22 = *(v18 + 8);
      v23 = sub_1000507C0();
      v24 = __OFADD__(v23, v21);
      result = v23 + v21;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        sub_100050800();
        v25 = sub_10003915C(a2);
        v26 = v18;
        if (v25 < 1)
        {
LABEL_10:
          (*(v35 + 16))(v16, v33, a4);
          v32 = *(*(v34 + 8) + 8);
          return sub_100050810();
        }

        v27 = v25;
        v28 = *(v34 + 8);
        result = sub_1000507C0();
        if ((result & 0x8000000000000000) == 0)
        {
          v29 = v36;
          if (!HIDWORD(result))
          {
            v37 = result;
            v30 = sub_10001F16C();
            sub_10001D5C0(v27, v17, &type metadata for UInt32, v29, v30, v26);
            goto LABEL_10;
          }

          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }
  }

  return result;
}

uint64_t RangeReplaceableCollection<>.init<A>(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(a1);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v21 = &v36 - v20;
  if ((v22 & 0x100) != 0)
  {
    sub_10001C55C();
    swift_allocError();
    *v34 = 0xD000000000000085;
    *(v34 + 8) = 0x800000010005B740;
    *(v34 + 16) = 1;
  }

  else
  {
    v38 = v19;
    v39 = v7;
    v40 = v17;
    v41 = v18;
    v23 = sub_10003915C(a2);
    if (v23)
    {
      v24 = v23;
      v25 = sub_10001F16C();
      result = CommonUIntTLSNumberType.init<A>(from:with:encodedLength:)(v24, &type metadata for UInt32, a5, v25, a7, &v42);
      if (v8)
      {
        return result;
      }

      LODWORD(a2) = v42;
    }

    v37 = *(*(a7 + 8) + 8);
    if (sub_1000507C0() >= a2)
    {
      RandomAccessCollection<>.popFirst(_:)(a2, a5, a7);
      (*(v12 + 16))(v16, v21, a5);
      v35 = *(v37 + 8);
      sub_100050830();
      return (*(v12 + 8))(v21, a5);
    }

    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1000508F0(32);

    v42 = 0xD000000000000012;
    v43 = 0x800000010005BF20;
    LODWORD(v44) = a2;
    v45._countAndFlagsBits = sub_100050950();
    sub_100050770(v45);

    v46._countAndFlagsBits = 0x7720736574796220;
    v46._object = 0xEC000000206E6568;
    sub_100050770(v46);
    v28 = v42;
    v27 = v43;
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1000508F0(45);

    v42 = 0xD000000000000024;
    v43 = 0x800000010005BF40;
    v44 = sub_1000507C0();
    v47._countAndFlagsBits = sub_100050950();
    sub_100050770(v47);

    v48._countAndFlagsBits = 0x2E736574796220;
    v48._object = 0xE700000000000000;
    sub_100050770(v48);
    v30 = v42;
    v29 = v43;
    v42 = v28;
    v43 = v27;

    v49._countAndFlagsBits = v30;
    v49._object = v29;
    sub_100050770(v49);

    v31 = v42;
    v32 = v43;
    sub_10001C55C();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = v32;
    *(v33 + 16) = 0;
  }

  return swift_willThrow();
}

unint64_t sub_100038F60(unint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
    __break(1u);
    return result;
  }

  if (result < a2 || v3 < result)
  {
LABEL_5:
    HIDWORD(v5._object) = -335544320;
    sub_1000508F0(54);
    v8._object = 0x800000010005C040;
    v8._countAndFlagsBits = 0xD000000000000032;
    sub_100050770(v8);
    v7 = v2;
    v6 = v3;
    sub_100050900();
    v9._countAndFlagsBits = 3026478;
    v9._object = 0xE300000000000000;
    sub_100050770(v9);
    sub_100050900();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    sub_100050770(v10);

    v11._countAndFlagsBits = 8236;
    v11._object = 0xE200000000000000;
    sub_100050770(v11);
    strcpy(&v5, "instead got ");
    v12._countAndFlagsBits = sub_100050950();
    sub_100050770(v12);

    v13._countAndFlagsBits = 46;
    v13._object = 0xE100000000000000;
    sub_100050770(v13);

    sub_100050770(v5);

    sub_10001C55C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0xE000000000000000;
    *(v4 + 16) = 5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10003915C(uint64_t result)
{
  v1 = (HIDWORD(result) - result);
  if (HIDWORD(result) < result)
  {
    v1 = -(result - HIDWORD(result));
  }

  if (!v1)
  {
    return 0;
  }

  v2 = ceil(vcvtd_n_f64_u32(32 - __clz(HIDWORD(result)), 3uLL));
  if (v2 == INFINITY)
  {
    __break(1u);
  }

  else if (v2 > -9.22337204e18)
  {
    if (v2 < 9.22337204e18)
    {
      return v2;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection<>.encodedLength(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v6 = *(*(a3 + 8) + 8);
  v37 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v8 = *(v36 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v35 = &v33 - v9;
  sub_10001C614(&qword_10007D580, &qword_100056E80);
  v34 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v10 = sub_100050850();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_100050850();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = (&v33 - v16);
  v18 = *(v10 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  v21 = &v33 - v20;
  (*(v13 + 16))(v17, v39, v12);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
  {
    (*(v13 + 8))(v17, v12);
    sub_10001C55C();
    swift_allocError();
    *v22 = 0xD000000000000085;
    *(v22 + 8) = 0x800000010005B740;
    *(v22 + 16) = 1;
    return swift_willThrow();
  }

  v39 = *v17;
  (*(v18 + 32))(v21, v17 + *(TupleTypeMetadata2 + 48), v10);
  if (sub_1000507C0())
  {
    v24 = sub_1000507C0();
    v41 = 0;
    v25 = sub_1000507F0();
    v26 = v35;
    v27 = v36;
    (*(v36 + 16))(v35);
    v25(v40, 0);
    v28 = v38;
    v29 = (*(v34 + 24))(v21, AssociatedTypeWitness);
    if (v28)
    {
      (*(v27 + 8))(v26, AssociatedTypeWitness);
      return (*(v18 + 8))(v21, v10);
    }

    v31 = v29;
    result = (*(v27 + 8))(v26, AssociatedTypeWitness);
    v30 = v24 * v31;
    if ((v24 * v31) >> 64 != (v24 * v31) >> 63)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = sub_10003915C(v39);
  (*(v18 + 8))(v21, v10);
  result = v30 + v32;
  if (__OFADD__(v30, v32))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t RangeReplaceableCollection<>.encodedLength(with:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a1;
  v7 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v9 = *(v55 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v59 = &v47 - v10;
  v11 = sub_100050850();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v60 = &v47 - v14;
  v53 = *(a2 - 8);
  v15 = *(v53 + 64);
  __chkstk_darwin(v13);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v7;
  AssociatedConformanceWitness = a2;
  v63 = swift_getAssociatedTypeWitness();
  v51 = *(v63 - 8);
  v17 = *(v51 + 64);
  __chkstk_darwin(v63);
  v62 = &v47 - v18;
  sub_10001C614(&qword_10007D580, &qword_100056E80);
  v61 = a4;
  swift_getAssociatedTypeWitness();
  v19 = sub_100050850();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = sub_100050850();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = (&v47 - v25);
  v27 = *(v19 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  v30 = &v47 - v29;
  (*(v22 + 16))(v26, v58, v21);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v26, 1, TupleTypeMetadata2) == 1)
  {
    (*(v22 + 8))(v26, v21);
    sub_10001C55C();
    swift_allocError();
    *v31 = 0xD000000000000085;
    *(v31 + 8) = 0x800000010005B740;
    *(v31 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    v48 = *v26;
    v49 = v27;
    v47 = v26[1];
    v33 = *(v27 + 32);
    v34 = v26 + *(TupleTypeMetadata2 + 48);
    v58 = v30;
    v50 = v19;
    v33(v30, v34, v19);
    (*(v53 + 16))(v52, v54, AssociatedConformanceWitness);
    sub_100050780();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = 0;
    v36 = (v55 + 48);
    v37 = (v55 + 32);
    v38 = (v55 + 8);
    while (1)
    {
      v39 = v60;
      sub_100050860();
      if ((*v36)(v39, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      v40 = v59;
      (*v37)(v59, v39, AssociatedTypeWitness);
      v41 = (*(v61 + 24))(v58, AssociatedTypeWitness);
      if (v4)
      {
        (*v38)(v40, AssociatedTypeWitness);
        (*(v51 + 8))(v62, v63);
        return (*(v49 + 8))(v58, v50);
      }

      v42 = v41;
      (*v38)(v40, AssociatedTypeWitness);
      v43 = __OFADD__(v35, v42);
      v35 += v42;
      if (v43)
      {
        __break(1u);
        break;
      }
    }

    (*(v51 + 8))(v62, v63);
    v44 = v48 | (v47 << 32);
    sub_100038F60(v35, v44);
    v45 = (v49 + 8);
    if (v4)
    {
      return (*v45)(v58, v50);
    }

    else
    {
      v46 = sub_10003915C(v44);
      (*v45)(v58, v50);
      result = v35 + v46;
      if (__OFADD__(v35, v46))
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t RangeReplaceableCollection<>.encode<A>(into:with:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t), uint64_t a6, uint64_t a7)
{
  v88 = a6;
  v89 = a1;
  v90 = a4;
  v84 = a2;
  v81 = a5;
  v9 = *(*(a5 + 1) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  v11 = *(v79 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v78 = &v66 - v12;
  v13 = sub_100050850();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v77 = &v66 - v16;
  v75 = *(a3 - 8);
  v17 = *(v75 + 64);
  __chkstk_darwin(v15);
  v74 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v9;
  v86 = swift_getAssociatedTypeWitness();
  v80 = *(v86 - 8);
  v19 = *(v80 + 64);
  __chkstk_darwin(v86);
  v85 = &v66 - v20;
  sub_10001C614(&qword_10007D580, &qword_100056E80);
  v87 = a7;
  v73 = AssociatedTypeWitness;
  swift_getAssociatedTypeWitness();
  v21 = sub_100050850();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = sub_100050850();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = (&v66 - v27);
  v29 = *(v21 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  v32 = &v66 - v31;
  v33 = v84;
  (*(v24 + 16))(v28);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v28, 1, TupleTypeMetadata2) == 1)
  {
    (*(v24 + 8))(v28, v23);
    sub_10001C55C();
    swift_allocError();
    *v34 = 0xD000000000000085;
    *(v34 + 8) = 0x800000010005B740;
    *(v34 + 16) = 1;
    return swift_willThrow();
  }

  v72 = *v28;
  (*(v29 + 32))(v32, v28 + *(TupleTypeMetadata2 + 48), v21);
  v36 = *(v88 + 8);
  v37 = sub_1000507C0();
  v38 = v82;
  v39 = RangeReplaceableCollection<>.encodedLength(with:)(v33, a3, v81, v87);
  if (v38)
  {
    return (*(v29 + 8))(v32, v21);
  }

  v40 = v72;
  v71 = v36;
  v84 = v32;
  v41 = v39;
  v70 = v37;
  v42 = __OFADD__(v37, v39);
  result = v37 + v39;
  if (v42)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_100050800();
  result = sub_10003915C(v40);
  v43 = v41 - result;
  if (__OFSUB__(v41, result))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v44 = result;
  v45 = v83;
  if (result >= 1)
  {
    if ((v43 & 0x8000000000000000) == 0)
    {
      v46 = v88;
      if (!HIDWORD(v43))
      {
        LODWORD(v91) = v41 - result;
        v47 = sub_10001F16C();
        sub_10001D5C0(v44, v89, &type metadata for UInt32, v90, v47, v46);
        v72 = v44;
        v67 = v43;
        v69 = v21;
        v45 = v83;
        goto LABEL_12;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v72 = result;
  v67 = v41 - result;
  v69 = v21;
LABEL_12:
  v68 = v29;
  (*(v75 + 16))(v74, v45, a3);
  sub_100050780();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = v77;
  v83 = AssociatedConformanceWitness;
  sub_100050860();
  v50 = v79;
  v51 = v73;
  v82 = *(v79 + 48);
  v52 = v82(v49, 1, v73);
  v53 = v78;
  if (v52 != 1)
  {
    v81 = *(v50 + 32);
    do
    {
      v81(v53, v49, v51);
      (*(v87 + 40))(v89, v84, v90, v88, v51);
      (*(v50 + 8))(v53, v51);
      sub_100050860();
    }

    while (v82(v49, 1, v51) != 1);
  }

  (*(v80 + 8))(v85, v86);
  result = sub_1000507C0();
  v54 = v70;
  v55 = result - v70;
  if (__OFSUB__(result, v70))
  {
    goto LABEL_27;
  }

  v56 = v55 - v72;
  v57 = v69;
  v58 = v68;
  if (__OFSUB__(v55, v72))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (sub_1000507C0() < v54)
  {
LABEL_18:
    v91 = 0;
    v92 = 0xE000000000000000;
    sub_1000508F0(19);
    v93 = v67;
    v59 = sub_100050950();
    v61 = v60;

    v91 = v59;
    v92 = v61;
    v94._countAndFlagsBits = 0x616574736E69202CLL;
    v94._object = 0xEE0020746F672064;
    sub_100050770(v94);
    v93 = v56;
    v95._countAndFlagsBits = sub_100050950();
    sub_100050770(v95);

    v96._countAndFlagsBits = 46;
    v96._object = 0xE100000000000000;
    sub_100050770(v96);
    v97._countAndFlagsBits = v91;
    v62 = v92;
    v91 = 0xD000000000000027;
    v92 = 0x800000010005BDB0;
    v97._object = v62;
    sub_100050770(v97);

    v63 = v91;
    v64 = v92;
    sub_10001C55C();
    swift_allocError();
    *v65 = v63;
    *(v65 + 8) = v64;
    *(v65 + 16) = 5;
    swift_willThrow();
    return (*(v58 + 8))(v84, v57);
  }

  result = sub_1000507C0();
  if (!__OFSUB__(result, v54))
  {
    if (result - v54 >= v72 && v56 == v67)
    {
      return (*(v58 + 8))(v84, v57);
    }

    goto LABEL_18;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection<>.init<A>(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v96 = a4;
  v94 = a1;
  v95 = a6;
  v79 = a8;
  v81 = a5;
  v11 = *(*(a5 + 8) + 8);
  v80 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v13 = *(v84 + 64);
  v14 = __chkstk_darwin(AssociatedTypeWitness);
  v90 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v74 - v16;
  sub_10001C614(&qword_10007D580, &qword_100056E80);
  v93 = a7;
  v89 = AssociatedTypeWitness;
  swift_getAssociatedTypeWitness();
  v17 = sub_100050850();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_100050850();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v74 - v23);
  v25 = *(v17 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v22);
  v91 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v74 - v29;
  (*(v20 + 16))(v24, a2, v19);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v24, 1, TupleTypeMetadata2) == 1)
  {
    v31 = *(v20 + 8);
    v31(v24, v19);
    sub_10001C55C();
    swift_allocError();
    *v32 = 0xD000000000000085;
    *(v32 + 8) = 0x800000010005B740;
    *(v32 + 16) = 1;
    swift_willThrow();
    return (v31)(a2, v19);
  }

  v82 = v20;
  v78 = v19;
  v74 = v8;
  v34 = *v24;
  (*(v25 + 32))(v30, v24 + *(TupleTypeMetadata2 + 48), v17);
  v35 = sub_10003915C(v34);
  v36 = v17;
  v37 = v30;
  if (v35)
  {
    v38 = v35;
    v39 = sub_10001F16C();
    v40 = v95;
    v41 = v97;
    CommonUIntTLSNumberType.init<A>(from:with:encodedLength:)(v38, &type metadata for UInt32, v96, v39, v95, &v99);
    v42 = v41;
    v43 = v89;
    if (v41)
    {
      (*(v82 + 8))(a2, v78);
      return (*(v25 + 8))(v37, v36);
    }

    v77 = v99;
  }

  else
  {
    v43 = v89;
    v77 = v34;
    v40 = v95;
    v42 = v97;
  }

  v97 = v42;
  v89 = v37;
  v76 = a2;
  v88 = *(*(v40 + 8) + 8);
  v44 = sub_1000507C0();
  v101 = sub_1000506E0();
  v45 = v77;
  v75 = v25;
  v46 = 0;
  if (v77)
  {
    v86 = *(v25 + 16);
    v87 = v25 + 16;
    v83 = (v84 + 16);
    v84 += 8;
    v85 = v93 + 72;
    v47 = v43;
    while (1)
    {
      v48 = v91;
      v86(v91, v89, v36);
      v49 = v97;
      v50 = v47;
      (*(v93 + 72))(v94, v48, v96, v95, v47);
      v97 = v49;
      if (v49)
      {
        (*(v82 + 8))(v76, v78);

        return (*(v75 + 8))(v89, v36);
      }

      v51 = v36;
      result = sub_1000507C0();
      v52 = __OFSUB__(v44, result);
      v53 = v44 - result;
      if (v52)
      {
        break;
      }

      if ((v53 & 0x8000000000000000) != 0)
      {
        v54 = v45 - v46;
LABEL_23:

        LODWORD(v98) = v54;
        v99 = sub_100050950();
        v100 = v65;
        v106._countAndFlagsBits = 0x616574736E69202CLL;
        v106._object = 0xEA00000000002064;
        sub_100050770(v106);
        v107._countAndFlagsBits = v99;
        v66 = v100;
        v99 = 0xD00000000000008ELL;
        v100 = 0x800000010005BFB0;
        v107._object = v66;
        sub_100050770(v107);

        v67 = v99;
        v68 = v100;
        v99 = 544501607;
        v100 = 0xE400000000000000;
        v98 = v53;
        v108._countAndFlagsBits = sub_100050950();
        sub_100050770(v108);

        v109._countAndFlagsBits = 46;
        v109._object = 0xE100000000000000;
        sub_100050770(v109);
        v69 = v99;
        v70 = v100;
        v99 = v67;
        v100 = v68;

        v110._countAndFlagsBits = v69;
        v110._object = v70;
        sub_100050770(v110);

        v72 = v99;
        v71 = v100;
        sub_10001C55C();
        swift_allocError();
        *v73 = v72;
        *(v73 + 8) = v71;
        *(v73 + 16) = 5;
        swift_willThrow();
        (*(v82 + 8))(v76, v78);
        (*v84)(v92, v50);
        return (*(v75 + 8))(v89, v36);
      }

      if (HIDWORD(v53))
      {
        goto LABEL_25;
      }

      v54 = v45 - v46;
      if (v45 - v46 < v53)
      {
        goto LABEL_23;
      }

      v55 = __CFADD__(v46, v53);
      v46 += v53;
      if (v55)
      {
        goto LABEL_26;
      }

      v56 = result;
      v57 = v92;
      (*v83)(v90, v92, v50);
      sub_1000507B0();
      sub_1000507A0();
      (*v84)(v57, v50);
      v44 = v56;
      v36 = v51;
      v47 = v50;
      if (v46 >= v45)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_17:
    if (v46 == v45)
    {
      v99 = v101;
      sub_1000507B0();
      swift_getWitnessTable();
      sub_100050830();
      (*(v82 + 8))(v76, v78);
      return (*(v75 + 8))(v89, v36);
    }

    else
    {

      v99 = 0;
      v100 = 0xE000000000000000;
      sub_1000508F0(19);
      LODWORD(v98) = v45;
      v58 = sub_100050950();
      v60 = v59;

      v99 = v58;
      v100 = v60;
      v102._countAndFlagsBits = 0x616574736E69202CLL;
      v102._object = 0xEE0020746F672064;
      sub_100050770(v102);
      LODWORD(v98) = v46;
      v103._countAndFlagsBits = sub_100050950();
      sub_100050770(v103);

      v104._countAndFlagsBits = 46;
      v104._object = 0xE100000000000000;
      sub_100050770(v104);
      v105._countAndFlagsBits = v99;
      v61 = v100;
      v99 = 0xD000000000000031;
      v100 = 0x800000010005BF70;
      v105._object = v61;
      sub_100050770(v105);

      v62 = v99;
      v63 = v100;
      sub_10001C55C();
      swift_allocError();
      *v64 = v62;
      *(v64 + 8) = v63;
      *(v64 + 16) = 5;
      swift_willThrow();
      (*(v82 + 8))(v76, v78);
      return (*(v75 + 8))(v89, v36);
    }
  }

  return result;
}

uint64_t sub_10003AFE0(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  WitnessTable = swift_getWitnessTable();
  return RangeReplaceableCollection<>.encodedLength(with:)(a1, a2, WitnessTable, v5);
}

uint64_t sub_10003B044(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 - 8);
  WitnessTable = swift_getWitnessTable();
  return RangeReplaceableCollection<>.encode<A>(into:with:)(a1, a2, a5, a3, WitnessTable, a4, v11);
}

uint64_t sub_10003B0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a6 - 8);
  WitnessTable = swift_getWitnessTable();
  return RangeReplaceableCollection<>.init<A>(from:with:)(a1, a2, a5, a3, WitnessTable, a4, v13, a7);
}

uint64_t sub_10003B16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003B1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  sub_100020B6C();
  return RangeReplaceableCollection<>.encode<A>(into:with:)(a1, v7, v8 | (v9 << 8), a5);
}

uint64_t sub_10003B27C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = sub_100020B6C();
  return RangeReplaceableCollection<>.init<A>(from:with:)(a1, v9, v10 | (v11 << 8), a5, a3, v12, a4);
}

unint64_t sub_10003B308(uint64_t a1)
{
  result = sub_10003B330();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003B330()
{
  result = qword_10007D780;
  if (!qword_10007D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D780);
  }

  return result;
}

void PPM_0_2_1.ReportAuth.encodedLength(with:)(uint64_t a1, int a2)
{
  if ((a2 & 0x10000) != 0)
  {
    a1 = 0;
  }

  v4 = PPM_0_2_1.Token.encodedLength(with:)(a1, a2 & 1 | BYTE2(a2) & 1u);
  if (!v3)
  {
    v5 = v4;
    v7 = *(v2 + 72);
    v8 = *(v2 + 88);
    v9 = *(v2 + 104);
    v10 = *(v2 + 120);
    sub_10003C670();
    if (__OFADD__(v5, v6))
    {
      __break(1u);
    }
  }
}

uint64_t PPM_0_2_1.Token.encodedLength(with:)(uint64_t result, char a2)
{
  v5 = result;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v7);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = v6 + 16;
  v6 = *(v6 + 16);
  v10 = *(v11 + 8);
  v9 = v10 - v6;
  if (__OFSUB__(v10, v6))
  {
    __break(1u);
LABEL_8:
    v12 = __OFSUB__(HIDWORD(v6), v6);
    v13 = HIDWORD(v6) - v6;
    if (v12)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v9 = v13;
  }

LABEL_11:
  result = sub_100038F60(v9, 0x2000000020uLL);
  if (v3)
  {
    return result;
  }

  result = sub_10003915C(0x2000000020);
  v14 = v9 + result;
  if (__OFADD__(v9, result))
  {
    __break(1u);
    goto LABEL_56;
  }

  v15 = v14 + 2;
  if (__OFADD__(v14, 2))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v16 = v2[3];
  v17 = v2[4];
  v18 = v17 >> 62;
  if ((v17 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = BYTE6(v17);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v18 != 2)
  {
    v19 = 0;
    goto LABEL_24;
  }

  v21 = v16 + 16;
  v16 = *(v16 + 16);
  v20 = *(v21 + 8);
  v19 = v20 - v16;
  if (__OFSUB__(v20, v16))
  {
    __break(1u);
LABEL_21:
    v12 = __OFSUB__(HIDWORD(v16), v16);
    v22 = HIDWORD(v16) - v16;
    if (v12)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v19 = v22;
  }

LABEL_24:
  sub_100038F60(v19, 0x2000000020uLL);
  result = sub_10003915C(0x2000000020);
  v23 = v19 + result;
  if (__OFADD__(v19, result))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v12 = __OFADD__(v15, v23);
  v24 = v15 + v23;
  if (v12)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (a2)
  {
    sub_10001C55C();
    swift_allocError();
    *v25 = 0xD000000000000052;
    *(v25 + 8) = 0x800000010005BDE0;
    *(v25 + 16) = 1;
    return swift_willThrow();
  }

  v26 = v2[5];
  v27 = v2[6];
  v28 = v27 >> 62;
  if ((v27 >> 62) <= 1)
  {
    if (!v28)
    {
      v29 = BYTE6(v27);
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v28 != 2)
  {
    v29 = 0;
    goto LABEL_38;
  }

  v31 = v26 + 16;
  v26 = *(v26 + 16);
  v30 = *(v31 + 8);
  v29 = v30 - v26;
  if (__OFSUB__(v30, v26))
  {
    __break(1u);
LABEL_35:
    v12 = __OFSUB__(HIDWORD(v26), v26);
    v32 = HIDWORD(v26) - v26;
    if (v12)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v29 = v32;
  }

LABEL_38:
  sub_100038F60(v29, v5 | (v5 << 32));
  result = sub_10003915C(v5 | (v5 << 32));
  v33 = v29 + result;
  if (__OFADD__(v29, result))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v34 = v24 + v33;
  if (__OFADD__(v24, v33))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v35 = v2[7];
  v36 = v2[8];
  v37 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    if (v37 != 2)
    {
      v38 = 0;
      goto LABEL_50;
    }

    v40 = v35 + 16;
    v35 = *(v35 + 16);
    v39 = *(v40 + 8);
    v38 = v39 - v35;
    if (!__OFSUB__(v39, v35))
    {
      goto LABEL_50;
    }

    __break(1u);
  }

  else if (!v37)
  {
    v38 = BYTE6(v36);
    goto LABEL_50;
  }

  v12 = __OFSUB__(HIDWORD(v35), v35);
  v41 = HIDWORD(v35) - v35;
  if (v12)
  {
LABEL_66:
    __break(1u);
    return result;
  }

  v38 = v41;
LABEL_50:
  sub_100038F60(v38, v5 & 0xFFFFFFFF00000000 | HIDWORD(v5));
  result = sub_10003915C(v5 & 0xFFFFFFFF00000000 | HIDWORD(v5));
  v42 = v38 + result;
  if (__OFADD__(v38, result))
  {
    goto LABEL_64;
  }

  result = v34 + v42;
  if (__OFADD__(v34, v42))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  return result;
}

uint64_t PPM_0_2_1.ReportAuth.encode<A>(into:with:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 0x10000) != 0)
  {
    a2 = 0;
  }

  result = PPM_0_2_1.Token.encode<A>(into:with:)(a1, a2, a3 & 1 | BYTE2(a3) & 1u, a4, a5);
  if (!v6)
  {
    v11 = *(v5 + 72);
    v12 = *(v5 + 88);
    v13 = *(v5 + 104);
    v14 = *(v5 + 120);
    return sub_10003C83C(a1, a4, a5);
  }

  return result;
}

uint64_t PPM_0_2_1.Token.encode<A>(into:with:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  LOWORD(v16) = *v5;
  v12 = sub_10001F1C0();
  result = sub_10001E960(a1, &type metadata for UInt16, a4, v12, a5);
  if (!v6)
  {
    v20 = *(v5 + 8);
    v16 = *(v5 + 8);
    sub_100021204(&v20, v15);
    sub_100020B6C();
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0x2000000020uLL, 1, &type metadata for Data);
    sub_100013E20(v16, *(&v16 + 1));
    v19 = *(v5 + 24);
    v16 = *(v5 + 24);
    sub_100021204(&v19, v15);
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0x2000000020uLL, 1, &type metadata for Data);
    sub_100013E20(v16, *(&v16 + 1));
    if (a3)
    {
      sub_10001C55C();
      swift_allocError();
      *v14 = 0xD000000000000052;
      *(v14 + 8) = 0x800000010005BDE0;
      *(v14 + 16) = 1;
      return swift_willThrow();
    }

    else
    {
      v18 = *(v5 + 40);
      v16 = *(v5 + 40);
      sub_100021204(&v18, v15);
      RangeReplaceableCollection<>.encode<A>(into:with:)(a1, a2 | (a2 << 32), 1, &type metadata for Data);
      sub_100013E20(v16, *(&v16 + 1));
      v16 = *(v5 + 56);
      v17 = v16;
      sub_100021204(&v17, v15);
      RangeReplaceableCollection<>.encode<A>(into:with:)(a1, a2 & 0xFFFFFFFF00000000 | HIDWORD(a2), 1, &type metadata for Data);
      return sub_100013E20(v16, *(&v16 + 1));
    }
  }

  return result;
}

__n128 PPM_0_2_1.ReportAuth.init(token:challenge:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *v7 = *(a1 + 8);
  *&v7[24] = *(a2 + 16);
  *&v7[8] = *a2;
  *&v7[40] = *(a2 + 32);
  *&v7[56] = *(a2 + 48);
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  a3[2] = a1[2];
  a3[3] = v5;
  *a3 = v3;
  a3[1] = v4;
  result = *v7;
  a3[6] = *&v7[32];
  a3[7] = *&v7[48];
  a3[4] = *v7;
  a3[5] = *&v7[16];
  return result;
}

__n128 PPM_0_2_1.ReportAuth.init<A>(from:with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  if ((a3 & 0x10000) != 0)
  {
    a2 = 0;
  }

  result.n128_f64[0] = PPM_0_2_1.Token.init<A>(from:with:)(a1, a2, a3 & 1 | BYTE2(a3) & 1u, a4, a5, v16);
  if (!v6)
  {
    sub_10003C9E4(a1, a4, a5, v18);
    *v15 = v17;
    *&v15[24] = v18[1];
    *&v15[8] = v18[0];
    *&v15[40] = v18[2];
    *&v15[56] = v19;
    v12 = v16[0];
    v13 = v16[1];
    v14 = v16[3];
    a6[2] = v16[2];
    a6[3] = v14;
    *a6 = v12;
    a6[1] = v13;
    result = *v15;
    a6[6] = *&v15[32];
    a6[7] = *&v15[48];
    a6[4] = *v15;
    a6[5] = *&v15[16];
  }

  return result;
}

double PPM_0_2_1.Token.init<A>(from:with:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = sub_10001F1C0();
  CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt16, a4, v13, a5, &v23);
  if (!v6)
  {
    v22 = a6;
    v15 = v23;
    v16 = sub_100020B6C();
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0x2000000020, 1, &type metadata for Data, a4, v16, a5);
    v24 = v15;
    v17 = v23;
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0x2000000020, 1, &type metadata for Data, a4, v16, a5);
    v18 = v23;
    if (a3)
    {
      sub_10001C55C();
      swift_allocError();
      *v19 = 0xD000000000000052;
      *(v19 + 8) = 0x800000010005BDE0;
      *(v19 + 16) = 1;
      swift_willThrow();
      sub_100013E20(v18, *(&v18 + 1));
      sub_100013E20(v17, *(&v17 + 1));
    }

    else
    {
      v20 = v23;
      RangeReplaceableCollection<>.init<A>(from:with:)(a1, a2 | (a2 << 32), 1, &type metadata for Data, a4, v16, a5);
      v21 = v23;
      RangeReplaceableCollection<>.init<A>(from:with:)(a1, a2 & 0xFFFFFFFF00000000 | HIDWORD(a2), 1, &type metadata for Data, a4, v16, a5);
      *v22 = v24;
      *(v22 + 8) = v17;
      *(v22 + 24) = v20;
      *(v22 + 32) = *(&v18 + 1);
      *(v22 + 40) = v21;
      result = *&v23;
      *(v22 + 56) = v23;
    }
  }

  return result;
}

double PPM_0_2_1.Challenge.init<A>(from:with:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *&result = sub_10003C9E4(a1, a2, a3, v8).n128_u64[0];
  if (!v4)
  {
    v7 = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = v7;
    result = *&v9;
    *(a4 + 32) = v9;
    *(a4 + 48) = v10;
  }

  return result;
}

uint64_t static PPM_0_2_1.Token.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[1], a1[2], a2[1], a2[2]) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[3], a1[4], a2[3], a2[4]) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[5], a1[6], a2[5], a2[6]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[7];
  v5 = a1[8];
  v6 = a2[7];
  v7 = a2[8];

  return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v4, v5, v6, v7);
}

uint64_t static PPM_0_2_1.Challenge.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[1], a1[2], a2[1], a2[2]) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[3], a1[4], a2[3], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[5];
  v5 = a1[6];
  v6 = a2[5];
  v7 = a2[6];

  return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v4, v5, v6, v7);
}

void sub_10003BFC0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 10);
  v9 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 104);
  v12 = *(v1 + 120);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *a1;
  }

  v6 = PPM_0_2_1.Token.encodedLength(with:)(v5, (v4 | v3) & 1);
  if (!v2)
  {
    v7 = v6;
    sub_10003C670();
    if (__OFADD__(v7, v8))
    {
      __break(1u);
    }
  }
}

double sub_10003C07C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  *&result = PPM_0_2_1.ReportAuth.init<A>(from:with:)(a1, *a2, *(a2 + 8) | (*(a2 + 10) << 16), a3, a4, v12).n128_u64[0];
  if (!v5)
  {
    v8 = v16;
    a5[4] = v15;
    a5[5] = v8;
    v9 = v18;
    a5[6] = v17;
    a5[7] = v9;
    v10 = v12[1];
    *a5 = v12[0];
    a5[1] = v10;
    result = *&v13;
    v11 = v14;
    a5[2] = v13;
    a5[3] = v11;
  }

  return result;
}

BOOL sub_10003C0EC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s19DPSubmissionService9PPM_0_2_1V10ReportAuthV23__derived_struct_equalsySbAE_AEtFZ_0(v13, v14);
}

uint64_t PPM_0_2_1.Challenge.issuerName.getter()
{
  v1 = *(v0 + 8);
  sub_10001414C(v1, *(v0 + 16));
  return v1;
}

uint64_t PPM_0_2_1.Challenge.redemptionContext.getter()
{
  v1 = *(v0 + 24);
  sub_10001414C(v1, *(v0 + 32));
  return v1;
}

uint64_t PPM_0_2_1.Challenge.originInfo.getter()
{
  v1 = *(v0 + 40);
  sub_10001414C(v1, *(v0 + 48));
  return v1;
}

uint64_t PPM_0_2_1.Token.authenticator.getter()
{
  v1 = *(v0 + 56);
  sub_10001414C(v1, *(v0 + 64));
  return v1;
}

uint64_t PPM_0_2_1.Token.init(tokenType:nonce:challengeDigest:tokenKeyID:authenticator:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

__n128 sub_10003C2AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result.n128_f64[0] = PPM_0_2_1.Token.init<A>(from:with:)(a1, *a2, *(a2 + 8), a3, a4, v9);
  if (!v5)
  {
    v8 = v9[3];
    *(a5 + 32) = v9[2];
    *(a5 + 48) = v8;
    *(a5 + 64) = v10;
    result = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = result;
  }

  return result;
}

uint64_t sub_10003C314(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v13 = a1[8];
  v14 = a1[7];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[1], a1[2], a2[1], a2[2]) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v2, v3, v6, v7) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v4, v5, v8, v9) & 1) == 0)
  {
    return 0;
  }

  return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v14, v13, v10, v11);
}

uint64_t PPM_0_2_1.Challenge.init(tokenType:issuerName:redemptionContext:originInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_10003C428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = *(v4 + 6);
  return sub_10003C83C(a1, a3, a4);
}

uint64_t sub_10003C474(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[1], a1[2], a2[1], a2[2]) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v2, v3, v6, v7) & 1) == 0)
  {
    return 0;
  }

  return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v4, v5, v8, v9);
}

BOOL _s19DPSubmissionService9PPM_0_2_1V10ReportAuthV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v23 = *(a1 + 8);
  v24 = *(a1 + 7);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 6);
  v10 = *(a2 + 7);
  v11 = *(a2 + 8);
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & 1) == 0)
  {
    return 0;
  }

  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v2, v3, v6, v7) & 1) == 0)
  {
    return 0;
  }

  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v4, v5, v8, v9) & 1) == 0)
  {
    return 0;
  }

  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v24, v23, v10, v11) & 1) == 0)
  {
    return 0;
  }

  if (a1[36] != a2[36])
  {
    return 0;
  }

  v12 = *(a1 + 12);
  v13 = *(a1 + 13);
  v14 = *(a1 + 14);
  v15 = *(a1 + 15);
  v16 = *(a2 + 12);
  v17 = *(a2 + 13);
  v18 = *(a2 + 14);
  v19 = *(a2 + 15);
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 10), *(a1 + 11), *(a2 + 10), *(a2 + 11)) & 1) == 0)
  {
    return 0;
  }

  return (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v12, v13, v16, v17) & 1) != 0 && (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v14, v15, v18, v19) & 1) != 0;
}

void sub_10003C670()
{
  v2 = v0[1];
  v3 = v0[2];
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = v2 + 16;
  v2 = *(v2 + 16);
  v6 = *(v7 + 8);
  v5 = v6 - v2;
  if (__OFSUB__(v6, v2))
  {
    __break(1u);
LABEL_8:
    v8 = __OFSUB__(HIDWORD(v2), v2);
    v9 = HIDWORD(v2) - v2;
    if (v8)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v5 = v9;
  }

LABEL_11:
  sub_100038F60(v5, 0xFFFF00000001uLL);
  if (v1)
  {
    return;
  }

  v10 = sub_10003915C(0xFFFF00000001);
  v11 = v5 + v10;
  if (__OFADD__(v5, v10))
  {
    __break(1u);
    goto LABEL_42;
  }

  v12 = v11 + 2;
  if (__OFADD__(v11, 2))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v13 = v0[3];
  v14 = v0[4];
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v14);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_24;
  }

  v18 = v13 + 16;
  v13 = *(v13 + 16);
  v17 = *(v18 + 8);
  v16 = v17 - v13;
  if (__OFSUB__(v17, v13))
  {
    __break(1u);
LABEL_21:
    v8 = __OFSUB__(HIDWORD(v13), v13);
    v19 = HIDWORD(v13) - v13;
    if (v8)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v16 = v19;
  }

LABEL_24:
  sub_100038F60(v16, 0x2000000000uLL);
  v20 = sub_10003915C(0x2000000000);
  v21 = v16 + v20;
  if (__OFADD__(v16, v20))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v8 = __OFADD__(v12, v21);
  v22 = v12 + v21;
  if (v8)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v23 = v0[5];
  v24 = v0[6];
  v25 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v25 != 2)
    {
      v26 = 0;
      goto LABEL_36;
    }

    v28 = v23 + 16;
    v23 = *(v23 + 16);
    v27 = *(v28 + 8);
    v26 = v27 - v23;
    if (!__OFSUB__(v27, v23))
    {
      goto LABEL_36;
    }

    __break(1u);
  }

  else if (!v25)
  {
    v26 = BYTE6(v24);
    goto LABEL_36;
  }

  v8 = __OFSUB__(HIDWORD(v23), v23);
  v29 = HIDWORD(v23) - v23;
  if (v8)
  {
LABEL_49:
    __break(1u);
    return;
  }

  v26 = v29;
LABEL_36:
  sub_100038F60(v26, 0xFFFF00000000uLL);
  v30 = sub_10003915C(0xFFFF00000000);
  if (__OFADD__(v26, v30))
  {
    goto LABEL_47;
  }

  if (__OFADD__(v22, v26 + v30))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }
}

uint64_t sub_10003C83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOWORD(v11) = *v3;
  v8 = sub_10001F1C0();
  result = sub_10001E960(a1, &type metadata for UInt16, a2, v8, a3);
  if (!v4)
  {
    v14 = *(v3 + 8);
    v11 = *(v3 + 8);
    sub_100021204(&v14, v10);
    sub_100020B6C();
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFFFF00000001uLL, 1, &type metadata for Data);
    sub_100013E20(v11, *(&v11 + 1));
    v13 = *(v3 + 24);
    v11 = *(v3 + 24);
    sub_100021204(&v13, v10);
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0x2000000000uLL, 1, &type metadata for Data);
    sub_100013E20(v11, *(&v11 + 1));
    v11 = *(v3 + 40);
    v12 = v11;
    sub_100021204(&v12, v10);
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFFFF00000000uLL, 1, &type metadata for Data);
    return sub_100013E20(v11, *(&v11 + 1));
  }

  return result;
}

__n128 sub_10003C9E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_10001F1C0();
  CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt16, a2, v9, a3, &v15);
  if (!v4)
  {
    v11 = v15.n128_u16[0];
    v12 = sub_100020B6C();
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFFFF00000001, 1, &type metadata for Data, a2, v12, a3);
    v13 = v15;
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0x2000000000, 1, &type metadata for Data, a2, v12, a3);
    v14 = v15;
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFFFF00000000, 1, &type metadata for Data, a2, v12, a3);
    result = v15;
    *a4 = v11;
    *(a4 + 8) = v13;
    *(a4 + 24) = v14;
    *(a4 + 40) = result;
  }

  return result;
}

unint64_t sub_10003CB9C(uint64_t a1)
{
  result = sub_10003CBC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003CBC4()
{
  result = qword_10007D7E0;
  if (!qword_10007D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D7E0);
  }

  return result;
}

unint64_t sub_10003CC18(uint64_t a1)
{
  result = sub_10003CC40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003CC40()
{
  result = qword_10007D840;
  if (!qword_10007D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D840);
  }

  return result;
}

unint64_t sub_10003CC94(uint64_t a1)
{
  result = sub_10003CCBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003CCBC()
{
  result = qword_10007D8A0;
  if (!qword_10007D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D8A0);
  }

  return result;
}

__n128 sub_10003CD10(uint64_t a1, __int128 *a2)
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

uint64_t sub_10003CD34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 128))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10003CD88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t _s10ReportAuthV15CodingParameterVwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

__n128 sub_10003CE2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003CE50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 72))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10003CEA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_10003CF24(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10003CF40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 56))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10003CF94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10003D000(uint64_t result, __int16 a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 0x100) != 0)
  {
    sub_10001C55C();
    swift_allocError();
    *v8 = 0xD000000000000085;
    *(v8 + 8) = 0x800000010005B740;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  v5 = result;
  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v7 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a4);
    goto LABEL_13;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v7 = HIDWORD(a3) - a3;
LABEL_13:
  result = sub_100038F60(v7, result);
  if (!v4)
  {
    v11 = sub_10003915C(v5);
    v12 = __OFADD__(v7, v11);
    result = v7 + v11;
    if (v12)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t PPM_0_2_1.Interval.init<A>(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v8 = sub_10001F118();
  CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt64, a3, v8, a4, &v10);
  if (!v4)
  {
    v5 = v10;
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt64, a3, v8, a4, &v10);
  }

  return v5;
}

uint64_t sub_10003D348@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = PPM_0_2_1.Interval.init<A>(from:with:)(a1, *a2 | (*(a2 + 2) << 16), a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t sub_10003D480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  result = sub_10003DF70(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

unint64_t sub_10003D4D4()
{
  result = sub_100042920(&off_100071460);
  static PPM_0_2_1.Role.rangesByEnumVals = result;
  return result;
}

uint64_t *PPM_0_2_1.Role.rangesByEnumVals.unsafeMutableAddressor()
{
  if (qword_10007C5F0 != -1)
  {
    swift_once();
  }

  return &static PPM_0_2_1.Role.rangesByEnumVals;
}

uint64_t (*static PPM_0_2_1.Role.rangesByEnumVals.modify())()
{
  if (qword_10007C5F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_10003D65C()
{
  result = sub_1000427B0(&off_100071248);
  static PPM_0_2_1.QueryType.rangesByEnumVals = result;
  return result;
}

uint64_t *PPM_0_2_1.QueryType.rangesByEnumVals.unsafeMutableAddressor()
{
  if (qword_10007C5F8 != -1)
  {
    swift_once();
  }

  return &static PPM_0_2_1.QueryType.rangesByEnumVals;
}

uint64_t (*static PPM_0_2_1.QueryType.rangesByEnumVals.modify())()
{
  if (qword_10007C5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_10003D7E4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a3);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_15:
    __break(1u);
    return;
  }

  v7 = HIDWORD(a2) - a2;
LABEL_11:
  sub_100038F60(v7, a4);
  if (!v4 && __OFADD__(v7, sub_10003915C(a4)))
  {
    __break(1u);
    goto LABEL_15;
  }
}

void sub_10003D8F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v12 = v7 + 16;
    v7 = *(v7 + 16);
    v11 = *(v12 + 8);
    v10 = v11 - v7;
    if (!__OFSUB__(v11, v7))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(v8);
    goto LABEL_11;
  }

  v13 = __OFSUB__(HIDWORD(v7), v7);
  v14 = HIDWORD(v7) - v7;
  if (v13)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v10 = v14;
LABEL_11:
  sub_100038F60(v10, a4);
  if (!v5 && __OFADD__(v10, sub_10003915C(a4)))
  {
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_10003D9D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10003DB68(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100013E20(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100042580(v13, a3, a4, &v12);
  v10 = v4;
  sub_100013E20(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10003DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_100050220();
  v11 = result;
  if (result)
  {
    result = sub_100050240();
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

  sub_100050230();
  sub_100042580(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_10001414C(a3, a4);
          return sub_10003D9D8(v13, a2, a3, a4) & 1;
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

uint64_t sub_10003DDE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  sub_10001414C(a2, a3);
  sub_100020B6C();
  RangeReplaceableCollection<>.encode<A>(into:with:)(a1, a6, 1, &type metadata for Data);
  return sub_100013E20(a2, a3);
}

uint64_t sub_10003DE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10001F118();
  result = sub_10001E960(a1, &type metadata for UInt64, a4, v9, a5);
  if (!v5)
  {
    return sub_10001E960(a1, &type metadata for UInt64, a4, v9, a5);
  }

  return result;
}

uint64_t sub_10003DF70(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = sub_100020B6C();
  result = RangeReplaceableCollection<>.init<A>(from:with:)(a1, a4, 1, &type metadata for Data, a2, v9, a3);
  if (!v4)
  {
    return v11;
  }

  return result;
}

unint64_t sub_10003DFF8(uint64_t a1)
{
  result = sub_10003E020();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E020()
{
  result = qword_10007D900;
  if (!qword_10007D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D900);
  }

  return result;
}

unint64_t sub_10003E074(uint64_t a1)
{
  result = sub_10003E09C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E09C()
{
  result = qword_10007D960;
  if (!qword_10007D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D960);
  }

  return result;
}

unint64_t sub_10003E0F0(uint64_t a1)
{
  result = sub_10003E118();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E118()
{
  result = qword_10007D9C0;
  if (!qword_10007D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D9C0);
  }

  return result;
}

unint64_t sub_10003E170()
{
  result = qword_10007D9C8;
  if (!qword_10007D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D9C8);
  }

  return result;
}

unint64_t sub_10003E1F8()
{
  result = qword_10007D9E0;
  if (!qword_10007D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D9E0);
  }

  return result;
}

unint64_t sub_10003E250()
{
  result = qword_10007D9E8;
  if (!qword_10007D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D9E8);
  }

  return result;
}

unint64_t sub_10003E2A4(uint64_t a1)
{
  result = sub_10003E2CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E2CC()
{
  result = qword_10007DA50;
  if (!qword_10007DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DA50);
  }

  return result;
}

unint64_t sub_10003E320(uint64_t a1)
{
  result = sub_10003E348();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E348()
{
  result = qword_10007DA58;
  if (!qword_10007DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DA58);
  }

  return result;
}

unint64_t sub_10003E39C(uint64_t a1)
{
  result = sub_10003E3C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E3C4()
{
  result = qword_10007DAB8;
  if (!qword_10007DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DAB8);
  }

  return result;
}

unint64_t sub_10003E41C()
{
  result = qword_10007DAC0;
  if (!qword_10007DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DAC0);
  }

  return result;
}

unint64_t sub_10003E4A4()
{
  result = qword_10007DAD8;
  if (!qword_10007DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DAD8);
  }

  return result;
}

unint64_t sub_10003E4FC()
{
  result = qword_10007DAE0;
  if (!qword_10007DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DAE0);
  }

  return result;
}

unint64_t sub_10003E550(uint64_t a1)
{
  result = sub_10003E578();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E578()
{
  result = qword_10007DB48;
  if (!qword_10007DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DB48);
  }

  return result;
}

unint64_t sub_10003E5CC(uint64_t a1)
{
  result = sub_10003E5F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E5F4()
{
  result = qword_10007DB50;
  if (!qword_10007DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DB50);
  }

  return result;
}

unint64_t sub_10003E648(uint64_t a1)
{
  result = sub_10003E670();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E670()
{
  result = qword_10007DBB0;
  if (!qword_10007DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DBB0);
  }

  return result;
}

unint64_t sub_10003E6C4(uint64_t a1)
{
  result = sub_10003E6EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E6EC()
{
  result = qword_10007DC10;
  if (!qword_10007DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DC10);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for PPM_0_2_1.Interval(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PPM_0_2_1.Interval(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PPM_0_2_1.Interval(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PPM_0_2_1.QueryType.EnumValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PPM_0_2_1.QueryType.EnumValue(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10003E96C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10003E9C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t static _DPDediscoHPKEEncryption.generatePublicKey()()
{
  v0 = sub_1000506A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000506D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000506C0();
  sub_1000506B0();
  (*(v6 + 8))(v9, v5);
  v10 = sub_100050680();
  (*(v1 + 8))(v4, v0);
  return v10;
}

id _DPDediscoHPKEEncryption.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _DPDediscoHPKEEncryption();
  return objc_msgSendSuper2(&v2, "init");
}

id _DPDediscoHPKEEncryption.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _DPDediscoHPKEEncryption();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003EFA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a7;
  v51 = a8;
  v49 = a6;
  v48 = a5;
  v58 = a3;
  v59 = a4;
  v63 = a1;
  v64 = a2;
  v8 = sub_100050670();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  __chkstk_darwin(v8);
  v60 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000506A0();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  v13 = __chkstk_darwin(v11);
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = &v48 - v15;
  v61 = sub_100050630();
  v16 = *(v61 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v61);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100050610();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100050620();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100050600();
  v66 = *(v71 - 8);
  v30 = *(v66 + 64);
  v31 = __chkstk_darwin(v71);
  v54 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (*(v26 + 104))(v29, enum case for HPKE.KEM.P256_HKDF_SHA256(_:), v25);
  (*(v21 + 104))(v24, enum case for HPKE.KDF.HKDF_SHA256(_:), v20);
  (*(v16 + 104))(v19, enum case for HPKE.AEAD.AES_GCM_128(_:), v61);
  v35 = v62;
  sub_1000505F0();
  v69 = v63;
  v70 = v64;
  sub_10001414C(v63, v64);
  v36 = v65;
  sub_100050690();
  if (v36)
  {
    (*(v66 + 8))(v34, v71);
  }

  else
  {
    v37 = v56;
    v38 = v57;
    (*(v56 + 16))(v55, v35, v57);
    (*(v66 + 16))(v54, v34, v71);
    sub_10001414C(v58, v59);
    sub_100050640();
    v39 = v38;
    v40 = v37;
    v65 = v34;
    v69 = v48;
    v70 = v49;
    v67 = v50;
    v68 = v51;
    sub_10003F5EC();
    v42 = v60;
    v43 = sub_100050660();
    v45 = v44;
    sub_100013EC0(&qword_10007DC48, &qword_100057DC8);
    v46 = v35;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100057D90;
    *(v35 + 32) = sub_100050650();
    *(v35 + 40) = v47;
    *(v35 + 48) = v43;
    *(v35 + 56) = v45;
    (*(v52 + 8))(v42, v53);
    (*(v40 + 8))(v46, v39);
    (*(v66 + 8))(v65, v71);
  }

  return v35;
}

unint64_t sub_10003F5EC()
{
  result = qword_10007DC40;
  if (!qword_10007DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DC40);
  }

  return result;
}

uint64_t PPM_0_2_1.HPKECiphertext.init(configID:enc:payload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

__n128 PPM_0_2_1.Report.init(reportMetadata:publicShare:leaderEncryptedInputShare:helperEncryptedInputShare:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  v8 = *(a6 + 16);
  *(a8 + 40) = *a6;
  *(a8 + 56) = v8;
  *(a8 + 72) = *(a6 + 32);
  result = *a7;
  v10 = *(a7 + 16);
  *(a8 + 80) = *a7;
  *(a8 + 96) = v10;
  *(a8 + 112) = *(a7 + 32);
  return result;
}

uint64_t PPM_0_2_1.InputShareAAD.init(taskID:reportMetadata:publicShare:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

unint64_t sub_10003F698(unint64_t result, int a2, uint64_t a3)
{
  if ((a2 & 0x10000) != 0)
  {
    sub_10001C55C();
    swift_allocError();
    *v15 = 0xD000000000000085;
    *(v15 + 8) = 0x800000010005B740;
    *(v15 + 16) = 1;
    return swift_willThrow();
  }

  v6 = result;
  v7 = 0;
  v8 = (a3 + 48);
  v9 = *(a3 + 16) + 1;
  while (--v9)
  {
    v3 = *(v8 - 1);
    v5 = *v8;
    v12 = *v8 >> 62;
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        v10 = 0;
        goto LABEL_4;
      }

      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      v10 = v13 - v14;
      if (__OFSUB__(v13, v14))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (!v12)
      {
        v10 = BYTE6(v5);
        goto LABEL_4;
      }

      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_26;
      }

      v10 = HIDWORD(v3) - v3;
    }

    result = sub_10001414C(*(v8 - 1), *v8);
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    if (HIDWORD(v10))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    if (v10 >= 0x10000)
    {
      goto LABEL_22;
    }

LABEL_4:
    v8 += 3;
    result = sub_100013E20(v3, v5);
    v11 = __OFADD__(v7, v10 + 4);
    v7 += v10 + 4;
    if (v11)
    {
      goto LABEL_25;
    }
  }

  result = sub_100038F60(v7, v6);
  if (!v4)
  {
    v16 = sub_10003915C(v6);
    v11 = __OFADD__(v7, v16);
    result = v7 + v16;
    if (v11)
    {
      __break(1u);
LABEL_22:
      HIDWORD(v18._object) = -335544320;
      sub_1000508F0(54);
      v19._object = 0x800000010005C040;
      v19._countAndFlagsBits = 0xD000000000000032;
      sub_100050770(v19);
      sub_100050900();
      v20._countAndFlagsBits = 3026478;
      v20._object = 0xE300000000000000;
      sub_100050770(v20);
      sub_100050900();
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      sub_100050770(v21);

      v22._countAndFlagsBits = 8236;
      v22._object = 0xE200000000000000;
      sub_100050770(v22);
      strcpy(&v18, "instead got ");
      v23._countAndFlagsBits = sub_100050950();
      sub_100050770(v23);

      v24._countAndFlagsBits = 46;
      v24._object = 0xE100000000000000;
      sub_100050770(v24);

      sub_100050770(v18);

      sub_10001C55C();
      swift_allocError();
      *v17 = 0;
      *(v17 + 8) = 0xE000000000000000;
      *(v17 + 16) = 5;
      swift_willThrow();
      return sub_100013E20(v3, v5);
    }
  }

  return result;
}

unint64_t sub_10003F9BC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000) != 0)
  {
LABEL_19:
    sub_10001C55C();
    swift_allocError();
    *v15 = 0xD000000000000085;
    *(v15 + 8) = 0x800000010005B740;
    *(v15 + 16) = 1;
    return swift_willThrow();
  }

  v6 = result;
  v7 = 0;
  v8 = (a3 + 48);
  v9 = *(a3 + 16) + 1;
  while (--v9)
  {
    v3 = *(v8 - 1);
    v5 = *v8;
    v10 = *v8 >> 62;
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_24;
      }

      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      v11 = v12 - v13;
      if (__OFSUB__(v12, v13))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (!v10)
      {
        v11 = BYTE6(v5);
        goto LABEL_15;
      }

      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_28;
      }

      v11 = HIDWORD(v3) - v3;
    }

    result = sub_10001414C(*(v8 - 1), *v8);
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if (HIDWORD(v11))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

LABEL_15:
    if (v11 - 0x10000 <= 0xFFFFFFFFFFFF0000)
    {
      goto LABEL_24;
    }

    v8 += 3;
    result = sub_100013E20(v3, v5);
    v14 = __OFADD__(v7, v11 + 9);
    v7 += v11 + 9;
    if (v14)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  result = sub_100038F60(v7, v6);
  if (!v4)
  {
    v16 = sub_10003915C(v6);
    v14 = __OFADD__(v7, v16);
    result = v7 + v16;
    if (v14)
    {
      __break(1u);
LABEL_24:
      HIDWORD(v18._object) = -335544320;
      sub_1000508F0(54);
      v19._object = 0x800000010005C040;
      v19._countAndFlagsBits = 0xD000000000000032;
      sub_100050770(v19);
      sub_100050900();
      v20._countAndFlagsBits = 3026478;
      v20._object = 0xE300000000000000;
      sub_100050770(v20);
      sub_100050900();
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      sub_100050770(v21);

      v22._countAndFlagsBits = 8236;
      v22._object = 0xE200000000000000;
      sub_100050770(v22);
      strcpy(&v18, "instead got ");
      v23._countAndFlagsBits = sub_100050950();
      sub_100050770(v23);

      v24._countAndFlagsBits = 46;
      v24._object = 0xE100000000000000;
      sub_100050770(v24);

      sub_100050770(v18);

      sub_10001C55C();
      swift_allocError();
      *v17 = 0;
      *(v17 + 8) = 0xE000000000000000;
      *(v17 + 16) = 5;
      swift_willThrow();
      return sub_100013E20(v3, v5);
    }
  }

  return result;
}

void sub_10003FDC4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v7 = v2 + 16;
    v2 = *(v2 + 16);
    v6 = *(v7 + 8);
    v5 = v6 - v2;
    if (!__OFSUB__(v6, v2))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v3);
    goto LABEL_11;
  }

  v8 = __OFSUB__(HIDWORD(v2), v2);
  v9 = HIDWORD(v2) - v2;
  if (v8)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v5 = v9;
LABEL_11:
  sub_100038F60(v5, 0xFFFF00000001uLL);
  if (!v1 && __OFADD__(v5, sub_10003915C(0xFFFF00000001)))
  {
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_10003FE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_1000436AC(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t PPM_0_2_1.HPKEConfig.init<A>(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_10001F214();
  result = CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt8, a3, v8, a4, &v18);
  if (!v4)
  {
    v14 = v18;
    v10 = sub_10001F1C0();
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt16, a3, v10, a4, &v17);
    v11 = v17;
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt16, a3, v10, a4, &v16);
    v12 = v16;
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt16, a3, v10, a4, &v15);
    v13 = v15;
    sub_1000436AC(a1, a3, a4);
    return v14 | (v11 << 16) | (v12 << 32) | (v13 << 48);
  }

  return result;
}

uint64_t static PPM_0_2_1.HPKEConfig.__derived_struct_equals(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 != a4 || (a4 ^ a1) >> 16)
  {
    return 0;
  }

  else
  {
    return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a2, a3, a5, a6);
  }
}

uint64_t sub_1000401F4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = PPM_0_2_1.HPKEConfig.init<A>(from:with:)(a1, *a2 | (*(a2 + 4) << 32) | (*(a2 + 5) << 40), a3, a4);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 2) = WORD1(result);
    *(a5 + 4) = WORD2(result);
    *(a5 + 6) = HIWORD(result);
    *(a5 + 8) = v8;
    *(a5 + 16) = v9;
  }

  return result;
}

uint64_t sub_100040258(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
  {
    return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t PPM_0_2_1.HPKEConfigList.encode<A>(into:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v12 = 0xFFFF00000001;
  v14 = WORD2(a2) & 0x1FF;
  v13 = a2;
  v15 = 0;
  v8 = sub_100013EC0(&qword_10007DC50, &qword_100057DD0);
  v9 = sub_100043AC8(&qword_10007DC58, &qword_10007DC50, &qword_100057DD0);
  v10 = sub_10004372C();
  return RangeReplaceableCollection<>.encode<A>(into:with:)(a1, &v12, v8, a4, v9, a5, v10);
}

uint64_t PPM_0_2_1.HPKEConfigList.init<A>(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_100013EC0(&qword_10007DC50, &qword_100057DD0);
  v13 = 0xFFFF00000001;
  v15 = WORD2(a2) & 0x1FF;
  v14 = a2;
  v16 = 0;
  v10 = sub_100043AC8(&qword_10007DC58, &qword_10007DC50, &qword_100057DD0);
  v11 = sub_10004372C();
  result = RangeReplaceableCollection<>.init<A>(from:with:)(a1, &v13, v9, a3, v10, a4, v11, &v17);
  if (!v4)
  {
    return v17;
  }

  return result;
}

uint64_t sub_1000404B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      if (*(v4 - 4) != *(i - 4))
      {
        return 0;
      }

      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v18 = *(v7 + 16);
          v17 = *(v7 + 24);
          v15 = __OFSUB__(v17, v18);
          v12 = v17 - v18;
          if (v15)
          {
            goto LABEL_59;
          }

          goto LABEL_24;
        }

        v12 = 0;
        if (v11 <= 1)
        {
          goto LABEL_25;
        }
      }

      else if (v10)
      {
        LODWORD(v12) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_58;
        }

        v12 = v12;
        if (v11 <= 1)
        {
LABEL_25:
          if (v11)
          {
            LODWORD(v16) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
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
LABEL_63:
              __break(1u);
            }

            v16 = v16;
          }

          else
          {
            v16 = BYTE6(v8);
          }

          goto LABEL_29;
        }
      }

      else
      {
        v12 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_25;
        }
      }

LABEL_18:
      if (v11 != 2)
      {
        if (v12)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_57;
      }

LABEL_29:
      if (v12 != v16)
      {
        return 0;
      }

      if (v12 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v29 = v3;
          v19 = *(v7 + 16);
          v28 = *(v7 + 24);
          sub_10001414C(v7, v6);
          sub_10001414C(v9, v8);
          v20 = sub_100050220();
          if (v20)
          {
            v21 = sub_100050240();
            if (__OFSUB__(v19, v21))
            {
              goto LABEL_62;
            }

            v20 += v19 - v21;
          }

          if (__OFSUB__(v28, v19))
          {
            goto LABEL_61;
          }

          sub_100050230();
          v22 = v20;
          v23 = v9;
          v24 = v8;
          v3 = v29;
          goto LABEL_50;
        }

        memset(v31, 0, 14);
        sub_10001414C(v7, v6);
        sub_10001414C(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_60;
          }

          sub_10001414C(v7, v6);
          sub_10001414C(v9, v8);
          v25 = sub_100050220();
          if (v25)
          {
            v26 = sub_100050240();
            if (__OFSUB__(v7, v26))
            {
              goto LABEL_63;
            }

            v25 += v7 - v26;
          }

          sub_100050230();
          v22 = v25;
          v23 = v9;
          v24 = v8;
LABEL_50:
          sub_100042580(v22, v23, v24, v31);
          sub_100013E20(v9, v8);
          sub_100013E20(v7, v6);
          if ((v31[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v31[0] = *(v4 - 1);
        LOWORD(v31[1]) = v6;
        BYTE2(v31[1]) = BYTE2(v6);
        BYTE3(v31[1]) = BYTE3(v6);
        BYTE4(v31[1]) = BYTE4(v6);
        BYTE5(v31[1]) = BYTE5(v6);
        sub_10001414C(v7, v6);
        sub_10001414C(v9, v8);
      }

      sub_100042580(v31, v9, v8, &v30);
      sub_100013E20(v9, v8);
      sub_100013E20(v7, v6);
      if (!v30)
      {
        return 0;
      }

LABEL_6:
      v4 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    v12 = 0;
    if (!v7 && v6 == 0xC000000000000000 && *i >> 62 == 3)
    {
      v12 = 0;
      if (!v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_24:
    if (v11 <= 1)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  return 1;
}

uint64_t _s19DPSubmissionService9PPM_0_2_1V14HPKEConfigListV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = 0;
    v33 = a1;
    v34 = a2;
    while (1)
    {
      v5 = a1 + v3;
      v6 = a2 + v3;
      if (*(a1 + v3 + 32) != *(a2 + v3 + 32) || *(a1 + v3 + 34) != *(a2 + v3 + 34) || *(a1 + v3 + 36) != *(a2 + v3 + 36) || *(a1 + v3 + 38) != *(a2 + v3 + 38))
      {
        return 0;
      }

      v11 = *(v5 + 40);
      v10 = *(v5 + 48);
      v13 = *(v6 + 40);
      v12 = *(v6 + 48);
      v14 = v10 >> 62;
      v15 = v12 >> 62;
      if (v10 >> 62 == 3)
      {
        break;
      }

      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v22 = *(v11 + 16);
          v21 = *(v11 + 24);
          v19 = __OFSUB__(v21, v22);
          v16 = v21 - v22;
          if (v19)
          {
            goto LABEL_68;
          }

          goto LABEL_34;
        }

        v16 = 0;
        if (v15 <= 1)
        {
          goto LABEL_35;
        }
      }

      else if (v14)
      {
        LODWORD(v16) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_69;
        }

        v16 = v16;
        if (v15 <= 1)
        {
LABEL_35:
          if (v15)
          {
            LODWORD(v20) = HIDWORD(v13) - v13;
            if (__OFSUB__(HIDWORD(v13), v13))
            {
              goto LABEL_67;
            }

            v20 = v20;
          }

          else
          {
            v20 = BYTE6(v12);
          }

          goto LABEL_39;
        }
      }

      else
      {
        v16 = BYTE6(v10);
        if (v15 <= 1)
        {
          goto LABEL_35;
        }
      }

LABEL_28:
      if (v15 != 2)
      {
        if (v16)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      v19 = __OFSUB__(v17, v18);
      v20 = v17 - v18;
      if (v19)
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

LABEL_39:
      if (v16 != v20)
      {
        return 0;
      }

      if (v16 < 1)
      {
        goto LABEL_6;
      }

      if (v14 <= 1)
      {
        if (!v14)
        {
          v23 = a1;
          v24 = a2;
          v37[0] = v11;
          LOWORD(v37[1]) = v10;
          BYTE2(v37[1]) = BYTE2(v10);
          BYTE3(v37[1]) = BYTE3(v10);
          BYTE4(v37[1]) = BYTE4(v10);
          BYTE5(v37[1]) = BYTE5(v10);
          sub_10001414C(v11, v10);
          sub_10001414C(v13, v12);
          sub_100042580(v37, v13, v12, &v36);
          sub_100013E20(v13, v12);
          sub_100013E20(v11, v10);
          if (!v36)
          {
            return 0;
          }

          a2 = v24;
          a1 = v23;
          goto LABEL_6;
        }

        v35 = v4;
        if (v11 >> 32 < v11)
        {
          goto LABEL_70;
        }

        sub_10001414C(v11, v10);
        sub_10001414C(v13, v12);
        v26 = sub_100050220();
        if (v26)
        {
          v28 = sub_100050240();
          if (__OFSUB__(v11, v28))
          {
            goto LABEL_73;
          }

          v26 += v11 - v28;
        }

        goto LABEL_61;
      }

      if (v14 == 2)
      {
        v25 = *(v11 + 16);
        v32 = *(v11 + 24);
        sub_10001414C(v11, v10);
        sub_10001414C(v13, v12);
        v26 = sub_100050220();
        v35 = v4;
        if (v26)
        {
          v27 = sub_100050240();
          if (__OFSUB__(v25, v27))
          {
            goto LABEL_72;
          }

          v26 += v25 - v27;
        }

        if (__OFSUB__(v32, v25))
        {
          goto LABEL_71;
        }

LABEL_61:
        sub_100050230();
        v4 = v35;
        sub_100042580(v26, v13, v12, v37);
        sub_100013E20(v13, v12);
        sub_100013E20(v11, v10);
        if ((v37[0] & 1) == 0)
        {
          return 0;
        }

        a1 = v33;
        a2 = v34;
        goto LABEL_6;
      }

      v29 = a1;
      v30 = a2;
      memset(v37, 0, 14);
      sub_10001414C(v11, v10);
      sub_10001414C(v13, v12);
      sub_100042580(v37, v13, v12, &v36);
      sub_100013E20(v13, v12);
      sub_100013E20(v11, v10);
      if (!v36)
      {
        return 0;
      }

      a2 = v30;
      a1 = v29;
LABEL_6:
      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    v16 = 0;
    if (!v11 && v10 == 0xC000000000000000 && v12 >> 62 == 3)
    {
      v16 = 0;
      if (!v13 && v12 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_34:
    if (v15 <= 1)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  return 1;
}

unint64_t sub_100040D44(unsigned int *a1)
{
  v2 = 0x10000000000;
  if (!*(a1 + 5))
  {
    v2 = 0;
  }

  return sub_10003F9BC(0xFFFF00000001uLL, v2 | *a1 | (*(a1 + 4) << 32), *v1);
}

uint64_t sub_100040DE4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = PPM_0_2_1.HPKEConfigList.init<A>(from:with:)(a1, *a2 | (*(a2 + 4) << 32) | (*(a2 + 5) << 40), a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

__n128 PPM_0_2_1.HPKECiphertext.init<A>(from:with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_10001F214();
  CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt8, a2, v9, a3, &v14);
  if (!v4)
  {
    v11 = v14.n128_u8[0];
    v12 = sub_100020B6C();
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFFFF00000001, 1, &type metadata for Data, a2, v12, a3);
    v13 = v14;
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFFFFFFFF00000001, 1, &type metadata for Data, a2, v12, a3);
    result = v14;
    *a4 = v11;
    *(a4 + 8) = v13;
    *(a4 + 24) = result;
  }

  return result;
}

uint64_t static PPM_0_2_1.HPKECiphertext.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[3];
  v7 = a2[4];

  return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v4, v5, v6, v7);
}

uint64_t sub_10004101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 4);
  return sub_10004337C(a1, a3, a4);
}

double sub_100041060@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2 | (a2[1] << 8);
  *&result = PPM_0_2_1.HPKECiphertext.init<A>(from:with:)(a1, a3, a4, v10).n128_u64[0];
  if (!v5)
  {
    result = *v10;
    v9 = v10[1];
    *a5 = v10[0];
    *(a5 + 16) = v9;
    *(a5 + 32) = v11;
  }

  return result;
}

uint64_t sub_1000410B4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v2, v3, v4, v5);
}

Swift::Int PPM_0_2_1.ExtensionType.EnumValue.hashValue.getter()
{
  sub_1000509E0();
  sub_1000509F0(0);
  return sub_100050A00();
}

Swift::Int sub_1000411B4()
{
  sub_1000509E0();
  sub_1000509F0(0);
  return sub_100050A00();
}

unint64_t sub_100041204()
{
  result = sub_100042850(&off_100071438);
  static PPM_0_2_1.ExtensionType.rangesByEnumVals = result;
  return result;
}

uint64_t *PPM_0_2_1.ExtensionType.rangesByEnumVals.unsafeMutableAddressor()
{
  if (qword_10007C600 != -1)
  {
    swift_once();
  }

  return &static PPM_0_2_1.ExtensionType.rangesByEnumVals;
}

uint64_t static PPM_0_2_1.ExtensionType.rangesByEnumVals.getter()
{
  if (qword_10007C600 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static PPM_0_2_1.ExtensionType.rangesByEnumVals.setter(uint64_t a1)
{
  if (qword_10007C600 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static PPM_0_2_1.ExtensionType.rangesByEnumVals = a1;
}

uint64_t (*static PPM_0_2_1.ExtensionType.rangesByEnumVals.modify())()
{
  if (qword_10007C600 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t PPM_0_2_1.Extension.init<A>(from:with:)(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = a2 | (a2 >> 8);
  v10 = sub_1000315F8();
  TLSEnumType.init<A>(from:with:)(a1, v9 & 1, &type metadata for PPM_0_2_1.ExtensionType, a3, v10, a4);
  if (!v4)
  {
    v5 = v13;
    v11 = sub_100020B6C();
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFFFF00000000, 1, &type metadata for Data, a3, v11, a4);
  }

  return v5;
}

uint64_t static PPM_0_2_1.Extension.__derived_struct_equals(_:_:)(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if (a1 == a4)
  {
    return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a2, a3, a5, a6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100041568@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = PPM_0_2_1.Extension.init<A>(from:with:)(a1, *a2 | (a2[1] << 8), a3, a4);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v8;
    *(a5 + 16) = v9;
  }

  return result;
}

uint64_t sub_1000415A4(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t PPM_0_2_1.ReportMetadata.init<A>(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_10003DF54(a1, a3, a4);
  if (!v4)
  {
    v8 = result;
    v9 = sub_10001F118();
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt64, a3, v9, a4, &v10);
    return v8;
  }

  return result;
}

uint64_t sub_100041744@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = PPM_0_2_1.ReportMetadata.init<A>(from:with:)(a1, *a2 | (*(a2 + 2) << 16), a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
  }

  return result;
}

uint64_t sub_100041780(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, a1[1], *a2, a2[1]) & (v2 == v3);
}

uint64_t PPM_0_2_1.Report.reportMetadata.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_10001414C(v1, v2);
  return v1;
}

double PPM_0_2_1.Report.init<A>(from:with:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a2;
  if ((a2 & 0x100000000000000) != 0)
  {
    v10 = 0;
  }

  v11 = PPM_0_2_1.ReportMetadata.init<A>(from:with:)(a1, v10 | (((a2 & 0x100000000010000) != 0) << 16), a3, a4);
  if (!v5)
  {
    v19 = v13;
    v20 = v12;
    v15 = v11;
    v16 = sub_100020B6C();
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFFFFFFFF00000000, 1, &type metadata for Data, a3, v16, a4);
    PPM_0_2_1.HPKECiphertext.init<A>(from:with:)(a1, a3, a4, v23);
    PPM_0_2_1.HPKECiphertext.init<A>(from:with:)(a1, a3, a4, v25);
    *a5 = v15;
    *(a5 + 8) = v20;
    *(a5 + 16) = v19;
    *(a5 + 24) = v21;
    *(a5 + 32) = v22;
    v17 = v23[1];
    *(a5 + 40) = v23[0];
    *(a5 + 56) = v17;
    *(a5 + 72) = v24;
    result = *v25;
    v18 = v25[1];
    *(a5 + 80) = v25[0];
    *(a5 + 96) = v18;
    *(a5 + 112) = v26;
  }

  return result;
}

uint64_t sub_100041AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v13 = *(v4 + 14);
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  return sub_1000434C4(a1, a3, a4);
}

double sub_100041B14@<D0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2 | ((*(a2 + 2) | (*(a2 + 6) << 16)) << 32);
  v19 = *(a2 + 7);
  result = PPM_0_2_1.Report.init<A>(from:with:)(a1, v7 | (v19 << 56), a3, a4, v12);
  if (!v5)
  {
    v9 = v16;
    *(a5 + 64) = v15;
    *(a5 + 80) = v9;
    *(a5 + 96) = v17;
    *(a5 + 112) = v18;
    v10 = v12[1];
    *a5 = v12[0];
    *(a5 + 16) = v10;
    result = *&v13;
    v11 = v14;
    *(a5 + 32) = v13;
    *(a5 + 48) = v11;
  }

  return result;
}

uint64_t sub_100041BA0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s19DPSubmissionService9PPM_0_2_1V6ReportV23__derived_struct_equalsySbAE_AEtFZ_0(v12, v14) & 1;
}

unint64_t PPM_0_2_1.PlaintextInputShare.encodedLength(with:)(int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  if ((a1 & 0x10000) != 0)
  {
    v7 = 0;
  }

  result = sub_10003F698(0xFFFF00000000uLL, v7 | (((a1 & 0x10100) != 0) << 8), a2);
  if (!v4)
  {
    v9 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v9 == 2)
      {
        v13 = *(a3 + 16);
        v12 = *(a3 + 24);
        v11 = v12 - v13;
        if (__OFSUB__(v12, v13))
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v10 = result;
      }

      else
      {
        v10 = result;
        v11 = 0;
      }
    }

    else if (v9)
    {
      if (__OFSUB__(HIDWORD(a3), a3))
      {
LABEL_21:
        __break(1u);
        return result;
      }

      v10 = result;
      v11 = HIDWORD(a3) - a3;
    }

    else
    {
      v10 = result;
      v11 = BYTE6(a4);
    }

    sub_100038F60(v11, 0xFFFFFFFF00000000);
    result = sub_10003915C(0xFFFFFFFF00000000);
    v14 = v11 + result;
    if (__OFADD__(v11, result))
    {
      __break(1u);
    }

    else
    {
      result = v10 + v14;
      if (!__OFADD__(v10, v14))
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t PPM_0_2_1.PlaintextInputShare.encode<A>(into:with:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  v13 = a2;
  if ((a2 & 0x10000) != 0)
  {
    v13 = 0;
  }

  v18 = 0xFFFF00000000;
  LOWORD(v19) = v13 | (((a2 & 0x10100) != 0) << 8);
  BYTE2(v19) = 0;
  v14 = sub_100013EC0(&qword_10007DC68, &qword_100057DD8);
  v15 = sub_100043AC8(&qword_10007DC70, &qword_10007DC68, &qword_100057DD8);
  v16 = sub_1000437E8();
  result = RangeReplaceableCollection<>.encode<A>(into:with:)(a1, &v18, v14, a6, v15, a7, v16);
  if (!v7)
  {
    v18 = a4;
    v19 = a5;
    sub_10001414C(a4, a5);
    sub_100020B6C();
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFFFFFFFF00000000, 1, &type metadata for Data);
    return sub_100013E20(v18, v19);
  }

  return result;
}

unint64_t PPM_0_2_1.PlaintextInputShare.init<A>(from:with:)(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v8 = a2;
  v9 = (a2 & 0x10100) != 0;
  v10 = sub_100013EC0(&qword_10007DC68, &qword_100057DD8);
  if ((a2 & 0x10000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v19 = 0xFFFF00000000;
  v12 = v11 | (v9 << 8);
  v13 = a4;
  v20 = v12;
  v21 = 0;
  v14 = sub_100043AC8(&qword_10007DC70, &qword_10007DC68, &qword_100057DD8);
  v15 = sub_1000437E8();
  RangeReplaceableCollection<>.init<A>(from:with:)(a1, &v19, v10, a3, v14, a4, v15, &v22);
  if (!v18)
  {
    a4 = v22;
    v16 = sub_100020B6C();
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFFFFFFFF00000000, 1, &type metadata for Data, a3, v16, v13);
  }

  return a4;
}

uint64_t static PPM_0_2_1.PlaintextInputShare.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((sub_1000404B8(a1, a4) & 1) == 0)
  {
    return 0;
  }

  return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a2, a3, a5, a6);
}

unint64_t sub_1000420C4@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  result = PPM_0_2_1.PlaintextInputShare.init<A>(from:with:)(a1, *a2 | (*(a2 + 2) << 16), a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
  }

  return result;
}

uint64_t sub_100042100(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1000404B8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v2, v3, v4, v5);
}

uint64_t PPM_0_2_1.InputShareAAD.reportMetadata.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_10001414C(v1, v2);
  return v1;
}

__n128 PPM_0_2_1.InputShareAAD.init<A>(from:with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_10003DF38(a1, a3, a4);
  if (!v5)
  {
    v14 = v11;
    v15 = v12;
    v16 = (a2 >> 8);
    if ((a2 & &_mh_execute_header) != 0)
    {
      v16 = 0;
    }

    v17 = PPM_0_2_1.ReportMetadata.init<A>(from:with:)(a1, v16 | (((a2 & 0x101000000) != 0) << 16), a3, a4);
    v23 = v18;
    v19 = v17;
    v21 = v20;
    v22 = sub_100020B6C();
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFFFFFFFF00000000, 1, &type metadata for Data, a3, v22, a4);
    result = v24;
    *a5 = v14;
    *(a5 + 8) = v15;
    *(a5 + 16) = v19;
    *(a5 + 24) = v21;
    *(a5 + 32) = v23;
    *(a5 + 40) = v24;
  }

  return result;
}

uint64_t static PPM_0_2_1.InputShareAAD.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a2[4];
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[2], a1[3], a2[2], a2[3]) & 1) == 0 || v4 != v5)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a1[6];
  v8 = a2[5];
  v9 = a2[6];

  return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v6, v7, v8, v9);
}

uint64_t sub_100042404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = *(v4 + 6);
  return sub_1000432B0(a1, a3, a4);
}

double sub_100042450@<D0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v13 = *(a2 + 4);
  *&result = PPM_0_2_1.InputShareAAD.init<A>(from:with:)(a1, v7 | (v13 << 32), a3, a4, v10).n128_u64[0];
  if (!v5)
  {
    v9 = v10[1];
    *a5 = v10[0];
    *(a5 + 16) = v9;
    result = *&v11;
    *(a5 + 32) = v11;
    *(a5 + 48) = v12;
  }

  return result;
}

uint64_t sub_1000424B4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v2, v3, v7, v8) & 1) == 0 || v5 != v10)
  {
    return 0;
  }

  return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v4, v6, v9, v11);
}

uint64_t sub_100042580@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
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
    v10 = sub_100050220();
    if (v10)
    {
      v11 = sub_100050240();
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
      result = sub_100050230();
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
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
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
  v10 = sub_100050220();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_100050240();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_100050230();
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

unint64_t sub_100042850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100013EC0(&qword_10007E0D8, &qword_100058AC0);
    v3 = sub_100050940();
    for (i = (a1 + 32); ; ++i)
    {
      v5 = *i;
      result = sub_100018110();
      if (v7)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + 8 * result) = v5;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v10;
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

unint64_t sub_100042948(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100013EC0(a2, a3);
    v7 = sub_100050940();
    for (i = (a1 + 36); ; i = (i + 12))
    {
      v9 = *(i - 4);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
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

uint64_t _s19DPSubmissionService9PPM_0_2_1V6ReportV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if ((v6 & 1) != 0 && v4 == v5)
  {
    if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0)
    {
      return 0;
    }

    if (*(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }

    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = *(a2 + 64);
    v11 = *(a2 + 72);
    if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 48), *(a1 + 56), *(a2 + 48), *(a2 + 56)) & 1) == 0)
    {
      return 0;
    }

    if (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v8, v9, v10, v11) & 1) != 0 && *(a1 + 80) == *(a2 + 80) && (v12 = *(a1 + 104), v13 = *(a1 + 112), v14 = *(a2 + 104), v15 = *(a2 + 112), (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 88), *(a1 + 96), *(a2 + 88), *(a2 + 96))) && (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v12, v13, v14, v15))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100042B28(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_17:
      __break(1u);
      return;
    }

    v5 = HIDWORD(a2) - a2;
  }

LABEL_11:
  sub_100038F60(v5, 0xFFFF00000000uLL);
  if (v3)
  {
    return;
  }

  v8 = sub_10003915C(0xFFFF00000000);
  if (__OFADD__(v5, v8))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(v5 + v8, 2))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

void sub_100042BC8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = v2 + 16;
  v2 = *(v2 + 16);
  v6 = *(v7 + 8);
  v5 = v6 - v2;
  if (__OFSUB__(v6, v2))
  {
    __break(1u);
LABEL_8:
    v8 = __OFSUB__(HIDWORD(v2), v2);
    v9 = HIDWORD(v2) - v2;
    if (v8)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v5 = v9;
  }

LABEL_11:
  sub_100038F60(v5, 0x2000000020uLL);
  if (v1)
  {
    return;
  }

  v10 = sub_10003915C(0x2000000020);
  v11 = v5 + v10;
  if (__OFADD__(v5, v10))
  {
    __break(1u);
    goto LABEL_42;
  }

  v12 = v0[2];
  v13 = v0[3];
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = BYTE6(v13);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v14 != 2)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v17 = v12 + 16;
  v12 = *(v12 + 16);
  v16 = *(v17 + 8);
  v15 = v16 - v12;
  if (__OFSUB__(v16, v12))
  {
    __break(1u);
LABEL_20:
    v8 = __OFSUB__(HIDWORD(v12), v12);
    v18 = HIDWORD(v12) - v12;
    if (v8)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v15 = v18;
  }

LABEL_23:
  sub_100038F60(v15, 0x1000000010uLL);
  v19 = sub_10003915C(0x1000000010);
  v20 = v15 + v19;
  if (__OFADD__(v15, v19))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = __OFADD__(v20, 8);
  v21 = v20 + 8;
  if (v8)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v8 = __OFADD__(v11, v21);
  v22 = v11 + v21;
  if (v8)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v23 = v0[5];
  v24 = v0[6];
  v25 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v25 != 2)
    {
      v26 = 0;
      goto LABEL_36;
    }

    v28 = v23 + 16;
    v23 = *(v23 + 16);
    v27 = *(v28 + 8);
    v26 = v27 - v23;
    if (!__OFSUB__(v27, v23))
    {
      goto LABEL_36;
    }

    __break(1u);
  }

  else if (!v25)
  {
    v26 = BYTE6(v24);
    goto LABEL_36;
  }

  v8 = __OFSUB__(HIDWORD(v23), v23);
  v29 = HIDWORD(v23) - v23;
  if (v8)
  {
LABEL_49:
    __break(1u);
    return;
  }

  v26 = v29;
LABEL_36:
  sub_100038F60(v26, 0xFFFFFFFF00000000);
  v30 = sub_10003915C(0xFFFFFFFF00000000);
  if (__OFADD__(v26, v30))
  {
    goto LABEL_47;
  }

  if (__OFADD__(v22, v26 + v30))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }
}

void sub_100042D8C()
{
  v2 = v0[1];
  v3 = v0[2];
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = v2 + 16;
  v2 = *(v2 + 16);
  v6 = *(v7 + 8);
  v5 = v6 - v2;
  if (__OFSUB__(v6, v2))
  {
    __break(1u);
LABEL_8:
    v8 = __OFSUB__(HIDWORD(v2), v2);
    v9 = HIDWORD(v2) - v2;
    if (v8)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v5 = v9;
  }

LABEL_11:
  sub_100038F60(v5, 0xFFFF00000001uLL);
  if (v1)
  {
    return;
  }

  v10 = sub_10003915C(0xFFFF00000001);
  v11 = v5 + v10;
  if (__OFADD__(v5, v10))
  {
    __break(1u);
    goto LABEL_30;
  }

  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = v0[3];
  v14 = v0[4];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v16 = 0;
      goto LABEL_24;
    }

    v18 = v13 + 16;
    v13 = *(v13 + 16);
    v17 = *(v18 + 8);
    v16 = v17 - v13;
    if (!__OFSUB__(v17, v13))
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v14);
    goto LABEL_24;
  }

  v8 = __OFSUB__(HIDWORD(v13), v13);
  v19 = HIDWORD(v13) - v13;
  if (v8)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_24:
  sub_100038F60(v16, 0xFFFFFFFF00000001);
  v20 = sub_10003915C(0xFFFFFFFF00000001);
  if (__OFADD__(v16, v20))
  {
    goto LABEL_32;
  }

  if (__OFADD__(v12, v16 + v20))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }
}

void sub_100042ED0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = v2 + 16;
  v2 = *(v2 + 16);
  v6 = *(v7 + 8);
  v5 = v6 - v2;
  if (__OFSUB__(v6, v2))
  {
    __break(1u);
LABEL_8:
    v8 = __OFSUB__(HIDWORD(v2), v2);
    v9 = HIDWORD(v2) - v2;
    if (v8)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v5 = v9;
  }

LABEL_11:
  sub_100038F60(v5, 0x1000000010uLL);
  if (v1)
  {
    return;
  }

  v10 = sub_10003915C(0x1000000010);
  v11 = v5 + v10;
  if (__OFADD__(v5, v10))
  {
    goto LABEL_34;
  }

  v12 = v11 + 8;
  if (__OFADD__(v11, 8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v13 = v0[3];
  v14 = v0[4];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v16 = 0;
      goto LABEL_24;
    }

    v18 = v13 + 16;
    v13 = *(v13 + 16);
    v17 = *(v18 + 8);
    v16 = v17 - v13;
    if (!__OFSUB__(v17, v13))
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v14);
    goto LABEL_24;
  }

  v8 = __OFSUB__(HIDWORD(v13), v13);
  v19 = HIDWORD(v13) - v13;
  if (v8)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_24:
  sub_100038F60(v16, 0xFFFFFFFF00000000);
  v20 = sub_10003915C(0xFFFFFFFF00000000);
  v21 = v16 + v20;
  if (__OFADD__(v16, v20))
  {
    goto LABEL_37;
  }

  v22 = v12 + v21;
  if (__OFADD__(v12, v21))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v29 = *(v0 + 5);
  v30 = *(v0 + 7);
  v31 = v0[9];
  sub_100042D8C();
  v8 = __OFADD__(v22, v23);
  v24 = v22 + v23;
  if (v8)
  {
    goto LABEL_40;
  }

  v26 = *(v0 + 5);
  v27 = *(v0 + 6);
  v28 = v0[14];
  sub_100042D8C();
  if (__OFADD__(v24, v25))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }
}

uint64_t sub_100043068(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_10001414C(a2, a3);
  sub_100020B6C();
  RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFFFF00000001uLL, 1, &type metadata for Data);
  return sub_100013E20(a2, a3);
}

uint64_t sub_100043100(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10001F214();
  result = sub_10001E960(a1, &type metadata for UInt8, a5, v12, a6);
  if (!v6)
  {
    v14 = sub_10001F1C0();
    sub_10001E960(a1, &type metadata for UInt16, a5, v14, a6);
    sub_10001E960(a1, &type metadata for UInt16, a5, v14, a6);
    sub_10001E960(a1, &type metadata for UInt16, a5, v14, a6);
    return sub_100043068(a1, a3, a4);
  }

  return result;
}

uint64_t sub_100043234(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_10003DDC4(a1, a2, a3, a5, a6);
  if (!v6)
  {
    v11 = sub_10001F118();
    return sub_10001E960(a1, &type metadata for UInt64, a5, v11, a6);
  }

  return result;
}

uint64_t sub_1000432B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003DDA8(a1, *v3, *(v3 + 8), a2, a3);
  if (!v4)
  {
    sub_100043234(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), a2, a3);
    v10 = *(v3 + 40);
    v11 = v10;
    sub_100021204(&v11, &v9);
    sub_100020B6C();
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFFFFFFFF00000000, 1, &type metadata for Data);
    return sub_100013E20(v10, *(&v10 + 1));
  }

  return result;
}

uint64_t sub_10004337C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v11) = *v3;
  v8 = sub_10001F214();
  result = sub_10001E960(a1, &type metadata for UInt8, a2, v8, a3);
  if (!v4)
  {
    v13 = *(v3 + 8);
    v11 = *(v3 + 8);
    sub_100021204(&v13, v10);
    sub_100020B6C();
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFFFF00000001uLL, 1, &type metadata for Data);
    sub_100013E20(v11, *(&v11 + 1));
    v11 = *(v3 + 24);
    v12 = v11;
    sub_100021204(&v12, v10);
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFFFFFFFF00000001, 1, &type metadata for Data);
    return sub_100013E20(v11, *(&v11 + 1));
  }

  return result;
}

uint64_t sub_1000434C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043234(a1, *v3, *(v3 + 8), *(v3 + 16), a2, a3);
  if (!v4)
  {
    v19 = *(v3 + 24);
    v12 = *(v3 + 24);
    sub_100021204(&v19, v11);
    sub_100020B6C();
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFFFFFFFF00000000, 1, &type metadata for Data);
    sub_100013E20(v12, *(&v12 + 1));
    v9 = *(v3 + 56);
    v16 = *(v3 + 40);
    v17 = v9;
    v18 = *(v3 + 72);
    sub_10004337C(a1, a2, a3);
    v10 = *(v3 + 96);
    v13 = *(v3 + 80);
    v14 = v10;
    v15 = *(v3 + 112);
    return sub_10004337C(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1000435D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000315F8();
  result = sub_10003153C(a1, &type metadata for PPM_0_2_1.ExtensionType, a5, v12, a6);
  if (!v6)
  {
    sub_10001414C(a3, a4);
    sub_100020B6C();
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFFFF00000000uLL, 1, &type metadata for Data);
    return sub_100013E20(a3, a4);
  }

  return result;
}

uint64_t sub_1000436AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_100020B6C();
  result = RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFFFF00000001, 1, &type metadata for Data, a2, v7, a3);
  if (!v3)
  {
    return v9;
  }

  return result;
}

unint64_t sub_10004372C()
{
  result = qword_10007DC60;
  if (!qword_10007DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DC60);
  }

  return result;
}

unint64_t sub_1000437E8()
{
  result = qword_10007DC78;
  if (!qword_10007DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DC78);
  }

  return result;
}

unint64_t sub_10004383C(uint64_t a1)
{
  result = sub_100043864();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100043864()
{
  result = qword_10007DCD8;
  if (!qword_10007DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DCD8);
  }

  return result;
}

unint64_t sub_1000438B8(uint64_t a1)
{
  result = sub_1000438E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000438E0()
{
  result = qword_10007DD38;
  if (!qword_10007DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DD38);
  }

  return result;
}

unint64_t sub_100043934(uint64_t a1)
{
  result = sub_10004395C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004395C()
{
  result = qword_10007DD98;
  if (!qword_10007DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DD98);
  }

  return result;
}

unint64_t sub_1000439B0(uint64_t a1)
{
  result = sub_1000439D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000439D8()
{
  result = qword_10007DDF8;
  if (!qword_10007DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DDF8);
  }

  return result;
}

unint64_t sub_100043A30()
{
  result = qword_10007DE00;
  if (!qword_10007DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DE00);
  }

  return result;
}

uint64_t sub_100043AC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001C614(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100043B14()
{
  result = qword_10007DE18;
  if (!qword_10007DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DE18);
  }

  return result;
}

unint64_t sub_100043B6C()
{
  result = qword_10007DE20;
  if (!qword_10007DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DE20);
  }

  return result;
}

unint64_t sub_100043BC0(uint64_t a1)
{
  result = sub_100043BE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100043BE8()
{
  result = qword_10007DE88;
  if (!qword_10007DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DE88);
  }

  return result;
}

unint64_t sub_100043C3C(uint64_t a1)
{
  result = sub_100043C64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100043C64()
{
  result = qword_10007DE90;
  if (!qword_10007DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DE90);
  }

  return result;
}

unint64_t sub_100043CB8(uint64_t a1)
{
  result = sub_100043CE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100043CE0()
{
  result = qword_10007DEF0;
  if (!qword_10007DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DEF0);
  }

  return result;
}

unint64_t sub_100043D34(uint64_t a1)
{
  result = sub_100043D5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100043D5C()
{
  result = qword_10007DF50;
  if (!qword_10007DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DF50);
  }

  return result;
}

unint64_t sub_100043DB0(uint64_t a1)
{
  result = sub_100043DD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100043DD8()
{
  result = qword_10007DFB0;
  if (!qword_10007DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007DFB0);
  }

  return result;
}

unint64_t sub_100043E2C(uint64_t a1)
{
  result = sub_100043E54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100043E54()
{
  result = qword_10007E010;
  if (!qword_10007E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007E010);
  }

  return result;
}

unint64_t sub_100043EA8(uint64_t a1)
{
  result = sub_100043ED0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100043ED0()
{
  result = qword_10007E070;
  if (!qword_10007E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007E070);
  }

  return result;
}

unint64_t sub_100043F24(uint64_t a1)
{
  result = sub_100043F4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100043F4C()
{
  result = qword_10007E0D0;
  if (!qword_10007E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007E0D0);
  }

  return result;
}

__n128 sub_100043FB0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s10HPKEConfigV15CodingParameterVwCP(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s10HPKEConfigV15CodingParameterVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10HPKEConfigV15CodingParameterVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

__n128 sub_10004405C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100044070(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000440C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t _s13ExtensionTypeV9EnumValueOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s13ExtensionTypeV9EnumValueOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_10004422C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100044280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1000442F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100044344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_1000443BC(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000443E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 120))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10004443C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

_DWORD *_s6ReportV15CodingParameterVwCP(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t _s6ReportV15CodingParameterVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 7))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s6ReportV15CodingParameterVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 7) = v3;
  return result;
}

uint64_t sub_10004452C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100044574(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000445D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 56))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100044628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

id _DPBAACertificateChain.__allocating_init(intermediateCertificate:leafCertificate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____DPBAACertificateChain_intermediateCertificate];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____DPBAACertificateChain_leafCertificate];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, "init");
}

id _DPBAACertificateChain.init(intermediateCertificate:leafCertificate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____DPBAACertificateChain_intermediateCertificate];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____DPBAACertificateChain_leafCertificate];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for _DPBAACertificateChain();
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_10004485C(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____DPBAACertificateChain_intermediateCertificate);
  v5 = *(a2 + OBJC_IVAR____DPBAACertificateChain_intermediateCertificate + 8);
  v6 = *a1;
  v7 = a1[1];
  sub_10001414C(v4, v5);
  sub_100013E20(v6, v7);
  *a1 = v4;
  a1[1] = v5;
  v8 = a2 + OBJC_IVAR____DPBAACertificateChain_leafCertificate;
  v9 = *(a2 + OBJC_IVAR____DPBAACertificateChain_leafCertificate);
  v10 = *(v8 + 8);
  v11 = a1[2];
  v12 = a1[3];
  sub_10001414C(v9, v10);
  result = sub_100013E20(v11, v12);
  a1[2] = v9;
  a1[3] = v10;
  return result;
}

id _DPBAACertificateChain.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _DPBAACertificateChain();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BaaSignedDonation.baaCertificateChain.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BaaSignedDonation(0) + 28);
  sub_100014204(v1 + v3, &qword_10007C6E0, qword_100055798);
  sub_100044CB0(a1, v1 + v3, type metadata accessor for BaaCertificateChain);
  v4 = type metadata accessor for BaaCertificateChain(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t ProtectedDonation.baaSignedDonationEnvelope.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtectedDonation(0) + 20);
  sub_100014204(v1 + v3, &qword_10007C6D0, &qword_100055790);
  v4 = sub_100050390();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t DediscoDonation.algorithmParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DediscoDonation(0) + 52);
  sub_100014204(v1 + v3, &qword_10007D618, &qword_100056ED8);
  sub_100044CB0(a1, v1 + v3, type metadata accessor for DediscoDonation.AlgorithmParameters);
  v4 = type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_100044CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t LoadTestExperimentalSetup.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for LoadTestExperimentalSetup(0) + 28);
  return _s19DPSubmissionService5EmptyVACycfC_0();
}

uint64_t ProtectedDonation.baaSignedDonationEnvelope.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100013EC0(&qword_10007C6D0, &qword_100055790);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtectedDonation(0);
  sub_100045FB4(v1 + *(v7 + 20), v6, &qword_10007C6D0, &qword_100055790);
  v8 = sub_100050390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_100050380();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_100014204(v6, &qword_10007C6D0, &qword_100055790);
  }

  return result;
}

void (*ProtectedDonation.baaSignedDonationEnvelope.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100013EC0(&qword_10007C6D0, &qword_100055790) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_100050390();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for ProtectedDonation(0) + 20);
  *(v4 + 12) = v14;
  sub_100045FB4(v1 + v14, v7, &qword_10007C6D0, &qword_100055790);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100050380();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100014204(v7, &qword_10007C6D0, &qword_100055790);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1000451F4;
}

void sub_1000451F4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_100014204(v9 + v3, &qword_10007C6D0, &qword_100055790);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_100014204(v9 + v3, &qword_10007C6D0, &qword_100055790);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL ProtectedDonation.hasBaaSignedDonationEnvelope.getter()
{
  v1 = sub_100013EC0(&qword_10007C6D0, &qword_100055790);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ProtectedDonation(0);
  sub_100045FB4(v0 + *(v5 + 20), v4, &qword_10007C6D0, &qword_100055790);
  v6 = sub_100050390();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_100014204(v4, &qword_10007C6D0, &qword_100055790);
  return v7;
}

Swift::Void __swiftcall ProtectedDonation.clearBaaSignedDonationEnvelope()()
{
  v1 = *(type metadata accessor for ProtectedDonation(0) + 20);
  sub_100014204(v0 + v1, &qword_10007C6D0, &qword_100055790);
  v2 = sub_100050390();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t ProtectedDonation.init()@<X0>(uint64_t a1@<X8>)
{
  _s19DPSubmissionService5EmptyVACycfC_0();
  v2 = *(type metadata accessor for ProtectedDonation(0) + 20);
  v3 = sub_100050390();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t BaaSignedDonation.serialisedDediscoDonation.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100013E20(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t BaaSignedDonation.baaCertificateChain.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_100013EC0(&qword_10007C6E0, qword_100055798);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for BaaSignedDonation(0);
  sub_100045FB4(v1 + *(v7 + 28), v6, &qword_10007C6E0, qword_100055798);
  v8 = type metadata accessor for BaaCertificateChain(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_100044CB0(v6, a1, type metadata accessor for BaaCertificateChain);
  }

  *a1 = xmmword_1000557D0;
  a1[1] = xmmword_1000557D0;
  v10 = a1 + *(v8 + 24);
  _s19DPSubmissionService5EmptyVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_100014204(v6, &qword_10007C6E0, qword_100055798);
  }

  return result;
}

uint64_t BaaCertificateChain.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1000557D0;
  a1[1] = xmmword_1000557D0;
  v1 = a1 + *(type metadata accessor for BaaCertificateChain(0) + 24);
  return _s19DPSubmissionService5EmptyVACycfC_0();
}

void (*BaaSignedDonation.baaCertificateChain.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100013EC0(&qword_10007C6E0, qword_100055798) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for BaaCertificateChain(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for BaaSignedDonation(0) + 28);
  *(v4 + 12) = v14;
  sub_100045FB4(v1 + v14, v7, &qword_10007C6E0, qword_100055798);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_1000557D0;
    v13[1] = xmmword_1000557D0;
    v16 = v13 + *(v8 + 24);
    _s19DPSubmissionService5EmptyVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100014204(v7, &qword_10007C6E0, qword_100055798);
    }
  }

  else
  {
    sub_100044CB0(v7, v13, type metadata accessor for BaaCertificateChain);
  }

  return sub_100045978;
}

BOOL BaaSignedDonation.hasBaaCertificateChain.getter()
{
  v1 = sub_100013EC0(&qword_10007C6E0, qword_100055798);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for BaaSignedDonation(0);
  sub_100045FB4(v0 + *(v5 + 28), v4, &qword_10007C6E0, qword_100055798);
  v6 = type metadata accessor for BaaCertificateChain(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_100014204(v4, &qword_10007C6E0, qword_100055798);
  return v7;
}

Swift::Void __swiftcall BaaSignedDonation.clearBaaCertificateChain()()
{
  v1 = *(type metadata accessor for BaaSignedDonation(0) + 28);
  sub_100014204(v0 + v1, &qword_10007C6E0, qword_100055798);
  v2 = type metadata accessor for BaaCertificateChain(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t BaaSignedDonation.init()@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_1000557D0;
  *(a1 + 1) = xmmword_1000557D0;
  v2 = type metadata accessor for BaaSignedDonation(0);
  v3 = &a1[*(v2 + 24)];
  _s19DPSubmissionService5EmptyVACycfC_0();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for BaaCertificateChain(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_100045C44@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100045CE0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t DediscoDonation.algorithm.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DediscoDonation.algorithm.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DediscoDonation.algorithmParameters.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_100013EC0(&qword_10007D618, &qword_100056ED8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for DediscoDonation(0);
  sub_100045FB4(v1 + *(v7 + 52), v6, &qword_10007D618, &qword_100056ED8);
  v8 = type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_100044CB0(v6, a1, type metadata accessor for DediscoDonation.AlgorithmParameters);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xC000000000000000;
  v10 = a1 + *(v8 + 28);
  _s19DPSubmissionService5EmptyVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_100014204(v6, &qword_10007D618, &qword_100056ED8);
  }

  return result;
}

uint64_t DediscoDonation.AlgorithmParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xC000000000000000;
  v1 = a1 + *(type metadata accessor for DediscoDonation.AlgorithmParameters(0) + 28);
  return _s19DPSubmissionService5EmptyVACycfC_0();
}

uint64_t sub_100045FB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100013EC0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void (*DediscoDonation.algorithmParameters.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100013EC0(&qword_10007D618, &qword_100056ED8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for DediscoDonation(0) + 52);
  *(v4 + 12) = v14;
  sub_100045FB4(v1 + v14, v7, &qword_10007D618, &qword_100056ED8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = 0xC000000000000000;
    v16 = v13 + *(v8 + 28);
    _s19DPSubmissionService5EmptyVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100014204(v7, &qword_10007D618, &qword_100056ED8);
    }
  }

  else
  {
    sub_100044CB0(v7, v13, type metadata accessor for DediscoDonation.AlgorithmParameters);
  }

  return sub_100046238;
}

void sub_100046260(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_100046398(v11, v10, a5);
    sub_100014204(v14 + v9, a3, a4);
    sub_100044CB0(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_100046400(v11, a5);
  }

  else
  {
    sub_100014204(v14 + v9, a3, a4);
    sub_100044CB0(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t sub_100046398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100046400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL DediscoDonation.hasAlgorithmParameters.getter()
{
  v1 = sub_100013EC0(&qword_10007D618, &qword_100056ED8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for DediscoDonation(0);
  sub_100045FB4(v0 + *(v5 + 52), v4, &qword_10007D618, &qword_100056ED8);
  v6 = type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_100014204(v4, &qword_10007D618, &qword_100056ED8);
  return v7;
}

Swift::Void __swiftcall DediscoDonation.clearAlgorithmParameters()()
{
  v1 = *(type metadata accessor for DediscoDonation(0) + 52);
  sub_100014204(v0 + v1, &qword_10007D618, &qword_100056ED8);
  v2 = type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t DediscoDonation.fsEncryptedShare.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100013E20(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DediscoDonation.dsEncryptedShare.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100013E20(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t DediscoDonation.fsPublicKey.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t DediscoDonation.fsPublicKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t DediscoDonation.dsPublicKey.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t DediscoDonation.dsPublicKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t DediscoDonation.versionHash.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t DediscoDonation.versionHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t DediscoDonation.report.getter()
{
  v1 = *(v0 + 112);
  sub_10001414C(v1, *(v0 + 120));
  return v1;
}

uint64_t DediscoDonation.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100013E20(*(v2 + 112), *(v2 + 120));
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t DediscoDonation.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DediscoDonation(0) + 48);
  v4 = sub_1000503E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DediscoDonation.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DediscoDonation(0) + 48);
  v4 = sub_1000503E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DediscoDonation.AlgorithmParameters.otherParams.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100013E20(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_100046A5C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100046AF8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t DediscoDonation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1000557D0;
  *(a1 + 48) = xmmword_1000557D0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = xmmword_1000557D0;
  v2 = type metadata accessor for DediscoDonation(0);
  v3 = a1 + *(v2 + 48);
  _s19DPSubmissionService5EmptyVACycfC_0();
  v4 = *(v2 + 52);
  v5 = type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t CollectionID.collectionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CollectionID.collectionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CollectionID.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionID(0) + 20);
  v4 = sub_1000503E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionID.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionID(0) + 20);
  v4 = sub_1000503E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionID.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for CollectionID(0) + 20);
  return _s19DPSubmissionService5EmptyVACycfC_0();
}

uint64_t _s19DPSubmissionService17ProtectedDonationV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000503E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s19DPSubmissionService17ProtectedDonationV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_1000503E0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_100046F6C()
{
  v0 = sub_100050590();
  sub_1000142C8(v0, static LoadTestExperimentalSetup._protobuf_nameMap);
  sub_100012CA8(v0, static LoadTestExperimentalSetup._protobuf_nameMap);
  sub_100013EC0(&qword_10007C7F8, &unk_1000559D0);
  v1 = (sub_100013EC0(&qword_10007C800, &qword_100059780) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100058B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parallelism";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100050560();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "payload_size";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "donations";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_100050570();
}

uint64_t LoadTestExperimentalSetup.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100050420();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_100050440();
    }
  }

  return result;
}

uint64_t LoadTestExperimentalSetup.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_100050500(), !v1))
  {
    if (!v0[1] || (result = sub_100050500(), !v1))
    {
      if (!v0[2] || (result = sub_100050500(), !v1))
      {
        v3 = v0 + *(type metadata accessor for LoadTestExperimentalSetup(0) + 28);
        return sub_1000503C0();
      }
    }
  }

  return result;
}

uint64_t sub_100047370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 28);
  return _s19DPSubmissionService5EmptyVACycfC_0();
}

uint64_t (*sub_100047398(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = PPM_0_2_1.Extension.extensionType.getter;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1000473EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B574(&qword_10007E728, type metadata accessor for LoadTestExperimentalSetup);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004748C(uint64_t a1)
{
  v2 = sub_10004B574(&qword_10007E188, type metadata accessor for LoadTestExperimentalSetup);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000474F8()
{
  sub_10004B574(&qword_10007E188, type metadata accessor for LoadTestExperimentalSetup);

  return sub_1000504D0();
}

uint64_t ProtectedDonation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100050420();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100047670();
    }
  }

  return result;
}

uint64_t sub_100047670()
{
  v0 = *(type metadata accessor for ProtectedDonation(0) + 20);
  sub_100050390();
  sub_10004B574(&qword_10007C6C8, &type metadata accessor for Ckcode_ProtectedEnvelope);
  return sub_100050490();
}

uint64_t ProtectedDonation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004777C(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1000503C0();
  }

  return result;
}

uint64_t sub_10004777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100013EC0(&qword_10007C6D0, &qword_100055790);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = sub_100050390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtectedDonation(0);
  sub_100045FB4(a1 + *(v14 + 20), v8, &qword_10007C6D0, &qword_100055790);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100014204(v8, &qword_10007C6D0, &qword_100055790);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_10004B574(&qword_10007C6C8, &type metadata accessor for Ckcode_ProtectedEnvelope);
  sub_100050550();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000479E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s19DPSubmissionService5EmptyVACycfC_0();
  v4 = *(a1 + 20);
  v5 = sub_100050390();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_100047A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B574(&qword_10007E720, type metadata accessor for ProtectedDonation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100047B2C(uint64_t a1)
{
  v2 = sub_10004B574(&qword_10007C6C0, type metadata accessor for ProtectedDonation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100047B9C()
{
  sub_10004B574(&qword_10007C6C0, type metadata accessor for ProtectedDonation);

  return sub_1000504D0();
}

uint64_t sub_100047C44()
{
  v0 = sub_100050590();
  sub_1000142C8(v0, static BaaSignedDonation._protobuf_nameMap);
  sub_100012CA8(v0, static BaaSignedDonation._protobuf_nameMap);
  sub_100013EC0(&qword_10007C7F8, &unk_1000559D0);
  v1 = (sub_100013EC0(&qword_10007C800, &qword_100059780) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100058B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serialised_dedisco_donation";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100050560();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "serialised_dedisco_donation_signature";
  *(v10 + 1) = 37;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "baa_certificate_chain";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_100050570();
}

uint64_t BaaSignedDonation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100050420();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_100047F40();
    }

    else if (result == 2 || result == 1)
    {
      sub_100050430();
    }
  }

  return result;
}

uint64_t sub_100047F40()
{
  v0 = *(type metadata accessor for BaaSignedDonation(0) + 28);
  type metadata accessor for BaaCertificateChain(0);
  sub_10004B574(&qword_10007C6D8, type metadata accessor for BaaCertificateChain);
  return sub_100050490();
}

uint64_t BaaSignedDonation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_1000504F0();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v14 = v3[2];
  v15 = v3[3];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_19;
    }

    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
LABEL_17:
    if (v17 == v18)
    {
      goto LABEL_19;
    }

LABEL_18:
    result = sub_1000504F0();
    if (v4)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v16)
  {
    v17 = v14;
    v18 = v14 >> 32;
    goto LABEL_17;
  }

  if ((v15 & 0xFF000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  result = sub_100048120(v3, a1, a2, a3);
  if (!v4)
  {
    v19 = v3 + *(type metadata accessor for BaaSignedDonation(0) + 24);
    return sub_1000503C0();
  }

  return result;
}