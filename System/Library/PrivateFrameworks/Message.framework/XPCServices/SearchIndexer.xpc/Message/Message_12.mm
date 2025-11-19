unint64_t sub_1000CAEA8(unint64_t result, char a2, uint64_t *a3)
{
  v51 = a3;
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    while (1)
    {
      *&v50[25] = *(v5 + 89);
      v13 = v5[5];
      *v50 = v5[4];
      *&v50[16] = v13;
      v14 = v5[3];
      v48 = v5[2];
      v49 = v14;
      v15 = v5[1];
      v46 = *v5;
      v47 = v15;
      v16 = v50[40];
      v44 = *&v50[32];
      v43 = *&v50[16];
      v42 = *v50;
      v40 = *(&v48 + 1);
      v41 = v49;
      v17 = *(&v15 + 1);
      v18 = v48;
      v19 = v15;
      v20 = DWORD2(v46);
      v21 = v46;
      result = sub_10000E268(&v46, v45, &qword_1005CF730, &qword_1004D2B98);
      if (!v21)
      {
        return result;
      }

      v39 = v16;
      v38 = v3;
      v22 = *v51;
      result = sub_100063B5C(v21, v20);
      v24 = v22[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }

      v28 = v23;
      if (v22[3] < v27)
      {
        break;
      }

      if (a2)
      {
        goto LABEL_11;
      }

      v37 = result;
      sub_10013B574();
      result = v37;
      if (v28)
      {
LABEL_3:
        v6 = *v51;
        v7 = result;

        v8 = v6[7] + 96 * v7;
        v9 = *(v8 + 16);
        v46 = *v8;
        v47 = v9;
        v11 = *(v8 + 48);
        v10 = *(v8 + 64);
        v12 = *(v8 + 32);
        *&v50[9] = *(v8 + 73);
        v49 = v11;
        *v50 = v10;
        v48 = v12;
        *v8 = v19;
        *(v8 + 8) = v17;
        *(v8 + 16) = v18;
        *(v8 + 24) = v40;
        *(v8 + 32) = v41;
        *(v8 + 48) = v42;
        *(v8 + 64) = v43;
        *(v8 + 80) = v44;
        *(v8 + 88) = v39;
        result = sub_10009A040(&v46);
        goto LABEL_4;
      }

LABEL_12:
      v32 = *v51;
      v32[(result >> 6) + 8] |= 1 << result;
      v33 = v32[6] + 16 * result;
      *v33 = v21;
      *(v33 + 8) = v20;
      v34 = v32[7] + 96 * result;
      *v34 = v19;
      *(v34 + 8) = v17;
      *(v34 + 16) = v18;
      *(v34 + 24) = v40;
      *(v34 + 32) = v41;
      *(v34 + 48) = v42;
      *(v34 + 64) = v43;
      *(v34 + 80) = v44;
      *(v34 + 88) = v39;
      v35 = v32[2];
      v26 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v32[2] = v36;
LABEL_4:
      v5 += 7;
      a2 = 1;
      v3 = v38 - 1;
      if (v38 == 1)
      {
        return result;
      }
    }

    v29 = v51;
    sub_1000C522C(v27, a2 & 1);
    v30 = *v29;
    result = sub_100063B5C(v21, v20);
    if ((v28 & 1) != (v31 & 1))
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v28)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  return result;
}

unint64_t sub_1000CB144(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, void *a4)
{
  v4 = a4;
  v6 = a4[2];
  v98 = a4 + 2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141AFC(v6);
    v6 = result;
  }

  v8 = 0;
  v9 = *(a1 + 16);
  v68 = a1 + 32;
  v69 = v9;
  v66 = v4;
  while (1)
  {
    while (1)
    {
      *v98 = v6;
      if (v8 == v9)
      {
        v8 = v9;
        sub_1000CB780(v96);
        v10 = *v96;
        v11 = *&v96[8];
        *&v97[128] = *&v96[140];
        *&v97[144] = *&v96[156];
        *&v97[160] = *&v96[172];
        *&v97[176] = *&v96[188];
        *&v97[64] = *&v96[76];
        *&v97[80] = *&v96[92];
        *&v97[96] = *&v96[108];
        *&v97[112] = *&v96[124];
        *v97 = *&v96[12];
        *&v97[16] = *&v96[28];
        v12 = *&v96[44];
        v13 = *&v96[60];
      }

      else
      {
        if (v8 >= v9)
        {
          goto LABEL_36;
        }

        v14 = (v68 + 192 * v8);
        v15 = v14[9];
        v82[8] = v14[8];
        v82[9] = v15;
        v16 = v14[11];
        v82[10] = v14[10];
        v82[11] = v16;
        v17 = v14[5];
        v82[4] = v14[4];
        v82[5] = v17;
        v18 = v14[7];
        v82[6] = v14[6];
        v82[7] = v18;
        v19 = v14[1];
        v82[0] = *v14;
        v82[1] = v19;
        v20 = v14[3];
        v82[2] = v14[2];
        v82[3] = v20;
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_37;
        }

        v22 = v14[9];
        v78 = v14[8];
        v79 = v22;
        v23 = v14[11];
        v80 = v14[10];
        v81 = v23;
        v24 = v14[5];
        v74 = v14[4];
        v75 = v24;
        v25 = v14[7];
        v76 = v14[6];
        v77 = v25;
        v26 = v14[1];
        v70 = *v14;
        v71 = v26;
        v27 = v14[3];
        v72 = v14[2];
        v73 = v27;
        sub_10000E268(v82, v96, &qword_1005CF728, &qword_1004D2B90);
        a2(&v83, &v70);
        *&v95[128] = v91;
        *&v95[144] = v92;
        *&v95[160] = v93;
        *&v95[176] = v94;
        *&v95[64] = v87;
        *&v95[80] = v88;
        *&v95[96] = v89;
        *&v95[112] = v90;
        *v95 = v83;
        *&v95[16] = v84;
        *&v95[32] = v85;
        *&v95[48] = v86;
        UInt32.init(_:)(v95);
        *&v96[128] = v78;
        *&v96[144] = v79;
        *&v96[160] = v80;
        *&v96[176] = v81;
        *&v96[64] = v74;
        *&v96[80] = v75;
        *&v96[96] = v76;
        *&v96[112] = v77;
        *v96 = v70;
        *&v96[16] = v71;
        *&v96[32] = v72;
        *&v96[48] = v73;
        sub_100025F40(v96, &qword_1005CF728, &qword_1004D2B90);
        v10 = *v95;
        v11 = *&v95[8];
        *&v97[128] = *&v95[140];
        *&v97[144] = *&v95[156];
        *&v97[160] = *&v95[172];
        *&v97[176] = *&v95[188];
        *&v97[64] = *&v95[76];
        *&v97[80] = *&v95[92];
        *&v97[96] = *&v95[108];
        *&v97[112] = *&v95[124];
        *v97 = *&v95[12];
        *&v97[16] = *&v95[28];
        v12 = *&v95[44];
        v13 = *&v95[60];
      }

      *&v97[32] = v12;
      *&v97[48] = v13;
      *&v96[140] = *&v97[128];
      *&v96[156] = *&v97[144];
      *&v96[172] = *&v97[160];
      *&v96[76] = *&v97[64];
      *&v96[92] = *&v97[80];
      *&v96[108] = *&v97[96];
      *&v96[124] = *&v97[112];
      *&v96[12] = *v97;
      *&v96[28] = *&v97[16];
      *&v96[44] = v12;
      *&v96[188] = *&v97[176];
      *&v96[60] = v13;
      *v96 = v10;
      *&v96[8] = v11;
      result = sub_100021348(v96);
      if (result == 1)
      {
        return result;
      }

      *&v95[64] = *&v97[68];
      *&v95[80] = *&v97[84];
      *&v95[32] = *&v97[36];
      *&v95[48] = *&v97[52];
      *&v95[144] = *&v97[148];
      *&v95[160] = *&v97[164];
      *&v95[96] = *&v97[100];
      *&v95[112] = *&v97[116];
      *&v95[128] = *&v97[132];
      *v95 = *&v97[4];
      *&v95[16] = *&v97[20];
      v28 = v4[1];
      v29 = v28 + 32;
      v30 = *(v28 + 16);
      if (!*v4)
      {
        break;
      }

      result = sub_10015C0B4(v10, v11, v29, v30, (*v4 + 16));
      if (v31)
      {
        goto LABEL_29;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

LABEL_27:
      if (result >= *(v6 + 16))
      {
        goto LABEL_35;
      }

      v38 = (v6 + 32 + 176 * result);
      sub_10000E08C(v95, v82);

      v39 = *v38;
      v40 = v38[2];
      v84 = v38[1];
      v85 = v40;
      v83 = v39;
      v41 = v38[3];
      v42 = v38[4];
      v43 = v38[6];
      v88 = v38[5];
      v89 = v43;
      v86 = v41;
      v87 = v42;
      v44 = v38[7];
      v45 = v38[8];
      v46 = v38[10];
      v92 = v38[9];
      v93 = v46;
      v90 = v44;
      v91 = v45;
      sub_10000E0E8(&v83);
      result = sub_10000E0E8(v95);
      v48 = *&v95[16];
      v47 = *&v95[32];
      *v38 = *v95;
      v38[1] = v48;
      v38[2] = v47;
      v49 = *&v95[96];
      v51 = *&v95[48];
      v50 = *&v95[64];
      v38[5] = *&v95[80];
      v38[6] = v49;
      v38[3] = v51;
      v38[4] = v50;
      v52 = *&v95[160];
      v54 = *&v95[112];
      v53 = *&v95[128];
      v38[9] = *&v95[144];
      v38[10] = v52;
      v38[7] = v54;
      v38[8] = v53;
      v9 = v69;
    }

    if (v30)
    {
      break;
    }

LABEL_29:
    sub_100187EA0(v10, v11);
    v4[2] = v6;
    v56 = *(v6 + 16);
    v55 = *(v6 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_1000919E8((v55 > 1), v56 + 1, 1);
    }

    v6 = *v98;
    *(v6 + 16) = v56 + 1;
    v57 = (v6 + 176 * v56);
    v58 = *v95;
    v59 = *&v95[32];
    v57[3] = *&v95[16];
    v57[4] = v59;
    v57[2] = v58;
    v60 = *&v95[48];
    v61 = *&v95[64];
    v62 = *&v95[96];
    v57[7] = *&v95[80];
    v57[8] = v62;
    v57[5] = v60;
    v57[6] = v61;
    v63 = *&v95[112];
    v64 = *&v95[128];
    v65 = *&v95[160];
    v57[11] = *&v95[144];
    v57[12] = v65;
    v57[9] = v63;
    v57[10] = v64;
    v4 = v66;
    v9 = v69;
  }

  result = 0;
  while (1)
  {
    v32 = (v29 + 16 * result);
    if ((v32[2] | (v32[2] << 32)) == (v11 | (v11 << 32)))
    {
      v33 = *v32;
      v34 = *(*v32 + 16);
      if (v34 == *(v10 + 16))
      {
        break;
      }
    }

LABEL_16:
    if (++result == v30)
    {
      goto LABEL_29;
    }
  }

  if (v34)
  {
    v35 = v33 == v10;
  }

  else
  {
    v35 = 1;
  }

  if (v35)
  {
    goto LABEL_27;
  }

  v36 = (v33 + 32);
  v37 = (v10 + 32);
  while (v34)
  {
    if (*v36 != *v37)
    {
      goto LABEL_16;
    }

    ++v36;
    ++v37;
    if (!--v34)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

double sub_1000CB6B4(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1000CB72C()
{
  result = qword_1005CF720;
  if (!qword_1005CF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF720);
  }

  return result;
}

double sub_1000CB780(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
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

uint64_t sub_1000CB7A0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000CB7B4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1000CB7C8(unint64_t result)
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

unint64_t sub_1000CB838(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_1000CB848(unint64_t result)
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

uint64_t sub_1000CB9E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000CBA30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000CBA94(uint64_t a1, uint64_t a2)
{
  v4 = _s19UserInitiatedSearchVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CBB00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000CBB54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100014CEC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000CBB68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100014D40(a1, a2);
  }

  return a1;
}

uint64_t sub_1000CBB98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CBC00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CBC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1000CBCD0()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 176);
    v3 = *(v0 + 184);
    v4 = *(v0 + 208);
    v5 = *(v0 + 120);
    v31 = v5;
    if (v5)
    {
      v6 = *(v0 + 24);
      v7 = *(v0 + 25);
      v8 = *(v0 + 32);
      v23 = *(v0 + 40);
      v9 = *(v0 + 56);

      sub_100020D10(v1, v2, v3, 1);

      sub_10000E268(&v31, v24, &qword_1005CF820, &qword_1004D2D00);

      v10 = sub_100166D28();
      v11 = v10;
      if (v8 == 2 || v8 == 3)
      {

        sub_100166D28();

        v12 = 0;
        LOBYTE(v6) = 1;
LABEL_6:
        v13 = *(v0 + 17);
        v14 = swift_allocObject();
        memcpy((v14 + 16), v0, 0x108uLL);
        sub_1000CECCC(v0, v24);
        v15 = sub_10012DCC8();
        *&v26 = v1;
        *(&v26 + 1) = v5;
        LOBYTE(v27) = v13;
        *(&v27 + 1) = v4;
        LOBYTE(v28) = v6 & 1;
        BYTE1(v28) = v12;
        *(&v28 + 1) = sub_1000CECC4;
        *&v29 = v14;
        *(&v29 + 1) = 7;
        v30 = v15;
        v25 = v15;
        v24[2] = v28;
        v24[3] = v29;
        v24[0] = v26;
        v24[1] = v27;
        v16 = sub_1000CC9D4();
        sub_1000CED28(&v26);
        return v16;
      }

      v18 = sub_100166E18(v10);
      if (v7)
      {
        goto LABEL_16;
      }

      if (v8 == 1)
      {
        if (!v6)
        {
LABEL_16:
          LOBYTE(v6) = v18 ^ 1;
LABEL_17:
          sub_100013AD0(&off_100598658, v9);
          sub_100166E18(v11);
          v19 = sub_100013CF4(v9);

          if (v19 & 1) == 0 && (v7)
          {
            sub_100166E18(v11);
          }

          v20 = sub_100166D28();
          sub_100166E18(v20);
          sub_100013AD0(&off_100598658, v9);
          sub_100166E18(v20);
          v21 = sub_100013CF4(v9);

          if (v21)
          {

            v12 = 0;
          }

          else if (v7)
          {
            v22 = sub_100166E18(v20);

            v12 = v22 & 1;
          }

          else
          {

            v12 = 1;
          }

          if (v23 >= 2)
          {
            if (v23 == 2)
            {
              v12 *= 2;
            }
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_6;
        }

        if (v6 == 1)
        {
          goto LABEL_17;
        }
      }

      else if (v8 || (v6 - 1) >= 2)
      {
        goto LABEL_16;
      }

      LOBYTE(v6) = 0;
      goto LABEL_17;
    }
  }

  return _swiftEmptySetSingleton;
}

void sub_1000CBFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__OFSUB__(a4, a3))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3;
  sub_1000CEBD4();
  v9 = sub_1004A5D64();
  if (v5 == a4)
  {

    return;
  }

  if (a4 < 0)
  {
    goto LABEL_15;
  }

  if (v5 >= a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    while (*(a2 + 16) >= a4)
    {
      if (a4 == v5)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 4 * v5++ + 32);
      sub_10008854C(&v8, v7);
      if (a4 == v5)
      {

        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1000CC0A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1000CEBD4();
  result = sub_1004A5D64();
  v10 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(a2 + 16))
    {
      v7 = *(a2 + 4 * v6++ + 32);
      result = sub_10008854C(&v9, v7);
      if (v5 == v6)
      {

        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = result;

    return v8;
  }

  return result;
}

uint64_t sub_1000CC1D4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(char *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = sub_1004A5D64();
  v8 = 0;
  v16 = result;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  for (i = (v9 + 63) >> 6; v11; result = a4(v15, *(*(a1 + 48) + ((v13 << 8) | (4 * v14)))))
  {
    v13 = v8;
LABEL_9:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= i)
    {

      return v16;
    }

    v11 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v11)
    {
      v8 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CC2E4(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.count.getter();
  sub_100050D64();
  v7 = sub_1004A5D64();
  v19 = v7;
  sub_10000E268(a1, v5, &unk_1005D91B0, &unk_1004CF400);
  v8 = MessageIdentifierSet.startIndex.getter(v6);
  v10 = v9;
  sub_100025F40(a1, &unk_1005D91B0, &unk_1004CF400);
  if (v8 != MessageIdentifierSet.endIndex.getter(v6) || v10 != v11)
  {
    do
    {
      do
      {
        MessageIdentifierSet.subscript.getter(v10, v6, &v18 + 4);
        v13 = HIDWORD(v18);
        v8 = MessageIdentifierSet.index(_:offsetBy:)(v8, v10, 1);
        v10 = v14;
        sub_1000899A0(&v18 + 1, v13);
      }

      while (v8 != MessageIdentifierSet.endIndex.getter(v6));
    }

    while (v10 != v15);
    v7 = v19;
  }

  v16 = &v5[*(v2 + 36)];
  *v16 = v8;
  v16[1] = v10;
  sub_100025F40(v5, &qword_1005CDA38, &unk_1004D14C0);
  return v7;
}

uint64_t sub_1000CC4A4(uint64_t (*a1)(int *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v15 = *(*(a3 + 48) + ((v13 << 8) | (4 * __clz(__rbit64(v9)))));
      result = a1(&v15);
      if (v3)
      {

        return v14 & 1;
      }

      if (result)
      {
        break;
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v14 = 1;
    return v14 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v14 = 0;
        return v14 & 1;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000CC5CC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_1000CC670(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12 = *(v7 - 1);
      v13 = v8;

      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v7 += 4;
      v10 = v6-- == 0;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_1000CC724()
{
  if ((*(v0 + 192) & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  for (i = (v1 + 32); ; i += 11)
  {
    v4 = *i;
    v5 = i[2];
    v43 = i[1];
    v44 = v5;
    v42 = v4;
    v6 = i[3];
    v7 = i[4];
    v8 = i[6];
    v47 = i[5];
    v48 = v8;
    v45 = v6;
    v46 = v7;
    v9 = i[7];
    v10 = i[8];
    v11 = i[10];
    v51 = i[9];
    v52 = v11;
    v49 = v9;
    v50 = v10;
    v12 = *(&v46 + 1);
    v13 = v46;
    v14 = *(&v45 + 1);
    v15 = DWORD2(v43);
    v16 = v43;
    v17 = v47;
    v18 = WORD6(v11);
    sub_10000E08C(&v42, v41);

    v20 = MailboxName.isInbox.getter(v19, v15);

    if (v20)
    {
      break;
    }

    sub_10000E0E8(&v42);
    if (!--v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  v22 = v18;
  v23 = *(v39 + 120);
  if (v23 && (v24 = MailboxName.inbox.unsafeMutableAddressor(), *(v23 + 16)) && (v25 = sub_100063B5C(*v24, *(v24 + 2)), (v26 & 1) != 0))
  {
    v27 = *(v23 + 56) + 72 * v25;
    v28 = *(v27 + 24);
    v38 = *(v27 + 32);
    v40 = *(v27 + 56);
    v29 = *(v27 + 64);
    v30 = *(v27 + 65);
    sub_10000C9C0(&qword_1005CF828, &unk_1004D2D68);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1004CEAA0;
    if (v30)
    {
      v32 = 0;
      v33 = 0;
      v28 = 0;
      v29 = 1;
      v34 = v12;
    }

    else
    {
      v34 = v12;
      v33 = v38;
      v32 = v40;
    }

    v41[0] = v13;
    *(v31 + 32) = v16;
    *(v31 + 40) = v15;
    *(v31 + 44) = v22;
    *(v31 + 48) = v14;
    *(v31 + 56) = v13;
    *(v31 + 64) = v34;
    *(v31 + 72) = v17;
    *(v31 + 80) = v28;
    *(v31 + 88) = v30;
    *(v31 + 92) = v33;
    *(v31 + 96) = v30;
    *(v31 + 104) = v32;
    *(v31 + 112) = v29 & 1;
    v36 = v31;
    v37 = v34;

    sub_1000CA1A0(v37);
    sub_10000E0E8(&v42);
    return v36;
  }

  else
  {
    sub_10000C9C0(&qword_1005CF828, &unk_1004D2D68);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1004CEAA0;
    v41[0] = v13;
    *(v35 + 32) = v16;
    *(v35 + 40) = v15;
    *(v35 + 44) = v22;
    *(v35 + 48) = v14;
    *(v35 + 56) = v13;
    *(v35 + 64) = v12;
    *(v35 + 72) = v17;
    *(v35 + 80) = 0;
    *(v35 + 88) = 1;
    *(v35 + 92) = 0;
    *(v35 + 96) = 1;
    *(v35 + 104) = 0;
    *(v35 + 112) = 1;

    sub_1000CA1A0(v12);
    sub_10000E0E8(&v42);
    return v35;
  }
}

uint64_t sub_1000CC9D4()
{
  if ((v0[4] & 1) == 0)
  {
    v35 = *v0;
    v36 = v0[1];
    v76 = *(v0 + 16);
    v73 = v0;
    v37 = v0[3];
    v98 = _swiftEmptySetSingleton;
    v99 = v37;
    v100 = v36;
    v101[0] = v35;
    v75 = v37;
    sub_10000E268(v101, v80, &qword_1005CF7E0, &qword_1004D2CE0);
    sub_10000E268(&v100, v80, &qword_1005CF7E8, &qword_1004D2CE8);
    result = sub_10000E268(&v99, v80, &qword_1005CF7F0, &unk_1004D2CF0);
    v38 = *(v35 + 16);
    if (!v38)
    {
      goto LABEL_81;
    }

    v39 = 0;
    v78 = v35 + 32;
LABEL_35:
    if (v39 >= v38)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    while (1)
    {
      v40 = (v78 + 176 * v39);
      v41 = *v40;
      v42 = v40[2];
      v88 = v40[1];
      v89 = v42;
      v43 = v40[3];
      v44 = v40[4];
      v45 = v40[6];
      v92 = v40[5];
      v93 = v45;
      v90 = v43;
      v91 = v44;
      v46 = v40[7];
      v47 = v40[8];
      v48 = v40[10];
      v96 = v40[9];
      v97 = v48;
      v94 = v46;
      v95 = v47;
      v87 = v41;
      if (!*(v36 + 16))
      {
        goto LABEL_45;
      }

      v50 = *(&v87 + 1);
      v49 = v87;
      v51 = v88;
      v52 = DWORD2(v88);
      v53 = DWORD1(v92);
      v54 = BYTE8(v92);
      result = sub_100063B5C(v88, DWORD2(v88));
      if ((v55 & 1) == 0)
      {
        goto LABEL_45;
      }

      v56 = *(v36 + 56) + 72 * result;
      v82 = *v56;
      v58 = *(v56 + 32);
      v57 = *(v56 + 48);
      v59 = *(v56 + 64);
      v83 = *(v56 + 16);
      v84 = v58;
      v86 = v59;
      v85 = v57;
      sub_10000E08C(&v87, v80);
      sub_100063BD4(&v82, v80);
      v60 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      v61 = *result;
      if (!v60)
      {
        break;
      }

      if ((v61 & ~v60) != 0)
      {
        goto LABEL_42;
      }

LABEL_43:
      if ((HIWORD(v82) & v60) != 0)
      {
        sub_100063C30(&v82);
        result = sub_10000E0E8(&v87);
LABEL_45:
        v62 = __OFADD__(v39++, 1);
        if (v62)
        {
          goto LABEL_87;
        }

        goto LABEL_46;
      }

LABEL_49:
      v80[8] = v95;
      v80[9] = v96;
      v80[10] = v97;
      v80[4] = v91;
      v80[5] = v92;
      v80[6] = v93;
      v80[7] = v94;
      v80[0] = v87;
      v80[1] = v88;
      v80[2] = v89;
      v80[3] = v90;
      v80[13] = v84;
      v80[14] = v85;
      v81 = v86;
      v80[11] = v82;
      v80[12] = v83;
      if ((v76 & 1) == 0)
      {
        v62 = __OFADD__(v39++, 1);
        if (v62)
        {
          goto LABEL_94;
        }

        goto LABEL_72;
      }

      sub_10000E08C(&v87, v79);
      sub_100063BD4(&v82, v79);
      v63 = MailboxName.isInbox.getter(v51, v52);
      sub_100063C30(&v82);
      if ((v63 & 1) != 0 || v83 > 7u || ((1 << v83) & 0xDB) == 0 || (v54 & 1) == 0 && ((BYTE12(v93) & 1) != 0 || DWORD2(v93) < v53))
      {
        result = sub_10000E0E8(&v87);
        v62 = __OFADD__(v39++, 1);
        if (v62)
        {
          goto LABEL_93;
        }

        goto LABEL_72;
      }

      sub_10000E0E8(&v87);
      if (*(v75 + 16))
      {
        v64 = sub_100063C84(v49, v50);
        v66 = v65;

        if ((v66 & 1) != 0 && (~*(*(v75 + 56) + 2 * v64) & 0x3FFF) != 0)
        {
          v62 = __OFADD__(v39++, 1);
          if (v62)
          {
            goto LABEL_95;
          }

LABEL_72:
          v67 = *(&v95 + 1);
          if (sub_10012DDBC(*(&v95 + 1), v73[8]) & 1) == 0 || (*(v67 + 16) || (BYTE8(v92) & 1) == 0 && ((BYTE12(v93) & 1) != 0 || DWORD2(v93) < DWORD1(v92))) && (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*(&v91 + 1), v92, 0, 0))
          {
            v68 = v88;
            v69 = DWORD2(v88);

            sub_100088220(v79, v68, v69);
            sub_100063CF8(v80);

            if (v39 == v38)
            {
LABEL_81:
              sub_100025F40(v101, &qword_1005CF7E0, &qword_1004D2CE0);
              sub_100025F40(&v100, &qword_1005CF7E8, &qword_1004D2CE8);
              sub_100025F40(&v99, &qword_1005CF7F0, &unk_1004D2CF0);
              return v98;
            }
          }

          else
          {
            result = sub_100063CF8(v80);
            if (v39 == v38)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_35;
        }

        result = sub_100063CF8(v80);
        v62 = __OFADD__(v39++, 1);
        if (v62)
        {
          goto LABEL_91;
        }
      }

      else
      {
        sub_100063CF8(v80);

        v62 = __OFADD__(v39++, 1);
        if (v62)
        {
          goto LABEL_91;
        }
      }

LABEL_46:
      if (v39 == v38)
      {
        goto LABEL_81;
      }

      if (v39 >= v38)
      {
        goto LABEL_86;
      }
    }

    if (!*result)
    {
      goto LABEL_49;
    }

LABEL_42:
    LOWORD(v60) = v61 | v60;
    goto LABEL_43;
  }

  v1 = sub_1000CD288();
  if (!v1)
  {
    v1 = sub_1000CDFD8();
  }

  v2 = v1;
  v3 = v0[7];
  if (*(v1 + 16) < v3)
  {
    return v2;
  }

  v4 = v0[5];
  v5 = v0[6];
  result = v4();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v9 = v7;
    v10 = v8;
    *&v87 = _swiftEmptyArrayStorage;

    v77 = v9;
    sub_1000919C8(0, 0, 0);
    v11 = _swiftEmptyArrayStorage;

    if (!v3)
    {
LABEL_84:

      v70 = sub_1000CE46C(v11);

      return v70;
    }

    v12 = 0;
    v71 = v9 + 32;
    result = v10 + 32;
    v13 = v2 + 56;
    v14 = 0;
LABEL_8:
    v72 = v3;
    v74 = v11;
    v15 = *(v10 + 16);
    if (v12 >= v15)
    {
LABEL_83:
      v11 = v74;
      goto LABEL_84;
    }

    while ((v12 & 0x8000000000000000) == 0)
    {
      v16 = v14;
      if (v14 >= *(v9 + 16))
      {
        goto LABEL_89;
      }

      if (v14 >= *(v10 + 16))
      {
        goto LABEL_90;
      }

      v17 = *(result + 4 * v14++);
      if ((~v17 & 0x6FFFC000) != 0)
      {
        if (*(v2 + 16))
        {
          v18 = (v71 + 16 * v16);
          v19 = *v18;
          v20 = *(v18 + 2);
          v21 = *(v2 + 40);
          sub_1004A6E94();
          sub_1004A6EB4(v20 | (v20 << 32));
          v22 = sub_1004A6F14();
          v23 = -1 << *(v2 + 32);
          v24 = v22 & ~v23;
          result = v10 + 32;
          v9 = v77;
          if ((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
          {
            v25 = ~v23;
            while (1)
            {
              v26 = (*(v2 + 48) + 16 * v24);
              if ((v26[2] | (v26[2] << 32)) == (v20 | (v20 << 32)))
              {
                v27 = *v26;
                v28 = *(*v26 + 16);
                if (v28 == *(v19 + 16))
                {
                  break;
                }
              }

LABEL_18:
              v24 = (v24 + 1) & v25;
              if (((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
              {
                goto LABEL_10;
              }
            }

            if (v28)
            {
              v29 = v27 == v19;
            }

            else
            {
              v29 = 1;
            }

            if (!v29)
            {
              v30 = (v27 + 32);
              v31 = (v19 + 32);
              while (v28)
              {
                if (*v30 != *v31)
                {
                  goto LABEL_18;
                }

                ++v30;
                ++v31;
                if (!--v28)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
              goto LABEL_86;
            }

LABEL_29:
            v11 = v74;
            *&v87 = v74;
            v33 = v74[2];
            v32 = v74[3];

            if (v33 >= v32 >> 1)
            {
              sub_1000919C8((v32 > 1), v33 + 1, 1);
              v11 = v87;
            }

            v11[2] = v33 + 1;
            v34 = &v11[2 * v33];
            v34[4] = v19;
            *(v34 + 10) = v20;
            v12 = v14;
            v3 = v72 - 1;
            result = v10 + 32;
            v9 = v77;
            if (v72 != 1)
            {
              goto LABEL_8;
            }

            goto LABEL_84;
          }
        }
      }

LABEL_10:
      if (v14 == v15)
      {
        goto LABEL_83;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1000CD138(uint64_t a1)
{
  v2 = sub_10012E208();
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);

  v7 = sub_100166D28();
  v8 = v7;
  if (v5 == 3 || v5 == 2)
  {

    v9 = 1;
    goto LABEL_4;
  }

  v12 = sub_100166E18(v7);
  if (v4)
  {
    goto LABEL_13;
  }

  if (v5 != 1)
  {
    if (!v5 && (v3 - 1) < 2)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (!v3)
  {
LABEL_13:
    v9 = v12 ^ 1;
    goto LABEL_14;
  }

  if (v3 != 1)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = 1;
LABEL_14:
  sub_100013AD0(&off_100598658, v6);
  sub_100166E18(v8);
  v13 = sub_100013CF4(v6);

  if (v13 & 1) == 0 && (v4)
  {
    sub_100166E18(v8);
  }

LABEL_4:

  v10 = sub_1000CF79C(*(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192) & 1, *(a1 + 120), v2, v9 & 1, *(a1 + 208));

  return v10;
}

unint64_t sub_1000CD288()
{
  v1 = type metadata accessor for MessagesPendingDownload();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v117 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v119 = &v106 - v9;
  v10 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v120 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v125 = &v106 - v14;
  v15 = type metadata accessor for NewestMessages();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v118 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v123 = &v106 - v20;
  v122 = type metadata accessor for MailboxSyncState();
  v21 = *(*(v122 - 8) + 64);
  v22 = __chkstk_darwin(v122);
  v121 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v124 = &v106 - v24;
  v26 = *v0;
  v25 = v0[1];
  v128 = *(v0 + 16);
  v27 = v0[3];
  v151 = _swiftEmptySetSingleton;
  v152 = v27;
  v153 = v25;
  v154[0] = v26;
  v129 = v25;
  v127 = v27;
  sub_10000E268(v154, v133, &qword_1005CF7E0, &qword_1004D2CE0);
  sub_10000E268(&v153, v133, &qword_1005CF7E8, &qword_1004D2CE8);
  result = sub_10000E268(&v152, v133, &qword_1005CF7F0, &unk_1004D2CF0);
  v131 = *(v26 + 16);
  if (!v131)
  {
    v126 = 0;
    goto LABEL_88;
  }

  v113 = 0;
  v114 = v4;
  v116 = v0;
  v29 = 0;
  v126 = 0;
  v130 = v26 + 32;
  v30 = v129;
  v115 = (v16 + 48);
  while (2)
  {
    if (v29 >= v131)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return result;
    }

    while (1)
    {
      v31 = v15;
      v32 = (v130 + 176 * v29);
      v33 = *v32;
      v34 = v32[2];
      v141 = v32[1];
      v142 = v34;
      v35 = v32[3];
      v36 = v32[4];
      v37 = v32[6];
      v145 = v32[5];
      v146 = v37;
      v143 = v35;
      v144 = v36;
      v38 = v32[7];
      v39 = v32[8];
      v40 = v32[10];
      v149 = v32[9];
      v150 = v40;
      v147 = v38;
      v148 = v39;
      v140 = v33;
      if (!*(v30 + 16))
      {
        goto LABEL_13;
      }

      v42 = *(&v140 + 1);
      v41 = v140;
      v43 = v141;
      v44 = DWORD2(v141);
      v45 = DWORD1(v145);
      v46 = BYTE8(v145);
      result = sub_100063B5C(v141, DWORD2(v141));
      v30 = v129;
      if ((v47 & 1) == 0)
      {
        goto LABEL_13;
      }

      v48 = *(v129 + 56) + 72 * result;
      v135 = *v48;
      v50 = *(v48 + 32);
      v49 = *(v48 + 48);
      v51 = *(v48 + 64);
      v136 = *(v48 + 16);
      v137 = v50;
      v139 = v51;
      v138 = v49;
      sub_10000E08C(&v140, v133);
      sub_100063BD4(&v135, v133);
      v52 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      v53 = *result;
      if (!v52)
      {
        if (!*result)
        {
          break;
        }

LABEL_10:
        LOWORD(v52) = v53 | v52;
        goto LABEL_11;
      }

      if ((v53 & ~v52) != 0)
      {
        goto LABEL_10;
      }

LABEL_11:
      if ((HIWORD(v135) & v52) == 0)
      {
        break;
      }

      sub_100063C30(&v135);
      result = sub_10000E0E8(&v140);
      v30 = v129;
LABEL_13:
      v54 = __OFADD__(v29++, 1);
      if (v54)
      {
        goto LABEL_92;
      }

      v15 = v31;
LABEL_15:
      if (v29 == v131)
      {
        goto LABEL_88;
      }

      if (v29 >= v131)
      {
        goto LABEL_91;
      }
    }

    v133[8] = v148;
    v133[9] = v149;
    v133[10] = v150;
    v133[4] = v144;
    v133[5] = v145;
    v133[6] = v146;
    v133[7] = v147;
    v133[0] = v140;
    v133[1] = v141;
    v133[2] = v142;
    v133[3] = v143;
    v133[13] = v137;
    v133[14] = v138;
    v134 = v139;
    v133[11] = v135;
    v133[12] = v136;
    if ((v128 & 1) == 0)
    {
      v54 = __OFADD__(v29++, 1);
      if (v54)
      {
        goto LABEL_95;
      }

      goto LABEL_39;
    }

    sub_10000E08C(&v140, v132);
    sub_100063BD4(&v135, v132);
    v55 = MailboxName.isInbox.getter(v43, v44);
    sub_100063C30(&v135);
    if ((v55 & 1) != 0 || v136 > 7u || ((1 << v136) & 0xDB) == 0 || (v46 & 1) == 0 && ((BYTE12(v146) & 1) != 0 || DWORD2(v146) < v45))
    {
      result = sub_10000E0E8(&v140);
      v54 = __OFADD__(v29++, 1);
      if (v54)
      {
        goto LABEL_94;
      }

LABEL_39:
      v15 = v31;
      goto LABEL_40;
    }

    sub_10000E0E8(&v140);
    v56 = v127;
    if (!*(v127 + 16))
    {
      sub_100063CF8(v133);

LABEL_31:
      v15 = v31;
LABEL_32:
      v54 = __OFADD__(v29++, 1);
      v30 = v129;
      if (v54)
      {
        goto LABEL_93;
      }

      goto LABEL_15;
    }

    v57 = sub_100063C84(v41, v42);
    v59 = v58;

    if ((v59 & 1) == 0)
    {
      result = sub_100063CF8(v133);
      goto LABEL_31;
    }

    v15 = v31;
    if ((~*(*(v56 + 56) + 2 * v57) & 0x3FFF) == 0)
    {
      result = sub_100063CF8(v133);
      goto LABEL_32;
    }

    v54 = __OFADD__(v29++, 1);
    if (v54)
    {
      goto LABEL_96;
    }

LABEL_40:
    v60 = *(&v148 + 1);
    if (*(*(&v148 + 1) + 16) && (v139 & 0x100) == 0 && (v139 & 1) == 0)
    {
      v61 = *(&v138 + 1);
      v62 = DWORD1(v137);
      if (sub_10012DDBC(*(&v148 + 1), v116[8]))
      {
        if ((v144 & 1) == 0)
        {
          v63 = DWORD1(v145);
          v64 = BYTE8(v145);
          v65 = v125;
          if (*(v60 + 16) || (BYTE8(v145) & 1) == 0 && ((BYTE12(v146) & 1) != 0 || DWORD2(v146) < DWORD1(v145)))
          {
            v126 = *(v116 + 33);
            if (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*(&v144 + 1), v145, 0, 0))
            {
              v112 = v64;
              if (v146)
              {
                v109 = v63;
                v66 = v146 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                swift_beginAccess();
                v67 = v66 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
                v68 = v121;
                sub_1000CEE7C(v67, v121, type metadata accessor for MailboxSyncState);
                v69 = v68;
                v70 = v124;
                sub_1000CE508(v69, v124, type metadata accessor for MailboxSyncState);
                v111 = *(v122 + 52);
                v71 = *(v122 + 64);
                v110 = *(type metadata accessor for PendingPersistenceUpdates() + 28);
                v108 = v71;
                sub_10000E268(v70 + v71, v65, &qword_1005CDC18, &qword_1004CF9E0);
                v72 = *v115;
                if ((*v115)(v65, 1, v15) == 1)
                {
                  sub_100016D2C();
                  v73 = v119;
                  sub_1004A7114();
                  v106 = *(v15 + 20);
                  v107 = v72;
                  v74 = *(v15 + 24);
                  v75 = v73;
                  v76 = v125;
                  v77 = v123;
                  sub_100020950(v75, v123);
                  *(v77 + v106) = 0;
                  *(v77 + v74) = 0;
                  v72 = v107;
                  v78 = v77;
                  v70 = v124;
                  sub_1000CEEE4(v78, type metadata accessor for NewestMessages);
                  if (v72(v76, 1, v15) != 1)
                  {
                    sub_100025F40(v76, &qword_1005CDC18, &qword_1004CF9E0);
                  }
                }

                else
                {
                  v79 = v65;
                  v80 = v123;
                  sub_1000CE508(v79, v123, type metadata accessor for NewestMessages);
                  sub_1000CEEE4(v80, type metadata accessor for NewestMessages);
                }

                v81 = v70 + v111 + v110;
                v82 = v114;
                sub_1000CEE7C(v81, v114, type metadata accessor for MessagesPendingDownload);
                v83 = *(*v82 + 16);
                sub_1000CEEE4(v82, type metadata accessor for MessagesPendingDownload);
                if (v83)
                {
                  sub_1000CEEE4(v70, type metadata accessor for MailboxSyncState);
                  v15 = v31;
                  goto LABEL_64;
                }

                v111 = v81;
                v86 = v120;
                sub_10000E268(v70 + v108, v120, &qword_1005CDC18, &qword_1004CF9E0);
                v15 = v31;
                if (v72(v86, 1, v31) == 1)
                {
                  sub_100016D2C();
                  v107 = v72;
                  v87 = v117;
                  sub_1004A7114();
                  v110 = *(v31 + 20);
                  v88 = *(v31 + 24);
                  v89 = v87;
                  v90 = v120;
                  v91 = v118;
                  sub_100020950(v89, v118);
                  *(v91 + v110) = 0;
                  *(v91 + v88) = 0;
                  v15 = v31;
                  v92 = v107(v90, 1, v31);
                  v93 = v91;
                  v63 = v109;
                  if (v92 != 1)
                  {
                    sub_100025F40(v90, &qword_1005CDC18, &qword_1004CF9E0);
                  }
                }

                else
                {
                  v93 = v118;
                  sub_1000CE508(v86, v118, type metadata accessor for NewestMessages);
                  v63 = v109;
                }

                if (v126)
                {
                  if (v126 == 1)
                  {
                    v94 = type metadata accessor for MessagesPendingDownloadPerPass();
                    v95 = v114;
                    sub_1000CEE7C(v111 + *(v94 + 20), v114, type metadata accessor for MessagesPendingDownload);
                    sub_1000CEEE4(v70, type metadata accessor for MailboxSyncState);
                    v96 = *(*v95 + 16);
                    sub_1000CEEE4(v95, type metadata accessor for MessagesPendingDownload);
                    sub_1000CEEE4(v93, type metadata accessor for NewestMessages);
                    if (v96)
                    {
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
                    v97 = sub_1004A70C4();
                    v98 = type metadata accessor for MessagesPendingDownloadPerPass();
                    v99 = *(v98 + 20);
                    if (v97)
                    {
                      v100 = v114;
                      sub_1000CEE7C(v111 + v99, v114, type metadata accessor for MessagesPendingDownload);
                      sub_1000CEEE4(v124, type metadata accessor for MailboxSyncState);
                      v101 = *v100;

                      sub_1000CEEE4(v100, type metadata accessor for MessagesPendingDownload);
                      v102 = *(v101 + 16);

                      sub_1000CEEE4(v93, type metadata accessor for NewestMessages);
                      if (v102)
                      {
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                      v103 = *(v111 + v99);
                      __chkstk_darwin(v98);
                      *(&v106 - 2) = v93;

                      v104 = v113;
                      v105 = sub_1000CC4A4(sub_1000B38D4, (&v106 - 4), v103);
                      v113 = v104;

                      v63 = v109;
                      sub_1000CEEE4(v124, type metadata accessor for MailboxSyncState);
                      sub_1000CEEE4(v93, type metadata accessor for NewestMessages);
                      if (v105)
                      {
                        goto LABEL_64;
                      }
                    }
                  }
                }

                else
                {
                  sub_1000CEEE4(v70, type metadata accessor for MailboxSyncState);
                  sub_1000CEEE4(v93, type metadata accessor for NewestMessages);
                }
              }

              if ((v112 & 1) == 0 && ((BYTE12(v146) & 1) != 0 || DWORD2(v146) < v63) || (v148 & 1) != 0 || v147 != v62 || *(&v147 + 1) < v61)
              {
                goto LABEL_64;
              }
            }
          }
        }

        result = sub_100063CF8(v133);
        goto LABEL_81;
      }

LABEL_64:
      v84 = v141;
      v85 = DWORD2(v141);

      sub_100088220(v132, v84, v85);
      sub_100063CF8(v133);

LABEL_81:
      v126 = 1;
      goto LABEL_44;
    }

    result = sub_100063CF8(v133);
LABEL_44:
    v30 = v129;
    if (v29 != v131)
    {
      continue;
    }

    break;
  }

LABEL_88:
  sub_100025F40(v154, &qword_1005CF7E0, &qword_1004D2CE0);
  sub_100025F40(&v153, &qword_1005CF7E8, &qword_1004D2CE8);
  sub_100025F40(&v152, &qword_1005CF7F0, &unk_1004D2CF0);
  result = v151;
  if ((v126 & 1) == 0)
  {

    return 0;
  }

  return result;
}

unint64_t sub_1000CDFD8()
{
  v2 = *v0;
  v1 = v0[1];
  v38 = *(v0 + 16);
  v3 = v0[3];
  v59 = _swiftEmptySetSingleton;
  v60 = v3;
  v61 = v1;
  v62[0] = v2;
  v37 = v3;
  sub_10000E268(v62, v41, &qword_1005CF7E0, &qword_1004D2CE0);
  sub_10000E268(&v61, v41, &qword_1005CF7E8, &qword_1004D2CE8);
  result = sub_10000E268(&v60, v41, &qword_1005CF7F0, &unk_1004D2CF0);
  v5 = *(v2 + 16);
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = 0;
  v39 = v2 + 32;
  while (v6 < v5)
  {
    while (1)
    {
      v7 = (v39 + 176 * v6);
      v8 = *v7;
      v9 = v7[2];
      v49 = v7[1];
      v50 = v9;
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[6];
      v53 = v7[5];
      v54 = v12;
      v51 = v10;
      v52 = v11;
      v13 = v7[7];
      v14 = v7[8];
      v15 = v7[10];
      v57 = v7[9];
      v58 = v15;
      v55 = v13;
      v56 = v14;
      v48 = v8;
      if (*(v1 + 16))
      {
        v17 = *(&v48 + 1);
        v16 = v48;
        v18 = v49;
        v19 = DWORD2(v49);
        v20 = DWORD1(v53);
        v21 = BYTE8(v53);
        result = sub_100063B5C(v49, DWORD2(v49));
        if (v22)
        {
          break;
        }
      }

LABEL_13:
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_57;
      }

LABEL_14:
      if (v6 == v5)
      {
        goto LABEL_55;
      }

      if (v6 >= v5)
      {
        goto LABEL_56;
      }
    }

    v23 = *(v1 + 56) + 72 * result;
    v43 = *v23;
    v25 = *(v23 + 32);
    v24 = *(v23 + 48);
    v26 = *(v23 + 64);
    v44 = *(v23 + 16);
    v45 = v25;
    v47 = v26;
    v46 = v24;
    sub_10000E08C(&v48, v41);
    sub_100063BD4(&v43, v41);
    v27 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
    result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
    v28 = *result;
    if (!v27)
    {
      if (!*result)
      {
        goto LABEL_17;
      }

LABEL_10:
      LOWORD(v27) = v28 | v27;
      goto LABEL_11;
    }

    if ((v28 & ~v27) != 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    if ((HIWORD(v43) & v27) != 0)
    {
      sub_100063C30(&v43);
      result = sub_10000E0E8(&v48);
      goto LABEL_13;
    }

LABEL_17:
    v41[8] = v56;
    v41[9] = v57;
    v41[10] = v58;
    v41[4] = v52;
    v41[5] = v53;
    v41[6] = v54;
    v41[7] = v55;
    v41[0] = v48;
    v41[1] = v49;
    v41[2] = v50;
    v41[3] = v51;
    v41[13] = v45;
    v41[14] = v46;
    v42 = v47;
    v41[11] = v43;
    v41[12] = v44;
    if ((v38 & 1) == 0)
    {
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_60;
      }

      goto LABEL_40;
    }

    sub_10000E08C(&v48, v40);
    sub_100063BD4(&v43, v40);
    v30 = MailboxName.isInbox.getter(v18, v19);
    sub_100063C30(&v43);
    if ((v30 & 1) != 0 || v44 > 7u || ((1 << v44) & 0xDB) == 0 || (v21 & 1) == 0 && ((BYTE12(v54) & 1) != 0 || DWORD2(v54) < v20))
    {
      result = sub_10000E0E8(&v48);
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_59;
      }

      goto LABEL_40;
    }

    sub_10000E0E8(&v48);
    if (!*(v37 + 16))
    {
      sub_100063CF8(v41);

      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_58;
      }

      goto LABEL_14;
    }

    v31 = sub_100063C84(v16, v17);
    v33 = v32;

    if ((v33 & 1) == 0 || (~*(*(v37 + 56) + 2 * v31) & 0x3FFF) == 0)
    {
      result = sub_100063CF8(v41);
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_58;
      }

      goto LABEL_14;
    }

    v29 = __OFADD__(v6++, 1);
    if (v29)
    {
      goto LABEL_61;
    }

LABEL_40:
    if (!*(*(&v56 + 1) + 16))
    {
      goto LABEL_54;
    }

    v34 = v49;
    v35 = DWORD2(v49);
    if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*(&v52 + 1), v53, 0, 0) & 1) == 0)
    {
      goto LABEL_54;
    }

    swift_bridgeObjectRetain_n();
    v36 = MailboxName.isInbox.getter(v34, v35);

    if (v36)
    {
      goto LABEL_43;
    }

    if (v44 > 3u)
    {
      if (v44 <= 5u && v44 != 4)
      {
        goto LABEL_43;
      }

LABEL_53:

LABEL_54:
      result = sub_100063CF8(v41);
      if (v6 == v5)
      {
        goto LABEL_55;
      }

      continue;
    }

    if (v44 > 1u)
    {
      if (v44 != 2)
      {
        goto LABEL_53;
      }
    }

    else if (v44)
    {
      goto LABEL_53;
    }

LABEL_43:
    sub_100088220(v40, v34, v35);
    sub_100063CF8(v41);

    if (v6 == v5)
    {
LABEL_55:
      sub_100025F40(v62, &qword_1005CF7E0, &qword_1004D2CE0);
      sub_100025F40(&v61, &qword_1005CF7E8, &qword_1004D2CE8);
      sub_100025F40(&v60, &qword_1005CF7F0, &unk_1004D2CF0);
      return v59;
    }
  }

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
  return result;
}

uint64_t sub_1000CE46C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100026044();
  result = sub_1004A5D64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v6 = *(v4 - 1);

      sub_100088220(&v7, v6, v5);

      v4 += 4;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000CE508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CE570(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10002AB18();
  result = sub_1004A5D64();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100088568(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000CE5E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000CEB2C();
  result = sub_1004A5D64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100088848(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000CE67C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000CEA84();
  result = sub_1004A5D64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100014CEC(v6, *v4);
      sub_100088A40(v7, v6, v5);
      sub_100014D40(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000CE780(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = sub_1004A5D64();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_1000CE800(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_1000CEE24();
  result = sub_1004A5D64();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1000CEE7C(v12, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100089774(v9, v6);
      sub_1000CEEE4(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_1000CE960(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000CEAD8();
  result = sub_1004A5D64();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100014B90(v4, v5);
      sub_100089ADC(v6, v5);
      sub_100014BEC(v6);
      v4 += 48;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000CE9EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10000E1AC();
  result = sub_1004A5D64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000883C4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1000CEA84()
{
  result = qword_1005CF7F8;
  if (!qword_1005CF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF7F8);
  }

  return result;
}

unint64_t sub_1000CEAD8()
{
  result = qword_1005CF800;
  if (!qword_1005CF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF800);
  }

  return result;
}

unint64_t sub_1000CEB2C()
{
  result = qword_1005CF808;
  if (!qword_1005CF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF808);
  }

  return result;
}

unint64_t sub_1000CEB80()
{
  result = qword_1005CF810;
  if (!qword_1005CF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF810);
  }

  return result;
}

unint64_t sub_1000CEBD4()
{
  result = qword_1005CF818;
  if (!qword_1005CF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF818);
  }

  return result;
}

uint64_t sub_1000CEC28()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 136);

  if (*(v0 + 160))
  {

    v5 = *(v0 + 176);
  }

  sub_100020D58(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208));
  v6 = *(v0 + 216);

  v7 = *(v0 + 224);

  v8 = *(v0 + 232);

  v9 = *(v0 + 264);

  v10 = *(v0 + 272);

  return _swift_deallocObject(v0, 280, 7);
}

__n128 sub_1000CED58(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000CED7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000CEDC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000CEE24()
{
  result = qword_1005CF830;
  if (!qword_1005CF830)
  {
    type metadata accessor for MoveAndCopyMessages.CommandID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF830);
  }

  return result;
}

uint64_t sub_1000CEE7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CEEE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_1000CEF44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000CEF68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1000CEFB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000CF01C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v6 = result;
  v7 = *v3;
  v8 = *(*v3 + 16);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = v7 + 32;
    if (*(v7 + 32 + 16 * (v8 - 1) + 12) > a3)
    {
      v7 = 0;
      do
      {
        while (1)
        {
          if (__OFSUB__(v9, v7))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v11 = v7 + (v9 - v7) / 2;
          if (__OFADD__(v7, (v9 - v7) / 2))
          {
            goto LABEL_23;
          }

          if (v11 >= v8)
          {
            goto LABEL_24;
          }

          v12 = *(v10 + 16 * v11 + 12);
          if (v12 < a3)
          {
            break;
          }

          if (v12 <= a3)
          {
            return result;
          }

          v9 = v11 - 1;
          if ((v11 - 1) < v7)
          {
            goto LABEL_12;
          }
        }

        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_25;
        }
      }

      while (v9 >= v7);
LABEL_12:
      if (v8 < v7)
      {
        __break(1u);
      }

      else if ((v7 & 0x8000000000000000) == 0)
      {

        sub_1001626C8(v7, v7, v6, a2 | (a3 << 32));
      }

      __break(1u);
      return result;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_26:
    result = sub_100085514(0, v8 + 1, 1, v7);
    v7 = result;
  }

  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_100085514((v13 > 1), v14 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v14 + 1;
  v15 = v7 + 16 * v14;
  *(v15 + 32) = v6;
  *(v15 + 40) = a2;
  *(v15 + 44) = a3;
  *v3 = v7;
  return result;
}

uint64_t sub_1000CF20C(unsigned int a1)
{
  v2 = sub_1004A6F44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005CF6A8, &qword_1004D2958);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v16 - v9;
  v16[3] = a1;
  sub_10000C9C0(&qword_1005CF6B0, &qword_1004D2960);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004D2DE0;
  *(v11 + 32) = 0x786F626E497369;
  *(v11 + 40) = 0xE700000000000000;
  *(v11 + 48) = (a1 & 0x80000000) == 0;
  *(v11 + 72) = &type metadata for Bool;
  *(v11 + 80) = 0x696C696269736976;
  *(v11 + 88) = 0xEA00000000007974;
  *(v11 + 96) = (a1 & 0x40000000) != 0;
  *(v11 + 120) = &_s11UserVisibleON;
  *(v11 + 128) = 0xD000000000000010;
  *(v11 + 136) = 0x80000001004AA1E0;
  *(v11 + 144) = (a1 & 0x20000000) == 0;
  *(v11 + 168) = &type metadata for Bool;
  strcpy((v11 + 176), "userPriority");
  *(v11 + 189) = 0;
  *(v11 + 190) = -5120;
  *(v11 + 192) = (a1 >> 14) & 0x3FFF;
  *(v11 + 216) = &_s12PriorityInfoV5OrderVN;
  *(v11 + 224) = 0xD000000000000012;
  *(v11 + 232) = 0x80000001004AA200;
  *(v11 + 264) = &_s12PriorityInfoV5OrderVN;
  *(v11 + 240) = a1 & 0x3FFF;
  v12 = enum case for Mirror.DisplayStyle.struct(_:);
  v13 = sub_1004A6F34();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v10, v12, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  return sub_1004A6F54();
}

unint64_t sub_1000CF500()
{
  result = qword_1005CF838;
  if (!qword_1005CF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF838);
  }

  return result;
}

uint64_t sub_1000CF554(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a3 + 2;
  v6 = a3[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141960(v6);
    v6 = result;
  }

  v8 = *(a2 + 16);
  *v5 = v6;
  v32 = v8;
  if (v8)
  {
    v9 = 0;
    v31 = a2 + 32;
    do
    {
      v10 = v6 + 32;
      while (1)
      {
        if (v9 >= *(a1 + 16))
        {
          goto LABEL_33;
        }

        v11 = a1 + 32 + 16 * v9;
        v12 = *v11;
        v13 = *(v31 + 4 * v9);
        v14 = *(v11 + 8);
        ++v9;
        v15 = a3[1];
        v16 = v15 + 32;
        v17 = *(v15 + 16);
        if (*a3)
        {
          v18 = sub_10015C0B4(v12, v14, v16, v17, (*a3 + 16));
          if (v19)
          {
            break;
          }

          v20 = v18;

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          goto LABEL_25;
        }

        if (!v17)
        {
          break;
        }

        v20 = 0;
        while (1)
        {
          v21 = (v16 + 16 * v20);
          if ((v21[2] | (v21[2] << 32)) == (v14 | (v14 << 32)))
          {
            v22 = *v21;
            v23 = *(*v21 + 16);
            if (v23 == *(v12 + 16))
            {
              break;
            }
          }

LABEL_13:
          if (++v20 == v17)
          {
            goto LABEL_28;
          }
        }

        if (v23)
        {
          v24 = v22 == v12;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          v25 = (v22 + 32);
          v26 = (v12 + 32);
          while (v23)
          {
            if (*v25 != *v26)
            {
              goto LABEL_13;
            }

            ++v25;
            ++v26;
            if (!--v23)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

LABEL_24:

LABEL_25:
        if (v20 >= *(v6 + 16))
        {
          goto LABEL_35;
        }

        v27 = *(v10 + 4 * v20);

        *(v10 + 4 * v20) = v27;
        *v5 = v6;
        if (v9 >= v32)
        {
          return result;
        }
      }

LABEL_28:

      sub_100187EA0(v28, v14);
      a3[2] = v6;
      v30 = *(v6 + 16);
      v29 = *(v6 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_100091BA8((v29 > 1), v30 + 1, 1);
      }

      v6 = *v5;
      *(v6 + 16) = v30 + 1;
      *(v6 + 4 * v30 + 32) = v13;
      *v5 = v6;
    }

    while (v9 < v32);
  }

  return result;
}

uint64_t sub_1000CF79C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if ((a4 & 1) == 0)
  {
    if (a7)
    {
      return sub_10018A560(_swiftEmptyArrayStorage);
    }

    v72 = MailboxName.inbox.unsafeMutableAddressor();
    if ((sub_100011B00(*v72, *(v72 + 2), a6) & 1) == 0)
    {
      return sub_10018A560(_swiftEmptyArrayStorage);
    }

    sub_10000C9C0(&qword_1005CF000, &qword_1004D1EE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004CEAA0;
    v74 = *(v72 + 2);
    *(inited + 32) = *v72;
    *(inited + 40) = v74;
    *(inited + 44) = 1879048191;

    v75 = sub_10018A560(inited);
    swift_setDeallocating();
    sub_1000D03F4(inited + 32);
    return v75;
  }

  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10018A560(_swiftEmptyArrayStorage);
  v14 = v13;
  v16 = v15;
  v17 = v12;
  v175 = v12;
  v176 = v13;
  v177 = v15;
  v173 = _swiftEmptyArrayStorage;
  v174 = _swiftEmptyArrayStorage;
  v172 = _swiftEmptyArrayStorage;
  v169 = sub_10018A560(_swiftEmptyArrayStorage);
  v170 = v18;
  v171 = v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = a1 + 32;
    v147 = a1 + 32;
    v149 = a6;
    v145 = *(a1 + 16);
    v146 = a8;
    while (1)
    {
      v23 = (v22 + 176 * v21);
      v24 = *v23;
      v25 = v23[2];
      v158[1] = v23[1];
      v158[2] = v25;
      v158[0] = v24;
      v26 = v23[3];
      v27 = v23[4];
      v28 = v23[6];
      v159 = v23[5];
      v160 = v28;
      v158[3] = v26;
      v158[4] = v27;
      v29 = v23[7];
      v30 = v23[8];
      v31 = v23[10];
      v163 = v23[9];
      v164 = v31;
      v161 = v29;
      v162 = v30;
      memmove(&__dst, v23, 0xB0uLL);
      v32 = v166;
      v154 = __dst;
      v33 = v167;
      v34 = v168;
      if (sub_100011B00(v167, v168, a6))
      {
        break;
      }

      sub_10000E08C(v158, v157);
      sub_10000E0E8(&__dst);
LABEL_5:
      if (++v21 == v20)
      {
        v77 = v175;
        v14 = v176;
        v16 = v177;
        v11 = v174;
        goto LABEL_76;
      }
    }

    sub_10000E08C(v158, v157);

    v35 = MailboxName.inbox.unsafeMutableAddressor();
    if ((v34 | (v34 << 32)) == (v35[2] | (v35[2] << 32)))
    {
      v36 = *v35;
      v37 = *(v33 + 16);
      if (v37 != *(*v35 + 16))
      {

        if (v21 < 0x10000)
        {
          v39 = 0;
          if (v21 >= 0x4000)
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        }

        goto LABEL_68;
      }

      if (!v37 || v33 == v36)
      {
LABEL_14:

        if (v21 >> 16)
        {
          v39 = 1;
          goto LABEL_22;
        }

        v39 = 1;
        if (v21 >> 14)
        {
          goto LABEL_22;
        }

LABEL_25:
        v40 = v21;
        if (*(a8 + 16))
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }

      v38 = 32;
      while (*(v33 + v38) == *(v36 + v38))
      {
        ++v38;
        if (!--v37)
        {
          goto LABEL_14;
        }
      }
    }

    if (!(v21 >> 16))
    {
      v39 = 0;
      if (v21 >> 14)
      {
LABEL_22:
        v40 = 0x3FFF;
        if (*(a8 + 16))
        {
LABEL_23:
          v41 = a8;
          v42 = v40;
          v43 = v39;
          v44 = sub_100063C84(v154, v32);
          if (v45)
          {
            v46 = *(*(v41 + 56) + 2 * v44);
            v47 = v46 < 0;
            v48 = v46 & 0x3FFF;
          }

          else
          {
            v47 = 1;
            v48 = 0x3FFF;
          }

          v49 = a5;
          v39 = v43;
          v40 = v42;
LABEL_29:
          v50 = v161;
          v51 = *(&v161 + 1);
          v52 = v162;
          if ((BYTE8(v159) & 1) == 0 && ((BYTE12(v160) & 1) != 0 || DWORD2(v160) < DWORD1(v159)))
          {
            if (!v39)
            {
              goto LABEL_60;
            }
          }

          else
          {
            if (!v49)
            {
              goto LABEL_42;
            }

            if (!*(v49 + 16))
            {
              goto LABEL_42;
            }

            v53 = v33;
            v54 = v34;
            v55 = v34;
            v56 = v39;
            v57 = v40;
            v58 = v33;
            v59 = v47;
            v60 = sub_100063B5C(v53, v54);
            v47 = v59;
            v33 = v58;
            v40 = v57;
            v39 = v56;
            LODWORD(v34) = v55;
            if ((v61 & 1) == 0)
            {
              goto LABEL_42;
            }

            v62 = *(a5 + 56) + 72 * v60;
            if (*(v62 + 65) & 1) != 0 || (*(v62 + 64))
            {
              goto LABEL_42;
            }

            v63 = v50 == HIDWORD(*(v62 + 32)) ? v52 : 1;
            if ((v63 & 1) == 0 && v51 >= *(v62 + 56))
            {
LABEL_42:
              if (v39)
              {
                if (v47)
                {
                  v64 = 1610612736;
                }

                else
                {
                  v64 = 0x20000000;
                }

LABEL_56:
                v20 = v145;
                a8 = v146;
                v68 = v64 | (v48 << 14) | v40;

                v157[0] = 0;
                v67 = v68;
                goto LABEL_57;
              }

              if (v47)
              {
                v65 = -536870912;
              }

              else
              {
                v65 = -1610612736;
              }

              v66 = v65 | (v48 << 14) | v40;
              v20 = v145;
              a8 = v146;
              if (!v47)
              {
                goto LABEL_67;
              }

              if (v48 == 0x3FFF)
              {
                v157[0] = 0;
                v67 = v66;
LABEL_57:
                sub_1001864B8(v67, v33, v34);
                sub_10000E0E8(&__dst);
LABEL_66:
                v22 = v147;
                a6 = v149;
                goto LABEL_5;
              }

              v69 = v33;
LABEL_65:
              sub_1000CF01C(v69, v34, v66);
              sub_10000E0E8(&__dst);

              goto LABEL_66;
            }

            if ((v39 & 1) == 0)
            {
LABEL_60:
              if (v47)
              {
                v70 = -1073741824;
              }

              else
              {
                v70 = 0x80000000;
              }

              v66 = v70 | (v48 << 14) | v40;
              v20 = v145;
              a8 = v146;
              if (!v47)
              {
LABEL_67:
                v22 = v147;

                sub_1000CF01C(v71, v34, v66);
                sub_10000E0E8(&__dst);

                a6 = v149;
                goto LABEL_5;
              }

              goto LABEL_65;
            }
          }

          if (v47)
          {
            v64 = 0x40000000;
          }

          else
          {
            v64 = 0;
          }

          goto LABEL_56;
        }

LABEL_26:
        v47 = 1;
        v48 = 0x3FFF;
        v49 = a5;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

LABEL_68:
    v39 = 0;
    goto LABEL_22;
  }

  v77 = v17;
LABEL_76:
  __dst = v77;
  v166 = v14;

  v155 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v155 = sub_100141960(v16);
  }

  v78 = 0;
  v79 = v11[2];
LABEL_79:
  v80 = __dst;
  v152 = v166;
  v81 = v166 + 32;
  while (v78 != v79)
  {
    if (v78 >= v11[2])
    {
      goto LABEL_167;
    }

    v82 = &v11[2 * v78 + 4];
    v83 = *v82;
    ++v78;
    v84 = *(v82 + 8);
    v85 = *(v82 + 12);
    v86 = *(v152 + 16);
    if (v80)
    {
      v87 = sub_10015C0B4(v83, v84, v81, v86, (v80 + 16));
      if (v88)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (!v86)
      {
LABEL_101:

        sub_100187EA0(v95, v84);
        *&v158[0] = v155;
        v97 = *(v155 + 2);
        v96 = *(v155 + 3);
        if (v97 >= v96 >> 1)
        {
          sub_100091BA8((v96 > 1), v97 + 1, 1);

          v155 = *&v158[0];
        }

        else
        {
        }

        *(v155 + 2) = v97 + 1;
        *&v155[4 * v97 + 32] = v85;
        goto LABEL_79;
      }

      v87 = 0;
      while (1)
      {
        v89 = (v81 + 16 * v87);
        if ((v89[2] | (v89[2] << 32)) == (v84 | (v84 << 32)))
        {
          v90 = *v89;
          v91 = *(*v89 + 16);
          if (v91 == *(v83 + 16))
          {
            break;
          }
        }

LABEL_87:
        if (++v87 == v86)
        {
          goto LABEL_101;
        }
      }

      if (v91)
      {
        v92 = v90 == v83;
      }

      else
      {
        v92 = 1;
      }

      if (!v92)
      {
        v93 = (v90 + 32);
        v94 = (v83 + 32);
        while (v91)
        {
          if (*v93 != *v94)
          {
            goto LABEL_87;
          }

          ++v93;
          ++v94;
          if (!--v91)
          {
            goto LABEL_98;
          }
        }

        __break(1u);
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }
    }

LABEL_98:
    if ((v87 & 0x8000000000000000) != 0)
    {
      goto LABEL_168;
    }

    if (v87 >= *(v155 + 2))
    {
      goto LABEL_169;
    }
  }

  v98 = v173;
  __dst = v80;
  v166 = v152;

  v148 = v98;

  v150 = v155;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v150 = sub_100141960(v155);
  }

  v99 = 0;
  v100 = v148[2];
LABEL_108:
  v101 = __dst;
  v102 = v166;
  v103 = v166 + 32;
  while (v99 != v100)
  {
    if (v99 >= v148[2])
    {
      goto LABEL_170;
    }

    v104 = &v148[2 * v99 + 4];
    v105 = *v104;
    ++v99;
    v106 = *(v104 + 8);
    v107 = *(v104 + 12);
    v108 = *(v102 + 16);
    if (v101)
    {
      v109 = sub_10015C0B4(*v104, *(v104 + 8), v103, v108, (v101 + 16));
      if (v110)
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (!v108)
      {
LABEL_130:

        sub_100187EA0(v117, v106);
        *&v158[0] = v150;
        v119 = *(v150 + 2);
        v118 = *(v150 + 3);
        if (v119 >= v118 >> 1)
        {
          sub_100091BA8((v118 > 1), v119 + 1, 1);

          v150 = *&v158[0];
        }

        else
        {
        }

        *(v150 + 2) = v119 + 1;
        *&v150[4 * v119 + 32] = v107;
        goto LABEL_108;
      }

      v109 = 0;
      while (1)
      {
        v111 = (v103 + 16 * v109);
        if ((v111[2] | (v111[2] << 32)) == (v106 | (v106 << 32)))
        {
          v112 = *v111;
          v113 = *(*v111 + 16);
          if (v113 == *(v105 + 16))
          {
            break;
          }
        }

LABEL_116:
        if (++v109 == v108)
        {
          goto LABEL_130;
        }
      }

      if (v113)
      {
        v114 = v112 == v105;
      }

      else
      {
        v114 = 1;
      }

      if (!v114)
      {
        v115 = (v112 + 32);
        v116 = (v105 + 32);
        while (v113)
        {
          if (*v115 != *v116)
          {
            goto LABEL_116;
          }

          ++v115;
          ++v116;
          if (!--v113)
          {
            goto LABEL_127;
          }
        }

        goto LABEL_165;
      }
    }

LABEL_127:
    if ((v109 & 0x8000000000000000) != 0)
    {
      goto LABEL_171;
    }

    if (v109 >= *(v150 + 2))
    {
      goto LABEL_172;
    }
  }

  v120 = v172;

  v121 = v150;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v121 = sub_100141960(v150);
  }

  v122 = 0;
  v123 = v120[2];
  v153 = v120;
  v156 = v120 + 4;
LABEL_137:
  v125 = __dst;
  v124 = v166;
  v126 = v166 + 32;
  while (1)
  {
    if (v122 == v123)
    {

      v143 = v170;
      v144 = v171;
      v167 = v121;

      sub_1000CF554(v143, v144, &__dst);

      return __dst;
    }

    if (v122 >= v120[2])
    {
      goto LABEL_173;
    }

    v127 = &v156[2 * v122];
    v128 = *v127;
    ++v122;
    v129 = *(v127 + 2);
    v130 = *(v127 + 3);
    v131 = *(v124 + 16);
    if (v125)
    {
      v132 = sub_10015C0B4(*v127, *(v127 + 2), v126, v131, (v125 + 16));
      if (v133)
      {
        goto LABEL_159;
      }

      v120 = v153;
      goto LABEL_156;
    }

    if (!v131)
    {
LABEL_159:

      sub_100187EA0(v140, v129);
      *&v158[0] = v121;
      v142 = *(v121 + 2);
      v141 = *(v121 + 3);
      if (v142 >= v141 >> 1)
      {
        sub_100091BA8((v141 > 1), v142 + 1, 1);

        v121 = *&v158[0];
      }

      else
      {
      }

      v120 = v153;
      *(v121 + 2) = v142 + 1;
      *&v121[4 * v142 + 32] = v130;
      goto LABEL_137;
    }

    v132 = 0;
    while (1)
    {
      v134 = (v126 + 16 * v132);
      if ((v134[2] | (v134[2] << 32)) == (v129 | (v129 << 32)))
      {
        v135 = *v134;
        v136 = *(*v134 + 16);
        if (v136 == *(v128 + 16))
        {
          break;
        }
      }

LABEL_145:
      if (++v132 == v131)
      {
        goto LABEL_159;
      }
    }

    if (v136 && v135 != v128)
    {
      break;
    }

LABEL_156:
    if ((v132 & 0x8000000000000000) != 0)
    {
      goto LABEL_174;
    }

    if (v132 >= *(v121 + 2))
    {
      goto LABEL_175;
    }
  }

  v138 = (v135 + 32);
  v139 = (v128 + 32);
  while (v136)
  {
    if (*v138 != *v139)
    {
      goto LABEL_145;
    }

    ++v138;
    ++v139;
    if (!--v136)
    {
      goto LABEL_156;
    }
  }

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
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000D03F4(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CF008, &qword_1004D1EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D0488(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for PendingServerResponses();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[12];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for PendingPersistenceUpdates();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v13 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[15];
    goto LABEL_13;
  }

  v14 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[16];
    goto LABEL_13;
  }

  v16 = _s15MissingMessagesOMa(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[17];

  return v17(v18, a2, v16);
}

uint64_t sub_1000D06B0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PendingServerResponses();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for PendingPersistenceUpdates();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v13 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[15];
    goto LABEL_11;
  }

  v14 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[16];
    goto LABEL_11;
  }

  v16 = _s15MissingMessagesOMa(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[17];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for MailboxSyncState()
{
  result = qword_1005CF898;
  if (!qword_1005CF898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D0910()
{
  sub_1000576D4(319, &qword_1005CD840);
  if (v0 <= 0x3F)
  {
    sub_1000576D4(319, &qword_1005CF8A8);
    if (v1 <= 0x3F)
    {
      sub_1000D0B14();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PendingServerResponses();
        if (v3 <= 0x3F)
        {
          type metadata accessor for PendingPersistenceUpdates();
          if (v4 <= 0x3F)
          {
            sub_1000D0B70();
            if (v5 <= 0x3F)
            {
              sub_1000D0BD4(319, &qword_1005CF8C0, type metadata accessor for MessageBatches);
              if (v6 <= 0x3F)
              {
                sub_1000D0BD4(319, &qword_1005CF8C8, type metadata accessor for NewestMessages);
                if (v7 <= 0x3F)
                {
                  _s15MissingMessagesOMa(319);
                  if (v8 <= 0x3F)
                  {
                    sub_1000576D4(319, &unk_1005CF8D0);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000D0B14()
{
  if (!qword_1005CF8B0)
  {
    sub_1000CEA84();
    v0 = sub_1004A5DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CF8B0);
    }
  }
}

void sub_1000D0B70()
{
  if (!qword_1005CF8B8)
  {
    sub_1000CEA84();
    v0 = sub_1004A5524();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CF8B8);
    }
  }
}

void sub_1000D0BD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004A6374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MailboxSyncState.HighestModificationSequence(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for MailboxSyncState.HighestModificationSequence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000D0CC4(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1000D0CDC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1000D0D04(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 2;
  }

  v4 = a1;
  result = sub_1000D3670(&v4, a2, &v5);
  if (!v2)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D0D48()
{
  v1 = 0;
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v2 + 56;
  v6 = v3 + 56;
  v7 = v4 + 56;
  v8 = &off_1005986B0;
  while (*(v2 + 16))
  {
    v9 = v8;
    v10 = *(v8 + v1 + 32);
    v11 = *(v2 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(v10);
    v12 = sub_1004A6F14();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    if (((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      break;
    }

    ++v1;
    v15 = ~v13;
    while (*(*(v2 + 48) + v14) != v10)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        return 1;
      }
    }

    if (*(v3 + 16))
    {
      v16 = *(v3 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v10);
      v17 = sub_1004A6F14();
      v18 = -1 << *(v3 + 32);
      v19 = v17 & ~v18;
      if ((*(v6 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (*(*(v3 + 48) + v19) != v10)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v6 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 1;
      }
    }

LABEL_13:
    if (sub_100167D14(v2, v3))
    {
      if (*(v4 + 16))
      {
        v21 = *(v4 + 40);
        sub_1004A6E94();
        sub_1004A6EB4(v10);
        v22 = sub_1004A6F14();
        v23 = -1 << *(v4 + 32);
        v24 = v22 & ~v23;
        if ((*(v7 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
        {
          v25 = ~v23;
          while (*(*(v4 + 48) + v24) != v10)
          {
            v24 = (v24 + 1) & v25;
            if (((*(v7 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          return 1;
        }
      }
    }

LABEL_19:
    v8 = v9;
    if (v1 == 7)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_1000D0F5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100092008(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_100092008((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v12];
    v14[4] = v24;
    v14[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_100020944(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000D1184(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_100088568(&v14, v13))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = *(a1 + 48);
    v13 = *(v12 + v11);
    sub_10013FC9C(*(v12 + v11));
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D1280()
{
  v1 = _s15MissingMessagesO10IncompleteVMa(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15MissingMessagesOMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[21];
  if (sub_100014D94(12, v10) & 1) == 0 || (sub_100014D94(12, v9) & 1) != 0 || (sub_100167D14(v10, v9) & 1) != 0 && (sub_100014D94(12, v11))
  {
    goto LABEL_3;
  }

  v14 = type metadata accessor for MailboxSyncState();
  sub_1000D4DB4(v0 + *(v14 + 68), v8, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
LABEL_13:
    v12 = sub_1000D0D48() ^ 1;
    return v12 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1000D4E84(v8, _s15MissingMessagesOMa);
    goto LABEL_13;
  }

  sub_1000D4E1C(v8, v4, _s15MissingMessagesO10IncompleteVMa);
  v16 = sub_1000E666C();
  v18 = v17;
  sub_1000D4E84(v4, _s15MissingMessagesO10IncompleteVMa);
  if ((v18 & 1) != 0 || !v16)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = 0;
  return v12 & 1;
}

double sub_1000D1464@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MailboxSyncState();
  v7 = v6[15];
  v8 = type metadata accessor for MessageBatches(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = v6[16];
  v10 = type metadata accessor for NewestMessages();
  (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
  v11 = a3 + v6[18];
  *v11 = 0;
  *(v11 + 8) = 256;
  v12 = (a3 + v6[19]);
  *v12 = *MonotonicTime.bootTime.unsafeMutableAddressor();
  v12[1] = 0;
  *a3 = *(a1 + 24);
  *(a3 + 12) = *(a1 + 52);
  *(a3 + 8) = *(a1 + 48);
  *(a3 + 20) = *(a1 + 60);
  *(a3 + 16) = *(a1 + 56);
  if (*(a1 + 73) & 1) != 0 || (*(a1 + 72))
  {
    goto LABEL_6;
  }

  v13 = *(a1 + 64);
  if (*(a2 + 2))
  {
    if (*(a2 + 2) == 1)
    {
      *(a3 + 24) = v13;
      v14 = 1;
LABEL_7:
      *(a3 + 32) = v14;
      sub_100103430(a3 + v6[12]);
      goto LABEL_8;
    }

LABEL_6:
    *(a3 + 24) = 0;
    v14 = 2;
    goto LABEL_7;
  }

  *(a3 + 24) = v13;
  *(a3 + 32) = 0;
  sub_10010330C(a3 + v6[12]);
LABEL_8:
  *(a3 + 152) = _swiftEmptySetSingleton;
  *(a3 + 160) = _swiftEmptySetSingleton;
  *(a3 + 168) = _swiftEmptySetSingleton;
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = *(a1 + 40);
  }

  else
  {
    v17 = sub_1000D0F5C(*(a1 + 16));
    v15 = sub_1000CE5E4(v17);
  }

  sub_1000CB970(a1);

  sub_1000935E4(v18, v34);
  v19 = v34[2];
  *(a3 + 88) = v34[3];
  v20 = v34[5];
  *(a3 + 104) = v34[4];
  *(a3 + 120) = v20;
  *(a3 + 136) = v35;
  v21 = v34[1];
  *(a3 + 40) = v34[0];
  *(a3 + 56) = v21;
  *(a3 + 72) = v19;
  v22 = sub_1000951DC(v15);

  v23 = vdupq_n_s64(v22);
  *(a3 + 144) = v22 & 1;
  *v23.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v23, xmmword_1004D2F00), vshlq_u64(v23, xmmword_1004D2EF0))), 0x1000100010001);
  *(a3 + 145) = vuzp1_s8(*v23.i8, *v23.i8).u32[0];
  *(a3 + 176) = _swiftEmptySetSingleton;
  v24 = a3 + v6[13];
  *v24 = 0;
  *(v24 + 2) = 0;
  v25 = type metadata accessor for PendingPersistenceUpdates();
  v26 = (v24 + *(v25 + 28));
  *v26 = sub_100163144(_swiftEmptyArrayStorage);
  v27 = type metadata accessor for MessagesPendingDownload();
  v28 = *(v27 + 20);
  sub_100016D2C();
  sub_1004A7114();
  v29 = (v26 + *(type metadata accessor for MessagesPendingDownloadPerPass() + 20));
  *v29 = sub_100163144(_swiftEmptyArrayStorage);
  v30 = v29 + *(v27 + 20);
  sub_1004A7114();
  v31 = v24 + *(v25 + 32);
  sub_1004A7114();
  *(a3 + v6[14]) = sub_10016324C(_swiftEmptyArrayStorage);
  *(a3 + v6[17]) = 0;
  _s15MissingMessagesOMa(0);
  swift_storeEnumTagMultiPayload();
  v32 = a3 + v6[20];
  *v32 = _swiftEmptyArrayStorage;
  result = -1.90237734e-283;
  *(v32 + 8) = xmmword_1004D2F10;
  return result;
}

void sub_1000D17D0(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t *a8)
{
  v220 = a8;
  v206 = a5;
  v207 = a7;
  v218 = a6;
  v202 = a3;
  v203 = a4;
  v201 = a2;
  v222 = a1;
  v217 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v215 = *(v217 - 1);
  v8 = *(v215 + 64);
  __chkstk_darwin(v217);
  v216 = &v195 - v9;
  v214 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v10 = *(*(v214 - 8) + 64);
  v11 = __chkstk_darwin(v214);
  v212 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v209 = &v195 - v14;
  v15 = __chkstk_darwin(v13);
  v210 = &v195 - v16;
  __chkstk_darwin(v15);
  v211 = &v195 - v17;
  v219 = type metadata accessor for MailboxSyncState();
  v18 = *(*(v219 - 1) + 64);
  __chkstk_darwin(v219);
  v200 = &v195 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = _s12LocalMailboxV6LoggerVMa();
  v20 = *(*(v213 - 8) + 64);
  v21 = __chkstk_darwin(v213);
  v205 = &v195 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v204 = &v195 - v24;
  v25 = __chkstk_darwin(v23);
  v208 = &v195 - v26;
  v27 = __chkstk_darwin(v25);
  v198 = &v195 - v28;
  v29 = __chkstk_darwin(v27);
  v197 = &v195 - v30;
  v31 = __chkstk_darwin(v29);
  v199 = &v195 - v32;
  v33 = __chkstk_darwin(v31);
  v196 = &v195 - v34;
  v35 = __chkstk_darwin(v33);
  v195 = &v195 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = (&v195 - v38);
  v40 = __chkstk_darwin(v37);
  v42 = &v195 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v195 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = (&v195 - v47);
  v49 = __chkstk_darwin(v46);
  v51 = &v195 - v50;
  v52 = __chkstk_darwin(v49);
  v54 = &v195 - v53;
  __chkstk_darwin(v52);
  v56 = &v195 - v55;
  v57 = type metadata accessor for UntaggedResponse(0);
  v58 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v60 = (&v195 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D4DB4(v222, v60, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 17)
  {
    if (EnumCaseMultiPayload != 18)
    {
      if (EnumCaseMultiPayload != 19)
      {
        if (EnumCaseMultiPayload == 20)
        {
          memcpy(v224, v60, 0x268uLL);
          sub_1000D38FC(v224, v201, v202, v203, v220);
          sub_100025D5C(v224);
          return;
        }

        goto LABEL_25;
      }

      v113 = v209;
      sub_100020950(v60, v209);
      v114 = v221 + *(v219 + 12);
      v115 = *(type metadata accessor for PendingServerResponses() + 24);
      (*(v215 + 16))(v216, v113, v217);
      sub_1004A7104();
      v116 = v220;
      v117 = v208;
      sub_1000D4DB4(v220, v208, _s12LocalMailboxV6LoggerVMa);
      v118 = v204;
      sub_1000D4DB4(v116, v204, _s12LocalMailboxV6LoggerVMa);
      v119 = v205;
      sub_1000D4DB4(v116, v205, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v120 = v212;
      sub_10000E268(v113, v212, &unk_1005D91B0, &unk_1004CF400);
      v121 = sub_1004A4A54();
      v122 = sub_1004A6034();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v223 = v222;
        *v123 = 68159235;
        v124 = v117;
        *(v123 + 4) = 2;
        *(v123 + 8) = 256;
        v125 = v118;
        v126 = v213;
        v127 = *(v125 + *(v213 + 20));
        LODWORD(v221) = v122;
        sub_1000D4E84(v125, _s12LocalMailboxV6LoggerVMa);
        *(v123 + 10) = v127;
        *(v123 + 11) = 1040;
        *(v123 + 13) = 2;
        *(v123 + 17) = 512;
        v128 = *(v119 + *(v126 + 20) + 2);
        sub_1000D4E84(v119, _s12LocalMailboxV6LoggerVMa);
        *(v123 + 19) = v128;
        *(v123 + 21) = 2160;
        *(v123 + 23) = 0x786F626C69616DLL;
        *(v123 + 31) = 2085;
        v129 = v124 + *(v126 + 20);
        v130 = *(v129 + 8);
        v131 = *(v129 + 16);

        sub_1000D4E84(v124, _s12LocalMailboxV6LoggerVMa);
        v224[0] = v130;
        LODWORD(v224[1]) = v131;
        v132 = sub_1004A5824();
        v134 = sub_10015BA6C(v132, v133, &v223);

        *(v123 + 33) = v134;
        *(v123 + 41) = 2048;
        v135 = v212;
        v136 = MessageIdentifierSet.count.getter();
        sub_100025F40(v135, &unk_1005D91B0, &unk_1004CF400);
        *(v123 + 43) = v136;
        _os_log_impl(&_mh_execute_header, v121, v221, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received vanished (earlier) for %ld UID(s).", v123, 0x33u);
        sub_1000197E0(v222);
      }

      else
      {
        sub_100025F40(v120, &unk_1005D91B0, &unk_1004CF400);
        sub_1000D4E84(v119, _s12LocalMailboxV6LoggerVMa);
        sub_1000D4E84(v118, _s12LocalMailboxV6LoggerVMa);

        sub_1000D4E84(v117, _s12LocalMailboxV6LoggerVMa);
      }

      v137 = v113;
LABEL_29:
      sub_100025F40(v137, &unk_1005D91B0, &unk_1004CF400);
      return;
    }

    v99 = v60;
    v100 = v211;
    sub_100020950(v99, v211);
    v101 = v221;
    v102 = v221 + *(v219 + 12);
    v103 = *(type metadata accessor for PendingServerResponses() + 24);
    (*(v215 + 16))(v216, v100, v217);
    sub_1004A7104();
    v104 = *v101;
    v105 = MessageIdentifierSet.count.getter();
    if (!__OFSUB__(v104, v105))
    {
      v106 = ((v104 - v105) & ~((v104 - v105) >> 63));
      *v101 = v106;
      v107 = sub_1000E5314();
      v108 = sub_1000D0D04(v107 | ((HIDWORD(v107) & 1) << 32), v101);
      v110 = v198;
      v109 = v199;
      v111 = v197;
      v222 = v106;
      if (v108 == 2 || (v108 & 1) == 0)
      {
        v112 = 0;
      }

      else
      {
        sub_10013FC9C(0xEu);
        sub_100088568(v224, 14);
        v112 = 1;
      }

      v159 = v220;
      sub_1000D4DB4(v220, v109, _s12LocalMailboxV6LoggerVMa);
      sub_1000D4DB4(v159, v111, _s12LocalMailboxV6LoggerVMa);
      sub_1000D4DB4(v159, v110, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v160 = v210;
      sub_10000E268(v100, v210, &unk_1005D91B0, &unk_1004CF400);
      v161 = sub_1004A4A54();
      v162 = sub_1004A6034();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        LODWORD(v220) = v112;
        v164 = v163;
        v221 = swift_slowAlloc();
        v223 = v221;
        *v164 = 68159747;
        *(v164 + 4) = 2;
        *(v164 + 8) = 256;
        v165 = v111;
        v166 = v213;
        v167 = *(v165 + *(v213 + 20));
        sub_1000D4E84(v165, _s12LocalMailboxV6LoggerVMa);
        *(v164 + 10) = v167;
        *(v164 + 11) = 1040;
        *(v164 + 13) = 2;
        *(v164 + 17) = 512;
        v168 = *(v110 + *(v166 + 20) + 2);
        sub_1000D4E84(v110, _s12LocalMailboxV6LoggerVMa);
        *(v164 + 19) = v168;
        *(v164 + 21) = 2160;
        *(v164 + 23) = 0x786F626C69616DLL;
        *(v164 + 31) = 2085;
        v169 = v109 + *(v166 + 20);
        v170 = *(v169 + 8);
        v171 = *(v169 + 16);

        sub_1000D4E84(v109, _s12LocalMailboxV6LoggerVMa);
        v224[0] = v170;
        LODWORD(v224[1]) = v171;
        v172 = sub_1004A5824();
        v174 = sub_10015BA6C(v172, v173, &v223);

        *(v164 + 33) = v174;
        *(v164 + 41) = 2048;
        v175 = v210;
        v176 = MessageIdentifierSet.count.getter();
        sub_100025F40(v175, &unk_1005D91B0, &unk_1004CF400);
        *(v164 + 43) = v176;
        *(v164 + 51) = 2048;
        *(v164 + 53) = v222;
        *(v164 + 61) = 1024;
        *(v164 + 63) = v220;
        _os_log_impl(&_mh_execute_header, v161, v162, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received vanished for %ld UID(s). Message count is now %ld. Re-running CountUnreadMessages: %{BOOL}d.", v164, 0x43u);
        sub_1000197E0(v221);

        v137 = v211;
      }

      else
      {
        sub_100025F40(v160, &unk_1005D91B0, &unk_1004CF400);
        sub_1000D4E84(v110, _s12LocalMailboxV6LoggerVMa);
        sub_1000D4E84(v111, _s12LocalMailboxV6LoggerVMa);

        sub_1000D4E84(v109, _s12LocalMailboxV6LoggerVMa);
        v137 = v100;
      }

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_41;
  }

  v216 = v45;
  v217 = v42;
  v222 = v48;
  v62 = v218;
  if (EnumCaseMultiPayload != 15)
  {
    if (EnumCaseMultiPayload != 17)
    {
LABEL_25:
      v157 = type metadata accessor for UntaggedResponse;
      v158 = v60;
LABEL_39:
      sub_1000D4E84(v158, v157);
      return;
    }

    v63 = *v60;
    v64 = v219;
    v65 = v221;
    v66 = v221 + *(v219 + 12) + 40;
    sub_100103554(*v60);
    v67 = v65 + *(v64 + 16);
    v68 = type metadata accessor for NewestMessages();
    v69 = (*(*(v68 - 8) + 48))(v67, 1, v68);
    v70 = v62;
    v72 = v206;
    v71 = v207;
    v73 = v200;
    if (!v69)
    {
      v74 = *(v68 + 24);
      v75 = *&v67[v74];
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
LABEL_41:
        __break(1u);
        return;
      }

      *&v67[v74] = v77;
    }

    sub_1000D4DB4(v65, v73, type metadata accessor for MailboxSyncState);
    v78 = sub_1000D3458(v63, v72 & 1, v70, v71 & 1);
    sub_1000D4E84(v73, type metadata accessor for MailboxSyncState);
    if (v78)
    {
      sub_10013FC9C(0xEu);
      sub_100088568(v224, 14);
    }

    v79 = *v65 - 1;
    if (*v65 < 1)
    {
      v177 = v220;
      v81 = v39;
      sub_1000D4DB4(v220, v39, _s12LocalMailboxV6LoggerVMa);
      v178 = v195;
      sub_1000D4DB4(v177, v195, _s12LocalMailboxV6LoggerVMa);
      v179 = v196;
      sub_1000D4DB4(v177, v196, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v84 = sub_1004A4A54();
      v180 = sub_1004A6014();
      if (os_log_type_enabled(v84, v180))
      {
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        LODWORD(v221) = v78;
        v222 = v182;
        v223 = v182;
        *v181 = 68159491;
        v183 = v178;
        *(v181 + 4) = 2;
        *(v181 + 8) = 256;
        LODWORD(v220) = v63;
        v184 = v179;
        v185 = v213;
        v186 = *(v178 + *(v213 + 20));
        sub_1000D4E84(v183, _s12LocalMailboxV6LoggerVMa);
        *(v181 + 10) = v186;
        *(v181 + 11) = 1040;
        *(v181 + 13) = 2;
        *(v181 + 17) = 512;
        v187 = *(v184 + *(v185 + 20) + 2);
        sub_1000D4E84(v184, _s12LocalMailboxV6LoggerVMa);
        *(v181 + 19) = v187;
        *(v181 + 21) = 2160;
        *(v181 + 23) = 0x786F626C69616DLL;
        *(v181 + 31) = 2085;
        v188 = v81 + *(v185 + 20);
        v189 = *(v188 + 1);
        v190 = *(v188 + 4);

        sub_1000D4E84(v81, _s12LocalMailboxV6LoggerVMa);
        v224[0] = v189;
        LODWORD(v224[1]) = v190;
        v191 = sub_1004A5824();
        v193 = sub_10015BA6C(v191, v192, &v223);

        *(v181 + 33) = v193;
        *(v181 + 41) = 1024;
        *(v181 + 43) = v220;
        *(v181 + 47) = 1024;
        *(v181 + 49) = v221 & 1;
        _os_log_impl(&_mh_execute_header, v84, v180, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received expunge %u, but message count is already zero. Re-running CountUnreadMessages: %{BOOL}d.", v181, 0x35u);
        sub_1000197E0(v222);

        goto LABEL_35;
      }

      sub_1000D4E84(v179, _s12LocalMailboxV6LoggerVMa);
      v194 = v178;
    }

    else
    {
      *v65 = v79;
      v80 = v220;
      v81 = v222;
      sub_1000D4DB4(v220, v222, _s12LocalMailboxV6LoggerVMa);
      v82 = v216;
      sub_1000D4DB4(v80, v216, _s12LocalMailboxV6LoggerVMa);
      v83 = v217;
      sub_1000D4DB4(v80, v217, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v84 = sub_1004A4A54();
      v85 = sub_1004A6034();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v218 = v79;
        v87 = v86;
        v88 = swift_slowAlloc();
        LODWORD(v221) = v78;
        v219 = v88;
        v223 = v88;
        *v87 = 68159747;
        *(v87 + 4) = 2;
        *(v87 + 8) = 256;
        LODWORD(v220) = v63;
        v89 = v82;
        v90 = v213;
        v91 = *(v89 + *(v213 + 20));
        sub_1000D4E84(v89, _s12LocalMailboxV6LoggerVMa);
        *(v87 + 10) = v91;
        *(v87 + 11) = 1040;
        *(v87 + 13) = 2;
        *(v87 + 17) = 512;
        v92 = *(v83 + *(v90 + 20) + 2);
        sub_1000D4E84(v83, _s12LocalMailboxV6LoggerVMa);
        *(v87 + 19) = v92;
        *(v87 + 21) = 2160;
        *(v87 + 23) = 0x786F626C69616DLL;
        *(v87 + 31) = 2085;
        v93 = v81 + *(v90 + 20);
        v94 = *(v93 + 1);
        v95 = *(v93 + 4);

        sub_1000D4E84(v81, _s12LocalMailboxV6LoggerVMa);
        v224[0] = v94;
        LODWORD(v224[1]) = v95;
        v96 = sub_1004A5824();
        v98 = sub_10015BA6C(v96, v97, &v223);

        *(v87 + 33) = v98;
        *(v87 + 41) = 1024;
        *(v87 + 43) = v220;
        *(v87 + 47) = 2048;
        *(v87 + 49) = v218;
        *(v87 + 57) = 1024;
        *(v87 + 59) = v221 & 1;
        _os_log_impl(&_mh_execute_header, v84, v85, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received expunge %u. Message count is now %ld. Re-running CountUnreadMessages: %{BOOL}d.", v87, 0x3Fu);
        sub_1000197E0(v219);

LABEL_35:

        return;
      }

      sub_1000D4E84(v83, _s12LocalMailboxV6LoggerVMa);
      v194 = v82;
    }

    sub_1000D4E84(v194, _s12LocalMailboxV6LoggerVMa);

    v158 = v81;
    v157 = _s12LocalMailboxV6LoggerVMa;
    goto LABEL_39;
  }

  v138 = *v60;
  v139 = v221;
  sub_10013FC9C(0xCu);
  sub_100088568(v224, 12);
  v140 = v220;
  v141 = v56;
  sub_1000D4DB4(v220, v56, _s12LocalMailboxV6LoggerVMa);
  sub_1000D4DB4(v140, v54, _s12LocalMailboxV6LoggerVMa);
  v142 = v51;
  sub_1000D4DB4(v140, v51, _s12LocalMailboxV6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v143 = sub_1004A4A54();
  v144 = sub_1004A6034();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    v223 = v220;
    *v145 = 68159235;
    *(v145 + 4) = 2;
    *(v145 + 8) = 256;
    v222 = v138;
    v146 = v213;
    v147 = v54[*(v213 + 20)];
    sub_1000D4E84(v54, _s12LocalMailboxV6LoggerVMa);
    *(v145 + 10) = v147;
    *(v145 + 11) = 1040;
    *(v145 + 13) = 2;
    *(v145 + 17) = 512;
    v148 = v142;
    v149 = *&v142[*(v146 + 20) + 2];
    sub_1000D4E84(v148, _s12LocalMailboxV6LoggerVMa);
    *(v145 + 19) = v149;
    *(v145 + 21) = 2160;
    *(v145 + 23) = 0x786F626C69616DLL;
    *(v145 + 31) = 2085;
    v150 = v141 + *(v146 + 20);
    v151 = *(v150 + 8);
    v152 = *(v150 + 16);

    sub_1000D4E84(v141, _s12LocalMailboxV6LoggerVMa);
    v224[0] = v151;
    LODWORD(v224[1]) = v152;
    v153 = sub_1004A5824();
    v155 = sub_10015BA6C(v153, v154, &v223);

    *(v145 + 33) = v155;
    *(v145 + 41) = 1024;
    v156 = v222;
    *(v145 + 43) = v222;
    _os_log_impl(&_mh_execute_header, v143, v144, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Updating message count to %u", v145, 0x2Fu);
    sub_1000197E0(v220);

    *v221 = v156;
  }

  else
  {
    sub_1000D4E84(v51, _s12LocalMailboxV6LoggerVMa);
    sub_1000D4E84(v54, _s12LocalMailboxV6LoggerVMa);

    sub_1000D4E84(v141, _s12LocalMailboxV6LoggerVMa);
    *v139 = v138;
  }
}

uint64_t sub_1000D2C78(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v27 - v5);
  v7 = type metadata accessor for PendingServerResponses();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[19];
  v11 = v2[20];
  v13 = v2[21];
  v14 = type metadata accessor for MailboxSyncState();
  sub_1000D4DB4(v2 + v14[12], v10, type metadata accessor for PendingServerResponses);
  v15 = *v2;
  sub_10000E268(v2 + v14[15], v6, &qword_1005CDA20, &unk_1004D2F20);
  v16 = type metadata accessor for MessageBatches(0);
  if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
  {
    sub_100025F40(v6, &qword_1005CDA20, &unk_1004D2F20);
    v17 = 4507;
  }

  else
  {
    v17 = *v6;
    sub_1000D4E84(v6, type metadata accessor for MessageBatches);
  }

  v18 = v28;
  v19 = sub_100103614(v15, v17, HIBYTE(v28) & 1);
  sub_1000D4E84(v10, type metadata accessor for PendingServerResponses);
  *&v29 = v12;
  *(&v29 + 1) = v11;
  v30 = v13;

  sub_1000D1184(v19);

  v20 = v30;
  v27 = v29;
  v21 = v2 + v14[13];
  v22 = sub_1000FF68C();
  v29 = v27;
  v30 = v20;
  sub_1000D1184(v22);

  v23 = v29;
  v24 = v30;
  sub_100166A54(v18 & 0x101010101FFFF01, &v29);
  v25 = sub_1000D4100(v29, v23, *(&v23 + 1), v24);

  return v25;
}

uint64_t sub_1000D2F44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MessagesPendingDownloadPerPass();
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a2 ^ a1;
  if (((a2 ^ a1) & 0xFF00) != 0)
  {
    v12 = *(type metadata accessor for MailboxSyncState() + 68);
    sub_1000D4E84(v3 + v12, _s15MissingMessagesOMa);
    *(v3 + v12) = 0;
    _s15MissingMessagesOMa(0);
    swift_storeEnumTagMultiPayload();
    sub_10013FC9C(0xCu);
    sub_100088568(&v22, 12);
    sub_10013FC9C(2u);
    sub_100088568(&v22, 2);
    sub_10013FC9C(4u);
    result = sub_100088568(&v22, 4);
  }

  if (v11)
  {
    *v10 = sub_100163144(_swiftEmptyArrayStorage);
    v13 = type metadata accessor for MessagesPendingDownload();
    v14 = *(v13 + 20);
    sub_100016D2C();
    sub_1004A7114();
    v15 = (v10 + *(v6 + 20));
    *v15 = sub_100163144(_swiftEmptyArrayStorage);
    v16 = v15 + *(v13 + 20);
    sub_1004A7114();
    v17 = v3 + *(type metadata accessor for MailboxSyncState() + 52);
    v18 = type metadata accessor for PendingPersistenceUpdates();
    sub_1000D4CFC(v10, v17 + *(v18 + 28));
    sub_10013FC9C(9u);
    sub_100088568(&v21, 9);
    sub_10013FC9C(0xAu);
    return sub_100088568(&v20, 10);
  }

  return result;
}

uint64_t sub_1000D317C()
{
  if (!*(v0 + 12))
  {
    v1 = *(v0 + 8);
  }

  if (*(v0 + 20))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 16);
  }

  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  sub_1004A6724(180);
  v23 = 0;
  v24 = 0xE000000000000000;
  v27._countAndFlagsBits = 0xD00000000000001FLL;
  v27._object = 0x80000001004AA220;
  sub_1004A5994(v27);
  *&v25[0] = *v0;
  v28._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v28);

  v29._countAndFlagsBits = 0x49557478656E202CLL;
  v29._object = 0xEB00000000203A44;
  sub_1004A5994(v29);
  v30._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v30);

  v31._object = 0x80000001004AA240;
  v31._countAndFlagsBits = 0xD000000000000011;
  sub_1004A5994(v31);
  LODWORD(v25[0]) = v2;
  sub_1000D40AC();
  v32._countAndFlagsBits = sub_1004A5A84();
  sub_1004A5994(v32);

  v33._countAndFlagsBits = 0x6E4567616C66202CLL;
  v33._object = 0xEF203A7265646F63;
  sub_1004A5994(v33);
  v3 = *(v0 + 88);
  v4 = *(v0 + 120);
  v25[4] = *(v0 + 104);
  v25[5] = v4;
  v26 = *(v0 + 136);
  v5 = *(v0 + 56);
  v25[0] = *(v0 + 40);
  v25[1] = v5;
  v25[2] = *(v0 + 72);
  v25[3] = v3;
  v6 = *(v0 + 88);
  v7 = *(v0 + 120);
  v20 = *(v0 + 104);
  v21 = v7;
  v22 = *(v0 + 136);
  v8 = *(v0 + 56);
  v16 = *(v0 + 40);
  v17 = v8;
  v18 = *(v0 + 72);
  v19 = v6;
  sub_100095920(v25, v15);
  v34._countAndFlagsBits = sub_1004A5824();
  sub_1004A5994(v34);

  v35._countAndFlagsBits = 0x654467616C66202CLL;
  v35._object = 0xEF203A7265646F63;
  sub_1004A5994(v35);
  v9 = *(v0 + 145);
  v10 = *(v0 + 146);
  v11 = *(v0 + 147);
  v12 = *(v0 + 148);
  LOBYTE(v16) = *(v0 + 144);
  BYTE1(v16) = v9;
  BYTE2(v16) = v10;
  BYTE3(v16) = v11;
  BYTE4(v16) = v12;
  v36._countAndFlagsBits = sub_1004A5824();
  sub_1004A5994(v36);

  v37._countAndFlagsBits = 0xD00000000000004ELL;
  v37._object = 0x80000001004AA260;
  sub_1004A5994(v37);
  v13 = *(v0 + 176);
  sub_1000CEA84();
  v38._countAndFlagsBits = sub_1004A5D54();
  sub_1004A5994(v38);

  v39._countAndFlagsBits = 41;
  v39._object = 0xE100000000000000;
  sub_1004A5994(v39);
  return v23;
}

uint64_t sub_1000D3458(unsigned int a1, char a2, uint64_t a3, char a4)
{
  v9 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for MessageBatches(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = __chkstk_darwin(v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    return 0;
  }

  if (a2)
  {
    v19 = result;
    v20 = type metadata accessor for MailboxSyncState();
    sub_10000E268(v4 + *(v20 + 60), v12, &qword_1005CDA20, &unk_1004D2F20);
    if ((*(v14 + 48))(v12, 1, v19) == 1)
    {
      sub_100025F40(v12, &qword_1005CDA20, &unk_1004D2F20);
      return 0;
    }

    else
    {
      sub_1000D4E1C(v12, v18, type metadata accessor for MessageBatches);
      v24 = *(v18 + 1);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = *(v24 + 8 * v25 + 24);
      }

      else
      {
        v26 = 1;
      }

      v27 = v26 > a1;
      sub_1000D4E84(v18, type metadata accessor for MessageBatches);
      return v27;
    }
  }

  else
  {
    v21 = *v4 + 500;
    if (__OFADD__(*v4, 500))
    {
      __break(1u);
    }

    else
    {
      v22 = __OFSUB__(v21, a3);
      v23 = v21 - a3;
      if (!v22)
      {
        return v23 > a1;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000D3670@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v26 = a3;
  v5 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for MessageBatches(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MailboxSyncState();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_1000D4DB4(a2, v18, type metadata accessor for MailboxSyncState);
  sub_10000E268(&v18[*(v15 + 68)], v8, &qword_1005CDA20, &unk_1004D2F20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000D4E84(v18, type metadata accessor for MailboxSyncState);
    result = sub_100025F40(v8, &qword_1005CDA20, &unk_1004D2F20);
    v21 = 0;
  }

  else
  {
    sub_1000D4E1C(v8, v13, type metadata accessor for MessageBatches);
    v22 = *(v13 + 1);
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v22 + 8 * v23 + 24);
    }

    else
    {
      v24 = 1;
    }

    sub_1000D4E84(v18, type metadata accessor for MailboxSyncState);
    v21 = v19 < v24;
    result = sub_1000D4E84(v13, type metadata accessor for MessageBatches);
  }

  *v26 = v21;
  return result;
}

uint64_t sub_1000D38FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*(_s12LocalMailboxV6LoggerVMa() - 8) + 64);
  v12 = __chkstk_darwin(a1);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v37[-v16];
  result = __chkstk_darwin(v15);
  v21 = &v37[-v20];
  if ((*(result + 560) & 1) != 0 || *(v5 + 32))
  {
    return sub_1000D3CA0(result, a2, a3, a4, a5);
  }

  v22 = *(result + 552);
  v23 = *(v5 + 24);
  if (v23 <= v22)
  {
    v24 = *(result + 552);
  }

  else
  {
    v24 = *(v5 + 24);
  }

  if (((v24 | v23) & 0x8000000000000000) == 0)
  {
    if (v23 < v22)
    {
      v43 = v19;
      v44 = v5;
      v45 = result;
      *(v5 + 24) = v24;
      *(v5 + 32) = 0;
      sub_1000D4DB4(a5, &v37[-v20], _s12LocalMailboxV6LoggerVMa);
      sub_1000D4DB4(a5, v17, _s12LocalMailboxV6LoggerVMa);
      sub_1000D4DB4(a5, v14, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v25 = sub_1004A4A54();
      v26 = sub_1004A6034();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v42 = v25;
        v28 = v27;
        v41 = swift_slowAlloc();
        v48 = v41;
        *v28 = 68159235;
        *(v28 + 4) = 2;
        *(v28 + 8) = 256;
        v39 = v24;
        v29 = v43;
        v38 = v17[*(v43 + 20)];
        v40 = v26;
        sub_1000D4E84(v17, _s12LocalMailboxV6LoggerVMa);
        *(v28 + 10) = v38;
        *(v28 + 11) = 1040;
        *(v28 + 13) = 2;
        *(v28 + 17) = 512;
        v30 = *&v14[*(v29 + 20) + 2];
        sub_1000D4E84(v14, _s12LocalMailboxV6LoggerVMa);
        *(v28 + 19) = v30;
        *(v28 + 21) = 2160;
        *(v28 + 23) = 0x786F626C69616DLL;
        *(v28 + 31) = 2085;
        v31 = &v21[*(v29 + 20)];
        v32 = *(v31 + 1);
        LODWORD(v29) = *(v31 + 4);

        sub_1000D4E84(v21, _s12LocalMailboxV6LoggerVMa);
        v46 = v32;
        v47 = v29;
        v33 = sub_1004A5824();
        v35 = sub_10015BA6C(v33, v34, &v48);

        *(v28 + 33) = v35;
        *(v28 + 41) = 2048;
        *(v28 + 43) = v39;
        v36 = v42;
        _os_log_impl(&_mh_execute_header, v42, v40, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Updating highest mod-seq to %llu", v28, 0x33u);
        sub_1000197E0(v41);
      }

      else
      {
        sub_1000D4E84(v14, _s12LocalMailboxV6LoggerVMa);
        sub_1000D4E84(v17, _s12LocalMailboxV6LoggerVMa);

        sub_1000D4E84(v21, _s12LocalMailboxV6LoggerVMa);
      }

      result = v45;
    }

    return sub_1000D3CA0(result, a2, a3, a4, a5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D3CA0(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a1 + 10);
  v48[8] = *(a1 + 9);
  v48[9] = v11;
  v48[10] = *(a1 + 11);
  v49 = *(a1 + 192);
  v12 = *(a1 + 6);
  v48[4] = *(a1 + 5);
  v48[5] = v12;
  v13 = *(a1 + 8);
  v48[6] = *(a1 + 7);
  v48[7] = v13;
  v14 = *(a1 + 2);
  v48[0] = *(a1 + 1);
  v48[1] = v14;
  v15 = *(a1 + 4);
  v48[2] = *(a1 + 3);
  v48[3] = v15;
  result = sub_10003EC1C(v48);
  if (result == 1 && !*(*(a1 + 25) + 16))
  {
    v17 = *(a1 + 22);
    v50[8] = *(a1 + 21);
    v50[9] = v17;
    v50[10] = *(a1 + 23);
    v51 = *(a1 + 384);
    v18 = *(a1 + 18);
    v50[4] = *(a1 + 17);
    v50[5] = v18;
    v19 = *(a1 + 20);
    v50[6] = *(a1 + 19);
    v50[7] = v19;
    v20 = *(a1 + 14);
    v50[0] = *(a1 + 13);
    v50[1] = v20;
    v21 = *(a1 + 16);
    v50[2] = *(a1 + 15);
    v50[3] = v21;
    result = sub_10003EC1C(v50);
    if (result == 1 && !*(a1 + 54) && (a1[134] & 1) != 0)
    {
      v22 = *(a1 + 64);
      v23 = a1[2];
      LOBYTE(v47[0]) = *(a1 + 12);
      v39 = v47[0];
      v40 = v23;
      sub_1000D3F44(v22, v23 | (LOBYTE(v47[0]) << 32));
      if (v22)
      {
        v24 = &_mh_execute_header;
        if (!v5[148])
        {
          v24 = 0;
        }

        v25 = 0x1000000;
        if (!v5[147])
        {
          v25 = 0;
        }

        v26 = 0x10000;
        if (!v5[146])
        {
          v26 = 0;
        }

        v27 = 256;
        if (!v5[145])
        {
          v27 = 0;
        }

        v28 = FlagDecoder.decode(_:)(v22, v27 | v5[144] | v26 | v25 | v24);
        LOBYTE(v22) = v29;
      }

      else
      {
        v28 = 2;
      }

      v30 = *(a1 + 65);
      v46 = v30;
      if (v28 != 2 || v30)
      {
        sub_10000E268(&v46, v47, qword_1005CF958, &qword_1004D3040);
        v31 = *a1;
        v32 = *(a1 + 4);
        v33 = *(a1 + 69);
        v34 = *(a1 + 560);
        *&v41 = v28;
        BYTE8(v41) = v22;
        *&v42 = v30;
        DWORD2(v42) = v31;
        BYTE12(v42) = v32;
        LODWORD(v43) = v40;
        BYTE4(v43) = v39;
        *(&v43 + 1) = v33;
        LOBYTE(v44) = v34;
        DWORD2(v44) = a2;
        *&v45 = a3;
        *(&v45 + 1) = a4;
        v47[3] = v44;
        v47[4] = v45;
        v47[1] = v42;
        v47[2] = v43;
        v47[0] = v41;
        v35 = &v5[*(type metadata accessor for MailboxSyncState() + 48)];
        v36 = *(v35 + 24);
        v37 = *(v35 + 32);
        sub_100025928(v35, v36);
        v38 = *(v37 + 16);

        v38(v47, a5, v36, v37);
        return sub_1000D4D60(&v41);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1000D3F44(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MessageBatches(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if ((a2 & 0x100000000) == 0)
    {
      v11 = *(type metadata accessor for MailboxSyncState() + 60);
      result = (*(v6 + 48))(v2 + v11, 1, v5);
      if (!result)
      {
        sub_1000D4DB4(v2 + v11, v10, type metadata accessor for MessageBatches);
        v12 = *(v10 + 1);
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = *(v12 + 8 * v13 + 24);
        }

        else
        {
          v14 = 1;
        }

        result = sub_1000D4E84(v10, type metadata accessor for MessageBatches);
        if (v14 > a2)
        {
          sub_10013FC9C(0xEu);
          return sub_100088568(&v16, 14);
        }
      }
    }
  }

  return result;
}

unint64_t sub_1000D40AC()
{
  result = qword_1005CF940;
  if (!qword_1005CF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF940);
  }

  return result;
}

uint64_t sub_1000D4100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {

    return v4;
  }

  v6 = (a1 + 32);

  do
  {
    v8 = *v6++;
    v7 = v8;
    v9 = v13;
    if (sub_100014D94(v8, v13))
    {
      sub_10013FC9C(v7);
      sub_10013FC9C(v7);
      v9 = v13;
    }

    else if (sub_100014D94(v7, v14) & 1) != 0 && (sub_100014D94(v7, v12))
    {
      sub_10013FC9C(v7);
    }

    else
    {
      sub_100088568(&v11, v7);
    }

    if (sub_100014D94(v7, v9))
    {
      sub_10013FC9C(v7);
    }

    else if ((sub_100014D94(v7, v14) & 1) == 0 || (sub_100014D94(v7, v12) & 1) == 0)
    {
      sub_100088568(&v11, v7);
      goto LABEL_4;
    }

    sub_10013FC9C(v7);
LABEL_4:
    --v5;
  }

  while (v5);
  return v14;
}

BOOL sub_1000D4284(_BOOL8 result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return a4 == 2 && !a3;
    }

    if (a4 != 1)
    {
      return 0;
    }

    if (((a3 | result) & 0x8000000000000000) == 0)
    {
      return a3 == result;
    }

    __break(1u);
  }

  if (a4)
  {
    return 0;
  }

  if (((a3 | result) & 0x8000000000000000) == 0)
  {
    return a3 == result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D42EC(uint64_t a1, uint64_t a2)
{
  v79 = type metadata accessor for NewestMessages();
  v78 = *(v79 - 8);
  v4 = *(v78 + 64);
  __chkstk_darwin(v79);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v74 - v9;
  v11 = sub_10000C9C0(&qword_1005CF948, &qword_1004D3030);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v81 = &v74 - v13;
  v14 = type metadata accessor for MessageBatches(0);
  v80 = *(v14 - 8);
  v15 = *(v80 + 64);
  __chkstk_darwin(v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v74 - v20;
  v22 = sub_10000C9C0(&qword_1005CF950, &qword_1004D3038);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v74 - v24;
  if (*a1 != *a2)
  {
    return 0;
  }

  v26 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8) != *(a1 + 8))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = *(a1 + 24);
  v29 = *(a2 + 24);
  v30 = *(a2 + 32);
  if (!*(a1 + 32))
  {
LABEL_19:
    if (v30)
    {
      return 0;
    }

    if ((v29 | v28) < 0)
    {
      __break(1u);
      goto LABEL_60;
    }

    goto LABEL_21;
  }

  if (*(a1 + 32) != 1)
  {
    result = 0;
    if (v30 != 2 || v29)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v30 != 1)
  {
    return 0;
  }

  v30 = v29 | v28;
  if ((v29 | v28) < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  if (v29 != v28)
  {
    return 0;
  }

LABEL_25:
  v32 = *(a1 + 88);
  v33 = *(a1 + 120);
  v82[4] = *(a1 + 104);
  v82[5] = v33;
  v83 = *(a1 + 136);
  v34 = *(a1 + 56);
  v82[0] = *(a1 + 40);
  v82[1] = v34;
  v35 = *(a1 + 72);
  v82[3] = v32;
  v82[2] = v35;
  v36 = *(a2 + 56);
  v37 = *(a2 + 72);
  v84[0] = *(a2 + 40);
  v84[1] = v36;
  v38 = *(a2 + 88);
  v39 = *(a2 + 104);
  v40 = *(a2 + 120);
  v85 = *(a2 + 136);
  v84[4] = v39;
  v84[5] = v40;
  v84[2] = v37;
  v84[3] = v38;
  if ((_s13IMAP2Behavior11FlagEncoderV23__derived_struct_equalsySbAC_ACtFZ_0(v82, v84) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 144) != *(a2 + 144) || ((*(a1 + 145) ^ *(a2 + 145)) & 1) != 0 || ((*(a1 + 146) ^ *(a2 + 146)) & 1) != 0 || ((*(a1 + 147) ^ *(a2 + 147)) & 1) != 0 || ((*(a1 + 148) ^ *(a2 + 148)) & 1) != 0)
  {
    return result;
  }

  v41 = *(a1 + 152);
  v77 = *(a1 + 160);
  v75 = *(a1 + 168);
  v42 = *(a2 + 152);
  v76 = *(a2 + 160);
  v74 = *(a2 + 168);
  if ((sub_100082EA0(v41, v42) & 1) == 0)
  {
    return 0;
  }

  if ((sub_100082EA0(v77, v76) & 1) == 0)
  {
    return 0;
  }

  if ((sub_100082EA0(v75, v74) & 1) == 0)
  {
    return 0;
  }

  if ((sub_100083990(*(a1 + 176), *(a2 + 176)) & 1) == 0)
  {
    return 0;
  }

  v77 = type metadata accessor for MailboxSyncState();
  if ((sub_100104818(a1 + v77[12], a2 + v77[12]) & 1) == 0 || (sub_1000FF71C((a1 + v77[13]), (a2 + v77[13])) & 1) == 0 || (sub_100115B88(*(a1 + v77[14]), *(a2 + v77[14])) & 1) == 0)
  {
    return 0;
  }

  v76 = v77[15];
  v43 = *(v22 + 48);
  sub_10000E268(a1 + v76, v25, &qword_1005CDA20, &unk_1004D2F20);
  v44 = a2 + v76;
  v76 = v43;
  sub_10000E268(v44, &v25[v43], &qword_1005CDA20, &unk_1004D2F20);
  v80 = *(v80 + 48);
  if ((v80)(v25, 1, v14) != 1)
  {
    sub_10000E268(v25, v21, &qword_1005CDA20, &unk_1004D2F20);
    if ((v80)(&v25[v76], 1, v14) != 1)
    {
      sub_1000D4E1C(&v25[v76], v17, type metadata accessor for MessageBatches);
      v48 = sub_1000DA5A0(v21, v17);
      sub_1000D4E84(v17, type metadata accessor for MessageBatches);
      sub_1000D4E84(v21, type metadata accessor for MessageBatches);
      sub_100025F40(v25, &qword_1005CDA20, &unk_1004D2F20);
      if (!v48)
      {
        return 0;
      }

      goto LABEL_45;
    }

    sub_1000D4E84(v21, type metadata accessor for MessageBatches);
LABEL_43:
    v45 = &qword_1005CF950;
    v46 = &qword_1004D3038;
    v47 = v25;
LABEL_66:
    sub_100025F40(v47, v45, v46);
    return 0;
  }

  if ((v80)(&v25[v76], 1, v14) != 1)
  {
    goto LABEL_43;
  }

  sub_100025F40(v25, &qword_1005CDA20, &unk_1004D2F20);
LABEL_45:
  v49 = v77[16];
  v11 = *(v11 + 48);
  v50 = v81;
  sub_10000E268(a1 + v49, v81, &qword_1005CDC18, &qword_1004CF9E0);
  sub_10000E268(a2 + v49, v50 + v11, &qword_1005CDC18, &qword_1004CF9E0);
  v51 = *(v78 + 48);
  if (v51(v50, 1, v79) == 1)
  {
    if (v51(v81 + v11, 1, v79) == 1)
    {
      sub_100025F40(v81, &qword_1005CDC18, &qword_1004CF9E0);
      goto LABEL_48;
    }

    goto LABEL_58;
  }

  v70 = v81;
  sub_10000E268(v81, v10, &qword_1005CDC18, &qword_1004CF9E0);
  if (v51(v70 + v11, 1, v79) == 1)
  {
    sub_1000D4E84(v10, type metadata accessor for NewestMessages);
LABEL_58:
    v45 = &qword_1005CF948;
    v46 = &qword_1004D3030;
LABEL_65:
    v47 = v81;
    goto LABEL_66;
  }

LABEL_60:
  sub_1000D4E1C(v81 + v11, v6, type metadata accessor for NewestMessages);
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0 || *&v10[*(v79 + 20)] != *&v6[*(v79 + 20)])
  {
    sub_1000D4E84(v6, type metadata accessor for NewestMessages);
    sub_1000D4E84(v10, type metadata accessor for NewestMessages);
    v45 = &qword_1005CDC18;
    v46 = &qword_1004CF9E0;
    goto LABEL_65;
  }

  v71 = *(v79 + 24);
  v72 = *&v10[v71];
  v73 = *&v6[v71];
  sub_1000D4E84(v6, type metadata accessor for NewestMessages);
  sub_1000D4E84(v10, type metadata accessor for NewestMessages);
  sub_100025F40(v81, &qword_1005CDC18, &qword_1004CF9E0);
  if (v72 != v73)
  {
    return 0;
  }

LABEL_48:
  if ((sub_1000E8854(a1 + v77[17], a2 + v77[17]) & 1) == 0)
  {
    return 0;
  }

  v52 = v77[18];
  v53 = a1 + v52;
  v54 = *(a1 + v52 + 9);
  v55 = a2 + v52;
  v56 = *(v55 + 9);
  if ((v54 & 1) == 0)
  {
    if (*(v55 + 9))
    {
      return 0;
    }

    v56 = *(v55 + 8);
    if ((*(v53 + 8) & 1) == 0)
    {
      result = 0;
      if ((*(v55 + 8) & 1) != 0 || *v53 != *v55)
      {
        return result;
      }

      goto LABEL_51;
    }
  }

  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  result = 0;
  v57 = v77[19];
  v58 = a1 + v57;
  v59 = *(a1 + v57);
  v60 = (a2 + v57);
  if (v59 == *v60 && *(v58 + 8) == v60[1])
  {
    v61 = v77[20];
    v62 = a1 + v61;
    v63 = *(a1 + v61);
    v64 = *(a1 + v61 + 8);
    v65 = *(v62 + 16);
    v66 = (a2 + v61);
    v67 = v66[1];
    v68 = v66[2];
    v69 = sub_1001024BC(v63, *v66) & (v64 == v67);
    if (v65 == v68)
    {
      return v69;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000D4CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownloadPerPass();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D4DB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D4E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D4E84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000D4EE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    result = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_1000D5034(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000D5048(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_1000D5090(uint64_t result, int a2, int a3)
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
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000D5108(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v4 = sub_1004A5804();
  v5._countAndFlagsBits = (*(a2 + 96))(a1, a2);
  if (v5._object)
  {
    sub_1004A5994(v5);

    v7._countAndFlagsBits = 45;
    v7._object = 0xE100000000000000;
    sub_1004A5994(v7);
  }

  return v4;
}

Swift::Int sub_1000D51E0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6ED4(v3);
  sub_1004A6EB4(v2 | (v2 << 32));
  return sub_1004A6F14();
}

void sub_1000D5250()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_1004A6EB4(*(v0 + 8));
  sub_1004A6ED4(v2);
  sub_1004A6EB4(v1 | (v1 << 32));
}

Swift::Int sub_1000D529C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6ED4(v3);
  sub_1004A6EB4(v2 | (v2 << 32));
  return sub_1004A6F14();
}

unint64_t sub_1000D5308(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1000D6A84(v5, v7) & 1;
}

unint64_t sub_1000D5358()
{
  result = qword_1005CF9E0[0];
  if (!qword_1005CF9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005CF9E0);
  }

  return result;
}

double sub_1000D53DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 64))(v5, *(a1 + 16));
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000D544C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Task.Logger(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for MailboxTaskLogger(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D696C(a1, v8);
  v16 = a2 + 16;
  v15 = *(a2 + 16);
  v14 = *(v16 + 8);
  (*(v14 + 64))(&v28, v15, v14);
  v27 = v29;
  v17 = v30;
  v18 = v31;
  v19 = sub_1004A4A74();
  (*(*(v19 - 8) + 16))(v13, v8, v19);
  v20 = &v8[*(v5 + 28)];
  v22 = *v20;
  v21 = v20[1];
  v23 = v20[2];

  v32 = v28;
  sub_1000D69D0(&v32);
  sub_1000D6A24(v8, type metadata accessor for Task.Logger);
  v24 = &v13[*(v10 + 28)];
  *v24 = v22;
  *(v24 + 1) = v21;
  *(v24 + 2) = v23;
  *(v24 + 12) = v27;
  *(v24 + 4) = v17;
  *(v24 + 10) = v18;
  (*(v14 + 104))(v13, v15, v14);
  return sub_1000D6A24(v13, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1000D5658(IMAP2Persistence::CredentialsRequestID a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + *(a3 + 36));
  v7 = *v5;
  v6 = v5[1];
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v10 = UInt32.init(_:)(a1);

  return v10;
}

uint64_t sub_1000D5794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Task.Logger(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D696C(a1, v10);
  (*(*(a2 + 24) + 64))(&v21, *(a2 + 16));
  LOWORD(a2) = v22;
  v11 = v23;
  v12 = v24;
  v13 = sub_1004A4A74();
  (*(*(v13 - 8) + 16))(a3, v10, v13);
  v14 = &v10[*(v7 + 28)];
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = *(v14 + 2);

  v25 = v21;
  sub_1000D69D0(&v25);
  sub_1000D6A24(v10, type metadata accessor for Task.Logger);
  result = type metadata accessor for MailboxTaskLogger(0);
  v19 = a3 + *(result + 20);
  *v19 = v15;
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  *(v19 + 24) = a2;
  *(v19 + 32) = v11;
  *(v19 + 40) = v12;
  return result;
}

uint64_t sub_1000D58FC@<X0>(unsigned int a1@<W0>, Swift::UInt32 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a5;
  v58 = a4;
  v55 = a1;
  v60 = a7;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a6 + 16);
  v56 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = type metadata accessor for ClientCommand(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_1004A6374();
  v50 = *(v17 - 8);
  v51 = v17;
  v18 = *(v50 + 64);
  __chkstk_darwin(v17);
  v20 = &v49 - v19;
  v54 = AssociatedTypeWitness;
  v53 = *(AssociatedTypeWitness - 8);
  v21 = *(v53 + 64);
  __chkstk_darwin(v22);
  v52 = &v49 - v23;
  v24.underlying = a2;
  v25 = sub_1000D5658(v24, a3, a6);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v57;
  v57 = a6;
  v33 = a6;
  v34 = v56;
  sub_1000D5794(v32, v33, v13);
  v35 = *(v34 + 112);
  v36 = v58;
  v58 = v14;
  v35(v25, v27, v29, v31, v36, v13, v14, v34);

  sub_1000D6A24(v13, type metadata accessor for MailboxTaskLogger);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v20, 1, TupleTypeMetadata2) == 1)
  {
    (*(v50 + 8))(v20, v51);
    v37 = 1;
    v38 = v60;
  }

  else
  {
    v39 = *(TupleTypeMetadata2 + 48);
    v40 = v52;
    v41 = v53;
    v42 = v54;
    (*(v53 + 32))(v52, v20, v54);
    v43 = v60;
    sub_10000F8F8(&v20[v39], v60);
    v57 = *(v57 + 36);
    v44 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v46 = swift_getAssociatedConformanceWitness();
    v61 = v42;
    v62 = v44;
    v63 = AssociatedConformanceWitness;
    v64 = v46;
    v47 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap();
    sub_10016C124(v55, v40, v47);
    (*(v41 + 8))(v40, v42);
    v37 = 0;
    v38 = v43;
  }

  return (*(*(v59 - 8) + 56))(v38, v37, 1);
}

unint64_t sub_1000D5D04(unsigned int a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a5;
  v54 = a4;
  v51 = a1;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a6 + 16);
  v15 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_1004A6374();
  v45 = *(v17 - 8);
  v46 = v17;
  v18 = *(v45 + 64);
  __chkstk_darwin(v17);
  v20 = &v45 - v19;
  v50 = AssociatedTypeWitness;
  v48 = *(AssociatedTypeWitness - 8);
  v21 = *(v48 + 64);
  __chkstk_darwin(v22);
  v47 = &v45 - v23;
  v24.underlying = a2;
  v25 = sub_1000D5658(v24, a3, a6);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v49 = a6;
  sub_1000D5794(v53, a6, v13);
  v32 = *(v15 + 120);
  v33 = v54;
  v53 = v14;
  v54 = v6;
  v32(v25, v27, v29, v31, v33, v13, v14, v15);

  v34 = TupleTypeMetadata2;

  sub_1000D6A24(v13, type metadata accessor for MailboxTaskLogger);
  if ((*(*(v34 - 8) + 48))(v20, 1, v34) == 1)
  {
    (*(v45 + 8))(v20, v46);
    return 0xF000000000000007;
  }

  else
  {
    v35 = *&v20[*(v34 + 48)];
    v36 = v47;
    v37 = v48;
    v38 = v50;
    (*(v48 + 32))(v47, v20, v50);
    v39 = *(v49 + 36);
    v40 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v42 = swift_getAssociatedConformanceWitness();
    v55 = v40;
    v56 = v38;
    v57 = AssociatedConformanceWitness;
    v58 = v42;
    v43 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap();
    sub_10016C2C4(v51, v36, v43);
    (*(v37 + 8))(v36, v38);
  }

  return v35;
}

uint64_t sub_1000D60C0(uint64_t a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for MailboxTaskLogger(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.underlying = a2;
  v17 = sub_1000D5658(v16, a3, a6);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1000D5794(a5, a6, v15);
  (*(*(a6 + 24) + 128))(a1, v17, v19, v21, v23, a4, v15, *(a6 + 16), *(a6 + 24));

  return sub_1000D6A24(v15, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1000D6204(uint64_t a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.underlying = a2;
  v15 = sub_1000D5658(v14, a3, a5);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1000D5794(a4, a5, v13);
  (*(*(a5 + 24) + 136))(a1, v15, v17, v19, v21, v13, *(a5 + 16));

  return sub_1000D6A24(v13, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1000D6338(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a8;
  v42 = a3;
  v46 = a7;
  v49 = a6;
  v50 = a1;
  v43 = a4;
  v44 = a5;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a9 + 16);
  v14 = *(a9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1004A6374();
  v37 = *(v16 - 8);
  v38 = v16;
  v17 = *(v37 + 64);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v48 = *(AssociatedTypeWitness - 8);
  v20 = *(v48 + 64);
  __chkstk_darwin(v21);
  v39 = &v36 - v22;
  v40 = a9;
  v23 = *(a9 + 36);
  v47 = v9;
  v24 = (v9 + v23);
  v26 = *v24;
  v25 = v24[1];
  v27 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedConformanceWitness();
  v30 = AssociatedConformanceWitness;
  v31 = v48;
  sub_10016C45C(v50, v26, AssociatedTypeWitness, v27, v30, v29, v19);
  if ((*(v31 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v37 + 8))(v19, v38);
    type metadata accessor for MailboxTaskWithCustomHistory.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v32 = v50;
    *(v32 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v34 = v39;
    (*(v31 + 32))(v39, v19, AssociatedTypeWitness);
    v35 = v45;
    sub_1000D5794(v41, v40, v45);
    (*(v14 + 144))(v34, v42, v43, v44, v49, v46, v35, v13, v14);
    sub_1000D6A24(v35, type metadata accessor for MailboxTaskLogger);
    return (*(v31 + 8))(v34, AssociatedTypeWitness);
  }
}

uint64_t sub_1000D66CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D5794(a2, a3, v9);
  (*(*(a3 + 24) + 160))(a1, v9, *(a3 + 16));
  return sub_1000D6A24(v9, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1000D6798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D5794(a2, a3, v9);
  (*(*(a3 + 24) + 168))(a1, v9, *(a3 + 16));
  return sub_1000D6A24(v9, type metadata accessor for MailboxTaskLogger);
}

double sub_1000D686C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000D53DC(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000D6930(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D696C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Task.Logger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D6A24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_1000D6A84(uint64_t *result, uint64_t *a2)
{
  if (result[1] != a2[1])
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
    return (*(result + 8) == *(a2 + 8) && (*(result + 8) | (*(result + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)) && (sub_1000FFC98(result[3], a2[3]) & 1) != 0);
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
      return (*(result + 8) == *(a2 + 8) && (*(result + 8) | (*(result + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)) && (sub_1000FFC98(result[3], a2[3]) & 1) != 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D6B78(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v37 = a2;
  v41 = a1;
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1004A6374();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v40 = *(AssociatedTypeWitness - 8);
  v16 = *(v40 + 64);
  __chkstk_darwin(v17);
  v34 = &v32 - v18;
  v36 = a4;
  v19 = *(a4 + 36);
  v39 = v4;
  v20 = (v4 + v19);
  v22 = *v20;
  v21 = v20[1];
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v26 = AssociatedConformanceWitness;
  v27 = v40;
  sub_10016C704(v41, v21, v23, AssociatedTypeWitness, v26, v25, v15);
  if ((*(v27 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v32 + 8))(v15, v33);
    type metadata accessor for MailboxTaskWithCustomHistory.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v28 = v41;
    *(v28 + 4) = 1;
    return swift_willThrow();
  }

  else
  {
    v30 = v34;
    (*(v27 + 32))(v34, v15, AssociatedTypeWitness);
    v31 = v38;
    sub_1000D5794(v35, v36, v38);
    (*(v9 + 152))(v30, v37, v31, v10, v9);
    sub_1000D6A24(v31, type metadata accessor for MailboxTaskLogger);
    return (*(v27 + 8))(v30, AssociatedTypeWitness);
  }
}

uint64_t sub_1000D6F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000D6FF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000D70C8()
{
  sub_1000D71B4(319, &qword_1005CFAD0, &qword_1005CD198, &qword_1004CEC20, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1000D71B4(319, &qword_1005CFAD8, &qword_1005CD1D0, &unk_1004CF2C0, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000D71B4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10000DEFC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

char *sub_1000D7218(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v14 = *v6;
    a1(&v12, &v14);
    if (v3)
    {
      break;
    }

    if ((v13 & 1) == 0)
    {
      v8 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100085898(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_100085898((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v8;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1000D7348(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v56[0] = *i;

    a1(&v42, v56);
    if (v3)
    {
      break;
    }

    v40[12] = v54;
    v41[0] = v55[0];
    *(v41 + 9) = *(v55 + 9);
    v40[8] = v50;
    v40[9] = v51;
    v40[10] = v52;
    v40[11] = v53;
    v40[4] = v46;
    v40[5] = v47;
    v40[6] = v48;
    v40[7] = v49;
    v40[0] = v42;
    v40[1] = v43;
    v40[2] = v44;
    v40[3] = v45;
    if (sub_1000100C4(v40) == 1)
    {
      v38 = v54;
      v39[0] = v55[0];
      *(v39 + 9) = *(v55 + 9);
      v34 = v50;
      v35 = v51;
      v36 = v52;
      v37 = v53;
      v30 = v46;
      v31 = v47;
      v32 = v48;
      v33 = v49;
      v26 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v45;
      sub_100025F40(&v26, &qword_1005CFC48, &unk_1004D3380);
    }

    else
    {
      v38 = v54;
      v39[0] = v55[0];
      *(v39 + 9) = *(v55 + 9);
      v34 = v50;
      v35 = v51;
      v36 = v52;
      v37 = v53;
      v30 = v46;
      v31 = v47;
      v32 = v48;
      v33 = v49;
      v26 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100085F94(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_100085F94((v8 > 1), v9 + 1, 1, v6);
      }

      v16 = v30;
      v17 = v31;
      v14 = v28;
      v15 = v29;
      v20 = v34;
      v21 = v35;
      v18 = v32;
      v19 = v33;
      *&v25[9] = *(v39 + 9);
      v24 = v38;
      *v25 = v39[0];
      v22 = v36;
      v23 = v37;
      v12 = v26;
      v13 = v27;
      *(v6 + 2) = v9 + 1;
      v10 = &v6[240 * v9];
      *(v10 + 3) = v13;
      *(v10 + 4) = v14;
      *(v10 + 2) = v12;
      *(v10 + 7) = v17;
      *(v10 + 8) = v18;
      *(v10 + 5) = v15;
      *(v10 + 6) = v16;
      *(v10 + 11) = v21;
      *(v10 + 12) = v22;
      *(v10 + 9) = v19;
      *(v10 + 10) = v20;
      *(v10 + 249) = *&v25[9];
      *(v10 + 14) = v24;
      *(v10 + 15) = *v25;
      *(v10 + 13) = v23;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

char *sub_1000D7608(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = a1;
  v6 = (a3 + 40);
  v7 = _swiftEmptyArrayStorage;
  v19 = a1;
  while (1)
  {
    v9 = *v6;
    v17 = *(v6 - 1);
    v18 = v9;
    v5(&v15, &v17);
    if (v3)
    {
      break;
    }

    v10 = v16;
    if (v16 != 2)
    {
      v11 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100086338(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_100086338((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v8 = &v7[12 * v13];
      *(v8 + 4) = v11;
      v8[40] = v10 & 1;
      v5 = v19;
    }

    v6 += 12;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1000D7758(void (*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 80);
  v42 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = *v6;
    v8 = *(v6 - 2);
    v9 = *(v6 - 1);
    v10 = *(v6 - 3);
    v11 = *(v6 - 8);
    v12 = *(v6 - 5);
    v35 = *(v6 - 12);
    v36 = v12;
    v37 = v11;
    v38 = v10;
    v39 = v8;
    v40 = v9;
    v41 = v7;

    sub_100014CEC(v10, v8);

    a1(&v30, &v35);
    if (v4)
    {
      break;
    }

    v13 = v38;
    v14 = v39;

    sub_100014D40(v13, v14);

    v15 = v30;
    v16 = v31;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    if (v33 == 1)
    {
      sub_1000DA9B0(v30, v31, v32, 1);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_10008639C(0, *(v42 + 2) + 1, 1, v42);
      }

      v21 = *(v42 + 2);
      v20 = *(v42 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v25 = sub_10008639C((v20 > 1), v21 + 1, 1, v42);
        v22 = v21 + 1;
        v42 = v25;
      }

      v23 = v42;
      *(v42 + 2) = v22;
      v24 = &v23[40 * v21];
      *(v24 + 8) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = v18;
      v24[64] = v19;
    }

    v6 += 56;
    if (!--v5)
    {
      return v42;
    }
  }

  v26 = v38;
  v27 = v39;

  sub_100014D40(v26, v27);

  return v42;
}

uint64_t sub_1000D7954(void (*a1)(void *__return_ptr, void), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v31 = a1;
  if (v9)
  {
LABEL_10:
    while (1)
    {
      v15 = __clz(__rbit64(v9)) | (v12 << 6);
      v16 = *(a3 + 56) + 24 * v15;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      LOBYTE(v16) = *(v16 + 17);
      v26 = *(*(a3 + 48) + 16 * v15);
      v27 = v17;
      v28 = v18;
      v29 = v19;
      v30 = v16;
      sub_100014CEC(v26, *(&v26 + 1));
      a1(&v25, &v26);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      sub_100014D40(v26, *(&v26 + 1));
      if (*(&v25 + 1) >> 60 == 15)
      {
        result = sub_1000CBB68(v25, *(&v25 + 1));
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v24 = v25;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100086B4C(0, *(v13 + 2) + 1, 1, v13);
          v13 = result;
        }

        v21 = *(v13 + 2);
        v20 = *(v13 + 3);
        v22 = v13;
        v23 = v24;
        if (v21 >= v20 >> 1)
        {
          result = sub_100086B4C((v20 > 1), v21 + 1, 1, v13);
          v23 = v24;
          v22 = result;
        }

        *(v22 + 2) = v21 + 1;
        v13 = v22;
        *&v22[16 * v21 + 32] = v23;
        a1 = v31;
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    sub_100014D40(v26, *(&v26 + 1));

LABEL_19:

    return v13;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_19;
      }

      v9 = *(v6 + 8 * v14);
      ++v12;
      if (v9)
      {
        v12 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000D7B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v30 = a3;
  v29 = a1;
  v32 = a4;
  v5 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - v12;
  v14 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v29 - v19;
  v31 = a2;
  v21 = sub_1000DAC78(a2);
  sub_100016D2C();
  sub_1004A7114();
  sub_10000E268(v20, v17, &unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
    v22 = 1;
  }

  else
  {
    sub_100025FDC(v17, v9, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v9, v13, &qword_1005CD1D0, &unk_1004CF2C0);
    v22 = 0;
  }

  (*(v6 + 56))(v13, v22, 1, v5);
  v23 = v32;
  sub_1000D80D8(v29, v21, v13, v32);
  sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
  if ((v30 & 1) == 0)
  {
    return sub_100025F40(v31, &unk_1005D91B0, &unk_1004CF400);
  }

  v24 = v23[1];
  v25 = *(v24 + 2);
  if (!v25)
  {
    return sub_100025F40(v31, &unk_1005D91B0, &unk_1004CF400);
  }

  v34 = 1;
  v33 = *&v24[8 * v25 + 28];
  v26 = sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v34, &v33, &type metadata for UID, v26, &v35);
  v27 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_100139840(v24);
  }

  result = sub_100025F40(v31, &unk_1005D91B0, &unk_1004CF400);
  if (v25 > *(v24 + 2))
  {
    __break(1u);
  }

  else
  {
    *&v24[8 * v25 + 24] = v27;
    v23[1] = v24;
  }

  return result;
}

uint64_t sub_1000D7EB4()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 8 * v2 + 24);
  v6 = *(v1 + 36);
  v7 = v3;
  v4 = sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v7, &v6, &type metadata for UID, v4, &v8);
  return v8;
}

uint64_t sub_1000D7F2C(uint64_t result)
{
  if ((result & 0x100000000) == 0)
  {
    v2 = v1;
    v3 = *(v1 + 8);
    if (*(v3 + 16))
    {
      v4 = *(v3 + 32);
      if (*(v3 + 36) <= result)
      {
        v5 = result;
      }

      else
      {
        v5 = *(v3 + 36);
      }

      v11 = v5;
      v12 = v4;
      v6 = sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v12, &v11, &type metadata for UID, v6, &v13);
      v7 = v13;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (*(v3 + 16))
        {
LABEL_8:
          *(v3 + 32) = v7;
          *(v1 + 8) = v3;
          return result;
        }
      }

      else
      {
        result = sub_100139840(v3);
        v3 = result;
        if (*(result + 16))
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
      v8 = result;
      sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1004CEAA0;
      v12 = v8;
      LODWORD(v13) = 1;
      v10 = sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v13, &v12, &type metadata for UID, v10, v9 + 32);

      *(v2 + 8) = v9;
    }
  }

  return result;
}

unint64_t sub_1000D8054()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 8 * v2 + 24);
    v7 = *(v1 + 36);
    v8 = v3;
    v4 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v8, &v7, &type metadata for UID, v4, &v9);
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v2 == 0) << 32);
}

uint64_t sub_1000D80D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v33 = a3;
  v31 = a1;
  v34 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v6 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v8 = &v30 - v7;
  v9 = *(type metadata accessor for MessageBatches(0) + 24);
  v10 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v11 = *(*(v10 - 8) + 56);
  v32 = a4;
  v30 = v9;
  v11(a4 + v9, 1, 1, v10);
  sub_100016D2C();
  sub_1004A7114();
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = 0;
    while (v13 < *(a2 + 16))
    {
      v36[0] = *(a2 + 32 + 8 * v13);
      v14 = sub_100016948();
      v37 = Range<>.init<A>(_:)(v36, &type metadata for UID, v14);
      if (HIDWORD(v37) != v37)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v15 = sub_1004A70B4();
        sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
        sub_1004A7064();
        v15(v36, 0);
      }

      if (v12 == ++v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_7:
  v16 = MessageIdentifierSet.count.getter();
  sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
  swift_getKeyPath();
  v17 = *(a2 + 16);
  if (v17)
  {
    v36[0] = _swiftEmptyArrayStorage;
    sub_100091C48(0, v17, 0);
    v18 = v36[0];
    v19 = (a2 + 32);
    do
    {
      v35 = *v19;
      swift_getAtKeyPath();
      v20 = v37;
      v36[0] = v18;
      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_100091C48((v21 > 1), v22 + 1, 1);
        v18 = v36[0];
      }

      *(v18 + 2) = v22 + 1;
      *&v18[8 * v22 + 32] = v20;
      ++v19;
      --v17;
    }

    while (v17);

    v23 = *(v18 + 2);
    if (v23)
    {
LABEL_13:
      v24 = 0;
      v25 = (v18 + 32);
      while (1)
      {
        v26 = *v25++;
        v27 = __OFADD__(v24, v26);
        v24 += v26;
        if (v27)
        {
          break;
        }

        if (!--v23)
        {
          goto LABEL_19;
        }
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage[2];
    if (v23)
    {
      goto LABEL_13;
    }
  }

  v24 = 0;
LABEL_19:

  if (v16 == v24)
  {
    v28 = v32;
    *v32 = v31;
    v36[0] = a2;

    sub_1000D9CD4(v36);

    v28[1] = v36[0];
    return sub_1000DA8E4(v33, v28 + v30);
  }

LABEL_23:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000D8460(uint64_t result)
{
  v1 = 4507;
  if (result < 4507)
  {
    v1 = result;
  }

  if (v1 <= 1000)
  {
    v2 = 1000;
  }

  else
  {
    v2 = v1;
  }

LABEL_8:
  v3 = v2;
  v4 = v2 / 2;
  if ((v2 / 2))
  {
    v6 = 1;
    v8 = 1;
    if ((v2 + 1) < 3)
    {
      goto LABEL_17;
    }

LABEL_39:
    v8 = 1;
    v15 = 31;
    while (1)
    {
      if (v4)
      {
        v17 = v8 * v15;
        if ((v8 * v15) >> 64 != (v8 * v15) >> 63)
        {
          goto LABEL_57;
        }

        if (v2 == -1 && v17 == 0x8000000000000000)
        {
          goto LABEL_58;
        }

        v8 = v17 % v2;
      }

      v18 = v15 * v15;
      if ((v15 * v15) >> 64 != (v15 * v15) >> 63)
      {
        goto LABEL_54;
      }

      if (v2 == -1 && v18 == 0x8000000000000000)
      {
        break;
      }

      v15 = v18 % v2;
      v16 = v4 >= 2;
      v4 >>= 1;
      if (!v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v5 = 1;
  do
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
LABEL_53:
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
      goto LABEL_59;
    }

    v7 = v4;
    v4 /= 2;
    ++v5;
  }

  while ((v4 & 1) == 0);
  if ((v7 + 1) >= 3)
  {
    if (!v2)
    {
      goto LABEL_62;
    }

    goto LABEL_39;
  }

  v8 = 1;
LABEL_14:
  if (v6 < 1)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_17:
  if (v2)
  {
    --v2;
    v9 = __OFSUB__(v3, 1);
    v10 = 1;
    while (1)
    {
      v11 = v8 * v8;
      if ((v8 * v8) >> 64 != (v8 * v8) >> 63)
      {
        break;
      }

      if (v3 == -1 && v11 == 0x8000000000000000)
      {
        goto LABEL_55;
      }

      v12 = v11 % v3;
      if (v12 == 1 && v8 != 1)
      {
        if (v9)
        {
          goto LABEL_56;
        }

        if (v8 != v2)
        {
          goto LABEL_7;
        }
      }

      if (v6 == v10)
      {
        if (v12 == 1)
        {
          result = sub_1000D86D0(73, v3);
          if ((result & 1) == 0)
          {
            return v3;
          }
        }

LABEL_7:
        if (v3 == 0x8000000000000000)
        {
          goto LABEL_61;
        }

        goto LABEL_8;
      }

      v8 = v12;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_53;
      }
    }

LABEL_51:
    __break(1u);
    return v3;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1000D8640(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a3)
  {
    v3 = result;
    result = 1;
    while (1)
    {
      if (a2)
      {
        v4 = result * v3;
        if ((result * v3) >> 64 != (result * v3) >> 63)
        {
          goto LABEL_20;
        }

        if (v4 == 0x8000000000000000 && a3 == -1)
        {
          goto LABEL_22;
        }

        result = v4 % a3;
      }

      v6 = v3 * v3;
      if ((v3 * v3) >> 64 != (v3 * v3) >> 63)
      {
        break;
      }

      if (v6 == 0x8000000000000000 && a3 == -1)
      {
        goto LABEL_21;
      }

      v3 = v6 % a3;
      v8 = a2 > 1;
      a2 >>= 1;
      if (!v8)
      {
        return result;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D86D0(uint64_t result, uint64_t a2)
{
  v3 = a2 / 2;
  if ((v3 & 1) == 0)
  {
    v4 = 1;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_29;
      }

      v3 /= 2;
      ++v4;
      if (v3)
      {
        result = sub_1000D8640(result, v3, a2);
        if (v5 >= 1)
        {
          goto LABEL_8;
        }

        __break(1u);
        break;
      }
    }
  }

  result = sub_1000D8640(result, v3, a2);
  v5 = 1;
LABEL_8:
  if (a2)
  {
    v6 = __OFSUB__(a2, 1);
    v7 = 1;
    while (1)
    {
      v8 = result * result;
      if ((result * result) >> 64 != (result * result) >> 63)
      {
        break;
      }

      if (a2 == -1 && v8 == 0x8000000000000000)
      {
        goto LABEL_30;
      }

      v9 = v8 % a2;
      v11 = v8 % a2 == 1;
      v10 = v8 % a2 != 1;
      v11 = !v11 || result == 1;
      if (!v11)
      {
        if (v6)
        {
          goto LABEL_31;
        }

        if (result != a2 - 1)
        {
          return 1;
        }
      }

      if (v5 == v7)
      {
        return v10;
      }

      result = v9;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        return 1;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000D87C8()
{
  v1 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 8);
  v11 = *(v10 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v19 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v0;
    v23 = _swiftEmptyArrayStorage;
    sub_100091C68(0, v11, 0);
    v12 = v23;
    v13 = (v10 + 32);
    v14 = sub_100016948();
    do
    {
      v22 = *v13;
      v21 = Range<>.init<A>(_:)(&v22, &type metadata for UID, v14);
      sub_100016D2C();
      sub_1004A7124();
      v23 = v12;
      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        sub_100091C68(v15 > 1, v16 + 1, 1);
        v12 = v23;
      }

      v12[2] = v16 + 1;
      sub_100025FDC(v5, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, &qword_1005CD1D0, &unk_1004CF2C0);
      ++v13;
      --v11;
    }

    while (v11);
    v9 = v19;
  }

  v23 = v12;
  sub_1000D89EC(v9);
  sub_10008134C(v9);
  return v23;
}

uint64_t sub_1000D89EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = type metadata accessor for MessageBatches(0);
  sub_10000E268(v1 + *(v16 + 24), v6, &qword_1005CD518, &qword_1004CF2F0);
  v17 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  if ((*(*(v17 - 8) + 48))(v6, 1, v17) == 1)
  {
    sub_100025F40(v6, &qword_1005CD518, &qword_1004CF2F0);
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_100016D2C();
    sub_1004A7114();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_100025F40(v10, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_10000E268(v6, v10, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v6, &qword_1005CD1D0, &unk_1004CF2C0);
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_100025FDC(v10, v15, &unk_1005D91B0, &unk_1004CF400);
  }

  v18 = *v1;
  sub_100025FDC(v15, a1, &unk_1005D91B0, &unk_1004CF400);
  result = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  *(a1 + *(result + 20)) = v18;
  return result;
}

uint64_t sub_1000D8CF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v6 = &v53 - v5;
  v7 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v60 = &v53 - v10;
  v11 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v53 - v13;
  v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v57 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v53 - v20;
  __chkstk_darwin(v19);
  v23 = &v53 - v22;
  v61 = v1;
  v62 = v7;
  if (sub_1004A70C4())
  {
    v24 = *(v58 + 56);

    return v24(a1, 1, 1, v3);
  }

  else
  {
    v54 = v6;
    v55 = v3;
    v56 = a1;
    sub_100016D2C();
    sub_1004A7114();
    v59 = (v8 + 16);
    v26 = v61;
    while (1)
    {
      MessageIdentifierSet.ranges.getter(v14);
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      v27 = sub_1004A7044();
      v28 = sub_1004A7074();
      v29 = sub_1004A7044();
      result = sub_1004A7074();
      if (v27 < v29 || result < v27)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

      v31 = sub_1004A7044();
      v32 = sub_1004A7074();
      result = sub_100025F40(v14, &qword_1005CD7A0, &unk_1004CF590);
      if (v28 < v31 || v32 < v28)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v28, v27))
      {
        goto LABEL_33;
      }

      if (v28 - v27 > 486)
      {
        break;
      }

      v33 = MessageIdentifierSet.count.getter();
      v34 = *(v26 + *(type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0) + 20));
      if (v33 >= v34 || (sub_1004A70C4() & 1) != 0)
      {
        break;
      }

      result = MessageIdentifierSet.count.getter();
      v35 = v34 - result;
      if (__OFSUB__(v34, result))
      {
        goto LABEL_34;
      }

      MessageIdentifierSet.ranges.getter(v14);
      v36 = sub_1004A7044();
      v37 = sub_1004A7074();
      v38 = sub_1004A7044();
      result = sub_1004A7074();
      if (v36 < v38 || result < v36)
      {
        goto LABEL_35;
      }

      v39 = sub_1004A7044();
      v40 = sub_1004A7074();
      result = sub_100025F40(v14, &qword_1005CD7A0, &unk_1004CF590);
      if (v37 < v39 || v40 < v37)
      {
        goto LABEL_36;
      }

      v41 = v37 - v36;
      if (__OFSUB__(v37, v36))
      {
        goto LABEL_37;
      }

      v42 = __OFSUB__(487, v41);
      v43 = 487 - v41;
      if (v42)
      {
        goto LABEL_38;
      }

      if (v43 >= v35)
      {
        v44 = v35;
      }

      else
      {
        v44 = v43;
      }

      v26 = v61;
      MessageIdentifierSet.suffix(_:)(v44, v15, v21);
      v45 = v62;
      sub_1004A70F4();
      (*v59)(v60, v21, v45);
      sub_1004A7104();
      sub_100025F40(v21, &unk_1005D91B0, &unk_1004CF400);
    }

    v46 = v57;
    sub_10000E268(v23, v57, &unk_1005D91B0, &unk_1004CF400);
    v47 = MessageIdentifierSet.count.getter();
    v48 = v54;
    v49 = v55;
    if (v47 < 1)
    {
      sub_100025F40(v46, &unk_1005D91B0, &unk_1004CF400);
      v52 = 1;
      v51 = v56;
    }

    else
    {
      sub_100025FDC(v46, v54, &unk_1005D91B0, &unk_1004CF400);
      v50 = v48;
      v51 = v56;
      sub_100025FDC(v50, v56, &qword_1005CD1D0, &unk_1004CF2C0);
      v52 = 0;
    }

    (*(v58 + 56))(v51, v52, 1, v49);
    return sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
  }
}

uint64_t sub_1000D92CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 20));
  sub_100025FDC(v2, a2, &unk_1005D91B0, &unk_1004CF400);
  result = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

size_t sub_1000D9328()
{
  v1 = sub_100065228(v0);
  sub_1000DAC1C(v0);
  return v1;
}

uint64_t sub_1000D9360@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  v8 = __chkstk_darwin(v6);
  v61 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = v56 - v10;
  v11 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v64 = v56 - v17;
  __chkstk_darwin(v16);
  v19 = v56 - v18;
  v20 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v56 - v22;
  v24 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v63 = v56 - v31;
  __chkstk_darwin(v30);
  if ((a1 & 0x100000000) != 0)
  {
    v48 = *v3;
    v49 = type metadata accessor for MessageBatches(0);
    sub_10000E268(v3 + *(v49 + 24), v15, &qword_1005CD518, &qword_1004CF2F0);
    return sub_1000D80D8(v48, _swiftEmptyArrayStorage, v15, a2);
  }

  else
  {
    v58 = a2;
    LODWORD(v66) = a1;
    LODWORD(v65) = -1;
    v33 = v56 - v32;
    v34 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v66, &v65, &type metadata for UID, v34, &v67);
    v66 = v67;
    v65 = Range<>.init<A>(_:)(&v66, &type metadata for UID, v34);
    v56[1] = sub_100016D2C();
    v35 = sub_1004A7124();
    v36 = v3[1];
    v57 = *v3;
    __chkstk_darwin(v35);
    v59 = v33;
    v56[-2] = v33;
    v38 = sub_1000D7218(sub_1000DA994, &v56[-4], v37);
    v39 = type metadata accessor for MessageBatches(0);
    sub_10000E268(v3 + *(v39 + 24), v19, &qword_1005CD518, &qword_1004CF2F0);
    v40 = v62;
    v41 = 1;
    if ((*(v62 + 48))(v19, 1, v6) != 1)
    {
      v42 = v60;
      sub_100025FDC(v19, v60, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025FDC(v42, v23, &unk_1005D91B0, &unk_1004CF400);
      v41 = 0;
    }

    (*(v25 + 56))(v23, v41, 1, v24);
    v43 = *(v25 + 48);
    v44 = v6;
    if (v43(v23, 1, v24) == 1)
    {
      v45 = v63;
      sub_1004A7114();
      v46 = v43(v23, 1, v24);
      v47 = v58;
      if (v46 != 1)
      {
        sub_100025F40(v23, &qword_1005CD510, &unk_1004CF2E0);
      }
    }

    else
    {
      v45 = v63;
      sub_100025FDC(v23, v63, &unk_1005D91B0, &unk_1004CF400);
      v47 = v58;
    }

    sub_10000E268(v45, v29, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v29, &unk_1005D91B0, &unk_1004CF400);
      v54 = 1;
      v55 = v44;
      v53 = v64;
    }

    else
    {
      v51 = v61;
      sub_100025FDC(v29, v61, &unk_1005D91B0, &unk_1004CF400);
      v52 = v51;
      v53 = v64;
      sub_100025FDC(v52, v64, &qword_1005CD1D0, &unk_1004CF2C0);
      v54 = 0;
      v55 = v44;
    }

    (*(v40 + 56))(v53, v54, 1, v55);
    sub_1000D80D8(v57, v38, v53, v47);
    sub_100025F40(v45, &unk_1005D91B0, &unk_1004CF400);
    return sub_100025F40(v59, &unk_1005D91B0, &unk_1004CF400);
  }
}

uint64_t sub_1000D997C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v26 - v8;
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v26 - v15;
  v27 = *a1;
  v17 = sub_100016948();
  v26[1] = Range<>.init<A>(_:)(&v27, &type metadata for UID, v17);
  sub_100016D2C();
  sub_1004A7124();
  MessageIdentifierSet.intersection(_:)(a2, v16);
  sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
  v18 = sub_1000E5314();
  if ((v18 & 0x100000000) != 0)
  {
    result = sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_6;
  }

  v19 = v18;
  MessageIdentifierSet.ranges.getter(v9);
  v20 = sub_1000E4C0C();
  v22 = v21;
  sub_100025F40(v9, &qword_1005CD7A0, &unk_1004CF590);
  result = sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
  if (v22)
  {
LABEL_6:
    v25 = 0;
    v24 = 1;
    goto LABEL_7;
  }

  if (HIDWORD(v20) >= v19)
  {
    v24 = 0;
    v25 = v20 & 0xFFFFFFFF00000000 | v19;
LABEL_7:
    *a3 = v25;
    *(a3 + 8) = v24;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D9BA8@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(a1 + 20);
  *a7 = v15;
  *(a7 + 4) = v16;
  if ((v16 & 1) != 0 || v15 - a3 < a2)
  {
    LODWORD(v17) = 0;
    v18 = 1;
LABEL_14:
    result = swift_beginAccess();
    *(a1 + 16) = v17;
    *(a1 + 20) = v18;
    return result;
  }

  if (v15 != a4)
  {
    goto LABEL_9;
  }

  if (!a6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a5 == 0x8000000000000000 && a6 == -1)
  {
    goto LABEL_21;
  }

  v19 = __OFSUB__(a2, a5 % a6);
  a2 -= a5 % a6;
  if (!v19)
  {
LABEL_9:
    v20 = -a2;
    if (__OFSUB__(0, a2))
    {
      __break(1u);
    }

    else if (v20 <= 0xFFFFFFFFLL)
    {
      v17 = v15 - a2;
      if (v20 + v15 >= 1)
      {
        if (!HIDWORD(v17))
        {
          v18 = 0;
          goto LABEL_14;
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int sub_1000D9CD4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001419AC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (*v13 >= v11)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
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
      sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1000D9E28(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000D9E28(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v8);
      v8 = result;
    }

    v79 = v8 + 2;
    v80 = v8[2];
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v8[2 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_1000DA39C((*a3 + 8 * *v81), (*a3 + 8 * *v83), (*a3 + 8 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = 8 * v9;
      v12 = (*a3 + 8 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v13 < v10) ^ (v17 >= v18);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 8 * v7 - 8;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 8;
          v11 += 8;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v33 = v8[3];
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_100085288((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v34;
    v35 = v8 + 4;
    v36 = &v8[2 * v5 + 4];
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = v8[4];
          v38 = v8[5];
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v8[2 * v34];
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[2 * v5];
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v8[2 * v34];
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = &v35[2 * v5 - 2];
        v75 = *v74;
        v76 = &v35[2 * v5];
        v77 = v76[1];
        sub_1000DA39C((*a3 + 8 * *v74), (*a3 + 8 * *v76), (*a3 + 8 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = v8[2];
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove(&v35[2 * v5], v76 + 2, 16 * (v78 - 1 - v5));
        v8[2] = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[2 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v8[2 * v34];
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[2 * v5];
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v7 - 8;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 8 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (*v30 >= v28)
    {
LABEL_29:
      ++v7;
      v26 += 8;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 12);
    *(v30 + 8) = *v30;
    *v30 = v28;
    *(v30 + 4) = v31;
    v30 -= 8;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1000DA39C(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v4 < *v6)
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
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v20 = *(v18 - 2);
      v18 -= 8;
      if (*v17 < v20)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v21 >> 3));
  }

  return 1;
}

BOOL sub_1000DA5A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_10000C9C0(&qword_1005CEBE0, &unk_1004D16D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v23 - v15;
  if (*a1 != *a2 || (sub_100102A80(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for MessageBatches(0) + 24);
  v18 = a1 + v17;
  v19 = *(v13 + 48);
  sub_10000E268(v18, v16, &qword_1005CD518, &qword_1004CF2F0);
  sub_10000E268(a2 + v17, &v16[v19], &qword_1005CD518, &qword_1004CF2F0);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_100025F40(v16, &qword_1005CD518, &qword_1004CF2F0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_10000E268(v16, v12, &qword_1005CD518, &qword_1004CF2F0);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    sub_100025F40(v12, &qword_1005CD1D0, &unk_1004CF2C0);
LABEL_8:
    sub_100025F40(v16, &qword_1005CEBE0, &unk_1004D16D0);
    return 0;
  }

  sub_100025FDC(&v16[v19], v8, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100016D2C();
  v22 = sub_1004A7034();
  sub_100025F40(v8, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100025F40(v12, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100025F40(v16, &qword_1005CD518, &qword_1004CF2F0);
  return (v22 & 1) != 0;
}

uint64_t sub_1000DA8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}