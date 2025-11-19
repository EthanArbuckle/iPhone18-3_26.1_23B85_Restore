void sub_2478CC330(uint64_t a1, char a2, uint64_t *a3)
{
  v71 = a3;
  v6 = sub_2478D889C();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v72 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE55018, &qword_2478DB838);
  v68 = *(v9 - 8);
  v10 = *(v68 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = v62 - v12;
  v65 = *(a1 + 16);
  if (!v65)
  {
    goto LABEL_24;
  }

  v62[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v67;
  v14 = v67 + *(v11 + 48);
  v15 = *(v68 + 80);
  v66 = a1;
  v16 = (v69 + 32);
  v64 = a1 + ((v15 + 32) & ~v15);
  sub_2478BDAA4(v64, v67, &unk_27EE55018, &qword_2478DB838);
  v17 = *v16;
  v18 = v72;
  (*v16)(v72, v13, v70);
  v19 = *v14;
  v63 = *(v14 + 8);
  v20 = *(v14 + 16);
  v21 = *v71;
  v23 = sub_2478CF9E8(v18);
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v22;
  if (*(v21 + 24) >= v26)
  {
    if (a2)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2478CFCF0();
      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v28 = v71;
  sub_2478D0350(v26, a2 & 1);
  v29 = *v28;
  v30 = sub_2478CF9E8(v72);
  if ((v27 & 1) == (v31 & 1))
  {
    v23 = v30;
    if ((v27 & 1) == 0)
    {
LABEL_14:
      v34 = v72;
      v35 = *v71;
      *(*v71 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v17(v35[6] + *(v69 + 72) * v23, v34, v70);
      v36 = (v35[7] + 24 * v23);
      v37 = v63;
      *v36 = v19;
      v36[1] = v37;
      v36[2] = v20;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v35[2] = v40;
      if (v65 != 1)
      {
        v41 = 1;
        while (v41 < *(v66 + 16))
        {
          v42 = v67;
          sub_2478BDAA4(v64 + *(v68 + 72) * v41, v67, &unk_27EE55018, &qword_2478DB838);
          v43 = *v16;
          v44 = v72;
          (*v16)(v72, v42, v70);
          v19 = *v14;
          v45 = *(v14 + 8);
          v20 = *(v14 + 16);
          v46 = *v71;
          v47 = sub_2478CF9E8(v44);
          v49 = *(v46 + 16);
          v50 = (v48 & 1) == 0;
          v39 = __OFADD__(v49, v50);
          v51 = v49 + v50;
          if (v39)
          {
            goto LABEL_26;
          }

          v52 = v48;
          if (*(v46 + 24) < v51)
          {
            v53 = v71;
            sub_2478D0350(v51, 1);
            v54 = *v53;
            v47 = sub_2478CF9E8(v72);
            if ((v52 & 1) != (v55 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v52)
          {
            goto LABEL_11;
          }

          v56 = v72;
          v57 = *v71;
          *(*v71 + 8 * (v47 >> 6) + 64) |= 1 << v47;
          v58 = v47;
          v43(v57[6] + *(v69 + 72) * v47, v56, v70);
          v59 = (v57[7] + 24 * v58);
          *v59 = v19;
          v59[1] = v45;
          v59[2] = v20;
          v60 = v57[2];
          v39 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v39)
          {
            goto LABEL_27;
          }

          ++v41;
          v57[2] = v61;
          if (v65 == v41)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v32 = swift_allocError();
    swift_willThrow();
    v75 = v32;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v69 + 8))(v72, v70);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_2478D8E7C();
  __break(1u);
LABEL_29:
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_2478D8CEC();
  MEMORY[0x24C1AD190](0xD00000000000001BLL, 0x80000002478DA680);
  sub_2478D8D8C();
  MEMORY[0x24C1AD190](39, 0xE100000000000000);
  sub_2478D8D9C();
  __break(1u);
}

uint64_t sub_2478CC8B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2478D889C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2478D3868(&qword_27EE550F8, MEMORY[0x277CC9260]);
  v36 = a2;
  v13 = sub_2478D896C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_2478D3868(&unk_27EE55100, MEMORY[0x277CC9260]);
      v23 = sub_2478D898C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2478CF1F0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2478CCB94(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_2478CEB7C(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_2478D3EC0(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x24C1ADC70](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2478CCD34(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2478D1504(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2478CCE94(v5);
  *a1 = v2;
  return result;
}

size_t sub_2478CCDA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2478CB844(*(a1 + 16), 0);
  v4 = *(sub_2478D889C() - 8);
  v5 = sub_2478D1260(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v1, a1);

  sub_2478D3EB8();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2478CCE94(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2478D8E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2478D8ADC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2478CD3C0(v7, v8, a1, v4);
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
    return sub_2478CCF8C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2478CCF8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v23 = *a4;
    v4 = *a4 + 40 * a3;
    v5 = result - a3;
LABEL_6:
    v21 = v4;
    v22 = a3;
    v20 = v5;
    while (1)
    {
      v6 = *(v4 + 16);
      v29 = *v4;
      v30 = v6;
      v31 = *(v4 + 32);
      v32 = *(&v29 + 1);
      v33 = *(&v6 + 1);
      v7 = *(v4 - 24);
      v26 = *(v4 - 40);
      v27 = v7;
      v28 = *(v4 - 8);
      v34[0] = *(&v26 + 1);
      v8 = v26;
      v35 = *(&v7 + 1);
      v24 = v29;
      sub_2478BDAA4(&v32, v25, &qword_27EE550C8, &qword_2478DBB88);
      sub_2478BDAA4(&v33, v25, &qword_27EE550D0, &qword_2478DBB90);
      v9 = v8;
      sub_2478BDAA4(v34, v25, &qword_27EE550C8, &qword_2478DBB88);
      sub_2478BDAA4(&v35, v25, &qword_27EE550D0, &qword_2478DBB90);
      v10 = sub_2478C2950();
      v25[0] = *v10;
      sub_2478C3A28();
      if (sub_2478D8C5C())
      {
        goto LABEL_8;
      }

      v25[0] = *v10;
      if (sub_2478D8C5C())
      {
        goto LABEL_4;
      }

      v11 = sub_2478C295C();
      v25[0] = *v11;
      if ((sub_2478D8C5C() & 1) != 0 && (v25[0] = *v11, (sub_2478D8C5C() & 1) == 0))
      {
LABEL_8:

        sub_2478BC950(v34, &qword_27EE550C8, &qword_2478DBB88);
        sub_2478BC950(&v35, &qword_27EE550D0, &qword_2478DBB90);

        sub_2478BC950(&v32, &qword_27EE550C8, &qword_2478DBB88);
        result = sub_2478BC950(&v33, &qword_27EE550D0, &qword_2478DBB90);
      }

      else
      {
        v25[0] = *v11;
        if (sub_2478D8C5C())
        {
          v25[0] = *v11;
          if ((sub_2478D8C5C() & 1) == 0)
          {
LABEL_4:

            sub_2478BC950(v34, &qword_27EE550C8, &qword_2478DBB88);
            sub_2478BC950(&v35, &qword_27EE550D0, &qword_2478DBB90);

            sub_2478BC950(&v32, &qword_27EE550C8, &qword_2478DBB88);
            result = sub_2478BC950(&v33, &qword_27EE550D0, &qword_2478DBB90);
LABEL_5:
            a3 = v22 + 1;
            v4 = v21 + 40;
            v5 = v20 - 1;
            if (v22 + 1 == a2)
            {
              return result;
            }

            goto LABEL_6;
          }
        }

        v25[0] = sub_2478C2C74();
        v25[1] = v12;
        sub_2478C2C74();
        sub_2478D3E64();
        v13 = sub_2478D8C3C();

        sub_2478BC950(v34, &qword_27EE550C8, &qword_2478DBB88);
        sub_2478BC950(&v35, &qword_27EE550D0, &qword_2478DBB90);

        sub_2478BC950(&v32, &qword_27EE550C8, &qword_2478DBB88);
        result = sub_2478BC950(&v33, &qword_27EE550D0, &qword_2478DBB90);
        if (v13 != -1)
        {
          goto LABEL_5;
        }
      }

      if (!v23)
      {
        break;
      }

      v14 = *v4;
      v15 = *(v4 + 8);
      v16 = *(v4 + 24);
      v17 = *(v4 - 24);
      *v4 = *(v4 - 40);
      *(v4 + 16) = v17;
      *(v4 + 32) = *(v4 - 8);
      *(v4 - 32) = v15;
      *(v4 - 16) = v16;
      *(v4 - 40) = v14;
      v4 -= 40;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2478CD3C0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v6;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_115:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_156;
    }

    v5 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v119 = v5;
LABEL_118:
      v150 = v119;
      v5 = *(v119 + 2);
      if (v5 >= 2)
      {
        while (*v8)
        {
          v120 = *&v119[16 * v5];
          v121 = v119;
          v122 = *&v119[16 * v5 + 24];
          sub_2478CE1F4((*v8 + 40 * v120), (*v8 + 40 * *&v119[16 * v5 + 16]), (*v8 + 40 * v122), v4);
          if (v7)
          {
            goto LABEL_126;
          }

          if (v122 < v120)
          {
            goto LABEL_143;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_2478CE728(v121);
          }

          if (v5 - 2 >= *(v121 + 2))
          {
            goto LABEL_144;
          }

          v123 = &v121[16 * v5];
          *v123 = v120;
          *(v123 + 1) = v122;
          v150 = v121;
          sub_2478CE69C(v5 - 1);
          v119 = v150;
          v5 = *(v150 + 2);
          if (v5 <= 1)
          {
            goto LABEL_126;
          }
        }

        goto LABEL_154;
      }

LABEL_126:

      return;
    }

LABEL_150:
    v119 = sub_2478CE728(v5);
    goto LABEL_118;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v12 = &qword_2478DBB88;
LABEL_4:
  v13 = v10;
  v14 = v10 + 1;
  v130 = v13;
  if (v14 >= v9)
  {
    v29 = v14;
    v8 = a3;
    goto LABEL_33;
  }

  v140 = v9;
  v126 = v11;
  v15 = *a3;
  v16 = *a3 + 40 * v14;
  v147 = *v16;
  v17 = v147;
  v148 = *(v16 + 8);
  v149 = *(v16 + 24);
  v18 = v15 + 40 * v13;
  v144 = *v18;
  v19 = v144;
  v145 = *(v18 + 8);
  v146 = *(v18 + 24);
  v20 = v148;
  v21 = v149;
  v22 = v145;
  v171 = v146;
  v23 = v17;
  v24 = v20;
  v25 = v21;
  v5 = v19;
  v26 = v22;
  v131 = sub_2478CA48C(&v147, &v144);
  if (v7)
  {

    return;
  }

  v27 = v13 + 2;
  v124 = 40 * v13;
  v4 = v15 + 40 * v13 + 40;
  v12 = &qword_2478DBB88;
  while (1)
  {
    v29 = v140;
    if (v140 == v27)
    {
      break;
    }

    v142 = v27;
    v138 = v7;
    v30 = *(v4 + 56);
    v160 = *(v4 + 40);
    v161 = v30;
    v162 = *(v4 + 72);
    v31 = v162;
    v163 = *(&v160 + 1);
    v164 = *(&v30 + 1);
    v32 = *(v4 + 16);
    v157 = *v4;
    v158 = v32;
    v159 = *(v4 + 32);
    v165 = *(&v157 + 1);
    v33 = v157;
    v166 = *(&v32 + 1);
    v136 = v160;
    sub_2478BDAA4(&v163, &v147, &qword_27EE550C8, v12);
    sub_2478BDAA4(&v164, &v147, &qword_27EE550D0, &qword_2478DBB90);
    v34 = v33;
    sub_2478BDAA4(&v165, &v147, &qword_27EE550C8, v12);
    sub_2478BDAA4(&v166, &v147, &qword_27EE550D0, &qword_2478DBB90);
    v35 = v12;
    v36 = sub_2478C2950();
    v147 = *v36;
    v134 = v31;
    v144 = v31;
    v171 = sub_2478C3A28();
    if (sub_2478D8C5C())
    {

      sub_2478BC950(&v165, &qword_27EE550C8, v35);
      sub_2478BC950(&v166, &qword_27EE550D0, &qword_2478DBB90);
      v5 = 1;
      v12 = v35;
    }

    else
    {
      v37 = v159;
      v147 = *v36;
      v144 = v159;
      if (sub_2478D8C5C())
      {

        v12 = &qword_2478DBB88;
        sub_2478BC950(&v165, &qword_27EE550C8, &qword_2478DBB88);
        sub_2478BC950(&v166, &qword_27EE550D0, &qword_2478DBB90);
        v5 = 0;
      }

      else
      {
        v38 = sub_2478C295C();
        v147 = *v38;
        v144 = v31;
        v12 = &qword_2478DBB88;
        if (sub_2478D8C5C() & 1) == 0 || (v147 = *v38, v144 = v37, (sub_2478D8C5C()))
        {
          v147 = *v38;
          v144 = v37;
          v28 = v136;
          if ((sub_2478D8C5C() & 1) != 0 && (v147 = *v38, v144 = v134, (sub_2478D8C5C() & 1) == 0))
          {

            sub_2478BC950(&v165, &qword_27EE550C8, &qword_2478DBB88);
            sub_2478BC950(&v166, &qword_27EE550D0, &qword_2478DBB90);
            v5 = 0;
            v7 = v138;
          }

          else
          {
            v147 = sub_2478C2C74();
            *&v148 = v39;
            v144 = sub_2478C2C74();
            *&v145 = v40;
            sub_2478D3E64();
            v41 = sub_2478D8C3C();

            v12 = &qword_2478DBB88;

            sub_2478BC950(&v165, &qword_27EE550C8, &qword_2478DBB88);
            sub_2478BC950(&v166, &qword_27EE550D0, &qword_2478DBB90);
            v5 = v41 == -1;
            v7 = v138;
          }

          goto LABEL_9;
        }

        sub_2478BC950(&v165, &qword_27EE550C8, &qword_2478DBB88);
        sub_2478BC950(&v166, &qword_27EE550D0, &qword_2478DBB90);
        v5 = 1;
      }
    }

    v28 = v136;
    v7 = v138;
LABEL_9:

    sub_2478BC950(&v163, &qword_27EE550C8, v12);
    sub_2478BC950(&v164, &qword_27EE550D0, &qword_2478DBB90);
    v27 = v142 + 1;
    v4 += 40;
    if ((v131 ^ v5))
    {
      v29 = v142;
      break;
    }
  }

  v11 = v126;
  v8 = a3;
  if (!v131)
  {
    goto LABEL_33;
  }

  v42 = v130;
  if (v29 < v130)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v130 < v29)
  {
    v43 = 40 * v29 - 40;
    v44 = v124 + 24;
    v45 = v29;
    do
    {
      if (v42 != --v29)
      {
        v53 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v46 = (v53 + v44);
        v47 = *(v53 + v44 - 24);
        v48 = v53 + v43;
        v49 = *(v46 - 1);
        v50 = *v46;
        v51 = *(v48 + 32);
        v52 = *(v48 + 16);
        *(v46 - 24) = *v48;
        *(v46 - 8) = v52;
        *(v46 + 1) = v51;
        *v48 = v47;
        *(v48 + 8) = v49;
        *(v48 + 24) = v50;
      }

      ++v42;
      v43 -= 40;
      v44 += 40;
    }

    while (v42 < v29);
    v29 = v45;
  }

LABEL_33:
  v54 = v8[1];
  if (v29 >= v54)
  {
    v56 = v29;
    goto LABEL_61;
  }

  if (__OFSUB__(v29, v130))
  {
    goto LABEL_146;
  }

  if (v29 - v130 >= a4)
  {
    v56 = v29;
    goto LABEL_61;
  }

  if (__OFADD__(v130, a4))
  {
    goto LABEL_147;
  }

  if (v130 + a4 < v54)
  {
    v54 = v130 + a4;
  }

  if (v54 < v130)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v55 = v29;
  v132 = v54;
  if (v29 == v54)
  {
    v56 = v29;
    goto LABEL_61;
  }

  v127 = v11;
  v139 = v7;
  v143 = *v8;
  v57 = *v8 + 40 * v29;
  v58 = v130 - v29;
  while (2)
  {
    v141 = v55;
    v135 = v58;
    v137 = v57;
LABEL_48:
    v59 = *(v57 + 16);
    v154 = *v57;
    v155 = v59;
    v156 = *(v57 + 32);
    v60 = v156;
    v167 = *(&v154 + 1);
    v168 = *(&v59 + 1);
    v61 = *(v57 - 24);
    v151 = *(v57 - 40);
    v152 = v61;
    v153 = *(v57 - 8);
    v169 = *(&v151 + 1);
    v62 = v151;
    v170[0] = *(&v61 + 1);
    v171 = v154;
    sub_2478BDAA4(&v167, &v147, &qword_27EE550C8, v12);
    sub_2478BDAA4(&v168, &v147, &qword_27EE550D0, &qword_2478DBB90);
    v4 = v62;
    sub_2478BDAA4(&v169, &v147, &qword_27EE550C8, v12);
    sub_2478BDAA4(v170, &v147, &qword_27EE550D0, &qword_2478DBB90);
    v63 = sub_2478C2950();
    v147 = *v63;
    v144 = v60;
    sub_2478C3A28();
    v5 = &v144;
    if (sub_2478D8C5C())
    {
      goto LABEL_49;
    }

    v64 = v153;
    v147 = *v63;
    v144 = v153;
    v5 = &v144;
    if (sub_2478D8C5C())
    {
      goto LABEL_45;
    }

    v65 = sub_2478C295C();
    v147 = *v65;
    v144 = v60;
    if (sub_2478D8C5C())
    {
      v147 = *v65;
      v144 = v64;
      v5 = &v144;
      if ((sub_2478D8C5C() & 1) == 0)
      {
LABEL_49:

        v12 = &qword_2478DBB88;
        sub_2478BC950(&v169, &qword_27EE550C8, &qword_2478DBB88);
        sub_2478BC950(v170, &qword_27EE550D0, &qword_2478DBB90);

        sub_2478BC950(&v167, &qword_27EE550C8, &qword_2478DBB88);
        sub_2478BC950(&v168, &qword_27EE550D0, &qword_2478DBB90);
        goto LABEL_56;
      }
    }

    v147 = *v65;
    v144 = v64;
    if (sub_2478D8C5C())
    {
      v147 = *v65;
      v144 = v60;
      v5 = &v144;
      if ((sub_2478D8C5C() & 1) == 0)
      {
LABEL_45:

        v12 = &qword_2478DBB88;
        sub_2478BC950(&v169, &qword_27EE550C8, &qword_2478DBB88);
        sub_2478BC950(v170, &qword_27EE550D0, &qword_2478DBB90);

        sub_2478BC950(&v167, &qword_27EE550C8, &qword_2478DBB88);
        sub_2478BC950(&v168, &qword_27EE550D0, &qword_2478DBB90);
LABEL_46:
        v55 = v141 + 1;
        v57 = v137 + 40;
        v58 = v135 - 1;
        if (v141 + 1 != v132)
        {
          continue;
        }

        v7 = v139;
        v8 = a3;
        v11 = v127;
        v56 = v132;
LABEL_61:
        if (v56 < v130)
        {
          goto LABEL_145;
        }

        v73 = v11;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v11 = v73;
        }

        else
        {
          v11 = sub_2478CB740(0, *(v73 + 2) + 1, 1, v73);
        }

        v4 = *(v11 + 2);
        v74 = *(v11 + 3);
        v5 = v4 + 1;
        if (v4 >= v74 >> 1)
        {
          v11 = sub_2478CB740((v74 > 1), v4 + 1, 1, v11);
        }

        *(v11 + 2) = v5;
        v75 = &v11[16 * v4];
        *(v75 + 4) = v130;
        *(v75 + 5) = v56;
        v133 = v56;
        v76 = *a1;
        if (!*a1)
        {
          goto LABEL_155;
        }

        if (!v4)
        {
LABEL_3:
          v9 = v8[1];
          v10 = v133;
          if (v133 >= v9)
          {
            goto LABEL_115;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v4 = v5 - 1;
          if (v5 >= 4)
          {
            break;
          }

          if (v5 == 3)
          {
            v77 = *(v11 + 4);
            v78 = *(v11 + 5);
            v87 = __OFSUB__(v78, v77);
            v79 = v78 - v77;
            v80 = v87;
LABEL_81:
            if (v80)
            {
              goto LABEL_134;
            }

            v93 = &v11[16 * v5];
            v95 = *v93;
            v94 = *(v93 + 1);
            v96 = __OFSUB__(v94, v95);
            v97 = v94 - v95;
            v98 = v96;
            if (v96)
            {
              goto LABEL_137;
            }

            v99 = &v11[16 * v4 + 32];
            v101 = *v99;
            v100 = *(v99 + 1);
            v87 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v87)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v97, v102))
            {
              goto LABEL_141;
            }

            if (v97 + v102 >= v79)
            {
              if (v79 < v102)
              {
                v4 = v5 - 2;
              }

              goto LABEL_102;
            }

            goto LABEL_95;
          }

          v103 = &v11[16 * v5];
          v105 = *v103;
          v104 = *(v103 + 1);
          v87 = __OFSUB__(v104, v105);
          v97 = v104 - v105;
          v98 = v87;
LABEL_95:
          if (v98)
          {
            goto LABEL_136;
          }

          v106 = &v11[16 * v4];
          v108 = *(v106 + 4);
          v107 = *(v106 + 5);
          v87 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v87)
          {
            goto LABEL_139;
          }

          if (v109 < v97)
          {
            goto LABEL_3;
          }

LABEL_102:
          v114 = v4 - 1;
          if (v4 - 1 >= v5)
          {
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
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
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
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          if (!*v8)
          {
            goto LABEL_152;
          }

          v115 = v11;
          v5 = *&v11[16 * v114 + 32];
          v116 = *&v11[16 * v4 + 40];
          sub_2478CE1F4((*v8 + 40 * v5), (*v8 + 40 * *&v11[16 * v4 + 32]), (*v8 + 40 * v116), v76);
          if (v7)
          {
            goto LABEL_126;
          }

          if (v116 < v5)
          {
            goto LABEL_130;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v117 = v115;
          }

          else
          {
            v117 = sub_2478CE728(v115);
          }

          if (v114 >= *(v117 + 2))
          {
            goto LABEL_131;
          }

          v118 = &v117[16 * v114];
          *(v118 + 4) = v5;
          *(v118 + 5) = v116;
          v150 = v117;
          sub_2478CE69C(v4);
          v11 = v150;
          v5 = *(v150 + 2);
          v12 = &qword_2478DBB88;
          if (v5 <= 1)
          {
            goto LABEL_3;
          }
        }

        v81 = &v11[16 * v5 + 32];
        v82 = *(v81 - 64);
        v83 = *(v81 - 56);
        v87 = __OFSUB__(v83, v82);
        v84 = v83 - v82;
        if (v87)
        {
          goto LABEL_132;
        }

        v86 = *(v81 - 48);
        v85 = *(v81 - 40);
        v87 = __OFSUB__(v85, v86);
        v79 = v85 - v86;
        v80 = v87;
        if (v87)
        {
          goto LABEL_133;
        }

        v88 = &v11[16 * v5];
        v90 = *v88;
        v89 = *(v88 + 1);
        v87 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v87)
        {
          goto LABEL_135;
        }

        v87 = __OFADD__(v79, v91);
        v92 = v79 + v91;
        if (v87)
        {
          goto LABEL_138;
        }

        if (v92 >= v84)
        {
          v110 = &v11[16 * v4 + 32];
          v112 = *v110;
          v111 = *(v110 + 1);
          v87 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v87)
          {
            goto LABEL_142;
          }

          if (v79 < v113)
          {
            v4 = v5 - 2;
          }

          goto LABEL_102;
        }

        goto LABEL_81;
      }
    }

    break;
  }

  v147 = sub_2478C2C74();
  *&v148 = v66;
  v144 = sub_2478C2C74();
  *&v145 = v67;
  sub_2478D3E64();
  v5 = sub_2478D8C3C();

  v12 = &qword_2478DBB88;
  sub_2478BC950(&v169, &qword_27EE550C8, &qword_2478DBB88);
  sub_2478BC950(v170, &qword_27EE550D0, &qword_2478DBB90);

  sub_2478BC950(&v167, &qword_27EE550C8, &qword_2478DBB88);
  sub_2478BC950(&v168, &qword_27EE550D0, &qword_2478DBB90);
  if (v5 != -1)
  {
    goto LABEL_46;
  }

LABEL_56:
  if (v143)
  {
    v68 = *v57;
    v69 = *(v57 + 8);
    v70 = *(v57 + 24);
    v71 = *(v57 - 24);
    *v57 = *(v57 - 40);
    *(v57 + 16) = v71;
    *(v57 + 32) = *(v57 - 8);
    *(v57 - 32) = v69;
    *(v57 - 16) = v70;
    *(v57 - 40) = v68;
    v57 -= 40;
    if (__CFADD__(v58++, 1))
    {
      goto LABEL_46;
    }

    goto LABEL_48;
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
}

uint64_t sub_2478CE1F4(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (__dst != a2 || &a2[40 * v11] <= __dst)
    {
      memmove(__dst, a2, 40 * v11);
    }

    v12 = &v4[40 * v11];
    if (v10 < 40 || v6 <= v7)
    {
LABEL_34:
      v32 = v6;
    }

    else
    {
      v80 = v4;
      v70 = v7;
      do
      {
        v33 = 0;
        v34 = v12;
        v62 = v6 - 40;
        v63 = v12;
        __dstb = v6;
        v68 = v5;
        while (1)
        {
          v35 = &v34[v33];
          v37 = &v34[v33 - 40];
          v38 = *&v34[v33 - 32];
          v39 = *&v34[v33 - 16];
          v77 = *v37;
          v36 = v77;
          v78 = v38;
          v79 = v39;
          v74 = *(v6 - 5);
          v40 = v74;
          v41 = *(v6 - 1);
          v75 = *(v6 - 2);
          v76 = v41;
          v42 = v38;
          v43 = v39;
          v64 = v75;
          v66 = v41;
          v44 = v36;
          v45 = v42;
          v46 = v43;
          v47 = v40;
          v48 = v64;
          v49 = sub_2478CA48C(&v77, &v74);
          if (v71)
          {

            v59 = v80;
            v60 = (v63 - v80 + v33) / 40;
            v32 = __dstb;
            if (__dstb < v80)
            {
              goto LABEL_44;
            }

            goto LABEL_42;
          }

          v50 = v49;

          if (v50)
          {
            break;
          }

          v6 = __dstb;
          if (v68 + v33 != v35)
          {
            v51 = v68 + v33 - 40;
            v52 = *v37;
            v53 = *(v37 + 16);
            *(v51 + 32) = *(v37 + 32);
            *v51 = v52;
            *(v51 + 16) = v53;
          }

          v33 -= 40;
          v34 = v63;
          v12 = &v63[v33];
          v4 = v80;
          if (&v63[v33] <= v80)
          {
            goto LABEL_34;
          }
        }

        v5 = v68 + v33 - 40;
        v32 = v62;
        if (v68 + v33 != __dstb)
        {
          v54 = *v62;
          v55 = *(v62 + 1);
          *(v68 + v33 - 8) = *(v62 + 4);
          *v5 = v54;
          *(v68 + v33 - 24) = v55;
        }

        v12 = &v63[v33];
        v4 = v80;
        if (&v63[v33] <= v80)
        {
          break;
        }

        v6 = v62;
      }

      while (v62 > v70);
      v12 = &v63[v33];
    }
  }

  else
  {
    if (__dst != __src || &__src[40 * v9] <= __dst)
    {
      memmove(__dst, __src, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 >= 40 && v6 < v5)
    {
      v65 = &v4[40 * v9];
      v67 = v5;
      while (1)
      {
        v69 = v7;
        v77 = *v6;
        v13 = v77;
        v14 = *(v6 + 24);
        v78 = *(v6 + 8);
        v79 = v14;
        __dsta = v6;
        v74 = *v4;
        v15 = v74;
        v75 = *(v4 + 8);
        v80 = v4;
        v76 = *(v4 + 24);
        v16 = v78;
        v17 = v14;
        v18 = v75;
        v19 = v76;
        v20 = v13;
        v21 = v16;
        v22 = v17;
        v23 = v15;
        v24 = v18;
        v25 = sub_2478CA48C(&v77, &v74);
        if (v71)
        {

          v59 = v80;
          v60 = (v65 - v80) / 40;
          v32 = v69;
          if (v69 < v80)
          {
            goto LABEL_44;
          }

LABEL_42:
          if (v32 >= &v59[40 * v60] || v32 != v59)
          {
LABEL_44:
            v58 = 40 * v60;
LABEL_45:
            memmove(v32, v59, v58);
          }

          return 1;
        }

        v26 = v25;

        if (!v26)
        {
          break;
        }

        v27 = __dsta;
        v6 = __dsta + 40;
        v28 = v69;
        v4 = v80;
        v29 = v67;
        if (v69 != __dsta)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 = v28 + 40;
        v12 = v65;
        if (v4 >= v65 || v6 >= v29)
        {
          goto LABEL_16;
        }
      }

      v27 = v80;
      v4 = v80 + 40;
      v28 = v69;
      v6 = __dsta;
      v29 = v67;
      if (v69 == v80)
      {
        goto LABEL_14;
      }

LABEL_13:
      v30 = *v27;
      v31 = *(v27 + 1);
      *(v28 + 4) = *(v27 + 4);
      *v28 = v30;
      *(v28 + 1) = v31;
      goto LABEL_14;
    }

LABEL_16:
    v32 = v7;
  }

  v56 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v57 = (v56 >> 4) + (v56 >> 63);
  if (v32 < v4 || v32 >= &v4[40 * v57] || v32 != v4)
  {
    v58 = 40 * v57;
    v59 = v4;
    goto LABEL_45;
  }

  return 1;
}

uint64_t sub_2478CE69C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2478CE728(v3);
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

uint64_t sub_2478CE73C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2478D889C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2478CE820(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2478D889C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55118, &qword_2478DBBC0);
  result = sub_2478D8CBC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2478D3868(&qword_27EE550F8, MEMORY[0x277CC9260]);
      result = sub_2478D896C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2478CEB7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v31 = a1;
  v6 = sub_2478D889C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v28 - v12;
  v34 = *(a3 + 16);
  if (v34)
  {
    v30 = 0;
    v13 = 0;
    v39 = *(v11 + 16);
    v40 = v11 + 16;
    v33 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v11 + 72);
    v37 = a4 + 56;
    v38 = v14;
    v15 = (v11 + 8);
    v36 = a4;
    while (1)
    {
      v35 = v13;
      v39(v41, v33 + v38 * v13, v6);
      v18 = *(a4 + 40);
      sub_2478D3868(&qword_27EE550F8, MEMORY[0x277CC9260]);
      v19 = sub_2478D896C();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
      {
        break;
      }

      v32 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v24 = ~v20;
      while (1)
      {
        v39(v10, *(v36 + 48) + v21 * v38, v6);
        sub_2478D3868(&unk_27EE55100, MEMORY[0x277CC9260]);
        v25 = sub_2478D898C();
        v16 = *v15;
        (*v15)(v10, v6);
        if (v25)
        {
          break;
        }

        v21 = (v21 + 1) & v24;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
        {
          a4 = v36;
          goto LABEL_4;
        }
      }

      result = (v16)(v41, v6);
      v27 = v31[v22];
      v31[v22] = v27 | v23;
      if ((v27 & v23) != 0)
      {
        a4 = v36;
LABEL_5:
        v17 = v35;
        goto LABEL_6;
      }

      v17 = v35;
      a4 = v36;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        return result;
      }

      ++v30;
LABEL_6:
      v13 = v17 + 1;
      if (v13 == v34)
      {
        goto LABEL_17;
      }
    }

    v16 = *v15;
LABEL_4:
    v16(v41, v6);
    goto LABEL_5;
  }

  v30 = 0;
LABEL_17:

  return sub_2478CEEC8(v31, v29, v30, a4);
}

uint64_t sub_2478CEEC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_2478D889C();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55118, &qword_2478DBBC0);
  result = sub_2478D8CCC();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_2478D3868(&qword_27EE550F8, MEMORY[0x277CC9260]);
    result = sub_2478D896C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2478CF1F0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2478D889C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2478CE820(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2478CF494();
      goto LABEL_12;
    }

    sub_2478CF6CC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2478D3868(&qword_27EE550F8, MEMORY[0x277CC9260]);
  v15 = sub_2478D896C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_2478D3868(&unk_27EE55100, MEMORY[0x277CC9260]);
      v23 = sub_2478D898C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2478D8E6C();
  __break(1u);
  return result;
}

void *sub_2478CF494()
{
  v1 = v0;
  v2 = sub_2478D889C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55118, &qword_2478DBBC0);
  v7 = *v0;
  v8 = sub_2478D8CAC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

uint64_t sub_2478CF6CC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2478D889C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55118, &qword_2478DBBC0);
  v10 = sub_2478D8CBC();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_2478D3868(&qword_27EE550F8, MEMORY[0x277CC9260]);
      result = sub_2478D896C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

unint64_t sub_2478CF9E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2478D889C();
  sub_2478D3868(&qword_27EE550F8, MEMORY[0x277CC9260]);
  v5 = sub_2478D896C();

  return sub_2478D0760(a1, v5);
}

char *sub_2478CFA80()
{
  v1 = v0;
  v32 = sub_2478D889C();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55038, &qword_2478DB848);
  v4 = *v0;
  v5 = sub_2478D8DCC();
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
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
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

char *sub_2478CFCF0()
{
  v1 = v0;
  v39 = sub_2478D889C();
  v41 = *(v39 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55030, &qword_2478DB840);
  v4 = *v0;
  v5 = sub_2478D8DCC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v40 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v37 = v4;
    v16 = v41;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v43 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(v16 + 72) * v20;
        v23 = v38;
        v22 = v39;
        (*(v16 + 16))(v38, *(v4 + 48) + v21, v39);
        v20 *= 24;
        v24 = *(v4 + 56) + v20;
        v25 = *v24;
        v42 = *(v24 + 8);
        v26 = *(v24 + 16);
        v27 = v40;
        (*(v16 + 32))(*(v40 + 48) + v21, v23, v22);
        v28 = *(v27 + 56);
        v4 = v37;
        v29 = (v28 + v20);
        v30 = v42;
        *v29 = v25;
        v29[1] = v30;
        v29[2] = v26;
        v31 = v26;
        result = v25;
        v14 = v43;
      }

      while (v43);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v33;
        v6 = v40;
        goto LABEL_18;
      }

      v19 = *(v34 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
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

uint64_t sub_2478CFF90(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2478D889C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55038, &qword_2478DB848);
  v44 = a2;
  result = sub_2478D8DDC();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_2478D3868(&qword_27EE550F8, MEMORY[0x277CC9260]);
      result = sub_2478D896C();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2478D0350(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2478D889C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55030, &qword_2478DB840);
  v53 = a2;
  result = sub_2478D8DDC();
  v14 = result;
  if (*(v11 + 16))
  {
    v59 = v10;
    v49 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v50 = (v7 + 16);
    v51 = v11;
    v52 = v7;
    v54 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v29 = v26 | (v15 << 6);
      v30 = *(v11 + 48);
      v58 = *(v52 + 72);
      v31 = v30 + v58 * v29;
      if (v53)
      {
        (*v54)(v59, v31, v6);
        v32 = (*(v11 + 56) + 24 * v29);
        v33 = *v32;
        v57 = v32[1];
        v34 = v32[2];
        v55 = v33;
        v56 = v34;
      }

      else
      {
        (*v50)(v59, v31, v6);
        v35 = *(v11 + 56) + 24 * v29;
        v37 = *v35;
        v36 = *(v35 + 8);
        v56 = *(v35 + 16);
        v57 = v36;
        v38 = v56;
        v55 = v37;
      }

      v39 = *(v14 + 40);
      sub_2478D3868(&qword_27EE550F8, MEMORY[0x277CC9260]);
      result = sub_2478D896C();
      v40 = -1 << *(v14 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v21 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v21 + 8 * v42);
          if (v46 != -1)
          {
            v22 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v41) & ~*(v21 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v54)(*(v14 + 48) + v58 * v22, v59, v6);
      v23 = (*(v14 + 56) + 24 * v22);
      v24 = v56;
      v25 = v57;
      *v23 = v55;
      v23[1] = v25;
      v23[2] = v24;
      ++*(v14 + 16);
      v11 = v51;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_36;
    }

    v47 = 1 << *(v11 + 32);
    v3 = v49;
    if (v47 >= 64)
    {
      bzero(v16, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v47;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_2478D0760(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2478D889C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2478D3868(&unk_27EE55100, MEMORY[0x277CC9260]);
      v16 = sub_2478D898C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_2478D0920(char *a1, int64_t a2, char a3)
{
  result = sub_2478D0A00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2478D0940(char *a1, int64_t a2, char a3)
{
  result = sub_2478D0B20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2478D0960(size_t a1, int64_t a2, char a3)
{
  result = sub_2478D0C2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2478D0980(size_t a1, int64_t a2, char a3)
{
  result = sub_2478D0E04(a1, a2, a3, *v3, &qword_27EE55120, &qword_2478DBBC8, &qword_27EE55010, &qword_2478DB830);
  *v3 = result;
  return result;
}

size_t sub_2478D09C0(size_t a1, int64_t a2, char a3)
{
  result = sub_2478D0E04(a1, a2, a3, *v3, &qword_27EE55128, &qword_2478DBBD0, &unk_27EE55018, &qword_2478DB838);
  *v3 = result;
  return result;
}

char *sub_2478D0A00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE550E8, &qword_2478DBBA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2478D0B20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE550F0, &qword_2478DBBA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_2478D0C2C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55110, &qword_2478DBBB8);
  v10 = *(sub_2478D889C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2478D889C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_2478D0E04(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_2478D0FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a3;
  v23 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55158, qword_2478DBBF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55148, &qword_2478DBBE0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  (*(v7 + 16))(v10, v4, v6);
  swift_getOpaqueTypeConformance2();
  sub_2478D8A7C();
  v16 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FD8, &qword_2478DB818) + 36));
  result = sub_2478BC950(v4, &qword_27EE54FD8, &qword_2478DB818);
  v18 = *(v12 + 44);
  *&v15[v18] = v16;
  if (!a2)
  {
LABEL_11:
    v19 = 0;
LABEL_14:
    sub_2478D3F5C(v15, v23);
    return v19;
  }

  if (!v22)
  {
    v19 = 0;
    goto LABEL_14;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v20 = v22 - 1;
    v21 = v16 - 1;
    while (v21 != -1)
    {
      *&v15[v18] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55150, &qword_2478DBBE8);
      swift_getAssociatedConformanceWitness();
      sub_2478D8C2C();
      if (v25)
      {
        break;
      }

      *(a2 + 8 * v19) = v24;
      if (v20 == v19)
      {
        v19 = v22;
        goto LABEL_14;
      }

      ++v19;
      --v21;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2478D1260(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_2478D889C();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_2478D152C(uint64_t a1, uint64_t a2)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FD8, &qword_2478DB818);
  v4 = *(*(v38 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v38);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - v7;
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FE0, &qword_2478DB820);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2478DA8C0;
    *(v24 + 32) = *sub_2478C2950();
    v25 = v40;
    result = sub_2478C2970(v40);
    if (!v8)
    {
      __break(1u);
      goto LABEL_22;
    }

    v27 = v8 - 1;
    v28 = v39;
    *(v25 + *(v38 + 36)) = v27;
    v43 = v24;
    sub_2478D18A4(v25, v28);
LABEL_11:
    sub_2478CB940(v28);
    sub_2478BC950(v25, &qword_27EE54FD8, &qword_2478DB818);
    return v43;
  }

  v9 = 0;
  v10 = *(a2 + 16);
  v11 = (a1 + 48);
  while (1)
  {
    if (v10)
    {
      v12 = *v11;
      v13 = *(v11 - 2);
      v14 = *(a2 + 32);
      sub_2478BCD34(0, &qword_27EE55000, 0x277CC1E90);
      v15 = v12;
      v16 = v14;
      v17 = v13;
      v18 = sub_2478D8BEC();

      if (v18)
      {
        break;
      }
    }

    ++v9;
    v11 += 3;
    if (v8 == v9)
    {
      goto LABEL_9;
    }
  }

  if (!v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FE0, &qword_2478DB820);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2478DA8C0;
    v30 = *sub_2478C2950();
    v31 = *sub_2478C295C();
    v42 = v30;
    sub_2478C39D0();
    sub_2478D8A8C();
    sub_2478D3FCC();
    sub_2478D8EEC();
    v41 = v31;
    sub_2478C3A28();
    sub_2478D8C6C();
    *(v29 + 32) = v43;
    v25 = v40;
    sub_2478C2970(v40);
    v32 = v8 - 1;
    v28 = v39;
    *(v25 + *(v38 + 36)) = v32;
    v43 = v29;
    sub_2478D18A4(v25, v28);
    goto LABEL_11;
  }

  v19 = *sub_2478C293C();
  v20 = sub_2478D8ADC();
  *(v20 + 16) = v8;
  v21 = (v20 + 32);
  v22 = v20;
  if (v8 < 4)
  {
    v23 = 0;
LABEL_16:
    v36 = v8 - v23;
    do
    {
      *v21++ = v19;
      --v36;
    }

    while (v36);
    goto LABEL_18;
  }

  v23 = v8 & 0x7FFFFFFFFFFFFFFCLL;
  v21 += v8 & 0x7FFFFFFFFFFFFFFCLL;
  v33 = vdupq_n_s64(v19);
  v34 = (v20 + 48);
  v35 = v8 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v34[-1] = v33;
    *v34 = v33;
    v34 += 2;
    v35 -= 4;
  }

  while (v35);
  if (v8 != v23)
  {
    goto LABEL_16;
  }

LABEL_18:
  result = sub_2478C2950();
  if (!v22[2])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22[4] = *result;
  result = sub_2478C295C();
  if (v9 < v22[2])
  {
    v37 = result;
    result = v22;
    v22[v9 + 4] = *v37;
    return result;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2478D18A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FD8, &qword_2478DB818);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2478D1914()
{
  result = qword_27EE54FF8;
  if (!qword_27EE54FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE54FF0, &qword_2478DB828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54FF8);
  }

  return result;
}

id sub_2478D1978(void *a1)
{
  [a1 copy];
  sub_2478D8C4C();
  v2 = swift_unknownObjectRelease();
  type metadata accessor for CSUIOpenWithMenuConfiguration(v2);
  swift_dynamicCast();
  *&v1[OBJC_IVAR___CSUIOpenWithMenuConstructor_configuration] = v6;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55140, &qword_2478DBBD8);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  sub_2478D3EF4(v7, v3 + 16);
  sub_2478D3F2C(v7);
  *&v1[OBJC_IVAR___CSUIOpenWithMenuConstructor_mutableState] = v3;
  v5.receiver = v1;
  v5.super_class = CSUIOpenWithMenuConstructor;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_2478D1A60(uint64_t a1)
{
  v2 = sub_2478D889C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2478D3868(&qword_27EE550F8, MEMORY[0x277CC9260]);
  result = MEMORY[0x24C1AD2C0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2478CC8B4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_2478D1BFC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v61 = a3;
  v9 = sub_2478D889C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v50 - v16;
  v19 = *(v18 + 72);
  if (v19)
  {
    if (a2 - a1 == 0x8000000000000000 && v19 == -1)
    {
      goto LABEL_76;
    }

    v20 = v61 - a2;
    if (v61 - a2 == 0x8000000000000000 && v19 == -1)
    {
      goto LABEL_77;
    }

    v21 = (a2 - a1) / v19;
    v67 = a1;
    v66 = a4;
    v63 = v14;
    v64 = &v50 - v16;
    v62 = v19;
    if (v21 < v20 / v19)
    {
      v22 = v21 * v19;
      if (a4 < a1 || a1 + v22 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v60 = (a4 + v22);
      v65 = a4 + v22;
      if (v22 >= 1 && a2 < v61)
      {
        v58 = *(v10 + 16);
        v59 = v10 + 16;
        v57 = (v10 + 8);
        while (1)
        {
          v25 = a2;
          v26 = a2;
          v27 = v58;
          (v58)(v17, v26, v9);
          result = v27(v14, a4, v9);
          if (!*(a5 + 16))
          {
            break;
          }

          result = sub_2478CF9E8(v17);
          if ((v28 & 1) == 0)
          {
            goto LABEL_68;
          }

          if (!*(a5 + 16))
          {
            goto LABEL_69;
          }

          v29 = *(*(a5 + 56) + 8 * result);
          result = sub_2478CF9E8(v14);
          if ((v30 & 1) == 0)
          {
            goto LABEL_70;
          }

          v31 = a4;
          v32 = v14;
          v33 = *(*(a5 + 56) + 8 * result);
          v34 = *v57;
          (*v57)(v32, v9);
          v34(v64, v9);
          if (v29 >= v33)
          {
            v36 = v31;
            v35 = v62;
            a4 = v31 + v62;
            a2 = v25;
            if (a1 < v31 || a1 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v62;
              v14 = v63;
              v17 = v64;
            }

            else
            {
              v14 = v63;
              v17 = v64;
              if (a1 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v62;
              }
            }

            v66 = a4;
          }

          else
          {
            v35 = v62;
            a2 = v25 + v62;
            a4 = v31;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v62;
              v14 = v63;
              v17 = v64;
            }

            else
            {
              v14 = v63;
              v17 = v64;
              if (a1 != v25)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v62;
              }
            }
          }

          a1 += v35;
          v67 = a1;
          if (a4 >= v60 || a2 >= v61)
          {
            goto LABEL_66;
          }
        }

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

LABEL_66:
      sub_2478CE73C(&v67, &v66, &v65);
      return 1;
    }

    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_42:
        v37 = a4 + v23;
        if (v23 >= 1)
        {
          v38 = -v19;
          v55 = a1;
          v56 = (v10 + 16);
          v53 = (v10 + 8);
          v54 = a5;
          v39 = a4 + v23;
          v40 = v61;
          v58 = -v19;
          do
          {
            v51 = v37;
            v61 = a2 + v38;
            v57 = a2;
            while (1)
            {
              if (a2 <= a1)
              {
                v67 = a2;
                v37 = v51;
                goto LABEL_65;
              }

              v60 = v40;
              v52 = v37;
              v42 = v14;
              v43 = *v56;
              v62 = v39 + v38;
              v43(v17);
              result = (v43)(v42, v61, v9);
              if (!*(a5 + 16))
              {
                goto LABEL_71;
              }

              result = sub_2478CF9E8(v17);
              if ((v44 & 1) == 0)
              {
                goto LABEL_72;
              }

              if (!*(a5 + 16))
              {
                goto LABEL_73;
              }

              v45 = *(*(a5 + 56) + 8 * result);
              v46 = v63;
              result = sub_2478CF9E8(v63);
              if ((v47 & 1) == 0)
              {
                goto LABEL_74;
              }

              a2 = v61;
              v59 = *(*(a5 + 56) + 8 * result);
              v48 = *v53;
              (*v53)(v46, v9);
              v48(v64, v9);
              if (v45 < v59)
              {
                break;
              }

              v38 = v58;
              v40 = &v60[v58];
              v37 = v62;
              if (v60 < v39 || v40 >= v39)
              {
                v41 = v62;
                swift_arrayInitWithTakeFrontToBack();
                v38 = v58;
                v37 = v41;
                a5 = v54;
                v14 = v63;
                v17 = v64;
              }

              else
              {
                a5 = v54;
                v14 = v63;
                v17 = v64;
                if (v60 != v39)
                {
                  v49 = v62;
                  swift_arrayInitWithTakeBackToFront();
                  v38 = v58;
                  v37 = v49;
                }
              }

              v39 = v37;
              a1 = v55;
              a2 = v57;
              if (v62 <= a4)
              {
                goto LABEL_63;
              }
            }

            v38 = v58;
            v40 = &v60[v58];
            if (v60 < v57 || v40 >= v57)
            {
              swift_arrayInitWithTakeFrontToBack();
              v38 = v58;
              a5 = v54;
              v14 = v63;
              v17 = v64;
            }

            else
            {
              a5 = v54;
              v14 = v63;
              v17 = v64;
              if (v60 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
                v38 = v58;
              }
            }

            a1 = v55;
            v37 = v52;
          }

          while (v39 > a4);
        }

LABEL_63:
        v67 = a2;
LABEL_65:
        v65 = v37;
        goto LABEL_66;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v19 = v62;
    goto LABEL_42;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_2478D225C(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_2478CE728(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_2478D889C() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = v10 + v15 * v14;

      sub_2478D1BFC(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_2478D241C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v149 = a1;
  v8 = sub_2478D889C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v155 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v165 = &v146 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v146 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v172 = &v146 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v152 = &v146 - v21;
  MEMORY[0x28223BE20](v20);
  v173 = MEMORY[0x277D84F90];
  v159 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_108:
    v141 = *v149;
    if (*v149)
    {

      v142 = v141;
      v143 = v161;
      sub_2478D225C(&v173, v142, v159, a5);

      v161 = v143;
      goto LABEL_111;
    }

LABEL_149:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  v148 = &v146 - v22;
  v168 = (v9 + 1);
  v169 = v9 + 2;
  v167 = (v9 + 4);
  swift_bridgeObjectRetain_n();
  v24 = 0;
  v162 = MEMORY[0x277D84F90];
  v147 = a4;
  v158 = v9;
  v170 = v17;
  v171 = a5;
  while ((v24 + 1) >= v23)
  {
    v42 = (v24 + 1);
LABEL_35:
    v62 = v159[1];
    if (v42 >= v62)
    {
      goto LABEL_57;
    }

    if (__OFSUB__(v42, v24))
    {
      goto LABEL_141;
    }

    if (v42 - v24 >= a4)
    {
      goto LABEL_57;
    }

    if (__OFADD__(v24, a4))
    {
      goto LABEL_142;
    }

    if (&v24[a4] < v62)
    {
      v62 = &v24[a4];
    }

    if (v62 < v24)
    {
      goto LABEL_143;
    }

    if (v42 == v62)
    {
      goto LABEL_57;
    }

    v157 = v62;
    v63 = *v159;
    v64 = v9[9];
    v166 = v9[2];
    v65 = (v63 + v64 * (v42 - 1));
    v163 = -v64;
    v150 = v24;
    v66 = &v24[-v42];
    v160 = v42;
    v164 = v63;
    v151 = v64;
    v67 = v63 + v42 * v64;
    v68 = v172;
    while (2)
    {
      v153 = v67;
      v154 = v66;
      v156 = v65;
      v69 = v65;
      while (1)
      {
        v70 = v166;
        (v166)(v68, v67, v8);
        v70(v17, v69, v8);
        if (!*(a5 + 16))
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_146:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_147:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_148:
          swift_bridgeObjectRelease_n();
          __break(1u);
          goto LABEL_149;
        }

        v71 = sub_2478CF9E8(v68);
        if ((v72 & 1) == 0)
        {
          goto LABEL_114;
        }

        if (!*(a5 + 16))
        {
          goto LABEL_115;
        }

        v73 = *(*(a5 + 56) + 8 * v71);
        v74 = sub_2478CF9E8(v17);
        if ((v75 & 1) == 0)
        {
          goto LABEL_116;
        }

        v76 = *(*(a5 + 56) + 8 * v74);
        v77 = *v168;
        (*v168)(v17, v8);
        (v77)(v172, v8);
        if (v73 >= v76)
        {
          break;
        }

        if (!v164)
        {
          goto LABEL_145;
        }

        v78 = *v167;
        v79 = v165;
        (*v167)(v165, v67, v8);
        swift_arrayInitWithTakeFrontToBack();
        (v78)(v69, v79, v8);
        v69 += v163;
        v67 += v163;
        v80 = __CFADD__(v66++, 1);
        v17 = v170;
        a5 = v171;
        v68 = v172;
        if (v80)
        {
          goto LABEL_45;
        }
      }

      v17 = v170;
      a5 = v171;
      v68 = v172;
LABEL_45:
      v65 = &v156[v151];
      v66 = v154 - 1;
      v67 = v153 + v151;
      if (++v160 != v157)
      {
        continue;
      }

      break;
    }

    a4 = v147;
    v24 = v150;
    v42 = v157;
LABEL_57:
    if (v42 < v24)
    {
      goto LABEL_136;
    }

    v157 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v162 = sub_2478CB740(0, *(v162 + 2) + 1, 1, v162);
    }

    v82 = *(v162 + 2);
    v81 = *(v162 + 3);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      v162 = sub_2478CB740((v81 > 1), v82 + 1, 1, v162);
    }

    v84 = v162;
    *(v162 + 2) = v83;
    v85 = v84 + 32;
    v86 = &v84[16 * v82 + 32];
    v87 = v157;
    *v86 = v24;
    *(v86 + 1) = v87;
    v173 = v84;
    v166 = *v149;
    if (!v166)
    {
      goto LABEL_148;
    }

    if (v82)
    {
      v164 = v84 + 32;
      while (1)
      {
        v88 = v83 - 1;
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v89 = *(v162 + 4);
          v90 = *(v162 + 5);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_78:
          if (v92)
          {
            goto LABEL_127;
          }

          v105 = &v162[16 * v83];
          v107 = *v105;
          v106 = *(v105 + 1);
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_130;
          }

          v111 = &v85[16 * v88];
          v113 = *v111;
          v112 = *(v111 + 1);
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v109, v114))
          {
            goto LABEL_134;
          }

          if (v109 + v114 >= v91)
          {
            if (v91 < v114)
            {
              v88 = v83 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v115 = &v162[16 * v83];
        v117 = *v115;
        v116 = *(v115 + 1);
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_92:
        if (v110)
        {
          goto LABEL_129;
        }

        v118 = &v85[16 * v88];
        v120 = *v118;
        v119 = *(v118 + 1);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_132;
        }

        if (v121 < v109)
        {
          goto LABEL_3;
        }

LABEL_99:
        if (v88 - 1 >= v83)
        {
          goto LABEL_121;
        }

        v126 = *v159;
        if (!*v159)
        {
          goto LABEL_146;
        }

        v127 = &v85[16 * v88 - 16];
        v128 = *v127;
        v129 = v88;
        v130 = &v85[16 * v88];
        v131 = *(v130 + 1);
        v132 = v158[9];
        v133 = v126 + v132 * *v127;
        v134 = v126 + v132 * *v130;
        v135 = v126 + v132 * v131;
        v136 = v171;

        v137 = v133;
        v138 = v161;
        sub_2478D1BFC(v137, v134, v135, v166, v136);

        v161 = v138;
        if (v138)
        {
          v173 = v162;
          goto LABEL_111;
        }

        if (v131 < v128)
        {
          goto LABEL_122;
        }

        v139 = *(v162 + 2);
        if (v129 > v139)
        {
          goto LABEL_123;
        }

        *v127 = v128;
        *(v127 + 1) = v131;
        if (v129 >= v139)
        {
          goto LABEL_124;
        }

        v83 = v139 - 1;
        memmove(v130, v130 + 16, 16 * (v139 - 1 - v129));
        *(v162 + 2) = v139 - 1;
        v140 = v139 > 2;
        v17 = v170;
        a5 = v171;
        v85 = v164;
        if (!v140)
        {
LABEL_3:
          v173 = v162;
          a4 = v147;
          goto LABEL_4;
        }
      }

      v93 = &v85[16 * v83];
      v94 = *(v93 - 8);
      v95 = *(v93 - 7);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_125;
      }

      v98 = *(v93 - 6);
      v97 = *(v93 - 5);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_126;
      }

      v100 = &v162[16 * v83];
      v102 = *v100;
      v101 = *(v100 + 1);
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_128;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_131;
      }

      if (v104 >= v96)
      {
        v122 = &v85[16 * v88];
        v124 = *v122;
        v123 = *(v122 + 1);
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_135;
        }

        if (v91 < v125)
        {
          v88 = v83 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

LABEL_4:
    v9 = v158;
    v23 = v159[1];
    v24 = v157;
    if (v157 >= v23)
    {
      goto LABEL_108;
    }
  }

  v160 = v23;
  v25 = v24;
  v26 = *v159;
  v27 = v9[9];
  v28 = v9;
  v29 = *v159 + v27 * (v24 + 1);
  v30 = v28[2];
  v31 = v148;
  v30(v148, v29, v8);
  v150 = v25;
  v166 = v27;
  v32 = v26 + v27 * v25;
  v33 = v26;
  v34 = v171;
  v157 = v30;
  v30(v152, v32, v8);
  if (!*(v34 + 16))
  {
    goto LABEL_137;
  }

  v35 = sub_2478CF9E8(v31);
  if ((v36 & 1) == 0)
  {
    goto LABEL_138;
  }

  if (!*(v34 + 16))
  {
    goto LABEL_139;
  }

  v164 = *(*(v34 + 56) + 8 * v35);
  v37 = sub_2478CF9E8(v152);
  if ((v38 & 1) == 0)
  {
    goto LABEL_140;
  }

  if (!v161)
  {
    v163 = *(*(v34 + 56) + 8 * v37);
    v39 = *v168;
    (*v168)(v152, v8);
    v156 = v39;
    (v39)(v148, v8);
    v40 = v150 + 2;
    v41 = v33 + v166 * (v150 + 2);
    while (1)
    {
      v42 = v160;
      if (v160 == v40)
      {
        break;
      }

      v43 = v172;
      v44 = v157;
      (v157)(v172, v41, v8);
      (v44)(v17, v29, v8);
      v45 = v171;
      if (!*(v171 + 16))
      {
        goto LABEL_117;
      }

      v46 = sub_2478CF9E8(v43);
      if ((v47 & 1) == 0)
      {
        goto LABEL_118;
      }

      if (!*(v45 + 16))
      {
        goto LABEL_119;
      }

      v48 = *(*(v45 + 56) + 8 * v46);
      v49 = sub_2478CF9E8(v17);
      if ((v50 & 1) == 0)
      {
        goto LABEL_120;
      }

      v51 = v164 < v163;
      v52 = *(*(v45 + 56) + 8 * v49);
      v53 = v156;
      (v156)(v170, v8);
      v53(v172, v8);
      v54 = v51 ^ (v48 >= v52);
      v17 = v170;
      ++v40;
      v41 += v166;
      v29 += v166;
      if ((v54 & 1) == 0)
      {
        v42 = v40 - 1;
        break;
      }
    }

    a4 = v147;
    v9 = v158;
    v24 = v150;
    if (v164 < v163)
    {
      if (v42 < v150)
      {
        goto LABEL_144;
      }

      if (v150 < v42)
      {
        v55 = v166 * (v42 - 1);
        v56 = v42 * v166;
        v57 = v42;
        v58 = v150;
        v59 = v150 * v166;
        do
        {
          if (v58 != --v57)
          {
            v60 = *v159;
            if (!*v159)
            {
              goto LABEL_147;
            }

            v61 = v42;
            v164 = *v167;
            (v164)(v155, v60 + v59, v8);
            if (v59 < v55 || v60 + v59 >= v60 + v56)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v55)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v164)(v60 + v55, v155, v8);
            v42 = v61;
          }

          ++v58;
          v55 -= v166;
          v56 -= v166;
          v59 += v166;
        }

        while (v58 < v57);
        a4 = v147;
        v9 = v158;
        v17 = v170;
        v24 = v150;
      }
    }

    a5 = v171;
    goto LABEL_35;
  }

  v145 = *v168;
  (*v168)(v152, v8);
  (v145)(v148, v8);
LABEL_111:
  swift_bridgeObjectRelease_n();
}

unint64_t sub_2478D2F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v53 = a5;
  v9 = sub_2478D889C();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v49 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  result = MEMORY[0x28223BE20](v13);
  v54 = &v39 - v18;
  v41 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v21 = *(v17 + 16);
    v20 = v17 + 16;
    v22 = *(v20 + 56);
    v50 = (v20 - 8);
    v51 = v21;
    v52 = v20;
    v47 = (v20 + 16);
    v48 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v46 = -v22;
    v24 = a1 - a3;
    v40 = v22;
    v25 = v19 + v22 * a3;
LABEL_5:
    v44 = v23;
    v45 = a3;
    v42 = v25;
    v43 = v24;
    v26 = v24;
    v27 = v23;
    while (1)
    {
      v28 = v54;
      v29 = v51;
      v51(v54, v25, v9);
      result = v29(v15, v27, v9);
      v30 = v53;
      if (!*(v53 + 16))
      {
        break;
      }

      result = sub_2478CF9E8(v28);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (!*(v30 + 16))
      {
        goto LABEL_16;
      }

      v32 = *(*(v30 + 56) + 8 * result);
      result = sub_2478CF9E8(v15);
      if ((v33 & 1) == 0)
      {
        goto LABEL_17;
      }

      v34 = *(*(v30 + 56) + 8 * result);
      v35 = v26;
      v36 = *v50;
      (*v50)(v15, v9);
      result = (v36)(v54, v9);
      if (v32 < v34)
      {
        if (!v48)
        {
          goto LABEL_18;
        }

        v37 = *v47;
        v38 = v49;
        (*v47)(v49, v25, v9);
        swift_arrayInitWithTakeFrontToBack();
        result = (v37)(v27, v38, v9);
        v27 += v46;
        v25 += v46;
        ++v26;
        if (v35 != -1)
        {
          continue;
        }
      }

      a3 = v45 + 1;
      v23 = v44 + v40;
      v24 = v43 - 1;
      v25 = v42 + v40;
      if (v45 + 1 == v41)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_2478D325C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_2478D8E0C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2478D889C();
        v8 = sub_2478D8ADC();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_2478D889C() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_2478D241C(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_2478D2F80(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2478D33E0(void **a1, uint64_t a2)
{
  v4 = *(sub_2478D889C() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2478D1518(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_2478D325C(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2478D34EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2478D3524()
{
  v1 = *(v0 + 16);
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [v1 delegate];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      [v3 openWithMenuFromConstructorDidSelectAppStoreItem_];
    }

    swift_unknownObjectRelease();
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2478D3614(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2478D365C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for CSUIOpenWithMenuConfigurationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
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

uint64_t storeEnumTagSinglePayload for CSUIOpenWithMenuConfigurationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2478D3868(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_2478D3AF0()
{
  v0 = sub_2478D88BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2478D89AC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2478BCD34(0, &unk_27EE55060, 0x277D750C8);
  sub_2478D899C();
  sub_2478BCD34(0, &qword_27EE551C0, 0x277CCA8D8);
  sub_2478D86F8();
  sub_2478D88AC();
  sub_2478D8A0C();
  v4 = sub_2478D8C1C();
  [v4 setAttributes_];
  return v4;
}

uint64_t sub_2478D3C88()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2478D3CD8()
{
  v1 = v0[2];
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [v1 delegate];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      type metadata accessor for CSUIBoundBundle();
      v4 = v0[3];
      v5 = v0[4];
      v10 = v0[6];
      v11 = v5;
      v6 = v4;
      sub_2478BDAA4(&v11, v9, &qword_27EE550C8, &qword_2478DBB88);
      sub_2478BDAA4(&v10, v9, &qword_27EE550D0, &qword_2478DBB90);
      v7 = sub_2478C3084((v0 + 3));
      [v3 openWithMenuFromConstructor:v1 didSelectBoundBundle:v7];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

unint64_t sub_2478D3E64()
{
  result = qword_27EE550D8;
  if (!qword_27EE550D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE550D8);
  }

  return result;
}

uint64_t sub_2478D3EC0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2478CEB7C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2478D3F5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55148, &qword_2478DBBE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2478D3FCC()
{
  result = qword_27EE55168;
  if (!qword_27EE55168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE55168);
  }

  return result;
}

uint64_t sub_2478D414C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2478D417C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *sub_2478D41B4()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_2478D4228()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_2478D4258(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

double sub_2478D42B0()
{
  v0 = swift_unknownObjectWeakInit();
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 8) = 0u;
  return result;
}

uint64_t sub_2478D42E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  swift_unknownObjectWeakInit();
  result = swift_unknownObjectRelease();
  a7[1] = a1;
  a7[2] = a2;
  a7[3] = a3;
  a7[4] = a4;
  a7[5] = a5;
  a7[6] = a6;
  return result;
}

char *CSUISetHandlerFlow.init(bindable:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE551A0, &qword_2478DBE00);
  v3 = swift_allocObject();
  *(v3 + 72) = 0;
  sub_2478D44E8(v13, v3 + 16);
  sub_2478D4520(v13);
  *&v1[OBJC_IVAR___CSUISetHandlerFlow_mutableState] = v3;
  *&v1[OBJC_IVAR___CSUISetHandlerFlow_bindable] = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 defaultConfigurationForDefaultApplicationSelection];
  v7 = [objc_allocWithZone(CSUIOpenWithMenuConstructor) initWithConfiguration_];

  *&v1[OBJC_IVAR___CSUISetHandlerFlow_constructor] = v7;
  v12.receiver = v1;
  v12.super_class = CSUISetHandlerFlow;
  v8 = objc_msgSendSuper2(&v12, sel_init);
  v9 = *&v8[OBJC_IVAR___CSUISetHandlerFlow_constructor];
  v10 = v8;
  [v9 setDelegate_];

  return v10;
}

uint64_t sub_2478D45E4()
{
  v1 = *(v0 + OBJC_IVAR___CSUISetHandlerFlow_mutableState);
  os_unfair_lock_lock(v1 + 18);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v1 + 18);
  return Strong;
}

uint64_t sub_2478D46A8()
{
  v1 = *(v0 + OBJC_IVAR___CSUISetHandlerFlow_mutableState);
  os_unfair_lock_lock(v1 + 18);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v1 + 18);

  return swift_unknownObjectRelease();
}

BOOL sub_2478D4760()
{
  v1 = *(v0 + OBJC_IVAR___CSUISetHandlerFlow_mutableState);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 24) != 0;
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

id sub_2478D4824()
{
  v1 = *(v0 + OBJC_IVAR___CSUISetHandlerFlow_mutableState);
  os_unfair_lock_lock((v1 + 72));
  v2 = [*(v1 + 24) representativeBundle];
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

void sub_2478D487C()
{
  v2 = v0;
  v12[1] = *MEMORY[0x277D85DE8];
  if (([v0 isPrepared] & 1) == 0)
  {
    v3 = *&v0[OBJC_IVAR___CSUISetHandlerFlow_constructor];
    v4 = *&v0[OBJC_IVAR___CSUISetHandlerFlow_bindable];
    v12[0] = 0;
    v5 = [v3 prepareMenuForBindable:v4 error:v12];
    if (v5)
    {
      v6 = v5;
      v7 = v12[0];
      v8 = sub_2478BB4A0();
      if (!v1)
      {
        v10 = *&v2[OBJC_IVAR___CSUISetHandlerFlow_mutableState];
        MEMORY[0x28223BE20](v8);
        os_unfair_lock_lock((v10 + 72));
        sub_2478D49FC((v10 + 16));
        os_unfair_lock_unlock((v10 + 72));
      }
    }

    else
    {
      v9 = v12[0];
      sub_2478D881C();

      swift_willThrow();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2478D49FC(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = a1[1];
  v7 = v3;

  a1[1] = v3;
  v8 = a1[3];

  a1[2] = v4;
  a1[3] = v5;
  return result;
}

void sub_2478D4AE0()
{
  v1 = v0;
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2478D893C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([v1 isPrepared] & 1) == 0)
  {
    v7 = sub_2478C3DA4();
    (*(v3 + 16))(v6, v7, v2);
    v8 = sub_2478D891C();
    v9 = sub_2478D8BAC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2478B3000, v8, v9, "Open-with flow building menu without being prepared!", v10, 2u);
      MEMORY[0x24C1ADC70](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v22[0] = 0;
    v11 = [v1 prepareAndReturnError_];
    v12 = v22[0];
    if (!v11)
    {
      goto LABEL_9;
    }

    v13 = v22[0];
  }

  v14 = *&v1[OBJC_IVAR___CSUISetHandlerFlow_constructor];
  v15 = *&v1[OBJC_IVAR___CSUISetHandlerFlow_mutableState];
  os_unfair_lock_lock((v15 + 72));
  v16 = *(v15 + 24);
  if (v16)
  {
    v17 = v16;
    os_unfair_lock_unlock((v15 + 72));
    v22[0] = 0;
    v18 = [v14 buildUIMenuForPreparedMenu:v17 withError:v22];

    v12 = v22[0];
    if (v18)
    {
      v19 = v22[0];
LABEL_10:
      v21 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_9:
    v20 = v12;
    sub_2478D881C();

    swift_willThrow();
    goto LABEL_10;
  }

  __break(1u);
}

void __swiftcall CSUISetHandlerFlow.init()(CSUISetHandlerFlow *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_2478D4F50(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2478D88BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2478D89AC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = *(v3 + OBJC_IVAR___CSUISetHandlerFlow_mutableState);
  os_unfair_lock_lock((v9 + 72));
  v10 = *(v9 + 40);
  if (v10)
  {
    v11 = *(v9 + 32);
    v12 = *(v9 + 40);

    os_unfair_lock_unlock((v9 + 72));
    v13 = [a1 localizedName];
    v14 = sub_2478D89EC();
    v40 = v15;

    sub_2478D899C();
    sub_2478BCD34(0, &qword_27EE551C0, 0x277CCA8D8);
    sub_2478D86F8();
    sub_2478D88AC();
    sub_2478D8A0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE551C8, &unk_2478DBE08);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2478DAEF0;
    v17 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v18 = sub_2478D7DC0();
    *(v16 + 32) = v11;
    *(v16 + 40) = v10;
    *(v16 + 96) = v17;
    *(v16 + 104) = v18;
    *(v16 + 64) = v18;
    *(v16 + 72) = v14;
    *(v16 + 80) = v40;

    sub_2478D89FC();

    sub_2478D899C();
    sub_2478D86F8();
    sub_2478D88AC();
    sub_2478D8A0C();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_2478DAEF0;
    v20 = MEMORY[0x277D837D0];
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v40;
    *(v19 + 96) = v20;
    *(v19 + 104) = v18;
    *(v19 + 72) = v11;
    *(v19 + 80) = v10;

    sub_2478D89FC();

    sub_2478D899C();
    sub_2478D86F8();
    sub_2478D88AC();
    sub_2478D8A0C();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2478DA8C0;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = v18;
    *(v21 + 32) = v11;
    *(v21 + 40) = v10;
    sub_2478D89FC();

    sub_2478D899C();
    sub_2478D86F8();
    sub_2478D88AC();
    sub_2478D8A0C();
    sub_2478D899C();
    sub_2478D86F8();
    sub_2478D88AC();
    sub_2478D8A0C();
    v22 = sub_2478D89BC();

    v23 = sub_2478D89BC();

    v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];

    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;

    v26 = sub_2478D89BC();

    v45 = sub_2478D7E4C;
    v46 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2478D56F8;
    v44 = &block_descriptor_2;
    v27 = _Block_copy(&aBlock);

    v28 = objc_opt_self();
    v29 = [v28 actionWithTitle:v26 style:0 handler:v27];
    _Block_release(v27);

    [v24 addAction_];
    v30 = swift_allocObject();
    *(v30 + 16) = a2;
    *(v30 + 24) = a3;

    v31 = sub_2478D89BC();

    v45 = sub_2478D7E70;
    v46 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2478D56F8;
    v44 = &block_descriptor_7_0;
    v32 = _Block_copy(&aBlock);

    v33 = [v28 actionWithTitle:v31 style:0 handler:v32];
    _Block_release(v32);

    [v24 addAction_];
    v34 = swift_allocObject();
    *(v34 + 16) = a2;
    *(v34 + 24) = a3;

    v35 = sub_2478D89BC();

    v45 = sub_2478D7E7C;
    v46 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2478D56F8;
    v44 = &block_descriptor_13_0;
    v36 = _Block_copy(&aBlock);

    v37 = [v28 actionWithTitle:v35 style:1 handler:v36];
    _Block_release(v36);

    [v24 addAction_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2478D56F8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2478D5760(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_2478D8B4C();
  v3[7] = sub_2478D8B3C();
  v5 = sub_2478D8AFC();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x2822009F8](sub_2478D5800, v5, v4);
}

uint64_t sub_2478D5800()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v10 = *(v0 + 24);
  v3 = sub_2478D8B3C();
  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  type metadata accessor for CSUIHandlerPreferenceType(0);
  *v6 = v0;
  v6[1] = sub_2478D5924;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 16, v3, v8, 0xD000000000000037, 0x80000002478DA7C0, sub_2478D7F48, v4, v7);
}

uint64_t sub_2478D5924()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v8 = *v0;

  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2478D5A84, v6, v5);
}

uint64_t sub_2478D5A84()
{
  v1 = v0[7];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

void sub_2478D5AE8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55258, &qword_2478DBF50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_2478D4F50(v17, sub_2478D8628, v13);
  v15 = v14;

  if ([a4 respondsToSelector_])
  {
    [a4 presentHandlerPreferenceTypeSelectionViewController:v15 forSetHandlerFlow:a2];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2478D5CEC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_2478D8B4C();
  v2[6] = sub_2478D8B3C();
  v4 = sub_2478D8AFC();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_2478D5D88, v4, v3);
}

uint64_t sub_2478D5D88()
{
  v1 = *(v0[4] + OBJC_IVAR___CSUISetHandlerFlow_bindable);
  v2 = sub_2478BB444();
  v3 = *(v2 + 16);
  if (v3 != 1)
  {
    if (!v3)
    {
      v4 = v0[6];

LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

    v11 = v0[4];

    v12 = [v11 delegate];
    v0[9] = v12;
    if (!v12)
    {
      v16 = v0[6];

      goto LABEL_15;
    }

    v13 = v12;
    if ([v12 respondsToSelector_])
    {
      v14 = v0[6];
      v15 = v0[4];
      swift_unknownObjectRetain();

      v10 = [v13 handlerPreferenceTypeForSetHandlerFlow_];
      swift_unknownObjectRelease_n();
      goto LABEL_16;
    }

    if (![v13 respondsToSelector_])
    {
      v20 = v0[6];

      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    v17 = v0[5];
    v0[10] = sub_2478D8B3C();
    v18 = sub_2478D8AFC();
    v9 = v19;
    v0[11] = v18;
    v0[12] = v19;
    v7 = sub_2478D5F78;
    v8 = v18;

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  v5 = v0[6];
  v6 = v2;

  if (!*(v6 + 16))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  v10 = *(v6 + 32);

LABEL_16:
  v21 = v0[1];

  return v21(v10);
}

uint64_t sub_2478D5F78()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v10 = *(v0 + 24);
  v3 = sub_2478D8B3C();
  *(v0 + 104) = v3;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  v4[1] = vextq_s8(v10, v10, 8uLL);
  v4[2].i64[0] = v1;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  type metadata accessor for CSUIHandlerPreferenceType(0);
  *v6 = v0;
  v6[1] = sub_2478D60A4;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 16, v3, v8, 0xD000000000000037, 0x80000002478DA7C0, sub_2478D86EC, v4, v7);
}

uint64_t sub_2478D60A4()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_2478D6204, v6, v5);
}

uint64_t sub_2478D6204()
{
  v1 = v0[10];

  v0[16] = v0[2];
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_2478D6270, v2, v3);
}

uint64_t sub_2478D6270()
{
  v1 = v0[9];
  v2 = v0[6];

  swift_unknownObjectRelease();
  v3 = v0[16];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2478D62E0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_2478D893C();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478D63A0, 0, 0);
}

uint64_t sub_2478D63A0()
{
  v0[11] = *(v0[7] + OBJC_IVAR___CSUISetHandlerFlow_bindable);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2478D644C;
  v2 = v0[6];

  return sub_2478BB504(v2);
}

uint64_t sub_2478D644C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2478D6614;
  }

  else
  {
    v3 = sub_2478D6560;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2478D6560()
{
  v1 = [*(v0 + 56) delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      [v2 setHandlerFlow:*(v0 + 56) didSetHandlerPreferenceOfType:1 toBundle:*(v0 + 48)];
    }

    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2478D6614()
{
  v49 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = sub_2478C3DA4();
  (*(v3 + 16))(v2, v7, v4);
  v8 = v5;
  swift_unknownObjectRetain();
  v9 = v1;
  v10 = sub_2478D891C();
  v11 = sub_2478D8BAC();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 88);
    v44 = *(v0 + 104);
    v45 = *(v0 + 72);
    v46 = *(v0 + 64);
    v47 = *(v0 + 80);
    v13 = *(v0 + 48);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v14 = 138412802;
    *(v14 + 4) = v12;
    *v15 = v12;
    *(v14 + 12) = 2080;
    v17 = v12;
    v18 = [v13 description];
    v19 = sub_2478D89EC();
    v21 = v20;

    v22 = sub_2478C0DB0(v19, v21, &v48);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2080;
    swift_getErrorValue();
    v24 = *(v0 + 16);
    v23 = *(v0 + 24);
    v25 = *(v0 + 32);
    v26 = sub_2478D8EAC();
    v28 = sub_2478C0DB0(v26, v27, &v48);

    *(v14 + 24) = v28;
    _os_log_impl(&dword_2478B3000, v10, v11, "could not set weak binding for %@ to %s: %s", v14, 0x20u);
    sub_2478BC950(v15, &qword_27EE54C30, &qword_2478DAF10);
    MEMORY[0x24C1ADC70](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1ADC70](v16, -1, -1);
    MEMORY[0x24C1ADC70](v14, -1, -1);

    (*(v45 + 8))(v47, v46);
  }

  else
  {
    v30 = *(v0 + 72);
    v29 = *(v0 + 80);
    v31 = *(v0 + 64);

    (*(v30 + 8))(v29, v31);
  }

  v32 = [*(v0 + 56) delegate];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 respondsToSelector_];
    v35 = *(v0 + 104);
    if (v34)
    {
      v37 = *(v0 + 48);
      v36 = *(v0 + 56);
      v38 = *(v0 + 104);
      v39 = sub_2478D880C();
      [v33 setHandlerFlow:v36 didFailToSetHandlerPreferenceOfType:1 toBundle:v37 error:v39];

      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
    v40 = v35;
  }

  else
  {
    v40 = *(v0 + 104);
  }

LABEL_10:
  v41 = *(v0 + 80);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_2478D6964(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_2478D893C();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478D6A24, 0, 0);
}

uint64_t sub_2478D6A24()
{
  v0[11] = *(v0[7] + OBJC_IVAR___CSUISetHandlerFlow_bindable);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2478D6AD0;
  v2 = v0[6];

  return sub_2478BB65C(v2);
}

uint64_t sub_2478D6AD0()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2478D6C98;
  }

  else
  {
    v3 = sub_2478D6BE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2478D6BE4()
{
  v1 = [*(v0 + 56) delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      [v2 setHandlerFlow:*(v0 + 56) didSetHandlerPreferenceOfType:2 toBundle:*(v0 + 48)];
    }

    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2478D6C98()
{
  v49 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = sub_2478C3DA4();
  (*(v3 + 16))(v2, v7, v4);
  v8 = v5;
  swift_unknownObjectRetain();
  v9 = v1;
  v10 = sub_2478D891C();
  v11 = sub_2478D8BAC();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 88);
    v44 = *(v0 + 104);
    v45 = *(v0 + 72);
    v46 = *(v0 + 64);
    v47 = *(v0 + 80);
    v13 = *(v0 + 48);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v14 = 138412802;
    *(v14 + 4) = v12;
    *v15 = v12;
    *(v14 + 12) = 2080;
    v17 = v12;
    v18 = [v13 description];
    v19 = sub_2478D89EC();
    v21 = v20;

    v22 = sub_2478C0DB0(v19, v21, &v48);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2080;
    swift_getErrorValue();
    v24 = *(v0 + 16);
    v23 = *(v0 + 24);
    v25 = *(v0 + 32);
    v26 = sub_2478D8EAC();
    v28 = sub_2478C0DB0(v26, v27, &v48);

    *(v14 + 24) = v28;
    _os_log_impl(&dword_2478B3000, v10, v11, "could not set strong binding for %@ to %s: %s", v14, 0x20u);
    sub_2478BC950(v15, &qword_27EE54C30, &qword_2478DAF10);
    MEMORY[0x24C1ADC70](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1ADC70](v16, -1, -1);
    MEMORY[0x24C1ADC70](v14, -1, -1);

    (*(v45 + 8))(v47, v46);
  }

  else
  {
    v30 = *(v0 + 72);
    v29 = *(v0 + 80);
    v31 = *(v0 + 64);

    (*(v30 + 8))(v29, v31);
  }

  v32 = [*(v0 + 56) delegate];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 respondsToSelector_];
    v35 = *(v0 + 104);
    if (v34)
    {
      v37 = *(v0 + 48);
      v36 = *(v0 + 56);
      v38 = *(v0 + 104);
      v39 = sub_2478D880C();
      [v33 setHandlerFlow:v36 didFailToSetHandlerPreferenceOfType:2 toBundle:v37 error:v39];

      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
    v40 = v35;
  }

  else
  {
    v40 = *(v0 + 104);
  }

LABEL_10:
  v41 = *(v0 + 80);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t CSUISetHandlerFlow.openWithMenu(from:didSelect:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE551E0, &qword_2478DBE38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_2478D8B6C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2478D8B4C();
  v9 = v2;
  swift_unknownObjectRetain();
  v10 = sub_2478D8B3C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a2;
  sub_2478D791C(0, 0, v7, &unk_2478DBE50, v11);
}

uint64_t sub_2478D7120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_2478D893C();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = sub_2478D8B4C();
  v5[8] = sub_2478D8B3C();
  v10 = swift_task_alloc();
  v5[9] = v10;
  *v10 = v5;
  v10[1] = sub_2478D723C;

  return sub_2478D5CEC(a5);
}

uint64_t sub_2478D723C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v9 = *v1;
  v2[10] = a1;

  v7 = sub_2478D8AFC();
  v2[11] = v7;
  v2[12] = v6;

  return MEMORY[0x2822009F8](sub_2478D7388, v7, v6);
}

uint64_t sub_2478D7388()
{
  v1 = v0[10];
  if (!v1)
  {
    v9 = v0[8];
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];

    v13 = sub_2478C3DA4();
    (*(v11 + 16))(v10, v13, v12);
    v14 = sub_2478D891C();
    v15 = sub_2478D8BAC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2478B3000, v14, v15, "handler preference type is none, sending failed-to-set to delegate", v16, 2u);
      MEMORY[0x24C1ADC70](v16, -1, -1);
    }

    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];
    v20 = v0[2];

    (*(v18 + 8))(v17, v19);
    v21 = [v20 delegate];
    if (v21)
    {
      v22 = v21;
      if ([v21 respondsToSelector_])
      {
        v24 = v0[2];
        v23 = v0[3];
        v25 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
        v26 = sub_2478D880C();
        [v22 setHandlerFlow:v24 didFailToSetHandlerPreferenceOfType:0 toBundle:v23 error:v26];

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

LABEL_17:
    v28 = v0[6];

    v29 = v0[1];

    return v29();
  }

  if (v1 != 2)
  {
    if (v1 == 1)
    {
      v2 = swift_task_alloc();
      v0[13] = v2;
      *v2 = v0;
      v2[1] = sub_2478D7674;
      v4 = v0[2];
      v3 = v0[3];

      return sub_2478D62E0(v3);
    }

    v27 = v0[8];

    goto LABEL_17;
  }

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_2478D77FC;
  v8 = v0[2];
  v7 = v0[3];

  return sub_2478D6964(v7);
}

uint64_t sub_2478D7674()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_2478D7794, v4, v3);
}

uint64_t sub_2478D7794()
{
  v1 = v0[8];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2478D77FC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_2478D86E8, v4, v3);
}

uint64_t sub_2478D791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE551E0, &qword_2478DBE38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2478D83B4(a3, v27 - v11);
  v13 = sub_2478D8B6C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2478BC950(v12, &qword_27EE551E0, &qword_2478DBE38);
  }

  else
  {
    sub_2478D8B5C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2478D8AFC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2478D8A2C() + 32;
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

      sub_2478BC950(a3, &qword_27EE551E0, &qword_2478DBE38);

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

  sub_2478BC950(a3, &qword_27EE551E0, &qword_2478DBE38);
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

unint64_t sub_2478D7DC0()
{
  result = qword_27EE551D0;
  if (!qword_27EE551D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE551D0);
  }

  return result;
}

uint64_t sub_2478D7E14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2478D7E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6(a3);
}

uint64_t sub_2478D7F68(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2478D8060;

  return v7(a1);
}

uint64_t sub_2478D8060()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2478D815C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2478BDB0C;

  return sub_2478D7120(v4, v5, v6, v2, v3);
}

uint64_t sub_2478D81F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2478D8250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2478D831C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2478BA494;

  return sub_2478D7120(v4, v5, v6, v2, v3);
}

uint64_t sub_2478D83B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE551E0, &qword_2478DBE38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2478D8424(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2478BDB0C;

  return sub_2478D7F68(a1, v5);
}

uint64_t sub_2478D84DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2478BA494;

  return sub_2478D7F68(a1, v5);
}

uint64_t sub_2478D8594()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55258, &qword_2478DBF50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2478D8628()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55258, &qword_2478DBF50) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55258, &qword_2478DBF50);
  return sub_2478D8B2C();
}

uint64_t sub_2478D86F8()
{
  v0 = sub_2478D89BC();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    return v1;
  }

  __break(1u);
  return sub_2478D876C();
}