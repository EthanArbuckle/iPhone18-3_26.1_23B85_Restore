unint64_t sub_1B7C8CCD8()
{
  result = qword_1EBA53130;
  if (!qword_1EBA53130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53130);
  }

  return result;
}

uint64_t sub_1B7C8CD2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v3 = a1;
  v83 = MEMORY[0x1E69E7CC0];
  v4 = *(v1 + 48);
  v5 = *(v1 + 49);
  if (v5)
  {
    v80 = *(v1 + 40);
    v7 = sub_1B7CFF570();
    v9 = v8;
    sub_1B7CFF210();

    v77 = v7;
    v78 = v9;
    MEMORY[0x1B8CADCA0](v7, v9);
    v10 = sub_1B7AF182C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1B7AF182C((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[16 * v12];
    *(v13 + 4) = 0xD000000000000012;
    *(v13 + 5) = 0x80000001B7D56F20;
    v83 = v10;
    v3 = a1;
  }

  else
  {
    v77 = IMChatStyle.description.getter(*(v1 + 48));
    v78 = v14;
    v10 = MEMORY[0x1E69E7CC0];
  }

  v79 = *(v1 + 64);
  v76 = *(v1 + 56);
  if (!v79)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
    }

    v16 = *(v10 + 2);
    v15 = *(v10 + 3);
    if (v16 >= v15 >> 1)
    {
      v10 = sub_1B7AF182C((v15 > 1), v16 + 1, 1, v10);
    }

    *(v10 + 2) = v16 + 1;
    v17 = &v10[16 * v16];
    *(v17 + 4) = 0xD000000000000013;
    *(v17 + 5) = 0x80000001B7D56F40;
    v83 = v10;
  }

  v18 = *(v1 + 136);
  v19 = v18[2];
  if (v19)
  {
    if (!v79)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
    }

    v21 = *(v10 + 2);
    v20 = *(v10 + 3);
    if (v21 >= v20 >> 1)
    {
      v10 = sub_1B7AF182C((v20 > 1), v21 + 1, 1, v10);
    }

    *(v10 + 2) = v21 + 1;
    v22 = &v10[16 * v21];
    *(v22 + 4) = 0xD000000000000030;
    *(v22 + 5) = 0x80000001B7D570C0;
    v83 = v10;
    if (!v79)
    {
      goto LABEL_21;
    }
  }

  if ((v5 & 1) == 0)
  {
    v23 = *(v1 + 128);
    v73 = v3;
    if (v23)
    {
      if ((v23 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v23) & 0xF;
      }

      else
      {
        v24 = *(v1 + 120) & 0xFFFFFFFFFFFFLL;
      }

      v25 = v24 != 0;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v1 + 24);
    v27 = *(v1 + 32);
    if (v27)
    {
      v28 = *(v1 + 24);
    }

    else
    {
      v28 = 0;
    }

    v74 = *(v1 + 24);
    v75 = v28;
    v29 = 0xE000000000000000;
    if (v27)
    {
      v29 = *(v1 + 32);
    }

    v72 = v29;
    if (v19 < 2)
    {
      if (v4 == 45)
      {
        v33 = *(v1 + 96);
        if (!v33)
        {
          goto LABEL_56;
        }

        v34 = *(v1 + 88);
        v35 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v35 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          swift_bridgeObjectRetain_n();
          sub_1B7CFF210();

          MEMORY[0x1B8CADCA0](v34, v33);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
          }

          v37 = *(v10 + 2);
          v36 = *(v10 + 3);
          v30 = v75;
          if (v37 >= v36 >> 1)
          {
            v10 = sub_1B7AF182C((v36 > 1), v37 + 1, 1, v10);
          }

          *(v10 + 2) = v37 + 1;
          v38 = &v10[16 * v37];
          *(v38 + 4) = 0xD000000000000024;
          *(v38 + 5) = 0x80000001B7D57090;
          v83 = v10;
        }

        else
        {
LABEL_56:
          swift_bridgeObjectRetain_n();
          v30 = v75;
        }

        v32 = v72;
        v26 = v74;
        if (v19 == 1)
        {

          v30 = v18[5];
          v32 = v18[6];
        }

        v31 = 45;
LABEL_60:
        if (*(v1 + 40) != v31)
        {
          sub_1B7CFF210();

          MEMORY[0x1B8CADCA0](v77, v78);
          MEMORY[0x1B8CADCA0](0x7463657078652027, 0xEC00000027206465);
          v47 = IMChatStyle.description.getter(v31);
          MEMORY[0x1B8CADCA0](v47);

          MEMORY[0x1B8CADCA0](39, 0xE100000000000000);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
          }

          v49 = *(v10 + 2);
          v48 = *(v10 + 3);
          if (v49 >= v48 >> 1)
          {
            v10 = sub_1B7AF182C((v48 > 1), v49 + 1, 1, v10);
          }

          *(v10 + 2) = v49 + 1;
          v50 = &v10[16 * v49];
          *(v50 + 4) = 0xD00000000000001ALL;
          *(v50 + 5) = 0x80000001B7D56FC0;
          v83 = v10;
          v26 = v74;
        }

        if (v27)
        {
          if (v30 == v26 && v27 == v32 || (sub_1B7CFF590() & 1) != 0)
          {

            goto LABEL_77;
          }
        }

        else
        {
          v27 = 0xE300000000000000;
          v26 = 7104878;
        }

        sub_1B7CFF210();
        MEMORY[0x1B8CADCA0](0xD000000000000019, 0x80000001B7D56FE0);
        MEMORY[0x1B8CADCA0](v26, v27);

        MEMORY[0x1B8CADCA0](0xD000000000000028, 0x80000001B7D57000);
        MEMORY[0x1B8CADCA0](v30, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
        }

        v52 = *(v10 + 2);
        v51 = *(v10 + 3);
        if (v52 >= v51 >> 1)
        {
          v10 = sub_1B7AF182C((v51 > 1), v52 + 1, 1, v10);
        }

        *(v10 + 2) = v52 + 1;
        v53 = &v10[16 * v52];
        *(v53 + 4) = 0;
        *(v53 + 5) = 0xE000000000000000;
        v83 = v10;
LABEL_77:
        v54 = sub_1B7CFEA30();
        v55 = sub_1B7CFEA30();
        v56 = IMCopyGUIDForChat();

        if (v56)
        {
          v57 = sub_1B7CFEA60();
          v59 = v58;

          v60 = HIBYTE(v59) & 0xF;
          if ((v59 & 0x2000000000000000) == 0)
          {
            v60 = v57 & 0xFFFFFFFFFFFFLL;
          }

          if (v60)
          {

            v61 = v2[1];
            v62 = v2[2];
            if (v61 == v57 && v62 == v59 || (v63 = v2[1], v64 = v2[2], (sub_1B7CFF590() & 1) != 0))
            {

              v65 = v73;
              if (!*(v10 + 2))
              {
LABEL_85:
                v66 = 0;
                v10 = 0;
LABEL_96:
                *v65 = v66;
                v65[1] = v10;
                goto LABEL_97;
              }

LABEL_95:
              v66 = *v2;

              goto LABEL_96;
            }

            sub_1B7CFF210();

            v81 = 0x676E697473697865;
            v82 = 0xEF203A6469756720;
            MEMORY[0x1B8CADCA0](v61, v62);
            MEMORY[0x1B8CADCA0](0xD00000000000001ELL, 0x80000001B7D57070);
            v67 = v57;
LABEL_90:
            MEMORY[0x1B8CADCA0](v67, v59);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
            }

            v65 = v73;
            v69 = *(v10 + 2);
            v68 = *(v10 + 3);
            if (v69 >= v68 >> 1)
            {
              v10 = sub_1B7AF182C((v68 > 1), v69 + 1, 1, v10);
            }

            *(v10 + 2) = v69 + 1;
            v70 = &v10[16 * v69];
            *(v70 + 4) = v81;
            *(v70 + 5) = v82;
            v83 = v10;
            if (!*(v10 + 2))
            {
              goto LABEL_85;
            }

            goto LABEL_95;
          }
        }

        v81 = 0;
        v82 = 0xE000000000000000;
        sub_1B7CFF210();
        MEMORY[0x1B8CADCA0](0xD00000000000003BLL, 0x80000001B7D57030);
        MEMORY[0x1B8CADCA0](v30, v32);

        MEMORY[0x1B8CADCA0](0x636976726573202CLL, 0xEB00000000203A65);
        MEMORY[0x1B8CADCA0](v76, v79);
        MEMORY[0x1B8CADCA0](0x3A656C797473202CLL, 0xE900000000000020);
        v59 = 0xE100000000000000;
        if (v31 == 43)
        {
          v67 = 43;
        }

        else
        {
          v67 = 45;
        }

        goto LABEL_90;
      }

      swift_bridgeObjectRetain_n();
      sub_1B7CFF210();

      v39 = sub_1B7CFF570();
      MEMORY[0x1B8CADCA0](v39);

      MEMORY[0x1B8CADCA0](0xD000000000000023, 0x80000001B7D56F60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
      }

      v30 = v75;
      v41 = *(v10 + 2);
      v40 = *(v10 + 3);
      if (v41 >= v40 >> 1)
      {
        v10 = sub_1B7AF182C((v40 > 1), v41 + 1, 1, v10);
      }

      *(v10 + 2) = v41 + 1;
      v42 = &v10[16 * v41];
      *(v42 + 4) = 0x61682070756F7247;
      *(v42 + 5) = 0xEA00000000002073;
      v83 = v10;
      v26 = v74;
      if (v25)
      {
        goto LABEL_35;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v30 = v75;
      if (v25)
      {
LABEL_35:
        v31 = 43;
        v32 = v72;
        goto LABEL_60;
      }
    }

    sub_1B7CFF210();

    v43 = sub_1B7CFF570();
    MEMORY[0x1B8CADCA0](v43);

    MEMORY[0x1B8CADCA0](0xD000000000000022, 0x80000001B7D56F90);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
    }

    v45 = *(v10 + 2);
    v44 = *(v10 + 3);
    if (v45 >= v44 >> 1)
    {
      v10 = sub_1B7AF182C((v44 > 1), v45 + 1, 1, v10);
    }

    *(v10 + 2) = v45 + 1;
    v46 = &v10[16 * v45];
    *(v46 + 4) = 0x7361682074616843;
    *(v46 + 5) = 0xE900000000000020;
    v83 = v10;
    v31 = 43;
    v32 = v72;
    v26 = v74;
    goto LABEL_60;
  }

LABEL_21:
  *v3 = *v1;
  v3[1] = v10;

LABEL_97:
  sub_1B7C8E424(&v83, v2, v77, v78);
}

unint64_t sub_1B7C8D8D8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4449776F72;
    v7 = 0x6E65644974616863;
    if (a1 != 2)
    {
      v7 = 0x6C79745374616863;
    }

    if (a1)
    {
      v6 = 1684632935;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0x444970756F7267;
    if (a1 != 9)
    {
      v2 = 0x7069636974726170;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x4E65636976726573;
    v4 = 0x656D614E6D6F6F72;
    if (a1 != 6)
    {
      v4 = 0x4E79616C70736964;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B7C8DA60(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA53168, &qword_1B7D10660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C91618();
  sub_1B7CFF830();
  v11 = *v3;
  LOBYTE(v28) = 0;
  sub_1B7CFF520();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v28) = 1;
    sub_1B7CFF4E0();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v28) = 2;
    sub_1B7CFF4A0();
    v16 = v3[5];
    LOBYTE(v28) = 3;
    sub_1B7CFF4F0();
    LOWORD(v28) = *(v3 + 24);
    v29 = 4;
    type metadata accessor for IMChatStyle(0);
    sub_1B7C91728(&qword_1EBA53170);
    sub_1B7CFF4C0();
    v17 = v3[7];
    v18 = v3[8];
    LOBYTE(v28) = 5;
    sub_1B7CFF4A0();
    v19 = v3[9];
    v20 = v3[10];
    LOBYTE(v28) = 6;
    sub_1B7CFF4A0();
    v21 = v3[11];
    v22 = v3[12];
    LOBYTE(v28) = 7;
    sub_1B7CFF4A0();
    v23 = v3[13];
    v24 = v3[14];
    LOBYTE(v28) = 8;
    sub_1B7CFF4A0();
    v25 = v3[15];
    v26 = v3[16];
    LOBYTE(v28) = 9;
    sub_1B7CFF4A0();
    v28 = v3[17];
    v29 = 10;
    sub_1B7C107FC(&qword_1EBA53150, &qword_1B7D10658);
    sub_1B7C9176C(&qword_1EBA53178, sub_1B7C917E4);
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B7C8DDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7C90BC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7C8DDE4(uint64_t a1)
{
  v2 = sub_1B7C91618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C8DE20(uint64_t a1)
{
  v2 = sub_1B7C91618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1B7C8DE5C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7C90F60(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v8[8];
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1B7C8DED0()
{
  v1 = 7104878;
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000024);
  v29 = *v0;
  v2 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v2);

  MEMORY[0x1B8CADCA0](0x203A64697567202CLL, 0xE800000000000000);
  MEMORY[0x1B8CADCA0](v0[1], v0[2]);
  MEMORY[0x1B8CADCA0](0xD000000000000012, 0x80000001B7D57280);
  if (v0[4])
  {
    v3 = v0[3];
    v4 = v0[4];
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v3, v4);

  MEMORY[0x1B8CADCA0](0x745374616863202CLL, 0xED0000203A656C79);
  if (*(v0 + 49))
  {
    v30 = v0[5];
    v5 = sub_1B7CFF570();
  }

  else
  {
    v5 = IMChatStyle.description.getter(*(v0 + 48));
  }

  MEMORY[0x1B8CADCA0](v5);

  MEMORY[0x1B8CADCA0](0x636976726573202CLL, 0xEF203A656D614E65);
  if (v0[8])
  {
    v6 = v0[7];
    v7 = v0[8];
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v6, v7);

  MEMORY[0x1B8CADCA0](0x614E6D6F6F72202CLL, 0xEC000000203A656DLL);
  if (v0[10])
  {
    v8 = v0[9];
    v9 = v0[10];
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v8, v9);

  MEMORY[0x1B8CADCA0](0x616C70736964202CLL, 0xEF203A656D614E79);
  if (v0[12])
  {
    v10 = v0[11];
    v11 = v0[12];
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v10, v11);

  MEMORY[0x1B8CADCA0](0xD000000000000017, 0x80000001B7D572A0);
  if (v0[14])
  {
    v12 = v0[13];
    v13 = v0[14];
  }

  else
  {
    v13 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v12, v13);

  MEMORY[0x1B8CADCA0](0x4970756F7267202CLL, 0xEB00000000203A44);
  if (v0[16])
  {
    v1 = v0[15];
    v14 = v0[16];
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  MEMORY[0x1B8CADCA0](v1, v14);

  MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D572C0);
  v15 = v0[17];
  v16 = *(v15 + 16);
  if (v16)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v16, 0);
    v17 = (v15 + 48);
    do
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;

      sub_1B7CFF210();

      v21 = sub_1B7CFF570();
      MEMORY[0x1B8CADCA0](v21);

      MEMORY[0x1B8CADCA0](0x656C646E6168202CLL, 0xEA0000000000203ALL);
      MEMORY[0x1B8CADCA0](v19, v20);

      v23 = *(v31 + 16);
      v22 = *(v31 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B7AECEEC((v22 > 1), v23 + 1, 1);
      }

      *(v31 + 16) = v23 + 1;
      v24 = v31 + 16 * v23;
      *(v24 + 32) = 0xD000000000000024;
      *(v24 + 40) = 0x80000001B7D571A0;
      v17 += 3;
      --v16;
    }

    while (v16);
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v25 = sub_1B7CFEA10();
  v27 = v26;

  MEMORY[0x1B8CADCA0](v25, v27);

  return 0;
}

uint64_t sub_1B7C8E424(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(*result + 16))
  {
    v7 = 7104878;
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0x5F776F7220200A5BLL, 0xEC000000203A6469);
    v34 = *a2;
    v8 = sub_1B7CFF570();
    MEMORY[0x1B8CADCA0](v8);

    MEMORY[0x1B8CADCA0](0x6469756720200A2CLL, 0xEA0000000000203ALL);
    MEMORY[0x1B8CADCA0](a2[1], a2[2]);
    MEMORY[0x1B8CADCA0](0xD000000000000013, 0x80000001B7D57100);
    if (a2[4])
    {
      v9 = a2[3];
      v10 = a2[4];
    }

    else
    {
      v10 = 0xE300000000000000;
      v9 = 7104878;
    }

    MEMORY[0x1B8CADCA0](v9, v10);

    MEMORY[0x1B8CADCA0](0x5F7461686320200ALL, 0xEF203A656C797473);
    MEMORY[0x1B8CADCA0](a3, a4);
    MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D57120);
    if (a2[8])
    {
      v11 = a2[7];
      v12 = a2[8];
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7104878;
    }

    MEMORY[0x1B8CADCA0](v11, v12);

    MEMORY[0x1B8CADCA0](0x4E6D6F6F7220200ALL, 0xED0000203A656D61);
    if (a2[10])
    {
      v13 = a2[9];
      v14 = a2[10];
    }

    else
    {
      v14 = 0xE300000000000000;
      v13 = 7104878;
    }

    MEMORY[0x1B8CADCA0](v13, v14);

    MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D57140);
    if (a2[12])
    {
      v15 = a2[11];
      v16 = a2[12];
    }

    else
    {
      v16 = 0xE300000000000000;
      v15 = 7104878;
    }

    MEMORY[0x1B8CADCA0](v15, v16);

    MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D57160);
    if (a2[14])
    {
      v17 = a2[13];
      v18 = a2[14];
    }

    else
    {
      v18 = 0xE300000000000000;
      v17 = 7104878;
    }

    MEMORY[0x1B8CADCA0](v17, v18);

    MEMORY[0x1B8CADCA0](0x70756F726720200ALL, 0xEC000000203A4449);
    if (a2[16])
    {
      v7 = a2[15];
      v19 = a2[16];
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    MEMORY[0x1B8CADCA0](v7, v19);

    MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D57180);
    v20 = a2[17];
    v21 = *(v20 + 16);
    v22 = sub_1B7CFF570();
    MEMORY[0x1B8CADCA0](v22);

    MEMORY[0x1B8CADCA0](0x202020200A3ALL, 0xE600000000000000);
    if (v21)
    {
      v35 = MEMORY[0x1E69E7CC0];
      sub_1B7AECEEC(0, v21, 0);
      v23 = (v20 + 48);
      do
      {
        v24 = *(v23 - 2);
        v25 = *(v23 - 1);
        v26 = *v23;

        sub_1B7CFF210();

        v27 = sub_1B7CFF570();
        MEMORY[0x1B8CADCA0](v27);

        MEMORY[0x1B8CADCA0](0x656C646E6168202CLL, 0xEA0000000000203ALL);
        MEMORY[0x1B8CADCA0](v25, v26);

        v29 = *(v35 + 16);
        v28 = *(v35 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1B7AECEEC((v28 > 1), v29 + 1, 1);
        }

        *(v35 + 16) = v29 + 1;
        v30 = v35 + 16 * v29;
        *(v30 + 32) = 0xD000000000000024;
        *(v30 + 40) = 0x80000001B7D571A0;
        v23 += 3;
        --v21;
      }

      while (v21);
    }

    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7AF7FAC();
    v31 = sub_1B7CFEA10();
    v33 = v32;

    MEMORY[0x1B8CADCA0](v31, v33);

    MEMORY[0x1B8CADCA0](23818, 0xE200000000000000);
    sub_1B7C90664(0, 0, 0, 0xE000000000000000);
  }

  return result;
}

void sub_1B7C8E9E4(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v73 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, a2);
  *&v60 = 0;
  IMDSqlOperationGetError(a1 + 16, &v60);
  v8 = v60;
  swift_endAccess();
  if (v8)
  {
    swift_willThrow();
    v9 = v8;
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  v59 = a3;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
LABEL_11:

    sub_1B7C90740(&v64);
    v22 = v71;
    a4[6] = v70;
    a4[7] = v22;
    a4[8] = v72;
    v23 = v67;
    a4[2] = v66;
    a4[3] = v23;
    v24 = v69;
    a4[4] = v68;
    a4[5] = v24;
    v25 = v65;
    *a4 = v64;
    a4[1] = v25;
    goto LABEL_12;
  }

  type metadata accessor for SqlOperation.Row();
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = swift_allocObject();
    v17 = sub_1B7C23650(v12);
    *(v16 + 16) = a1;
    *(v16 + 24) = v17;
    SqlOperation.Row.column(forColumnName:)(0x64697567uLL, 0xE400000000000000, &v60);
    if (*(&v60 + 1))
    {
      break;
    }

    swift_setDeallocating();
    v13 = *(v16 + 16);

    v14 = *(v16 + 24);

    swift_deallocClassInstance();
    sub_1B7AEE190(&v60, &qword_1EBA52298, &unk_1B7D10570);
LABEL_7:
    swift_beginAccess();

    v15 = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  v64 = v60;
  v65 = v61;
  v66 = v62;
  v67 = v63;
  v18 = v61;
  sub_1B7C26C78(&v64);
  v19 = SqlOperation.Row.string(forColumnIndex:)(v18);
  if (!v19.value._object)
  {
    swift_setDeallocating();
    v20 = *(v16 + 16);

    v21 = *(v16 + 24);

    swift_deallocClassInstance();
    goto LABEL_7;
  }

  SqlOperation.Row.column(forColumnName:)(0x656C797473uLL, 0xE500000000000000, &v60);
  if (*(&v60 + 1))
  {
    v64 = v60;
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v27 = v61;
    sub_1B7C26C78(&v64);
    v74 = SqlOperation.Row.int(forColumnIndex:)(v27);
    if (v74.is_nil)
    {
      value = 0;
    }

    else
    {
      value = v74.value;
    }

    v58 = value;
  }

  else
  {
    sub_1B7AEE190(&v60, &qword_1EBA52298, &unk_1B7D10570);
    v58 = 0;
  }

  SqlOperation.Row.column(forColumnName:)(0x6564695F74616863uLL, 0xEF7265696669746ELL, &v60);
  if (*(&v60 + 1))
  {
    v64 = v60;
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v29 = v61;
    sub_1B7C26C78(&v64);
    v30 = SqlOperation.Row.string(forColumnIndex:)(v29);
    object = v30.value._object;
    countAndFlagsBits = v30.value._countAndFlagsBits;
  }

  else
  {
    sub_1B7AEE190(&v60, &qword_1EBA52298, &unk_1B7D10570);
    object = 0;
    countAndFlagsBits = 0;
  }

  SqlOperation.Row.column(forColumnName:)(0x5F65636976726573uLL, 0xEC000000656D616ELL, &v60);
  if (*(&v60 + 1))
  {
    v64 = v60;
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v31 = v61;
    sub_1B7C26C78(&v64);
    v32 = SqlOperation.Row.string(forColumnIndex:)(v31);
    v54 = v32.value._object;
    v55 = v32.value._countAndFlagsBits;
  }

  else
  {
    sub_1B7AEE190(&v60, &qword_1EBA52298, &unk_1B7D10570);
    v54 = 0;
    v55 = 0;
  }

  SqlOperation.Row.column(forColumnName:)(0x6D616E5F6D6F6F72uLL, 0xE900000000000065, &v60);
  if (*(&v60 + 1))
  {
    v64 = v60;
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v33 = v61;
    sub_1B7C26C78(&v64);
    v34 = SqlOperation.Row.string(forColumnIndex:)(v33);
    v52 = v34.value._object;
    v53 = v34.value._countAndFlagsBits;
  }

  else
  {
    sub_1B7AEE190(&v60, &qword_1EBA52298, &unk_1B7D10570);
    v52 = 0;
    v53 = 0;
  }

  SqlOperation.Row.column(forColumnName:)(0xD000000000000015, 0x80000001B7D57260, &v60);
  if (*(&v60 + 1))
  {
    v64 = v60;
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v35 = v61;
    sub_1B7C26C78(&v64);
    v36 = SqlOperation.Row.string(forColumnIndex:)(v35);
    v50 = v36.value._object;
    v51 = v36.value._countAndFlagsBits;
  }

  else
  {
    sub_1B7AEE190(&v60, &qword_1EBA52298, &unk_1B7D10570);
    v50 = 0;
    v51 = 0;
  }

  SqlOperation.Row.column(forColumnName:)(0x64695F70756F7267uLL, 0xE800000000000000, &v60);
  if (*(&v60 + 1))
  {
    v64 = v60;
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v37 = v61;
    sub_1B7C26C78(&v64);
    v38 = SqlOperation.Row.string(forColumnIndex:)(v37);
    v39 = v38.value._countAndFlagsBits;
    v40 = v38.value._object;
  }

  else
  {
    sub_1B7AEE190(&v60, &qword_1EBA52298, &unk_1B7D10570);
    v39 = 0;
    v40 = 0;
  }

  SqlOperation.Row.column(forColumnName:)(0x5F79616C70736964uLL, 0xEC000000656D616ELL, &v60);
  if (*(&v60 + 1))
  {
    v64 = v60;
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v41 = v61;
    sub_1B7C26C78(&v64);
    v42 = SqlOperation.Row.string(forColumnIndex:)(v41);
    v43 = v42.value._countAndFlagsBits;
    v44 = v42.value._object;
  }

  else
  {

    sub_1B7AEE190(&v60, &qword_1EBA52298, &unk_1B7D10570);
    v43 = 0;
    v44 = 0;
  }

  if ((v58 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  if (v58 > 0xFF)
  {
    goto LABEL_43;
  }

  *&v64 = a2;
  *(&v64 + 1) = v19.value._countAndFlagsBits;
  *&v65 = v19.value._object;
  *(&v65 + 1) = countAndFlagsBits;
  *&v66 = object;
  *(&v66 + 1) = v58;
  LOWORD(v67) = v58;
  *(&v67 + 1) = v55;
  *&v68 = v54;
  *(&v68 + 1) = v53;
  *&v69 = v52;
  *(&v69 + 1) = v43;
  *&v70 = v44;
  *(&v70 + 1) = v51;
  *&v71 = v50;
  *(&v71 + 1) = v39;
  *&v72 = v40;
  *(&v72 + 1) = v59;
  nullsub_2(&v64, v45);
  v46 = v71;
  a4[6] = v70;
  a4[7] = v46;
  a4[8] = v72;
  v47 = v67;
  a4[2] = v66;
  a4[3] = v47;
  v48 = v69;
  a4[4] = v68;
  a4[5] = v48;
  v49 = v65;
  *a4 = v64;
  a4[1] = v49;

LABEL_12:
  v26 = *MEMORY[0x1E69E9840];
}

id sub_1B7C8F070@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, a2);
  v23 = 0;
  IMDSqlOperationGetError(a1 + 16, &v23);
  v6 = v23;
  swift_endAccess();
  if (v6)
  {
    swift_willThrow();
    result = v6;
    v8 = *MEMORY[0x1E69E9840];
    return result;
  }

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
LABEL_11:

    v20 = 0;
    v21 = 1;
    goto LABEL_12;
  }

  type metadata accessor for SqlOperation.Row();
  v10 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = v10;
    swift_beginAccess();
    v13 = IMDSqlStatementColumnCount((a1 + 48));
    swift_endAccess();
    if (v13)
    {
      swift_beginAccess();
      IMDSqlStatementColumnByIndex((a1 + 48), 0, &v23);
      v14 = v23;
      v15 = v24;
      v16 = v25;
      swift_endAccess();
      v26 = v14;
      v27 = v15;
      v28 = v16;
      if (IMDSqlColumnGetType(&v26) == 1)
      {
        break;
      }
    }

    swift_beginAccess();

    v11 = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((a1 + 48), 0, &v23);
  v17 = v23;
  v18 = v24;
  v19 = v25;
  swift_endAccess();
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v20 = IMDInt64FromSqlColumn(&v26);

  if (v20 < 0)
  {
LABEL_14:
    __break(1u);
  }

  v21 = 0;
LABEL_12:
  *a3 = v20;
  *(a3 + 8) = v21;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7C8F304(sqlite3_int64 a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v95 = a1;
  v91 = a3;
  v134 = *MEMORY[0x1E69E9840];
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v91 - v14;
  v117 = type metadata accessor for StorageInspectionAttachmentDirectory();
  v16 = *(v117 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v112 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v114 = &v91 - v20;
  v118 = type metadata accessor for StorageInspectionAttachmentRecord();
  v121 = *(v118 - 8);
  v21 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = 0;
  v110 = 0;
  v129 = 0;
  v130 = 0;
  v97 = 0;
  v123 = (v16 + 48);
  v96 = ", participants: ";
  v103 = "_id ASC LIMIT ?;";
  v99 = "orphaned_attachments";
  v125 = v5 + 16;
  v101 = v5;
  v124 = (v5 + 8);
  p_cb = &OBJC_PROTOCOL___CNChangeHistoryEventVisitor.cb;
  v126 = v8;
  v127 = v4;
LABEL_2:
  v94 = objc_autoreleasePoolPush();
  if (*(p_cb + 190) != -1)
  {
    swift_once();
  }

  v25 = off_1EBA52D08;

  v26 = objc_autoreleasePoolPush();
  v27 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v25 + 16, v27);
  swift_endAccess();

  swift_beginAccess();
  v131 = 0;
  v111 = v25;
  IMDSqlOperationGetError((v25 + 16), &v131);
  v28 = v131;
  swift_endAccess();
  if (v28)
  {
LABEL_72:
    swift_willThrow();
    v28;
    v82 = v94;
    goto LABEL_76;
  }

  v29 = v95;
  if (v95 < 0)
  {
    goto LABEL_84;
  }

  v30 = v111;
  swift_beginAccess();
  IMDSqlStatementBindInt64((v30 + 48), v29);
  v131 = 0;
  IMDSqlOperationGetError((v30 + 16), &v131);
  v31 = v131;
  swift_endAccess();
  if (v31)
  {
    goto LABEL_68;
  }

  v32 = v97;
  if (v97 < 0)
  {
    goto LABEL_85;
  }

  v33 = v111;
  swift_beginAccess();
  IMDSqlStatementBindInt64((v33 + 48), v32);
  v131 = 0;
  IMDSqlOperationGetError((v33 + 16), &v131);
  v31 = v131;
  swift_endAccess();
  if (v31)
  {
LABEL_68:
    v81 = v31;
    swift_willThrow();
LABEL_74:
    v82 = v94;
    v83 = v111;
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v83 + 16));
    v131 = 0;
    IMDSqlOperationGetError((v83 + 16), &v131);
    v84 = v131;
    swift_endAccess();
    swift_willThrow();
    if (v84)
    {
      v84;
    }

LABEL_76:
    objc_autoreleasePoolPop(v26);

    v80 = v82;
LABEL_77:
    objc_autoreleasePoolPop(v80);
  }

  else
  {
    v34 = *(v98 + 24);
    if (v34 < 0xFFFFFFFF80000000)
    {
      goto LABEL_86;
    }

    if (v34 > 0x7FFFFFFF)
    {
      goto LABEL_87;
    }

    v35 = v111;
    swift_beginAccess();
    IMDSqlStatementBindInt((v35 + 48), v34);
    v131 = 0;
    IMDSqlOperationGetError((v35 + 16), &v131);
    v31 = v131;
    swift_endAccess();
    if (v31)
    {
      goto LABEL_68;
    }

    v36 = SqlOperation.uint64s(forColumnName:)(0x5F6567617373656DuLL, 0xEA00000000006469);
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v35 + 16));
    v131 = 0;
    IMDSqlOperationGetError((v35 + 16), &v131);
    v37 = v131;
    swift_endAccess();
    if (v37)
    {
      swift_willThrow();
      v81 = v37;
      goto LABEL_74;
    }

    objc_autoreleasePoolPop(v26);

    v38 = *(v36 + 16);
    v105 = (v36 + 16);
    if (v38)
    {
      v39 = *(v36 + 8 * v38 + 24);
      v40 = __CFADD__(v39, 1);
      v41 = v39 + 1;
      p_cb = (&OBJC_PROTOCOL___CNChangeHistoryEventVisitor + 64);
      if (v40)
      {
        goto LABEL_88;
      }

      v42 = v36;
      v97 = v41;
      goto LABEL_18;
    }

    v38 = *(MEMORY[0x1E69E7CC0] + 16);
    v105 = (MEMORY[0x1E69E7CC0] + 16);
    p_cb = (&OBJC_PROTOCOL___CNChangeHistoryEventVisitor + 64);
    if (v38)
    {
      v42 = MEMORY[0x1E69E7CC0];
LABEL_18:
      v43 = 0;
      v93 = v42;
      v102 = v42 + 32;
      v92 = v104 + v38;
      v106 = a2;
      v115 = v23;
      v116 = v12;
      v100 = v38;
      while (1)
      {
        if (v43 == v38)
        {

          objc_autoreleasePoolPop(v94);
          v104 = v92;
          goto LABEL_2;
        }

        if (v43 >= *v105)
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
        }

        v107 = v43;
        v44 = *(v102 + 8 * v43);
        v45 = swift_allocObject();
        *(v45 + 16) = v44;
        v46 = v113;
        v47 = sub_1B7CD7370(0xD000000000000048, v103 | 0x8000000000000000, sub_1B7C90874, v45);
        v113 = v46;
        if (v46)
        {

          goto LABEL_67;
        }

        v48 = v47;

        v28 = MEMORY[0x1E69E7CC0];
        if (v48)
        {
          v49 = v48;
        }

        else
        {
          v49 = MEMORY[0x1E69E7CC0];
        }

        if (*(v49 + 16))
        {
          v132 = 0;
          v133 = 0xE000000000000000;
          sub_1B7CFF210();
          MEMORY[0x1B8CADCA0](0xD000000000000069, v99 | 0x8000000000000000);
          v131 = sub_1B7AF7F10(0x3F, 0xE100000000000000, *(v49 + 16));
          sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
          sub_1B7AF7FAC();
          v50 = sub_1B7CFEA10();
          v52 = v51;

          MEMORY[0x1B8CADCA0](v50, v52);

          MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
          v53 = v132;
          v28 = v133;
          v54 = swift_allocObject();
          *(v54 + 16) = v49;

          v55 = v113;
          v56 = sub_1B7CD7370(v53, v28, sub_1B7C65BE8, v54);
          v113 = v55;
          if (v55)
          {

LABEL_67:

            v80 = v94;
            goto LABEL_77;
          }

          v57 = v56;

          if (v57)
          {
            v58 = v57;
          }

          else
          {
            v58 = MEMORY[0x1E69E7CC0];
          }

          v4 = v127;
        }

        else
        {

          v58 = v28;
        }

        v59 = v117;
        v122 = v58[2];
        if (v122)
        {
          v26 = 0;
          v60 = *(v121 + 80);
          v119 = v58;
          v120 = v58 + ((v60 + 32) & ~v60);
          while (1)
          {
            if (v26 >= v58[2])
            {
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            v61 = a2;
            sub_1B7C607E8(&v120[*(v121 + 72) * v26], v23);
            v62 = *(v118 + 48);
            sub_1B7C59684(&v23[v62], v15);
            v28 = *v123;
            if ((*v123)(v15, 1, v59) == 1)
            {
              sub_1B7C60868(v23, type metadata accessor for StorageInspectionAttachmentRecord);
              v63 = v15;
              goto LABEL_37;
            }

            v64 = v114;
            sub_1B7C596F4(v15, v114);
            v65 = *(*(v64 + *(v59 + 20)) + 16);
            sub_1B7C60868(v64, type metadata accessor for StorageInspectionAttachmentDirectory);
            if (!v65)
            {
              break;
            }

            v23 = v115;
            if (!v61)
            {
              goto LABEL_43;
            }

            v12 = v116;
            sub_1B7C59684(&v115[v62], v116);
            v59 = v117;
            if ((v28)(v12, 1, v117) == 1)
            {
              sub_1B7C60868(v23, type metadata accessor for StorageInspectionAttachmentRecord);
              v63 = v12;
LABEL_37:
              sub_1B7AEE190(v63, &qword_1EBA52978, &qword_1B7D0DB38);
LABEL_44:
              a2 = v61;
              goto LABEL_45;
            }

            v28 = v112;
            sub_1B7C596F4(v12, v112);

            v66 = v113;
            v67 = sub_1B7CDE180(v28);
            if (v66)
            {

              sub_1B7C60868(v112, type metadata accessor for StorageInspectionAttachmentDirectory);
              sub_1B7C60868(v23, type metadata accessor for StorageInspectionAttachmentRecord);
              v80 = v94;
              goto LABEL_77;
            }

            v68 = v67[2];
            v113 = 0;
            if (v68)
            {
              v69 = 0;
              v70 = (*(v101 + 80) + 32) & ~*(v101 + 80);
              v109 = v67;
              v71 = v67 + v70;
              v128 = *(v101 + 72);
              v72 = *(v101 + 16);
              v108 = v129 + v68;
              while (1)
              {
                v73 = v126;
                v72(v126, v71, v4);
                if ((v129 ^ v69) == 0xFFFFFFFFFFFFFFFFLL)
                {
                  break;
                }

                v28 = URL.fileAllocationSize.getter();
                v74 = v4;
                v76 = v75;
                (*v124)(v73, v74);
                if (v76)
                {
                  v77 = 0;
                }

                else
                {
                  v77 = v28;
                }

                v40 = __CFADD__(v130, v77);
                v78 = &v77[v130];
                if (v40)
                {
                  goto LABEL_70;
                }

                v130 = v78;
                ++v69;
                v4 = v127;
                v71 += v128;
                if (v68 == v69)
                {

                  v129 = v108;
                  v23 = v115;
                  v12 = v116;
                  goto LABEL_58;
                }
              }

              __break(1u);
LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

LABEL_58:
            a2 = v106;

            sub_1B7C60868(v112, type metadata accessor for StorageInspectionAttachmentDirectory);
            sub_1B7C60868(v23, type metadata accessor for StorageInspectionAttachmentRecord);
            v59 = v117;
LABEL_45:
            v58 = v119;
            if (++v26 == v122)
            {
              goto LABEL_59;
            }
          }

          v23 = v115;
LABEL_43:
          sub_1B7C60868(v23, type metadata accessor for StorageInspectionAttachmentRecord);
          v12 = v116;
          v59 = v117;
          goto LABEL_44;
        }

LABEL_59:
        if ((v104 ^ v107) == 0xFFFFFFFFFFFFFFFFLL)
        {
          goto LABEL_82;
        }

        v43 = v107 + 1;
        v79 = v58[2];

        v40 = __CFADD__(v110, v79);
        v110 += v79;
        p_cb = (&OBJC_PROTOCOL___CNChangeHistoryEventVisitor + 64);
        v38 = v100;
        if (v40)
        {
          goto LABEL_83;
        }
      }
    }

    objc_autoreleasePoolPop(v94);
    v86 = v113;
    sub_1B7CDAE64(v95);
    if (!v86)
    {
      v88 = v91;
      v89 = v110;
      *v91 = v104;
      v88[1] = v89;
      v90 = v130;
      v88[2] = v129;
      v88[3] = v90;
      v88[4] = v87;
    }
  }

  v85 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1B7C9011C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C90218@<X0>(sqlite3_int64 a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v58 = *MEMORY[0x1E69E9840];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v8 = off_1EBA52D08;
  sub_1B7C90740(&v49);

  v9 = objc_autoreleasePoolPush();
  v10 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v8 + 16, v10);
  swift_endAccess();

  swift_beginAccess();
  v21 = 0;
  IMDSqlOperationGetError((v8 + 16), &v21);
  v11 = v21;
  swift_endAccess();
  if (v11)
  {
    swift_willThrow();
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v40 = v49;
    v41 = v50;
    v11;
  }

  else
  {
    sub_1B7C8E9E4(v8, a1, a2, &v22);
    if (v3)
    {
      v37 = v55;
      v38 = v56;
      v39 = v57;
      v33 = v51;
      v34 = v52;
      v35 = v53;
      v36 = v54;
      v31 = v49;
      v32 = v50;
    }

    else
    {
      swift_beginAccess();
      IMDSqlOperationFinishQuery((v8 + 16));
      v20 = 0;
      IMDSqlOperationGetError((v8 + 16), &v20);
      v12 = v20;
      swift_endAccess();
      if (!v12)
      {
        objc_autoreleasePoolPop(v9);

        v16 = v29;
        a3[6] = v28;
        a3[7] = v16;
        a3[8] = v30;
        v17 = v25;
        a3[2] = v24;
        a3[3] = v17;
        v18 = v27;
        a3[4] = v26;
        a3[5] = v18;
        v19 = v23;
        *a3 = v22;
        a3[1] = v19;
        goto LABEL_13;
      }

      swift_willThrow();
      v37 = v28;
      v38 = v29;
      v39 = v30;
      v33 = v24;
      v34 = v25;
      v35 = v26;
      v36 = v27;
      v31 = v22;
      v32 = v23;
      v4 = v12;
    }

    swift_beginAccess();
    IMDSqlOperationFinishQuery((v8 + 16));
    v20 = 0;
    IMDSqlOperationGetError((v8 + 16), &v20);
    v13 = v20;
    swift_endAccess();
    swift_willThrow();
    if (v13)
    {
      v13;
    }

    v46 = v37;
    v47 = v38;
    v48 = v39;
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45 = v36;
    v40 = v31;
    v41 = v32;
  }

  objc_autoreleasePoolPop(v9);

  result = sub_1B7AEE190(&v40, &qword_1EBA529A0, &qword_1B7D0DC48);
LABEL_13:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B7C90580(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1B7C90664(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_1B7AF182C(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_1B7C90580(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

double sub_1B7C90740(_OWORD *a1)
{
  result = 0.0;
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

unint64_t sub_1B7C9075C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_1B7C107FC(&qword_1EBA52908, qword_1B7D10580);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7C90890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_1B7CFDFF0();
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

uint64_t sub_1B7C90A04(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

__n128 sub_1B7C90ADC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1B7C90B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7C90B50(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7C90BC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xEE0065756C615665 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1B7CFF590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61 || (sub_1B7CFF590() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B7CFF590() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7D56100 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61)
  {

    return 10;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1B7C90F60@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v52 = sub_1B7C107FC(&qword_1EBA53138, &qword_1B7D10650);
  v5 = *(v52 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v8 = &v35 - v7;
  v9 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C91618();
  sub_1B7CFF820();
  if (v2)
  {
    return sub_1B7AE9168(a1);
  }

  v10 = v5;
  LOBYTE(v62[0]) = 0;
  v11 = v52;
  v12 = sub_1B7CFF460();
  LOBYTE(v62[0]) = 1;
  v48 = sub_1B7CFF420();
  v50 = v14;
  LOBYTE(v62[0]) = 2;
  v15 = sub_1B7CFF3E0();
  v49 = v16;
  v45 = v15;
  LOBYTE(v62[0]) = 3;
  v17 = sub_1B7CFF430();
  v51 = 0;
  v44 = v17;
  type metadata accessor for IMChatStyle(0);
  LOBYTE(v53) = 4;
  sub_1B7C91728(&qword_1EBA53148);
  v18 = v51;
  sub_1B7CFF400();
  if (v18)
  {
    v51 = v18;
    (*(v10 + 8))(v8, v11);
    sub_1B7AE9168(a1);
  }

  else
  {
    v43 = LOBYTE(v62[0]);
    v82 = BYTE1(v62[0]);
    LOBYTE(v62[0]) = 5;
    v42 = sub_1B7CFF3E0();
    v47 = v19;
    LOBYTE(v62[0]) = 6;
    v20 = sub_1B7CFF3E0();
    v46 = v21;
    LOBYTE(v62[0]) = 7;
    v39 = sub_1B7CFF3E0();
    v40 = v20;
    v23 = v22;
    LOBYTE(v62[0]) = 8;
    v38 = sub_1B7CFF3E0();
    v41 = v24;
    v51 = 0;
    LOBYTE(v62[0]) = 9;
    v36 = sub_1B7CFF3E0();
    v37 = v25;
    v51 = 0;
    sub_1B7C107FC(&qword_1EBA53150, &qword_1B7D10658);
    v81 = 10;
    sub_1B7C9176C(&qword_1EBA53158, sub_1B7C9166C);
    v26 = v51;
    sub_1B7CFF440();
    v51 = v26;
    (*(v10 + 8))(v8, v52);
    if (v26)
    {
      sub_1B7AE9168(a1);
    }

    else
    {
      v52 = v78;
      *&v53 = v12;
      *(&v53 + 1) = v48;
      *&v54 = v50;
      *(&v54 + 1) = v45;
      *&v55 = v49;
      *(&v55 + 1) = v44;
      LOBYTE(v56) = v43;
      HIDWORD(v35) = v82;
      BYTE1(v56) = v82;
      *(&v56 + 2) = v79;
      WORD3(v56) = v80;
      v27 = v41;
      v28 = v42;
      v30 = v46;
      v29 = v47;
      *(&v56 + 1) = v42;
      *&v57 = v47;
      *(&v57 + 1) = v40;
      *&v58 = v46;
      *(&v58 + 1) = v39;
      *&v59 = v23;
      *(&v59 + 1) = v38;
      *&v60 = v41;
      *(&v60 + 1) = v36;
      *&v61 = v37;
      *(&v61 + 1) = v78;
      sub_1B7C916C0(&v53, v62);
      sub_1B7AE9168(a1);
      v62[0] = v12;
      v62[1] = v48;
      v62[2] = v50;
      v62[3] = v45;
      v62[4] = v49;
      v62[5] = v44;
      v63 = v43;
      v64 = BYTE4(v35);
      v65 = v79;
      v66 = v80;
      v67 = v28;
      v68 = v29;
      v69 = v40;
      v70 = v30;
      v71 = v39;
      v72 = v23;
      v73 = v38;
      v74 = v27;
      v75 = v36;
      v76 = v37;
      v77 = v52;
      result = sub_1B7C916F8(v62);
      v31 = v60;
      a2[6] = v59;
      a2[7] = v31;
      a2[8] = v61;
      v32 = v56;
      a2[2] = v55;
      a2[3] = v32;
      v33 = v58;
      a2[4] = v57;
      a2[5] = v33;
      v34 = v54;
      *a2 = v53;
      a2[1] = v34;
    }
  }

  return result;
}

unint64_t sub_1B7C91618()
{
  result = qword_1EBA53140;
  if (!qword_1EBA53140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53140);
  }

  return result;
}

unint64_t sub_1B7C9166C()
{
  result = qword_1EBA53160;
  if (!qword_1EBA53160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53160);
  }

  return result;
}

uint64_t sub_1B7C91728(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IMChatStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7C9176C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA53150, &qword_1B7D10658);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C917E4()
{
  result = qword_1EBA53180;
  if (!qword_1EBA53180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53180);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspectionChatRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageInspectionChatRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C9198C()
{
  result = qword_1EBA53188;
  if (!qword_1EBA53188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53188);
  }

  return result;
}

unint64_t sub_1B7C919E4()
{
  result = qword_1EBA53190;
  if (!qword_1EBA53190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53190);
  }

  return result;
}

unint64_t sub_1B7C91A3C()
{
  result = qword_1EBA53198;
  if (!qword_1EBA53198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53198);
  }

  return result;
}

uint64_t sub_1B7C91A90()
{
  result = **(v0 + 16);
  if (result)
  {
    MEMORY[0x1B8CB0E70](result, -1, -1);
    MEMORY[0x1B8CB0E70](*(v0 + 16), -1, -1);
    v2 = *(v0 + 24);
    if (v2)
    {
      v3 = *(v0 + 32);
      if (v3)
      {
        v4 = 40 * v3;
        do
        {
          result = *v2;
          if (!*v2)
          {
            __break(1u);
            goto LABEL_11;
          }

          v2 += 5;
          MEMORY[0x1B8CB0E70](result, -1, -1);
          v4 -= 40;
        }

        while (v4);
        v2 = *(v0 + 24);
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      MEMORY[0x1B8CB0E70](v2, -1, -1);
    }

LABEL_9:
    v5 = *(v0 + 40);

    v6 = *(v0 + 48);

    return v0;
  }

  else
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C91B48()
{
  sub_1B7C91A90();

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C91B7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B7C91BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7C91C00(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = v4;
  v31 = a4;
  v32 = a2;
  v33 = a3;
  v8 = sub_1B7C107FC(&qword_1EBA52030, &unk_1B7D13080);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v30 - v10;
  v48 = sub_1B7C107FC(&qword_1EBA52038, &qword_1B7D0AD18);
  v11 = *(v48 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v43 = &v30 - v13;
  v14 = sub_1B7C107FC(&qword_1EBA52040, &qword_1B7D13090);
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v42 = &v30 - v17;
  v18 = *(a1 + 16);
  v38 = (v11 + 48);
  v39 = "IMDMessageQueryStrings";
  v30 = v11;
  v36 = (v11 + 8);
  v37 = (v11 + 32);
  v35 = (v19 + 8);
  v20 = (a1 + 40);
  v21 = v18 + 1;
  while (1)
  {
    if (!--v21)
    {
      return result;
    }

    v23 = *v20;
    if (*v20 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v23 > 0x7FFFFFFF)
    {
      goto LABEL_26;
    }

    v34 = *(v20 - 1);
    if (!sqlite3_column_name(v34, v23))
    {
      goto LABEL_27;
    }

    v24 = sub_1B7CFEB70();
    v26 = v25;
    sub_1B7CFE310();
    KeyPath = v40;
    v4 = v6;
    sub_1B7CFE320();
    if (v6)
    {
      goto LABEL_29;
    }

    v41 = 0;
    v27 = v48;
    if ((*v38)(KeyPath, 1, v48) == 1)
    {
      goto LABEL_30;
    }

    (*v37)(v43, KeyPath, v27);
    KeyPath = swift_getKeyPath();
    sub_1B7CFE330();

    if (v46 == 1701667182 && v47 == 0xE400000000000000 && !(v44 >> 16) && v45 >> 16 == 4)
    {

      (*v36)(v43, v48);
    }

    else
    {
      KeyPath = sub_1B7CFF560();

      (*v36)(v43, v48);
      if ((KeyPath & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    (*v35)(v42, v14);
    if (v24 == 1701667182 && v26 == 0xE400000000000000)
    {
      break;
    }

    v20 += 2;
    v22 = sub_1B7CFF590();

    v6 = v41;
    if (v22)
    {
      goto LABEL_18;
    }
  }

LABEL_18:
  if (!sqlite3_column_text(v34, v23))
  {
LABEL_28:
    __break(1u);
LABEL_29:

    (*(v30 + 56))(KeyPath, 1, 1, v48);
LABEL_30:
    sub_1B7C1D5F8(KeyPath);
LABEL_31:
    result = sub_1B7CFF340();
    __break(1u);
    return result;
  }

  if (sub_1B7CFEB80() == v32 && v28 == v33)
  {
  }

  else
  {
    v29 = sub_1B7CFF590();

    if ((v29 & 1) == 0)
    {
      return result;
    }
  }

  *v31 = 1;
  return result;
}

uint64_t sub_1B7C92120(uint64_t a1, uint64_t *a2)
{
  v6 = v2;
  v30 = a2;
  v8 = sub_1B7C107FC(&qword_1EBA52030, &unk_1B7D13080);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v29 - v10;
  v45 = sub_1B7C107FC(&qword_1EBA52038, &qword_1B7D0AD18);
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v40 = &v29 - v13;
  v14 = sub_1B7C107FC(&qword_1EBA52040, &qword_1B7D13090);
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v39 = &v29 - v17;
  v18 = *(a1 + 16);
  v35 = (v11 + 48);
  v36 = "IMDMessageQueryStrings";
  v29 = v11;
  v33 = (v11 + 8);
  v34 = (v11 + 32);
  v32 = (v19 + 8);
  v20 = (a1 + 40);
  v21 = v18 + 1;
  while (1)
  {
    if (!--v21)
    {
      return result;
    }

    v22 = *v20;
    if (*v20 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v22 > 0x7FFFFFFF)
    {
      goto LABEL_25;
    }

    v31 = *(v20 - 1);
    if (!sqlite3_column_name(v31, v22))
    {
      __break(1u);
      goto LABEL_28;
    }

    v3 = sub_1B7CFEB70();
    v5 = v23;
    sub_1B7CFE310();
    KeyPath = v37;
    v2 = v6;
    sub_1B7CFE320();
    if (v6)
    {
      goto LABEL_29;
    }

    v38 = 0;
    v24 = v45;
    if ((*v35)(KeyPath, 1, v45) == 1)
    {
      goto LABEL_30;
    }

    (*v34)(v40, KeyPath, v24);
    KeyPath = swift_getKeyPath();
    sub_1B7CFE330();

    if (v43 == 1701667182 && v44 == 0xE400000000000000 && !(v41 >> 16) && v42 >> 16 == 4)
    {

      (*v33)(v40, v45);
    }

    else
    {
      KeyPath = sub_1B7CFF560();

      (*v33)(v40, v45);
      if ((KeyPath & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    (*v32)(v39, v14);
    if (v3 == 1701667182 && v5 == 0xE400000000000000)
    {
      break;
    }

    v20 += 2;
    a1 = sub_1B7CFF590();

    v6 = v38;
    if (a1)
    {
      goto LABEL_18;
    }
  }

LABEL_18:
  if (!sqlite3_column_text(v31, v22))
  {
LABEL_28:
    __break(1u);
LABEL_29:

    (*(v29 + 56))(KeyPath, 1, 1, v45);
LABEL_30:
    sub_1B7C1D5F8(KeyPath);
LABEL_31:
    result = sub_1B7CFF340();
    __break(1u);
    return result;
  }

  a1 = sub_1B7CFEB80();
  v14 = v25;
  v5 = v30;
  v3 = *v30;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v3;
  if ((result & 1) == 0)
  {
LABEL_26:
    result = sub_1B7CA2EA8(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
    *v5 = result;
  }

  v27 = *(v3 + 16);
  v26 = *(v3 + 24);
  if (v27 >= v26 >> 1)
  {
    result = sub_1B7CA2EA8((v26 > 1), v27 + 1, 1, v3);
    v3 = result;
    *v5 = result;
  }

  *(v3 + 16) = v27 + 1;
  v28 = v3 + 16 * v27;
  *(v28 + 32) = a1;
  *(v28 + 40) = v14;
  return result;
}

uint64_t sub_1B7C92678(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA531C0, &qword_1B7D10858);
  v6 = off_1F2FA8A10;
  off_1F2FA8A10(*(a2 + 16), 0, (v20 + *(v5 + 32)));
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = v2;
    *(v7 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v9 = sub_1B7C107FC(&qword_1EBA531C0, &qword_1B7D10858);
    v6(*(a2 + 16), 1, (v20 + *(v9 + 48)));
    v10 = sub_1B7C107FC(&qword_1EBA531C0, &qword_1B7D10858);
    v6(*(a2 + 16), 2, (v20 + *(v10 + 64)));
    v11 = sub_1B7C107FC(&qword_1EBA531C0, &qword_1B7D10858);
    off_1F2FA8B70(*(a2 + 16), 3, (v20 + *(v11 + 80)));
    v18 = v20[1];
    v19 = v20[0];
    v12 = v21;
    v13 = v22;
    v14 = *v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA1D6C(0, v14[2] + 1, 1, v14);
      v14 = result;
      *v13 = result;
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_1B7CA1D6C((v15 > 1), v16 + 1, 1, v14);
      v14 = result;
      *v13 = result;
    }

    v14[2] = v16 + 1;
    v17 = &v14[5 * v16];
    *(v17 + 2) = v19;
    *(v17 + 3) = v18;
    v17[8] = v12;
  }

  return result;
}

uint64_t sub_1B7C929CC(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA52478, &unk_1B7D0D930);
  off_1F2FA8B70(*(a2 + 16), 0, (v19 + *(v5 + 32)));
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = v2;
    *(v7 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v6 = sub_1B7C107FC(&qword_1EBA52478, &unk_1B7D0D930);
    off_1F2FA8A10(*(a2 + 16), 1, (v19 + *(v6 + 48)));
    v9 = v19[0];
    v10 = v19[1];
    v11 = v19[2];
    v12 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v12;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA1D90(0, v12[2] + 1, 1, v12);
      v12 = result;
      *a1 = result;
    }

    v13 = v12[2];
    v14 = v12[3];
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v17 = v12;
      v18 = v12[2];
      result = sub_1B7CA1D90((v14 > 1), v13 + 1, 1, v17);
      v13 = v18;
      v12 = result;
      *a1 = result;
    }

    v12[2] = v15;
    v16 = &v12[3 * v13];
    v16[4] = v9;
    v16[5] = v10;
    v16[6] = v11;
  }

  return result;
}

uint64_t sub_1B7C92BE8(uint64_t *a1, uint64_t a2)
{
  off_1F2FA8A90(*(a2 + 16), 0, &v10);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = v2;
    *(v4 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v6 = v10;
    v7 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v7;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA1DB4(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
      *a1 = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_1B7CA1DB4((v8 > 1), v9 + 1, 1, v7);
      v7 = result;
      *a1 = result;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + 8 * v9 + 32) = v6;
  }

  return result;
}

uint64_t sub_1B7C92D1C(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA53208, qword_1B7D10898);
  off_1F2FA8B70(*(a2 + 16), 0, (v19 + *(v5 + 32)));
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = v2;
    *(v7 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v6 = sub_1B7C107FC(&qword_1EBA53208, qword_1B7D10898);
    off_1F2FA8A90(*(a2 + 16), 1, (v19 + *(v6 + 48)));
    v9 = v19[0];
    v10 = v19[1];
    v11 = v19[2];
    v12 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v12;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA1DC8(0, v12[2] + 1, 1, v12);
      v12 = result;
      *a1 = result;
    }

    v13 = v12[2];
    v14 = v12[3];
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v17 = v12;
      v18 = v12[2];
      result = sub_1B7CA1DC8((v14 > 1), v13 + 1, 1, v17);
      v13 = v18;
      v12 = result;
      *a1 = result;
    }

    v12[2] = v15;
    v16 = &v12[3 * v13];
    v16[4] = v9;
    v16[5] = v10;
    v16[6] = v11;
  }

  return result;
}

uint64_t sub_1B7C92F38(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA53200, &qword_1B7D10890);
  v6 = off_1F2FA8A90;
  off_1F2FA8A90(*(a2 + 16), 0, (v20 + *(v5 + 32)));
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = v2;
    *(v7 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v9 = sub_1B7C107FC(&qword_1EBA53200, &qword_1B7D10890);
    v6(*(a2 + 16), 1, (v20 + *(v9 + 48)));
    v10 = sub_1B7C107FC(&qword_1EBA53200, &qword_1B7D10890);
    v6(*(a2 + 16), 2, (v20 + *(v10 + 64)));
    v11 = sub_1B7C107FC(&qword_1EBA53200, &qword_1B7D10890);
    off_1F2FA8B70(*(a2 + 16), 3, (v20 + *(v11 + 80)));
    v18 = v20[1];
    v19 = v20[0];
    v12 = v21;
    v13 = v22;
    v14 = *v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA1F34(0, v14[2] + 1, 1, v14);
      v14 = result;
      *v13 = result;
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_1B7CA1F34((v15 > 1), v16 + 1, 1, v14);
      v14 = result;
      *v13 = result;
    }

    v14[2] = v16 + 1;
    v17 = &v14[5 * v16];
    *(v17 + 2) = v19;
    *(v17 + 3) = v18;
    v17[8] = v12;
  }

  return result;
}

uint64_t sub_1B7C9328C(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA531D8, &unk_1B7D10860);
  v6 = off_1F2FA8B70;
  off_1F2FA8B70(*(a2 + 16), 0, (v21 + *(v5 + 32)));
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v8 = 1;
    *(v8 + 8) = v2;
    *(v8 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v7 = sub_1B7C107FC(&qword_1EBA531D8, &unk_1B7D10860);
    v6(*(a2 + 16), 1, (v21 + *(v7 + 48)));
    v10 = v21[0];
    v11 = v21[1];
    v12 = v21[2];
    v13 = v21[3];
    v14 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA1F58(0, v14[2] + 1, 1, v14);
      v14 = result;
      *a1 = result;
    }

    v15 = v14[2];
    v16 = v14[3];
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v19 = v14;
      v20 = v14[2];
      result = sub_1B7CA1F58((v16 > 1), v15 + 1, 1, v19);
      v15 = v20;
      v14 = result;
      *a1 = result;
    }

    v14[2] = v17;
    v18 = &v14[4 * v15];
    v18[4] = v10;
    v18[5] = v11;
    v18[6] = v12;
    v18[7] = v13;
  }

  return result;
}

uint64_t sub_1B7C934A0(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA531F8, &qword_1B7D10888);
  v6 = off_1F2FA8AB0;
  off_1F2FA8AB0(*(a2 + 16), 0, (v22 + *(v5 + 32)));
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = v2;
    *(v7 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v24 = a1;
    v9 = sub_1B7C107FC(&qword_1EBA531F8, &qword_1B7D10888);
    v6(*(a2 + 16), 1, (v22 + *(v9 + 48)));
    v10 = sub_1B7C107FC(&qword_1EBA531F8, &qword_1B7D10888);
    v6(*(a2 + 16), 2, (v22 + *(v10 + 64)));
    v11 = sub_1B7C107FC(&qword_1EBA531F8, &qword_1B7D10888);
    v12 = off_1F2FA8A10;
    off_1F2FA8A10(*(a2 + 16), 3, (v22 + *(v11 + 80)));
    v13 = sub_1B7C107FC(&qword_1EBA531F8, &qword_1B7D10888);
    v12(*(a2 + 16), 4, (v22 + *(v13 + 96)));
    v20 = v22[1];
    v21 = v22[0];
    v14 = v23;
    v15 = v24;
    v16 = *v24;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v16;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA2518(0, *(v16 + 16) + 1, 1, v16);
      v16 = result;
      *v15 = result;
    }

    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_1B7CA2518((v17 > 1), v18 + 1, 1, v16);
      v16 = result;
      *v15 = result;
    }

    *(v16 + 16) = v18 + 1;
    v19 = v16 + 40 * v18;
    *(v19 + 32) = v21;
    *(v19 + 48) = v20;
    *(v19 + 64) = v14;
  }

  return result;
}

uint64_t sub_1B7C93948(uint64_t *a1, uint64_t a2)
{
  off_1F2FA8B90(*(a2 + 16), 0, &v10);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = v2;
    *(v4 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v9 = v10;
    v6 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v6;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA28E4(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
      *a1 = result;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      result = sub_1B7CA28E4((v7 > 1), v8 + 1, 1, v6);
      v6 = result;
      *a1 = result;
    }

    *(v6 + 16) = v8 + 1;
    *(v6 + 16 * v8 + 32) = v9;
  }

  return result;
}

uint64_t sub_1B7C93A84(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA531F0, &qword_1B7D10880);
  v6 = off_1F2FA8B70;
  off_1F2FA8B70(*(a2 + 16), 0, (v24 + *(v5 + 32)));
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = v2;
    *(v7 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v9 = sub_1B7C107FC(&qword_1EBA531F0, &qword_1B7D10880);
    v6(*(a2 + 16), 1, (v24 + *(v9 + 48)));
    v10 = sub_1B7C107FC(&qword_1EBA531F0, &qword_1B7D10880);
    off_1F2FA89F0(*(a2 + 16), 2, v24 + *(v10 + 64));
    v11 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
    v12 = sub_1B7C1547C();
    v13 = v24 + *(sub_1B7C107FC(&qword_1EBA531F0, &qword_1B7D10880) + 80);
    (*(v12 + 24))(*(a2 + 16), 3, v11, v12);
    v14 = v24[1];
    v28 = v24[0];
    v15 = v24[2];
    v16 = v24[3];
    v17 = v25;
    v22 = v27;
    v23 = v26;
    v18 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v18;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA2D58(0, v18[2] + 1, 1, v18);
      v18 = result;
      *a1 = result;
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      result = sub_1B7CA2D58((v19 > 1), v20 + 1, 1, v18);
      v18 = result;
      *a1 = result;
    }

    v18[2] = v20 + 1;
    v21 = &v18[7 * v20];
    v21[4] = v28;
    v21[5] = v14;
    v21[6] = v15;
    v21[7] = v16;
    *(v21 + 64) = v17;
    v21[9] = v23;
    v21[10] = v22;
  }

  return result;
}

uint64_t sub_1B7C93E7C(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA531E8, &qword_1B7D11410);
  off_1F2FA8B70(*(a2 + 16), 0, (v22 + *(v5 + 32)));
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v9 = 1;
    *(v9 + 8) = v2;
    *(v9 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v6 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
    v7 = sub_1B7C1547C();
    v8 = v22 + *(sub_1B7C107FC(&qword_1EBA531E8, &qword_1B7D11410) + 48);
    (*(v7 + 24))(*(a2 + 16), 1, v6, v7);
    v11 = v22[0];
    v12 = v22[1];
    v13 = v22[2];
    v14 = v22[3];
    v15 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v15;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA3478(0, v15[2] + 1, 1, v15);
      v15 = result;
      *a1 = result;
    }

    v16 = v15[2];
    v17 = v15[3];
    v18 = v16 + 1;
    if (v16 >= v17 >> 1)
    {
      v20 = v15;
      v21 = v15[2];
      result = sub_1B7CA3478((v17 > 1), v16 + 1, 1, v20);
      v16 = v21;
      v15 = result;
      *a1 = result;
    }

    v15[2] = v18;
    v19 = &v15[4 * v16];
    v19[4] = v11;
    v19[5] = v12;
    v19[6] = v13;
    v19[7] = v14;
  }

  return result;
}

uint64_t sub_1B7C940A8(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C1547C();
  v6 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
  v7 = sub_1B7C107FC(&qword_1EBA531E0, &unk_1B7D10870);
  v8 = *(v5 + 24);
  v9 = v20 + *(v7 + 32);
  v8(*(a2 + 16), 0, v6, v5);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v12 = 1;
    *(v12 + 8) = v2;
    *(v12 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v10 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
    v11 = v20 + *(sub_1B7C107FC(&qword_1EBA531E0, &unk_1B7D10870) + 48);
    v8(*(a2 + 16), 1, v10, v5);
    v18 = v20[1];
    v19 = v20[0];
    v14 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA35AC(0, v14[2] + 1, 1, v14);
      v14 = result;
      *a1 = result;
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_1B7CA35AC((v15 > 1), v16 + 1, 1, v14);
      v14 = result;
      *a1 = result;
    }

    v14[2] = v16 + 1;
    v17 = &v14[4 * v16];
    *(v17 + 2) = v19;
    *(v17 + 3) = v18;
  }

  return result;
}

void sub_1B7C942E8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a2 + 16);
  v9 = sqlite3_db_handle(v8);
  if (!v9)
  {
    sub_1B7C95194();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0;
    *(v20 + 56) = 4;
LABEL_18:
    swift_willThrow();
    goto LABEL_19;
  }

  v30 = v9;
  sub_1B7AEA57C(a1);
  if (v4)
  {
LABEL_19:

    return;
  }

  v29 = a4;
  v10 = 0;
  while (1)
  {
    v11 = sqlite3_step(v8);
    if (v11 != 100)
    {
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = sqlite3_column_count(v8);
    if (v13 < 0)
    {
      goto LABEL_25;
    }

    v14 = v13;
    if (v13)
    {
      v15 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v16 = 0;
      do
      {
        v18 = *(v15 + 2);
        v17 = *(v15 + 3);
        if (v18 >= v17 >> 1)
        {
          v15 = sub_1B7CA2FB4((v17 > 1), v18 + 1, 1, v15);
        }

        v19 = &v15[16 * v18];
        *(v19 + 4) = v8;
        *(v19 + 5) = v16;
        *(v15 + 2) = v18 + 1;
        ++v16;
      }

      while (v14 != v16);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    sub_1B7C14214(v15);
    MEMORY[0x1B8CADDF0]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7CFED00();
    }

    sub_1B7CFED40();
  }

  if (v11 == 101)
  {
    sqlite3_reset(v8);

    return;
  }

  sub_1B7C95194();
  swift_allocError();
  v22 = v21;
  a4 = v29;
  if (sqlite3_errmsg(v30))
  {
    v23 = sub_1B7CFEB70();
    v25 = v24;
    v26 = sqlite3_extended_errcode(v30);
    sub_1B7C951E8();
    v27 = swift_allocError();
    *v28 = v26;
    v28[1] = v23;
    v28[2] = v25;
    *v22 = v27;
    *(v22 + 56) = 3;
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1B7C945B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 16);
  v7 = sqlite3_db_handle(v6);
  if (v7)
  {
    v8 = v7;
    result = sub_1B7AEA57C(a1);
    if (!v3)
    {
      v27 = v8;
      v10 = 0;
      while (1)
      {
        result = sqlite3_step(v6);
        if (result != 100)
        {
          break;
        }

        if (__OFADD__(v10++, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        result = sqlite3_column_count(v6);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v12 = result;
        if (result)
        {
          v13 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v14 = 0;
          do
          {
            v16 = *(v13 + 2);
            v15 = *(v13 + 3);
            if (v16 >= v15 >> 1)
            {
              v13 = sub_1B7CA2FB4((v15 > 1), v16 + 1, 1, v13);
            }

            v17 = &v13[16 * v16];
            *(v17 + 4) = v6;
            *(v17 + 5) = v14;
            *(v13 + 2) = v16 + 1;
            ++v14;
          }

          while (v12 != v14);
        }

        else
        {
          v13 = MEMORY[0x1E69E7CC0];
        }

        sub_1B7C92120(v13, a3);
      }

      if (result == 101)
      {
        return sqlite3_reset(v6);
      }

      sub_1B7C95194();
      swift_allocError();
      v20 = v19;
      result = sqlite3_errmsg(v27);
      if (result)
      {
        v21 = sub_1B7CFEB70();
        v23 = v22;
        v24 = sqlite3_extended_errcode(v27);
        sub_1B7C951E8();
        v25 = swift_allocError();
        *v26 = v24;
        v26[1] = v21;
        v26[2] = v23;
        *v20 = v25;
        *(v20 + 56) = 3;
        return swift_willThrow();
      }

LABEL_24:
      __break(1u);
    }
  }

  else
  {
    sub_1B7C95194();
    swift_allocError();
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0;
    *(v18 + 56) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B7C94814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = *(a2 + 16);
  v9 = sqlite3_db_handle(v8);
  if (!v9)
  {
    sub_1B7C95194();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0;
    *(v19 + 56) = 4;
LABEL_16:
    swift_willThrow();
  }

  v28 = v9;
  sub_1B7AEA57C(a1);
  if (v5)
  {
  }

  v10 = 0;
  while (1)
  {
    result = sqlite3_step(v8);
    if (result != 100)
    {
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    result = sqlite3_column_count(v8);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_23;
    }

    v13 = result;
    if (result)
    {
      v14 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = 0;
      do
      {
        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        if (v17 >= v16 >> 1)
        {
          v14 = sub_1B7CA2FB4((v16 > 1), v17 + 1, 1, v14);
        }

        v18 = &v14[16 * v17];
        *(v18 + 4) = v8;
        *(v18 + 5) = v15;
        *(v14 + 2) = v17 + 1;
        ++v15;
      }

      while (v13 != v15);
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    sub_1B7C91C00(v14, a3, a4, a5);
  }

  if (result == 101)
  {
    sqlite3_reset(v8);
  }

  sub_1B7C95194();
  swift_allocError();
  v21 = v20;
  result = sqlite3_errmsg(v28);
  if (result)
  {
    v22 = sub_1B7CFEB70();
    v24 = v23;
    v25 = sqlite3_extended_errcode(v28);
    sub_1B7C951E8();
    v26 = swift_allocError();
    *v27 = v25;
    v27[1] = v22;
    v27[2] = v24;
    *v21 = v26;
    *(v21 + 56) = 3;
    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_1B7C94A8C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a2 + 16);
  v9 = sqlite3_db_handle(v8);
  if (!v9)
  {
    sub_1B7C95194();
    swift_allocError();
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 0;
    *(v22 + 56) = 4;
LABEL_20:
    swift_willThrow();
    goto LABEL_21;
  }

  v32 = v9;
  sub_1B7AEA57C(a1);
  if (v4)
  {
LABEL_21:

    return;
  }

  v31 = a3;
  v10 = 0;
  while (1)
  {
    v11 = sqlite3_step(v8);
    if (v11 != 100)
    {
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 = sqlite3_column_count(v8);
    if (v13 < 0)
    {
      goto LABEL_27;
    }

    v14 = v13;
    if (v13)
    {
      v15 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v16 = 0;
      do
      {
        v18 = *(v15 + 2);
        v17 = *(v15 + 3);
        if (v18 >= v17 >> 1)
        {
          v15 = sub_1B7CA2FB4((v17 > 1), v18 + 1, 1, v15);
        }

        v19 = &v15[16 * v18];
        *(v19 + 4) = v8;
        *(v19 + 5) = v16;
        *(v15 + 2) = v18 + 1;
        ++v16;
      }

      while (v14 != v16);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v20 = sub_1B7C3AA1C(v15);
    if (v20)
    {
      v21 = v20;
      MEMORY[0x1B8CADDF0]();
      if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7CFED00();
      }

      sub_1B7CFED40();
    }

    else
    {
    }
  }

  if (v11 == 101)
  {
    sqlite3_reset(v8);

    return;
  }

  sub_1B7C95194();
  swift_allocError();
  v24 = v23;
  a3 = v31;
  if (sqlite3_errmsg(v32))
  {
    v25 = sub_1B7CFEB70();
    v27 = v26;
    v28 = sqlite3_extended_errcode(v32);
    sub_1B7C951E8();
    v29 = swift_allocError();
    *v30 = v28;
    v30[1] = v25;
    v30[2] = v27;
    *v24 = v29;
    *(v24 + 56) = 3;
    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1B7C94D70(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v7 = *(a2 + 16);
  v8 = sqlite3_db_handle(v7);
  if (v8)
  {
    v9 = v8;
    result = sub_1B7AEA57C(a1);
    if (!v4)
    {
      v28 = v9;
      v11 = 0;
      while (1)
      {
        result = sqlite3_step(v7);
        if (result != 100)
        {
          break;
        }

        if (__OFADD__(v11++, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        result = sqlite3_column_count(v7);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v13 = result;
        if (result)
        {
          v14 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v15 = 0;
          do
          {
            v17 = *(v14 + 2);
            v16 = *(v14 + 3);
            if (v17 >= v16 >> 1)
            {
              v14 = sub_1B7CA2FB4((v16 > 1), v17 + 1, 1, v14);
            }

            v18 = &v14[16 * v17];
            *(v18 + 4) = v7;
            *(v18 + 5) = v15;
            *(v14 + 2) = v17 + 1;
            ++v15;
          }

          while (v13 != v15);
        }

        else
        {
          v14 = MEMORY[0x1E69E7CC0];
        }

        sub_1B7C1EC88(v14, a3, a4);
      }

      if (result == 101)
      {
        return sqlite3_reset(v7);
      }

      sub_1B7C95194();
      swift_allocError();
      v21 = v20;
      result = sqlite3_errmsg(v28);
      if (result)
      {
        v22 = sub_1B7CFEB70();
        v24 = v23;
        v25 = sqlite3_extended_errcode(v28);
        sub_1B7C951E8();
        v26 = swift_allocError();
        *v27 = v25;
        v27[1] = v22;
        v27[2] = v24;
        *v21 = v26;
        *(v21 + 56) = 3;
        return swift_willThrow();
      }

LABEL_24:
      __break(1u);
    }
  }

  else
  {
    sub_1B7C95194();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0;
    *(v19 + 56) = 4;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B7C95194()
{
  result = qword_1EBA531B0;
  if (!qword_1EBA531B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA531B0);
  }

  return result;
}

unint64_t sub_1B7C951E8()
{
  result = qword_1EBA531B8;
  if (!qword_1EBA531B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA531B8);
  }

  return result;
}

uint64_t sub_1B7C9523C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t *a7)
{
  v77 = a4;
  v14 = sub_1B7CFE7C0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v82 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1B7CFE6C0();
  v78 = *(v76 - 8);
  v17 = v78[8];
  MEMORY[0x1EEE9AC00](v76);
  v81 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v70 - v20;
  v22 = *(a2 + 16);
  v23 = sqlite3_db_handle(v22);
  if (!v23)
  {
    sub_1B7C95194();
    swift_allocError();
    *v58 = 0u;
    *(v58 + 16) = 0u;
    *(v58 + 32) = 0u;
    *(v58 + 48) = 0;
    *(v58 + 56) = 4;
LABEL_27:
    swift_willThrow();
  }

  v83 = v21;
  v70[0] = v23;
  sub_1B7AEA57C(a1);
  v24 = v7;
  if (v7)
  {
  }

  v74 = a5;
  v75 = a3;
  result = sqlite3_step(v22);
  v26 = 0;
  v70[2] = (v78 + 1);
  v71 = (v78 + 2);
  v70[1] = (v78 + 4);
  v72 = a6;
  v73 = a7;
  if (result == 100)
  {
    while (1)
    {
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      result = sqlite3_column_count(v22);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_35;
      }

      v29 = result;
      v87 = v24;
      v79 = v28;
      if (result)
      {
        v30 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v31 = 0;
        do
        {
          v33 = *(v30 + 2);
          v32 = *(v30 + 3);
          if (v33 >= v32 >> 1)
          {
            v30 = sub_1B7CA2FB4((v32 > 1), v33 + 1, 1, v30);
          }

          v34 = &v30[16 * v33];
          *(v34 + 4) = v22;
          *(v34 + 5) = v31;
          *(v30 + 2) = v33 + 1;
          ++v31;
        }

        while (v29 != v31);
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }

      v35 = sub_1B7CFE880();
      v37 = v36;
      v38 = *(a6 + 24);
      v80 = *(a6 + 16);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v39 = v74;
      swift_bridgeObjectRetain_n();
      v40 = v75;
      swift_retain_n();

      v41 = MEMORY[0x1E69E7CC0];
      v42 = sub_1B7C249D0(MEMORY[0x1E69E7CC0]);
      v85 = &type metadata for SQLEntityResultDecoder.RowDecoder;
      v86 = sub_1B7C95B1C();
      v43 = swift_allocObject();
      v84 = v43;
      v43[2] = v35;
      v43[3] = v37;
      v43[4] = v30;
      v43[5] = v40;
      v44 = v80;
      v43[6] = v39;
      v43[7] = v44;
      v43[8] = v38;
      v43[9] = v41;
      v43[10] = v42;
      sub_1B7C95B70();
      v45 = v76;
      v46 = v87;
      sub_1B7CFEDF0();
      v87 = v46;
      if (v46)
      {

        swift_bridgeObjectRelease_n();

        sub_1B7C95194();
        swift_allocError();
        v68 = v87;
        *v69 = v79;
        *(v69 + 8) = v68;
        *(v69 + 56) = 1;
        swift_willThrow();
      }

      result = sub_1B7CFE6B0();
      if (!*(v30 + 2))
      {
        goto LABEL_36;
      }

      v47 = *(v30 + 5);
      if (v47 < 0xFFFFFFFF80000000)
      {
        goto LABEL_37;
      }

      if (v47 > 0x7FFFFFFF)
      {
        goto LABEL_38;
      }

      v48 = *(v30 + 4);
      v49 = sqlite3_column_type(v48, *(v30 + 5));
      if (v49 == 5)
      {
        v50 = 0;
      }

      else
      {
        v50 = sqlite3_column_int64(v48, v47);
      }

      a6 = v72;
      v51 = v73;
      v24 = v87;
      swift_beginAccess();
      sub_1B7CE0B50(v50, v49 == 5, v82);
      swift_endAccess();
      (*v71)(v81, v83, v45);
      v52 = *v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v51 = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = sub_1B7CA3428(0, v52[2] + 1, 1, v52);
        *v51 = v52;
      }

      v55 = v52[2];
      v54 = v52[3];
      if (v55 >= v54 >> 1)
      {
        *v51 = sub_1B7CA3428(v54 > 1, v55 + 1, 1, v52);
      }

      v56 = v78;
      (v78[1])(v83, v45);
      v57 = *v51;
      v57[2] = v55 + 1;
      (v56[4])(v57 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + v56[9] * v55, v81, v45);

      result = sqlite3_step(v22);
      v26 = v79;
      if (result != 100)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_29:
  if (result == 101)
  {
    sqlite3_reset(v22);
  }

  sub_1B7C95194();
  swift_allocError();
  v60 = v59;
  v61 = v70[0];
  result = sqlite3_errmsg(v70[0]);
  if (result)
  {
    v62 = sub_1B7CFEB70();
    v64 = v63;
    v65 = sqlite3_extended_errcode(v61);
    sub_1B7C951E8();
    v66 = swift_allocError();
    *v67 = v65;
    v67[1] = v62;
    v67[2] = v64;
    *v60 = v66;
    *(v60 + 56) = 3;
    goto LABEL_27;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1B7C958A4(uint64_t a1, uint64_t a2, void *a3, void *a4, size_t *a5)
{
  v8 = *(a2 + 16);
  v9 = sqlite3_db_handle(v8);
  if (!v9)
  {
    sub_1B7C95194();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0;
    *(v19 + 56) = 4;
LABEL_16:
    swift_willThrow();
  }

  v28 = v9;
  sub_1B7AEA57C(a1);
  if (v5)
  {
  }

  v10 = 0;
  while (1)
  {
    result = sqlite3_step(v8);
    if (result != 100)
    {
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    result = sqlite3_column_count(v8);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_23;
    }

    v13 = result;
    if (result)
    {
      v14 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = 0;
      do
      {
        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        if (v17 >= v16 >> 1)
        {
          v14 = sub_1B7CA2FB4((v16 > 1), v17 + 1, 1, v14);
        }

        v18 = &v14[16 * v17];
        *(v18 + 4) = v8;
        *(v18 + 5) = v15;
        *(v14 + 2) = v17 + 1;
        ++v15;
      }

      while (v13 != v15);
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    sub_1B7CAFBE0(v14, a3, a4, a5);
  }

  if (result == 101)
  {
    sqlite3_reset(v8);
  }

  sub_1B7C95194();
  swift_allocError();
  v21 = v20;
  result = sqlite3_errmsg(v28);
  if (result)
  {
    v22 = sub_1B7CFEB70();
    v24 = v23;
    v25 = sqlite3_extended_errcode(v28);
    sub_1B7C951E8();
    v26 = swift_allocError();
    *v27 = v25;
    v27[1] = v22;
    v27[2] = v24;
    *v21 = v26;
    *(v21 + 56) = 3;
    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1B7C95B1C()
{
  result = qword_1EBA531C8;
  if (!qword_1EBA531C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA531C8);
  }

  return result;
}

unint64_t sub_1B7C95B70()
{
  result = qword_1EBA531D0;
  if (!qword_1EBA531D0)
  {
    sub_1B7CFE6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA531D0);
  }

  return result;
}

uint64_t sub_1B7C95BC8(uint64_t a1)
{
  if ((*(a1 + 56) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 56) & 7;
  }
}

__n128 sub_1B7C95BE4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B7C95C00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7C95C3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B7C95C8C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1B7C95CE0()
{
  v1 = (v0 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path);
  if (*(v0 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path + 8);
  }

  else
  {
    v2 = sub_1B7CFDFC0();
    v4 = v1[1];
    *v1 = v2;
    v1[1] = v5;
  }

  return v2;
}

uint64_t sub_1B7C95D64()
{
  v1 = v0;
  v2 = sub_1B7CFE420();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B7C962FC();
  v4 = OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL;
  v5 = sub_1B7CFDFF0();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = *(v1 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path + 8);

  return v1;
}

uint64_t sub_1B7C96054()
{
  sub_1B7C95D64();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StorageInspectorReportFile()
{
  result = qword_1EBA53220;
  if (!qword_1EBA53220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C96100()
{
  result = sub_1B7CFDFF0();
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

id sub_1B7C961A4(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B7CFDF40();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1B7CFDFF0();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_1B7CFDEC0();

    swift_willThrow();
    v9 = sub_1B7CFDFF0();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1B7C962FC()
{
  v30[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B7CFE420();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle;
  v7 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle);
  if (v7)
  {
    v30[0] = 0;
    v8 = v7;
    if ([v8 closeAndReturnError_])
    {
      v9 = v30[0];

      v10 = *(v0 + v6);
      *(v0 + v6) = 0;
    }

    else
    {
      v11 = v30[0];
      v12 = sub_1B7CFDEC0();

      swift_willThrow();
      sub_1B7CFE410();

      v13 = v12;
      v14 = sub_1B7CFE400();
      v15 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v28 = v15;
        v17 = v16;
        v27 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30[0] = v29;
        *v17 = 136315394;
        v18 = sub_1B7C95CE0();
        v20 = sub_1B7AED1B8(v18, v19, v30);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2112;
        v21 = v12;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 14) = v22;
        v23 = v27;
        *v27 = v22;
        _os_log_impl(&dword_1B7AD5000, v14, v28, "Error closing report file %s: %@", v17, 0x16u);
        sub_1B7C20434(v23);
        MEMORY[0x1B8CB0E70](v23, -1, -1);
        v24 = v29;
        sub_1B7AE9168(v29);
        MEMORY[0x1B8CB0E70](v24, -1, -1);
        MEMORY[0x1B8CB0E70](v17, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
      swift_willThrow();
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7C965F8()
{
  v17[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B7CFDFF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFDF80();
  sub_1B7CFDFC0();
  LOBYTE(v17[0]) = 0;
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  v7 = sub_1B7CFEA30();

  v8 = [v6 fileExistsAtPath:v7 isDirectory:v17];

  if (v8 && (v17[0] & 1) != 0)
  {
    goto LABEL_6;
  }

  v9 = [v5 defaultManager];
  v10 = sub_1B7CFDF40();
  v17[0] = 0;
  v11 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v17];

  if (!v11)
  {
    v15 = v17[0];
    sub_1B7CFDEC0();

    swift_willThrow();
LABEL_6:
    result = (*(v1 + 8))(v4, v0);
    goto LABEL_7;
  }

  v12 = *(v1 + 8);
  v13 = v17[0];
  result = v12(v4, v0);
LABEL_7:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7C96838()
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7C965F8();
  if (!v0)
  {
    sub_1B7CFDFC0();
    v8 = 0;
    v1 = objc_opt_self();
    v2 = [v1 defaultManager];
    v3 = sub_1B7CFEA30();

    v4 = [v2 fileExistsAtPath:v3 isDirectory:&v8];

    if ((v4 & 1) == 0)
    {
      v5 = [v1 defaultManager];
      sub_1B7C95CE0();
      v6 = sub_1B7CFEA30();

      [v5 createFileAtPath:v6 contents:0 attributes:0];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7C96998(uint64_t a1)
{
  v45 = a1;
  v3 = sub_1B7CFE420();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7CFEAA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7CFDFF0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C96838();
  if (v2)
  {
    v16 = 0;
    v17 = v49;
    sub_1B7CFE410();

    v29 = v2;
    v30 = sub_1B7CFE400();
    v31 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = 0;
      v35 = v34;
      v48[0] = v34;
      *v32 = 136315394;
      v36 = sub_1B7C95CE0();
      v38 = sub_1B7AED1B8(v36, v37, v48);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2112;
      v39 = v2;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v40;
      *v33 = v40;
      _os_log_impl(&dword_1B7AD5000, v30, v31, "Error appending to report file %s: %@", v32, 0x16u);
      sub_1B7C20434(v33);
      MEMORY[0x1B8CB0E70](v33, -1, -1);
      sub_1B7AE9168(v35);
      v41 = v35;
      v16 = v45;
      MEMORY[0x1B8CB0E70](v41, -1, -1);
      MEMORY[0x1B8CB0E70](v32, -1, -1);

      (*(v46 + 8))(v49, v47);
    }

    else
    {

      (*(v46 + 8))(v17, v47);
    }

    sub_1B7C962FC();
    if (v16)
    {
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    v43 = v7;
    v18 = v45;
    v44 = OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle;
    if (*(v1 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle))
    {
      v19 = v6;
    }

    else
    {
      sub_1B7C203E8();
      (*(v12 + 16))(v15, v1 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v11);
      v26 = sub_1B7C961A4(v15);
      v19 = v6;
      v27 = *(v1 + v44);
      *(v1 + v44) = v26;
    }

    v48[0] = v18;
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7AF7FAC();
    v48[0] = sub_1B7CFEA10();
    v48[1] = v20;

    MEMORY[0x1B8CADCA0](10, 0xE100000000000000);

    sub_1B7CFEA90();
    v21 = sub_1B7CFEA70();
    v23 = v22;
    (*(v43 + 8))(v10, v19);
    if (v23 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {

      v24 = *(v1 + v44);
      if (v24)
      {
        v25 = v24;
        sub_1B7CFEEA0();
        v28 = sub_1B7CFE010();
        [v25 writeData_];
      }

      sub_1B7C962FC();
      sub_1B7C2049C(v21, v23);
    }
  }
}

uint64_t sub_1B7C96F08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v53 = a4;
  v57 = a3;
  v7 = sub_1B7CFE420();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7CFEAA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B7CFDFF0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C96838();
  if (v4)
  {
    v20 = 0;
    v21 = v59;
    sub_1B7CFE410();

    v36 = v4;
    v37 = sub_1B7CFE400();
    v38 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v57 = 0;
      v40 = v39;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = a2;
      v43 = v42;
      v58[0] = v42;
      *v40 = 136315394;
      v44 = sub_1B7C95CE0();
      v46 = sub_1B7AED1B8(v44, v45, v58);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2112;
      v47 = v4;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v48;
      *v41 = v48;
      _os_log_impl(&dword_1B7AD5000, v37, v38, "Error appending to report file %s: %@", v40, 0x16u);
      sub_1B7C20434(v41);
      MEMORY[0x1B8CB0E70](v41, -1, -1);
      sub_1B7AE9168(v43);
      MEMORY[0x1B8CB0E70](v43, -1, -1);
      v49 = v40;
      v20 = v57;
      MEMORY[0x1B8CB0E70](v49, -1, -1);

      (*(v54 + 8))(v59, v55);
    }

    else
    {

      (*(v54 + 8))(v21, v55);
    }

    sub_1B7C962FC();
    if (v20)
    {
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    v50 = v11;
    v51 = v10;
    v52 = OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle;
    v22 = a1;
    if (!*(a1 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle))
    {
      sub_1B7C203E8();
      (*(v16 + 16))(v19, a1 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v15);
      v34 = sub_1B7C961A4(v19);
      v35 = *(a1 + v52);
      *(a1 + v52) = v34;
    }

    v23 = v53;
    v24 = sub_1B7CDF584(a2, v57, v53);
    v56 = a2;
    v25 = (v50 + 8);
    while (1)
    {
      if (!v24)
      {
        goto LABEL_14;
      }

      if (!*(v24 + 16))
      {

LABEL_14:
        sub_1B7C962FC();
      }

      v58[0] = v24;
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7AF7FAC();
      v58[0] = sub_1B7CFEA10();
      v58[1] = v26;

      MEMORY[0x1B8CADCA0](10, 0xE100000000000000);

      sub_1B7CFEA90();
      v27 = sub_1B7CFEA70();
      v29 = v28;
      result = (*v25)(v14, v51);
      if (v29 >> 60 == 15)
      {
        break;
      }

      v31 = *(v22 + v52);
      if (v31)
      {
        v32 = v31;
        sub_1B7CFEEA0();
        v33 = sub_1B7CFE010();
        [v32 writeData_];
        sub_1B7C2049C(v27, v29);

        v23 = v53;
      }

      else
      {
        sub_1B7C2049C(v27, v29);
      }

      v24 = sub_1B7CDF584(v56, v57, v23);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C9752C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static IMDPersistenceService.withThrowUponDisconnect<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7C97560, 0, 0);
}

uint64_t sub_1B7C97560()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B7C9765C;
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD00000000000001BLL, 0x80000001B7D53A40, sub_1B7C986DC, v2, v6);
}

uint64_t sub_1B7C9765C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7C97798, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B7C97798()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1B7C977FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1B7C996F4(a3, v27 - v11);
  v13 = sub_1B7CFEDD0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B7C99764(v12);
  }

  else
  {
    sub_1B7CFEDC0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B7CFED80();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B7CFEAD0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_1B7C107FC(&qword_1EBA53230, &qword_1B7D10C88);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1B7C99764(a3);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B7C99764(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_1B7C107FC(&qword_1EBA53230, &qword_1B7D10C88);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1B7C97AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1B7C996F4(a3, v27 - v11);
  v13 = sub_1B7CFEDD0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B7C99764(v12);
  }

  else
  {
    sub_1B7CFEDC0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B7CFED80();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B7CFEAD0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1B7C99764(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B7C99764(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1B7C97D90()
{
  v1 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_1B7CFEDD0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_1B7C97AD0(0, 0, v4, &unk_1B7D10C48, v6);
}

uint64_t sub_1B7C97EB8()
{
  v3 = *(**(v0 + 16) + 80);
  sub_1B7C980E0(sub_1B7C99638);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7C97F48()
{
  v0 = sub_1B7CFDC70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFDC60();

  sub_1B7C97D90();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1B7C98034()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EDBE39F0 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:qword_1EDBE39F8 object:0];

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;

  return sub_1B7AE15D4(v2);
}

void sub_1B7C980E0(void (*a1)(uint64_t))
{
  v3 = *(*v1 + 80);
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v4 = sub_1B7CFF810();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = v1[14];
  if (v9)
  {
    v10 = v1[15];

    a1(v11);
    v9(v8);
    (*(v5 + 8))(v8, v4);
    sub_1B7C98034();
    sub_1B7AE15D4(v9);
  }
}

uint64_t sub_1B7C98288@<X0>(void *a1@<X8>)
{
  *a1 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A798] code:4097 userInfo:0];
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  sub_1B7CFF810();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B7C98380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v4 = sub_1B7CFF810();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1B7C9841C()
{
  v1 = *(v0 + 120);
  sub_1B7AE15D4(*(v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B7C98464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v7 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v11 = sub_1B7CFEDB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  _s31DisconnectHandlingResultHandlerCMa();
  (*(v12 + 16))(v15, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  (*(v12 + 32))(v17 + v16, v15, v11);
  v18 = sub_1B7C9A778(sub_1B7C9AA18, v17);

  v19 = sub_1B7CFEDD0();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v23;
  v20[5] = a3;
  v20[6] = v18;

  sub_1B7C97AD0(0, 0, v10, &unk_1B7D10CA0, v20);
}

uint64_t sub_1B7C986E8(uint64_t a1)
{
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v2 = sub_1B7CFEDB0();
  return sub_1B7C98750(a1, v2);
}

uint64_t sub_1B7C98750(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_1B7CFF810();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - v20;
  (*(v22 + 16))(&v24 - v20, a1, v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v14, v21, v9);
    return sub_1B7CFED90();
  }

  else
  {
    (*(v4 + 32))(v7, v21, v3);
    return sub_1B7CFEDA0();
  }
}

uint64_t sub_1B7C9898C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a6;
  v8 = *(*a6 + 80);
  v6[11] = v8;
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v9 = sub_1B7CFF810();
  v6[12] = v9;
  v10 = *(v9 - 8);
  v6[13] = v10;
  v11 = *(v10 + 64) + 15;
  v6[14] = swift_task_alloc();
  v12 = *(v8 - 8);
  v6[15] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v6[16] = v14;
  v18 = (a4 + *a4);
  v15 = a4[1];
  v16 = swift_task_alloc();
  v6[17] = v16;
  *v16 = v6;
  v16[1] = sub_1B7C98B78;

  return v18(v14);
}

uint64_t sub_1B7C98B78()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1B7C98E6C;
  }

  else
  {
    v3 = sub_1B7C98C8C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7C98C8C()
{
  v1 = v0[12];
  v2 = v0[10];
  (*(v0[15] + 16))(v0[14], v0[16], v0[11]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B7C98D28, v2, 0);
}

uint64_t sub_1B7C98D28()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  *(v0 + 64) = *(**(v0 + 80) + 80);
  *(v0 + 72) = v1;
  sub_1B7C980E0(sub_1B7C99630);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B7C98DE8, 0, 0);
}

uint64_t sub_1B7C98DE8()
{
  (*(v0[15] + 8))(v0[16], v0[11]);
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B7C98E6C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  **(v0 + 112) = v1;
  swift_storeEnumTagMultiPayload();
  v4 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7C98EF0, v3, 0);
}

uint64_t sub_1B7C98EF0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  *(v0 + 32) = *(**(v0 + 80) + 80);
  *(v0 + 40) = v1;
  sub_1B7C980E0(sub_1B7C99630);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B7C98FB0, 0, 0);
}

uint64_t sub_1B7C98FB0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t static IMDPersistenceService.withThrowingQueryProviderUponDisconnect<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7C9904C, 0, 0);
}

uint64_t sub_1B7C9904C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1B7C9914C;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD00000000000002DLL, 0x80000001B7D575A0, sub_1B7C995B8, v2, v6);
}

uint64_t sub_1B7C9914C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7C99288, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B7C99288()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1B7C992EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v28 = a5;
  v25 = *a3;
  v26 = a2;
  v9 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v13 = sub_1B7CFEDB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  _s31DisconnectHandlingResultHandlerCMa();
  (*(v14 + 16))(v17, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = *(*(v25 + *MEMORY[0x1E69E77B0] + 8) + 16);
  *(v19 + 24) = a6;
  (*(v14 + 32))(v19 + v18, v17, v13);
  v20 = sub_1B7C9A778(sub_1B7C9A4C8, v19);

  v21 = sub_1B7CFEDD0();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v23 = v27;
  v22[4] = v26;
  v22[5] = a3;
  v22[6] = v20;
  v22[7] = v23;
  v22[8] = v28;

  sub_1B7C97AD0(0, 0, v12, &unk_1B7D10C70, v22);
}

uint64_t sub_1B7C99640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7C9AB84;

  return sub_1B7C97E98(a1, v4, v5, v6);
}

uint64_t sub_1B7C996F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7C99764(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C997CC(uint64_t a1)
{
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v2 = sub_1B7CFEDB0();
  return sub_1B7C98750(a1, v2);
}

uint64_t sub_1B7C99834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = *a5;
  v10 = *(*a6 + 80);
  v8[19] = v10;
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v11 = sub_1B7CFF810();
  v8[20] = v11;
  v12 = *(v11 - 8);
  v8[21] = v12;
  v13 = *(v12 + 64) + 15;
  v8[22] = swift_task_alloc();
  v14 = *(v10 - 8);
  v8[23] = v14;
  v15 = *(v14 + 64) + 15;
  v8[24] = swift_task_alloc();
  v16 = *(v9 + *MEMORY[0x1E69E77B0] + 8);
  v8[25] = v16;
  v17 = *(v16 - 8);
  v8[26] = v17;
  v18 = *(v17 + 64) + 15;
  v8[27] = swift_task_alloc();
  v19 = *(v16 + 16);
  v8[28] = v19;
  v20 = *(v19 - 8);
  v8[29] = v20;
  v21 = *(v20 + 64) + 15;
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7C99A74, 0, 0);
}

uint64_t sub_1B7C99A74()
{
  v0[13] = v0[14];
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[15];
  swift_getAtKeyPath();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[16];
    (*(v0[26] + 8))(v0[27], v0[25]);

    return MEMORY[0x1EEE6DFA0](sub_1B7C99C28, v5, 0);
  }

  else
  {
    v6 = v0[17];
    (*(v0[29] + 32))(v0[30], v0[27], v0[28]);
    v13 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[31] = v8;
    *v8 = v0;
    v8[1] = sub_1B7C99CEC;
    v9 = v0[30];
    v10 = v0[24];
    v11 = v0[18];

    return v13(v10, v9);
  }
}

uint64_t sub_1B7C99C28()
{
  *(v0 + 96) = *(**(v0 + 128) + 80);
  sub_1B7C980E0(sub_1B7C99638);
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B7C99CEC()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_1B7C9A020;
  }

  else
  {
    v3 = sub_1B7C99E00;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7C99E00()
{
  v1 = v0[20];
  v2 = v0[16];
  (*(v0[23] + 16))(v0[22], v0[24], v0[19]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B7C99E9C, v2, 0);
}

uint64_t sub_1B7C99E9C()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  *(v0 + 64) = *(**(v0 + 128) + 80);
  *(v0 + 72) = v1;
  sub_1B7C980E0(sub_1B7C99630);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B7C99F5C, 0, 0);
}

uint64_t sub_1B7C99F5C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v0[23] + 8))(v0[24], v0[19]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[22];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B7C9A020()
{
  v1 = v0[32];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[16];
  (*(v0[29] + 8))(v0[30], v0[28]);
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7C9A0CC, v4, 0);
}

uint64_t sub_1B7C9A0CC()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  *(v0 + 32) = *(**(v0 + 128) + 80);
  *(v0 + 40) = v1;
  sub_1B7C980E0(sub_1B7C99630);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B7C9A18C, 0, 0);
}

uint64_t sub_1B7C9A18C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B7C9A220(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7C9A318;

  return v7(a1);
}

uint64_t sub_1B7C9A318()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B7C9A410(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7C9AB84;

  return sub_1B7C9A220(a1, v5);
}

uint64_t sub_1B7C9A4C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v5 = *(*(sub_1B7CFEDB0() - 8) + 80);

  return sub_1B7C997CC(a1);
}

uint64_t sub_1B7C9A570(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1B7C9A664;

  return v6(v2 + 32);
}

uint64_t sub_1B7C9A664()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1B7C9A778(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  _s31DisconnectHandlingResultHandlerCMa();
  swift_allocObject();
  return sub_1B7C416F0(a1, a2);
}

uint64_t sub_1B7C9A7CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7C9AB84;

  return sub_1B7C99834(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B7C9A8A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7C9AB84;

  return sub_1B7C9A570(a1, v5);
}

uint64_t sub_1B7C9A960(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7C40EE4;

  return sub_1B7C9A570(a1, v5);
}

uint64_t sub_1B7C9AA18(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v4 = *(*(sub_1B7CFEDB0() - 8) + 80);

  return sub_1B7C986E8(a1);
}

uint64_t sub_1B7C9AABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7C40EE4;

  return sub_1B7C9898C(a1, v4, v5, v6, v7, v8);
}

void *sub_1B7C9ABE8()
{
  v1 = v0[3];

  v2 = v0[5];
  sub_1B7AE15D4(v0[4]);
  v3 = v0[6];

  return v0;
}

uint64_t sub_1B7C9AC18()
{
  sub_1B7C9ABE8();

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C9AC64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7C9ACA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7C9ACFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B7C9AD4C()
{
  v0 = sub_1B7CCB02C(&unk_1F2FA1A40);
  v2 = v1;
  v4 = v3;
  sub_1B7C107FC(&qword_1EBA53238, &unk_1B7D10D70);
  result = swift_arrayDestroy();
  qword_1EBA5DA80 = v0;
  qword_1EBA5DA88 = v2;
  qword_1EBA5DA90 = v4;
  return result;
}

void sub_1B7C9ADC0()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isInternalInstall];

    if (v3)
    {
      sub_1B7AE3B2C(0xD000000000000020, 0x80000001B7D57B30, 0);
      if (!v0)
      {
        sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B7C9AF18()
{

  sub_1B7AE3B2C(0xD000000000000080, 0x80000001B7D57AA0, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }
}

const char *sub_1B7C9B04C()
{
  result = sub_1B7AE3B2C(0xD00000000000002CLL, 0x80000001B7D578E0, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

    sub_1B7AE3B2C(0xD000000000000034, 0x80000001B7D57910, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1B7C9B1B0()
{

  sub_1B7AE3B2C(0xD00000000000008BLL, 0x80000001B7D57850, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }
}

void *sub_1B7C9B2E4()
{
  if (qword_1EDBE3F50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for ChatLookupRecord();
  sub_1B7AE1118(&qword_1EDBE3F90, type metadata accessor for ChatLookupRecord);
  result = sub_1B7CC1208(v1);
  if (result)
  {
    sub_1B7C2EBBC(result, 0x797469726F697270, 0xE800000000000000);
    if (v0)
    {
    }

    v3 = [objc_opt_self() sharedFeatureFlags];
    v4 = [v3 isMissingMessagesEnabled];

    if ((v4 & 1) == 0)
    {
    }

    else
    {

      sub_1B7AE3B2C(0xD000000000000132, 0x80000001B7D57710, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

const char *sub_1B7C9B550()
{
  result = sub_1B7AE3B2C(0xD00000000000001CLL, 0x80000001B7D57950, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

    sub_1B7C2E8B4(0xD000000000000010, 0x80000001B7D57970, 0x6F72675F67616C66, 0xEA00000000007075, 0xD00000000000001BLL, 0x80000001B7D57990);
    sub_1B7C2E8B4(0xD000000000000010, 0x80000001B7D57970, 0x6972705F67616C66, 0xED0000797469726FLL, 0xD00000000000001ALL, 0x80000001B7D579B0);
    sub_1B7C2E8B4(0xD000000000000010, 0x80000001B7D57970, 0x705F6E6F73616572, 0xEF797469726F6972, 0xD00000000000001ALL, 0x80000001B7D579B0);
    sub_1B7AE3B2C(0xD00000000000002ALL, 0x80000001B7D579D0, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

    sub_1B7AE3B2C(0xD000000000000031, 0x80000001B7D57A00, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

    sub_1B7AE3B2C(0xD00000000000002CLL, 0x80000001B7D57A40, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

    sub_1B7AE3B2C(0xD00000000000002ALL, 0x80000001B7D57A70, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

void sub_1B7C9BA3C()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isMissingMessagesEnabled];

  if (v1)
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B7CFE420();
    sub_1B7AD9040(v2, qword_1EBA5DA20);
    v3 = sub_1B7CFE400();
    v4 = sub_1B7CFEF00();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, v4, "Performing regular chat lookup migration", v5, 2u);
      MEMORY[0x1B8CB0E70](v5, -1, -1);
    }

    sub_1B7CBD01C();
  }
}

void sub_1B7C9BB84()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 _isOneChatOptedOut];

  if ((v2 & 1) == 0)
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v3 = sub_1B7CFE420();
    sub_1B7AD9040(v3, qword_1EBA5DA20);
    v4 = sub_1B7CFE400();
    v5 = sub_1B7CFEF00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, v4, v5, "Performing regular chat merge migration", v6, 2u);
      MEMORY[0x1B8CB0E70](v6, -1, -1);
    }

    sub_1B7AE3B2C(0xD000000000000012, 0x80000001B7D57610, 0);
    if (!v0)
    {
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7CA4B58(0);
      sub_1B7AE3B2C(0xD000000000000011, 0x80000001B7D57650, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
    }
  }
}

void sub_1B7C9BF3C()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isInternalInstall];

    if (v3)
    {
      v4 = [objc_opt_self() sharedFeatureFlags];
      v5 = [v4 _isOneChatOptedOut];

      if ((v5 & 1) == 0)
      {
        v27 = &v26;
        v6 = *MEMORY[0x1E69A7AC8];
        *&v23 = sub_1B7CFEA60();
        *(&v23 + 1) = v7;

        MEMORY[0x1B8CADCA0](59, 0xE100000000000000);

        v8 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v10 = v8[2];
        v9 = v8[3];
        if (v10 >= v9 >> 1)
        {
          v8 = sub_1B7AE3A9C((v9 > 1), v10 + 1, 1, v8);
        }

        v24 = MEMORY[0x1E69E6158];
        v25 = &off_1F2FA8B58;
        v8[2] = v10 + 1;
        v11 = v8;
        sub_1B7AE910C(&v23, &v8[5 * v10 + 4]);

        sub_1B7AF45D8(0xD00000000000005BLL, 0x80000001B7D57670, v11, 0, &v27);

        if (!v0)
        {
          v12 = v26;
          if (v26 < 1)
          {
            if (qword_1EBA50EB8 != -1)
            {
              swift_once();
            }

            v19 = sub_1B7CFE420();
            sub_1B7AD9040(v19, qword_1EBA5DA20);
            v20 = sub_1B7CFE400();
            v21 = sub_1B7CFEF00();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              *v22 = 0;
              _os_log_impl(&dword_1B7AD5000, v20, v21, "No legacy chat GUIDs found, not re-running chat table migration.", v22, 2u);
              MEMORY[0x1B8CB0E70](v22, -1, -1);
            }
          }

          else
          {
            if (qword_1EBA50EB8 != -1)
            {
              swift_once();
            }

            v13 = sub_1B7CFE420();
            sub_1B7AD9040(v13, qword_1EBA5DA20);
            v14 = sub_1B7CFE400();
            v15 = sub_1B7CFEEF0();
            if (os_log_type_enabled(v14, v15))
            {
              v16 = swift_slowAlloc();
              *v16 = 134217984;
              *(v16 + 4) = v12;
              _os_log_impl(&dword_1B7AD5000, v14, v15, "Has %ld legacy chats! Re-running chat table migration.", v16, 0xCu);
              MEMORY[0x1B8CB0E70](v16, -1, -1);
            }

            v17 = sub_1B7CFEA30();
            v18 = sub_1B7CFEA30();
            IMSetDomainIntForKey();

            sub_1B7C9BB84();
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B7C9C2F8()
{
  sub_1B7C107FC(&qword_1EBA53248, &qword_1B7D10D98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D10D80;
  sub_1B7CFF180();
  *(inited + 72) = 2;
  sub_1B7CFF180();
  *(inited + 120) = 1;
  sub_1B7CFF180();
  *(inited + 168) = 3;
  sub_1B7CFF180();
  *(inited + 216) = 2;
  sub_1B7CFF180();
  *(inited + 264) = 2;
  sub_1B7CFF180();
  *(inited + 312) = 1;
  sub_1B7CFF180();
  *(inited + 360) = 3;
  sub_1B7CFF180();
  *(inited + 408) = 3;
  sub_1B7CFF180();
  *(inited + 456) = 3;
  sub_1B7CFF180();
  *(inited + 504) = 3;
  sub_1B7CFF180();
  *(inited + 552) = 1;
  v1 = sub_1B7C24490(inited);
  swift_setDeallocating();
  sub_1B7C107FC(&qword_1EBA52230, &unk_1B7D10DA0);
  result = swift_arrayDestroy();
  qword_1EBA53240 = v1;
  return result;
}

uint64_t sub_1B7C9C5CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_16:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v16 << 6);
    sub_1B7C41078(*(a1 + 48) + 40 * v20, v25);
    sub_1B7AED284(*(a1 + 56) + 32 * v20, v24);
    v27 = v25[0];
    v28 = v25[1];
    *&v29 = v26;
    sub_1B7C255E0(v24, (&v29 + 8));
LABEL_17:
    v34[0] = v29;
    v34[1] = v30;
    v35 = v31;
    v32 = v27;
    v33 = v28;
    if (!*(&v28 + 1))
    {
    }

    v27 = v32;
    v28 = v33;
    *&v29 = *&v34[0];
    sub_1B7C255E0((v34 + 8), v25);
    if (!*(a3 + 16) || (v21 = sub_1B7C40388(&v27), (v22 & 1) == 0))
    {
LABEL_4:
      sub_1B7C9C808(&v27, v25, a2, a3, a4, a5);
      goto LABEL_5;
    }

    if (*(*(a3 + 56) + v21) > 1u)
    {
      if (*(*(a3 + 56) + v21) == 2)
      {
        sub_1B7C9D230(&v27, v25, a2, a3, a4, a5);
      }

      else
      {
        sub_1B7C9D7F8(&v27, v25, a2, a3, a4, a5);
      }
    }

    else
    {
      if (!*(*(a3 + 56) + v21))
      {
        goto LABEL_4;
      }

      sub_1B7C9CB98(&v27, v25, a2, a3, a4, a5);
    }

LABEL_5:
    sub_1B7AE9168(v25);
    result = sub_1B7C410D4(&v27);
  }

  if (v13 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  else
  {
    v17 = v13;
  }

  v18 = v17 - 1;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      v12 = 0;
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v15 = v18;
      v27 = 0u;
      v28 = 0u;
      goto LABEL_17;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1B7C9C808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = *a3;
  if (*(*a3 + 16) && (v11 = sub_1B7C40388(a1), (v12 & 1) != 0))
  {
    sub_1B7AED284(*(v10 + 56) + 32 * v11, v29);
    sub_1B7AEE190(v29, &qword_1EBA51FA8, qword_1B7D0B230);
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v13 = sub_1B7CFE420();
    sub_1B7AD9040(v13, qword_1EBA5DA20);
    sub_1B7C41078(a1, v29);

    v14 = sub_1B7CFE400();
    v15 = sub_1B7CFEEE0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1B7AED1B8(a5, a6, v28);
      *(v16 + 12) = 2080;
      v18 = sub_1B7CFF150();
      v20 = v19;
      sub_1B7C410D4(v29);
      v21 = sub_1B7AED1B8(v18, v20, v28);

      *(v16 + 14) = v21;
      v22 = "%s%s skipped from sibling";
LABEL_11:
      _os_log_impl(&dword_1B7AD5000, v14, v15, v22, v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v17, -1, -1);
      MEMORY[0x1B8CB0E70](v16, -1, -1);

      return;
    }
  }

  else
  {
    memset(v29, 0, 32);
    sub_1B7AEE190(v29, &qword_1EBA51FA8, qword_1B7D0B230);
    sub_1B7C41078(a1, v29);
    sub_1B7AED284(a2, v28);
    sub_1B7CE0A94(v28, v29);
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v23 = sub_1B7CFE420();
    sub_1B7AD9040(v23, qword_1EBA5DA20);
    sub_1B7C41078(a1, v29);

    v14 = sub_1B7CFE400();
    v15 = sub_1B7CFEEE0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1B7AED1B8(a5, a6, v28);
      *(v16 + 12) = 2080;
      v24 = sub_1B7CFF150();
      v26 = v25;
      sub_1B7C410D4(v29);
      v27 = sub_1B7AED1B8(v24, v26, v28);

      *(v16 + 14) = v27;
      v22 = "%s%s taken from sibling";
      goto LABEL_11;
    }
  }

  sub_1B7C410D4(v29);
}

void sub_1B7C9CB98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = *a3;
  if (*(*a3 + 16) && (v11 = sub_1B7C40388(a1), (v12 & 1) != 0))
  {
    sub_1B7AED284(*(v10 + 56) + 32 * v11, &v51);
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v50[0] = v51;
  v50[1] = v52;
  if (*(&v52 + 1))
  {
    sub_1B7C255E0(v50, &v48);
  }

  else
  {
    v13 = sub_1B7C24230(MEMORY[0x1E69E7CC0]);
    v49 = sub_1B7C107FC(&unk_1EBA52580, &qword_1B7D10D90);
    *&v48 = v13;
    sub_1B7AEE190(v50, &qword_1EBA51FA8, qword_1B7D0B230);
  }

  v14 = sub_1B7C107FC(&unk_1EBA52580, &qword_1B7D10D90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v26 = sub_1B7CFE420();
    sub_1B7AD9040(v26, qword_1EBA5DA20);
    sub_1B7C41078(a1, &v48);

    v27 = sub_1B7CFE400();
    v28 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v51 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_1B7AED1B8(a5, a6, &v51);
      *(v29 + 12) = 2080;
      v31 = sub_1B7CFF150();
      v33 = v32;
      sub_1B7C410D4(&v48);
      v34 = sub_1B7AED1B8(v31, v33, &v51);

      *(v29 + 14) = v34;
      v35 = "%s%s has recursive rule but is not a dictionary";
LABEL_18:
      _os_log_impl(&dword_1B7AD5000, v27, v28, v35, v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v30, -1, -1);
      MEMORY[0x1B8CB0E70](v29, -1, -1);

      return;
    }

LABEL_25:

    sub_1B7C410D4(&v48);
    return;
  }

  v53 = v51;
  sub_1B7AED284(a2, &v48);
  if (!swift_dynamicCast())
  {

    if (!*(v10 + 16))
    {
      return;
    }

    sub_1B7C40388(a1);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      return;
    }

    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v38 = sub_1B7CFE420();
    sub_1B7AD9040(v38, qword_1EBA5DA20);
    sub_1B7C41078(a1, &v48);

    v27 = sub_1B7CFE400();
    v28 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v51 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_1B7AED1B8(a5, a6, &v51);
      *(v29 + 12) = 2080;
      v39 = sub_1B7CFF150();
      v41 = v40;
      sub_1B7C410D4(&v48);
      v42 = sub_1B7AED1B8(v39, v41, &v51);

      *(v29 + 14) = v42;
      v35 = "%s%s has recursive rule but is not a dictionary for sibling";
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v15 = a5;
  v47 = v51;
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v16 = sub_1B7CFE420();
  sub_1B7AD9040(v16, qword_1EBA5DA20);
  sub_1B7C41078(a1, &v48);

  v17 = sub_1B7CFE400();
  v18 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v51 = v20;
    *v19 = 136315394;
    v46 = v15;
    *(v19 + 4) = sub_1B7AED1B8(v15, a6, &v51);
    *(v19 + 12) = 2080;
    v21 = sub_1B7CFF150();
    v23 = v22;
    sub_1B7C410D4(&v48);
    v24 = sub_1B7AED1B8(v21, v23, &v51);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_1B7AD5000, v17, v18, "%s%s being recursively merged", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB0E70](v20, -1, -1);
    MEMORY[0x1B8CB0E70](v19, -1, -1);

    v25 = v46;
  }

  else
  {

    sub_1B7C410D4(&v48);
    v25 = v15;
  }

  v43 = sub_1B7C24490(MEMORY[0x1E69E7CC0]);
  *&v48 = sub_1B7CFF150();
  *(&v48 + 1) = v44;
  MEMORY[0x1B8CADCA0](46, 0xE100000000000000);
  v45 = v48;
  *&v48 = v25;
  *(&v48 + 1) = a6;

  MEMORY[0x1B8CADCA0](v45, *(&v45 + 1));

  sub_1B7C9C5CC(v47, &v53, v43, v48, *(&v48 + 1));

  sub_1B7C41078(a1, &v48);
  *(&v52 + 1) = v14;
  *&v51 = v53;
  sub_1B7CE0A94(&v51, &v48);
}

void sub_1B7C9D230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = *a3;
  if (!*(*a3 + 16) || (v11 = sub_1B7C40388(a1), (v12 & 1) == 0) || (sub_1B7AED284(*(v9 + 56) + 32 * v11, v45), (swift_dynamicCast() & 1) == 0))
  {
    if (!*(v9 + 16))
    {
      return;
    }

    sub_1B7C40388(a1);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      return;
    }

    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v27 = sub_1B7CFE420();
    sub_1B7AD9040(v27, qword_1EBA5DA20);
    sub_1B7C41078(a1, v45);

    v28 = sub_1B7CFE400();
    v29 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_1B7AED1B8(a5, a6, v44);
      *(v30 + 12) = 2080;
      v32 = sub_1B7CFF150();
      v34 = v33;
      sub_1B7C410D4(v45);
      v35 = sub_1B7AED1B8(v32, v34, v44);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_1B7AD5000, v28, v29, "%s%s has add rule but is not an int for sibling", v30, 0x16u);
LABEL_19:
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v31, -1, -1);
      MEMORY[0x1B8CB0E70](v30, -1, -1);

      return;
    }

LABEL_20:

    sub_1B7C410D4(v45);
    return;
  }

  sub_1B7AED284(a2, v45);
  if (!swift_dynamicCast())
  {
    if (qword_1EBA50EB8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v13 = v44[0];
  if (__OFADD__(v44[0], v44[0]))
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_17:
    v36 = sub_1B7CFE420();
    sub_1B7AD9040(v36, qword_1EBA5DA20);
    sub_1B7C41078(a1, v45);

    v28 = sub_1B7CFE400();
    v37 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v28, v37))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_1B7AED1B8(a5, a6, v44);
      *(v30 + 12) = 2080;
      v38 = sub_1B7CFF150();
      v40 = v39;
      sub_1B7C410D4(v45);
      v41 = sub_1B7AED1B8(v38, v40, v44);

      *(v30 + 14) = v41;
      _os_log_impl(&dword_1B7AD5000, v28, v37, "%s%s has add rule but is not an int", v30, 0x16u);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v42 = v44[0];
  v43 = 2 * v44[0];
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v14 = sub_1B7CFE420();
  sub_1B7AD9040(v14, qword_1EBA5DA20);
  sub_1B7C41078(a1, v45);

  v15 = sub_1B7CFE400();
  v16 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v44[0] = v18;
    *v17 = 136316162;
    *(v17 + 4) = sub_1B7AED1B8(a5, a6, v44);
    *(v17 + 12) = 2080;
    v19 = sub_1B7CFF150();
    v21 = v20;
    sub_1B7C410D4(v45);
    v22 = sub_1B7AED1B8(v19, v21, v44);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2048;
    v23 = v43;
    *(v17 + 24) = v43;
    *(v17 + 32) = 2048;
    *(v17 + 34) = v42;
    *(v17 + 42) = 2048;
    *(v17 + 44) = v13;
    _os_log_impl(&dword_1B7AD5000, v15, v16, "%s%s set to %ld (%ld + %ld)", v17, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB0E70](v18, -1, -1);
    MEMORY[0x1B8CB0E70](v17, -1, -1);

    v24 = MEMORY[0x1E69E6530];
  }

  else
  {

    sub_1B7C410D4(v45);
    v24 = MEMORY[0x1E69E6530];
    v23 = 2 * v44[0];
  }

  sub_1B7C41078(a1, v45);
  v44[3] = v24;
  v44[0] = v23;
  sub_1B7CE0A94(v44, v45);
}

uint64_t sub_1B7C9D7F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v69 = a4;
  v70 = a6;
  v68 = a5;
  v71 = a2;
  v8 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v67 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v67 - v16;
  v18 = sub_1B7CFE120();
  v73 = *(v18 - 8);
  v19 = *(v73 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v67 - v23;
  v25 = *a3;
  v26 = *(*a3 + 16);
  v72 = a1;
  if (!v26 || (v27 = sub_1B7C40388(a1), (v28 & 1) == 0))
  {
    v32 = v73;
    v31 = *(v73 + 56);
    v31(v17, 1, 1, v18);
LABEL_6:
    sub_1B7AEE190(v17, &unk_1EBA51980, &unk_1B7D0A1B0);
    v33 = v72;
    if (*(v25 + 16))
    {

      sub_1B7C40388(v33);
      v35 = v34;

      if (v35)
      {
        if (qword_1EBA50EB8 != -1)
        {
          swift_once();
        }

        v36 = sub_1B7CFE420();
        sub_1B7AD9040(v36, qword_1EBA5DA20);
        sub_1B7C41078(v33, v77);

        v37 = v70;

        v38 = sub_1B7CFE400();
        v39 = sub_1B7CFEEF0();

        LODWORD(v73) = v39;
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v75 = v41;
          *v40 = 136315394;
          *(v40 + 4) = sub_1B7AED1B8(v68, v37, &v75);
          *(v40 + 12) = 2080;
          v42 = v38;
          v43 = sub_1B7CFF150();
          v45 = v44;
          sub_1B7C410D4(v77);
          v46 = sub_1B7AED1B8(v43, v45, &v75);

          *(v40 + 14) = v46;
          _os_log_impl(&dword_1B7AD5000, v42, v73, "%s%s has most recent date rule but is not a date", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B8CB0E70](v41, -1, -1);
          v47 = v40;
          v33 = v72;
          MEMORY[0x1B8CB0E70](v47, -1, -1);
        }

        else
        {

          sub_1B7C410D4(v77);
        }
      }
    }

    sub_1B7C41078(v33, v77);
    sub_1B7AED284(v71, v74);
    if (swift_dynamicCast())
    {
      v31(v12, 0, 1, v18);
      *(&v76 + 1) = v18;
      v52 = sub_1B7C1A14C(&v75);
      (*(v32 + 32))(v52, v12, v18);
    }

    else
    {
      v31(v12, 1, 1, v18);
      sub_1B7AEE190(v12, &unk_1EBA51980, &unk_1B7D0A1B0);
      v75 = 0u;
      v76 = 0u;
    }

    return sub_1B7CE0A94(&v75, v77);
  }

  v67[1] = a3;
  sub_1B7AED284(*(v25 + 56) + 32 * v27, v77);
  v29 = swift_dynamicCast();
  v30 = v73;
  v31 = *(v73 + 56);
  v31(v17, v29 ^ 1u, 1, v18);
  if ((*(v30 + 48))(v17, 1, v18) == 1)
  {
    v32 = v30;
    goto LABEL_6;
  }

  v48 = *(v30 + 32);
  v49 = v24;
  v48(v24, v17, v18);
  sub_1B7AED284(v71, v77);
  if (swift_dynamicCast())
  {
    v31(v15, 0, 1, v18);
    v48(v22, v15, v18);
    if (sub_1B7CFE0B0())
    {
      sub_1B7C41078(v72, v77);
      *(&v76 + 1) = v18;
      v50 = sub_1B7C1A14C(&v75);
      v51 = v73;
      (*(v73 + 16))(v50, v22, v18);
      sub_1B7CE0A94(&v75, v77);
    }

    else
    {
      v51 = v73;
    }

    v66 = *(v51 + 8);
    v66(v22, v18);
    return (v66)(v49, v18);
  }

  else
  {
    v31(v15, 1, 1, v18);
    sub_1B7AEE190(v15, &unk_1EBA51980, &unk_1B7D0A1B0);
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v54 = sub_1B7CFE420();
    sub_1B7AD9040(v54, qword_1EBA5DA20);
    sub_1B7C41078(v72, v77);

    v55 = v70;

    v56 = sub_1B7CFE400();
    v57 = sub_1B7CFEEF0();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v73;
    if (v58)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v75 = v61;
      *v60 = 136315394;
      *(v60 + 4) = sub_1B7AED1B8(v68, v55, &v75);
      *(v60 + 12) = 2080;
      v62 = sub_1B7CFF150();
      v64 = v63;
      sub_1B7C410D4(v77);
      v65 = sub_1B7AED1B8(v62, v64, &v75);

      *(v60 + 14) = v65;
      _os_log_impl(&dword_1B7AD5000, v56, v57, "%s%s has most recent date rule but is not a date for sibling", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v61, -1, -1);
      MEMORY[0x1B8CB0E70](v60, -1, -1);
    }

    else
    {

      sub_1B7C410D4(v77);
    }

    return (*(v59 + 8))(v49, v18);
  }
}

unint64_t sub_1B7C9E018()
{
  result = qword_1EBA53250;
  if (!qword_1EBA53250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53250);
  }

  return result;
}

uint64_t sub_1B7C9E06C(uint64_t a1, uint64_t a2)
{
  v206 = (a1 + 312);
  v207 = (a2 + 312);
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  do
  {
    if (!v7)
    {
LABEL_19:
      v26 = *(a1 + 16);
      v27 = *(v26 + 16);
      v28 = (v26 + 32);
      while (v27)
      {
        v29 = *v28++;
        --v27;
        if (v29 == 2)
        {
          result = swift_beginAccess();
          v30 = *(a2 + 16);
          v31 = *(v30 + 16);
          v32 = (v30 + 32);
          while (v31)
          {
            v33 = *v32++;
            --v31;
            if (v33 == 2)
            {
              swift_beginAccess();
              v34 = *(a1 + 32);
              result = swift_beginAccess();
              v35 = *(a2 + 32);
              if (v34 == v35)
              {
                v36 = 0;
                v200 = 0xE200000000000000;
                v37 = 15677;
              }

              else
              {
                v36 = v35 - v34;
                if (v35 >= v34)
                {
                  if ((v35 - v34) < 0)
                  {
                    goto LABEL_173;
                  }

                  v200 = 0xE100000000000000;
                  v37 = 60;
                }

                else
                {
                  v36 = v34 - v35;
                  if ((v34 - v35) < 0)
                  {
                    goto LABEL_172;
                  }

                  v200 = 0xE100000000000000;
                  v37 = 62;
                }
              }

              swift_beginAccess();
              v38 = *(v2 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v38;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v38 = sub_1B7CA208C(0, *(v38 + 2) + 1, 1, v38);
                *(v2 + 16) = v38;
              }

              v41 = *(v38 + 2);
              v40 = *(v38 + 3);
              v42 = v41 + 1;
              if (v41 >= v40 >> 1)
              {
                v193 = sub_1B7CA208C((v40 > 1), v41 + 1, 1, v38);
                v42 = v41 + 1;
                v38 = v193;
              }

              *(v38 + 2) = v42;
              v43 = &v38[64 * v41];
              *(v43 + 4) = v34;
              *(v43 + 5) = v35;
              *(v43 + 6) = v36;
              *(v43 + 7) = v37;
              *(v43 + 8) = v200;
              v43[72] = 1;
              v44 = *(&v208 + 3);
              *(v43 + 73) = v208;
              *(v43 + 19) = v44;
              *(v43 + 10) = 0xD000000000000010;
              *(v43 + 11) = 0x80000001B7D57D90;
              *(v2 + 16) = v38;
              result = swift_endAccess();
              goto LABEL_37;
            }
          }

          break;
        }
      }

LABEL_37:
      v45 = *(a1 + 16);
      v46 = *(v45 + 16);
      v47 = (v45 + 32);
      while (v46)
      {
        v48 = *v47++;
        --v46;
        if (v48 == 4)
        {
          result = swift_beginAccess();
          v49 = *(a2 + 16);
          v50 = *(v49 + 16);
          v51 = (v49 + 32);
          while (v50)
          {
            v52 = *v51++;
            --v50;
            if (v52 == 4)
            {
              swift_beginAccess();
              v53 = *(a1 + 40);
              result = swift_beginAccess();
              v54 = *(a2 + 40);
              if (v53 == v54)
              {
                v55 = 0;
                v56 = 0xE200000000000000;
                v57 = 15677;
              }

              else
              {
                v55 = v54 - v53;
                if (v54 >= v53)
                {
                  if ((v54 - v53) < 0)
                  {
                    goto LABEL_175;
                  }

                  v56 = 0xE100000000000000;
                  v57 = 60;
                }

                else
                {
                  v55 = v53 - v54;
                  if ((v53 - v54) < 0)
                  {
                    goto LABEL_174;
                  }

                  v56 = 0xE100000000000000;
                  v57 = 62;
                }
              }

              swift_beginAccess();
              v58 = *(v2 + 16);
              v59 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v58;
              if ((v59 & 1) == 0)
              {
                v58 = sub_1B7CA208C(0, *(v58 + 2) + 1, 1, v58);
                *(v2 + 16) = v58;
              }

              v61 = *(v58 + 2);
              v60 = *(v58 + 3);
              v62 = v61 + 1;
              if (v61 >= v60 >> 1)
              {
                v194 = sub_1B7CA208C((v60 > 1), v61 + 1, 1, v58);
                v62 = v61 + 1;
                v58 = v194;
              }

              *(v58 + 2) = v62;
              v63 = &v58[64 * v61];
              *(v63 + 4) = v53;
              *(v63 + 5) = v54;
              *(v63 + 6) = v55;
              *(v63 + 7) = v57;
              *(v63 + 8) = v56;
              v63[72] = 1;
              v64 = *(&v208 + 3);
              *(v63 + 73) = v208;
              *(v63 + 19) = v64;
              strcpy(v63 + 80, "Message Count");
              *(v63 + 47) = -4864;
              *(v2 + 16) = v58;
              result = swift_endAccess();
              goto LABEL_55;
            }
          }

          break;
        }
      }

LABEL_55:
      v65 = *(a1 + 16);
      v66 = *(v65 + 16);
      v67 = (v65 + 32);
      while (v66)
      {
        v68 = *v67++;
        --v66;
        if (v68 == 8)
        {
          result = swift_beginAccess();
          v69 = *(a2 + 16);
          v70 = *(v69 + 16);
          v71 = (v69 + 32);
          while (v70)
          {
            v72 = *v71++;
            --v70;
            if (v72 == 8)
            {
              swift_beginAccess();
              v73 = *(a1 + 48);
              result = swift_beginAccess();
              v74 = *(a2 + 48);
              if (v73 == v74)
              {
                v75 = 0;
                v201 = 0xE200000000000000;
                v76 = 15677;
              }

              else
              {
                v75 = v74 - v73;
                if (v74 >= v73)
                {
                  if ((v74 - v73) < 0)
                  {
                    goto LABEL_177;
                  }

                  v201 = 0xE100000000000000;
                  v76 = 60;
                }

                else
                {
                  v75 = v73 - v74;
                  if ((v73 - v74) < 0)
                  {
                    goto LABEL_176;
                  }

                  v201 = 0xE100000000000000;
                  v76 = 62;
                }
              }

              swift_beginAccess();
              v77 = *(v2 + 16);
              v78 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v77;
              if ((v78 & 1) == 0)
              {
                v77 = sub_1B7CA208C(0, *(v77 + 2) + 1, 1, v77);
                *(v2 + 16) = v77;
              }

              v80 = *(v77 + 2);
              v79 = *(v77 + 3);
              v81 = v80 + 1;
              if (v80 >= v79 >> 1)
              {
                v195 = sub_1B7CA208C((v79 > 1), v80 + 1, 1, v77);
                v81 = v80 + 1;
                v77 = v195;
              }

              *(v77 + 2) = v81;
              v82 = &v77[64 * v80];
              *(v82 + 4) = v73;
              *(v82 + 5) = v74;
              *(v82 + 6) = v75;
              *(v82 + 7) = v76;
              *(v82 + 8) = v201;
              v82[72] = 1;
              v83 = *(&v208 + 3);
              *(v82 + 73) = v208;
              *(v82 + 19) = v83;
              *(v82 + 10) = 0xD000000000000016;
              *(v82 + 11) = 0x80000001B7D57DB0;
              *(v2 + 16) = v77;
              result = swift_endAccess();
              goto LABEL_73;
            }
          }

          break;
        }
      }

LABEL_73:
      v84 = *(a1 + 16);
      v85 = *(v84 + 16);
      v86 = (v84 + 32);
      while (v85)
      {
        v87 = *v86++;
        --v85;
        if (v87 == 16)
        {
          result = swift_beginAccess();
          v88 = *(a2 + 16);
          v89 = *(v88 + 16);
          v90 = (v88 + 32);
          while (v89)
          {
            v91 = *v90++;
            --v89;
            if (v91 == 16)
            {
              swift_beginAccess();
              v92 = *(a1 + 56);
              result = swift_beginAccess();
              v93 = *(a2 + 56);
              if (v92 == v93)
              {
                v94 = 0;
                v202 = 0xE200000000000000;
                v95 = 15677;
              }

              else
              {
                v94 = v93 - v92;
                if (v93 >= v92)
                {
                  if ((v93 - v92) < 0)
                  {
                    goto LABEL_179;
                  }

                  v202 = 0xE100000000000000;
                  v95 = 60;
                }

                else
                {
                  v94 = v92 - v93;
                  if ((v92 - v93) < 0)
                  {
                    goto LABEL_178;
                  }

                  v202 = 0xE100000000000000;
                  v95 = 62;
                }
              }

              swift_beginAccess();
              v96 = *(v2 + 16);
              v97 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v96;
              if ((v97 & 1) == 0)
              {
                v96 = sub_1B7CA208C(0, *(v96 + 2) + 1, 1, v96);
                *(v2 + 16) = v96;
              }

              v99 = *(v96 + 2);
              v98 = *(v96 + 3);
              v100 = v99 + 1;
              if (v99 >= v98 >> 1)
              {
                v196 = sub_1B7CA208C((v98 > 1), v99 + 1, 1, v96);
                v100 = v99 + 1;
                v96 = v196;
              }

              *(v96 + 2) = v100;
              v101 = &v96[64 * v99];
              *(v101 + 4) = v92;
              *(v101 + 5) = v93;
              *(v101 + 6) = v94;
              *(v101 + 7) = v95;
              *(v101 + 8) = v202;
              v101[72] = 1;
              v102 = *(&v208 + 3);
              *(v101 + 73) = v208;
              *(v101 + 19) = v102;
              *(v101 + 10) = 0xD000000000000015;
              *(v101 + 11) = 0x80000001B7D57DD0;
              *(v2 + 16) = v96;
              result = swift_endAccess();
              goto LABEL_91;
            }
          }

          break;
        }
      }

LABEL_91:
      v103 = *(a1 + 16);
      v104 = *(v103 + 16);
      v105 = (v103 + 32);
      while (v104)
      {
        v106 = *v105++;
        --v104;
        if (v106 == 32)
        {
          result = swift_beginAccess();
          v107 = *(a2 + 16);
          v108 = *(v107 + 16);
          v109 = (v107 + 32);
          while (v108)
          {
            v110 = *v109++;
            --v108;
            if (v110 == 32)
            {
              swift_beginAccess();
              v111 = *(a1 + 64);
              result = swift_beginAccess();
              v112 = *(a2 + 64);
              if (v111 == v112)
              {
                v113 = 0;
                v203 = 0xE200000000000000;
                v114 = 15677;
              }

              else
              {
                v113 = v112 - v111;
                if (v112 >= v111)
                {
                  if ((v112 - v111) < 0)
                  {
                    goto LABEL_181;
                  }

                  v203 = 0xE100000000000000;
                  v114 = 60;
                }

                else
                {
                  v113 = v111 - v112;
                  if ((v111 - v112) < 0)
                  {
                    goto LABEL_180;
                  }

                  v203 = 0xE100000000000000;
                  v114 = 62;
                }
              }

              swift_beginAccess();
              v115 = *(v2 + 16);
              v116 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v115;
              if ((v116 & 1) == 0)
              {
                v115 = sub_1B7CA208C(0, *(v115 + 2) + 1, 1, v115);
                *(v2 + 16) = v115;
              }

              v118 = *(v115 + 2);
              v117 = *(v115 + 3);
              v119 = v118 + 1;
              if (v118 >= v117 >> 1)
              {
                v197 = sub_1B7CA208C((v117 > 1), v118 + 1, 1, v115);
                v119 = v118 + 1;
                v115 = v197;
              }

              *(v115 + 2) = v119;
              v120 = &v115[64 * v118];
              *(v120 + 4) = v111;
              *(v120 + 5) = v112;
              *(v120 + 6) = v113;
              *(v120 + 7) = v114;
              *(v120 + 8) = v203;
              v120[72] = 1;
              v121 = *(&v208 + 3);
              *(v120 + 73) = v208;
              *(v120 + 19) = v121;
              *(v120 + 10) = 0xD000000000000019;
              *(v120 + 11) = 0x80000001B7D57DF0;
              *(v2 + 16) = v115;
              result = swift_endAccess();
              goto LABEL_109;
            }
          }

          break;
        }
      }

LABEL_109:
      v122 = *(a1 + 16);
      v123 = *(v122 + 16);
      v124 = (v122 + 32);
      while (v123)
      {
        v125 = *v124++;
        --v123;
        if (v125 == 512)
        {
          result = swift_beginAccess();
          v126 = *(a2 + 16);
          v127 = *(v126 + 16);
          v128 = (v126 + 32);
          while (v127)
          {
            v129 = *v128++;
            --v127;
            if (v129 == 512)
            {
              swift_beginAccess();
              v130 = *(a1 + 296);
              result = swift_beginAccess();
              v131 = *(a2 + 296);
              if (v130 == v131)
              {
                v132 = 0;
                v204 = 0xE200000000000000;
                v133 = 15677;
              }

              else
              {
                v132 = v131 - v130;
                if (v131 >= v130)
                {
                  if ((v131 - v130) < 0)
                  {
                    goto LABEL_183;
                  }

                  v204 = 0xE100000000000000;
                  v133 = 60;
                }

                else
                {
                  v132 = v130 - v131;
                  if ((v130 - v131) < 0)
                  {
                    goto LABEL_182;
                  }

                  v204 = 0xE100000000000000;
                  v133 = 62;
                }
              }

              swift_beginAccess();
              v134 = *(v2 + 16);
              v135 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v134;
              if ((v135 & 1) == 0)
              {
                v134 = sub_1B7CA208C(0, *(v134 + 2) + 1, 1, v134);
                *(v2 + 16) = v134;
              }

              v137 = *(v134 + 2);
              v136 = *(v134 + 3);
              v138 = v137 + 1;
              if (v137 >= v136 >> 1)
              {
                v198 = sub_1B7CA208C((v136 > 1), v137 + 1, 1, v134);
                v138 = v137 + 1;
                v134 = v198;
              }

              *(v134 + 2) = v138;
              v139 = &v134[64 * v137];
              *(v139 + 4) = v130;
              *(v139 + 5) = v131;
              *(v139 + 6) = v132;
              *(v139 + 7) = v133;
              *(v139 + 8) = v204;
              v139[72] = 1;
              v140 = *(&v208 + 3);
              *(v139 + 73) = v208;
              *(v139 + 19) = v140;
              *(v139 + 10) = 0xD00000000000001BLL;
              *(v139 + 11) = 0x80000001B7D57E10;
              *(v2 + 16) = v134;
              result = swift_endAccess();
              goto LABEL_127;
            }
          }

          break;
        }
      }

LABEL_127:
      v141 = *(a1 + 16);
      v142 = *(v141 + 16);
      v143 = (v141 + 32);
      while (v142)
      {
        v144 = *v143++;
        --v142;
        if (v144 == 1024)
        {
          result = swift_beginAccess();
          v145 = *(a2 + 16);
          v146 = *(v145 + 16);
          v147 = (v145 + 32);
          while (v146)
          {
            v148 = *v147++;
            --v146;
            if (v148 == 1024)
            {
              swift_beginAccess();
              v149 = *(a1 + 304);
              result = swift_beginAccess();
              v150 = *(a2 + 304);
              if (v149 == v150)
              {
                v151 = 0;
                v205 = 0xE200000000000000;
                v152 = 15677;
              }

              else
              {
                v151 = v150 - v149;
                if (v150 >= v149)
                {
                  if ((v150 - v149) < 0)
                  {
                    goto LABEL_185;
                  }

                  v205 = 0xE100000000000000;
                  v152 = 60;
                }

                else
                {
                  v151 = v149 - v150;
                  if ((v149 - v150) < 0)
                  {
                    goto LABEL_184;
                  }

                  v205 = 0xE100000000000000;
                  v152 = 62;
                }
              }

              swift_beginAccess();
              v153 = *(v2 + 16);
              v154 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v153;
              if ((v154 & 1) == 0)
              {
                v153 = sub_1B7CA208C(0, *(v153 + 2) + 1, 1, v153);
                *(v2 + 16) = v153;
              }

              v156 = *(v153 + 2);
              v155 = *(v153 + 3);
              v157 = v156 + 1;
              if (v156 >= v155 >> 1)
              {
                v199 = sub_1B7CA208C((v155 > 1), v156 + 1, 1, v153);
                v157 = v156 + 1;
                v153 = v199;
              }

              *(v153 + 2) = v157;
              v158 = &v153[64 * v156];
              *(v158 + 4) = v149;
              *(v158 + 5) = v150;
              *(v158 + 6) = v151;
              *(v158 + 7) = v152;
              *(v158 + 8) = v205;
              v158[72] = 1;
              v159 = *(&v208 + 3);
              *(v158 + 73) = v208;
              *(v158 + 19) = v159;
              *(v158 + 10) = 0xD000000000000021;
              *(v158 + 11) = 0x80000001B7D57E30;
              *(v2 + 16) = v153;
              result = swift_endAccess();
              goto LABEL_145;
            }
          }

          break;
        }
      }

LABEL_145:
      v160 = *(a1 + 16);
      v161 = *(v160 + 16);
      v162 = (v160 + 32);
      while (v161)
      {
        v163 = *v162++;
        --v161;
        if (v163 == 64)
        {
          result = swift_beginAccess();
          v164 = *(a2 + 16);
          v165 = *(v164 + 16);
          v166 = (v164 + 32);
          while (v165)
          {
            v167 = *v166++;
            --v165;
            if (v167 == 64)
            {
              swift_beginAccess();
              v168 = *(a1 + 88);
              v210 = *(a1 + 72);
              v211 = v168;
              swift_beginAccess();
              v169 = *(a2 + 88);
              v208 = *(a2 + 72);
              v209 = v169;
              result = sub_1B7CA0F3C(&v210, &v208, 0xD000000000000016, 0x80000001B7D57E60);
              goto LABEL_152;
            }
          }

          break;
        }
      }

LABEL_152:
      v170 = *(a1 + 16);
      v171 = *(v170 + 16);
      v172 = (v170 + 32);
      while (v171)
      {
        v173 = *v172++;
        --v171;
        if (v173 == 128)
        {
          result = swift_beginAccess();
          v174 = *(a2 + 16);
          v175 = *(v174 + 16);
          v176 = (v174 + 32);
          while (v175)
          {
            v177 = *v176++;
            --v175;
            if (v177 == 128)
            {
              swift_beginAccess();
              v178 = *(a1 + 120);
              v210 = *(a1 + 104);
              v211 = v178;
              swift_beginAccess();
              v179 = *(a2 + 120);
              v208 = *(a2 + 104);
              v209 = v179;
              result = sub_1B7CA0F3C(&v210, &v208, 0xD000000000000018, 0x80000001B7D57E80);
              goto LABEL_159;
            }
          }

          break;
        }
      }

LABEL_159:
      v180 = *(a1 + 16);
      v181 = *(v180 + 16);
      v182 = (v180 + 32);
      while (v181)
      {
        v183 = *v182++;
        --v181;
        if (v183 == 256)
        {
          swift_beginAccess();
          result = sub_1B7C6A644(256, *(a2 + 16));
          if (result)
          {
            swift_beginAccess();
            v184 = *(a1 + 152);
            v210 = *(a1 + 136);
            v211 = v184;
            swift_beginAccess();
            v185 = *(a2 + 152);
            v208 = *(a2 + 136);
            v209 = v185;
            result = sub_1B7CA1518(&v210, &v208, 0xD000000000000015, 0x80000001B7D57EA0);
          }

          break;
        }
      }

      v186 = *(a1 + 16);
      v187 = *(v186 + 16);
      v188 = (v186 + 32);
      while (v187)
      {
        v189 = *v188++;
        --v187;
        if (v189 == 2048)
        {
          swift_beginAccess();
          result = sub_1B7C6A644(2048, *(a2 + 16));
          if (result)
          {
            swift_beginAccess();
            v190 = v206[1];
            v210 = *v206;
            v211 = v190;
            swift_beginAccess();
            v191 = v207[1];
            v208 = *v207;
            v209 = v191;
            return sub_1B7CA0F3C(&v210, &v208, 0x4320656C646E6148, 0xED000073746E756FLL);
          }

          return result;
        }
      }

      return result;
    }

    v9 = *v8++;
    --v7;
  }

  while (v9 != 1);
  result = swift_beginAccess();
  v10 = *(a2 + 16);
  v11 = *(v10 + 16);
  v12 = (v10 + 32);
  do
  {
    if (!v11)
    {
      goto LABEL_19;
    }

    v13 = *v12++;
    --v11;
  }

  while (v13 != 1);
  swift_beginAccess();
  v14 = *(a1 + 24);
  result = swift_beginAccess();
  v15 = *(a2 + 24);
  if (v14 == v15)
  {
    v16 = 0;
    v17 = 0xE200000000000000;
    v18 = 15677;
LABEL_14:
    swift_beginAccess();
    v19 = *(v2 + 16);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v19;
    if ((v20 & 1) == 0)
    {
      v19 = sub_1B7CA208C(0, *(v19 + 2) + 1, 1, v19);
      *(v2 + 16) = v19;
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      v192 = sub_1B7CA208C((v21 > 1), v22 + 1, 1, v19);
      v23 = v22 + 1;
      v19 = v192;
    }

    *(v19 + 2) = v23;
    v24 = &v19[64 * v22];
    *(v24 + 4) = v14;
    *(v24 + 5) = v15;
    *(v24 + 6) = v16;
    *(v24 + 7) = v18;
    *(v24 + 8) = v17;
    v24[72] = 1;
    v25 = *(&v208 + 3);
    *(v24 + 73) = v208;
    *(v24 + 19) = v25;
    *(v24 + 10) = 0x756F432074616843;
    *(v24 + 11) = 0xEA0000000000746ELL;
    *(v2 + 16) = v19;
    result = swift_endAccess();
    goto LABEL_19;
  }

  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      v17 = 0xE100000000000000;
      v18 = 60;
      goto LABEL_14;
    }
  }

  else
  {
    v16 = v14 - v15;
    if ((v14 - v15) >= 0)
    {
      v17 = 0xE100000000000000;
      v18 = 62;
      goto LABEL_14;
    }

    __break(1u);
  }

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
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
  return result;
}

uint64_t StorageInspectionCrossCheckReport.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v20 = sub_1B7C107FC(&qword_1EBA53258, &qword_1B7D10E30);
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v20 - v7;
  v9 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v10 = (v3 + 16);
  *(v3 + 24) = v9;
  v11 = (v3 + 24);
  v13 = a1[3];
  v12 = a1[4];
  v21 = a1;
  sub_1B7AE9124(a1, v13);
  sub_1B7C9F444();
  sub_1B7CFF820();
  if (v2)
  {
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA53268, &unk_1B7D10E38);
    v23 = 0;
    sub_1B7CA1B14(&qword_1EBA53270, sub_1B7C9F498);
    v14 = v20;
    sub_1B7CFF440();
    v15 = v22;
    swift_beginAccess();
    v16 = *v10;
    *v10 = v15;

    sub_1B7C107FC(&qword_1EBA52C10, &qword_1B7D0E600);
    LOBYTE(v22) = 1;
    sub_1B7C9F4EC(&qword_1EBA52C18, &qword_1EBA52A78);
    sub_1B7CFF440();
    (*(v5 + 8))(v8, v14);
    v18 = v24;
    swift_beginAccess();
    v19 = *v11;
    *v11 = v18;
  }

  sub_1B7AE9168(v21);
  return v3;
}

unint64_t sub_1B7C9F444()
{
  result = qword_1EBA53260;
  if (!qword_1EBA53260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53260);
  }

  return result;
}

unint64_t sub_1B7C9F498()
{
  result = qword_1EBA53278;
  if (!qword_1EBA53278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53278);
  }

  return result;
}

uint64_t sub_1B7C9F4EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA52C10, &qword_1B7D0E600);
    sub_1B7CA1BE0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t StorageInspectionCrossCheckReport.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1B7C9F59C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1B7C9F5D4(uint64_t a1)
{
  v3 = sub_1B7CFDFF0();
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B7C219E4(0x73697261706D6F43, 0xEB00000000736E6FLL);
  v8 = *(a1 + 24);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    goto LABEL_30;
  }

  v50 = v3;
  *(a1 + 24) = v10;
  swift_beginAccess();
  v48 = v1;
  v11 = *(v1 + 16);
  v12 = *(v11 + 16);

  v49 = v12;
  if (v12)
  {
    v13 = 0;
    v14 = (v11 + 32);
    while (v13 < *(v11 + 16))
    {
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[3];
      v60 = v14[2];
      v61 = v17;
      v59[0] = v15;
      v59[1] = v16;
      v57 = 0;
      v58 = 0xE000000000000000;
      v53 = *v14;
      v54 = v14[1];
      v55 = v14[2];
      v56 = v14[3];
      if (BYTE8(v60))
      {
        sub_1B7CA0740(v59, v52);
        v18 = sub_1B7CA05CC();
      }

      else
      {
        sub_1B7CA0740(v59, v52);
        v18 = sub_1B7CA038C();
      }

      MEMORY[0x1B8CADCA0](v18);

      if (*(a1 + 24) + 0x4000000000000000 < 0)
      {
        goto LABEL_28;
      }

      v19 = v57;
      v20 = v58;
      *&v53 = sub_1B7CFEC10();
      *(&v53 + 1) = v21;
      MEMORY[0x1B8CADCA0](v19, v20);

      v22 = v53;
      swift_beginAccess();
      v23 = *(a1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_1B7AF182C(0, *(v23 + 2) + 1, 1, v23);
        *(a1 + 16) = v23;
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_1B7AF182C((v25 > 1), v26 + 1, 1, v23);
      }

      ++v13;
      *(v23 + 2) = v26 + 1;
      *&v23[16 * v26 + 32] = v22;
      *(a1 + 16) = v23;
      swift_endAccess();
      result = sub_1B7CA1AE4(v59);
      v14 += 4;
      if (v49 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_14:

  v27 = *(a1 + 24);
  v9 = __OFSUB__(v27, 1);
  v28 = v27 - 1;
  if (v9)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(a1 + 24) = v28;
  result = sub_1B7C219E4(0xD000000000000021, 0x80000001B7D54790);
  v29 = *(a1 + 24);
  v9 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v9)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *(a1 + 24) = v30;
  v31 = v48;
  swift_beginAccess();
  result = *(v31 + 24);
  v32 = *(result + 16);
  if (v32)
  {
    v49 = *(v51 + 16);
    v33 = result + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v48 = *(v51 + 72);
    v51 += 16;
    v34 = (v51 - 8);
    v47[1] = result;

    v35 = v50;
    while (1)
    {
      (v49)(v6, v33, v35);
      result = sub_1B7CFDFC0();
      if (*(a1 + 24) + 0x4000000000000000 < 0)
      {
        break;
      }

      v37 = result;
      v38 = v36;
      *&v53 = sub_1B7CFEC10();
      *(&v53 + 1) = v39;
      MEMORY[0x1B8CADCA0](v37, v38);

      v40 = v53;
      swift_beginAccess();
      v41 = *(a1 + 16);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v41;
      if ((v42 & 1) == 0)
      {
        v41 = sub_1B7AF182C(0, *(v41 + 2) + 1, 1, v41);
        *(a1 + 16) = v41;
      }

      v44 = *(v41 + 2);
      v43 = *(v41 + 3);
      if (v44 >= v43 >> 1)
      {
        v41 = sub_1B7AF182C((v43 > 1), v44 + 1, 1, v41);
      }

      *(v41 + 2) = v44 + 1;
      *&v41[16 * v44 + 32] = v40;
      *(a1 + 16) = v41;
      swift_endAccess();
      v35 = v50;
      (*v34)(v6, v50);
      v33 += v48;
      if (!--v32)
      {

        goto LABEL_25;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_25:
  v45 = *(a1 + 24);
  v9 = __OFSUB__(v45, 1);
  v46 = v45 - 1;
  if (!v9)
  {
    *(a1 + 24) = v46;
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1B7C9FB00(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA53280, &unk_1B7D10E48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C9F444();
  sub_1B7CFF830();
  swift_beginAccess();
  v14 = *(v3 + 16);
  LOBYTE(v13) = 0;
  sub_1B7C107FC(&qword_1EBA53268, &unk_1B7D10E38);
  sub_1B7CA1B14(&qword_1EBA53288, sub_1B7CA1B8C);
  sub_1B7CFF500();
  if (!v2)
  {
    swift_beginAccess();
    v13 = *(v3 + 24);
    v12[7] = 1;
    sub_1B7C107FC(&qword_1EBA52C10, &qword_1B7D0E600);
    sub_1B7C9F4EC(&qword_1EBA52C28, &qword_1EBA52AB8);
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B7C9FD4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t StorageInspectionCrossCheckReport.Comparison.description.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  *v5 = *(v0 + 41);
  *&v5[15] = *(v0 + 7);
  if (*(v0 + 40))
  {
    return sub_1B7CA05CC();
  }

  else
  {
    return sub_1B7CA038C();
  }
}

unint64_t sub_1B7C9FE34()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x73697261706D6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1B7C9FE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73697261706D6F63 && a2 == 0xEC000000736E6F69;
  if (v6 || (sub_1B7CFF590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7D57D50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B7CFF590();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B7C9FF64(uint64_t a1)
{
  v2 = sub_1B7C9F444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C9FFA0(uint64_t a1)
{
  v2 = sub_1B7C9F444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StorageInspectionCrossCheckReport.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t StorageInspectionCrossCheckReport.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  StorageInspectionCrossCheckReport.init(from:)(a1);
  return v2;
}

uint64_t sub_1B7CA006C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t StorageInspectionCrossCheckReport.description.getter()
{
  v1 = *v0;
  v9 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](663610, 0xE300000000000000);
  type metadata accessor for StorageInspectorReportStringBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v3 = (inited + 16);
  *(inited + 24) = 0;
  sub_1B7C9F5D4(inited);
  swift_beginAccess();
  v8 = *v3;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v4 = sub_1B7CFEA10();
  v6 = v5;

  MEMORY[0x1B8CADCA0](v4, v6);

  return v9;
}

IMDPersistence::StorageInspectionCrossCheckReport::Comparison::ComparisonType_optional __swiftcall StorageInspectionCrossCheckReport.Comparison.ComparisonType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t StorageInspectionCrossCheckReport.Comparison.sign.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t StorageInspectionCrossCheckReport.Comparison.comparisionDescription.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1B7CA038C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  v24 = v0[2];
  v4 = v0[4];
  v5 = v0[6];
  v6 = v0[7];
  sub_1B7CFF210();

  v25 = v5;
  MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
  v7 = objc_opt_self();
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v9 = [v7 stringFromHugeNumber_];

  v10 = sub_1B7CFEA60();
  v12 = v11;

  MEMORY[0x1B8CADCA0](v10, v12);

  MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
  MEMORY[0x1B8CADCA0](v3, v4);
  MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v14 = [v7 stringFromHugeNumber_];

  v15 = sub_1B7CFEA60();
  v17 = v16;

  MEMORY[0x1B8CADCA0](v15, v17);

  MEMORY[0x1B8CADCA0](0x726566666964203ALL, 0xEE00203A65636E65);
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v19 = [v7 stringFromHugeNumber_];

  v20 = sub_1B7CFEA60();
  v22 = v21;

  MEMORY[0x1B8CADCA0](v20, v22);

  return v25;
}

uint64_t sub_1B7CA05CC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v7 = v0[6];
  v6 = v0[7];
  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
  v8 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v8);

  MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
  MEMORY[0x1B8CADCA0](v3, v5);
  MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
  v9 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v9);

  MEMORY[0x1B8CADCA0](0x726566666964203ALL, 0xEE00203A65636E65);
  v10 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v10);

  return v7;
}

uint64_t sub_1B7CA077C()
{
  v1 = 7563372;
  v2 = *v0;
  v3 = 1852270963;
  v4 = 0x73697261706D6F63;
  if (v2 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 7563378;
  if (v2 != 1)
  {
    v5 = 0x6E65726566666964;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7CA0830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7CA3FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7CA0864(uint64_t a1)
{
  v2 = sub_1B7CA3A7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7CA08A0(uint64_t a1)
{
  v2 = sub_1B7CA3A7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StorageInspectionCrossCheckReport.Comparison.encode(to:)(void *a1)
{
  v3 = sub_1B7C107FC(&qword_1EBA53298, &qword_1B7D10E58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v21 = v1[2];
  v22 = v8;
  v19 = v1[4];
  v20 = v10;
  v18 = *(v1 + 40);
  v11 = v1[7];
  v17[1] = v1[6];
  v12 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CA3A7C();
  v13 = v3;
  sub_1B7CFF830();
  v30 = 0;
  v14 = v23;
  sub_1B7CFF520();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v15 = v18;
  v23 = v11;
  v29 = 1;
  sub_1B7CFF520();
  v28 = 2;
  sub_1B7CFF510();
  v27 = 3;
  sub_1B7CFF4E0();
  v26 = v15;
  v25 = 4;
  sub_1B7CA3AD0();
  sub_1B7CFF500();
  v24 = 5;
  sub_1B7CFF4E0();
  return (*(v4 + 8))(v7, v13);
}

uint64_t StorageInspectionCrossCheckReport.Comparison.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1B7C107FC(&qword_1EBA532B0, &qword_1B7D10E60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CA3A7C();
  sub_1B7CFF820();
  if (v2)
  {
    return sub_1B7AE9168(a1);
  }

  LOBYTE(v30[0]) = 0;
  v11 = sub_1B7CFF460();
  LOBYTE(v30[0]) = 1;
  v12 = sub_1B7CFF460();
  LOBYTE(v30[0]) = 2;
  v25 = sub_1B7CFF450();
  LOBYTE(v30[0]) = 3;
  v23 = sub_1B7CFF420();
  v24 = v13;
  LOBYTE(v26) = 4;
  sub_1B7CA3B24();
  sub_1B7CFF440();
  v34 = LOBYTE(v30[0]);
  v35 = 5;
  v14 = sub_1B7CFF420();
  v15 = v9;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  *&v26 = v11;
  *(&v26 + 1) = v12;
  v19 = v24;
  v18 = v25;
  *&v27 = v25;
  *(&v27 + 1) = v23;
  *&v28 = v24;
  BYTE8(v28) = v34;
  *&v29 = v14;
  *(&v29 + 1) = v17;
  v20 = v27;
  *a2 = v26;
  a2[1] = v20;
  v21 = v29;
  a2[2] = v28;
  a2[3] = v21;
  sub_1B7CA0740(&v26, v30);
  sub_1B7AE9168(a1);
  v30[0] = v11;
  v30[1] = v12;
  v30[2] = v18;
  v30[3] = v23;
  v30[4] = v19;
  v31 = v34;
  v32 = v14;
  v33 = v17;
  return sub_1B7CA1AE4(v30);
}

uint64_t sub_1B7CA0EB4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  *v5 = *(v0 + 41);
  *&v5[15] = *(v0 + 7);
  if (*(v0 + 40))
  {
    return sub_1B7CA05CC();
  }

  else
  {
    return sub_1B7CA038C();
  }
}

uint64_t sub_1B7CA0F3C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *a1;
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v45 = a2[1];
  v46 = a1[1];
  v44 = a2[2];
  v48 = a2[3];

  result = MEMORY[0x1B8CADCA0](0x6C61746F5420, 0xE600000000000000);
  if (v6 == v9)
  {
    v11 = 0;
    v43 = 0xE200000000000000;
    v12 = 15677;
    goto LABEL_8;
  }

  v11 = v9 - v6;
  if (v9 < v6)
  {
    v11 = v6 - v9;
    if ((v6 - v9) >= 0)
    {
      v43 = 0xE100000000000000;
      v12 = 62;
      goto LABEL_8;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v9 - v6) < 0)
  {
    goto LABEL_47;
  }

  v43 = 0xE100000000000000;
  v12 = 60;
LABEL_8:
  swift_beginAccess();
  v13 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v13;
  v47 = v8;
  v42 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1B7CA208C(0, *(v13 + 2) + 1, 1, v13);
    *(v5 + 16) = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1B7CA208C((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[64 * v16];
  *(v17 + 4) = v6;
  *(v17 + 5) = v9;
  *(v17 + 6) = v11;
  *(v17 + 7) = v12;
  *(v17 + 8) = v43;
  v17[72] = 1;
  *(v17 + 73) = *v56;
  *(v17 + 19) = *&v56[3];
  *(v17 + 10) = a3;
  *(v17 + 11) = a4;
  *(v5 + 16) = v13;
  swift_endAccess();
  sub_1B7CFF210();

  result = MEMORY[0x1B8CADCA0](0x65746E6572615020, 0xEF746E756F432064);
  if (v47 == v48)
  {
    v18 = 0;
    v19 = 0xE200000000000000;
    v20 = 15677;
    goto LABEL_19;
  }

  v18 = v48 - v47;
  if (v48 < v47)
  {
    v18 = v47 - v48;
    if ((v47 - v48) >= 0)
    {
      v19 = 0xE100000000000000;
      v20 = 62;
      goto LABEL_19;
    }

    goto LABEL_48;
  }

  if ((v48 - v47) < 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v19 = 0xE100000000000000;
  v20 = 60;
LABEL_19:
  swift_beginAccess();
  v21 = *(v5 + 16);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v21;
  if ((v22 & 1) == 0)
  {
    v21 = sub_1B7CA208C(0, *(v21 + 2) + 1, 1, v21);
    *(v5 + 16) = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1B7CA208C((v23 > 1), v24 + 1, 1, v21);
  }

  *(v21 + 2) = v24 + 1;
  v25 = &v21[64 * v24];
  *(v25 + 4) = v47;
  *(v25 + 5) = v48;
  *(v25 + 6) = v18;
  *(v25 + 7) = v20;
  *(v25 + 8) = v19;
  v25[72] = 1;
  *(v25 + 73) = *v53;
  *(v25 + 19) = *&v53[3];
  *(v25 + 10) = a3;
  *(v25 + 11) = a4;
  *(v5 + 16) = v21;
  swift_endAccess();
  sub_1B7CFF210();

  result = MEMORY[0x1B8CADCA0](0x656E616870724F20, 0xEF746E756F432064);
  if (v46 == v45)
  {
    v26 = 0;
    v27 = 0xE200000000000000;
    v28 = 15677;
    goto LABEL_30;
  }

  v26 = v45 - v46;
  if (v45 < v46)
  {
    v26 = v46 - v45;
    if ((v46 - v45) >= 0)
    {
      v27 = 0xE100000000000000;
      v28 = 62;
      goto LABEL_30;
    }

    goto LABEL_50;
  }

  if ((v45 - v46) < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v27 = 0xE100000000000000;
  v28 = 60;
LABEL_30:
  swift_beginAccess();
  v29 = *(v5 + 16);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v29;
  if ((v30 & 1) == 0)
  {
    v29 = sub_1B7CA208C(0, *(v29 + 2) + 1, 1, v29);
    *(v5 + 16) = v29;
  }

  v32 = *(v29 + 2);
  v31 = *(v29 + 3);
  if (v32 >= v31 >> 1)
  {
    v29 = sub_1B7CA208C((v31 > 1), v32 + 1, 1, v29);
  }

  *(v29 + 2) = v32 + 1;
  v33 = &v29[64 * v32];
  *(v33 + 4) = v46;
  *(v33 + 5) = v45;
  *(v33 + 6) = v26;
  *(v33 + 7) = v28;
  *(v33 + 8) = v27;
  v33[72] = 1;
  *(v33 + 73) = *v52;
  *(v33 + 19) = *&v52[3];
  *(v33 + 10) = a3;
  *(v33 + 11) = a4;
  *(v5 + 16) = v29;
  swift_endAccess();
  sub_1B7CFF210();

  result = MEMORY[0x1B8CADCA0](0xD000000000000021, 0x80000001B7D57EF0);
  if (v7 != v44)
  {
    v34 = v44 - v7;
    if (v44 >= v42)
    {
      if ((v44 - v42) >= 0)
      {
        v35 = 0xE100000000000000;
        v36 = 60;
        goto LABEL_41;
      }

LABEL_53:
      __break(1u);
      return result;
    }

    v34 = v42 - v44;
    if ((v42 - v44) >= 0)
    {
      v35 = 0xE100000000000000;
      v36 = 62;
      goto LABEL_41;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v34 = 0;
  v35 = 0xE200000000000000;
  v36 = 15677;
LABEL_41:
  swift_beginAccess();
  v37 = *(v5 + 16);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v37;
  if ((v38 & 1) == 0)
  {
    v37 = sub_1B7CA208C(0, *(v37 + 2) + 1, 1, v37);
    *(v5 + 16) = v37;
  }

  v40 = *(v37 + 2);
  v39 = *(v37 + 3);
  if (v40 >= v39 >> 1)
  {
    v37 = sub_1B7CA208C((v39 > 1), v40 + 1, 1, v37);
  }

  *(v37 + 2) = v40 + 1;
  v41 = &v37[64 * v40];
  *(v41 + 4) = v42;
  *(v41 + 5) = v44;
  *(v41 + 6) = v34;
  *(v41 + 7) = v36;
  *(v41 + 8) = v35;
  v41[72] = 1;
  *(v41 + 73) = *v51;
  *(v41 + 19) = *&v51[3];
  *(v41 + 10) = a3;
  *(v41 + 11) = a4;
  *(v5 + 16) = v37;
  return swift_endAccess();
}