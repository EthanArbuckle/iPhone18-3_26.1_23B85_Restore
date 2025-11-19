uint64_t sub_22C8A48C8()
{
  v1 = sub_22C87FAE0();
  sub_22C8A492C(v1, v2, v3, v4);
  sub_22C385D88();

  return v0;
}

uint64_t sub_22C8A492C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22C90A26C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22C90ACAC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_22C387878(v9, 0);
  v12 = sub_22C8A4A8C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22C90A26C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22C90AFCC();
LABEL_4:

  return sub_22C90A26C();
}

unint64_t sub_22C8A4A8C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_22C8A3F0C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22C90A3FC();
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
          result = sub_22C90AFCC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_22C8A3F0C(v12, a6, a7);
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

    result = sub_22C90A3CC();
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

uint64_t sub_22C8A4C9C(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unsigned int a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    sub_22C634004();
    result = sub_22C8A3F0C(v19, v20, v21);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v22 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(a6) & 0xF;
    }

    if (v22 < v16 >> 16)
    {
      goto LABEL_114;
    }

    result = sub_22C90A3EC();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    sub_22C634004();
    v24 = v23;
    result = sub_22C8A3F0C(v25, v26, v27);
    v17 = v24;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    sub_22C634004();
    v29 = v28;
    result = sub_22C8A3F0C(v30, v31, v32);
    v17 = v29;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v33 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v33 = v17;
  }

  if (v33 < v11 >> 16)
  {
    goto LABEL_110;
  }

  if (v33 < a4 >> 16)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  sub_22C370114();
  result = sub_22C90A3EC();
LABEL_22:
  v34 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_109;
  }

  if (v34 < v18)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v35 = (v18 + v12);
  if (!v12)
  {
    v35 = 0;
  }

  v36 = *v35;
  if (v36 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        sub_22C38191C();
        if (v58 ^ v59 | v57)
        {
          v64 = v65;
        }

        if (v58 ^ v59 | v57)
        {
          v66 = 65;
        }

        else
        {
          v66 = v63;
        }

        if (v58 ^ v59 | v57)
        {
          v67 = v62;
        }

        else
        {
          v67 = 58;
        }

        if (v61)
        {
          v48 = 0;
          v68 = (v61 + 1);
          v69 = v60 - 1;
          do
          {
            v70 = *v68;
            if (v70 < 0x30 || v70 >= v67)
            {
              if (v70 < 0x41 || v70 >= v66)
              {
                v53 = 0;
                v54 = 1;
                if (v70 < 0x61 || v70 >= v64)
                {
                  return v53 | (v54 << 32);
                }

                v71 = -87;
              }

              else
              {
                v71 = -55;
              }
            }

            else
            {
              v71 = -48;
            }

            v72 = v48 * a7;
            if ((v72 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_106;
            }

            v73 = v70 + v71;
            v48 = v72 + v73;
            if (__CFADD__(v72, v73))
            {
              goto LABEL_106;
            }

            ++v68;
            --v69;
          }

          while (v69);
LABEL_104:
          v54 = 0;
          v53 = v48;
          return v53 | (v54 << 32);
        }

        goto LABEL_105;
      }

      goto LABEL_106;
    }

    goto LABEL_113;
  }

  if (v36 != 45)
  {
    if (v34 != v18)
    {
      sub_22C38191C();
      if (v75 ^ v76 | v74)
      {
        v81 = v82;
      }

      if (v75 ^ v76 | v74)
      {
        v83 = 65;
      }

      else
      {
        v83 = v80;
      }

      if (v75 ^ v76 | v74)
      {
        v84 = v79;
      }

      else
      {
        v84 = 58;
      }

      if (v78)
      {
        v48 = 0;
        while (1)
        {
          v85 = *v78;
          if (v85 < 0x30 || v85 >= v84)
          {
            if (v85 < 0x41 || v85 >= v83)
            {
              v53 = 0;
              v54 = 1;
              if (v85 < 0x61 || v85 >= v81)
              {
                return v53 | (v54 << 32);
              }

              v86 = -87;
            }

            else
            {
              v86 = -55;
            }
          }

          else
          {
            v86 = -48;
          }

          v87 = v48 * a7;
          if ((v87 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_106;
          }

          v88 = v85 + v86;
          v48 = v87 + v88;
          if (__CFADD__(v87, v88))
          {
            goto LABEL_106;
          }

          ++v78;
          if (!--v77)
          {
            goto LABEL_104;
          }
        }
      }

      goto LABEL_105;
    }

LABEL_106:
    v53 = 0;
    v54 = 1;
    return v53 | (v54 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      sub_22C38191C();
      if (v38 ^ v39 | v37)
      {
        v44 = v45;
      }

      if (v38 ^ v39 | v37)
      {
        v46 = 65;
      }

      else
      {
        v46 = v43;
      }

      if (v38 ^ v39 | v37)
      {
        v47 = v42;
      }

      else
      {
        v47 = 58;
      }

      if (v41)
      {
        v48 = 0;
        v49 = (v41 + 1);
        v50 = v40 - 1;
        while (1)
        {
          v51 = *v49;
          if (v51 < 0x30 || v51 >= v47)
          {
            if (v51 < 0x41 || v51 >= v46)
            {
              v53 = 0;
              v54 = 1;
              if (v51 < 0x61 || v51 >= v44)
              {
                return v53 | (v54 << 32);
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

          v55 = v48 * a7;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_106;
          }

          v56 = v51 + v52;
          v48 = v55 - v56;
          if (v55 < v56)
          {
            goto LABEL_106;
          }

          ++v49;
          if (!--v50)
          {
            goto LABEL_104;
          }
        }
      }

LABEL_105:
      v53 = 0;
      v54 = 0;
      return v53 | (v54 << 32);
    }

    goto LABEL_106;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
  return result;
}

uint64_t sub_22C8A5090(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C8A50D8()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  sub_22C36985C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C8A51C0()
{

  return sub_22C909FFC();
}

uint64_t sub_22C8A5230(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  return result;
}

uint64_t sub_22C8A5270()
{

  return sub_22C90B62C();
}

void sub_22C8A52B8()
{
  v3 = *(v0 - 112);
  v2 = *(v0 - 104);
  v4 = *(v0 - 96);

  sub_22C89E2A8();
}

uint64_t sub_22C8A52D4()
{

  return sub_22C909FFC();
}

id sub_22C8A52F8(uint64_t a1, uint64_t a2)
{

  return sub_22C8A3E5C(a1, a2, v2, 0);
}

uint64_t sub_22C8A5314@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_22C8A5368()
{

  return sub_22C909FFC();
}

unint64_t sub_22C8A5380(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_22C90A4AC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C8A542C(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    v3 = a3(0);
    sub_22C369914(v3);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C8A54C4(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_22C8A5524(uint64_t a1)
{
  v68 = sub_22C3A5908(&qword_27D9C11A0, &qword_22C92C288);
  sub_22C36985C(v68);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v67 = &v59 - v5;
  v6 = sub_22C3A5908(&qword_27D9C11A8, &unk_22C92C290);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v66 = &v59 - v10;
  v11 = sub_22C36BA0C();
  v12 = type metadata accessor for PromptTreeIdentifier.Label(v11);
  v13 = sub_22C3699B8(v12);
  v65 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v19 = v18 - v17;
  v63 = sub_22C3A5908(&qword_27D9BD050, &qword_22C917420);
  v20 = sub_22C36985C(v63);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  v62 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  v61 = v25;
  v69 = a1;
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9C11B0, qword_22C92C2A0);
    sub_22C37FDE8();
    v26 = sub_22C90B1EC();
  }

  else
  {
    v26 = MEMORY[0x277D84F98];
  }

  v27 = v69 + 64;
  v28 = 1 << *(v69 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(v69 + 64);
  v31 = (v28 + 63) >> 6;
  v32 = v26 + 64;

  v34 = 0;
  v64 = v19;
  v60 = v26;
  v35 = v67;
  if (!v30)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v37 = __clz(__rbit64(v30)) | (v34 << 6);
    v38 = v69;
    v39 = *(v69 + 48);
    v70 = *(v65 + 72);
    v40 = v61;
    sub_22C8AEF98(v39 + v70 * v37, v61, type metadata accessor for PromptTreeIdentifier.Label);
    v41 = *(*(v38 + 56) + 8 * v37);
    v42 = v63;
    *(v40 + *(v63 + 48)) = v41;
    v43 = v40;
    v44 = v62;
    sub_22C8AF090(v43, v62);
    v45 = *(v42 + 48);
    v46 = *(v68 + 48);
    sub_22C8AF100(v44, v35);
    v71 = *(v44 + v45);

    sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C3A5908(&qword_27D9BE4D0, &unk_22C91DB40);
    swift_dynamicCast();
    v47 = v66;
    sub_22C8AF100(v35, v66);
    v48 = *(v35 + v46);
    v49 = v64;
    sub_22C8AF100(v47, v64);
    v26 = v60;
    v50 = *(v60 + 40);
    sub_22C90B62C();
    sub_22C48640C();
    result = sub_22C90B66C();
    v51 = -1 << *(v26 + 32);
    v52 = result & ~v51;
    v53 = v52 >> 6;
    if (((-1 << v52) & ~*(v32 + 8 * (v52 >> 6))) == 0)
    {
      v55 = 0;
      v56 = (63 - v51) >> 6;
      while (++v53 != v56 || (v55 & 1) == 0)
      {
        v57 = v53 == v56;
        if (v53 == v56)
        {
          v53 = 0;
        }

        v55 |= v57;
        v58 = *(v32 + 8 * v53);
        if (v58 != -1)
        {
          v54 = __clz(__rbit64(~v58)) + (v53 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v54 = __clz(__rbit64((-1 << v52) & ~*(v32 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v30 &= v30 - 1;
    *(v32 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
    result = sub_22C8AF100(v49, *(v26 + 48) + v54 * v70);
    *(*(v26 + 56) + 8 * v54) = v48;
    ++*(v26 + 16);
  }

  while (v30);
LABEL_8:
  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v31)
    {

      return v26;
    }

    v30 = *(v27 + 8 * v36);
    ++v34;
    if (v30)
    {
      v34 = v36;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_22C8A598C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9C0E18, &qword_22C92B4B0);
    sub_22C37FDE8();
    v2 = sub_22C90B1EC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v25 = *v15;
    v26 = v15[1];

    swift_dynamicCast();
    sub_22C456E34(&v27, v29);
    sub_22C456E34(v29, v30);
    sub_22C456E34(v30, &v28);
    result = sub_22C36E2BC(v14, v13);
    v16 = result;
    if (v17)
    {
      v18 = (v2[6] + 16 * result);
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      v20 = (v2[7] + 32 * v16);
      sub_22C36FF94(v20);
      result = sub_22C456E34(&v28, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      result = sub_22C456E34(&v28, (v2[7] + 32 * result));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_22C8A5BD4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9C1168, &qword_22C92C250);
    v2 = sub_22C90B1EC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v16 = *v15;
    v17 = v15[1];
    v28 = MEMORY[0x277D837D0];
    v29 = MEMORY[0x277D42EC0];
    *&v27 = v16;
    *(&v27 + 1) = v17;
    sub_22C36C730(&v27, v31);
    sub_22C36C730(v31, v32);
    sub_22C36C730(v32, &v30);

    result = sub_22C36E2BC(v14, v13);
    v18 = result;
    if (v19)
    {
      v20 = (v2[6] + 16 * result);
      v21 = v20[1];
      *v20 = v14;
      v20[1] = v13;

      v22 = (v2[7] + 40 * v18);
      sub_22C36FF94(v22);
      result = sub_22C36C730(&v30, v22);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = (v2[6] + 16 * result);
      *v23 = v14;
      v23[1] = v13;
      result = sub_22C36C730(&v30, v2[7] + 40 * result);
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22C8A5E24(uint64_t a1, float a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a1 + 16) == i)
    {
      return 0;
    }

    if (*(a1 + 32 + 4 * i) == a2)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22C8A5E64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_22C90A31C())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_22C90A46C() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_22C90B4FC();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t ResponseGenerationPromptVersion.rawValue.getter()
{
  if (*v0)
  {
    return 14454;
  }

  else
  {
    return 14198;
  }
}

uint64_t ResponseGenerationModelProvider.init(sessionIdentityToken:promptVersion:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_22C9063DC();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v14 = v13 - v12;
  LODWORD(v15) = *a2;
  v16 = type metadata accessor for ResponseGenerationModelProvider(0);
  sub_22C379DF8(a1, &a3[*(v16 + 20)], &qword_27D9BB728, &qword_22C911230);
  sub_22C90405C();
  v17 = sub_22C9063CC();
  v18 = sub_22C90AACC();
  if (os_log_type_enabled(v17, v18))
  {
    sub_22C36BED8();
    v25 = a1;
    v19 = swift_slowAlloc();
    sub_22C370220();
    v24 = v9;
    v20 = v15;
    v15 = swift_slowAlloc();
    v26 = v15;
    *v19 = 136315138;
    if (v20)
    {
      v21 = 14454;
    }

    else
    {
      v21 = 14198;
    }

    v22 = sub_22C36F9F4(v21, 0xE200000000000000, &v26);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_22C366000, v17, v18, "Using prompt version %s", v19, 0xCu);
    sub_22C36FF94(v15);
    LOBYTE(v15) = v20;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    sub_22C36DD28(v25, &qword_27D9BB728, &qword_22C911230);
    result = (*(v24 + 8))(v14, v6);
  }

  else
  {

    sub_22C36DD28(a1, &qword_27D9BB728, &qword_22C911230);
    result = (*(v9 + 8))(v14, v6);
  }

  *a3 = v15;
  return result;
}

uint64_t ResponseGenerationModelProvider.getModelClient(locale:biomeRoot:)()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_22C90077C();
  v1[6] = v5;
  sub_22C3699B8(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  v1[9] = sub_22C3699D4();
  v12 = sub_22C9063DC();
  v1[10] = v12;
  sub_22C3699B8(v12);
  v1[11] = v13;
  v15 = *(v14 + 64);
  v1[12] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C8A62C8()
{
  v2 = v1[12];
  sub_22C90405C();
  v3 = sub_22C9063CC();
  v4 = sub_22C90AACC();
  if (os_log_type_enabled(v3, v4))
  {
    sub_22C3720F4();
    v5 = swift_slowAlloc();
    sub_22C383878(v5);
    _os_log_impl(&dword_22C366000, v3, v4, "Configuring GMS client without LLMCache", v0, 2u);
    v6 = sub_22C371B8C();
    MEMORY[0x2318B9880](v6);
  }

  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[9];
  v10 = v1[10];
  v12 = v1[7];
  v11 = v1[8];
  v13 = v1[5];
  v25 = v1[6];
  v26 = v1[4];
  v24 = v1[3];
  v14 = v1[2];

  v15 = *(v7 + 8);
  v16 = sub_22C50B478();
  v17(v16);
  v18 = type metadata accessor for ResponseGenerationModelProvider(0);
  sub_22C379DF8(v13 + *(v18 + 20), v9, &qword_27D9BB728, &qword_22C911230);
  (*(v12 + 16))(v11, v24, v25);
  v14[3] = type metadata accessor for ResponseGenerationGenerativeModelsClient(0);
  v14[4] = &off_283FC30B8;
  sub_22C557D04(v14);

  v19 = sub_22C36BA00();
  sub_22C8A6470(v19, v20, v26, v21);

  sub_22C369A24();

  return v22();
}

uint64_t sub_22C8A6470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v177 = a2;
  v174 = sub_22C90077C();
  v7 = sub_22C369824(v174);
  v172 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v159 = v12 - v11;
  sub_22C36BA0C();
  v161 = sub_22C9063DC();
  v13 = sub_22C369824(v161);
  v160 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698E4();
  sub_22C3698D4();
  v18 = MEMORY[0x28223BE20](v17);
  v168 = v154 - v19;
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  v154[1] = v20;
  v21 = sub_22C3A5908(&qword_27D9BBBF8, &qword_22C911238);
  sub_22C369914(v21);
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  v167 = v154 - v25;
  sub_22C36BA0C();
  v158 = sub_22C90199C();
  v26 = sub_22C369824(v158);
  v156 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v155 = v31 - v30;
  sub_22C36BA0C();
  v171 = sub_22C90124C();
  v32 = sub_22C369824(v171);
  v157 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA64();
  v169 = v37;
  v38 = sub_22C3A5908(&qword_27D9BBC00, &unk_22C911240);
  v39 = sub_22C369914(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA64();
  v166 = v43;
  sub_22C36BA0C();
  v164 = sub_22C90075C();
  v44 = sub_22C369824(v164);
  v176 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA64();
  v163 = v49;
  v50 = sub_22C3A5908(&qword_27D9C1178, &qword_22C92C258);
  v51 = sub_22C369914(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C3698E4();
  v165 = v54;
  MEMORY[0x28223BE20](v55);
  sub_22C36BA64();
  v175 = v56;
  sub_22C36BA0C();
  v57 = type metadata accessor for ResponseGenerationPreferences();
  v58 = sub_22C36985C(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C369838();
  v63 = v62 - v61;
  v170 = a1;
  v64 = sub_22C36BAFC();
  sub_22C379DF8(v64, v65, v66, v67);
  v68 = type metadata accessor for ResponseGenerationGenerativeModelsClient(0);
  v69 = a4;
  *(a4 + v68[7]) = a3;
  if (qword_2814357B8 != -1)
  {
    swift_once();
  }

  v70 = sub_22C37AA60(v57, qword_281437588);
  swift_beginAccess();
  sub_22C8AEF98(v70, v63, type metadata accessor for ResponseGenerationPreferences);
  v71 = v57[5];
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C386EA4();
  v173 = v178;
  v162 = v179;
  sub_22C8AEFF4(v63, type metadata accessor for ResponseGenerationPreferences);
  sub_22C8AF72C();
  v72 = v57[10];
  sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
  sub_22C386EA4();
  LODWORD(v72) = v178;
  v73 = BYTE4(v178);
  sub_22C8AF764();
  v74 = a4 + v68[8];
  *v74 = v72;
  *(v74 + 4) = v73;
  sub_22C8AF72C();
  v75 = v57[6];
  sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
  sub_22C386EA4();
  v76 = v178;
  sub_22C8AF764();
  *(a4 + v68[9]) = v76;
  sub_22C8AF72C();
  v77 = v63 + v57[7];
  sub_22C901EDC();
  v78 = v178;
  v79 = v179;
  sub_22C8AF764();
  v80 = (a4 + v68[10]);
  *v80 = v78;
  v80[1] = v79;
  sub_22C8AF72C();
  v81 = v57[11];
  sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
  sub_22C386EA4();
  v82 = v178;
  sub_22C8AF764();
  *(a4 + v68[11]) = v82;
  sub_22C8AF72C();
  v83 = v63 + v57[9];
  sub_22C901EDC();
  v84 = v178;
  v85 = v179;
  sub_22C8AF764();
  v86 = (a4 + v68[12]);
  *v86 = v84;
  v86[1] = v85;
  v87 = v162;

  v88 = v163;
  sub_22C90076C();
  sub_22C90074C();
  v90 = v176 + 8;
  v89 = *(v176 + 8);
  v91 = v164;
  v89(v88, v164);
  v92 = v175;
  sub_22C90123C();
  v166 = v69;
  v93 = v68;
  v176 = v90;
  v94 = v91;
  v95 = v174;
  v96 = v171;
  v97 = v167;
  sub_22C36C640(v92, 0, 1, v171);
  v167 = *(v93 + 24);
  v98 = v165;
  sub_22C379DF8(v92, v165, &qword_27D9C1178, &qword_22C92C258);
  v99 = sub_22C370B74(v98, 1, v96);
  v100 = v172;
  if (v99 == 1)
  {
    v171 = v93;
    sub_22C36DD28(v98, &qword_27D9C1178, &qword_22C92C258);
    sub_22C90405C();
    v101 = v159;
    v102 = v177;
    (*(v100 + 16))(v159, v177, v95);

    v103 = sub_22C9063CC();
    v104 = sub_22C90AADC();

    if (os_log_type_enabled(v103, v104))
    {
      sub_22C37FE78();
      v105 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *v105 = 136315394;
      v106 = sub_22C36F9F4(v173, v87, &v178);

      *(v105 + 4) = v106;
      *(v105 + 12) = 2080;
      v107 = v154[2];
      sub_22C90076C();
      v108 = v154[3];
      sub_22C90074C();
      v89(v107, v94);
      v109 = sub_22C9006FC();
      if (sub_22C370B74(v108, 1, v109) == 1)
      {
        sub_22C36DD28(v108, &qword_27D9BBC00, &unk_22C911240);
        v110 = 0xEE00656C61636F6CLL;
        v111 = 0x206E776F6E6B6E75;
      }

      else
      {
        v111 = sub_22C9006EC();
        v110 = v138;
        sub_22C36BBA8(v109);
        v140 = *(v139 + 8);
        v141 = sub_22C36CA88();
        v142(v141);
      }

      v143 = *(v172 + 8);
      v144 = v174;
      v143(v159, v174);
      v145 = sub_22C36F9F4(v111, v110, &v178);

      *(v105 + 14) = v145;
      _os_log_impl(&dword_22C366000, v103, v104, "Unable to create MC query %s with %s", v105, 0x16u);
      swift_arrayDestroy();
      v146 = sub_22C371B8C();
      MEMORY[0x2318B9880](v146);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v143(v177, v144);
      sub_22C36DD28(v170, &qword_27D9BB728, &qword_22C911230);
      sub_22C36DB14();
    }

    else
    {

      v121 = *(v100 + 8);
      v121(v102, v95);
      sub_22C36DD28(v170, &qword_27D9BB728, &qword_22C911230);
      v121(v101, v95);
      sub_22C36DB14();
    }

    sub_22C36EE3C();
    v147();
    sub_22C36DD28(v175, &qword_27D9C1178, &qword_22C92C258);
    v148 = *(v171 + 20);
    goto LABEL_21;
  }

  v112 = v157;
  v113 = v169;
  (*(v157 + 32))(v169, v98, v96);
  (*(v112 + 16))(v154[4], v113, v96);
  sub_22C90198C();
  v114 = v158;
  if (sub_22C370B74(v97, 1, v158) == 1)
  {
    sub_22C36DD28(v97, &qword_27D9BBBF8, &qword_22C911238);
    sub_22C90405C();

    v115 = sub_22C9063CC();
    v116 = sub_22C90AADC();

    if (os_log_type_enabled(v115, v116))
    {
      sub_22C36BED8();
      v117 = swift_slowAlloc();
      sub_22C370220();
      v118 = swift_slowAlloc();
      v178 = v118;
      *v117 = 136315138;
      v119 = sub_22C36F9F4(v173, v87, &v178);

      *(v117 + 4) = v119;
      _os_log_impl(&dword_22C366000, v115, v116, "Unknown model bundle %s", v117, 0xCu);
      sub_22C36FF94(v118);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v100 + 8))(v177, v174);
      sub_22C36DD28(v170, &qword_27D9BB728, &qword_22C911230);
      sub_22C36DB14();
      sub_22C36EE3C();
      v120();
      (*(v112 + 8))(v169, v171);
    }

    else
    {

      (*(v100 + 8))(v177, v174);
      sub_22C36DD28(v170, &qword_27D9BB728, &qword_22C911230);
      sub_22C36DB14();
      sub_22C36EE3C();
      v149();
      (*(v112 + 8))(v169, v96);
    }

    sub_22C36DD28(v175, &qword_27D9C1178, &qword_22C92C258);
    v148 = *(v93 + 20);
LABEL_21:
    v150 = sub_22C3A5908(&qword_27D9BBBC0, &qword_22C92C1C0);
    v151 = v166;
    result = sub_22C374D84(v166 + v148, v152, v153, v150);
    *(v151 + v167) = 0;
    return result;
  }

  v122 = v155;
  (*(v156 + 32))(v155, v97, v114);
  v123 = *(v93 + 20);
  sub_22C90127C();
  sub_22C8AF04C(&qword_281435820, MEMORY[0x277D29CE0]);
  v124 = v166;
  sub_22C90125C();
  v125 = sub_22C3A5908(&qword_27D9BBBC0, &qword_22C92C1C0);
  sub_22C36C640(v124 + v123, 0, 1, v125);
  v126 = sub_22C8A84C4(v122);
  *(v124 + v167) = v126;
  v127 = v177;
  if (v126)
  {

    sub_22C90405C();
    v128 = sub_22C9063CC();
    sub_22C90AACC();
    v129 = sub_22C370214();
    if (os_log_type_enabled(v129, v130))
    {
      sub_22C3720F4();
      v131 = swift_slowAlloc();
      *v131 = 0;
      sub_22C382ABC();
      _os_log_impl(v132, v133, v134, v135, v131, 2u);
      v96 = v171;
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    sub_22C36DB14();
    sub_22C36EE3C();
    v136();
    sub_22C90193C();
  }

  (*(v100 + 8))(v127, v174);
  sub_22C36DD28(v170, &qword_27D9BB728, &qword_22C911230);
  (*(v156 + 8))(v155, v158);
  (*(v112 + 8))(v169, v96);
  return sub_22C36DD28(v175, &qword_27D9C1178, &qword_22C92C258);
}

IntelligenceFlowPlannerRuntime::ResponseGenerationPromptVersion_optional __swiftcall ResponseGenerationPromptVersion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C90B21C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22C8A7380()
{
  v0 = sub_22C90B21C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22C8A73CC()
{
  v0 = sub_22C90B21C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22C8A7448@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseGenerationPromptVersion.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE200000000000000;
  return result;
}

uint64_t sub_22C8A7474(uint64_t a1, unint64_t a2, char a3)
{
  v94 = a2;
  v98 = a1;
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v93 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v87 - v13;
  v15 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  v20 = &v87 - v19;
  v21 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C369824(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v26);
  v28 = &v87 - v27;
  v29 = sub_22C90A17C();
  v30 = sub_22C369824(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v37 = v36 - v35;
  if (!a3)
  {
    v87 = v34;
    v88 = v33;
    v90 = v23;
    v91 = v11;
    v45 = v93;
    v89 = v4;
    sub_22C90306C();
    v46 = v95;
    v92 = v21;
    sub_22C90308C();
    v47 = v28;
    if (v46)
    {
      v88 = v28;
      v48 = v46;
      v49 = v94;
      v50 = v92;
      v51 = v90;
    }

    else
    {
      v95 = 0;
      v65 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
      v66 = sub_22C370B74(v20, 1, v65);
      sub_22C36DD28(v20, &qword_27D9BC160, &unk_22C912170);
      v51 = v90;
      if (v66 == 1)
      {
        sub_22C90405C();
        v67 = v94;

        v68 = sub_22C9063CC();
        v69 = sub_22C90AACC();

        if (os_log_type_enabled(v68, v69))
        {
          sub_22C36BED8();
          v70 = swift_slowAlloc();
          sub_22C370220();
          v71 = swift_slowAlloc();
          v96 = v71;
          *v70 = 136315138;
          *(v70 + 4) = sub_22C36F9F4(v98, v67, &v96);
          sub_22C376098();
          _os_log_impl(v72, v73, v74, v75, v70, 0xCu);
          sub_22C36FF94(v71);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          sub_22C369B50();
          MEMORY[0x2318B9880]();
        }

        (*(v93 + 8))(v14, v89);
        (*(v51 + 8))(v47, v92);
        goto LABEL_17;
      }

      v49 = v94;
      v96 = v98;
      v97 = v94;
      sub_22C379BF8();
      sub_22C3858B4();
      sub_22C37A4C0();
      sub_22C3800C4();
      sub_22C386130();
      sub_22C90A15C();
      sub_22C386A34();
      sub_22C90A12C();
      v78 = v77;

      (*(v87 + 8))(v37, v88);
      if (v78 >> 60 == 15)
      {
        v88 = v28;
        sub_22C8AEE80();
        sub_22C37A198();
        v48 = swift_allocError();
        swift_willThrow();
        v50 = v92;
      }

      else
      {
        v79 = sub_22C8FFECC();
        v80 = *(v79 + 48);
        v81 = *(v79 + 52);
        swift_allocObject();
        sub_22C8FFEBC();
        sub_22C8AEED4();
        sub_22C3884B4();
        v82 = v95;
        sub_22C8FFEAC();
        v50 = v92;
        if (!v82)
        {
          (*(v51 + 8))(v28, v92);

          v85 = sub_22C50B478();
          sub_22C3C8114(v85, v86);
          return v96;
        }

        v88 = v28;

        v83 = sub_22C50B478();
        sub_22C3C8114(v83, v84);
        v48 = v82;
      }

      v45 = v93;
    }

    v52 = v91;
    sub_22C90405C();

    v53 = v48;
    v54 = sub_22C9063CC();
    v55 = sub_22C90AACC();

    if (os_log_type_enabled(v54, v55))
    {
      sub_22C37FE78();
      v56 = swift_slowAlloc();
      swift_slowAlloc();
      v95 = 0;
      sub_22C383540();
      v57 = swift_slowAlloc();
      v96 = v57;
      *v56 = 138412546;
      v58 = v48;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v59;
      *v45 = v59;
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_22C36F9F4(v98, v49, &v96);
      _os_log_impl(&dword_22C366000, v54, v55, "Error trying to parse response JSON, %@:\n%s", v56, 0x16u);
      sub_22C36DD28(v45, &qword_27D9BB158, qword_22C910FD0);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C36FF94(v57);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v45 + 8))(v91, v89);
      (*(v51 + 8))(v88, v92);
    }

    else
    {

      (*(v45 + 8))(v52, v89);
      (*(v51 + 8))(v88, v50);
    }

LABEL_17:

    return v98;
  }

  if (a3 != 1)
  {
    goto LABEL_17;
  }

  v38 = v95;
  v96 = v98;
  v97 = v94;
  sub_22C379BF8();
  v40 = v39;
  v42 = v41;
  sub_22C3858B4();
  sub_22C37A4C0();
  sub_22C3800C4();
  sub_22C386130();
  sub_22C90A15C();
  sub_22C386A34();
  sub_22C90A12C();
  v44 = v43;

  (*(v42 + 8))(v37, v40);
  if (v44 >> 60 != 15)
  {
    v60 = sub_22C8FFECC();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    sub_22C8FFEBC();
    sub_22C8AEED4();
    sub_22C3884B4();
    sub_22C8FFEAC();

    v63 = sub_22C50B478();
    sub_22C3C8114(v63, v64);
    if (v38)
    {
      return v98;
    }

    return v96;
  }

  sub_22C8AEE80();
  sub_22C37A198();
  swift_allocError();
  swift_willThrow();
  return v98;
}

uint64_t sub_22C8A7C70(uint64_t a1, float a2)
{
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v12 = (v10 - v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  if ((a1 & 0x100000000) != 0)
  {
    sub_22C90405C();
    v19 = sub_22C9063CC();
    sub_22C90AABC();
    v27 = sub_22C370214();
    if (!os_log_type_enabled(v27, v28))
    {
      v26 = 1;
      v18 = v12;
      goto LABEL_13;
    }

    sub_22C3720F4();
    v29 = swift_slowAlloc();
    *v29 = 0;
    sub_22C382ABC();
    _os_log_impl(v30, v31, v32, v33, v29, 2u);
    v26 = 1;
    v18 = v12;
  }

  else if (*&a1 <= a2)
  {
    sub_22C90405C();

    v19 = sub_22C9063CC();
    v34 = sub_22C90AABC();

    if (!os_log_type_enabled(v19, v34))
    {
      v26 = 1;
      goto LABEL_13;
    }

    sub_22C37FE78();
    v35 = swift_slowAlloc();
    sub_22C37FB74(v35, 3.8521e-34);
    _os_log_impl(&dword_22C366000, v19, v34, "Reflection score %f >= %f, accepting model response", v35, 0x16u);
    v26 = 1;
  }

  else
  {
    sub_22C90405C();

    v19 = sub_22C9063CC();
    v20 = sub_22C90AABC();

    if (!os_log_type_enabled(v19, v20))
    {
      v26 = 0;
      v18 = v16;
      goto LABEL_13;
    }

    sub_22C37FE78();
    v21 = swift_slowAlloc();
    sub_22C37FB74(v21, 3.8521e-34);
    sub_22C382ABC();
    _os_log_impl(v22, v23, v24, v25, v21, 0x16u);
    v26 = 0;
    v18 = v16;
  }

  sub_22C369B50();
  MEMORY[0x2318B9880]();
LABEL_13:

  (*(v7 + 8))(v18, v4);
  return v26;
}

uint64_t sub_22C8A7F1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C8A7FE0(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_22C8A8014(void *a1)
{
  v3 = sub_22C3A5908(&qword_27D9C11E8, &qword_22C92C570);
  sub_22C369824(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  v11 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C8AF4F0();
  sub_22C90B6CC();
  v13[15] = 0;
  sub_22C90B3CC();
  if (!v1)
  {
    v13[14] = 1;
    sub_22C90B3FC();
  }

  return (*(v5 + 8))(v10, v3);
}

float sub_22C8A8184(uint64_t *a1)
{
  v4 = sub_22C3A5908(&qword_27D9C11D8, &qword_22C92C568);
  sub_22C369824(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v8 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C8AF4F0();
  sub_22C90B6BC();
  if (!v1)
  {
    sub_22C90B2DC();
    sub_22C90B30C();
    v2 = v10;
    v11 = sub_22C389270();
    v12(v11);
  }

  sub_22C36FF94(a1);
  return v2;
}

uint64_t sub_22C8A8338(uint64_t a1)
{
  v2 = sub_22C8AF49C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8A8374(uint64_t a1)
{
  v2 = sub_22C8AF49C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C8A83D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C8A7F1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C8A83FC(uint64_t a1)
{
  v2 = sub_22C8AF4F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C8A8438(uint64_t a1)
{
  v2 = sub_22C8AF4F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22C8A8474(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_22C8A8184(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_22C8A84A4(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  return sub_22C8A8014(a1);
}

uint64_t sub_22C8A84C4(uint64_t a1)
{
  v31[0] = a1;
  v2 = sub_22C90197C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31[1] = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22C901B5C();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v33);
  v32 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - v9;
  v11 = sub_22C90876C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v31 - v18;
  sub_22C379DF8(v1, v31 - v18, &qword_27D9BB728, &qword_22C911230);
  if (sub_22C370B74(v19, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v19, v11);
    sub_22C3FCDA0();
    (*(v12 + 8))(v15, v11);
  }

  sub_22C3A5908(&qword_27D9BBC10, &unk_22C911250);
  v20 = sub_22C90199C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22C90F800;
  (*(v21 + 16))(v24 + v23, v31[0], v20);
  sub_22C90196C();
  sub_22C901B4C();
  v25 = v33;
  (*(v5 + 16))(v32, v10, v33);
  v26 = sub_22C90194C();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_22C90190C();
  (*(v5 + 8))(v10, v25);
  return v29;
}

uint64_t sub_22C8A88BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = v7;
  *(v8 + 56) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = sub_22C9018FC();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = sub_22C901ACC();
  *(v8 + 104) = v12;
  v13 = *(v12 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v15 = sub_22C9063DC();
  *(v8 + 128) = v15;
  v16 = *(v15 - 8);
  *(v8 + 136) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v18 = sub_22C901D8C();
  *(v8 + 168) = v18;
  v19 = *(v18 - 8);
  *(v8 + 176) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v21 = sub_22C90069C();
  *(v8 + 192) = v21;
  v22 = *(v21 - 8);
  *(v8 + 200) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v24 = sub_22C90634C();
  *(v8 + 216) = v24;
  v25 = *(v24 - 8);
  *(v8 + 224) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v27 = sub_22C90636C();
  *(v8 + 248) = v27;
  v28 = *(v27 - 8);
  *(v8 + 256) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8A8BD8, 0, 0);
}

uint64_t sub_22C8A8BD8()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 30);
  sub_22C9036AC();
  sub_22C90633C();
  v3 = sub_22C90635C();
  v4 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v5 = *(v0 + 30);
    sub_22C3720F4();
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v3, v4, v7, "ResponseGeneration.modelInference", "", v6, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v9 = *(v0 + 32);
  v8 = *(v0 + 33);
  v11 = *(v0 + 30);
  v10 = *(v0 + 31);
  v13 = *(v0 + 28);
  v12 = *(v0 + 29);
  v15 = *(v0 + 26);
  v14 = *(v0 + 27);
  v38 = *(v0 + 9);

  (*(v13 + 16))(v12, v11, v14);
  v16 = sub_22C9063AC();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 34) = sub_22C90639C();
  v19 = *(v13 + 8);
  v20 = sub_22C36CA88();
  v21(v20);
  v22 = *(v9 + 8);
  v23 = sub_22C36D264();
  v24(v23);
  sub_22C90068C();
  v25 = *(v38 + *(type metadata accessor for ResponseGenerationGenerativeModelsClient(0) + 28));
  *(v0 + 35) = v25;
  if (v25)
  {
    v26 = *(v0 + 26);
    sub_22C89A870();
    sub_22C8A2834();
  }

  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 36) = v27;
  *v27 = v28;
  v27[1] = sub_22C8A8DF4;
  v29 = *(v0 + 26);
  v30 = *(v0 + 23);
  v31 = *(v0 + 8);
  v32 = v0[7];
  v34 = *(v0 + 5);
  v33 = *(v0 + 6);
  v35 = *(v0 + 3);
  v36 = *(v0 + 4);

  return sub_22C8AC900(v30, v35, v36, v31, v29, v33, v34, v32);
}

uint64_t sub_22C8A8DF4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  sub_22C369A30();
  *v7 = v6;
  *(v8 + 296) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8A8EF4()
{
  v1 = v0[20];
  sub_22C90405C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    sub_22C3720F4();
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22C366000, v2, v3, "Collecting from completion stream", v4, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[12];

  v11 = *(v9 + 8);
  v0[38] = v11;
  v11(v7, v8);
  sub_22C8AF04C(&qword_27D9C1148, MEMORY[0x277D71D98]);
  sub_22C901D9C();
  v12 = *(MEMORY[0x277D719F0] + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[39] = v13;
  *v13 = v14;
  v13[1] = sub_22C8A927C;
  v15 = v0[15];
  v16 = v0[12];

  return MEMORY[0x2821D97D8](v15);
}

uint64_t sub_22C8A9084()
{
  v1 = v0[37];
  v2 = sub_22C382E60();
  v3(v2);
  sub_22C90405C();
  v4 = v1;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();

  if (os_log_type_enabled(v5, v6))
  {
    sub_22C36BED8();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    sub_22C382ABC();
    sub_22C5CA61C();
    _os_log_impl(v11, v12, v13, v14, v15, v16);
    sub_22C36DD28(v8, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v17 = v0[35];
  v19 = v0[17];
  v18 = v0[18];
  v20 = v0[16];

  v21 = *(v19 + 8);
  v22 = sub_22C36D264();
  v23(v22);
  if (v17)
  {
    v24 = v0[35];
    sub_22C89A870();
    sub_22C8A3204();
  }

  sub_22C36DC78();
  sub_22C8A97E8();

  sub_22C369A24();

  return v25();
}

uint64_t sub_22C8A927C()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = v2[39];
  *v4 = *v1;
  *(v3 + 320) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C8A93DC()
{
  v1 = v0[19];
  sub_22C90405C();
  v2 = sub_22C9063CC();
  sub_22C90AACC();
  v3 = sub_22C370214();
  if (os_log_type_enabled(v3, v4))
  {
    sub_22C3720F4();
    v5 = swift_slowAlloc();
    *v5 = 0;
    sub_22C376098();
    _os_log_impl(v6, v7, v8, v9, v5, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v10 = v0[38];
  v11 = v0[35];
  v12 = v0[19];
  v13 = v0[16];
  v14 = v0[17];

  v15 = sub_22C36BAFC();
  v10(v15);
  if (v11)
  {
    v16 = v0[35];
    sub_22C89A870();
    sub_22C8A2CE0();
  }

  v17 = v0[34];
  v31 = v0[33];
  v32 = v0[30];
  v19 = v0[25];
  v18 = v0[26];
  v20 = v0[24];
  v33 = v0[29];
  v34 = v0[20];
  v35 = v0[19];
  v21 = v0[18];
  v23 = v0[14];
  v22 = v0[15];
  v24 = v0[13];
  v36 = v0[12];
  v25 = v0[2];
  (*(v0[22] + 8))(v0[23], v0[21]);
  v26 = *(v19 + 8);
  v27 = sub_22C37170C();
  v28(v27);
  (*(v23 + 32))(v25, v22, v24);
  sub_22C8A97E8();

  sub_22C369A24();

  return v29();
}

uint64_t sub_22C8A95D8()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[40];
  v2 = sub_22C382E60();
  v3(v2);
  sub_22C90405C();
  v4 = v1;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();

  if (os_log_type_enabled(v5, v6))
  {
    sub_22C36BED8();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    sub_22C382ABC();
    sub_22C5CA61C();
    _os_log_impl(v11, v12, v13, v14, v15, v16);
    sub_22C36DD28(v8, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v17 = v0[35];
  v19 = v0[17];
  v18 = v0[18];
  v20 = v0[16];

  v21 = *(v19 + 8);
  v22 = sub_22C36D264();
  v23(v22);
  if (v17)
  {
    v24 = v0[35];
    sub_22C89A870();
    sub_22C8A3204();
  }

  sub_22C36DC78();
  sub_22C8A97E8();

  sub_22C369A24();

  return v25();
}

uint64_t sub_22C8A97E8()
{
  v31 = sub_22C90637C();
  v29 = *(v31 - 1);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9036AC();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v30 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v26 = v9;
    v27 = v8;
    v28 = v3;

    sub_22C9063BC();

    v14 = v29;
    v15 = v31;
    if ((*(v29 + 88))(v2, v31) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v2, v15);
      v31 = "%s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2080;
    sub_22C90366C();
    v21 = sub_22C90AF7C();
    v23 = sub_22C36F9F4(v21, v22, &v32);

    *(v19 + 4) = v23;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v30, v24, "ResponseGeneration.modelInference", v31, v19, 0xCu);
    sub_22C36FF94(v20);
    MEMORY[0x2318B9880](v20, -1, -1);
    MEMORY[0x2318B9880](v19, -1, -1);

    (*(v4 + 8))(v7, v28);
    return (*(v26 + 8))(v12, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_22C8A9B8C(uint64_t a1, uint64_t a2)
{
  v79 = sub_22C9063DC();
  v4 = sub_22C369824(v79);
  v70 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v10 = (v8 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v69 - v13;
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v69 = v15;
  v71 = a1;
  v72 = a2;
  v77 = 10;
  v78 = 0xE100000000000000;
  v75 = 4091452;
  v76 = 0xE300000000000000;
  sub_22C3858B4();
  sub_22C37A4C0();
  v16 = sub_22C3800C4();
  v18 = v17;
  sub_22C90AF7C();
  sub_22C386130();
  sub_22C386A34();
  sub_22C8A5E64(v19, v20, v21, v22);
  if (v23)
  {

    sub_22C90405C();
    v24 = sub_22C9063CC();
    sub_22C90AADC();
    v25 = sub_22C370214();
    if (os_log_type_enabled(v25, v26))
    {
      sub_22C3720F4();
      v27 = swift_slowAlloc();
      sub_22C383878(v27);
      sub_22C37B3D4();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      v14 = v10;
LABEL_11:
      v66 = sub_22C371B8C();
      MEMORY[0x2318B9880](v66);
      goto LABEL_12;
    }

    v14 = v10;
    goto LABEL_12;
  }

  sub_22C386A34();
  v33 = sub_22C90A4AC();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v77 = v16;
  v78 = v18;
  v71 = v33;
  v72 = v35;
  v73 = v37;
  v74 = v39;
  sub_22C3ECFB8();
  sub_22C8AEF44();
  v40 = sub_22C90A02C();

  if ((v40 & 1) == 0)
  {

    sub_22C90405C();
    v24 = sub_22C9063CC();
    sub_22C90AADC();
    v58 = sub_22C370214();
    if (os_log_type_enabled(v58, v59))
    {
      sub_22C3720F4();
      v60 = swift_slowAlloc();
      sub_22C383878(v60);
      sub_22C37B3D4();
      _os_log_impl(v61, v62, v63, v64, v65, 2u);
      goto LABEL_11;
    }

LABEL_12:

    (*(v70 + 8))(v14, v79);
    sub_22C8AEE2C();
    sub_22C37A198();
    swift_allocError();
    *v67 = 3;
    swift_willThrow();
    return sub_22C36CA88();
  }

  v41 = sub_22C36D39C();
  sub_22C8A5380(v41, v42, v18);
  sub_22C386130();

  v43 = sub_22C36BA00();
  MEMORY[0x2318B76D0](v43);

  v44 = v69;
  sub_22C90405C();

  v45 = sub_22C9063CC();
  v46 = sub_22C90AABC();

  if (os_log_type_enabled(v45, v46))
  {
    sub_22C36BED8();
    v47 = swift_slowAlloc();
    sub_22C370220();
    v48 = swift_slowAlloc();
    v71 = v48;
    *v47 = 136380675;
    v49 = sub_22C36CA88();
    *(v47 + 4) = sub_22C36F9F4(v49, v50, v51);
    sub_22C5CA61C();
    _os_log_impl(v52, v53, v54, v55, v56, v57);
    sub_22C36FF94(v48);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v70 + 8))(v44, v79);
  return sub_22C36CA88();
}

uint64_t sub_22C8A9FBC()
{
  sub_22C369980();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v5 = sub_22C90000C();
  v1[17] = v5;
  sub_22C3699B8(v5);
  v1[18] = v6;
  v8 = *(v7 + 64);
  v1[19] = sub_22C3699D4();
  v9 = sub_22C9019FC();
  v1[20] = v9;
  sub_22C3699B8(v9);
  v1[21] = v10;
  v12 = *(v11 + 64);
  v1[22] = sub_22C3699D4();
  v13 = sub_22C901A1C();
  v1[23] = v13;
  sub_22C3699B8(v13);
  v1[24] = v14;
  v16 = *(v15 + 64);
  v1[25] = sub_22C3699D4();
  v17 = sub_22C901A4C();
  v1[26] = v17;
  sub_22C3699B8(v17);
  v1[27] = v18;
  v20 = *(v19 + 64);
  v1[28] = sub_22C3699D4();
  v21 = sub_22C901A8C();
  v1[29] = v21;
  sub_22C3699B8(v21);
  v1[30] = v22;
  v24 = *(v23 + 64);
  v1[31] = sub_22C3699D4();
  v25 = sub_22C901A6C();
  v1[32] = v25;
  sub_22C3699B8(v25);
  v1[33] = v26;
  v28 = *(v27 + 64);
  v1[34] = sub_22C36D0D4();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v29 = sub_22C3A5908(&qword_27D9BBC28, &qword_22C911298);
  sub_22C369914(v29);
  v31 = *(v30 + 64);
  v1[37] = sub_22C36D0D4();
  v1[38] = swift_task_alloc();
  v32 = sub_22C9019AC();
  v1[39] = v32;
  sub_22C3699B8(v32);
  v1[40] = v33;
  v35 = *(v34 + 64);
  v1[41] = sub_22C3699D4();
  v36 = sub_22C901ACC();
  v1[42] = v36;
  sub_22C3699B8(v36);
  v1[43] = v37;
  v39 = *(v38 + 64);
  v1[44] = sub_22C3699D4();
  v40 = sub_22C90444C();
  v1[45] = v40;
  sub_22C3699B8(v40);
  v1[46] = v41;
  v43 = *(v42 + 64);
  v1[47] = sub_22C3699D4();
  v44 = sub_22C3A5908(&qword_27D9C1110, &unk_22C92C180);
  sub_22C369914(v44);
  v46 = *(v45 + 64);
  v1[48] = sub_22C3699D4();
  v47 = sub_22C3A5908(&qword_27D9BBBC0, &qword_22C92C1C0);
  v1[49] = v47;
  sub_22C3699B8(v47);
  v1[50] = v48;
  v50 = *(v49 + 64);
  v1[51] = sub_22C36D0D4();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v51 = type metadata accessor for ResponseGenerationGenerativeModelsClient(0);
  v1[54] = v51;
  sub_22C369914(v51);
  v53 = *(v52 + 64);
  v1[55] = sub_22C36D0D4();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v54 = sub_22C9063DC();
  v1[62] = v54;
  sub_22C3699B8(v54);
  v1[63] = v55;
  v57 = *(v56 + 64);
  v1[64] = sub_22C36D0D4();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v58, v59, v60);
}

uint64_t sub_22C8AA4C0()
{
  v206 = v0;
  v1 = *(*(v0 + 128) + *(*(v0 + 432) + 24));
  *(v0 + 576) = v1;
  if (!v1)
  {
    v20 = *(v0 + 512);
    sub_22C90405C();
    v21 = sub_22C9063CC();
    sub_22C90AADC();
    v22 = sub_22C370214();
    if (os_log_type_enabled(v22, v23))
    {
      sub_22C3720F4();
      v24 = swift_slowAlloc();
      *v24 = 0;
      sub_22C376098();
      _os_log_impl(v25, v26, v27, v28, v24, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v30 = *(v0 + 504);
    v29 = *(v0 + 512);
    v31 = *(v0 + 496);

    v32 = *(v30 + 8);
    v33 = sub_22C36BAFC();
    v34(v33);
    sub_22C8AEE2C();
    sub_22C37A198();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    goto LABEL_18;
  }

  v2 = *(v0 + 568);
  v3 = *(v0 + 488);

  sub_22C90405C();
  sub_22C3876AC();
  v4 = sub_22C372164();
  sub_22C8AEF98(v4, v5, v6);
  v7 = sub_22C9063CC();
  sub_22C90AACC();
  v8 = sub_22C370214();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 488);
  if (v10)
  {
    v12 = *(v0 + 432);
    sub_22C36BED8();
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = *(v11 + *(v12 + 36));
    sub_22C36A5A4();
    sub_22C8AEFF4(v11, v15);
    *(v13 + 4) = v14;
    sub_22C382ABC();
    _os_log_impl(v16, v17, v18, v19, v13, 0xCu);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {

    sub_22C36A5A4();
    sub_22C8AEFF4(v11, v36);
  }

  v37 = *(v0 + 432);
  v39 = *(v0 + 384);
  v38 = *(v0 + 392);
  v40 = *(v0 + 128);
  v41 = *(*(v0 + 504) + 8);
  (v41)(*(v0 + 568), *(v0 + 496));
  sub_22C379DF8(v40 + *(v37 + 20), v39, &qword_27D9C1110, &unk_22C92C180);
  if (sub_22C370B74(v39, 1, v38) == 1)
  {
    sub_22C36DD28(*(v0 + 384), &qword_27D9C1110, &unk_22C92C180);
    sub_22C8AEE2C();
    sub_22C37A198();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();

LABEL_18:
    sub_22C37F668();
    v124 = *(v0 + 536);
    v125 = *(v0 + 528);
    v126 = *(v0 + 520);
    v127 = *(v0 + 512);
    v129 = *(v0 + 480);
    v128 = *(v0 + 488);
    v169 = *(v0 + 472);
    v170 = *(v0 + 464);
    v171 = *(v0 + 456);
    v172 = *(v0 + 448);
    v173 = *(v0 + 440);
    v174 = *(v0 + 424);
    v175 = *(v0 + 416);
    v176 = *(v0 + 408);
    v177 = *(v0 + 384);
    v178 = *(v0 + 376);
    v179 = *(v0 + 352);
    v181 = *(v0 + 328);
    v183 = *(v0 + 304);
    v184 = *(v0 + 296);
    v186 = *(v0 + 288);
    v188 = *(v0 + 280);
    v190 = *(v0 + 272);
    v191 = *(v0 + 248);
    v194 = *(v0 + 224);
    v197 = *(v0 + 200);
    v200 = *(v0 + 176);
    v203 = *(v0 + 152);

    sub_22C369A24();

    return v130();
  }

  v192 = v41;
  v43 = *(v0 + 560);
  v45 = *(v0 + 472);
  v44 = *(v0 + 480);
  v46 = *(v0 + 464);
  v198 = *(v0 + 456);
  v201 = *(v0 + 448);
  v204 = v1;
  v48 = *(v0 + 416);
  v47 = *(v0 + 424);
  v49 = *(v0 + 392);
  v50 = *(v0 + 400);
  v51 = *(v0 + 128);
  (*(v50 + 32))(v47, *(v0 + 384), v49);
  sub_22C90405C();
  v189 = *(v50 + 16);
  v189(v48, v47, v49);
  sub_22C8AEF98(v51, v44, type metadata accessor for ResponseGenerationGenerativeModelsClient);
  sub_22C8AEF98(v51, v45, type metadata accessor for ResponseGenerationGenerativeModelsClient);
  sub_22C8AEF98(v51, v46, type metadata accessor for ResponseGenerationGenerativeModelsClient);
  sub_22C8AEF98(v51, v198, type metadata accessor for ResponseGenerationGenerativeModelsClient);
  sub_22C8AEF98(v51, v201, type metadata accessor for ResponseGenerationGenerativeModelsClient);
  v52 = sub_22C9063CC();
  v53 = sub_22C90AABC();
  v202 = v52;
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 560);
  v56 = *(v0 + 496);
  v57 = *(v0 + 504);
  v59 = *(v0 + 472);
  v58 = *(v0 + 480);
  v196 = *(v0 + 464);
  v199 = *(v0 + 448);
  if (v54)
  {
    v60 = *(v0 + 432);
    v61 = *(v0 + 416);
    v193 = *(v0 + 560);
    v185 = v53;
    v62 = *(v0 + 392);
    v63 = *(v0 + 400);
    v180 = *(v0 + 456);
    v187 = *(v0 + 496);
    v64 = swift_slowAlloc();
    v205[0] = swift_slowAlloc();
    *v64 = 136316418;
    sub_22C50B118(&qword_27D9C1128, &qword_27D9BBBC0, &qword_22C92C1C0);
    v182 = v57;
    v65 = sub_22C90B47C();
    v67 = v66;
    v68 = *(v63 + 8);
    v69 = sub_22C36BBCC();
    v70(v69);
    v71 = sub_22C36F9F4(v65, v67, v205);

    *(v64 + 4) = v71;
    *(v64 + 12) = 2080;
    v72 = v58 + v60[8];
    v73 = *v72;
    LOBYTE(v72) = *(v72 + 4);
    *(v0 + 616) = v73;
    *(v0 + 620) = v72;
    sub_22C3A5908(&qword_27D9C1130, &unk_22C92C7C0);
    v74 = sub_22C90A1AC();
    v76 = v75;
    sub_22C8AEFF4(v58, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    v77 = sub_22C36F9F4(v74, v76, v205);

    *(v64 + 14) = v77;
    *(v64 + 22) = 2048;
    v78 = *(v59 + v60[9]);
    sub_22C8AEFF4(v59, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    *(v64 + 24) = v78;
    *(v64 + 32) = 2080;
    v79 = (v196 + v60[10]);
    v80 = *v79;
    v81 = v79[1];

    sub_22C8AEFF4(v196, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    v82 = sub_22C36F9F4(v80, v81, v205);

    *(v64 + 34) = v82;
    *(v64 + 42) = 2048;
    v83 = *(v180 + v60[11]);
    sub_22C8AEFF4(v180, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    *(v64 + 44) = v83;
    *(v64 + 52) = 2080;
    v84 = (v199 + v60[12]);
    v85 = *v84;
    v86 = v84[1];

    sub_22C8AEFF4(v199, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    v87 = sub_22C36BAFC();
    v90 = sub_22C36F9F4(v87, v88, v89);

    *(v64 + 54) = v90;
    _os_log_impl(&dword_22C366000, v202, v185, "Model configuration:\n  Bundle identifier: %s\n  Minimum reflection score: %s\n  Timeout: %f\n  Prompt version: %s\n  Max tokens: %ld\n  Response format: %s", v64, 0x3Eu);
    swift_arrayDestroy();
    v91 = sub_22C371B8C();
    MEMORY[0x2318B9880](v91);
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v92 = *(v182 + 8);
    v92(v193, v187);
  }

  else
  {
    v93 = *(v0 + 416);
    v94 = *(v0 + 392);
    v95 = *(v0 + 400);
    sub_22C8AEFF4(*(v0 + 456), type metadata accessor for ResponseGenerationGenerativeModelsClient);

    sub_22C8AEFF4(v199, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    sub_22C8AEFF4(v196, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    sub_22C8AEFF4(v59, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    sub_22C8AEFF4(v58, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    v96 = *(v95 + 8);
    v97 = sub_22C36BBCC();
    v98(v97);
    v92 = v192;
    v192(v55, v56);
  }

  *(v0 + 584) = v92;
  v99 = *(v0 + 424);
  v100 = *(v0 + 392);
  v101 = *(v0 + 128);
  v102 = &v101[*(*(v0 + 432) + 40)];
  v103 = *v102;
  v104 = *(v102 + 1);
  sub_22C90126C();
  v106 = v105;
  v107 = sub_22C36D264();
  LOBYTE(v99) = sub_22C8AC4B8(v107, v108, v109, v106);

  if ((v99 & 1) == 0)
  {
    v110 = *(v0 + 552);
    sub_22C90405C();
    v111 = sub_22C9063CC();
    sub_22C90AAEC();
    v112 = sub_22C370214();
    if (os_log_type_enabled(v112, v113))
    {
      sub_22C3720F4();
      v114 = swift_slowAlloc();
      sub_22C383878(v114);
      sub_22C382ABC();
      _os_log_impl(v115, v116, v117, v118, v101, 2u);
      v119 = sub_22C371B8C();
      MEMORY[0x2318B9880](v119);
    }

    v120 = *(v0 + 552);
    v121 = *(v0 + 496);
    v122 = *(v0 + 504);

    v123 = sub_22C36BAFC();
    (v92)(v123);
  }

  v132 = sub_22C8A9B8C(*(v0 + 112), *(v0 + 120));
  v134 = v133;
  v135 = *(v0 + 544);
  sub_22C3A5908(&qword_27D9BAB38, &qword_22C92C1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = 0x746E65746E6F63;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v132;
  *(inited + 56) = v134;
  v137 = sub_22C909F0C();
  *(v0 + 592) = v137;
  sub_22C90405C();
  v138 = sub_22C9063CC();
  sub_22C90AABC();
  v139 = sub_22C370214();
  v141 = os_log_type_enabled(v139, v140);
  v142 = *(v0 + 544);
  v143 = *(v0 + 496);
  v144 = *(v0 + 504);
  if (v141)
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C383540();
    v195 = v92;
    v145 = swift_slowAlloc();
    v205[0] = v145;
    *v135 = 136315138;
    *(v135 + 4) = sub_22C36F9F4(0xD000000000000041, 0x800000022C92F1D0, v205);
    sub_22C37B3D4();
    _os_log_impl(v146, v147, v148, v149, v150, 0xCu);
    sub_22C36FF94(v145);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v151 = sub_22C371B8C();
    MEMORY[0x2318B9880](v151);

    v152 = sub_22C50B478();
    v195(v152);
  }

  else
  {

    v153 = sub_22C50B478();
    (v92)(v153);
  }

  v154 = *(v0 + 424);
  v155 = *(v0 + 432);
  v156 = *(v0 + 408);
  v157 = *(v0 + 392);
  v158 = *(v0 + 376);
  v159 = *(v0 + 128);
  sub_22C909F0C();
  v160 = sub_22C36BA00();
  (v189)(v160);
  sub_22C90442C();
  v161 = *(v159 + *(v155 + 36));
  v162 = *(v159 + *(v155 + 44));
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 600) = v163;
  *v163 = v164;
  v163[1] = sub_22C8AB0BC;
  v165 = *(v0 + 376);
  v166 = *(v0 + 352);
  v167 = *(v0 + 128);
  v168 = MEMORY[0x277D84F90];

  return sub_22C8A88BC(v166, v165, v137, v204, v168, v162, v161);
}

uint64_t sub_22C8AB0BC()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = *(v2 + 600);
  *v4 = *v1;
  *(v3 + 608) = v0;

  v6 = *(v2 + 592);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C8AB1E8()
{
  v286 = v0;
  v1 = v0[44];
  v2 = v0[38];
  v3 = sub_22C901A2C();
  sub_22C58B020(v3, v2);

  v4 = sub_22C901ABC();
  if (sub_22C370B74(v2, 1, v4) == 1)
  {
    sub_22C36DD28(v0[38], &qword_27D9BBC28, &qword_22C911298);
  }

  else
  {
    v6 = v0[40];
    v5 = v0[41];
    v7 = v0[38];
    v8 = v0[39];
    sub_22C901A9C();
    sub_22C36BBA8(v4);
    v10 = *(v9 + 8);
    v11 = sub_22C37170C();
    v12(v11);
    v13 = *(v6 + 88);
    v14 = sub_22C36D39C();
    LODWORD(v7) = v15(v14);
    v16 = *MEMORY[0x277D71B68];
    v17 = *(v6 + 8);
    v18 = sub_22C36D39C();
    v19(v18);
    if (v7 == v16)
    {
      v20 = v0[67];
      v21 = v0[55];
      v22 = v0[16];
      sub_22C90405C();
      sub_22C3876AC();
      sub_22C8AEF98(v22, v21, v23);
      v24 = sub_22C9063CC();
      sub_22C90AADC();
      v25 = sub_22C370214();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v0[55];
      if (v27)
      {
        v29 = v0[54];
        sub_22C36BED8();
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        v31 = *(v28 + *(v29 + 44));
        sub_22C36A5A4();
        sub_22C8AEFF4(v28, v32);
        *(v30 + 4) = v31;
        sub_22C376098();
        sub_22C5CA61C();
        _os_log_impl(v33, v34, v35, v36, v37, v38);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {
        sub_22C8AEFF4(v0[55], type metadata accessor for ResponseGenerationGenerativeModelsClient);
      }

      v200 = v0[73];
      v201 = v0[67];
      v202 = v0[62];
      v203 = v0[63];
      v204 = v0[50];
      v275 = v0[49];
      v280 = v0[53];
      v205 = v0[46];
      v269 = v0[47];
      v263 = v0[72];
      v266 = v0[45];
      v261 = v0[44];
      v206 = v0[42];
      v207 = v0[43];

      v200(v201, v202);
      sub_22C8AEE2C();
      sub_22C37A198();
      swift_allocError();
      *v208 = 4;
      swift_willThrow();

      (*(v207 + 8))(v261, v206);
      (*(v205 + 8))(v269, v266);
      (*(v204 + 8))(v280, v275);
      goto LABEL_50;
    }
  }

  v39 = v0[44];
  v40 = v0[37];
  v41 = sub_22C901A2C();
  sub_22C58B020(v41, v40);

  v42 = sub_22C370B74(v40, 1, v4);
  v283 = v0;
  v43 = MEMORY[0x277D84F90];
  if (v42 == 1)
  {
    sub_22C36DD28(v0[37], &qword_27D9BBC28, &qword_22C911298);
LABEL_15:
    v52 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v44 = sub_22C901AAC();
  sub_22C36BBA8(v4);
  v46 = *(v45 + 8);
  v47 = sub_22C37170C();
  v48(v47);
  v49 = *(v44 + 16);
  if (!v49)
  {

    goto LABEL_15;
  }

  v50 = v0[33];
  v51 = v283[30];
  v284 = v43;
  sub_22C3B637C(0, v49, 0);
  v52 = v43;
  v53 = *(v51 + 16);
  v51 += 16;
  v54 = v44 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
  v270 = *(v51 + 56);
  v276 = v53;
  v55 = (v51 - 8);
  do
  {
    v56 = v52;
    v57 = v283[36];
    v276(v283[31], v54, v283[29]);
    sub_22C901A7C();
    v52 = v56;
    v58 = *v55;
    v59 = sub_22C36FC2C();
    v60(v59);
    v284 = v56;
    v62 = *(v56 + 16);
    v61 = *(v56 + 24);
    if (v62 >= v61 >> 1)
    {
      sub_22C3B637C(v61 > 1, v62 + 1, 1);
      v52 = v284;
    }

    v63 = v283[36];
    v64 = v283[32];
    *(v52 + 16) = v62 + 1;
    (*(v50 + 32))(v52 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v62, v63, v64);
    v54 += v270;
    --v49;
  }

  while (v49);

  v43 = MEMORY[0x277D84F90];
LABEL_16:
  v65 = *(v52 + 16);
  v66 = v283;
  if (v65)
  {
    v67 = v283[33];
    v68 = v283[27];
    v70 = *(v67 + 16);
    v67 += 16;
    v69 = v70;
    v71 = v52 + ((*(v67 + 64) + 32) & ~*(v67 + 64));
    v271 = (v67 + 72);
    v277 = *(v67 + 56);
    v267 = (v67 - 8);
    v264 = *MEMORY[0x277D71C10];
    v253 = (v68 + 32);
    v256 = (v67 + 80);
    v250 = (v68 + 8);
    v259 = v70;
    do
    {
      v73 = v66[34];
      v72 = v66[35];
      v74 = v66[32];
      v69(v72, v71, v74);
      v69(v73, v72, v74);
      v75 = *v271;
      v76 = sub_22C36FC2C();
      v78 = v77(v76);
      v79 = v66[34];
      v80 = v66[35];
      v81 = v66[32];
      if (v78 == v264)
      {
        v82 = v66[28];
        v83 = v66[26];
        (*v256)(v66[34], v66[32]);
        (*v253)(v82, v79, v83);
        v66 = sub_22C901A3C();
        v85 = v84;
        v284 = 0;
        v285 = 0xE000000000000000;

        v86 = sub_22C38C560();
        MEMORY[0x2318B7850](v86, v85);

        v87 = v83;
        v69 = v259;
        (*v250)(v82, v87);
        (*v267)(v80, v81);
      }

      else
      {
        v88 = *v267;
        (*v267)(v66[35], v66[32]);
        v88(v79, v81);
      }

      v71 += v277;
      --v65;
    }

    while (v65);

    v43 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  if (*(v66[16] + *(v66[54] + 28)))
  {
    v89 = sub_22C89A0A0();
    v90 = *(v89 + 64);
    *(v89 + 56) = 0;
    *(v89 + 64) = 0xE000000000000000;
  }

  v91 = v66[44];
  v93 = v66[24];
  v92 = v66[25];
  v94 = v66;
  v95 = v66[23];
  sub_22C901A5C();
  v96 = sub_22C901A0C();
  v97 = *(v93 + 8);
  v98 = sub_22C36BAFC();
  v99(v98);
  v100 = *(v96 + 16);
  if (v100)
  {
    v101 = v94[21];
    sub_22C3B5E2C();
    v103 = *(v101 + 16);
    v102 = v101 + 16;
    v104 = v96 + ((*(v102 + 64) + 32) & ~*(v102 + 64));
    v272 = *(v102 + 56);
    v278 = v103;
    v105 = v94;
    do
    {
      v278(v105[22], v104, v105[20]);
      v106 = sub_22C9019EC();
      v108 = v105[22];
      if (v107)
      {
        v109 = v106;
        v110 = v107;
        v284 = sub_22C9019DC();
        v285 = v111;
        MEMORY[0x2318B7850](10272, 0xE200000000000000);
        MEMORY[0x2318B7850](v109, v110);

        MEMORY[0x2318B7850](41, 0xE100000000000000);
        v112 = v284;
        v113 = v285;
      }

      else
      {
        v112 = sub_22C9019DC();
        v113 = v114;
      }

      (*(v102 - 8))(v105[22], v105[20]);
      v115 = *(v43 + 16);
      if (v115 >= *(v43 + 24) >> 1)
      {
        sub_22C3B5E2C();
      }

      *(v43 + 16) = v115 + 1;
      v116 = v43 + 16 * v115;
      *(v116 + 32) = v112;
      *(v116 + 40) = v113;
      v104 += v272;
      --v100;
      v105 = v283;
    }

    while (v100);
  }

  else
  {

    v105 = v94;
  }

  v117 = v105[66];
  v105[12] = v43;
  v118 = sub_22C37170C();
  sub_22C3A5908(v118, v119);
  v120 = v283;
  sub_22C50B118(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0);
  v121 = sub_22C90A04C();
  v123 = v122;

  sub_22C90405C();

  v124 = sub_22C9063CC();
  v125 = sub_22C90AABC();

  v126 = os_log_type_enabled(v124, v125);
  v127 = v283[73];
  v128 = v283[66];
  v130 = v283[62];
  v129 = v283[63];
  v279 = v123;
  if (v126)
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C383540();
    v120 = swift_slowAlloc();
    v284 = v120;
    *v117 = 136315138;
    *(v117 + 4) = sub_22C36F9F4(v121, v123, &v284);
    sub_22C37B3D4();
    _os_log_impl(v131, v132, v133, v134, v135, 0xCu);
    sub_22C36FF94(v120);
    sub_22C38C560();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v136 = sub_22C371B8C();
    MEMORY[0x2318B9880](v136);
  }

  v137 = sub_22C36FC2C();
  v127(v137);
  v282 = v121;
  v138 = v120[65];
  sub_22C90405C();

  v139 = sub_22C9063CC();
  v140 = sub_22C90AABC();

  v141 = os_log_type_enabled(v139, v140);
  v142 = v120[73];
  v143 = v120[65];
  v145 = v120[62];
  v144 = v120[63];
  if (v141)
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C383540();
    v120 = swift_slowAlloc();
    v284 = v120;
    *v117 = 136642819;
    *(v117 + 4) = sub_22C36F9F4(0, 0xE000000000000000, &v284);
    sub_22C37B3D4();
    _os_log_impl(v146, v147, v148, v149, v150, 0xCu);
    sub_22C36FF94(v120);
    sub_22C38C560();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v151 = sub_22C371B8C();
    MEMORY[0x2318B9880](v151);
  }

  v152 = sub_22C36FC2C();
  v142(v152);
  v0 = v120;
  v153 = v120[76];
  v154 = (v0[16] + *(v0[54] + 48));
  v156 = *v154;
  v155 = v154[1];

  sub_22C36BBCC();
  v157 = sub_22C8A73CC();
  if (v157 == 3)
  {
    v158 = 0;
  }

  else
  {
    v158 = v157;
  }

  v159 = sub_22C8A7474(0, 0xE000000000000000, v158);
  if (v153)
  {
    v162 = v0[72];
    v273 = v0[53];
    v164 = v0[49];
    v163 = v0[50];
    v166 = v0[46];
    v165 = v0[47];
    v168 = v0[44];
    v167 = v0[45];
    v170 = v0[42];
    v169 = v0[43];

    (*(v169 + 8))(v168, v170);
    v171 = *(v166 + 8);
    v172 = sub_22C36CA88();
    v173(v172);
    (*(v163 + 8))(v273, v164);
  }

  else
  {
    v174 = v159;
    v175 = v160;
    v176 = v161;
    v177 = v0[54];
    v178 = v0[16];

    v179 = (v178 + *(v177 + 32));
    v180 = *v179;
    LOBYTE(v284) = *(v179 + 4);
    if (sub_22C8A7C70(v180 | (v284 << 32), v176))
    {
      v214 = v0[72];
      v219 = v0[71];
      v220 = v0[70];
      v221 = v0[69];
      v222 = v0[68];
      v223 = v0[67];
      v224 = v0[66];
      v225 = v0[65];
      v226 = v0[64];
      v227 = v0[61];
      v228 = v0[60];
      v229 = v0[59];
      v231 = v0[58];
      v233 = v0[57];
      v235 = v0[56];
      v238 = v0[55];
      v244 = v0[52];
      v181 = v0[50];
      v248 = v0[51];
      v217 = v0[49];
      v218 = v0[53];
      v251 = v0[48];
      v182 = v0[46];
      v215 = v0[45];
      v216 = v0[47];
      v183 = v0[43];
      v212 = v0[42];
      v213 = v0[44];
      v260 = v0[41];
      v0[10] = v174;
      v240 = v0[38];
      v242 = v0[37];
      v0[11] = v175;
      v246 = v0[36];
      v254 = v0[35];
      v257 = v0[34];
      sub_22C8AF748();
      v185 = v0[18];
      v184 = v0[19];
      v186 = v0[17];
      v187 = v0[13];
      sub_22C8FFFEC();
      sub_22C3858B4();
      v188 = sub_22C90AD3C();
      v190 = v189;

      (*(v185 + 8))(v184, v186);

      (*(v183 + 8))(v213, v212);
      (*(v182 + 8))(v216, v215);
      (*(v181 + 8))(v218, v217);
      *v187 = v188;
      v187[1] = v190;
      v187[2] = v282;
      v187[3] = v279;

      sub_22C369A24();
      goto LABEL_51;
    }

    v192 = v0[72];
    v193 = v0[50];
    v268 = v0[49];
    v274 = v0[53];
    v194 = v0[46];
    v265 = v0[47];
    v196 = v0[44];
    v195 = v0[45];
    v197 = v0[42];
    v198 = v0[43];

    sub_22C8AEE2C();
    sub_22C37A198();
    swift_allocError();
    *v199 = 2;
    swift_willThrow();

    (*(v198 + 8))(v196, v197);
    (*(v194 + 8))(v265, v195);
    (*(v193 + 8))(v274, v268);
  }

LABEL_50:
  sub_22C37F668();
  v209 = v0[67];
  v210 = v0[66];
  sub_22C37464C();
  v230 = v0[57];
  v232 = v0[56];
  v234 = v0[55];
  v236 = v0[53];
  v237 = v0[52];
  v239 = v0[51];
  v241 = v0[48];
  v243 = v0[47];
  v245 = v0[44];
  v247 = v0[41];
  v249 = v0[38];
  v252 = v0[37];
  v255 = v0[36];
  v258 = v0[35];
  v262 = v0[34];
  sub_22C8AF748();
  v281 = v0[19];

  sub_22C369A24();
LABEL_51:

  return v191();
}

uint64_t sub_22C8AC280()
{
  v1 = v0[72];
  v2 = v0[53];
  v3 = v0[49];
  v4 = v0[50];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[45];

  v8 = *(v6 + 8);
  v9 = sub_22C36D264();
  v10(v9);
  v11 = *(v4 + 8);
  v12 = sub_22C36BBCC();
  v13(v12);
  v38 = v0[76];
  sub_22C37F668();
  v14 = v0[67];
  v15 = v0[66];
  sub_22C37464C();
  v18 = v0[57];
  v19 = v0[56];
  v20 = v0[55];
  v21 = v0[53];
  v22 = v0[52];
  v23 = v0[51];
  v24 = v0[48];
  v25 = v0[47];
  v26 = v0[44];
  v27 = v0[41];
  v28 = v0[38];
  v29 = v0[37];
  v30 = v0[36];
  v31 = v0[35];
  v32 = v0[34];
  v33 = v0[31];
  v34 = v0[28];
  v35 = v0[25];
  v36 = v0[22];
  v37 = v0[19];

  sub_22C369A24();

  return v16();
}

uint64_t sub_22C8AC4B8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_22C9063DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = sub_22C90B21C();

  v17 = sub_22C8A7380();
  if (v16 <= 1 && v17 != 3)
  {
    if (v17)
    {
      v26 = v17 == 1 ? 0x800000022C92F130 : 0x800000022C92F170;
      if (0x800000022C92F170 == v26)
      {

        return 1;
      }
    }

    v27 = sub_22C90B4FC();

    if (v27)
    {
      return 1;
    }

    sub_22C90405C();

    v29 = sub_22C9063CC();
    v30 = sub_22C90AADC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v37 = v8;
      v32 = v31;
      v36 = swift_slowAlloc();
      v38 = v36;
      *v32 = 136315650;
      *(v32 + 4) = sub_22C36F9F4(a1, a2, &v38);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_22C36F9F4(a3, a4, &v38);
      *(v32 + 22) = 2080;
      *(v32 + 24) = sub_22C36F9F4(0xD00000000000003FLL, 0x800000022C92F170, &v38);
      _os_log_impl(&dword_22C366000, v29, v30, "Non-standard configuration:\n  Prompt version: %s\n  Configured model bundle identifier: %s\n  Expected model bundle identifier: %s", v32, 0x20u);
      v33 = v36;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v33, -1, -1);
      MEMORY[0x2318B9880](v32, -1, -1);

      v24 = *(v9 + 8);
      v25 = v13;
      goto LABEL_19;
    }

    v24 = *(v9 + 8);
    v25 = v13;
LABEL_21:
    v34 = v8;
    goto LABEL_22;
  }

  sub_22C90405C();

  v19 = sub_22C9063CC();
  v20 = sub_22C90AADC();

  if (!os_log_type_enabled(v19, v20))
  {

    v24 = *(v9 + 8);
    v25 = v15;
    goto LABEL_21;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v37 = v8;
  v38 = v22;
  v23 = v22;
  *v21 = 136315394;
  *(v21 + 4) = sub_22C36F9F4(a1, a2, &v38);
  *(v21 + 12) = 2080;
  *(v21 + 14) = sub_22C36F9F4(a3, a4, &v38);
  _os_log_impl(&dword_22C366000, v19, v20, "Non-standard configuration:\n  Prompt version: %s\n  Model bundle identifier: %s", v21, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x2318B9880](v23, -1, -1);
  MEMORY[0x2318B9880](v21, -1, -1);

  v24 = *(v9 + 8);
  v25 = v15;
LABEL_19:
  v34 = v37;
LABEL_22:
  v24(v25, v34);
  return 0;
}

uint64_t sub_22C8AC900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8)
{
  *(v8 + 288) = a6;
  *(v8 + 296) = a7;
  *(v8 + 280) = a5;
  *(v8 + 272) = a8;
  *(v8 + 256) = a3;
  *(v8 + 264) = a4;
  *(v8 + 240) = a1;
  *(v8 + 248) = a2;
  *(v8 + 304) = *a7;
  v9 = sub_22C3A5908(&qword_27D9BBC68, &unk_22C9113B0);
  *(v8 + 312) = v9;
  v10 = *(v9 - 8);
  *(v8 + 320) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v12 = *(*(sub_22C3A5908(&qword_27D9BBC70, &unk_22C92C210) - 8) + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  v13 = sub_22C3A5908(&qword_27D9BBC78, &unk_22C9113C0);
  *(v8 + 344) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v15 = sub_22C90322C();
  *(v8 + 360) = v15;
  v16 = *(v15 - 8);
  *(v8 + 368) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  v18 = sub_22C90323C();
  *(v8 + 384) = v18;
  v19 = *(v18 - 8);
  *(v8 + 392) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  v21 = *(*(sub_22C3A5908(&qword_27D9BBC80, &qword_22C92C220) - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v22 = sub_22C90630C();
  *(v8 + 416) = v22;
  v23 = *(v22 - 8);
  *(v8 + 424) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  v25 = sub_22C901C2C();
  *(v8 + 448) = v25;
  v26 = *(v25 - 8);
  *(v8 + 456) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 464) = swift_task_alloc();
  v28 = sub_22C901C1C();
  *(v8 + 472) = v28;
  v29 = *(v28 - 8);
  *(v8 + 480) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 488) = swift_task_alloc();
  v31 = sub_22C3A5908(&qword_27D9C1150, &qword_22C92C228);
  *(v8 + 496) = v31;
  v32 = *(v31 - 8);
  *(v8 + 504) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  v34 = sub_22C901D2C();
  *(v8 + 520) = v34;
  v35 = *(v34 - 8);
  *(v8 + 528) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  v37 = sub_22C901D1C();
  *(v8 + 544) = v37;
  v38 = *(v37 - 8);
  *(v8 + 552) = v38;
  v39 = *(v38 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v40 = sub_22C3A5908(&qword_27D9C1158, &unk_22C92C230);
  *(v8 + 568) = v40;
  v41 = *(v40 - 8);
  *(v8 + 576) = v41;
  v42 = *(v41 + 64) + 15;
  *(v8 + 584) = swift_task_alloc();
  v43 = sub_22C3A5908(&qword_27D9BBC30, &qword_22C9112B0);
  *(v8 + 592) = v43;
  v44 = *(v43 - 8);
  *(v8 + 600) = v44;
  v45 = *(v44 + 64) + 15;
  *(v8 + 608) = swift_task_alloc();
  v46 = *(*(sub_22C3A5908(&qword_27D9BD638, &unk_22C92C240) - 8) + 64) + 15;
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  v47 = sub_22C3A5908(&qword_27D9BBC38, &qword_22C9112B8);
  *(v8 + 632) = v47;
  v48 = *(v47 - 8);
  *(v8 + 640) = v48;
  v49 = *(v48 + 64) + 15;
  *(v8 + 648) = swift_task_alloc();
  v50 = sub_22C909CCC();
  *(v8 + 656) = v50;
  v51 = *(v50 - 8);
  *(v8 + 664) = v51;
  v52 = *(v51 + 64) + 15;
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 680) = swift_task_alloc();
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8ACFC8, 0, 0);
}

uint64_t sub_22C8ACFC8()
{
  v64 = *(v0 + 712);
  v72 = *(v0 + 720);
  v73 = *(v0 + 704);
  v46 = *(v0 + 688);
  v47 = *(v0 + 696);
  v40 = *(v0 + 680);
  v1 = *(v0 + 672);
  v74 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v44 = *(v0 + 632);
  v5 = *(v0 + 624);
  v42 = *(v0 + 616);
  v48 = *(v0 + 600);
  v49 = *(v0 + 608);
  v50 = *(v0 + 592);
  v57 = *(v0 + 584);
  v58 = *(v0 + 576);
  v59 = *(v0 + 568);
  v51 = *(v0 + 560);
  v52 = *(v0 + 552);
  v53 = *(v0 + 544);
  v54 = *(v0 + 536);
  v55 = *(v0 + 528);
  v56 = *(v0 + 520);
  v68 = *(v0 + 512);
  v69 = *(v0 + 504);
  v60 = *(v0 + 488);
  v61 = *(v0 + 480);
  v62 = *(v0 + 472);
  v63 = *(v0 + 464);
  v65 = *(v0 + 456);
  v66 = *(v0 + 448);
  v67 = *(v0 + 496);
  v71 = *(v0 + 440);
  v70 = *(v0 + 408);
  v45 = *(v0 + 288);
  v43 = *(v0 + 280);
  v39 = *(v0 + 272);
  v41 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  *(swift_task_alloc() + 16) = v6;
  sub_22C909CDC();

  sub_22C8A5BD4(v7);
  *(v0 + 728) = sub_22C8AF04C(&qword_27D9BBC48, MEMORY[0x277D42D40]);
  sub_22C36D39C();
  sub_22C909E7C();

  v8 = *(v74 + 8);
  *(v0 + 736) = v8;
  *(v0 + 744) = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = sub_22C372164();
  v10(v9);
  sub_22C901ADC();
  v11 = sub_22C901AEC();
  *(v0 + 752) = v11;
  sub_22C36C640(v5, 0, 1, v11);
  sub_22C379DF8(v5, v42, &qword_27D9BD638, &unk_22C92C240);
  sub_22C381934();
  sub_22C901B2C();
  sub_22C901B1C();
  sub_22C901AFC();
  sub_22C901B0C();
  sub_22C36DD28(v5, &qword_27D9BD638, &unk_22C92C240);
  LODWORD(v42) = *MEMORY[0x277D0E548];
  *(v0 + 856) = *MEMORY[0x277D0E548];
  v12 = *(v4 + 104);
  *(v0 + 760) = v12;
  *(v0 + 768) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v3);
  sub_22C909E4C();
  v13 = *(v4 + 8);
  *(v0 + 776) = v13;
  *(v0 + 784) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v44);
  v14 = sub_22C372164();
  v8(v14);
  sub_22C90065C();
  sub_22C909DDC();

  (v8)(v46, v2);
  *v49 = v45;
  v15 = *(v48 + 104);
  *(v0 + 792) = v15;
  *(v0 + 800) = (v48 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v15(v49, v42, v50);

  sub_22C909E0C();
  v16 = *(v48 + 8);
  *(v0 + 808) = v16;
  *(v0 + 816) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v49, v50);
  (v8)(v47, v2);
  v17 = sub_22C901D3C();
  sub_22C374D84(v51, v18, v19, v17);
  (*(v52 + 104))(v51, *MEMORY[0x277D0E5C0], v53);
  v20 = sub_22C901D0C();
  sub_22C374D84(v54, v21, v22, v20);
  (*(v55 + 104))(v54, *MEMORY[0x277D0E5C8], v56);
  sub_22C36BA00();
  sub_22C901D4C();
  v23 = *MEMORY[0x277D0E550];
  (*(v58 + 104))(v57, v23, v59);
  sub_22C909DFC();
  (*(v58 + 8))(v57, v59);
  v24 = sub_22C372164();
  v8(v24);
  v25 = sub_22C901C4C();
  sub_22C374D84(v60, v26, v27, v25);
  (*(v61 + 104))(v60, *MEMORY[0x277D0E578], v62);
  v28 = sub_22C901BDC();
  sub_22C374D84(v63, v29, v30, v28);
  (*(v65 + 104))(v63, *MEMORY[0x277D0E580], v66);
  sub_22C36FC2C();
  sub_22C901C5C();
  (*(v69 + 104))(v68, v23, v67);
  sub_22C909E3C();
  (*(v69 + 8))(v68, v67);
  (v8)(v64, v2);
  v31 = sub_22C9062FC();
  sub_22C374D84(v70, v32, v33, v31);
  sub_22C9062EC();
  v34 = *(MEMORY[0x277D0E538] + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 824) = v35;
  *v35 = v36;
  v35[1] = sub_22C8AD6DC;
  v37 = *(v0 + 336);

  return MEMORY[0x282166B58](v37, 0xD00000000000001CLL, 0x800000022C939400);
}

uint64_t sub_22C8AD6DC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 824);
  v6 = *v1;
  sub_22C369A30();
  *v7 = v6;
  *(v8 + 832) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8AD7DC()
{
  v1 = *(v0 + 336);
  v2 = sub_22C3A5908(&qword_27D9BBC88, &unk_22C9113D0);
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    sub_22C36DD28(v1, &qword_27D9BBC70, &unk_22C92C210);
  }

  else
  {
    v61 = *(v0 + 808);
    v62 = *(v0 + 816);
    v58 = *(v0 + 792);
    v59 = *(v0 + 800);
    v73 = *(v0 + 776);
    v74 = *(v0 + 784);
    v71 = *(v0 + 768);
    v69 = *(v0 + 760);
    v57 = *(v0 + 856);
    v66 = *(v0 + 752);
    v79 = *(v0 + 736);
    v80 = *(v0 + 744);
    v75 = *(v0 + 712);
    v76 = *(v0 + 720);
    v77 = *(v0 + 656);
    v78 = *(v0 + 664);
    v67 = *(v0 + 648);
    v68 = *(v0 + 632);
    v63 = *(v0 + 624);
    v65 = *(v0 + 616);
    v55 = *(v0 + 608);
    v56 = *(v0 + 592);
    v50 = *(v0 + 432);
    v51 = *(v0 + 424);
    v52 = *(v0 + 416);
    v53 = *(v0 + 440);
    v82 = *(v0 + 400);
    v72 = *(v0 + 392);
    v3 = *(v0 + 384);
    v48 = *(v2 + 48);
    v49 = *(v0 + 376);
    v4 = *(v0 + 368);
    v70 = v4;
    v81 = *(v0 + 360);
    v5 = *(v0 + 344);
    v6 = *(v0 + 352);
    v60 = *(v0 + 272);
    v64 = *(v0 + 264);
    v7 = *(v0 + 248);
    v54 = *(v0 + 288);
    v8 = *(v5 + 48);
    v9 = *(v72 + 32);
    v9(v6, v1, v3);
    v10 = *(v4 + 32);
    v10(v6 + v8, v1 + v48, v81);
    v11 = *(v5 + 48);
    v9(v82, v6, v3);
    v10(v49, v6 + v11, v81);
    sub_22C90321C();
    v12 = *(v51 + 8);
    v13 = sub_22C36D39C();
    v14(v13);
    v15 = *(v51 + 32);
    v16 = sub_22C36BAFC();
    v17(v16);
    sub_22C3A5908(&qword_27D9BBBB0, &qword_22C9110E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    strcpy((inited + 32), "promptTemplate");
    *(inited + 47) = -18;
    v19 = sub_22C90444C();
    *(inited + 72) = v19;
    *(inited + 80) = sub_22C8AF04C(&qword_27D9BBC98, MEMORY[0x277D0E698]);
    sub_22C557D04((inited + 48));
    sub_22C36BBA8(v19);
    (*(v20 + 16))();
    sub_22C3A5908(&qword_27D9BBBB8, &unk_22C9110F0);
    sub_22C909F0C();
    sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_22C90F870;
    *(v21 + 32) = 0xD00000000000003DLL;
    *(v21 + 40) = 0x800000022C939420;
    *v55 = v54;
    v58(v55, v57, v56);

    v22 = sub_22C901CCC();
    v23 = sub_22C36D264();
    v61(v23);
    v24 = sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    *(v21 + 48) = v22;
    *(v21 + 72) = v24;
    *(v21 + 80) = 0xD000000000000089;
    *(v21 + 88) = 0x800000022C939460;
    sub_22C901ADC();
    sub_22C36C640(v63, 0, 1, v66);
    sub_22C379DF8(v63, v65, &qword_27D9BD638, &unk_22C92C240);
    sub_22C381934();
    sub_22C901B2C();
    sub_22C901B1C();
    sub_22C901AFC();
    sub_22C901B0C();
    sub_22C36DD28(v63, &qword_27D9BD638, &unk_22C92C240);
    v69(v67, v57, v68);
    *(v21 + 120) = sub_22C901B3C();
    sub_22C557D04((v21 + 96));
    sub_22C901CEC();
    v73(v67, v68);
    sub_22C909F0C();
    sub_22C90320C();

    (*(v70 + 8))(v49, v81);
    (*(v72 + 8))(v82, v3);
    v25 = sub_22C38C560();
    v79(v25, v76);
    v26 = *(v78 + 32);
    v27 = sub_22C36BBCC();
    v28(v27);
  }

  v29 = *(v0 + 744);
  v30 = *(v0 + 736);
  v31 = *(v0 + 728);
  v32 = *(v0 + 720);
  v33 = *(v0 + 712);
  v34 = *(v0 + 656);
  v35 = *(v0 + 440);
  v36 = *(v0 + 328);
  v38 = *(v0 + 296);
  v37 = *(v0 + 304);
  sub_22C909DCC();
  *(v0 + 232) = v38;
  sub_22C909E6C();
  v39 = sub_22C36D264();
  v30(v39);
  v40 = sub_22C901D8C();
  v41 = *(MEMORY[0x277D0D8D8] + 4);
  v42 = swift_task_alloc();
  *(v0 + 840) = v42;
  v43 = sub_22C8AF04C(&qword_27D9C1160, MEMORY[0x277D71A98]);
  *v42 = v0;
  v42[1] = sub_22C8ADEBC;
  v44 = *(v0 + 328);
  v45 = *(v0 + 312);
  v46 = *(v0 + 240);

  return MEMORY[0x282165A68](v46, v40, v45, v43);
}

uint64_t sub_22C8ADEBC()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = v2[105];
  *v4 = *v1;
  *(v3 + 848) = v0;

  (*(v2[40] + 8))(v2[41], v2[39]);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C8AE01C()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[86];
  v11 = v0[85];
  v12 = v0[84];
  v8 = v0[82];
  v13 = v0[81];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[73];
  v18 = v0[70];
  v19 = v0[67];
  v20 = v0[64];
  v21 = v0[61];
  v22 = v0[58];
  v23 = v0[54];
  v24 = v0[51];
  v25 = v0[50];
  v26 = v0[47];
  v27 = v0[44];
  v28 = v0[42];
  v29 = v0[41];
  (*(v0[53] + 8))(v0[55], v0[52]);
  v2(v3, v8);

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C8AE20C()
{
  v2 = sub_22C370468();
  v3(v2);
  v4 = sub_22C36BBCC();
  v1(v4);
  sub_22C388AEC(*(v0 + 832));

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C8AE364()
{
  v2 = sub_22C370468();
  v3(v2);
  v4 = sub_22C36BBCC();
  v1(v4);
  sub_22C388AEC(*(v0 + 848));

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C8AE4BC(uint64_t a1)
{
  v2 = sub_22C909D9C();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90444C();
  v16[3] = v8;
  v16[4] = sub_22C8AF04C(&qword_27D9BBC98, MEMORY[0x277D0E698]);
  v9 = sub_22C557D04(v16);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  v10 = MEMORY[0x277D42E18];
  sub_22C909CFC();
  sub_22C36FF94(v16);
  sub_22C3A5908(&qword_27D9BBCA8, &qword_22C9113E0);
  v11 = *(v3 + 72);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C90F800;
  (*(v4 + 16))(v13 + v12, v7, v2);
  MEMORY[0x2318B71C0](v13, v2, v10);

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_22C8AE6D0(uint64_t a1)
{
  v2 = sub_22C8AF448();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8AE70C(uint64_t a1)
{
  v2 = sub_22C8AF448();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C8AE764()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C8AE814;

  return sub_22C8A9FBC();
}

uint64_t sub_22C8AE814()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22C369A30();
  *v4 = v3;

  sub_22C369A24();

  return v5();
}

uint64_t ResponseGenerationModelCompletionResponse.modelIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22C36BA00();
}

unint64_t sub_22C8AE948()
{
  result = qword_27D9C1108;
  if (!qword_27D9C1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1108);
  }

  return result;
}

void sub_22C8AE9C4()
{
  sub_22C8AED8C(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t dispatch thunk of ResponseGenerationModelClient.generate(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v16 = (v11 + *v11);
  v12 = v11[1];
  swift_task_alloc();
  sub_22C36CC90();
  *(v5 + 16) = v13;
  *v13 = v14;
  v13[1] = sub_22C8AE814;

  return v16(a1, a2, a3, a4, a5);
}

void sub_22C8AEBE4()
{
  sub_22C8AED8C(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
  if (v0 <= 0x3F)
  {
    sub_22C8AED28();
    if (v1 <= 0x3F)
    {
      sub_22C8AED8C(319, &qword_281435818, MEMORY[0x277D71A98]);
      if (v2 <= 0x3F)
      {
        sub_22C8AED8C(319, qword_281431888, type metadata accessor for ResponseGenerationBiomeRoot);
        if (v3 <= 0x3F)
        {
          sub_22C8AEDDC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C8AED28()
{
  if (!qword_281435828)
  {
    sub_22C3AC1A0(&qword_27D9BBBC0, &qword_22C92C1C0);
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_281435828);
    }
  }
}

void sub_22C8AED8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_22C37FDE8();
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22C8AEDDC()
{
  if (!qword_27D9C1118)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9C1118);
    }
  }
}

unint64_t sub_22C8AEE2C()
{
  result = qword_27D9C1120;
  if (!qword_27D9C1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1120);
  }

  return result;
}

unint64_t sub_22C8AEE80()
{
  result = qword_27D9C1138;
  if (!qword_27D9C1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1138);
  }

  return result;
}

unint64_t sub_22C8AEED4()
{
  result = qword_27D9C1140;
  if (!qword_27D9C1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1140);
  }

  return result;
}

unint64_t sub_22C8AEF44()
{
  result = qword_27D9C1170;
  if (!qword_27D9C1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1170);
  }

  return result;
}

uint64_t sub_22C8AEF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22C36985C(v4);
  v6 = *(v5 + 16);
  v7 = sub_22C36BA00();
  v8(v7);
  return a2;
}

uint64_t sub_22C8AEFF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C8AF04C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C8AF090(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD050, &qword_22C917420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8AF100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.Label(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_22C8AF164(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_22C8AF178(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_22C8AF1B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationStructuredModelCompletion.ResponseGenerationModelResponseError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationGenerativeModelsClient.ModelClientError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C8AF398()
{
  result = qword_27D9C11B8;
  if (!qword_27D9C11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11B8);
  }

  return result;
}

unint64_t sub_22C8AF3F4()
{
  result = qword_27D9C11C0;
  if (!qword_27D9C11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11C0);
  }

  return result;
}

unint64_t sub_22C8AF448()
{
  result = qword_27D9C11C8;
  if (!qword_27D9C11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11C8);
  }

  return result;
}

unint64_t sub_22C8AF49C()
{
  result = qword_27D9C11D0;
  if (!qword_27D9C11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11D0);
  }

  return result;
}

unint64_t sub_22C8AF4F0()
{
  result = qword_27D9C11E0;
  if (!qword_27D9C11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11E0);
  }

  return result;
}

_BYTE *sub_22C8AF544(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C8AF624()
{
  result = qword_27D9C11F0;
  if (!qword_27D9C11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11F0);
  }

  return result;
}

unint64_t sub_22C8AF67C()
{
  result = qword_27D9C11F8;
  if (!qword_27D9C11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11F8);
  }

  return result;
}

unint64_t sub_22C8AF6D4()
{
  result = qword_27D9C1200;
  if (!qword_27D9C1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1200);
  }

  return result;
}

uint64_t sub_22C8AF72C()
{

  return sub_22C8AEF98(v2, v1, v0);
}

void sub_22C8AF748()
{
  v2 = v0[28];
  *(v1 - 176) = v0[31];
  *(v1 - 168) = v2;
  v3 = v0[22];
  *(v1 - 160) = v0[25];
  *(v1 - 152) = v3;
}

uint64_t sub_22C8AF764()
{

  return sub_22C8AEFF4(v1, v0);
}

uint64_t sub_22C8AF77C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime38ResponseGenerationOverrideInputMatcher_responseLocale;
  v3 = sub_22C90077C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime38ResponseGenerationOverrideInputMatcher_regexCache);

  return v0;
}

uint64_t sub_22C8AF7F4()
{
  sub_22C8AF77C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResponseGenerationOverrideInputMatcher()
{
  result = qword_281430000;
  if (!qword_281430000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C8AF8A0()
{
  result = sub_22C90077C();
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

uint64_t ResponseGenerationPreferences.responseCatalogSideLoad.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 72);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C376688();
  return v2;
}

uint64_t static Preferences.subscript.getter(void *a1)
{
  v1 = *(*a1 + *MEMORY[0x277D84DE8]);
  v2 = *(*(v1 - 8) + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0();
  }

  sub_22C37AA60(v1, qword_281437588);
  swift_beginAccess();
  v6 = sub_22C36BC58();
  sub_22C8B257C(v6, v7);
  swift_getAtKeyPath();
  return sub_22C8B25E0(v5);
}

uint64_t ResponseGenerationPreferences.generativeDialogEnabled.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 48);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C376688();
  return v2;
}

uint64_t ResponseGenerationPreferences.responseGenerationSideLoadPrebuiltOverrides.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 56);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C376688();
  return v2;
}

uint64_t ResponseGenerationPreferences.responseValidationRules.getter()
{
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C901EDC();
  return v1;
}

uint64_t ResponseGenerationPreferences.responseGenerationEnableOverrides.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 52);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C376688();
  return v2;
}

uint64_t ResponseGenerationPreferences.responseGenerationModelBundleIdentifier.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 20);
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C37B27C();
  return v2;
}

unint64_t ResponseGenerationPreferences.responseGenerationMinimumReflectionScore.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 40);
  sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
  sub_22C3798B4();
  return v2 | (v3 << 32);
}

double ResponseGenerationPreferences.responseGenerationModelTimeout.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 24);
  sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
  sub_22C3798B4();
  return v2;
}

uint64_t ResponseGenerationPreferences.responseGenerationPromptVersion.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 28);
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C37B27C();
  return v2;
}

uint64_t ResponseGenerationPreferences.responseGenerationMaxTokens.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 44);
  sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
  sub_22C3798B4();
  return v2;
}

uint64_t ResponseGenerationPreferences.responseGenerationResponseFormat.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 36);
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C37B27C();
  return v2;
}

uint64_t ResponseGenerationPreferences.$responseValidationRules.getter()
{
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);

  return sub_22C901EEC();
}

uint64_t ResponseGenerationPreferences.$responseValidationRules.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v10);
  v6(v5);
  sub_22C36BC58();
  sub_22C901EFC();
  v7 = sub_22C371810();
  return v8(v7);
}

uint64_t ResponseGenerationPreferences.$responseValidationRules.modify()
{
  v1 = sub_22C4DD390(0x30uLL);
  sub_22C38B9BC(v1);
  v2 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C373438(v2);
  *(v0 + 16) = v3;
  v5 = sub_22C4DD390(*(v4 + 64));
  v6 = sub_22C37F174(v5);
  v7 = sub_22C4DD390(v6);
  v8 = sub_22C37FD80(v7);
  *(v0 + 40) = sub_22C4DD390(v8);
  sub_22C901EEC();
  return sub_22C36D7C8();
}

void sub_22C8AFF68(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[2] + 16);
  v4((*a1)[4], v3[5], v3[1]);
  v5 = v3[4];
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v9 = *v3;
  v10 = v3[1];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_22C901EFC();
    v11 = *(v8 + 8);
    v12 = sub_22C37B5F4();
    v11(v12);
    (v11)(v6, v10);
  }

  else
  {
    sub_22C37B5F4();
    sub_22C901EFC();
    (*(v8 + 8))(v6, v10);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v3);
}

uint64_t ResponseGenerationPreferences.$responseGenerationModelBundleIdentifier.getter()
{
  v0 = *(sub_22C37FB94() + 20);
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseGenerationModelBundleIdentifier.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 20);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseGenerationModelBundleIdentifier.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 20));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationModelTimeout.getter()
{
  v0 = *(sub_22C37FB94() + 24);
  sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseGenerationModelTimeout.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 24);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseGenerationModelTimeout.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 24));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationPromptVersion.getter()
{
  v0 = *(sub_22C37FB94() + 28);
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseGenerationPromptVersion.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 28);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseGenerationPromptVersion.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 28));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.responseGenerationPromptVersionI18n.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 32);
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C37B27C();
  return v2;
}

uint64_t ResponseGenerationPreferences.$responseGenerationPromptVersionI18n.getter()
{
  v0 = *(sub_22C37FB94() + 32);
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseGenerationPromptVersionI18n.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 32);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseGenerationPromptVersionI18n.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 32));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationResponseFormat.getter()
{
  v0 = *(sub_22C37FB94() + 36);
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseGenerationResponseFormat.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 36);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseGenerationResponseFormat.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 36));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationMinimumReflectionScore.getter()
{
  v0 = *(sub_22C37FB94() + 40);
  sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseGenerationMinimumReflectionScore.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 40);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseGenerationMinimumReflectionScore.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 40));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationMaxTokens.getter()
{
  v0 = *(sub_22C37FB94() + 44);
  sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseGenerationMaxTokens.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 44);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseGenerationMaxTokens.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 44));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$generativeDialogEnabled.getter()
{
  v0 = *(sub_22C37FB94() + 48);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$generativeDialogEnabled.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 48);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$generativeDialogEnabled.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 48));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationEnableOverrides.getter()
{
  v0 = *(sub_22C37FB94() + 52);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseGenerationEnableOverrides.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 52);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseGenerationEnableOverrides.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 52));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationSideLoadPrebuiltOverrides.getter()
{
  v0 = *(sub_22C37FB94() + 56);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseGenerationSideLoadPrebuiltOverrides.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 56);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseGenerationSideLoadPrebuiltOverrides.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 56));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.responseValidationRulesEnabled.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 60);
  sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C3798B4();
  return v2;
}

uint64_t ResponseGenerationPreferences.$responseValidationRulesEnabled.getter()
{
  v0 = *(sub_22C37FB94() + 60);
  sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseValidationRulesEnabled.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 60);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseValidationRulesEnabled.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 60));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.responseValidationRulesDisabled.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 64);
  sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C3798B4();
  return v2;
}

uint64_t ResponseGenerationPreferences.$responseValidationRulesDisabled.getter()
{
  v0 = *(sub_22C37FB94() + 64);
  sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseValidationRulesDisabled.setter()
{
  v0 = sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 64);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseValidationRulesDisabled.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 64));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.responseCatalog.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 68);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C376688();
  return v2;
}

uint64_t ResponseGenerationPreferences.$responseCatalog.getter()
{
  v0 = *(sub_22C37FB94() + 68);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseCatalog.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 68);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseCatalog.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 68));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseCatalogSideLoad.getter()
{
  v0 = *(sub_22C37FB94() + 72);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  return sub_22C382FF4();
}

uint64_t ResponseGenerationPreferences.$responseCatalogSideLoad.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 72);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$responseCatalogSideLoad.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 72));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.forceLogCatalogParams.getter()
{
  v0 = *(type metadata accessor for ResponseGenerationPreferences() + 76);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C376688();
  return v2;
}

uint64_t ResponseGenerationPreferences.$forceLogCatalogParams.getter()
{
  v0 = *(sub_22C37FB94() + 76);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  return sub_22C382FF4();
}

uint64_t sub_22C8B1C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v8 = sub_22C3A5908(a5, a6);
  sub_22C369824(v8);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v15 = *(v14 + 16);
  v16 = sub_22C36BC58();
  v17(v16);
  return a7(v13);
}

uint64_t ResponseGenerationPreferences.$forceLogCatalogParams.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for ResponseGenerationPreferences() + 76);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t ResponseGenerationPreferences.$forceLogCatalogParams.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 76));
  return sub_22C36D7C8();
}

void sub_22C8B1E54(int **a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 2) + 16);
  v4(*(*a1 + 4), v3[5], v3[1]);
  v5 = *(v3 + 12);
  v6 = v3[4];
  v14 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v9 = *v3;
  v10 = v3[1];
  if (a2)
  {
    v4(v3[3], v6, v3[1]);
    sub_22C901EFC();
    v11 = *(v8 + 1);
    v12 = sub_22C37B5F4();
    v11(v12);
    v13 = v14;
    (v11)(v14, v10);
  }

  else
  {
    sub_22C37B5F4();
    sub_22C901EFC();
    v13 = v14;
    (*(v8 + 1))(v14, v10);
  }

  free(v13);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_22C8B1F7C()
{
  sub_22C380768();
  sub_22C372538();
  v0 = type metadata accessor for ResponseGenerationPreferences();
  v1 = v0[5];
  sub_22C372538();
  v2 = v0[6];
  sub_22C8B3AB4();
  sub_22C372538();
  v3 = v0[7];
  sub_22C370B14();
  v4 = v0[8];
  sub_22C370B14();
  v5 = v0[9];
  sub_22C370B14();
  v6 = v0[10];
  sub_22C3A5908(&qword_27D9C1130, &unk_22C92C7C0);
  sub_22C372538();
  v7 = v0[11];
  sub_22C8B3AB4();
  sub_22C372538();
  v8 = v0[12];
  sub_22C8B3AB4();
  sub_22C38AC90();
  v9 = v0[13];
  sub_22C38AC90();
  v10 = v0[14];
  sub_22C8B3AB4();
  sub_22C38AC90();
  v11 = v0[15];
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C372538();
  v12 = v0[16];
  sub_22C370B14();
  v13 = v0[17];
  sub_22C901E6C();
  sub_22C372538();
  v14 = v0[18];
  sub_22C8B3AB4();
  sub_22C38AC90();
  v15 = v0[19];
  sub_22C8B3AB4();
  return sub_22C38AC90();
}

uint64_t sub_22C8B2530()
{
  v0 = type metadata accessor for ResponseGenerationPreferences();
  sub_22C3F0160(v0, qword_281437588);
  sub_22C37AA60(v0, qword_281437588);
  return sub_22C8B1F7C();
}

uint64_t sub_22C8B257C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseGenerationPreferences();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8B25E0(uint64_t a1)
{
  v2 = type metadata accessor for ResponseGenerationPreferences();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Preferences.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0();
  }

  v4 = MEMORY[0x277D84308];
  sub_22C37AA60(*(v3 + *MEMORY[0x277D84308]), qword_281437588);
  swift_beginAccess();
  v5 = swift_readAtKeyPath();
  (*(*(*(v3 + *v4 + 8) - 8) + 16))(a2);
  v5(v7, 0);
  return swift_endAccess();
}

uint64_t sub_22C8B275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - v5;
  v8 = *v7;
  (*(v9 + 16))(&v11 - v5);

  return static Preferences.subscript.setter(v6, v8);
}

uint64_t static Preferences.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D84308];
  v5 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0();
    v9 = *v4;
  }

  sub_22C37AA60(*(v3 + v9), qword_281437588);
  (*(v6 + 16))(v11, a1, v5);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();

  return (*(v6 + 8))(a1, v5);
}

void (*static Preferences.subscript.modify(void *a1, uint64_t *a2))(uint64_t ***a1, char a2)
{
  v4 = sub_22C4DD390(0x28uLL);
  *a1 = v4;
  *v4 = a2;
  v5 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  v4[3] = sub_22C4DD390(v7);
  v8 = sub_22C4DD390(v7);
  v4[4] = v8;
  static Preferences.subscript.getter(a2, v8);
  return sub_22C8B2AB4;
}

void sub_22C8B2AB4(uint64_t ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    v8 = v6[2];
    v9 = sub_22C37170C();
    v10(v9);

    static Preferences.subscript.setter(v3, v7);
    (v6[1])(v4, v5);
  }

  else
  {
    v11 = *v2;

    static Preferences.subscript.setter(v4, v11);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_22C8B2B7C()
{
  sub_22C4DDC04();
  result = sub_22C90AB0C();
  qword_281430188 = result;
  return result;
}

uint64_t static ResponseGenerationPreferencesDomain.userDefaultsContainer.getter()
{
  if (qword_281430180 != -1)
  {
    swift_once();
  }

  v0 = qword_281430188;
  v1 = qword_281430188;
  return v0;
}

uint64_t *sub_22C8B2C0C()
{
  result = sub_22C8B2C2C();
  qword_281430198 = result;
  return result;
}

uint64_t *sub_22C8B2C2C()
{
  v0 = sub_22C9063DC();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C90046C();
  v10 = sub_22C369958(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = (v16 - v15);
  type metadata accessor for ResponseGenerationPreferencesDomain.ResponseGenerationPreferences();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_22C90A0EC();
  v21 = sub_22C8B39AC(v20, 0x7473696C70, 0xE500000000000000, v19);

  if (v21)
  {
    sub_22C9003DC();

    v22 = sub_22C37A508(v17);
    v23 = *(v12 + 8);
    v24 = sub_22C36BC58();
    v25(v24);
  }

  else
  {
    sub_22C90405C();
    v26 = sub_22C9063CC();
    v27 = sub_22C90AADC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_22C36F9F4(0xD00000000000001DLL, 0x800000022C92C780, &v31);
      _os_log_impl(&dword_22C366000, v26, v27, "Error loading %s from bundle", v28, 0xCu);
      sub_22C36FF94(v29);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v3 + 8))(v8, v0);
    return 0;
  }

  return v22;
}

uint64_t static ResponseGenerationPreferencesDomain.bundleResource.getter()
{
  if (qword_281430190 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22C8B2F10()
{
  v0 = sub_22C90B21C();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22C8B2F88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C8B2F10();
  *a2 = result;
  return result;
}

uint64_t sub_22C8B2FB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C38AD44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C8B2FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C8B2F5C();
  *a1 = result;
  return result;
}

uint64_t sub_22C8B3018(uint64_t a1)
{
  v2 = sub_22C38A7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C8B3054(uint64_t a1)
{
  v2 = sub_22C38A7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C8B3090()
{
  if (v0[14])
  {
    v1 = v0[13];
  }

  else if (!v0[3] || ((sub_22C383550(), v3) ? (v3 = v2 == 0xE200000000000000) : (v3 = 0), !v3 && (sub_22C382AC8() & 1) == 0))
  {
    sub_22C381950();
  }

  return sub_22C37170C();
}

uint64_t sub_22C8B3114()
{
  if (v0[10])
  {
    v1 = v0[9];
  }

  else if (!v0[3] || ((sub_22C383550(), v3) ? (v3 = v2 == 0xE200000000000000) : (v3 = 0), !v3 && (sub_22C382AC8() & 1) == 0))
  {
    sub_22C381950();
  }

  return sub_22C37170C();
}

uint64_t sub_22C8B3188()
{
  if (v0[12])
  {
    v1 = v0[11];
  }

  else if (!v0[3] || ((sub_22C383550(), v3) ? (v3 = v2 == 0xE200000000000000) : (v3 = 0), !v3 && (sub_22C382AC8() & 1) == 0))
  {
    sub_22C381950();
  }

  return sub_22C37170C();
}

uint64_t sub_22C8B31FC()
{
  if (v0[16])
  {
    v1 = v0[15];
  }

  else if (!v0[3] || ((sub_22C383550(), v3) ? (v3 = v2 == 0xE200000000000000) : (v3 = 0), !v3 && (sub_22C382AC8() & 1) == 0))
  {
    sub_22C381950();
  }

  return sub_22C37170C();
}

uint64_t sub_22C8B3280()
{
  result = *(v0 + 153);
  if (result == 2)
  {
    if (*(v0 + 24) && ((sub_22C383550(), v3) ? (v3 = v2 == 0xE200000000000000) : (v3 = 0), v3 || (sub_22C382AC8() & 1) != 0))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_22C8B3318@<X0>(uint64_t *a1@<X8>)
{
  result = static ResponseGenerationPreferencesDomain.bundleResource.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22C8B3368()
{
  sub_22C8B3518(319, &qword_2814357E0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_22C8B3518(319, &qword_2814357F0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_22C8B3518(319, &qword_2814357D8);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_22C8B357C(319, &qword_2814357D0, &qword_27D9C1130, &unk_22C92C7C0);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_22C8B3518(319, &qword_2814357C8);
      if (v8 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_22C8B357C(319, &qword_2814357E8, &qword_27D9BB5D0, &unk_22C9112A0);
        v1 = v9;
        if (v10 <= 0x3F)
        {
          sub_22C8B35EC();
          v1 = v11;
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_22C8B3518(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_22C380768();
    v3 = sub_22C901F2C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_22C8B357C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_22C3AC1A0(a3, a4);
    sub_22C380768();
    v5 = sub_22C901F2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22C8B35EC()
{
  if (!qword_2814357C0)
  {
    sub_22C901E6C();
    v0 = sub_22C901F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_2814357C0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationPreferencesDomain(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C8B3754()
{
  result = qword_27D9C1220;
  if (!qword_27D9C1220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1220);
  }

  return result;
}

unint64_t sub_22C8B37AC()
{
  result = qword_2814302A8;
  if (!qword_2814302A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814302A8);
  }

  return result;
}

unint64_t sub_22C8B3804()
{
  result = qword_2814302B0;
  if (!qword_2814302B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814302B0);
  }

  return result;
}

uint64_t sub_22C8B3868@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22C8B3090();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_22C8B3894@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22C8B3114();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_22C8B38C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22C8B3188();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_22C8B38EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22C8B31FC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_22C8B3918@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 136);
  v3 = *(*result + 140);
  if (v3)
  {
    v2 = 0;
  }

  *(a2 + 4) = 0;
  *a2 = v2;
  *(a2 + 5) = v3;
  return result;
}

uint64_t sub_22C8B393C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 1024;
  if (!*(*result + 152))
  {
    v2 = *(*result + 144);
  }

  *a2 = v2;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C8B3960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_22C8B3280();
  *a2 = result;
  return result;
}

id sub_22C8B39AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_22C90A0EC();

  v7 = [a4 URLForResource:a1 withExtension:v6];

  return v7;
}

uint64_t sub_22C8B3A20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C588FB8();
  *a1 = result;
  return result;
}

uint64_t sub_22C8B3A48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_22C3C0B2C();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_22C8B3A98(uint64_t a1)
{
  *(v1 + 40) = a1;

  return type metadata accessor for ResponseGenerationPreferences();
}

uint64_t sub_22C8B3AC0()
{
  result = v1;
  *(v2 - 240) = v0;
  return result;
}

uint64_t sub_22C8B3AD4(char a1, void (*a2)(uint64_t *__return_ptr, char *, void *), uint64_t a3, uint64_t a4)
{
  v6 = a1;
  BYTE1(v12) = a1;
  v7 = *(a4 + 16);
  v8 = (a4 + 40);
  if (v7)
  {
    while (1)
    {
      v9 = *v8;
      v11[0] = *(v8 - 1);
      v11[1] = v9;

      a2(&v12, &v12 + 1, v11);
      if (v4)
      {
        break;
      }

      v6 = v12;
      BYTE1(v12) = v12;
      v8 += 2;
      if (!--v7)
      {
        return v6 & 1;
      }
    }
  }

  return v6 & 1;
}

unint64_t sub_22C8B3B8C()
{
  v1 = v0;
  v2 = sub_22C9026BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D1CBF0])
  {
    v8 = 0x73736563637573;
  }

  else if (v7 == *MEMORY[0x277D1CB98])
  {
    v8 = 0x5374657070696E73;
  }

  else if (v7 == *MEMORY[0x277D1CBA8] || v7 == *MEMORY[0x277D1CBB0])
  {
    v8 = 0xD000000000000012;
  }

  else if (v7 == *MEMORY[0x277D1CBB8])
  {
    v8 = 0xD000000000000013;
  }

  else if (v7 == *MEMORY[0x277D1CBD0])
  {
    v8 = 0xD000000000000015;
  }

  else if (v7 == *MEMORY[0x277D1CBD8])
  {
    v8 = 0xD000000000000017;
  }

  else if (v7 == *MEMORY[0x277D1CBC0])
  {
    v8 = 0xD000000000000013;
  }

  else if (v7 == *MEMORY[0x277D1CBE0])
  {
    v8 = 0xD00000000000001BLL;
  }

  else if (v7 == *MEMORY[0x277D1CBA0])
  {
    v8 = 0xD000000000000011;
  }

  else if (v7 == *MEMORY[0x277D1CBC8])
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    if (v7 == *MEMORY[0x277D1CBE8])
    {
      v8 = 0x6572756C696166;
    }

    else
    {
      v8 = 0;
    }

    *MEMORY[0x277D1CBE8];
  }

  (*(v3 + 8))(v6, v2);
  return v8;
}

void *sub_22C8B3ECC()
{
  v51 = sub_22C9026BC();
  v0 = *(v51 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22C907DEC();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22C906ECC();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v48);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22C907C5C();
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v47);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C90804C();
  v15 = *(v14 + 16);
  if (v15)
  {
    v17 = *(v10 + 16);
    v16 = v10 + 16;
    v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v37[1] = v14;
    v19 = v14 + v18;
    v43 = *(v16 + 56);
    v44 = v17;
    v41 = (v3 + 8);
    v42 = (v6 + 8);
    v39 = (v16 - 8);
    v40 = (v0 + 8);
    v20 = MEMORY[0x277D84F90];
    v38 = xmmword_22C90F800;
    v45 = v16;
    do
    {
      v21 = v47;
      v44(v13, v19, v47);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v22 = swift_allocObject();
      *(v22 + 16) = v38;
      sub_22C907C0C();
      v23 = v46;
      sub_22C906EBC();
      (*v42)(v9, v48);
      v24 = v50;
      sub_22C907DAC();
      (*v41)(v23, v49);
      v25 = sub_22C8B3B8C();
      v27 = v26;
      (*v40)(v24, v51);
      *(v22 + 32) = v25;
      *(v22 + 40) = v27;
      v52 = v22;
      sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      sub_22C3F035C();
      v28 = sub_22C90A04C();
      v30 = v29;
      (*v39)(v13, v21);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = *(v20 + 16);
        sub_22C590270();
        v20 = v34;
      }

      v31 = *(v20 + 16);
      if (v31 >= *(v20 + 24) >> 1)
      {
        sub_22C590270();
        v20 = v35;
      }

      *(v20 + 16) = v31 + 1;
      v32 = v20 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v30;
      v19 += v43;
      --v15;
    }

    while (v15);
  }

  else
  {

    return &unk_283FB0A48;
  }

  return v20;
}

uint64_t sub_22C8B4338()
{
  v0 = sub_22C8B3ECC();
  v3[2] = &v4;
  v1 = sub_22C8B3AD4(1, sub_22C8B52F4, v3, v0);

  return v1 & 1;
}

uint64_t sub_22C8B43F8(uint64_t a1)
{
  v117 = a1;
  v108 = sub_22C90806C();
  v1 = sub_22C369824(v108);
  v107 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v106 = v6 - v5;
  v113 = sub_22C9063DC();
  v7 = sub_22C369824(v113);
  v112 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v110 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v109 = &v105 - v14;
  MEMORY[0x28223BE20](v13);
  v111 = &v105 - v15;
  v124 = sub_22C906ECC();
  v16 = sub_22C369824(v124);
  v115 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v22 = v21 - v20;
  v23 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v105 - v25;
  v123 = sub_22C907C5C();
  v27 = sub_22C369824(v123);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  v34 = v33 - v32;
  v122 = sub_22C90634C();
  v35 = sub_22C369824(v122);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  v120 = v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v105 - v42;
  v121 = sub_22C90636C();
  v44 = sub_22C369824(v121);
  v119 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C369838();
  v50 = v49 - v48;
  sub_22C9036AC();
  sub_22C90633C();
  v51 = sub_22C90635C();
  v52 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v53 = swift_slowAlloc();
    LODWORD(v116) = v52;
    v54 = v53;
    *v53 = 0;
    v55 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v51, v116, v55, "ResponseGeneration.requestValidation", "", v54, 2u);
    sub_22C3699EC();
  }

  v56 = v122;
  (*(v37 + 16))(v120, v43, v122);
  v57 = sub_22C9063AC();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  v116 = sub_22C90639C();
  (*(v37 + 8))(v43, v56);
  v119[1](v50, v121);
  v60 = *(v118 + 64);
  if (v60)
  {
    v61 = *(v118 + 64);
    sub_22C89A778();
    sub_22C89FC7C();
  }

  v114 = v60;
  result = sub_22C90804C();
  v63 = result;
  v64 = *(result + 16);
  if (v64)
  {
    v65 = 0;
    v122 = result + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v120 = v29 + 8;
    v121 = (v29 + 16);
    v119 = (v115 + 8);
    while (v65 < *(v63 + 16))
    {
      v66 = v123;
      (*(v29 + 16))(v34, v122 + *(v29 + 72) * v65, v123);
      sub_22C907C0C();
      (*(v29 + 8))(v34, v66);
      sub_22C906E9C();
      (*v119)(v22, v124);
      v67 = sub_22C90769C();
      if (sub_22C370B74(v26, 1, v67) == 1)
      {
        result = sub_22C3770B0(v26, &qword_27D9BF330, &unk_22C923250);
      }

      else
      {
        v68 = sub_22C90768C();
        v70 = v69;
        v71 = *(*(v67 - 8) + 8);
        v72 = v67;
        v73 = v68;
        v71(v26, v72);
        v74 = v118;
        if (sub_22C5E935C(v73, v70, *(*(v118 + 56) + 16)))
        {
          v77 = v73;

          v78 = v111;
          sub_22C90405C();

          v79 = sub_22C9063CC();
          v80 = sub_22C90AAFC();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v127[0] = v82;
            *v81 = 136315138;
            v83 = sub_22C36F9F4(v77, v70, v127);

            *(v81 + 4) = v83;
            _os_log_impl(&dword_22C366000, v79, v80, "'%s' is in the NLG denylist.", v81, 0xCu);
            sub_22C36FF94(v82);
            sub_22C3699EC();
            sub_22C3699EC();
          }

          else
          {
          }

          (*(v112 + 8))(v78, v113);
          if (v114)
          {
            v95 = sub_22C89A778();
            v96 = 1;
            goto LABEL_29;
          }

LABEL_30:
          sub_22C8B4EAC(v118);
          v76 = 0;
          goto LABEL_31;
        }

        v75 = *sub_22C374168((v74 + 16), *(v74 + 40));
        result = sub_22C8B4338();
        if ((result & 1) == 0)
        {

          sub_22C378A4C(v118 + 16, v127);
          sub_22C3A5908(&qword_27D9C1228, &qword_22C92CAB0);
          sub_22C3A5908(&qword_27D9C1230, &qword_22C92CAB8);
          if (swift_dynamicCast())
          {
            sub_22C3770B0(v125, &qword_27D9C1238, &unk_22C92CAC0);
            v84 = v109;
            sub_22C90405C();
            v85 = v107;
            v86 = v106;
            v87 = v108;
            (*(v107 + 16))(v106, v117, v108);
            v88 = sub_22C9063CC();
            v89 = sub_22C90AAFC();
            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              v127[0] = v124;
              *v90 = 136315138;
              sub_22C8B3ECC();
              v91 = MEMORY[0x2318B7AD0]();
              v93 = v92;

              (*(v85 + 8))(v86, v87);
              v94 = sub_22C36F9F4(v91, v93, v127);

              *(v90 + 4) = v94;
              _os_log_impl(&dword_22C366000, v88, v89, "Request fingerprints: %s", v90, 0xCu);
              sub_22C36FF94(v124);
              sub_22C3699EC();
              sub_22C3699EC();
            }

            else
            {

              (*(v85 + 8))(v86, v87);
            }

            v98 = v112;
            v97 = v113;
            (*(v112 + 8))(v84, v113);
          }

          else
          {
            v126 = 0;
            memset(v125, 0, sizeof(v125));
            sub_22C3770B0(v125, &qword_27D9C1238, &unk_22C92CAC0);
            v97 = v113;
            v98 = v112;
          }

          v99 = v110;
          sub_22C90405C();
          v100 = sub_22C9063CC();
          v101 = sub_22C90AAFC();
          v102 = os_log_type_enabled(v100, v101);
          v103 = v114;
          if (v102)
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            _os_log_impl(&dword_22C366000, v100, v101, "Invalid request to ResponseGeneration", v104, 2u);
            sub_22C3699EC();
          }

          (*(v98 + 8))(v99, v97);
          if (v103)
          {
            v95 = sub_22C89A778();
            v96 = 3;
LABEL_29:
            *(v95 + 24) = v96;
          }

          goto LABEL_30;
        }
      }

      if (v64 == ++v65)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_22C8B4EAC(v118);
    v76 = 1;
LABEL_31:

    return v76;
  }

  return result;
}

uint64_t sub_22C8B4EAC(uint64_t a1)
{
  v2 = sub_22C90637C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22C90634C();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22C90636C();
  v11 = *(v28 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v28);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 64))
  {
    sub_22C89A778();
    sub_22C89FEB8();
  }

  sub_22C9036AC();
  v15 = sub_22C90635C();
  sub_22C90638C();
  v27 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v26 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v26 = "%s";
      v17 = 2;
      v16 = 1;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = v17;
    *(v18 + 1) = v16;
    *(v18 + 2) = 2080;
    sub_22C90366C();
    v20 = sub_22C90AF7C();
    v22 = sub_22C36F9F4(v20, v21, &v30);

    *(v18 + 4) = v22;
    v23 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v15, v27, v23, "ResponseGeneration.requestValidation", v26, v18, 0xCu);
    sub_22C36FF94(v19);
    MEMORY[0x2318B9880](v19, -1, -1);
    MEMORY[0x2318B9880](v18, -1, -1);
  }

  (*(v7 + 8))(v10, v29);
  return (*(v11 + 8))(v14, v28);
}

uint64_t *sub_22C8B5228()
{
  sub_22C36FF94(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t sub_22C8B5258()
{
  sub_22C8B5228();

  return swift_deallocClassInstance();
}

BOOL sub_22C8B52B0@<W0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_22C8B43B0(*a1, *a2, a2[1], *a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

BOOL sub_22C8B5310(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

void sub_22C8B5340()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    if (v3-- == 0)
    {
      break;
    }

    v6 = 0xE500000000000000;
    v7 = 0x454E4F4850;
    switch(*v4)
    {
      case 1:
        v6 = 0xE300000000000000;
        v7 = 4473168;
        break;
      case 2:
        v6 = 0xE800000000000000;
        v7 = 0x4E414D4553524F48;
        break;
      case 3:
        v6 = 0xE400000000000000;
        v7 = 1398097242;
        break;
      case 4:
        v7 = 0x4F454D4143;
        break;
      case 5:
        v7 = 0x4843544157;
        break;
      case 6:
        v6 = 0xE300000000000000;
        v7 = 5390659;
        break;
      case 7:
        v7 = 0x544952414752414DLL;
        v6 = 0xE900000000000041;
        break;
      case 8:
        v6 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v8 = 0xE500000000000000;
    v9 = 0x454E4F4850;
    switch(v1)
    {
      case 1:
        v8 = 0xE300000000000000;
        v9 = 4473168;
        break;
      case 2:
        v8 = 0xE800000000000000;
        v9 = 0x4E414D4553524F48;
        break;
      case 3:
        v8 = 0xE400000000000000;
        v9 = 1398097242;
        break;
      case 4:
        v9 = 0x4F454D4143;
        break;
      case 5:
        v9 = 0x4843544157;
        break;
      case 6:
        v8 = 0xE300000000000000;
        v9 = 5390659;
        break;
      case 7:
        v9 = 0x544952414752414DLL;
        v8 = 0xE900000000000041;
        break;
      case 8:
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {

      break;
    }

    v11 = sub_22C90B4FC();

    ++v4;
  }

  while ((v11 & 1) == 0);
  sub_22C36CC48();
}

BOOL sub_22C8B5564(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_22C8B5594(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_22C8B55C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    do
    {
      v3 = *(v2 - 2);
      v4 = *(v2 - 1);
      v5 = *v2;
      v2 += 24;
      sub_22C6A45F4();
      --v1;
    }

    while (v1);
  }
}

void sub_22C8B5628()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C90952C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v28 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v28 - v15;
  v17 = 0;
  v29 = v1;
  v19 = *(v1 + 56);
  v18 = v1 + 56;
  v20 = *(v18 - 24);
  sub_22C36D280();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v28[1] = v5 + 32;
  v28[2] = v5 + 16;
  v28[0] = v5 + 8;
  if ((v22 & v21) != 0)
  {
    do
    {
      v26 = v17;
LABEL_7:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v5 + 16))(v16, *(v29 + 48) + *(v5 + 72) * (v27 | (v26 << 6)), v2);
      (*(v5 + 32))(v10, v16, v2);
      sub_22C6A521C();
      (*(v5 + 8))(v14, v2);
    }

    while (v23);
  }

  while (1)
  {
    v26 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      sub_22C36CC48();
      return;
    }

    v23 = *(v18 + 8 * v26);
    ++v17;
    if (v23)
    {
      v17 = v26;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_22C8B58E8()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v1 = sub_22C908EAC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v13 = *(v0 + 16);
  if (v13)
  {
    v16 = *(v4 + 16);
    v14 = v4 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v21[1] = v0;
    v18 = v0 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v9, v18, v1);
      sub_22C6A676C();
      (*(v14 - 8))(v12, v1);
      v18 += v19;
      --v13;
    }

    while (v13);

    sub_22C36CC48();
  }

  else
  {
    sub_22C36CC48();
  }
}

uint64_t sub_22C8B5A44(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_22C6A4514(v18, v11, v12, v13, v14, v15, v16, v17, v18[0], v18[1]);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_22C8B5B4C()
{
  sub_22C36986C();
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C37A198();
  swift_allocError();
  *v1 = v0;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_22C8B5BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

BOOL sub_22C8B5BF8(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_22C8B5C28()
{
  sub_22C36BA7C();
  v2 = v1;
  v38 = v3;
  v36 = sub_22C3A5908(&qword_27D9C1310, &qword_22C92D008);
  v4 = sub_22C36985C(v36);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v37 = (v7 - v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = sub_22C9037DC();
  v13 = sub_22C369824(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - v22;
  v24 = *(v15 + 16);
  v35 = v0;
  v24(v20, v0, v12);
  v25 = MEMORY[0x277D1ED48];
  v33 = sub_22C8C5F28(&qword_27D9BB820, MEMORY[0x277D1ED48]);
  sub_22C90AE1C();
  v26 = v25;
  v27 = v36;
  sub_22C8C5F28(&qword_27D9C1318, v26);
  v34 = v2;
  v28 = sub_22C90A0BC();
  v29 = *(v27 + 48);
  *v11 = (v28 & 1) == 0;
  if (v28)
  {
    (*(v15 + 32))(&v11[v29], v23, v12);
  }

  else
  {
    (*(v15 + 8))(v23, v12);
    v24(&v11[v29], v34, v12);
    v30 = sub_22C6AF810();
    (v24)(v30);
    sub_22C90AE2C();
  }

  v31 = v37;
  sub_22C407C2C();
  v32 = *v31;
  (*(v15 + 32))(v38, &v31[*(v27 + 48)], v12);
  sub_22C36CC48();
}

void ResponseValidationContext.init(input:dialogValues:)()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for TypedValueFormatter(0);
  v9 = sub_22C36985C(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C3A5908(&qword_27D9C1240, &qword_22C92CAD0);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22C36CD40();
  v20 = type metadata accessor for DialogValues(v19);
  v21 = sub_22C36985C(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  sub_22C37B6BC();
  v24 = sub_22C90806C();
  sub_22C3699C8(v24);
  v26 = v25;
  v27 = *(v25 + 16);
  v28 = sub_22C36BA00();
  v29(v28);
  v33 = v3;
  sub_22C3A7214();
  if (sub_22C370B74(v1, 1, v20) == 1)
  {
    sub_22C907FFC();
    v30 = (v14 + *(v8 + 20));
    sub_22C9091CC();
    sub_22C3704C4();
    sub_22C9093BC();
    sub_22C8C5F28(&qword_27D9BF390, MEMORY[0x277D72900]);
    *v30 = 0;
    v30[1] = 0;
    sub_22C909F0C();
    sub_22C880CD0();
    sub_22C3AC228(v33, &qword_27D9C1240, &qword_22C92CAD0);
    (*(v26 + 8))(v5, v24);
    if (sub_22C370B74(v1, 1, v20) != 1)
    {
      sub_22C3AC228(v1, &qword_27D9C1240, &qword_22C92CAD0);
    }
  }

  else
  {
    sub_22C3AC228(v3, &qword_27D9C1240, &qword_22C92CAD0);
    (*(v26 + 8))(v5, v24);
    sub_22C38588C();
    sub_22C8C5CFC(v1, v0);
  }

  v31 = *(type metadata accessor for ResponseValidationContext(0) + 20);
  sub_22C38588C();
  sub_22C8C5CFC(v0, v7 + v32);
  sub_22C36CC48();
}

uint64_t sub_22C8B61E4(uint64_t a1)
{
  v2 = sub_22C8C5BD4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8B6220(uint64_t a1)
{
  v2 = sub_22C8C5BD4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t ResponseValidationRuleResult.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_22C36BA00();
}

uint64_t ResponseValidationRuleResult.message.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_22C36BA00();
}

uint64_t ResponseValidationResult.ruleResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

uint64_t Unsafe.__allocating_init(_:)()
{
  sub_22C8C6114();
  swift_allocObject();
  sub_22C387194();
  Unsafe.init(_:)();
  return v0;
}

void Unsafe.init(_:)()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v36 = v2;
  v4 = sub_22C90077C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v37 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v35 = v10;
  sub_22C36BA0C();
  v11 = sub_22C901CBC();
  v12 = sub_22C369914(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  sub_22C36BA0C();
  v15 = sub_22C901BDC();
  v16 = sub_22C369914(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v39 = sub_22C901C6C();
  v19 = sub_22C369824(v39);
  v38 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe_locale;
  v27 = *(v7 + 16);
  v27(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe_locale, v3, v4);
  sub_22C909F0C();
  v28 = sub_22C369A48();
  v29 = type metadata accessor for Unsafe._ClientInfo(v28);
  sub_22C8C6144(v29);
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe__clientInfo) = sub_22C8B7350(0xD000000000000019, 0x800000022C939A30, 0, 1, v3);
  v27(v35, v1 + v26, v4);
  sub_22C3A5908(&qword_27D9C1250, &qword_22C92CAD8);
  sub_22C369A48();
  v30 = sub_22C901CAC();
  sub_22C3699B8(v30);
  v32 = *(v31 + 72);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  *(swift_allocObject() + 16) = xmmword_22C90F870;
  sub_22C901C8C();
  sub_22C901C9C();
  sub_22C901C7C();
  sub_22C901BCC();
  sub_22C901BEC();
  (*(v37 + 8))(v36, v4);
  (*(v38 + 32))(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe_sanitizer, v25, v39);
  sub_22C36FB20();
}

uint64_t Unsafe.validate(text:context:)()
{
  sub_22C369980();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_22C9063DC();
  v1[9] = v5;
  sub_22C3699B8(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = sub_22C3699D4();
  v9 = type metadata accessor for ResponseGenerationPreferences();
  v1[12] = v9;
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  v1[13] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C8B6784()
{
  sub_22C36FB38();
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0();
  }

  v1 = *(v0 + 104);
  sub_22C37AA60(*(v0 + 96), qword_281437588);
  sub_22C36CA70();
  sub_22C388B88();
  v2 = sub_22C36BA00();
  sub_22C8C26E4(v2, v3);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C901EDC();
  v4 = *(v0 + 120);
  sub_22C3876D8();
  if (v4 == 1)
  {
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_22C8B6964;
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);

    return sub_22C8B6B84(v8, v6);
  }

  else
  {
    v10 = *(v0 + 88);
    sub_22C90405C();
    v11 = sub_22C9063CC();
    v12 = sub_22C90AABC();
    if (sub_22C37B204(v12))
    {
      v13 = sub_22C36D240();
      sub_22C36C890(v13);
      sub_22C36BB14(&dword_22C366000, v14, v15, "Rules based response validation skipped via default ResponseGenerationRules being set to false");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);

    v19 = *(v17 + 8);
    v20 = sub_22C36BAFC();
    v21(v20);
    v22 = *(v0 + 40);
    *v22 = 1;
    *(v22 + 8) = 0x656661736E55;
    *(v22 + 16) = 0xE600000000000000;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    v23 = *(v0 + 104);
    v24 = *(v0 + 88);

    sub_22C369C50();

    return v25();
  }
}

uint64_t sub_22C8B6964()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 104);
    v12 = *(v5 + 88);

    v13 = *(v9 + 8);

    return v13();
  }

  else
  {
    *(v5 + 121) = v3 & 1;
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_22C8B6AB0()
{
  sub_22C36D5EC();
  if (*(v0 + 121) == 1)
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 56);
    v3 = *(v0 + 40);
    sub_22C38C56C();
    v10 = v4 & 0xFFFFFFFFFFFFLL | 0x203A000000000000;
    MEMORY[0x2318B7850]();
    *v3 = 0;
    *(v3 + 8) = 0x656661736E55;
    *(v3 + 16) = 0xE600000000000000;
    *(v3 + 24) = v10;
    *(v3 + 32) = 0xE800000000000000;
  }

  else
  {
    v5 = *(v0 + 40);
    *v5 = 1;
    *(v5 + 8) = 0x656661736E55;
    *(v5 + 16) = 0xE600000000000000;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 88);

  sub_22C369C50();

  return v8();
}

uint64_t sub_22C8B6B84(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_22C9063DC();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = sub_22C9062DC();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = sub_22C901C0C();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8B6D0C, 0, 0);
}

uint64_t sub_22C8B6D0C()
{
  sub_22C36D5EC();
  v1 = v0[19];
  v2 = v0[9];
  v3 = [objc_opt_self() processInfo];
  [v3 processIdentifier];

  sub_22C901BFC();
  v4 = *(MEMORY[0x277D0E4B8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_22C8B6E24;
  v6 = v0[19];
  v8 = v0[7];
  v7 = v0[8];

  return MEMORY[0x2821669B8](v8, v7, v6);
}

uint64_t sub_22C8B6E24()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = v4[20];
  v6 = v4[19];
  v7 = v4[18];
  v8 = v4[17];
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  v13[21] = v11;
  v13[22] = v12;
  v13[23] = v0;

  v14 = *(v7 + 8);
  v15 = sub_22C36BAFC();
  v16(v15);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22C8B6F80()
{
  sub_22C36FB38();
  if (v0[21] == v0[7] && v0[22] == v0[8])
  {
    v5 = v0[22];

    v4 = 0;
  }

  else
  {
    v2 = v0[22];
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  v6 = v0[19];
  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];

  v10 = v0[1];

  return v10(v4 & 1);
}

uint64_t sub_22C8B704C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C372634();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 184);
  *(v22 + 40) = v25;
  v26 = *(v22 + 128);
  v27 = *(v22 + 112);
  v28 = v25;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C36BBCC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((*(*(v22 + 120) + 88))(*(v22 + 128), *(v22 + 112)) != *MEMORY[0x277D0DBC8])
  {
    (*(*(v22 + 120) + 8))(*(v22 + 128), *(v22 + 112));
LABEL_7:
    v47 = *(v22 + 184);
    v48 = *(v22 + 96);

    sub_22C90405C();
    v49 = v47;
    v50 = sub_22C9063CC();
    v51 = sub_22C90AADC();

    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v22 + 184);
    v55 = *(v22 + 88);
    v54 = *(v22 + 96);
    v56 = *(v22 + 80);
    if (v52)
    {
      a10 = *(v22 + 96);
      sub_22C36BED8();
      v57 = swift_slowAlloc();
      sub_22C370220();
      v58 = swift_slowAlloc();
      a11 = v58;
      *v57 = 136315138;
      swift_getErrorValue();
      v60 = *(v22 + 16);
      v59 = *(v22 + 24);
      v61 = *(v22 + 32);
      v62 = sub_22C90B57C();
      v64 = sub_22C36F9F4(v62, v63, &a11);

      *(v57 + 4) = v64;
      _os_log_impl(&dword_22C366000, v50, v51, "Sanitizer failed: %s", v57, 0xCu);
      sub_22C36FF94(v58);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v55 + 8))(a10, v56);
    }

    else
    {

      (*(v55 + 8))(v54, v56);
    }

    goto LABEL_10;
  }

  v29 = *(v22 + 104);

  sub_22C90405C();
  v30 = sub_22C9063CC();
  v31 = sub_22C90AADC();
  if (sub_22C37B204(v31))
  {
    v32 = sub_22C36D240();
    sub_22C36C890(v32);
    sub_22C36BB14(&dword_22C366000, v33, v34, "Sanitizer threw GenerativeErrors.SanitizerError.sanitizerRejected");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v36 = *(v22 + 120);
  v35 = *(v22 + 128);
  v38 = *(v22 + 104);
  v37 = *(v22 + 112);
  v39 = *(v22 + 80);
  v40 = *(v22 + 88);

  v41 = *(v40 + 8);
  v42 = sub_22C36ECB4();
  v43(v42);
  v44 = *(v36 + 8);
  v45 = sub_22C36BAFC();
  v46(v45);

LABEL_10:
  v65 = *(v22 + 152);
  v66 = *(v22 + 128);
  v68 = *(v22 + 96);
  v67 = *(v22 + 104);

  v69 = *(v22 + 8);
  sub_22C36D5F8();

  return v72(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14);
}

unsigned __int8 *sub_22C8B7350(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v64 = a4;
  v10 = sub_22C90197C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C901BBC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v62 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BBDA8, &qword_22C911848);
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  v20 = sub_22C3A5908(&qword_27D9BBBC0, &qword_22C92C1C0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v61 = &v59 - v22;
  v23 = sub_22C901D7C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_22C909F0C();
  sub_22C901D6C();
  (*(v24 + 32))(v6 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime6UnsafeP33_A90434656D6BFE77F87FBA93378A99E611_ClientInfo_trackingConfig, v27, v23);
  v28 = sub_22C6054B8(0xD000000000000015, 0x800000022C939F40, a5);
  v30 = v29;

  v65 = a1;
  if (!v30)
  {
    goto LABEL_66;
  }

  v32 = HIBYTE(v30) & 0xF;
  v33 = v28 & 0xFFFFFFFFFFFFLL;
  if ((v30 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v30) & 0xF;
  }

  else
  {
    v34 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
LABEL_65:

LABEL_66:
    sub_22C90194C();
    sub_22C90122C();
    sub_22C90126C();
    (*(v60 + 8))(v19, v16);
    sub_22C90127C();
    sub_22C8C5F28(&qword_281435820, MEMORY[0x277D29CE0]);
    sub_22C90125C();
    sub_22C90196C();
    sub_22C901BAC();
    *(v6 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime6UnsafeP33_A90434656D6BFE77F87FBA93378A99E611_ClientInfo__model) = sub_22C90191C();
    return v6;
  }

  if ((v30 & 0x1000000000000000) != 0)
  {
    sub_22C5C96C4(v28, v30, 10);
    goto LABEL_65;
  }

  if ((v30 & 0x2000000000000000) == 0)
  {
    if ((v28 & 0x1000000000000000) != 0)
    {
      result = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_22C90AFCC();
    }

    v35 = *result;
    if (v35 == 43)
    {
      if (v33 >= 1)
      {
        v32 = v33 - 1;
        if (v33 != 1)
        {
          v44 = 0;
          if (result)
          {
            v45 = result + 1;
            while (1)
            {
              v46 = *v45 - 48;
              if (v46 > 9)
              {
                goto LABEL_63;
              }

              v47 = 10 * v44;
              if ((v44 * 10) >> 64 != (10 * v44) >> 63)
              {
                goto LABEL_63;
              }

              v44 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                goto LABEL_63;
              }

              ++v45;
              if (!--v32)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_72;
    }

    if (v35 != 45)
    {
      if (v33)
      {
        v52 = 0;
        if (result)
        {
          while (1)
          {
            v53 = *result - 48;
            if (v53 > 9)
            {
              goto LABEL_63;
            }

            v54 = 10 * v52;
            if ((v52 * 10) >> 64 != (10 * v52) >> 63)
            {
              goto LABEL_63;
            }

            v52 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v33)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      LOBYTE(v32) = 1;
      goto LABEL_64;
    }

    if (v33 >= 1)
    {
      v32 = v33 - 1;
      if (v33 != 1)
      {
        v36 = 0;
        if (result)
        {
          v37 = result + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              goto LABEL_63;
            }

            v39 = 10 * v36;
            if ((v36 * 10) >> 64 != (10 * v36) >> 63)
            {
              goto LABEL_63;
            }

            v36 = v39 - v38;
            if (__OFSUB__(v39, v38))
            {
              goto LABEL_63;
            }

            ++v37;
            if (!--v32)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v32) = 0;
LABEL_64:
        v67 = v32;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v66[0] = v28;
  v66[1] = v30 & 0xFFFFFFFFFFFFFFLL;
  if (v28 != 43)
  {
    if (v28 != 45)
    {
      if (v32)
      {
        v55 = 0;
        v56 = v66;
        while (1)
        {
          v57 = *v56 - 48;
          if (v57 > 9)
          {
            break;
          }

          v58 = 10 * v55;
          if ((v55 * 10) >> 64 != (10 * v55) >> 63)
          {
            break;
          }

          v55 = v58 + v57;
          if (__OFADD__(v58, v57))
          {
            break;
          }

          ++v56;
          if (!--v32)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v32)
    {
      if (--v32)
      {
        v40 = 0;
        v41 = v66 + 1;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          v43 = 10 * v40;
          if ((v40 * 10) >> 64 != (10 * v40) >> 63)
          {
            break;
          }

          v40 = v43 - v42;
          if (__OFSUB__(v43, v42))
          {
            break;
          }

          ++v41;
          if (!--v32)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v32)
  {
    if (--v32)
    {
      v48 = 0;
      v49 = v66 + 1;
      while (1)
      {
        v50 = *v49 - 48;
        if (v50 > 9)
        {
          break;
        }

        v51 = 10 * v48;
        if ((v48 * 10) >> 64 != (10 * v48) >> 63)
        {
          break;
        }

        v48 = v51 + v50;
        if (__OFADD__(v51, v50))
        {
          break;
        }

        ++v49;
        if (!--v32)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_22C8B7A24()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime6UnsafeP33_A90434656D6BFE77F87FBA93378A99E611_ClientInfo_trackingConfig;
  v3 = sub_22C901D7C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime6UnsafeP33_A90434656D6BFE77F87FBA93378A99E611_ClientInfo__model);

  return v0;
}

uint64_t sub_22C8B7A9C()
{
  v0 = *sub_22C8B7A24();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C8B7AF0()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_22C8B7B24@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime6UnsafeP33_A90434656D6BFE77F87FBA93378A99E611_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = sub_22C901D7C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_22C8B7BB0(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime6UnsafeP33_A90434656D6BFE77F87FBA93378A99E611_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = sub_22C901D7C();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t (*sub_22C8B7C44())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t Unsafe.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe_locale;
  v2 = sub_22C90077C();
  sub_22C369848(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe_sanitizer;
  v5 = sub_22C901C6C();
  sub_22C369848(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe__clientInfo);

  return v0;
}

uint64_t sub_22C8B7D80@<X0>(uint64_t *a1@<X8>)
{
  result = Unsafe.__allocating_init(_:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22C8B7DAC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C46BC08;

  return Unsafe.validate(text:context:)();
}

uint64_t Ungrounded.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_name);
  v2 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_name + 8);

  return sub_22C36BA00();
}

void Ungrounded.init(_:)()
{
  sub_22C370030();
  sub_22C8C61D0();
  v78 = v1;
  v79 = v3;
  v4 = sub_22C90077C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v69 = v10;
  sub_22C36BA0C();
  v11 = sub_22C9063DC();
  v12 = sub_22C369824(v11);
  v76 = v13;
  v77 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v81 = v16;
  sub_22C36BA0C();
  v17 = sub_22C90075C();
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  sub_22C370654();
  v23 = sub_22C3A5908(&qword_27D9BBC00, &unk_22C911240);
  sub_22C369914(v23);
  v25 = *(v24 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v26);
  v28 = &v66 - v27;
  sub_22C36DCB8();
  *v30 = v29;
  v30[1] = 0xEA00000000006465;
  v31 = (v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_errorMessage);
  *v31 = 0;
  v31[1] = 0;
  v73 = v31;
  v74 = v30;
  v32 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_dialogValues;
  type metadata accessor for DialogValues(0);
  v75 = v32;
  sub_22C36A748();
  sub_22C36C640(v33, v34, v35, v36);
  v70 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_stopWords;
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_stopWords) = &unk_283FB05E0;
  v71 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_disambiguationAllowlist;
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_disambiguationAllowlist) = &unk_283FB0610;
  v72 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_binaryWords;
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_binaryWords) = &unk_283FB0650;
  v80 = v7;
  v37 = *(v7 + 16);
  v68 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_locale;
  v83 = v4;
  v37(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_locale, v2, v4);
  v82 = v2;
  sub_22C90076C();
  sub_22C90074C();
  v38 = *(v20 + 8);
  v39 = sub_22C36FC2C();
  v40(v39);
  v41 = sub_22C9006FC();
  if (sub_22C370B74(v28, 1, v41) == 1)
  {
    sub_22C3AC228(v28, &qword_27D9BBC00, &unk_22C911240);
    sub_22C90405C();
    v42 = v69;
    v43 = v82;
    v37(v69, v82, v83);
    v44 = sub_22C9063CC();
    v45 = sub_22C90AADC();
    if (os_log_type_enabled(v44, v45))
    {
      sub_22C36BED8();
      v46 = swift_slowAlloc();
      v67 = v46;
      sub_22C370220();
      v78 = swift_slowAlloc();
      *v46 = 136315138;
      sub_22C8C5F28(&qword_281435838, MEMORY[0x277CC9788]);
      v47 = sub_22C90B47C();
      v48 = *(v80 + 8);
      v49 = sub_22C36ECB4();
      v48(v49);
      v50 = sub_22C37B9B0();
      sub_22C36F9F4(v50, v51, v52);
      sub_22C387194();
      v43 = v82;

      v53 = v67;
      *(v67 + 1) = v47;
      _os_log_impl(&dword_22C366000, v44, v45, "Cannot extract language code from %s", v53, 0xCu);
      sub_22C36FF94(v78);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {

      v48 = *(v80 + 8);
      (v48)(v42, v83);
    }

    (*(v76 + 8))(v81, v77);
    sub_22C8C2690();
    sub_22C37A198();
    swift_allocError();
    sub_22C37E248(v57, 1);
    v58 = v83;
    (v48)(v43, v83);
    (v48)(v0 + v68, v58);
    v59 = v74[1];

    v60 = v73[1];

    sub_22C3AC228(v0 + v75, &qword_27D9C1240, &qword_22C92CAD0);
    v61 = *(v0 + v70);

    v62 = *(v0 + v71);

    v63 = *(v0 + v72);

    v64 = *(*v0 + 48);
    v65 = *(*v0 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_22C9006EC();
    sub_22C36BBA8(v41);
    (*(v54 + 8))(v28, v41);
    v55 = sub_22C90A0EC();

    v56 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
    *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_tokenizer) = v56;
    [v56 setLanguage_];

    (*(v80 + 8))(v82, v83);
  }

  sub_22C36FB20();
}

uint64_t Ungrounded.validate(text:context:)()
{
  sub_22C369980();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_22C9063DC();
  v1[13] = v6;
  sub_22C3699B8(v6);
  v1[14] = v7;
  v9 = *(v8 + 64);
  v1[15] = sub_22C3699D4();
  v10 = type metadata accessor for ResponseGenerationPreferences();
  v1[16] = v10;
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  v1[17] = sub_22C3699D4();
  v13 = sub_22C3A5908(&qword_27D9C1240, &qword_22C92CAD0);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  v1[18] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C8B85D8()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = (v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_errorMessage);
  v5 = *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_errorMessage + 8);
  *v4 = 0;
  v4[1] = 0;

  v6 = type metadata accessor for ResponseValidationContext(0);
  sub_22C8C26E4(v3 + *(v6 + 20), v1);
  v7 = type metadata accessor for DialogValues(0);
  sub_22C36C640(v1, 0, 1, v7);
  v8 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_dialogValues;
  swift_beginAccess();
  sub_22C8C273C(v1, v2 + v8);
  swift_endAccess();
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0();
  }

  v9 = *(v0 + 136);
  sub_22C37AA60(*(v0 + 128), qword_281437588);
  sub_22C36CA70();
  sub_22C388B88();
  v10 = sub_22C36BA00();
  sub_22C8C26E4(v10, v11);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C901EDC();
  v12 = *(v0 + 152);
  sub_22C3876D8();
  if (v12 != 1)
  {
    v20 = *(v0 + 120);
    sub_22C90405C();
    v21 = sub_22C9063CC();
    v22 = sub_22C90AABC();
    if (sub_22C37B204(v22))
    {
      v23 = sub_22C36D240();
      sub_22C36C890(v23);
      sub_22C36BB14(&dword_22C366000, v24, v25, "Validation skipped via default ResponseGenerationRules being set to false");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v27 = *(v0 + 112);
    v26 = *(v0 + 120);
    v28 = *(v0 + 104);

    v29 = *(v27 + 8);
    v30 = sub_22C36BAFC();
    v31(v30);
    goto LABEL_9;
  }

  v13 = *(v0 + 88);
  v14 = *(sub_22C90804C() + 16);

  if (!v14 || (v15 = *(v0 + 88), v16 = *(v0 + 96), v18 = *(v0 + 72), v17 = *(v0 + 80), v19 = sub_22C90804C(), v41 = sub_22C8B8910(v18, v17, v19), , (v41 & 1) == 0))
  {
LABEL_9:
    v32 = *(v0 + 64);
    v33 = (*(v0 + 96) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_name);
    v35 = *v33;
    v34 = v33[1];
    *v32 = 1;
    *(v32 + 8) = v35;
    *(v32 + 16) = v34;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0;

    goto LABEL_10;
  }

  v43 = *(v0 + 72);
  v42 = *(v0 + 80);
  v44 = *(v0 + 64);
  v45 = (*(v0 + 96) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_name);
  v47 = *v45;
  v46 = v45[1];

  sub_22C90AF5C();

  sub_22C36DCB8();
  v49 = v48;
  MEMORY[0x2318B7850](v43, v42);
  MEMORY[0x2318B7850](34, 0xE100000000000000);
  *v44 = 0;
  *(v44 + 8) = v47;
  *(v44 + 16) = v46;
  *(v44 + 24) = v49;
  *(v44 + 32) = 0xED000022203A6465;
LABEL_10:
  v37 = *(v0 + 136);
  v36 = *(v0 + 144);
  v38 = *(v0 + 120);

  sub_22C369C50();

  return v39();
}

uint64_t sub_22C8B8910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v106 = sub_22C9020CC();
  v112 = *(v106 - 8);
  v9 = *(v112 + 64);
  MEMORY[0x28223BE20](v106 - 8);
  v105 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9093BC();
  v102 = *(v11 - 8);
  v12 = *(v102 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v104 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v84 - v16);
  MEMORY[0x28223BE20](v15);
  v93 = &v84 - v18;
  v92 = sub_22C9029AC();
  v101 = *(v92 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x28223BE20](v92 - 8);
  v91 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22C902A4C();
  v111 = *(v87 - 8);
  v21 = *(v111 + 64);
  MEMORY[0x28223BE20](v87 - 8);
  v86 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22C9026BC();
  v108 = *(v23 - 8);
  v109 = v23;
  v24 = *(v108 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_22C907DEC();
  v116 = *(v119 - 8);
  v27 = *(v116 + 64);
  MEMORY[0x28223BE20](v119);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22C906ECC();
  v115 = *(v118 - 8);
  v30 = *(v115 + 64);
  MEMORY[0x28223BE20](v118);
  v117 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v3;
  sub_22C3A4108(a1, a2, *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_tokenizer));
  v120 = a1;
  v121 = a2;
  v32 = sub_22C90AA3C();
  v33 = *(v32 + 16);
  v107 = v11;
  v98 = v17;
  v110 = v26;
  v100 = v29;
  if (v33)
  {
    v103 = a3;
    v114 = v4;
    v122 = MEMORY[0x277D84F90];
    sub_22C3B800C();
    v34 = v122;
    v99 = v32;
    v35 = (v32 + 40);
    do
    {
      v36 = *(v35 - 1);
      v37 = *v35;
      v38 = sub_22C90A4AC();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v122 = v34;
      v45 = *(v34 + 16);
      if (v45 >= *(v34 + 24) >> 1)
      {
        sub_22C3B800C();
        v34 = v122;
      }

      v35 += 2;
      *(v34 + 16) = v45 + 1;
      v46 = (v34 + 32 * v45);
      v46[4] = v38;
      v46[5] = v40;
      v46[6] = v42;
      v46[7] = v44;
      --v33;
    }

    while (v33);

    v5 = v114;
    v11 = v107;
    v26 = v110;
    v29 = v100;
    a3 = v103;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  v47 = *(a3 + 16);
  v48 = v109;
  if (!v47)
  {
LABEL_28:

    v81 = 0;
    return v81 & 1;
  }

  v121 = v34;
  v49 = *(sub_22C907C5C() - 8);
  v50 = a3 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
  v120 = (v115 + 8);
  v116 += 8;
  v114 = (v108 + 88);
  LODWORD(v115) = *MEMORY[0x277D1CBF0];
  LODWORD(v103) = *MEMORY[0x277D1CBA8];
  v97 = *MEMORY[0x277D1CBD0];
  v90 = *MEMORY[0x277D1CBD8];
  v99 = (v108 + 8);
  v108 += 96;
  v85 = (v111 + 32);
  v84 = (v111 + 8);
  v89 = (v101 + 32);
  v111 = v102 + 8;
  v88 = (v101 + 8);
  v96 = *MEMORY[0x277D729B8];
  v95 = *MEMORY[0x277D72A58];
  v94 = (v102 + 104);
  v101 = v112 + 8;
  v102 = v112 + 32;
  v112 = *(v49 + 72);
  while (1)
  {
    v51 = v117;
    sub_22C907C0C();
    sub_22C906EBC();
    (*v120)(v51, v118);
    sub_22C907DAC();
    (*v116)(v29, v119);
    v52 = (*v114)(v26, v48);
    if (v52 == v115)
    {
      (*v108)(v26, v48);
      v53 = v105;
      v54 = v26;
      v55 = v106;
      (*v102)(v105, v54, v106);
      v56 = v104;
      sub_22C90207C();
      v57 = sub_22C8B9864(v121, v56);
      if (v5)
      {

        (*v111)(v56, v107);
        (*v101)(v53, v55);
        return v81 & 1;
      }

      v58 = v57;
      v59 = v56;
      v11 = v107;
      (*v111)(v59, v107);
      (*v101)(v53, v55);
      v48 = v109;
      v26 = v110;
      if (v58)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (v52 == v103)
    {
      v60 = sub_22C90931C();
      v61 = swift_allocBox();
      *v62 = 0;
      v62[1] = 0xE000000000000000;
      (*(*(v60 - 8) + 104))(v62, v96, v60);
      v63 = v5;
      v64 = v11;
      v65 = v98;
      *v98 = v61;
      (*v94)(v65, v95, v64);
      v66 = sub_22C8B9864(v121, v65);
      if (v63)
      {

        (*v111)(v65, v64);
        (*v99)(v26, v48);
        return v81 & 1;
      }

      v67 = v66;
      (*v111)(v65, v64);
      (*v99)(v26, v48);
      v11 = v64;
      v5 = 0;
      if (v67)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (v52 != v97)
    {
      break;
    }

    v68 = v11;
    (*v108)(v26, v48);
    v69 = v91;
    v70 = v26;
    v71 = v92;
    (*v89)(v91, v70, v92);
    v72 = v93;
    sub_22C90299C();
    v73 = sub_22C8B9864(v121, v72);
    if (v5)
    {

      (*v111)(v72, v68);
      v82 = &v121;
      goto LABEL_34;
    }

    v74 = v73;
    (*v111)(v72, v68);
    v75 = v69;
    v11 = v68;
    (*v88)(v75, v71);
    v48 = v109;
    v26 = v110;
    v29 = v100;
    if (v74)
    {
      goto LABEL_29;
    }

LABEL_27:
    v50 += v112;
    if (!--v47)
    {
      goto LABEL_28;
    }
  }

  if (v52 != v90)
  {
    (*v99)(v26, v48);
    goto LABEL_27;
  }

  v76 = v11;
  (*v108)(v26, v48);
  v69 = v86;
  v77 = v26;
  v71 = v87;
  (*v85)(v86, v77, v87);
  v78 = sub_22C902A3C();
  v79 = sub_22C8B9518(v121, v78);
  if (!v5)
  {
    v80 = v79;

    (*v84)(v69, v71);
    v26 = v110;
    v11 = v76;
    v29 = v100;
    if (v80)
    {
LABEL_29:

      v81 = 1;
      return v81 & 1;
    }

    goto LABEL_27;
  }

  v82 = &v117;
LABEL_34:
  (**(v82 - 32))(v69, v71);
  return v81 & 1;
}

uint64_t sub_22C8B9518(uint64_t result, uint64_t a2)
{
  v4 = a2;
  v36 = 0;
  v5 = 0;
  v6 = *(a2 + 16);
  v7 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_disambiguationAllowlist;
  v35 = (v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_errorMessage);
  v34 = ") before personal name (";
  v42 = result;
  v37 = (result + 56);
  v38 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_disambiguationAllowlist;
  v39 = v6;
  v40 = a2;
LABEL_2:
  v8 = v5;
  while (1)
  {
    if (v8 == v6)
    {
      return v36 & 1;
    }

    if (v8 >= v6)
    {
      break;
    }

    v9 = sub_22C9093BC();
    v11 = *(v9 - 8);
    result = v9 - 8;
    v10 = v11;
    v5 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_36;
    }

    result = sub_22C8B9C98(v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
    if (v3)
    {
      return v36 & 1;
    }

    v13 = v12;
    ++v8;
    if (v12)
    {
      v14 = result;
      v15 = *(v2 + v7);
      v48 = result;
      v49 = v12;
      MEMORY[0x28223BE20](result);
      v33 = &v48;
      if (sub_22C5EC08C(sub_22C3AC11C, &v32, v16))
      {
LABEL_31:

        goto LABEL_2;
      }

      v48 = v14;
      v49 = v13;
      sub_22C3858B4();
      result = sub_22C90AD9C();
      v17 = *(v42 + 16);
      v50 = result;
      v18 = *(result + 16);
      v45 = v17 - v18;
      if ((v17 - v18) >= 0)
      {
        v19 = 0;
        v20 = (v50 + 56);
        v21 = v37;
        v47 = v5;
        v43 = (v50 + 56);
        v44 = v18;
        while (1)
        {
          v22 = v20;
          v23 = v19;
          v46 = v21;
          if (!v18)
          {
            break;
          }

          while (1)
          {
            if (v23 >= v17)
            {
              __break(1u);
              goto LABEL_35;
            }

            result = *(v21 - 1);
            v24 = result == *(v22 - 1) && *v21 == *v22;
            v25 = v24 && *(v21 - 3) >> 16 == *(v22 - 3) >> 16;
            if (!v25 || *(v21 - 2) >> 16 != *(v22 - 2) >> 16)
            {
              LOBYTE(v33) = 0;
              result = sub_22C90B46C();
              if ((result & 1) == 0)
              {
                break;
              }
            }

            v21 += 4;
            --v18;
            ++v23;
            v22 += 4;
            if (!v18)
            {
              goto LABEL_30;
            }
          }

          v18 = v44;
          v5 = v47;
          if (v19 == v45)
          {
            goto LABEL_32;
          }

          v21 = v46 + 4;
          v27 = __OFADD__(v19++, 1);
          v20 = v43;
          if (v27)
          {
            goto LABEL_37;
          }
        }

LABEL_30:

        v4 = v40;
        v2 = v41;
        v7 = v38;
        v6 = v39;
        v5 = v47;
        goto LABEL_31;
      }

LABEL_32:

      v48 = 0;
      v49 = 0xE000000000000000;
      sub_22C90AF5C();
      MEMORY[0x2318B7850](0xD00000000000002BLL, v34 | 0x8000000000000000);
      MEMORY[0x2318B7850](v14, v13);

      MEMORY[0x2318B7850](0x206E692022, 0xE500000000000000);
      v28 = MEMORY[0x2318B7AD0](v42, MEMORY[0x277D83E40]);
      MEMORY[0x2318B7850](v28);

      v29 = v49;
      v30 = v35;
      v31 = v35[1];
      *v35 = v48;
      v30[1] = v29;

      v36 = 1;
      v4 = v40;
      v2 = v41;
      v7 = v38;
      v6 = v39;
      goto LABEL_2;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_22C8B9864(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = sub_22C9093BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C8BA898(a2);
  v13 = result;
  v41 = 0;
  v14 = 0;
  v15 = *(result + 16);
  v52 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_binaryWords;
  v40 = (v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_errorMessage);
  v54 = v8 + 16;
  v55 = (v8 + 8);
  v56 = v15;
  v39 = "isambiguation alternative ";
  v44 = v2;
  v45 = a1;
  v42 = (a1 + 56);
  v43 = v7;
  v49 = v11;
  v50 = v8;
  v48 = result;
  while (1)
  {
    if (v14 == v56)
    {
      goto LABEL_32;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    (*(v8 + 16))(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v7);
    v16 = sub_22C8B9C98(v11);
    if (v4)
    {
      (*v55)(v11, v7);
LABEL_32:

      return v41 & 1;
    }

    v18 = v17;
    v60 = v16;
    ++v14;
    result = (*v55)(v11, v7);
    if (v18)
    {
      v57 = v14;
      v19 = *(v2 + v52);
      v20 = v60;
      v58 = v60;
      v59 = v18;
      MEMORY[0x28223BE20](result);
      v38 = &v58;
      if (sub_22C5EC08C(sub_22C457404, (&v39 - 4), v21))
      {
        goto LABEL_29;
      }

      v51 = 0;
      v58 = v20;
      v59 = v18;
      sub_22C3858B4();
      result = sub_22C90AD9C();
      v22 = *(v45 + 16);
      v53 = result;
      v23 = *(result + 16);
      v47 = v22 - v23;
      if ((v22 - v23) < 0)
      {
LABEL_30:

        v58 = 0;
        v59 = 0xE000000000000000;
        sub_22C90AF5C();

        v58 = 0x222065756C6156;
        v59 = 0xE700000000000000;
        MEMORY[0x2318B7850](v60, v18);

        MEMORY[0x2318B7850](0xD000000000000011, v39 | 0x8000000000000000);
        v34 = MEMORY[0x2318B7AD0](v45, MEMORY[0x277D83E40]);
        MEMORY[0x2318B7850](v34);

        v35 = v59;
        v36 = v40;
        v37 = v40[1];
        *v40 = v58;
        v36[1] = v35;

        v41 = 1;
        v4 = v51;
        v7 = v43;
        v2 = v44;
        v14 = v57;
      }

      else
      {
        v24 = 0;
        v25 = (v53 + 56);
        v26 = v42;
        v46 = v23;
        while (1)
        {
          v27 = v25;
          v28 = v24;
          v29 = v26;
          if (!v23)
          {
            break;
          }

          while (1)
          {
            if (v28 >= v22)
            {
              __break(1u);
              goto LABEL_34;
            }

            result = *(v29 - 1);
            v30 = result == *(v27 - 1) && *v29 == *v27;
            v31 = v30 && *(v29 - 3) >> 16 == *(v27 - 3) >> 16;
            if (!v31 || *(v29 - 2) >> 16 != *(v27 - 2) >> 16)
            {
              LOBYTE(v38) = 0;
              result = sub_22C90B46C();
              if ((result & 1) == 0)
              {
                break;
              }
            }

            v29 += 4;
            --v23;
            ++v28;
            v27 += 4;
            if (!v23)
            {
              goto LABEL_28;
            }
          }

          v13 = v48;
          v11 = v49;
          v8 = v50;
          v23 = v46;
          if (v24 == v47)
          {
            goto LABEL_30;
          }

          v26 += 4;
          if (__OFADD__(v24++, 1))
          {
            goto LABEL_35;
          }
        }

LABEL_28:

        v8 = v50;
        v4 = v51;
        v7 = v43;
        v2 = v44;
        v13 = v48;
        v11 = v49;
LABEL_29:

        v14 = v57;
      }
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_22C8B9C98(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v95 = *(v2 - 8);
  v96 = v2;
  v3 = *(v95 + 64);
  MEMORY[0x28223BE20](v2);
  v94 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22C90000C();
  v83 = *(v84 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  v86 = *(v87 - 8);
  v7 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v82 - v8;
  v99 = sub_22C3A5908(&qword_27D9C1300, &unk_22C92CFF8);
  v89 = *(v99 - 8);
  v9 = *(v89 + 64);
  v10 = MEMORY[0x28223BE20](v99);
  v88 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v82 - v12;
  v97 = type metadata accessor for DialogValues(0);
  v13 = *(*(v97 - 1) + 8);
  MEMORY[0x28223BE20](v97);
  v91 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C9093BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v93 = (&v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = (&v82 - v20);
  v22 = sub_22C90931C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v82 - v28;
  v92 = *(v16 + 16);
  v92(v21, a1, v15);
  if ((*(v16 + 88))(v21, v15) == *MEMORY[0x277D72A58])
  {
    (*(v16 + 96))(v21, v15);
    v30 = *v21;
    v31 = swift_projectBox();
    (*(v23 + 16))(v29, v31, v22);

    (*(v23 + 32))(v27, v29, v22);
    v32 = (*(v23 + 88))(v27, v22);
    v33 = a1;
    if (v32 != *MEMORY[0x277D72978])
    {
      v34 = v32;
      if (v32 == *MEMORY[0x277D729B8])
      {
        (*(v23 + 8))(v27, v22);
      }

      else
      {
        v71 = *MEMORY[0x277D72980];
        (*(v23 + 8))(v27, v22);
        v72 = v34 == v71;
        v33 = a1;
        if (!v72)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    (*(v16 + 8))(v21, v15);
    v33 = a1;
  }

  v35 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_dialogValues;
  v36 = v98;
  swift_beginAccess();
  if (sub_22C370B74(v36 + v35, 1, v97))
  {
    goto LABEL_7;
  }

  v49 = v91;
  sub_22C8C26E4(v36 + v35, v91);
  v50 = v108;
  sub_22C881B80(v33, v51, v52, v53, v54, v55, v56, v57, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v59 = v58;
  v61 = v60;
  result = sub_22C8C5ED8();
  if (v50)
  {
    return v49;
  }

  v108 = 0;
  if (!v61)
  {
LABEL_7:
    v37 = v94;
    sub_22C90405C();
    v38 = v93;
    v92(v93, v33, v15);
    v39 = sub_22C9063CC();
    v40 = sub_22C90AADC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v37;
      v43 = swift_slowAlloc();
      v106 = v43;
      *v41 = 136642819;
      v44 = sub_22C90938C();
      v45 = v38;
      v47 = v46;
      (*(v16 + 8))(v45, v15);
      v48 = sub_22C36F9F4(v44, v47, &v106);

      *(v41 + 4) = v48;
      _os_log_impl(&dword_22C366000, v39, v40, "Failed to get formatForDialog(%{sensitive}s)", v41, 0xCu);
      sub_22C36FF94(v43);
      MEMORY[0x2318B9880](v43, -1, -1);
      MEMORY[0x2318B9880](v41, -1, -1);

      (*(v95 + 8))(v42, v96);
    }

    else
    {

      (*(v16 + 8))(v38, v15);
      (*(v95 + 8))(v37, v96);
    }

    return 0;
  }

  v63 = 0;
  v106 = v59;
  v107 = v61;
  v64 = *(v36 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_stopWords);
  v98 = *(v64 + 16);
  v97 = (v89 + 8);
  v65 = (v64 + 40);
  v66 = v90;
  while (v98 != v63)
  {
    if (v63 >= *(v64 + 16))
    {
      __break(1u);
      return result;
    }

    v68 = *(v65 - 1);
    v67 = *v65;
    v104 = 25180;
    v105 = 0xE200000000000000;

    v49 = &v104;
    MEMORY[0x2318B7850](v68, v67);

    MEMORY[0x2318B7850](25180, 0xE200000000000000);
    v69 = v108;
    sub_22C9030EC();
    v108 = v69;
    if (v69)
    {
      goto LABEL_23;
    }

    ++v63;
    v104 = 32;
    v105 = 0xE100000000000000;
    sub_22C471D70();
    sub_22C471DC4();
    sub_22C439EB0(&qword_27D9C1308, &qword_27D9C1300, &unk_22C92CFF8);
    v70 = v99;
    sub_22C90A9EC();
    result = (*v97)(v66, v70);
    v65 += 2;
  }

  sub_22C3A5908(&qword_27D9BC320, &unk_22C92CFE0);
  v73 = v85;
  sub_22C90306C();
  sub_22C471D70();
  sub_22C471DC4();
  sub_22C439EB0(&qword_27D9BC318, &qword_27D9BC308, &qword_22C912668);
  v49 = &v106;
  v74 = v87;
  v75 = v108;
  sub_22C90A9DC();
  (*(v86 + 8))(v73, v74);
  v102 = v106;
  v103 = v107;
  v76 = v88;
  sub_22C9030EC();
  if (v75)
  {
LABEL_23:

    return v49;
  }

  v100 = 32;
  v101 = 0xE100000000000000;
  sub_22C439EB0(&qword_27D9C1308, &qword_27D9C1300, &unk_22C92CFF8);
  v77 = v99;
  sub_22C90AA0C();
  (*v97)(v76, v77);

  v102 = v104;
  v103 = v105;
  v78 = v82;
  sub_22C8FFFEC();
  sub_22C3858B4();
  v49 = sub_22C90AD3C();
  v80 = v79;
  (*(v83 + 8))(v78, v84);

  v81 = HIBYTE(v80) & 0xF;
  if ((v80 & 0x2000000000000000) == 0)
  {
    v81 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v81)
  {

    return 0;
  }

  return v49;
}

uint64_t sub_22C8BA7E4@<X0>(void *a1@<X8>)
{
  sub_22C3A5908(&qword_27D9BC310, &unk_22C92CFD0);
  sub_22C9030CC();

  v2 = MEMORY[0x2318B76D0]();
  v4 = v3;

  MEMORY[0x2318B7850](v2, v4);

  *a1 = 32;
  a1[1] = v6;
  return result;
}

uint64_t sub_22C8BA898(uint64_t a1)
{
  v2 = sub_22C9093BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22C90906C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 16);
  v12(v6, a1, v2);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D729E0])
  {
    (*(v3 + 96))(v6, v2);
    v13 = *v6;
    v14 = swift_projectBox();
    (*(v8 + 16))(v11, v14, v7);

    v15 = sub_22C90905C();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v17 = *(v3 + 8);
    v16 = v3 + 8;
    v17(v6, v2);
    sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
    v18 = *(v16 + 64);
    v19 = (*(v16 + 72) + 32) & ~*(v16 + 72);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_22C90F800;
    v12((v15 + v19), a1, v2);
  }

  return v15;
}

uint64_t Ungrounded.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_locale;
  v2 = sub_22C90077C();
  sub_22C369848(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_name + 8);

  v5 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_errorMessage + 8);

  sub_22C3AC228(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_dialogValues, &qword_27D9C1240, &qword_22C92CAD0);
  v6 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_stopWords);

  v7 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_disambiguationAllowlist);

  v8 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_binaryWords);

  return v0;
}

uint64_t sub_22C8BABF8(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C8BAC78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Ungrounded.__allocating_init(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C8BACA4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C382AF4;

  return Ungrounded.validate(text:context:)();
}

uint64_t sub_22C8BADC0(uint64_t a1, void (*a2)(uint64_t))
{
  sub_22C8C6114();
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

void BadGrammar.init(_:)()
{
  sub_22C370030();
  v2 = v0;
  v4 = v3;
  v5 = sub_22C90075C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C3A5908(&qword_27D9BBC00, &unk_22C911240);
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C370654();
  v18 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10BadGrammar_locale;
  v19 = sub_22C90077C();
  sub_22C3699C8(v19);
  v21 = v20;
  (*(v20 + 16))(v2 + v18, v4, v19);
  sub_22C90076C();
  sub_22C90074C();
  (*(v8 + 8))(v13, v5);
  v22 = sub_22C9006FC();
  if (sub_22C370B74(v1, 1, v22) == 1)
  {
    sub_22C3AC228(v1, &qword_27D9BBC00, &unk_22C911240);
  }

  else
  {
    sub_22C9006EC();
    sub_22C36BBA8(v22);
    v24 = *(v23 + 8);
    v25 = sub_22C36FC2C();
    v26(v25);
  }

  v27 = sub_22C90A0EC();

  *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10BadGrammar_language) = v27;
  if (qword_27D9BA7F8 != -1)
  {
    swift_once();
  }

  v28 = *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10BadGrammar_language);
  sub_22C8C193C();
  v30 = v29;

  if (v30)
  {
    v31 = *(v21 + 8);
  }

  else
  {
    sub_22C8C2690();
    sub_22C37A198();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();

    v35 = *(v21 + 8);
  }

  v32 = sub_22C36ECB4();
  v33(v32);
  sub_22C36FB20();
}

uint64_t BadGrammar.validate(text:context:)()
{
  sub_22C369980();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_22C9063DC();
  v1[9] = v5;
  sub_22C3699B8(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = sub_22C3699D4();
  v9 = type metadata accessor for ResponseGenerationPreferences();
  v1[12] = v9;
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  v1[13] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C8BB1AC()
{
  sub_22C8C27AC();
  if (qword_27D9BA7E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  v3 = sub_22C8BB460();
  sub_22C3A4108(v2, v1, v3);
  v4 = *MEMORY[0x277CD8970];
  v5 = sub_22C90ABBC();
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0();
  }

  v6 = *(v0 + 104);
  v7 = sub_22C37AA60(*(v0 + 96), qword_281437588);
  sub_22C36CA70();
  sub_22C388B88();
  sub_22C8C26E4(v7, v6);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C901EDC();
  LODWORD(v7) = *(v0 + 112);
  sub_22C3876D8();
  if (v7 == 1)
  {
    v8 = *(v0 + 64);
    sub_22C8BB4D8(*(v0 + 48), *(v0 + 56), v3, v5);
    v10 = v9;
    v12 = v11;

    if (v12)
    {
      v13 = *(v0 + 40);

      *v13 = 0;
      *(v13 + 8) = 0x6D61724720646142;
      *(v13 + 16) = 0xEB0000000072616DLL;
      *(v13 + 24) = v10;
      *(v13 + 32) = v12;
      goto LABEL_12;
    }
  }

  else
  {
    v14 = *(v0 + 88);

    sub_22C90405C();
    v15 = sub_22C9063CC();
    v16 = sub_22C90AABC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_22C36D240();
      *v17 = 0;
      _os_log_impl(&dword_22C366000, v15, v16, "Rules based response validation skipped via default ResponseGenerationRules being set to false", v17, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    v20 = *(v0 + 72);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 40);

  *v21 = 1;
  *(v21 + 8) = 0x6D61724720646142;
  *(v21 + 16) = 0xEB0000000072616DLL;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
LABEL_12:
  v22 = *(v0 + 104);
  v23 = *(v0 + 88);

  sub_22C369A24();

  return v24();
}

id sub_22C8BB460()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  v1 = sub_22C90A5DC();

  v2 = [v0 initWithTagSchemes_];

  return v2;
}

void sub_22C8BB4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_22C46BD18(1, a4);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  sub_22C862EFC(1, a4);
  v185 = v10 >> 1;
  v182 = v11 >> 1;
  v191 = *MEMORY[0x277CD88F0];
  v180 = *MEMORY[0x277CD8920];
  v179 = *MEMORY[0x277CD8938];
  v177 = *MEMORY[0x277CD8928];
  v176 = *MEMORY[0x277CD8908];
  v178 = *MEMORY[0x277CD8958];
  v174 = *MEMORY[0x277CD8918];
  v175 = a4;
  v12 = (a4 + 96);
  v13 = (v6 + 24 * v8 + 16);
  v16 = (v14 + 24 * v15 + 8);
  v17 = 2;
  v186 = v8;
  v187 = v8 - (v10 >> 1);
  v183 = v15;
  v184 = v15 - (v11 >> 1);
  while (1)
  {
    if (v187 + v17 == 2)
    {
LABEL_136:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    v18 = v17 - 2;
    if (v17 - 2 + v186 >= v185)
    {
      break;
    }

    if (v184 + v17 == 2)
    {
      goto LABEL_136;
    }

    if (v18 + v183 >= v182)
    {
      goto LABEL_138;
    }

    if (__OFADD__(v18, 1))
    {
      goto LABEL_139;
    }

    v181 = v17 - 2;
    v20 = *(v13 - 2);
    v19 = *(v13 - 1);
    v193 = v16;
    v194 = v13;
    v21 = *v13;
    v22 = *v16;
    v23 = v16[1];
    v196 = *(v16 - 1);
    v197 = v17;
    v199 = v196;
    v195 = v20;
    v200 = v20;
    v188 = sub_22C90A4AC();
    v189 = v24;
    v190 = v25;
    v192 = v26;
    v201 = sub_22C90A4AC();
    v202 = v27;
    v203 = v28;
    v204 = v29;
    v30 = sub_22C90A4AC();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = sub_22C90A4AC();
    if (v34 == v40 && v36 == v39 && v30 >> 16 == v37 >> 16 && v32 >> 16 == v38 >> 16)
    {
    }

    else
    {
      v44 = sub_22C90B46C();

      if ((v44 & 1) == 0)
      {
        v46 = v197;
        v45 = v199;
        v47 = v204;
        goto LABEL_21;
      }
    }

    v205[0] = 0;
    v205[1] = 0xE000000000000000;
    sub_22C90AF5C();

    v205[0] = 0x6465746165706572;
    v205[1] = 0xEF206E656B6F7420;
    v47 = v204;
    v48 = MEMORY[0x2318B76D0](v201, v202, v203, v204);
    MEMORY[0x2318B7850](v48);

    v46 = v197;
    v45 = v199;
LABEL_21:
    v49 = v200;
    if (!v195)
    {

      goto LABEL_104;
    }

    v50 = sub_22C90A11C();
    v52 = v51;
    if (v50 == sub_22C90A11C() && v52 == v53)
    {
      v58 = v200;
      v59 = v45;

      if (!v196)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v55 = sub_22C90B4FC();
      v56 = v200;
      v57 = v45;

      v47 = v204;

      if ((v55 & 1) == 0 || !v196)
      {
        goto LABEL_36;
      }
    }

    v60 = sub_22C90A11C();
    v62 = v61;
    if (v60 == sub_22C90A11C() && v62 == v63)
    {

LABEL_57:

      v205[0] = 0;
      v205[1] = 0xE000000000000000;
      sub_22C90AF5C();

      strcpy(v205, "determiner (");
      BYTE5(v205[1]) = 0;
      HIWORD(v205[1]) = -5120;
      v84 = MEMORY[0x2318B76D0](v188, v189, v190, v192);
      v85 = v45;
      v87 = v86;

      MEMORY[0x2318B7850](v84, v87);

      v88 = 0xD000000000000018;
      v89 = "two consecutive determiners: ";
      goto LABEL_102;
    }

    v65 = sub_22C90B4FC();

    if (v65)
    {
      goto LABEL_57;
    }

LABEL_36:
    v66 = sub_22C90A11C();
    v68 = v67;
    if (v66 == sub_22C90A11C() && v68 == v69)
    {

      if (!v196)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v71 = sub_22C90B4FC();

      if ((v71 & 1) == 0 || !v196)
      {
        goto LABEL_49;
      }
    }

    v72 = sub_22C90A11C();
    v74 = v73;
    if (v72 == sub_22C90A11C() && v74 == v75)
    {

LABEL_72:

      v205[0] = 0;
      v205[1] = 0xE000000000000000;
      sub_22C90AF5C();

      v205[0] = 0xD00000000000001DLL;
      v205[1] = 0x800000022C939EB0;
      v102 = MEMORY[0x2318B76D0](v188, v189, v190, v192);
      v85 = v45;
      v104 = v103;

      MEMORY[0x2318B7850](v102, v104);

      v88 = 10272;
      v105 = 0xE200000000000000;
LABEL_103:
      MEMORY[0x2318B7850](v88, v105);
      v136 = MEMORY[0x2318B76D0](v201, v202, v203, v47);
      v138 = v137;

      MEMORY[0x2318B7850](v136, v138);

      MEMORY[0x2318B7850](41, 0xE100000000000000);

      goto LABEL_104;
    }

    v77 = sub_22C90B4FC();

    if (v77)
    {
      goto LABEL_72;
    }

LABEL_49:
    v78 = sub_22C90A11C();
    v80 = v79;
    if (v78 == sub_22C90A11C() && v80 == v81)
    {

      if (!v196)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v83 = sub_22C90B4FC();

      if ((v83 & 1) == 0 || !v196)
      {
        goto LABEL_64;
      }
    }

    v90 = sub_22C90A11C();
    v92 = v91;
    if (v90 == sub_22C90A11C() && v92 == v93)
    {

LABEL_87:

      v205[0] = 0;
      v205[1] = 0xE000000000000000;
      sub_22C90AF5C();
      MEMORY[0x2318B7850](0xD000000000000016, 0x800000022C939E70);
      v118 = MEMORY[0x2318B76D0](v188, v189, v190, v192);
      v85 = v45;
      v120 = v119;

      MEMORY[0x2318B7850](v118, v120);

      v88 = 0xD00000000000001ALL;
      v89 = "(possessive) pronoun (";
LABEL_102:
      v105 = v89 | 0x8000000000000000;
      goto LABEL_103;
    }

    v95 = sub_22C90B4FC();

    if (v95)
    {
      goto LABEL_87;
    }

LABEL_64:
    v96 = sub_22C90A11C();
    v98 = v97;
    if (v96 == sub_22C90A11C() && v98 == v99)
    {

      if (!v196)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v101 = sub_22C90B4FC();

      if ((v101 & 1) == 0 || !v196)
      {
        goto LABEL_79;
      }
    }

    v106 = sub_22C90A11C();
    v108 = v107;
    if (v106 == sub_22C90A11C() && v108 == v109)
    {

LABEL_101:

      v205[0] = 0;
      v205[1] = 0xE000000000000000;
      sub_22C90AF5C();
      MEMORY[0x2318B7850](0x6E696D7265746564, 0xEC00000028207265);
      v133 = MEMORY[0x2318B76D0](v188, v189, v190, v192);
      v85 = v45;
      v135 = v134;

      MEMORY[0x2318B7850](v133, v135);

      v88 = 0xD000000000000024;
      v89 = "ssessive singular name (";
      goto LABEL_102;
    }

    v111 = sub_22C90B4FC();

    if (v111)
    {
      goto LABEL_101;
    }

LABEL_79:
    v112 = sub_22C90A11C();
    v114 = v113;
    if (v112 == sub_22C90A11C() && v114 == v115)
    {

      if (!v196)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v117 = sub_22C90B4FC();

      if ((v117 & 1) == 0 || !v196)
      {
        goto LABEL_94;
      }
    }

    v121 = sub_22C90A11C();
    v123 = v122;
    if (v121 == sub_22C90A11C() && v123 == v124)
    {

LABEL_114:

      goto LABEL_117;
    }

    v126 = sub_22C90B4FC();

    if (v126)
    {
      goto LABEL_114;
    }

LABEL_94:
    v127 = sub_22C90A11C();
    v129 = v128;
    if (v127 == sub_22C90A11C() && v129 == v130)
    {
    }

    else
    {
      v132 = sub_22C90B4FC();
      v49 = v200;

      if ((v132 & 1) == 0)
      {

LABEL_130:
        goto LABEL_104;
      }
    }

    if (!v196)
    {

      goto LABEL_104;
    }

    v139 = sub_22C90A11C();
    v141 = v140;
    v143 = v139 == sub_22C90A11C() && v141 == v142;
    v49 = v200;
    if (v143)
    {
      v146 = v45;
    }

    else
    {
      v144 = sub_22C90B4FC();
      v145 = v45;

      if ((v144 & 1) == 0)
      {

        goto LABEL_130;
      }
    }

LABEL_117:
    v147 = sub_22C90ABAC();
    if (!v147)
    {

      goto LABEL_130;
    }

    v148 = v147;
    v149 = sub_22C90A11C();
    v151 = sub_22C5C9C48(v149, v150, v201, v202, v203, v47);

    if ((v151 & 1) == 0)
    {
      goto LABEL_129;
    }

    v152 = *(v175 + 16);
    if (v181 >= (v152 - 2))
    {
      goto LABEL_129;
    }

    if (v46 >= v152)
    {
      goto LABEL_140;
    }

    v153 = *(v12 - 2);
    if (!v153)
    {
LABEL_129:

      goto LABEL_130;
    }

    v154 = *(v12 - 1);
    v198 = *v12;
    v155 = sub_22C90A11C();
    v157 = v156;
    if (v155 == sub_22C90A11C() && v157 == v158)
    {
      v162 = v153;
    }

    else
    {
      v160 = sub_22C90B4FC();
      v161 = v153;

      if ((v160 & 1) == 0)
      {

        goto LABEL_104;
      }
    }

    if ((v154 ^ v23) >> 14 || (v163 = sub_22C90A4AC(), v167 = sub_22C8C4F74(v163, v164, v165, v166, 29479, 0xE200000000000000), , (v167 & 1) == 0))
    {
    }

    else
    {

      v205[0] = 0;
      v205[1] = 0xE000000000000000;
      sub_22C90AF5C();
      MEMORY[0x2318B7850](0x6E696D7265746564, 0xEC00000028207265);
      v168 = MEMORY[0x2318B76D0](v188, v189, v190, v192);
      v170 = v169;

      MEMORY[0x2318B7850](v168, v170);

      MEMORY[0x2318B7850](0xD000000000000028, 0x800000022C939E10);
      v171 = MEMORY[0x2318B76D0](v201, v202, v203, v204);
      v173 = v172;

      MEMORY[0x2318B7850](v171, v173);

      MEMORY[0x2318B7850](41, 0xE100000000000000);
    }

LABEL_104:
    v17 = v46 + 1;
    v12 += 3;
    v13 = v194 + 3;
    v16 = v193 + 3;
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

uint64_t BadGrammar.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10BadGrammar_locale;
  v2 = sub_22C90077C();
  sub_22C369848(v2);
  (*(v3 + 8))(v0 + v1);

  return v0;
}

uint64_t BadGrammar.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10BadGrammar_locale;
  v2 = sub_22C90077C();
  sub_22C369848(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C8BC604@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BadGrammar.__allocating_init(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C8BC630()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C588ED8;

  return BadGrammar.validate(text:context:)();
}

void sub_22C8BC6E4()
{
  sub_22C36BA7C();
  v68 = v0;
  v73 = v1;
  v3 = v2;
  v5 = v4;
  v72 = sub_22C3A5908(&qword_27D9BC310, &unk_22C92CFD0);
  sub_22C369824(v72);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  sub_22C369824(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  sub_22C3A5908(&qword_27D9BC320, &unk_22C92CFE0);
  sub_22C90306C();
  v74 = v5;
  v75 = v3;
  v76 = v5;
  v77 = v3;
  sub_22C3ECFB8();
  sub_22C439EB0(&qword_27D9BC318, &qword_27D9BC308, &qword_22C912668);
  v66 = v20;
  v21 = sub_22C90A03C();
  v22 = v21;
  v23 = *(v21 + 16);
  if (!v23)
  {
    v67 = MEMORY[0x277D84F90];
LABEL_45:

LABEL_47:
    (*(v15 + 8))(v66, v13);
    goto LABEL_48;
  }

  v24 = 0;
  v71 = v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v69 = v7 + 8;
  v70 = v7 + 16;
  v62 = v23 - 1;
  v67 = MEMORY[0x277D84F90];
  v64 = v15;
  v65 = v13;
LABEL_3:
  v25 = 0;
  v26 = v24;
LABEL_4:
  v63 = v25;
  v27 = 0;
  do
  {
    if (v26 >= *(v22 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v28 = v72;
    (*(v7 + 16))(v12, v71 + *(v7 + 72) * v26, v72);
    sub_22C9030BC();
    (*(v7 + 8))(v12, v28);
    sub_22C36BA00();
    v29 = sub_22C90A4AC();
    MEMORY[0x2318B76D0](v29);

    v30 = sub_22C90A1BC();
    v32 = v31;
    v33 = v73;

    if (*(v33 + 16) && (v34 = sub_22C36E2BC(v30, v32), (v35 & 1) != 0))
    {
      v36 = v34;

      v37 = *(*(v33 + 56) + 8 * v36);
      v38 = __OFADD__(v27, v37);
      v27 += v37;
      if (v38)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v39 = v30 == 0x646572646E7568 && v32 == 0xE700000000000000;
      if (!v39 && (sub_22C90B4FC() & 1) == 0)
      {
        if (*(v68 + 16))
        {
          v41 = sub_22C36E2BC(v30, v32);
          v43 = v42;

          if (v43)
          {
            v44 = *(*(v68 + 56) + 8 * v41);
            v45 = v27 * v44;
            if ((v27 * v44) >> 64 != (v27 * v44) >> 63)
            {
              goto LABEL_56;
            }

            v25 = v63 + v45;
            if (__OFADD__(v63, v45))
            {
              goto LABEL_57;
            }

            v39 = v62 == v26++;
            if (!v39)
            {
              goto LABEL_4;
            }

LABEL_52:
            v15 = v64;
            v13 = v65;
            goto LABEL_45;
          }
        }

        else
        {
        }

        if (v27 < 1)
        {
          goto LABEL_23;
        }

        v46 = v63 + v27;
        if (__OFADD__(v63, v27))
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          return;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = *(v67 + 16);
          sub_22C36D270();
          sub_22C590E18();
          v67 = v51;
        }

        v48 = *(v67 + 16);
        v47 = *(v67 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_22C37090C(v47);
          sub_22C590E18();
          v67 = v52;
        }

        v24 = v26 + 1;
        v49 = v67;
        *(v67 + 16) = v48 + 1;
        *(v49 + 8 * v48 + 32) = v46;
        v39 = v62 == v26;
        v15 = v64;
        v13 = v65;
        if (v39)
        {
          goto LABEL_45;
        }

        goto LABEL_3;
      }

      v40 = (v27 * 100) >> 64;
      v27 *= 100;
      if (v40 != v27 >> 63)
      {
        goto LABEL_50;
      }
    }

LABEL_23:
    ++v26;
  }

  while (v23 != v26);

  if (v27 <= 0)
  {
    v15 = v64;
    v13 = v65;
    goto LABEL_47;
  }

  v53 = v64;
  v54 = v63 + v27;
  v55 = v65;
  if (__OFADD__(v63, v27))
  {
    __break(1u);
  }

  else
  {
    v26 = v67;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_41;
    }
  }

  v59 = *(v26 + 16);
  sub_22C36D270();
  sub_22C590E18();
  v26 = v60;
LABEL_41:
  v56 = v66;
  v58 = *(v26 + 16);
  v57 = *(v26 + 24);
  if (v58 >= v57 >> 1)
  {
    sub_22C37090C(v57);
    sub_22C590E18();
    v26 = v61;
  }

  (*(v53 + 8))(v56, v55);
  *(v26 + 16) = v58 + 1;
  *(v26 + 8 * v58 + 32) = v54;
LABEL_48:
  sub_22C36CC48();
}

uint64_t SearchCountsMismatchRule.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22C36BA00();
}

uint64_t SearchCountsMismatchRule.__allocating_init(_:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_22C90077C();
  sub_22C369848(v2);
  (*(v3 + 8))(a1);
  return sub_22C3884C8();
}

uint64_t SearchCountsMismatchRule.init(_:)(uint64_t a1)
{
  v2 = sub_22C90077C();
  sub_22C369848(v2);
  (*(v3 + 8))(a1);
  return sub_22C3884C8();
}

uint64_t SearchCountsMismatchRule.validate(text:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_22C36A77C();
}

void sub_22C8BCE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  sub_22C369A48();
  v24 = sub_22C90A17C();
  v25 = sub_22C369914(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  v187 = v28;
  sub_22C36BA0C();
  v29 = sub_22C90277C();
  v30 = sub_22C369824(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  v190 = v35;
  v36 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v36);
  v38 = *(v37 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v39);
  sub_22C36CD40();
  v176 = sub_22C907DEC();
  v40 = sub_22C369824(v176);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  v175 = v45;
  sub_22C36BA0C();
  v174 = sub_22C906ECC();
  v46 = sub_22C369824(v174);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698A8();
  v173 = v51;
  sub_22C36BA0C();
  v177 = sub_22C9026AC();
  v52 = sub_22C369824(v177);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C3698A8();
  v167 = v57;
  v172 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C369824(v172);
  v59 = v58;
  v61 = *(v60 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v62);
  v171 = v161 - v63;
  v64 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v64);
  v66 = *(v65 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v67);
  sub_22C370654();
  v186 = sub_22C907C5C();
  v68 = sub_22C369824(v186);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22C3698A8();
  v184 = v73;
  v74 = sub_22C90804C();
  v183 = *(v74 + 16);
  if (!v183)
  {
LABEL_115:

    sub_22C36CC48();
    return;
  }

  v75 = 0;
  v182 = v74 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
  v181 = v70 + 16;
  v170 = v59 + 8;
  v169 = v48 + 8;
  v168 = v42 + 8;
  v165 = v54 + 32;
  v191 = (v32 + 8);
  v161[1] = &v195 + 1;
  v164 = v54 + 8;
  v178 = (v70 + 8);
  v166 = MEMORY[0x277D84F90];
  v76 = v190;
  v77 = v186;
  v162 = v20;
  v185 = v21;
  v179 = v74;
  v180 = v70;
  v163 = v32 + 16;
  while (1)
  {
    if (v75 >= *(v74 + 16))
    {
      goto LABEL_117;
    }

    v78 = *(v70 + 72);
    v189 = v75;
    (*(v70 + 16))(v184, v182 + v78 * v75, v77);
    sub_22C907C3C();
    v79 = sub_22C908EAC();
    if (sub_22C370B74(v21, 1, v79) != 1)
    {
      break;
    }

    sub_22C3AC228(v21, &qword_27D9BC1E8, &qword_22C9123B0);
    v80 = sub_22C36EED4();
    v81(v80, v77);
LABEL_114:
    v75 = v189 + 1;
    v77 = v186;
    v74 = v179;
    v70 = v180;
    if (v189 + 1 == v183)
    {
      goto LABEL_115;
    }
  }

  v82 = sub_22C908E8C();
  v84 = v83;
  sub_22C36BBA8(v79);
  (*(v85 + 8))(v21, v79);
  v195 = v82;
  v196 = v84;
  sub_22C90306C();
  sub_22C3ECFB8();
  sub_22C439EB0(&qword_27D9BC2F8, &qword_27D9BC170, &unk_22C912180);
  sub_22C90A01C();
  sub_22C36BA4C(&a13);
  v86 = sub_22C36FC2C();
  v87(v86);

  v88 = v173;
  sub_22C907C0C();
  v89 = v175;
  sub_22C906EBC();
  sub_22C36BA4C(&a12);
  v90(v88, v174);
  sub_22C907DDC();
  sub_22C36BA4C(&a11);
  v91(v89, v176);
  if (sub_22C370B74(v20, 1, v177) == 1)
  {
    v92 = sub_22C36EED4();
    v93(v92, v186);
    sub_22C3AC228(v20, &qword_27D9BF328, &qword_22C9225C0);
LABEL_113:
    v21 = v185;
    goto LABEL_114;
  }

  sub_22C36BA4C(&v197);
  v94 = sub_22C37B9B0();
  v96 = v95(v94);
  v97 = MEMORY[0x2318AFB10](v96);
  if (!v97)
  {
    sub_22C36BA4C(&v196);
    v157 = sub_22C36BBCC();
    v158(v157);
    v159 = sub_22C36EED4();
    v160(v159, v186);
    goto LABEL_113;
  }

  v21 = v185;
  v98 = v97;
  v193 = *(v97 + 16);
  if (!v193)
  {
LABEL_111:

    sub_22C36BA4C(&v196);
    v156(v167, v177);
    (*v178)(v184, v186);
    v20 = v162;
    goto LABEL_114;
  }

  v99 = 0;
  v192 = v97 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
  v188 = v97;
  while (v99 < *(v98 + 16))
  {
    (*(v32 + 16))(v76, v192 + *(v32 + 72) * v99, v29);
    sub_22C90275C();
    if (v100 >> 60 != 15)
    {
      sub_22C90A15C();
      sub_22C37493C();
      v102 = sub_22C90A13C();
      if (!v103)
      {
        v76 = v190;
        (*v191)(v190, v29);
        v111 = sub_22C37493C();
        sub_22C3C8114(v111, v112);
LABEL_30:
        v98 = v188;
        goto LABEL_31;
      }

      v104 = v102;
      v105 = v103;
      v106 = v32;
      v107 = v29;
      v109 = sub_22C90273C() == 0x726577736E61 && v108 == 0xE600000000000000;
      if (v109)
      {
      }

      else
      {
        v110 = sub_22C90B4FC();

        if ((v110 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v113 = v104 == 6647407 && v105 == 0xE300000000000000;
      if (v113 || (sub_22C6AF810(), (sub_22C90B4FC() & 1) != 0))
      {
LABEL_29:
        v76 = v190;
        v29 = v107;
        (*v191)(v190, v107);
        v114 = sub_22C37493C();
        sub_22C3C8114(v114, v115);

        v32 = v106;
        v21 = v185;
        goto LABEL_30;
      }

      v116 = HIBYTE(v105) & 0xF;
      v117 = v104 & 0xFFFFFFFFFFFFLL;
      if ((v105 & 0x2000000000000000) != 0)
      {
        v118 = HIBYTE(v105) & 0xF;
      }

      else
      {
        v118 = v104 & 0xFFFFFFFFFFFFLL;
      }

      v29 = v107;
      if (v118)
      {
        v32 = v106;
        if ((v105 & 0x1000000000000000) != 0)
        {
          v141 = sub_22C6AF810();
          v121 = sub_22C5C96C4(v141, v142, 10);
          v144 = v143;

          v21 = v185;
          if ((v144 & 1) == 0)
          {
LABEL_104:
            v145 = v166;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v153 = *(v145 + 16);
              sub_22C36D270();
              sub_22C590E18();
              v145 = v154;
            }

            v147 = *(v145 + 16);
            v146 = *(v145 + 24);
            if (v147 >= v146 >> 1)
            {
              sub_22C37090C(v146);
              sub_22C590E18();
              v166 = v155;
            }

            else
            {
              v166 = v145;
            }

            v148 = sub_22C37493C();
            sub_22C3C8114(v148, v149);
            v150 = v190;
            (*v191)(v190, v29);
            v151 = v166;
            *(v166 + 16) = v147 + 1;
            v152 = v151 + 8 * v147;
            v76 = v150;
            *(v152 + 32) = v121;
            goto LABEL_30;
          }

          goto LABEL_100;
        }

        v21 = v185;
        if ((v105 & 0x2000000000000000) != 0)
        {
          v195 = v104;
          v196 = v105 & 0xFFFFFFFFFFFFFFLL;
          if (v104 == 43)
          {
            if (!v116)
            {
              goto LABEL_119;
            }

            if (v116 != 1)
            {
              while (1)
              {
                sub_22C38ACB0();
                if (!v109 & v122)
                {
                  break;
                }

                sub_22C38C2A4();
                if (!v109)
                {
                  break;
                }

                v121 = v131 + v130;
                if (__OFADD__(v131, v130))
                {
                  break;
                }

                sub_22C5CAA10();
                if (v109)
                {
                  goto LABEL_99;
                }
              }
            }
          }

          else if (v104 == 45)
          {
            if (!v116)
            {
              goto LABEL_120;
            }

            if (v116 != 1)
            {
              while (1)
              {
                sub_22C38ACB0();
                if (!v109 & v122)
                {
                  break;
                }

                sub_22C38C2A4();
                if (!v109)
                {
                  break;
                }

                v121 = v127 - v126;
                if (__OFSUB__(v127, v126))
                {
                  break;
                }

                sub_22C5CAA10();
                if (v109)
                {
                  goto LABEL_99;
                }
              }
            }
          }

          else if (v116)
          {
            while (1)
            {
              sub_22C38ACB0();
              if (!v109 & v122)
              {
                break;
              }

              sub_22C38C2A4();
              if (!v109)
              {
                break;
              }

              v121 = v135 + v134;
              if (__OFADD__(v135, v134))
              {
                break;
              }

              sub_22C5CAA10();
              if (v109)
              {
                goto LABEL_99;
              }
            }
          }
        }

        else
        {
          if ((v104 & 0x1000000000000000) != 0)
          {
            v119 = ((v105 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            sub_22C6AF810();
            v119 = sub_22C90AFCC();
          }

          v120 = *v119;
          if (v120 == 43)
          {
            if (v117 < 1)
            {
              goto LABEL_118;
            }

            if (v117 != 1)
            {
              v121 = 0;
              if (!v119)
              {
                goto LABEL_89;
              }

              while (1)
              {
                sub_22C38ACB0();
                if (!v109 & v122)
                {
                  break;
                }

                sub_22C38C2A4();
                if (!v109)
                {
                  break;
                }

                v121 = v129 + v128;
                if (__OFADD__(v129, v128))
                {
                  break;
                }

                sub_22C5CAA10();
                if (v109)
                {
                  goto LABEL_99;
                }
              }
            }
          }

          else if (v120 == 45)
          {
            if (v117 < 1)
            {
              goto LABEL_121;
            }

            if (v117 != 1)
            {
              v121 = 0;
              if (v119)
              {
                while (1)
                {
                  sub_22C38ACB0();
                  if (!v109 & v122)
                  {
                    goto LABEL_98;
                  }

                  sub_22C38C2A4();
                  if (!v109)
                  {
                    goto LABEL_98;
                  }

                  v121 = v124 - v123;
                  if (__OFSUB__(v124, v123))
                  {
                    goto LABEL_98;
                  }

                  sub_22C5CAA10();
                  if (v109)
                  {
                    goto LABEL_99;
                  }
                }
              }

LABEL_89:
              v125 = 0;
LABEL_99:
              v194 = v125;
              v136 = v125;

              if ((v136 & 1) == 0)
              {
                goto LABEL_104;
              }

LABEL_100:
              v137 = sub_22C37493C();
              sub_22C3C8114(v137, v138);
LABEL_101:
              v98 = v188;
              v76 = v190;
              v101 = v191;
              goto LABEL_14;
            }
          }

          else
          {
            if (!v117)
            {
              goto LABEL_98;
            }

            v121 = 0;
            if (!v119)
            {
              goto LABEL_89;
            }

            while (1)
            {
              v132 = *v119 - 48;
              if (v132 > 9)
              {
                break;
              }

              v133 = 10 * v121;
              if ((v121 * 10) >> 64 != (10 * v121) >> 63)
              {
                break;
              }

              v121 = v133 + v132;
              if (__OFADD__(v133, v132))
              {
                break;
              }

              ++v119;
              if (!--v117)
              {
                goto LABEL_89;
              }
            }
          }
        }

LABEL_98:
        v121 = 0;
        v125 = 1;
        goto LABEL_99;
      }

      v139 = sub_22C37493C();
      sub_22C3C8114(v139, v140);

      v32 = v106;
      v21 = v185;
      goto LABEL_101;
    }

    v101 = v191;
LABEL_14:
    (*v101)(v76, v29);
LABEL_31:
    if (++v99 == v193)
    {
      goto LABEL_111;
    }
  }

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
}

uint64_t sub_22C8BDA48()
{
  sub_22C36986C();
  sub_22C909F0C();
  sub_22C909F0C();
  sub_22C36BBCC();
  sub_22C8BC6E4();
  v1 = v0;

  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SearchCountsMismatchRule.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SearchCountsMismatchRule.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22C8BDB94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SearchCountsMismatchRule.__allocating_init(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C8BDBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22C8C6104;

  return SearchCountsMismatchRule.validate(text:context:)(a1, a2, a3, a4);
}

void ResponseGenerationResponseValidator.init(_:)()
{
  sub_22C370030();
  sub_22C8C61D0();
  v3 = sub_22C90077C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_locale;
  v13 = *(v6 + 16);
  v13(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_locale, v2, v3);
  v13(v11, v2, v3);
  type metadata accessor for ResponseValidationAssets();
  v14 = swift_allocObject();
  sub_22C8BFAE4(v11);
  if (v1)
  {
    v15 = *(v6 + 8);
    v16 = sub_22C36ECB4();
    v15(v16);
    (v15)(v0 + v12, v3);
    v17 = *(*v0 + 48);
    v18 = *(*v0 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = *(v6 + 8);
    v20 = sub_22C36ECB4();
    v21(v20);
    *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_assets) = v14;
  }

  sub_22C36FB20();
}

uint64_t ResponseGenerationResponseValidator.__allocating_init()()
{
  v1 = sub_22C90077C();
  v2 = sub_22C369914(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C9006AC();
  sub_22C8C6114();
  swift_allocObject();
  sub_22C387194();
  ResponseGenerationResponseValidator.init(_:)();
  return v0;
}

uint64_t ResponseGenerationResponseValidator.__allocating_init(locale:assets:)()
{
  sub_22C370250();
  sub_22C8C6114();
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_locale;
  v4 = sub_22C90077C();
  sub_22C36985C(v4);
  (*(v5 + 32))(v2 + v3, v1);
  *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_assets) = v0;
  return v2;
}

uint64_t ResponseGenerationResponseValidator.init(locale:assets:)()
{
  sub_22C370250();
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_locale;
  v4 = sub_22C90077C();
  sub_22C36985C(v4);
  (*(v5 + 32))(v1 + v3, v2);
  *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_assets) = v0;
  return v1;
}

uint64_t ResponseGenerationResponseValidator.ruleNames()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_assets) + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];

    sub_22C3B5E2C();
    v3 = v17;
    v4 = v1 + 32;
    do
    {
      sub_22C378A4C(v4, v14);
      v5 = v15;
      v6 = v16;
      sub_22C374168(v14, v15);
      v7 = (*(v6 + 8))(v5, v6);
      v9 = v8;
      sub_22C36FF94(v14);
      v17 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_22C369AB0(v10);
        sub_22C3B5E2C();
        v3 = v17;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void static ResponseGenerationResponseValidator.loadRules(locale:ruleNames:)()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v80 - v14;
  v16 = sub_22C90077C();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v80[2] = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v80[3] = v80 - v21;
  MEMORY[0x28223BE20](v20);
  v87 = v80 - v24;
  v25 = *(v1 + 16);
  if (v25)
  {
    v80[1] = v15;
    v90 = 0;
    v88 = (v22 + 16);
    v85 = 0x800000022C939A70;
    v86 = (v7 + 8);
    v26 = (v1 + 40);
    v89 = MEMORY[0x277D84F90];
    *&v23 = 136315138;
    v81 = v23;
    v84 = xmmword_22C90F800;
    v82 = v16;
    while (1)
    {
      v91 = v25;
      isa = v26[-1].isa;
      v28 = v26->isa;
      sub_22C8C6124();
      v31 = isa == v30 && v28 == v29;
      if (v31 || (sub_22C37B13C(), (sub_22C3866EC() & 1) != 0))
      {
        v32 = *v88;
        v33 = sub_22C374660();
        v34(v33);
        v35 = type metadata accessor for BadGrammar(0);
        sub_22C8C6144(v35);
        swift_allocObject();
        sub_22C8C61A4();
        v36 = v90;
        BadGrammar.init(_:)();
        if (!v36)
        {
          v90 = 0;

          v52 = &protocol witness table for BadGrammar;
LABEL_13:
          v93 = v35;
          v94 = v52;
          *&v92 = v1;
          sub_22C36C730(&v92, &v95);
          sub_22C378A4C(&v95, &v92);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = *(v89 + 16);
            sub_22C36D270();
            sub_22C597138();
            v89 = v78;
          }

          v1 = *(v89 + 16);
          v53 = *(v89 + 24);
          if (v1 >= v53 >> 1)
          {
            sub_22C37090C(v53);
            sub_22C597138();
            v89 = v79;
          }

          sub_22C36FF94(&v95);
          v54 = v89;
          *(v89 + 16) = v1 + 1;
          sub_22C36C730(&v92, v54 + 40 * v1 + 32);
          goto LABEL_18;
        }
      }

      else
      {
        sub_22C38C56C();
        v56 = isa == v55 && v28 == 0xE600000000000000;
        if (v56 || (sub_22C8B7D6C(), (sub_22C3866EC() & 1) != 0))
        {
          v57 = *v88;
          v58 = sub_22C374660();
          v59(v58);
          v35 = type metadata accessor for Unsafe(0);
          sub_22C8C6144(v35);
          swift_allocObject();
          sub_22C8C61A4();
          v36 = v90;
          Unsafe.init(_:)();
          if (!v36)
          {
            v90 = 0;

            v52 = &protocol witness table for Unsafe;
            goto LABEL_13;
          }
        }

        else
        {
          sub_22C36DCB8();
          if (isa != v60 || v28 != 0xEA00000000006465)
          {
            sub_22C8C6150();
            if ((sub_22C3866EC() & 1) == 0)
            {

              sub_22C90405C();

              v1 = sub_22C9063CC();
              v65 = sub_22C90AADC();

              if (os_log_type_enabled(v1, v65))
              {
                sub_22C36BED8();
                v66 = swift_slowAlloc();
                sub_22C370220();
                v67 = swift_slowAlloc();
                v83 = v1;
                v1 = v67;
                *&v92 = v67;
                *v66 = v81;
                v68 = sub_22C441720();
                v71 = sub_22C36F9F4(v68, v69, v70);

                *(v66 + 4) = v71;
                v72 = v65;
                v73 = v83;
                _os_log_impl(&dword_22C366000, v83, v72, "Unknown rule: %s", v66, 0xCu);
                sub_22C36FF94(v1);
                sub_22C369B50();
                MEMORY[0x2318B9880]();
                sub_22C369B50();
                MEMORY[0x2318B9880]();
              }

              else
              {
              }

              v74 = *v86;
              v75 = sub_22C36ECB4();
              v76(v75);
              goto LABEL_18;
            }
          }

          v62 = *v88;
          v63 = sub_22C374660();
          v64(v63);
          v35 = type metadata accessor for Ungrounded(0);
          sub_22C8C6144(v35);
          swift_allocObject();
          sub_22C8C61A4();
          v36 = v90;
          Ungrounded.init(_:)();
          if (!v36)
          {
            v90 = 0;

            v52 = &protocol witness table for Ungrounded;
            goto LABEL_13;
          }
        }
      }

      v90 = 0;
      sub_22C3A5908(&qword_27D9BAAE0, &qword_22C90D380);
      v37 = swift_allocObject();
      *(v37 + 16) = v84;
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_22C90AF5C();

      v95 = 0xD000000000000016;
      v96 = v85;
      v38 = sub_22C441720();
      MEMORY[0x2318B7850](v38);
      v39 = v95;
      v40 = v96;
      *(v37 + 56) = MEMORY[0x277D837D0];
      *(v37 + 32) = v39;
      *(v37 + 40) = v40;
      sub_22C8C61E4();

      sub_22C90405C();

      v1 = sub_22C9063CC();
      v41 = sub_22C90AADC();

      if (os_log_type_enabled(v1, v41))
      {
        sub_22C36BED8();
        v42 = swift_slowAlloc();
        v83 = v36;
        v43 = v4;
        v44 = v3;
        v45 = v42;
        sub_22C370220();
        v46 = v12;
        v47 = swift_slowAlloc();
        v95 = v47;
        *v45 = v81;
        v48 = sub_22C441720();
        v51 = sub_22C36F9F4(v48, v49, v50);

        *(v45 + 4) = v51;
        _os_log_impl(&dword_22C366000, v1, v41, "Failed to create rule %s", v45, 0xCu);
        sub_22C36FF94(v47);
        v12 = v46;
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v3 = v44;
        v4 = v43;
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        (*v86)(v46, v43);
      }

      else
      {

        (*v86)(v12, v4);
      }

LABEL_18:
      v26 += 2;
      v25 = (v91 - 1);
      if (v91 == 1)
      {
        goto LABEL_39;
      }
    }
  }

  v89 = MEMORY[0x277D84F90];
LABEL_39:
  sub_22C36CC48();
}

uint64_t ResponseGenerationResponseValidator.validation(text:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_22C36A77C();
}

uint64_t sub_22C8BE850()
{
  sub_22C36FB38();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_22C3A5908(&qword_27D9C1270, &qword_22C92CB28);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v4[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v4[2].i64[0] = v2;
  v4[2].i64[1] = v1;
  v5 = *(MEMORY[0x277D859B8] + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 64) = v6;
  *v6 = v7;
  v6[1] = sub_22C8BE95C;

  return MEMORY[0x282200740](v0 + 16, &type metadata for ResponseValidationResult, v3, 0, 0, &unk_22C92CB38, v4, &type metadata for ResponseValidationResult);
}

uint64_t sub_22C8BE95C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C8BEA7C()
{
  sub_22C369980();
  v1 = *(v0 + 56);

  sub_22C369A24();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_22C8BEAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[28] = a3;
  v6[29] = a4;
  v6[26] = a1;
  v6[27] = a2;
  v7 = sub_22C3A5908(&qword_27D9C12F0, &qword_22C92CFB0);
  v6[32] = v7;
  v8 = *(v7 - 8);
  v6[33] = v8;
  v9 = *(v8 + 64) + 15;
  v6[34] = swift_task_alloc();
  v10 = *(type metadata accessor for ResponseValidationContext(0) - 8);
  v6[35] = v10;
  v6[36] = *(v10 + 64);
  v6[37] = swift_task_alloc();
  v11 = *(*(sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00) - 8) + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8BEC50, 0, 0);
}

uint64_t sub_22C8BEC50()
{
  v1 = *(*(*(v0 + 224) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_assets) + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v35 = *(v0 + 280);
    v34 = **(v0 + 216);
    v3 = v1 + 32;
    v4 = sub_22C90A75C();

    do
    {
      v37 = v2;
      v5 = *(v0 + 304);
      v6 = *(v0 + 312);
      v7 = *(v0 + 288);
      v8 = *(v0 + 296);
      v10 = *(v0 + 240);
      v9 = *(v0 + 248);
      v11 = *(v0 + 232);
      sub_22C36A748();
      sub_22C36C640(v12, v13, v14, v4);
      v36 = v3;
      sub_22C378A4C(v3, v0 + 64);
      sub_22C8C26E4(v11, v8);
      v15 = v4;
      v16 = (*(v35 + 80) + 88) & ~*(v35 + 80);
      v17 = swift_allocObject();
      v17[2] = 0;
      v18 = v17 + 2;
      v17[3] = 0;
      sub_22C36C730((v0 + 64), (v17 + 4));
      v17[9] = v10;
      v17[10] = v9;
      v19 = v17 + v16;
      v4 = v15;
      sub_22C8C5CFC(v8, v19);
      sub_22C3A7214();
      LODWORD(v5) = sub_22C370B74(v5, 1, v15);

      v20 = *(v0 + 304);
      if (v5 == 1)
      {
        sub_22C3AC228(*(v0 + 304), &qword_27D9BBB48, &qword_22C910F00);
      }

      else
      {
        sub_22C90A74C();
        (*(*(v15 - 8) + 8))(v20, v15);
      }

      if (*v18)
      {
        v21 = v17[3];
        v22 = *v18;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_22C90A6DC();
        v25 = v24;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      if (v25 | v23)
      {
        v26 = v0 + 144;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = v23;
        *(v0 + 168) = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(v0 + 312);
      *(v0 + 176) = 1;
      *(v0 + 184) = v26;
      *(v0 + 192) = v34;
      swift_task_create();

      sub_22C3AC228(v27, &qword_27D9BBB48, &qword_22C910F00);
      v3 = v36 + 40;
      v2 = v37 - 1;
    }

    while (v37 != 1);
  }

  v28 = *(v0 + 272);
  v29 = **(v0 + 216);
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C90A81C();
  *(v0 + 320) = MEMORY[0x277D84F90];
  v30 = *(MEMORY[0x277D85828] + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 328) = v31;
  *v31 = v32;
  sub_22C3777BC(v31);
  sub_22C36BB08();

  return MEMORY[0x2822004E8]();
}

uint64_t sub_22C8BEFE8()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 320);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C8BF0E8()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = *(v0 + 16) & 1;
    *(v0 + 104) = *(v0 + 16) & 1;
    v6 = *(v0 + 320);
    *(v0 + 112) = v2;
    *(v0 + 120) = v1;
    *(v0 + 128) = v3;
    v25 = v4;
    *(v0 + 136) = v4;

    sub_22C8BF800();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v0 + 320);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = *(v8 + 16);
      sub_22C36D270();
      sub_22C5971F8();
      v8 = v22;
    }

    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_22C369AB0(v9);
      sub_22C5971F8();
      v8 = v23;
    }

    *(v8 + 16) = v10 + 1;
    v11 = v8 + 48 * v10;
    *(v11 + 32) = v5;
    *(v11 + 40) = v2;
    *(v11 + 48) = v1;
    *(v11 + 56) = v3;
    *(v11 + 64) = v25;
    *(v0 + 320) = v8;
    v12 = *(MEMORY[0x277D85828] + 4);
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 328) = v13;
    *v13 = v14;
    sub_22C3777BC();
    sub_22C36BB08();

    return MEMORY[0x2822004E8]();
  }

  else
  {
    v15 = *(v0 + 312);
    v16 = *(v0 + 320);
    v18 = *(v0 + 296);
    v17 = *(v0 + 304);
    v19 = *(v0 + 208);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    *v19 = v16;

    sub_22C369C50();

    return v20();
  }
}

uint64_t sub_22C8BF2EC()
{
  sub_22C36D5EC();
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  (*(v0[33] + 8))(v0[34], v0[32]);
  v4 = v0[25];

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C8BF394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  v8 = sub_22C909B2C();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8BF468, 0, 0);
}

uint64_t sub_22C8BF468()
{
  sub_22C36D5EC();
  v1 = v0[15];
  v2 = v0[8];
  sub_22C909B1C();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = sub_22C36BBCC();
  sub_22C374168(v5, v6);
  sub_22C38B598(v4);
  v16 = (v7 + *v7);
  v9 = *(v8 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[16] = v10;
  *v10 = v11;
  v10[1] = sub_22C8BF590;
  v12 = v0[10];
  v13 = v0[11];
  v14 = v0[9];

  return (v16)(v0 + 2, v14, v12, v13, v3, v4);
}

uint64_t sub_22C8BF590()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8BF68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  v16 = *(v14 + 112);
  v15 = *(v14 + 120);
  v17 = *(v14 + 96);
  v18 = *(v14 + 104);
  HIDWORD(a11) = *(v14 + 16);
  v19 = *(v14 + 32);
  v39 = *(v14 + 24);
  v20 = *(v14 + 40);
  v21 = *(v14 + 48);
  sub_22C909B1C();
  v22 = sub_22C909B0C();
  v23 = *(v18 + 8);
  v23(v16, v17);
  v24 = sub_22C909B0C();
  v25 = sub_22C36BAFC();
  result = (v23)(v25);
  v27 = v22 - v24;
  if (v22 < v24)
  {
    __break(1u);
  }

  else
  {
    v29 = *(v14 + 112);
    v28 = *(v14 + 120);
    v30 = *(v14 + 56);
    *v30 = BYTE4(a11);
    *(v30 + 8) = v39;
    *(v30 + 16) = v19;
    *(v30 + 24) = v20;
    *(v30 + 32) = v21;
    *(v30 + 40) = v27;

    sub_22C369C50();
    sub_22C36D5F8();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v39, a11, a12, a13, a14);
  }

  return result;
}

uint64_t sub_22C8BF780()
{
  sub_22C369980();
  v1 = v0[14];
  (*(v0[13] + 8))(v0[15], v0[12]);

  sub_22C369A24();
  v3 = v0[17];

  return v2();
}

void sub_22C8BF800()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  if ((*v1 & 1) == 0)
  {
    v8 = *(v1 + 8);
    v9 = *(v1 + 16);
    v11 = *(v1 + 24);
    v10 = *(v1 + 32);
    sub_22C90405C();

    v12 = sub_22C9063CC();
    v13 = sub_22C90AADC();

    if (os_log_type_enabled(v12, v13))
    {
      swift_slowAlloc();
      sub_22C8C6188();
      *v11 = 136315394;
      v14 = sub_22C36FC2C();
      *(v11 + 4) = sub_22C36F9F4(v14, v15, v16);
      *(v11 + 12) = 2080;

      v17 = sub_22C36FC2C();
      v20 = sub_22C36F9F4(v17, v18, v19);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_22C366000, v12, v13, "%s error: %s", v11, 0x16u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v21 = *(v5 + 8);
    v22 = sub_22C36BBCC();
    v23(v22);
  }

  sub_22C36CC48();
}

uint64_t ResponseGenerationResponseValidator.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_locale;
  v2 = sub_22C90077C();
  sub_22C369848(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_assets);

  return v0;
}

uint64_t ResponseGenerationResponseValidator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_locale;
  v2 = sub_22C90077C();
  sub_22C369848(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_assets);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C8BFAE4(uint64_t a1)
{
  type metadata accessor for ResponseValidationAssets();
  sub_22C8BFBBC();
  if (v2)
  {
    v5 = sub_22C90077C();
    sub_22C369848(v5);
    (*(v6 + 8))(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    v8 = sub_22C90077C();
    sub_22C369848(v8);
    (*(v9 + 8))(a1);
    *(v1 + 16) = v7;
  }

  return v1;
}

void sub_22C8BFBBC()
{
  sub_22C370030();
  v131 = v0;
  v2 = v1;
  v138 = *MEMORY[0x277D85DE8];
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v132 = v5;
  v133 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v130 = (&v125 - v13);
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v129 = v14;
  v15 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v16 = sub_22C369914(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v125 - v23;
  v25 = sub_22C90046C();
  v26 = sub_22C369824(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369ABC();
  v33 = v31 - v32;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v125 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v125 - v39;
  MEMORY[0x28223BE20](v38);
  sub_22C36BA64();
  v134 = v41;
  v128 = v2;
  sub_22C8C0FCC();
  sub_22C381514();
  if (sub_22C370B74(v42, v43, v44) == 1)
  {
    v45 = v28;
    sub_22C8C164C(v24);
    sub_22C381514();
    if (sub_22C370B74(v46, v47, v48) != 1)
    {
      sub_22C3AC228(v21, &qword_27D9BB138, &qword_22C90DB70);
    }
  }

  else
  {
    v45 = v28;
    (*(v28 + 32))(v24, v21, v25);
    sub_22C36C640(v24, 0, 1, v25);
  }

  sub_22C381514();
  if (sub_22C370B74(v49, v50, v51) == 1)
  {
    sub_22C3AC228(v24, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C8C5E40();
    sub_22C37A198();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
  }

  else
  {
    v53 = v45;
    v54 = v134;
    (*(v45 + 32))(v134, v24, v25);
    v55 = v131;
    v56 = sub_22C9004AC();
    if (v55)
    {

      sub_22C90405C();
      v58 = *(v45 + 16);
      v59 = sub_22C441720();
      v60(v59);
      v61 = sub_22C9063CC();
      v62 = sub_22C90AADC();
      if (os_log_type_enabled(v61, v62))
      {
        sub_22C36BED8();
        v63 = v53;
        v64 = swift_slowAlloc();
        v130 = v64;
        sub_22C370220();
        v131 = swift_slowAlloc();
        *&v136 = v131;
        *v64 = 136315138;
        sub_22C36C5DC();
        sub_22C8C5F28(v65, v66);
        LODWORD(v129) = v62;
        v67 = sub_22C90B47C();
        v69 = v68;
        v70 = *(v63 + 8);
        v70(v33, v25);
        v71 = sub_22C36F9F4(v67, v69, &v136);

        v72 = v130;
        *(v130 + 1) = v71;
        v73 = v70;
        _os_log_impl(&dword_22C366000, v61, v129, "Cannot load %s", v72, 0xCu);
        sub_22C36FF94(v131);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {

        v73 = *(v53 + 8);
        v73(v33, v25);
      }

      (*(v132 + 8))(v10, v133);
      sub_22C8C5E40();
      sub_22C37A198();
      swift_allocError();
      sub_22C37E248(v95, 1);
      v96 = sub_22C6AF810();
      (v73)(v96);
    }

    else
    {
      v131 = v45;
      v74 = v56;
      v75 = v57;
      v76 = objc_opt_self();
      v126 = v74;
      v127 = v75;
      v77 = sub_22C90050C();
      *&v136 = 0;
      v78 = [v76 propertyListWithData:v77 options:0 format:0 error:&v136];

      if (v78)
      {
        v79 = v136;
        sub_22C90ADDC();
        swift_unknownObjectRelease();
        sub_22C3A5908(&qword_27D9BAB50, &qword_22C90D3F0);
        if (sub_22C8C6204())
        {
          v130 = v135;
          v80 = v129;
          sub_22C90405C();
          v81 = v131;
          (v131[2])(v40, v54, v25);
          v82 = sub_22C9063CC();
          v83 = sub_22C90AABC();
          if (os_log_type_enabled(v82, v83))
          {
            sub_22C36BED8();
            v84 = swift_slowAlloc();
            v125 = v84;
            sub_22C370220();
            v85 = swift_slowAlloc();
            *&v136 = v85;
            *v84 = 136315138;
            sub_22C36C5DC();
            sub_22C8C5F28(v86, v87);
            v88 = sub_22C90B47C();
            v89 = v81[1];
            v89(v40, v25);
            v90 = sub_22C37B9B0();
            sub_22C36F9F4(v90, v91, v92);
            sub_22C387194();

            v93 = v125;
            *(v125 + 1) = v88;
            _os_log_impl(&dword_22C366000, v82, v83, "Loading response validation rules from %s", v93, 0xCu);
            sub_22C36FF94(v85);
            sub_22C369B50();
            MEMORY[0x2318B9880]();
            sub_22C369B50();
            MEMORY[0x2318B9880]();

            v94 = v89;
            (*(v132 + 8))(v129, v133);
          }

          else
          {

            v94 = v81[1];
            v94(v40, v25);
            (*(v132 + 8))(v80, v133);
          }

          sub_22C605DE8(v130, &v136);

          if (v137)
          {
            sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
            if (sub_22C8C6204())
            {
              sub_22C8C06E4(v128, v135, v115, v116, v117, v118, v119, v120, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
              sub_22C38B120(v126, v127);

              v121 = sub_22C8C61BC();
              (v94)(v121);
              goto LABEL_27;
            }
          }

          else
          {
            sub_22C3AC228(&v136, &qword_27D9BD5D8, &qword_22C918510);
          }

          sub_22C8C5E40();
          sub_22C37A198();
          swift_allocError();
          sub_22C37E248(v122, 3);
          sub_22C38B120(v126, v127);
          v123 = sub_22C8C61BC();
          (v94)(v123);
          goto LABEL_27;
        }
      }

      else
      {
        v97 = v136;
        sub_22C387194();
        v98 = sub_22C90030C();

        swift_willThrow();
      }

      v99 = v130;
      sub_22C90405C();
      v100 = v131;
      (v131[2])(v37, v54, v25);
      v101 = sub_22C9063CC();
      v102 = sub_22C90AADC();
      if (os_log_type_enabled(v101, v102))
      {
        sub_22C36BED8();
        v103 = v100;
        v104 = swift_slowAlloc();
        sub_22C370220();
        v129 = swift_slowAlloc();
        *&v136 = v129;
        *v104 = 136315138;
        sub_22C36C5DC();
        sub_22C8C5F28(v105, v106);
        v107 = sub_22C90B47C();
        v109 = v108;
        v110 = v103[1];
        LODWORD(v131) = v102;
        v110(v37, v25);
        v111 = v110;
        v112 = sub_22C36F9F4(v107, v109, &v136);

        *(v104 + 4) = v112;
        _os_log_impl(&dword_22C366000, v101, v131, "Cannot read propery list from %s", v104, 0xCu);
        sub_22C36FF94(v129);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        (*(v132 + 8))(v130, v133);
      }

      else
      {

        v111 = v100[1];
        v111(v37, v25);
        (*(v132 + 8))(v99, v133);
      }

      sub_22C8C5E40();
      sub_22C37A198();
      swift_allocError();
      sub_22C37E248(v113, 2);
      sub_22C38B120(v126, v127);
      v114 = sub_22C6AF810();
      (v111)(v114);
    }
  }

LABEL_27:
  v124 = *MEMORY[0x277D85DE8];
  sub_22C36FB20();
}

uint64_t ResponseValidationAssets.__allocating_init(locale:ruleNames:)()
{
  sub_22C370250();
  v2 = swift_allocObject();
  ResponseValidationAssets.init(locale:ruleNames:)(v1, v0);
  return v2;
}

void sub_22C8C06E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v22 = sub_22C9063DC();
  v23 = sub_22C369824(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA64();
  v88 = v27;
  sub_22C36BA0C();
  v85 = sub_22C90077C();
  v28 = sub_22C369824(v85);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  sub_22C36BA0C();
  v33 = type metadata accessor for ResponseGenerationPreferences();
  v34 = sub_22C36985C(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v39 = v38 - v37;

  v94 = sub_22C3AD928(v40);
  if (qword_2814357B8 != -1)
  {
LABEL_41:
    sub_22C371ED0();
  }

  v41 = sub_22C37AA60(v33, qword_281437588);
  sub_22C36CA70();
  sub_22C8C26E4(v41, v39);
  v42 = *(v33 + 60);
  sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C901EDC();
  v43 = v93[0];
  sub_22C8C5ED8();
  v44 = sub_22C3AD928(v43);
  sub_22C8B5A44(v44);
  sub_22C8C26E4(v41, v39);
  v45 = v39 + *(v33 + 64);
  sub_22C901EDC();
  v46 = v93[0];
  sub_22C8C5ED8();
  v47 = sub_22C3AD928(v46);
  v48 = &v94;
  sub_22C8C27F0(v47);

  v39 = 0;
  v49 = v94 + 56;
  v89 = v94;
  v50 = 1 << *(v94 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v33 = v51 & *(v94 + 56);
  v52 = (v50 + 63) >> 6;
  v84 = MEMORY[0x277D84F90];
  v86 = v52;
  v87 = v94 + 56;
LABEL_5:
  v53 = v88;
  if (v33)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_6:
    v54 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v54 >= v52)
    {
      break;
    }

    v33 = *(v49 + 8 * v54);
    ++v39;
    if (v33)
    {
      v39 = v54;
      while (1)
      {
LABEL_10:
        v55 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v56 = (*(v89 + 48) + ((v39 << 10) | (16 * v55)));
        v57 = *v56;
        v58 = v56[1];
        sub_22C8C6124();
        v61 = v57 == v60 && v58 == v59;
        if (v61 || (sub_22C37B13C(), (sub_22C8C616C() & 1) != 0))
        {
          sub_22C36BA4C(&a18);
          v62 = sub_22C36FF80();
          v63(v62);
          v64 = type metadata accessor for BadGrammar(0);
          sub_22C8C6144(v64);
          swift_allocObject();
          sub_22C8C61A4();
          BadGrammar.init(_:)();

          v78 = &protocol witness table for BadGrammar;
          goto LABEL_34;
        }

        sub_22C38C56C();
        v66 = v57 == v65 && v58 == 0xE600000000000000;
        if (v66 || (sub_22C8B7D6C(), (sub_22C8C616C() & 1) != 0))
        {
          sub_22C36BA4C(&a18);
          v67 = sub_22C36FF80();
          v68(v67);
          v64 = type metadata accessor for Unsafe(0);
          sub_22C8C6144(v64);
          swift_allocObject();
          sub_22C8C61A4();
          Unsafe.init(_:)();

          v78 = &protocol witness table for Unsafe;
          goto LABEL_34;
        }

        sub_22C36DCB8();
        if (v57 == v69 && v58 == 0xEA00000000006465)
        {
          break;
        }

        sub_22C8C6150();
        if (sub_22C8C616C())
        {
          break;
        }

        sub_22C90405C();

        v48 = sub_22C9063CC();
        v73 = sub_22C90AADC();

        if (os_log_type_enabled(v48, v73))
        {
          sub_22C36BED8();
          v74 = swift_slowAlloc();
          sub_22C370220();
          v75 = swift_slowAlloc();
          *&v90 = v75;
          *v74 = 136315138;
          v76 = sub_22C36F9F4(v57, v58, &v90);

          *(v74 + 4) = v76;
          _os_log_impl(&dword_22C366000, v48, v73, "Unknown rule: %s", v74, 0xCu);
          sub_22C36FF94(v75);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          v53 = v88;
          sub_22C369B50();
          MEMORY[0x2318B9880]();
        }

        else
        {
        }

        sub_22C36BA4C(&a17);
        v77(v53, v22);
        v52 = v86;
        v49 = v87;
        if (!v33)
        {
          goto LABEL_6;
        }
      }

      sub_22C36BA4C(&a18);
      v71 = sub_22C36FF80();
      v72(v71);
      v64 = type metadata accessor for Ungrounded(0);
      sub_22C8C6144(v64);
      swift_allocObject();
      sub_22C8C61A4();
      Ungrounded.init(_:)();

      v78 = &protocol witness table for Ungrounded;
LABEL_34:
      v91 = v64;
      v92 = v78;
      *&v90 = v48;
      sub_22C36C730(&v90, v93);
      sub_22C378A4C(v93, &v90);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = *(v84 + 16);
        sub_22C36D270();
        sub_22C597138();
        v84 = v82;
      }

      v80 = *(v84 + 16);
      v79 = *(v84 + 24);
      v48 = (v80 + 1);
      if (v80 >= v79 >> 1)
      {
        sub_22C369AB0(v79);
        sub_22C597138();
        v84 = v83;
      }

      sub_22C36FF94(v93);
      *(v84 + 16) = v48;
      sub_22C36C730(&v90, v84 + 40 * v80 + 32);
      v52 = v86;
      v49 = v87;
      goto LABEL_5;
    }
  }

  sub_22C36CC48();
}

void sub_22C8C0FCC()
{
  sub_22C36BA7C();
  v93 = v2;
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v85 = v5;
  v86 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v84 = v8;
  sub_22C36BA0C();
  v9 = sub_22C90035C();
  v10 = sub_22C369824(v9);
  v82 = v11;
  v83 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v81 = v14;
  v15 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  v92 = &v78 - v19;
  sub_22C36BA0C();
  v91 = sub_22C90046C();
  v20 = sub_22C369824(v91);
  v80 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698A8();
  v79 = v24;
  sub_22C36BA0C();
  v25 = sub_22C90070C();
  v26 = sub_22C369824(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  sub_22C370654();
  v31 = sub_22C901DDC();
  v32 = sub_22C369824(v31);
  v34 = v33;
  v87 = v32;
  v88 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  sub_22C37B6BC();
  v37 = sub_22C90210C();
  v38 = sub_22C369824(v37);
  v89 = v39;
  v90 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  v44 = v43 - v42;
  v45 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  v46 = sub_22C369914(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C369ABC();
  v51 = v49 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v78 - v53;
  sub_22C9020FC();
  (*(v34 + 104))(v0, *MEMORY[0x277D1C250], v31);
  (*(v28 + 104))(v1, *MEMORY[0x277CC9668], v25);
  sub_22C9006BC();
  sub_22C9006CC();

  (*(v28 + 8))(v1, v25);
  sub_22C9020EC();

  (*(v88 + 8))(v0, v87);
  (*(v89 + 8))(v44, v90);
  sub_22C37493C();
  sub_22C3A7214();
  v55 = sub_22C902D7C();
  sub_22C381514();
  if (sub_22C370B74(v56, v57, v58) == 1)
  {
    sub_22C3AC228(v51, &qword_27D9BD698, &qword_22C9187B0);
    v60 = v91;
    v59 = v92;
    sub_22C36A748();
    sub_22C36C640(v61, v62, v63, v60);
  }

  else
  {
    v59 = v92;
    sub_22C902D5C();
    sub_22C36BBA8(v55);
    (*(v64 + 8))(v51, v55);
    v60 = v91;
    if (sub_22C370B74(v59, 1, v91) != 1)
    {
      v71 = v80;
      (*(v80 + 32))(v79, v59, v60);
      v94 = 0xD00000000000002ALL;
      v95 = 0x800000022C939DE0;
      v73 = v81;
      v72 = v82;
      v74 = v83;
      (*(v82 + 104))(v81, *MEMORY[0x277CC91D8], v83);
      sub_22C3858B4();
      v70 = v93;
      sub_22C90043C();
      (*(v72 + 8))(v73, v74);
      v75 = *(v71 + 8);
      v76 = sub_22C37B9B0();
      v77(v76);
      sub_22C3AC228(v54, &qword_27D9BD698, &qword_22C9187B0);
      v69 = 0;
      goto LABEL_8;
    }
  }

  sub_22C3AC228(v59, &qword_27D9BB138, &qword_22C90DB70);
  v65 = v84;
  sub_22C90405C();
  v66 = sub_22C9063CC();
  v67 = sub_22C90AABC();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = sub_22C36D240();
    sub_22C36C890(v68);
    _os_log_impl(&dword_22C366000, v66, v67, "ResponseValidation OTA assets not available, will use built in asset.", v59, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v85 + 8))(v65, v86);
  sub_22C3AC228(v54, &qword_27D9BD698, &qword_22C9187B0);
  v69 = 1;
  v70 = v93;
LABEL_8:
  sub_22C36C640(v70, v69, 1, v60);
  sub_22C36CC48();
}

uint64_t sub_22C8C164C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  type metadata accessor for ResponseValidationAssets();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_22C8C4FE8(0xD000000000000024, 0x800000022C939DB0, 0x7473696C70, 0xE500000000000000, v12);

  if (v13)
  {
    sub_22C9003DC();

    v14 = sub_22C90046C();

    return sub_22C36C640(a1, 0, 1, v14);
  }

  else
  {
    sub_22C90405C();
    v16 = sub_22C9063CC();
    v17 = sub_22C90AADC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = sub_22C36D240();
      *v18 = 0;
      _os_log_impl(&dword_22C366000, v16, v17, "Failed to load built in ResponseGenerationResponseValidation.plist", v18, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v5 + 8))(v10, v2);
    sub_22C90046C();
    sub_22C36A748();
    return sub_22C36C640(v19, v20, v21, v22);
  }
}

uint64_t ResponseValidationAssets.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

id sub_22C8C1874(uint64_t a1, uint64_t *a2)
{
  sub_22C3A5908(&qword_27D9BE348, &qword_22C92CFF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22C90F870;
  v4 = *MEMORY[0x277CD8970];
  v8 = *MEMORY[0x277CD8958];
  v5 = *MEMORY[0x277CD8958];
  *(v3 + 32) = *MEMORY[0x277CD8970];
  *(v3 + 40) = v5;
  *a2 = v3;
  v6 = v4;

  return v8;
}

uint64_t sub_22C8C1904()
{
  type metadata accessor for NLTaggerAssets();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84FA0];
  qword_27D9E40C8 = result;
  return result;
}

void sub_22C8C193C()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = [objc_opt_self() availableTagSchemesForUnit:0 language:v1];
  type metadata accessor for NLTagScheme(0);
  v4 = sub_22C90A5EC();

  if (qword_27D9BA7F0 != -1)
  {
    v5 = swift_once();
  }

  v6 = *(qword_27D9E40C0 + 16);
  if (v6)
  {
    v26 = v2;
    v7 = (qword_27D9E40C0 + 32);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v28 = *v7;
      MEMORY[0x28223BE20](v5);
      v25[2] = &v28;
      v10 = v9;
      if (sub_22C5EC828(sub_22C8C5EB8, v25, v4))
      {
      }

      else
      {
        v11 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = *(v8 + 16);
          sub_22C36D270();
          sub_22C597090();
          v8 = v15;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_22C369AB0(v12);
          sub_22C597090();
          v8 = v16;
        }

        *(v8 + 16) = v13 + 1;
        *(v8 + 8 * v13 + 32) = v11;
      }

      ++v7;
      --v6;
    }

    while (v6);

    v2 = v26;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  if (*(v8 + 16))
  {
    sub_22C36CA70();
    v17 = *(v0 + 16);

    sub_22C36BAFC();
    sub_22C5E99F0();
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      swift_beginAccess();
      v20 = v2;
      sub_22C6A6A4C();
      swift_endAccess();

      v21 = *(v8 + 16);
      if (v21)
      {
        v22 = (v8 + 32);
        do
        {
          v23 = *v22++;
          v24 = v23;
          sub_22C36BA00();
          sub_22C8C1BC8();

          --v21;
        }

        while (v21);
      }
    }
  }

  sub_22C36CC48();
}

uint64_t sub_22C8C1BC8()
{
  sub_22C36986C();
  v2 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37B6BC();
  sub_22C90A75C();
  sub_22C36A748();
  sub_22C36C640(v6, v7, v8, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v10[5] = v0;
  v11 = v1;
  v12 = v0;
  sub_22C5809B8();
}

uint64_t sub_22C8C1C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = sub_22C9063DC();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8C1D74, 0, 0);
}

uint64_t sub_22C8C1D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22C372634();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[25];
  v26 = v22[19];
  v27 = v22[20];
  sub_22C90405C();
  v28 = v26;
  v29 = v27;
  v30 = sub_22C9063CC();
  v31 = sub_22C90AAFC();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v22[25];
  v35 = v22[21];
  v34 = v22[22];
  if (v32)
  {
    v37 = v22[19];
    v36 = v22[20];
    swift_slowAlloc();
    a11 = sub_22C8C6188();
    *v33 = 136315394;
    v38 = sub_22C90A11C();
    sub_22C36F9F4(v38, v39, &a11);

    v40 = sub_22C8C6224();
    v42 = sub_22C36F9F4(v40, v41, &a11);

    *(v33 + 14) = v42;
    _os_log_impl(&dword_22C366000, v30, v31, "Missing NL asset %s/%s", v33, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v43 = *(v34 + 8);
  v43(v33, v35);
  v22[26] = v43;
  v45 = v22[19];
  v44 = v22[20];
  v46 = objc_opt_self();
  v22[2] = v22;
  v22[7] = v22 + 18;
  v22[3] = sub_22C8C1FE4;
  v47 = swift_continuation_init();
  v22[17] = sub_22C3A5908(&qword_27D9C12E8, &unk_22C92CFA0);
  v22[10] = MEMORY[0x277D85DD0];
  v22[11] = 1107296256;
  v22[12] = sub_22C8C2560;
  v22[13] = &unk_283FC3688;
  v22[14] = v47;
  [v46 requestAssetsForLanguage:v45 tagScheme:v44 completionHandler:v22 + 10];
  sub_22C36D5F8();

  return MEMORY[0x282200938](v48);
}

uint64_t sub_22C8C1FE4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8C20E4()
{
  v28 = v0;
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  sub_22C90405C();
  v5 = v2;
  v6 = v3;
  v7 = sub_22C9063CC();
  v8 = sub_22C90AADC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v11 = v0[24];
  v13 = v0[21];
  v12 = v0[22];
  if (v9)
  {
    v26 = v4;
    v15 = v0[19];
    v14 = v0[20];
    sub_22C370220();
    swift_slowAlloc();
    v27 = sub_22C8C6188();
    *v10 = 136315650;
    v16 = sub_22C90A11C();
    sub_22C36F9F4(v16, v17, &v27);

    v18 = sub_22C8C6224();
    v20 = sub_22C36F9F4(v18, v19, &v27);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2048;
    *(v10 + 24) = v26;
    _os_log_impl(&dword_22C366000, v7, v8, "NLTagger.requestedAsset(%s, %s) -> %ld", v10, 0x20u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (v10)(v11, v13);
  }

  else
  {

    (v10)(v11, v13);
  }

  v22 = v0[24];
  v21 = v0[25];
  v23 = v0[23];

  sub_22C369A24();

  return v24();
}

uint64_t sub_22C8C22DC()
{
  v37 = v0;
  v1 = v0[27];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  swift_willThrow();
  sub_22C90405C();
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = sub_22C9063CC();
  v9 = sub_22C90AADC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[26];
  v12 = v0[27];
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[21];
  if (v10)
  {
    v35 = v0[26];
    v16 = v0[19];
    v17 = v0[20];
    sub_22C370220();
    v34 = v15;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v18 = 136315650;
    v20 = sub_22C90A11C();
    v33 = v13;
    v22 = sub_22C36F9F4(v20, v21, v36);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = sub_22C90A11C();
    v25 = sub_22C36F9F4(v23, v24, v36);

    *(v18 + 14) = v25;
    *(v18 + 22) = 2112;
    v26 = v12;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v27;
    *v19 = v27;
    _os_log_impl(&dword_22C366000, v8, v9, "Failed to requestAssets(%s,%s): %@", v18, 0x20u);
    sub_22C3AC228(v19, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v35(v33, v34);
  }

  else
  {

    v11(v13, v15);
  }

  v29 = v0[24];
  v28 = v0[25];
  v30 = v0[23];

  sub_22C369A24();

  return v31();
}

uint64_t sub_22C8C2560(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_22C374168((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;
    return sub_22C8B5B4C();
  }

  else
  {
    v9 = *v5;

    return sub_22C8B5BD0(v9, a2);
  }
}

uint64_t sub_22C8C25FC(uint64_t a1)
{
  v2 = sub_22C8C60A8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8C2638(uint64_t a1)
{
  v2 = sub_22C8C60A8();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C8C2690()
{
  result = qword_27D9C1260;
  if (!qword_27D9C1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1260);
  }

  return result;
}

uint64_t sub_22C8C26E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C8C273C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C1240, &qword_22C92CAD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C8C27AC()
{
  result = qword_27D9C1268;
  if (!qword_27D9C1268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9C1268);
  }

  return result;
}

uint64_t sub_22C8C27F0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v4 = result + 56;
    v3 = *(result + 56);
    v5 = *(result + 32);
    sub_22C36D280();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;

    v11 = 0;
    if (!v8)
    {
      goto LABEL_4;
    }

    do
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = (*(v2 + 48) + ((v12 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];

      sub_22C8C2ACC(v15, v16);
    }

    while (v8);
    while (1)
    {
LABEL_4:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return result;
      }

      if (v12 >= v10)
      {
        break;
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_8;
      }
    }
  }

  return result;
}

void sub_22C8C2908()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BCF20, &unk_22C922830);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C37B6BC();
  v9 = type metadata accessor for PromptTreeIdentifier.Label(v8);
  v10 = sub_22C3699B8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = v16 - v15;
  if (*(*v0 + 16))
  {
    v18 = *(v3 + 56);
    v19 = *(v3 + 32);
    sub_22C36D280();
    v22 = v21 & v20;
    v24 = (v23 + 63) >> 6;

    v25 = 0;
    if (!v22)
    {
      goto LABEL_4;
    }

    do
    {
      v26 = v25;
LABEL_8:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      sub_22C8C26E4(*(v3 + 48) + *(v12 + 72) * (v27 | (v26 << 6)), v17);
      sub_22C8C2BF4(v17, v1);
      sub_22C8C5ED8();
      sub_22C3AC228(v1, &qword_27D9BCF20, &unk_22C922830);
    }

    while (v22);
LABEL_4:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        goto LABEL_11;
      }

      v22 = *(v3 + 56 + 8 * v26);
      ++v25;
      if (v22)
      {
        v25 = v26;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    sub_22C36CC48();
  }
}

uint64_t sub_22C8C2ACC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22C90B62C();
  sub_22C909FFC();
  v7 = sub_22C90B66C();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22C90B4FC() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C5E274C();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_22C8C3BC0(v9);
  *v2 = v19;
  return v16;
}

uint64_t sub_22C8C2BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v78 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v4 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v84 = (&v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_22C90430C();
  v6 = *(v90 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v90);
  v89 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v76 - v10;
  v77 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v12 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v98 = (&v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = sub_22C902D0C();
  v105 = *(v97 - 8);
  v14 = *(v105 + 64);
  MEMORY[0x28223BE20](v97);
  v81 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v76 - v18;
  v107 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v104 = *(v107 - 8);
  v20 = *(v104 + 64);
  v21 = MEMORY[0x28223BE20](v107);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v100 = (&v76 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v96 = &v76 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v76 - v28;
  v76 = v2;
  v30 = *v2;
  v31 = *(*v2 + 40);
  sub_22C90B62C();
  sub_22C48640C();
  v32 = sub_22C90B66C();
  v33 = -1 << *(v30 + 32);
  v34 = v32 & ~v33;
  v106 = v30 + 56;
  if (((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
  {
LABEL_60:
    v70 = 1;
    v71 = v79;
    return sub_22C36C640(v71, v70, 1, v107);
  }

  v103 = ~v33;
  v83 = v6 + 16;
  v104 = *(v104 + 72);
  v87 = (v6 + 8);
  v92 = (v105 + 8);
  v80 = (v105 + 32);
  v105 = v16;
  v91 = v23;
  v99 = v30;
  v82 = a1;
  v88 = v6;
  v101 = v11;
  while (1)
  {
    v35 = *(v30 + 48);
    v102 = v104 * v34;
    sub_22C8C26E4(v35 + v104 * v34, v29);
    v36 = *(v105 + 48);
    sub_22C8C26E4(v29, v19);
    sub_22C8C26E4(a1, &v19[v36]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v57 = v96;
      sub_22C8C26E4(v19, v96);
      if (!swift_getEnumCaseMultiPayload())
      {
        v60 = a1;
        v61 = v81;
        v62 = v97;
        (*v80)(v81, &v19[v36], v97);
        LODWORD(v95) = sub_22C902CFC();
        v63 = *v92;
        (*v92)(v61, v62);
        sub_22C8C5ED8();
        v63(v57, v62);
        if (v95)
        {
          goto LABEL_62;
        }

        sub_22C8C5ED8();
        v23 = v91;
        v30 = v99;
        a1 = v60;
        goto LABEL_59;
      }

      sub_22C8C5ED8();
      (*v92)(v57, v97);
      v30 = v99;
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    v38 = a1;
    v39 = v100;
    sub_22C8C26E4(v19, v100);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22C8C5ED8();
      sub_22C8C5ED8();
      a1 = v38;
LABEL_25:
      sub_22C3AC228(v19, &qword_27D9BCBA0, &unk_22C9166D0);
      goto LABEL_59;
    }

    v40 = v98;
    sub_22C8C5CFC(&v19[v36], v98);
    v41 = sub_22C48819C(*v39, *v40);
    v42 = v101;
    if ((v41 & 1) != 0 && (v43 = v98[1], v95 = v100[1], v44 = *(v95 + 16), v94 = v43, v45 = *(v43 + 16), v93 = v44, v44 == v45))
    {
      if (v93 && v95 != v94)
      {
        v46 = 0;
        v47 = (*(v88 + 80) + 32) & ~*(v88 + 80);
        v86 = v95 + v47;
        v85 = v94 + v47;
        while (v46 < *(v95 + 16))
        {
          v48 = *(v88 + 72) * v46;
          v49 = *(v88 + 16);
          v50 = v90;
          v49(v42, v86 + v48, v90);
          if (v46 >= *(v94 + 16))
          {
            goto LABEL_65;
          }

          v51 = v89;
          v49(v89, v85 + v48, v50);
          sub_22C8C5F28(&qword_27D9BC808, MEMORY[0x277D85578]);
          v52 = sub_22C90A0BC();
          v53 = *v87;
          v54 = v51;
          v42 = v101;
          (*v87)(v54, v50);
          v53(v42, v50);
          if ((v52 & 1) == 0)
          {
            goto LABEL_26;
          }

          if (v93 == ++v46)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

LABEL_15:
      v55 = *(v77 + 24);
      v56 = sub_22C90962C();
      sub_22C8C5ED8();
      v23 = v91;
      if (v56)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_26:
      sub_22C8C5ED8();
      v23 = v91;
    }

    sub_22C8C5ED8();
    sub_22C8C5ED8();
    sub_22C8C5ED8();
    a1 = v82;
    v30 = v99;
LABEL_59:
    v34 = (v34 + 1) & v103;
    if (((*(v106 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  sub_22C8C26E4(v19, v23);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_22C8C5ED8();
    sub_22C8C5ED8();
    goto LABEL_25;
  }

  v58 = v84;
  sub_22C8C5CFC(&v19[v36], v84);
  v59 = *v58;
  switch(*v23)
  {
    case 3u:
      if (v59 == 3)
      {
        goto LABEL_40;
      }

      goto LABEL_57;
    case 4u:
      if (v59 != 4)
      {
        goto LABEL_57;
      }

      goto LABEL_40;
    case 5u:
      if (v59 != 5)
      {
        goto LABEL_57;
      }

      goto LABEL_40;
    case 6u:
      if (v59 != 6)
      {
        goto LABEL_57;
      }

      goto LABEL_40;
    default:
      if (*v23 != v59 || (v59 - 7) >= 0xFFFFFFFC)
      {
        goto LABEL_57;
      }

LABEL_40:
      v65 = *(v23 + 1) == v58[1] && *(v23 + 2) == v58[2];
      if (!v65 && (sub_22C90B4FC() & 1) == 0 || (*(v23 + 3) == v58[3] ? (v66 = *(v23 + 4) == v58[4]) : (v66 = 0), !v66 && (sub_22C90B4FC() & 1) == 0 || (*(v23 + 5) == v58[5] ? (v67 = *(v23 + 6) == v58[6]) : (v67 = 0), !v67 && (sub_22C90B4FC() & 1) == 0)))
      {
LABEL_57:
        sub_22C8C5ED8();
        goto LABEL_58;
      }

      v68 = *(v78 + 32);
      v69 = sub_22C90067C();
      sub_22C8C5ED8();
      if ((v69 & 1) == 0)
      {
LABEL_58:
        sub_22C8C5ED8();
        sub_22C8C5ED8();
        sub_22C8C5ED8();
        goto LABEL_59;
      }

LABEL_16:
      sub_22C8C5ED8();
      sub_22C8C5ED8();
LABEL_62:
      sub_22C8C5ED8();
      v42 = v76;
      v73 = *v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = *v42;
      v108 = *v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_66:
        sub_22C5E28CC();
        v75 = v108;
      }

      v71 = v79;
      sub_22C8C5CFC(*(v75 + 48) + v102, v79);
      sub_22C8C3D78(v34);
      v70 = 0;
      *v42 = v108;
      return sub_22C36C640(v71, v70, 1, v107);
  }
}

uint64_t sub_22C8C3880()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 40);
  sub_22C90B62C();
  sub_22C7F3AA8();
  v4 = sub_22C90B66C();
  v5 = ~(-1 << *(v2 + 32));
  while (1)
  {
    v6 = v4 & v5;
    if (((*(v2 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v4 & v5)) & 1) == 0)
    {
      return 0;
    }

    v7 = *(*(v2 + 48) + 8 * v6);

    sub_22C74B664();
    v9 = v8;

    if (v9)
    {
      break;
    }

    v4 = v6 + 1;
  }

  v11 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C5E2DB4();
    v13 = v15;
  }

  v10 = *(*(v13 + 48) + 8 * v6);
  sub_22C8C44D0(v6);
  *v1 = v15;
  return v10;
}

void sub_22C8C3990()
{
  sub_22C36BA7C();
  v28 = v1;
  v2 = sub_22C901FAC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v27 = v0;
  v11 = *v0;
  v12 = *(*v0 + 40);
  sub_22C37FBAC();
  sub_22C8C5F28(v13, v14);
  v15 = sub_22C909F7C();
  v16 = ~(-1 << *(v11 + 32));
  while (1)
  {
    v17 = v15 & v16;
    if (((*(v11 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
    {
      v21 = 1;
      v22 = v28;
      goto LABEL_9;
    }

    v18 = *(v5 + 72) * v17;
    (*(v5 + 16))(v10, *(v11 + 48) + v18, v2);
    sub_22C37FBAC();
    sub_22C8C5F28(&qword_27D9BAA28, v19);
    v20 = sub_22C90A0BC();
    (*(v5 + 8))(v10, v2);
    if (v20)
    {
      break;
    }

    v15 = v17 + 1;
  }

  v23 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v27;
  v29 = *v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C5E2A38();
    v25 = v29;
  }

  v26 = *(v25 + 48) + v18;
  v22 = v28;
  (*(v5 + 32))(v28, v26, v2);
  sub_22C8C4C68(v17);
  v21 = 0;
  *v27 = v29;
LABEL_9:
  sub_22C36C640(v22, v21, 1, v2);
  sub_22C36CC48();
}

unint64_t sub_22C8C3BC0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22C90AE6C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_22C90B62C();

        sub_22C909FFC();
        v15 = sub_22C90B66C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22C8C3D78(int64_t a1)
{
  v63 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v3 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v6 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_22C902D0C();
  v68 = *(v61 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v11 = *(*(v69 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v69);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v18 = &v57 - v17;
  v19 = *v1;
  v20 = *v1 + 56;
  v21 = -1 << *(*v1 + 32);
  v22 = (a1 + 1) & ~v21;
  if (((1 << v22) & *(v20 + 8 * (v22 >> 6))) != 0)
  {
    v70 = v16;
    v65 = v8;
    v23 = ~v21;

    v24 = sub_22C90AE6C();
    if ((*(v20 + 8 * (v22 >> 6)) & (1 << v22)) != 0)
    {
      v66 = (v24 + 1) & v23;
      v70 = *(v70 + 72);
      v58 = (v68 + 32);
      v57 = (v68 + 8);
      v67 = v23;
      v68 = v20;
      v59 = v19;
      while (1)
      {
        v25 = v70 * v22;
        sub_22C8C26E4(*(v19 + 48) + v70 * v22, v18);
        v26 = *(v19 + 40);
        sub_22C90B62C();
        sub_22C8C26E4(v18, v14);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v64 = a1;
            v28 = v65;
            sub_22C8C5CFC(v14, v65);
            MEMORY[0x2318B8B10](1);
            sub_22C48A9B4(v71, *v28);
            v29 = v28[1];
            v30 = *(v29 + 16);
            MEMORY[0x2318B8B10](v30);
            if (v30)
            {
              v31 = *(sub_22C90430C() - 8);
              v32 = v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
              v33 = *(v31 + 72);
              sub_22C8C5F28(&qword_27D9BC810, MEMORY[0x277D85578]);
              do
              {
                sub_22C909F8C();
                v32 += v33;
                --v30;
              }

              while (v30);
            }

            v34 = *(v62 + 24);
            sub_22C90963C();
            sub_22C8C5F28(&qword_27D9BC850, MEMORY[0x277D72E18]);
            sub_22C909F8C();
            sub_22C8C5ED8();
            a1 = v64;
            v19 = v59;
          }

          else
          {
            sub_22C8C5CFC(v14, v5);
            MEMORY[0x2318B8B10](2);
            v37 = *v5;
            if ((v37 - 3) >= 4u)
            {
              MEMORY[0x2318B8B10](1);
            }

            else
            {
              v37 = qword_22C92D120[(v37 - 3)];
            }

            MEMORY[0x2318B8B10](v37);
            v38 = v5[1];
            v39 = v5[2];
            sub_22C909FFC();
            v40 = v5[3];
            v41 = v5[4];
            sub_22C909FFC();
            v42 = v5[5];
            v43 = v5[6];
            sub_22C909FFC();
            v44 = *(v63 + 32);
            sub_22C90069C();
            sub_22C8C5F28(&qword_27D9BC858, MEMORY[0x277CC95F0]);
            sub_22C909F8C();
            sub_22C8C5ED8();
          }
        }

        else
        {
          v36 = v60;
          v35 = v61;
          (*v58)(v60, v14, v61);
          MEMORY[0x2318B8B10](0);
          sub_22C8C5F28(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
          sub_22C909F8C();
          (*v57)(v36, v35);
        }

        v45 = sub_22C90B66C();
        sub_22C8C5ED8();
        v46 = v45 & v67;
        v47 = v67;
        if (a1 >= v66)
        {
          v48 = v46 < v66 || a1 < v46;
        }

        else
        {
          v48 = v46 < v66 && a1 < v46;
        }

        v20 = v68;
        if (v48)
        {
          goto LABEL_32;
        }

        v49 = *(v19 + 48);
        v50 = v70 * a1;
        v51 = v49 + v70 * a1;
        v52 = v49 + v25 + v70;
        if (v70 * a1 < v25 || v51 >= v52)
        {
          break;
        }

        a1 = v22;
        if (v50 != v25)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_31;
        }

LABEL_32:
        v22 = (v22 + 1) & v47;
        if (((*(v20 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_31:
      a1 = v22;
      goto LABEL_32;
    }

LABEL_33:

    *(v20 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v20 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v54 = *(v19 + 16);
  v55 = __OFSUB__(v54, 1);
  v56 = v54 - 1;
  if (v55)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v56;
    ++*(v19 + 36);
  }

  return result;
}

uint64_t sub_22C8C44D0(unint64_t a1)
{
  v80 = sub_22C908C5C();
  v79 = *(v80 - 8);
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v90 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22C9069BC();
  v78 = *(v89 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v86 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v67 - v12;
  v14 = *v1;
  v15 = *v1 + 56;
  v16 = -1 << *(*v1 + 32);
  v17 = (a1 + 1) & ~v16;
  if (((1 << v17) & *(v15 + 8 * (v17 >> 6))) != 0)
  {
    v18 = ~v16;
    v19 = *v1;

    v20 = sub_22C90AE6C();
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) != 0)
    {
      v76 = v78 + 16;
      v75 = v79 + 16;
      v21 = (v78 + 32);
      v87 = (v79 + 32);
      v83 = (v78 + 8);
      v82 = (v79 + 8);
      v77 = v13;
      v74 = (v78 + 32);
      v71 = v14;
      v70 = v15;
      v69 = v18;
      v68 = (v20 + 1) & v18;
      while (2)
      {
        v73 = a1;
        v22 = *(v14 + 40);
        v23 = *(v14 + 48);
        v72 = v17;
        v24 = *(v23 + 8 * v17);
        sub_22C90B62C();
        v25 = v24 + 64;
        v26 = 1 << *(v24 + 32);
        if (v26 < 64)
        {
          v27 = ~(-1 << v26);
        }

        else
        {
          v27 = -1;
        }

        v28 = v27 & *(v24 + 64);
        v85 = (v26 + 63) >> 6;
        v81 = v24;
        result = swift_bridgeObjectRetain_n();
        v29 = 0;
        v30 = 0;
        v31 = v80;
        for (i = v24 + 64; ; v25 = i)
        {
          v91 = v29;
          if (!v28)
          {
            v33 = v86;
            while (1)
            {
              v32 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                break;
              }

              if (v32 >= v85)
              {
                v54 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
                sub_22C36C640(v33, 1, 1, v54);
                v28 = 0;
                goto LABEL_16;
              }

              v28 = *(v25 + 8 * v32);
              ++v30;
              if (v28)
              {
                v30 = v32;
                goto LABEL_15;
              }
            }

            __break(1u);
            goto LABEL_39;
          }

          v32 = v30;
LABEL_15:
          v34 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          v35 = v34 | (v32 << 6);
          v36 = v81;
          v37 = v78;
          v38 = v88;
          v39 = v89;
          (*(v78 + 16))(v88, *(v81 + 48) + *(v78 + 72) * v35, v89);
          v40 = *(v36 + 56);
          v41 = v79;
          v42 = v90;
          (*(v79 + 16))(v90, v40 + *(v79 + 72) * v35, v31);
          v43 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
          v44 = *(v43 + 48);
          v45 = *(v37 + 32);
          v46 = v86;
          v47 = v39;
          v21 = v74;
          v45(v86, v38, v47);
          v48 = v46 + v44;
          v31 = v80;
          (*(v41 + 32))(v48, v42, v80);
          sub_22C36C640(v46, 0, 1, v43);
          v13 = v77;
LABEL_16:
          sub_22C407C2C();
          v49 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
          if (sub_22C370B74(v13, 1, v49) == 1)
          {
            break;
          }

          v50 = *(v49 + 48);
          v51 = v88;
          v52 = v89;
          (*v21)(v88, v13, v89);
          v53 = v90;
          (*v87)(v90, &v13[v50], v31);
          memcpy(__dst, __src, sizeof(__dst));
          sub_22C8C5F28(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
          sub_22C909F8C();
          (*v83)(v51, v52);
          sub_22C8C5F28(&qword_27D9BAA90, MEMORY[0x277D1E968]);
          sub_22C909F8C();
          (*v82)(v53, v31);
          result = sub_22C90B66C();
          v29 = result ^ v91;
        }

        MEMORY[0x2318B8B10](v91);

        v55 = sub_22C90B66C();
        v56 = v69;
        v57 = v55 & v69;
        a1 = v73;
        if (v73 >= v68)
        {
          v58 = v57 < v68 || v73 < v57;
        }

        else
        {
          v58 = v57 < v68 && v73 < v57;
        }

        v14 = v71;
        v15 = v70;
        v59 = v72;
        if (!v58)
        {
          v60 = *(v71 + 48);
          v61 = (v60 + 8 * v73);
          v62 = (v60 + 8 * v72);
          if (v73 != v72 || v61 >= v62 + 1)
          {
            *v61 = *v62;
            a1 = v59;
          }
        }

        v17 = (v59 + 1) & v56;
        if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          continue;
        }

        break;
      }
    }

    *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v64 = *(v14 + 16);
  v65 = __OFSUB__(v64, 1);
  v66 = v64 - 1;
  if (v65)
  {
LABEL_39:
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v66;
    ++*(v14 + 36);
  }

  return result;
}

uint64_t sub_22C8C4C68(int64_t a1)
{
  v3 = sub_22C901FAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_22C90AE6C();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_22C8C5F28(&qword_2814357B0, MEMORY[0x277D1C338]);
        v27 = sub_22C909F7C();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

uint64_t sub_22C8C4F74(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v7 = a3 == a5 && a4 == a6;
  if (v7 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_22C90B46C() & 1;
  }
}

id sub_22C8C4FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_22C90A0EC();

  v7 = sub_22C90A0EC();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_22C8C5100()
{
  sub_22C36D5EC();
  sub_22C370250();
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_22C36D860(v7);
  *v8 = v9;
  v8[1] = sub_22C46BC08;

  return sub_22C8BEAD8(v2, v0, v3, v4, v6, v5);
}

uint64_t sub_22C8C51B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22C8C51F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C8C5250(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22C8C5290(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_22C8C5314()
{
  result = sub_22C90806C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DialogValues(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ResponseValidationRule.validate(text:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22C38B598(a6);
  v19 = (v12 + *v12);
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = sub_22C36D860(v15);
  *v16 = v17;
  v16[1] = sub_22C46BC08;

  return v19(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22C8C5514()
{
  result = sub_22C90077C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22C901C6C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C8C5634()
{
  result = sub_22C901D7C();
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

void sub_22C8C56E4()
{
  v0 = sub_22C90077C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22C8C581C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22C8C581C()
{
  if (!qword_27D9C12C0)
  {
    type metadata accessor for DialogValues(255);
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9C12C0);
    }
  }
}

uint64_t sub_22C8C5964()
{
  result = sub_22C90077C();
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

_BYTE *storeEnumTagSinglePayload for ResponseValidationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C8C5B80()
{
  result = qword_27D9C12D8;
  if (!qword_27D9C12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C12D8);
  }

  return result;
}

unint64_t sub_22C8C5BD4()
{
  result = qword_27D9C12E0;
  if (!qword_27D9C12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C12E0);
  }

  return result;
}

uint64_t sub_22C8C5C28()
{
  sub_22C36D5EC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_22C36D860(v5);
  *v6 = v7;
  v6[1] = sub_22C382AF4;
  v8 = sub_22C36DBB4();

  return sub_22C8C1C9C(v8, v9, v10, v4, v3);
}

uint64_t sub_22C8C5CFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C8C5D54()
{
  v1 = sub_22C3704C4();
  v2 = type metadata accessor for ResponseValidationContext(v1);
  sub_22C369914(v2);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  v10 = sub_22C36D860(v9);
  *v10 = v11;
  v10[1] = sub_22C382AF4;
  v12 = sub_22C36DBB4();

  return sub_22C8BF394(v12, v13, v14, v15, v7, v8, v16);
}

unint64_t sub_22C8C5E40()
{
  result = qword_27D9C12F8;
  if (!qword_27D9C12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C12F8);
  }

  return result;
}

uint64_t sub_22C8C5E94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_22C5ED9B8() & 1;
}

uint64_t sub_22C8C5ED8()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  sub_22C369848(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C8C5F28(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseValidationAssets.responseValidationAssetsInitError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C8C6054()
{
  result = qword_27D9C1320;
  if (!qword_27D9C1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1320);
  }

  return result;
}

unint64_t sub_22C8C60A8()
{
  result = qword_27D9C1328;
  if (!qword_27D9C1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1328);
  }

  return result;
}

uint64_t sub_22C8C6114()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return v0;
}

uint64_t sub_22C8C6144(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t sub_22C8C616C()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C8C6188()
{

  return swift_slowAlloc();
}

uint64_t sub_22C8C61A4()
{
}

uint64_t sub_22C8C61E4()
{

  return sub_22C90B5FC();
}

uint64_t sub_22C8C6204()
{

  return swift_dynamicCast();
}

uint64_t sub_22C8C6224()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return sub_22C90A11C();
}

void *sub_22C8C6244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_defaultActor_initialize();
  v6[14] = 0xD000000000000023;
  v6[15] = 0x800000022C93A020;
  v6[16] = 0xD00000000000001FLL;
  v6[17] = 0x800000022C93A050;
  v6[18] = 0xD000000000000010;
  v6[19] = 0x800000022C93A070;
  v6[20] = a1;
  v6[21] = a2;
  v6[22] = a3;
  v6[23] = a4;
  v6[24] = a5;
  v6[25] = a6;
  return v6;
}

uint64_t sub_22C8C62F4()
{
  v1 = v0;
  sub_22C90AF5C();
  v3 = v0[14];
  v2 = v0[15];

  sub_22C373CFC();
  MEMORY[0x2318B7850](v1[20], v1[21]);
  sub_22C38C2BC();
  MEMORY[0x2318B7850](v1[16], v1[17]);
  sub_22C373CFC();
  MEMORY[0x2318B7850](v1[22], v1[23]);
  sub_22C38C2BC();
  MEMORY[0x2318B7850](v1[18], v1[19]);
  sub_22C373CFC();
  MEMORY[0x2318B7850](v1[24], v1[25]);
  return v3;
}

id sub_22C8C63A8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  result = rankingPrefetchedAttributesArray();
  if (result)
  {
    v2 = result;
    [v0 setFetchAttributes_];

    v3 = sub_22C8C62F4();
    v5 = v4;
    v6 = objc_allocWithZone(MEMORY[0x277CC3498]);
    return sub_22C8C72B8(v3, v5, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C8C6448(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22C90AA7C();
  v3[6] = v4;
  sub_22C3699B8(v4);
  v3[7] = v5;
  v7 = *(v6 + 64);
  v3[8] = sub_22C3699D4();
  v8 = sub_22C9063DC();
  v3[9] = v8;
  sub_22C3699B8(v8);
  v3[10] = v9;
  v11 = *(v10 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = *(*(sub_22C3A5908(&qword_27D9C1330, &qword_22C92D1C8) - 8) + 64);
  v3[14] = sub_22C3699D4();
  v13 = sub_22C90AA9C();
  v3[15] = v13;
  sub_22C3699B8(v13);
  v3[16] = v14;
  v16 = *(v15 + 64);
  v3[17] = sub_22C3699D4();
  v17 = sub_22C90AA8C();
  v3[18] = v17;
  sub_22C3699B8(v17);
  v3[19] = v18;
  v20 = *(v19 + 64);
  v3[20] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C8C6630, v2, 0);
}

uint64_t sub_22C8C6630()
{
  v39 = v0;
  v1 = v0[5];
  v2 = sub_22C8C63A8();
  v0[21] = v2;
  if (v2)
  {
    v3 = v0[20];
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    sub_22C90AAAC();
    sub_22C90AA5C();
    v7 = *(v5 + 8);
    v8 = sub_22C36D264();
    v9(v8);
    v0[22] = sub_22C8C731C(&qword_27D9C1338, v10, type metadata accessor for ResponseGenerationSearchableItem);
    sub_22C8C731C(&qword_27D9C1340, 255, MEMORY[0x277CC21E8]);
    v11 = *(MEMORY[0x277D856D0] + 4);
    v12 = swift_task_alloc();
    v0[23] = v12;
    *v12 = v0;
    v12[1] = sub_22C8C6900;
    v13 = v0[20];
    v14 = v0[18];
    v15 = v0[14];

    return MEMORY[0x282200308](v15);
  }

  else
  {
    v16 = v0[11];
    v17 = v0[5];
    sub_22C90405C();

    v18 = sub_22C9063CC();
    v19 = sub_22C90AADC();

    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[10];
    v21 = v0[11];
    v23 = v0[9];
    if (v20)
    {
      v24 = v0[5];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136642819;
      v27 = sub_22C8C62F4();
      v29 = sub_22C36F9F4(v27, v28, &v38);

      *(v25 + 4) = v29;
      sub_22C36BE40(&dword_22C366000, v30, v31, "Error creating CSSearchQuery for entity with query string: %{sensitive}s");
      sub_22C36FF94(v26);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    v32 = *(v22 + 8);
    v33 = sub_22C36D264();
    v34(v33);
    sub_22C8C7444();

    v35 = sub_22C3789C0();

    return v36(v35);
  }
}

uint64_t sub_22C8C6900()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    if (*(v2 + 40))
    {
      v5 = *(v2 + 176);
      swift_getObjectType();
      v6 = sub_22C90A6DC();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_22C8C6EC4;
    v10 = v6;
  }

  else
  {
    v9 = sub_22C8C6A6C;
    v10 = *(v2 + 40);
    v8 = 0;
  }

  return MEMORY[0x2822009F8](v9, v10, v8);
}

uint64_t sub_22C8C6A6C()
{
  v71 = v0;
  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_22C370B74(v1, 1, v2);
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  if (v3 == 1)
  {
    v7 = v0[12];
    v8 = v0[5];
    v9 = *(v5 + 8);
    v10 = sub_22C36D264();
    v11(v10);
    sub_22C90405C();

    v12 = sub_22C9063CC();
    v13 = sub_22C90AACC();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[21];
    v16 = v0[12];
    v17 = v0[9];
    v18 = v0[10];
    if (v14)
    {
      v69 = v0[12];
      v19 = v0[5];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v70 = v21;
      *v20 = 136642819;
      v22 = sub_22C8C62F4();
      v24 = sub_22C36F9F4(v22, v23, &v70);

      *(v20 + 4) = v24;
      sub_22C36BE40(&dword_22C366000, v25, v26, "No CSSearchableItem found for entity with query string: %{sensitive}s");
      sub_22C36FF94(v21);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v18 + 8))(v69, v17);
    }

    else
    {

      (*(v18 + 8))(v16, v17);
    }
  }

  else
  {
    v28 = v0[7];
    v27 = v0[8];
    (*(v28 + 32))(v27, v1, v2);
    v29 = sub_22C90AA6C();
    (*(v28 + 8))(v27, v2);
    v30 = *(v5 + 8);
    v31 = sub_22C36D264();
    v32(v31);
    v33 = sub_22C878D84();
    v34 = sub_22C8C7364(v33);
    if (v34)
    {
      v35 = sub_22C36E2B8(v34);

      if (v35 == 1)
      {
        v36 = sub_22C8C7364(v33);
        if (v36)
        {
          v37 = v36;
          if (sub_22C36E2B8(v36))
          {
            sub_22C633A2C(0, (v37 & 0xC000000000000001) == 0, v37);
            if ((v37 & 0xC000000000000001) != 0)
            {
              v38 = MEMORY[0x2318B8460](0, v37);
            }

            else
            {
              v38 = *(v37 + 32);
            }

            v39 = v38;

            objc_opt_self();
            v40 = swift_dynamicCastObjCClass();
            if (v40)
            {
              v41 = v40;
              v42 = [v40 title];
              if (!v42)
              {
                goto LABEL_16;
              }

              v43 = sub_22C8C73D4(v42);
              if (!v44)
              {
                goto LABEL_16;
              }

              v45 = v43;
              v46 = v44;

              v47 = HIBYTE(v46) & 0xF;
              if ((v46 & 0x2000000000000000) == 0)
              {
                v47 = v45 & 0xFFFFFFFFFFFFLL;
              }

              if (!v47)
              {
LABEL_16:
                v48 = v0[4];
                if (v48)
                {
                  v49 = v0[3];
                }

                else
                {
                  v49 = 0;
                }

                if (v48)
                {
                  v50 = v0[4];
                }

                else
                {
                  v50 = 0xE000000000000000;
                }

                sub_22C36E278(0, &qword_27D9C1348, 0x277D4C598);

                v51 = sub_22C8C71A8(v49, v50);
                [v41 setTitle_];
              }
            }
          }

          else
          {
          }
        }
      }
    }

    v52 = [objc_allocWithZone(MEMORY[0x277D4C728]) initWithFacade_];
    if (v52)
    {
      v53 = v52;
      v54 = [v52 data];

      v55 = v0[21];
      if (v54)
      {
        v56 = sub_22C90051C();
        v58 = v57;

        goto LABEL_33;
      }
    }

    else
    {
      v59 = v0[21];
    }
  }

  v56 = 0;
  v58 = 0xF000000000000000;
LABEL_33:
  v60 = v0[20];
  v61 = v0[17];
  v63 = v0[13];
  v62 = v0[14];
  v65 = v0[11];
  v64 = v0[12];
  v66 = v0[8];

  v67 = v0[1];

  return v67(v56, v58);
}

uint64_t sub_22C8C6EC4()
{
  v1 = v0[5];
  v0[2] = v0[24];
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_22C8C6F5C, v1, 0);
}

uint64_t sub_22C8C6F5C()
{
  v29 = v0;
  v1 = v0[24];
  v2 = v0[13];
  v3 = v0[5];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_22C90405C();

  v4 = v1;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[13];
  v11 = v0[9];
  v12 = v0[10];
  if (v7)
  {
    v27 = v0[13];
    v13 = v0[5];
    v26 = v0[21];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v14 = 136643075;
    v17 = sub_22C8C62F4();
    v25 = v11;
    v19 = sub_22C36F9F4(v17, v18, &v28);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v8;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_22C366000, v5, v6, "Error searching for entity with query string: %{sensitive}s: %@", v14, 0x16u);
    sub_22C5AB9D0(v15);
    sub_22C3699EC();
    sub_22C36FF94(v16);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v12 + 8))(v27, v25);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  sub_22C8C7444();

  v22 = sub_22C3789C0();

  return v23(v22);
}

id sub_22C8C71A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_22C90A0EC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString_];

  return v3;
}

void *sub_22C8C7218()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[19];

  v4 = v0[21];

  v5 = v0[23];

  v6 = v0[25];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22C8C7268()
{
  sub_22C8C7218();

  return MEMORY[0x282200960](v0);
}

id sub_22C8C72B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_22C90A0EC();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

uint64_t sub_22C8C731C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C8C7364(void *a1)
{
  v1 = [a1 cardSections];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22C36E278(0, &qword_27D9C0C98, 0x277D4C238);
  v3 = sub_22C90A5EC();

  return v3;
}

uint64_t sub_22C8C73D4(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90A11C();

  return v3;
}

uint64_t sub_22C8C7444()
{
  v2 = v0[20];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[8];
}

uint64_t sub_22C8C7468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22C8C748C, 0, 0);
}

uint64_t sub_22C8C748C()
{
  sub_22C36FB38();
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  v0[7] = 0;
  v0[8] = v4;
  v0[6] = v3;
  if (v3)
  {
    v5 = sub_22C906ECC();
    sub_22C369914(v5);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = (v2 + *v2);
    v8 = v2[1];
    swift_task_alloc();
    sub_22C36CC90();
    v0[9] = v9;
    *v9 = v10;
    sub_22C37EE90(v9);

    return (v14)(v0 + 2, v1 + v7);
  }

  else
  {
    sub_22C36D5E0();
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_22C8C75F8()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    v9 = *(v3 + 64);

    v10 = sub_22C7778DC;
  }

  else
  {
    v10 = sub_22C8C76FC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22C8C76FC()
{
  sub_22C3743E4();
  v1 = v0[2];
  result = v0[8];
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[8];
  if (!isUniquelyReferenced_nonNull_native || v4 + v3 > *(v6 + 24) >> 1)
  {
    v7 = v0[8];
    sub_22C5972AC();
    v6 = v8;
  }

  if (*(v1 + 16))
  {
    v9 = (*(v6 + 24) >> 1) - *(v6 + 16);
    result = sub_22C9023BC();
    v10 = *(result - 8);
    if (v9 >= v3)
    {
      v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v12 = *(v10 + 72);
      swift_arrayInitWithCopy();

      if (!v3)
      {
        goto LABEL_11;
      }

      v13 = *(v6 + 16);
      v14 = __OFADD__(v13, v3);
      v15 = v13 + v3;
      if (!v14)
      {
        *(v6 + 16) = v15;
        goto LABEL_11;
      }

LABEL_21:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_11:
  v16 = v0[6];
  v17 = v0[7] + 1;
  v0[7] = v17;
  v0[8] = v6;
  if (v17 == v16)
  {
    sub_22C36D5E0();

    return v18(v6);
  }

  else
  {
    v19 = v0[5];
    v20 = v0[3];
    v21 = sub_22C906ECC();
    sub_22C3699B8(v21);
    v24 = v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v23 + 72) * v17;
    v28 = (v20 + *v20);
    v25 = v20[1];
    swift_task_alloc();
    sub_22C36CC90();
    v0[9] = v26;
    *v26 = v27;
    sub_22C37EE90();

    return (v28)(v0 + 2, v24);
  }
}

uint64_t sub_22C8C7988()
{
  type metadata accessor for PrescribedPlanGenerator();
  sub_22C3A5908(&qword_27D9C1418, &qword_22C92D5F8);
  sub_22C3A5908(&qword_27D9C1420, &qword_22C92D600);
  return sub_22C8D520C();
}

uint64_t sub_22C8C79DC()
{
  type metadata accessor for ModularQueryDecorationService();
  sub_22C3A5908(&qword_27D9C13E8, &qword_22C92D5C8);
  sub_22C3A5908(&qword_27D9C13F0, &qword_22C92D5D0);
  return sub_22C8D520C();
}

uint64_t sub_22C8C7A30()
{
  type metadata accessor for SuggestedInvocationPlanGenerator();
  sub_22C3A5908(&qword_27D9C1408, &qword_22C92D5E8);
  sub_22C3A5908(&qword_27D9C1410, &qword_22C92D5F0);
  return sub_22C8D520C();
}

uint64_t sub_22C8C7A84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C901DEC();
  *a1 = result & 1;
  return result;
}

uint64_t ResponseGenerationService.init(toolboxResources:toolExecutionSession:identityChain:featureStoreService:)()
{
  sub_22C37DAA8();
  v2 = *(v1 + 32);
  sub_22C36D1E4(v1, *(v1 + 24));
  sub_22C8D51E8();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v7 = sub_22C8D51D0(v6);
  v8(v7);
  sub_22C8D5150();
  v9 = sub_22C37BB14();
  sub_22C36FF94(v9);
  return v0;
}

uint64_t sub_22C8C7BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v14 = v12[24];
  v13 = v12[25];
  v16 = v12[22];
  v15 = v12[23];
  v17 = v12[20];
  v18 = v12[21];
  v20 = v12[15];
  v19 = v12[16];
  v21 = v12[14];
  (*(v12[11] + 8))(v12[12], v12[10]);
  v22 = *(v20 + 8);
  v23 = sub_22C36CA88();
  v24(v23);
  v25 = *(v18 + 8);
  v26 = sub_22C36D264();
  v27(v26);
  v28 = *(v14 + 8);
  v29 = sub_22C36BBCC();
  v30(v29);
  v47 = v12[28];
  v31 = v12[25];
  sub_22C36CDAC();
  v33 = v12[12];
  v32 = v12[13];
  v34 = v12[9];
  v36 = v12[5];
  v35 = v12[6];
  v37 = v12[4];

  sub_22C369A24();
  sub_22C372034();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, v47, a10, a11, a12);
}

uint64_t sub_22C8C7CEC()
{
  sub_22C369980();
  v1[15] = v2;
  v1[16] = v0;
  v3 = sub_22C9063DC();
  v1[17] = v3;
  sub_22C3699B8(v3);
  v1[18] = v4;
  v6 = *(v5 + 64);
  v1[19] = sub_22C3856B8();
  v1[20] = swift_task_alloc();
  v7 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  v1[21] = sub_22C3699D4();
  v10 = sub_22C9073DC();
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  v13 = sub_22C3699D4();
  sub_22C8D525C(v13);
  v14 = sub_22C9087BC();
  v1[23] = v14;
  sub_22C3699B8(v14);
  v1[24] = v15;
  v1[25] = *(v16 + 64);
  v1[26] = sub_22C3699D4();
  v17 = sub_22C90640C();
  v1[27] = v17;
  sub_22C3699B8(v17);
  v1[28] = v18;
  v20 = *(v19 + 64);
  v1[29] = sub_22C3699D4();
  v21 = sub_22C9084EC();
  v1[30] = v21;
  sub_22C3699B8(v21);
  v1[31] = v22;
  v24 = *(v23 + 64);
  v1[32] = sub_22C3699D4();
  v25 = sub_22C9025AC();
  v1[33] = v25;
  sub_22C3699B8(v25);
  v1[34] = v26;
  v28 = *(v27 + 64);
  v1[35] = sub_22C3699D4();
  v29 = sub_22C90806C();
  v1[36] = v29;
  sub_22C3699B8(v29);
  v1[37] = v30;
  v1[38] = *(v31 + 64);
  v1[39] = sub_22C3856B8();
  v1[40] = swift_task_alloc();
  v32 = sub_22C9089DC();
  v1[41] = v32;
  sub_22C3699B8(v32);
  v1[42] = v33;
  v35 = *(v34 + 64);
  v1[43] = sub_22C3856B8();
  v1[44] = swift_task_alloc();
  v36 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v36);
  v38 = *(v37 + 64);
  v1[45] = sub_22C3699D4();
  v39 = sub_22C90880C();
  v1[46] = v39;
  sub_22C3699B8(v39);
  v1[47] = v40;
  v42 = *(v41 + 64);
  v1[48] = sub_22C3856B8();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v43 = sub_22C908A0C();
  v1[51] = v43;
  sub_22C3699B8(v43);
  v1[52] = v44;
  v46 = *(v45 + 64);
  v1[53] = sub_22C3856B8();
  v1[54] = swift_task_alloc();
  v47 = sub_22C90069C();
  v1[55] = v47;
  sub_22C3699B8(v47);
  v1[56] = v48;
  v1[57] = *(v49 + 64);
  v1[58] = sub_22C3856B8();
  v1[59] = swift_task_alloc();
  v50 = sub_22C90634C();
  v1[60] = v50;
  sub_22C3699B8(v50);
  v1[61] = v51;
  v53 = *(v52 + 64);
  v1[62] = sub_22C3856B8();
  v1[63] = swift_task_alloc();
  v54 = sub_22C90636C();
  v1[64] = v54;
  sub_22C3699B8(v54);
  v1[65] = v55;
  v57 = *(v56 + 64);
  v1[66] = sub_22C3699D4();
  v58 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v58, v59, v60);
}

uint64_t sub_22C8C81C0()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 504);
  sub_22C9036AC();
  sub_22C90633C();
  v3 = sub_22C90635C();
  v4 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v5 = *(v0 + 504);
    v6 = sub_22C36D240();
    *v6 = 0;
    v7 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v3, v4, v7, "ResponseGeneration.overall", "", v6, 2u);
    sub_22C3699EC();
  }

  v8 = *(v0 + 520);
  v9 = *(v0 + 504);
  v159 = *(v0 + 512);
  v162 = *(v0 + 528);
  v11 = *(v0 + 488);
  v10 = *(v0 + 496);
  v12 = *(v0 + 480);
  v156 = *(v0 + 472);
  v13 = *(v0 + 400);
  v170 = *(v0 + 408);
  v14 = *(v0 + 376);
  v166 = *(v0 + 368);
  v15 = *(v0 + 360);
  v153 = *(v0 + 120);

  v16 = *(v11 + 16);
  v17 = sub_22C37170C();
  v18(v17);
  v19 = sub_22C9063AC();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_22C3707B4();
  *(v0 + 536) = sub_22C90639C();
  (*(v11 + 8))(v9, v12);
  (*(v8 + 8))(v162, v159);
  sub_22C90068C();
  sub_22C90878C();
  sub_22C36D484();
  sub_22C3A9540();
  v22 = *(v14 + 8);
  v22(v13, v166);
  v23 = sub_22C37EF1C();
  sub_22C36D0A8(v23, v24, v170);
  if (v25)
  {
    sub_22C36DD28(*(v0 + 360), &qword_27D9BA808, &qword_22C90C6E0);
LABEL_12:
    v63 = *(v0 + 152);
    sub_22C90405C();
    v64 = sub_22C9063CC();
    v65 = sub_22C90AADC();
    if (sub_22C370048(v65))
    {
      *sub_22C36D240() = 0;
      sub_22C372114();
      _os_log_impl(v66, v67, v68, v69, v70, 2u);
      sub_22C3699EC();
    }

    v71 = *(v0 + 472);
    v72 = *(v0 + 440);
    v73 = *(v0 + 448);
    v75 = *(v0 + 144);
    v74 = *(v0 + 152);
    v76 = *(v0 + 136);

    (*(v75 + 8))(v74, v76);
    sub_22C8D420C();
    sub_22C36FBE4();
    *v77 = 1;
    swift_willThrow();
    v78 = *(v73 + 8);
    v79 = sub_22C36ECB4();
    v80(v79);
    goto LABEL_15;
  }

  v26 = *(v0 + 432);
  v27 = *(v0 + 408);
  v28 = *(v0 + 416);
  v30 = *(v0 + 352);
  v29 = *(v0 + 360);
  v31 = *(v0 + 328);
  v32 = *(v0 + 336);
  v33 = *(v28 + 32);
  *(v0 + 544) = v33;
  *(v0 + 552) = (v28 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v33(v26, v29, v27);
  sub_22C9089EC();
  v34 = *(v32 + 88);
  v35 = sub_22C36D264();
  if (v36(v35) != *MEMORY[0x277D1E838])
  {
    v57 = *(v0 + 352);
    v58 = *(v0 + 328);
    v59 = *(v0 + 336);
    (*(*(v0 + 416) + 8))(*(v0 + 432), *(v0 + 408));
    v60 = *(v59 + 8);
    v61 = sub_22C37170C();
    v62(v61);
    goto LABEL_12;
  }

  v37 = *(v0 + 352);
  v38 = *(v0 + 328);
  v39 = *(v0 + 336);
  v40 = *(v0 + 128);
  v41 = *(v39 + 8);
  *(v0 + 560) = v41;
  *(v0 + 568) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v37, v38);
  if (*(v40 + 376))
  {
    v42 = *(v0 + 392);
    v43 = *(v0 + 368);
    v44 = *(v0 + 120);

    sub_22C899F90();

    sub_22C90878C();
    sub_22C89DA74(v42, v45, v46, v47, v48, v49, v50, v51, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162);

    v52 = sub_22C36D264();
    (v22)(v52);
  }

  v53 = *(v0 + 128);
  sub_22C36CA70();
  sub_22C6AEA50(v53 + 248, v0 + 56, &qword_27D9C1360, &qword_22C92D218);
  if (*(v0 + 80))
  {
    v54 = *(v0 + 384);
    v55 = *(v0 + 320);
    v56 = *(v0 + 120);
    sub_22C36C730((v0 + 56), v0 + 16);
    sub_22C374168((v0 + 16), *(v0 + 40));
    sub_22C90878C();
    sub_22C894DCC(v54, v55);
    v167 = *(v0 + 472);
    v171 = *(v0 + 464);
    v152 = *(v0 + 456);
    v106 = *(v0 + 448);
    v108 = *(v0 + 312);
    v107 = *(v0 + 320);
    v109 = *(v0 + 296);
    v110 = *(v0 + 288);
    v131 = *(v0 + 256);
    v161 = *(v0 + 208);
    v165 = *(v0 + 440);
    v111 = *(v0 + 192);
    v143 = *(v0 + 304);
    v146 = *(v0 + 200);
    v112 = *(v0 + 184);
    v149 = *(v0 + 128);
    v134 = *(v0 + 120);
    v137 = v112;
    v22(*(v0 + 384), *(v0 + 368));
    v113 = sub_22C90801C();
    v155 = v114;
    v158 = v113;
    *(v0 + 576) = v114;
    v115 = *(v109 + 16);
    v140 = v110;
    v115(v108, v107, v110);
    sub_22C9084DC();
    v115(v108, v107, v110);
    v116 = *(v106 + 16);
    *(v0 + 584) = v116;
    *(v0 + 592) = (v106 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v116(v171, v167, v165);
    (*(v111 + 16))(v161, v134, v112);
    v117 = (*(v109 + 80) + 24) & ~*(v109 + 80);
    v118 = (v143 + *(v106 + 80) + v117) & ~*(v106 + 80);
    v119 = (v152 + *(v111 + 80) + v118) & ~*(v111 + 80);
    v120 = swift_allocObject();
    *(v0 + 600) = v120;
    *(v120 + 16) = v149;
    (*(v109 + 32))(v120 + v117, v108, v140);
    (*(v106 + 32))(v120 + v118, v171, v165);
    (*(v111 + 32))(v120 + v119, v161, v137);
    v121 = *(MEMORY[0x277D08428] + 4);

    v122 = swift_task_alloc();
    *(v0 + 608) = v122;
    v123 = MEMORY[0x277D1E508];
    sub_22C38B5F0(&qword_27D9C1380, MEMORY[0x277D1E508]);
    sub_22C38B5F0(&qword_27D9C1388, v123);
    v124 = MEMORY[0x277D1D840];
    sub_22C38B5F0(&qword_27D9C1390, MEMORY[0x277D1D840]);
    sub_22C38B5F0(&qword_27D9C1398, v124);
    *v122 = v0;
    v122[1] = sub_22C8C8BB8;
    v125 = *(v0 + 256);
    v126 = *(v0 + 240);
    v127 = *(v0 + 216);
    v128 = *(v0 + 232);

    return MEMORY[0x28215E710](v128, v158, v155, v125, &unk_22C92D248, v120, v126, v127);
  }

  v86 = *(v0 + 160);
  sub_22C36DD28(v0 + 56, &qword_27D9C1360, &qword_22C92D218);
  sub_22C90405C();
  v87 = sub_22C9063CC();
  v88 = sub_22C90AADC();
  if (sub_22C370048(v88))
  {
    *sub_22C36D240() = 0;
    sub_22C372114();
    _os_log_impl(v89, v90, v91, v92, v93, 2u);
    sub_22C3699EC();
  }

  v94 = *(v0 + 448);
  v164 = *(v0 + 440);
  v169 = *(v0 + 472);
  v95 = *(v0 + 432);
  v97 = *(v0 + 408);
  v96 = *(v0 + 416);
  v98 = *(v0 + 160);
  v100 = *(v0 + 136);
  v99 = *(v0 + 144);

  (*(v99 + 8))(v98, v100);
  sub_22C8D420C();
  v101 = sub_22C36FBE4();
  sub_22C8D5224(v101, v102);
  v103 = *(v96 + 8);
  v104 = sub_22C36FC2C();
  v105(v104);
  (*(v94 + 8))(v169, v164);
LABEL_15:
  sub_22C8C9338();

  sub_22C8D5294();
  v81 = *(v0 + 392);
  v82 = *(v0 + 400);
  v83 = *(v0 + 384);
  v130 = *(v0 + 360);
  v133 = *(v0 + 352);
  v136 = *(v0 + 344);
  v139 = *(v0 + 320);
  v142 = *(v0 + 312);
  v145 = *(v0 + 280);
  v148 = *(v0 + 256);
  v151 = *(v0 + 232);
  v154 = *(v0 + 208);
  v157 = *(v0 + 176);
  v160 = *(v0 + 168);
  v163 = *(v0 + 160);
  v168 = *(v0 + 152);

  sub_22C369A24();

  return v84();
}

uint64_t sub_22C8C8BB8()
{
  sub_22C36D5EC();
  v2 = *v1;
  sub_22C36D994();
  *v4 = v3;
  v5 = v2[76];
  *v4 = *v1;
  *(v3 + 616) = v0;

  v6 = v2[75];
  v7 = v2[72];
  v8 = v2[16];
  if (v0)
  {

    v9 = sub_22C8C912C;
  }

  else
  {

    v9 = sub_22C8C8D2C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22C8C912C()
{
  v1 = v0[67];
  v34 = v0[59];
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[54];
  v5 = v0[51];
  v6 = v0[52];
  v7 = v0[40];
  v9 = v0[36];
  v8 = v0[37];
  (*(v0[31] + 8))(v0[32], v0[30]);
  v10 = *(v8 + 8);
  v11 = sub_22C36FC2C();
  v12(v11);
  v13 = *(v6 + 8);
  v14 = sub_22C36ECB4();
  v15(v14);
  (*(v3 + 8))(v34, v2);
  sub_22C36FF94(v0 + 2);
  sub_22C8C9338();

  v35 = v0[77];
  sub_22C8D5294();
  v17 = v0[49];
  v16 = v0[50];
  v18 = v0[48];
  v21 = v0[45];
  v22 = v0[44];
  v23 = v0[43];
  v24 = v0[40];
  v25 = v0[39];
  v26 = v0[35];
  v27 = v0[32];
  v28 = v0[29];
  v29 = v0[26];
  v30 = v0[22];
  v31 = v0[21];
  v32 = v0[20];
  v33 = v0[19];

  sub_22C382AE4();

  return v19();
}

uint64_t sub_22C8C9338()
{
  v31 = sub_22C90637C();
  v29 = *(v31 - 1);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9036AC();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v30 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v26 = v9;
    v27 = v8;
    v28 = v3;

    sub_22C9063BC();

    v14 = v29;
    v15 = v31;
    if ((*(v29 + 88))(v2, v31) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v2, v15);
      v31 = "%s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2080;
    sub_22C90366C();
    v21 = sub_22C90AF7C();
    v23 = sub_22C36F9F4(v21, v22, &v32);

    *(v19 + 4) = v23;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v30, v24, "ResponseGeneration.overall", v31, v19, 0xCu);
    sub_22C36FF94(v20);
    MEMORY[0x2318B9880](v20, -1, -1);
    MEMORY[0x2318B9880](v19, -1, -1);

    (*(v4 + 8))(v7, v28);
    return (*(v26 + 8))(v12, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_22C8C96DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a1;
  v8 = *(*(sub_22C3A5908(&qword_27D9C10D0, &qword_22C92BFA0) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v9 = sub_22C9025AC();
  v6[8] = v9;
  v10 = *(v9 - 8);
  v6[9] = v10;
  v11 = *(v10 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8C97EC, a3, 0);
}

uint64_t sub_22C8C97EC()
{
  sub_22C369980();
  v2 = v0[6];
  v1 = v0[7];
  sub_22C90878C();
  sub_22C90880C();
  sub_22C36BECC();
  sub_22C36C640(v3, v4, v5, v6);
  swift_task_alloc();
  sub_22C36CC90();
  v0[12] = v7;
  *v7 = v8;
  v7[1] = sub_22C8C98A8;
  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[3];

  return sub_22C8CA098();
}

uint64_t sub_22C8C98A8()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 96);
  v6 = *(v1 + 56);
  *v4 = *v2;
  *(v3 + 104) = v0;

  sub_22C36DD28(v6, &qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C6343B0();
  v8 = *(v7 + 24);
  sub_22C37E810();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8C99E8()
{
  sub_22C36D5EC();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[2];
  v6 = *(v3 + 16);
  v7 = sub_22C36BA00();
  v8(v7);
  sub_22C9063FC();
  v9 = *(v3 + 8);
  v10 = sub_22C37170C();
  v11(v10);

  sub_22C369C50();

  return v12();
}

uint64_t sub_22C8C9AAC()
{
  sub_22C369980();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  sub_22C369A24();
  v5 = v0[13];

  return v4();
}

uint64_t sub_22C8C9B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C9026BC();
  v7 = sub_22C369914(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v95 = v11 - v10;
  sub_22C36BA0C();
  v94 = sub_22C907DEC();
  v12 = sub_22C369824(v94);
  v90 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v93 = v17 - v16;
  v18 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v19 = sub_22C369914(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v96 = v84 - v22;
  sub_22C36BA0C();
  v23 = sub_22C901FAC();
  v24 = sub_22C369914(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v100 = v27 - v28;
  sub_22C369930();
  MEMORY[0x28223BE20](v29);
  v99 = v84 - v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA64();
  v98 = v32;
  v33 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v34 = sub_22C369914(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v97 = v84 - v37;
  sub_22C36BA0C();
  v38 = sub_22C906ECC();
  v39 = sub_22C369824(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  v46 = v45 - v44;
  v92 = sub_22C902B3C();
  v47 = sub_22C369824(v92);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C369838();
  v91 = v53 - v52;
  v54 = sub_22C36D39C();
  v56 = sub_22C3A5908(v54, v55);
  v57 = sub_22C369914(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v61 = v84 - v60;
  v62 = a2;
  sub_22C6AEA50(a1, v84 - v60, &qword_27D9BC428, &unk_22C912FD0);
  v63 = *(a2 + 16);
  if (v63)
  {
    v84[1] = v61;
    v84[2] = a3;
    v101 = MEMORY[0x277D84F90];
    sub_22C3B6A1C(0, v63, 0);
    v64 = v101;
    v66 = *(v41 + 16);
    v65 = v41 + 16;
    v67 = *(v65 + 64);
    sub_22C36BA94();
    v69 = v62 + v68;
    v87 = *(v65 + 56);
    v88 = v70;
    v85 = (v65 - 8);
    v86 = (v90 + 8);
    v71 = v49;
    v84[3] = v49 + 32;
    v72 = v96;
    v89 = v71;
    v90 = v65;
    do
    {
      v88(v46, v69, v38);
      sub_22C906E5C();
      sub_22C906E1C();
      sub_22C906DFC();
      sub_22C906DEC();
      sub_22C906E9C();
      v73 = sub_22C90769C();
      sub_22C36D0A8(v72, 1, v73);
      if (v74)
      {
        sub_22C36DD28(v72, &qword_27D9BF330, &unk_22C923250);
      }

      else
      {
        sub_22C90768C();
        sub_22C36BBA8(v73);
        (*(v75 + 8))(v72, v73);
      }

      v76 = v93;
      sub_22C906EBC();
      sub_22C36D484();
      sub_22C907DAC();
      (*v86)(v76, v94);
      v77 = v91;
      sub_22C902B0C();
      (*v85)(v46, v38);
      v101 = v64;
      v79 = *(v64 + 16);
      v78 = *(v64 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_22C3B6A1C(v78 > 1, v79 + 1, 1);
        v64 = v101;
      }

      *(v64 + 16) = v79 + 1;
      v80 = v89;
      v81 = *(v89 + 80);
      sub_22C36BA94();
      (*(v80 + 32))(v64 + v82 + *(v80 + 72) * v79, v77, v92);
      v69 += v87;
      --v63;
      v72 = v96;
    }

    while (v63);
  }

  return sub_22C90257C();
}

uint64_t sub_22C8CA098()
{
  sub_22C369980();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_22C90454C();
  v1[13] = v6;
  sub_22C3699B8(v6);
  v1[14] = v7;
  v9 = *(v8 + 64);
  v1[15] = sub_22C3699D4();
  v10 = sub_22C90240C();
  v1[16] = v10;
  sub_22C3699B8(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = sub_22C3699D4();
  v14 = sub_22C9063DC();
  v1[19] = v14;
  sub_22C3699B8(v14);
  v1[20] = v15;
  v17 = *(v16 + 64);
  v1[21] = sub_22C3856B8();
  v18 = swift_task_alloc();
  sub_22C8D525C(v18);
  v19 = sub_22C901FAC();
  v1[23] = v19;
  sub_22C3699B8(v19);
  v1[24] = v20;
  v22 = *(v21 + 64);
  v1[25] = sub_22C3699D4();
  v23 = type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C369914(v23);
  v25 = *(v24 + 64);
  v1[26] = sub_22C3856B8();
  v1[27] = swift_task_alloc();
  v26 = sub_22C3A5908(&qword_27D9BC428, &unk_22C912FD0);
  sub_22C369914(v26);
  v28 = *(v27 + 64);
  v1[28] = sub_22C3699D4();
  v29 = sub_22C9025AC();
  v1[29] = v29;
  sub_22C3699B8(v29);
  v1[30] = v30;
  v32 = *(v31 + 64);
  v1[31] = sub_22C3699D4();
  v33 = sub_22C9023DC();
  sub_22C369914(v33);
  v35 = *(v34 + 64);
  v1[32] = sub_22C3699D4();
  v36 = sub_22C3A5908(&qword_27D9BC430, &qword_22C92BFD0);
  sub_22C369914(v36);
  v38 = *(v37 + 64);
  v1[33] = sub_22C3856B8();
  v1[34] = swift_task_alloc();
  v39 = sub_22C90241C();
  v1[35] = v39;
  sub_22C3699B8(v39);
  v1[36] = v40;
  v42 = *(v41 + 64);
  v1[37] = sub_22C3699D4();
  v43 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  sub_22C369914(v43);
  v45 = *(v44 + 64);
  v1[38] = sub_22C3699D4();
  v46 = sub_22C90243C();
  v1[39] = v46;
  sub_22C3699B8(v46);
  v1[40] = v47;
  v49 = *(v48 + 64);
  v1[41] = sub_22C3699D4();
  v50 = sub_22C907DEC();
  v1[42] = v50;
  sub_22C3699B8(v50);
  v1[43] = v51;
  v53 = *(v52 + 64);
  v1[44] = sub_22C3856B8();
  v1[45] = swift_task_alloc();
  v54 = sub_22C906ECC();
  v1[46] = v54;
  sub_22C3699B8(v54);
  v1[47] = v55;
  v57 = *(v56 + 64);
  v1[48] = sub_22C3856B8();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v58 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v58);
  v60 = *(v59 + 64);
  v1[51] = sub_22C3856B8();
  v1[52] = swift_task_alloc();
  v61 = sub_22C3A5908(&qword_27D9BF850, &qword_22C92D260);
  sub_22C369914(v61);
  v63 = *(v62 + 64);
  v1[53] = sub_22C3699D4();
  v64 = sub_22C3A5908(&qword_27D9C13A0, &qword_22C92D268);
  sub_22C369914(v64);
  v66 = *(v65 + 64);
  v1[54] = sub_22C3856B8();
  v1[55] = swift_task_alloc();
  v67 = sub_22C90077C();
  v1[56] = v67;
  sub_22C3699B8(v67);
  v1[57] = v68;
  v70 = *(v69 + 64);
  v1[58] = sub_22C3699D4();
  v71 = sub_22C3A5908(&qword_27D9C13A8, &unk_22C92D270);
  sub_22C369914(v71);
  v73 = *(v72 + 64);
  v1[59] = sub_22C3856B8();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v74 = sub_22C3A5908(&qword_27D9C0F60, &qword_22C92B9A0);
  sub_22C369914(v74);
  v76 = *(v75 + 64);
  v1[67] = sub_22C3699D4();
  v77 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v77, v78, v79);
}

uint64_t sub_22C8CA640()
{
  sub_22C36D5EC();
  v2 = v0[12];
  if (v2[47])
  {
    v3 = v0[67];
    v4 = v0[9];
    v5 = v2[47];

    sub_22C899F90();
    sub_22C8D5138();
    v6 = sub_22C90806C();
    sub_22C36985C(v6);
    v8 = *(v7 + 16);
    v9 = sub_22C36BAFC();
    v10(v9);
    sub_22C36BECC();
    sub_22C36C640(v11, v12, v13, v6);
    v14 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_input;
    sub_22C79D0C0();
    sub_22C8D4400(v3, v1 + v14, &qword_27D9C0F60, &qword_22C92B9A0);
    swift_endAccess();

    v2 = v0[12];
  }

  v15 = v0[9];
  v16 = v2[25];
  sub_22C374168(v2 + 21, v2[24]);
  v17 = sub_22C90801C();
  (*(v16 + 8))(v17);

  swift_task_alloc();
  sub_22C36CC90();
  v0[68] = v18;
  *v18 = v19;
  v18[1] = sub_22C8CA7E0;
  v20 = v0[65];
  v21 = v0[11];
  v22 = v0[12];
  v23 = v0[9];

  return sub_22C8CBAA4();
}

uint64_t sub_22C8CA7E0()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 544);
  *v4 = *v2;
  *(v3 + 552) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 96);
  sub_22C37E810();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8CA8F4()
{
  sub_22C36FB38();
  sub_22C6AE8BC(v0[65], v0[66], &qword_27D9C13A8, &unk_22C92D270);
  v1 = v0[58];
  v2 = v0[47];
  v3 = v0[9];
  sub_22C3A5908(&qword_27D9BE320, &qword_22C91D8A0);
  v4 = sub_22C37B150();
  v0[70] = v4;
  *(v4 + 16) = xmmword_22C90F800;
  sub_22C90802C();
  sub_22C907FFC();
  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  sub_22C8D4FC0(v5);

  return sub_22C8CDE78();
}

uint64_t sub_22C8CA9CC()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v2 = v1[71];
  v3 = v1[58];
  v4 = v1[57];
  v5 = v1[56];
  v6 = v1[12];
  v7 = *v0;
  sub_22C369970();
  *v8 = v7;
  *(v10 + 576) = v9;

  v11 = *(v4 + 8);
  v12 = sub_22C36BBCC();
  v13(v12);

  return MEMORY[0x2822009F8](sub_22C8CAB2C, v6, 0);
}

uint64_t sub_22C8CAB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_22C60243C();
  a47 = v49;
  a48 = v50;
  sub_22C8D52C8();
  a46 = v48;
  v51 = *(v48 + 416);
  v52 = *(v48 + 400);
  v53 = *(v48 + 368);
  v54 = *(v48 + 376);
  v55 = *(v48 + 360);
  v56 = *(v48 + 336);
  v57 = *(v48 + 344);
  v58 = *(v48 + 72);
  sub_22C8CECDC(*(v48 + 560), *(v48 + 440));
  sub_22C90802C();
  sub_22C906EBC();
  v59 = *(v54 + 8);
  v60 = sub_22C36D39C();
  v289 = v61;
  v61(v60);
  sub_22C907DDC();
  v62 = *(v57 + 8);
  v63 = sub_22C36CA88();
  v284 = v64;
  v64(v63);
  v65 = sub_22C9026AC();
  sub_22C369A54(v51);
  if (v66)
  {
    v67 = *(v48 + 416);
    v68 = &qword_27D9BF328;
    v69 = &qword_22C9225C0;
LABEL_6:
    sub_22C36DD28(v67, v68, v69);
    goto LABEL_8;
  }

  v70 = *(v48 + 416);
  v71 = *(v48 + 424);
  sub_22C90269C();
  sub_22C36BBA8(v65);
  v73 = *(v72 + 8);
  v74 = sub_22C36BBCC();
  v75(v74);
  v76 = sub_22C90256C();
  v77 = sub_22C37EF1C();
  v79 = sub_22C370B74(v77, v78, v76);
  if (v79 == 1)
  {
    v68 = &qword_27D9BF850;
    v69 = &qword_22C92D260;
    v67 = *(v48 + 424);
    goto LABEL_6;
  }

  v81 = *(v48 + 320);
  v80 = *(v48 + 328);
  v82 = *(v48 + 312);
  sub_22C90255C();
  sub_22C36BBA8(v76);
  v84 = *(v83 + 8);
  v85 = sub_22C37170C();
  v86(v85);
  sub_22C90242C();
  v87 = *(v81 + 8);
  v88 = sub_22C36ECB4();
  v89(v88);
LABEL_8:
  v90 = *(v48 + 408);
  v91 = *(v48 + 392);
  v92 = *(v48 + 368);
  v93 = *(v48 + 352);
  v94 = *(v48 + 336);
  v95 = *(v48 + 72);
  sub_22C90802C();
  sub_22C906EBC();
  v96 = sub_22C36CA88();
  v289(v96);
  sub_22C907DDC();
  v97 = sub_22C3726C4();
  v284(v97);
  v98 = sub_22C37EF1C();
  v100 = sub_22C370B74(v98, v99, v65);
  v101 = *(v48 + 408);
  if (v100 == 1)
  {
    v102 = &qword_27D9BF328;
    v103 = &qword_22C9225C0;
LABEL_12:
    sub_22C36DD28(v101, v102, v103);
    goto LABEL_14;
  }

  v104 = *(v48 + 304);
  sub_22C90268C();
  sub_22C36BBA8(v65);
  v106 = *(v105 + 8);
  v107 = sub_22C36BBCC();
  v108(v107);
  v109 = sub_22C90234C();
  v110 = sub_22C37EF1C();
  v112 = sub_22C370B74(v110, v111, v109);
  v101 = *(v48 + 304);
  if (v112 == 1)
  {
    v102 = &qword_27D9BAB60;
    v103 = &unk_22C90D400;
    goto LABEL_12;
  }

  sub_22C9022CC();
  sub_22C36BBA8(v109);
  v114 = *(v113 + 8);
  v115 = sub_22C36BBCC();
  v116(v115);
LABEL_14:
  sub_22C6AEA50(*(v48 + 528), *(v48 + 512), &qword_27D9C13A8, &unk_22C92D270);
  v117 = type metadata accessor for DialogOutput();
  v118 = sub_22C3707B4();
  v120 = sub_22C370B74(v118, v119, v117);
  v121 = *(v48 + 512);
  if (v120 == 1)
  {
    sub_22C36DD28(*(v48 + 512), &qword_27D9C13A8, &unk_22C92D270);
    v122 = 1;
  }

  else
  {
    (*(*(v48 + 136) + 16))(*(v48 + 272), *(v48 + 512), *(v48 + 128));
    sub_22C370B38();
    v122 = 0;
  }

  v123 = *(v48 + 528);
  v124 = *(v48 + 504);
  sub_22C36C640(*(v48 + 272), v122, 1, *(v48 + 128));
  sub_22C6AEA50(v123, v124, &qword_27D9C13A8, &unk_22C92D270);
  v125 = sub_22C370B74(v124, 1, v117);
  v126 = *(v48 + 504);
  v285 = v117;
  if (v125 == 1)
  {
    sub_22C36DD28(v126, &qword_27D9C13A8, &unk_22C92D270);
    v127 = 1;
  }

  else
  {
    (*(*(v48 + 136) + 16))(*(v48 + 264), v126 + *(v117 + 20), *(v48 + 128));
    sub_22C370B38();
    v127 = 0;
  }

  v128 = *(v48 + 560);
  v130 = *(v48 + 432);
  v129 = *(v48 + 440);
  v131 = *(v48 + 376);
  v132 = *(v48 + 384);
  v133 = *(v48 + 368);
  v134 = *(v48 + 200);
  v135 = (*(v48 + 584) + 32) & ~*(v48 + 584);
  sub_22C36C640(*(v48 + 264), v127, 1, *(v48 + 128));
  sub_22C6AEA50(v129, v130, &qword_27D9C13A0, &qword_22C92D268);
  a36 = MEMORY[0x277D84F90];
  sub_22C3B6EDC();
  v136 = a36;
  (*(v131 + 16))(v132, v128 + v135, v133);
  sub_22C906E1C();
  v137 = sub_22C3726C4();
  v289(v137);
  v138 = *(v136 + 16);
  v139 = v138 + 1;
  if (v138 >= *(v136 + 24) >> 1)
  {
    sub_22C3B6EDC();
    v139 = v138 + 1;
    v136 = a36;
  }

  v269 = *(v48 + 576);
  v280 = *(v48 + 560);
  v271 = *(v48 + 432);
  v140 = *(v48 + 288);
  v141 = *(v48 + 296);
  v142 = *(v48 + 272);
  v143 = *(v48 + 280);
  v145 = *(v48 + 256);
  v144 = *(v48 + 264);
  v273 = *(v48 + 248);
  v146 = *(v48 + 224);
  v148 = *(v48 + 192);
  v147 = *(v48 + 200);
  v149 = *(v48 + 184);
  v290 = *(v48 + 96);
  *(v136 + 16) = v139;
  (*(v148 + 32))(v136 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v138, v147, v149);
  sub_22C9023CC();
  sub_22C37275C();
  sub_22C9023EC();
  (*(v140 + 16))(v146, v141, v143);
  sub_22C36BECC();
  sub_22C36C640(v150, v151, v152, v143);
  sub_22C8C9B1C(v146, v280, v273);

  sub_22C36DD28(v146, &qword_27D9BC428, &unk_22C912FD0);
  if (*(v290 + 376))
  {
    v153 = *(v48 + 208);
    v154 = *(v48 + 216);
    v155 = *(v48 + 96);
    v156 = *(v48 + 72);
    v157 = *(v290 + 376);

    sub_22C89CA2C();

    v158 = sub_22C36BAFC();
    sub_22C8D4F1C(v158, v159);
    v160 = v155[25];
    sub_22C374168(v155 + 21, v155[24]);
    v161 = sub_22C90801C();
    (*(v160 + 16))(v161);

    sub_22C8D4D04(v154, type metadata accessor for ResponseGenerationTriageReport);
  }

  v162 = *(v48 + 528);
  v164 = *(v48 + 488);
  v163 = *(v48 + 496);
  v165 = *(v48 + 176);
  v166 = *(v48 + 96);
  sub_22C90405C();
  v167 = sub_22C36BBCC();
  sub_22C6AEA50(v167, v168, &qword_27D9C13A8, &unk_22C92D270);
  v169 = sub_22C37170C();
  sub_22C6AEA50(v169, v170, &qword_27D9C13A8, &unk_22C92D270);

  v171 = sub_22C9063CC();
  v172 = sub_22C90AABC();

  if (os_log_type_enabled(v171, v172))
  {
    v281 = v172;
    v173 = *(v48 + 496);
    v174 = *(v48 + 480);
    v175 = swift_slowAlloc();
    a36 = swift_slowAlloc();
    *v175 = 136643331;
    v176 = sub_22C36BBCC();
    sub_22C6AEA50(v176, v177, v178, v179);
    v180 = sub_22C36CCF8();
    v291 = v171;
    if (sub_22C370B74(v180, v181, v285) == 1)
    {
      sub_22C36DD28(*(v48 + 480), &qword_27D9C13A8, &unk_22C92D270);
      v182 = 0xE300000000000000;
      v183 = 7104878;
    }

    else
    {
      v201 = *(v48 + 136);
      v200 = *(v48 + 144);
      v202 = *(v48 + 128);
      v203 = *(v201 + 16);
      v204 = sub_22C36BA00();
      v205(v204);
      sub_22C370B38();
      v183 = sub_22C9023FC();
      v182 = v206;
      (*(v201 + 8))(v200, v202);
    }

    v207 = *(v48 + 488);
    v208 = *(v48 + 472);
    sub_22C36DD28(*(v48 + 496), &qword_27D9C13A8, &unk_22C92D270);
    v209 = sub_22C36F9F4(v183, v182, &a36);

    *(v175 + 4) = v209;
    *(v175 + 12) = 2085;
    sub_22C6AEA50(v207, v208, &qword_27D9C13A8, &unk_22C92D270);
    if (sub_22C370B74(v208, 1, v285) == 1)
    {
      sub_22C36DD28(*(v48 + 472), &qword_27D9C13A8, &unk_22C92D270);
    }

    else
    {
      v210 = *(v48 + 136);
      (*(v210 + 16))(*(v48 + 144), *(v48 + 472) + *(v285 + 20), *(v48 + 128));
      sub_22C370B38();
      sub_22C9023FC();
      v211 = *(v210 + 8);
      v212 = sub_22C36CA88();
      v213(v212);
    }

    v214 = *(v48 + 96);
    sub_22C36DD28(*(v48 + 488), &qword_27D9C13A8, &unk_22C92D270);
    v215 = sub_22C36BA00();
    v218 = sub_22C36F9F4(v215, v216, v217);

    *(v175 + 14) = v218;
    *(v175 + 22) = 2080;
    if (*(v214 + 376))
    {
      v220 = *(v48 + 112);
      v219 = *(v48 + 120);
      v221 = *(v48 + 104);

      v222 = sub_22C899F90();

      v223 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
      sub_22C36CA70();
      (*(v220 + 16))(v219, v222 + v223, v221);

      v224 = sub_22C90453C();
      v226 = v225;
      (*(v220 + 8))(v219, v221);
    }

    else
    {
      v226 = 0xE300000000000000;
      v224 = 7104878;
    }

    v287 = *(v48 + 528);
    v227 = *(v48 + 288);
    v275 = *(v48 + 296);
    v277 = *(v48 + 440);
    v228 = *(v48 + 280);
    v229 = *(v48 + 176);
    v231 = *(v48 + 152);
    v230 = *(v48 + 160);
    v232 = sub_22C36F9F4(v224, v226, &a36);

    *(v175 + 24) = v232;
    _os_log_impl(&dword_22C366000, v291, v281, "Returning system response with dialog response\nprint: %{sensitive}s\nspeak: %{sensitive}s\nsource: %s", v175, 0x20u);
    swift_arrayDestroy();
    sub_22C36BAE0();
    sub_22C3699EC();

    (*(v230 + 8))(v229, v231);
    (*(v227 + 8))(v275, v228);
    sub_22C36DD28(v277, &qword_27D9C13A0, &qword_22C92D268);
    v199 = v287;
  }

  else
  {
    v184 = v171;
    v186 = *(v48 + 488);
    v185 = *(v48 + 496);
    v282 = *(v48 + 440);
    v286 = *(v48 + 528);
    v187 = *(v48 + 288);
    v188 = *(v48 + 296);
    v189 = *(v48 + 280);
    v190 = *(v48 + 176);
    v192 = *(v48 + 152);
    v191 = *(v48 + 160);

    sub_22C36DD28(v186, &qword_27D9C13A8, &unk_22C92D270);
    sub_22C36DD28(v185, &qword_27D9C13A8, &unk_22C92D270);
    v193 = *(v191 + 8);
    v194 = sub_22C3726C4();
    v195(v194);
    v196 = *(v187 + 8);
    v197 = sub_22C36CA88();
    v198(v197);
    sub_22C36DD28(v282, &qword_27D9C13A0, &qword_22C92D268);
    v199 = v286;
  }

  sub_22C36DD28(v199, &qword_27D9C13A8, &unk_22C92D270);
  v233 = *(v48 + 536);
  v234 = *(v48 + 528);
  v235 = *(v48 + 520);
  v237 = *(v48 + 504);
  v236 = *(v48 + 512);
  v238 = *(v48 + 488);
  v239 = *(v48 + 496);
  v240 = *(v48 + 472);
  v241 = *(v48 + 480);
  v252 = *(v48 + 464);
  v253 = *(v48 + 440);
  v254 = *(v48 + 432);
  v255 = *(v48 + 424);
  v256 = *(v48 + 416);
  v257 = *(v48 + 408);
  v258 = *(v48 + 400);
  v259 = *(v48 + 392);
  v260 = *(v48 + 384);
  v261 = *(v48 + 360);
  v262 = *(v48 + 352);
  v263 = *(v48 + 328);
  v265 = *(v48 + 304);
  v266 = *(v48 + 296);
  v267 = *(v48 + 272);
  v268 = *(v48 + 264);
  v264 = *(v48 + 248);
  v242 = *(v48 + 232);
  v270 = *(v48 + 256);
  v272 = *(v48 + 224);
  v274 = *(v48 + 216);
  v276 = *(v48 + 208);
  v278 = *(v48 + 200);
  v279 = *(v48 + 176);
  v283 = *(v48 + 168);
  v288 = *(v48 + 144);
  v292 = *(v48 + 120);
  (*(*(v48 + 240) + 32))(*(v48 + 64));

  sub_22C369C50();
  sub_22C37BEB8();

  return v244(v243, v244, v245, v246, v247, v248, v249, v250, a9, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v270, v272, v274, v276, v278, v279, v283, v288, v292, a36, a37, a38, a39, a40);
}

uint64_t sub_22C8CB884()
{
  sub_22C36D5EC();
  v1 = v0[69];
  v2 = v0[21];
  sub_22C90405C();
  v3 = v1;
  v4 = sub_22C9063CC();
  v5 = sub_22C90AADC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[69];
  if (v6)
  {
    v8 = sub_22C36FB44();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    sub_22C372114();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_22C36DD28(v9, &qword_27D9BB158, qword_22C910FD0);
    sub_22C36BAE0();
    sub_22C3699EC();
  }

  else
  {
  }

  v17 = v0[66];
  v18 = v0[16];
  v19 = v0[17];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v20 = *MEMORY[0x277D1C9F0];
  v21 = *(v19 + 104);
  v21(v17, v20, v18);
  v22 = type metadata accessor for DialogOutput();
  v21(v17 + *(v22 + 20), v20, v18);
  sub_22C36BECC();
  sub_22C36C640(v23, v24, v25, v22);
  v26 = v0[58];
  v27 = v0[47];
  v28 = v0[9];
  sub_22C3A5908(&qword_27D9BE320, &qword_22C91D8A0);
  v29 = sub_22C37B150();
  v0[70] = v29;
  *(v29 + 16) = xmmword_22C90F800;
  sub_22C90802C();
  sub_22C907FFC();
  v30 = swift_task_alloc();
  v0[71] = v30;
  *v30 = v0;
  sub_22C8D4FC0(v30);

  return sub_22C8CDE78();
}

uint64_t sub_22C8CBAA4()
{
  sub_22C369980();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v5 = sub_22C90806C();
  v1[49] = v5;
  sub_22C3699B8(v5);
  v1[50] = v6;
  v8 = *(v7 + 64);
  v1[51] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9C13A8, &unk_22C92D270);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  v1[52] = sub_22C3699D4();
  v12 = type metadata accessor for DialogOutput();
  v1[53] = v12;
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  v1[54] = sub_22C3699D4();
  v15 = sub_22C3A5908(&qword_27D9C1450, &qword_22C92D668);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  v1[55] = sub_22C3699D4();
  v18 = sub_22C907C5C();
  v1[56] = v18;
  sub_22C3699B8(v18);
  v1[57] = v19;
  v21 = *(v20 + 64);
  v1[58] = sub_22C3699D4();
  v22 = sub_22C9026BC();
  v1[59] = v22;
  sub_22C3699B8(v22);
  v1[60] = v23;
  v25 = *(v24 + 64);
  v1[61] = sub_22C3699D4();
  v26 = sub_22C90687C();
  v1[62] = v26;
  sub_22C3699B8(v26);
  v1[63] = v27;
  v29 = *(v28 + 64);
  v1[64] = sub_22C3699D4();
  v30 = sub_22C90454C();
  v1[65] = v30;
  sub_22C3699B8(v30);
  v1[66] = v31;
  v33 = *(v32 + 64);
  v1[67] = sub_22C3856B8();
  v1[68] = swift_task_alloc();
  v34 = sub_22C90077C();
  v1[69] = v34;
  sub_22C3699B8(v34);
  v1[70] = v35;
  v37 = *(v36 + 64);
  v1[71] = sub_22C3699D4();
  v38 = sub_22C9063DC();
  v1[72] = v38;
  sub_22C3699B8(v38);
  v1[73] = v39;
  v41 = *(v40 + 64);
  v1[74] = sub_22C3856B8();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v42 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  sub_22C369914(v42);
  v44 = *(v43 + 64);
  v1[78] = sub_22C3699D4();
  v45 = sub_22C90234C();
  v1[79] = v45;
  sub_22C3699B8(v45);
  v1[80] = v46;
  v48 = *(v47 + 64);
  v1[81] = sub_22C3856B8();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v49 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v49);
  v51 = *(v50 + 64);
  v1[84] = sub_22C3856B8();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v52 = sub_22C907DEC();
  v1[87] = v52;
  sub_22C3699B8(v52);
  v1[88] = v53;
  v55 = *(v54 + 64);
  v1[89] = sub_22C3856B8();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v56 = sub_22C906ECC();
  v1[93] = v56;
  sub_22C3699B8(v56);
  v1[94] = v57;
  v59 = *(v58 + 64);
  v1[95] = sub_22C3856B8();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v60 = sub_22C9026AC();
  v1[99] = v60;
  sub_22C3699B8(v60);
  v1[100] = v61;
  v63 = *(v62 + 64);
  v1[101] = sub_22C3699D4();
  v64 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v64, v65, v66);
}

uint64_t sub_22C8CBFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, void (**a23)(void, void), uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void (*a29)(uint64_t), uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40)
{
  sub_22C36CAD0();
  a39 = v41;
  a40 = v42;
  sub_22C37B668();
  a38 = v40;
  v43 = v40[99];
  v44 = v40[98];
  v45 = v40[94];
  v46 = v40[93];
  v47 = v40[92];
  v48 = v40[88];
  v49 = v40[87];
  v50 = v40[86];
  v51 = v40[46];
  sub_22C90802C();
  sub_22C906EBC();
  v53 = *(v45 + 8);
  v52 = v45 + 8;
  v54 = sub_22C36D264();
  v306 = v52;
  v304 = v55;
  (v55)(v54);
  sub_22C907DDC();
  v57 = *(v48 + 8);
  v56 = v48 + 8;
  v58 = sub_22C36CA88();
  v305 = v56;
  v303 = v59;
  v59(v58);
  sub_22C369A54(v50);
  if (v94)
  {
    sub_22C36DD28(v40[86], &qword_27D9BF328, &qword_22C9225C0);
  }

  else
  {
    v60 = v40[100];
    (*(v60 + 32))(v40[101], v40[86], v40[99]);
    sub_22C87A000();
    v62 = v61;
    v63 = *(v60 + 8);
    v64 = sub_22C36BAFC();
    v65(v64);
    if (v62)
    {
      v66 = v40[53];
      v67 = v40[45];

      sub_22C36A748();
      v71 = v66;
      goto LABEL_50;
    }
  }

  v72 = v40[99];
  v73 = v40[97];
  v74 = v40[93];
  v75 = v40[91];
  v76 = v40[87];
  v77 = v40[85];
  v78 = v40[46];
  sub_22C90802C();
  sub_22C906EBC();
  v79 = sub_22C36D264();
  (v304)(v79);
  sub_22C907DDC();
  v80 = sub_22C36CA88();
  v303(v80);
  sub_22C369A54(v77);
  if (v94)
  {
    v81 = v40[79];
    v82 = v40[78];
    sub_22C36DD28(v40[85], &qword_27D9BF328, &qword_22C9225C0);
    sub_22C36A748();
    sub_22C36C640(v83, v84, v85, v81);
  }

  else
  {
    v86 = v40[100];
    v87 = v40[99];
    v88 = v40[85];
    v89 = v40[79];
    v90 = v40[78];
    sub_22C90268C();
    v91 = *(v86 + 8);
    v92 = sub_22C36BBCC();
    v93(v92);
    sub_22C376738(v90);
    if (!v94)
    {
      v155 = v40[77];
      (*(v40[80] + 32))(v40[83], v40[78], v40[79]);
      sub_22C90405C();
      v156 = sub_22C9063CC();
      v157 = sub_22C90AACC();
      if (sub_22C36FBB4(v157))
      {
        v159 = v40[83];
        v304 = v40[73];
        v305 = v40[72];
        v306 = v40[77];
        v160 = swift_slowAlloc();
        v303 = swift_slowAlloc();
        a29 = v303;
        *v160 = 136643587;
        sub_22C37E200();
        v161 = sub_22C9022FC();
        v163 = v162;
        swift_endAccess();
        v164 = sub_22C36F9F4(v161, v163, &a29);

        *(v160 + 4) = v164;
        *(v160 + 12) = 2085;
        sub_22C37E200();
        v165 = sub_22C90231C();
        v167 = v166;
        swift_endAccess();
        if (v167)
        {
          v168 = v165;
        }

        else
        {
          v168 = 7104878;
        }

        if (v167)
        {
          v169 = v167;
        }

        else
        {
          v169 = 0xE300000000000000;
        }

        v170 = sub_22C36F9F4(v168, v169, &a29);

        *(v160 + 14) = v170;
        *(v160 + 22) = 2085;
        sub_22C37E200();
        v171 = sub_22C90228C();
        v173 = v172;
        swift_endAccess();
        if (v173)
        {
          v174 = v171;
        }

        else
        {
          v174 = 7104878;
        }

        if (v173)
        {
          v175 = v173;
        }

        else
        {
          v175 = 0xE300000000000000;
        }

        v56 = sub_22C36F9F4(v174, v175, &a29);

        *(v160 + 24) = v56;
        *(v160 + 32) = 2085;
        sub_22C37E200();
        v176 = sub_22C9022AC();
        v178 = v177;
        swift_endAccess();
        if (v178)
        {
          v179 = v176;
        }

        else
        {
          v179 = 7104878;
        }

        if (v178)
        {
          v180 = v178;
        }

        else
        {
          v180 = 0xE300000000000000;
        }

        v52 = sub_22C36F9F4(v179, v180, &a29);

        *(v160 + 34) = v52;
        _os_log_impl(&dword_22C366000, v156, v157, "Passing through dialog\nfullPrint: %{sensitive}s\nfullSpeak: %{sensitive}s\nsupportingPrint: %{sensitive}s\nsupportingSpeak: %{sensitive}s", v160, 0x2Au);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C36BAE0();

        v304[1](v306, v305);
      }

      else
      {
        v181 = v40[77];
        sub_22C8D52BC();

        v182 = *(v90 + 8);
        v183 = sub_22C37170C();
        v184(v183);
      }

      v185 = *MEMORY[0x277CEF578];
      if ((_AFSupportPreferencesBoolForKeyWithDefault() & 1) == 0)
      {
        v186 = v40[83];
        v187 = v40[82];
        sub_22C8D517C();
        sub_22C36CA70();
        sub_22C907FFC();
        sub_22C9006BC();
        v188 = *(v56 + 8);
        v189 = sub_22C36CA88();
        v190(v189);
        sub_22C379FC8();
        sub_22C8CDA9C();

        swift_beginAccess();
        v191 = *(v52 + 40);
        v192 = sub_22C36BAFC();
        v193(v192);
      }

      v194 = v40[48];
      if (*(v194 + 376))
      {
        v195 = v40[68];
        v196 = v40[66];
        v197 = v40[65];
        v198 = *(v194 + 376);

        sub_22C899F90();
        sub_22C8D5138();
        (*(v196 + 104))(v195, *MEMORY[0x277D1FAC8], v197);
        sub_22C79D0C0();
        v199 = *(v196 + 40);
        sub_22C37275C();
        v200();
        swift_endAccess();

        if (*(v194 + 376))
        {
          v201 = v40[83];
          v202 = *(v194 + 376);

          sub_22C899F90();
          sub_22C3815C0();
          swift_beginAccess();
          sub_22C9022CC();
          sub_22C8D5288();
          swift_endAccess();
          v203 = (v197 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_catId);
          v204 = *(v197 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_catId + 8);
          *v203 = v201;
          v203[1] = v201;
        }
      }

      v205 = v40[83];
      v206 = v40[80];
      v207 = v40[79];
      v209 = v40[63];
      v208 = v40[64];
      v210 = v40[62];
      v211 = v40[53];
      v213 = v40[45];
      v212 = v40[46];
      sub_22C36CA70();
      sub_22C907FDC();
      sub_22C87E5A8(v213);
      v214 = *(v209 + 8);
      v215 = sub_22C36ECB4();
      v216(v215);
      sub_22C36BECC();
      sub_22C36C640(v217, v218, v219, v211);
      v220 = *(v206 + 8);
      v221 = sub_22C36BAFC();
      v222(v221);
      goto LABEL_51;
    }
  }

  v95 = v40[96];
  v96 = v40[93];
  v97 = v40[90];
  v98 = v40[87];
  v100 = v40[60];
  v99 = v40[61];
  v101 = v40[59];
  v102 = v40[46];
  sub_22C36DD28(v40[78], &qword_27D9BAB60, &unk_22C90D400);
  sub_22C90802C();
  sub_22C906EBC();
  v103 = sub_22C36BAFC();
  (v304)(v103);
  sub_22C907DAC();
  v104 = sub_22C36ECB4();
  v303(v104);
  v105 = *(v100 + 88);
  v106 = sub_22C36FC2C();
  LODWORD(v102) = v107(v106);
  LODWORD(v95) = *MEMORY[0x277D1CB98];
  v108 = *(v100 + 8);
  v109 = sub_22C36FC2C();
  v110(v109);
  if (v102 == v95)
  {
    v111 = v40[53];
    v112 = v40[45];
    v113 = *MEMORY[0x277D1C9F0];
    v114 = sub_22C90240C();
    sub_22C36985C(v114);
    v116 = *(v115 + 104);
    v116(v112, v113, v114);
    v116(v112 + *(v111 + 20), v113, v114);
    sub_22C36BECC();
    v71 = v111;
  }

  else
  {
    v117 = v40[100];
    v118 = v40[57];
    v119 = v40[46];
    result = sub_22C90804C();
    v121 = 0;
    a20 = (v117 + 8);
    a21 = v118 + 16;
    a22 = v118;
    a23 = (v118 + 8);
    a24 = *(result + 16);
    while (a24 != v121)
    {
      if (v121 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v122 = v40[99];
      v123 = v40[95];
      v124 = v40[93];
      v125 = v40[89];
      v126 = v40[87];
      v127 = v40[84];
      v128 = v40[58];
      v129 = v40[56];
      v130 = *(a22 + 80);
      sub_22C36BA94();
      v132 = v131;
      (*(v134 + 16))(v128, v131 + v133 + *(v134 + 72) * v121);
      sub_22C907C0C();
      sub_22C906EBC();
      v135 = sub_22C36ECB4();
      (v304)(v135);
      sub_22C907DDC();
      v136 = sub_22C36FC2C();
      v303(v136);
      sub_22C376738(v127);
      if (v94)
      {
        v259 = v40[84];
        v260 = &qword_27D9BF328;
        v261 = &qword_22C9225C0;
LABEL_56:
        sub_22C36DD28(v259, v260, v261);
        (*a23)(v40[58], v40[56]);
LABEL_57:
        v262 = v40[48];

        sub_22C36CA70();
        sub_22C6AEA50(v262 + 208, (v40 + 2), &qword_27D9C1368, &qword_22C92D220);
        if (v40[5])
        {
          sub_22C8D4E6C((v40 + 2), (v40 + 7));
          sub_22C36DD28((v40 + 2), &qword_27D9C1368, &qword_22C92D220);
          swift_task_alloc();
          sub_22C36CC90();
          v40[102] = v263;
          *v263 = v264;
          v263[1] = sub_22C8CCDB8;
          v265 = v40[52];
          v266 = v40[46];
          sub_22C37F7CC();

          return sub_22C892588(v267, v268);
        }

        else
        {
          v270 = v40[52];
          v271 = v40[53];
          sub_22C36DD28((v40 + 2), &qword_27D9C1368, &qword_22C92D220);
          sub_22C36A748();
          sub_22C36C640(v272, v273, v274, v271);
          v275 = v40[74];
          v276 = v40[51];
          v277 = v40[49];
          v278 = v40[50];
          v279 = v40[46];
          sub_22C36DD28(v40[52], &qword_27D9C13A8, &unk_22C92D270);
          sub_22C90405C();
          v280 = *(v278 + 16);
          v281 = sub_22C36D39C();
          v282(v281);
          v283 = sub_22C9063CC();
          LOBYTE(v277) = sub_22C90AACC();
          v284 = sub_22C36FBB4(v277);
          v286 = v40[50];
          v285 = v40[51];
          v287 = v40[49];
          if (v284)
          {
            v288 = sub_22C36FB44();
            *v288 = 134217984;
            v289 = *(sub_22C90804C() + 16);

            v290 = sub_22C8D50F8();
            v291(v290);
            *(v288 + 4) = v289;
            sub_22C8D52F4(&dword_22C366000, v292, v293, "Generating dialog for %ld tool results");
            sub_22C36BAE0();
          }

          else
          {
            v294 = sub_22C8D50F8();
            v295(v294);
          }

          v296 = v40[74];
          sub_22C8D52BC();

          v297 = *(v287 + 8);
          v298 = sub_22C37170C();
          v299(v298);
          swift_task_alloc();
          sub_22C36CC90();
          v40[104] = v300;
          *v300 = v301;
          sub_22C8D4FF8(v300);
          sub_22C37F7CC();

          return sub_22C8CF428();
        }
      }

      v137 = v40[99];
      v138 = v40[84];
      v139 = v40[55];
      sub_22C90266C();
      v140 = *a20;
      v141 = sub_22C37170C();
      v142(v141);
      v143 = sub_22C90262C();
      sub_22C376738(v139);
      if (v94)
      {
        v259 = v40[55];
        v260 = &unk_27D9C1450;
        v261 = &unk_22C92D668;
        goto LABEL_56;
      }

      v144 = v40[58];
      v145 = v40[55];
      v146 = v40[56];
      v147 = sub_22C90242C();
      sub_22C36BBA8(v143);
      v149 = *(v148 + 8);
      v150 = sub_22C37170C();
      v151(v150);
      v152 = *a23;
      v153 = sub_22C36ECB4();
      v154(v153);
      ++v121;
      result = v132;
      if ((v147 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    v223 = v40[76];

    sub_22C90405C();
    v224 = sub_22C9063CC();
    v225 = sub_22C90AACC();
    if (sub_22C37B204(v225))
    {
      v226 = sub_22C36D240();
      sub_22C36C890(v226);
      sub_22C36BB14(&dword_22C366000, v227, v228, "Dialog suppression requested");
      sub_22C372FB0();
    }

    v229 = v40[76];
    v230 = v40[73];
    v231 = v40[72];
    v232 = v40[53];
    v233 = v40[45];

    v234 = *(v230 + 8);
    v235 = sub_22C36BAFC();
    v236(v235);
    v237 = *MEMORY[0x277D1C9E8];
    v238 = sub_22C90240C();
    sub_22C36985C(v238);
    v240 = *(v239 + 104);
    v240(v233, v237, v238);
    v240(v233 + *(v232 + 20), v237, v238);
    sub_22C36BECC();
    v71 = v232;
  }

LABEL_50:
  sub_22C36C640(v68, v69, v70, v71);
LABEL_51:
  v241 = v40[101];
  v242 = v40[98];
  v243 = v40[97];
  v244 = v40[96];
  v245 = v40[95];
  v246 = v40[92];
  v247 = v40[91];
  v248 = v40[90];
  v249 = v40[89];
  v250 = v40[86];
  sub_22C389378();

  sub_22C369C50();
  sub_22C37F7CC();

  return v252(v251, v252, v253, v254, v255, v256, v257, v258, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v303, v304, v305, v306, a29, a30, a31, a32);
}

uint64_t sub_22C8CCDB8()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 816);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 824) = v0;

  sub_22C8D4EC8(v3 + 56);
  v9 = *(v3 + 384);
  if (v0)
  {
    v10 = sub_22C8CD7B4;
  }

  else
  {
    v10 = sub_22C8CCEC0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22C8CCEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v35 = v32[52];
  v34 = v32[53];
  v36 = sub_22C3707B4();
  sub_22C36D0A8(v36, v37, v38);
  if (v39)
  {
    v40 = v32[74];
    v42 = v32[50];
    v41 = v32[51];
    v43 = v32[49];
    v44 = v32[46];
    sub_22C36DD28(v35, &qword_27D9C13A8, &unk_22C92D270);
    sub_22C90405C();
    v45 = *(v42 + 16);
    v46 = sub_22C36D29C();
    v47(v46);
    v48 = sub_22C9063CC();
    LOBYTE(v41) = sub_22C90AACC();
    v49 = sub_22C36FBB4(v41);
    v51 = v32[50];
    v50 = v32[51];
    v52 = v32[49];
    if (v49)
    {
      v53 = sub_22C36FB44();
      *v53 = 134217984;
      v54 = *(sub_22C90804C() + 16);

      v55 = sub_22C8D50F8();
      v56(v55);
      *(v53 + 4) = v54;
      sub_22C8D52F4(&dword_22C366000, v57, v58, "Generating dialog for %ld tool results");
      sub_22C36BAE0();
    }

    else
    {
      v101 = sub_22C8D50F8();
      v102(v101);
    }

    v103 = v32[74];
    sub_22C8D52BC();

    v104 = *(v52 + 8);
    v105 = sub_22C37170C();
    v106(v105);
    swift_task_alloc();
    sub_22C36CC90();
    v32[104] = v107;
    *v107 = v108;
    sub_22C8D4FF8(v107);
    sub_22C37F7CC();

    return sub_22C8CF428();
  }

  else
  {
    v59 = v32[75];
    v60 = v32[54];
    sub_22C8D5098();
    sub_22C8D4F1C(v35, v61);
    sub_22C90405C();
    v62 = sub_22C9063CC();
    v63 = sub_22C90AABC();
    if (sub_22C37B204(v63))
    {
      v65 = sub_22C36D240();
      sub_22C36C890(v65);
      sub_22C36BB14(&dword_22C366000, v66, v67, "In-app response policy triggered.");
      sub_22C372FB0();
    }

    v68 = v32[75];
    sub_22C8D52BC();
    v69 = v32[48];

    v70 = *(v33 + 8);
    v71 = sub_22C36BAFC();
    v72(v71);
    if (*(v69 + 376))
    {
      v73 = v32[67];
      v74 = v32[66];
      v75 = v32[65];
      v76 = v32[54];
      v77 = *(v69 + 376);

      sub_22C899F90();

      v78 = sub_22C9023FC();
      v80 = v79;

      v81 = HIBYTE(v80) & 0xF;
      if ((v80 & 0x2000000000000000) == 0)
      {
        v81 = v78 & 0xFFFFFFFFFFFFLL;
      }

      if (v81)
      {
        v82 = MEMORY[0x277D1FAC0];
      }

      else
      {
        v82 = MEMORY[0x277D1FAD0];
      }

      (*(v74 + 104))(v73, *v82, v75);
      sub_22C79D0C0();
      v83 = *(v74 + 40);
      sub_22C37275C();
      v84();
      swift_endAccess();
    }

    v86 = v32[53];
    v85 = v32[54];
    v87 = v32[45];
    sub_22C8D5098();
    sub_22C8D4F1C(v88, v87);
    sub_22C36BECC();
    sub_22C36C640(v89, v90, v91, v86);
    sub_22C3777E4();
    sub_22C37B890();

    sub_22C369C50();
    sub_22C37F7CC();

    return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
  }
}

uint64_t sub_22C8CD2BC()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 832);
  *v4 = *v2;
  *(v3 + 840) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 384);
  sub_22C37E810();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8CD3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v37 = v33[48];
  if (*(v37 + 376))
  {
    v38 = v33[81];
    v39 = *(v37 + 376);

    sub_22C899F90();
    sub_22C3815C0();
    v40 = sub_22C9022CC();
    v41 = (v32 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_catId);
    v42 = *(v32 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_catId + 8);
    *v41 = v40;
    v41[1] = v43;
  }

  v44 = *MEMORY[0x277CEF578];
  if ((_AFSupportPreferencesBoolForKeyWithDefault() & 1) == 0)
  {
    v45 = v33[82];
    v46 = v33[81];
    sub_22C8D517C();
    sub_22C907FFC();
    sub_22C9006BC();
    v47 = *(v36 + 8);
    v48 = sub_22C36CA88();
    v49(v48);
    sub_22C379FC8();
    sub_22C8CDA9C();

    v50 = *(v35 + 8);
    v51 = sub_22C36D264();
    v52(v51);
    (*(v35 + 32))(v46, v45, v34);
  }

  v53 = v33[81];
  sub_22C9022CC();
  v54 = v33[81];
  v55 = v33[80];
  v98 = v33[79];
  v57 = v33[63];
  v56 = v33[64];
  v58 = v33[62];
  v59 = v33[45];
  v60 = v33[46];
  if (v61)
  {

    sub_22C8D535C();
    sub_22C380248();
    v62 = sub_22C87E3C8();
    v96 = v63;
    v97 = v62;
    v64 = *(v57 + 8);
    v65 = sub_22C36CA88();
    v64(v65);
    sub_22C8D535C();
    sub_22C380248();
    v95 = sub_22C87E4B8();
    v67 = v66;
    v68 = sub_22C36CA88();
    v64(v68);
    (*(v55 + 8))(v54, v98);
    *v59 = v97;
    v59[1] = v96;
    v69 = MEMORY[0x277D1C9D8];
  }

  else
  {
    sub_22C8D535C();
    sub_22C380248();
    v70 = sub_22C87E3C8();
    v96 = v71;
    v97 = v70;
    v72 = *(v57 + 8);
    v73 = sub_22C36CA88();
    v72(v73);
    sub_22C8D535C();
    sub_22C380248();
    v95 = sub_22C87E4B8();
    v67 = v74;
    v75 = sub_22C36CA88();
    v72(v75);
    (*(v55 + 8))(v54, v98);
    *v59 = v97;
    v59[1] = v96;
    v69 = MEMORY[0x277D1CA00];
  }

  v76 = *v69;
  v77 = sub_22C90240C();
  sub_22C36985C(v77);
  v79 = *(v78 + 104);
  v79(v59, v76, v77);
  v80 = v33[53];
  v81 = (v33[45] + *(v80 + 20));
  if (v67)
  {
    *v81 = v95;
    v81[1] = v67;
    v80 = v33[53];
    v82 = v33[45];
  }

  else
  {
    v76 = *MEMORY[0x277D1C9F0];
  }

  v79(v81, v76, v77);
  sub_22C36BECC();
  sub_22C36C640(v83, v84, v85, v80);
  sub_22C3777E4();
  sub_22C37B890();

  sub_22C369C50();
  sub_22C37F7CC();

  return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v95, v96, v97, v98, a30, a31, a32);
}

uint64_t sub_22C8CD7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v52 = v32[103];
  v33 = v32[101];
  v34 = v32[98];
  v35 = v32[97];
  v36 = v32[96];
  v37 = v32[95];
  v38 = v32[92];
  v39 = v32[91];
  v40 = v32[90];
  v41 = v32[89];
  v42 = v32[86];
  sub_22C389378();

  sub_22C382AE4();
  sub_22C37F7CC();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

uint64_t sub_22C8CD928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v52 = v32[105];
  v33 = v32[101];
  v34 = v32[98];
  v35 = v32[97];
  v36 = v32[96];
  v37 = v32[95];
  v38 = v32[92];
  v39 = v32[91];
  v40 = v32[90];
  v41 = v32[89];
  v42 = v32[86];
  sub_22C389378();

  sub_22C382AE4();
  sub_22C37F7CC();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

uint64_t sub_22C8CDA9C()
{
  v1 = sub_22C902FBC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  sub_22C90231C();
  if (v10)
  {
    sub_22C8D5288();
    v12 = *(v11 + 608);
    v13 = objc_opt_self();
    sub_22C36BBCC();
    sub_22C90A0EC();
    sub_22C37BB14();

    v14 = sub_22C90A0EC();
    v15 = [v13 filterProfanity:v0 locale:v14];

    sub_22C90A11C();
    sub_22C36BA00();
    sub_22C902F7C();
    sub_22C902FAC();
    (*(v4 + 8))(v9, v1);
  }

  sub_22C90228C();
  if (v16)
  {
    sub_22C8D5288();
    v17 = objc_opt_self();
    sub_22C36BBCC();
    sub_22C90A0EC();
    sub_22C37BB14();

    v18 = sub_22C90A0EC();
    v19 = [v17 filterProfanity:v0 locale:v18];

    sub_22C90A11C();
    sub_22C36BA00();
    sub_22C902F7C();
    sub_22C902F9C();
    (*(v4 + 8))(v9, v1);
  }

  v20 = v1;
  sub_22C9022AC();
  if (v21)
  {
    v22 = objc_opt_self();
    v23 = sub_22C90A0EC();

    sub_22C36D29C();
    v24 = sub_22C90A0EC();
    v25 = [v22 filterProfanity:v23 locale:v24];

    sub_22C90A11C();
    sub_22C379FC8();
    sub_22C902F7C();
    sub_22C902FAC();
    v26 = v4;
    (*(v4 + 8))(v9, v20);
  }

  else
  {
    v26 = v4;
  }

  v27 = objc_opt_self();
  sub_22C9022FC();
  v28 = sub_22C90A0EC();

  sub_22C36D29C();
  v29 = sub_22C90A0EC();
  v30 = [v27 filterProfanity:v28 locale:v29];

  sub_22C90A11C();
  sub_22C902F7C();
  sub_22C902F9C();
  (*(v26 + 8))(v9, v20);
  return sub_22C9022EC();
}

uint64_t sub_22C8CDE78()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_22C908AEC();
  v1[6] = v5;
  sub_22C3699B8(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  v1[9] = sub_22C3699D4();
  v12 = sub_22C907DEC();
  v1[10] = v12;
  sub_22C3699B8(v12);
  v1[11] = v13;
  v15 = *(v14 + 64);
  v1[12] = sub_22C3699D4();
  v16 = sub_22C9026AC();
  v1[13] = v16;
  sub_22C3699B8(v16);
  v1[14] = v17;
  v19 = *(v18 + 64);
  v1[15] = sub_22C3699D4();
  v20 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  sub_22C369914(v20);
  v22 = *(v21 + 64);
  v1[16] = sub_22C3699D4();
  v23 = sub_22C906ECC();
  v1[17] = v23;
  sub_22C3699B8(v23);
  v1[18] = v24;
  v26 = *(v25 + 64);
  v1[19] = sub_22C3699D4();
  v27 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_22C8CE05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[3];
  if (*(v13 + 16) != 1)
  {
    goto LABEL_9;
  }

  v14 = v12[17];
  sub_22C58BAF4(v13, v12[16]);
  v15 = sub_22C36CCF8();
  sub_22C36D0A8(v15, v16, v14);
  if (v28)
  {
    v17 = v12[16];
    v18 = &qword_27D9BC0A0;
    v19 = &unk_22C922F30;
LABEL_8:
    sub_22C36DD28(v17, v18, v19);
    goto LABEL_9;
  }

  v21 = v12[12];
  v20 = v12[13];
  v22 = v12[10];
  v23 = v12[11];
  v24 = v12[9];
  (*(v12[18] + 32))(v12[19], v12[16], v12[17]);
  sub_22C906EBC();
  sub_22C907DDC();
  v25 = *(v23 + 8);
  v26 = sub_22C36D264();
  v27(v26);
  sub_22C369A54(v24);
  if (v28)
  {
    v29 = v12[9];
    (*(v12[18] + 8))(v12[19], v12[17]);
    v18 = &qword_27D9BF328;
    v19 = &qword_22C9225C0;
    v17 = v29;
    goto LABEL_8;
  }

  (*(v12[14] + 32))(v12[15], v12[9], v12[13]);
  sub_22C87A000();
  if (v45)
  {
    v47 = v12[14];
    v46 = v12[15];
    v48 = v12[13];
    sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
    sub_22C369A48();
    v49 = sub_22C9023BC();
    sub_22C369824(v49);
    v51 = v50;
    v53 = *(v52 + 72);
    v54 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_22C90F800;
    sub_22C36ECB4();
    sub_22C90237C();
    (*(v51 + 104))(v55 + v54, *MEMORY[0x277D1C988], v49);
    v56 = *(v47 + 8);
    v57 = sub_22C36BAFC();
    v58(v57);
    v59 = v12[16];
    v60 = v12[15];
    v61 = v12[12];
    v63 = v12[8];
    v62 = v12[9];
    (*(v12[18] + 8))(v12[19], v12[17]);

    sub_22C36D5E0();
    sub_22C372034();

    return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12);
  }

  v73 = v12[18];
  v72 = v12[19];
  v74 = v12[17];
  (*(v12[14] + 8))(v12[15], v12[13]);
  v75 = *(v73 + 8);
  v76 = sub_22C36BBCC();
  v77(v76);
LABEL_9:
  v30 = v12[8];
  v31 = v12[4];
  v32 = v12[2];
  (*(v12[7] + 16))(v30, *(v12[5] + 112) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox, v12[6]);
  v33 = swift_task_alloc();
  v12[20] = v33;
  v33[2] = v32;
  v33[3] = v30;
  v33[4] = v31;
  v34 = swift_task_alloc();
  v12[21] = v34;
  *v34 = v12;
  v34[1] = sub_22C8CE404;
  v35 = v12[3];
  sub_22C372034();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, sub_22C8C7468, a10, a11, a12);
}

void sub_22C8CE404()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 168);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    v11 = v5[20];
    v12 = v5[5];
    v5[22] = v3;

    MEMORY[0x2822009F8](sub_22C8CE534, v12, 0);
  }
}

uint64_t sub_22C8CE534()
{
  sub_22C3743E4();
  v1 = v0[22];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v6 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);

  sub_22C36D5E0();

  return v7(v1);
}

uint64_t sub_22C8CE5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22C907DEC();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = *(*(sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v10 = *(*(sub_22C3A5908(&qword_27D9BF850, &qword_22C92D260) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v11 = sub_22C9063DC();
  v5[15] = v11;
  v12 = *(v11 - 8);
  v5[16] = v12;
  v13 = *(v12 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8CE7B4, 0, 0);
}

uint64_t sub_22C8CE7B4()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v2 = v1[17];
  sub_22C90405C();
  v3 = sub_22C9063CC();
  v4 = sub_22C90AACC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_22C36D240();
    sub_22C36C890(v5);
    _os_log_impl(&dword_22C366000, v3, v4, "Building visuals using tool metadata and tool Provided Views.", v0, 2u);
    sub_22C372FB0();
  }

  v7 = v1[16];
  v6 = v1[17];
  v8 = v1[15];
  v9 = v1[12];
  v10 = v1[10];
  v11 = v1[7];
  v12 = v1[8];
  v13 = v1[3];

  v14 = *(v7 + 8);
  v15 = sub_22C36BAFC();
  v16(v15);
  sub_22C906EBC();
  sub_22C36D484();
  sub_22C907DDC();
  v17 = *(v12 + 8);
  v18 = sub_22C36CA88();
  v17(v18);
  v19 = sub_22C9026AC();
  sub_22C376738(v9);
  if (v20)
  {
    v21 = v1[12];
    v22 = &qword_27D9BF328;
    v23 = &qword_22C9225C0;
LABEL_8:
    sub_22C36DD28(v21, v22, v23);
    v35 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v24 = v1[14];
  v25 = v1[12];
  sub_22C90269C();
  sub_22C36BBA8(v19);
  v27 = *(v26 + 8);
  v28 = sub_22C37170C();
  v29(v28);
  v30 = sub_22C90256C();
  v31 = sub_22C36CCF8();
  v33 = sub_22C370B74(v31, v32, v30);
  v34 = v1[14];
  if (v33 == 1)
  {
    v22 = &qword_27D9BF850;
    v23 = &qword_22C92D260;
    v21 = v1[14];
    goto LABEL_8;
  }

  v35 = MEMORY[0x2318AF920]();
  sub_22C36BBA8(v30);
  (*(v36 + 8))(v34, v30);
LABEL_10:
  v1[18] = v35;
  v37 = v1[11];
  v38 = v1[9];
  v39 = v1[7];
  v40 = v1[3];
  sub_22C906EBC();
  sub_22C36D484();
  sub_22C907DDC();
  v41 = sub_22C36CA88();
  v17(v41);
  sub_22C376738(v37);
  if (v20)
  {
    v42 = v1[11];
    v43 = &qword_27D9BF328;
    v44 = &qword_22C9225C0;
LABEL_15:
    sub_22C36DD28(v42, v43, v44);
    v56 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v45 = v1[13];
  v46 = v1[11];
  sub_22C90269C();
  sub_22C36BBA8(v19);
  v48 = *(v47 + 8);
  v49 = sub_22C37170C();
  v50(v49);
  v51 = sub_22C90256C();
  v52 = sub_22C37EF1C();
  v54 = sub_22C370B74(v52, v53, v51);
  v55 = v1[13];
  if (v54 == 1)
  {
    v43 = &qword_27D9BF850;
    v44 = &qword_22C92D260;
    v42 = v1[13];
    goto LABEL_15;
  }

  v57 = v1[13];
  v56 = sub_22C90250C();
  sub_22C36BBA8(v51);
  (*(v58 + 8))(v55, v51);
LABEL_17:
  v1[19] = v56;
  v59 = swift_task_alloc();
  v1[20] = v59;
  *v59 = v1;
  v59[1] = sub_22C8CEB00;
  v60 = v1[5];
  v61 = v1[6];
  v62 = v1[3];
  v63 = v1[4];
  sub_22C372034();

  return sub_22C8D6008();
}

uint64_t sub_22C8CEB00()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = *v0;
  sub_22C369970();
  *v6 = v5;
  *(v8 + 168) = v7;

  return MEMORY[0x2822009F8](sub_22C8CEC2C, 0, 0);
}

uint64_t sub_22C8CEC2C()
{
  sub_22C36D5EC();
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  **(v0 + 16) = *(v0 + 168);

  sub_22C369C50();

  return v8();
}

uint64_t sub_22C8CECDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v112 = sub_22C9024FC();
  v3 = sub_22C369824(v112);
  v108 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v107 = v8 - v7;
  v9 = sub_22C3A5908(&qword_27D9BE300, &qword_22C92D630);
  v10 = sub_22C3699B8(v9);
  v109 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  v111 = v14 - v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v110 = v17;
  sub_22C36BA0C();
  v125 = sub_22C907DEC();
  v18 = sub_22C369824(v125);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v124 = v24 - v23;
  sub_22C36BA0C();
  v25 = sub_22C9026AC();
  v26 = sub_22C369824(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369ABC();
  v123 = v31 - v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA64();
  v113 = v34;
  sub_22C36BA0C();
  v122 = sub_22C906ECC();
  v35 = sub_22C369824(v122);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  v42 = v41 - v40;
  v43 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  v44 = sub_22C369914(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C369ABC();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50);
  v114 = &v106 - v51;
  sub_22C369930();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA64();
  v116 = v53;
  v117 = v28;
  v54 = *(a1 + 16);
  v126 = v25;
  if (v54)
  {
    v56 = *(v37 + 16);
    v55 = v37 + 16;
    v57 = *(v55 + 64);
    sub_22C36BA94();
    v59 = a1 + v58;
    v119 = *(v55 + 56);
    v120 = v60;
    v61 = (v20 + 8);
    v121 = v55;
    v62 = (v55 - 8);
    v118 = (v28 + 32);
    v63 = MEMORY[0x277D84F90];
    do
    {
      v64 = v122;
      v120(v42, v59, v122);
      v65 = v124;
      sub_22C906EBC();
      sub_22C907DDC();
      (*v61)(v65, v125);
      (*v62)(v42, v64);
      v66 = v126;
      sub_22C36D0A8(v49, 1, v126);
      if (v93)
      {
        sub_22C36DD28(v49, &qword_27D9BF328, &qword_22C9225C0);
      }

      else
      {
        v67 = *v118;
        (*v118)(v123, v49, v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C38B2EC();
          sub_22C59743C();
          v63 = v73;
        }

        v69 = *(v63 + 16);
        if (v69 >= *(v63 + 24) >> 1)
        {
          sub_22C59743C();
          v63 = v74;
        }

        *(v63 + 16) = v69 + 1;
        v70 = *(v117 + 80);
        sub_22C36BA94();
        v67(v63 + v71 + *(v72 + 72) * v69, v123, v126);
      }

      v59 += v119;
      --v54;
    }

    while (v54);
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
  }

  v75 = v116;
  sub_22C58BB0C(v63, v116);

  v76 = v114;
  sub_22C6AEA50(v75, v114, &qword_27D9BF328, &qword_22C9225C0);
  v77 = v126;
  sub_22C36D0A8(v76, 1, v126);
  if (v93)
  {
    sub_22C36DD28(v75, &qword_27D9BF328, &qword_22C9225C0);
    sub_22C36DD28(v76, &qword_27D9BF328, &qword_22C9225C0);
    sub_22C9023BC();
    sub_22C36A748();
    return sub_22C36C640(v78, v79, v80, v81);
  }

  else
  {
    v83 = v117;
    v84 = v113;
    (*(v117 + 32))(v113, v76, v77);
    sub_22C3A5908(&qword_27D9C1448, &unk_22C92D638);
    v85 = *(v109 + 72);
    v86 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_22C90F800;
    sub_22C90264C();
    v88 = v87 + v86;
    v89 = v110;
    sub_22C6AEA50(v88, v110, &qword_27D9BE300, &qword_22C92D630);
    v90 = v89;
    v91 = v111;
    sub_22C6AE8BC(v90, v111, &qword_27D9BE300, &qword_22C92D630);
    v92 = v112;
    sub_22C36D0A8(v91, 1, v112);
    if (v93)
    {
      sub_22C36DD28(v91, &qword_27D9BE300, &qword_22C92D630);
    }

    else
    {
      v95 = v107;
      v94 = v108;
      v96 = *(v108 + 32);
      v96(v107, v91, v92);
      v97 = MEMORY[0x277D84F90];
      v98 = swift_isUniquelyReferenced_nonNull_native();
      if ((v98 & 1) == 0)
      {
        sub_22C38B2EC();
        sub_22C597374();
        v97 = v104;
      }

      v99 = *(v97 + 16);
      if (v99 >= *(v97 + 24) >> 1)
      {
        sub_22C597374();
        v97 = v105;
      }

      *(v97 + 16) = v99 + 1;
      v100 = *(v94 + 80);
      sub_22C36BA94();
      v96(v97 + v101 + *(v94 + 72) * v99, v95, v92);
      v77 = v126;
      v84 = v113;
      v75 = v116;
    }

    swift_setDeallocating();
    sub_22C5901A0();
    sub_22C8DAEE4();
    v103 = v102;

    sub_22C58BB24(v103, v115);

    (*(v83 + 8))(v84, v77);
    return sub_22C36DD28(v75, &qword_27D9BF328, &qword_22C9225C0);
  }
}

uint64_t sub_22C8CF428()
{
  sub_22C369980();
  v1[37] = v2;
  v1[38] = v0;
  v1[35] = v3;
  v1[36] = v4;
  v5 = sub_22C90454C();
  v1[39] = v5;
  sub_22C3699B8(v5);
  v1[40] = v6;
  v8 = *(v7 + 64);
  v1[41] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  v1[42] = sub_22C3699D4();
  v12 = sub_22C90234C();
  v1[43] = v12;
  sub_22C3699B8(v12);
  v1[44] = v13;
  v15 = *(v14 + 64);
  v1[45] = sub_22C3699D4();
  v16 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v16);
  v18 = *(v17 + 64);
  v1[46] = sub_22C3699D4();
  v19 = sub_22C90806C();
  v1[47] = v19;
  sub_22C3699B8(v19);
  v1[48] = v20;
  v22 = *(v21 + 64);
  v1[49] = sub_22C3699D4();
  v23 = type metadata accessor for ResponseCatalogMatcher(0);
  v1[50] = v23;
  sub_22C369914(v23);
  v25 = *(v24 + 64);
  v1[51] = sub_22C3856B8();
  v1[52] = swift_task_alloc();
  v26 = sub_22C907C5C();
  v1[53] = v26;
  sub_22C3699B8(v26);
  v1[54] = v27;
  v29 = *(v28 + 64);
  v1[55] = sub_22C3699D4();
  v30 = sub_22C90474C();
  v1[56] = v30;
  sub_22C3699B8(v30);
  v1[57] = v31;
  v33 = *(v32 + 64);
  v1[58] = sub_22C3699D4();
  v34 = type metadata accessor for ResponseGenerationPreferences();
  v1[59] = v34;
  sub_22C369914(v34);
  v36 = *(v35 + 64);
  v1[60] = sub_22C3699D4();
  v37 = sub_22C3A5908(&qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C369914(v37);
  v39 = *(v38 + 64);
  v1[61] = sub_22C3856B8();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v40 = sub_22C9063DC();
  v1[66] = v40;
  sub_22C3699B8(v40);
  v1[67] = v41;
  v43 = *(v42 + 64);
  v1[68] = sub_22C3856B8();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v44 = sub_22C90363C();
  v1[78] = v44;
  sub_22C3699B8(v44);
  v1[79] = v45;
  v47 = *(v46 + 64);
  v1[80] = sub_22C3699D4();
  v48 = type metadata accessor for DialogValues(0);
  sub_22C369914(v48);
  v50 = *(v49 + 64);
  v1[81] = sub_22C3699D4();
  v51 = type metadata accessor for TypedValueFormatter(0);
  v1[82] = v51;
  sub_22C369914(v51);
  v53 = *(v52 + 64);
  v1[83] = sub_22C3699D4();
  v54 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v54, v55, v56);
}

uint64_t sub_22C8CF850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v33 = *(v32 + 304);
  sub_22C36CA70();
  sub_22C6AEA50(v33 + 288, v32 + 56, &qword_27D9C1370, &qword_22C92D228);
  if (*(v32 + 80))
  {
    v34 = *(v32 + 304);
    sub_22C36C730((v32 + 56), v32 + 16);
    sub_22C36CA70();
    sub_22C6AEA50(v34 + 328, v32 + 136, &qword_27D9C1370, &qword_22C92D228);
    if (*(v32 + 160))
    {
      v35 = *(v32 + 664);
      v36 = *(v32 + 656);
      v37 = *(v32 + 288);
      sub_22C36C730((v32 + 136), v32 + 96);
      sub_22C907FFC();
      v38 = (v35 + *(v36 + 20));
      *v38 = 0;
      v38[1] = 0;
      swift_task_alloc();
      sub_22C36CC90();
      *(v32 + 672) = v39;
      *v39 = v40;
      v39[1] = sub_22C8CFC48;
      v41 = *(v32 + 664);
      v42 = *(v32 + 648);
      v43 = *(v32 + 304);
      v44 = *(v32 + 288);
      sub_22C37F7CC();

      return sub_22C8D370C();
    }

    v61 = *(v32 + 560);
    sub_22C36DD28(v32 + 136, &qword_27D9C1370, &qword_22C92D228);
    sub_22C90405C();
    v62 = sub_22C9063CC();
    v63 = sub_22C90AADC();
    if (sub_22C37B204(v63))
    {
      v64 = sub_22C36D240();
      sub_22C36C890(v64);
      sub_22C36BB14(&dword_22C366000, v65, v66, "No fallback dialog generator");
      sub_22C372FB0();
    }

    v67 = *(v32 + 560);
    v68 = *(v32 + 536);
    v69 = *(v32 + 528);

    v70 = *(v68 + 8);
    v71 = sub_22C36BAFC();
    v72(v71);
    sub_22C8D420C();
    v73 = sub_22C36FBE4();
    sub_22C8D5224(v73, v74);
    sub_22C36FF94((v32 + 16));
  }

  else
  {
    v47 = *(v32 + 552);
    sub_22C36DD28(v32 + 56, &qword_27D9C1370, &qword_22C92D228);
    sub_22C90405C();
    v48 = sub_22C9063CC();
    v49 = sub_22C90AADC();
    if (sub_22C37B204(v49))
    {
      v50 = sub_22C36D240();
      sub_22C36C890(v50);
      sub_22C36BB14(&dword_22C366000, v51, v52, "No response dialog generator");
      sub_22C372FB0();
    }

    v53 = *(v32 + 552);
    v54 = *(v32 + 536);
    v55 = *(v32 + 528);

    v56 = *(v54 + 8);
    v57 = sub_22C36BAFC();
    v58(v57);
    sub_22C8D420C();
    v59 = sub_22C36FBE4();
    sub_22C8D5224(v59, v60);
  }

  v75 = *(v32 + 664);
  v76 = *(v32 + 648);
  v77 = *(v32 + 640);
  v78 = *(v32 + 616);
  sub_22C38C2DC();
  v79 = *(v32 + 568);
  v88 = *(v32 + 560);
  v89 = *(v32 + 552);
  v90 = *(v32 + 544);
  v91 = *(v32 + 520);
  v92 = *(v32 + 512);
  v93 = *(v32 + 504);
  v94 = *(v32 + 496);
  v95 = *(v32 + 488);
  v96 = *(v32 + 480);
  v97 = *(v32 + 464);
  v98 = *(v32 + 440);
  v99 = *(v32 + 416);
  v100 = *(v32 + 408);
  v101 = *(v32 + 392);
  v102 = *(v32 + 368);
  v103 = *(v32 + 360);
  v104 = *(v32 + 336);
  v105 = *(v32 + 328);

  sub_22C369A24();
  sub_22C37F7CC();

  return v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, a28, a29, a30, a31, a32);
}

uint64_t sub_22C8CFC48()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 672);
  *v4 = *v2;
  *(v3 + 680) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 304);
  sub_22C37E810();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8D0C2C()
{
  sub_22C36FB38();
  sub_22C386504();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v0 + 688);
  *v4 = *v2;
  *(v3 + 696) = v1;

  sub_22C36D1D8();
  v7 = *(v0 + 304);
  sub_22C36DD28(*(v6 + 520), &qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C8D50E8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8D0D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  v31 = *(v30 + 664);
  v32 = *(v30 + 648);
  sub_22C373D1C();
  sub_22C8D4D04(v33, v34);
  sub_22C36B890();
  sub_22C8D4D04(v31, v35);
  sub_22C371F90();
  sub_22C388BA0();

  sub_22C369C50();
  sub_22C5CAD40();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_22C8D0EBC()
{
  sub_22C36FB38();
  sub_22C386504();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v0 + 712);
  *v4 = *v2;
  *(v3 + 720) = v1;

  sub_22C36D1D8();
  v7 = *(v0 + 304);
  sub_22C36DD28(*(v6 + 512), &qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C8D50E8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8D0FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C8D5240();
  sub_22C373D1C();
  sub_22C8D4D04(v30, v32);
  sub_22C36B890();
  sub_22C8D4D04(v31, v33);
  sub_22C371F90();
  sub_22C388BA0();

  sub_22C369C50();
  sub_22C5CAD40();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_22C8D114C()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 728);
  *v4 = *v2;
  *(v3 + 736) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 304);
  sub_22C37E810();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8D1260()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 768);
  *v4 = *v2;
  *(v3 + 776) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 304);
  sub_22C37E810();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8D1374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, Swift::String a29, __int128 a30, __int128 a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44)
{
  sub_22C60243C();
  a43 = v45;
  a44 = v46;
  sub_22C8D52C8();
  a42 = v44;
  v48 = v44[42];
  v47 = v44[43];
  v49 = sub_22C3707B4();
  sub_22C36D0A8(v49, v50, v47);
  if (v51)
  {
    v52 = v44[73];
    sub_22C36DD28(v48, &qword_27D9BAB60, &unk_22C90D400);
    sub_22C90405C();
    v53 = sub_22C9063CC();
    v54 = sub_22C90AABC();
    if (sub_22C37B204(v54))
    {
      v55 = sub_22C36D240();
      sub_22C36C890(v55);
      sub_22C36BB14(&dword_22C366000, v56, v57, "CatalogMatcher did not find valid catalog. To prevent hallucination, going to fallback.");
      sub_22C372FB0();
    }

    v58 = v44[94];
    v59 = v44[73];
    v60 = v44[67];
    v61 = v44[66];
    v62 = v44[38];

    v63 = sub_22C36BAFC();
    v58(v63);
    if (*(v62 + 376))
    {
      sub_22C8D5028();
      sub_22C899F90();
      sub_22C8D5138();
      *v59 = 0;
      v64 = *MEMORY[0x277D1FB28];
      v65 = sub_22C375194();
      v66(v65);
      sub_22C8D5198();

      v67 = sub_22C376B4C();
      v68(v67);
    }

    v69 = v44[63];
    v70 = sub_22C3800E8();
    v200 = sub_22C3789D4(v70);
    sub_22C369B5C();
    v203 = v71 + *v71;
    v73 = *(v72 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v44[98] = v74;
    *v74 = v75;
    sub_22C8D5044(v74);
    v76 = v44[63];
    goto LABEL_8;
  }

  v87 = v44[45];
  v88 = *(v44[44] + 32);
  v89 = sub_22C8D51C0();
  v88(v89);
  sub_22C90226C();
  if (v90)
  {
    v91 = sub_22C90A43C();

    if (v91)
    {
      v92 = v44[74];
      sub_22C90405C();
      v93 = sub_22C9063CC();
      v94 = sub_22C90AABC();
      v95 = sub_22C370048(v94);
      v96 = v44[95];
      v97 = v44[94];
      v98 = v44[74];
      v99 = v44[67];
      v204 = v44[66];
      v101 = v44[44];
      v100 = v44[45];
      v102 = v44[43];
      if (v95)
      {
        v103 = sub_22C36D240();
        *v103 = 0;
        _os_log_impl(&dword_22C366000, v93, v94, "Got '-RGPASS' dialog ID from RG catalog, continuing to model.", v103, 2u);
        sub_22C3699EC();
      }

      else
      {
      }

      v97(v98, v204);
      v138 = *(v101 + 8);
      v139 = sub_22C36D29C();
      v140(v139);
      swift_getKeyPath();
      sub_22C8D5344();

      sub_22C8D5268();
      if (!v51)
      {
        v144 = v44[93];

LABEL_29:
        if (sub_22C8D532C())
        {
          v145 = v44[5];
          v146 = v44[6];
          sub_22C375EAC(v44 + 2);
          v147 = *(v146 + 8);
          v200 = v146 + 8;
          sub_22C369B5C();
          v203 = v148 + *v148;
          v150 = *(v149 + 4);
          swift_task_alloc();
          sub_22C36CC90();
          v44[104] = v151;
          *v151 = v152;
          sub_22C387700();
          sub_22C8D5044(v153);
          sub_22C8D51B0();
          goto LABEL_9;
        }

        sub_22C8D5200();
        if (v93)
        {
          sub_22C8D5028();
          sub_22C899F90();
          sub_22C8D5138();
          v154 = *MEMORY[0x277D1FB20];
          v155 = sub_22C375194();
          v156(v155);
          sub_22C8D5198();

          v157 = sub_22C376B4C();
          v158(v157);
        }

        v159 = v44[61];
        v160 = sub_22C3800E8();
        v200 = sub_22C3789D4(v160);
        sub_22C369B5C();
        v203 = v161 + *v161;
        v163 = *(v162 + 4);
        swift_task_alloc();
        sub_22C36CC90();
        v44[102] = v164;
        *v164 = v165;
        sub_22C36C5F4(v164);
LABEL_8:
        sub_22C8D50D8();
LABEL_9:
        sub_22C387DC4();
        sub_22C37BEB8();

        return v83(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v200, v203, a29._countAndFlagsBits, a29._object, a30, *(&a30 + 1), a31, *(&a31 + 1), a32, *(&a32 + 1), a33, a34, a35, a36);
      }

      if (qword_27D9BA7C8 != -1)
      {
        sub_22C37F67C();
      }

      sub_22C3868E0();
      if (v142)
      {
        v93 = qword_27D9C0C20;
        a29._countAndFlagsBits = *v141;
        a29._object = v142;
        v143 = *(v141 + 32);
        a30 = *(v141 + 16);
        a31 = v143;
        a32 = *(v141 + 48);
        sub_22C874CDC(v99, &a29);
        sub_22C3743B4();
        if (v93)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      sub_22C8D5314();
      sub_22C9063CC();
      v166 = sub_22C90AABC();
      if (sub_22C37B204(v166))
      {
        v167 = sub_22C36D240();
        sub_22C36C890(v167);
        sub_22C36BB14(&dword_22C366000, v168, v169, "ResponseValidator did not find valid argument pattern. To prevent hallucination, going to fallback.");
        sub_22C372FB0();
      }

      sub_22C380694();
      v170 = sub_22C36BAFC();
      v98(v170);
      if (*(v96 + 376))
      {
        sub_22C8D5028();
        sub_22C899F90();
        sub_22C8D5138();
        *v99 = 0;
        v171 = *MEMORY[0x277D1FB28];
        v172 = sub_22C375194();
        v173(v172);
        sub_22C8D5198();

        v174 = sub_22C376B4C();
        v175(v174);
      }

      v176 = v44[62];
      v177 = sub_22C3800E8();
      v200 = sub_22C3789D4(v177);
      sub_22C369B5C();
      v203 = v178 + *v178;
      v180 = *(v179 + 4);
      swift_task_alloc();
      sub_22C36CC90();
      v44[100] = v181;
      *v181 = v182;
      sub_22C372F38(v181);
      goto LABEL_8;
    }
  }

  v104 = v44[95];
  v105 = v44[93];
  v106 = v44[38];

  v107 = v44[95];
  v108 = v44[88];
  v109 = v44[83];
  v110 = v44[81];
  if (*(v106 + 376))
  {
    v111 = v44[40];
    v201 = v44[41];
    v205 = v88;
    v112 = v44[39];

    v113 = sub_22C899F90();

    sub_22C373D1C();
    sub_22C8D4D04(v110, v114);
    sub_22C36B890();
    sub_22C8D4D04(v109, v115);
    (*(v111 + 104))(v201, *MEMORY[0x277D1FAB8], v112);
    v116 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
    sub_22C79D0C0();
    v117 = v112;
    v88 = v205;
    (*(v111 + 40))(v113 + v116, v201, v117);
    swift_endAccess();
  }

  else
  {
    v118 = v44[95];

    sub_22C373D1C();
    sub_22C8D4D04(v110, v119);
    sub_22C36B890();
    sub_22C8D4D04(v109, v120);
  }

  v121 = v44[52];
  v122 = v44[45];
  v123 = v44[43];
  v124 = v44[35];
  sub_22C8D4F78();
  sub_22C8D4D04(v125, v126);
  v127 = sub_22C8D51C0();
  v88(v127);
  sub_22C371F90();
  v183 = v129;
  v184 = v128;
  v185 = v44[69];
  v186 = v44[68];
  v187 = v44[65];
  v188 = v44[64];
  v189 = v44[63];
  v190 = v44[62];
  v191 = v44[61];
  v192 = v44[60];
  v193 = v44[58];
  v194 = v44[55];
  v195 = v44[52];
  v196 = v44[51];
  v197 = v44[49];
  v198 = v44[46];
  v199 = v44[45];
  v202 = v44[42];
  v206 = v44[41];
  sub_22C8D506C();

  sub_22C369C50();
  sub_22C37BEB8();

  return v131(v130, v131, v132, v133, v134, v135, v136, v137, a9, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v202, v206, a29._countAndFlagsBits, a29._object, a30, *(&a30 + 1), a31, *(&a31 + 1), a32, *(&a32 + 1), a33, a34, a35, a36);
}

uint64_t sub_22C8D1CB0()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 784);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v3[99] = v0;

  if (v0)
  {
    v9 = v3[38];
    sub_22C36DD28(v3[63], &qword_27D9C10D0, &qword_22C92BFA0);
    v10 = sub_22C8D2A3C;
    v11 = v9;
  }

  else
  {
    v12 = v3[95];
    v13 = v3[93];
    v14 = v3[63];
    v15 = v3[38];

    sub_22C36DD28(v14, &qword_27D9C10D0, &qword_22C92BFA0);
    v10 = sub_22C8D1E0C;
    v11 = v15;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_22C8D1E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  v31 = v30[95];
  v32 = v30[88];
  v33 = v30[83];
  v34 = v30[81];
  v35 = v30[52];

  sub_22C373D1C();
  sub_22C8D4D04(v34, v36);
  sub_22C36B890();
  sub_22C8D4D04(v33, v37);
  sub_22C8D4F78();
  sub_22C8D4D04(v35, v38);
  sub_22C371F90();
  sub_22C388BA0();

  sub_22C369C50();
  sub_22C5CAD40();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_22C8D1F88()
{
  sub_22C36FB38();
  sub_22C386504();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v0 + 800);
  *v4 = *v2;
  *(v3 + 808) = v1;

  sub_22C36D1D8();
  v7 = *(v0 + 304);
  sub_22C36DD28(*(v6 + 496), &qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C8D50E8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8D20C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C381C90();

  sub_22C373D1C();
  sub_22C8D4D04(v31, v33);
  sub_22C36B890();
  sub_22C8D4D04(v30, v34);
  sub_22C8D4F78();
  sub_22C8D4D04(v32, v35);
  sub_22C371F90();
  sub_22C388BA0();

  sub_22C369C50();
  sub_22C5CAD40();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_22C8D222C()
{
  sub_22C36FB38();
  sub_22C386504();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v0 + 816);
  *v4 = *v2;
  *(v3 + 824) = v1;

  sub_22C36D1D8();
  v7 = *(v0 + 304);
  sub_22C36DD28(*(v6 + 488), &qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C8D50E8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8D2368()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 832);
  *v4 = *v2;
  *(v3 + 840) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 304);
  sub_22C37E810();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8D247C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  v31 = v30[83];
  sub_22C36B890();
  sub_22C8D4D04(v32, v33);
  sub_22C8D506C();
  v46 = v30[85];
  sub_22C388DF8();
  v34 = v30[80];
  v35 = v30[77];
  sub_22C38C2DC();
  v36 = v30[71];
  sub_22C36A5BC();
  sub_22C37FBC4();

  sub_22C382AE4();
  sub_22C5CAD40();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v46, a28, a29, a30);
}

uint64_t sub_22C8D25E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  v31 = v30[83];
  v32 = v30[81];
  sub_22C373D1C();
  sub_22C8D4D04(v33, v34);
  sub_22C36B890();
  sub_22C8D4D04(v31, v35);
  sub_22C8D506C();
  v48 = v30[87];
  sub_22C388DF8();
  v36 = v30[80];
  v37 = v30[77];
  sub_22C38C2DC();
  v38 = v30[71];
  sub_22C36A5BC();
  sub_22C37FBC4();

  sub_22C382AE4();
  sub_22C5CAD40();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v48, a28, a29, a30);
}

uint64_t sub_22C8D2754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C8D5240();
  sub_22C373D1C();
  sub_22C8D4D04(v30, v33);
  sub_22C36B890();
  sub_22C8D4D04(v31, v34);
  sub_22C8D506C();
  v47 = v32[90];
  sub_22C388DF8();
  v35 = v32[80];
  v36 = v32[77];
  sub_22C38C2DC();
  v37 = v32[71];
  sub_22C36A5BC();
  sub_22C37FBC4();

  sub_22C382AE4();
  sub_22C5CAD40();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v47, a28, a29, a30);
}

uint64_t sub_22C8D28C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C8D5240();
  sub_22C373D1C();
  sub_22C8D4D04(v30, v33);
  sub_22C36B890();
  sub_22C8D4D04(v31, v34);
  sub_22C8D506C();
  v47 = v32[92];
  sub_22C388DF8();
  v35 = v32[80];
  v36 = v32[77];
  sub_22C38C2DC();
  v37 = v32[71];
  sub_22C36A5BC();
  sub_22C37FBC4();

  sub_22C382AE4();
  sub_22C5CAD40();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v47, a28, a29, a30);
}

uint64_t sub_22C8D2A3C()
{
  v3 = v0[99];
  v4 = v0[68];
  sub_22C90405C();
  v5 = sub_22C9063CC();
  v6 = sub_22C90AABC();
  sub_22C370048(v6);
  sub_22C36D36C();
  if (v7)
  {
    *sub_22C36D240() = 0;
    sub_22C8D52D4(&dword_22C366000, v8, v9, "Error executing RG catalog CAT, continuing to model.");
    sub_22C3699EC();
  }

  v10 = sub_22C36D264();
  v2(v10);
  swift_getKeyPath();
  sub_22C8D5344();

  sub_22C8D5268();
  if (v11)
  {
    if (qword_27D9BA7C8 != -1)
    {
      sub_22C37F67C();
    }

    sub_22C3868E0();
    if (v13)
    {
      v14 = *v12;
      v5 = qword_27D9C0C20;
      sub_22C8D5108(v12, v54, v55, v56, v58, v59, v60, v61);
      sub_22C3743B4();
      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    sub_22C8D5314();
    sub_22C9063CC();
    v36 = sub_22C90AABC();
    if (sub_22C37B204(v36))
    {
      v37 = sub_22C36D240();
      sub_22C36C890(v37);
      sub_22C36BB14(&dword_22C366000, v38, v39, "ResponseValidator did not find valid argument pattern. To prevent hallucination, going to fallback.");
      sub_22C372FB0();
    }

    sub_22C380694();
    v40 = sub_22C36BAFC();
    v1(v40);
    if (*(v6 + 376))
    {
      sub_22C8D5028();
      sub_22C899F90();
      sub_22C8D5138();
      *v3 = 0;
      v41 = *MEMORY[0x277D1FB28];
      v42 = sub_22C375194();
      v43(v42);
      sub_22C8D5198();

      v44 = sub_22C376B4C();
      v45(v44);
    }

    v46 = v0[62];
    v47 = sub_22C3800E8();
    sub_22C3789D4(v47);
    sub_22C369B5C();
    v57 = (v48 + *v48);
    v50 = *(v49 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[100] = v51;
    *v51 = v52;
    sub_22C372F38(v51);
    goto LABEL_20;
  }

  v15 = v0[93];

LABEL_9:
  if (sub_22C8D532C())
  {
    v16 = v0[5];
    v17 = v0[6];
    sub_22C375EAC(v0 + 2);
    sub_22C8D4F90();
    v57 = (v18 + *v18);
    v20 = *(v19 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[104] = v21;
    *v21 = v22;
    sub_22C387700();
    sub_22C8D5044(v23);
    sub_22C8D51B0();
    goto LABEL_21;
  }

  sub_22C8D5200();
  if (v5)
  {
    sub_22C8D5028();
    sub_22C899F90();
    sub_22C8D5138();
    v24 = *MEMORY[0x277D1FB20];
    v25 = sub_22C375194();
    v26(v25);
    sub_22C8D5198();

    v27 = sub_22C376B4C();
    v28(v27);
  }

  v29 = v0[61];
  v30 = sub_22C3800E8();
  sub_22C3789D4(v30);
  sub_22C369B5C();
  v57 = (v31 + *v31);
  v33 = *(v32 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[102] = v34;
  *v34 = v35;
  sub_22C36C5F4(v34);
LABEL_20:
  sub_22C8D50D8();
LABEL_21:
  sub_22C387DC4();

  return v57();
}

uint64_t sub_22C8D2E58()
{
  v3 = v0[97];
  v4 = v0[68];
  sub_22C90405C();
  v5 = sub_22C9063CC();
  v6 = sub_22C90AABC();
  sub_22C370048(v6);
  sub_22C36D36C();
  if (v7)
  {
    *sub_22C36D240() = 0;
    sub_22C8D52D4(&dword_22C366000, v8, v9, "Error executing RG catalog CAT, continuing to model.");
    sub_22C3699EC();
  }

  v10 = sub_22C36D264();
  v2(v10);
  swift_getKeyPath();
  sub_22C8D5344();

  sub_22C8D5268();
  if (v11)
  {
    if (qword_27D9BA7C8 != -1)
    {
      sub_22C37F67C();
    }

    sub_22C3868E0();
    if (v13)
    {
      v14 = *v12;
      v5 = qword_27D9C0C20;
      sub_22C8D5108(v12, v54, v55, v56, v58, v59, v60, v61);
      sub_22C3743B4();
      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    sub_22C8D5314();
    sub_22C9063CC();
    v36 = sub_22C90AABC();
    if (sub_22C37B204(v36))
    {
      v37 = sub_22C36D240();
      sub_22C36C890(v37);
      sub_22C36BB14(&dword_22C366000, v38, v39, "ResponseValidator did not find valid argument pattern. To prevent hallucination, going to fallback.");
      sub_22C372FB0();
    }

    sub_22C380694();
    v40 = sub_22C36BAFC();
    v1(v40);
    if (*(v6 + 376))
    {
      sub_22C8D5028();
      sub_22C899F90();
      sub_22C8D5138();
      *v3 = 0;
      v41 = *MEMORY[0x277D1FB28];
      v42 = sub_22C375194();
      v43(v42);
      sub_22C8D5198();

      v44 = sub_22C376B4C();
      v45(v44);
    }

    v46 = v0[62];
    v47 = sub_22C3800E8();
    sub_22C3789D4(v47);
    sub_22C369B5C();
    v57 = (v48 + *v48);
    v50 = *(v49 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[100] = v51;
    *v51 = v52;
    sub_22C372F38(v51);
    goto LABEL_20;
  }

  v15 = v0[93];

LABEL_9:
  if (sub_22C8D532C())
  {
    v16 = v0[5];
    v17 = v0[6];
    sub_22C375EAC(v0 + 2);
    sub_22C8D4F90();
    v57 = (v18 + *v18);
    v20 = *(v19 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[104] = v21;
    *v21 = v22;
    sub_22C387700();
    sub_22C8D5044(v23);
    sub_22C8D51B0();
    goto LABEL_21;
  }

  sub_22C8D5200();
  if (v5)
  {
    sub_22C8D5028();
    sub_22C899F90();
    sub_22C8D5138();
    v24 = *MEMORY[0x277D1FB20];
    v25 = sub_22C375194();
    v26(v25);
    sub_22C8D5198();

    v27 = sub_22C376B4C();
    v28(v27);
  }

  v29 = v0[61];
  v30 = sub_22C3800E8();
  sub_22C3789D4(v30);
  sub_22C369B5C();
  v57 = (v31 + *v31);
  v33 = *(v32 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[102] = v34;
  *v34 = v35;
  sub_22C36C5F4(v34);
LABEL_20:
  sub_22C8D50D8();
LABEL_21:
  sub_22C387DC4();

  return v57();
}

uint64_t sub_22C8D3274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C381C90();

  sub_22C373D1C();
  sub_22C8D4D04(v31, v34);
  sub_22C36B890();
  sub_22C8D4D04(v30, v35);
  sub_22C8D4F78();
  sub_22C8D4D04(v33, v36);
  sub_22C8D506C();
  v49 = v32[101];
  sub_22C388DF8();
  v37 = v32[80];
  v38 = v32[77];
  sub_22C38C2DC();
  v39 = v32[71];
  sub_22C36A5BC();
  sub_22C37FBC4();

  sub_22C382AE4();
  sub_22C5CAD40();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v49, a28, a29, a30);
}

uint64_t sub_22C8D33FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C381C90();

  sub_22C373D1C();
  sub_22C8D4D04(v31, v34);
  sub_22C36B890();
  sub_22C8D4D04(v30, v35);
  sub_22C8D4F78();
  sub_22C8D4D04(v33, v36);
  sub_22C8D506C();
  v49 = v32[103];
  sub_22C388DF8();
  v37 = v32[80];
  v38 = v32[77];
  sub_22C38C2DC();
  v39 = v32[71];
  sub_22C36A5BC();
  sub_22C37FBC4();

  sub_22C382AE4();
  sub_22C5CAD40();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v49, a28, a29, a30);
}

uint64_t sub_22C8D3584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C381C90();

  sub_22C373D1C();
  sub_22C8D4D04(v31, v34);
  sub_22C36B890();
  sub_22C8D4D04(v30, v35);
  sub_22C8D4F78();
  sub_22C8D4D04(v33, v36);
  sub_22C8D506C();
  v49 = v32[105];
  sub_22C388DF8();
  v37 = v32[80];
  v38 = v32[77];
  sub_22C38C2DC();
  v39 = v32[71];
  sub_22C36A5BC();
  sub_22C37FBC4();

  sub_22C382AE4();
  sub_22C5CAD40();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v49, a28, a29, a30);
}

uint64_t sub_22C8D370C()
{
  sub_22C369980();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_22C9020CC();
  v1[11] = v5;
  sub_22C3699B8(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = sub_22C3699D4();
  v9 = sub_22C9026BC();
  v1[14] = v9;
  sub_22C3699B8(v9);
  v1[15] = v10;
  v12 = *(v11 + 64);
  v1[16] = sub_22C3699D4();
  v13 = sub_22C907DEC();
  v1[17] = v13;
  sub_22C3699B8(v13);
  v1[18] = v14;
  v16 = *(v15 + 64);
  v1[19] = sub_22C3699D4();
  v17 = sub_22C906ECC();
  v1[20] = v17;
  sub_22C3699B8(v17);
  v1[21] = v18;
  v20 = *(v19 + 64);
  v21 = sub_22C3699D4();
  sub_22C8D525C(v21);
  v22 = sub_22C907C5C();
  v1[23] = v22;
  sub_22C3699B8(v22);
  v1[24] = v23;
  v25 = *(v24 + 64);
  v1[25] = sub_22C3699D4();
  v26 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_22C8D38E0()
{
  v1 = v0[8];
  v2 = sub_22C90804C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[24];
    v5 = v0[15];
    v6 = v0[12];
    v7 = *(v4 + 16);
    v4 += 16;
    v91 = v7;
    v79 = v2;
    v8 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v85 = *(v4 + 56);
    v90 = (v0[21] + 8);
    v89 = (v0[18] + 8);
    v88 = v5 + 11;
    v87 = *MEMORY[0x277D1CBF0];
    v86 = (v4 - 8);
    v83 = v5 + 12;
    v84 = v5 + 1;
    v82 = (v6 + 32);
    v9 = MEMORY[0x277D84F90];
    v81 = (v6 + 8);
    v80 = xmmword_22C90F800;
    while (1)
    {
      v92 = v3;
      v10 = v0[22];
      v12 = v0[19];
      v11 = v0[20];
      v14 = v0[16];
      v13 = v0[17];
      v15 = v0[14];
      v91(v0[25], v8, v0[23]);
      sub_22C907C0C();
      sub_22C906EBC();
      v16 = *v90;
      v17 = sub_22C3726C4();
      v18(v17);
      sub_22C907DAC();
      (*v89)(v12, v13);
      v19 = *v88;
      v20 = sub_22C36CA88();
      v22 = v21(v20);
      v30 = v0[25];
      v31 = v0[23];
      v32 = v0[16];
      v33 = v0[14];
      if (v22 == v87)
      {
        v34 = v0[13];
        v35 = v0[11];
        v36 = *v83;
        v37 = sub_22C379FC8();
        v38(v37);
        v39 = *v82;
        v40 = sub_22C36BA00();
        v41(v40);
        sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
        sub_22C369A48();
        v42 = sub_22C9093BC();
        sub_22C3699B8(v42);
        v44 = *(v43 + 72);
        v46 = *(v45 + 80);
        sub_22C8D52A8();
        v47 = swift_allocObject();
        *(v47 + 16) = v80;
        sub_22C90207C();
        v48 = (*v81)(v34, v35);
        v56 = sub_22C8D5274(v48, v49, v50, v51, v52, v53, v54, v55, v78, v79, v80, *(&v80 + 1), v81, v82, v83, v84, v85, v86);
        result = v57(v56);
      }

      else
      {
        v59 = sub_22C8D5274(v22, v23, v24, v25, v26, v27, v28, v29, v78, v79, v80, *(&v80 + 1), v81, v82, v83, v84, v85, v86);
        v60(v59);
        v61 = *v84;
        v62 = sub_22C379FC8();
        result = v63(v62);
        v47 = MEMORY[0x277D84F90];
      }

      v64 = *(v47 + 16);
      v65 = *(v9 + 16);
      if (__OFADD__(v65, v64))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v65 + v64 > *(v9 + 24) >> 1)
      {
        sub_22C5903C0();
        v9 = v66;
      }

      if (*(v47 + 16))
      {
        v67 = (*(v9 + 24) >> 1) - *(v9 + 16);
        result = sub_22C9093BC();
        v68 = *(result - 8);
        if (v67 < v64)
        {
          goto LABEL_24;
        }

        v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v70 = *(v68 + 72);
        swift_arrayInitWithCopy();

        if (v64)
        {
          v71 = *(v9 + 16);
          v72 = __OFADD__(v71, v64);
          v73 = v71 + v64;
          if (v72)
          {
            goto LABEL_25;
          }

          *(v9 + 16) = v73;
        }
      }

      else
      {

        if (v64)
        {
          goto LABEL_23;
        }
      }

      v8 += v85;
      v3 = v92 - 1;
      if (v92 == 1)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
LABEL_19:
    v0[26] = v9;
    sub_22C378A4C(v0[10] + 120, (v0 + 2));
    swift_task_alloc();
    sub_22C36CC90();
    v0[27] = v74;
    *v74 = v75;
    v74[1] = sub_22C8D3D44;
    v76 = v0[9];
    v77 = v0[7];

    return sub_22C883B68();
  }

  return result;
}

uint64_t sub_22C8D3D44()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 216);
  v6 = *(v1 + 208);
  *v4 = *v2;
  *(v3 + 224) = v0;

  sub_22C6343B0();
  v8 = *(v7 + 80);
  sub_22C37E810();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8D3E74()
{
  sub_22C36D5EC();
  v1 = *(v0 + 200);
  sub_22C36CDAC();
  v2 = *(v0 + 104);
  sub_22C8D4C5C(v0 + 16);

  sub_22C369C50();

  return v3();
}

uint64_t sub_22C8D3F10()
{
  sub_22C36D5EC();
  v1 = v0[25];
  sub_22C36CDAC();
  v2 = v0[13];
  sub_22C8D4C5C((v0 + 2));

  sub_22C369A24();
  v4 = v0[28];

  return v3();
}

uint64_t ResponseGenerationService.ResponseGenerationServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

uint64_t sub_22C8D4068()
{
  v2 = *v0;
  sub_22C90B62C();
  ResponseGenerationService.ResponseGenerationServiceError.hash(into:)();
  return sub_22C90B66C();
}

uint64_t sub_22C8D40B0(uint64_t a1)
{
  v2 = sub_22C8D4D5C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8D40EC(uint64_t a1)
{
  v2 = sub_22C8D4D5C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C8D4174()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3C0980;

  return sub_22C8C7CEC();
}

unint64_t sub_22C8D420C()
{
  result = qword_27D9C1378;
  if (!qword_27D9C1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1378);
  }

  return result;
}

uint64_t sub_22C8D4260()
{
  sub_22C3743E4();
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v7 = sub_22C90806C();
  sub_22C3699B8(v7);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_22C90069C();
  sub_22C3699B8(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  v17 = sub_22C9087BC();
  sub_22C369914(v17);
  v19 = (v14 + v16 + *(v18 + 80)) & ~*(v18 + 80);
  v20 = *(v0 + 16);
  v21 = swift_task_alloc();
  *(v4 + 16) = v21;
  *v21 = v4;
  v21[1] = sub_22C46BC08;

  return sub_22C8C96DC(v6, v3, v20, v0 + v9, v0 + v14, v0 + v19);
}

uint64_t sub_22C8D4400(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C369A9C(v5);
  v7 = *(v6 + 40);
  v8 = sub_22C36BA00();
  v9(v8);
  return v4;
}

unint64_t sub_22C8D444C()
{
  result = qword_27D9C13B0;
  if (!qword_27D9C13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C13B0);
  }

  return result;
}

uint64_t sub_22C8D44A4(uint64_t a1)
{
  result = sub_22C38B5F0(&qword_2814320E0, type metadata accessor for ResponseGenerationService);
  *(a1 + 8) = result;
  return result;
}

void sub_22C8D4504()
{
  sub_22C8D4B1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ResponseGenerationService.setup(sessionState:)()
{
  sub_22C36FB38();
  v2 = v1;
  sub_22C36C89C();
  v7 = (*(v3 + 352) + **(v3 + 352));
  v4 = *(*(v3 + 352) + 4);
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_22C46BC08;

  return v7(v2);
}

uint64_t dispatch thunk of ResponseGenerationService.setup(responseLocale:sessionIdentityToken:interactionId:sessionWideOriginatingDeviceIDSId:genderSettings:)()
{
  sub_22C3749D8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_22C36C89C();
  v17 = (*(v13 + 360) + **(v13 + 360));
  v14 = *(*(v13 + 360) + 4);
  v15 = swift_task_alloc();
  *(v0 + 16) = v15;
  *v15 = v0;
  v15[1] = sub_22C46BC08;

  return v17(v12, v10, v8, v6, v4, v2);
}

uint64_t dispatch thunk of ResponseGenerationService.handle(_:plannerServiceContext:)()
{
  sub_22C36D5EC();
  v2 = v1;
  v4 = v3;
  sub_22C36C89C();
  v9 = (*(v5 + 376) + **(v5 + 376));
  v6 = *(*(v5 + 376) + 4);
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_22C7D8F18;

  return v9(v4, v2);
}

uint64_t dispatch thunk of ResponseGenerationService.handle(_:sessionEventId:transcript:)()
{
  sub_22C3743E4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_22C36C89C();
  v14 = (*(v9 + 392) + **(v9 + 392));
  v10 = *(*(v9 + 392) + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_22C46BC08;

  return v14(v8, v6, v4, v2);
}

void sub_22C8D4B1C()
{
  if (!qword_2814357A0)
  {
    sub_22C3AC1A0(&qword_27D9BB570, &qword_22C92D210);
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_2814357A0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationService.ResponseGenerationServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C8D4CB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C369A9C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C8D4D04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22C8D4D5C()
{
  result = qword_27D9C13D0;
  if (!qword_27D9C13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C13D0);
  }

  return result;
}

uint64_t sub_22C8D4DB0()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22C382AF4;

  return sub_22C8CE5FC(v5, v3, v6, v7, v8);
}

uint64_t sub_22C8D4F1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C369A9C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C8D4F90()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22C8D4FA8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22C8D4FC0(uint64_t a1)
{
  *(a1 + 8) = sub_22C8CA9CC;
  v2 = v1[58];
  v3 = v1[12];
  return v1[10];
}

uint64_t sub_22C8D4FF8(uint64_t a1)
{
  *(a1 + 8) = sub_22C8CD2BC;
  result = v1[81];
  v3 = v1[47];
  v4 = v1[48];
  v5 = v1[46];
  return result;
}

uint64_t sub_22C8D5028()
{
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[56];
}

uint64_t sub_22C8D5044(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 648);
  return result;
}

uint64_t sub_22C8D506C()
{
  sub_22C36FF94((v0 + 96));

  return sub_22C36FF94((v0 + 16));
}

uint64_t sub_22C8D50B0()
{

  return sub_22C8D4D04(v0, type metadata accessor for ResponseGenerationPreferences);
}

uint64_t sub_22C8D50D8()
{
  result = *(v0 + 280);
  v2 = *(v0 + 288);
  return result;
}

uint64_t sub_22C8D5108@<X0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, Swift::String a5, __int128 a6, __int128 a7, __int128 a8)
{
  a5._countAndFlagsBits = v9;
  a5._object = v8;
  v12 = a1[2];
  a6 = a1[1];
  a7 = v12;
  a8 = a1[3];

  return sub_22C874CDC(v10, &a5);
}

uint64_t sub_22C8D5138()
{
}

void *sub_22C8D5150()
{

  return sub_22C36CECC(v3, v2, v1, v6, v0, v4, v5);
}

void sub_22C8D517C()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[46];
}

uint64_t sub_22C8D5198()
{

  return sub_22C89F34C();
}

uint64_t sub_22C8D51B0()
{
  v1 = v0[36];
  v2 = v0[37];
  return v0[35];
}

uint64_t sub_22C8D520C()
{

  return sub_22C90A1AC();
}

uint64_t sub_22C8D5224(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;
  *(v2 - 88) = a1;

  return swift_willThrow();
}

uint64_t sub_22C8D5240()
{
  v2 = v0[88];
  v3 = v0[83];
  v4 = v0[81];
}

uint64_t sub_22C8D5294()
{
  result = v0[66];
  v3 = v0[62];
  v2 = v0[63];
  v5 = v0[58];
  v4 = v0[59];
  v7 = v0[53];
  v6 = v0[54];
  return result;
}

void sub_22C8D52D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_22C8D52F4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C8D5314()
{
  v2 = *(v0 + 576);

  return sub_22C90405C();
}

uint64_t sub_22C8D532C()
{
  v2 = *(v0 + 704);
  v3 = *(v0 + 288);

  return sub_22C8B43F8(v3);
}

uint64_t sub_22C8D5344()
{

  return sub_22C901F3C();
}

uint64_t sub_22C8D535C()
{

  return sub_22C907FDC();
}

void sub_22C8D5374()
{
  sub_22C36BA7C();
  v20 = sub_22C3A5908(&qword_27D9BAE70, &unk_22C90FA90);
  sub_22C369824(v20);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C36FF70();
  v4 = sub_22C3A5908(&qword_27D9BAE60, &unk_22C911F20);
  sub_22C369824(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C38ACC0();
  if (v0)
  {
    v8 = sub_22C8E6474();
    sub_22C3B6E9C(v8, v9, v10);
    sub_22C8E63D8();
    do
    {
      v11 = sub_22C37F370();
      sub_22C4E719C(v11, v12, &qword_27D9BAE70, &unk_22C90FA90);
      sub_22C37A4D4();
      sub_22C37F69C();
      if (v13)
      {
        sub_22C8E64A4();
        sub_22C3B6E9C(v17, v18, v19);
      }

      v14 = sub_22C371FC0();
      sub_22C4E7208(v14, v15, &qword_27D9BAE60, &unk_22C911F20);
      sub_22C8E65D8();
    }

    while (!v16);
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C8D54F4()
{
  sub_22C36BA7C();
  v20 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  sub_22C369824(v20);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C36FF70();
  v4 = sub_22C3A5908(&qword_27D9BAF28, &unk_22C90D7D0);
  sub_22C369824(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C38ACC0();
  if (v0)
  {
    v8 = sub_22C8E6474();
    sub_22C3B7098(v8, v9, v10);
    sub_22C8E63D8();
    do
    {
      v11 = sub_22C37F370();
      sub_22C4E719C(v11, v12, &qword_27D9BAF30, &unk_22C90FAA0);
      sub_22C37A4D4();
      sub_22C37F69C();
      if (v13)
      {
        sub_22C8E64A4();
        sub_22C3B7098(v17, v18, v19);
      }

      v14 = sub_22C371FC0();
      sub_22C4E7208(v14, v15, &qword_27D9BAF28, &unk_22C90D7D0);
      sub_22C8E65D8();
    }

    while (!v16);
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C8D5674()
{
  sub_22C36BA7C();
  v20 = sub_22C3A5908(&qword_27D9BB6D0, &qword_22C90FAE0);
  sub_22C369824(v20);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C36FF70();
  v4 = sub_22C3A5908(&qword_27D9BB100, &qword_22C90D9A0);
  sub_22C369824(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C38ACC0();
  if (v0)
  {
    v8 = sub_22C8E6474();
    sub_22C3B733C(v8, v9, v10);
    sub_22C8E63D8();
    do
    {
      v11 = sub_22C37F370();
      sub_22C4E719C(v11, v12, &qword_27D9BB6D0, &qword_22C90FAE0);
      sub_22C37A4D4();
      sub_22C37F69C();
      if (v13)
      {
        sub_22C8E64A4();
        sub_22C3B733C(v17, v18, v19);
      }

      v14 = sub_22C371FC0();
      sub_22C4E7208(v14, v15, &qword_27D9BB100, &qword_22C90D9A0);
      sub_22C8E65D8();
    }

    while (!v16);
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

uint64_t sub_22C8D57F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v22 = MEMORY[0x277D84F90];
    sub_22C3B739C(0, v1, 0);
    v2 = v22;
    v4 = (a1 + 80);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v14 = *(v4 - 3);
      v15 = *(v4 - 4);
      v16 = *(v4 - 1);
      v17 = *v4;

      sub_22C456C94(v5, v6);
      sub_22C3A5908(&qword_27D9BE4C8, &qword_22C91DB28);
      sub_22C3A5908(&qword_27D9BAFD0, &qword_22C90D870);
      swift_dynamicCast();
      v7 = v18;
      v8 = v20;
      v9 = v21;
      v11 = *(v22 + 16);
      v10 = *(v22 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_22C3B739C(v10 > 1, v11 + 1, 1);
        v9 = v21;
        v8 = v20;
        v7 = v18;
      }

      *(v22 + 16) = v11 + 1;
      v12 = v22 + 56 * v11;
      *(v12 + 32) = v7;
      *(v12 + 48) = v19;
      *(v12 + 56) = v8;
      *(v12 + 72) = v9;
      v4 += 7;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_22C8D5980()
{
  sub_22C36BA7C();
  v20 = sub_22C3A5908(&qword_27D9BB6C0, &qword_22C91A3D0);
  sub_22C369824(v20);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C36FF70();
  v4 = sub_22C3A5908(&qword_27D9BB028, &unk_22C90FAD0);
  sub_22C369824(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C38ACC0();
  if (v0)
  {
    v8 = sub_22C8E6474();
    sub_22C3B73DC(v8, v9, v10);
    sub_22C8E63D8();
    do
    {
      v11 = sub_22C37F370();
      sub_22C4E719C(v11, v12, &qword_27D9BB6C0, &qword_22C91A3D0);
      sub_22C37A4D4();
      sub_22C37F69C();
      if (v13)
      {
        sub_22C8E64A4();
        sub_22C3B73DC(v17, v18, v19);
      }

      v14 = sub_22C371FC0();
      sub_22C4E7208(v14, v15, &qword_27D9BB028, &unk_22C90FAD0);
      sub_22C8E65D8();
    }

    while (!v16);
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

uint64_t sub_22C8D5B00(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22C90B1BC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    result = sub_22C90B01C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2318B8460](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        ++v4;
        type metadata accessor for PayloadLayout();
        v6 = sub_22C36ECB4();
        sub_22C3A5908(v6, v7);
        swift_dynamicCast();
        sub_22C90AFEC();
        v8 = *(v9 + 16);
        sub_22C90B02C();
        sub_22C90B03C();
        sub_22C90AFFC();
      }

      while (v2 != v4);
      return v9;
    }
  }

  return result;
}

void sub_22C8D5C44()
{
  sub_22C36BA7C();
  v20 = sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0);
  sub_22C369824(v20);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C36FF70();
  v4 = sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
  sub_22C369824(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C38ACC0();
  if (v0)
  {
    v8 = sub_22C8E6474();
    sub_22C3B7BB0(v8, v9, v10);
    sub_22C8E63D8();
    do
    {
      v11 = sub_22C37F370();
      sub_22C4E719C(v11, v12, &qword_27D9BAD60, &qword_22C91D9D0);
      sub_22C37A4D4();
      sub_22C37F69C();
      if (v13)
      {
        sub_22C8E64A4();
        sub_22C3B7BB0(v17, v18, v19);
      }

      v14 = sub_22C371FC0();
      sub_22C4E7208(v14, v15, &qword_27D9BA910, &unk_22C90C960);
      sub_22C8E65D8();
    }

    while (!v16);
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

uint64_t sub_22C8D5DC4(uint64_t a1)
{
  v2 = sub_22C902A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C3A5908(&qword_27D9BAC60, &qword_22C90D500);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v22 = MEMORY[0x277D84F90];
    sub_22C3B8058(0, v11, 0);
    v12 = v22;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v19 = *(v13 + 56);
    v20 = v14;
    do
    {
      v20(v6, v15, v2);
      swift_dynamicCast();
      v22 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_22C3B8058(v16 > 1, v17 + 1, 1);
        v12 = v22;
      }

      *(v12 + 16) = v17 + 1;
      sub_22C4E7208(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, &qword_27D9BAC60, &qword_22C90D500);
      v15 += v19;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_22C8D6008()
{
  sub_22C369980();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = sub_22C90225C();
  v0[8] = v7;
  sub_22C3699B8(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = sub_22C3699D4();
  v11 = sub_22C906ECC();
  v0[11] = v11;
  sub_22C3699B8(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = sub_22C3699D4();
  v15 = sub_22C9063DC();
  v0[14] = v15;
  sub_22C3699B8(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = sub_22C36D0D4();
  v0[17] = swift_task_alloc();
  v19 = sub_22C9020CC();
  v0[18] = v19;
  sub_22C3699B8(v19);
  v0[19] = v20;
  v22 = *(v21 + 64);
  v0[20] = sub_22C3699D4();
  v23 = sub_22C3A5908(&qword_27D9C1460, &qword_22C92D678);
  sub_22C369914(v23);
  v25 = *(v24 + 64);
  v0[21] = sub_22C3699D4();
  v26 = sub_22C3A5908(&qword_27D9C1468, &qword_22C92D680);
  sub_22C369914(v26);
  v28 = *(v27 + 64);
  v0[22] = sub_22C3699D4();
  v29 = sub_22C3A5908(&qword_27D9BF498, &unk_22C922750);
  sub_22C369914(v29);
  v31 = *(v30 + 64);
  v0[23] = sub_22C36D0D4();
  v0[24] = swift_task_alloc();
  v32 = sub_22C90944C();
  v0[25] = v32;
  sub_22C3699B8(v32);
  v0[26] = v33;
  v35 = *(v34 + 64);
  v0[27] = sub_22C36D0D4();
  v0[28] = swift_task_alloc();
  v36 = sub_22C902A7C();
  v0[29] = v36;
  sub_22C3699B8(v36);
  v0[30] = v37;
  v39 = *(v38 + 64);
  v0[31] = sub_22C3699D4();
  v40 = sub_22C902ADC();
  v0[32] = v40;
  sub_22C3699B8(v40);
  v0[33] = v41;
  v43 = *(v42 + 64);
  v0[34] = sub_22C3699D4();
  v44 = sub_22C90281C();
  v0[35] = v44;
  sub_22C3699B8(v44);
  v0[36] = v45;
  v47 = *(v46 + 64);
  v0[37] = sub_22C3699D4();
  v48 = sub_22C9028FC();
  v0[38] = v48;
  sub_22C3699B8(v48);
  v0[39] = v49;
  v51 = *(v50 + 64);
  v0[40] = sub_22C3699D4();
  v52 = sub_22C902BDC();
  v0[41] = v52;
  sub_22C3699B8(v52);
  v0[42] = v53;
  v55 = *(v54 + 64);
  v0[43] = sub_22C3699D4();
  v56 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v56);
  v58 = *(v57 + 64);
  v0[44] = sub_22C3699D4();
  v59 = sub_22C9029AC();
  v0[45] = v59;
  sub_22C3699B8(v59);
  v0[46] = v60;
  v62 = *(v61 + 64);
  v0[47] = sub_22C3699D4();
  v63 = sub_22C9093BC();
  v0[48] = v63;
  sub_22C3699B8(v63);
  v0[49] = v64;
  v66 = *(v65 + 64);
  v0[50] = sub_22C36D0D4();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v67 = sub_22C9029DC();
  v0[54] = v67;
  sub_22C3699B8(v67);
  v0[55] = v68;
  v70 = *(v69 + 64);
  v0[56] = sub_22C36D0D4();
  v0[57] = swift_task_alloc();
  v71 = sub_22C902A4C();
  v0[58] = v71;
  sub_22C3699B8(v71);
  v0[59] = v72;
  v74 = *(v73 + 64);
  v0[60] = sub_22C3699D4();
  v75 = sub_22C90214C();
  v0[61] = v75;
  sub_22C3699B8(v75);
  v0[62] = v76;
  v78 = *(v77 + 64);
  v0[63] = sub_22C36D0D4();
  v0[64] = swift_task_alloc();
  v79 = sub_22C90033C();
  v0[65] = v79;
  sub_22C369914(v79);
  v81 = *(v80 + 64);
  v0[66] = sub_22C36D0D4();
  v0[67] = swift_task_alloc();
  v82 = sub_22C901FAC();
  sub_22C369914(v82);
  v84 = *(v83 + 64);
  v0[68] = sub_22C36D0D4();
  v0[69] = swift_task_alloc();
  v0[70] = swift_task_alloc();
  v85 = sub_22C90069C();
  v0[71] = v85;
  sub_22C3699B8(v85);
  v0[72] = v86;
  v88 = *(v87 + 64);
  v0[73] = sub_22C36D0D4();
  v0[74] = swift_task_alloc();
  v0[75] = swift_task_alloc();
  v0[76] = swift_task_alloc();
  v0[77] = swift_task_alloc();
  v0[78] = swift_task_alloc();
  v0[79] = swift_task_alloc();
  v89 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v89);
  v91 = *(v90 + 64);
  v0[80] = sub_22C36D0D4();
  v0[81] = swift_task_alloc();
  v0[82] = swift_task_alloc();
  v0[83] = swift_task_alloc();
  v0[84] = swift_task_alloc();
  v92 = sub_22C902ABC();
  v0[85] = v92;
  sub_22C3699B8(v92);
  v0[86] = v93;
  v95 = *(v94 + 64);
  v0[87] = sub_22C3699D4();
  v96 = sub_22C908D6C();
  v0[88] = v96;
  sub_22C3699B8(v96);
  v0[89] = v97;
  v99 = *(v98 + 64);
  v0[90] = sub_22C36D0D4();
  v0[91] = swift_task_alloc();
  v100 = sub_22C90077C();
  v0[92] = v100;
  sub_22C3699B8(v100);
  v0[93] = v101;
  v103 = *(v102 + 64);
  v0[94] = sub_22C3699D4();
  v104 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v104);
  v106 = *(v105 + 64);
  v0[95] = sub_22C3699D4();
  v107 = sub_22C908EAC();
  v0[96] = v107;
  sub_22C3699B8(v107);
  v0[97] = v108;
  v110 = *(v109 + 64);
  v0[98] = sub_22C36D0D4();
  v0[99] = swift_task_alloc();
  v111 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v111);
  v113 = *(v112 + 64);
  v0[100] = sub_22C36D0D4();
  v0[101] = swift_task_alloc();
  v0[102] = swift_task_alloc();
  v114 = sub_22C90769C();
  v0[103] = v114;
  sub_22C3699B8(v114);
  v0[104] = v115;
  v117 = *(v116 + 64);
  v0[105] = sub_22C36D0D4();
  v0[106] = swift_task_alloc();
  v118 = sub_22C9027EC();
  v0[107] = v118;
  sub_22C3699B8(v118);
  v0[108] = v119;
  v121 = *(v120 + 64);
  v0[109] = sub_22C3699D4();
  v122 = sub_22C907DEC();
  v0[110] = v122;
  sub_22C3699B8(v122);
  v0[111] = v123;
  v125 = *(v124 + 64);
  v0[112] = sub_22C3699D4();
  v126 = sub_22C9026BC();
  v0[113] = v126;
  sub_22C3699B8(v126);
  v0[114] = v127;
  v129 = *(v128 + 64);
  v0[115] = sub_22C36D0D4();
  v0[116] = swift_task_alloc();
  v0[117] = swift_task_alloc();
  v0[118] = swift_task_alloc();
  v0[119] = swift_task_alloc();
  v130 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v130, v131, v132);
}

void sub_22C8D6A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 952);
  v14 = *(v12 + 944);
  v15 = *(v12 + 912);
  v16 = *(v12 + 904);
  v17 = *(v12 + 896);
  v18 = *(v12 + 888);
  v19 = *(v12 + 880);
  v20 = *(v12 + 40);
  v21 = *(v12 + 24);
  sub_22C906EBC();
  sub_22C907DAC();
  (*(v18 + 8))(v17, v19);
  sub_22C8DAEE4();
  v23 = v22;
  *(v12 + 960) = v22;
  v24 = *(v15 + 16);
  *(v12 + 968) = v24;
  *(v12 + 976) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25 = sub_22C370018();
  v24(v25);
  v27 = *(v15 + 88);
  v26 = v15 + 88;
  *(v12 + 984) = v27;
  *(v12 + 992) = v26 & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v28 = sub_22C36ECB4();
  v30 = v29(v28);
  v31 = *MEMORY[0x277D1CBF0];
  *(v12 + 1264) = *MEMORY[0x277D1CBF0];
  v32 = MEMORY[0x277D1CBA8];
  if (v30 == v31)
  {
    v33 = *(v12 + 944);
    sub_22C37B90C();
    v35 = *(v12 + 152);
    v34 = *(v12 + 160);
    v36 = *(v12 + 144);
    v38 = sub_22C37EBDC(v37);
    v39(v38);
    v41 = *(v35 + 32);
    v40 = v35 + 32;
    v42 = sub_22C37EF10();
    v43(v42);
    v44 = v34;
    if (sub_22C9020BC())
    {
      v45 = *(v12 + 824);
      v46 = *(v12 + 808);
      v47 = *(v12 + 24);
      sub_22C906E9C();
      v48 = sub_22C37EF1C();
      sub_22C36D0A8(v48, v49, v45);
      if (v50)
      {
        v51 = *(v12 + 808);

        v52 = &qword_27D9BF330;
        v53 = &unk_22C923250;
LABEL_24:
        sub_22C36DD28(v51, v52, v53);
        v129 = *(v12 + 136);
        v131 = *(v12 + 96);
        v130 = *(v12 + 104);
        v132 = *(v12 + 88);
        v133 = *(v12 + 24);
        sub_22C90405C();
        (*(v131 + 16))(v130, v133, v132);
        v134 = sub_22C9063CC();
        v135 = sub_22C90AADC();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = *(v12 + 824);
          v137 = *(v12 + 800);
          v138 = *(v12 + 104);
          v139 = sub_22C36FB44();
          v140 = sub_22C370060();
          v526[0] = v140;
          *v139 = 136315138;
          sub_22C906E9C();
          v141 = sub_22C374568();
          sub_22C36D0A8(v141, v142, v136);
          if (v50)
          {
            sub_22C36DD28(*(v12 + 800), &qword_27D9BF330, &unk_22C923250);
            v254 = 0;
            v256 = 0xE000000000000000;
          }

          else
          {
            v251 = *(v12 + 832);
            v252 = *(v12 + 824);
            v253 = *(v12 + 800);
            v254 = sub_22C90768C();
            v256 = v255;
            (*(v251 + 8))(v253, v252);
          }

          v257 = *(v12 + 136);
          v258 = *(v12 + 112);
          v259 = *(v12 + 120);
          (*(*(v12 + 96) + 8))(*(v12 + 104), *(v12 + 88));
          v260 = sub_22C36F9F4(v254, v256, v526);

          *(v139 + 4) = v260;
          _os_log_impl(&dword_22C366000, v134, v135, "The tool has provided an inAppResponse but we are unable to infer the bundleId. toolId: %s", v139, 0xCu);
          sub_22C36FF94(v140);
          sub_22C3699EC();
          sub_22C3699EC();

          (*(v259 + 8))(v257, v258);
        }

        else
        {
          v173 = *(v12 + 136);
          v174 = *(v12 + 112);
          v175 = *(v12 + 120);
          v177 = *(v12 + 96);
          v176 = *(v12 + 104);
          v178 = *(v12 + 88);

          v179 = *(v177 + 8);
          v180 = sub_22C36ECB4();
          v181(v180);
          v182 = *(v175 + 8);
          v183 = sub_22C37170C();
          v184(v183);
        }

        v515 = *(v12 + 952);
        v261 = *(v12 + 912);
        v262 = *(v12 + 904);
        v264 = *(v12 + 152);
        v263 = *(v12 + 160);
        v265 = *(v12 + 144);
        sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
        v266 = sub_22C9023BC();
        sub_22C369824(v266);
        v268 = v267;
        v270 = *(v269 + 72);
        v271 = (*(v267 + 80) + 32) & ~*(v267 + 80);
        v272 = swift_allocObject();
        *(v272 + 16) = xmmword_22C90F800;
        sub_22C90237C();
        (*(v268 + 104))(v272 + v271, *MEMORY[0x277D1C988], v266);
        v273 = *(v264 + 8);
        v274 = sub_22C36D264();
        v275(v274);
        (*(v261 + 8))(v515, v262);
        goto LABEL_61;
      }

      v122 = *(v12 + 200);
      v123 = *(v12 + 184);
      v124 = *(v12 + 32);
      (*(*(v12 + 832) + 32))(*(v12 + 840), *(v12 + 808), *(v12 + 824));
      sub_22C87ACCC(v123);
      v125 = sub_22C37EF1C();
      v127 = sub_22C370B74(v125, v126, v122);
      v128 = *(v12 + 832);
      if (v127 == 1)
      {
        v51 = *(v12 + 184);
        (*(v128 + 8))(*(v12 + 840), *(v12 + 824));

        v52 = &qword_27D9BF498;
        v53 = &unk_22C922750;
        goto LABEL_24;
      }

      v185 = *(v12 + 208);
      v44 = *(v12 + 216);
      v495 = *(v12 + 200);
      v500 = *(v12 + 840);
      v506 = *(v12 + 824);
      v186 = *(v12 + 152);
      v513 = *(v12 + 144);
      v520 = *(v12 + 160);
      (*(v185 + 32))(v44, *(v12 + 184));
      sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
      v187 = sub_22C9023BC();
      sub_22C369824(v187);
      v189 = v188;
      v191 = *(v190 + 72);
      v34 = (*(v188 + 80) + 32) & ~*(v188 + 80);
      v32 = MEMORY[0x277D1CBA8];
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_22C90F800;
      sub_22C90943C();
      sub_22C90237C();
      (*(v189 + 104))(v63 + v34, *MEMORY[0x277D1C988], v187);
      v192 = *(v185 + 8);
      v40 = v185 + 8;
      v192(v44, v495);
      v193 = *(v128 + 8);
      v36 = (v128 + 8);
      v193(v500, v506);
      (*(v186 + 8))(v520, v513);
LABEL_50:
      v241 = sub_22C373D34();
      v242(v241);
      v243 = sub_22C36BBCC();
      if ((v40)(v243) == v34)
      {
        v244 = sub_22C8E63B8();
        v36(v244);
        if (*(v44 + 16))
        {

          v245 = *(v12 + 960);
LABEL_58:
          v250 = sub_22C386708();
          v36(v250);
LABEL_61:
          sub_22C381440();
          v276 = *(v12 + 840);
          v277 = *(v12 + 816);
          v439 = *(v12 + 808);
          v440 = *(v12 + 800);
          v441 = *(v12 + 792);
          v442 = *(v12 + 784);
          v443 = *(v12 + 760);
          v444 = *(v12 + 752);
          v445 = *(v12 + 728);
          v446 = *(v12 + 720);
          v447 = *(v12 + 696);
          v448 = *(v12 + 672);
          v449 = *(v12 + 664);
          v450 = *(v12 + 656);
          v451 = *(v12 + 648);
          v452 = *(v12 + 640);
          v453 = *(v12 + 632);
          v454 = *(v12 + 624);
          v455 = *(v12 + 616);
          v456 = *(v12 + 608);
          v457 = *(v12 + 600);
          v458 = *(v12 + 592);
          v459 = *(v12 + 584);
          v460 = *(v12 + 560);
          v461 = *(v12 + 552);
          v462 = *(v12 + 544);
          v463 = *(v12 + 536);
          v464 = *(v12 + 528);
          v465 = *(v12 + 512);
          v466 = *(v12 + 504);
          v467 = *(v12 + 480);
          v468 = *(v12 + 456);
          v469 = *(v12 + 448);
          v470 = *(v12 + 424);
          v471 = *(v12 + 416);
          v472 = *(v12 + 408);
          v473 = *(v12 + 400);
          v474 = *(v12 + 376);
          v475 = *(v12 + 352);
          v476 = *(v12 + 344);
          v477 = *(v12 + 320);
          v478 = *(v12 + 296);
          v479 = *(v12 + 272);
          v480 = *(v12 + 248);
          v481 = *(v12 + 224);
          v482 = *(v12 + 216);
          v483 = *(v12 + 192);
          v485 = *(v12 + 184);
          v488 = *(v12 + 176);
          v491 = *(v12 + 168);
          v492 = *(v12 + 160);
          v497 = *(v12 + 136);
          v502 = *(v12 + 128);
          v508 = *(v12 + 104);
          v516 = *(v12 + 80);

          v278 = *(v12 + 8);
          sub_22C372034();

          v281(v279, v280, v281, v282, v283, v284, v285, v286, a9, a10, a11, a12);
          return;
        }

        v249 = *(v12 + 960);
      }

      else
      {
        v246 = *v32;
        sub_22C372F60();
        if (v50)
        {
          v526[0] = v44;
          sub_22C3CF7C8(v63);
          v247 = sub_22C36A608();
          v36(v247);
          goto LABEL_58;
        }

        v248 = sub_22C36A608();
        v36(v248);
      }

      goto LABEL_58;
    }

    if (*(v23 + 16))
    {
      (*(*(v12 + 152) + 8))(*(v12 + 160), *(v12 + 144));
      v63 = MEMORY[0x277D84F90];
      goto LABEL_50;
    }

    v167 = *(v12 + 400);
    v168 = *(v12 + 160);
    sub_22C90207C();
    v169 = swift_task_alloc();
    *(v12 + 1216) = v169;
    *v169 = v12;
    v169[1] = sub_22C8DA3A0;
    v170 = *(v12 + 400);
    goto LABEL_34;
  }

  if (v30 != *MEMORY[0x277D1CBA8])
  {
    v64 = MEMORY[0x277D84F90];
    if (v30 == *MEMORY[0x277D1CBB0])
    {
      v65 = *(v12 + 944);
      sub_22C37B90C();
      v67 = *(v12 + 288);
      v66 = *(v12 + 296);
      v68 = *(v12 + 280);
      v70 = sub_22C37EBDC(v69);
      v71(v70);
      v72 = *(v67 + 32);
      v73 = sub_22C36BA00();
      v75 = v74(v73);
      v76 = MEMORY[0x2318AFCE0](v75);
      v77 = *(v76 + 16);
      if (v77)
      {
        v78 = *(v12 + 776);
        v79 = *(v12 + 240);
        v80 = *(v12 + 208);
        v526[0] = v64;
        sub_22C3B8078(0, v77, 0);
        v81 = v64;
        v82 = *(v78 + 16);
        v78 += 16;
        v83 = *(v78 + 64);
        sub_22C36BA94();
        v85 = v76 + v84;
        v499 = *(v78 + 56);
        v505 = v86;
        v484 = (v80 + 8);
        v486 = (v80 + 32);
        v494 = (v78 - 8);
        do
        {
          v88 = *(v12 + 192);
          v87 = *(v12 + 200);
          v505(*(v12 + 784), v85, *(v12 + 768));
          sub_22C908E1C();
          sub_22C36D0A8(v88, 1, v87);
          if (v50)
          {
            v89 = *(v12 + 784);
            v90 = *(v12 + 536);
            v91 = *(v12 + 520);
            v92 = *(v12 + 248);
            v94 = *(v12 + 168);
            v93 = *(v12 + 176);
            sub_22C36DD28(*(v12 + 192), &qword_27D9BF498, &unk_22C922750);
            sub_22C908E8C();
            sub_22C90031C();
            sub_22C36A748();
            sub_22C36C640(v95, v96, v97, v91);
            sub_22C90989C();
            sub_22C36A748();
            sub_22C36C640(v98, v99, v100, v101);
            sub_22C8E6500();
          }

          else
          {
            v102 = *(v12 + 536);
            v103 = *(v12 + 520);
            v489 = *(v12 + 248);
            v104 = *(v12 + 224);
            v105 = *(v12 + 200);
            v106 = *(v12 + 168);
            v107 = *(v12 + 176);
            (*v486)(v104, *(v12 + 192), v105);
            sub_22C90942C();
            sub_22C90031C();
            sub_22C36A748();
            sub_22C36C640(v108, v109, v110, v103);
            sub_22C90989C();
            sub_22C36A748();
            sub_22C36C640(v111, v112, v113, v114);
            sub_22C90943C();
            sub_22C902A5C();
            (*v484)(v104, v105);
          }

          (*v494)(*(v12 + 784), *(v12 + 768));
          v526[0] = v81;
          v116 = *(v81 + 16);
          v115 = *(v81 + 24);
          if (v116 >= v115 >> 1)
          {
            v121 = sub_22C369AB0(v115);
            sub_22C3B8078(v121, v116 + 1, 1);
            v81 = v526[0];
          }

          v117 = *(v12 + 248);
          v118 = *(v12 + 232);
          *(v81 + 16) = v116 + 1;
          sub_22C37054C();
          (*(v120 + 32))(v81 + v119 + *(v120 + 72) * v116);
          v85 += v499;
          --v77;
        }

        while (v77);
      }

      v213 = *(v12 + 648);
      v214 = *(v12 + 568);
      v215 = *(v12 + 24);
      sub_22C906E5C();
      v216 = sub_22C370B74(v213, 1, v214);
      v217 = *(v12 + 648);
      v218 = *(v12 + 592);
      if (v216 == 1)
      {
        v219 = *(v12 + 568);
        v220 = *(v12 + 592);
        sub_22C90068C();
        sub_22C36D0A8(v217, 1, v219);
        if (!v50)
        {
          sub_22C36DD28(*(v12 + 648), &qword_27D9BB190, qword_22C90DD90);
        }
      }

      else
      {
        sub_22C376B5C();
        v221();
      }

      v222 = *(v12 + 632);
      v36 = *(v12 + 592);
      sub_22C8E6540();
      v223 = *(v12 + 560);
      v224 = *(v12 + 496);
      v487 = *(v12 + 512);
      v490 = *(v12 + 488);
      v501 = *(v12 + 504);
      v507 = *(v12 + 288);
      v225 = *(v12 + 272);
      v514 = *(v12 + 280);
      v521 = *(v12 + 296);
      v227 = *(v12 + 256);
      v226 = *(v12 + 264);
      v496 = v226;
      sub_22C8E662C(v228);
      v229(v222);
      sub_22C906E1C();
      sub_22C370018();
      sub_22C902ACC();
      v230 = *(v226 + 16);
      v40 = v487;
      v230(v487, v225, v227);
      (*(v224 + 104))(v487, *MEMORY[0x277D1C4F8], v490);
      sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
      v231 = sub_22C8E666C();
      sub_22C369824(v231);
      v34 = v232;
      v234 = *(v233 + 72);
      v235 = *(v232 + 80);
      sub_22C36DCCC();
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_22C90F800;
      (*(v224 + 16))(v501, v487, v490);
      sub_22C90239C();
      v236 = *(v34 + 104);
      LODWORD(v34) = v34 + 104;
      v236(v36 + v44, *MEMORY[0x277D1C9A0], v231);
      v237 = sub_22C36CDBC();
      v238(v237, v490);
      (*(v496 + 8))(v225, v227);
      v63 = v44;
      goto LABEL_48;
    }

    if (v30 == *MEMORY[0x277D1CBD0])
    {
      v151 = *(v12 + 944);
      sub_22C37B90C();
      v153 = *(v12 + 376);
      v152 = *(v12 + 384);
      v154 = *(v12 + 360);
      v155 = *(v12 + 368);
      v156 = *(v12 + 352);
      v158 = sub_22C37EBDC(v157);
      v159(v158);
      v160 = *(v155 + 32);
      v161 = sub_22C37EF10();
      v162(v161);
      sub_22C90296C();
      if (sub_22C370B74(v156, 1, v152) == 1)
      {
        v164 = *(v12 + 376);
        v163 = *(v12 + 384);
        v165 = *(v12 + 352);
        v166 = *(v12 + 416);
        sub_22C90299C();
        sub_22C369A54(v165);
        if (!v50)
        {
          sub_22C36DD28(*(v12 + 352), &qword_27D9BB908, &qword_22C910960);
        }
      }

      else
      {
        (*(*(v12 + 392) + 32))(*(v12 + 416), *(v12 + 352), *(v12 + 384));
      }

      v322 = swift_task_alloc();
      *(v12 + 1112) = v322;
      *v322 = v12;
      v322[1] = sub_22C8D9500;
      v324 = *(v12 + 48);
      v323 = *(v12 + 56);
      sub_22C386674(*(v12 + 952));
      goto LABEL_70;
    }

    if (v30 == *MEMORY[0x277D1CBD8])
    {
      v194 = *(v12 + 944);
      sub_22C37B90C();
      v195 = *(v12 + 664);
      v196 = *(v12 + 568);
      v198 = *(v12 + 472);
      v197 = *(v12 + 480);
      v199 = *(v12 + 464);
      v201 = sub_22C8E6578(v200);
      v202(v201);
      v203 = *(v198 + 32);
      v204 = sub_22C37E5D0();
      v205(v204);
      sub_22C906E5C();
      v206 = sub_22C36CCF8();
      v208 = sub_22C370B74(v206, v207, v196);
      v209 = *(v12 + 664);
      v210 = *(v12 + 624);
      if (v208 == 1)
      {
        v211 = *(v12 + 568);
        v212 = *(v12 + 624);
        sub_22C90068C();
        sub_22C369A54(v209);
        if (!v50)
        {
          sub_22C36DD28(*(v12 + 664), &qword_27D9BB190, qword_22C90DD90);
        }
      }

      else
      {
        sub_22C376B5C();
        v345();
      }

      v346 = *(v12 + 616);
      sub_22C8E6540();
      v347 = *(v12 + 552);
      v348 = *(v12 + 480);
      sub_22C8E662C(v349);
      v350();
      sub_22C906E1C();
      v351 = v348;
      v352 = sub_22C902A3C();
      *(v12 + 1064) = v352;
      v353 = *(v352 + 16);
      *(v12 + 1072) = v353;
      *(v12 + 1088) = v64;
      *(v12 + 1080) = 0;
      if (v353)
      {
        if (!*(v352 + 16))
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v354 = *(v12 + 384);
        v355 = *(v12 + 392);
        v356 = *(v355 + 16);
        v357 = *(v355 + 80);
        v358 = sub_22C36EEE4(*(v12 + 424));
        v359(v358);
        v360 = swift_task_alloc();
        *(v12 + 1096) = v360;
        *v360 = v12;
        sub_22C375C88(v360);
LABEL_34:
        sub_22C386674(v170);
        sub_22C372034();

        sub_22C8DB640(v171);
        return;
      }

      v379 = *(v12 + 240);

      sub_22C8E6588();
      while (v194 != v199)
      {
        if (v199 >= *(v64 + 16))
        {
          goto LABEL_121;
        }

        sub_22C8E65C0();
        if (v380)
        {
          goto LABEL_122;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v26 > *(v351 + 24) >> 1)
        {
          sub_22C383560();
          sub_22C597504();
          v351 = v381;
        }

        if (*(v347 + 16))
        {
          sub_22C386D40();
          if (v382 != v380)
          {
            goto LABEL_124;
          }

          v383 = *(v12 + 232);
          v384 = *(v379 + 80);
          sub_22C37BEE8();
          sub_22C8E6608(v385);

          if (v348)
          {
            v386 = *(v351 + 16);
            v380 = __OFADD__(v386, v348);
            v387 = v386 + v348;
            if (v380)
            {
              goto LABEL_128;
            }

            *(v351 + 16) = v387;
          }
        }

        else
        {

          if (v348)
          {
            goto LABEL_123;
          }
        }

        ++v199;
      }

      v388 = *(v12 + 624);
      v389 = *(v12 + 616);
      v390 = *(v12 + 552);
      v391 = *(v12 + 512);
      v392 = *(v12 + 496);
      v504 = *(v12 + 488);
      v511 = *(v12 + 472);
      v36 = *(v12 + 456);
      v518 = *(v12 + 464);
      v524 = *(v12 + 480);
      v34 = *(v12 + 432);
      v393 = *(v12 + 440);
    }

    else
    {
      if (v30 != *MEMORY[0x277D1CBC8])
      {
        v361 = *(v12 + 952);
        v362 = *(v12 + 936);
        v363 = *(v12 + 904);
        v364 = *(v12 + 128);
        sub_22C90405C();
        v365 = sub_22C36BA00();
        v24(v365);
        v366 = sub_22C9063CC();
        v367 = sub_22C90AACC();
        v368 = os_log_type_enabled(v366, v367);
        v34 = *(v12 + 936);
        if (v368)
        {
          v369 = *(v12 + 928);
          v503 = v367;
          v370 = *(v12 + 912);
          v371 = *(v12 + 904);
          v510 = *(v12 + 120);
          v517 = *(v12 + 112);
          v523 = *(v12 + 128);
          v40 = sub_22C36FB44();
          v498 = sub_22C370060();
          v526[0] = v498;
          *v40 = 136315138;
          (v24)(v369, v34, v371);
          v372 = sub_22C90A1AC();
          v374 = v373;
          v375 = *(v370 + 8);
          v493 = v366;
          v36 = ((v370 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v375(v34, v371);
          v376 = sub_22C36F9F4(v372, v374, v526);

          *(v40 + 4) = v376;
          _os_log_impl(&dword_22C366000, v493, v503, "Not building a result model for statement outcome %s", v40, 0xCu);
          v44 = v498;
          sub_22C36FF94(v498);
          sub_22C3699EC();
          sub_22C3699EC();

          v377 = sub_22C3884E0();
          v378(v377);
        }

        else
        {
          v410 = *(v12 + 912);
          v411 = *(v12 + 904);
          v412 = *(v12 + 120);
          v40 = *(v12 + 128);
          v413 = *(v12 + 112);

          v414 = *(v410 + 8);
          v44 = v410 + 8;
          v375 = v414;
          v36 = (v44 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v414(v34, v411);
          v415 = *(v412 + 8);
          v416 = sub_22C36CA88();
          v417(v416);
        }

        v375(*(v12 + 944), *(v12 + 904));
        v63 = MEMORY[0x277D84F90];
        goto LABEL_49;
      }

      v326 = *(v12 + 944);
      sub_22C37B90C();
      v327 = *(v12 + 656);
      v328 = *(v12 + 568);
      v330 = *(v12 + 312);
      v329 = *(v12 + 320);
      v331 = *(v12 + 304);
      v333 = sub_22C8E6578(v332);
      v334(v333);
      v335 = *(v330 + 32);
      v336 = sub_22C37E5D0();
      v337(v336);
      sub_22C906E5C();
      v338 = sub_22C36CCF8();
      v340 = sub_22C370B74(v338, v339, v328);
      v341 = *(v12 + 656);
      v342 = *(v12 + 608);
      if (v340 == 1)
      {
        v343 = *(v12 + 568);
        v344 = *(v12 + 608);
        sub_22C90068C();
        sub_22C369A54(v341);
        if (!v50)
        {
          sub_22C36DD28(*(v12 + 656), &qword_27D9BB190, qword_22C90DD90);
        }
      }

      else
      {
        sub_22C376B5C();
        v394();
      }

      v395 = *(v12 + 600);
      sub_22C8E6540();
      v396 = *(v12 + 544);
      v397 = *(v12 + 320);
      sub_22C8E662C(v398);
      v399();
      sub_22C906E1C();
      v400 = v397;
      v401 = sub_22C9028EC();
      *(v12 + 1168) = v401;
      v402 = *(v401 + 16);
      *(v12 + 1176) = v402;
      *(v12 + 1192) = v64;
      *(v12 + 1184) = 0;
      if (v402)
      {
        if (!*(v401 + 16))
        {
LABEL_132:
          __break(1u);
          return;
        }

        v403 = *(v12 + 384);
        v404 = *(v12 + 392);
        v405 = *(v404 + 16);
        v406 = *(v404 + 80);
        v407 = sub_22C36EEE4(*(v12 + 408));
        v408(v407);
        v409 = swift_task_alloc();
        *(v12 + 1200) = v409;
        *v409 = v12;
        sub_22C38195C(v409);
        goto LABEL_34;
      }

      v418 = *(v12 + 240);

      sub_22C8E6588();
      while (v326 != v331)
      {
        if (v331 >= *(v64 + 16))
        {
          goto LABEL_125;
        }

        sub_22C8E65C0();
        if (v380)
        {
          goto LABEL_126;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v26 > *(v400 + 24) >> 1)
        {
          sub_22C383560();
          sub_22C597504();
          v400 = v419;
        }

        if (*(v396 + 16))
        {
          sub_22C386D40();
          if (v382 != v380)
          {
            goto LABEL_129;
          }

          v420 = *(v12 + 232);
          v421 = *(v418 + 80);
          sub_22C37BEE8();
          sub_22C8E6608(v422);

          if (v397)
          {
            v423 = *(v400 + 16);
            v380 = __OFADD__(v423, v397);
            v424 = v423 + v397;
            if (v380)
            {
              goto LABEL_130;
            }

            *(v400 + 16) = v424;
          }
        }

        else
        {

          if (v397)
          {
            goto LABEL_127;
          }
        }

        ++v331;
      }

      v425 = *(v12 + 608);
      v426 = *(v12 + 600);
      v427 = *(v12 + 544);
      v391 = *(v12 + 512);
      v392 = *(v12 + 496);
      v393 = *(v12 + 440);
      v36 = *(v12 + 448);
      v34 = *(v12 + 432);
      v504 = *(v12 + 488);
      v512 = *(v12 + 312);
      v519 = *(v12 + 304);
      v525 = *(v12 + 320);
    }

    sub_22C9029CC();
    sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
    v428 = sub_22C8E666C();
    sub_22C369824(v428);
    v430 = v429;
    v432 = *(v431 + 72);
    v433 = (*(v429 + 80) + 32) & ~*(v429 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_22C90F800;
    (*(v393 + 16))(v391, v36, v34);
    v434 = *(v392 + 104);
    v40 = v392 + 104;
    v434(v391, *MEMORY[0x277D1C4E8], v504);
    sub_22C90239C();
    v435 = v44 + v433;
    v63 = v44;
    (*(v430 + 104))(v435, *MEMORY[0x277D1C9A0], v428);
    v436 = *(v393 + 8);
    v437 = sub_22C370018();
    v438(v437);
LABEL_48:
    v239 = sub_22C3884E0();
    v240(v239);
LABEL_49:
    v32 = MEMORY[0x277D1CBA8];
    goto LABEL_50;
  }

  v54 = *(v12 + 944);
  sub_22C37B90C();
  v55 = *(v12 + 872);
  v56 = *(v12 + 864);
  v57 = *(v12 + 856);
  v58 = *(v12 + 824);
  v59 = *(v12 + 816);
  v61 = sub_22C8E6578(v60);
  v62(v61);
  (*(v56 + 32))(v55, v54, v57);
  sub_22C906E9C();
  sub_22C36D0A8(v59, 1, v58);
  if (!v50)
  {
    v143 = *(v12 + 760);
    v144 = *(v12 + 752);
    v145 = *(v12 + 32);
    v146 = (*(*(v12 + 832) + 32))(*(v12 + 848), *(v12 + 816), *(v12 + 824));
    MEMORY[0x2318B5FE0](v146);
    sub_22C370018();
    sub_22C908AFC();
    v287 = *(v12 + 792);
    v288 = *(v12 + 776);
    v289 = *(v12 + 768);
    v290 = *(v12 + 760);
    v291 = *(v12 + 712);
    (*(*(v12 + 744) + 8))(*(v12 + 752), *(v12 + 736));
    sub_22C36BECC();
    sub_22C36C640(v292, v293, v294, v289);
    v295 = *(v288 + 32);
    v296 = sub_22C37170C();
    v297(v296);
    v298 = sub_22C908DEC();
    v299 = 0;
    v522 = *(v298 + 16);
    v509 = *MEMORY[0x277D72130];
    while (1)
    {
      v147 = v522 != v299;
      if (v522 == v299)
      {
LABEL_67:
        v310 = *(v12 + 848);
        v311 = *(v12 + 832);
        v312 = *(v12 + 824);
        v313 = *(v12 + 792);
        v314 = *(v12 + 776);
        v315 = *(v12 + 768);

        v316 = *(v314 + 8);
        v317 = sub_22C36CA88();
        v318(v317);
        v319 = *(v311 + 8);
        v320 = sub_22C36D264();
        v321(v320);
        goto LABEL_28;
      }

      if (v299 >= *(v298 + 16))
      {
        break;
      }

      v300 = *(v12 + 728);
      v301 = *(v12 + 720);
      v302 = *(v12 + 704);
      v303 = *(v291 + 80);
      sub_22C36BA94();
      v306 = v305;
      (*(v291 + 16))(v300, v305 + v304 + *(v291 + 72) * v299++, v302);
      (*(v291 + 104))(v301, v509, v302);
      sub_22C36ECB4();
      v307 = sub_22C908D5C();
      v308 = *(v291 + 8);
      v309 = sub_22C36CA88();
      v308(v309);
      (v308)(v300, v302);
      v298 = v306;
      if (v307)
      {
        goto LABEL_67;
      }
    }

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
    goto LABEL_131;
  }

  sub_22C36DD28(*(v12 + 816), &qword_27D9BF330, &unk_22C923250);
  v147 = 0;
LABEL_28:
  *(v12 + 1268) = v147;
  v148 = swift_task_alloc();
  *(v12 + 1000) = v148;
  *v148 = v12;
  v148[1] = sub_22C8D866C;
  v150 = *(v12 + 48);
  v149 = *(v12 + 56);
  sub_22C386674(*(v12 + 952));
LABEL_70:
  sub_22C372034();

  sub_22C87B6F8();
}

uint64_t sub_22C8D866C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = *(v3 + 1000);
  *v2 = *v0;
  v1[126] = v5;
  v1[127] = v6;
  v1[128] = v7;
  v1[129] = v8;

  v9 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8D8760()
{
  v18 = v0[127];
  v19 = v0[128];
  v1 = v0[126];
  v20 = v0[109];
  v21 = v0[129];
  v2 = v0[84];
  v3 = v0[79];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[67];
  v8 = v0[66];
  v10 = v0[2];
  v9 = v0[3];
  sub_22C906E5C();
  v11 = *(v4 + 16);
  v12 = sub_22C37F370();
  v13(v12);
  sub_22C906E1C();
  sub_22C90031C();
  v14 = sub_22C90031C();
  v15 = MEMORY[0x2318AFCB0](v14);
  v0[130] = v15;
  v16 = swift_task_alloc();
  v0[131] = v16;
  *v16 = v0;
  v16[1] = sub_22C8D88A0;

  return sub_22C8DB1B8(v15);
}

uint64_t sub_22C8D88A0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = *(v3 + 1048);
  v5 = *(v3 + 1040);
  v6 = *v0;
  sub_22C369970();
  *v7 = v6;
  *(v9 + 1056) = v8;

  v10 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_22C8D89A0()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1268);
  v4 = *(v0 + 864);
  v39 = *(v0 + 856);
  v40 = *(v0 + 872);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  sub_22C8E65A8();
  v8 = *(v0 + 512);
  v9 = *(v0 + 496);
  v38 = *(v0 + 488);
  sub_22C902AAC();
  sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
  v10 = sub_22C9023BC();
  sub_22C369824(v10);
  v12 = v11;
  v14 = *(v13 + 72);
  v15 = *(v11 + 80);
  sub_22C36DCCC();
  v16 = swift_allocObject();
  v17 = sub_22C37B180(v16, xmmword_22C90F800);
  v18(v17);
  (*(v9 + 104))(v8, *MEMORY[0x277D1C4F0], v38);
  sub_22C90239C();
  (*(v12 + 104))(&v1[v16], *MEMORY[0x277D1C9A0], v10);
  v20 = *(v6 + 8);
  v19 = v6 + 8;
  v20(v5, v7);
  v21 = sub_22C8E6520();
  v22(v21);
  v23 = sub_22C373D34();
  v24(v23);
  v25 = sub_22C36BBCC();
  if (v8(v25) == v5)
  {
    v26 = sub_22C8E63B8();
    (v1)(v26);
    if (*(v19 + 16))
    {

      v27 = *(v0 + 960);
      goto LABEL_9;
    }

    v32 = *(v0 + 960);
  }

  else
  {
    v28 = *MEMORY[0x277D1CBA8];
    sub_22C372F60();
    if (v29)
    {
      sub_22C8E64F4();
      sub_22C3CF7C8(v16);
      v30 = sub_22C36A608();
      (v1)(v30);
      goto LABEL_9;
    }

    v31 = sub_22C36A608();
    (v1)(v31);
  }

LABEL_9:
  v33 = sub_22C386708();
  (v1)(v33);
  sub_22C38C2F4();
  v34 = *(v0 + 840);
  v35 = *(v0 + 816);
  sub_22C36B8A8();

  sub_22C3893F8();
  sub_22C372034();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22C8D8DE8()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = v3[137];
  v5 = v3[53];
  v6 = v3[49];
  v7 = v3[48];
  v8 = *v0;
  sub_22C369970();
  *v9 = v8;
  *(v11 + 1104) = v10;

  v12 = *(v6 + 8);
  v13 = sub_22C36BBCC();
  v14(v13);
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C8D8F24()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v4 = v1[136];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v1[136];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_39;
  }

  while (1)
  {
    sub_22C8E6598();
    if (v8)
    {
      sub_22C369AB0(v7);
      sub_22C3827B4();
      sub_22C597698();
      v6 = v66;
    }

    sub_22C3860CC(v1[138]);
    v9 = v1[135] + 1;
    v1[136] = v6;
    v1[135] = v9;
    result = v1[133];
    if (v9 != v1[134])
    {
      break;
    }

    v11 = v1[30];

    v12 = 0;
    v13 = *(v6 + 16);
    v14 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v13 == v12)
      {
        v30 = v1[78];
        v31 = v1[77];
        v32 = v1[69];
        v33 = v1[64];
        v34 = v1[62];
        v68 = v1[61];
        v69 = v1[59];
        v35 = v1[57];
        v70 = v1[58];
        v71 = v1[60];
        v36 = v1[55];
        v67 = v1[54];

        sub_22C8E65E4();
        sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
        v37 = sub_22C8E666C();
        sub_22C369824(v37);
        v39 = v38;
        v41 = *(v40 + 72);
        v42 = *(v38 + 80);
        sub_22C36DCCC();
        v43 = swift_allocObject();
        v44 = sub_22C386EBC(v43, xmmword_22C90F800);
        v45(v44);
        (*(v34 + 104))(v33, *MEMORY[0x277D1C4E8], v68);
        sub_22C90239C();
        (*(v39 + 104))(&v32[v43], *MEMORY[0x277D1C9A0], v37);
        v46 = sub_22C36CDBC();
        v47(v46, v6);
        v48 = sub_22C8E6520();
        v49(v48);
        v50 = sub_22C373D34();
        v51(v50);
        v52 = sub_22C36BBCC();
        if (v35(v52) == v39 + 104)
        {
          v53 = sub_22C8E63B8();
          (v32)(v53);
          if (*(v6 + 16))
          {

            v54 = v1[120];
            goto LABEL_31;
          }

          v59 = v1[120];
LABEL_30:
        }

        else
        {
          v55 = *MEMORY[0x277D1CBA8];
          sub_22C372F60();
          if (!v56)
          {
            v58 = sub_22C36A608();
            (v32)(v58);
            goto LABEL_30;
          }

          sub_22C8E64F4();
          sub_22C3CF7C8(v43);
          v57 = sub_22C36A608();
          (v32)(v57);
        }

LABEL_31:
        v60 = sub_22C386708();
        (v32)(v60);
        sub_22C38C2F4();
        v61 = v1[105];
        v62 = v1[102];
        sub_22C36B8A8();

        sub_22C3893F8();
        sub_22C372034();

        __asm { BRAA            X2, X16 }
      }

      if (v12 >= *(v6 + 16))
      {
        break;
      }

      sub_22C8E648C();
      if (v15)
      {
        goto LABEL_35;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v3 > *(v14 + 24) >> 1)
      {
        sub_22C383560();
        sub_22C597504();
        v14 = v16;
      }

      if (*(v2 + 16))
      {
        v17 = *(v14 + 16);
        v18 = *(v14 + 24);
        sub_22C37EEB4();
        if (v20 != v15)
        {
          goto LABEL_37;
        }

        v21 = v1[29];
        sub_22C377818(v19);

        if (v0)
        {
          v22 = *(v14 + 16);
          v15 = __OFADD__(v22, v0);
          v23 = v22 + v0;
          if (v15)
          {
            goto LABEL_38;
          }

          *(v14 + 16) = v23;
        }
      }

      else
      {

        if (v0)
        {
          goto LABEL_36;
        }
      }

      ++v12;
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
LABEL_39:
    sub_22C36C44C();
    sub_22C597698();
    v6 = v65;
  }

  if (v9 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v24 = sub_22C38C57C(result, v1[53]);
    v25(v24);
    v26 = swift_task_alloc();
    v1[137] = v26;
    *v26 = v1;
    sub_22C375C88();
    sub_22C386674(v27);
    sub_22C372034();

    return sub_22C8DB640(v28);
  }

  return result;
}

uint64_t sub_22C8D9500()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = *(v3 + 1112);
  *v2 = *v0;
  v1[140] = v5;
  v1[141] = v6;
  v1[142] = v7;
  v1[143] = v8;

  v9 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8D95F4()
{
  v16 = v0[142];
  v17 = v0[143];
  v15 = v0[141];
  v1 = v0[140];
  v2 = v0[84];
  v3 = v0[79];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[67];
  v8 = v0[66];
  v10 = v0[2];
  v9 = v0[3];
  sub_22C906E5C();
  (*(v4 + 16))(v3, v10, v5);
  sub_22C906E1C();
  sub_22C90031C();
  sub_22C90031C();
  v11 = swift_task_alloc();
  v0[144] = v11;
  *v11 = v0;
  v11[1] = sub_22C8D9714;
  sub_22C386674(v0[52]);
  sub_22C36D5F8();

  return sub_22C8DB640(v12);
}

uint64_t sub_22C8D9714()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = *(v3 + 1152);
  *v2 = *v0;
  *(v1 + 1160) = v5;

  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_22C8D97FC()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v1 = v0[145];
  sub_22C8E65A8();
  v2 = v0[64];
  v3 = v0[62];
  v33 = v0[61];
  v34 = v0[49];
  v35 = v0[48];
  v36 = v0[52];
  v37 = v0[46];
  v38 = v0[45];
  v39 = v0[47];
  v4 = v0[42];
  v5 = v0[43];
  v32 = v0[41];
  sub_22C902BCC();
  sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
  v6 = sub_22C9023BC();
  sub_22C369824(v6);
  v8 = v7;
  v10 = *(v9 + 72);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22C90F800;
  (*(v4 + 16))(v2, v5, v32);
  (*(v3 + 104))(v2, *MEMORY[0x277D1C500], v33);
  sub_22C90239C();
  (*(v8 + 104))(v12 + v11, *MEMORY[0x277D1C9A0], v6);
  v14 = *(v4 + 8);
  v13 = (v4 + 8);
  v14(v5, v32);
  (*(v34 + 8))(v36, v35);
  v15 = sub_22C8E6520();
  v16(v15);
  v17 = sub_22C373D34();
  v18(v17);
  v19 = sub_22C36BBCC();
  if (v5(v19) == v2)
  {
    v20 = sub_22C8E63B8();
    v13(v20);
    if (*(v6 + 16))
    {

      v21 = v0[120];
      goto LABEL_9;
    }

    v26 = v0[120];
  }

  else
  {
    v22 = *MEMORY[0x277D1CBA8];
    sub_22C372F60();
    if (v23)
    {
      sub_22C8E64F4();
      sub_22C3CF7C8(v12);
      v24 = sub_22C36A608();
      v13(v24);
      goto LABEL_9;
    }

    v25 = sub_22C36A608();
    v13(v25);
  }

LABEL_9:
  v27 = sub_22C386708();
  v13(v27);
  sub_22C38C2F4();
  v28 = v0[105];
  v29 = v0[102];
  sub_22C36B8A8();

  sub_22C3893F8();
  sub_22C372034();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22C8D9C84()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = v3[150];
  v5 = v3[51];
  v6 = v3[49];
  v7 = v3[48];
  v8 = *v0;
  sub_22C369970();
  *v9 = v8;
  *(v11 + 1208) = v10;

  v12 = *(v6 + 8);
  v13 = sub_22C36BBCC();
  v14(v13);
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C8D9DC0()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v4 = v1[149];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v1[149];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_39;
  }

  while (1)
  {
    sub_22C8E6598();
    if (v8)
    {
      sub_22C369AB0(v7);
      sub_22C3827B4();
      sub_22C597698();
      v6 = v66;
    }

    sub_22C3860CC(v1[151]);
    v9 = v1[148] + 1;
    v1[149] = v6;
    v1[148] = v9;
    result = v1[146];
    if (v9 != v1[147])
    {
      break;
    }

    v11 = v1[30];

    v12 = 0;
    v13 = *(v6 + 16);
    v14 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v13 == v12)
      {
        v30 = v1[76];
        v31 = v1[75];
        v32 = v1[68];
        v33 = v1[64];
        v34 = v1[62];
        v36 = v1[55];
        v35 = v1[56];
        v67 = v1[54];
        v68 = v1[61];
        v69 = v1[39];
        v70 = v1[38];
        v71 = v1[40];

        sub_22C8E65E4();
        sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
        v37 = sub_22C8E666C();
        sub_22C369824(v37);
        v39 = v38;
        v41 = *(v40 + 72);
        v42 = *(v38 + 80);
        sub_22C36DCCC();
        v43 = swift_allocObject();
        v44 = sub_22C386EBC(v43, xmmword_22C90F800);
        v45(v44);
        (*(v34 + 104))(v33, *MEMORY[0x277D1C4E8], v68);
        sub_22C90239C();
        (*(v39 + 104))(&v32[v43], *MEMORY[0x277D1C9A0], v37);
        v46 = sub_22C36CDBC();
        v47(v46, v6);
        v48 = sub_22C8E6520();
        v49(v48);
        v50 = sub_22C373D34();
        v51(v50);
        v52 = sub_22C36BBCC();
        if (v35(v52) == v39 + 104)
        {
          v53 = sub_22C8E63B8();
          (v32)(v53);
          if (*(v6 + 16))
          {

            v54 = v1[120];
            goto LABEL_31;
          }

          v59 = v1[120];
LABEL_30:
        }

        else
        {
          v55 = *MEMORY[0x277D1CBA8];
          sub_22C372F60();
          if (!v56)
          {
            v58 = sub_22C36A608();
            (v32)(v58);
            goto LABEL_30;
          }

          sub_22C8E64F4();
          sub_22C3CF7C8(v43);
          v57 = sub_22C36A608();
          (v32)(v57);
        }

LABEL_31:
        v60 = sub_22C386708();
        (v32)(v60);
        sub_22C38C2F4();
        v61 = v1[105];
        v62 = v1[102];
        sub_22C36B8A8();

        sub_22C3893F8();
        sub_22C372034();

        __asm { BRAA            X2, X16 }
      }

      if (v12 >= *(v6 + 16))
      {
        break;
      }

      sub_22C8E648C();
      if (v15)
      {
        goto LABEL_35;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v3 > *(v14 + 24) >> 1)
      {
        sub_22C383560();
        sub_22C597504();
        v14 = v16;
      }

      if (*(v2 + 16))
      {
        v17 = *(v14 + 16);
        v18 = *(v14 + 24);
        sub_22C37EEB4();
        if (v20 != v15)
        {
          goto LABEL_37;
        }

        v21 = v1[29];
        sub_22C377818(v19);

        if (v0)
        {
          v22 = *(v14 + 16);
          v15 = __OFADD__(v22, v0);
          v23 = v22 + v0;
          if (v15)
          {
            goto LABEL_38;
          }

          *(v14 + 16) = v23;
        }
      }

      else
      {

        if (v0)
        {
          goto LABEL_36;
        }
      }

      ++v12;
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
LABEL_39:
    sub_22C36C44C();
    sub_22C597698();
    v6 = v65;
  }

  if (v9 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v24 = sub_22C38C57C(result, v1[51]);
    v25(v24);
    v26 = swift_task_alloc();
    v1[150] = v26;
    *v26 = v1;
    sub_22C38195C();
    sub_22C386674(v27);
    sub_22C372034();

    return sub_22C8DB640(v28);
  }

  return result;
}

uint64_t sub_22C8DA3A0()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v2 = v1;
  v3 = v1[152];
  v4 = v1[50];
  v5 = v1[49];
  v6 = v1[48];
  v7 = *v0;
  sub_22C369970();
  *v8 = v7;
  v2[153] = v9;

  v10 = *(v5 + 8);
  v2[154] = v10;
  v2[155] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v6);
  v11 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C8DA4F8()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v4 = *(v1[153] + 16);

  if (!v4)
  {
    (*(v1[19] + 8))(v1[20], v1[18]);
    v16 = sub_22C373D34();
    v17(v16);
    v18 = sub_22C36BBCC();
    if (v3(v18) == v0)
    {
      v19 = sub_22C8E63B8();
      v2(v19);
      if (MEMORY[0x10])
      {

        v20 = v1[120];
        goto LABEL_17;
      }

      v35 = v1[120];
    }

    else
    {
      v32 = *MEMORY[0x277D1CBA8];
      sub_22C372F60();
      if (v15)
      {
        sub_22C3CF7C8(MEMORY[0x277D84F90]);
        v33 = sub_22C36A608();
        v2(v33);
        goto LABEL_17;
      }

      v34 = sub_22C36A608();
      v2(v34);
    }

LABEL_17:
    v36 = sub_22C386708();
    v2(v36);
    sub_22C381440();
    v37 = v1[105];
    v38 = v1[102];
    sub_22C36B8A8();

    sub_22C3893F8();
    sub_22C372034();

    __asm { BRAA            X2, X16 }
  }

  v5 = v1[80];
  v6 = v1[71];
  v7 = v1[3];
  sub_22C906E5C();
  v8 = sub_22C36CCF8();
  v10 = sub_22C370B74(v8, v9, v6);
  v11 = v1[80];
  v12 = v1[73];
  if (v10 == 1)
  {
    v13 = v1[71];
    v14 = v1[73];
    sub_22C90068C();
    sub_22C369A54(v11);
    if (!v15)
    {
      sub_22C36DD28(v1[80], &qword_27D9BB190, qword_22C90DD90);
    }
  }

  else
  {
    sub_22C376B5C();
    v21();
  }

  v22 = v1[79];
  sub_22C8E6540();
  v23 = v1[70];
  v24 = v1[50];
  v25 = v1[20];
  sub_22C8E662C(v26);
  v27();
  sub_22C906E1C();
  sub_22C90207C();
  v28 = swift_task_alloc();
  v1[156] = v28;
  *v28 = v1;
  v28[1] = sub_22C8DA954;
  sub_22C386674(v1[50]);
  sub_22C372034();

  return sub_22C8DB640(v29);
}

uint64_t sub_22C8DA954()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = v3[156];
  v5 = v3[155];
  v6 = v3[154];
  v7 = v3[50];
  v8 = v3[48];
  v9 = *v0;
  sub_22C369970();
  *v10 = v9;
  *(v12 + 1256) = v11;

  v13 = sub_22C36BBCC();
  v6(v13);
  v14 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_22C8DAA98()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v2 = v0[157];
  v3 = v0[79];
  v4 = v0[73];
  v5 = v0[70];
  v6 = v0[64];
  v7 = v0[62];
  v41 = v0[20];
  v42 = v0[61];
  v39 = v0[19];
  v40 = v0[18];
  v8 = v0[9];
  v9 = v0[10];
  v38 = v0[8];
  sub_22C90224C();
  sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
  v10 = sub_22C9023BC();
  sub_22C369824(v10);
  v12 = v11;
  v14 = *(v13 + 72);
  v15 = *(v11 + 80);
  sub_22C36DCCC();
  v16 = swift_allocObject();
  v17 = sub_22C37B180(v16, xmmword_22C90F800);
  v18(v17);
  (*(v7 + 104))(v6, *MEMORY[0x277D1C508], v42);
  sub_22C90239C();
  (*(v12 + 104))(&v1[v16], *MEMORY[0x277D1C9A0], v10);
  v20 = *(v8 + 8);
  v19 = v8 + 8;
  v20(v9, v38);
  v21 = sub_22C3884E0();
  v22(v21);
  v23 = sub_22C373D34();
  v24(v23);
  v25 = sub_22C36BBCC();
  if (v6(v25) == v9)
  {
    v26 = sub_22C8E63B8();
    (v1)(v26);
    if (*(v19 + 16))
    {

      v27 = v0[120];
      goto LABEL_9;
    }

    v32 = v0[120];
  }

  else
  {
    v28 = *MEMORY[0x277D1CBA8];
    sub_22C372F60();
    if (v29)
    {
      sub_22C8E64F4();
      sub_22C3CF7C8(v16);
      v30 = sub_22C36A608();
      (v1)(v30);
      goto LABEL_9;
    }

    v31 = sub_22C36A608();
    (v1)(v31);
  }

LABEL_9:
  v33 = sub_22C386708();
  (v1)(v33);
  sub_22C38C2F4();
  v34 = v0[105];
  v35 = v0[102];
  sub_22C36B8A8();

  sub_22C3893F8();
  sub_22C372034();

  __asm { BRAA            X2, X16 }
}

void sub_22C8DAEE4()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C3A5908(&qword_27D9C13A0, &qword_22C92D268);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v8 = sub_22C9023BC();
  v9 = sub_22C369824(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v46 = &v42 - v15;
  v47 = v16;
  v17 = 0;
  v18 = *(v1 + 16);
  v19 = (v16 + 32);
  v48 = MEMORY[0x277D84F90];
  while (v18 != v17)
  {
    v20 = sub_22C9024FC();
    sub_22C3699B8(v20);
    sub_22C8DDB04(v1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v22 + 72) * v17, v7);
    v23 = sub_22C37EF1C();
    sub_22C36D0A8(v23, v24, v8);
    if (v25)
    {
      sub_22C36DD28(v7, &qword_27D9C13A0, &qword_22C92D268);
      ++v17;
    }

    else
    {
      v26 = *v19;
      v27 = v19;
      v28 = v46;
      sub_22C6AF0E8();
      v26();
      v44 = v26;
      v45 = v14;
      v29 = v28;
      v19 = v27;
      (v26)(v14, v29, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = *(v48 + 16);
        sub_22C5972AC();
        v48 = v39;
      }

      v32 = *(v48 + 16);
      v31 = *(v48 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        sub_22C369AB0(v31);
        v43 = v40;
        sub_22C5972AC();
        v33 = v43;
        v48 = v41;
      }

      ++v17;
      *(v48 + 16) = v33;
      sub_22C37054C();
      v37 = v35 + v34 + *(v36 + 72) * v32;
      v14 = v45;
      (v44)(v37, v45, v8);
    }
  }

  sub_22C36CC48();
}

uint64_t sub_22C8DB190()
{
  result = sub_22C3AD928(&unk_283FB0DA0);
  qword_27D9C1458 = result;
  return result;
}

uint64_t sub_22C8DB1B8(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_22C3A5908(&qword_27D9C1470, &qword_22C92D698) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_22C9093BC();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8DB2BC, 0, 0);
}

uint64_t sub_22C8DB2BC()
{
  v23 = v0;
  v22 = sub_22C878FDC(v0[2]);

  sub_22C8E1694(&v22);
  v1 = v0[3];

  sub_22C58BB3C(v22, v1);

  v2 = sub_22C90221C();
  sub_22C369A54(v1);
  if (v3)
  {
    sub_22C36DD28(v0[3], &qword_27D9C1470, &qword_22C92D698);
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[3];

    v7 = v0[1];

    return v7(0);
  }

  else
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];
    sub_22C90207C();
    v14 = *(*(v2 - 8) + 8);
    v15 = sub_22C36BBCC();
    v16(v15);
    v17 = *(v12 + 32);
    v18 = sub_22C36D264();
    v19(v18);
    v20 = swift_task_alloc();
    v0[8] = v20;
    *v20 = v0;
    v20[1] = sub_22C8DB4C8;
    v21 = sub_22C386674(v0[7]);

    return sub_22C8DB640(v21);
  }
}

uint64_t sub_22C8DB4C8()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C8DB5B0()
{
  sub_22C36FB38();
  v1 = v0[9];
  (*(v0[5] + 8))(v0[7], v0[4]);
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  v5 = sub_22C385830();

  return v6(v5);
}

uint64_t sub_22C8DB640(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_22C902A7C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_22C90906C();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = sub_22C9063DC();
  v1[11] = v8;
  v9 = *(v8 - 8);
  v1[12] = v9;
  v10 = *(v9 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v11 = sub_22C9092DC();
  v1[15] = v11;
  v12 = *(v11 - 8);
  v1[16] = v12;
  v13 = *(v12 + 64) + 15;
  v1[17] = swift_task_alloc();
  v14 = *(*(sub_22C3A5908(&qword_27D9C1460, &qword_22C92D678) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v15 = *(*(sub_22C3A5908(&qword_27D9C1468, &qword_22C92D680) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v16 = sub_22C90033C();
  v1[21] = v16;
  v17 = *(v16 - 8);
  v1[22] = v17;
  v18 = *(v17 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v19 = sub_22C90931C();
  v1[25] = v19;
  v20 = *(v19 - 8);
  v1[26] = v20;
  v21 = *(v20 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v22 = sub_22C90910C();
  v1[31] = v22;
  v23 = *(v22 - 8);
  v1[32] = v23;
  v24 = *(v23 + 64) + 15;
  v1[33] = swift_task_alloc();
  v25 = sub_22C90919C();
  v1[34] = v25;
  v26 = *(v25 - 8);
  v1[35] = v26;
  v27 = *(v26 + 64) + 15;
  v1[36] = swift_task_alloc();
  v28 = *(sub_22C3A5908(&qword_27D9BAC60, &qword_22C90D500) - 8);
  v1[37] = v28;
  v29 = *(v28 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v30 = sub_22C9090BC();
  v1[46] = v30;
  v31 = *(v30 - 8);
  v1[47] = v31;
  v32 = *(v31 + 64) + 15;
  v1[48] = swift_task_alloc();
  v33 = sub_22C9093BC();
  v1[49] = v33;
  v34 = *(v33 - 8);
  v1[50] = v34;
  v35 = *(v34 + 64) + 15;
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8DBBDC, 0, 0);
}

uint64_t sub_22C8DBBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v401 = v32;
  v33 = v32;
  v34 = MEMORY[0x277D84F90];
  v32[2] = MEMORY[0x277D84F90];
  v35 = v32 + 2;
  v36 = v32[54];
  v37 = v32[49];
  v39 = v32[3];
  v38 = v32[50];
  v40 = *(v38 + 16);
  v32[55] = v40;
  v32[56] = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v36, v39, v37);
  v41 = *(v38 + 88);
  v42 = sub_22C37170C();
  v44 = v43(v42);
  v45 = v32[49];
  v399 = v32;
  if (v44 == *MEMORY[0x277D72A58])
  {
    v46 = v32[54];
    v48 = v32[29];
    v47 = v32[30];
    v49 = v32[25];
    v50 = v32[26];
    v51 = *(v32[50] + 96);
    v52 = sub_22C37EF10();
    v53(v52);
    v54 = *v46;
    v55 = swift_projectBox();
    v56 = *(v50 + 16);
    v56(v47, v55, v49);
    v56(v48, v47, v49);
    v57 = *(v50 + 88);
    v58 = sub_22C36CA88();
    v60 = v59(v58);
    if (v60 == *MEMORY[0x277D729B8])
    {
      v61 = v33[42];
      v62 = v33[29];
      v63 = v33[25];
      v64 = v33[26];
      v65 = v33[24];
      v67 = v33[20];
      v66 = v33[21];
      v68 = v33[18];
      v69 = v33[4];
      (*(v64 + 96))(v62, v63);
      v70 = *v62;
      v71 = v62[1];
      sub_22C90031C();
      sub_22C36A748();
      sub_22C36C640(v72, v73, v74, v66);
      sub_22C90989C();
      sub_22C36A748();
      sub_22C36C640(v75, v76, v77, v78);
      sub_22C8E6500();
      sub_22C36BECC();
      sub_22C36C640(v79, v80, v81, v69);
      sub_22C3760A4();
      v83 = v82;
      v85 = *(v82 + 16);
      v84 = *(v82 + 24);
      v86 = v85 + 1;
      if (v85 >= v84 >> 1)
      {
        goto LABEL_71;
      }

      goto LABEL_4;
    }

    if (v60 == *MEMORY[0x277D729B0])
    {
      v109 = v33[29];
      v110 = v33[23];
      v111 = v33[19];
      v113 = v33[16];
      v112 = v33[17];
      v114 = v33[15];
      (*(v33[26] + 96))(v109, v33[25]);
      (*(v113 + 32))(v112, v109, v114);
      v115 = sub_22C9092CC();
      v116 = [v115 displayName];

      sub_22C90A11C();
      sub_22C90031C();
      sub_22C8DF638(v111);
      v117 = sub_22C9092CC();
      v118 = [v117 image];

      if (!v118 || (v119 = sub_22C8E6344(v118), v120 >> 60 == 15))
      {
        v121 = v33[40];
        v123 = v33[19];
        v122 = v33[20];
        v124 = v33[18];
        v125 = v33[4];
        (*(v33[22] + 16))(v33[24], v33[23], v33[21]);
        sub_22C4E719C(v123, v122, &qword_27D9C1468, &qword_22C92D680);
        sub_22C90989C();
        sub_22C36A748();
        sub_22C36C640(v126, v127, v128, v129);
        sub_22C36ECB4();
        sub_22C8E6500();
        sub_22C36BECC();
        sub_22C36C640(v130, v131, v132, v125);
        sub_22C3760A4();
        v134 = v133;
        v136 = *(v133 + 16);
        v135 = *(v133 + 24);
        v384 = v136 + 1;
        v391 = v136;
        if (v136 >= v135 >> 1)
        {
          sub_22C369AB0(v135);
          sub_22C3827B4();
          sub_22C5975CC();
          v134 = v344;
        }

        v379 = v33[40];
        v368 = v33[30];
        v373 = v33[37];
        v137 = v33[26];
        v364 = v33[25];
        v138 = v33[22];
        v139 = v33[23];
        v140 = v33[21];
        v142 = v33[16];
        v141 = v33[17];
        v143 = v33[15];
        sub_22C36DD28(v33[19], &qword_27D9C1468, &qword_22C92D680);
        (*(v138 + 8))(v139, v140);
        v144 = *(v142 + 8);
        v145 = sub_22C36D264();
        v146(v145);
        (*(v137 + 8))(v368, v364);
        *(v134 + 16) = v384;
        sub_22C37520C();
        sub_22C4E7208(v149, v147 + v148 * v391, &qword_27D9BAC60, &qword_22C90D500);

        v33[2] = v134;
        goto LABEL_53;
      }

      v231 = v119;
      v86 = v120;
      v232 = v33[41];
      v233 = v33[23];
      v234 = v33[24];
      v235 = v33[21];
      v236 = v33[22];
      v237 = v33[19];
      v238 = v33[20];
      v239 = v33;
      v240 = v33[18];
      v387 = v239[4];
      (*(v236 + 16))(v234, v233, v235);
      sub_22C4E719C(v237, v238, &qword_27D9C1468, &qword_22C92D680);
      *v240 = v231;
      v240[1] = v86;
      v241 = *MEMORY[0x277D73208];
      v242 = sub_22C90989C();
      sub_22C36985C(v242);
      (*(v243 + 104))(v240, v241, v242);
      sub_22C36BECC();
      sub_22C36C640(v244, v245, v246, v242);
      sub_22C3C832C(v231, v86);
      sub_22C8E6500();
      sub_22C36BECC();
      sub_22C36C640(v247, v248, v249, v387);
      sub_22C3760A4();
      v251 = v250;
      v252 = *(v250 + 16);
      v194 = *(v250 + 24);
      v383 = v252;
      v390 = v231;
      v378 = v252 + 1;
      if (v252 < v194 >> 1)
      {
LABEL_34:
        v370 = v399[37];
        v375 = v399[41];
        v253 = v399[26];
        loga = v399[25];
        v366 = v399[30];
        v254 = v399[22];
        v255 = v399[23];
        v256 = v399[21];
        v257 = v399[19];
        v258 = v399[16];
        v357 = v399[15];
        v359 = v399[17];
        sub_22C3C8114(v390, v86);
        sub_22C36DD28(v257, &qword_27D9C1468, &qword_22C92D680);
        (*(v254 + 8))(v255, v256);
        (*(v258 + 8))(v359, v357);
        (*(v253 + 8))(v366, loga);
        *(v251 + 16) = v378;
        sub_22C37054C();
        sub_22C4E7208(v261, v251 + v259 + *(v260 + 72) * v383, &qword_27D9BAC60, &qword_22C90D500);

        v399[2] = v251;
        goto LABEL_53;
      }

LABEL_73:
      sub_22C369AB0(v194);
      sub_22C5975CC();
      v251 = v345;
      goto LABEL_34;
    }

    v164 = v33[30];
    v165 = v33[28];
    v166 = v33[25];
    v167 = v33[14];
    sub_22C90405C();
    v168 = sub_22C37EF10();
    (v56)(v168);
    v169 = sub_22C9063CC();
    v170 = sub_22C90AADC();
    v171 = os_log_type_enabled(v169, v170);
    v392 = v33[30];
    v172 = v33[28];
    if (v171)
    {
      v173 = v33[27];
      log = v33[26];
      v369 = v170;
      v174 = v33[25];
      v385 = v33[14];
      v374 = v33[12];
      v380 = v33[11];
      v175 = v33;
      v176 = sub_22C36FB44();
      v365 = sub_22C370060();
      v400[0] = v365;
      *v176 = 136642819;
      v56(v173, v172, v174);
      sub_22C37EF10();
      v177 = sub_22C90A1AC();
      v179 = v178;
      isa = log[1].isa;
      isa(v172, v174);
      v181 = sub_22C36F9F4(v177, v179, v400);

      *(v176 + 4) = v181;
      _os_log_impl(&dword_22C366000, v169, v369, "Unsupported primitive %{sensitive}s", v176, 0xCu);
      sub_22C36FF94(v365);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v374 + 8))(v385, v380);
      isa(v392, v174);
      isa(v175[29], v175[25]);
    }

    else
    {
      v210 = v33[25];
      v211 = v33[26];
      v386 = v33[14];
      v212 = v33;
      v213 = v33[12];
      v214 = v212[11];

      v215 = *(v211 + 8);
      v215(v172, v210);
      (*(v213 + 8))(v386, v214);
      v215(v392, v210);
      v215(v212[29], v212[25]);
    }

LABEL_28:

    goto LABEL_53;
  }

  if (v44 == *MEMORY[0x277D729E8])
  {
    v91 = v32[54];
    v92 = v32[47];
    v93 = v33[48];
    v95 = v33[45];
    v94 = v33[46];
    v96 = *(v33[50] + 96);
    v97 = sub_22C37EF10();
    v98(v97);
    v99 = *v91;
    v100 = swift_projectBox();
    (*(v92 + 16))(v93, v100, v94);
    sub_22C8DE738(v93, v95);
    sub_22C3760A4();
    v102 = v101;
    v104 = *(v101 + 16);
    v103 = *(v101 + 24);
    if (v104 >= v103 >> 1)
    {
      sub_22C369AB0(v103);
      sub_22C5975CC();
      v102 = v343;
    }

    v105 = v33[45];
    v106 = v33[37];
    (*(v33[47] + 8))(v33[48], v33[46]);
    *(v102 + 16) = v104 + 1;
    v107 = *(v106 + 80);
    sub_22C36BA94();
    sub_22C4E7208(v105, v102 + v108 + *(v106 + 72) * v104, &qword_27D9BAC60, &qword_22C90D500);

    v33[2] = v102;
    goto LABEL_53;
  }

  if (v44 == *MEMORY[0x277D72A38])
  {
    v150 = v32[54];
    v152 = v32[35];
    v151 = v33[36];
    v153 = v33[34];
    v154 = *(v33[50] + 96);
    v155 = sub_22C36BA00();
    v156(v155);
    v33[57] = *v150;
    swift_projectBox();
    v157 = sub_22C383CAC();
    v158(v157);
    v159 = swift_task_alloc();
    v33[58] = v159;
    *v159 = v33;
    v159[1] = sub_22C8DCE34;
    v160 = v33[44];
    v161 = v33[36];
    sub_22C36FCB0();

    return sub_22C8DEB74();
  }

  else if (v44 == *MEMORY[0x277D729E0])
  {
    v182 = v32[54];
    v183 = v32[9];
    v86 = v32[10];
    v185 = v32[7];
    v184 = v32[8];
    v186 = *(v33[50] + 96);
    v187 = sub_22C37EF10();
    v188(v187);
    v33[61] = *v182;
    v189 = swift_projectBox();
    (*(v184 + 16))(v86, v189, v185);
    sub_22C3ACC84(v183);
    v190 = sub_22C90905C();
    v33[62] = v190;
    v33[63] = *(v184 + 8);
    v33[64] = (v184 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v191 = sub_22C36CA88();
    v192(v191);
    v193 = *(v190 + 16);
    v33[65] = v193;
    v33[67] = v34;
    v33[66] = 0;
    if (!v193)
    {
      v85 = v33[5];

      sub_22C8E6588();
      while (v185 != v183)
      {
        v84 = *(v34 + 16);
        if (v183 >= v84)
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
          sub_22C369AB0(v84);
          sub_22C3827B4();
          sub_22C5975CC();
          v83 = v342;
LABEL_4:
          v87 = v399[42];
          v88 = v399[37];
          (*(v399[26] + 8))(v399[30], v399[25]);
          *(v83 + 16) = v86;
          v89 = *(v88 + 80);
          sub_22C36BA94();
          sub_22C4E7208(v87, v83 + v90 + *(v88 + 72) * v85, &qword_27D9BAC60, &qword_22C90D500);

          v399[2] = v83;
LABEL_53:
          v305 = *(*v35 + 16);
          if (v305)
          {
            v306 = v399[5];
            v307 = *(v399[37] + 80);
            sub_22C37BEE8();
            v310 = v308 + v309;
            v397 = *(v311 + 72);
            v313 = (v312 + 32);
            v314 = MEMORY[0x277D84F90];
            do
            {
              v315 = v399[39];
              v316 = v399[4];
              sub_22C4E719C(v310, v315, &qword_27D9BAC60, &qword_22C90D500);
              sub_22C8E64D4();
              v317 = sub_22C374568();
              if (sub_22C370B74(v317, v318, v316) == 1)
              {
                v319 = v399[38];
                sub_22C6AF0E8();
                sub_22C36DD28(v320, v321, v322);
              }

              else
              {
                v323 = *v313;
                (*v313)(v399[6], v399[38], v399[4]);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_22C36C44C();
                  sub_22C597504();
                  v314 = v329;
                }

                sub_22C8E6530();
                if (v324)
                {
                  sub_22C3827B4();
                  sub_22C597504();
                  v314 = v330;
                }

                v325 = v399[6];
                v326 = v399[4];
                *(v314 + 16) = v315;
                sub_22C37520C();
                v323(v327 + v328 * v316);
              }

              v310 += v397;
              --v305;
            }

            while (v305);
          }

          v332 = v399[53];
          v331 = v399[54];
          v334 = v399[51];
          v333 = v399[52];
          v335 = v399[48];
          v337 = v399[44];
          v336 = v399[45];
          v339 = v399[42];
          v338 = v399[43];
          v346 = v399[41];
          v347 = v399[40];
          v348 = v399[39];
          v349 = v399[38];
          v350 = v399[36];
          v351 = v399[33];
          v352 = v399[30];
          v353 = v399[29];
          v354 = v399[28];
          v355 = v399[27];
          v356 = v399[24];
          v358 = v399[23];
          v360 = v399[20];
          logb = v399[19];
          v367 = v399[18];
          v372 = v399[17];
          v377 = v399[14];
          v382 = v399[13];
          v389 = v399[10];
          v394 = v399[9];
          v398 = v399[6];

          sub_22C385830();
          sub_22C36FCB0();

          __asm { BRAA            X2, X16 }
        }

        v84 = v34 + 8 * v183;
        v86 = *(v84 + 32);
        v280 = *(v86 + 16);
        v281 = *(v190 + 16);
        if (__OFADD__(v281, v280))
        {
          goto LABEL_67;
        }

        v282 = *(v84 + 32);

        if (!swift_isUniquelyReferenced_nonNull_native() || v281 + v280 > *(v190 + 24) >> 1)
        {
          sub_22C383560();
          sub_22C597504();
          v190 = v283;
        }

        v33 = v399;
        if (*(v86 + 16))
        {
          v284 = *(v190 + 16);
          v285 = *(v190 + 24);
          sub_22C37EEB4();
          if (v286 != v287)
          {
            goto LABEL_69;
          }

          v288 = v399[4];
          v289 = *(v85 + 80);
          sub_22C37BEE8();
          v290 = *(v85 + 72);
          swift_arrayInitWithCopy();

          if (v280)
          {
            v291 = *(v190 + 16);
            v287 = __OFADD__(v291, v280);
            v84 = v291 + v280;
            if (v287)
            {
              goto LABEL_70;
            }

            *(v190 + 16) = v84;
          }
        }

        else
        {

          if (v280)
          {
            goto LABEL_68;
          }
        }

        ++v183;
      }

      v293 = v33[63];
      v292 = v33[64];
      v294 = v33[61];
      v295 = v33[10];
      v296 = v33[7];

      v297 = sub_22C8D5DC4(v190);

      sub_22C3CF8FC(v297);
      v298 = sub_22C36ECB4();
      v293(v298);
      goto LABEL_28;
    }

    v194 = *(v33[62] + 16);
    if (!v194)
    {
      __break(1u);
      goto LABEL_73;
    }

    v196 = v33[55];
    v195 = v33[56];
    v197 = v33[49];
    v198 = *(v33[50] + 80);
    v199 = sub_22C36EEE4(v33[53]);
    v200(v199);
    v201 = swift_task_alloc();
    v33[68] = v201;
    *v201 = v33;
    sub_22C8E64B4(v201);
    sub_22C386674(v33[53]);
    sub_22C36FCB0();

    return sub_22C8DB640(v202, v203, v204, v205, v206, v207, v208, v209, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
  }

  else
  {
    if (v44 != *MEMORY[0x277D729F8])
    {
      v262 = v32[52];
      v263 = v32[13];
      v264 = v32[3];
      sub_22C90405C();
      v40(v262, v264, v45);
      v265 = sub_22C9063CC();
      v266 = sub_22C90AADC();
      v267 = os_log_type_enabled(v265, v266);
      v268 = v32[52];
      if (v267)
      {
        v270 = v32[50];
        v269 = v32[51];
        v381 = v266;
        v271 = v32[49];
        v388 = v32[12];
        v393 = v32[11];
        v395 = v32[13];
        v272 = sub_22C36FB44();
        v376 = sub_22C370060();
        v400[0] = v376;
        *v272 = 136642819;
        v40(v269, v268, v271);
        sub_22C370018();
        v371 = sub_22C90A1AC();
        v274 = v273;
        v275 = *(v270 + 8);
        v276 = sub_22C37F370();
        v275(v276);
        v277 = sub_22C36F9F4(v371, v274, v400);

        *(v272 + 4) = v277;
        _os_log_impl(&dword_22C366000, v265, v381, "Unsupported item type %{sensitive}s", v272, 0xCu);
        sub_22C36FF94(v376);
        sub_22C3699EC();
        sub_22C3699EC();

        v278 = sub_22C3884E0();
        v279(v278);
        (v275)(v32[54], v32[49]);
      }

      else
      {
        v299 = v32[49];
        v300 = v32[50];
        v301 = v32[12];
        v396 = v32[13];
        v302 = v32[11];

        v303 = *(v300 + 8);
        v304 = sub_22C37F370();
        v303(v304);
        (*(v301 + 8))(v396, v302);
        (v303)(v33[54], v33[49]);
      }

      goto LABEL_53;
    }

    v216 = v32[54];
    v218 = v32[32];
    v217 = v33[33];
    v219 = v33[31];
    v220 = *(v33[50] + 96);
    v221 = sub_22C36BA00();
    v222(v221);
    v33[59] = *v216;
    swift_projectBox();
    v223 = sub_22C383CAC();
    v224(v223);
    v225 = swift_task_alloc();
    v33[60] = v225;
    *v225 = v33;
    v225[1] = sub_22C8DD1DC;
    v226 = v33[43];
    v227 = v33[33];
    sub_22C36FCB0();

    return sub_22C8DEF4C(v228, v229);
  }
}

uint64_t sub_22C8DCE34()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 464);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C8DCF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C3760A4();
  sub_22C3730F8(v38);
  if (v40)
  {
    sub_22C369AB0(v39);
    sub_22C5975CC();
    v35 = v72;
  }

  v41 = v34[57];
  v42 = v34[44];
  v43 = v34[37];
  (*(v34[35] + 8))(v34[36], v34[34]);
  *(v35 + 16) = v33;
  v44 = *(v43 + 80);
  sub_22C36BA94();
  sub_22C4E7208(v42, v35 + v45 + *(v43 + 72) * v32, &qword_27D9BAC60, &qword_22C90D500);

  v34[2] = v35;
  if (*(v35 + 16))
  {
    sub_22C37BD3C();
    a27 = v35;
    a28 = v46;
    sub_22C388E04(v47);
    v48 = MEMORY[0x277D84F90];
    do
    {
      sub_22C37B4AC();
      sub_22C8E64D4();
      v49 = sub_22C374568();
      sub_22C8E664C(v49, v50);
      if (v51)
      {
        sub_22C6AF0E8();
        sub_22C36DD28(v52, v53, v54);
      }

      else
      {
        v55 = sub_22C8E6568();
        v36(v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C36C44C();
          sub_22C597504();
          v48 = v61;
        }

        sub_22C8E6530();
        if (v40)
        {
          sub_22C3827B4();
          sub_22C597504();
          v48 = v62;
        }

        v57 = v34[6];
        v58 = v34[4];
        *(v48 + 16) = v35;
        sub_22C37520C();
        v36(v59 + v60 * v37);
      }

      sub_22C38A16C();
    }

    while (!v51);
  }

  sub_22C8E63F4();

  sub_22C385830();
  sub_22C37F7CC();

  return v65(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C8DD1DC()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 480);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C8DD2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C3760A4();
  sub_22C3730F8(v38);
  if (v40)
  {
    sub_22C369AB0(v39);
    sub_22C5975CC();
    v35 = v72;
  }

  v41 = v34[59];
  v42 = v34[43];
  v43 = v34[37];
  (*(v34[32] + 8))(v34[33], v34[31]);
  *(v35 + 16) = v33;
  v44 = *(v43 + 80);
  sub_22C36BA94();
  sub_22C4E7208(v42, v35 + v45 + *(v43 + 72) * v32, &qword_27D9BAC60, &qword_22C90D500);

  v34[2] = v35;
  if (*(v35 + 16))
  {
    sub_22C37BD3C();
    a27 = v35;
    a28 = v46;
    sub_22C388E04(v47);
    v48 = MEMORY[0x277D84F90];
    do
    {
      sub_22C37B4AC();
      sub_22C8E64D4();
      v49 = sub_22C374568();
      sub_22C8E664C(v49, v50);
      if (v51)
      {
        sub_22C6AF0E8();
        sub_22C36DD28(v52, v53, v54);
      }

      else
      {
        v55 = sub_22C8E6568();
        v36(v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C36C44C();
          sub_22C597504();
          v48 = v61;
        }

        sub_22C8E6530();
        if (v40)
        {
          sub_22C3827B4();
          sub_22C597504();
          v48 = v62;
        }

        v57 = v34[6];
        v58 = v34[4];
        *(v48 + 16) = v35;
        sub_22C37520C();
        v36(v59 + v60 * v37);
      }

      sub_22C38A16C();
    }

    while (!v51);
  }

  sub_22C8E63F4();

  sub_22C385830();
  sub_22C37F7CC();

  return v65(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C8DD588()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = v3[68];
  v5 = v3[53];
  v6 = v3[50];
  v7 = v3[49];
  v8 = *v0;
  sub_22C369970();
  *v9 = v8;
  *(v11 + 552) = v10;

  v12 = *(v6 + 8);
  v13 = sub_22C36BBCC();
  v14(v13);
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C8DD6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  v36 = *(v33 + 536);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v33 + 536);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_43:
    sub_22C36C44C();
    sub_22C597698();
    v38 = v99;
  }

  sub_22C8E6598();
  if (v40)
  {
    sub_22C369AB0(v39);
    sub_22C3827B4();
    sub_22C597698();
    v38 = v100;
  }

  sub_22C3860CC(*(v33 + 552));
  v41 = *(v33 + 528) + 1;
  *(v33 + 536) = v38;
  *(v33 + 528) = v41;
  result = *(v33 + 496);
  if (v41 == *(v33 + 520))
  {
    v43 = *(v33 + 40);

    v44 = 0;
    v45 = *(v38 + 16);
    v46 = MEMORY[0x277D84F90];
    while (v45 != v44)
    {
      if (v44 >= *(v38 + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      sub_22C8E648C();
      if (v47)
      {
        goto LABEL_39;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v35 > *(v46 + 24) >> 1)
      {
        sub_22C383560();
        sub_22C597504();
        v46 = v48;
      }

      if (*(v34 + 16))
      {
        v49 = *(v46 + 16);
        v50 = *(v46 + 24);
        sub_22C37EEB4();
        if (v52 != v47)
        {
          goto LABEL_41;
        }

        v53 = *(v33 + 32);
        sub_22C377818(v51);

        if (v32)
        {
          v54 = *(v46 + 16);
          v47 = __OFADD__(v54, v32);
          v55 = v54 + v32;
          if (v47)
          {
            goto LABEL_42;
          }

          *(v46 + 16) = v55;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_40;
        }
      }

      ++v44;
    }

    v67 = *(v33 + 504);
    v66 = *(v33 + 512);
    v68 = *(v33 + 488);
    v69 = *(v33 + 80);
    v70 = *(v33 + 56);

    v71 = sub_22C8D5DC4(v46);

    sub_22C3CF8FC(v71);
    v72 = sub_22C36ECB4();
    v67(v72);

    if (*(*(v33 + 16) + 16))
    {
      sub_22C37BD3C();
      a27 = v73;
      a28 = v74;
      sub_22C388E04(v75);
      v76 = MEMORY[0x277D84F90];
      do
      {
        sub_22C37B4AC();
        sub_22C8E64D4();
        v77 = sub_22C374568();
        sub_22C8E664C(v77, v78);
        if (v79)
        {
          sub_22C6AF0E8();
          sub_22C36DD28(v80, v81, v82);
        }

        else
        {
          v83 = sub_22C8E6568();
          v66(v83);
          v84 = swift_isUniquelyReferenced_nonNull_native();
          if ((v84 & 1) == 0)
          {
            sub_22C36C44C();
            sub_22C597504();
            v76 = v89;
          }

          sub_22C8E6530();
          if (v40)
          {
            sub_22C3827B4();
            sub_22C597504();
            v76 = v90;
          }

          v85 = *(v33 + 48);
          v86 = *(v33 + 32);
          *(v76 + 16) = v71;
          sub_22C37520C();
          v66(v87 + v88 * v67);
        }

        sub_22C38A16C();
      }

      while (!v79);
    }

    sub_22C8E63F4();

    sub_22C385830();
    sub_22C37F7CC();

    return v93(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
  }

  else if (v41 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v56 = *(v33 + 448);
    (*(v33 + 440))(*(v33 + 424), result + ((*(*(v33 + 400) + 80) + 32) & ~*(*(v33 + 400) + 80)) + *(*(v33 + 400) + 72) * v41, *(v33 + 392));
    v57 = swift_task_alloc();
    *(v33 + 544) = v57;
    *v57 = v33;
    sub_22C8E64B4();
    sub_22C386674(*(v33 + 424));
    sub_22C37F7CC();

    return sub_22C8DB640(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
  }

  return result;
}

uint64_t sub_22C8DDB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v3 = sub_22C90958C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v96 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90223C();
  v100 = *(v6 - 8);
  v101 = v6;
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v6);
  v98 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_22C90246C();
  v97 = *(v99 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x28223BE20](v99);
  v95 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9024BC();
  v104 = *(v11 - 8);
  v105 = v11;
  v12 = *(v104 + 64);
  MEMORY[0x28223BE20](v11);
  v103 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22C9024EC();
  v92 = *(v93 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C90214C();
  v112 = *(v16 - 1);
  v113 = v16;
  v17 = *(v112 + 64);
  MEMORY[0x28223BE20](v16);
  v111 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C9026FC();
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = *(v109 + 64);
  MEMORY[0x28223BE20](v19);
  v108 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C9063DC();
  v106 = *(v22 - 8);
  v107 = v22;
  v23 = *(v106 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v94 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v102 = &v89 - v26;
  v27 = sub_22C90249C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22C9024FC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v89 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v90 = &v89 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v89 - v39;
  v41 = *(v33 + 16);
  v41(&v89 - v39, a1, v32);
  v42 = (*(v33 + 88))(v40, v32);
  if (v42 == *MEMORY[0x277D1CA20])
  {
    (*(v33 + 96))(v40, v32);
    (*(v28 + 32))(v31, v40, v27);
    sub_22C90247C();
    if (!v43)
    {
      v66 = v102;
      sub_22C90405C();
      v67 = sub_22C9063CC();
      v68 = sub_22C90AADC();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_22C366000, v67, v68, "No target bundle ID in archived view", v69, 2u);
        MEMORY[0x2318B9880](v69, -1, -1);
      }

      (*(v106 + 8))(v66, v107);
      (*(v28 + 8))(v31, v27);
      v64 = sub_22C9023BC();
      v62 = v114;
      v63 = 1;
      return sub_22C36C640(v62, v63, 1, v64);
    }

    sub_22C90248C();
    v44 = v108;
    sub_22C9026EC();
    v46 = v109;
    v45 = v110;
    v47 = v111;
    (*(v109 + 16))(v111, v44, v110);
    (*(v112 + 104))(v47, *MEMORY[0x277D1C520], v113);
    v48 = v114;
    sub_22C90239C();
    (*(v46 + 8))(v44, v45);
    (*(v28 + 8))(v31, v27);
    goto LABEL_8;
  }

  if (v42 == *MEMORY[0x277D1CA28])
  {
    (*(v33 + 96))(v40, v32);
    v49 = v103;
    v50 = v104;
    v51 = v105;
    (*(v104 + 32))(v103, v40, v105);
    sub_22C9024AC();
    v48 = v114;
    sub_22C90237C();
    (*(v50 + 8))(v49, v51);
    v52 = MEMORY[0x277D1C990];
LABEL_9:
    v60 = *v52;
    v61 = sub_22C9023BC();
    (*(*(v61 - 8) + 104))(v48, v60, v61);
    v62 = v48;
LABEL_10:
    v63 = 0;
    v64 = v61;
    return sub_22C36C640(v62, v63, 1, v64);
  }

  if (v42 == *MEMORY[0x277D1CA80])
  {
    (*(v33 + 96))(v40, v32);
    v53 = v97;
    v54 = v95;
    v55 = v99;
    (*(v97 + 32))(v95, v40, v99);
    sub_22C90245C();
    v56 = v98;
    sub_22C90222C();
    v58 = v100;
    v57 = v101;
    v59 = v111;
    (*(v100 + 16))(v111, v56, v101);
    (*(v112 + 104))(v59, *MEMORY[0x277D1C538], v113);
    v48 = v114;
    sub_22C90239C();
    (*(v58 + 8))(v56, v57);
    (*(v53 + 8))(v54, v55);
LABEL_8:
    v52 = MEMORY[0x277D1C9A0];
    goto LABEL_9;
  }

  if (v42 == *MEMORY[0x277D1CA30])
  {
    (*(v33 + 96))(v40, v32);
    v70 = v92;
    v71 = v91;
    v72 = v93;
    (*(v92 + 32))(v91, v40, v93);
    sub_22C9024CC();
    sub_22C9024DC();
    v73 = v114;
    sub_22C90238C();
    (*(v70 + 8))(v71, v72);
    v74 = *MEMORY[0x277D1C998];
    v61 = sub_22C9023BC();
    (*(*(v61 - 8) + 104))(v73, v74, v61);
    v62 = v73;
    goto LABEL_10;
  }

  v75 = v94;
  sub_22C90405C();
  v76 = v90;
  v41(v90, a1, v32);
  v77 = sub_22C9063CC();
  v78 = sub_22C90AADC();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v115 = v113;
    *v79 = 136315138;
    LODWORD(v112) = v78;
    v41(v89, v76, v32);
    v80 = sub_22C90A1AC();
    v81 = v76;
    v82 = v80;
    v84 = v83;
    v85 = *(v33 + 8);
    v85(v81, v32);
    v86 = sub_22C36F9F4(v82, v84, &v115);

    *(v79 + 4) = v86;
    _os_log_impl(&dword_22C366000, v77, v112, "Unsupported view type: %s", v79, 0xCu);
    v87 = v113;
    sub_22C36FF94(v113);
    MEMORY[0x2318B9880](v87, -1, -1);
    MEMORY[0x2318B9880](v79, -1, -1);

    (*(v106 + 8))(v94, v107);
  }

  else
  {

    v85 = *(v33 + 8);
    v85(v76, v32);
    (*(v106 + 8))(v75, v107);
  }

  v88 = sub_22C9023BC();
  sub_22C36C640(v114, 1, 1, v88);
  return (v85)(v40, v32);
}

uint64_t sub_22C8DE738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9090BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = sub_22C9063DC();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = sub_22C90993C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90907C();
  if (sub_22C370B74(v18, 1, v19) == 1)
  {
    v37 = a2;
    sub_22C36DD28(v18, &qword_27D9BC390, &qword_22C912AC0);
    sub_22C90405C();
    v24 = *(v5 + 16);
    v24(v10, a1, v4);
    v25 = sub_22C9063CC();
    v26 = sub_22C90AADC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v27 = 136642819;
      v24(v38, v10, v4);
      v28 = sub_22C90A1AC();
      v30 = v29;
      (*(v5 + 8))(v10, v4);
      v31 = sub_22C36F9F4(v28, v30, &v41);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_22C366000, v25, v26, "No display representation on %{sensitive}s", v27, 0xCu);
      v32 = v36;
      sub_22C36FF94(v36);
      MEMORY[0x2318B9880](v32, -1, -1);
      MEMORY[0x2318B9880](v27, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    (*(v39 + 8))(v14, v40);
    v34 = v37;
    v35 = sub_22C902A7C();
    return sub_22C36C640(v34, 1, 1, v35);
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    sub_22C8DF6D4(v23, 0, 0, a2);
    return (*(v20 + 8))(v23, v19);
  }
}

uint64_t sub_22C8DEB74()
{
  sub_22C369980();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_22C90919C();
  v0[4] = v3;
  sub_22C3699B8(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = sub_22C36D0D4();
  v0[7] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v0[8] = v7;
  sub_22C3699B8(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = sub_22C3699D4();
  v11 = sub_22C90952C();
  v0[11] = v11;
  sub_22C3699B8(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = sub_22C3699D4();
  v15 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  v0[14] = sub_22C3699D4();
  v18 = sub_22C3A5908(&qword_27D9BAC60, &qword_22C90D500);
  sub_22C369914(v18);
  v20 = *(v19 + 64);
  v0[15] = sub_22C3699D4();
  v21 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_22C8DED14()
{
  sub_22C36FB38();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[3];
  sub_22C90915C();
  v4 = sub_22C90908C();
  sub_22C8E6638(v4, v5);
  sub_22C9090AC();
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v7 = sub_22C8E654C(v6);

  return sub_22C8E0140(v7, v8, v9, v10, v11);
}

uint64_t sub_22C8DEDBC()
{
  sub_22C369A3C();
  v2 = v1[17];
  v3 = v1[16];
  v4 = v1[14];
  v5 = v1[13];
  v6 = v1[12];
  v7 = v1[11];
  v8 = *v0;
  sub_22C369970();
  *v9 = v8;

  v10 = *(v6 + 8);
  v11 = sub_22C36D264();
  v12(v11);
  sub_22C36DD28(v4, &qword_27D9BC390, &qword_22C912AC0);
  v13 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C8DEF4C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22C90910C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_22C9063DC();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_22C90952C();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = *(*(sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v13 = *(*(sub_22C3A5908(&qword_27D9BAC60, &qword_22C90D500) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8DF140, 0, 0);
}

uint64_t sub_22C8DF140()
{
  sub_22C36FB38();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[3];
  sub_22C9090DC();
  v4 = sub_22C90908C();
  sub_22C8E6638(v4, v5);
  sub_22C9090AC();
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v7 = sub_22C8E654C(v6);

  return sub_22C8E0140(v7, v8, v9, v10, v11);
}

uint64_t sub_22C8DF1E8()
{
  sub_22C369A3C();
  v2 = v1[17];
  v3 = v1[16];
  v4 = v1[14];
  v5 = v1[13];
  v6 = v1[12];
  v7 = v1[11];
  v8 = *v0;
  sub_22C369970();
  *v9 = v8;

  v10 = *(v6 + 8);
  v11 = sub_22C36D264();
  v12(v11);
  sub_22C36DD28(v4, &qword_27D9BC390, &qword_22C912AC0);
  v13 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C8DF378()
{
  v43 = v0;
  v1 = v0[15];
  v2 = sub_22C902A7C();
  sub_22C369A54(v1);
  if (v3)
  {
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[3];
    sub_22C36DD28(v1, &qword_27D9BAC60, &qword_22C90D500);
    sub_22C90405C();
    v9 = *(v7 + 16);
    v10 = sub_22C37E5D0();
    v9(v10);
    v11 = sub_22C9063CC();
    v12 = sub_22C90AADC();
    log = v11;
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[9];
    v14 = v0[10];
    v17 = v0[7];
    v16 = v0[8];
    if (v13)
    {
      v38 = v12;
      v40 = v0[10];
      v19 = v0[5];
      v18 = v0[6];
      v20 = v0[4];
      v39 = v0[8];
      v21 = sub_22C36FB44();
      v37 = sub_22C370060();
      v42 = v37;
      *v21 = 136642819;
      (v9)(v18, v17, v20);
      sub_22C37EF10();
      v22 = sub_22C90A1AC();
      v24 = v23;
      (*(v19 + 8))(v17, v20);
      v25 = sub_22C36F9F4(v22, v24, &v42);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_22C366000, log, v38, "No display representation on %{sensitive}s", v21, 0xCu);
      sub_22C36FF94(v37);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v15 + 8))(v40, v39);
    }

    else
    {
      v27 = v0[4];
      v28 = v0[5];

      (*(v28 + 8))(v17, v27);
      (*(v15 + 8))(v14, v16);
    }

    v26 = 1;
  }

  else
  {
    (*(*(v2 - 8) + 32))(v0[2], v1, v2);
    v26 = 0;
  }

  v30 = v0[14];
  v29 = v0[15];
  v31 = v0[13];
  v32 = v0[10];
  v34 = v0[6];
  v33 = v0[7];
  sub_22C36C640(v0[2], v26, 1, v2);

  v35 = v0[1];

  return v35();
}

uint64_t sub_22C8DF638@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C9092CC();
  v3 = [v2 personHandle];

  if (v3 && (sub_22C8E62D8(v3), v4))
  {
    sub_22C90031C();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_22C90033C();

  return sub_22C36C640(a1, v5, 1, v6);
}

uint64_t sub_22C8DF6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a2;
  v98 = a3;
  v104 = a4;
  v5 = sub_22C90993C();
  v90 = *(v5 - 8);
  v91 = v5;
  v6 = *(v90 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v88 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v87 - v9;
  v10 = sub_22C9063DC();
  v92 = *(v10 - 8);
  v93 = v10;
  v11 = *(v92 + 64);
  MEMORY[0x28223BE20](v10);
  v94 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9C1478, &qword_22C92D6B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v87 - v15;
  v103 = sub_22C90986C();
  v100 = *(v103 - 8);
  v17 = *(v100 + 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C3A5908(&qword_27D9C1480, &qword_22C92D6B8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v87 - v21;
  v23 = sub_22C3A5908(&qword_27D9C1460, &qword_22C92D678);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v102 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v87 - v27;
  v29 = sub_22C3A5908(&qword_27D9BFFD8, &qword_22C925C90);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v87 - v31;
  v33 = sub_22C3A5908(&qword_27D9C1468, &qword_22C92D680);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v96 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v101 = &v87 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v87 - v39;
  v105 = sub_22C90033C();
  v41 = *(v105 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v105);
  v95 = &v87 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v87 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v87 - v48;
  sub_22C9098BC();
  sub_22C90031C();
  sub_22C90992C();
  sub_22C8E0BBC(v32, v40);
  sub_22C36DD28(v32, &qword_27D9BFFD8, &qword_22C925C90);
  sub_22C9098AC();
  v106 = v28;
  sub_22C8E1180(v22, v28);
  v50 = v22;
  v51 = v103;
  sub_22C36DD28(v50, &qword_27D9C1480, &qword_22C92D6B8);
  sub_22C90988C();
  if (sub_22C370B74(v16, 1, v51) == 1)
  {
    v100 = v47;
    v52 = v102;
    v103 = v49;
    sub_22C36DD28(v16, &qword_27D9C1478, &qword_22C92D6B0);
    v53 = v105;
    if (sub_22C370B74(v40, 1, v105) == 1)
    {
      v54 = 0;
      v55 = v41;
      v56 = v103;
    }

    else
    {
      v61 = v96;
      sub_22C4E719C(v40, v96, &qword_27D9C1468, &qword_22C92D680);
      v55 = v41;
      if (sub_22C370B74(v61, 1, v53) == 1)
      {
        sub_22C90031C();
        v62 = sub_22C370B74(v61, 1, v53);
        v56 = v103;
        if (v62 != 1)
        {
          sub_22C36DD28(v61, &qword_27D9C1468, &qword_22C92D680);
        }
      }

      else
      {
        (*(v41 + 32))(v95, v61, v53);
        v56 = v103;
      }

      v63 = sub_22C90A18C();
      v65 = v64;

      v66 = HIBYTE(v65) & 0xF;
      if ((v65 & 0x2000000000000000) == 0)
      {
        v66 = v63 & 0xFFFFFFFFFFFFLL;
      }

      v54 = v66 != 0;
    }

    v67 = sub_22C9098BC();
    v69 = v68;

    v70 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v70 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (v70 || v54 || (v71 = sub_22C90989C(), sub_22C370B74(v106, 1, v71) != 1))
    {
      (*(v55 + 16))(v100, v56, v53);
      sub_22C4E719C(v40, v101, &qword_27D9C1468, &qword_22C92D680);
      sub_22C4E719C(v106, v52, &qword_27D9C1460, &qword_22C92D678);

      v59 = v104;
      sub_22C902A5C();
      (*(v55 + 8))(v56, v53);
      v60 = 0;
    }

    else
    {
      v72 = v94;
      sub_22C90405C();
      v73 = v89;
      v74 = v90;
      v75 = *(v90 + 16);
      v76 = v91;
      v75(v89, a1, v91);
      v77 = sub_22C9063CC();
      LODWORD(v102) = sub_22C90AADC();
      if (os_log_type_enabled(v77, v102))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v101 = v55;
        v80 = v79;
        v107 = v79;
        *v78 = 136642819;
        v75(v88, v73, v76);
        v81 = sub_22C90A1AC();
        v83 = v82;
        (*(v74 + 8))(v73, v76);
        v84 = sub_22C36F9F4(v81, v83, &v107);

        *(v78 + 4) = v84;
        _os_log_impl(&dword_22C366000, v77, v102, "Unsupported display representation: %{sensitive}s", v78, 0xCu);
        sub_22C36FF94(v80);
        MEMORY[0x2318B9880](v80, -1, -1);
        MEMORY[0x2318B9880](v78, -1, -1);

        (*(v92 + 8))(v94, v93);
        (*(v101 + 8))(v103, v105);
      }

      else
      {

        (*(v74 + 8))(v73, v76);
        (*(v92 + 8))(v72, v93);
        (*(v55 + 8))(v103, v53);
      }

      v60 = 1;
      v59 = v104;
    }
  }

  else
  {
    v57 = v99;
    v58 = v100;
    (*(v100 + 4))(v99, v16, v51);
    (*(v41 + 16))(v47, v49, v105);
    v87 = v40;
    sub_22C4E719C(v40, v101, &qword_27D9C1468, &qword_22C92D680);
    sub_22C4E719C(v106, v102, &qword_27D9C1460, &qword_22C92D678);
    v98 = sub_22C90984C();
    sub_22C90985C();
    v59 = v104;
    sub_22C902A5C();
    (*(v58 + 1))(v57, v51);
    (*(v41 + 8))(v49, v105);
    v60 = 0;
    v40 = v87;
  }

  v85 = sub_22C902A7C();
  sub_22C36C640(v59, v60, 1, v85);
  sub_22C36DD28(v106, &qword_27D9C1460, &qword_22C92D678);
  return sub_22C36DD28(v40, &qword_27D9C1468, &qword_22C92D680);
}

uint64_t sub_22C8E0140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_22C90952C();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = *(*(sub_22C3A5908(&qword_27D9C1478, &qword_22C92D6B0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v10 = *(*(sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v11 = sub_22C90993C();
  v5[17] = v11;
  v12 = *(v11 - 8);
  v5[18] = v12;
  v13 = *(v12 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8E02F8, 0, 0);
}

uint64_t sub_22C8E02F8()
{
  v1 = v0[17];
  sub_22C4E719C(v0[6], v0[16], &qword_27D9BC390, &qword_22C912AC0);
  v2 = sub_22C36CCF8();
  sub_22C36D0A8(v2, v3, v1);
  if (v4)
  {
    v5 = v0[16];
    v6 = &qword_27D9BC390;
    v7 = &qword_22C912AC0;
  }

  else
  {
    v8 = v0[13];
    (*(v0[18] + 32))(v0[20], v0[16], v0[17]);
    sub_22C90988C();
    sub_22C90986C();
    v9 = sub_22C36CCF8();
    v12 = sub_22C370B74(v9, v10, v11);
    v13 = v0[20];
    v14 = v0[17];
    v15 = v0[18];
    v16 = v0[13];
    if (v12 != 1)
    {
      v42 = v0[5];
      sub_22C36DD28(v0[13], &qword_27D9C1478, &qword_22C92D6B0);
      sub_22C8DF6D4(v13, 0, 0, v42);
      v43 = *(v15 + 8);
      v44 = sub_22C36BBCC();
      v45(v44);
LABEL_14:
      sub_22C38B304();

      v46 = v0[1];
      sub_22C36D5F8();

      __asm { BRAA            X1, X16 }
    }

    v17 = *(v15 + 8);
    v18 = sub_22C36BBCC();
    v19(v18);
    v6 = &qword_27D9C1478;
    v7 = &qword_22C92D6B0;
    v5 = v16;
  }

  sub_22C36DD28(v5, v6, v7);
  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[9];
  v23 = v0[10];
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v20);
  v24 = (*(v21 + 88))(v20, v23);
  if (v24 == *MEMORY[0x277D72D50] || v24 == *MEMORY[0x277D72D30])
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
LABEL_9:
    v25 = 0;
    v26 = 0;
    goto LABEL_10;
  }

  v49 = v0[11];
  v50 = v0[12];
  if (v24 != *MEMORY[0x277D72D28])
  {
    (*(v49 + 8))(v0[12], v0[10]);
    goto LABEL_9;
  }

  v51 = sub_22C37EBDC(v49);
  v52(v51);
  v53 = *v50;
  v25 = *(*v50 + 16);
  v0[21] = v25;
  v26 = v53[3];
  v0[22] = v26;
  v55 = v53[4];
  v54 = v53[5];
  v56 = qword_27D9BA800;

  if (v56 != -1)
  {
    swift_once();
  }

  v57 = sub_22C36BA00();
  if (sub_22C5E935C(v57, v58, v59))
  {

LABEL_10:
    v27 = v0[17];
    sub_22C4E719C(v0[6], v0[14], &qword_27D9BC390, &qword_22C912AC0);
    v28 = sub_22C37EF1C();
    sub_22C36D0A8(v28, v29, v27);
    if (v4)
    {
      v30 = v0[14];
      v31 = v0[5];

      sub_22C36DD28(v30, &qword_27D9BC390, &qword_22C912AC0);
      sub_22C902A7C();
      sub_22C36A748();
      sub_22C36C640(v32, v33, v34, v35);
    }

    else
    {
      v37 = v0[18];
      v36 = v0[19];
      v38 = v0[5];
      (*(v37 + 32))(v36, v0[14], v0[17]);
      sub_22C8DF6D4(v36, v25, v26, v38);

      v39 = *(v37 + 8);
      v40 = sub_22C36D264();
      v41(v40);
    }

    goto LABEL_14;
  }

  v60 = v0[15];
  v62 = v0[7];
  v61 = v0[8];
  v78 = v0[6];
  v79 = v0[17];
  type metadata accessor for ResponseGenerationSearchableItem();
  swift_allocObject();

  v0[23] = sub_22C8C6244(v62, v61, v55, v54, v25, v26);

  sub_22C4E719C(v78, v60, &qword_27D9BC390, &qword_22C912AC0);
  v63 = sub_22C374568();
  v65 = sub_22C370B74(v63, v64, v79);

  if (v65 == 1)
  {
    sub_22C36DD28(v0[15], &qword_27D9BC390, &qword_22C912AC0);
    v66 = 0;
  }

  else
  {
    v67 = v0[17];
    v68 = v0[18];
    v69 = v0[15];
    sub_22C9098BC();
    v66 = v70;
    v71 = sub_22C36CDBC();
    v72(v71, v67);
  }

  v0[24] = v66;
  v73 = swift_task_alloc();
  v0[25] = v73;
  *v73 = v0;
  v73[1] = sub_22C8E0810;
  sub_22C37170C();
  sub_22C36D5F8();

  return sub_22C8C6448(v74, v75);
}

uint64_t sub_22C8E0810()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v6 = *(v5 + 200);
  v7 = *(v5 + 192);
  v8 = *v0;
  sub_22C369970();
  *v9 = v8;
  *(v11 + 208) = v10;

  v12 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C8E0914()
{
  if (v0[26] >> 60 == 15)
  {
    v1 = v0[23];

    v2 = v0[22];
    v3 = v0[23];
    v4 = v0[21];
    v5 = v0[17];
    v6 = v0[14];
    sub_22C4E719C(v0[6], v6, &qword_27D9BC390, &qword_22C912AC0);
    sub_22C36D0A8(v6, 1, v5);
    if (!v7)
    {
      v17 = v0[18];
      v18 = v0[5];
      (*(v17 + 32))(v0[19], v0[14], v0[17]);
      v19 = sub_22C370018();
      sub_22C8DF6D4(v19, v20, v2, v21);

      v22 = *(v17 + 8);
      v23 = sub_22C36ECB4();
      v24(v23);
      goto LABEL_7;
    }

    v8 = v0[14];
    v9 = v0[5];

    sub_22C36DD28(v8, &qword_27D9BC390, &qword_22C912AC0);
    sub_22C902A7C();
    v10 = sub_22C37EF1C();
  }

  else
  {
    v13 = v0[3];
    v15 = v0[22];
    v14 = v0[23];
    v16 = v0[5];

    sub_22C36BA00();
    sub_22C902A6C();

    v12 = sub_22C902A7C();
    v10 = v16;
    v11 = 0;
  }

  sub_22C36C640(v10, v11, 1, v12);
LABEL_7:
  sub_22C38B304();

  v25 = v0[1];

  return v25();
}

uint64_t sub_22C8E0B04()
{
  v0 = sub_22C8798C0();
  if (((v0 ^ sub_22C8798C0()) & 1) == 0)
  {
    v1 = sub_22C8794D0();
    v3 = v2;
    if (v1 == sub_22C8794D0() && v3 == v4)
    {
      LOBYTE(v0) = 0;
    }

    else
    {
      LOBYTE(v0) = sub_22C90B4FC();
    }
  }

  return v0 & 1;
}

uint64_t sub_22C8E0BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9063DC();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22C90991C();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = v51[8];
  MEMORY[0x28223BE20](v7);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22C3A5908(&qword_27D9BFFD8, &qword_22C925C90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v47[-v13];
  v15 = sub_22C3A5908(&qword_27D9BFFE0, &qword_22C925C98);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v50 = &v47[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v47[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v47[-v24];
  MEMORY[0x28223BE20](v23);
  v56 = &v47[-v26];
  sub_22C4E719C(a1, v14, &qword_27D9BFFD8, &qword_22C925C90);
  if (sub_22C370B74(v14, 1, v15) == 1)
  {
    sub_22C36DD28(v14, &qword_27D9BFFD8, &qword_22C925C90);
    v27 = sub_22C90033C();
    v28 = a2;
    v29 = 1;
    return sub_22C36C640(v28, v29, 1, v27);
  }

  v49 = a2;
  v30 = v56;
  (*(v16 + 32))(v56, v14, v15);
  v31 = *(v16 + 16);
  v31(v25, v30, v15);
  if ((*(v16 + 88))(v25, v15) == *MEMORY[0x277D731E0])
  {
    (*(v16 + 96))(v25, v15);
    v33 = v51;
    v32 = v52;
    (v51[4])(v10, v25, v52);
    sub_22C9098EC();
    v34 = v49;
    sub_22C90031C();
    (v33[1])(v10, v32);
    (*(v16 + 8))(v56, v15);
    v27 = sub_22C90033C();
    v28 = v34;
    v29 = 0;
    return sub_22C36C640(v28, v29, 1, v27);
  }

  v52 = v25;
  v36 = v55;
  sub_22C90405C();
  v31(v22, v56, v15);
  v37 = sub_22C9063CC();
  v38 = sub_22C90AADC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v57 = v51;
    *v39 = 136642819;
    v48 = v38;
    v31(v50, v22, v15);
    v40 = sub_22C90A1AC();
    v42 = v41;
    v43 = *(v16 + 8);
    v43(v22, v15);
    v44 = sub_22C36F9F4(v40, v42, &v57);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_22C366000, v37, v48, "Unsupported display value %{sensitive}s", v39, 0xCu);
    v45 = v51;
    sub_22C36FF94(v51);
    MEMORY[0x2318B9880](v45, -1, -1);
    MEMORY[0x2318B9880](v39, -1, -1);

    (*(v53 + 8))(v55, v54);
  }

  else
  {

    v43 = *(v16 + 8);
    v43(v22, v15);
    (*(v53 + 8))(v36, v54);
  }

  v43(v56, v15);
  v46 = sub_22C90033C();
  sub_22C36C640(v49, 1, 1, v46);
  return (v43)(v52, v15);
}

uint64_t sub_22C8E1180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_22C9063DC();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9C1480, &qword_22C92D6B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  v10 = sub_22C3A5908(&qword_27D9C1488, &qword_22C92D6C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  sub_22C4E719C(a1, v9, &qword_27D9C1480, &qword_22C92D6B8);
  if (sub_22C370B74(v9, 1, v10) == 1)
  {
    sub_22C36DD28(v9, &qword_27D9C1480, &qword_22C92D6B8);
    v24 = sub_22C90989C();
    v25 = v47;
    v26 = 1;
    return sub_22C36C640(v25, v26, 1, v24);
  }

  (*(v11 + 32))(v23, v9, v10);
  v27 = *(v11 + 16);
  v27(v21, v23, v10);
  v28 = v21;
  if ((*(v11 + 88))(v21, v10) == *MEMORY[0x277D731E0])
  {
    (*(v11 + 8))(v23, v10);
    (*(v11 + 96))(v21, v10);
    v29 = sub_22C90989C();
    v30 = v47;
    (*(*(v29 - 8) + 32))(v47, v28, v29);
    v25 = v30;
    v26 = 0;
    v24 = v29;
    return sub_22C36C640(v25, v26, 1, v24);
  }

  v43 = v21;
  sub_22C90405C();
  v27(v18, v23, v10);
  v32 = sub_22C9063CC();
  v33 = sub_22C90AADC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48 = v42;
    *v34 = 136642819;
    v27(v15, v18, v10);
    v41 = sub_22C90A1AC();
    v36 = v35;
    v37 = *(v11 + 8);
    v37(v18, v10);
    v38 = sub_22C36F9F4(v41, v36, &v48);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_22C366000, v32, v33, "Unsupported display value %{sensitive}s", v34, 0xCu);
    v39 = v42;
    sub_22C36FF94(v42);
    MEMORY[0x2318B9880](v39, -1, -1);
    MEMORY[0x2318B9880](v34, -1, -1);
  }

  else
  {

    v37 = *(v11 + 8);
    v37(v18, v10);
  }

  (*(v44 + 8))(v46, v45);
  v37(v23, v10);
  v40 = sub_22C90989C();
  sub_22C36C640(v47, 1, 1, v40);
  return (v37)(v43, v10);
}

uint64_t sub_22C8E1694(uint64_t *a1)
{
  v2 = *(sub_22C90221C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C598(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C8E173C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C8E173C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C90221C();
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C90221C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C8E2ADC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_22C8E186C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C8E186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v179 = a1;
  v157 = sub_22C90934C();
  v7 = *(v157 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v157);
  v156 = v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_22C90910C();
  v10 = *(v162 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v162);
  v161 = v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_22C90919C();
  v13 = *(v173 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v173);
  v172 = v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_22C9093BC();
  v16 = *(v180 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v180);
  v191 = v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v190 = v154 - v21;
  MEMORY[0x28223BE20](v20);
  v207 = v154 - v22;
  v196 = sub_22C90952C();
  v23 = *(v196 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v196 - 8);
  v192 = v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v195 = v154 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v209 = v154 - v30;
  MEMORY[0x28223BE20](v29);
  v208 = v154 - v31;
  v32 = sub_22C90221C();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v178 = v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v212 = v154 - v37;
  result = MEMORY[0x28223BE20](v36);
  v163 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v41 = v154 - v39;
  v200 = *a4;
  v185 = *(v40 + 16);
  v211 = (v16 + 8);
  v206 = (v23 + 16);
  v205 = (v23 + 88);
  v204 = *MEMORY[0x277D72D50];
  v203 = *MEMORY[0x277D72D30];
  v194 = *MEMORY[0x277D72D28];
  v171 = *MEMORY[0x277D72D18];
  v202 = (v23 + 8);
  v176 = (v23 + 96);
  v184 = (v16 + 88);
  v183 = *MEMORY[0x277D72A58];
  v182 = *MEMORY[0x277D729E8];
  v175 = *MEMORY[0x277D72A38];
  v174 = (v16 + 96);
  v170 = *MEMORY[0x277D729E0];
  v155 = (v7 + 16);
  v154[1] = v7 + 8;
  v160 = (v10 + 16);
  v169 = *MEMORY[0x277D72A30];
  v159 = v10 + 8;
  v168 = (v13 + 16);
  v167 = v13 + 8;
  v166 = *MEMORY[0x277D72A40];
  v189 = (v40 + 8);
  v177 = (v40 + 32);
  v164 = *MEMORY[0x277D729F8];
  v158 = *MEMORY[0x277D72A60];
  v187 = v40 + 16;
  v181 = *(v40 + 72);
  v186 = v154 - v39;
  v188 = v32;
  while (2)
  {
    v165 = a3;
    v42 = v180;
    v43 = v192;
    while (1)
    {
      v44 = v200;
      v45 = v181;
      v198 = v200 + v181 * a3;
      v46 = v185;
      v185(v41);
      v199 = a3 - 1;
      v197 = v44 + (a3 - 1) * v45;
      v46(v212);
      v47 = v207;
      sub_22C90207C();
      v48 = v208;
      sub_22C90935C();
      v49 = *v211;
      (*v211)(v47, v42);
      v50 = *v206;
      v51 = v209;
      v52 = v196;
      (*v206)(v209, v48, v196);
      v53 = *v205;
      v54 = (*v205)(v51, v52);
      v55 = v54 == v204 || v54 == v203;
      v201 = v50;
      if (v55 || v54 != v194)
      {
        v74 = *v202;
        (*v202)(v208, v52);
        v74(v209, v52);
        LODWORD(v210) = 0;
      }

      else
      {
        v193 = v49;
        v56 = v209;
        (*v176)(v209, v52);
        v58 = *(*v56 + 16);
        v57 = *(*v56 + 24);
        v60 = *(*v56 + 32);
        v59 = *(*v56 + 40);
        if (qword_27D9BA7D8 != -1)
        {
          swift_once();
        }

        v61 = off_27D9C0CA8;
        if (*(off_27D9C0CA8 + 2) && (v62 = sub_22C36E2BC(v58, v57), (v63 & 1) != 0) && (v64 = *(v61[7] + 8 * v62), *(v64 + 16)))
        {
          v65 = *(v64 + 40);
          sub_22C90B62C();

          sub_22C909FFC();
          v66 = sub_22C90B66C();
          v67 = ~(-1 << *(v64 + 32));
          do
          {
            v68 = v66 & v67;
            v69 = (1 << (v66 & v67)) & *(v64 + 56 + (((v66 & v67) >> 3) & 0xFFFFFFFFFFFFFF8));
            v70 = v69 != 0;
            if (!v69)
            {
              break;
            }

            v71 = (*(v64 + 48) + 16 * v68);
            if (*v71 == v60 && v71[1] == v59)
            {
              break;
            }

            v73 = sub_22C90B4FC();
            v66 = v68 + 1;
          }

          while ((v73 & 1) == 0);
        }

        else
        {
          v70 = 0;
        }

        LODWORD(v210) = v70;
        v74 = *v202;
        v52 = v196;
        (*v202)(v208, v196);

        v42 = v180;
        v43 = v192;
        v49 = v193;
      }

      v75 = v207;
      sub_22C90207C();
      v76 = v195;
      sub_22C90935C();
      v49(v75, v42);
      v201(v43, v76, v52);
      v77 = v53(v43, v52);
      v78 = v77 == v204 || v77 == v203;
      if (!v78 && v77 == v194)
      {
        break;
      }

      v74(v76, v52);
      v74(v43, v52);
      v80 = v188;
      v41 = v186;
      if ((v210 & 1) == 0)
      {
        goto LABEL_51;
      }

      v81 = *v189;
      (*v189)(v212, v188);
      result = (v81)(v41, v80);
LABEL_75:
      if (!v200)
      {
        __break(1u);
        return result;
      }

      v130 = *v177;
      v131 = v178;
      (*v177)(v178, v198, v80);
      v132 = v197;
      swift_arrayInitWithTakeFrontToBack();
      result = (v130)(v132, v131, v80);
      a3 = v199;
      if (v199 == v179)
      {
        goto LABEL_101;
      }
    }

    v193 = v49;
    (*v176)(v43, v52);
    v83 = *(*v43 + 16);
    v82 = *(*v43 + 24);
    v85 = *(*v43 + 32);
    v84 = *(*v43 + 40);
    v86 = v210;
    if (qword_27D9BA7D8 != -1)
    {
      swift_once();
    }

    v87 = off_27D9C0CA8;
    if (*(off_27D9C0CA8 + 2) && (v88 = sub_22C36E2BC(v83, v82), (v89 & 1) != 0) && (v90 = *(v87[7] + 8 * v88), *(v90 + 16)))
    {
      v91 = *(v90 + 40);
      sub_22C90B62C();

      sub_22C909FFC();
      v92 = sub_22C90B66C();
      v93 = ~(-1 << *(v90 + 32));
      do
      {
        v94 = v92 & v93;
        v95 = (1 << (v92 & v93)) & *(v90 + 56 + (((v92 & v93) >> 3) & 0xFFFFFFFFFFFFFF8));
        v96 = v95 != 0;
        if (!v95)
        {
          break;
        }

        v97 = (*(v90 + 48) + 16 * v94);
        if (*v97 == v85 && v97[1] == v84)
        {
          break;
        }

        v99 = sub_22C90B4FC();
        v92 = v94 + 1;
      }

      while ((v99 & 1) == 0);

      v86 = v210;
    }

    else
    {
      v96 = 0;
    }

    v74(v195, v196);

    v42 = v180;
    v43 = v192;
    v80 = v188;
    v41 = v186;
    v49 = v193;
    if (v86 != v96)
    {
LABEL_74:
      v129 = *v189;
      (*v189)(v212, v80);
      result = (v129)(v41, v80);
      if ((v86 & 1) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_75;
    }

LABEL_51:
    v100 = v190;
    sub_22C90207C();
    v101 = *v184;
    v102 = (*v184)(v100, v42);
    if (v102 == v183 || v102 == v182)
    {
      goto LABEL_56;
    }

    if (v102 != v175)
    {
      if (v102 != v170 && v102 != v169 && v102 != v166)
      {
        if (v102 == v164)
        {
          v135 = v190;
          (*v174)(v190, v42);
          v136 = *v135;
          v137 = swift_projectBox();
          v108 = v161;
          v109 = v41;
          v110 = v162;
          (*v160)(v161, v137, v162);
          v210 = sub_22C90908C();
          v104 = v138;
          v112 = &v193;
          goto LABEL_59;
        }

        if (v102 == v158)
        {
          v145 = v190;
          (*v174)(v190, v42);
          v146 = *v145;
          v147 = swift_projectBox();
          v108 = v156;
          v109 = v41;
          v110 = v157;
          (*v155)(v156, v147, v157);
          v210 = sub_22C90932C();
          v104 = v148;
          v112 = &v188;
          goto LABEL_59;
        }
      }

LABEL_56:
      v49(v190, v42);
      v210 = 0;
      v104 = 0xE000000000000000;
      goto LABEL_60;
    }

    v105 = v190;
    (*v174)(v190, v42);
    v106 = *v105;
    v107 = swift_projectBox();
    v108 = v172;
    v109 = v41;
    v110 = v173;
    (*v168)(v172, v107, v173);
    v210 = sub_22C90908C();
    v104 = v111;
    v112 = &v201;
LABEL_59:
    v113 = v110;
    v41 = v109;
    (**(v112 - 32))(v108, v113);

LABEL_60:
    v114 = v191;
    sub_22C90207C();
    v115 = v42;
    v116 = v101(v114, v42);
    if (v116 == v183 || v116 == v182)
    {
      goto LABEL_65;
    }

    if (v116 != v175)
    {
      if (v116 != v170 && v116 != v169 && v116 != v166)
      {
        if (v116 == v164)
        {
          v141 = v191;
          (*v174)(v191, v42);
          v121 = v41;
          v142 = *v141;
          v143 = swift_projectBox();
          v124 = v161;
          v125 = v162;
          (*v160)(v161, v143, v162);
          v118 = sub_22C90908C();
          v119 = v144;
          v127 = &v193;
          goto LABEL_68;
        }

        if (v116 == v158)
        {
          v149 = v191;
          (*v174)(v191, v42);
          v121 = v41;
          v150 = *v149;
          v151 = swift_projectBox();
          v124 = v156;
          v125 = v157;
          (*v155)(v156, v151, v157);
          v118 = sub_22C90932C();
          v119 = v152;
          v127 = &v188;
          goto LABEL_68;
        }
      }

LABEL_65:
      v49(v191, v42);
      v118 = 0;
      v119 = 0xE000000000000000;
      goto LABEL_69;
    }

    v120 = v191;
    (*v174)(v191, v42);
    v121 = v41;
    v122 = *v120;
    v123 = swift_projectBox();
    v124 = v172;
    v125 = v173;
    (*v168)(v172, v123, v173);
    v118 = sub_22C90908C();
    v119 = v126;
    v127 = &v201;
LABEL_68:
    v115 = v180;
    (**(v127 - 32))(v124, v125);
    v41 = v121;

LABEL_69:
    if (v210 != v118 || v104 != v119)
    {
      LOBYTE(v86) = sub_22C90B4FC();

      v43 = v192;
      v42 = v115;
      goto LABEL_74;
    }

    v153 = *v189;
    (*v189)(v212, v80);
    result = (v153)(v41, v80);
LABEL_101:
    a3 = v165 + 1;
    if (v165 + 1 != v163)
    {
      continue;
    }

    return result;
  }
}

void sub_22C8E2ADC(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v373 = a4;
  v367 = a1;
  v371 = sub_22C90934C();
  v5 = *(v371 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v371);
  v370 = &v364 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = sub_22C90910C();
  v8 = *(v380 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v380);
  v379 = &v364 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = sub_22C90919C();
  v11 = *(v397 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v397);
  v396 = &v364 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v440 = sub_22C9093BC();
  v14 = *(v440 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v440);
  v410 = &v364 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v409 = &v364 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v383 = &v364 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v382 = &v364 - v23;
  MEMORY[0x28223BE20](v22);
  v435 = &v364 - v24;
  v419 = sub_22C90952C();
  v25 = *(v419 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v419);
  v411 = &v364 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v364 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v428 = &v364 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v429 = &v364 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v381 = &v364 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v386 = &v364 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v388 = &v364 - v41;
  MEMORY[0x28223BE20](v40);
  v389 = &v364 - v42;
  v420 = sub_22C90221C();
  v43 = *(*(v420 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v420);
  v378 = &v364 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v406 = &v364 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v439 = &v364 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v437 = &v364 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v401 = &v364 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v398 = &v364 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  MEMORY[0x28223BE20](v56);
  v60 = &v364 - v59;
  v387 = a3;
  v61 = a3[1];
  v385 = v57;
  if (v61 < 1)
  {
    v63 = MEMORY[0x277D84F90];
LABEL_296:
    v183 = *v367;
    if (!*v367)
    {
      goto LABEL_338;
    }

    v70 = v63;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_298;
    }

    goto LABEL_332;
  }

  v366 = v60;
  v62 = 0;
  v417 = v57 + 16;
  v418 = (v57 + 8);
  v434 = *MEMORY[0x277D72D50];
  v438 = (v14 + 8);
  v433 = (v25 + 16);
  v432 = (v25 + 88);
  v431 = *MEMORY[0x277D72D30];
  v423 = *MEMORY[0x277D72D28];
  v395 = *MEMORY[0x277D72D18];
  v430 = (v25 + 8);
  v405 = (v25 + 96);
  v416 = (v14 + 88);
  v415 = *MEMORY[0x277D72A58];
  v414 = *MEMORY[0x277D729E8];
  v403 = *MEMORY[0x277D72A38];
  v399 = (v14 + 96);
  v394 = *MEMORY[0x277D729E0];
  v369 = (v5 + 16);
  v368 = v5 + 8;
  v377 = (v8 + 16);
  v393 = *MEMORY[0x277D72A30];
  v376 = v8 + 8;
  v392 = (v11 + 16);
  v391 = v11 + 8;
  v390 = *MEMORY[0x277D72A40];
  v413 = (v57 + 32);
  v384 = *MEMORY[0x277D729F8];
  v375 = *MEMORY[0x277D72A60];
  v63 = MEMORY[0x277D84F90];
  v64 = v419;
  v422 = v31;
  v365 = v58;
  while (1)
  {
    v372 = v63;
    v65 = v62;
    v66 = v62 + 1;
    v412 = v62;
    if (v62 + 1 >= v61)
    {
      v161 = (v62 + 1);
      v182 = v373;
      v70 = v420;
      v183 = v65;
      goto LABEL_126;
    }

    v424 = v61;
    v67 = *v387;
    v68 = *(v385 + 72);
    v69 = *(v385 + 16);
    v70 = v420;
    v69(v366, &(*v387)[v68 * v66], v420);
    v425 = v68;
    v408 = v67;
    v71 = &v67[v68 * v65];
    v72 = v365;
    v407 = v69;
    v69(v365, v71, v70);
    v73 = v366;
    v74 = v72;
    v75 = v400;
    LODWORD(v421) = sub_22C8E0B04();
    v400 = v75;
    if (v75)
    {
      v363 = *v418;
      (*v418)(v72, v70);
      v363(v73, v70);
LABEL_306:

      return;
    }

    v76 = *v418;
    (*v418)(v74, v70);
    v404 = v76;
    v76(v73, v70);
    v77 = v65 + 2;
    v78 = v424;
    v64 = v419;
    while (1)
    {
      v79 = v77;
      if (v66 + 1 >= v78)
      {
        break;
      }

      v436 = v77;
      v402 = v66 + 1;
      v80 = v425;
      v81 = v408;
      v82 = v407;
      v407(v398, (v408 + (v66 + 1) * v425), v70);
      v82(v401, &v81[v66 * v80], v70);
      v83 = v435;
      sub_22C90207C();
      v84 = v389;
      sub_22C90935C();
      v85 = *v438;
      (*v438)(v83, v440);
      v86 = *v433;
      v87 = v388;
      (*v433)(v388, v84, v64);
      v88 = *v432;
      v89 = (*v432)(v87, v64);
      v90 = v89 == v434 || v89 == v431;
      v426 = v85;
      v427 = v86;
      if (v90 || v89 != v423)
      {
        v109 = *v430;
        (*v430)(v389, v64);
        v109(v388, v64);
        v105 = 0;
      }

      else
      {
        v91 = v388;
        (*v405)(v388, v64);
        v93 = *(*v91 + 16);
        v92 = *(*v91 + 24);
        v94 = *(*v91 + 32);
        v95 = *(*v91 + 40);
        if (qword_27D9BA7D8 != -1)
        {
          swift_once();
        }

        v96 = off_27D9C0CA8;
        if (*(off_27D9C0CA8 + 2) && (v97 = sub_22C36E2BC(v93, v92), (v98 & 1) != 0) && (v99 = *(v96[7] + 8 * v97), *(v99 + 16)))
        {
          v100 = *(v99 + 40);
          sub_22C90B62C();

          sub_22C909FFC();
          v101 = sub_22C90B66C();
          v102 = ~(-1 << *(v99 + 32));
          do
          {
            v103 = v101 & v102;
            v104 = (1 << (v101 & v102)) & *(v99 + 56 + (((v101 & v102) >> 3) & 0xFFFFFFFFFFFFFF8));
            v105 = v104 != 0;
            if (!v104)
            {
              break;
            }

            v106 = (*(v99 + 48) + 16 * v103);
            if (*v106 == v94 && v106[1] == v95)
            {
              break;
            }

            v108 = sub_22C90B4FC();
            v101 = v103 + 1;
          }

          while ((v108 & 1) == 0);
        }

        else
        {
          v105 = 0;
        }

        v109 = *v430;
        v64 = v419;
        (*v430)(v389, v419);

        v85 = v426;
      }

      v110 = v435;
      sub_22C90207C();
      v111 = v386;
      sub_22C90935C();
      v85(v110, v440);
      v112 = v381;
      (v427)(v381, v111, v64);
      v113 = v88(v112, v64);
      if (v113 != v434 && v113 != v431 && v113 == v423)
      {
        v427 = v109;
        (*v405)(v112, v64);
        v117 = *(*v112 + 16);
        v116 = *(*v112 + 24);
        v118 = *(*v112 + 32);
        v119 = *(*v112 + 40);
        if (qword_27D9BA7D8 != -1)
        {
          swift_once();
        }

        v120 = off_27D9C0CA8;
        if (*(off_27D9C0CA8 + 2) && (v121 = sub_22C36E2BC(v117, v116), (v122 & 1) != 0) && (v123 = *(v120[7] + 8 * v121), *(v123 + 16)))
        {
          v124 = *(v123 + 40);
          sub_22C90B62C();

          sub_22C909FFC();
          v125 = sub_22C90B66C();
          v126 = ~(-1 << *(v123 + 32));
          do
          {
            v127 = v125 & v126;
            v128 = (1 << (v125 & v126)) & *(v123 + 56 + (((v125 & v126) >> 3) & 0xFFFFFFFFFFFFFF8));
            v129 = v128 != 0;
            if (!v128)
            {
              break;
            }

            v130 = (*(v123 + 48) + 16 * v127);
            if (*v130 == v118 && v130[1] == v119)
            {
              break;
            }

            v132 = sub_22C90B4FC();
            v125 = v127 + 1;
          }

          while ((v132 & 1) == 0);
        }

        else
        {
          v129 = 0;
        }

        (v427)(v386, v419);

        if (v105 != v129)
        {
          goto LABEL_79;
        }

LABEL_54:
        v133 = v382;
        sub_22C90207C();
        v134 = *v416;
        v135 = (*v416)(v133, v440);
        v136 = v135 == v415 || v135 == v414;
        v137 = v426;
        if (v136)
        {
          goto LABEL_59;
        }

        if (v135 == v403)
        {
          v140 = v382;
          (*v399)(v382, v440);
          v141 = *v140;
          v142 = swift_projectBox();
          v143 = v396;
          v144 = v397;
          (*v392)(v396, v142, v397);
          v138 = sub_22C90908C();
          v139 = v145;
          v146 = &v425;
          goto LABEL_62;
        }

        v162 = v135 == v394 || v135 == v393;
        if (v162 || v135 == v390)
        {
          goto LABEL_59;
        }

        if (v135 == v384)
        {
          v164 = v382;
          (*v399)(v382, v440);
          v165 = *v164;
          v166 = swift_projectBox();
          v143 = v379;
          v144 = v380;
          (*v377)(v379, v166, v380);
          v138 = sub_22C90908C();
          v139 = v167;
          v146 = &v409;
          goto LABEL_62;
        }

        if (v135 != v375)
        {
LABEL_59:
          (v426)(v382, v440);
          v138 = 0;
          v139 = 0xE000000000000000;
        }

        else
        {
          v174 = v382;
          (*v399)(v382, v440);
          v175 = *v174;
          v176 = swift_projectBox();
          v143 = v370;
          v144 = v371;
          (*v369)(v370, v176, v371);
          v138 = sub_22C90932C();
          v139 = v177;
          v146 = &v401;
LABEL_62:
          (**(v146 - 32))(v143, v144);
        }

        v147 = v383;
        sub_22C90207C();
        v148 = v134(v147, v440);
        if (v148 == v415 || v148 == v414)
        {
          goto LABEL_68;
        }

        if (v148 == v403)
        {
          v152 = v383;
          (*v399)(v383, v440);
          v153 = *v152;
          v154 = swift_projectBox();
          v155 = v396;
          v156 = v397;
          (*v392)(v396, v154, v397);
          v150 = sub_22C90908C();
          v151 = v157;
          v158 = &v425;
          goto LABEL_71;
        }

        v168 = v148 == v394 || v148 == v393;
        if (v168 || v148 == v390)
        {
          goto LABEL_68;
        }

        if (v148 == v384)
        {
          v170 = v383;
          (*v399)(v383, v440);
          v171 = *v170;
          v172 = swift_projectBox();
          v155 = v379;
          v156 = v380;
          (*v377)(v379, v172, v380);
          v150 = sub_22C90908C();
          v151 = v173;
          v158 = &v409;
          goto LABEL_71;
        }

        if (v148 != v375)
        {
LABEL_68:
          (v137)(v383, v440);
          v150 = 0;
          v151 = 0xE000000000000000;
        }

        else
        {
          v178 = v383;
          (*v399)(v383, v440);
          v179 = *v178;
          v180 = swift_projectBox();
          v155 = v370;
          v156 = v371;
          (*v369)(v370, v180, v371);
          v150 = sub_22C90932C();
          v151 = v181;
          v158 = &v401;
LABEL_71:
          (**(v158 - 32))(v155, v156);
        }

        if (v138 == v150 && v139 == v151)
        {
          v105 = 0;
        }

        else
        {
          v105 = sub_22C90B4FC();
        }

        goto LABEL_79;
      }

      v109(v111, v64);
      v109(v112, v64);
      if ((v105 & 1) == 0)
      {
        goto LABEL_54;
      }

      v105 = 1;
LABEL_79:
      v70 = v420;
      v160 = v404;
      v404(v401, v420);
      v160(v398, v70);
      v79 = v436;
      v77 = v436 + 1;
      v161 = v402;
      v66 = v402;
      v64 = v419;
      v78 = v424;
      if ((v421 ^ v105))
      {
        goto LABEL_105;
      }
    }

    v161 = v78;
LABEL_105:
    if ((v421 & 1) == 0)
    {
      v182 = v373;
      v183 = v412;
      goto LABEL_126;
    }

    v183 = v412;
    v182 = v373;
    if (v161 < v412)
    {
      goto LABEL_331;
    }

    if (v412 < v161)
    {
      if (v78 >= v79)
      {
        v184 = v79;
      }

      else
      {
        v184 = v78;
      }

      v185 = v425 * (v184 - 1);
      v186 = v425 * v184;
      v187 = v412 * v425;
      v188 = v161;
      v189 = v412;
      v402 = v161;
      do
      {
        if (v189 != --v188)
        {
          v190 = *v387;
          if (!*v387)
          {
            goto LABEL_336;
          }

          v191 = *v413;
          v192 = v420;
          (*v413)(v378, &v190[v187], v420);
          if (v187 < v185 || &v190[v187] >= &v190[v186])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v187 != v185)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v191(&v190[v185], v378, v192);
          v182 = v373;
          v161 = v402;
          v183 = v412;
        }

        ++v189;
        v185 -= v425;
        v186 -= v425;
        v187 += v425;
      }

      while (v189 < v188);
      v64 = v419;
      v70 = v420;
    }

LABEL_126:
    v194 = v387[1];
    if (v161 < v194)
    {
      if (__OFSUB__(v161, v183))
      {
        goto LABEL_328;
      }

      if (&v161[-v183] < v182)
      {
        break;
      }
    }

LABEL_239:
    if (v161 < v183)
    {
      goto LABEL_327;
    }

    v402 = v161;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v63 = v372;
    }

    else
    {
      v352 = v372[2];
      sub_22C590218();
      v63 = v353;
    }

    v310 = v63[2];
    v70 = v310 + 1;
    if (v310 >= v63[3] >> 1)
    {
      sub_22C590218();
      v63 = v354;
    }

    v63[2] = v70;
    v311 = v63 + 4;
    v312 = &v63[2 * v310 + 4];
    v313 = v402;
    *v312 = v183;
    v312[1] = v313;
    v314 = *v367;
    if (!*v367)
    {
      goto LABEL_337;
    }

    if (v310)
    {
      v64 = v419;
      v183 = v63;
      while (1)
      {
        v315 = v70 - 1;
        v316 = &v311[2 * v70 - 2];
        v317 = &v63[2 * v70];
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v318 = v63[4];
          v319 = v63[5];
          v328 = __OFSUB__(v319, v318);
          v320 = v319 - v318;
          v321 = v328;
LABEL_260:
          if (v321)
          {
            goto LABEL_314;
          }

          v333 = *v317;
          v332 = v317[1];
          v334 = __OFSUB__(v332, v333);
          v335 = v332 - v333;
          v336 = v334;
          if (v334)
          {
            goto LABEL_317;
          }

          v337 = v316[1];
          v338 = v337 - *v316;
          if (__OFSUB__(v337, *v316))
          {
            goto LABEL_320;
          }

          if (__OFADD__(v335, v338))
          {
            goto LABEL_322;
          }

          if (v335 + v338 >= v320)
          {
            if (v320 < v338)
            {
              v315 = v70 - 2;
            }

            goto LABEL_282;
          }

          goto LABEL_275;
        }

        if (v70 < 2)
        {
          goto LABEL_316;
        }

        v340 = *v317;
        v339 = v317[1];
        v328 = __OFSUB__(v339, v340);
        v335 = v339 - v340;
        v336 = v328;
LABEL_275:
        if (v336)
        {
          goto LABEL_319;
        }

        v342 = *v316;
        v341 = v316[1];
        v328 = __OFSUB__(v341, v342);
        v343 = v341 - v342;
        if (v328)
        {
          goto LABEL_321;
        }

        if (v343 < v335)
        {
          v63 = v183;
          goto LABEL_291;
        }

LABEL_282:
        if (v315 - 1 >= v70)
        {
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
          goto LABEL_330;
        }

        if (!*v387)
        {
          goto LABEL_334;
        }

        v70 = &v311[2 * v315 - 2];
        v347 = *v70;
        v348 = &v311[2 * v315];
        v349 = *(v348 + 1);
        v350 = v400;
        sub_22C8E5188(&(*v387)[*(v385 + 72) * *v70], &(*v387)[*(v385 + 72) * *v348], &(*v387)[*(v385 + 72) * v349], v314);
        v400 = v350;
        if (v350)
        {
          goto LABEL_306;
        }

        if (v349 < v347)
        {
          goto LABEL_309;
        }

        v351 = *(v183 + 16);
        if (v315 > v351)
        {
          goto LABEL_310;
        }

        *v70 = v347;
        *(v70 + 8) = v349;
        if (v315 >= v351)
        {
          goto LABEL_311;
        }

        v70 = v351 - 1;
        sub_22C56BFF0(v348 + 16, v351 - 1 - v315, &v311[2 * v315]);
        v63 = v183;
        *(v183 + 16) = v351 - 1;
        v64 = v419;
        if (v351 <= 2)
        {
          goto LABEL_291;
        }
      }

      v322 = &v311[2 * v70];
      v323 = *(v322 - 8);
      v324 = *(v322 - 7);
      v328 = __OFSUB__(v324, v323);
      v325 = v324 - v323;
      if (v328)
      {
        goto LABEL_312;
      }

      v327 = *(v322 - 6);
      v326 = *(v322 - 5);
      v328 = __OFSUB__(v326, v327);
      v320 = v326 - v327;
      v321 = v328;
      if (v328)
      {
        goto LABEL_313;
      }

      v329 = v317[1];
      v330 = v329 - *v317;
      if (__OFSUB__(v329, *v317))
      {
        goto LABEL_315;
      }

      v328 = __OFADD__(v320, v330);
      v331 = v320 + v330;
      if (v328)
      {
        goto LABEL_318;
      }

      if (v331 >= v325)
      {
        v345 = *v316;
        v344 = v316[1];
        v328 = __OFSUB__(v344, v345);
        v346 = v344 - v345;
        if (v328)
        {
          goto LABEL_326;
        }

        if (v320 < v346)
        {
          v315 = v70 - 2;
        }

        goto LABEL_282;
      }

      goto LABEL_260;
    }

    v64 = v419;
LABEL_291:
    v61 = v387[1];
    v62 = v402;
    if (v402 >= v61)
    {
      goto LABEL_296;
    }
  }

  v195 = v183 + v182;
  if (__OFADD__(v183, v182))
  {
    goto LABEL_329;
  }

  if (v195 >= v194)
  {
    v195 = v387[1];
  }

  if (v195 < v183)
  {
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    v70 = sub_22C56BFD8(v70);
LABEL_298:
    v355 = (v70 + 16);
    v356 = *(v70 + 16);
    while (v356 >= 2)
    {
      if (!*v387)
      {
        goto LABEL_335;
      }

      v357 = v70;
      v358 = (v70 + 16 * v356);
      v359 = *v358;
      v70 = &v355[2 * v356];
      v360 = *(v70 + 8);
      v361 = v400;
      sub_22C8E5188(&(*v387)[*(v385 + 72) * *v358], &(*v387)[*(v385 + 72) * *v70], &(*v387)[*(v385 + 72) * v360], v183);
      v400 = v361;
      if (v361)
      {
        break;
      }

      if (v360 < v359)
      {
        goto LABEL_323;
      }

      if (v356 - 2 >= *v355)
      {
        goto LABEL_324;
      }

      *v358 = v359;
      v358[1] = v360;
      v362 = *v355 - v356;
      if (*v355 < v356)
      {
        goto LABEL_325;
      }

      v356 = *v355 - 1;
      sub_22C56BFF0((v70 + 16), v362, v70);
      *v355 = v356;
      v70 = v357;
    }

    goto LABEL_306;
  }

  if (v161 == v195)
  {
    goto LABEL_239;
  }

  v427 = *v387;
  v408 = *(v385 + 72);
  v407 = *(v385 + 16);
  v374 = v195;
  while (2)
  {
    v402 = v161;
    v196 = v161;
LABEL_136:
    v197 = v64;
    v198 = v196 - 1;
    v199 = v427;
    v200 = v408;
    v425 = &v427[v408 * v196];
    v201 = v407;
    (v407)(v437);
    v426 = v198;
    v202 = &v199[v198 * v200];
    v203 = v440;
    v204 = v435;
    v201(v439, v202, v70);
    sub_22C90207C();
    v205 = v429;
    sub_22C90935C();
    v206 = v203;
    v64 = v197;
    v207 = *v438;
    (*v438)(v204, v206);
    v208 = *v433;
    v209 = v428;
    (*v433)(v428, v205, v64);
    v210 = *v432;
    v211 = (*v432)(v209, v64);
    v212 = v211 == v434 || v211 == v431;
    v424 = v202;
    if (v212)
    {
      v213 = *v430;
      goto LABEL_142;
    }

    if (v211 != v423)
    {
      v213 = *v430;
      if (v211 != v395)
      {
        v213(v429, v64);
        v213(v428, v64);
        LODWORD(v436) = 0;
        v214 = v411;
        v215 = v422;
        goto LABEL_163;
      }

LABEL_142:
      v214 = v411;
      v215 = v422;
      v213(v429, v64);
      v213(v428, v64);
      LODWORD(v436) = 0;
      goto LABEL_163;
    }

    v421 = v207;
    v216 = v428;
    (*v405)(v428, v64);
    v218 = *(*v216 + 16);
    v217 = *(*v216 + 24);
    v219 = *(*v216 + 32);
    v220 = *(*v216 + 40);
    if (qword_27D9BA7D8 != -1)
    {
      swift_once();
    }

    v221 = off_27D9C0CA8;
    if (*(off_27D9C0CA8 + 2) && (v222 = sub_22C36E2BC(v218, v217), (v223 & 1) != 0))
    {
      v224 = *(v221[7] + 8 * v222);
      v225 = v419;
      if (*(v224 + 16))
      {
        v226 = *(v224 + 40);
        sub_22C90B62C();

        sub_22C909FFC();
        v227 = sub_22C90B66C();
        v404 = (v224 + 56);
        v228 = ~(-1 << *(v224 + 32));
        do
        {
          v229 = v227 & v228;
          v230 = (1 << (v227 & v228)) & *(v404 + (((v227 & v228) >> 3) & 0xFFFFFFFFFFFFFF8));
          LODWORD(v436) = v230 != 0;
          if (!v230)
          {
            break;
          }

          v231 = (*(v224 + 48) + 16 * v229);
          if (*v231 == v219 && v231[1] == v220)
          {
            break;
          }

          v233 = sub_22C90B4FC();
          v227 = v229 + 1;
        }

        while ((v233 & 1) == 0);
      }

      else
      {
        LODWORD(v436) = 0;
      }

      v64 = v225;
    }

    else
    {
      LODWORD(v436) = 0;
      v64 = v419;
    }

    v213 = *v430;
    (*v430)(v429, v64);

    v214 = v411;
    v215 = v422;
    v207 = v421;
LABEL_163:
    v234 = v435;
    sub_22C90207C();
    sub_22C90935C();
    v207(v234, v440);
    (v208)(v214, v215, v64);
    v235 = v210(v214, v64);
    if (v235 != v434 && v235 != v431 && v235 == v423)
    {
      v421 = v207;
      v239 = v64;
      (*v405)(v214, v64);
      v240 = *v214;
      v241 = v240[2];
      v242 = v240[3];
      v243 = v240[4];
      v244 = v240[5];
      if (qword_27D9BA7D8 != -1)
      {
        swift_once();
      }

      v245 = off_27D9C0CA8;
      if (*(off_27D9C0CA8 + 2) && (v246 = sub_22C36E2BC(v241, v242), (v247 & 1) != 0) && (v248 = *(v245[7] + 8 * v246), *(v248 + 16)))
      {
        v249 = *(v248 + 40);
        sub_22C90B62C();

        sub_22C909FFC();
        v250 = sub_22C90B66C();
        v251 = ~(-1 << *(v248 + 32));
        do
        {
          v252 = v250 & v251;
          v253 = (1 << (v250 & v251)) & *(v248 + 56 + (((v250 & v251) >> 3) & 0xFFFFFFFFFFFFFF8));
          v254 = v253 != 0;
          if (!v253)
          {
            break;
          }

          v255 = (*(v248 + 48) + 16 * v252);
          if (*v255 == v243 && v255[1] == v244)
          {
            break;
          }

          v257 = sub_22C90B4FC();
          v250 = v252 + 1;
        }

        while ((v257 & 1) == 0);

        v64 = v419;
      }

      else
      {
        v254 = 0;
        v64 = v239;
      }

      v213(v422, v64);

      v258 = v436;
      v207 = v421;
      if (v436 == v254)
      {
        goto LABEL_187;
      }
    }

    else
    {
      v213(v215, v64);
      v213(v214, v64);
      v70 = v420;
      if (v436)
      {
        v238 = *v418;
        (*v418)(v439, v420);
        v238(v437, v70);
        goto LABEL_211;
      }

LABEL_187:
      v259 = v409;
      sub_22C90207C();
      v260 = *v416;
      v261 = (*v416)(v259, v440);
      if (v261 == v415 || v261 == v414)
      {
        goto LABEL_192;
      }

      if (v261 == v403)
      {
        v265 = v409;
        (*v399)(v409, v440);
        v266 = *v265;
        v267 = swift_projectBox();
        v268 = v396;
        v269 = v397;
        (*v392)(v396, v267, v397);
        v263 = sub_22C90908C();
        v264 = v270;
        v271 = &v425;
        goto LABEL_195;
      }

      v289 = v261 == v394 || v261 == v393;
      if (v289 || v261 == v390)
      {
        goto LABEL_192;
      }

      if (v261 == v384)
      {
        v291 = v409;
        (*v399)(v409, v440);
        v292 = *v291;
        v293 = swift_projectBox();
        v268 = v379;
        v269 = v380;
        (*v377)(v379, v293, v380);
        v263 = sub_22C90908C();
        v264 = v294;
        v271 = &v409;
        goto LABEL_195;
      }

      if (v261 != v375)
      {
LABEL_192:
        v207(v409, v440);
        v263 = 0;
        v264 = 0xE000000000000000;
      }

      else
      {
        v301 = v409;
        (*v399)(v409, v440);
        v302 = *v301;
        v303 = swift_projectBox();
        v268 = v370;
        v269 = v371;
        (*v369)(v370, v303, v371);
        v263 = sub_22C90932C();
        v264 = v304;
        v271 = &v401;
LABEL_195:
        (**(v271 - 32))(v268, v269);
      }

      v272 = v410;
      sub_22C90207C();
      v273 = v260(v272, v440);
      if (v273 == v415 || v273 == v414)
      {
        goto LABEL_201;
      }

      if (v273 == v403)
      {
        v277 = v410;
        (*v399)(v410, v440);
        v278 = *v277;
        v279 = swift_projectBox();
        v280 = v396;
        v281 = v397;
        (*v392)(v396, v279, v397);
        v275 = sub_22C90908C();
        v276 = v282;
        v283 = &v425;
        goto LABEL_204;
      }

      v295 = v273 == v394 || v273 == v393;
      if (v295 || v273 == v390)
      {
        goto LABEL_201;
      }

      if (v273 == v384)
      {
        v297 = v410;
        (*v399)(v410, v440);
        v298 = *v297;
        v299 = swift_projectBox();
        v280 = v379;
        v281 = v380;
        (*v377)(v379, v299, v380);
        v275 = sub_22C90908C();
        v276 = v300;
        v283 = &v409;
        goto LABEL_204;
      }

      if (v273 != v375)
      {
LABEL_201:
        v207(v410, v440);
        v275 = 0;
        v276 = 0xE000000000000000;
      }

      else
      {
        v305 = v410;
        (*v399)(v410, v440);
        v306 = *v305;
        v307 = swift_projectBox();
        v280 = v370;
        v281 = v371;
        (*v369)(v370, v307, v371);
        v275 = sub_22C90932C();
        v276 = v308;
        v283 = &v401;
LABEL_204:
        (**(v283 - 32))(v280, v281);
      }

      if (v263 == v275 && v264 == v276)
      {

        v309 = *v418;
        v70 = v420;
        (*v418)(v439, v420);
        v309(v437, v70);
        v64 = v419;
LABEL_237:
        v161 = (v402 + 1);
        if (v402 + 1 == v374)
        {
          v161 = v374;
          v183 = v412;
          goto LABEL_239;
        }

        continue;
      }

      v258 = sub_22C90B4FC();

      v64 = v419;
    }

    break;
  }

  v285 = *v418;
  v70 = v420;
  (*v418)(v439, v420);
  v285(v437, v70);
  if ((v258 & 1) == 0)
  {
    goto LABEL_237;
  }

LABEL_211:
  if (v427)
  {
    v286 = *v413;
    v287 = v406;
    (*v413)(v406, v425, v70);
    v288 = v424;
    swift_arrayInitWithTakeFrontToBack();
    v286(v288, v287, v70);
    v196 = v426;
    if (v426 == v412)
    {
      goto LABEL_237;
    }

    goto LABEL_136;
  }

  __break(1u);
LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:
  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  __break(1u);
}

uint64_t sub_22C8E5188(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v184 = a3;
  v203 = sub_22C9093BC();
  v7 = *(v203 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v203);
  v202 = v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C90952C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v178 = v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v173 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v190 = v173 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v185 = v173 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v182 = v173 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v188 = v173 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v193 = v173 - v27;
  MEMORY[0x28223BE20](v26);
  v192 = v173 - v28;
  v29 = sub_22C90221C();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v173 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v191 = v173 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v204 = v173 - v37;
  result = MEMORY[0x28223BE20](v36);
  v42 = *(v41 + 72);
  if (!v42)
  {
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    return result;
  }

  v43 = a2 - a1 == 0x8000000000000000 && v42 == -1;
  if (v43)
  {
    goto LABEL_137;
  }

  v44 = v184 - a2;
  if (v184 - a2 == 0x8000000000000000 && v42 == -1)
  {
    goto LABEL_138;
  }

  v194 = v173 - v40;
  v179 = v33;
  v181 = v17;
  v189 = result;
  v46 = (a2 - a1) / v42;
  v207 = a1;
  v206 = a4;
  v187 = (v39 + 16);
  v199 = (v11 + 16);
  v200 = (v7 + 8);
  v198 = (v11 + 88);
  v201 = (v11 + 8);
  v183 = (v11 + 96);
  v186 = (v39 + 8);
  v47 = MEMORY[0x277D72D50];
  v48 = MEMORY[0x277D72D30];
  v49 = a4;
  v50 = v44 / v42;
  if (v46 < v44 / v42)
  {
    sub_22C3D7C8C(a1, (a2 - a1) / v42, v49);
    v181 = v49 + v46 * v42;
    v205 = v181;
    LODWORD(v191) = *v47;
    LODWORD(v190) = *v48;
    LODWORD(v185) = *MEMORY[0x277D72D28];
    LODWORD(v179) = *MEMORY[0x277D72D18];
    v51 = v49;
    v52 = v189;
    v53 = v204;
    v180 = v42;
    while (1)
    {
      if (v51 >= v181 || a2 >= v184)
      {
        goto LABEL_135;
      }

      v196 = a1;
      v55 = *v187;
      (*v187)(v194, a2, v52);
      v195 = v51;
      v55(v53, v51, v52);
      v56 = v202;
      sub_22C90207C();
      v57 = v192;
      sub_22C90935C();
      v58 = *v200;
      (*v200)(v56, v203);
      v59 = *v199;
      v60 = v193;
      (*v199)(v193, v57, v10);
      v61 = *v198;
      v62 = (*v198)(v60, v10);
      v63 = v62 == v191 || v62 == v190;
      v197 = a2;
      if (v63)
      {
        break;
      }

      if (v62 != v185)
      {
        v64 = *v201;
        goto LABEL_29;
      }

      v65 = v193;
      (*v183)(v193, v10);
      v66 = *v65;
      v67 = *(*v65 + 16);
      v68 = v66[3];
      v70 = v66[4];
      v69 = v66[5];
      if (qword_27D9BA7D8 != -1)
      {
        v105 = v66[5];
        swift_once();
        v69 = v105;
      }

      v71 = off_27D9C0CA8;
      if (*(off_27D9C0CA8 + 2) && (v178 = v69, v72 = sub_22C36E2BC(v67, v68), (v73 & 1) != 0))
      {
        v74 = *(v71[7] + 8 * v72);

        v75 = sub_22C5E935C(v70, v178, v74);
      }

      else
      {
        v75 = 0;
      }

      v64 = *v201;
      (*v201)(v192, v10);

      v76 = v188;
LABEL_32:
      v77 = v202;
      sub_22C90207C();
      sub_22C90935C();
      v58(v77, v203);
      v78 = v182;
      v59(v182, v76, v10);
      v79 = v61(v78, v10);
      if (v79 != v191 && v79 != v190 && v79 == v185)
      {
        (*v183)(v78, v10);
        v86 = *(*v78 + 16);
        v85 = *(*v78 + 24);
        v88 = *(*v78 + 32);
        v87 = *(*v78 + 40);
        if (qword_27D9BA7D8 != -1)
        {
          swift_once();
        }

        v89 = off_27D9C0CA8;
        if (*(off_27D9C0CA8 + 2) && (v90 = sub_22C36E2BC(v86, v85), (v91 & 1) != 0))
        {
          v92 = *(v89[7] + 8 * v90);

          v93 = sub_22C5E935C(v88, v87, v92);
        }

        else
        {
          v93 = 0;
        }

        v82 = v196;
        v83 = v180;
        v64(v188, v10);

        a2 = v197;
        if ((v75 ^ v93))
        {
          goto LABEL_53;
        }
      }

      else
      {
        v64(v76, v10);
        v64(v78, v10);
        v82 = v196;
        a2 = v197;
        v83 = v180;
        if (v75)
        {
          v84 = *v186;
          v52 = v189;
          (*v186)(v204, v189);
          (v84)(v194, v52);
          v51 = v195;
LABEL_54:
          if (v82 < a2 || v82 >= a2 + v83)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v83;
            v53 = v204;
          }

          else
          {
            v53 = v204;
            if (v82 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v83;
          }

          goto LABEL_73;
        }
      }

      v94 = v194;
      v95 = sub_22C8794D0();
      v97 = v96;
      v98 = v204;
      if (v95 == sub_22C8794D0() && v97 == v99)
      {

        v103 = *v186;
        v52 = v189;
        (*v186)(v98, v189);
        (v103)(v94, v52);
        v51 = v195;
        goto LABEL_61;
      }

      LOBYTE(v75) = sub_22C90B4FC();

LABEL_53:
      v101 = *v186;
      v52 = v189;
      (*v186)(v204, v189);
      (v101)(v194, v52);
      v51 = v195;
      if (v75)
      {
        goto LABEL_54;
      }

LABEL_61:
      if (v82 < v51 || v82 >= v51 + v83)
      {
        swift_arrayInitWithTakeFrontToBack();
        v53 = v204;
      }

      else
      {
        v53 = v204;
        if (v82 != v51)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v206 = v51 + v83;
      v51 += v83;
LABEL_73:
      a1 = v82 + v83;
      v207 = a1;
    }

    v64 = *v201;
LABEL_29:
    v76 = v188;
    v64(v192, v10);
    v64(v193, v10);
    v75 = 0;
    goto LABEL_32;
  }

  sub_22C3D7C8C(a2, v44 / v42, v49);
  v106 = (v49 + v50 * v42);
  v107 = -v42;
  LODWORD(v194) = *v47;
  v108 = a2;
  LODWORD(v193) = *v48;
  LODWORD(v182) = *MEMORY[0x277D72D28];
  v174 = *MEMORY[0x277D72D18];
  v109 = v106;
  v110 = v49;
  v111 = v189;
  v112 = v184;
  v113 = v179;
  v195 = v49;
  v196 = a1;
  v204 = v107;
LABEL_75:
  v114 = v108 + v107;
  v115 = v112;
  v173[0] = v109;
  v116 = v109;
  v197 = v108;
  v180 = v108 + v107;
  while (1)
  {
    if (v106 <= v110)
    {
      v207 = v197;
      v205 = v116;
      goto LABEL_135;
    }

    if (v197 <= a1)
    {
      break;
    }

    v188 = v115;
    v177 = v116;
    v192 = v106;
    v117 = *v187;
    v184 = &v106[v107];
    (v117)(v191);
    v117(v113, v114, v111);
    v118 = v202;
    sub_22C90207C();
    v119 = v185;
    sub_22C90935C();
    v120 = *v200;
    (*v200)(v118, v203);
    v121 = *v199;
    v122 = v190;
    (*v199)(v190, v119, v10);
    v123 = *v198;
    v124 = (*v198)(v122, v10);
    v125 = v124 == v194 || v124 == v193;
    if (v125 || v124 != v182)
    {
      v137 = *v201;
      (*v201)(v185, v10);
      v137(v190, v10);
      v136 = 0;
    }

    else
    {
      v126 = v190;
      (*v183)(v190, v10);
      v127 = *v126;
      v129 = v127[2];
      v128 = v127[3];
      v130 = v127[4];
      v131 = v127[5];
      if (qword_27D9BA7D8 != -1)
      {
        v176 = v127[5];
        v168 = v130;
        swift_once();
        v131 = v176;
        v130 = v168;
      }

      v132 = off_27D9C0CA8;
      if (*(off_27D9C0CA8 + 2) && (v176 = v131, v175 = v130, v133 = sub_22C36E2BC(v129, v128), (v134 & 1) != 0))
      {
        v135 = *(v132[7] + 8 * v133);

        v136 = sub_22C5E935C(v175, v176, v135);
      }

      else
      {
        v136 = 0;
      }

      v137 = *v201;
      (*v201)(v185, v10);
    }

    v138 = v202;
    sub_22C90207C();
    v139 = v181;
    sub_22C90935C();
    v120(v138, v203);
    v140 = v178;
    v121(v178, v139, v10);
    v141 = v123(v140, v10);
    if (v141 == v194 || v141 == v193 || v141 != v182)
    {
      v137(v139, v10);
      v137(v140, v10);
      a1 = v196;
      v111 = v189;
      v144 = v179;
      if (v136)
      {
        LOBYTE(v136) = 1;
        goto LABEL_116;
      }

LABEL_109:
      v154 = sub_22C8794D0();
      v156 = v155;
      if (v154 == sub_22C8794D0() && v156 == v157)
      {
        LOBYTE(v136) = 0;
      }

      else
      {
        LOBYTE(v136) = sub_22C90B4FC();
      }

      goto LABEL_116;
    }

    (*v183)(v140, v10);
    v146 = *(*v140 + 16);
    v145 = *(*v140 + 24);
    v147 = *(*v140 + 32);
    v148 = *(*v140 + 40);
    v111 = v189;
    if (qword_27D9BA7D8 != -1)
    {
      v166 = *(*v140 + 40);
      v167 = *(*v140 + 32);
      swift_once();
      v148 = v166;
      v147 = v167;
    }

    v149 = off_27D9C0CA8;
    v144 = v179;
    if (*(off_27D9C0CA8 + 2) && (v175 = v148, v176 = v147, v150 = sub_22C36E2BC(v146, v145), (v151 & 1) != 0))
    {
      v152 = *(v149[7] + 8 * v150);

      v153 = sub_22C5E935C(v176, v175, v152);
    }

    else
    {
      v153 = 0;
    }

    a1 = v196;
    v137(v181, v10);

    if (((v136 ^ v153) & 1) == 0)
    {
      goto LABEL_109;
    }

LABEL_116:
    v159 = v144;
    v160 = v188;
    v112 = &v204[v188];
    v161 = *v186;
    v162 = v159;
    (*v186)();
    (v161)(v191, v111);
    v110 = v195;
    if (v136)
    {
      if (v160 < v197 || v112 >= v197)
      {
        v170 = v180;
        swift_arrayInitWithTakeFrontToBack();
        v108 = v170;
        v109 = v177;
        v107 = v204;
        v106 = v192;
        v113 = v162;
      }

      else
      {
        v109 = v177;
        v43 = v160 == v197;
        v171 = v180;
        v108 = v180;
        v107 = v204;
        v106 = v192;
        v113 = v162;
        if (!v43)
        {
          v172 = v177;
          swift_arrayInitWithTakeBackToFront();
          v106 = v192;
          v108 = v171;
          v109 = v172;
        }
      }

      goto LABEL_75;
    }

    if (v160 < v192 || v112 >= v192)
    {
      v164 = v184;
      swift_arrayInitWithTakeFrontToBack();
      v115 = v112;
      v106 = v164;
      v116 = v164;
      v107 = v204;
      v114 = v180;
      v113 = v162;
    }

    else
    {
      v116 = v184;
      v43 = v192 == v160;
      v115 = v112;
      v106 = v184;
      v107 = v204;
      v114 = v180;
      v113 = v162;
      if (!v43)
      {
        v165 = v184;
        swift_arrayInitWithTakeBackToFront();
        v115 = v112;
        v106 = v165;
        v116 = v165;
      }
    }
  }

  v207 = v197;
  v205 = v173[0];
LABEL_135:
  sub_22C838358(&v207, &v206, &v205);
  return 1;
}

uint64_t sub_22C8E62D8(void *a1)
{
  v2 = [a1 value];

  if (v2)
  {
    sub_22C90A11C();
  }

  return sub_22C37170C();
}

uint64_t sub_22C8E6344(void *a1)
{
  v2 = [a1 _imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90051C();

  return v3;
}

uint64_t sub_22C8E63B8()
{
  v1 = v0[120];
  result = v0[119];
  v3 = v0[113];
  v4 = *(v0[114] + 8);
  return result;
}

void sub_22C8E63D8()
{
  v3 = *(v2 - 88);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5 = *(v1 + 72);
}

uint64_t sub_22C8E63F4()
{
  v4 = v0[53];
  v3 = v0[54];
  v6 = v0[51];
  v5 = v0[52];
  v7 = v0[48];
  v9 = v0[44];
  v8 = v0[45];
  v11 = v0[42];
  v10 = v0[43];
  v15 = v0[41];
  v16 = v0[40];
  v17 = v0[39];
  v18 = v0[38];
  v19 = v0[36];
  v20 = v0[33];
  v21 = v0[30];
  v22 = v0[29];
  v23 = v0[28];
  v24 = v0[27];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[20];
  v28 = v0[19];
  v29 = v0[18];
  v30 = v0[17];
  v12 = v0[13];
  *(v1 - 112) = v0[14];
  *(v1 - 104) = v12;
  v13 = v0[9];
  *(v1 - 96) = v0[10];
  *(v1 - 88) = v13;
  *(v1 - 80) = v0[6];
}

uint64_t sub_22C8E64D4()
{

  return sub_22C4E7208(v2, v3, v0, v1);
}

uint64_t sub_22C8E6500()
{

  return sub_22C902A5C();
}

uint64_t sub_22C8E6520()
{
  v1 = *(v0 - 104);
  v2 = *(*(v0 - 112) + 8);
  return *(v0 - 96);
}

uint64_t sub_22C8E654C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[14];
  result = v2[15];
  v5 = v2[13];
  return result;
}

uint64_t sub_22C8E6568()
{
  result = *(v1 + 48);
  v3 = *(v1 + 32);
  v4 = *v0;
  return result;
}

uint64_t sub_22C8E6578@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(a1 + 96);
  return v2;
}

uint64_t sub_22C8E65A8()
{
  result = v0[84];
  v2 = v0[79];
  v3 = v0[70];
  v4 = v0[67];
  v5 = v0[66];
  return result;
}

uint64_t sub_22C8E65E4()
{

  return sub_22C9029CC();
}

uint64_t sub_22C8E6608@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + v1 + *(v3 + 72) * a1;

  return swift_arrayInitWithCopy();
}

void sub_22C8E662C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
}

uint64_t sub_22C8E664C(uint64_t a1, uint64_t a2)
{
  result = sub_22C370B74(a1, a2, v3);
  v5 = *(v2 + 304);
  return result;
}

uint64_t sub_22C8E666C()
{

  return sub_22C9023BC();
}

uint64_t sub_22C8E6684(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C90A33C();
    v1 = sub_22C90A4AC();

    return v1;
  }

  return result;
}

void sub_22C8E6744()
{
  sub_22C370030();
  v67 = v2;
  v68 = v3;
  v66 = type metadata accessor for StructuredParameter();
  v4 = sub_22C36985C(v66);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v9 = (v8 - v7);
  v10 = sub_22C90302C();
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v70 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  v65 = v0;
  v23 = sub_22C90275C();
  if (v24 >> 60 == 15)
  {
    (*(v13 + 104))(v22, *MEMORY[0x277D55C98], v10);
    v25 = v13;
  }

  else
  {
    v26 = v23;
    v27 = v24;
    v28 = sub_22C8FFECC();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_22C8FFEBC();
    sub_22C8E9F60();
    sub_22C8E9A60(v31, v32);
    sub_22C8FFEAC();
    sub_22C3C8114(v26, v27);

    if (v1)
    {
      goto LABEL_13;
    }

    v25 = v13;
    (*(v13 + 32))(v22, v20, v10);
  }

  v33 = sub_22C90274C();
  if (!v34)
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  v35 = sub_22C8E87B8(v33, v34);
  v36 = sub_22C90273C();
  v71 = v37;
  v38 = *(v25 + 16);
  v63 = v22;
  v38(v70, v22, v10);
  v64 = v1;
  v69 = v10;
  v61 = v35;
  v39 = v25;
  if (v35 == 16)
  {
    v62 = 0xEC00000065707974;
    v40 = 0x5F6E776F6E6B6E75;
  }

  else
  {
    sub_22C8E8E2C(v35);
    sub_22C8E8C4C(v35);
    v40 = v41;
    v62 = v42;
    sub_22C8E8BD0(v35);
  }

  v43 = sub_22C90276C();
  v60 = v44;
  v45 = sub_22C90272C();
  v46 = v66;
  v47 = *(v66 + 32);
  v48 = (v9 + *(v66 + 28));
  v65 = v36;
  *v9 = v36;
  v9[1] = v71;
  (*(v39 + 32))(v9 + *(v46 + 20), v70, v69);
  v49 = (v9 + *(v46 + 24));
  v70 = v40;
  v50 = v62;
  *v49 = v40;
  v49[1] = v50;
  v51 = v50;
  v52 = v60;
  *v48 = v43;
  v48[1] = v52;
  *(v9 + v47) = v45;
  sub_22C3A5908(&qword_27D9BAAD8, &unk_22C92D6D0);
  v53 = *(sub_22C902FBC() - 8);
  v54 = *(v53 + 72);
  v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_22C90F800;

  sub_22C90301C();
  sub_22C90301C();
  sub_22C902F8C();
  v57 = sub_22C8E6C00(v67);
  sub_22C8E8BD0(v61);
  (*(v39 + 8))(v63, v69);
  if (v57)
  {

    v56 = v57;
  }

  v58 = v68;
  sub_22C8E8BF0(v9);
  *v58 = v65;
  v58[1] = v71;
  v58[2] = v70;
  v58[3] = v51;
  v58[4] = v56;
LABEL_13:
  sub_22C36FB20();
}

uint64_t type metadata accessor for StructuredParameter()
{
  result = qword_27D9C14A0;
  if (!qword_27D9C14A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C8E6C00(void *a1)
{
  v54 = a1;
  v2 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v51 - v4;
  v55 = sub_22C902FBC();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v55);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v51 - v11;
  v12 = type metadata accessor for StructuredParameter();
  v13 = (v1 + *(v12 + 24));
  v14 = *v13;
  v15 = v13[1];
  if (*v13 == 0x5F6E776F6E6B6E75 && v15 == 0xEC00000065707974)
  {
    return 0;
  }

  v17 = v12;
  v18 = *v13;
  v19 = v13[1];
  if (sub_22C90B4FC())
  {
    return 0;
  }

  sub_22C8E7288(v1 + *(v17 + 20), v60);
  v20 = (v1 + *(v17 + 28));
  v21 = v20[1];
  if (!v21 || ((v22 = *v20, *v20 == 0x676E697274536F74) ? (v23 = v21 == 0xE800000000000000) : (v23 = 0), v23 || (sub_22C90B4FC() & 1) != 0))
  {
    v22 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
  }

  v24 = sub_22C90A43C();
  v25 = v14;
  v26 = v15;
  v52 = v22;
  if (v24)
  {

    v27 = sub_22C8E6684(2);
    v51 = v5;
    v25 = MEMORY[0x2318B76D0](v27);
    v26 = v28;
    v5 = v51;
    v22 = v52;
  }

  v29 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v29 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29 && (sub_22C8E76B0() & 1) == 0)
  {

    if (v25 == 0x432E676F6C616964 && v26 == 0xEF7261646E656C61)
    {
    }

    else
    {
      v50 = sub_22C90B4FC();

      if ((v50 & 1) == 0)
      {
        v52 = 0x676E697274536F74;
        goto LABEL_20;
      }
    }

    v52 = 0xD000000000000013;
    goto LABEL_20;
  }

LABEL_20:
  v30 = v54;
  if (v54)
  {
    v31 = v54;
  }

  else
  {
    sub_22C902F2C();
    v31 = sub_22C902F1C();
  }

  sub_22C902F6C();
  v32 = v30;
  sub_22C902F5C();

  sub_22C8E8E3C(v59, v57);
  if (v58)
  {
    v33 = v55;
    v34 = swift_dynamicCast();
    sub_22C36C640(v5, v34 ^ 1u, 1, v33);
    if (sub_22C370B74(v5, 1, v33) != 1)
    {
      v36 = *(v6 + 32);
      v35 = v6 + 32;
      v37 = v53;
      v36(v53, v5, v33);
      sub_22C3A5908(&qword_27D9BAAD8, &unk_22C92D6D0);
      v38 = *(v35 + 40);
      v39 = (*(v35 + 48) + 32) & ~*(v35 + 48);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_22C90F800;
      v36((v40 + v39), v37, v33);
LABEL_46:
      sub_22C36DD28(v59, &qword_27D9BD5D8, &qword_22C918510);
      sub_22C36FF94(v60);
      return v40;
    }
  }

  else
  {
    sub_22C36DD28(v57, &qword_27D9BD5D8, &qword_22C918510);
    v33 = v55;
    sub_22C36C640(v5, 1, 1, v55);
  }

  sub_22C36DD28(v5, &qword_27D9C0AB8, &qword_22C92A190);
  sub_22C8E8E3C(v59, v57);
  if (v58)
  {
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    if (swift_dynamicCast())
    {
      v41 = v56;
      v42 = *(v56 + 16);
      if (!v42)
      {

        sub_22C36DD28(v59, &qword_27D9BD5D8, &qword_22C918510);
        sub_22C36FF94(v60);
        return MEMORY[0x277D84F90];
      }

      v57[0] = MEMORY[0x277D84F90];
      sub_22C3B7F6C(0, v42, 0);
      v40 = v57[0];
      v43 = (v41 + 40);
      do
      {
        v44 = *(v43 - 1);
        v45 = *v43;

        sub_22C902F7C();
        v57[0] = v40;
        v47 = *(v40 + 16);
        v46 = *(v40 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_22C3B7F6C(v46 > 1, v47 + 1, 1);
          v40 = v57[0];
        }

        *(v40 + 16) = v47 + 1;
        (*(v6 + 32))(v40 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v47, v10, v33);
        v43 += 2;
        --v42;
      }

      while (v42);

      goto LABEL_46;
    }

    sub_22C36DD28(v59, &qword_27D9BD5D8, &qword_22C918510);
    sub_22C36FF94(v60);
  }

  else
  {
    sub_22C36DD28(v59, &qword_27D9BD5D8, &qword_22C918510);
    sub_22C36FF94(v60);
    sub_22C36DD28(v57, &qword_27D9BD5D8, &qword_22C918510);
  }

  return 0;
}

uint64_t sub_22C8E7288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22C90302C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v42 - v13);
  v15 = *(v7 + 16);
  v15(&v42 - v13, a1, v4);
  result = (*(v7 + 88))(v14, v4);
  if (result == *MEMORY[0x277D55CB8])
  {
    v17 = sub_22C36C61C();
    result = v18(v17);
    v19 = *v14;
    v20 = v14[1];
    a2[3] = MEMORY[0x277D837D0];
    *a2 = v19;
    a2[1] = v20;
  }

  else if (result == *MEMORY[0x277D55C88])
  {
    v21 = sub_22C36C61C();
    v22(v21);
    v23 = sub_22C902FBC();
    a2[3] = v23;
    v24 = sub_22C36D548(a2);
    return (*(*(v23 - 8) + 32))(v24, v14, v23);
  }

  else if (result == *MEMORY[0x277D55CA8])
  {
    v25 = sub_22C36C61C();
    result = v26(v25);
    v27 = *v14;
    a2[3] = MEMORY[0x277D839F8];
    *a2 = v27;
  }

  else if (result == *MEMORY[0x277D55CB0])
  {
    v28 = sub_22C36C61C();
    v29(v28);
    v30 = *v14;
    v31 = sub_22C909EFC();

    result = sub_22C3A5908(&qword_27D9BAB50, &qword_22C90D3F0);
    a2[3] = result;
    *a2 = v31;
  }

  else if (result == *MEMORY[0x277D55CA0])
  {
    (*(v7 + 96))(v14, v4);
    v32 = *v14;
    v33 = *(*v14 + 16);
    if (v33)
    {
      v43 = a2;
      v46 = MEMORY[0x277D84F90];
      sub_22C3B7118();
      v34 = v46;
      v35 = *(v7 + 80);
      v42 = v32;
      v36 = v32 + ((v35 + 32) & ~v35);
      v44 = *(v7 + 72);
      do
      {
        v15(v12, v36, v4);
        sub_22C8E7288(v45, v12);
        (*(v7 + 8))(v12, v4);
        v46 = v34;
        v37 = *(v34 + 16);
        if (v37 >= *(v34 + 24) >> 1)
        {
          sub_22C3B7118();
          v34 = v46;
        }

        *(v34 + 16) = v37 + 1;
        sub_22C456E34(v45, (v34 + 32 * v37 + 32));
        v36 += v44;
        --v33;
      }

      while (v33);

      a2 = v43;
    }

    else
    {
      v41 = *v14;

      v34 = MEMORY[0x277D84F90];
    }

    result = sub_22C3A5908(&qword_27D9C1498, qword_22C92D6E0);
    a2[3] = result;
    *a2 = v34;
  }

  else if (result == *MEMORY[0x277D55C90])
  {
    v38 = sub_22C36C61C();
    result = v39(v38);
    v40 = *v14;
    a2[3] = MEMORY[0x277D839B0];
    *a2 = v40;
  }

  else if (result == *MEMORY[0x277D55C98])
  {
    a2[3] = MEMORY[0x277D837D0];
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }

  else
  {
    result = sub_22C90B4EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22C8E76B0()
{
  v1 = (v0 + *(type metadata accessor for StructuredParameter() + 24));
  v2 = *v1;
  v3 = v1[1];
  if (*v1 == 0x532E676F6C616964 && v3 == 0xED0000676E697274)
  {
    return 1;
  }

  sub_22C36BA00();
  if (sub_22C90B4FC())
  {
    return 1;
  }

  if (v2 == 0x4E2E676F6C616964 && v3 == 0xED00007265626D75)
  {
    return 1;
  }

  sub_22C36BA00();
  if (sub_22C90B4FC())
  {
    return 1;
  }

  if (v2 == 0x422E676F6C616964 && v3 == 0xEE006E61656C6F6FLL)
  {
    return 1;
  }

  sub_22C36BA00();

  return sub_22C90B4FC();
}

uint64_t sub_22C8E77C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_22C90B4FC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
        if (v8 || (sub_22C90B4FC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x74696E61666F7270 && a2 == 0xEF7265746C694679)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C90B4FC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_22C8E7960(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x74616D726F66;
      break;
    case 4:
      result = 0x74696E61666F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C8E79F0(void *a1)
{
  v3 = v1;
  v5 = sub_22C3A5908(&qword_27D9C14F8, &qword_22C92D878);
  sub_22C369824(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v12 = &v28[-v11];
  v13 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C8E99A8();
  sub_22C38ACD4();
  v14 = *v3;
  v15 = v3[1];
  v28[15] = 0;
  sub_22C375224();
  sub_22C90B3CC();
  if (!v2)
  {
    v16 = type metadata accessor for StructuredParameter();
    v17 = v16[5];
    sub_22C3890C8();
    sub_22C90302C();
    sub_22C8E9F60();
    sub_22C8E9A60(v18, v19);
    sub_22C90B41C();
    v20 = (v3 + v16[6]);
    v21 = *v20;
    v22 = v20[1];
    v28[13] = 2;
    sub_22C375224();
    sub_22C90B3CC();
    v23 = (v3 + v16[7]);
    v24 = *v23;
    v25 = v23[1];
    v28[12] = 3;
    sub_22C375224();
    sub_22C90B37C();
    v26 = *(v3 + v16[8]);
    v28[11] = 4;
    sub_22C90B38C();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_22C8E7BEC()
{
  sub_22C370030();
  v45 = v0;
  v2 = v1;
  v40 = v3;
  v4 = sub_22C90302C();
  v5 = sub_22C369824(v4);
  v41 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v11 = v10 - v9;
  v44 = sub_22C3A5908(&qword_27D9C14E8, &qword_22C92D870);
  sub_22C369824(v44);
  v42 = v12;
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v17 = v39 - v16;
  v18 = type metadata accessor for StructuredParameter();
  v19 = sub_22C36985C(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v24 = (v23 - v22);
  v25 = v2[4];
  sub_22C374168(v2, v2[3]);
  sub_22C8E99A8();
  v43 = v17;
  v26 = v45;
  sub_22C90B6BC();
  if (v26)
  {
    sub_22C36FF94(v2);
  }

  else
  {
    v27 = v41;
    *v24 = sub_22C90B2DC();
    v24[1] = v28;
    v45 = v28;
    sub_22C3890C8();
    sub_22C8E9F60();
    sub_22C8E9A60(v29, v30);
    sub_22C90B32C();
    v39[1] = v24;
    (*(v27 + 32))(v24 + v18[5], v11, v4);
    v39[0] = 0;
    v31 = sub_22C90B2DC();
    v32 = (v24 + v18[6]);
    *v32 = v31;
    v32[1] = v33;
    v34 = sub_22C90B26C();
    v35 = (v24 + v18[7]);
    *v35 = v34;
    v35[1] = v36;
    v37 = sub_22C90B27C();
    v38 = v18[8];
    (*(v42 + 8))(v43, v44);
    *(v24 + v38) = v37;
    sub_22C8E99FC(v24, v40);
    sub_22C36FF94(v2);
    sub_22C8E8BF0(v24);
  }

  sub_22C36FB20();
}

uint64_t sub_22C8E7FF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676F6C616964 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C8E80FC(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x676F6C616964;
}

uint64_t sub_22C8E8140(void *a1)
{
  v3 = v1;
  v5 = sub_22C3A5908(&qword_27D9C14D8, &qword_22C92D868);
  sub_22C369824(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C8E98B8();
  sub_22C38ACD4();
  v14 = *v3;
  v15 = v3[1];
  v21 = 0;
  sub_22C90B3CC();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    sub_22C3890C8();
    sub_22C90B3CC();
    v20 = v3[4];
    v19[15] = 2;
    sub_22C3A5908(&qword_27D9C14C8, &qword_22C92D860);
    sub_22C8E990C(&qword_27D9C14E0, &qword_27D9C0AE0);
    sub_22C90B41C();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_22C8E830C()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9C14B8, &qword_22C92D858);
  sub_22C369824(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  sub_22C374168(v2, v2[3]);
  sub_22C8E98B8();
  sub_22C90B6BC();
  if (v0)
  {
    sub_22C36FF94(v2);
  }

  else
  {
    v10 = sub_22C90B2DC();
    v12 = v11;
    v18 = v10;
    sub_22C3890C8();
    v16 = sub_22C90B2DC();
    v17 = v13;
    sub_22C3A5908(&qword_27D9C14C8, &qword_22C92D860);
    sub_22C8E990C(&qword_27D9C14D0, &qword_27D9C0AD0);
    sub_22C90B32C();
    v14 = sub_22C370818();
    v15(v14);
    sub_22C36FF94(v2);
    *v4 = v18;
    v4[1] = v12;
    v4[2] = v16;
    v4[3] = v17;
    v4[4] = v19;
  }

  sub_22C36FB20();
}

uint64_t sub_22C8E8594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C8E77C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C8E85BC(uint64_t a1)
{
  v2 = sub_22C8E99A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C8E85F8(uint64_t a1)
{
  v2 = sub_22C8E99A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C8E8664(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C8E86B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C8E7FF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C8E86E0(uint64_t a1)
{
  v2 = sub_22C8E98B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C8E871C(uint64_t a1)
{
  v2 = sub_22C8E98B8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_22C8E8758@<D0>(uint64_t a1@<X8>)
{
  sub_22C8E830C();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_22C8E87B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242306 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C371FE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C62756F44 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C371FE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69727453 && a2 == 0xE600000000000000;
      if (v7 || (sub_22C371FE4() & 1) != 0)
      {

        return 3;
      }

      else
      {
        sub_22C36EE00();
        v9 = a1 == 0xD000000000000010 && v8 == a2;
        if (v9 || (sub_22C371FE4() & 1) != 0)
        {

          return 4;
        }

        else
        {
          v10 = a1 == 0x6D6563616C504C43 && a2 == 0xEB000000006B7261;
          if (v10 || (sub_22C371FE4() & 1) != 0)
          {

            return 5;
          }

          else
          {
            v11 = a1 == 1702125892 && a2 == 0xE400000000000000;
            if (v11 || (sub_22C371FE4() & 1) != 0)
            {

              return 6;
            }

            else
            {
              v13 = a1 == sub_22C8E9F78() && a2 == v12;
              if (v13 || (sub_22C371FE4() & 1) != 0)
              {

                return 7;
              }

              else
              {
                sub_22C36EE00();
                v15 = a1 == 0xD000000000000014 && v14 == a2;
                if (v15 || (sub_22C371FE4() & 1) != 0)
                {

                  return 8;
                }

                else
                {
                  v17 = a1 == sub_22C38771C() && a2 == v16;
                  if (v17 || (sub_22C371FE4() & 1) != 0)
                  {

                    return 9;
                  }

                  else
                  {
                    sub_22C36EE00();
                    v19 = a1 == 0xD000000000000019 && v18 == a2;
                    if (v19 || (sub_22C371FE4() & 1) != 0)
                    {

                      return 10;
                    }

                    else
                    {
                      sub_22C36EE00();
                      v21 = a1 == 0xD000000000000017 && v20 == a2;
                      if (v21 || (sub_22C371FE4() & 1) != 0)
                      {

                        return 11;
                      }

                      else
                      {
                        sub_22C36EE00();
                        v23 = a1 == 0xD00000000000001ELL && v22 == a2;
                        if (v23 || (sub_22C371FE4() & 1) != 0)
                        {

                          return 12;
                        }

                        else
                        {
                          sub_22C36EE00();
                          v25 = a1 == 0xD000000000000018 && v24 == a2;
                          if (v25 || (sub_22C371FE4() & 1) != 0)
                          {

                            return 13;
                          }

                          else
                          {
                            sub_22C36EE00();
                            v27 = a1 == 0xD00000000000001BLL && v26 == a2;
                            if (v27 || (sub_22C371FE4() & 1) != 0)
                            {

                              return 14;
                            }

                            else
                            {
                              v28 = a1 == 5001813 && a2 == 0xE300000000000000;
                              if (v28 || (sub_22C371FE4() & 1) != 0)
                              {

                                return 15;
                              }

                              else
                              {
                                sub_22C3ECFB8();
                                sub_22C3ED00C();
                                if (sub_22C90A02C())
                                {
                                  v33 = swift_allocObject();
                                  v29 = sub_22C8E953C();
                                  v31 = v30;

                                  if (v31)
                                  {
                                    v32 = sub_22C8E9094(v29, v31);
                                  }

                                  else
                                  {
                                    v32 = 16;
                                  }

                                  result = v33;
                                  *(v33 + 16) = v32;
                                }

                                else
                                {

                                  return 16;
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
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_22C8E8BD0(unint64_t result)
{
  if (result != 16)
  {
    return sub_22C8E8BE0(result);
  }

  return result;
}

unint64_t sub_22C8E8BE0(unint64_t result)
{
  if (result >= 0x10)
  {
  }

  return result;
}

uint64_t sub_22C8E8BF0(uint64_t a1)
{
  v2 = type metadata accessor for StructuredParameter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22C8E8C4C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 8:
    case 13:
    case 14:
    case 15:
      sub_22C36A620();
      break;
    case 6:
    case 7:
      sub_22C36A620();
      sub_22C370B60();
      break;
    case 9:
    case 10:
    case 11:
      sub_22C36B9D4();
      break;
    case 12:
      sub_22C36EE00();
      break;
    default:
      v1 = *(a1 + 16);
      if (v1 != 16)
      {
        sub_22C8E8E2C(*(a1 + 16));
        sub_22C8E8C4C(v1);
        MEMORY[0x2318B7850](23899, 0xE200000000000000);
        sub_22C8E8BD0(v1);
      }

      break;
  }
}

unint64_t sub_22C8E8E2C(unint64_t result)
{
  if (result >= 0x10)
  {
  }

  return result;
}

uint64_t sub_22C8E8E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD5D8, &qword_22C918510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C8E8EAC()
{
  sub_22C370030();
  v2 = v1;
  v3 = sub_22C90277C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = 0;
  v20 = v2;
  v24 = *(v2 + 16);
  v13 = (v6 + 8);
  v14 = MEMORY[0x277D84F90];
  while (v24 != v12)
  {
    (*(v6 + 16))(v11, v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v3);
    sub_22C8E6744();
    if (v0)
    {
      (*v13)(v11, v3);

      break;
    }

    (*v13)(v11, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = *(v14 + 16);
      sub_22C592454();
      v14 = v18;
    }

    v15 = *(v14 + 16);
    if (v15 >= *(v14 + 24) >> 1)
    {
      sub_22C592454();
      v14 = v19;
    }

    *(v14 + 16) = v15 + 1;
    v16 = v14 + 40 * v15;
    *(v16 + 64) = v23;
    *(v16 + 32) = v21;
    *(v16 + 48) = v22;
    ++v12;
  }

  sub_22C36FB20();
}

uint64_t sub_22C8E9094(uint64_t a1, uint64_t a2)
{
  if (a1 == 1819242306 && a2 == 0xE400000000000000)
  {
    return 0;
  }

  if (sub_22C378A00())
  {
    return 0;
  }

  v6 = a1 == (sub_22C36A620() & 0xFFFFFFFFFFFFLL | 0x422E000000000000) && a2 == v5;
  if (v6 || (sub_22C378A00() & 1) != 0)
  {
    return 0;
  }

  v8 = a1 == 0x656C62756F44 && a2 == 0xE600000000000000;
  if (v8 || (sub_22C378A00() & 1) != 0)
  {
    return 1;
  }

  v10 = a1 == (sub_22C36B9D4() & 0xFFFFFFFFFFFFLL | 0x4E2E000000000000) && a2 == v9;
  if (v10 || (sub_22C378A00() & 1) != 0)
  {
    return 1;
  }

  v11 = a1 == 7630409 && a2 == 0xE300000000000000;
  if (v11 || (sub_22C378A00() & 1) != 0)
  {
    return 2;
  }

  v12 = a1 == 0x676E69727453 && a2 == 0xE600000000000000;
  if (v12 || (sub_22C378A00() & 1) != 0)
  {
    return 3;
  }

  v14 = a1 == (sub_22C36B9D4() & 0xFFFFFFFFFFFFLL | 0x532E000000000000) && a2 == v13;
  if (v14 || (sub_22C378A00() & 1) != 0)
  {
    return 3;
  }

  sub_22C36EE00();
  v16 = a1 == 0xD000000000000010 && v15 == a2;
  if (v16 || (sub_22C378A00() & 1) != 0)
  {
    return 4;
  }

  v17 = a1 == 1702125892 && a2 == 0xE400000000000000;
  if (v17 || (sub_22C378A00() & 1) != 0)
  {
    return 6;
  }

  sub_22C370B60();
  v19 = a1 == 0x432E676F6C616964 && a2 == v18;
  if (v19 || (sub_22C378A00() & 1) != 0)
  {
    return 6;
  }

  v21 = a1 == sub_22C8E9F78() && a2 == v20;
  if (v21 || (sub_22C378A00() & 1) != 0)
  {
    return 7;
  }

  sub_22C36EE00();
  if (a1 == 0xD000000000000014 && v22 == a2)
  {
    return 8;
  }

  v24 = sub_22C378A00();
  v26 = a1 == 0x432E676F6C616964 && a2 == 0xEF79636E65727275;
  result = 8;
  if ((v24 & 1) == 0 && !v26)
  {
    if (sub_22C378A00())
    {
      return 8;
    }

    v28 = a1 == sub_22C38771C() && a2 == v27;
    if (v28 || (sub_22C378A00() & 1) != 0)
    {
      return 9;
    }

    v30 = a1 == (sub_22C36B9D4() & 0xFFFFFFFFFFFFLL | 0x502E000000000000) && a2 == v29;
    if (v30 || (sub_22C378A00() & 1) != 0)
    {
      return 9;
    }

    sub_22C36EE00();
    v32 = a1 == 0xD000000000000019 && v31 == a2;
    if (v32 || (sub_22C378A00() & 1) != 0)
    {
      return 10;
    }

    v34 = a1 == (sub_22C36B9D4() & 0xFFFFFFFFFFFFLL | 0x4C2E000000000000) && a2 == v33;
    if (v34 || (sub_22C378A00() & 1) != 0)
    {
      return 10;
    }

    sub_22C36EE00();
    v36 = a1 == 0xD000000000000017 && v35 == a2;
    if (v36 || (sub_22C378A00() & 1) != 0)
    {
      return 11;
    }

    v38 = a1 == (sub_22C36B9D4() & 0xFFFFFFFFFFFFLL | 0x572E000000000000) && a2 == v37;
    if (v38 || (sub_22C378A00() & 1) != 0)
    {
      return 11;
    }

    sub_22C36EE00();
    v40 = a1 == 0xD00000000000001ELL && v39 == a2;
    if (v40 || (sub_22C378A00() & 1) != 0)
    {
      return 12;
    }

    sub_22C36EE00();
    v42 = a1 == 0xD000000000000012 && v41 == a2;
    if (v42 || (sub_22C378A00() & 1) != 0)
    {
      return 12;
    }

    sub_22C36EE00();
    if (a1 == 0xD000000000000018 && v43 == a2)
    {
      return 13;
    }

    v45 = sub_22C378A00();
    v47 = a1 == 0x532E676F6C616964 && a2 == 0xEC00000064656570;
    result = 13;
    if ((v45 & 1) == 0 && !v47)
    {
      sub_22C36A620();
      if (sub_22C378A00())
      {
        return 13;
      }

      sub_22C36EE00();
      v49 = a1 == 0xD00000000000001BLL && v48 == a2;
      if (v49 || (sub_22C378A00() & 1) != 0)
      {
        return 14;
      }

      if (a1 == (sub_22C36A620() & 0xFFFFFFFFFFFFLL | 0x442E000000000000) && a2 == v50)
      {
        return 14;
      }

      else if (sub_22C378A00())
      {
        return 14;
      }

      else
      {
        return 16;
      }
    }
  }

  return result;
}

uint64_t sub_22C8E953C()
{
  sub_22C3858B4();
  v0 = sub_22C90AD0C();
  sub_22C3A5968(v0);
  if (v1)
  {
    v2 = *(v0 + 16);

    if (v2 == 2)
    {
      v3 = sub_22C46BDFC(1);
      MEMORY[0x2318B76D0](v3);
    }
  }

  return sub_22C36BA00();
}

BOOL sub_22C8E9610(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
    case 3:
      return a2 == 3;
    case 4:
      return a2 == 4;
    case 5:
      return a2 == 5;
    case 6:
      return a2 == 6;
    case 7:
      return a2 == 7;
    case 8:
      return a2 == 8;
    case 9:
      return a2 == 9;
    case 10:
      return a2 == 10;
    case 11:
      return a2 == 11;
    case 12:
      return a2 == 12;
    case 13:
      return a2 == 13;
    case 14:
      return a2 == 14;
    case 15:
      return a2 == 15;
    default:
      if (a2 < 0x10)
      {
        return 0;
      }

      v3 = *(a1 + 16);
      v4 = *(a2 + 16);
      if (v3 != 16)
      {
        if (v4 == 16)
        {
          return 0;
        }

        sub_22C8E9F50(*(a2 + 16));
        sub_22C8E9F50(v3);
        v5 = sub_22C36BA00();
        v6 = sub_22C8E9610(v5);
        sub_22C8E8BD0(v4);
        sub_22C8E8BD0(v3);
        return (v6 & 1) != 0;
      }

      return v4 == 16;
  }
}

void sub_22C8E97D8()
{
  sub_22C90302C();
  if (v0 <= 0x3F)
  {
    sub_22C430E9C(319, &qword_28142FA20);
    if (v1 <= 0x3F)
    {
      sub_22C430E9C(319, &qword_27D9C14B0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C8E98A0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22C8E98B8()
{
  result = qword_27D9C14C0;
  if (!qword_27D9C14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C14C0);
  }

  return result;
}

uint64_t sub_22C8E990C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9C14C8, &qword_22C92D860);
    sub_22C8E9A60(a2, MEMORY[0x277D55C48]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C8E99A8()
{
  result = qword_27D9C14F0;
  if (!qword_27D9C14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C14F0);
  }

  return result;
}

uint64_t sub_22C8E99FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StructuredParameter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8E9A60(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StructuredParameter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FormattedParameter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C8E9C60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF0 && *(a1 + 8))
  {
    return (*a1 + 2147483632);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 15;
  if (v4 >= 0x11)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C8E9CB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFEF)
  {
    *result = 0;
    *result = a2 - 2147483632;
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 15;
    }
  }

  return result;
}

void *sub_22C8E9D10(void *result, int a2)
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

unint64_t sub_22C8E9D44()
{
  result = qword_27D9C1508;
  if (!qword_27D9C1508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1508);
  }

  return result;
}

unint64_t sub_22C8E9D9C()
{
  result = qword_27D9C1510;
  if (!qword_27D9C1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1510);
  }

  return result;
}

unint64_t sub_22C8E9DF4()
{
  result = qword_27D9C1518;
  if (!qword_27D9C1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1518);
  }

  return result;
}

unint64_t sub_22C8E9E4C()
{
  result = qword_27D9C1520;
  if (!qword_27D9C1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1520);
  }

  return result;
}

unint64_t sub_22C8E9EA4()
{
  result = qword_27D9C1528;
  if (!qword_27D9C1528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1528);
  }

  return result;
}

unint64_t sub_22C8E9EFC()
{
  result = qword_27D9C1530;
  if (!qword_27D9C1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1530);
  }

  return result;
}

unint64_t sub_22C8E9F50(unint64_t result)
{
  if (result != 16)
  {
    return sub_22C8E8E2C(result);
  }

  return result;
}

uint64_t sub_22C8E9F9C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v7 = sub_22C3A5908(&qword_27D9BF9F0, &unk_22C92DAD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v35 - v9;
  v11 = sub_22C907C5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v44 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C90804C();
  v16 = *(v15 + 16);
  if (v16)
  {
    v35[2] = a3;
    v36 = a2;
    v37 = v4;
    v45 = MEMORY[0x277D84F90];
    sub_22C3B626C(0, v16, 0);
    v17 = v45;
    v19 = *(v12 + 16);
    v18 = v12 + 16;
    v20 = *(v18 + 64);
    v35[1] = v15;
    v21 = v15 + ((v20 + 32) & ~v20);
    v40 = *(v18 + 56);
    v41 = v19;
    v39 = (v18 - 8);
    v42 = v18;
    do
    {
      v41(v44, v21, v11);
      sub_22C907C4C();
      v22 = sub_22C9086FC();
      if (sub_22C370B74(v10, 1, v22) == 1)
      {
        sub_22C3770B0(v10, &qword_27D9BF9F0, &unk_22C92DAD0);
        type metadata accessor for DialogValue(0);
        v23 = sub_22C909F0C();
      }

      else
      {
        v24 = sub_22C9086DC();
        (*(*(v22 - 8) + 8))(v10, v22);
        v25 = v43;
        v23 = sub_22C8EB168(v24);
        v43 = v25;
      }

      v26 = v11;
      (*v39)(v44, v11);
      v45 = v17;
      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22C3B626C((v27 > 1), v28 + 1, 1);
        v17 = v45;
      }

      *(v17 + 16) = v28 + 1;
      *(v17 + 8 * v28 + 32) = v23;
      v21 += v40;
      --v16;
      v11 = v26;
    }

    while (v16);

    a2 = v36;
    v4 = v37;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  sub_22C90805C();
  v29 = v4;
  v30 = v43;
  v31 = sub_22C8EA340(v17);
  if (v30)
  {
  }

  else
  {
    v32 = v31;

    sub_22C8EA41C(v38, a2, v32);
    v29 = v33;
  }

  return v29;
}

uint64_t sub_22C8EA340(uint64_t a1)
{
  v1 = *(a1 + 16);
  for (i = (a1 + 32); v1; --v1)
  {
    v3 = *i++;

    sub_22C3CC610();
  }

  MEMORY[0x28223BE20](a1);
  sub_22C79265C();
  v5 = v4;

  return v5;
}

void sub_22C8EA41C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v64 - v10;
  v80 = sub_22C9063DC();
  v11 = *(v80 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v80);
  v70 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - v15;
  v72 = type metadata accessor for DialogValue(0);
  v17 = *(v72 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v72);
  v71 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v64 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v64 - v24;
  v86 = a1;
  v87 = a2;
  v69 = *(a3 + 16);
  if (v69)
  {
    v77 = *(type metadata accessor for ResponseRedactor() + 24);
    v26 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v27 = (v11 + 8);
    v28 = *(v17 + 72);

    v29 = 0;
    *&v30 = 136315138;
    v68 = v30;
    v79 = v25;
    v75 = v27;
    v76 = v16;
    v67 = v23;
    v66 = v26;
    v65 = v28;
    while (2)
    {
      sub_22C8EB020(v26 + v28 * v29, v25);
      sub_22C90405C();
      sub_22C8EB020(v25, v23);
      v31 = sub_22C9063CC();
      v32 = sub_22C90AACC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v84 = v34;
        *v33 = v68;
        sub_22C8EB020(v23, v71);
        v35 = sub_22C90A1AC();
        v36 = v23;
        v38 = v37;
        sub_22C891D88(v36);
        v39 = sub_22C36F9F4(v35, v38, &v84);

        *(v33 + 4) = v39;
        v25 = v79;
        _os_log_impl(&dword_22C366000, v31, v32, "redacting %s", v33, 0xCu);
        sub_22C36FF94(v34);
        MEMORY[0x2318B9880](v34, -1, -1);
        MEMORY[0x2318B9880](v33, -1, -1);

        v40 = *v27;
        (*v27)(v76, v80);
      }

      else
      {

        sub_22C891D88(v23);
        v40 = *v27;
        (*v27)(v16, v80);
      }

      sub_22C880300();
      if (v4)
      {
        sub_22C891D88(v25);
      }

      else
      {
        v42 = v41;
        v78 = 0;
        v73 = v29 + 1;
        v74 = v40;
        v43 = v41 + 40;
        v88 = -*(v41 + 16);
        v44 = -1;
        do
        {
          if (v88 + v44 == -1)
          {

            v54 = v79;
            sub_22C8806A0();
            v84 = 91;
            v85 = 0xE100000000000000;
            MEMORY[0x2318B7850]();

            MEMORY[0x2318B7850](93, 0xE100000000000000);

            v55 = v84;
            v56 = v85;
            v57 = v70;
            sub_22C90405C();

            v58 = sub_22C9063CC();
            v59 = sub_22C90AADC();

            v60 = os_log_type_enabled(v58, v59);
            v61 = v74;
            if (v60)
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              v84 = v63;
              *v62 = v68;
              *(v62 + 4) = sub_22C36F9F4(v55, v56, &v84);
              _os_log_impl(&dword_22C366000, v58, v59, "failed to redact %s", v62, 0xCu);
              sub_22C36FF94(v63);
              MEMORY[0x2318B9880](v63, -1, -1);
              MEMORY[0x2318B9880](v62, -1, -1);
            }

            v61(v57, v80);
            sub_22C8EAB84(v55, v56);

            sub_22C891D88(v54);
            return;
          }

          if (++v44 >= *(v42 + 16))
          {
            __break(1u);
            return;
          }

          v45 = v43 + 16;
          v48 = v43 - 8;
          v46 = *(v43 - 8);
          v47 = *(v48 + 8);
          v84 = v86;
          v85 = v87;
          v82 = v46;
          v83 = v47;
          v49 = sub_22C90077C();
          v50 = v81;
          sub_22C36C640(v81, 1, 1, v49);
          sub_22C3858B4();

          sub_22C90AD6C();
          v52 = v51;
          sub_22C3770B0(v50, &qword_27D9BD820, &unk_22C9195C0);

          v43 = v45;
        }

        while ((v52 & 1) != 0);

        v53 = v79;
        sub_22C8806A0();
        v84 = 91;
        v85 = 0xE100000000000000;
        MEMORY[0x2318B7850]();

        MEMORY[0x2318B7850](93, 0xE100000000000000);

        sub_22C471DC4();
        v25 = v53;
        sub_22C90A21C();

        sub_22C891D88(v53);
        v29 = v73;
        v4 = v78;
        v27 = v75;
        v16 = v76;
        v23 = v67;
        v26 = v66;
        v28 = v65;
        if (v73 != v69)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
  }
}

unint64_t sub_22C8EAB84(uint64_t a1, uint64_t a2)
{
  sub_22C90AF5C();

  MEMORY[0x2318B7850](a1, a2);
  MEMORY[0x2318B7850](62, 0xE100000000000000);
  return 0xD000000000000013;
}

void sub_22C8EAC14(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v43 = a3;
  v47 = a2;
  v7 = sub_22C9063DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - v14;
  v16 = *(type metadata accessor for ResponseRedactor() + 24);
  v17 = a1;
  sub_22C880300();
  if (!v4)
  {
    v19 = v18;
    v38 = v11;
    v39 = v8;
    v40 = v7;
    v41 = 0;
    v42 = a4;
    v20 = 0;
    v21 = *(v18 + 16);
    for (i = (v18 + 40); ; i += 2)
    {
      if (v21 == v20)
      {

        v28 = v42;
        sub_22C8EB020(v17, v42);
        v29 = 0;
LABEL_12:
        v37 = type metadata accessor for DialogValue(0);
        sub_22C36C640(v28, v29, 1, v37);
        return;
      }

      if (v20 >= *(v19 + 16))
      {
        break;
      }

      v23 = *(i - 1);
      v24 = *i;
      v46[0] = v47;
      v46[1] = v43;
      v44 = v23;
      v45 = v24;
      v25 = sub_22C90077C();
      sub_22C36C640(v15, 1, 1, v25);
      sub_22C3858B4();

      sub_22C90AD6C();
      v27 = v26;
      sub_22C3770B0(v15, &qword_27D9BD820, &unk_22C9195C0);
      if ((v27 & 1) == 0)
      {

        v30 = v38;
        sub_22C90405C();

        v31 = v43;

        v32 = sub_22C9063CC();
        v33 = sub_22C90AACC();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v46[0] = v35;
          *v34 = 136315394;
          v36 = sub_22C36F9F4(v23, v24, v46);

          *(v34 + 4) = v36;
          *(v34 + 12) = 2080;
          *(v34 + 14) = sub_22C36F9F4(v47, v31, v46);
          _os_log_impl(&dword_22C366000, v32, v33, "Filtering safe parameter %s found in utterance %s", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318B9880](v35, -1, -1);
          MEMORY[0x2318B9880](v34, -1, -1);
        }

        else
        {
        }

        (*(v39 + 8))(v30, v40);
        v29 = 1;
        v28 = v42;
        goto LABEL_12;
      }

      ++v20;
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for ResponseRedactor()
{
  result = qword_27D9C1538;
  if (!qword_27D9C1538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C8EB020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C8EB0CC()
{
  result = sub_22C56DE2C();
  if (v1 <= 0x3F)
  {
    result = sub_22C9007EC();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TypedValueFormatter(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C8EB168(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C3A5908(&qword_27D9BB608, &qword_22C92DB40);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = &v73 - v8;
  v81 = type metadata accessor for DialogValue(0);
  v10 = sub_22C369824(v81);
  v74 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v76 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA64();
  v75 = v16;
  v83 = sub_22C3A5908(&qword_27D9BF450, &qword_22C922710);
  v17 = sub_22C36985C(v83);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C3698E4();
  v77 = v20;
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA58();
  v86 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  v82 = v24;
  v78 = MEMORY[0x277D84F98];
  v87 = MEMORY[0x277D84F98];
  v25 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(a1 + 64);
  v29 = (v26 + 63) >> 6;
  v84 = a1;

  v31 = 0;
  while (1)
  {
    v32 = v31;
    if (!v28)
    {
      while (1)
      {
        v31 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v31 >= v29)
        {

          return v78;
        }

        v28 = *(v25 + 8 * v31);
        ++v32;
        if (v28)
        {
          v33 = v9;
          v85 = v2;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v33 = v9;
    v85 = v2;
LABEL_11:
    v34 = __clz(__rbit64(v28)) | (v31 << 6);
    v35 = *(v84 + 56);
    v36 = (*(v84 + 48) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    v39 = sub_22C9086BC();
    sub_22C369824(v39);
    v41 = v35 + *(v40 + 72) * v34;
    v43 = v82;
    v42 = v83;
    v44 = *(v83 + 48);
    v79 = v46;
    v80 = v45;
    (*(v46 + 16))(v82 + v44, v41);
    *v43 = v38;
    v43[1] = v37;
    v47 = v86;
    sub_22C4E7208(v43, v86, &qword_27D9BF450, &qword_22C922710);
    v48 = *(v42 + 48);

    v49 = v47 + v48;
    v9 = v33;
    v50 = v85;
    sub_22C8F0584(v49, v33);
    v2 = v50;
    if (v50)
    {
      break;
    }

    v28 &= v28 - 1;
    v51 = sub_22C36EEF8();
    sub_22C36D0A8(v51, v52, v81);
    if (v53)
    {
      sub_22C36DD28(v86, &qword_27D9BF450, &qword_22C922710);
      result = sub_22C36DD28(v33, &qword_27D9BB608, &qword_22C92DB40);
    }

    else
    {
      v54 = v75;
      sub_22C8F117C(v33, v75);
      sub_22C4E7208(v86, v77, &qword_27D9BF450, &qword_22C922710);
      sub_22C8F117C(v54, v76);
      if (v78[3] <= v78[2])
      {
        sub_22C88BEC4();
      }

      v55 = v87;
      v57 = *v77;
      v56 = v77[1];
      v58 = *(v87 + 40);
      sub_22C90B62C();
      v85 = v56;
      sub_22C909FFC();
      result = sub_22C90B66C();
      v59 = v55 + 64;
      v78 = v55;
      v60 = -1 << *(v55 + 32);
      v61 = result & ~v60;
      v62 = v61 >> 6;
      if (((-1 << v61) & ~*(v55 + 64 + 8 * (v61 >> 6))) == 0)
      {
        v64 = 0;
        v65 = (63 - v60) >> 6;
        while (++v62 != v65 || (v64 & 1) == 0)
        {
          v66 = v62 == v65;
          if (v62 == v65)
          {
            v62 = 0;
          }

          v64 |= v66;
          v67 = *(v59 + 8 * v62);
          if (v67 != -1)
          {
            v63 = __clz(__rbit64(~v67)) + (v62 << 6);
            goto LABEL_26;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v63 = __clz(__rbit64((-1 << v61) & ~*(v55 + 64 + 8 * (v61 >> 6)))) | v61 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      v68 = *(v83 + 48);
      *(v59 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
      v69 = v78;
      v70 = (v78[6] + 16 * v63);
      v71 = v85;
      *v70 = v57;
      v70[1] = v71;
      sub_22C8F117C(v76, v69[7] + *(v74 + 72) * v63);
      ++v69[2];
      result = (*(v79 + 8))(v77 + v68, v80);
    }
  }

  sub_22C36DD28(v86, &qword_27D9BF450, &qword_22C922710);
  v72 = v78;

  return v72;
}

uint64_t sub_22C8EB68C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9C0E28, &qword_22C92B4C0);
    v3 = sub_22C90B1EC();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_22C8F1250(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_22C8EB724(uint64_t a1)
{
  v84 = sub_22C907DEC();
  v2 = sub_22C369824(v84);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  v83 = v7;
  sub_22C36BA0C();
  v82 = sub_22C906ECC();
  v8 = sub_22C369824(v82);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v81 = v13;
  v14 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  v19 = &v74 - v18;
  v20 = sub_22C907C5C();
  v21 = sub_22C369824(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v28 = v27 - v26;
  v29 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  v86 = *(v29 - 8);
  v30 = *(v86 + 64);
  MEMORY[0x28223BE20](v29 - 8);
  sub_22C369ABC();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  v85 = v35;
  v36 = *(a1 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v74 = v33;
    v75 = v20;
    v88 = MEMORY[0x277D84F90];
    sub_22C3B7F2C(0, v36, 0);
    v38 = v10;
    v39 = v75;
    v40 = v88;
    v42 = *(v23 + 16);
    v41 = v23 + 16;
    v43 = a1 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v79 = (v38 + 8);
    v80 = v42;
    v77 = v41 - 8;
    v78 = (v4 + 8);
    v76 = *(v41 + 56);
    do
    {
      v44 = v41;
      v80(v28, v43, v39);
      v45 = v81;
      sub_22C907C0C();
      v46 = v83;
      sub_22C906EBC();
      (*v79)(v45, v82);
      sub_22C907DDC();
      (*v78)(v46, v84);
      v47 = sub_22C9026AC();
      if (sub_22C370B74(v19, 1, v47) == 1)
      {
        v48 = sub_22C3760C0();
        v49(v48);
        sub_22C36DD28(v19, &qword_27D9BF328, &qword_22C9225C0);
        v50 = sub_22C90234C();
        sub_22C36C640(v85, 1, 1, v50);
      }

      else
      {
        sub_22C90268C();
        v51 = sub_22C3760C0();
        v52(v51);
        sub_22C36BBA8(v47);
        (*(v53 + 8))(v19, v47);
      }

      v88 = v40;
      v55 = *(v40 + 16);
      v54 = *(v40 + 24);
      if (v55 >= v54 >> 1)
      {
        v59 = sub_22C8F1C84(v54);
        sub_22C3B7F2C(v59, v60, v61);
        v39 = v75;
        v40 = v88;
      }

      *(v40 + 16) = v55 + 1;
      sub_22C37054C();
      sub_22C4E7208(v58, v40 + v56 + *(v57 + 72) * v55, &qword_27D9BAB60, &unk_22C90D400);
      v43 += v76;
      --v36;
      v41 = v44;
    }

    while (v36);
    v33 = v74;
    v37 = MEMORY[0x277D84F90];
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v62 = *(v40 + 16);
  if (v62)
  {
    v88 = v37;
    sub_22C3B7F0C(0, v62, 0);
    v63 = 0;
    v64 = v88;
    v85 = v40 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v65 = &qword_27D9BAB60;
    while (v63 < *(v40 + 16))
    {
      sub_22C4E719C(v85 + *(v86 + 72) * v63, v33, v65, &unk_22C90D400);
      sub_22C8F0DBC(v33, &v87);
      v66 = v65;
      sub_22C36DD28(v33, v65, &unk_22C90D400);
      v67 = v87;
      v88 = v64;
      v69 = *(v64 + 16);
      v68 = *(v64 + 24);
      if (v69 >= v68 >> 1)
      {
        v70 = sub_22C8F1C84(v68);
        sub_22C3B7F0C(v70, v71, v72);
        v64 = v88;
      }

      ++v63;
      *(v64 + 16) = v69 + 1;
      *(v64 + 8 * v69 + 32) = v67;
      v65 = v66;
      if (v62 == v63)
      {

        return v64;
      }
    }

    __break(1u);
    sub_22C36DD28(v33, &qword_27D9BAB60, &unk_22C90D400);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22C8EBCC4()
{
  v0 = sub_22C3A5908(&qword_27D9BF9F0, &unk_22C92DAD0);
  sub_22C369914(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  sub_22C907C4C();
  v6 = sub_22C9086FC();
  v7 = sub_22C36E638();
  sub_22C36D0A8(v7, v8, v6);
  if (v9)
  {
    sub_22C36DD28(v5, &qword_27D9BF9F0, &unk_22C92DAD0);
    type metadata accessor for DialogValue(0);
    return sub_22C909F0C();
  }

  else
  {
    v10 = sub_22C9086DC();
    sub_22C36BBA8(v6);
    v12 = *(v11 + 8);
    v13 = sub_22C36FBFC();
    v14(v13);
    v15 = sub_22C8EB168(v10);
  }

  return v15;
}

uint64_t sub_22C8EBE00()
{
  v1 = sub_22C901FBC();
  v2 = sub_22C36A7A4(v1, &v754);
  v732 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  sub_22C3698F8(v6);
  v7 = sub_22C901FDC();
  v8 = sub_22C36A7A4(v7, &v750);
  v727 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  sub_22C3698F8(v12);
  v13 = sub_22C90201C();
  v14 = sub_22C36A7A4(v13, v759);
  v739 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  sub_22C3698F8(v18);
  v19 = sub_22C9026DC();
  v20 = sub_22C36A7A4(v19, &v770);
  v744 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698A8();
  sub_22C3698F8(v24);
  v25 = sub_22C902BBC();
  v26 = sub_22C36A7A4(v25, &v772);
  v746 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  sub_22C3698F8(v30);
  v31 = sub_22C90289C();
  v32 = sub_22C36A7A4(v31, &v777);
  v749 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698A8();
  sub_22C3698F8(v36);
  v824 = sub_22C90977C();
  v37 = sub_22C369824(v824);
  v766 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C3698A8();
  sub_22C36D234(v41);
  v42 = sub_22C3A5908(&qword_27D9BC908, &qword_22C915090);
  v43 = sub_22C369914(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v47);
  sub_22C36BA64();
  v818 = v48;
  sub_22C36BA0C();
  v816 = sub_22C908EAC();
  v49 = sub_22C369824(v816);
  v814 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22C3698A8();
  v815 = v53;
  sub_22C36BA0C();
  v54 = sub_22C90281C();
  v55 = sub_22C36A7A4(v54, &v804);
  v775 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22C3698A8();
  sub_22C3698F8(v59);
  v60 = sub_22C9028FC();
  v61 = sub_22C36A7A4(v60, v756);
  v736 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22C3698A8();
  sub_22C3698F8(v65);
  v66 = sub_22C902A4C();
  v67 = sub_22C36A7A4(v66, &v782);
  v753 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22C3698A8();
  sub_22C3698F8(v71);
  v72 = sub_22C9029AC();
  v73 = sub_22C36A7A4(v72, &v788);
  v757 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22C3698A8();
  sub_22C3698F8(v77);
  v78 = sub_22C9063DC();
  v79 = sub_22C36A7A4(v78, &v795);
  v768 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v83);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v84);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v85);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v87);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v88);
  sub_22C36BA64();
  sub_22C36D234(v89);
  v90 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v91 = sub_22C369914(v90);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v94);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v95);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v96);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v97);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v98);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v99);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v100);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v101);
  sub_22C36BA64();
  sub_22C36D234(v102);
  v103 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  v104 = sub_22C369914(v103);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v104);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v107);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v108);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v109);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v110);
  sub_22C36BA64();
  sub_22C3698F8(v111);
  v112 = sub_22C90286C();
  v113 = sub_22C36A7A4(v112, v792);
  v762 = v114;
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v113);
  sub_22C3698A8();
  sub_22C3698F8(v117);
  v118 = sub_22C90221C();
  v119 = sub_22C36A7A4(v118, &v806);
  v801 = v120;
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v119);
  sub_22C3698A8();
  sub_22C3698F8(v123);
  v124 = sub_22C9027EC();
  v125 = sub_22C36A7A4(v124, &v813);
  v782 = v126;
  v128 = *(v127 + 64);
  MEMORY[0x28223BE20](v125);
  sub_22C3698A8();
  sub_22C3698F8(v129);
  v130 = sub_22C90931C();
  v131 = sub_22C36A7A4(v130, &v808);
  v778 = v132;
  v134 = *(v133 + 64);
  MEMORY[0x28223BE20](v131);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v135);
  sub_22C36BA64();
  v137 = sub_22C3698F8(v136);
  v825 = type metadata accessor for DialogValue(v137);
  v138 = sub_22C369824(v825);
  v797 = v139;
  v141 = *(v140 + 64);
  MEMORY[0x28223BE20](v138);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v142);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v143);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v144);
  sub_22C36BA64();
  sub_22C36D234(v145);
  v146 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v147 = sub_22C369914(v146);
  v149 = *(v148 + 64);
  MEMORY[0x28223BE20](v147);
  sub_22C3698E4();
  v813 = v150;
  sub_22C369930();
  MEMORY[0x28223BE20](v151);
  sub_22C36BA64();
  sub_22C3698F8(v152);
  v153 = sub_22C90906C();
  v154 = sub_22C36A7A4(v153, &v817);
  v799 = v155;
  v157 = *(v156 + 64);
  MEMORY[0x28223BE20](v154);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v158);
  sub_22C36BA64();
  sub_22C3698F8(v159);
  v823 = sub_22C9093BC();
  v160 = sub_22C369824(v823);
  v802 = v161;
  v163 = *(v162 + 64);
  MEMORY[0x28223BE20](v160);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v164);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v165);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v166);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v167);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v168);
  sub_22C36BA64();
  sub_22C3698F8(v169);
  v820 = sub_22C90277C();
  v170 = sub_22C369824(v820);
  v772 = v171;
  v173 = *(v172 + 64);
  MEMORY[0x28223BE20](v170);
  sub_22C3698A8();
  v819 = v174;
  v175 = sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390);
  v176 = sub_22C369824(v175);
  v821 = v177;
  v822 = v176;
  v179 = *(v178 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v180);
  sub_22C36D234(v725 - v181);
  v182 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v182);
  v184 = *(v183 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v185);
  sub_22C36D234(v725 - v186);
  v187 = sub_22C3A5908(&qword_27D9C0E00, &unk_22C92B4A0);
  sub_22C369914(v187);
  v189 = *(v188 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v190);
  sub_22C3698F8(v725 - v191);
  v192 = sub_22C9020CC();
  v193 = sub_22C369824(v192);
  v807 = v194;
  v808 = v193;
  v196 = *(v195 + 64);
  MEMORY[0x28223BE20](v193);
  sub_22C3698A8();
  v809 = v197;
  sub_22C36BA0C();
  v812 = sub_22C907DEC();
  v198 = sub_22C369824(v812);
  v200 = v199;
  v202 = *(v201 + 64);
  MEMORY[0x28223BE20](v198);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v203);
  v205 = v725 - v204;
  v206 = sub_22C906ECC();
  v207 = sub_22C369824(v206);
  v209 = v208;
  v211 = *(v210 + 64);
  MEMORY[0x28223BE20](v207);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v212);
  v214 = v725 - v213;
  v215 = sub_22C9026BC();
  v216 = sub_22C369824(v215);
  v817 = v217;
  v219 = *(v218 + 64);
  MEMORY[0x28223BE20](v216);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v220);
  sub_22C36BA58();
  sub_22C3698D4();
  v222 = MEMORY[0x28223BE20](v221);
  v224 = v725 - v223;
  MEMORY[0x28223BE20](v222);
  v226 = v725 - v225;
  v806 = v0;
  sub_22C907C0C();
  sub_22C906EBC();
  v227 = *(v209 + 8);
  v791 = v206;
  v790[1] = v209 + 8;
  v788 = v227;
  v227(v214, v206);
  sub_22C907DAC();
  v230 = *(v200 + 8);
  v229 = v200 + 8;
  v228 = v230;
  v793 = v229;
  (v230)(v205, v812);
  v231 = v817;
  v232 = (v817 + 16);
  v233 = *(v817 + 16);
  v805 = v226;
  v234 = v226;
  v235 = v224;
  (v233)(v224, v234, v215);
  v236 = (*(v231 + 88))(v224, v215);
  v237 = *MEMORY[0x277D1CBF0];
  v810 = v215;
  if (v236 == v237)
  {
    v824 = v228;
    (*(v817 + 96))(v224, v215);
    (*(v807 + 32))(v809, v224, v808);
    sub_22C37205C(&v824);
    sub_22C907C1C();
    v238 = sub_22C906A7C();
    sub_22C3788A4(v229);
    if (v427)
    {
      sub_22C36DD28(v229, &qword_27D9C0E00, &unk_22C92B4A0);
      v245 = 0;
    }

    else
    {
      v244 = *(v238 - 8);
      v245 = (*(v244 + 88))(v229, v238) == *MEMORY[0x277D1DD48];
      v246 = *(v244 + 8);
      v232 = (v244 + 8);
      v246(v229, v238);
    }

    v247 = v802;
    v248 = v799;
    v249 = v794;
    v250 = v790[0];
    sub_22C37443C(&v819);
    sub_22C907C0C();
    sub_22C374490(&v823);
    sub_22C906EBC();
    v788(v233, v791);
    sub_22C907DDC();
    v251 = sub_22C3720DC();
    v824(v251);
    v252 = sub_22C9026AC();
    v253 = sub_22C36EEF8();
    v255 = sub_22C36D0A8(v253, v254, v252);
    if (v427)
    {
      sub_22C36DD28(v249, &qword_27D9BF328, &qword_22C9225C0);
      v256 = v798;
      v257 = v823;
    }

    else
    {
      v297 = MEMORY[0x2318AFB10](v255);
      sub_22C36BBA8(v252);
      (*(v298 + 8))(v249, v252);
      v256 = v798;
      v257 = v823;
      if (v297)
      {
        LODWORD(v818) = v245;
        v299 = *(v297 + 16);
        if (v299)
        {
          v826 = MEMORY[0x277D84F90];
          sub_22C3B7F4C(0, v299, 0);
          v300 = v826;
          v301 = *(v772 + 16);
          v302 = *(v772 + 80);
          v816 = v297;
          v303 = v297 + ((v302 + 32) & ~v302);
          v823 = *(v772 + 72);
          v824 = v301;
          v304 = (v772 + 32);
          do
          {
            v305 = v819;
            v306 = v820;
            (v824)(v819, v303, v820);
            v307 = *(v822 + 48);
            *v250 = sub_22C90273C();
            v250[1] = v308;
            (*v304)(v250 + v307, v305, v306);
            swift_storeEnumTagMultiPayload();
            v826 = v300;
            v310 = *(v300 + 16);
            v309 = *(v300 + 24);
            if (v310 >= v309 >> 1)
            {
              sub_22C3B7F4C(v309 > 1, v310 + 1, 1);
              v300 = v826;
            }

            *(v300 + 16) = v310 + 1;
            sub_22C37054C();
            sub_22C4E7208(v250, v300 + v311 + *(v312 + 72) * v310, &qword_27D9BAAF0, &qword_22C90D390);
            v303 += v823;
            --v299;
          }

          while (v299);
        }

        else
        {

          v300 = MEMORY[0x277D84F90];
        }

        v400 = v811;
        sub_22C8EB68C(v300);
        v811 = v400;
        sub_22C8F09D8();
        sub_22C386130();
        (*(v807 + 8))(v809, v808);
        v401 = *(v817 + 8);
        v402 = sub_22C36FBFC();
        v403(v402);
        return sub_22C36BA00();
      }
    }

    sub_22C90207C();
    v313 = *(v247 + 88);
    if (v313(v256, v257) == *MEMORY[0x277D729E0])
    {
      sub_22C383988();
      (*(v247 + 96))(v256, v257);
      v314 = *v256;
      v315 = swift_projectBox();
      v316 = v780;
      v317 = v787;
      (*(v248 + 16))(v780, v315, v787);
      v318 = *(sub_22C90905C() + 16);

      if (v318 == 1)
      {
        sub_22C90905C();
        sub_22C3759C4(&v797);
        sub_22C58B008(v319, v320);
        v321 = v314;

        v322 = sub_22C36EEF8();
        v323 = v823;
        sub_22C36D0A8(v322, v324, v823);
        if (!v427)
        {
          v404 = v764;
          (*(v247 + 32))(v764, v321, v323);
          v405 = v785;
          (*(v247 + 16))(v785, v404, v323);
          swift_storeEnumTagMultiPayload();
          sub_22C8F1CA8(v405);
          swift_isUniquelyReferenced_nonNull_native();
          sub_22C386C30();
          sub_22C37AE30();
          sub_22C8F1D0C();
          sub_22C62F094();
          (*(v247 + 8))(v404, v323);
          (*(v248 + 8))(v316, v787);
LABEL_70:

          v332 = v810;
          goto LABEL_71;
        }

        sub_22C36DD28(v314, &qword_27D9BB908, &qword_22C910960);
        sub_22C383988();
      }

      v325 = sub_22C90905C();
      v326 = v785;
      *v785 = v325;
      swift_storeEnumTagMultiPayload();
      sub_22C8F1CA8(v326);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C386C30();
      sub_22C62F094();
      (*(v248 + 8))(v316, v317);
      goto LABEL_70;
    }

    sub_22C374490(&v809);
    sub_22C90207C();
    if (v313(v232, v257) == *MEMORY[0x277D72A58])
    {
      (*(v247 + 96))(v232, v257);
      v327 = *v232;
      swift_projectBox();
      sub_22C3759C4(&v807);
      v329 = v770;
      v330 = v779;
      (*(v328 + 16))(v770);

      v331 = v771;
      (*(v256 + 32))(v771, v329, v330);
      LODWORD(v327) = (*(v256 + 88))(v331, v330);
      LODWORD(v329) = *MEMORY[0x277D729A0];
      (*(v256 + 8))(v331, v330);
      v256 = v798;
      v332 = v810;
      if (v327 == v329)
      {
        goto LABEL_60;
      }
    }

    else
    {
      (*(v247 + 8))(v232, v257);
      v332 = v810;
    }

    v379 = v785;
    sub_22C90207C();
    swift_storeEnumTagMultiPayload();
    sub_22C8F117C(v379, v786);
    v380 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v826 = v380;
    sub_22C8F1D0C();
    sub_22C37AE30();
    sub_22C62F094();
LABEL_60:
    (*(v247 + 8))(v256, v823);
LABEL_71:
    v406 = v805;
    sub_22C8F09D8();
    sub_22C386130();
    (*(v807 + 8))(v809, v808);
    (*(v817 + 8))(v406, v332);
    return sub_22C36BA00();
  }

  if (v236 == *MEMORY[0x277D1CB98])
  {
    v239 = v817;
    v240 = v805;
    sub_22C8F09D8();
    sub_22C386130();
    sub_22C909F0C();
    v241 = *(v239 + 8);
    v242 = v240;
    v243 = v810;
    v241(v242, v810);
    v241(v224, v243);
    return sub_22C36BA00();
  }

  if (v236 == *MEMORY[0x277D1CBA8])
  {
    v258 = sub_22C372000();
    v259(v258);
    sub_22C3722F4(&v812);
    v261 = v260(v781, v224, v783);
    v262 = MEMORY[0x2318AFCB0](v261);
    sub_22C3A5908(&qword_27D9C0E28, &qword_22C92B4C0);
    v263 = sub_22C90B1CC();
    v264 = 0;
    v266 = v262 + 64;
    v265 = *(v262 + 64);
    v820 = v262;
    v267 = 1 << *(v262 + 32);
    v268 = -1;
    if (v267 < 64)
    {
      v268 = ~(-1 << v267);
    }

    v269 = v268 & v265;
    v215 = (v267 + 63) >> 6;
    v819 = v801 + 16;
    v818 = (v802 + 88);
    LODWORD(v816) = *MEMORY[0x277D729E0];
    v815 = (v801 + 8);
    v812 = (v802 + 8);
    v809 = (v802 + 96);
    v806 = (v799 + 8);
    v807 = v799 + 16;
    v808 = v263;
    v814 = v263 + 64;
    v270 = v777;
    while (1)
    {
      v235 = v800;
      v271 = v803;
      if (!v269)
      {
        break;
      }

      v272 = __clz(__rbit64(v269));
      v821 = (v269 - 1) & v269;
LABEL_21:
      v233 = v272 | (v264 << 6);
      v275 = *(v820 + 56);
      v276 = (*(v820 + 48) + 16 * v233);
      v277 = v276[1];
      v822 = *v276;
      (*(v801 + 16))(v800, v275 + *(v801 + 72) * v233, v270);
      v824 = v277;

      v278 = v270;
      sub_22C90207C();
      v279 = v823;
      v280 = (*v818)(v271, v823);
      if (v280 == v816)
      {
        (*v809)(v271, v279);
        v813 = *v271;
        v281 = swift_projectBox();
        v282 = v784;
        v283 = v787;
        (*v807)(v784, v281, v787);
        v284 = sub_22C90905C();
        (*v806)(v282, v283);
        v285 = *v815;
        v286 = sub_22C36EBF0();
        v287(v286);
        v271 = v796;
        *v796 = v284;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_22C3759C4(&v826);
        sub_22C90207C();
        v288 = *v815;
        v289 = sub_22C36EBF0();
        v290(v289);
        swift_storeEnumTagMultiPayload();
        (*v812)(v803, v279);
      }

      v270 = v278;
      v229 = v795;
      sub_22C8F117C(v271, v795);
      *(v814 + ((v233 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v233;
      v291 = v808;
      v292 = (*(v808 + 48) + 16 * v233);
      v293 = v824;
      *v292 = v822;
      v292[1] = v293;
      sub_22C8F117C(v229, *(v291 + 56) + *(v797 + 72) * v233);
      v294 = *(v291 + 16);
      v295 = __OFADD__(v294, 1);
      v296 = v294 + 1;
      if (v295)
      {
        __break(1u);
        goto LABEL_146;
      }

      *(v291 + 16) = v296;
      v269 = v821;
    }

    v273 = v264;
    v229 = v810;
    while (1)
    {
      v264 = v273 + 1;
      if (__OFADD__(v273, 1))
      {
        break;
      }

      if (v264 >= v215)
      {

        v375 = v817;
        sub_22C8F09D8();
        sub_22C386130();
        (*(v782 + 8))(v781, v783);
        v376 = *(v375 + 8);
        v377 = sub_22C36EBF0();
        v378(v377);
        return sub_22C36BA00();
      }

      v274 = *(v266 + 8 * v264);
      ++v273;
      if (v274)
      {
        v272 = __clz(__rbit64(v274));
        v821 = (v274 - 1) & v274;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_110;
  }

  if (v236 == *MEMORY[0x277D1CBB0])
  {
    v266 = 0x6574656D61726170;
    v333 = sub_22C372000();
    v334(v333);
    sub_22C3722F4(&v803);
    v335 = sub_22C36FBFC();
    v336(v335);
    sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
    v337 = *(v821 + 72);
    v338 = (*(v821 + 80) + 32) & ~*(v821 + 80);
    *(swift_allocObject() + 16) = xmmword_22C90F800;
    v339 = *(v822 + 48);
    sub_22C8F1C3C();
    *v340 = 0x6574656D61726170;
    v340[1] = v341;
    sub_22C8F0480(7368769, 0xE300000000000000, (v340 + v342));
    v808 = sub_22C909F0C();
    v229 = MEMORY[0x2318AFCE0]();
    v343 = 0;
    v344 = *(v229 + 16);
    v821 = v814 + 16;
    v822 = v344;
    v820 = v766 + 8;
    LODWORD(v819) = *MEMORY[0x277D729B8];
    v812 = (v778 + 104);
    v345 = (v802 + 104);
    v346 = (v814 + 8);
    v806 = (v802 + 32);
    v807 = MEMORY[0x277D84F90];
    LODWORD(v809) = *MEMORY[0x277D72A58];
    v347 = v816;
    v348 = v779;
LABEL_44:
    v215 = v815;
    while (v822 != v343)
    {
      if (v343 >= *(v229 + 16))
      {
        __break(1u);
        goto LABEL_129;
      }

      sub_22C37054C();
      v266 = v229;
      (*(v350 + 16))(v215, v229 + v349 + *(v350 + 72) * v343, v347);
      v351 = v818;
      sub_22C908E3C();
      v352 = v351;
      if (sub_22C370B74(v351, 1, v824) == 1)
      {
        sub_22C36DD28(v818, &qword_27D9BC908, &qword_22C915090);
        v353 = v804;
        sub_22C908DDC();
        v352 = v353;
      }

      v354 = sub_22C90971C();
      v356 = v355;
      (*v820)(v352, v824);
      v357 = swift_allocBox();
      *v358 = v354;
      v358[1] = v356;
      v215 = v815;
      (*v812)(v358, v819, v348);
      v359 = v813;
      *v813 = v357;
      v360 = v823;
      (*v345)(v359, v809, v823);
      sub_22C36C640(v359, 0, 1, v360);
      v347 = v816;
      (*v346)(v215, v816);
      v361 = sub_22C36E638();
      sub_22C36D0A8(v361, v362, v360);
      if (!v427)
      {
        v363 = *v806;
        (*v806)(v773, v359, v360);
        v363(v774, v773, v360);
        v364 = v363;
        v365 = v807;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v372 = *(v365 + 16);
          sub_22C5903C0();
          v365 = v373;
        }

        v229 = v266;
        v368 = *(v365 + 16);
        v367 = *(v365 + 24);
        v807 = v365;
        if (v368 >= v367 >> 1)
        {
          sub_22C5903C0();
          v807 = v374;
        }

        ++v343;
        *(v807 + 16) = v368 + 1;
        sub_22C37054C();
        v364(v370 + v369 + *(v371 + 72) * v368, v774, v823);
        v347 = v816;
        goto LABEL_44;
      }

      sub_22C36DD28(v359, &qword_27D9BB908, &qword_22C910960);
      ++v343;
      v229 = v266;
    }

    v393 = v807;
    v394 = *(v807 + 16);
    v395 = *(MEMORY[0x2318AFCE0](v392) + 16);

    if (v394 == v395)
    {
      v396 = v785;
      *v785 = v393;
      swift_storeEnumTagMultiPayload();
      sub_22C8F117C(v396, v786);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C386C30();
      sub_22C62F094();
      v397 = sub_22C383570(&v803);
      v399 = &v804;
    }

    else
    {

      sub_22C37443C(v790);
      sub_22C90405C();
      v417 = sub_22C9063CC();
      v418 = sub_22C90AADC();
      if (sub_22C369E90(v418))
      {
        v419 = sub_22C36D240();
        sub_22C36D944(v419);
        sub_22C36AD70(&dword_22C366000, v420, v421, "DefaultFallbackDialogGenerator.generateFallback: some disambiguation values cannot be represented");
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      sub_22C8F1C50();
      v422(v346, v767);
      v397 = sub_22C383570(&v803);
      v399 = &v804;
    }

    goto LABEL_67;
  }

  v266 = v816;
  if (v236 != *MEMORY[0x277D1CBB8])
  {
    if (v236 == *MEMORY[0x277D1CBD0])
    {
      v407 = sub_22C372000();
      v408(v407);
      sub_22C3759C4(&v787);
      v410 = *(v409 + 32);
      v411 = sub_22C37FBE8();
      v412 = v758;
      v413(v411);
      sub_22C37205C(&v784);
      sub_22C907C3C();
      sub_22C3788A4(v229);
      if (v427)
      {
        v414 = &qword_27D9BC1E8;
        v415 = &qword_22C9123B0;
        v416 = v229;
      }

      else
      {
        sub_22C908DCC();
        v447 = sub_22C375234();
        v448(v447);
        sub_22C8F1C9C();
        MEMORY[0x28223BE20](v449);
        sub_22C37F6B0();
        v450 = v752;
        sub_22C8F1CC4();
        sub_22C8F1CF4();
        sub_22C8F1C60();
        v451 = sub_22C90981C();
        sub_22C36D0A8(v450, 1, v451);
        if (!v452)
        {
          v824 = sub_22C9097EC();
          v512 = v511;
          sub_22C36BBA8(v451);
          (*(v513 + 8))(v450, v451);
          sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
          sub_22C38773C();
          v516 = v515 & ~v514;
          v517 = swift_allocObject();
          *(v517 + 16) = xmmword_22C90F870;
          v518 = (v517 + v516);
          v519 = v822;
          v520 = v215;
          v521 = *(v822 + 48);
          sub_22C370488();
          sub_22C38ACF4();
          *v518 = v523;
          v518[1] = v522;
          v524 = sub_22C90283C();
          sub_22C8F0480(v524, v525, (v518 + v521));

          v526 = *(v519 + 48);
          sub_22C8F1C3C();
          *v527 = 0x6574656D61726170;
          v527[1] = v528;
          sub_22C8F0480(v824, v512, (v527 + v529));

          v530 = sub_22C909F0C();
          sub_22C37443C(&v815);
          sub_22C90299C();
          swift_storeEnumTagMultiPayload();
          sub_22C8F1CA8(v518);
          swift_isUniquelyReferenced_nonNull_native();
          v826 = v530;
          sub_22C62F094();
          (*(v224 + 1))(v520, v758);
          goto LABEL_114;
        }

        v414 = &qword_27D9BC0C0;
        v415 = &unk_22C911FA0;
        v416 = v450;
      }

      sub_22C36DD28(v416, v414, v415);
      sub_22C3868F0(&v783);
      v453 = sub_22C9063CC();
      v454 = sub_22C90AADC();
      if (sub_22C369E90(v454))
      {
        v455 = sub_22C36D240();
        sub_22C36D944(v455);
        sub_22C36AD70(&dword_22C366000, v456, v457, "DefaultFallbackDialogGenerator.generateFallback: no parameter name");
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v458 = sub_22C8F1C20();
      v459(v458);
      sub_22C8F196C();
      v460 = sub_22C36FBE4();
      sub_22C8F1CDC(v460);
      v461 = sub_22C3858A4();
      v462(v461, v810);
      (*(v224 + 1))(v215, v412);
      return sub_22C36BA00();
    }

    if (v236 == *MEMORY[0x277D1CBD8])
    {
      v438 = sub_22C372000();
      v439(v438);
      sub_22C37443C(&v781);
      v441 = *(v440 + 32);
      v442 = sub_22C37FBE8();
      v443 = v754;
      v444(v442);
      sub_22C37205C(&v779);
      sub_22C907C3C();
      sub_22C3788A4(v229);
      if (v427)
      {
        v445 = &qword_27D9BC1E8;
        v446 = &qword_22C9123B0;
      }

      else
      {
        sub_22C908DCC();
        v494 = sub_22C375234();
        v495(v494);
        sub_22C8F1C9C();
        MEMORY[0x28223BE20](v496);
        sub_22C37F6B0();
        sub_22C37205C(&v775);
        sub_22C8F1CC4();
        sub_22C8F1CF4();
        sub_22C8F1C60();
        v497 = sub_22C90981C();
        v498 = sub_22C36E638();
        sub_22C36D0A8(v498, v499, v497);
        if (!v500)
        {
          v824 = sub_22C9097EC();
          sub_22C36BBA8(v497);
          v547 = *(v546 + 8);
          v548 = sub_22C36FBFC();
          v549(v548);
          sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
          sub_22C38773C();
          v550 = sub_22C8F1D2C();
          *(v550 + 16) = xmmword_22C90FB40;
          v551 = (v550 + v229);
          v552 = v822;
          v553 = *(v822 + 48);
          sub_22C38ACF4();
          *v551 = 0x6574656D61726170;
          v551[1] = v554;
          v555 = sub_22C902A0C();
          sub_22C8F0480(v555, v556, (v551 + v553));

          v557 = *(v552 + 48);
          sub_22C8F1C3C();
          sub_22C386EDC(v558);

          v559 = (v551 + 2 * v266);
          v560 = *(v552 + 48);
          sub_22C379C18();
          *v559 = 0x6574656D61726170;
          v559[1] = v561 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
          *(v559 + v560) = sub_22C902A3C();
          swift_storeEnumTagMultiPayload();
          sub_22C909F0C();
          (*(v753 + 8))(v215, v754);
          goto LABEL_114;
        }

        v445 = &qword_27D9BC0C0;
        v446 = &unk_22C911FA0;
      }

      sub_22C36DD28(v229, v445, v446);
      sub_22C3868F0(&v778);
      v501 = sub_22C9063CC();
      v502 = sub_22C90AADC();
      if (sub_22C369E90(v502))
      {
        v503 = sub_22C36D240();
        sub_22C36D944(v503);
        sub_22C36AD70(&dword_22C366000, v504, v505, "DefaultFallbackDialogGenerator.generateFallback: no parameter name");
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v506 = sub_22C8F1C20();
      v507(v506);
      sub_22C8F196C();
      v508 = sub_22C36FBE4();
      sub_22C8F1CDC(v508);
      v509 = sub_22C3858A4();
      v510(v509, v810);
      (*(v233 + 8))(v215, v443);
      return sub_22C36BA00();
    }

    if (v236 == *MEMORY[0x277D1CBC0])
    {
      v486 = sub_22C372000();
      v487(v486);
      sub_22C37443C(v776);
      v489 = *(v488 + 32);
      v490 = sub_22C37FBE8();
      v271 = v750;
      v491(v490);
      sub_22C37205C(&v774);
      sub_22C907C3C();
      sub_22C3788A4(v229);
      if (v427)
      {
        v492 = &qword_27D9BC1E8;
        v493 = &qword_22C9123B0;
LABEL_113:
        sub_22C36DD28(v229, v492, v493);
        v545 = &v773;
LABEL_123:
        sub_22C3868F0(v545);
        v578 = sub_22C9063CC();
        v579 = sub_22C90AADC();
        if (sub_22C369E90(v579))
        {
          v580 = sub_22C36D240();
          sub_22C36D944(v580);
          sub_22C36AD70(&dword_22C366000, v581, v582, "DefaultFallbackDialogGenerator.generateFallback: no parameter name");
          sub_22C369B50();
          MEMORY[0x2318B9880]();
        }

        v583 = sub_22C8F1C20();
        v584(v583);
        sub_22C8F196C();
        v585 = sub_22C36FBE4();
        sub_22C8F1CDC(v585);
        v586 = sub_22C3858A4();
        v587(v586, v810);
        (*(v233 + 8))(v215, v271);
        return sub_22C36BA00();
      }

LABEL_110:
      sub_22C908DCC();
      v539 = sub_22C375234();
      v540(v539);
      sub_22C8F1C9C();
      MEMORY[0x28223BE20](v541);
      sub_22C37F6B0();
      sub_22C37205C(&v766);
      sub_22C8F1CC4();
      sub_22C8F1CF4();
      sub_22C8F1C60();
      v542 = sub_22C90981C();
      v543 = sub_22C36E638();
      sub_22C36D0A8(v543, v544, v542);
      if (!v427)
      {
        sub_22C9097EC();
        sub_22C36BBA8(v542);
        (*(v588 + 8))();
        sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
        v589 = *(v821 + 72);
        v590 = *(v821 + 80);
        v811 = v266;
        v591 = (v590 + 32) & ~v590;
        v592 = swift_allocObject();
        *(v592 + 16) = xmmword_22C90FB40;
        v593 = (v592 + v591);
        v594 = v215;
        v595 = v822;
        v596 = *(v822 + 48);
        sub_22C382E80();
        *v593 = v598;
        v593[1] = v597;
        v599 = v598;
        v600 = sub_22C3720DC();
        sub_22C8F0480(v600, v601, v602);

        v603 = (v593 + v589);
        v604 = v233;
        v605 = *(v595 + 48);
        sub_22C38ACF4();
        *v603 = v599;
        v603[1] = v606;
        v607 = sub_22C90283C();
        sub_22C8F0480(v607, v608, (v593 + v589 + v605));

        v609 = (v593 + 2 * v589);
        v610 = *(v595 + 48);
        sub_22C379C18();
        sub_22C370488();
        *v609 = v612;
        v609[1] = v611;
        sub_22C90288C();
        swift_storeEnumTagMultiPayload();
        sub_22C909F0C();
        (*(v604 + 8))(v594, v750);
        goto LABEL_114;
      }

      v492 = &qword_27D9BC0C0;
      v493 = &unk_22C911FA0;
      goto LABEL_113;
    }

    if (v236 == *MEMORY[0x277D1CBE0])
    {
      v531 = sub_22C372000();
      v532(v531);
      sub_22C37443C(&v771);
      v534 = *(v533 + 32);
      v535 = sub_22C37FBE8();
      v271 = v747;
      v536(v535);
      sub_22C37205C(&v765);
      sub_22C907C3C();
      sub_22C3788A4(v229);
      if (v427)
      {
        v537 = &qword_27D9BC1E8;
        v538 = &qword_22C9123B0;
      }

      else
      {
        sub_22C908DCC();
        v572 = sub_22C375234();
        v573(v572);
        sub_22C8F1C9C();
        MEMORY[0x28223BE20](v574);
        sub_22C37F6B0();
        sub_22C37205C(v760);
        sub_22C8F1CC4();
        sub_22C8F1CF4();
        sub_22C8F1C60();
        v343 = sub_22C90981C();
        v575 = sub_22C36E638();
        sub_22C36D0A8(v575, v576, v343);
        if (!v577)
        {
LABEL_129:
          v824 = sub_22C9097EC();
          sub_22C36BBA8(v343);
          v631 = *(v630 + 8);
          v632 = sub_22C36FBFC();
          v633(v632);
          sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
          sub_22C38773C();
          v634 = sub_22C8F1D2C();
          *(v634 + 16) = xmmword_22C90FB40;
          v635 = (v634 + v229);
          v636 = v822;
          v637 = *(v822 + 48);
          sub_22C38ACF4();
          *v635 = 0x6574656D61726170;
          v635[1] = v638;
          v639 = sub_22C90283C();
          sub_22C8F0480(v639, v640, (v635 + v637));

          v641 = *(v636 + 48);
          sub_22C8F1C3C();
          sub_22C386EDC(v642);

          v643 = (v635 + 2 * v266);
          v644 = *(v636 + 48);
          sub_22C379C18();
          *v643 = 0x6574656D61726170;
          v643[1] = v645 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          sub_22C902BAC();
          swift_storeEnumTagMultiPayload();
          sub_22C909F0C();
          (*(v746 + 8))(v215, v747);
          goto LABEL_114;
        }

        v537 = &qword_27D9BC0C0;
        v538 = &unk_22C911FA0;
      }

      sub_22C36DD28(v229, v537, v538);
      v545 = &v764;
      goto LABEL_123;
    }

    if (v236 == *MEMORY[0x277D1CBA0])
    {
      v564 = sub_22C372000();
      v565(v564);
      sub_22C3722F4(v769);
      v566(v743, v224, v745);
      sub_22C909F0C();
      sub_22C8EFD58();
      if (v567)
      {
        sub_22C3759C4(&v815);
        sub_22C8F0480(v568, v569, v570);

        sub_22C381464();
        sub_22C8F117C(v571, v224);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C8F1D20();
        sub_22C62F094();
      }

      else
      {
        sub_22C381464();
        v224 = v785;
      }

      v655 = v742;
      v656 = v741;
      sub_22C37205C(&v761);
      sub_22C907C3C();
      sub_22C3788A4(v229);
      if (v427)
      {
        v657 = &qword_27D9BC1E8;
        v658 = &qword_22C9123B0;
        v659 = v229;
      }

      else
      {
        sub_22C908E3C();
        (*(v814 + 8))(v229, v266);
        sub_22C36D0A8(v655, 1, v824);
        if (!v660)
        {
          goto LABEL_143;
        }

        v657 = &qword_27D9BC908;
        v658 = &qword_22C915090;
        v659 = v655;
      }

      sub_22C36DD28(v659, v657, v658);
      sub_22C907C3C();
      sub_22C3788A4(v656);
      if (v427)
      {
        sub_22C36DD28(v656, &qword_27D9BC1E8, &qword_22C9123B0);
LABEL_144:
        v668 = static MobileGestalt.answerProductKey.getter();
        sub_22C8F0480(v668, v669, v224);

        v670 = sub_22C388EF4();
        sub_22C8F117C(v670, v671);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C8F1D20();
        sub_22C62F094();
        (*(v744 + 8))(v743, v745);
        goto LABEL_114;
      }

      sub_22C374490(&v827);
      sub_22C908DDC();
      (*(v814 + 8))(v656, v266);
LABEL_143:
      v661 = sub_22C90971C();
      v663 = v662;
      v664 = sub_22C383570(&v794);
      v665(v664, v824);
      sub_22C8F0480(v661, v663, v224);

      v666 = sub_22C388EF4();
      sub_22C8F117C(v666, v667);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C8F1D20();
      sub_22C381980();
      goto LABEL_144;
    }

    if (v236 == *MEMORY[0x277D1CBC8])
    {
      v613 = sub_22C372000();
      v614(v613);
      v615 = v736;
      v616 = v735;
      v617 = v224;
      v618 = v737;
      (*(v736 + 32))(v735, v617, v737);
      sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
      v619 = *(v821 + 72);
      v620 = (*(v821 + 80) + 32) & ~*(v821 + 80);
      v621 = swift_allocObject();
      *(v621 + 16) = xmmword_22C90F870;
      v622 = (v621 + v620);
      v623 = v822;
      v624 = *(v822 + 48);
      sub_22C382E80();
      *v622 = 0x6574656D61726170;
      v622[1] = v625;
      sub_22C8F0480(0x726577736E41, 0xE600000000000000, (v622 + v626));
      v627 = (v622 + v619);
      v628 = *(v623 + 48);
      sub_22C379C18();
      *v627 = 0x6574656D61726170;
      v627[1] = v629 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
      *(v627 + v628) = sub_22C9028EC();
      swift_storeEnumTagMultiPayload();
      sub_22C909F0C();
      (*(v615 + 8))(v616, v618);
      goto LABEL_114;
    }

    if (v236 != *MEMORY[0x277D1CBE8])
    {
LABEL_146:
      sub_22C37205C(v755);
      sub_22C90405C();
      v672 = v729;
      (v233)(v729, v805, v810);
      v673 = v229;
      v674 = sub_22C9063CC();
      v675 = sub_22C90AADC();
      if (sub_22C369E90(v675))
      {
        v676 = swift_slowAlloc();
        v677 = swift_slowAlloc();
        v678 = v817;
        v825 = v235;
        v679 = v677;
        v826 = v677;
        *v676 = 136315138;
        LODWORD(v824) = v673;
        v680 = v810;
        (v233)(v725[1], v672, v810);
        v681 = sub_22C90A1AC();
        v682 = v672;
        v683 = v681;
        v685 = v684;
        v686 = *(v678 + 8);
        v686(v682, v680);
        v687 = sub_22C36F9F4(v683, v685, &v826);

        *(v676 + 4) = v687;
        _os_log_impl(&dword_22C366000, v674, v824, "ToolResult.getOutputKeyValues: no fallback for unknown outcome %s", v676, 0xCu);
        sub_22C36FF94(v679);
        v235 = v825;
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        sub_22C8F1C50();
        v689 = v734;
      }

      else
      {

        v686 = *(v817 + 8);
        v686(v672, v810);
        sub_22C8F1C50();
        v689 = v229;
      }

      v688(v689, v767);
      sub_22C8F196C();
      v690 = sub_22C36FBE4();
      sub_22C8F1CDC(v690);
      v691 = v810;
      v686(v805, v810);
      v686(v235, v691);
      return sub_22C36BA00();
    }

    v646 = sub_22C372000();
    v647(v646);
    sub_22C3722F4(&v758);
    v648(v738, v224, v740);
    v649 = sub_22C909F0C();
    sub_22C8F02F8();
    if (v650)
    {
      sub_22C3759C4(&v815);
      sub_22C8F0480(v651, v652, v653);

      sub_22C381464();
      sub_22C8F117C(v654, v224);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C8F1D20();
      sub_22C381980();
      v808 = v826;
    }

    else
    {
      v808 = v649;
      sub_22C381464();
      v224 = v785;
    }

    v692 = v733;
    v693 = v732;
    v694 = v730;
    v695 = v731;
    sub_22C90200C();
    v696 = v693[11];
    v697 = sub_22C3720DC();
    if (v698(v697) == *MEMORY[0x277D1C3F0])
    {
      v699 = v693[12];
      v700 = sub_22C3720DC();
      v701(v700);
      sub_22C374490(&v749);
      v703 = v726;
      v692 = v728;
      (*(v702 + 32))(v726);
      v825 = "<REDACTION FAILED: ";
      v704 = sub_22C901FCC();
      sub_22C8F0480(v704, v705, v224);

      v706 = sub_22C388EF4();
      sub_22C8F117C(v706, v707);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C386C30();
      sub_22C62F094();
      v808 = v826;
      (*(v695 + 8))(v703, v692);
    }

    else
    {
      v708 = v693[1];
      v703 = (v693 + 1);
      v709 = sub_22C3720DC();
      v710(v709);
    }

    sub_22C907C3C();
    sub_22C3788A4(v694);
    if (v427)
    {
      v711 = &qword_27D9BC1E8;
      v712 = &qword_22C9123B0;
      v713 = v694;
    }

    else
    {
      sub_22C37205C(v748);
      sub_22C908E3C();
      (*(v814 + 8))(v694, v266);
      v714 = sub_22C36E638();
      sub_22C36D0A8(v714, v715, v824);
      if (!v716)
      {
        v717 = v766;
        goto LABEL_163;
      }

      v711 = &qword_27D9BC908;
      v712 = &qword_22C915090;
      v713 = v692;
    }

    sub_22C36DD28(v713, v711, v712);
    sub_22C37443C(v751);
    sub_22C907C3C();
    sub_22C3788A4(v703);
    if (v427)
    {
      sub_22C36DD28(v703, &qword_27D9BC1E8, &qword_22C9123B0);
      v397 = sub_22C383570(&v758);
      v399 = v759;
LABEL_67:
      v398(v397, *(v399 - 32));
LABEL_114:
      v562 = v805;
      sub_22C8F09D8();
      sub_22C386130();
      (*(v817 + 8))(v562, v810);
      return sub_22C36BA00();
    }

    sub_22C908DDC();
    (*(v814 + 8))(v703, v266);
    v717 = v766;
LABEL_163:
    sub_22C90971C();
    sub_22C386130();
    (*(v717 + 8))(v718, v824);
    v719 = sub_22C36BA00();
    sub_22C8F0480(v719, v720, v721);

    v722 = sub_22C388EF4();
    sub_22C8F117C(v722, v723);
    v724 = v808;
    swift_isUniquelyReferenced_nonNull_native();
    v826 = v724;
    sub_22C381980();
    v397 = sub_22C383570(&v758);
    v399 = v759;
    goto LABEL_67;
  }

  v381 = v810;
  (*(v817 + 96))(v224, v810);
  v382 = v762;
  v383 = *(v762 + 32);
  v384 = v765;
  v385 = sub_22C36FBFC();
  v386 = v763;
  v387(v385);
  v388 = v761;
  sub_22C907C3C();
  sub_22C3788A4(v388);
  if (v427)
  {
    v389 = &qword_27D9BC1E8;
    v390 = &qword_22C9123B0;
    v391 = v388;
  }

  else
  {
    sub_22C908DCC();
    (*(v814 + 8))(v388, v266);
    sub_22C8F1C9C();
    MEMORY[0x28223BE20](v423);
    v725[-2] = v384;
    sub_22C3759C4(&v785);
    sub_22C8F1CC4();
    sub_22C8F1CF4();
    sub_22C8F1C60();
    v424 = sub_22C90981C();
    v425 = sub_22C36EEF8();
    sub_22C36D0A8(v425, v426, v424);
    if (!v427)
    {
      v463 = sub_22C9097EC();
      v823 = v464;
      v824 = v463;
      sub_22C36BBA8(v424);
      v466 = *(v465 + 8);
      v467 = sub_22C388EF4();
      v468(v467);
      sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
      sub_22C38773C();
      v471 = v470 & ~v469;
      v472 = swift_allocObject();
      *(v472 + 16) = xmmword_22C90F870;
      v473 = (v472 + v471);
      v474 = v384;
      v475 = v822;
      v476 = v386;
      v477 = *(v822 + 48);
      sub_22C370488();
      sub_22C38ACF4();
      *v473 = v479;
      v473[1] = v478;
      v480 = sub_22C90283C();
      sub_22C8F0480(v480, v481, (v473 + v477));

      v482 = *(v475 + 48);
      sub_22C8F1C3C();
      *v483 = 0x6574656D61726170;
      v483[1] = v484;
      sub_22C8F0480(v824, v823, (v483 + v485));

      sub_22C909F0C();
      (*(v382 + 8))(v474, v476);
      goto LABEL_114;
    }

    v389 = &qword_27D9BC0C0;
    v390 = &unk_22C911FA0;
    v391 = v224;
  }

  sub_22C36DD28(v391, v389, v390);
  sub_22C3868F0(v789);
  v428 = sub_22C9063CC();
  v429 = sub_22C90AADC();
  if (sub_22C369E90(v429))
  {
    v430 = sub_22C36D240();
    sub_22C36D944(v430);
    sub_22C36AD70(&dword_22C366000, v431, v432, "DefaultFallbackDialogGenerator.generateFallback: no parameter name");
    v384 = v765;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v433 = sub_22C8F1C20();
  v434(v433);
  sub_22C8F196C();
  v435 = sub_22C36FBE4();
  sub_22C8F1CDC(v435);
  v436 = sub_22C3858A4();
  v437(v436, v381);
  (*(v382 + 8))(v384, v386);
  return sub_22C36BA00();
}

uint64_t sub_22C8EF95C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for DialogValue(0);
  v9 = sub_22C36985C(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v12);
  v14 = (&v35 - v13);
  sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
  v15 = (sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390) - 8);
  v16 = *(*v15 + 72);
  v17 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22C90F800;
  v19 = (v18 + v17);
  v20 = v15[14];
  *v19 = 0x656D6F6374756FLL;
  v19[1] = 0xE700000000000000;
  sub_22C8F0480(a1, a2, (v18 + v17 + v20));
  v21 = sub_22C909F0C();
  v22 = sub_22C90931C();
  v23 = swift_allocBox();
  *v24 = a3;
  v25 = *MEMORY[0x277D72988];
  sub_22C36BBA8(v22);
  (*(v26 + 104))();
  *v14 = v23;
  v27 = *MEMORY[0x277D72A58];
  v28 = sub_22C9093BC();
  sub_22C36985C(v28);
  (*(v29 + 104))(v14, v27);
  swift_storeEnumTagMultiPayload();
  v30 = sub_22C36BC58();
  sub_22C8F117C(v30, v31);
  swift_isUniquelyReferenced_nonNull_native();
  v36 = v21;
  sub_22C62F094();
  v32 = v36;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v32;
  sub_22C8F15BC(a4, sub_22C8F11E0, 0, isUniquelyReferenced_nonNull_native, &v36);
  return v36;
}

uint64_t static MobileGestalt.answerProductKey.getter()
{
  if (qword_27D9BA6D8 != -1)
  {
    swift_once();
  }

  result = 0x656E6F687069;
  switch(byte_27D9E3FC8)
  {
    case 1:
      result = 1684107369;
      break;
    case 2:
      result = 0x646F70656D6F68;
      break;
    case 3:
      result = 0x76745F656C707061;
      break;
    case 4:
      result = 6513005;
      break;
    case 5:
      result = 0x61775F656C707061;
      break;
    case 6:
      result = 0x79616C705F726163;
      break;
    case 7:
      result = 0x5F7974696C616572;
      break;
    case 8:
      result = 0x746375646F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C8EFD58()
{
  v1 = v0;
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v83 = v4;
  v84 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v85 = v7;
  sub_22C36BA0C();
  v8 = sub_22C9029BC();
  v9 = sub_22C369824(v8);
  v87 = v10;
  v88 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v86 = v13;
  sub_22C36BA0C();
  v14 = sub_22C90217C();
  v15 = sub_22C369824(v14);
  v89 = v16;
  v90 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v21 = v20 - v19;
  v22 = sub_22C9027BC();
  v23 = sub_22C369824(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v30 = v29 - v28;
  sub_22C8F1C60();
  v31 = sub_22C9026DC();
  v32 = sub_22C369824(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  v80 = v37;
  sub_22C369930();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  v81 = v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  v42 = &v80 - v41;
  v44 = (v34 + 2);
  v43 = v34[2];
  v82 = v1;
  v43(&v80 - v41, v1, v31);
  v45 = v34[11];
  v46 = sub_22C36BC58();
  v48 = v47(v46);
  if (v48 == *MEMORY[0x277D1CC20])
  {
    v49 = v34[12];
    v50 = sub_22C36BC58();
    v51(v50);
    (*(v25 + 32))(v30, v42, v22);
    v52 = sub_22C869504();
    (*(v25 + 8))(v30, v22);
  }

  else if (v48 == *MEMORY[0x277D1CC18])
  {
    v53 = v34[12];
    v54 = sub_22C36BC58();
    v55(v54);
    v56 = v89;
    v57 = v42;
    v58 = v90;
    (*(v89 + 4))(v21, v57, v90);
    v52 = sub_22C869898();
    v56[1](v21, v58);
  }

  else if (v48 == *MEMORY[0x277D1CC10])
  {
    v59 = v34[12];
    v60 = sub_22C36BC58();
    v61(v60);
    v62 = v86;
    v63 = v87;
    v64 = v42;
    v65 = v88;
    (*(v87 + 32))(v86, v64, v88);
    v52 = sub_22C869B6C();
    (*(v63 + 8))(v62, v65);
  }

  else if (v48 == *MEMORY[0x277D1CC28])
  {
    return 0x726F707075736E75;
  }

  else
  {
    v67 = v85;
    sub_22C90405C();
    v68 = v81;
    v43(v81, v82, v31);
    v69 = sub_22C9063CC();
    v70 = sub_22C90AADC();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v89 = v71;
      v90 = swift_slowAlloc();
      v91 = v90;
      *v71 = 136315138;
      v43(v80, v68, v31);
      v72 = sub_22C90A1AC();
      v74 = v73;
      v75 = sub_22C8F1C6C();
      v44(v75);
      v76 = sub_22C36F9F4(v72, v74, &v91);

      v77 = v89;
      *(v89 + 1) = v76;
      _os_log_impl(&dword_22C366000, v69, v70, "Unknown actionRequirement when converting to string %s", v77, 0xCu);
      sub_22C36FF94(v90);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v83 + 8))(v85, v84);
    }

    else
    {

      v78 = sub_22C8F1C6C();
      v44(v78);
      (*(v83 + 8))(v67, v84);
    }

    v79 = sub_22C36BC58();
    v44(v79);
    return 0;
  }

  return v52;
}

unint64_t sub_22C8F02F8()
{
  v0 = sub_22C901FBC();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  sub_22C90200C();
  if ((*(v3 + 88))(v11, v0) == *MEMORY[0x277D1C3F0])
  {
    v12 = 0xD000000000000015;
    (*(v3 + 8))(v11, v0);
  }

  else
  {
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_22C90200C();
    sub_22C90B12C();
    v13 = *(v3 + 8);
    v13(v8, v0);
    v12 = v15[0];
    v13(v11, v0);
  }

  return v12;
}

uint64_t sub_22C8F0480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C90931C();
  v7 = swift_allocBox();
  *v8 = a1;
  v8[1] = a2;
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D729B8], v6);
  *a3 = v7;
  v9 = *MEMORY[0x277D72A58];
  v10 = sub_22C9093BC();
  (*(*(v10 - 8) + 104))(a3, v9, v10);
  type metadata accessor for DialogValue(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_22C8F0584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = sub_22C9086BC();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v40);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22C9063DC();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_22C9074CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v17 = &v33[-v16];
  sub_22C9086AC();
  if ((*(v13 + 88))(v17, v12) == *MEMORY[0x277D1E040])
  {
    (*(v13 + 96))(v17, v12);
    v18 = sub_22C9093BC();
    (*(*(v18 - 8) + 32))(a2, v17, v18);
    v19 = type metadata accessor for DialogValue(0);
    swift_storeEnumTagMultiPayload();
    return sub_22C36C640(a2, 0, 1, v19);
  }

  else
  {
    v37 = a2;
    sub_22C90405C();
    (*(v4 + 16))(v7, a1, v40);
    v21 = sub_22C9063CC();
    v22 = sub_22C90AADC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = v11;
      v24 = v4;
      v25 = v23;
      v36 = swift_slowAlloc();
      v41 = v36;
      *v25 = 136642819;
      v34 = v22;
      sub_22C9086AC();
      v26 = sub_22C90A1AC();
      v28 = v27;
      (*(v24 + 8))(v7, v40);
      v29 = sub_22C36F9F4(v26, v28, &v41);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22C366000, v21, v34, "Unsupported parameter value, not including in input key values\n%{sensitive}s", v25, 0xCu);
      v30 = v36;
      sub_22C36FF94(v36);
      MEMORY[0x2318B9880](v30, -1, -1);
      MEMORY[0x2318B9880](v25, -1, -1);

      (*(v38 + 8))(v35, v39);
    }

    else
    {

      (*(v4 + 8))(v7, v40);
      (*(v38 + 8))(v11, v39);
    }

    v31 = v37;
    v32 = type metadata accessor for DialogValue(0);
    sub_22C36C640(v31, 1, 1, v32);
    return (*(v13 + 8))(v17, v12);
  }
}

uint64_t sub_22C8F09D8()
{
  v1 = v0;
  v2 = sub_22C9026BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D1CBF0])
  {
    v8 = 0x73736563637573;
LABEL_8:
    (*(v3 + 8))(v6, v2);
    return v8;
  }

  if (v7 == *MEMORY[0x277D1CB98])
  {
    v8 = 0x5374657070696E73;
    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x277D1CBA8] || v7 == *MEMORY[0x277D1CBB0])
  {
    v8 = 0xD000000000000012;
    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x277D1CBB8])
  {
    v8 = 0xD000000000000013;
    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x277D1CBD0])
  {
    v8 = 0xD000000000000015;
    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x277D1CBD8])
  {
    v8 = 0xD000000000000017;
    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x277D1CBC0])
  {
    v8 = 0xD000000000000013;
    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x277D1CBE0])
  {
    v8 = 0xD00000000000001BLL;
    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x277D1CBA0])
  {
    v8 = 0xD000000000000011;
    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x277D1CBC8])
  {
    v8 = 0xD000000000000013;
    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x277D1CBE8])
  {
    v8 = 0x6572756C696166;
    goto LABEL_8;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C8F0D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_22C9097DC();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    sub_22C36EBF0();
    v9 = sub_22C90B4FC();
  }

  return v9 & 1;
}

uint64_t sub_22C8F0DBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = sub_22C90234C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C4E719C(a1, v7, &qword_27D9BAB60, &unk_22C90D400);
  if (sub_22C370B74(v7, 1, v8) == 1)
  {
    result = sub_22C36DD28(v7, &qword_27D9BAB60, &unk_22C90D400);
    v14 = MEMORY[0x277D84F98];
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = sub_22C9022FC();
    v16 = MEMORY[0x277D837D0];
    v27 = MEMORY[0x277D837D0];
    *&v26 = v15;
    *(&v26 + 1) = v17;
    sub_22C456E34(&v26, v25);
    v18 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v28 = v18;
    sub_22C62F20C();
    v14 = v28;
    v19 = sub_22C90231C();
    if (v20)
    {
      v27 = v16;
      *&v26 = v19;
      *(&v26 + 1) = v20;
      sub_22C456E34(&v26, v25);
      swift_isUniquelyReferenced_nonNull_native();
      v28 = v14;
      sub_22C62F20C();
      v14 = v28;
    }

    v21 = sub_22C90228C();
    if (v22)
    {
      v27 = v16;
      *&v26 = v21;
      *(&v26 + 1) = v22;
      sub_22C456E34(&v26, v25);
      swift_isUniquelyReferenced_nonNull_native();
      v28 = v14;
      sub_22C62F20C();
      v14 = v28;
    }

    v23 = sub_22C9022AC();
    if (v24)
    {
      v27 = v16;
      *&v26 = v23;
      *(&v26 + 1) = v24;
      sub_22C456E34(&v26, v25);
      swift_isUniquelyReferenced_nonNull_native();
      v28 = v14;
      sub_22C62F20C();
      v14 = v28;
    }

    result = (*(v9 + 8))(v12, v8);
  }

  *a2 = v14;
  return result;
}

uint64_t sub_22C8F10E0(uint64_t a1)
{
  v2 = sub_22C8F1BCC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8F111C(uint64_t a1)
{
  v2 = sub_22C8F1BCC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C8F117C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8F11E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9C0E30, &qword_22C92B4C8) + 48);
  v5 = *(sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390) + 48);
  v6 = *a1;
  v7 = a1[1];
  result = sub_22C88FF90();
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_22C8F1250(uint64_t a1, char a2, uint64_t *a3)
{
  v47 = a3;
  v5 = type metadata accessor for DialogValue(0);
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v46 = (&v39 - v15);
  v44 = *(a1 + 16);
  if (!v44)
  {
  }

  v16 = 0;
  v17 = *(v13 + 48);
  v42 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v43 = v17;
  v41 = v14;
  while (v16 < *(a1 + 16))
  {
    v18 = v46;
    sub_22C4E719C(v42 + *(v14 + 72) * v16, v46, &qword_27D9BAAF0, &qword_22C90D390);
    v19 = *v18;
    v20 = v18[1];
    v21 = v10;
    sub_22C8F117C(v18 + v43, v10);
    v22 = *v47;
    v24 = sub_22C36E2BC(v19, v20);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_18;
    }

    v27 = v23;
    if (*(v22 + 24) >= v25 + v26)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF3A0, &qword_22C922660);
        sub_22C90B16C();
      }
    }

    else
    {
      v28 = v47;
      sub_22C88BEC4();
      v29 = *v28;
      v30 = sub_22C36E2BC(v19, v20);
      if ((v27 & 1) != (v31 & 1))
      {
        goto LABEL_20;
      }

      v24 = v30;
    }

    v32 = *v47;
    if (v27)
    {
      v10 = v21;
      v33 = v40;
      sub_22C8EB020(v21, v40);
      sub_22C891D88(v21);

      sub_22C8F1908(v33, v32[7] + *(v45 + 72) * v24);
    }

    else
    {
      v32[(v24 >> 6) + 8] |= 1 << v24;
      v34 = (v32[6] + 16 * v24);
      *v34 = v19;
      v34[1] = v20;
      v10 = v21;
      sub_22C8F117C(v21, v32[7] + *(v45 + 72) * v24);
      v35 = v32[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_19;
      }

      v32[2] = v37;
    }

    ++v16;
    a2 = 1;
    v14 = v41;
    if (v44 == v16)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C8F15BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for DialogValue(0);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v41 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v40 - v14;
  v16 = sub_22C3A5908(&qword_27D9C1548, &unk_22C92DB30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (v40 - v18);
  sub_22C8920A0(v46, a1, a2, a3);
  v42 = v46[0];
  v43 = v46[1];
  v44 = v46[2];
  v45 = v47;
  v40[1] = a1;

  v40[0] = a3;

  while (1)
  {
    sub_22C891A14();
    v20 = sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390);
    if (sub_22C370B74(v19, 1, v20) == 1)
    {
      sub_22C878D80();
    }

    v21 = *(v20 + 48);
    v23 = *v19;
    v22 = v19[1];
    sub_22C8F117C(v19 + v21, v15);
    v24 = *a5;
    v26 = sub_22C36E2BC(v23, v22);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v29 = v25;
    if (v24[3] >= v27 + v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF3A0, &qword_22C922660);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88BEC4();
      v30 = *a5;
      v31 = sub_22C36E2BC(v23, v22);
      if ((v29 & 1) != (v32 & 1))
      {
        goto LABEL_16;
      }

      v26 = v31;
    }

    v33 = *a5;
    if (v29)
    {
      v34 = v41;
      sub_22C8EB020(v15, v41);
      sub_22C891D88(v15);

      sub_22C8F1908(v34, v33[7] + *(v48 + 72) * v26);
      a4 = 1;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v35 = (v33[6] + 16 * v26);
      *v35 = v23;
      v35[1] = v22;
      sub_22C8F117C(v15, v33[7] + *(v48 + 72) * v26);
      v36 = v33[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_15;
      }

      v33[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C8F1908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C8F196C()
{
  result = qword_27D9C1550;
  if (!qword_27D9C1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1550);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolResultError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C8F1B78()
{
  result = qword_27D9C1558;
  if (!qword_27D9C1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1558);
  }

  return result;
}

unint64_t sub_22C8F1BCC()
{
  result = qword_27D9C1560;
  if (!qword_27D9C1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1560);
  }

  return result;
}

uint64_t sub_22C8F1C20()
{
  v2 = *(*(v1 - 584) + 8);
  result = v0;
  v4 = *(v1 - 592);
  return result;
}

uint64_t sub_22C8F1CA8(uint64_t a1)
{
  v3 = *(v1 - 424);

  return sub_22C8F117C(a1, v3);
}

void sub_22C8F1CC4()
{
  v2 = *(v0 - 208);

  sub_22C6B0844();
}

uint64_t sub_22C8F1CDC(uint64_t a1)
{
  *(v1 - 208) = a1;

  return swift_willThrow();
}

uint64_t sub_22C8F1CF4()
{
}

uint64_t sub_22C8F1D2C()
{

  return swift_allocObject();
}

uint64_t sub_22C8F1D4C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(a2, a3);
    v7 = sub_22C90B1EC();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

uint64_t sub_22C8F1DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C902FBC();
  v96 = sub_22C369824(v5);
  v97 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v96);
  v77 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22C3A5908(&qword_27D9C1568, &qword_22C92DC50);
  v10 = *(*(v88 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v88);
  v87 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v86 = &v77 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v85 = &v77 - v16;
  if (!MEMORY[0x2318AFB10](v15))
  {
    v18 = sub_22C909F0C();
    a3 = sub_22C8F31CC(v18);

    return a3;
  }

  v17 = sub_22C8F2C44();
  if (v3)
  {
    return a3;
  }

  v19 = v17;
  v83 = 0;
  v20 = sub_22C909F0C();
  v82 = *(v19 + 16);
  if (!v82)
  {
LABEL_34:

    a3 = sub_22C8F31CC(v20);

    return a3;
  }

  v21 = 0;
  v81 = v19 + 32;
  v89 = v97 + 8;
  v90 = v97 + 16;
  v84 = v97 + 32;
  v80 = v19;
  v22 = v86;
  while (1)
  {
    if (v21 >= *(v19 + 16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v23 = (v81 + 40 * v21);
    v24 = v23[1];
    v98 = *v23;
    v25 = v23[4];
    v26 = *(v25 + 16);
    if (v26 >= 2)
    {
      break;
    }

    v49 = v20;
    if (v26)
    {
      v50 = v97;
      v51 = v25 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v52 = v77;
      v53 = v96;
      (*(v97 + 16))(v77, v51, v96);

      v54 = sub_22C902F9C();
      v56 = v55;
      (*(v50 + 8))(v52, v53);
    }

    else
    {

      v54 = 0;
      v56 = 0;
    }

    sub_22C36A83C();
    v58 = swift_allocObject();
    *(v58 + 16) = v54;
    *(v58 + 24) = v56;
    swift_isUniquelyReferenced_nonNull_native();
    v102 = v49;
    v59 = sub_22C36E2BC(v98, v24);
    if (__OFADD__(*(v49 + 16), (v60 & 1) == 0))
    {
      goto LABEL_39;
    }

    v61 = v59;
    v62 = v60;
    sub_22C3A5908(&qword_27D9C1570, qword_22C92DC58);
    if (sub_22C90B15C())
    {
      v63 = sub_22C36E2BC(v98, v24);
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_42;
      }

      v61 = v63;
    }

    if (v62)
    {

      v20 = v102;
      v65 = v102[7] + 16 * v61;
      v66 = *(v65 + 8);
      sub_22C36B9E8(v65);
    }

    else
    {
      v20 = v102;
      v102[(v61 >> 6) + 8] |= 1 << v61;
      v67 = (v20[6] + 16 * v61);
      *v67 = v98;
      v67[1] = v24;
      sub_22C36B9E8((v20[7] + 16 * v61));
      v68 = v20[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_40;
      }

      v20[2] = v70;
    }

    v19 = v80;
LABEL_33:
    if (++v21 == v82)
    {
      goto LABEL_34;
    }
  }

  v78 = v20;
  v79 = v21;
  v104 = MEMORY[0x277D84F90];

  sub_22C3B6DD0(0, v26, 0);
  v27 = 0;
  v28 = v104;
  v29 = *(v25 + 16);
  v94 = v24;
  v95 = v29;
  v91 = v25 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
  v92 = v26;
  v93 = v25;
  do
  {
    if (v95 == v27)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v27 >= *(v25 + 16))
    {
      goto LABEL_37;
    }

    v30 = v88;
    v31 = *(v88 + 48);
    v100 = v28;
    v33 = v96;
    v32 = v97;
    v34 = v85;
    (*(v97 + 16))(&v85[v31], v91 + *(v97 + 72) * v27, v96);
    *v22 = v27;
    (*(v32 + 32))(&v22[*(v30 + 48)], &v34[v31], v33);
    v102 = v98;
    v103 = v24;

    MEMORY[0x2318B7850](91, 0xE100000000000000);
    v101 = v27;
    v35 = sub_22C90B47C();
    MEMORY[0x2318B7850](v35);

    MEMORY[0x2318B7850](93, 0xE100000000000000);
    v36 = v102;
    v99 = v103;
    v37 = v87;
    sub_22C8F4280(v22, v87);
    v38 = *(v30 + 48);
    v39 = sub_22C902F9C();
    v41 = v40;
    sub_22C8F42F0(v22);
    v42 = *(v32 + 8);
    v28 = v100;
    v42(v37 + v38, v33);
    sub_22C36A83C();
    v43 = swift_allocObject();
    *(v43 + 16) = v39;
    *(v43 + 24) = v41;
    v104 = v28;
    v45 = *(v28 + 16);
    v44 = *(v28 + 24);
    if (v45 >= v44 >> 1)
    {
      v48 = sub_22C373290(v44);
      sub_22C3B6DD0(v48, v45 + 1, 1);
      v28 = v104;
    }

    *(v28 + 16) = v45 + 1;
    v46 = (v28 + 32 * v45);
    v47 = v99;
    v46[4] = v36;
    v46[5] = v47;
    v46[6] = sub_22C8F4358;
    v46[7] = v43;
    ++v27;
    v25 = v93;
    v24 = v94;
  }

  while (v92 != v27);

  if (*(v28 + 16))
  {
    sub_22C3A5908(&qword_27D9C0E40, &qword_22C92B4E0);
    v57 = sub_22C90B1EC();
  }

  else
  {
    v57 = MEMORY[0x277D84F98];
  }

  v19 = v80;
  v102 = v57;

  v72 = v83;
  sub_22C8F3710(v71, 1, &v102);
  if (!v72)
  {

    v73 = v102;
    v74 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v74;
    sub_22C8F3A04(v73, sub_22C8F421C, 0, isUniquelyReferenced_nonNull_native, &v102);
    v83 = 0;
    v20 = v102;
    v21 = v79;
    goto LABEL_33;
  }

LABEL_41:
  swift_unexpectedError();
  __break(1u);
LABEL_42:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C8F256C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22C90981C();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9086DC();
  v108 = a2;
  sub_22C888F24();
  v15 = v14;
  v16 = v2;

  if (v2)
  {
    return v3;
  }

  v17 = *(a1 + 16);
  v100 = v15;
  if (v17)
  {
    v104 = v13;
    v99 = 0;
    v109 = MEMORY[0x277D84F90];
    sub_22C3B7168(0, v17, 0);
    v18 = v109;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v21 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v102 = *(v19 + 56);
    v103 = v20;
    v101 = (v19 - 8);
    v105 = v19;
    v106 = v6;
    do
    {
      v22 = v104;
      (v103)(v104, v21, v6);
      v23 = sub_22C9097DC();
      v107 = v24;
      v25 = sub_22C9097EC();
      v27 = v26;
      (*v101)(v22, v6);
      v109 = v18;
      v29 = *(v18 + 16);
      v28 = *(v18 + 24);
      if (v29 >= v28 >> 1)
      {
        v32 = sub_22C373290(v28);
        sub_22C3B7168(v32, v29 + 1, 1);
        v18 = v109;
      }

      *(v18 + 16) = v29 + 1;
      v30 = (v18 + 32 * v29);
      v6 = v106;
      v31 = v107;
      v30[4] = v23;
      v30[5] = v31;
      v30[6] = v25;
      v30[7] = v27;
      v21 += v102;
      --v17;
    }

    while (v17);
    v16 = v99;
    v15 = v100;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v33 = sub_22C8F1D4C(v18, &qword_27D9BC3C0, qword_22C912B08, sub_22C8F3FF0);
  v3 = v16;
  v34 = *(v15 + 16);
  if (v34)
  {
    v97 = v16;
    v109 = MEMORY[0x277D84F90];
    v99 = v33;
    sub_22C3B7168(0, v34, 0);
    v35 = v99;
    v107 = v109;
    result = sub_22C6339F8(v15);
    v39 = result;
    v40 = 0;
    v106 = v15 + 64;
    v98 = v15 + 72;
    v101 = v34;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v39 < 1 << *(v15 + 32))
      {
        v41 = v39 >> 6;
        if ((*(v106 + 8 * (v39 >> 6)) & (1 << v39)) == 0)
        {
          goto LABEL_52;
        }

        if (*(v15 + 36) != v37)
        {
          goto LABEL_53;
        }

        LODWORD(v102) = v38;
        v103 = v40;
        v42 = (*(v15 + 48) + 16 * v39);
        v43 = *v42;
        v44 = v42[1];
        v45 = (*(v15 + 56) + 16 * v39);
        v46 = v45[1];
        v104 = *v45;
        v105 = v37;
        v47 = *(v35 + 16);

        if (v47)
        {

          v48 = sub_22C36E2BC(v43, v44);
          v50 = v49;

          if (v50)
          {
            v51 = (*(v35 + 56) + 16 * v48);
            v43 = *v51;
            v52 = v51[1];

            v44 = v52;
          }
        }

        else
        {
        }

        v53 = v107;
        v54 = v105;
        v109 = v107;
        v56 = v107[2];
        v55 = v107[3];
        if (v56 >= v55 >> 1)
        {
          v68 = sub_22C373290(v55);
          result = sub_22C3B7168(v68, v56 + 1, 1);
          v54 = v105;
          v35 = v99;
          v53 = v109;
        }

        v53[2] = v56 + 1;
        v57 = &v53[4 * v56];
        v57[4] = v43;
        v57[5] = v44;
        v57[6] = v104;
        v57[7] = v46;
        v15 = v100;
        v58 = 1 << *(v100 + 32);
        if (v39 >= v58)
        {
          goto LABEL_54;
        }

        v59 = *(v106 + 8 * v41);
        if ((v59 & (1 << v39)) == 0)
        {
          goto LABEL_55;
        }

        v107 = v53;
        if (*(v100 + 36) != v54)
        {
          goto LABEL_56;
        }

        v60 = v59 & (-2 << (v39 & 0x3F));
        if (v60)
        {
          v58 = __clz(__rbit64(v60)) | v39 & 0x7FFFFFFFFFFFFFC0;
          v61 = v101;
          v62 = v103;
        }

        else
        {
          v63 = v41 << 6;
          v64 = v41 + 1;
          v65 = (v98 + 8 * v41);
          v61 = v101;
          v62 = v103;
          while (v64 < (v58 + 63) >> 6)
          {
            v67 = *v65++;
            v66 = v67;
            v63 += 64;
            ++v64;
            if (v67)
            {
              result = sub_22C3A5038(v39, v54, v102 & 1);
              v58 = __clz(__rbit64(v66)) + v63;
              goto LABEL_30;
            }
          }

          result = sub_22C3A5038(v39, v54, v102 & 1);
LABEL_30:
          v35 = v99;
        }

        v40 = v62 + 1;
        if (v40 == v61)
        {

          v3 = v97;
          v69 = v107;
          goto LABEL_36;
        }

        v38 = 0;
        v37 = *(v15 + 36);
        v39 = v58;
        if (v58 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v69 = MEMORY[0x277D84F90];
LABEL_36:
  v70 = sub_22C8F1D4C(v69, &qword_27D9BC3C0, qword_22C912B08, sub_22C8F3CE8);
  if (v3)
  {
    return v3;
  }

  v71 = v70;
  v99 = 0;
  sub_22C3A5908(&qword_27D9C0E40, &qword_22C92B4E0);
  result = sub_22C90B1CC();
  v72 = 0;
  v73 = v71 + 64;
  v74 = 1 << *(v71 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & *(v71 + 64);
  v77 = (v74 + 63) >> 6;
  v107 = result;
  v105 = result + 64;
  if (v76)
  {
    do
    {
      v78 = __clz(__rbit64(v76));
      v106 = (v76 - 1) & v76;
LABEL_47:
      v81 = v78 | (v72 << 6);
      v82 = *(v71 + 56);
      v83 = v71;
      v84 = (*(v71 + 48) + 16 * v81);
      v86 = *v84;
      v85 = v84[1];
      v87 = (v82 + 16 * v81);
      v88 = *v87;
      v89 = v87[1];
      sub_22C36A83C();
      result = swift_allocObject();
      *(result + 16) = v88;
      *(result + 24) = v89;
      *(v105 + ((v81 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v81;
      v90 = v107;
      v91 = (v107[6] + 16 * v81);
      *v91 = v86;
      v91[1] = v85;
      v92 = (v90[7] + 16 * v81);
      *v92 = sub_22C8F4404;
      v92[1] = result;
      v93 = v90[2];
      v94 = __OFADD__(v93, 1);
      v95 = v93 + 1;
      if (v94)
      {
        goto LABEL_58;
      }

      v107[2] = v95;

      v71 = v83;
      v76 = v106;
    }

    while (v106);
  }

  v79 = v72;
  while (1)
  {
    v72 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v72 >= v77)
    {

      v3 = sub_22C8F31CC(v107);

      return v3;
    }

    v80 = *(v73 + 8 * v72);
    ++v79;
    if (v80)
    {
      v78 = __clz(__rbit64(v80));
      v106 = (v80 - 1) & v80;
      goto LABEL_47;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_22C8F2C44()
{
  if (!MEMORY[0x2318AFB10]())
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C902F2C();

  v0 = sub_22C902EBC();
  sub_22C8E8EAC();
  v2 = v1;

  return v2;
}

uint64_t sub_22C8F2CFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v50 = a3;
  v47 = a2;
  v4 = sub_22C9086BC();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C9063DC();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v54 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9093BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C9074CC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  sub_22C9086AC();
  if ((*(v17 + 88))(v21, v16) == *MEMORY[0x277D1E040])
  {
    (*(v17 + 96))(v21, v16);
    (*(v12 + 32))(v15, v21, v11);
    v22 = v51;
    sub_22C881B80(v15, v23, v24, v25, v26, v27, v28, v29, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56[0], v56[1], v56[2]);
    if (v22)
    {
      return (*(v12 + 8))(v15, v11);
    }

    v42 = v30;
    v43 = v31;
    result = (*(v12 + 8))(v15, v11);
    if (v43)
    {
      v44 = HIBYTE(v43) & 0xF;
      if ((v43 & 0x2000000000000000) == 0)
      {
        v44 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (v44)
      {
        v45 = v50;
        *v50 = v42;
        v45[1] = v43;
        return result;
      }
    }

    v46 = v50;
    *v50 = 0;
    v46[1] = 0;
  }

  else
  {
    sub_22C90405C();
    (*(v52 + 16))(v7, a1, v53);
    v33 = sub_22C9063CC();
    v34 = sub_22C90AADC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56[0] = v47;
      *v35 = 136642819;
      sub_22C9086AC();
      v36 = sub_22C90A1AC();
      v38 = v37;
      (*(v52 + 8))(v7, v53);
      v39 = sub_22C36F9F4(v36, v38, v56);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_22C366000, v33, v34, "Unhandled tool parameter value: %{sensitive}s", v35, 0xCu);
      v40 = v47;
      sub_22C36FF94(v47);
      MEMORY[0x2318B9880](v40, -1, -1);
      MEMORY[0x2318B9880](v35, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v7, v53);
    }

    (*(v48 + 8))(v54, v49);
    v41 = v50;
    *v50 = 0;
    v41[1] = 0;
    return (*(v17 + 8))(v21, v16);
  }

  return result;
}

uint64_t sub_22C8F31CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return sub_22C8F1D4C(v2, &qword_27D9C0E40, &qword_22C92B4E0, sub_22C8F3518);
  }

  v32 = MEMORY[0x277D84F90];
  sub_22C3B6DD0(0, v1, 0);
  v2 = v32;
  result = sub_22C6339F8(a1);
  v7 = result;
  v8 = 0;
  v9 = a1 + 64;
  v28 = v1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_24;
      }

      v29 = v6;
      v30 = v5;
      v11 = (*(a1 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v31 = *(*(a1 + 56) + 16 * v7);

      v14 = sub_22C90A2EC();
      v16 = v15;

      v18 = *(v32 + 16);
      v17 = *(v32 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_22C3B6DD0(v17 > 1, v18 + 1, 1);
      }

      *(v32 + 16) = v18 + 1;
      v19 = v32 + 32 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      *(v19 + 48) = v31;
      v20 = 1 << *(a1 + 32);
      if (v7 >= v20)
      {
        goto LABEL_25;
      }

      v9 = a1 + 64;
      v21 = *(a1 + 64 + 8 * v10);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v30)
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (a1 + 72 + 8 * v10);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_22C3A5038(v7, v30, v29 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_18;
          }
        }

        result = sub_22C3A5038(v7, v30, v29 & 1);
      }

LABEL_18:
      if (++v8 == v28)
      {
        return sub_22C8F1D4C(v2, &qword_27D9C0E40, &qword_22C92B4E0, sub_22C8F3518);
      }

      v6 = 0;
      v5 = *(a1 + 36);
      v7 = v20;
      if (v20 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22C8F3518(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 2)
  {
    if (v26 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v28 = *i;
    v8 = *a3;

    v10 = sub_22C36E2BC(v7, v6);
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_17;
    }

    v14 = v9;
    if (v8[3] >= v13)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9C1570, qword_22C92DC58);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88D830(v13);
      v15 = *a3;
      v16 = sub_22C36E2BC(v7, v6);
      if ((v14 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v10 = v16;
    }

    v18 = *a3;
    if (v14)
    {
      v29 = *(v18[7] + 16 * v10);

      v19 = v18[7] + 16 * v10;
      v20 = *(v19 + 8);
      *v19 = v29;
    }

    else
    {
      v18[(v10 >> 6) + 8] |= 1 << v10;
      v21 = (v18[6] + 16 * v10);
      *v21 = v7;
      v21[1] = v6;
      *(v18[7] + 16 * v10) = v28;
      v22 = v18[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v18[2] = v24;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C8F3710(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 2)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_22C90B54C();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v28 = *i;
    v8 = *a3;

    v10 = sub_22C36E2BC(v7, v6);
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_19;
    }

    v14 = v9;
    if (v8[3] < v13)
    {
      break;
    }

    if (a2)
    {
      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22C3A5908(&qword_27D9C1570, qword_22C92DC58);
      sub_22C90B16C();
      if (v14)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v19 = (v18[6] + 16 * v10);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 16 * v10) = v28;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_22C88D830(v13);
  v15 = *a3;
  v16 = sub_22C36E2BC(v7, v6);
  if ((v14 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v10 = v16;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000001BLL, 0x800000022C9305A0);
  sub_22C90B12C();
  MEMORY[0x2318B7850](39, 0xE100000000000000);
  sub_22C90B1AC();
  __break(1u);
}

uint64_t sub_22C8F3A04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v48 = a5;
  sub_22C8920A0(v47, a1, a2, a3);
  v6 = v47[1];
  v7 = v47[3];
  v8 = v47[4];
  v37 = v47[5];
  v38 = v47[0];
  v9 = (v47[2] + 64) >> 6;

  if (v8)
  {
    while (1)
    {
      v39 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = *(v38 + 56);
      v14 = (*(v38 + 48) + v12);
      v15 = v14[1];
      v45[0] = *v14;
      v45[1] = v15;
      v46 = *(v13 + v12);

      v37(&v42, v45);

      v16 = v42;
      v17 = v43;
      v41 = v44;
      v18 = *v48;
      v20 = sub_22C36E2BC(v42, v43);
      v21 = *(v18 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v24 = v19;
      if (*(v18 + 24) >= v23)
      {
        if ((v39 & 1) == 0)
        {
          sub_22C3A5908(&qword_27D9C1570, qword_22C92DC58);
          sub_22C90B16C();
        }
      }

      else
      {
        v25 = v48;
        sub_22C88D830(v23);
        v26 = *v25;
        v27 = sub_22C36E2BC(v16, v17);
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v20 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v48;
      if (v24)
      {
        v40 = *(v29[7] + 16 * v20);

        v30 = v29[7] + 16 * v20;
        v31 = *(v30 + 8);
        *v30 = v40;
      }

      else
      {
        v29[(v20 >> 6) + 8] |= 1 << v20;
        v32 = (v29[6] + 16 * v20);
        *v32 = v16;
        v32[1] = v17;
        *(v29[7] + 16 * v20) = v41;
        v33 = v29[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_23;
        }

        v29[2] = v35;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_22C36A674();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v39 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C8F3CE8(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v32 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v32 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      sub_22C90B54C();
      __break(1u);
      goto LABEL_20;
    }

    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_22C36E2BC(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88E938(v15);
      v17 = *a3;
      v18 = sub_22C36E2BC(v7, v6);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {
      break;
    }

    v20[(v12 >> 6) + 8] |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    v22 = (v20[7] + 16 * v12);
    *v22 = v9;
    v22[1] = v8;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_18;
    }

    v20[2] = v25;
    ++v4;
    a2 = 1;
  }

  v26 = (v20[7] + 16 * v12);
  v27 = *v26;
  v28 = v26[1];
  sub_22C8F4390();
  v29 = swift_allocError();
  *v30 = v27;
  v30[1] = v28;
  swift_willThrow();

  v31 = v29;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_20:
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000001BLL, 0x800000022C9305A0);
  sub_22C90B12C();
  MEMORY[0x2318B7850](39, 0xE100000000000000);
  sub_22C90B1AC();
  __break(1u);
}

uint64_t sub_22C8F3FF0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v32 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v32 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v34 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_22C36E2BC(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88E938(v15);
      v17 = *a3;
      v18 = sub_22C36E2BC(v7, v6);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {
      v21 = (v20[7] + 16 * v12);
      v23 = *v21;
      v22 = v21[1];

      v24 = (v20[7] + 16 * v12);
      v25 = v24[1];
      *v24 = v23;
      v24[1] = v22;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v26 = (v20[6] + 16 * v12);
      *v26 = v7;
      v26[1] = v6;
      v27 = (v20[7] + 16 * v12);
      *v27 = v8;
      v27[1] = v9;
      v28 = v20[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_18;
      }

      v20[2] = v30;
    }

    v4 = v34 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C8F41E0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_22C8F347C();
}

__n128 sub_22C8F421C@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = sub_22C88FCE4(&v6, *a1, a1[1], a1[2], a1[3]);
  result = v6;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = v5;
  a2[1] = result;
  return result;
}

uint64_t sub_22C8F4260(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_22C8F34E4();
}

uint64_t sub_22C8F4280(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C1568, &qword_22C92DC50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8F42F0(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9C1568, &qword_22C92DC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C8F4390()
{
  result = qword_27D9C1578;
  if (!qword_27D9C1578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1578);
  }

  return result;
}

void sub_22C8F4464()
{
  sub_22C90077C();
  if (v0 <= 0x3F)
  {
    sub_22C436620();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C8F44E8(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v16 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  while (v16 != v5)
  {
    v7 = *(sub_22C9093BC() - 8);
    a1(&v17, a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v3)
    {

      return;
    }

    v8 = v17;
    v9 = *(v17 + 16);
    v10 = *(v6 + 16);
    if (__OFADD__(v10, v9))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v10 + v9 > *(v6 + 24) >> 1)
    {
      sub_22C590270();
      v6 = v11;
    }

    if (*(v8 + 16))
    {
      if ((*(v6 + 24) >> 1) - *(v6 + 16) < v9)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v9)
      {
        v12 = *(v6 + 16);
        v13 = __OFADD__(v12, v9);
        v14 = v12 + v9;
        if (v13)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v14;
      }
    }

    else
    {

      if (v9)
      {
        goto LABEL_18;
      }
    }

    ++v5;
  }
}

uint64_t sub_22C8F46F4(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    v8 = sub_22C90941C();
    sub_22C3699B8(v8);
    a1(&v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * v6);
    if (v3)
    {
      break;
    }

    ++v6;
    sub_22C3CD230();
  }
}

void *sub_22C8F4848(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v23 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v23 == v5)
    {
      return v6;
    }

    v7 = type metadata accessor for DynamicEnumeration(0);
    sub_22C3699B8(v7);
    result = a1(&v24, a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v9 + 72) * v5);
    if (v3)
    {

      return v6;
    }

    v11 = v24;
    v12 = *(v24 + 16);
    v13 = *(v6 + 16);
    if (__OFADD__(v13, v12))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > *(v6 + 24) >> 1)
    {
      sub_22C592FD0();
      v6 = v14;
    }

    if (*(v11 + 16))
    {
      v15 = (*(v6 + 24) >> 1) - *(v6 + 16);
      result = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
      v16 = *(result - 1);
      if (v15 < v12)
      {
        goto LABEL_19;
      }

      v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v18 = *(v16 + 72);
      swift_arrayInitWithCopy();

      if (v12)
      {
        v19 = *(v6 + 16);
        v20 = __OFADD__(v19, v12);
        v21 = v19 + v12;
        if (v20)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v21;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_18;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_22C8F4B38(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v8 = 0;
  v28 = *(a3 + 16);
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v28 == v8)
    {
      return v9;
    }

    v10 = a4(0);
    sub_22C3699B8(v10);
    result = a1(&v29, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v12 + 72) * v8);
    if (v6)
    {

      return v9;
    }

    v14 = v29;
    v15 = *(v29 + 16);
    v16 = *(v9 + 16);
    if (__OFADD__(v16, v15))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v16 + v15 > *(v9 + 24) >> 1)
    {
      v9 = a5();
    }

    if (*(v14 + 16))
    {
      v17 = (*(v9 + 24) >> 1) - *(v9 + 16);
      result = a6(0);
      v18 = *(result - 1);
      if (v17 < v15)
      {
        goto LABEL_19;
      }

      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = *(v18 + 72);
      swift_arrayInitWithCopy();

      if (v15)
      {
        v21 = *(v9 + 16);
        v22 = __OFADD__(v21, v15);
        v23 = v21 + v15;
        if (v22)
        {
          goto LABEL_20;
        }

        *(v9 + 16) = v23;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_18;
      }
    }

    ++v8;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

char *sub_22C8F4D3C(char *a1)
{
  v273 = a1;
  v247 = sub_22C9001BC();
  v1 = sub_22C36985C(v247);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C3698A8();
  sub_22C3698F8(v4);
  v246 = sub_22C90021C();
  v5 = sub_22C369824(v246);
  v245 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C3698F8(v9);
  v10 = sub_22C9063DC();
  v11 = sub_22C369824(v10);
  v267[1] = v12;
  v268 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v269 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  sub_22C3698F8(v18);
  v19 = sub_22C9007EC();
  v20 = sub_22C369824(v19);
  v256 = v21;
  v257 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698A8();
  v254 = v24;
  v25 = *(*(sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300) - 8) + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v26);
  sub_22C36D5B4();
  v255 = v27;
  sub_22C36BA0C();
  v261 = sub_22C90014C();
  v28 = sub_22C369824(v261);
  v258 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  v260 = v33;
  sub_22C36BA0C();
  v34 = sub_22C90063C();
  v35 = sub_22C369824(v34);
  v262 = v36;
  v263 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  v259 = v40;
  sub_22C36BA0C();
  v250 = sub_22C90046C();
  v41 = sub_22C369824(v250);
  v249 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3698A8();
  v248 = v45;
  v244 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  sub_22C369824(v244);
  v243 = v46;
  v48 = *(v47 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v49);
  sub_22C36D5B4();
  sub_22C3698F8(v50);
  v242 = sub_22C90922C();
  v51 = sub_22C369824(v242);
  v241 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C3698A8();
  sub_22C3698F8(v55);
  v240 = sub_22C90930C();
  v56 = sub_22C369824(v240);
  v239 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C3698A8();
  sub_22C3698F8(v60);
  v236 = sub_22C9092DC();
  v61 = sub_22C369824(v236);
  v235[3] = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22C3698A8();
  sub_22C3698F8(v65);
  v66 = sub_22C90931C();
  v67 = sub_22C369824(v66);
  v270 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v71);
  sub_22C3698D4();
  v73 = MEMORY[0x28223BE20](v72);
  v75 = v235 - v74;
  MEMORY[0x28223BE20](v73);
  v77 = v235 - v76;
  v78 = sub_22C90906C();
  v79 = sub_22C369824(v78);
  v265 = v80;
  v266 = v79;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22C369838();
  v85 = v84 - v83;
  v86 = sub_22C9093BC();
  v87 = sub_22C369824(v86);
  v89 = v88;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22C3698E4();
  v264 = v92;
  sub_22C369930();
  v94 = MEMORY[0x28223BE20](v93);
  v96 = v235 - v95;
  MEMORY[0x28223BE20](v94);
  v98 = (v235 - v97);
  v271 = v89[2];
  v271(v235 - v97, v273, v86);
  v99 = v89[11];
  v100 = sub_22C37F8AC();
  v102 = v101(v100);
  if (v102 == *MEMORY[0x277D72A58])
  {
    v103 = v89[12];
    v104 = sub_22C37F8AC();
    v105(v104);
    v106 = *v98;
    v107 = swift_projectBox();
    v108 = v270;
    v109 = v270 + 16;
    v110 = *(v270 + 16);
    v110(v77, v107, v66);
    v110(v75, v77, v66);
    v111 = (*(v108 + 88))(v75, v66);
    v112 = v66;
    if (v111 == *MEMORY[0x277D72978])
    {
      v113 = sub_22C36A630();
      v114(v113);
      v115 = *v75;
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v75 = sub_22C38AD04();
      *(v75 + 1) = xmmword_22C90F800;
      v274 = v115;
      v116 = sub_22C90B47C();
LABEL_10:
      *(v75 + 4) = v116;
      *(v75 + 5) = v117;
LABEL_11:
      (*(v108 + 8))(v77, v112);
LABEL_12:

      return v75;
    }

    if (v111 == *MEMORY[0x277D729A8])
    {
      v130 = sub_22C36A630();
      v131(v130);
      v132 = *v75;
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v75 = sub_22C38AD04();
      *(v75 + 1) = xmmword_22C90F800;
      v116 = sub_22C90A84C();
      goto LABEL_10;
    }

    if (v111 == *MEMORY[0x277D729C0])
    {
      v143 = sub_22C36A630();
      v144(v143);
      v145 = *(v75 + 4);
      v146 = v108;
      v148 = *v75;
      v147 = *(v75 + 1);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v75 = sub_22C38AD04();
      *(v75 + 1) = xmmword_22C90F800;
      *(v75 + 4) = sub_22C90AC1C();
      *(v75 + 5) = v149;
      (*(v146 + 8))(v77, v66);
      goto LABEL_12;
    }

    if (v111 == *MEMORY[0x277D729B8])
    {
      v157 = sub_22C36A630();
      v158(v157);
      v159 = *v75;
      v160 = *(v75 + 1);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v75 = sub_22C38AD04();
      *(v75 + 1) = xmmword_22C90F800;
      *(v75 + 4) = v159;
      *(v75 + 5) = v160;
      goto LABEL_11;
    }

    if (v111 == *MEMORY[0x277D72990])
    {
      v161 = sub_22C36A630();
      v162(v161);
      v109 = v262;
      (*(v262 + 32))(v259, v75, v263);
      v163 = sub_22C8F87F4();
LABEL_25:
      v75 = v163;
LABEL_26:
      v164 = *(v109 + 8);
      v165 = sub_22C36BBCC();
      v166(v165);
      goto LABEL_11;
    }

    if (v111 == *MEMORY[0x277D72958])
    {
      v167 = sub_22C36A630();
      v168(v167);
      v169 = v258;
      v170 = v261;
      (*(v258 + 32))(v260, v75, v261);
      v171 = v254;
      sub_22C9007BC();
      v172 = v255;
      sub_22C90078C();
      (*(v256 + 8))(v171, v257);
      v173 = v263;
      if (sub_22C370B74(v172, 1, v263) != 1)
      {
        v198 = v262;
        v199 = v169;
        v200 = v251;
        (*(v262 + 32))(v251, v172, v173);
        v75 = sub_22C8F87F4();
        (*(v198 + 8))(v200, v263);
        (*(v199 + 8))(v260, v261);
        goto LABEL_11;
      }

      v273 = v77;
      sub_22C36DD28(v172, &qword_27D9BF2C0, &qword_22C925300);
      v174 = v253;
      sub_22C90405C();
      v175 = *(v169 + 16);
      v176 = v252;
      v177 = sub_22C379ED8();
      v178(v177);
      v179 = sub_22C9063CC();
      v180 = sub_22C90AACC();
      if (os_log_type_enabled(v179, v180))
      {
        v181 = sub_22C36FB44();
        v271 = v106;
        v182 = v181;
        v183 = sub_22C370060();
        v269 = v112;
        v184 = v183;
        v274 = v183;
        *v182 = 136315138;
        sub_22C8F8E40(&qword_27D9BFEC0, MEMORY[0x277CC8990]);
        v185 = sub_22C90B47C();
        v186 = v174;
        v188 = v187;
        v189 = sub_22C383580();
        v176(v189, v261);
        v190 = sub_22C36F9F4(v185, v188, &v274);

        *(v182 + 4) = v190;
        _os_log_impl(&dword_22C366000, v179, v180, "Cannot make Date from date components: %s", v182, 0xCu);
        sub_22C36FF94(v184);
        v112 = v269;
        sub_22C3699EC();
        sub_22C3699EC();

        sub_22C8F90B8();
        v192 = v186;
        v170 = v261;
      }

      else
      {

        v205 = sub_22C383580();
        v176(v205, v170);
        sub_22C8F90B8();
        v192 = v174;
      }

      v191(v192, v268);
      v176(v260, v170);
      (*(v270 + 8))(v273, v112);

      return MEMORY[0x277D84F90];
    }

    else
    {
      if (v111 == *MEMORY[0x277D72980])
      {
        v193 = sub_22C36A630();
        v194(v193);
        sub_22C388C2C(&v276);
        sub_22C372BEC();
        sub_22C8F90AC();
        v195();
        sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
        v75 = swift_allocObject();
        *(v75 + 1) = xmmword_22C90F870;
        *(v75 + 4) = sub_22C90036C();
        *(v75 + 5) = v196;
        *(v75 + 6) = sub_22C90037C();
        *(v75 + 7) = v197;
        goto LABEL_26;
      }

      if (v111 == *MEMORY[0x277D72968])
      {
        v201 = sub_22C36A630();
        v202(v201);
        sub_22C388C2C(&v275);
        sub_22C372BEC();
        sub_22C8F90AC();
        v203();
        sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
        v75 = sub_22C38AD04();
        *(v75 + 1) = xmmword_22C90F800;
        sub_22C90019C();
        sub_22C8F8E40(&qword_27D9BFF78, MEMORY[0x277CC8B30]);
        *(v75 + 4) = sub_22C90A48C();
        *(v75 + 5) = v204;
        goto LABEL_26;
      }

      if (v111 == *MEMORY[0x277D72940])
      {
        v206 = sub_22C36A630();
        v207(v206);
        sub_22C388C2C(&v272);
        sub_22C372BEC();
        sub_22C8F90AC();
        v208();
        v163 = sub_22C8F85BC();
        goto LABEL_25;
      }

      if (v111 == *MEMORY[0x277D72950])
      {
        v209 = sub_22C36A630();
        v210(v209);
        sub_22C388C2C(&v269);
        sub_22C372BEC();
        sub_22C8F90AC();
        v211();
        v163 = sub_22C8F8194();
        goto LABEL_25;
      }

      if (v111 == *MEMORY[0x277D729D0])
      {
        v212 = sub_22C36A630();
        v213(v212);
        sub_22C388C2C(v267);
        sub_22C372BEC();
        sub_22C8F90AC();
        v214();
        v163 = sub_22C8F7E3C();
        goto LABEL_25;
      }

      if (v111 == *MEMORY[0x277D729B0])
      {
        v215 = sub_22C36A630();
        v216(v215);
        sub_22C388C2C(&v262);
        sub_22C372BEC();
        sub_22C8F90AC();
        v217();
        v163 = sub_22C8F7710();
        goto LABEL_25;
      }

      v271 = v106;
      v272 = v75;
      v75 = v238;
      sub_22C90405C();
      v218 = v237;
      v110(v237, v77, v112);
      v219 = sub_22C9063CC();
      LODWORD(v269) = sub_22C90AABC();
      if (os_log_type_enabled(v219, v269))
      {
        v220 = v108;
        v221 = sub_22C36FB44();
        v267[0] = sub_22C370060();
        v274 = v267[0];
        *v221 = 136315138;
        v110(v235[1], v218, v112);
        v222 = sub_22C90A1AC();
        v273 = v77;
        v224 = v223;
        v225 = v218;
        v226 = v112;
        v270 = *(v220 + 8);
        (v270)(v225, v112);
        v75 = sub_22C36F9F4(v222, v224, &v274);
        v77 = v273;

        *(v221 + 4) = v75;
        _os_log_impl(&dword_22C366000, v219, v269, "unhandled primitive value: %s", v221, 0xCu);
        sub_22C36FF94(v267[0]);
        sub_22C3699EC();
        sub_22C3699EC();

        sub_22C8F90B8();
        v228 = v238;
      }

      else
      {

        v229 = v218;
        v226 = v112;
        v270 = *(v108 + 8);
        (v270)(v229, v112);
        sub_22C8F90B8();
        v228 = v75;
      }

      v227(v228, v268);
      type metadata accessor for TypedValueFormatterError(0);
      sub_22C378A1C();
      sub_22C8F8E40(v230, v231);
      swift_allocError();
      v110(v232, v77, v226);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v233 = sub_22C379ED8();
      v234 = v270;
      (v270)(v233);
      v234(v272, v226);
    }
  }

  else if (v102 == *MEMORY[0x277D729E0])
  {
    v118 = v89[12];
    v119 = sub_22C37F8AC();
    v120(v119);
    v121 = *v98;
    v122 = swift_projectBox();
    v123 = v265;
    (*(v265 + 16))(v85, v122, v266);
    v124 = sub_22C90905C();
    MEMORY[0x28223BE20](v124);
    v235[-2] = v267[0];
    v125 = v272;
    sub_22C8F44E8(sub_22C8F8E88, &v235[-4], v124);
    if (v125)
    {
      v127 = *(v123 + 8);
    }

    else
    {
      v75 = v126;
      v156 = *(v123 + 8);
    }

    v128 = sub_22C36BBCC();
    v129(v128);
  }

  else
  {
    v133 = v269;
    sub_22C90405C();
    v271(v96, v273, v86);
    v134 = sub_22C9063CC();
    v135 = sub_22C90AABC();
    if (os_log_type_enabled(v134, v135))
    {
      v75 = sub_22C36FB44();
      v267[0] = v75;
      v272 = sub_22C370060();
      v274 = v272;
      *v75 = 136315138;
      LODWORD(v270) = v135;
      v271(v264, v96, v86);
      v266 = sub_22C90A1AC();
      v137 = v136;
      v138 = sub_22C37F6C4();
      (v75)(v138);
      v139 = sub_22C36F9F4(v266, v137, &v274);

      v140 = v267[0];
      *(v267[0] + 4) = v139;
      _os_log_impl(&dword_22C366000, v134, v270, "Unsupported type %s", v140, 0xCu);
      sub_22C36FF94(v272);
      sub_22C3699EC();
      sub_22C3699EC();

      sub_22C8F90B8();
      v142 = v269;
    }

    else
    {

      v150 = sub_22C37F6C4();
      (v75)(v150);
      sub_22C8F90B8();
      v142 = v133;
    }

    v141(v142, v268);
    type metadata accessor for TypedValueFormatterError(0);
    sub_22C378A1C();
    sub_22C8F8E40(v151, v152);
    sub_22C370620();
    v271(v153, v273, v86);
    sub_22C36BBCC();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v154 = sub_22C37F8AC();
    (v75)(v154);
  }

  return v75;
}

uint64_t *sub_22C8F6208(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v193 = v4;
  v194 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v195 = v7;
  sub_22C36BA0C();
  v177 = sub_22C90922C();
  v8 = sub_22C369824(v177);
  v176 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v175 = v12;
  v179 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  sub_22C369824(v179);
  v187 = v13;
  v15 = *(v14 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C36D5B4();
  sub_22C3698F8(v17);
  v174 = sub_22C9092DC();
  v18 = sub_22C369824(v174);
  v173 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C3698A8();
  sub_22C3698F8(v22);
  v192 = sub_22C90063C();
  v23 = sub_22C369824(v192);
  v189 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C3698A8();
  v188 = v27;
  v28 = *(*(sub_22C3A5908(&qword_27D9BFE38, &qword_22C92B200) - 8) + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C36D5B4();
  v186 = v30;
  sub_22C36BA0C();
  v31 = sub_22C9001BC();
  v32 = sub_22C369824(v31);
  v184 = v33;
  v185 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698A8();
  sub_22C3698F8(v36);
  v183 = sub_22C90021C();
  v37 = sub_22C369824(v183);
  v182 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C3698A8();
  sub_22C3698F8(v41);
  v42 = sub_22C90931C();
  v43 = sub_22C369824(v42);
  v197 = v44;
  v198 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22C3698E4();
  v199 = v47;
  sub_22C369930();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA64();
  v200 = v49;
  sub_22C36BA0C();
  v50 = sub_22C90906C();
  v51 = sub_22C369824(v50);
  v191 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C369838();
  v57 = v56 - v55;
  v58 = sub_22C9093BC();
  v59 = sub_22C369824(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  v64 = MEMORY[0x28223BE20](v59);
  v66 = v172 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v190 = v172 - v67;
  sub_22C369930();
  MEMORY[0x28223BE20](v68);
  isa = (v172 - v69);
  v71 = *(*(sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0) - 8) + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v72);
  v74 = v172 - v73;
  sub_22C90939C();
  v75 = sub_22C90993C();
  if (sub_22C370B74(v74, 1, v75) == 1)
  {
    sub_22C36DD28(v74, &qword_27D9BC390, &qword_22C912AC0);
    v172[0] = v61[2];
    (v172[0])(isa, a1, v58);
    v76 = v61[11];
    v77 = sub_22C37BD80();
    v79 = v78(v77);
    v80 = a1;
    if (v79 == *MEMORY[0x277D72A58])
    {
      v195 = v61 + 2;
      v81 = v61[12];
      v82 = sub_22C37BD80();
      v83(v82);
      v84 = *isa;
      v85 = swift_projectBox();
      v86 = v197;
      isa = v198;
      v87 = *(v197 + 16);
      v88 = v200;
      v87(v200, v85, v198);
      v89 = v199;
      v87(v199, v88, isa);
      v90 = (*(v86 + 88))(v89, isa);
      if (v90 == *MEMORY[0x277D729B8])
      {
        (*(v86 + 8))(v88, isa);
        (*(v86 + 96))(v89, isa);
        isa = v89->isa;
        v91 = v89[1].isa;
LABEL_30:

        return isa;
      }

      if (v90 == *MEMORY[0x277D72990])
      {
        v101 = sub_22C36C62C();
        v102(v101);
        v104 = v188;
        v103 = v189;
        v105 = *(v189 + 32);
        v106 = sub_22C379ED8();
        v107(v106);
        v108 = type metadata accessor for TypedValueFormatter(0);
        sub_22C8F71F4(v196, *(v196 + *(v108 + 20)), *(v196 + *(v108 + 20) + 8));
        sub_22C8F90C4();
        (*(v103 + 8))(v104, v192);
        (*(v86 + 8))(v88, isa);
        goto LABEL_30;
      }

      if (v90 == *MEMORY[0x277D72968])
      {
        v123 = sub_22C36C62C();
        v124(v123);
        v125 = v182;
        v126 = *(v182 + 32);
        v127 = v180;
        v196 = v84;
        v128 = v183;
        v126(v180, v89, v183);
        v129 = v181;
        sub_22C90019C();
        v130 = v186;
        sub_22C87F748();
        (*(v184 + 8))(v129, v185);
        sub_22C90A19C();
        sub_22C376B70();
        (*(v125 + 8))(v127, v128);
        (*(v86 + 8))(v130, v86);
        goto LABEL_30;
      }

      if (v90 == *MEMORY[0x277D72940])
      {
        v139 = sub_22C36C62C();
        v140(v139);
        v141 = v178;
        v142 = v179;
        (*(v187 + 32))();
        v143 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
        [v143 setUnitOptions_];
        [v143 setUnitStyle_];
        v144 = v86;
        v145 = v141;
        v146 = sub_22C8FFF9C();
        v147 = [v143 stringFromUnit_];

        v199 = sub_22C90A11C();
        v149 = v148;

        sub_22C8FFFBC();
        v202[0] = sub_22C8F8D38();
        v202[1] = v150;
        MEMORY[0x2318B7850](32, 0xE100000000000000);
        MEMORY[0x2318B7850](v199, v149);

        v151 = isa;
        isa = v202[0];
        (*(v187 + 8))(v145, v142);
        (*(v144 + 8))(v200, v151);
        goto LABEL_30;
      }

      if (v90 == *MEMORY[0x277D72950])
      {
        v152 = sub_22C36C62C();
        v153(v152);
        v154 = v176;
        v155 = *(v176 + 32);
        v156 = v175;
        v157 = sub_22C379ED8();
        v158 = v177;
        v159(v157);
        sub_22C8F7434(v196);
        sub_22C376B70();
        (*(v154 + 8))(v156, v158);
        (*(v86 + 8))(v89, v86);
        goto LABEL_30;
      }

      v196 = v84;
      if (v90 == *MEMORY[0x277D729B0])
      {
        v160 = sub_22C36C62C();
        v161(v160);
        v162 = v173;
        v163 = *(v173 + 32);
        v164 = v172[1];
        v165 = sub_22C36BBCC();
        v166 = v174;
        v167(v165);
        v168 = sub_22C9092CC();
        v169 = [v168 displayName];

        sub_22C90A11C();
        sub_22C8F90C4();

        (*(v162 + 8))(v164, v166);
        (*(v86 + 8))(v200, isa);
        goto LABEL_30;
      }

      if (v90 != *MEMORY[0x277D729A0])
      {
        sub_22C90937C();
        if (!v170)
        {
          (v172[0])(v190, v80, v58);
          sub_22C90A1AC();
        }

        sub_22C8F90C4();
        v171 = *(v86 + 8);
        v171(v200, isa);
        v171(v199, isa);
        goto LABEL_30;
      }

      (*(v86 + 8))(v200, isa);

      return 0;
    }

    else if (v79 == *MEMORY[0x277D729E0])
    {
      v92 = v61[12];
      v93 = sub_22C37BD80();
      v94(v93);
      v95 = *isa;
      v96 = swift_projectBox();
      v97 = v191;
      (*(v191 + 16))(v57, v96, v50);
      v98 = sub_22C90905C();
      MEMORY[0x28223BE20](v98);
      v172[-2] = v196;
      v99 = v201;
      sub_22C7928B0();
      if (v99)
      {
        (*(v97 + 8))(v57, v50);
      }

      else
      {
        v138 = v100;

        v202[0] = v138;
        sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
        sub_22C3F035C();
        isa = sub_22C90A04C();

        (*(v97 + 8))(v57, v50);
      }
    }

    else
    {
      v109 = v195;
      sub_22C90405C();
      v201 = v80;
      v110 = v172[0];
      (v172[0])(v66, v80, v58);
      v111 = sub_22C9063CC();
      v112 = sub_22C90AADC();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = sub_22C36FB44();
        v199 = v111;
        v114 = v113;
        v200 = sub_22C370060();
        v202[0] = v200;
        *v114 = 136642819;
        LODWORD(v198) = v112;
        v110(v190, v66, v58);
        v197 = sub_22C90A1AC();
        v116 = v115;
        v117 = v61[1];
        v118 = sub_22C372550();
        v117(v118);
        v119 = v117;
        v120 = sub_22C36F9F4(v197, v116, v202);

        v121 = v114;
        *(v114 + 4) = v120;
        v122 = v199;
        _os_log_impl(&dword_22C366000, v199, v198, "Unsupported type %{sensitive}s", v121, 0xCu);
        sub_22C36FF94(v200);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v193 + 8))(v195, v194);
      }

      else
      {

        v131 = v61[1];
        v132 = sub_22C372550();
        v131(v132);
        v119 = v131;
        (*(v193 + 8))(v109, v194);
      }

      type metadata accessor for TypedValueFormatterError(0);
      sub_22C378A1C();
      sub_22C8F8E40(v133, v134);
      sub_22C370620();
      (v172[0])(v135, v201, v58);
      sub_22C36BBCC();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v136 = sub_22C37BD80();
      v119(v136);
    }
  }

  else
  {
    sub_22C9098BC();
    sub_22C8F90C4();
    (*(*(v75 - 8) + 8))(v74, v75);
  }

  return isa;
}

uint64_t sub_22C8F71C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C8F6208();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_22C8F71F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = sub_22C902E6C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_22C902E5C();
  sub_22C9005DC();
  sub_22C902E2C();
  if (a3)
  {

    sub_22C902F8C();
    v14 = sub_22C902FBC();
    sub_22C36C640(v10, 0, 1, v14);
    sub_22C902E4C();
  }

  sub_22C902E3C();
  sub_22C902F2C();
  sub_22C9006BC();
  sub_22C902EBC();
  sub_22C902E0C();
  sub_22C902E1C();
  v15 = sub_22C902FBC();
  if (sub_22C370B74(v8, 1, v15) == 1)
  {

    sub_22C36DD28(v8, &qword_27D9C0AB8, &qword_22C92A190);
    return 0;
  }

  else
  {
    v16 = sub_22C902F9C();

    (*(*(v15 - 8) + 8))(v8, v15);
  }

  return v16;
}

uint64_t sub_22C8F7434(uint64_t a1)
{
  v25[2] = a1;
  v1 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v25 - v3;
  v5 = sub_22C902E8C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v25[0] = sub_22C902E7C();
  v8 = sub_22C90921C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = HIDWORD(v8);
  v15 = HIWORD(v8);
  v16 = v10 >> 16;
  v17 = HIDWORD(v10);
  v18 = HIWORD(v10);
  v19 = HIWORD(v12);
  v20 = objc_allocWithZone(MEMORY[0x277CCA980]);
  v26 = v9;
  v27 = v14;
  v28 = v15;
  v29 = v11;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v13;
  v34 = v19;
  v21 = [v20 initWithDecimal_];
  [v21 doubleValue];

  sub_22C902DFC();

  sub_22C9091FC();
  sub_22C902DEC();

  sub_22C902DDC();

  sub_22C902F2C();
  sub_22C9006BC();

  sub_22C902EBC();
  sub_22C902DCC();

  sub_22C902E9C();
  v22 = sub_22C902FBC();
  if (sub_22C370B74(v4, 1, v22) == 1)
  {

    sub_22C36DD28(v4, &qword_27D9C0AB8, &qword_22C92A190);
    return 0;
  }

  else
  {
    v23 = sub_22C902F9C();

    (*(*(v22 - 8) + 8))(v4, v22);
  }

  return v23;
}

uint64_t sub_22C8F76E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C8F4D3C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22C8F7710()
{
  v1 = sub_22C9092DC();
  v84 = *(v1 - 8);
  v85 = v1;
  v2 = *(v84 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v83 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v82 - v5;
  v7 = sub_22C9063DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v87 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9002EC();
  v88 = *(v11 - 1);
  v89 = v11;
  v12 = *(v88 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v82 - v17;
  v19 = sub_22C90993C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v0;
  sub_22C90927C();
  v24 = sub_22C370B74(v18, 1, v19);
  v86 = v8;
  if (v24 == 1)
  {
    sub_22C36DD28(v18, &qword_27D9BC390, &qword_22C912AC0);
    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    v82 = v6;
    v26 = v7;
    (*(v20 + 32))(v23, v18, v19);
    v27 = sub_22C9098BC();
    v29 = v28;
    sub_22C590270();
    v25 = v30;
    v31 = *(v30 + 16);
    if (v31 >= *(v30 + 24) >> 1)
    {
      sub_22C590270();
      v25 = v78;
    }

    (*(v20 + 8))(v23, v19);
    *(v25 + 16) = v31 + 1;
    v32 = v25 + 16 * v31;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
    v7 = v26;
    v6 = v82;
  }

  v33 = sub_22C9092CC();
  v34 = [v33 displayName];
  v35 = sub_22C90A11C();
  v37 = v36;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v75 = *(v25 + 16);
    sub_22C590270();
    v25 = v76;
  }

  v38 = *(v25 + 16);
  if (v38 >= *(v25 + 24) >> 1)
  {
    sub_22C590270();
    v25 = v77;
  }

  *(v25 + 16) = v38 + 1;
  v39 = v25 + 16 * v38;
  *(v39 + 32) = v35;
  *(v39 + 40) = v37;
  v40 = [v33 nameComponents];
  if (v40)
  {
    v41 = v40;
    sub_22C9002CC();

    v42 = sub_22C9002AC();
    if (v43)
    {
      v44 = v42;
      v45 = v43;
      v46 = *(v25 + 16);
      if (v46 >= *(v25 + 24) >> 1)
      {
        sub_22C590270();
        v25 = v79;
      }

      *(v25 + 16) = v46 + 1;
      v47 = v25 + 16 * v46;
      *(v47 + 32) = v44;
      *(v47 + 40) = v45;
    }

    v48 = sub_22C9002BC();
    if (v49)
    {
      v50 = v48;
      v51 = v49;
      v52 = *(v25 + 16);
      if (v52 >= *(v25 + 24) >> 1)
      {
        sub_22C590270();
        v25 = v80;
      }

      *(v25 + 16) = v52 + 1;
      v53 = v25 + 16 * v52;
      *(v53 + 32) = v50;
      *(v53 + 40) = v51;
    }

    v54 = sub_22C9002DC();
    if (v55)
    {
      v56 = v54;
      v57 = v55;
      v58 = *(v25 + 16);
      if (v58 >= *(v25 + 24) >> 1)
      {
        sub_22C590270();
        v25 = v81;
      }

      (*(v88 + 8))(v14, v89);
      *(v25 + 16) = v58 + 1;
      v59 = v25 + 16 * v58;
      *(v59 + 32) = v56;
      *(v59 + 40) = v57;
    }

    else
    {
      (*(v88 + 8))(v14, v89);
    }
  }

  else
  {

    v60 = v87;
    sub_22C90405C();
    v61 = v84;
    v62 = v85;
    v63 = *(v84 + 16);
    v63(v6, v90, v85);
    v64 = sub_22C9063CC();
    v65 = sub_22C90AADC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v90 = v7;
      v67 = v66;
      v89 = swift_slowAlloc();
      v91 = v89;
      *v67 = 136315138;
      v63(v83, v6, v62);
      v68 = sub_22C90A1AC();
      v69 = v62;
      v71 = v70;
      (*(v61 + 8))(v6, v69);
      v72 = sub_22C36F9F4(v68, v71, &v91);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_22C366000, v64, v65, "No name components for %s?", v67, 0xCu);
      v73 = v89;
      sub_22C36FF94(v89);
      MEMORY[0x2318B9880](v73, -1, -1);
      MEMORY[0x2318B9880](v67, -1, -1);

      (*(v86 + 8))(v87, v90);
    }

    else
    {

      (*(v61 + 8))(v6, v62);
      (*(v86 + 8))(v60, v7);
    }

    return MEMORY[0x277D84F90];
  }

  return v25;
}

uint64_t sub_22C8F7E3C()
{
  v0 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v40 - v2;
  v4 = sub_22C90993C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90927C();
  if (sub_22C370B74(v3, 1, v4) == 1)
  {
    sub_22C36DD28(v3, &qword_27D9BC390, &qword_22C912AC0);
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = sub_22C9098BC();
    v12 = v11;
    sub_22C590270();
    v9 = v13;
    v14 = *(v13 + 16);
    if (v14 >= *(v13 + 24) >> 1)
    {
      sub_22C590270();
      v9 = v39;
    }

    (*(v5 + 8))(v8, v4);
    *(v9 + 16) = v14 + 1;
    v15 = v9 + 16 * v14;
    *(v15 + 32) = v10;
    *(v15 + 40) = v12;
  }

  v16 = sub_22C9092FC();
  v17 = sub_22C8F8EA4(v16);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = *(v9 + 16);
      sub_22C590270();
      v9 = v34;
    }

    v21 = *(v9 + 16);
    if (v21 >= *(v9 + 24) >> 1)
    {
      sub_22C590270();
      v9 = v35;
    }

    *(v9 + 16) = v21 + 1;
    v22 = v9 + 16 * v21;
    *(v22 + 32) = v19;
    *(v22 + 40) = v20;
  }

  v23 = [v16 postalAddress];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
    v26 = [v25 stringFromPostalAddress_];
    v27 = sub_22C90A11C();
    v29 = v28;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = *(v9 + 16);
      sub_22C590270();
      v9 = v37;
    }

    v30 = *(v9 + 16);
    if (v30 >= *(v9 + 24) >> 1)
    {
      sub_22C590270();
      v9 = v38;
    }

    *(v9 + 16) = v30 + 1;
    v31 = v9 + 16 * v30;
    *(v31 + 32) = v27;
    *(v31 + 40) = v29;
  }

  else
  {
  }

  return v9;
}

uint64_t sub_22C8F8194()
{
  v0 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v54 - v2;
  v4 = sub_22C90993C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90920C();
  if (sub_22C370B74(v3, 1, v4) == 1)
  {
    sub_22C36DD28(v3, &qword_27D9BC390, &qword_22C912AC0);
    v54 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v9 = sub_22C9098BC();
    v11 = v10;
    sub_22C590270();
    v13 = v12;
    v14 = *(v12 + 16);
    if (v14 >= *(v12 + 24) >> 1)
    {
      sub_22C590270();
      v13 = v53;
    }

    (*(v5 + 8))(v8, v4);
    *(v13 + 16) = v14 + 1;
    v54 = v13;
    v15 = v13 + 16 * v14;
    *(v15 + 32) = v9;
    *(v15 + 40) = v11;
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v16 setNumberStyle_];
  [v16 setMinimumFractionDigits_];
  [v16 setMaximumFractionDigits_];
  v17 = sub_22C90921C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = HIDWORD(v17);
  v24 = HIWORD(v17);
  v25 = v19 >> 16;
  v26 = HIDWORD(v19);
  v27 = HIWORD(v19);
  v28 = HIWORD(v21);
  v29 = objc_allocWithZone(MEMORY[0x277CCA980]);
  v55 = v18;
  v56 = v23;
  v57 = v24;
  v58 = v20;
  v59 = v25;
  v60 = v26;
  v61 = v27;
  v62 = v22;
  v63 = v28;
  v30 = [v29 initWithDecimal_];
  v31 = [v16 stringFromNumber_];
  if (v31)
  {
    v32 = v31;
    v33 = sub_22C90A11C();
    v35 = v34;

    v36 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = *(v36 + 16);
      sub_22C590270();
      v36 = v48;
    }

    v37 = *(v36 + 16);
    if (v37 >= *(v36 + 24) >> 1)
    {
      sub_22C590270();
      v36 = v49;
    }

    *(v36 + 16) = v37 + 1;
    v38 = v36 + 16 * v37;
    *(v38 + 32) = v33;
    *(v38 + 40) = v35;
  }

  else
  {
    v36 = v54;
  }

  [v16 setNumberStyle_];
  v39 = [v16 stringFromNumber_];
  if (v39)
  {
    v40 = v39;
    v41 = sub_22C90A11C();
    v43 = v42;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = *(v36 + 16);
      sub_22C590270();
      v36 = v51;
    }

    v44 = *(v36 + 16);
    if (v44 >= *(v36 + 24) >> 1)
    {
      sub_22C590270();
      v36 = v52;
    }

    *(v36 + 16) = v44 + 1;
    v45 = v36 + 16 * v44;
    *(v45 + 32) = v41;
    *(v45 + 40) = v43;
  }

  else
  {
  }

  return v36;
}

uint64_t sub_22C8F85BC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v0 setUnitStyle_];
  sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  v1 = sub_22C8FFF7C();
  v2 = [v0 stringFromMeasurement_];

  v3 = sub_22C90A11C();
  v5 = v4;

  sub_22C590270();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_22C590270();
    v7 = v25;
  }

  *(v7 + 16) = v8 + 1;
  v9 = v7 + 16 * v8;
  *(v9 + 32) = v3;
  *(v9 + 40) = v5;
  [v0 setUnitStyle_];
  v10 = sub_22C8FFF7C();
  v11 = [v0 stringFromMeasurement_];

  v12 = sub_22C90A11C();
  v14 = v13;

  v15 = *(v7 + 16);
  if (v15 >= *(v7 + 24) >> 1)
  {
    sub_22C590270();
    v7 = v26;
  }

  *(v7 + 16) = v15 + 1;
  v16 = v7 + 16 * v15;
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;
  [v0 setUnitStyle_];
  v17 = sub_22C8FFF7C();
  v18 = [v0 stringFromMeasurement_];

  v19 = sub_22C90A11C();
  v21 = v20;

  v22 = *(v7 + 16);
  if (v22 >= *(v7 + 24) >> 1)
  {
    sub_22C590270();
    v7 = v27;
  }

  *(v7 + 16) = v22 + 1;
  v23 = v7 + 16 * v22;
  *(v23 + 32) = v19;
  *(v23 + 40) = v21;

  return v7;
}

uint64_t sub_22C8F87F4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  v1 = sub_22C9005AC();
  v2 = [v0 stringFromDate_];

  v3 = sub_22C90A11C();
  v5 = v4;

  sub_22C590270();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_22C590270();
    v7 = v40;
  }

  *(v7 + 16) = v8 + 1;
  v9 = v7 + 16 * v8;
  *(v9 + 32) = v3;
  *(v9 + 40) = v5;
  v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v10 setDateStyle_];
  v11 = sub_22C9005AC();
  v12 = [v10 stringFromDate_];

  v13 = sub_22C90A11C();
  v15 = v14;

  v16 = *(v7 + 16);
  if (v16 >= *(v7 + 24) >> 1)
  {
    sub_22C590270();
    v7 = v41;
  }

  *(v7 + 16) = v16 + 1;
  v17 = v7 + 16 * v16;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  v18 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v18 setDateStyle_];
  v19 = sub_22C9005AC();
  v20 = [v18 stringFromDate_];

  v21 = sub_22C90A11C();
  v23 = v22;

  v24 = *(v7 + 16);
  if (v24 >= *(v7 + 24) >> 1)
  {
    sub_22C590270();
    v7 = v42;
  }

  *(v7 + 16) = v24 + 1;
  v25 = v7 + 16 * v24;
  *(v25 + 32) = v21;
  *(v25 + 40) = v23;
  v26 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v26 setDateStyle_];
  v27 = sub_22C9005AC();
  v28 = [v26 stringFromDate_];

  v29 = sub_22C90A11C();
  v31 = v30;

  v32 = *(v7 + 16);
  if (v32 >= *(v7 + 24) >> 1)
  {
    sub_22C590270();
    v7 = v43;
  }

  *(v7 + 16) = v32 + 1;
  v33 = v7 + 16 * v32;
  *(v33 + 32) = v29;
  *(v33 + 40) = v31;
  sub_22C90063C();
  sub_22C8F8E40(&qword_27D9C1598, MEMORY[0x277CC9578]);
  v34 = sub_22C90B47C();
  v36 = v35;
  v37 = *(v7 + 16);
  if (v37 >= *(v7 + 24) >> 1)
  {
    sub_22C590270();
    v7 = v44;
  }

  *(v7 + 16) = v37 + 1;
  v38 = v7 + 16 * v37;
  *(v38 + 32) = v34;
  *(v38 + 40) = v36;
  return v7;
}

uint64_t sub_22C8F8B6C()
{
  v0 = type metadata accessor for TypedValueFormatterError(0);
  v1 = sub_22C36985C(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C36BBCC();
  sub_22C8F9048(v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_22C90931C();
    v10 = 1;
  }

  else
  {
    v9 = sub_22C9093BC();
    v10 = 0;
  }

  (*(*(v9 - 8) + 8))(v6);
  return v10;
}

uint64_t sub_22C8F8C40(uint64_t a1)
{
  v2 = sub_22C8F8E40(&qword_27D9C15C0, type metadata accessor for TypedValueFormatterError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8F8CAC(uint64_t a1)
{
  v2 = sub_22C8F8E40(&qword_27D9C15C0, type metadata accessor for TypedValueFormatterError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C8F8D38()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setMinimumFractionDigits_];
  [v0 setMaximumFractionDigits_];
  [v0 setNumberStyle_];
  v1 = sub_22C90A83C();
  v2 = [v0 stringFromNumber_];

  if (v2)
  {
    v3 = sub_22C90A11C();
  }

  else
  {

    return 6369134;
  }

  return v3;
}

uint64_t sub_22C8F8E40(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C8F8EA4(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22C90A11C();

  return v3;
}

void sub_22C8F8F08()
{
  sub_22C8F8FB4(319, &qword_27D9C15B0, MEMORY[0x277D72A78]);
  if (v0 <= 0x3F)
  {
    sub_22C8F8FB4(319, &qword_27D9C15B8, MEMORY[0x277D729D8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C8F8FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22C8F9048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypedValueFormatterError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8F90D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22C90931C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C90919C();
  v13 = sub_22C369824(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = sub_22C9093BC();
  v22 = sub_22C369824(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v29 = (v28 - v27);
  (*(v24 + 16))(v28 - v27, a1, v21);
  v30 = *(v24 + 88);
  v31 = sub_22C37493C();
  v33 = v32(v31);
  if (v33 == *MEMORY[0x277D72A58])
  {
    v34 = *(v24 + 96);
    v35 = sub_22C37493C();
    v36(v35);
    v37 = *v29;
    v38 = swift_projectBox();
    (*(v6 + 16))(v11, v38, v3);
    v39 = (*(v6 + 88))(v11, v3);
    v40 = *MEMORY[0x277D729A0];
    type metadata accessor for TypedValueSalientContent();
    swift_storeEnumTagMultiPayload();
    if (v39 != v40)
    {
      (*(v6 + 8))(v11, v3);
    }
  }

  if (v33 == *MEMORY[0x277D72A38])
  {
    v41 = *(v24 + 96);
    v42 = sub_22C37493C();
    v43(v42);
    v44 = *v29;
    v45 = swift_projectBox();
    (*(v15 + 16))(v20, v45, v12);
    sub_22C8F9454(v20, MEMORY[0x277D84F90], a2);
    (*(v15 + 8))(v20, v12);
  }

  type metadata accessor for TypedValueSalientContent();
  swift_storeEnumTagMultiPayload();
  v47 = *(v24 + 8);
  v48 = sub_22C37493C();
  return v49(v48);
}

uint64_t type metadata accessor for TypedValueSalientContent()
{
  result = qword_27D9C15C8;
  if (!qword_27D9C15C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C8F9454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v112 = a2;
  v121 = a3;
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v117 = v6;
  v118 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v114 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v111 = &v108 - v12;
  v13 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v108 - v15;
  v17 = sub_22C90993C();
  v18 = sub_22C369824(v17);
  v116 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v115 = (v23 - v22);
  v24 = sub_22C90919C();
  v25 = sub_22C369824(v24);
  v119 = v26;
  v120 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369ABC();
  v31 = v29 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v113 = &v108 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v110 = &v108 - v36;
  MEMORY[0x28223BE20](v35);
  v109 = &v108 - v37;
  v38 = sub_22C3A5908(&qword_27D9BFFB0, &qword_22C925C40);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v108 - v40;
  v42 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C369ABC();
  v46 = (v44 - v45);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v108 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v108 - v51;
  v53 = *(sub_22C90914C() + 16);

  if (v53 == 1)
  {
    v54 = sub_22C90914C();
    sub_22C58B9B4(v54, v41);

    if (sub_22C370B74(v41, 1, v42) != 1)
    {
      sub_22C8F9EC8(v41, v52);
      sub_22C8F9F38(v52, v50);
      v72 = *(v50 + 1);

      v73 = *(v42 + 48);
      v74 = sub_22C9093BC();
      v75 = *(v74 - 8);
      if ((*(v75 + 88))(&v50[v73], v74) == *MEMORY[0x277D72A38])
      {
        (*(v75 + 96))(&v50[v73], v74);
        v76 = *&v50[v73];
        v77 = swift_projectBox();
        v78 = v119;
        v79 = v109;
        (*(v119 + 16))(v109, v77, v120);

        sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22C90F800;
        sub_22C8F9F38(v52, v46);
        v81 = *(v46 + 1);
        v82 = *(v42 + 48);
        *(inited + 32) = *v46;
        *(inited + 40) = v81;
        (*(v75 + 8))(&v46[v82], v74);
        v122[0] = v112;

        sub_22C3CC46C(inited);
        sub_22C8F9454(v79, v122[0]);

        v83 = *(v78 + 8);
        v84 = sub_22C37493C();
        v85(v84);
        return sub_22C3770B0(v52, &qword_27D9BADA0, &unk_22C90FA80);
      }

      v99 = *(v75 + 8);
      v99(&v50[v73], v74);
      v120 = *(sub_22C3A5908(&qword_27D9C0D58, &unk_22C92B1E0) + 48);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v100 = swift_initStackObject();
      *(v100 + 16) = xmmword_22C90F800;
      sub_22C8F9F38(v52, v46);
      v101 = *(v46 + 1);
      v102 = *(v42 + 48);
      *(v100 + 32) = *v46;
      *(v100 + 40) = v101;
      v99(&v46[v102], v74);
      v122[0] = v112;

      sub_22C3CC46C(v100);
      sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      sub_22C3F035C();
      v103 = sub_22C90A04C();
      v105 = v104;

      v106 = v121;
      *v121 = v103;
      v106[1] = v105;
      sub_22C8F9EC8(v52, v46);
      v107 = *(v46 + 1);

      (*(v75 + 32))(v106 + v120, &v46[*(v42 + 48)], v74);
      type metadata accessor for TypedValueSalientContent();
      return swift_storeEnumTagMultiPayload();
    }

    sub_22C3770B0(v41, &qword_27D9BFFB0, &qword_22C925C40);
  }

  sub_22C90915C();
  if (sub_22C370B74(v16, 1, v17) == 1)
  {
    sub_22C3770B0(v16, &qword_27D9BC390, &qword_22C912AC0);
    v55 = v114;
    sub_22C90405C();
    v57 = v119;
    v56 = v120;
    v58 = *(v119 + 16);
    v58(v31, a1, v120);
    v59 = sub_22C9063CC();
    v60 = sub_22C90AACC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v122[0] = v116;
      *v61 = 136642819;
      v58(v113, v31, v56);
      v62 = sub_22C90A1AC();
      v64 = v63;
      (*(v57 + 8))(v31, v56);
      v65 = sub_22C36F9F4(v62, v64, v122);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_22C366000, v59, v60, "Entity %{sensitive}s does not have a display representation", v61, 0xCu);
      sub_22C36FF94(v116);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v57 + 8))(v31, v56);
    }

    (*(v117 + 8))(v55, v118);
LABEL_20:
    type metadata accessor for TypedValueSalientContent();
    return swift_storeEnumTagMultiPayload();
  }

  v66 = v115;
  v67 = v116[4];
  v67(v115, v16, v17);
  v68 = sub_22C9098BC();
  v70 = v69;

  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (!v71)
  {
    v114 = v17;
    v87 = v111;
    sub_22C90405C();
    v89 = v119;
    v88 = v120;
    v90 = *(v119 + 16);
    v91 = v110;
    v90(v110, a1, v120);
    v92 = sub_22C9063CC();
    v93 = sub_22C90AACC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v122[0] = v112;
      *v94 = 136642819;
      v90(v113, v91, v88);
      v95 = sub_22C90A1AC();
      v97 = v96;
      (*(v89 + 8))(v91, v88);
      v98 = sub_22C36F9F4(v95, v97, v122);

      *(v94 + 4) = v98;
      _os_log_impl(&dword_22C366000, v92, v93, "Entity %{sensitive}s has an empty display representation title", v94, 0xCu);
      sub_22C36FF94(v112);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v89 + 8))(v91, v88);
    }

    (*(v117 + 8))(v87, v118);
    (v116[1])(v115, v114);
    goto LABEL_20;
  }

  v67(v121, v66, v17);
  type metadata accessor for TypedValueSalientContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22C8F9EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8F9F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C8F9FA8()
{
  sub_22C90993C();
  if (v0 <= 0x3F)
  {
    sub_22C8FA01C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C8FA01C()
{
  if (!qword_27D9C15D8[0])
  {
    sub_22C9093BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_27D9C15D8);
    }
  }
}

uint64_t Bool.init(level:)(void *a1)
{
  if ([a1 levelOneOfCase] == 10)
  {
    v2 = [a1 BOOLeanValue];
  }

  else
  {

    return 2;
  }

  return v2;
}

uint64_t sub_22C8FA0E4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Bool.init(level:)(a1);
  *a2 = result;
  return result;
}

id Int.init(level:)(void *a1)
{
  if ([a1 levelOneOfCase] == 13)
  {
    v2 = [a1 longValue];
  }

  else if ([a1 levelOneOfCase] == 12)
  {
    LODWORD(v2) = [a1 intValue];

    return v2;
  }

  else
  {

    return 0;
  }

  return v2;
}

id sub_22C8FA1A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = Int.init(level:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t Float.init(level:)(void *a1)
{
  if ([a1 levelOneOfCase] == 15)
  {
    [a1 doubleValue];
    v3 = v2;

    v4 = v3;
  }

  else
  {
    if ([a1 levelOneOfCase] != 14)
    {

      v7 = 0;
      v6 = 1;
      return v7 | (v6 << 32);
    }

    [a1 floatValue];
    v4 = v5;
  }

  v6 = 0;
  v7 = LODWORD(v4);
  return v7 | (v6 << 32);
}

unint64_t sub_22C8FA29C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = Float.init(level:)(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_22C8FA2E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C8FA360(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_22C370B74((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_22C8FA4E0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
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
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 16] & ~v10;

            sub_22C36C640(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_22C8FA744(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[8];
  sub_22C374168(v1 + 4, v1[7]);
  v5 = v1[3];
  v23 = v1[2];
  v6 = (*(v4 + 24))();
  v7 = v6;
  if (v6)
  {
    v22 = [v6 deploymentId];

    v8 = [v7 experimentId];
    v9 = sub_22C90A11C();
    v20 = v10;
    v21 = v9;

    v11 = [v7 treatmentId];
    v12 = sub_22C90A11C();
    v14 = v13;

    v15 = v7;
  }

  else
  {

    v15 = 0;
    v12 = 0;
    v14 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  v16 = v7 == 0;
  v18 = v2[7];
  v17 = v2[8];
  sub_22C374168(v2 + 4, v18);
  v19 = (*(v17 + 32))(v23, v5, v18, v17);

  *a1 = v23;
  *(a1 + 8) = v5;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = v22;
  *(a1 + 56) = v16;
  *(a1 + 60) = v19;
}

id sub_22C8FA924()
{
  v1 = sub_22C90A0EC();
  v2 = [v0 experimentIdentifiersWithNamespaceName_];

  return v2;
}

uint64_t sub_22C8FA994(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C8FA9E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_22C8FAA5C()
{
  v1 = sub_22C90A0EC();
  v2 = [v0 compatibilityVersionWithNamespaceName_];

  return v2;
}

uint64_t sub_22C8FAAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_22C7FB53C(a3, v26 - v11);
  v13 = sub_22C90A75C();
  v14 = sub_22C370B74(v12, 1, v13);

  if (v14 == 1)
  {
    sub_22C3FC848(v12);
  }

  else
  {
    sub_22C90A74C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22C90A6DC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22C90A1EC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t static AutoBugCaptureHelper.snapshot(caseType:subType:subTypeContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - v14;
  sub_22C90A73C();
  v16 = sub_22C90A75C();
  sub_22C36C640(v15, 0, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = a5;
  v17[9] = a6;

  sub_22C8FAAA0(0, 0, v15, &unk_22C92DF70, v17);

  return sub_22C3FC848(v15);
}

uint64_t sub_22C8FAE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_22C9063DC();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8FAF34, 0, 0);
}

uint64_t sub_22C8FAF34()
{
  v43 = v0;
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD000000000000012, 0x800000022C93A440);
  MEMORY[0x2318B7850](0xD000000000000010, 0x800000022C93A400);
  MEMORY[0x2318B7850](0x3D6570797420, 0xE600000000000000);
  MEMORY[0x2318B7850](v7, v6);
  MEMORY[0x2318B7850](0x6570795462757320, 0xE90000000000003DLL);
  MEMORY[0x2318B7850](v5, v4);
  MEMORY[0x2318B7850](0xD000000000000010, 0x800000022C93A460);
  MEMORY[0x2318B7850](v3, v2);
  MEMORY[0x2318B7850](46, 0xE100000000000000);
  v0[12] = 0xE000000000000000;
  v8 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v0[13] = v8;
  sub_22C9040AC();

  v9 = sub_22C9063CC();
  LOBYTE(v6) = sub_22C90AACC();

  v10 = os_log_type_enabled(v9, v6);
  v11 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  if (v10)
  {
    swift_slowAlloc();
    v14 = sub_22C372014();
    v42[0] = v14;
    *v8 = 136315138;
    *(v8 + 4) = sub_22C36F9F4(0, 0xE000000000000000, v42);
    sub_22C36CB64(&dword_22C366000, v15, v16, "Taking an AutoBugCapture snapshot for %s");
    sub_22C36FF94(v14);
    sub_22C3699EC();
    v8 = v40;
    sub_22C3699EC();
  }

  v17 = *(v12 + 8);
  v17(v11, v13);
  v18 = sub_22C8FBDB8(0xD000000000000010, 0x800000022C93A400, v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], 0xD000000000000011, 0x800000022C93A420, 0, v8);
  if (v18 && (v19 = v18, v42[0] = 0, sub_22C909EBC(), v19, v20 = v42[0], v0[14] = v42[0], v20))
  {
    v21 = swift_task_alloc();
    v0[15] = v21;
    v21[2] = v8;
    v21[3] = v20;
    v21[4] = 0x4000000000000000;
    v21[5] = 0;
    v21[6] = 0xE000000000000000;
    v22 = *(MEMORY[0x277D859E0] + 4);
    v23 = swift_task_alloc();
    v0[16] = v23;
    *v23 = v0;
    v23[1] = sub_22C8FB438;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v24 = v0[10];
    sub_22C9040AC();

    v25 = sub_22C9063CC();
    v26 = sub_22C90AADC();

    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[9];
    v28 = v0[10];
    v30 = v0[8];
    if (v27)
    {
      swift_slowAlloc();
      v41 = v17;
      v31 = sub_22C372014();
      v42[0] = v31;
      *v8 = 136315138;
      v32 = v28;
      v33 = sub_22C36F9F4(0, 0xE000000000000000, v42);

      *(v8 + 4) = v33;
      sub_22C36CB64(&dword_22C366000, v34, v35, "Failed to create AutoBugCapture signature for %s");
      sub_22C36FF94(v31);
      sub_22C3699EC();
      sub_22C3699EC();

      v41(v32, v30);
    }

    else
    {

      v17(v28, v30);
    }

    v37 = v0[10];
    v36 = v0[11];

    sub_22C369A24();

    return v38();
  }
}

uint64_t sub_22C8FB438()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 96);
  v5 = *v0;
  sub_22C369970();
  *v6 = v5;

  return MEMORY[0x2822009F8](sub_22C8FB588, 0, 0);
}

uint64_t sub_22C8FB588()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C8FB5F4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  v12 = sub_22C36D860(v11);
  *v12 = v13;
  v12[1] = sub_22C889794;

  return sub_22C8FAE58(a1, v3, v4, v5, v6, v7, v8, v10);
}

_BYTE *storeEnumTagSinglePayload for AutoBugCaptureHelper(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_22C8FB784(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = sub_22C3A5908(&qword_27D9BBB28, &qword_22C910DF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = aBlock - v15;
  (*(v13 + 16))(aBlock - v15, a1, v12);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = sub_22C8FBEC4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22C8FBC90;
  aBlock[3] = &unk_283FC3F38;
  v19 = _Block_copy(aBlock);

  sub_22C8FBF5C(a6, a3, 0, 0, v19, a2);
  _Block_release(v19);
}

uint64_t sub_22C8FB96C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v30[1] = a4;
  v7 = sub_22C9063DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v30 - v13;
  sub_22C9040AC();

  v15 = sub_22C9063CC();
  v16 = sub_22C90AACC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30[0] = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_22C36F9F4(a2, a3, &v31);
    _os_log_impl(&dword_22C366000, v15, v16, "Done with AutoBugCapture for %s.", v18, 0xCu);
    sub_22C36FF94(v19);
    MEMORY[0x2318B9880](v19, -1, -1);
    v20 = v18;
    v8 = v30[0];
    MEMORY[0x2318B9880](v20, -1, -1);
  }

  v21 = *(v8 + 8);
  v21(v14, v7);
  sub_22C9040AC();

  v22 = sub_22C9063CC();
  v23 = sub_22C90AACC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30[2] = a1;
    v31 = v25;
    *v24 = 136315138;

    sub_22C3A5908(&qword_27D9C1668, &unk_22C92DFB0);
    v26 = sub_22C90A1AC();
    v28 = sub_22C36F9F4(v26, v27, &v31);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_22C366000, v22, v23, "AutoBugCapture Response: %s", v24, 0xCu);
    sub_22C36FF94(v25);
    MEMORY[0x2318B9880](v25, -1, -1);
    MEMORY[0x2318B9880](v24, -1, -1);
  }

  v21(v12, v7);
  sub_22C3A5908(&qword_27D9BBB28, &qword_22C910DF0);
  return sub_22C90A6EC();
}

uint64_t sub_22C8FBC90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_22C909ECC();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_22C8FBD20()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  v6 = sub_22C36AC74(v4);

  return v7(v6);
}

id sub_22C8FBDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v12 = sub_22C90A0EC();
  v13 = sub_22C90A0EC();
  v14 = sub_22C90A0EC();
  v15 = sub_22C90A0EC();
  v16 = sub_22C90A0EC();
  v17 = [a12 signatureWithDomain:v12 type:v13 subType:v14 subtypeContext:v15 detectedProcess:v16 triggerThresholdValues:a11];

  return v17;
}

uint64_t sub_22C8FBEC4(uint64_t a1)
{
  v3 = *(sub_22C3A5908(&qword_27D9BBB28, &qword_22C910DF0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_22C8FB96C(a1, v4, v5, v6);
}

uint64_t sub_22C8FBF44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_22C8FBF5C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = sub_22C909EAC();
  v12 = [a6 snapshotWithSignature:v11 duration:a3 event:a4 payload:a5 reply:a1];

  return v12;
}

uint64_t sub_22C8FBFF8()
{
  v0 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22C90064C();

  return sub_22C90623C();
}

uint64_t sub_22C8FC0C0(int a1, uint64_t a2, uint64_t a3)
{
  v135 = a1;
  v141 = sub_22C9063DC();
  v5 = sub_22C369824(v141);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  sub_22C36D234(&v118 - v13);
  v14 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C36D234(&v118 - v18);
  v19 = sub_22C3A5908(&qword_27D9C1670, &qword_22C92DFE8);
  sub_22C369914(v19);
  v21 = *(v20 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C36D234(&v118 - v23);
  v24 = sub_22C3A5908(&qword_27D9BFD68, &qword_22C9254F0);
  sub_22C369914(v24);
  v26 = *(v25 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v27);
  v29 = &v118 - v28;
  v124 = sub_22C90531C();
  v30 = sub_22C369824(v124);
  v123 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  sub_22C36D234(v34);
  v125 = sub_22C904D9C();
  v35 = sub_22C369824(v125);
  v131 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  sub_22C36D234(v39);
  v130 = sub_22C90504C();
  v40 = sub_22C369824(v130);
  v129 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  sub_22C36D234(v44);
  v45 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v45);
  v47 = *(v46 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v48);
  v49 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v49);
  v51 = *(v50 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v52);
  sub_22C36D234(&v118 - v53);
  v128 = sub_22C904FBC();
  v54 = sub_22C369824(v128);
  v127 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C3698A8();
  sub_22C36D234(v58);
  swift_beginAccess();
  v59 = sub_22C633A20(0x6874617065646F63, 0xEB00000000736469, *(a3 + 72));
  swift_endAccess();
  if (!v59)
  {
    goto LABEL_8;
  }

  v60 = sub_22C8FCE1C(v59);
  if (!v61)
  {
    goto LABEL_8;
  }

  *&v138[0] = v60;
  *(&v138[0] + 1) = v61;
  v62 = "82AEB74E-8E20-4755-94E3-1005E5DD68B0";
  if (v135)
  {
    v62 = "5F32C9B8-AF70-6965-A282-A9BA8D882D77";
  }

  v119 = a3;
  v63 = v7;
  v64 = v29;
  v65 = (v62 - 32) | 0x8000000000000000;
  v136[0] = 0xD000000000000024;
  v136[1] = v65;
  sub_22C3858B4();
  v66 = sub_22C90AD8C();

  v118 = v65;
  v67 = v64;
  v7 = v63;
  v68 = v119;

  if (v66)
  {
    v69 = v68[6];
    v138[0] = v68[5];
    v138[1] = v69;
    v70 = v68[8];
    v139[0] = v68[7];
    v139[1] = v70;
    sub_22C9061CC();
    sub_22C8FCE8C(v138, v136);
    sub_22C760A9C();
    sub_22C90620C();
    if (v3)
    {
      return sub_22C8FCEFC(v138);
    }

    else
    {
      v75 = v133;
      sub_22C904FAC();
      v76 = v120;
      sub_22C90068C();
      v77 = sub_22C90069C();
      sub_22C36C640(v76, 0, 1, v77);
      sub_22C904F9C();
      v78 = sub_22C90625C();
      MEMORY[0x28223BE20](v78);
      sub_22C369920();
      *(v79 - 16) = v80;
      sub_22C36A644();
      v81 = sub_22C8FCFC8();
      sub_22C36C640(v81, v82, v83, v78);
      sub_22C904F8C();
      sub_22C90503C();
      sub_22C372F88();
      sub_22C904D8C();
      LOBYTE(v136[0]) = *(&v138[0] + 1) == 1;
      sub_22C904D7C();
      sub_22C904D4C();
      if (*(&v138[0] + 1) != 1)
      {
      }

      sub_22C904D5C();
      v84 = v125;
      if (*(&v138[0] + 1) != 1)
      {
      }

      v85 = sub_22C904D6C();
      if (*(&v138[0] + 1) != 1)
      {
        v75 = *(&v139[0] + 1);
        v86 = *&v139[0];

        v87 = sub_22C8FCEFC(v138);
        if (v75)
        {
          MEMORY[0x28223BE20](v87);
          sub_22C369920();
          *(v88 - 16) = v86;
          *(v88 - 8) = v75;
          sub_22C36A644();

          v84 = v125;
          v89 = sub_22C8FCFC8();
          sub_22C36C640(v89, v90, v91, v78);
          sub_22C372F88();
          v85 = sub_22C904D3C();
        }

        else
        {
          sub_22C372F88();
        }
      }

      MEMORY[0x28223BE20](v85);
      sub_22C369920();
      *(v92 - 16) = v135 & 1;
      sub_22C36A644();
      v93 = sub_22C8FCFC8();
      sub_22C36C640(v93, v94, v95, v78);
      v96 = v134;
      sub_22C90502C();
      sub_22C3A5908(&qword_27D9C1678, qword_22C92DFF0);
      v97 = v131;
      v98 = *(v131 + 72);
      v99 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_22C90F800;
      (*(v97 + 16))(v100 + v99, v75, v84);
      sub_22C90501C();
      sub_22C90530C();
      v101 = v128;
      (*(v127 + 16))(v67, v133, v128);
      sub_22C36C640(v67, 0, 1, v101);
      sub_22C904C8C();
      v102 = v130;
      (*(v129 + 16))(v121, v96, v130);
      v103 = sub_22C8FCFC8();
      sub_22C36C640(v103, v104, v105, v102);
      sub_22C90509C();
      v106 = v122;
      sub_22C90621C();
      v107 = sub_22C90622C();
      sub_22C36C640(v106, 0, 1, v107);
      sub_22C9052FC();
      v108 = v126;
      sub_22C903FAC();
      v109 = sub_22C9063CC();
      v110 = sub_22C90AACC();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v136[0] = v112;
        *v111 = 136315138;
        v75 = sub_22C36F9F4(0xD000000000000024, v118, v136);

        *(v111 + 4) = v75;
        sub_22C372F88();
        _os_log_impl(&dword_22C366000, v109, v110, "Emitting triggered log for codepathid %s", v111, 0xCu);
        sub_22C36FF94(v112);
        MEMORY[0x2318B9880](v112, -1, -1);
        MEMORY[0x2318B9880](v111, -1, -1);

        (*(v7 + 8))(v126, v141);
      }

      else
      {

        (*(v7 + 8))(v108, v141);
      }

      sub_22C374168(v137, v137[3]);
      v113 = v132;
      sub_22C9062BC();
      sub_22C36FB04(v139 + 8);
      v114(v113, v124);
      sub_22C36FB04(&v142);
      v115(v75, v84);
      sub_22C36FB04(&v141);
      v116(v134, v130);
      sub_22C36FB04(v140);
      v117(v133, v128);
      return sub_22C36FF94(v137);
    }
  }

  else
  {
LABEL_8:
    sub_22C903FAC();
    v72 = sub_22C9063CC();
    v73 = sub_22C90AACC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_22C366000, v72, v73, "Not emitting triggered log as the device is not enrolled in an experiment with the necessary codepathid", v74, 2u);
      MEMORY[0x2318B9880](v74, -1, -1);
    }

    return (*(v7 + 8))(v12, v141);
  }
}

uint64_t sub_22C8FCC84(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_22C90069C();
  (*(*(v7 - 8) + 16))(v6, a2, v7);
  sub_22C36C640(v6, 0, 1, v7);
  return sub_22C90623C();
}

uint64_t sub_22C8FCD70()
{
  v0 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22C90064C();
  return sub_22C90623C();
}

uint64_t sub_22C8FCE1C(void *a1)
{
  v2 = [a1 stringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90A11C();

  return v3;
}

uint64_t sub_22C8FCE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BFA68, &unk_22C923C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8FCEFC(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BFA68, &unk_22C923C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C8FCF9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C8FCD70();
}

uint64_t PlannerServiceContext.init(contextId:planCycleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C90069C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for PlannerServiceContext() + 20);

  return sub_22C3CB76C(a2, v7);
}

uint64_t type metadata accessor for PlannerServiceContext()
{
  result = qword_27D9C1680;
  if (!qword_27D9C1680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlannerService.description.getter()
{
  swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  return sub_22C90A1AC();
}

uint64_t PlannerServiceContext.contextId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C90069C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlannerServiceContext.planCycleId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PlannerServiceContext() + 20);

  return sub_22C59F604(v3, a1);
}

uint64_t dispatch thunk of PlannerService.handle(_:plannerServiceContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22C3CC1B8;

  return v13(a1, a2, a3, a4);
}

void sub_22C8FD2F4()
{
  sub_22C90069C();
  if (v0 <= 0x3F)
  {
    sub_22C7AC60C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t ToolboxResources.makeQueryableToolbox(toolkitCache:)(uint64_t a1)
{
  v24[1] = a1;
  v1 = sub_22C908AEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v24 - v9;
  v11 = type metadata accessor for FullPlannerToolboxDelegate();
  v12 = sub_22C36985C(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C90647C();
  v19 = sub_22C36985C(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  sub_22C9071BC();
  sub_22C90646C();
  FullPlannerPreferences.init()(v17);
  v22 = sub_22C90046C();
  sub_22C36C640(v10, 1, 1, v22);
  (*(v2 + 16))(v6, v24[0] + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox, v1);
  sub_22C8FD5AC();

  return sub_22C90719C();
}

unint64_t sub_22C8FD5AC()
{
  result = qword_281435170[0];
  if (!qword_281435170[0])
  {
    type metadata accessor for FullPlannerToolboxDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281435170);
  }

  return result;
}

uint64_t ToolboxResources.init(toolbox:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  v4 = sub_22C908AEC();
  sub_22C36985C(v4);
  (*(v5 + 32))(v1 + v3, a1);
  return v1;
}

uint64_t ToolboxResources.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  v2 = sub_22C908AEC();
  sub_22C36985C(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_22C8FD6CC()
{
  result = sub_22C908AEC();
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

id sub_22C8FD800(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x73656C707574 && a2 == 0xE600000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {
    v6 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v8 = a1 == 0x6F43656369766564 && a2 == 0xED0000747865746ELL;
  if (v8 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  sub_22C8FE71C();
  v10 = a1 == 0xD000000000000015 && v9 == a2;
  if (v10 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 32;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  sub_22C8FE71C();
  v12 = a1 == 0xD00000000000001CLL && v11 == a2;
  if (v12 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 40;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  sub_22C8FE71C();
  v14 = a1 == 0xD00000000000001BLL && v13 == a2;
  if (v14 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 48;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  sub_22C8FE71C();
  v16 = a1 == 0xD000000000000010 && v15 == a2;
  if (v16 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 56;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v17 = a1 == 0x6576654C6B736972 && a2 == 0xE90000000000006CLL;
  if (v17 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 64;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v18 = a1 == 0x74616469646E6163 && a2 == 0xEE006B7369725F65;
  if (v18 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 72;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  sub_22C8FE71C();
  v20 = a1 == 0xD000000000000010 && v19 == a2;
  if (v20 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 80;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v21 = a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72;
  if (v21 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 88;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v22 = a1 == 0x5079646165726C61 && a2 == 0xEF646574706D6F72;
  if (v22 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 96;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v23 = a1 == 0x766C6F7365527369 && a2 == 0xEA00000000006465;
  if (v23 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 104;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v24 = a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074;
  if (v24 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 112;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_22C8FDB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  *(v11 + 64) = a7;
  *(v11 + 72) = a8;
  *(v11 + 80) = a9;
  *(v11 + 96) = a10;
  *(v11 + 112) = a11;
  return v11;
}

uint64_t sub_22C8FDC40()
{
  sub_22C8FDBC0();

  return swift_deallocClassInstance();
}

void sub_22C8FDCAC()
{
  v1 = *(v0 + 16);
  v2 = sub_22C90A0EC();
  v3 = sub_22C378A34(v2, sel_featureValueForName_);

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_22C8FDD60()
{
  v1 = *(v0 + 16);
  v2 = sub_22C90A0EC();
  v3 = sub_22C378A34(v2, sel_featureValueForName_);

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_22C8FDE20()
{
  v1 = *(v0 + 16);
  v2 = sub_22C90A0EC();
  v3 = sub_22C378A34(v2, sel_featureValueForName_);

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_22C8FDED0()
{
  v1 = *(v0 + 16);
  v2 = sub_22C90A0EC();
  v3 = sub_22C378A34(v2, sel_featureValueForName_);

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_22C8FDFB4()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_22C90A8BC();

  return v2;
}

id sub_22C8FE00C()
{
  v1 = *(v0 + 16);
  v2 = sub_22C90A0EC();
  v3 = sub_22C378A34(v2, sel_featureValueForName_);

  return v3;
}

id sub_22C8FE06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_22C90A11C();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_22C8FE0E8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C92E0F0;
  *(inited + 32) = 0x64496E6F69746361;
  *(inited + 40) = 0xE800000000000000;
  v37 = a1;
  v15 = [objc_opt_self() featureValueWithMultiArray_];
  v16 = sub_22C8FE6D8();
  *(inited + 48) = v15;
  *(inited + 72) = v16;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000022C93A720;
  v17 = sub_22C36A668();
  *(inited + 96) = [v17 v18];
  *(inited + 120) = v16;
  strcpy((inited + 128), "shadowActionId");
  *(inited + 143) = -18;
  v19 = sub_22C36A668();
  *(inited + 144) = [v19 v20];
  *(inited + 168) = v16;
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x800000022C93A700;
  v21 = sub_22C36A668();
  *(inited + 192) = [v21 v22];
  *(inited + 216) = v16;
  *(inited + 224) = 0x73676E696B6E6172;
  *(inited + 232) = 0xE800000000000000;
  v23 = sub_22C36A668();
  *(inited + 240) = [v23 v24];
  *(inited + 264) = v16;
  *(inited + 272) = 0x74736F6E67616964;
  *(inited + 280) = 0xEA00000000006369;
  v25 = sub_22C36A668();
  *(inited + 288) = [v25 v26];
  *(inited + 312) = v16;
  *(inited + 320) = 0xD000000000000011;
  *(inited + 328) = 0x800000022C93A6E0;
  v27 = sub_22C36A668();
  *(inited + 336) = [v27 v28];
  *(inited + 360) = v16;
  strcpy((inited + 368), "forcedPrompt");
  *(inited + 381) = 0;
  *(inited + 382) = -5120;
  v29 = sub_22C36A668();
  v31 = [v29 v30];
  *(inited + 408) = v16;
  *(inited + 384) = v31;
  sub_22C909F0C();
  v32 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v33 = sub_22C8FE5F0();

  result = v38;
  *(v38 + 16) = v33;
  return result;
}

uint64_t sub_22C8FE450(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
  v3 = sub_22C8FE4BC(a1, v2);

  return v3;
}

uint64_t sub_22C8FE4BC(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for PlanResolutionModelOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_22C90030C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_22C8FE594()
{

  return swift_deallocClassInstance();
}

id sub_22C8FE5F0()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22C909EAC();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22C90030C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_22C8FE6D8()
{
  result = qword_28142F9C8;
  if (!qword_28142F9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28142F9C8);
  }

  return result;
}

uint64_t *sub_22C8FE808(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x2318B8E40](v7, 0x1000C8077774924);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x2318B8E40](v4 - 8, 0x10C80436913F5);
  }

  return a1;
}

void sub_22C8FE988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  marisa::Agent::~Agent(&a9);

  _Unwind_Resume(a1);
}

_BYTE *sub_22C8FED7C(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22C8FEE2C();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void sub_22C8FEE3C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_22C8FEE90(exception);
  __cxa_throw(exception, off_278729320, MEMORY[0x277D825F0]);
}

std::logic_error *sub_22C8FEE90(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_22C8FF0E4(_Unwind_Exception *a1, void *a2, void *a3, ...)
{
  va_start(va, a3);

  marisa::Agent::~Agent(va);
  _Unwind_Resume(a1);
}

void sub_22C8FF400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  marisa::Agent::~Agent(&v24);

  _Unwind_Resume(a1);
}

void sub_22C8FF6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  marisa::Agent::~Agent(&v24);

  _Unwind_Resume(a1);
}

void sub_22C8FF904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22C8FFC9C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_22C8FFD68()
{
  qword_281435858 = os_log_create("com.apple.intelligenceflow", "PlanOverrides");

  return MEMORY[0x2821F96F8]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}