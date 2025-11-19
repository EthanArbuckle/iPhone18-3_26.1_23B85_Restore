uint64_t sub_22D7813CC(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_22D781428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmConcern(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  do
  {
    sub_22D77FDE0(v14, v11, type metadata accessor for AlarmConcern);
    sub_22D77FDE0(v15, v8, type metadata accessor for AlarmConcern);
    v17 = sub_22D77F8B8();
    v18 = sub_22D77F8B8();
    sub_22D77FE48(v8, type metadata accessor for AlarmConcern);
    sub_22D77FE48(v11, type metadata accessor for AlarmConcern);
    result = v17 == v18;
    if (v17 != v18)
    {
      break;
    }

    v15 += v16;
    v14 += v16;
    --v12;
  }

  while (v12);
  return result;
}

uint64_t sub_22D7815E4(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02450, &qword_22D820B48);
  v3 = *(v32 - 8);
  v31 = *(v3 + 64);
  MEMORY[0x28223BE20](v32);
  v30 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02458, &qword_22D820B50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v9 = sub_22D81B658();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02460, &qword_22D820B58);
  v29 = *(v27 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v15 = &v24 - v14;
  v34 = *(a2 + 16);
  sub_22D81A198();
  sub_22D81B648();
  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  v16 = sub_22D81B678();
  v35 = v16;
  v17 = sub_22D81B638();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023F8, &qword_22D820AD0);
  sub_22D7548B0(&unk_280CD15B8, &qword_27DA023F8, &qword_22D820AD0);
  sub_22D785F28();
  sub_22D81AD48();
  sub_22D764440(v8, &qword_27DA02458, &qword_22D820B50);

  (*(v25 + 8))(v12, v26);

  v18 = v30;
  v19 = v32;
  (*(v3 + 16))(v30, v33, v32);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  (*(v3 + 32))(v21 + v20, v18, v19);
  sub_22D7548B0(qword_280CD15C8, &unk_27DA02460, &qword_22D820B58);
  v22 = v27;
  sub_22D81AD58();

  (*(v29 + 8))(v15, v22);
  swift_beginAccess();
  sub_22D81ACD8();
  swift_endAccess();
  return sub_22D81B518();
}

uint64_t sub_22D781A74(uint64_t a1)
{
  v2 = type metadata accessor for AlarmReport(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02470, &qword_22D820B60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  sub_22D77FDE0(a1, v5, type metadata accessor for AlarmReport);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02450, &qword_22D820B48);
  sub_22D81B528();
  return (*(v7 + 8))(v10, v6);
}

void sub_22D781C1C(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;
  sub_22D81A398();
  v10 = v8;
  v11 = sub_22D807780(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_22D8095F8(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_22D807780(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_22D81BB58();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_22D80CEC8();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v10;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD00000000000001BLL, 0x800000022D829AE0);
    sub_22D81B908();
    MEMORY[0x2318D1A50](39, 0xE100000000000000);
    sub_22D81B918();
    __break(1u);
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v28 = *v5;
      v29 = *a3;
      sub_22D81A398();
      v10 = v28;
      v30 = sub_22D807780(v7, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v29[3] < v34)
      {
        sub_22D8095F8(v34, 1);
        v35 = *a3;
        v30 = sub_22D807780(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v10;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_22D781FAC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22D792DD4(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_22D7824F8((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
      result = sub_22D792ECC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_22D792ECC((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_22D7824F8((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_22D7824F8(char *__dst, char *__src, char *a3, char *a4)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
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

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
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
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
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
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_22D7826EC(void *a1, char *a2)
{
  v4 = sub_22D81A8C8();
  v5 = *(v4 - 8);
  v286 = v4;
  v287 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v283 = v258 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v276 = v258 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v258 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v258 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v258 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v258 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v277 = v258 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v278 = v258 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v279 = v258 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v280 = v258 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v281 = v258 - v33;
  MEMORY[0x28223BE20](v32);
  v284 = v258 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA023A0, &unk_22D820A20);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v38 = MEMORY[0x28223BE20](v37);
  v39 = MEMORY[0x28223BE20](v38);
  v41 = v258 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = v258 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = v258 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v49 = MEMORY[0x28223BE20](v48);
  v50 = MEMORY[0x28223BE20](v49);
  v51 = MEMORY[0x28223BE20](v50);
  v52 = MEMORY[0x28223BE20](v51);
  v282 = v258 - v53;
  MEMORY[0x28223BE20](v52);
  v60 = a2;
  v61 = a1;
  v285 = v258 - v62;
  v63 = a1[1];
  v64 = a2[1];
  if (v63)
  {
    if (!v64)
    {
      goto LABEL_28;
    }

    if (*a1 != *a2 || v63 != v64)
    {
      v274 = v47;
      v275 = v54;
      v272 = v23;
      v273 = v44;
      v269 = v20;
      v271 = v41;
      v65 = v17;
      v66 = v56;
      v67 = v35;
      v68 = v14;
      v69 = v57;
      v70 = v58;
      v71 = v59;
      v72 = v55;
      v73 = v61;
      v74 = sub_22D81BB08();
      v60 = a2;
      v61 = v73;
      v55 = v72;
      v59 = v71;
      v58 = v70;
      v57 = v69;
      v14 = v68;
      v35 = v67;
      v56 = v66;
      v17 = v65;
      v41 = v271;
      v23 = v272;
      v20 = v269;
      v44 = v273;
      v47 = v274;
      v54 = v275;
      if ((v74 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  else if (v64)
  {
    goto LABEL_28;
  }

  v75 = v61[3];
  v76 = *(v60 + 3);
  if (v75)
  {
    if (!v76)
    {
      goto LABEL_28;
    }

    v77 = v17;
    v265 = v56;
    v267 = v59;
    v268 = v55;
    v275 = v54;
    v266 = v58;
    v264 = v57;
    v78 = v61;
    v79 = v60;
    if ((v61[2] != *(v60 + 2) || v75 != v76) && (sub_22D81BB08() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v77 = v17;
    v79 = v60;
    v265 = v56;
    v78 = v61;
    v267 = v59;
    v268 = v55;
    v275 = v54;
    v266 = v58;
    v264 = v57;
    if (v76)
    {
      goto LABEL_28;
    }
  }

  v273 = v44;
  v274 = v47;
  v271 = v41;
  v272 = v23;
  v260 = v14;
  v80 = type metadata accessor for AlarmReport(0);
  v270 = v79;
  v263 = v80;
  v81 = *(v80 + 24);
  v82 = v286;
  v262 = v35;
  v83 = *(v35 + 48);
  v261 = v78;
  v84 = v285;
  sub_22D7640C4(&v78[v81], v285, &qword_27DA02000, &qword_22D81F160);
  v85 = &v270[v81];
  v86 = v287;
  v87 = v84;
  sub_22D7640C4(v85, v84 + v83, &qword_27DA02000, &qword_22D81F160);
  v89 = v86 + 48;
  v88 = *(v86 + 48);
  if (v88(v87, 1, v82) == 1)
  {
    if (v88(v87 + v83, 1, v82) != 1)
    {
      goto LABEL_26;
    }

    v90 = v77;
    sub_22D764440(v87, &qword_27DA02000, &qword_22D81F160);
  }

  else
  {
    v91 = v284;
    sub_22D7640C4(v87, v284, &qword_27DA02000, &qword_22D81F160);
    if (v88(v87 + v83, 1, v82) == 1)
    {
      (*(v86 + 8))(v91, v82);
      goto LABEL_26;
    }

    v90 = v77;
    v92 = *(v86 + 32);
    v259 = v88;
    v93 = v283;
    v92(v283, v87 + v83, v82);
    sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
    v94 = v87;
    v95 = sub_22D81B1F8();
    v96 = *(v86 + 8);
    v97 = v93;
    v89 = v86 + 48;
    v88 = v259;
    v96(v97, v82);
    v96(v91, v82);
    sub_22D764440(v94, &qword_27DA02000, &qword_22D81F160);
    if ((v95 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v269 = v20;
  v98 = v263[7];
  v99 = *(v262 + 48);
  v100 = v282;
  sub_22D7640C4(&v261[v98], v282, &qword_27DA02000, &qword_22D81F160);
  v87 = v100;
  sub_22D7640C4(&v270[v98], v100 + v99, &qword_27DA02000, &qword_22D81F160);
  if (v88(v100, 1, v82) == 1)
  {
    if (v88(v100 + v99, 1, v82) == 1)
    {
      sub_22D764440(v100, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_31;
    }

LABEL_26:
    v105 = v87;
LABEL_27:
    sub_22D764440(v105, &unk_27DA023A0, &unk_22D820A20);
    goto LABEL_28;
  }

  v101 = v100;
  v102 = v281;
  sub_22D7640C4(v101, v281, &qword_27DA02000, &qword_22D81F160);
  v103 = v88(v87 + v99, 1, v82);
  v104 = v287;
  if (v103 == 1)
  {
    (*(v287 + 8))(v102, v82);
    goto LABEL_26;
  }

  v108 = *(v287 + 32);
  v259 = v88;
  v109 = v89;
  v110 = v283;
  v108(v283, v87 + v99, v82);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
  v111 = v87;
  v112 = sub_22D81B1F8();
  v113 = *(v104 + 8);
  v114 = v110;
  v89 = v109;
  v88 = v259;
  v113(v114, v82);
  v113(v102, v82);
  sub_22D764440(v111, &qword_27DA02000, &qword_22D81F160);
  if ((v112 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  v115 = v263[8];
  v116 = *(v262 + 48);
  v117 = v268;
  sub_22D7640C4(&v261[v115], v268, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v270[v115], v117 + v116, &qword_27DA02000, &qword_22D81F160);
  if (v88(v117, 1, v82) == 1)
  {
    if (v88(v117 + v116, 1, v82) == 1)
    {
      v118 = v82;
      v259 = v88;
      sub_22D764440(v117, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_38;
    }

LABEL_36:
    v105 = v117;
    goto LABEL_27;
  }

  v119 = v280;
  sub_22D7640C4(v117, v280, &qword_27DA02000, &qword_22D81F160);
  v120 = v88(v117 + v116, 1, v82);
  v121 = v287;
  if (v120 == 1)
  {
    (*(v287 + 8))(v119, v82);
    goto LABEL_36;
  }

  v259 = v88;
  v122 = v89;
  v123 = v283;
  (*(v287 + 32))(v283, v117 + v116, v82);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
  v124 = v119;
  v125 = sub_22D81B1F8();
  v126 = *(v121 + 8);
  v127 = v123;
  v89 = v122;
  v126(v127, v82);
  v126(v124, v82);
  sub_22D764440(v117, &qword_27DA02000, &qword_22D81F160);
  v118 = v82;
  if ((v125 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_38:
  v128 = v263[9];
  v129 = *(v262 + 48);
  v130 = v261;
  v131 = v275;
  sub_22D7640C4(&v261[v128], v275, &qword_27DA02000, &qword_22D81F160);
  v132 = v270;
  sub_22D7640C4(&v270[v128], v131 + v129, &qword_27DA02000, &qword_22D81F160);
  v133 = v259;
  if (v259(v131, 1, v118) == 1)
  {
    if (v133(v131 + v129, 1, v118) == 1)
    {
      v134 = v133;
      v286 = v90;
      sub_22D764440(v131, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_45;
    }

LABEL_43:
    v105 = v131;
    goto LABEL_27;
  }

  v135 = v279;
  sub_22D7640C4(v131, v279, &qword_27DA02000, &qword_22D81F160);
  v136 = v133;
  v137 = v133(v131 + v129, 1, v118);
  v138 = v283;
  if (v137 == 1)
  {
    (*(v287 + 8))(v135, v118);
    goto LABEL_43;
  }

  v286 = v90;
  v139 = v287;
  (*(v287 + 32))(v283, v131 + v129, v118);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
  v140 = sub_22D81B1F8();
  v141 = v138;
  v142 = v140;
  v143 = *(v139 + 8);
  v143(v141, v118);
  v143(v135, v118);
  sub_22D764440(v131, &qword_27DA02000, &qword_22D81F160);
  v134 = v136;
  v130 = v261;
  if ((v142 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_45:
  v144 = v263;
  v145 = v263[10];
  v146 = &v130[v145];
  v147 = *&v130[v145 + 8];
  v148 = &v132[v145];
  v149 = *(v148 + 1);
  if (v147)
  {
    v150 = v262;
    v151 = v267;
    if (!v149 || (*v146 != *v148 || v147 != v149) && (sub_22D81BB08() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v150 = v262;
    v151 = v267;
    if (v149)
    {
      goto LABEL_28;
    }
  }

  v152 = v144[11];
  v153 = &v130[v152];
  v154 = *&v130[v152 + 8];
  v155 = &v132[v152];
  v156 = *(v155 + 1);
  if (v154)
  {
    if (!v156 || (*v153 != *v155 || v154 != v156) && (sub_22D81BB08() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v156)
  {
    goto LABEL_28;
  }

  v157 = v144[12];
  v158 = v130;
  v159 = v134;
  v160 = *(v150 + 48);
  v161 = v158;
  sub_22D7640C4(&v158[v157], v151, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v270[v157], v151 + v160, &qword_27DA02000, &qword_22D81F160);
  if (v159(v151, 1, v118) == 1)
  {
    if (v159(v151 + v160, 1, v118) == 1)
    {
      v259 = v159;
      sub_22D764440(v151, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_66;
    }

LABEL_64:
    v105 = v151;
    goto LABEL_27;
  }

  v162 = v278;
  sub_22D7640C4(v151, v278, &qword_27DA02000, &qword_22D81F160);
  v259 = v159;
  v163 = v159(v151 + v160, 1, v118);
  v164 = v287;
  v165 = v283;
  if (v163 == 1)
  {
    (*(v287 + 8))(v162, v118);
    goto LABEL_64;
  }

  (*(v287 + 32))(v283, v151 + v160, v118);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
  v166 = sub_22D81B1F8();
  v167 = v165;
  v168 = v166;
  v169 = *(v164 + 8);
  v169(v167, v118);
  v169(v162, v118);
  sub_22D764440(v151, &qword_27DA02000, &qword_22D81F160);
  if ((v168 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_66:
  v170 = v263[13];
  v171 = *(v262 + 48);
  v117 = v266;
  sub_22D7640C4(&v161[v170], v266, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v270[v170], v117 + v171, &qword_27DA02000, &qword_22D81F160);
  v172 = v259;
  v173 = v259(v117, 1, v118);
  v258[1] = v89;
  if (v173 == 1)
  {
    if (v172(v117 + v171, 1, v118) == 1)
    {
      v174 = v118;
      sub_22D764440(v117, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_72;
    }

    goto LABEL_36;
  }

  v175 = v277;
  sub_22D7640C4(v117, v277, &qword_27DA02000, &qword_22D81F160);
  if (v172(v117 + v171, 1, v118) == 1)
  {
    (*(v287 + 8))(v175, v118);
    goto LABEL_36;
  }

  v176 = v287;
  v177 = v283;
  (*(v287 + 32))(v283, v117 + v171, v118);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
  v178 = sub_22D81B1F8();
  v179 = *(v176 + 8);
  v179(v177, v118);
  v174 = v118;
  v179(v175, v118);
  sub_22D764440(v117, &qword_27DA02000, &qword_22D81F160);
  if ((v178 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_72:
  v180 = v263[14];
  v181 = *(v262 + 48);
  v182 = v274;
  sub_22D7640C4(&v161[v180], v274, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v270[v180], v182 + v181, &qword_27DA02000, &qword_22D81F160);
  v183 = v174;
  v184 = v259;
  if (v259(v182, 1, v174) == 1)
  {
    v185 = v182 + v181;
    v186 = v174;
    v187 = v184;
    if (v184(v185, 1, v174) == 1)
    {
      sub_22D764440(v274, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_79;
    }

LABEL_77:
    v105 = v274;
    goto LABEL_27;
  }

  sub_22D7640C4(v182, v272, &qword_27DA02000, &qword_22D81F160);
  v188 = v182 + v181;
  v186 = v174;
  v187 = v184;
  if (v184(v188, 1, v174) == 1)
  {
    (*(v287 + 8))(v272, v174);
    goto LABEL_77;
  }

  v189 = v287;
  v190 = v274;
  v191 = v283;
  (*(v287 + 32))(v283, &v274[v181], v174);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
  v192 = v272;
  v193 = sub_22D81B1F8();
  v194 = *(v189 + 8);
  v194(v191, v183);
  v194(v192, v183);
  sub_22D764440(v190, &qword_27DA02000, &qword_22D81F160);
  if ((v193 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_79:
  v195 = v263[15];
  v196 = *(v262 + 48);
  v197 = v273;
  sub_22D7640C4(&v261[v195], v273, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v270[v195], v197 + v196, &qword_27DA02000, &qword_22D81F160);
  if (v187(v197, 1, v186) == 1)
  {
    if (v187(&v273[v196], 1, v186) == 1)
    {
      sub_22D764440(v273, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_86;
    }

LABEL_84:
    v105 = v273;
    goto LABEL_27;
  }

  v198 = v273;
  sub_22D7640C4(v273, v269, &qword_27DA02000, &qword_22D81F160);
  if (v187(v198 + v196, 1, v186) == 1)
  {
    (*(v287 + 8))(v269, v186);
    goto LABEL_84;
  }

  v199 = v287;
  v200 = v273;
  v201 = v283;
  v202 = v186;
  (*(v287 + 32))(v283, &v273[v196], v186);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
  v203 = v269;
  v204 = sub_22D81B1F8();
  v205 = *(v199 + 8);
  v205(v201, v202);
  v206 = v203;
  v186 = v202;
  v205(v206, v202);
  sub_22D764440(v200, &qword_27DA02000, &qword_22D81F160);
  if ((v204 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_86:
  v207 = v263[16];
  v208 = &v261[v207];
  v209 = *&v261[v207 + 8];
  v210 = &v270[v207];
  v211 = *(v210 + 1);
  if (v209)
  {
    if (!v211 || (*v208 != *v210 || v209 != v211) && (sub_22D81BB08() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v211)
  {
    goto LABEL_28;
  }

  v212 = v263[17];
  v213 = *(v262 + 48);
  v214 = v271;
  sub_22D7640C4(&v261[v212], v271, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v270[v212], v214 + v213, &qword_27DA02000, &qword_22D81F160);
  if (v187(v214, 1, v186) == 1)
  {
    if (v187(&v271[v213], 1, v186) == 1)
    {
      sub_22D764440(v271, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_100;
    }

LABEL_98:
    v105 = v271;
    goto LABEL_27;
  }

  v215 = v271;
  sub_22D7640C4(v271, v286, &qword_27DA02000, &qword_22D81F160);
  if (v187(v215 + v213, 1, v186) == 1)
  {
    (*(v287 + 8))(v286, v186);
    goto LABEL_98;
  }

  v216 = v287;
  v217 = v271;
  v218 = v283;
  (*(v287 + 32))(v283, &v271[v213], v186);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
  v219 = v286;
  v220 = sub_22D81B1F8();
  v221 = *(v216 + 8);
  v221(v218, v186);
  v221(v219, v186);
  sub_22D764440(v217, &qword_27DA02000, &qword_22D81F160);
  if ((v220 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_100:
  v222 = v263[18];
  v223 = &v261[v222];
  v224 = v261[v222 + 8];
  v225 = &v270[v222];
  v226 = v270[v222 + 8];
  if (v224)
  {
    if (!v226)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*v223 != *v225)
    {
      LOBYTE(v226) = 1;
    }

    if (v226)
    {
      goto LABEL_28;
    }
  }

  v227 = v263[19];
  v228 = *(v262 + 48);
  v229 = v265;
  sub_22D7640C4(&v261[v227], v265, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v270[v227], v229 + v228, &qword_27DA02000, &qword_22D81F160);
  if (v187(v229, 1, v186) == 1)
  {
    if (v187(v265 + v228, 1, v186) == 1)
    {
      sub_22D764440(v265, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_113;
    }

LABEL_111:
    v105 = v265;
    goto LABEL_27;
  }

  v230 = v265;
  sub_22D7640C4(v265, v260, &qword_27DA02000, &qword_22D81F160);
  if (v187(v230 + v228, 1, v186) == 1)
  {
    (*(v287 + 8))(v260, v186);
    goto LABEL_111;
  }

  v231 = v287;
  v232 = v265;
  v233 = v283;
  v234 = v186;
  (*(v287 + 32))(v283, v265 + v228, v186);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
  v235 = v260;
  v236 = sub_22D81B1F8();
  v237 = *(v231 + 8);
  v237(v233, v234);
  v238 = v235;
  v186 = v234;
  v237(v238, v234);
  sub_22D764440(v232, &qword_27DA02000, &qword_22D81F160);
  if ((v236 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_113:
  v239 = v263[20];
  v240 = *(v262 + 48);
  v241 = v264;
  sub_22D7640C4(&v261[v239], v264, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v270[v239], v241 + v240, &qword_27DA02000, &qword_22D81F160);
  v131 = v241;
  if (v187(v241, 1, v186) == 1)
  {
    if (v187(v241 + v240, 1, v186) == 1)
    {
      sub_22D764440(v241, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_119;
    }

    goto LABEL_43;
  }

  sub_22D7640C4(v241, v276, &qword_27DA02000, &qword_22D81F160);
  if (v187(v241 + v240, 1, v186) == 1)
  {
    (*(v287 + 8))(v276, v186);
    goto LABEL_43;
  }

  v242 = v287;
  v243 = v241 + v240;
  v244 = v283;
  (*(v287 + 32))(v283, v243, v186);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
  v245 = v276;
  v246 = sub_22D81B1F8();
  v247 = *(v242 + 8);
  v247(v244, v186);
  v247(v245, v186);
  sub_22D764440(v131, &qword_27DA02000, &qword_22D81F160);
  if ((v246 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_119:
  if (v261[v263[21]] != v270[v263[21]] || v261[v263[22]] != v270[v263[22]] || v261[v263[23]] != v270[v263[23]] || v261[v263[24]] != v270[v263[24]] || v261[v263[25]] != v270[v263[25]] || !sub_22D781428(*&v261[v263[26]], *&v270[v263[26]]))
  {
    goto LABEL_28;
  }

  v248 = v263[27];
  v249 = &v261[v248];
  v250 = *&v261[v248 + 8];
  v251 = &v270[v248];
  v252 = *(v251 + 1);
  if (v250)
  {
    if (v252 && (*v249 == *v251 && v250 == v252 || (sub_22D81BB08() & 1) != 0))
    {
      goto LABEL_132;
    }

LABEL_28:
    v106 = 0;
    return v106 & 1;
  }

  if (v252)
  {
    goto LABEL_28;
  }

LABEL_132:
  v253 = v263[28];
  v254 = &v261[v253];
  v255 = *&v261[v253];
  v256 = *&v261[v253 + 8];
  v257 = &v270[v253];
  if (*v254 == *v257 && v256 == *(v257 + 1))
  {
    v106 = 1;
  }

  else
  {
    v106 = sub_22D81BB08();
  }

  return v106 & 1;
}

size_t sub_22D784644()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = v31 - v4;
  v35 = type metadata accessor for AlarmReport(0);
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v35);
  v34 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v31 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v31 - v12;
  swift_beginAccess();
  result = *(v1 + 112);
  v15 = *(result + 16);
  if (v15)
  {
    v33 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = result + v33;
    v17 = *(v5 + 72);
    v31[1] = result;
    sub_22D81A398();
    v32 = v13;
    while (1)
    {
      sub_22D77FDE0(v16, v13, type metadata accessor for AlarmReport);
      sub_22D77FDE0(v13, v11, type metadata accessor for AlarmReport);
      v19 = v36;
      sub_22D81A8B8();
      v20 = sub_22D81A8C8();
      (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
      v21 = sub_22D77FD70(v19, &v11[*(v35 + 60)]);
      v22 = *(v1 + 112);
      MEMORY[0x28223BE20](v21);
      v31[-2] = v11;
      sub_22D81A398();
      v23 = sub_22D774900(sub_22D7863BC, &v31[-4], v22);
      v25 = v24;

      if (v25)
      {
        sub_22D77FDE0(v11, v34, type metadata accessor for AlarmReport);
        swift_beginAccess();
        v26 = *(v1 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 112) = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_22D7ED5C8(0, v26[2] + 1, 1, v26);
          *(v1 + 112) = v26;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v26 = sub_22D7ED5C8(v28 > 1, v29 + 1, 1, v26);
        }

        v26[2] = v29 + 1;
        sub_22D785624(v34, v26 + v33 + v29 * v17, type metadata accessor for AlarmReport);
        *(v1 + 112) = v26;
      }

      else
      {
        swift_beginAccess();
        v30 = *(v1 + 112);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 112) = v30;
        if (result)
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          result = sub_22D781BCC(v30);
          v30 = result;
          *(v1 + 112) = result;
          if ((v23 & 0x8000000000000000) != 0)
          {
LABEL_15:
            __break(1u);
          }
        }

        if (v23 >= v30[2])
        {
          __break(1u);
          return result;
        }

        sub_22D78568C(v11, v30 + v33 + v23 * v17);
        *(v1 + 112) = v30;
      }

      swift_endAccess();
      v18 = *(v1 + 120);
      sub_22D81A198();
      sub_22D77670C(v11);

      v13 = v32;
      sub_22D77FE48(v32, type metadata accessor for AlarmReport);
      sub_22D77FE48(v11, type metadata accessor for AlarmReport);
      v16 += v17;
      if (!--v15)
      {
      }
    }
  }

  return result;
}

void sub_22D784A84(uint64_t a1)
{
  v2 = type metadata accessor for AlarmReport(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  if (qword_280CD1860 != -1)
  {
    swift_once();
  }

  v9 = sub_22D81ACA8();
  __swift_project_value_buffer(v9, qword_280CD5700);
  sub_22D77FDE0(a1, v8, type metadata accessor for AlarmReport);
  v10 = sub_22D81AC88();
  v11 = sub_22D81B618();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    sub_22D77FDE0(v8, v6, type metadata accessor for AlarmReport);
    sub_22D77FE48(v8, type metadata accessor for AlarmReport);
    v14 = sub_22D777994();
    v16 = v15;
    sub_22D77FE48(v6, type metadata accessor for AlarmReport);
    v17 = sub_22D7D7C10(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_22D741000, v10, v11, "Local Alarm Report: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2318D2D80](v13, -1, -1);
    MEMORY[0x2318D2D80](v12, -1, -1);
  }

  else
  {
    sub_22D77FE48(v8, type metadata accessor for AlarmReport);
  }
}

uint64_t sub_22D784CBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x800000022D827FD0 == a2;
  if (v4 || (sub_22D81BB08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022D827FF0 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446465726966 && a2 == 0xE900000000000065 || (sub_22D81BB08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022D829B00 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022D828030 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022D828050 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x697463416576696CLL && a2 == 0xEE00644979746976 || (sub_22D81BB08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022D828080 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022D8280A0 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022D8280C0 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022D8280E0 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022D828100 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E656449656E6F74 && a2 == 0xEE00726569666974 || (sub_22D81BB08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x616C50646E756F73 && a2 == 0xEF65746144646579 || (sub_22D81BB08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7065526F69647561 && a2 == 0xEF6449726574726FLL || (sub_22D81BB08() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022D828140 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xED00006574614464 || (sub_22D81BB08() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7065656C537369 && a2 == 0xE700000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x69727265764F7369 && a2 == 0xEA00000000006564 || (sub_22D81BB08() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x746E656C69537369 && a2 == 0xE800000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x616964654D7369 && a2 == 0xE700000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x744164656B636F6CLL && a2 == 0xEC00000065726946 || (sub_22D81BB08() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x736E7265636E6F63 && a2 == 0xE800000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022D829B20 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 24;
  }

  else
  {
    v6 = sub_22D81BB08();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

uint64_t sub_22D7854B8()
{
  v0 = sub_22D81BB28();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22D78550C(uint64_t a1)
{
  if (a1 <= 1005)
  {
    if (a1 <= 1002)
    {
      switch(a1)
      {
        case -1:
          return 0;
        case 1001:
          return 1;
        case 1002:
          return 2;
      }

      return 13;
    }

    if (a1 == 1003)
    {
      return 3;
    }

    else if (a1 == 1004)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    if (a1 > 1008)
    {
      if (a1 <= 1010)
      {
        if (a1 == 1009)
        {
          return 9;
        }

        else
        {
          return 10;
        }
      }

      if (a1 == 1011)
      {
        return 11;
      }

      if (a1 == 1012)
      {
        return 12;
      }

      return 13;
    }

    if (a1 == 1006)
    {
      return 6;
    }

    else if (a1 == 1007)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_22D785624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D78568C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmReport(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D7856F0()
{
  v1 = *(*(type metadata accessor for AlarmReport(0) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_22D776ABC(v2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t objectdestroy_39Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22D785844(uint64_t a1)
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
  v11[1] = sub_22D744B0C;

  return sub_22D76F69C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_22D81A8C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 48);

  v8 = *(v0 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_7Tm()
{
  v1 = sub_22D81A8C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D785B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmReport(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_47Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D785C1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D775CF4(a1, v4, v5, v6);
}

uint64_t sub_22D785CD0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

uint64_t sub_22D785D08(uint64_t a1)
{
  v4 = *(type metadata accessor for AlarmReport(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D776B4C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22D785E08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_22D785EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22D7801B8(a1, a2);
}

uint64_t sub_22D785ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22D780318(a1, a2);
}

uint64_t sub_22D785ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22D7803B0(a1, a2);
}

uint64_t sub_22D785EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22D780448(a1, a2);
}

uint64_t sub_22D785EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22D7805A8(a1, a2);
}

uint64_t sub_22D785EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22D780708(a1, a2);
}

uint64_t sub_22D785EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22D7807B4(a1, a2);
}

uint64_t sub_22D785F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22D780898(a1, a2);
}

uint64_t sub_22D785F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22D781140(a1, a2);
}

uint64_t sub_22D785F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22D7811EC(a1, a2);
}

unint64_t sub_22D785F28()
{
  result = qword_280CD1520;
  if (!qword_280CD1520)
  {
    sub_22D759CA0(255, &qword_280CD2D60, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD1520);
  }

  return result;
}

uint64_t sub_22D785F90(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02450, &qword_22D820B48) - 8) + 80);

  return sub_22D781A74(a1);
}

uint64_t getEnumTagSinglePayload for AlarmReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmReport.AlarmCaKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmReport.AlarmCaKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22D7862B4()
{
  result = qword_27DA02478;
  if (!qword_27DA02478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02478);
  }

  return result;
}

unint64_t sub_22D78630C()
{
  result = qword_27DA02480;
  if (!qword_27DA02480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02480);
  }

  return result;
}

unint64_t sub_22D786364()
{
  result = qword_27DA02488;
  if (!qword_27DA02488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02488);
  }

  return result;
}

uint64_t sub_22D7863E4()
{
  v0 = type metadata accessor for WatchActivityManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0xD000000000000013;
  *(v3 + 24) = 0x800000022D829B90;
  v4 = OBJC_IVAR____TtC18MobileTimerSupport20WatchActivityManager_logger;
  if (qword_27DA019C8 != -1)
  {
    swift_once();
  }

  v5 = sub_22D81ACA8();
  v6 = __swift_project_value_buffer(v5, qword_27DA0D328);
  result = (*(*(v5 - 8) + 16))(v3 + v4, v6, v5);
  qword_27DA02490 = v3;
  return result;
}

uint64_t static WatchActivityManager.shared.getter()
{
  if (qword_27DA019C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_22D81A198();
}

uint64_t static WatchActivityManager.shared.setter(uint64_t a1)
{
  if (qword_27DA019C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27DA02490 = a1;
}

uint64_t (*static WatchActivityManager.shared.modify())()
{
  if (qword_27DA019C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22D786648@<X0>(void *a1@<X8>)
{
  if (qword_27DA019C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27DA02490;
  return sub_22D81A198();
}

uint64_t sub_22D7866C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27DA019C0;
  sub_22D81A198();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27DA02490 = v1;
}

uint64_t WatchActivityManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC18MobileTimerSupport20WatchActivityManager_logger;
  v3 = sub_22D81ACA8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t WatchActivityManager.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC18MobileTimerSupport20WatchActivityManager_logger;
  v3 = sub_22D81ACA8();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WatchActivityManager()
{
  result = qword_27DA02498;
  if (!qword_27DA02498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D7868B0()
{
  result = sub_22D81ACA8();
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

uint64_t sub_22D7869AC()
{
  v0 = sub_22D81ACA8();
  __swift_allocate_value_buffer(v0, qword_27DA0D328);
  __swift_project_value_buffer(v0, qword_27DA0D328);
  return sub_22D81AC98();
}

uint64_t sub_22D786A2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02588, &qword_22D820FA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - v3;
  v5 = sub_22D81A1A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02590, &qword_22D820FB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_22D76C23C();
  sub_22D81A248();
  sub_22D81A238();
  (*(v6 + 104))(v9, *MEMORY[0x277CB9F50], v5);
  sub_22D81A218();
  (*(v6 + 8))(v9, v5);
  sub_22D81A238();
  sub_22D81A258();
  v12 = sub_22D81A1C8();
  v13 = *(v1 + 8);
  v13(v4, v0);
  sub_22D81A208();
  v14 = sub_22D81A1C8();
  v13(v4, v0);
  sub_22D81A208();
  v15 = sub_22D81A1C8();
  v13(v4, v0);
  sub_22D81A208();
  v16 = sub_22D81A1C8();
  v13(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02598, qword_22D820FB8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22D820D00;
  *(v17 + 32) = v12;
  *(v17 + 40) = v14;
  *(v17 + 48) = v15;
  *(v17 + 56) = v16;
  v18 = sub_22D81A1B8();

  return v18;
}

uint64_t sub_22D786DF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02570, &qword_22D820F90);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - v3;
  v5 = sub_22D81A1A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02578, &qword_22D820F98);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_22D7663DC();
  sub_22D81A248();
  sub_22D81A238();
  (*(v6 + 104))(v9, *MEMORY[0x277CB9F50], v5);
  sub_22D81A218();
  (*(v6 + 8))(v9, v5);
  sub_22D81A238();
  sub_22D81A258();
  v12 = sub_22D81A1C8();
  v13 = *(v1 + 8);
  v13(v4, v0);
  sub_22D81A208();
  v14 = sub_22D81A1C8();
  v13(v4, v0);
  sub_22D81A208();
  v15 = sub_22D81A1C8();
  v13(v4, v0);
  sub_22D81A208();
  v16 = sub_22D81A1C8();
  v13(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02580, &qword_22D820FA0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22D820D00;
  *(v17 + 32) = v12;
  *(v17 + 40) = v14;
  *(v17 + 48) = v15;
  *(v17 + 56) = v16;
  v18 = sub_22D81A1B8();

  return v18;
}

uint64_t sub_22D7871C0()
{
  v19 = sub_22D81A1A8();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v19);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02558, &qword_22D820F78);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02560, &qword_22D820F80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  sub_22D758764();
  sub_22D81A208();
  v20 = sub_22D81A1C8();
  v11 = *(v7 + 8);
  v11(v10, v6);
  sub_22D81A248();
  sub_22D81A238();
  v12 = v19;
  (*(v0 + 104))(v3, *MEMORY[0x277CB9F50], v19);
  sub_22D81A218();
  (*(v0 + 8))(v3, v12);
  sub_22D81A238();
  sub_22D81A258();
  v13 = sub_22D81A1C8();
  v11(v10, v6);
  sub_22D81A208();
  v14 = sub_22D81A1C8();
  v11(v10, v6);
  sub_22D81A208();
  v15 = sub_22D81A1C8();
  v11(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02568, &qword_22D820F88);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22D820D00;
  *(v16 + 32) = v20;
  *(v16 + 40) = v13;
  *(v16 + 48) = v14;
  *(v16 + 56) = v15;
  v17 = sub_22D81A1B8();

  return v17;
}

uint64_t sub_22D787594()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02540, &qword_22D820F60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - v3;
  v5 = sub_22D81A1A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02548, &qword_22D820F68);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_22D75B7E0();
  sub_22D81A248();
  sub_22D81A238();
  (*(v6 + 104))(v9, *MEMORY[0x277CB9F50], v5);
  sub_22D81A218();
  (*(v6 + 8))(v9, v5);
  sub_22D81A238();
  sub_22D81A258();
  v21 = sub_22D81A1C8();
  v12 = *(v1 + 8);
  v12(v4, v0);
  sub_22D81A208();
  v13 = sub_22D81A1C8();
  v12(v4, v0);
  sub_22D81A208();
  v14 = sub_22D81A1C8();
  v12(v4, v0);
  sub_22D81A208();
  v15 = sub_22D81A1C8();
  v12(v4, v0);
  sub_22D81A208();
  v16 = sub_22D81A1C8();
  v12(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02550, &qword_22D820F70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22D81E6C0;
  *(v17 + 32) = v21;
  *(v17 + 40) = v13;
  *(v17 + 48) = v14;
  *(v17 + 56) = v15;
  *(v17 + 64) = v16;
  v18 = sub_22D81A1B8();

  return v18;
}

uint64_t sub_22D7879A8()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D787A2C()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D787AB0()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D787B34()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D787BC0(uint64_t a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02528, &qword_22D820F20);
  v22 = *(v20 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02530, &qword_22D820F28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22D767470();
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  v15 = sub_22D78A554();
  v21 = a1;
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  sub_22D81A258();
  v19 = sub_22D81A1C8();
  v16 = *(v22 + 8);
  v22 += 8;
  v7 = v20;
  v16(v4, v20);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  sub_22D81A258();
  v18 = sub_22D81A1C8();
  v8 = v16;
  v16(v4, v7);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  sub_22D81A258();
  v17 = sub_22D81A1C8();
  v9 = v20;
  v8(v4, v20);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  sub_22D81A258();
  v10 = sub_22D81A1C8();
  v8(v4, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02538, &qword_22D820F58);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22D820D00;
  v12 = v18;
  *(v11 + 32) = v19;
  *(v11 + 40) = v12;
  *(v11 + 48) = v17;
  *(v11 + 56) = v10;
  v13 = sub_22D81A1B8();

  return v13;
}

uint64_t sub_22D7880CC(uint64_t a1)
{
  v31 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02510, &qword_22D820EE0);
  v38 = *(v25 - 8);
  v1 = *(v38 + 64);
  MEMORY[0x28223BE20](v25);
  v3 = &v25 - v2;
  v4 = sub_22D81A1A8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02518, &qword_22D820EE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_22D75AD9C();
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  v30 = sub_22D78A554();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  LODWORD(v37) = *MEMORY[0x277CB9F50];
  v11 = v5[13];
  v35 = v5 + 13;
  v36 = v11;
  v29 = v4;
  v11(v8);
  sub_22D81A218();
  v12 = v5[1];
  v33 = v5 + 1;
  v34 = v12;
  v12(v8, v4);
  sub_22D81A238();
  v28 = v3;
  sub_22D81A258();
  v27 = sub_22D81A1C8();
  v13 = *(v38 + 8);
  v38 += 8;
  v32 = v13;
  v14 = v25;
  v13(v3, v25);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v15 = v29;
  v36(v8, v37, v29);
  sub_22D81A218();
  v34(v8, v15);
  sub_22D81A238();
  v16 = v28;
  sub_22D81A258();
  v26 = sub_22D81A1C8();
  v32(v16, v14);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v17 = v29;
  v36(v8, v37, v29);
  sub_22D81A218();
  v34(v8, v17);
  sub_22D81A238();
  v18 = v28;
  sub_22D81A258();
  v37 = sub_22D81A1C8();
  v19 = v32;
  v32(v18, v14);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  sub_22D81A258();
  v20 = sub_22D81A1C8();
  v19(v18, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02520, &qword_22D820F18);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22D820D00;
  v22 = v26;
  *(v21 + 32) = v27;
  *(v21 + 40) = v22;
  *(v21 + 48) = v37;
  *(v21 + 56) = v20;
  v23 = sub_22D81A1B8();

  return v23;
}

uint64_t sub_22D788768(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  sub_22D81A398();
  sub_22D81A198();
  return sub_22D81A0C8();
}

uint64_t sub_22D7887B8(uint64_t a1)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024E0, &qword_22D820E98);
  v2 = *(v1 - 8);
  v39 = v1;
  v40 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v35 = &v25 - v4;
  v5 = sub_22D81A1A8();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024E8, &qword_22D820EA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v30 = sub_22D764E84();
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  v31 = sub_22D78A4D0();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v13 = v6[13];
  v36 = *MEMORY[0x277CB9F50];
  v12 = v36;
  v13(v9, v36, v5);
  v29 = v6 + 13;
  sub_22D81A218();
  v14 = v6[1];
  v14(v9, v5);
  v38 = v14;
  v33 = v6 + 1;
  sub_22D81A238();
  v13(v9, v12, v5);
  v34 = v13;
  sub_22D81A218();
  v14(v9, v5);
  sub_22D81A238();
  v15 = v35;
  sub_22D81A258();
  v28 = sub_22D81A1C8();
  v16 = *(v40 + 8);
  v40 += 8;
  v37 = v16;
  v16(v15, v39);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v25 = v5;
  v13(v9, v36, v5);
  sub_22D81A218();
  v38(v9, v5);
  sub_22D81A238();
  v17 = v35;
  sub_22D81A258();
  v27 = sub_22D81A1C8();
  v37(v17, v39);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v18 = v25;
  v34(v9, v36, v25);
  sub_22D81A218();
  v38(v9, v18);
  sub_22D81A238();
  v19 = v35;
  sub_22D81A258();
  v26 = sub_22D81A1C8();
  v37(v19, v39);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v34(v9, v36, v18);
  sub_22D81A218();
  v38(v9, v18);
  sub_22D81A238();
  sub_22D81A258();
  v20 = sub_22D81A1C8();
  v37(v19, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02508, &qword_22D820ED8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22D820D00;
  v22 = v27;
  *(v21 + 32) = v28;
  *(v21 + 40) = v22;
  *(v21 + 48) = v26;
  *(v21 + 56) = v20;
  v23 = sub_22D81A1B8();

  return v23;
}

uint64_t sub_22D788F30()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D788FB4()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D789038()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D7890C4(uint64_t a1)
{
  v29 = a1;
  v33 = sub_22D81A1A8();
  v1 = *(v33 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v33);
  v31 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024C0, &qword_22D820E58);
  v4 = *(v36 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v36);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024C8, &qword_22D820E60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22D757BF8();
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  v28 = sub_22D78A47C();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  sub_22D81A258();
  v26 = sub_22D81A1C8();
  v35 = *(v4 + 8);
  v37 = v4 + 8;
  v10 = v36;
  v35(v7, v36);
  sub_22D81A248();
  sub_22D81A238();
  v34 = *MEMORY[0x277CB9F50];
  v11 = v1[13];
  v24[2] = v1 + 13;
  v32 = v11;
  v12 = v31;
  v13 = v33;
  v11(v31);
  sub_22D81A218();
  v30 = v1[1];
  v24[1] = v1 + 1;
  v30(v12, v13);
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v27 = v7;
  sub_22D81A258();
  v25 = sub_22D81A1C8();
  v35(v7, v10);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v14 = v31;
  v15 = v33;
  v32(v31, v34, v33);
  sub_22D81A218();
  v30(v14, v15);
  sub_22D81A238();
  v16 = v27;
  sub_22D81A258();
  v24[0] = sub_22D81A1C8();
  v17 = v35;
  v35(v16, v36);
  sub_22D81A248();
  sub_22D81A238();
  v32(v14, v34, v15);
  sub_22D81A218();
  v30(v14, v15);
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v18 = v27;
  sub_22D81A258();
  v19 = sub_22D81A1C8();
  v17(v18, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024D8, &qword_22D820E90);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22D820D00;
  v21 = v25;
  *(v20 + 32) = v26;
  *(v20 + 40) = v21;
  *(v20 + 48) = v24[0];
  *(v20 + 56) = v19;
  v22 = sub_22D81A1B8();

  return v22;
}

uint64_t sub_22D78975C()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D7897E8()
{
  v0 = sub_22D81A288();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_22D7B7834();
  sub_22D757BF8();
  sub_22D81A298();
  v5 = sub_22D81A278();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B8, &qword_22D820E50);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22D81DF60;
  *(v6 + 32) = v5;
  v7 = sub_22D81A268();

  return v7;
}

uint64_t sub_22D78994C()
{
  v0 = sub_22D81A188();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D757BF8();
  sub_22D81A178();
  v5 = sub_22D81A168();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024A8, &qword_22D820E40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22D81DF60;
  *(v6 + 32) = v5;
  v7 = sub_22D81A158();

  return v7;
}

uint64_t sub_22D789ABC()
{
  v0 = sub_22D81A288();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  sub_22D76C23C();
  sub_22D81A298();
  v5 = sub_22D81A278();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v14 = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  sub_22D7663DC();
  sub_22D81A298();
  v7 = sub_22D81A278();
  v6(v4, v0);
  v14 = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  sub_22D758764();
  sub_22D81A298();
  v8 = sub_22D81A278();
  v6(v4, v0);
  v14 = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  sub_22D75B7E0();
  sub_22D81A298();
  v9 = sub_22D81A278();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B8, &qword_22D820E50);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22D820D00;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;
  v11 = sub_22D81A268();

  return v11;
}

uint64_t sub_22D789DD0()
{
  v0 = sub_22D81A188();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D76C23C();
  sub_22D81A178();
  v5 = sub_22D81A168();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_22D7663DC();
  sub_22D81A178();
  v7 = sub_22D81A168();
  v6(v4, v0);
  sub_22D758764();
  sub_22D81A178();
  v8 = sub_22D81A168();
  v6(v4, v0);
  sub_22D75B7E0();
  sub_22D81A178();
  v9 = sub_22D81A168();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024A8, &qword_22D820E40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22D820D00;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;
  v11 = sub_22D81A158();

  return v11;
}

uint64_t sub_22D78A020()
{
  v0 = sub_22D81A288();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D766ED4();
  sub_22D767470();
  sub_22D81A298();
  v5 = sub_22D81A278();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v13 = sub_22D75A7AC();
  sub_22D75AD9C();
  sub_22D81A298();
  v7 = sub_22D81A278();
  v6(v4, v0);
  v13 = sub_22D765454();
  sub_22D764E84();
  sub_22D81A298();
  v8 = sub_22D81A278();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B8, &qword_22D820E50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22D81E100;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_22D81A268();

  return v10;
}

uint64_t sub_22D78A280()
{
  v0 = sub_22D81A188();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D767470();
  sub_22D81A178();
  v5 = sub_22D81A168();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_22D75AD9C();
  sub_22D81A178();
  v7 = sub_22D81A168();
  v6(v4, v0);
  sub_22D764E84();
  sub_22D81A178();
  v8 = sub_22D81A168();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024A8, &qword_22D820E40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22D81E100;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_22D81A158();

  return v10;
}

unint64_t sub_22D78A47C()
{
  result = qword_27DA024D0;
  if (!qword_27DA024D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA024D0);
  }

  return result;
}

unint64_t sub_22D78A4D0()
{
  result = qword_27DA024F0;
  if (!qword_27DA024F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA024F8, &qword_22D820ED0);
    sub_22D78A554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA024F0);
  }

  return result;
}

unint64_t sub_22D78A554()
{
  result = qword_27DA02500;
  if (!qword_27DA02500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02500);
  }

  return result;
}

__n128 keypath_get_8Tm@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_22D81A0B8();
  result = v6;
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

void sub_22D78A5F8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = objc_opt_self();
    v4 = a2;
    sub_22D81B838();

    sub_22D81A7A8();
    sub_22D78B25C();
    v5 = sub_22D81BAD8();
    MEMORY[0x2318D1A50](v5);

    MEMORY[0x2318D1A50](0x7265206874697720, 0xED0000203A726F72);
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    v7 = sub_22D81B2E8();
    MEMORY[0x2318D1A50](v7);

    v8 = sub_22D81B2B8();

    [v3 logError_];
  }
}

void sub_22D78A760(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_22D81A198();
  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t static MTSUtilities.updateIfNeeded<A, B>(_:keypath:newValue:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a4;
  v5 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v6 = sub_22D81B718();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v22 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  (*(v7 + 16))(v11, a3, v6);
  if ((*(v12 + 48))(v11, 1, v5) == 1)
  {
    return (*(v7 + 8))(v11, v6);
  }

  (*(v12 + 32))(v18, v11, v5);
  swift_getAtKeyPath();
  v20 = sub_22D81B1F8();
  v21 = *(v12 + 8);
  v21(v16, v5);
  if ((v20 & 1) == 0)
  {
    (*(v12 + 16))(v16, v18, v5);
    swift_setAtWritableKeyPath();
  }

  return (v21)(v18, v5);
}

uint64_t sub_22D78AABC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_22D78AAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v46 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA025A0, &qword_22D821010);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = sub_22D81A7A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v44 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  sub_22D78B0EC(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22D78B15C(v10);
    v17 = objc_opt_self();
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_22D81B838();

    v48 = 0xD000000000000019;
    v49 = 0x800000022D829F70;
    sub_22D78B0EC(a1, v8);
    v18 = sub_22D81B2E8();
    MEMORY[0x2318D1A50](v18);

    v19 = sub_22D81B2B8();

    [v17 logError_];
  }

  else
  {
    v41 = *(v12 + 32);
    v42 = v12 + 32;
    v41(v16, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA025A8, &qword_22D821018);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22D81E100;
    v21 = *MEMORY[0x277D0AC58];
    v48 = sub_22D81B2C8();
    v49 = v22;
    sub_22D81B7E8();
    v23 = MEMORY[0x277D839B0];
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    v24 = *MEMORY[0x277D0AC70];
    v48 = sub_22D81B2C8();
    v49 = v25;
    sub_22D81B7E8();
    *(inited + 168) = v23;
    *(inited + 144) = 1;
    v26 = *MEMORY[0x277D0AC40];
    v48 = sub_22D81B2C8();
    v49 = v27;
    sub_22D81B7E8();
    *(inited + 240) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v43 = v12;
    v29 = *(v12 + 16);
    v47 = v16;
    v29(boxed_opaque_existential_1, v16, v11);
    sub_22D8181F4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA025B0, &unk_22D821020);
    swift_arrayDestroy();
    v30 = sub_22D81B158();

    v31 = [objc_opt_self() optionsWithDictionary_];

    v32 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    if (v32)
    {
      v33 = v32;
      v34 = sub_22D81B2B8();
      v35 = v44;
      v29(v44, v47, v11);
      v36 = v43;
      v37 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v38 = swift_allocObject();
      v41((v38 + v37), v35, v11);
      v52 = sub_22D78B1C4;
      v53 = v38;
      v48 = MEMORY[0x277D85DD0];
      v49 = 1107296256;
      v50 = sub_22D78A760;
      v51 = &block_descriptor_5;
      v39 = _Block_copy(&v48);

      [v33 openApplication:v34 withOptions:v31 completion:v39];
      _Block_release(v39);

      (*(v36 + 8))(v47, v11);
    }

    else
    {
      (*(v43 + 8))(v47, v11);
    }
  }
}

uint64_t sub_22D78B0EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA025A0, &qword_22D821010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D78B15C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA025A0, &qword_22D821010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22D78B1C4(uint64_t a1, void *a2)
{
  v4 = *(*(sub_22D81A7A8() - 8) + 80);

  sub_22D78A5F8(a1, a2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

unint64_t sub_22D78B25C()
{
  result = qword_27DA025B8;
  if (!qword_27DA025B8)
  {
    sub_22D81A7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025B8);
  }

  return result;
}

uint64_t sub_22D78B2B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6B636F6C63;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xE900000000000068;
    if (a1 == 2)
    {
      v5 = 0x63746177706F7473;
    }

    else
    {
      v5 = 0x72656D6974;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x6D72616C61;
    }

    else
    {
      v5 = 0x6B636F6C63;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x63746177706F7473;
  v8 = 0xE900000000000068;
  if (a2 != 2)
  {
    v7 = 0x72656D6974;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6D72616C61;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22D81BB08();
  }

  return v11 & 1;
}

uint64_t sub_22D78B3E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x796164697266;
  if (a1 != 5)
  {
    v5 = 0x7961647275746173;
    v4 = 0xE800000000000000;
  }

  v6 = 0x616473656E646577;
  v7 = 0xE900000000000079;
  if (a1 != 3)
  {
    v6 = 0x7961647372756874;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x79616473657574;
  if (a1 == 1)
  {
    v9 = 0x7961646E6F6DLL;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7961646E7573;
  }

  if (a1)
  {
    v3 = v8;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x7961646E6F6DLL)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x79616473657574)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x7961646E7573)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_40;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x796164697266)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v13 = 0xE800000000000000;
    v14 = 0x647275746173;
  }

  else
  {
    if (a2 == 3)
    {
      v13 = 0xE900000000000079;
      if (v11 != 0x616473656E646577)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v13 = 0xE800000000000000;
    v14 = 0x647372756874;
  }

  if (v11 != (v14 & 0xFFFFFFFFFFFFLL | 0x7961000000000000))
  {
LABEL_42:
    v15 = sub_22D81BB08();
    goto LABEL_43;
  }

LABEL_40:
  if (v12 != v13)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

void sub_22D78B5EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v87 = a2;
  v2 = sub_22D81A708();
  v80 = *(v2 - 8);
  v81 = v2;
  v3 = *(v80 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v79 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v63 - v6;
  v7 = sub_22D81A7A8();
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = *(v76 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v75 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v63 - v11;
  v12 = sub_22D81A748();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D81A958();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_22D81B2A8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_22D81A768();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = type metadata accessor for AlarmEntity();
  v71 = v23[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02700, &qword_22D821770);
  sub_22D81B228();
  sub_22D81A948();
  v24 = *MEMORY[0x277CC9110];
  v25 = v13 + 104;
  v26 = *(v13 + 104);
  v85 = v12;
  v86 = v25;
  v84 = v24;
  v26(v16, v24, v12);
  sub_22D81A778();
  v72 = sub_22D81A048();
  v27 = v87;
  *(v87 + v71) = v72;
  v70 = v23[6];
  v83 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02708, &qword_22D821778);
  sub_22D81B228();
  sub_22D81A948();
  v26(v16, v24, v12);
  sub_22D81A778();
  v71 = sub_22D81A038();
  *(v27 + v70) = v71;
  v70 = v23[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02710, &qword_22D821780);
  sub_22D81B228();
  sub_22D81A948();
  v28 = v84;
  v29 = v85;
  v26(v16, v84, v85);
  sub_22D81A778();
  v67 = sub_22D81A068();
  v30 = v87;
  *(v87 + v70) = v67;
  v31 = v83;
  v70 = v83[8];
  sub_22D81B228();
  sub_22D81A948();
  v26(v16, v28, v29);
  v82 = v26;
  sub_22D81A778();
  v66 = sub_22D81A068();
  *(v30 + v70) = v66;
  v69 = v31[9];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02718, &qword_22D821788);
  sub_22D81B228();
  sub_22D81A948();
  v33 = v28;
  v34 = v85;
  v26(v16, v28, v85);
  v35 = v16;
  sub_22D81A778();
  v70 = v32;
  v65 = sub_22D81A058();
  v36 = v87;
  *(v87 + v69) = v65;
  v37 = v83;
  v69 = v83[10];
  sub_22D81B228();
  sub_22D81A948();
  v68 = v35;
  v38 = v35;
  v39 = v82;
  v82(v38, v33, v34);
  sub_22D81A778();
  v64 = sub_22D81A058();
  *(v36 + v69) = v64;
  v40 = v37;
  v69 = v37[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02720, &qword_22D821790);
  sub_22D81B228();
  sub_22D81A948();
  v41 = v68;
  v42 = v85;
  v39(v68, v33, v85);
  sub_22D81A778();
  sub_22D7577FC();
  v63 = sub_22D81A018();
  v43 = v87;
  *(v87 + v69) = v63;
  v69 = v40[12];
  sub_22D81B228();
  sub_22D81A948();
  v44 = v33;
  v45 = v82;
  v82(v41, v44, v42);
  sub_22D81A778();
  v70 = sub_22D81A058();
  *(v43 + v69) = v70;
  v46 = v40[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02728, &qword_22D821798);
  sub_22D81B228();
  sub_22D81A948();
  v45(v41, v84, v42);
  sub_22D81A778();
  *(v43 + v46) = sub_22D81A028();
  v47 = v73;
  v48 = [v73 alarmID];
  sub_22D81A8F8();

  v49 = [v47 displayTitle];
  v50 = sub_22D81B2C8();
  v52 = v51;

  v88 = v50;
  v89 = v52;
  sub_22D819FF8();
  v53 = [v47 alarmURL];
  v54 = v74;
  sub_22D81A798();

  v55 = v76;
  v56 = v77;
  (*(v76 + 16))(v75, v54, v77);
  sub_22D819FF8();
  (*(v55 + 8))(v54, v56);
  v57 = [v47 dateComponents];
  v58 = v78;
  sub_22D81A628();

  v59 = v80;
  v60 = v81;
  (*(v80 + 16))(v79, v58, v81);
  sub_22D819FF8();
  (*(v59 + 8))(v58, v60);
  v61 = [v47 hour];
  if ((v61 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v88 = v61;
    sub_22D819FF8();
    v62 = [v47 minute];
    if ((v62 & 0x8000000000000000) == 0)
    {
      v88 = v62;
      sub_22D819FF8();
      LOBYTE(v88) = [v47 isEnabled];
      sub_22D819FF8();
      LOBYTE(v88) = [v47 repeats];
      sub_22D819FF8();
      v88 = sub_22D78E120([v47 repeatSchedule]);
      sub_22D819FF8();
      LOBYTE(v88) = [v47 allowsSnooze];
      sub_22D819FF8();

      return;
    }
  }

  __break(1u);
}

uint64_t sub_22D78C1A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_22D81A768();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22D81B228();
  sub_22D81A948();
  (*(v5 + 104))(v8, *MEMORY[0x277CC9110], v4);
  sub_22D81A778();
  (*(v14 + 56))(v3, 1, 1, v13);
  return sub_22D81A488();
}

uint64_t sub_22D78C464()
{
  v1 = *(v0 + *(type metadata accessor for AlarmEntity() + 20));
  sub_22D819FE8();
  return v3;
}

unint64_t sub_22D78C4E4()
{
  result = qword_27DA025C0;
  if (!qword_27DA025C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025C0);
  }

  return result;
}

uint64_t sub_22D78C544()
{
  *v0;
  *v0;
  *v0;
  sub_22D81B328();
}

uint64_t sub_22D78C64C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22D793B74();
  *a2 = result;
  return result;
}

uint64_t sub_22D78C67C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0x7961646E6F6DLL;
  v3 = *v1;
  v4 = 0xE600000000000000;
  v5 = 0x796164697266;
  if (v3 != 5)
  {
    v5 = 0x7961647275746173;
    v4 = 0xE800000000000000;
  }

  v6 = 0xE900000000000079;
  v7 = 0x616473656E646577;
  result = 0x7961647372756874;
  if (v3 != 3)
  {
    v7 = 0x7961647372756874;
    v6 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v9 = 0xE600000000000000;
  if (v3 != 1)
  {
    v2 = 0x79616473657574;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v10 = v9;
  }

  else
  {
    v2 = 0x7961646E7573;
    v10 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v2 = v5;
    v11 = v4;
  }

  *a1 = v2;
  a1[1] = v11;
  return result;
}

unint64_t sub_22D78C750()
{
  result = qword_27DA025C8;
  if (!qword_27DA025C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025C8);
  }

  return result;
}

unint64_t sub_22D78C7A8()
{
  result = qword_27DA025D0;
  if (!qword_27DA025D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025D0);
  }

  return result;
}

unint64_t sub_22D78C800()
{
  result = qword_27DA025D8;
  if (!qword_27DA025D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025D8);
  }

  return result;
}

unint64_t sub_22D78C8AC()
{
  result = qword_27DA025E8;
  if (!qword_27DA025E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025E8);
  }

  return result;
}

unint64_t sub_22D78C900()
{
  result = qword_27DA025F0;
  if (!qword_27DA025F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025F0);
  }

  return result;
}

unint64_t sub_22D78C958()
{
  result = qword_27DA025F8;
  if (!qword_27DA025F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025F8);
  }

  return result;
}

uint64_t sub_22D78CA00(uint64_t a1)
{
  v2 = sub_22D7577FC();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_22D78CA50()
{
  result = qword_27DA02600;
  if (!qword_27DA02600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02600);
  }

  return result;
}

unint64_t sub_22D78CAA8()
{
  result = qword_27DA02608;
  if (!qword_27DA02608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02608);
  }

  return result;
}

unint64_t sub_22D78CB00()
{
  result = qword_27DA02610;
  if (!qword_27DA02610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02610);
  }

  return result;
}

uint64_t sub_22D78CB58(uint64_t a1)
{
  v2 = sub_22D78C958();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t type metadata accessor for AlarmEntity()
{
  result = qword_27DA02698;
  if (!qword_27DA02698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22D78CCC8()
{
  result = qword_27DA02630;
  if (!qword_27DA02630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02630);
  }

  return result;
}

uint64_t sub_22D78CD28()
{
  v1 = *(v0 + *(type metadata accessor for AlarmEntity() + 28));
  sub_22D819FE8();
  return v3;
}

uint64_t sub_22D78CD98()
{
  v1 = *(v0 + *(type metadata accessor for AlarmEntity() + 32));
  sub_22D819FE8();
  return v3;
}

uint64_t sub_22D78CE08()
{
  v1 = *(v0 + *(type metadata accessor for AlarmEntity() + 36));
  sub_22D819FE8();
  return v3;
}

uint64_t sub_22D78CE78@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = sub_22D81B218();
  v28 = *(v33 - 8);
  v1 = *(v28 + 64);
  MEMORY[0x28223BE20](v33);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22D81B288();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v26 - v7;
  v8 = sub_22D81A748();
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D81A958();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_22D81B2A8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_22D81A768();
  v29 = *(v17 - 8);
  v30 = v17;
  v18 = *(v29 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22D81B228();
  sub_22D81A948();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v9 + 104);
  v26 = v9 + 104;
  v20(v12, v19, v8);
  sub_22D81A778();
  sub_22D81B278();
  sub_22D81B268();
  v21 = v28;
  v22 = v31;
  v23 = v33;
  (*(v28 + 104))(v31, *MEMORY[0x277CC9BD8], v33);
  sub_22D81B238();
  (*(v21 + 8))(v22, v23);
  sub_22D81B268();
  sub_22D81B298();
  sub_22D81A948();
  v20(v12, v19, v27);
  v24 = v32;
  sub_22D81A778();
  (*(v29 + 56))(v24, 0, 1, v30);
  return sub_22D81A488();
}

uint64_t sub_22D78D2FC()
{
  v1 = sub_22D81A9C8();
  v72 = *(v1 - 8);
  v73 = v1;
  v2 = *(v72 + 64);
  MEMORY[0x28223BE20](v1);
  v71 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A9D8();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A998();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v7);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D81A708();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  v18 = sub_22D81A968();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22D81AA48();
  v66 = *(v23 - 8);
  v67 = v23;
  v24 = *(v66 + 64);
  MEMORY[0x28223BE20](v23);
  v61 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v63 = &v58 - v28;
  v65 = sub_22D81A8C8();
  v62 = *(v65 - 8);
  v29 = *(v62 + 64);
  v30 = MEMORY[0x28223BE20](v65);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v58 = &v58 - v33;
  (*(v19 + 104))(v22, *MEMORY[0x277CC9830], v18);
  sub_22D81A978();
  (*(v19 + 8))(v22, v18);
  v34 = *(v0 + *(type metadata accessor for AlarmEntity() + 52));
  sub_22D819FE8();
  sub_22D81A658();
  v35 = *(v11 + 8);
  v35(v17, v10);
  sub_22D819FE8();
  v36 = sub_22D81A6A8();
  LOBYTE(v34) = v37;
  v35(v15, v10);
  if (v34)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  v59 = v32;
  v60 = v38;
  sub_22D81A7B8();
  v39 = v64;
  (*(v74 + 104))(v64, *MEMORY[0x277CC9878], v75);
  v41 = v68;
  v40 = v69;
  v42 = v70;
  (*(v69 + 104))(v68, *MEMORY[0x277CC9900], v70);
  v44 = v71;
  v43 = v72;
  v45 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x277CC98E8], v73);
  v46 = v63;
  v47 = v61;
  sub_22D81AA08();
  v48 = v62;
  (*(v43 + 8))(v44, v45);
  v49 = v42;
  v50 = v65;
  (*(v40 + 8))(v41, v49);
  (*(v74 + 8))(v39, v75);
  v51 = *(v48 + 8);
  v51(v59, v50);
  (*(v66 + 8))(v47, v67);
  if ((*(v48 + 48))(v46, 1, v50) == 1)
  {
    sub_22D764440(v46, &qword_27DA02000, &qword_22D81F160);
    return 0;
  }

  else
  {
    v53 = v58;
    (*(v48 + 32))(v58, v46, v50);
    v54 = objc_opt_self();
    v55 = sub_22D81A818();
    v56 = [v54 localizedStringFromDate:v55 dateStyle:0 timeStyle:1];

    v57 = sub_22D81B2C8();
    v51(v53, v50);
    return v57;
  }
}

uint64_t sub_22D78DA24()
{
  v1 = sub_22D81A748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81A958();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_22D81B2A8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = *(v0 + *(type metadata accessor for AlarmEntity() + 36));
  sub_22D819FE8();
  sub_22D81B228();
  sub_22D81A948();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return sub_22D81A778();
}

uint64_t sub_22D78DC18@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = v31 - v7;
  v31[0] = sub_22D81A768();
  v8 = *(v31[0] - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v31[0]);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31[1] = v31 - v13;
  v14 = sub_22D81B288();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  MEMORY[0x28223BE20](v16);
  v17 = *(type metadata accessor for AlarmEntity() + 20);
  v32 = v1;
  v18 = *(v1 + v17);
  sub_22D819FE8();
  v20 = v36;
  v19 = v37;
  v21 = [objc_opt_self() mainBundle];
  v22 = sub_22D81A718();
  v24 = v23;

  if (v20 == v22 && v19 == v24)
  {
  }

  else
  {
    v25 = sub_22D81BB08();

    if ((v25 & 1) == 0)
    {
      sub_22D81B278();
      sub_22D81B268();
      sub_22D819FE8();
      sub_22D81B248();

      sub_22D81B268();
      sub_22D81A758();
      sub_22D81B278();
      sub_22D81B268();
      sub_22D78D2FC();
      sub_22D81B248();

      goto LABEL_7;
    }
  }

  sub_22D81B278();
  sub_22D81B268();
  sub_22D78D2FC();
  sub_22D81B248();

  sub_22D81B268();
  sub_22D81A758();
  sub_22D81B278();
LABEL_7:
  sub_22D81B268();
  sub_22D78DA24();
  v26 = v31[0];
  sub_22D81B258();
  (*(v8 + 8))(v12, v26);
  sub_22D81B268();
  v27 = v33;
  sub_22D81A758();
  (*(v8 + 56))(v27, 0, 1, v26);
  v28 = v34;
  sub_22D81A318();
  v29 = sub_22D81A328();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  return sub_22D81A338();
}

void *sub_22D78E120(char a1)
{
  if ((~a1 & 0x7F) == 0)
  {
    return &unk_2840D4E28;
  }

  v57 = MEMORY[0x277D84FA0];
  if ((~a1 & 0x1F) == 0)
  {
    sub_22D7D81C8(&v56, byte_2840D4E70);
    sub_22D7D81C8(&v56, byte_2840D4E71);
    sub_22D7D81C8(&v56, byte_2840D4E72);
    sub_22D7D81C8(&v56, byte_2840D4E73);
    sub_22D7D81C8(&v56, byte_2840D4E74);
  }

  if ((~a1 & 0x60) == 0)
  {
    sub_22D7D81C8(&v56, byte_2840D4E98);
    sub_22D7D81C8(&v56, byte_2840D4E99);
  }

  v3 = v57;
  if (a1)
  {
    v4 = *(v57 + 40);
    sub_22D81BBC8();
    sub_22D81B328();
    v5 = sub_22D81BC18();
    v6 = -1 << *(v3 + 32);
    v7 = v5 & ~v6;
    if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        if (*(*(v3 + 48) + v7) > 3u)
        {
          *(*(v3 + 48) + v7);
        }

        else if (*(*(v3 + 48) + v7) <= 1u && *(*(v3 + 48) + v7))
        {

          if ((a1 & 2) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_19;
        }

        v9 = sub_22D81BB08();

        if (v9)
        {
          goto LABEL_18;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v3;
    sub_22D7D8DD4(1, v7, isUniquelyReferenced_nonNull_native);
    v3 = v56;
    v57 = v56;
  }

LABEL_18:
  if ((a1 & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  v11 = *(v3 + 40);
  sub_22D81BBC8();
  sub_22D81B328();
  v12 = sub_22D81BC18();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if ((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v3 + 48) + v14) > 3u || *(*(v3 + 48) + v14) <= 1u || *(*(v3 + 48) + v14) == 3)
    {
      v16 = sub_22D81BB08();

      if (v16)
      {
        goto LABEL_29;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v3;
    sub_22D7D8DD4(2, v14, v17);
    v3 = v56;
    v57 = v56;
  }

LABEL_29:
  if ((a1 & 4) == 0)
  {
    goto LABEL_40;
  }

  v18 = *(v3 + 40);
  sub_22D81BBC8();
  sub_22D81B328();
  v19 = sub_22D81BC18();
  v20 = -1 << *(v3 + 32);
  v21 = v19 & ~v20;
  if (((*(v3 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
LABEL_39:
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v3;
    sub_22D7D8DD4(3, v21, v24);
    v3 = v56;
    v57 = v56;
LABEL_40:
    if ((a1 & 8) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_41;
  }

  v22 = ~v20;
  while (*(*(v3 + 48) + v21) <= 2u)
  {
    *(*(v3 + 48) + v21);
LABEL_37:
    v23 = sub_22D81BB08();

    if (v23)
    {
      goto LABEL_40;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v3 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (*(*(v3 + 48) + v21) >= 4u)
  {
    goto LABEL_37;
  }

  if ((a1 & 8) != 0)
  {
LABEL_41:
    v25 = *(v3 + 40);
    sub_22D81BBC8();
    sub_22D81B328();
    v26 = sub_22D81BC18();
    v27 = -1 << *(v3 + 32);
    v28 = v26 & ~v27;
    if (((*(v3 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
LABEL_50:
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v3;
      sub_22D7D8DD4(4, v28, v31);
      v3 = v56;
      v57 = v56;
      goto LABEL_51;
    }

    v29 = ~v27;
    while (1)
    {
      if (*(*(v3 + 48) + v28) <= 2u)
      {
        *(*(v3 + 48) + v28);
      }

      else if (*(*(v3 + 48) + v28) <= 4u && *(*(v3 + 48) + v28) != 3)
      {

        break;
      }

      v30 = sub_22D81BB08();

      if (v30)
      {
        break;
      }

      v28 = (v28 + 1) & v29;
      if (((*(v3 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_51:
  if ((a1 & 0x10) == 0)
  {
    goto LABEL_62;
  }

  v32 = *(v3 + 40);
  sub_22D81BBC8();
  sub_22D81B328();
  v33 = sub_22D81BC18();
  v34 = -1 << *(v3 + 32);
  v35 = v33 & ~v34;
  if (((*(v3 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
  {
LABEL_61:
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v3;
    sub_22D7D8DD4(5, v35, v38);
    v3 = v56;
    v57 = v56;
LABEL_62:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_63;
  }

  v36 = ~v34;
  while (*(*(v3 + 48) + v35) <= 2u)
  {
    *(*(v3 + 48) + v35);
LABEL_59:
    v37 = sub_22D81BB08();

    if (v37)
    {
      goto LABEL_62;
    }

    v35 = (v35 + 1) & v36;
    if (((*(v3 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  if (*(*(v3 + 48) + v35) <= 4u || *(*(v3 + 48) + v35) == 6)
  {
    goto LABEL_59;
  }

  if ((a1 & 0x20) != 0)
  {
LABEL_63:
    v39 = *(v3 + 40);
    sub_22D81BBC8();
    sub_22D81B328();
    v40 = sub_22D81BC18();
    v41 = -1 << *(v3 + 32);
    v42 = v40 & ~v41;
    if (((*(v3 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
    {
LABEL_72:
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v3;
      sub_22D7D8DD4(6, v42, v45);
      v3 = v56;
      v57 = v56;
      goto LABEL_73;
    }

    v43 = ~v41;
    while (1)
    {
      if (*(*(v3 + 48) + v42) <= 2u)
      {
        *(*(v3 + 48) + v42);
      }

      else if (*(*(v3 + 48) + v42) > 4u && *(*(v3 + 48) + v42) != 5)
      {

        break;
      }

      v44 = sub_22D81BB08();

      if (v44)
      {
        break;
      }

      v42 = (v42 + 1) & v43;
      if (((*(v3 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
      {
        goto LABEL_72;
      }
    }
  }

LABEL_73:
  if ((a1 & 0x40) == 0)
  {
    goto LABEL_81;
  }

  v46 = *(v3 + 40);
  sub_22D81BBC8();
  sub_22D81B328();
  v47 = sub_22D81BC18();
  v48 = -1 << *(v3 + 32);
  v49 = v47 & ~v48;
  if (((*(v3 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
  {
LABEL_80:
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v3;
    sub_22D7D8DD4(0, v49, v52);
    v3 = v56;
    v57 = v56;
LABEL_81:
    v53 = *(v3 + 16);
    if (!v53)
    {
      goto LABEL_94;
    }

    goto LABEL_82;
  }

  v50 = ~v48;
  while (*(*(v3 + 48) + v49))
  {
    v51 = sub_22D81BB08();

    if (v51)
    {
      goto LABEL_81;
    }

    v49 = (v49 + 1) & v50;
    if (((*(v3 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  v53 = *(v3 + 16);
  if (!v53)
  {
LABEL_94:

    return MEMORY[0x277D84F90];
  }

LABEL_82:
  v54 = sub_22D7E878C(v53, 0);
  v55 = sub_22D7E977C(&v56, v54 + 32, v53, v3);
  sub_22D81A398();
  result = sub_22D792FD0();
  if (v55 == v53)
  {

    return v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D78EE24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D81A918();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22D78EED4(uint64_t a1)
{
  v2 = sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_22D78EF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22D744B0C;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_22D78F060(uint64_t a1)
{
  v2 = sub_22D795170(&qword_27DA02648, type metadata accessor for AlarmEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_22D78F0DC()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      swift_getAtPartialKeyPath();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      sub_22D795260((v0 + 2), v8);
      if (!v9)
      {
        goto LABEL_31;
      }

      if (swift_dynamicCast())
      {
        v3 = 1;
        return v3 & 1;
      }
    }

    else
    {
      if (v1 != 4)
      {
        swift_getAtPartialKeyPath();
        if (!swift_dynamicCast())
        {
          goto LABEL_34;
        }

        sub_22D795260((v0 + 2), v8);
        if (v9)
        {
          if (swift_dynamicCast())
          {

            v3 = 1;
            return v3 & 1;
          }
        }

        else
        {
          sub_22D764440(v8, &unk_27DA02030, qword_22D81F298);
        }

        goto LABEL_33;
      }

      swift_getAtPartialKeyPath();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      sub_22D795260((v0 + 2), v8);
      if (!v9)
      {
        goto LABEL_31;
      }

      if (swift_dynamicCast())
      {
        v3 = 1;
        return v3 & 1;
      }
    }

LABEL_34:
    v3 = 0;
    return v3 & 1;
  }

  if (!*(v0 + 8))
  {
    swift_getAtPartialKeyPath();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_22D795260((v0 + 2), v8);
    if (!v9)
    {

      goto LABEL_31;
    }

    if (swift_dynamicCast())
    {
      v4 = sub_22D81B2F8();
      v6 = v5;

      v8[0] = v4;
      v8[1] = v6;
      sub_22D81B2F8();

      sub_22D77F62C();
      v3 = sub_22D81B748();

      return v3 & 1;
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v1 != 1)
  {
    swift_getAtPartialKeyPath();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_22D795260((v0 + 2), v8);
    if (v9)
    {
      if (swift_dynamicCast())
      {
        v3 = 0;
        return v3 & 1;
      }

      goto LABEL_34;
    }

LABEL_31:
    sub_22D764440(v8, &unk_27DA02030, qword_22D81F298);
    goto LABEL_34;
  }

  swift_getAtPartialKeyPath();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_22D795260((v0 + 2), v8);
  if (!v9)
  {
    goto LABEL_31;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  v3 = 0;
  return v3 & 1;
}

uint64_t sub_22D78F518()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02770, &qword_22D821830);
  __swift_allocate_value_buffer(v0, qword_27DA0D348);
  __swift_project_value_buffer(v0, qword_27DA0D348);
  type metadata accessor for AlarmEntity();
  sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity);
  return sub_22D81A358();
}

uint64_t sub_22D78F5DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02778, &qword_22D821838);
  swift_getKeyPath();
  sub_22D81A308();
  sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity);
  v0 = sub_22D81A198();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02780, &qword_22D821840);
  swift_getKeyPath();
  sub_22D81A198();
  sub_22D81A308();
  v1 = sub_22D81A198();

  swift_getKeyPath();
  sub_22D81A198();
  sub_22D81A308();
  v2 = sub_22D81A198();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02788, &qword_22D821870);
  swift_getKeyPath();
  sub_22D81A198();
  sub_22D81A308();
  v3 = sub_22D81A198();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E88, &qword_22D81EAA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22D821030;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  type metadata accessor for AlarmEntity();
  sub_22D81A198();
  v5 = sub_22D81A4D8();

  return v5;
}

uint64_t sub_22D78F858()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027D0, &qword_22D821960);
  v0 = *(v27 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = MEMORY[0x28223BE20](v27);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027D8, &qword_22D821968);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_22D81A2A8();
  type metadata accessor for AlarmEntity();
  sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity);
  sub_22D81A528();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027E0, &qword_22D821970);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_22D81A2E8();
  sub_22D81A528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027E8, &qword_22D821978);
  v13 = *(v0 + 72);
  v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22D821040;
  v16 = v15 + v14;
  v17 = *(v1 + 16);
  v18 = v6;
  v19 = v6;
  v20 = v27;
  v17(v16, v19, v27);
  v21 = v16 + v13;
  v22 = v26;
  v17(v21, v26, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02700, &qword_22D821770);
  sub_22D767548();
  v23 = sub_22D81A518();

  v24 = *(v1 + 8);
  v24(v22, v20);
  v24(v18, v20);
  return v23;
}

uint64_t sub_22D78FB78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  KeyPath = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D837D0];
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *a2 = KeyPath;
  *(a2 + 8) = 5;

  return sub_22D81A398();
}

uint64_t sub_22D78FBE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + *(type metadata accessor for AlarmEntity() + 20));
  sub_22D81A398();
  return sub_22D819FF8();
}

uint64_t sub_22D78FC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  *(a3 + 40) = MEMORY[0x277D837D0];
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *a3 = KeyPath;
  *(a3 + 8) = 0;

  return sub_22D81A398();
}

uint64_t sub_22D78FCE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D83B88];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_22D78FD2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D83B88];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 2;
  return result;
}

uint64_t sub_22D78FD78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D83B88];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 4;
  return result;
}

uint64_t sub_22D78FE04(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027A8, &qword_22D8218E8);
  v2 = *(v34 - 8);
  v3 = v2;
  v4 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v30 - v8;
  MEMORY[0x28223BE20](v7);
  v35 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027B0, &qword_22D8218F0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_22D81A2F8();
  type metadata accessor for AlarmEntity();
  sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity);
  sub_22D81A528();

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027B8, &qword_22D8218F8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_22D81A368();
  sub_22D81A528();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027C0, &qword_22D821900);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_22D81A2A8();
  sub_22D81A528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027C8, &qword_22D821908);
  v19 = *(v2 + 72);
  v30 = v2;
  v20 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22D81E100;
  v22 = v21 + v20;
  v23 = *(v3 + 16);
  v24 = v34;
  v23(v22, v35, v34);
  v25 = v32;
  v23(v22 + v19, v32, v24);
  v26 = v31;
  v23(v22 + 2 * v19, v31, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02710, &qword_22D821780);
  sub_22D791B90();
  v27 = sub_22D81A518();

  v28 = *(v30 + 8);
  v28(v26, v24);
  v28(v25, v24);
  v28(v35, v24);
  return v27;
}

uint64_t sub_22D7901C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D83B88];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_22D790214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D83B88];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 2;
  return result;
}

uint64_t sub_22D790260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D83B88];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 4;
  return result;
}

uint64_t sub_22D7902AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02790, &qword_22D8218A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02798, &qword_22D8218B0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_22D81A2A8();
  type metadata accessor for AlarmEntity();
  sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity);
  sub_22D81A528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027A0, &qword_22D8218B8);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22D81DF60;
  (*(v1 + 16))(v10 + v9, v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02718, &qword_22D821788);
  sub_22D791C44();
  v11 = sub_22D81A518();

  (*(v1 + 8))(v4, v0);
  return v11;
}

uint64_t sub_22D7904F8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D839B0];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 3;
  return result;
}

uint64_t sub_22D790544(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02738, &qword_22D8217B8);
  sub_22D81A098();
  v4 = type metadata accessor for AlarmEntity();
  v5 = *(a1 + *(v4 + 20));
  sub_22D819FE8();
  v6 = *(a2 + *(v4 + 20));
  sub_22D819FE8();

  return 0;
}

uint64_t sub_22D790660(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02738, &qword_22D8217B8);
  sub_22D81A098();
  v4 = type metadata accessor for AlarmEntity();
  v5 = *(a1 + *(v4 + 28));
  sub_22D819FE8();
  v6 = *(a2 + *(v4 + 28));
  sub_22D819FE8();
  return 0;
}

uint64_t sub_22D790728(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for AlarmEntity() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_22D7907BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02748, &qword_22D821818);
  __swift_allocate_value_buffer(v0, qword_27DA0D360);
  __swift_project_value_buffer(v0, qword_27DA0D360);
  type metadata accessor for AlarmEntity();
  sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity);
  return sub_22D81A478();
}

uint64_t sub_22D790878()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02750, &qword_22D821820);
  v1 = *(v0 - 8);
  v28 = v0;
  v29 = v1;
  v2 = v1;
  v26[0] = v1;
  v3 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v26 - v8;
  MEMORY[0x28223BE20](v7);
  v27 = v26 - v10;
  swift_getKeyPath();
  v11 = sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity);
  sub_22D7548B0(&qword_27DA02758, &qword_27DA02700, &qword_22D821770);
  sub_22D81A538();
  v26[2] = type metadata accessor for AlarmEntity();
  sub_22D81A588();
  v12 = *(v2 + 8);
  v13 = v28;
  v12(v9, v28);
  swift_getKeyPath();
  sub_22D7548B0(&qword_27DA02760, &qword_27DA02710, &qword_22D821780);
  v26[1] = v11;
  sub_22D81A538();
  sub_22D81A588();
  v14 = v13;
  v12(v6, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02768, &qword_22D821828);
  v15 = *(v29 + 72);
  v16 = v26[0];
  v17 = (*(v26[0] + 80) + 32) & ~*(v26[0] + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22D821040;
  v19 = v18 + v17;
  v20 = *(v16 + 16);
  v21 = v27;
  v20(v19, v27, v14);
  v22 = v19 + v15;
  v23 = v14;
  v20(v22, v9, v14);
  v24 = sub_22D81A578();

  v12(v9, v23);
  v12(v21, v23);
  return v24;
}

uint64_t sub_22D790BA4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v21 = sub_22D81A768();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v22;
  sub_22D81A778();
  (*(v13 + 56))(v17, 0, 1, v21);
  v18 = v23;
  sub_22D81A2C8();
  v19 = sub_22D81A2B8();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_22D790F28@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DA019D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02770, &qword_22D821830);
  v3 = __swift_project_value_buffer(v2, qword_27DA0D348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22D790FDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DA019D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02748, &qword_22D821818);
  v3 = __swift_project_value_buffer(v2, qword_27DA0D360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22D791094(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_22D756614;

  return sub_22D793F1C(a2, a3 & 1, a4, a5, a6 & 1);
}

unint64_t sub_22D791174()
{
  result = qword_27DA02670;
  if (!qword_27DA02670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02670);
  }

  return result;
}

unint64_t sub_22D7911CC()
{
  result = qword_27DA02678;
  if (!qword_27DA02678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02678);
  }

  return result;
}

uint64_t sub_22D791268(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22D795494;

  return sub_22D794C8C(a1);
}

uint64_t sub_22D791310(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22D795478;

  return sub_22D793BC0();
}

uint64_t sub_22D7913B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22D791474;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_22D791474(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_22D791578()
{
  result = qword_27DA02680;
  if (!qword_27DA02680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02680);
  }

  return result;
}

unint64_t sub_22D7915D0()
{
  result = qword_27DA02688;
  if (!qword_27DA02688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA02690, qword_22D821600);
    sub_22D795170(&qword_27DA01D08, type metadata accessor for AlarmEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02688);
  }

  return result;
}

uint64_t sub_22D791684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22D744B08;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22D791764(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22D7917AC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AlarmEntity.RepeatDay(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmEntity.RepeatDay(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_22D791990()
{
  sub_22D81A918();
  if (v0 <= 0x3F)
  {
    sub_22D791BE4(319, &qword_27DA026A8, sub_22D767548);
    if (v1 <= 0x3F)
    {
      sub_22D791AFC();
      if (v2 <= 0x3F)
      {
        sub_22D791BE4(319, &qword_27DA026C0, sub_22D791B90);
        if (v3 <= 0x3F)
        {
          sub_22D791BE4(319, &qword_27DA026D0, sub_22D791C44);
          if (v4 <= 0x3F)
          {
            sub_22D791C98();
            if (v5 <= 0x3F)
            {
              sub_22D791D8C();
              if (v6 <= 0x3F)
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

void sub_22D791AFC()
{
  if (!qword_27DA026B0)
  {
    sub_22D81A7A8();
    sub_22D795170(&qword_27DA026B8, MEMORY[0x277CC9260]);
    v0 = sub_22D81A078();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA026B0);
    }
  }
}

unint64_t sub_22D791B90()
{
  result = qword_27DA026C8;
  if (!qword_27DA026C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA026C8);
  }

  return result;
}

void sub_22D791BE4(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_22D81A078();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22D791C44()
{
  result = qword_27DA026D8;
  if (!qword_27DA026D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA026D8);
  }

  return result;
}

void sub_22D791C98()
{
  if (!qword_27DA026E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA01DD8, qword_22D81E830);
    sub_22D791D08();
    v0 = sub_22D81A078();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA026E0);
    }
  }
}

unint64_t sub_22D791D08()
{
  result = qword_27DA026E8;
  if (!qword_27DA026E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA01DD8, qword_22D81E830);
    sub_22D7564A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA026E8);
  }

  return result;
}

void sub_22D791D8C()
{
  if (!qword_27DA026F0)
  {
    sub_22D81A708();
    sub_22D795170(&qword_27DA026F8, MEMORY[0x277CC8990]);
    v0 = sub_22D81A078();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA026F0);
    }
  }
}

id sub_22D791E20()
{
  result = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
  qword_27DA0D378 = result;
  return result;
}

uint64_t sub_22D791E54(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a5;
  v143 = a4;
  v132 = a1;
  v136 = type metadata accessor for AlarmEntity();
  v141 = *(v136 - 8);
  v10 = *(v141 + 64);
  v11 = MEMORY[0x28223BE20](v136);
  v133 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v135 = &v121 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v121 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v121 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  result = MEMORY[0x28223BE20](v23);
  v29 = a3[1];
  v137 = a3;
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_100:
    v32 = v142;
    v18 = *v132;
    if (*v132)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_102;
    }

    goto LABEL_141;
  }

  v127 = &v121 - v25;
  v128 = v28;
  v138 = v27;
  v134 = v26;
  v126 = a6;
  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  v130 = v22;
  v125 = v18;
  while (1)
  {
    v32 = v30;
    v33 = v30 + 1;
    if (v33 >= v29)
    {
      v46 = v33;
    }

    else
    {
      v131 = v29;
      v140 = v7;
      v34 = *a3;
      v35 = *(v141 + 72);
      v36 = v32;
      v37 = v34 + v35 * v33;
      v38 = v127;
      sub_22D76D5B4(v37, v127);
      v39 = v128;
      sub_22D76D5B4(v34 + v35 * v36, v128);
      v40 = v140;
      LODWORD(v140) = v143(v38, v39);
      if (v40)
      {
        sub_22D750754(v39);
        sub_22D750754(v38);
      }

      sub_22D750754(v39);
      result = sub_22D750754(v38);
      v124 = v131 - 1;
      v139 = v131 - 2;
      v41 = v34 + v35 * (v36 + 2);
      v129 = v36;
      v42 = v36;
      v7 = 0;
      while (v139 != v42)
      {
        sub_22D76D5B4(v41, v22);
        v43 = v22;
        v44 = v138;
        sub_22D76D5B4(v37, v138);
        v45 = v143(v43, v44);
        sub_22D750754(v44);
        result = sub_22D750754(v43);
        ++v42;
        v41 += v35;
        v37 += v35;
        v22 = v43;
        if ((v140 ^ v45))
        {
          v46 = v42 + 1;
          goto LABEL_11;
        }
      }

      v42 = v124;
      v46 = v131;
LABEL_11:
      v18 = v125;
      v32 = v129;
      if ((v140 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v46 < v129)
      {
        goto LABEL_135;
      }

      if (v129 <= v42)
      {
        v47 = v46;
        v48 = v35 * (v46 - 1);
        v49 = v46 * v35;
        v131 = v46;
        v50 = v129;
        v51 = v129 * v35;
        do
        {
          if (v50 != --v47)
          {
            v140 = v7;
            v52 = *v137;
            if (!*v137)
            {
              goto LABEL_139;
            }

            sub_22D793EB8(v52 + v51, v133);
            if (v51 < v48 || v52 + v51 >= (v52 + v49))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v51 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_22D793EB8(v133, v52 + v48);
            v7 = v140;
          }

          ++v50;
          v48 -= v35;
          v49 -= v35;
          v51 += v35;
        }

        while (v50 < v47);
        a3 = v137;
        v18 = v125;
        v32 = v129;
        v46 = v131;
      }

      else
      {
LABEL_14:
        a3 = v137;
      }
    }

    v53 = a3[1];
    if (v46 >= v53)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v46, v32))
    {
      goto LABEL_131;
    }

    if (v46 - v32 >= v126)
    {
LABEL_35:
      v55 = v46;
      if (v46 < v32)
      {
        goto LABEL_130;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v32, v126))
    {
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v32 + v126 >= v53)
    {
      v54 = a3[1];
    }

    else
    {
      v54 = v32 + v126;
    }

    if (v54 < v32)
    {
      goto LABEL_134;
    }

    if (v46 == v54)
    {
      goto LABEL_35;
    }

    v103 = *a3;
    v104 = *(v141 + 72);
    v105 = *a3 + v104 * (v46 - 1);
    v106 = -v104;
    v129 = v32;
    v107 = v32 - v46;
    v131 = v46;
    v140 = v103;
    v121 = v104;
    v108 = v103 + v46 * v104;
    v139 = v54;
    do
    {
      v122 = v108;
      v123 = v107;
      v124 = v105;
      v109 = v107;
      do
      {
        sub_22D76D5B4(v108, v18);
        v110 = v18;
        v111 = v134;
        sub_22D76D5B4(v105, v134);
        v112 = v143(v110, v111);
        if (v7)
        {
          sub_22D750754(v111);
          sub_22D750754(v110);
        }

        v113 = v112;
        sub_22D750754(v111);
        result = sub_22D750754(v110);
        v18 = v110;
        if ((v113 & 1) == 0)
        {
          break;
        }

        if (!v140)
        {
          goto LABEL_137;
        }

        v114 = v135;
        sub_22D793EB8(v108, v135);
        swift_arrayInitWithTakeFrontToBack();
        sub_22D793EB8(v114, v105);
        v105 += v106;
        v108 += v106;
      }

      while (!__CFADD__(v109++, 1));
      v105 = v124 + v121;
      v107 = v123 - 1;
      v108 = v122 + v121;
      v55 = v139;
      ++v131;
    }

    while (v131 != v139);
    a3 = v137;
    v32 = v129;
    if (v139 < v129)
    {
      goto LABEL_130;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    v56 = v7;
    if ((result & 1) == 0)
    {
      result = sub_22D792ECC(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v58 = *(v31 + 2);
    v57 = *(v31 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      result = sub_22D792ECC((v57 > 1), v58 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v59;
    v60 = &v31[16 * v58];
    *(v60 + 4) = v32;
    *(v60 + 5) = v55;
    v61 = *v132;
    if (!*v132)
    {
      goto LABEL_140;
    }

    v139 = v55;
    if (v58)
    {
      break;
    }

    v7 = v56;
LABEL_87:
    v29 = a3[1];
    v30 = v139;
    v22 = v130;
    if (v139 >= v29)
    {
      goto LABEL_100;
    }
  }

  v7 = v56;
  while (1)
  {
    v32 = v59 - 1;
    if (v59 >= 4)
    {
      v66 = &v31[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_117;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_118;
      }

      v73 = &v31[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_120;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_123;
      }

      if (v77 >= v69)
      {
        v95 = &v31[16 * v32 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_129;
        }

        if (v64 < v98)
        {
          v32 = v59 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v59 == 3)
    {
      v62 = *(v31 + 4);
      v63 = *(v31 + 5);
      v72 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      v65 = v72;
LABEL_56:
      if (v65)
      {
        goto LABEL_119;
      }

      v78 = &v31[16 * v59];
      v80 = *v78;
      v79 = *(v78 + 1);
      v81 = __OFSUB__(v79, v80);
      v82 = v79 - v80;
      v83 = v81;
      if (v81)
      {
        goto LABEL_122;
      }

      v84 = &v31[16 * v32 + 32];
      v86 = *v84;
      v85 = *(v84 + 1);
      v72 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v72)
      {
        goto LABEL_125;
      }

      if (__OFADD__(v82, v87))
      {
        goto LABEL_126;
      }

      if (v82 + v87 >= v64)
      {
        if (v64 < v87)
        {
          v32 = v59 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v88 = &v31[16 * v59];
    v90 = *v88;
    v89 = *(v88 + 1);
    v72 = __OFSUB__(v89, v90);
    v82 = v89 - v90;
    v83 = v72;
LABEL_70:
    if (v83)
    {
      goto LABEL_121;
    }

    v91 = &v31[16 * v32];
    v93 = *(v91 + 4);
    v92 = *(v91 + 5);
    v72 = __OFSUB__(v92, v93);
    v94 = v92 - v93;
    if (v72)
    {
      goto LABEL_124;
    }

    if (v94 < v82)
    {
      goto LABEL_87;
    }

LABEL_77:
    v99 = v32 - 1;
    if (v32 - 1 >= v59)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_136;
    }

    v100 = *&v31[16 * v99 + 32];
    v101 = *&v31[16 * v32 + 40];
    sub_22D7927F0(*a3 + *(v141 + 72) * v100, *a3 + *(v141 + 72) * *&v31[16 * v32 + 32], *a3 + *(v141 + 72) * v101, v61, v143, v142);
    if (v7)
    {
    }

    if (v101 < v100)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_22D792DD4(v31);
    }

    if (v99 >= *(v31 + 2))
    {
      goto LABEL_116;
    }

    v102 = &v31[16 * v99];
    *(v102 + 4) = v100;
    *(v102 + 5) = v101;
    v144 = v31;
    result = sub_22D792D48(v32);
    v31 = v144;
    v59 = *(v144 + 2);
    if (v59 <= 1)
    {
      goto LABEL_87;
    }
  }

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
  result = sub_22D792DD4(v31);
  v31 = result;
LABEL_102:
  v144 = v31;
  v116 = *(v31 + 2);
  if (v116 < 2)
  {
  }

  while (1)
  {
    v117 = *a3;
    if (!*a3)
    {
      break;
    }

    a3 = (v116 - 1);
    v118 = *&v31[16 * v116];
    v119 = *&v31[16 * v116 + 24];
    sub_22D7927F0(v117 + *(v141 + 72) * v118, v117 + *(v141 + 72) * *&v31[16 * v116 + 16], v117 + *(v141 + 72) * v119, v18, v143, v32);
    if (v7)
    {
    }

    if (v119 < v118)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_22D792DD4(v31);
    }

    if (v116 - 2 >= *(v31 + 2))
    {
      goto LABEL_128;
    }

    v120 = &v31[16 * v116];
    *v120 = v118;
    *(v120 + 1) = v119;
    v144 = v31;
    result = sub_22D792D48(a3);
    v31 = v144;
    v116 = *(v144 + 2);
    a3 = v137;
    if (v116 <= 1)
    {
    }
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_22D7927F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, char *), uint64_t a6)
{
  v7 = v6;
  v59 = a6;
  v60 = a5;
  v58 = type metadata accessor for AlarmEntity();
  v12 = *(*(v58 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v58);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v55 = &v49 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  result = MEMORY[0x28223BE20](v18);
  v23 = &v49 - v22;
  v57 = *(v24 + 72);
  if (!v57)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v57 == -1)
  {
    goto LABEL_65;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v57 == -1)
  {
    goto LABEL_66;
  }

  v56 = a3;
  v26 = (a2 - a1) / v57;
  v63 = a1;
  v62 = a4;
  if (v26 >= v25 / v57)
  {
    v28 = v25 / v57 * v57;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v28;
    if (v28 >= 1)
    {
      v36 = v56;
      v37 = -v57;
      v38 = v35;
      v51 = v15;
      v52 = a1;
      do
      {
        v49 = v35;
        v39 = a2;
        v53 = a2;
        v54 = a2 + v37;
        while (1)
        {
          if (v39 <= a1)
          {
            v63 = v39;
            v35 = v49;
            goto LABEL_62;
          }

          v40 = v36;
          v50 = v35;
          v41 = v7;
          v42 = a4;
          v57 = v38;
          v43 = v38 + v37;
          v44 = v55;
          sub_22D76D5B4(v38 + v37, v55);
          sub_22D76D5B4(v54, v15);
          v45 = v60(v44, v15);
          if (v41)
          {
            sub_22D750754(v15);
            sub_22D750754(v44);
            v63 = v53;
            v35 = v50;
            goto LABEL_62;
          }

          v46 = v45;
          v56 = 0;
          v47 = v40 + v37;
          sub_22D750754(v15);
          sub_22D750754(v44);
          if (v46)
          {
            break;
          }

          v35 = v43;
          v36 = v40 + v37;
          if (v40 < v57 || v47 >= v57)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v43;
            a4 = v42;
          }

          else
          {
            a4 = v42;
            if (v40 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
              v35 = v43;
            }
          }

          v38 = v35;
          v7 = v56;
          v15 = v51;
          a1 = v52;
          v39 = v53;
          if (v43 <= a4)
          {
            a2 = v53;
            goto LABEL_61;
          }
        }

        v36 = v40 + v37;
        if (v40 < v53 || v47 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          a4 = v42;
        }

        else
        {
          v48 = v40 == v53;
          a2 = v54;
          a4 = v42;
          if (!v48)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v7 = v56;
        v38 = v57;
        v15 = v51;
        a1 = v52;
        v35 = v50;
      }

      while (v57 > a4);
    }

LABEL_61:
    v63 = a2;
LABEL_62:
    v61 = v35;
  }

  else
  {
    v27 = v26 * v57;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v27;
    v61 = a4 + v27;
    if (v27 >= 1 && a2 < v56)
    {
      while (1)
      {
        sub_22D76D5B4(a2, v23);
        sub_22D76D5B4(a4, v20);
        v31 = v60(v23, v20);
        if (v6)
        {
          break;
        }

        v32 = v31;
        sub_22D750754(v20);
        sub_22D750754(v23);
        if (v32)
        {
          v33 = v57;
          if (a1 < a2 || a1 >= a2 + v57)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v33;
        }

        else
        {
          v33 = v57;
          v34 = a4 + v57;
          if (a1 < a4 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v62 = v34;
          a4 += v33;
        }

        a1 += v33;
        v63 = a1;
        if (a4 >= v29 || a2 >= v56)
        {
          goto LABEL_63;
        }
      }

      sub_22D750754(v20);
      sub_22D750754(v23);
    }
  }

LABEL_63:
  sub_22D792DE8(&v63, &v62, &v61);
  return 1;
}

uint64_t sub_22D792D48(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22D792DD4(v3);
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

uint64_t sub_22D792DE8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AlarmEntity();
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

char *sub_22D792ECC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02740, &qword_22D821810);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_22D793000()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v79 = &v61 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v61 - v5;
  v6 = sub_22D81A748();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D81A958();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D81B2A8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_22D81A768();
  v83 = *(v80 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027F0, &unk_22D8219B0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027F8, &qword_22D8275C0);
  v23 = *(v22 - 8);
  v73 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v65 = v25;
  *(v25 + 16) = xmmword_22D821050;
  v64 = *(v22 + 48);
  v82 = v22;
  *(v25 + v24) = 0;
  v26 = v25 + v24;
  v68 = v18;
  sub_22D81B228();
  v69 = v14;
  sub_22D81A948();
  v81 = *MEMORY[0x277CC9110];
  v27 = *(v7 + 104);
  v78 = v7 + 104;
  v84 = v27;
  v70 = v6;
  (v27)(v10);
  v28 = v10;
  sub_22D81A778();
  v75 = *(v83 + 56);
  v83 += 56;
  v29 = v71;
  v30 = v80;
  v75(v71, 1, 1, v80);
  v74 = sub_22D81A328();
  v31 = *(v74 - 8);
  v76 = *(v31 + 56);
  v77 = v31 + 56;
  v32 = v79;
  v76(v79, 1, 1, v74);
  v72 = v26;
  v66 = v21;
  v33 = v32;
  sub_22D81A338();
  v34 = v73;
  v63 = v26 + v73;
  v64 = *(v22 + 48);
  *v63 = 1;
  sub_22D81B228();
  sub_22D81A948();
  v67 = v28;
  v35 = v28;
  v36 = v70;
  v84(v35, v81, v70);
  sub_22D81A778();
  v37 = v75;
  v75(v29, 1, 1, v30);
  v38 = v74;
  v76(v33, 1, 1, v74);
  sub_22D81A338();
  v64 = 2 * v34;
  v62 = (v72 + 2 * v34);
  v63 = *(v82 + 48);
  *v62 = 2;
  sub_22D81B228();
  sub_22D81A948();
  v39 = v67;
  v84(v67, v81, v36);
  sub_22D81A778();
  v40 = v29;
  v37(v29, 1, 1, v80);
  v41 = v76;
  v76(v79, 1, 1, v38);
  sub_22D81A338();
  v42 = v72;
  v63 = v72 + v64 + v73;
  v64 = *(v82 + 48);
  *v63 = 3;
  sub_22D81B228();
  sub_22D81A948();
  v43 = v70;
  v84(v39, v81, v70);
  sub_22D81A778();
  v44 = v80;
  v75(v40, 1, 1, v80);
  v45 = v79;
  v41(v79, 1, 1, v74);
  v46 = v45;
  sub_22D81A338();
  v47 = v73;
  v64 = 4 * v73;
  v62 = (v42 + 4 * v73);
  v63 = *(v82 + 48);
  *v62 = 4;
  sub_22D81B228();
  sub_22D81A948();
  v48 = v81;
  v84(v67, v81, v43);
  sub_22D81A778();
  v49 = v75;
  v75(v71, 1, 1, v44);
  v50 = v74;
  v76(v46, 1, 1, v74);
  sub_22D81A338();
  v51 = v72;
  v63 = v72 + v64 + v47;
  v64 = *(v82 + 48);
  *v63 = 5;
  sub_22D81B228();
  sub_22D81A948();
  v52 = v67;
  v84(v67, v48, v43);
  sub_22D81A778();
  v53 = v71;
  v49(v71, 1, 1, v80);
  v54 = v79;
  v55 = v50;
  v56 = v76;
  v76(v79, 1, 1, v55);
  v57 = v53;
  sub_22D81A338();
  v58 = (v51 + 6 * v73);
  v73 = *(v82 + 48);
  *v58 = 6;
  sub_22D81B228();
  sub_22D81A948();
  v84(v52, v81, v70);
  sub_22D81A778();
  v75(v57, 1, 1, v80);
  v56(v54, 1, 1, v74);
  sub_22D81A338();
  v59 = sub_22D818330(v65);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v59;
}

uint64_t sub_22D793B74()
{
  v0 = sub_22D81B998();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22D793BC0()
{
  v1 = *(type metadata accessor for AlarmEntity() - 8);
  *(v0 + 16) = v1;
  v2 = *(v1 + 64) + 15;
  *(v0 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D793C78, 0, 0);
}

size_t sub_22D793C78()
{
  if (qword_27DA019E0 != -1)
  {
    swift_once();
  }

  v1 = [qword_27DA0D378 alarmsSync];
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    goto LABEL_17;
  }

  v3 = v1;
  sub_22D793E6C();
  v4 = sub_22D81B438();

  if (v4 >> 62)
  {
    v5 = sub_22D81B938();
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_6:
      result = sub_22D7E8A88(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = 0;
      v8 = v0[2];
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2318D1F70](v7, v4);
        }

        else
        {
          v9 = *(v4 + 8 * v7 + 32);
        }

        sub_22D78B5EC(v9, v0[3]);
        v11 = *(v2 + 16);
        v10 = *(v2 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_22D7E8A88(v10 > 1, v11 + 1, 1);
        }

        v12 = v0[3];
        ++v7;
        *(v2 + 16) = v11 + 1;
        sub_22D793EB8(v12, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11);
      }

      while (v5 != v7);
    }
  }

LABEL_17:
  v13 = v0[3];

  v14 = v0[1];

  return v14(v2);
}

unint64_t sub_22D793E6C()
{
  result = qword_280CD1510;
  if (!qword_280CD1510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CD1510);
  }

  return result;
}

uint64_t sub_22D793EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D793F1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 377) = a5;
  *(v5 + 216) = a3;
  *(v5 + 224) = a4;
  *(v5 + 376) = a2;
  *(v5 + 208) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02738, &qword_22D8217B8);
  *(v5 + 232) = v6;
  v7 = *(v6 - 8);
  *(v5 + 240) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  v9 = type metadata accessor for AlarmEntity();
  *(v5 + 256) = v9;
  v10 = *(v9 - 8);
  *(v5 + 264) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v5 + 352) = v12;
  *v12 = v5;
  v12[1] = sub_22D7940FC;

  return sub_22D793BC0();
}

uint64_t sub_22D7940FC(uint64_t a1)
{
  v3 = *(*v2 + 352);
  v4 = *v2;
  v4[45] = a1;
  v4[46] = v1;

  if (v1)
  {
    v6 = v4[42];
    v5 = v4[43];
    v8 = v4[40];
    v7 = v4[41];
    v10 = v4[38];
    v9 = v4[39];
    v12 = v4[36];
    v11 = v4[37];
    v16 = v4[35];
    v17 = v4[34];
    v13 = v4[31];

    v14 = v4[1];

    return v14();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22D7942D0, 0, 0);
  }
}

uint64_t sub_22D7942D0()
{
  v152 = v1;
  v3 = *(v1 + 360);
  v144 = *(v3 + 16);
  if (v144)
  {
    v4 = 0;
    v138 = *(v1 + 208);
    v141 = *(v1 + 264);
    v5 = MEMORY[0x277D84F90];
    while (v4 < *(v3 + 16))
    {
      v0 = *(v1 + 376);
      v6 = (*(v141 + 80) + 32) & ~*(v141 + 80);
      v7 = *(v141 + 72);
      sub_22D76D5B4(*(v1 + 360) + v6 + v7 * v4, *(v1 + 344));
      if (v0)
      {
        v8 = v138 + 32;
        v9 = *(v138 + 16) + 1;
        while (--v9)
        {
          v10 = v8 + 48;
          v2 = *(v1 + 344);
          sub_22D7951B8(v8, v1 + 16);
          v0 = sub_22D78F0DC();
          sub_22D7951F0(v1 + 16);
          v8 = v10;
          if (v0)
          {
            goto LABEL_10;
          }
        }

LABEL_3:
        sub_22D750754(*(v1 + 344));
      }

      else
      {
        v15 = v138 + 32;
        v16 = *(v138 + 16) + 1;
        while (--v16)
        {
          v17 = v15 + 48;
          v2 = *(v1 + 344);
          sub_22D7951B8(v15, v1 + 64);
          v0 = sub_22D78F0DC();
          sub_22D7951F0(v1 + 64);
          v15 = v17;
          if ((v0 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_10:
        sub_22D793EB8(*(v1 + 344), *(v1 + 336));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v0 = &v150;
          sub_22D7E8A88(0, *(v5 + 16) + 1, 1);
          v5 = v150;
        }

        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        v2 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          v0 = &v150;
          sub_22D7E8A88(v12 > 1, v13 + 1, 1);
          v5 = v150;
        }

        v14 = *(v1 + 336);
        *(v5 + 16) = v2;
        sub_22D793EB8(v14, v5 + v6 + v13 * v7);
      }

      if (++v4 == v144)
      {
        v134 = v5;
        v18 = *(v1 + 360);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v134 = MEMORY[0x277D84F90];
LABEL_21:
  v19 = *(v1 + 216);

  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v1 + 264);
    v145 = *(v1 + 256);
    v22 = *(v1 + 240);
    v23 = *(v1 + 216);
    sub_22D81B778();
    v24 = *(v22 + 16);
    v22 += 16;
    v131 = v23 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v132 = v24;
    v129 = (v22 - 8);
    v130 = *(v22 + 56);
    v25 = 0;
    v127 = v20;
    v128 = *(v1 + 368);
    v126 = v21;
    v24(*(v1 + 248), v131, *(v1 + 232));
    while (1)
    {
      v26 = sub_22D81A088();
      KeyPath = swift_getKeyPath();
      v28 = MEMORY[0x2318D1E70](v26, KeyPath);

      v29 = *(v1 + 248);
      if (v28)
      {
        break;
      }

      v35 = v21;
      v36 = *(v1 + 232);
      v37 = sub_22D81A088();
      v38 = swift_getKeyPath();
      v39 = MEMORY[0x2318D1E70](v37, v38);

      if (v39)
      {
        v40 = *(v1 + 248);
        v41 = swift_task_alloc();
        *(v41 + 16) = v40;
        v42 = v134;
        v21 = v35;
        v133 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_22D781BE0(v134);
        }

        v43 = *(v42 + 16);
        v44 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v134 = v42;
        v45 = v42 + v44;
        v147 = v42 + v44;
        v148 = v43;
        v46 = sub_22D81BAC8();
        if (v46 >= v43)
        {
          if (v43 >= 2)
          {
            v137 = v43;
            v88 = *(v35 + 72);
            v89 = -1;
            v90 = 1;
            v91 = v45;
            do
            {
              v140 = v89;
              v143 = v91;
              do
              {
                v93 = *(v1 + 288);
                v92 = *(v1 + 296);
                v94 = *(v1 + 248);
                v95 = *(v1 + 232);
                sub_22D76D5B4(v91 + v88, v92);
                sub_22D76D5B4(v91, v93);
                v96 = sub_22D81A098();
                v97 = *(v92 + *(v145 + 28));
                v98 = *(v1 + 288);
                if (v96)
                {
                  sub_22D819FE8();
                  v99 = *(v1 + 176);
                  v100 = *(v98 + *(v145 + 28));
                  sub_22D819FE8();
                  v101 = *(v1 + 184) < v99;
                }

                else
                {
                  sub_22D819FE8();
                  v102 = *(v1 + 192);
                  v103 = *(v98 + *(v145 + 28));
                  sub_22D819FE8();
                  v101 = v102 < *(v1 + 200);
                }

                v104 = v101;
                v105 = *(v1 + 296);
                sub_22D750754(*(v1 + 288));
                sub_22D750754(v105);
                if ((v104 & 1) == 0)
                {
                  break;
                }

                v106 = *(v1 + 280);
                v107 = *(v1 + 256);
                sub_22D793EB8(v91 + v88, v106);
                swift_arrayInitWithTakeFrontToBack();
                sub_22D793EB8(v106, v91);
                v91 -= v88;
                v87 = __CFADD__(v89++, 1);
              }

              while (!v87);
              ++v90;
              v91 = v143 + v88;
              v89 = v140 - 1;
            }

            while (v90 != v137);
LABEL_23:
            v21 = v126;
            v20 = v127;
          }
        }

        else
        {
          v47 = v46;
          v48 = MEMORY[0x277D84F90];
          if (v43 >= 2)
          {
            v49 = *(v1 + 256);
            v48 = sub_22D81B468();
            *(v48 + 16) = v43 >> 1;
          }

          v150 = v48 + v44;
          v151 = v43 >> 1;
          v50 = v48;
          v51 = v128;
          sub_22D791E54(&v150, &v149, &v147, sub_22D795220, v41, v47);
          *(v50 + 16) = 0;

          v128 = 0;
          v21 = v35;
          if (v51)
          {
            return result;
          }
        }

        goto LABEL_24;
      }

      v21 = v35;
LABEL_25:
      ++v25;
      (*v129)(*(v1 + 248), *(v1 + 232));
      if (v25 == v20)
      {
        goto LABEL_77;
      }

      v132(*(v1 + 248), v131 + v25 * v130, *(v1 + 232));
    }

    v30 = swift_task_alloc();
    *(v30 + 16) = v29;
    v31 = v134;
    v133 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_22D781BE0(v134);
    }

    v32 = *(v31 + 16);
    v33 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v134 = v31;
    v34 = v31 + v33;
    v147 = v31 + v33;
    v148 = v32;
    if (v32 < 0x40)
    {
      if (v32 >= 2)
      {
        goto LABEL_48;
      }

LABEL_24:

      v25 = v133;
      goto LABEL_25;
    }

    v53 = 58 - __clz(v32);
    v54 = -1 << v53;
    v55 = v32 >> v53;
    if ((v32 & ~v54) != 0)
    {
      v56 = v55 + 1;
    }

    else
    {
      v56 = v55;
    }

    if (v56 < v32)
    {
      v57 = *(v1 + 256);
      v58 = v32 >> 1;
      v59 = sub_22D81B468();
      *(v59 + 16) = v58;
      v150 = v59 + v33;
      v151 = v58;
      v60 = v128;
      sub_22D791E54(&v150, &v149, &v147, sub_22D795240, v30, v56);
      *(v59 + 16) = 0;

      v128 = 0;
      if (v60)
      {
        return result;
      }

      goto LABEL_24;
    }

LABEL_48:
    v61 = *(v21 + 72);
    v62 = -1;
    v63 = 1;
    v135 = v32;
LABEL_51:
    v136 = v63;
    v139 = v62;
    v142 = v34;
    v66 = v34;
    while (1)
    {
      v68 = *(v1 + 320);
      v67 = *(v1 + 328);
      v69 = *(v1 + 248);
      v70 = *(v1 + 232);
      sub_22D76D5B4(v66 + v61, v67);
      sub_22D76D5B4(v66, v68);
      v71 = sub_22D81A098();
      v72 = *(v67 + *(v145 + 20));
      v73 = *(v1 + 320);
      if (v71)
      {
        sub_22D819FE8();
        v74 = *(v1 + 112);
        v75 = *(v1 + 120);
        v76 = *(v73 + *(v145 + 20));
        sub_22D819FE8();
        if (*(v1 + 128) == v74 && *(v1 + 136) == v75)
        {
          goto LABEL_49;
        }

        v77 = *(v1 + 136);
      }

      else
      {
        sub_22D819FE8();
        v78 = *(v1 + 144);
        v79 = *(v1 + 152);
        v80 = *(v73 + *(v145 + 20));
        sub_22D819FE8();
        if (v78 == *(v1 + 160) && v79 == *(v1 + 168))
        {
LABEL_49:
          v65 = *(v1 + 320);
          v64 = *(v1 + 328);

          sub_22D750754(v65);
          sub_22D750754(v64);
LABEL_50:
          v63 = v136 + 1;
          v34 = v142 + v61;
          v62 = v139 - 1;
          if (v136 + 1 == v135)
          {
            goto LABEL_23;
          }

          goto LABEL_51;
        }

        v81 = *(v1 + 168);
      }

      v82 = sub_22D81BB08();
      v83 = *(v1 + 320);
      v84 = *(v1 + 328);

      sub_22D750754(v83);
      sub_22D750754(v84);
      if (v82)
      {
        v85 = *(v1 + 312);
        v86 = *(v1 + 256);
        sub_22D793EB8(v66 + v61, v85);
        swift_arrayInitWithTakeFrontToBack();
        sub_22D793EB8(v85, v66);
        v66 -= v61;
        v87 = __CFADD__(v62++, 1);
        if (!v87)
        {
          continue;
        }
      }

      goto LABEL_50;
    }
  }

LABEL_77:
  if ((*(v1 + 377) & 1) == 0)
  {
    v0 = sub_22D790728(*(v1 + 224), v134);
    if ((v110 & 1) == 0)
    {
LABEL_79:
      sub_22D763F20(v0, v108, v109, v110);
      v134 = v111;
LABEL_86:
      swift_unknownObjectRelease();
      goto LABEL_87;
    }

    v4 = v110;
    v2 = v109;
    v5 = v108;
    sub_22D81BB18();
    swift_unknownObjectRetain_n();
    v112 = swift_dynamicCastClass();
    if (!v112)
    {
      swift_unknownObjectRelease();
      v112 = MEMORY[0x277D84F90];
    }

    v113 = *(v112 + 16);

    if (__OFSUB__(v4 >> 1, v2))
    {
      goto LABEL_91;
    }

    if (v113 != (v4 >> 1) - v2)
    {
LABEL_92:
      swift_unknownObjectRelease();
      v110 = v4;
      v109 = v2;
      v108 = v5;
      goto LABEL_79;
    }

    v114 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v134 = v114;
    if (!v114)
    {
      v134 = MEMORY[0x277D84F90];
      goto LABEL_86;
    }
  }

LABEL_87:
  v116 = *(v1 + 336);
  v115 = *(v1 + 344);
  v118 = *(v1 + 320);
  v117 = *(v1 + 328);
  v120 = *(v1 + 304);
  v119 = *(v1 + 312);
  v122 = *(v1 + 288);
  v121 = *(v1 + 296);
  v123 = *(v1 + 280);
  v146 = *(v1 + 272);
  v124 = *(v1 + 248);

  v125 = *(v1 + 8);

  return v125(v134);
}

uint64_t sub_22D794C8C(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(type metadata accessor for AlarmEntity() - 8);
  v1[3] = v2;
  v3 = *(v2 + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_22D794D94;

  return sub_22D793BC0();
}

uint64_t sub_22D794D94(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {
    v7 = *(v3 + 32);
    v6 = *(v3 + 40);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22D794EEC, 0, 0);
  }
}

uint64_t sub_22D794EEC()
{
  result = v0[7];
  v22 = *(result + 16);
  if (v22)
  {
    v2 = 0;
    v19 = v0[2];
    v20 = v0[3];
    v3 = MEMORY[0x277D84F90];
    v21 = v0[7];
    while (v2 < *(result + 16))
    {
      v4 = v2 + 1;
      v23 = *(v20 + 72);
      v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      sub_22D76D5B4(v0[7] + v24 + v23 * v2, v0[5]);
      v5 = 0;
      v6 = *(v19 + 16);
      do
      {
        v7 = v0[5];
        if (v6 == v5)
        {
          sub_22D750754(v0[5]);
          goto LABEL_4;
        }

        v8 = v0[2];
        v9 = sub_22D81A918();
        v10 = v5 + 1;
        v11 = v8 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v5;
        sub_22D795170(&qword_27DA02730, MEMORY[0x277CC95F0]);
        v5 = v10;
      }

      while ((sub_22D81B1F8() & 1) == 0);
      sub_22D793EB8(v0[5], v0[4]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22D7E8A88(0, *(v3 + 16) + 1, 1);
      }

      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22D7E8A88(v12 > 1, v13 + 1, 1);
      }

      v14 = v0[4];
      *(v3 + 16) = v13 + 1;
      sub_22D793EB8(v14, v3 + v24 + v13 * v23);
LABEL_4:
      v2 = v4;
      result = v21;
      if (v4 == v22)
      {
        v15 = v0[7];
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
LABEL_16:
    v17 = v0[4];
    v16 = v0[5];

    v18 = v0[1];

    return v18(v3);
  }

  return result;
}

uint64_t sub_22D795170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D795260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02030, qword_22D81F298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AlarmsQuery.ParameterMapping.Operation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmsQuery.ParameterMapping.Operation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22D795424()
{
  result = qword_27DA02800;
  if (!qword_27DA02800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02800);
  }

  return result;
}

uint64_t sub_22D795498()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02E30, qword_22D822770);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22D81DF60;
  v3 = type metadata accessor for SolarPosition(0);
  v4 = *(v1 + *(v3 + 20));
  v5 = MEMORY[0x277D83A90];
  v6 = MEMORY[0x277D83B08];
  *(v2 + 56) = MEMORY[0x277D83A90];
  *(v2 + 64) = v6;
  *(v2 + 32) = v4;
  v7 = sub_22D81B2D8();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22D81DF60;
  v11 = *(v1 + *(v3 + 24));
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v11 * 100.0;
  v12 = sub_22D81B2D8();
  v14 = v13;
  result = sub_22D7AF980();
  if (result > 1u)
  {
    if (result == 2)
    {
      v16 = 0.25;
    }

    else
    {
      v16 = 0.5;
    }

    if (result == 2)
    {
      v17 = 180.0;
    }

    else
    {
      v17 = 270.0;
    }
  }

  else
  {
    v16 = 0.0;
    if (result)
    {
      goto LABEL_11;
    }

    v16 = 0.75;
    v17 = 360.0;
  }

  if (v16 > (v17 / 360.0))
  {
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  result = sub_22D7AF980();
  v18 = 0.25;
  if (result > 1u)
  {
    v20 = 180.0;
    v19 = 0.5;
    if (result == 2)
    {
      v19 = 0.25;
    }

    else
    {
      v20 = 270.0;
    }

LABEL_17:
    v18 = v20 / 360.0;
    if (v19 <= (v20 / 360.0))
    {
      goto LABEL_18;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!result)
  {
    v19 = 0.75;
    v20 = 360.0;
    goto LABEL_17;
  }

LABEL_18:
  result = sub_22D7AF980();
  if (result > 1u)
  {
    v21 = 0.25;
    v22 = 180.0;
    if (result != 2)
    {
      v21 = 0.5;
      v22 = 270.0;
    }
  }

  else
  {
    v21 = 0.0;
    if (result)
    {
LABEL_24:
      v23 = (v11 - v16) / (v18 - v21);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_22D81DF60;
      *(v24 + 56) = v5;
      *(v24 + 64) = v6;
      *(v24 + 32) = v23 * 100.0;
      v25 = sub_22D81B2D8();
      v27 = v26;
      BYTE8(v28) = 0;
      sub_22D81B838();
      MEMORY[0x2318D1A50](980839493, 0xE400000000000000);
      MEMORY[0x2318D1A50](v7, v9);

      MEMORY[0x2318D1A50](0x656C6379430AB0C2, 0xA90000000000003ALL);
      MEMORY[0x2318D1A50](v12, v14);

      MEMORY[0x2318D1A50](0x3A65736168500A25, 0xE90000000000003CLL);
      *&v28 = sub_22D7AF980();
      sub_22D81B908();
      MEMORY[0x2318D1A50](44, 0xE100000000000000);
      MEMORY[0x2318D1A50](v25, v27);

      MEMORY[0x2318D1A50](15909, 0xE200000000000000);
      return *(&v28 + 1);
    }

    v21 = 0.75;
    v22 = 360.0;
  }

  if (v21 <= (v22 / 360.0))
  {
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22D7958C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_22D81B838();

  v20 = 0xD000000000000010;
  v21 = 0x800000022D82A160;
  v9 = sub_22D795498();
  MEMORY[0x2318D1A50](v9);

  MEMORY[0x2318D1A50](10, 0xE100000000000000);
  v10 = *(type metadata accessor for CurrentLocationSolarPosition(0) + 20);
  sub_22D7640C4(v0 + v10, v8, &qword_27DA02840, &qword_22D821A70);
  v11 = type metadata accessor for CurrentLocation(0);
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v8, 1, v11);
  sub_22D764440(v8, &qword_27DA02840, &qword_22D821A70);
  if (v13 == 1)
  {
    v14 = 0xEE003E6C696E3C3ALL;
    v15 = 0x6E6F697461636F4CLL;
LABEL_5:
    MEMORY[0x2318D1A50](v15, v14);

    return v20;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_22D7640C4(v1 + v10, v6, &qword_27DA02840, &qword_22D821A70);
  result = v12(v6, 1, v11);
  if (result != 1)
  {
    v17 = CurrentLocation.description.getter();
    MEMORY[0x2318D1A50](v17);

    sub_22D79D9F0(v6, type metadata accessor for CurrentLocation);
    v15 = v18;
    v14 = v19;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D795B24()
{
  v0 = type metadata accessor for SolarDataProvider(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_22D79726C();
  qword_27DA02808 = v3;
  return result;
}

uint64_t static SolarDataProvider.shared.getter()
{
  if (qword_27DA019E8 != -1)
  {
    swift_once();
  }

  return sub_22D81A198();
}

uint64_t sub_22D795BC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarMovementsUpdateTask;
  if (!*(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarMovementsUpdateTask))
  {
    v7 = sub_22D81B4F8();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    v10 = sub_22D79DF68(0, 0, v5, &unk_22D821CB0, v9);
    v11 = *(v0 + v6);
    *(v0 + v6) = v10;
  }

  return result;
}

uint64_t sub_22D795CFC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02958, &qword_22D822EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - v4;
  v6 = sub_22D81A8C8();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SolarPosition(0);
  v10 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v42 - v15;
  v17 = type metadata accessor for CurrentLocation(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22D7640C4(v1 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_currentLocation, v16, &qword_27DA02840, &qword_22D821A70);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_22D764440(v16, &qword_27DA02840, &qword_22D821A70);
    v22 = type metadata accessor for CurrentLocationSolarPosition(0);
    return (*(*(v22 - 8) + 56))(v45, 1, 1, v22);
  }

  else
  {
    sub_22D79D988(v16, v21, type metadata accessor for CurrentLocation);
    v24 = *v21;
    [*v21 coordinate];
    v26 = v25;
    v28 = v27;
    if (qword_27DA019F0 != -1)
    {
      swift_once();
    }

    sub_22D81A8B8();
    sub_22D81AAA8();
    v29 = sub_22D81AAB8();
    (*(*(v29 - 8) + 56))(v5, 0, 1, v29);
    sub_22D7AFFF8(v12, v26, v28);
    sub_22D764440(v5, &qword_27DA02958, &qword_22D822EC0);
    v30 = v44;
    v31 = *(v43 + 8);
    v31(v9, v44);
    [v24 coordinate];
    v33 = v32;
    v35 = v34;
    sub_22D81A8B8();
    sub_22D7AFE0C(v33, v35);
    LODWORD(v33) = v36;
    v31(v9, v30);
    sub_22D7AFBB8(*&v33);
    v37 = v42;
    *&v12[*(v42 + 20)] = LODWORD(v33);
    *&v12[*(v37 + 24)] = v38;
    v39 = type metadata accessor for CurrentLocationSolarPosition(0);
    v40 = *(v39 + 20);
    v41 = v45;
    sub_22D79DD74(v21, v45 + v40, type metadata accessor for CurrentLocation);
    (*(v18 + 56))(v41 + v40, 0, 1, v17);
    sub_22D79D988(v12, v41, type metadata accessor for SolarPosition);
    sub_22D79D9F0(v21, type metadata accessor for CurrentLocation);
    return (*(*(v39 - 8) + 56))(v41, 0, 1, v39);
  }
}

uint64_t SolarDataProvider.currentSolarTerminatorPath()@<X0>(uint64_t a1@<X8>)
{
  v33[0] = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02810, &qword_22D821A50);
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02818, &qword_22D821A58);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v37 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v35 = v33 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v33 - v12;
  v14 = sub_22D81A8C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarTerminatorStream);
  v20 = *(v19 + 48);
  swift_beginAccess();
  os_unfair_lock_lock(v20 + 4);
  swift_endAccess();
  v21 = *(v19 + 64);
  if ((v21 & 1) == 0)
  {
    *(v19 + 64) = 1;
  }

  v22 = *(v19 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v22 + 4);
  swift_endAccess();
  v41 = xmmword_22D821A40;
  v42 = 0;
  v43 = 0;
  if ((v21 & 1) == 0)
  {
    sub_22D795BC0();
    if (qword_27DA019F0 != -1)
    {
      swift_once();
    }

    sub_22D81A8B8();
    Date.solarTerminatorPath.getter(&v38);
    (*(v15 + 8))(v18, v14);
    v34 = v38;
    v23 = v39;
    v24 = v40;
    sub_22D7976D0(v41, *(&v41 + 1));
    v41 = v34;
    v42 = v23;
    v43 = v24;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02828, &qword_22D821A60);
  v26 = *(v25 - 8);
  *&v34 = *(v26 + 56);
  (v34)(v13, 1, 1, v25);
  v27 = *(v19 + 48);
  swift_beginAccess();
  os_unfair_lock_lock(v27 + 4);
  v28 = swift_endAccess();
  v33[1] = v33;
  MEMORY[0x28223BE20](v28);
  v33[-2] = v19;
  v33[-1] = &v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02830, &qword_22D821A68);
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v36);
  v29 = v35;
  sub_22D81B588();
  sub_22D764440(v13, &qword_27DA02818, &qword_22D821A58);
  (v34)(v29, 0, 1, v25);
  sub_22D79DD0C(v29, v13, &qword_27DA02818, &qword_22D821A58);
  v30 = *(v19 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v30 + 4);
  swift_endAccess();
  v31 = v37;
  sub_22D7640C4(v13, v37, &qword_27DA02818, &qword_22D821A58);
  result = (*(v26 + 48))(v31, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_22D764440(v13, &qword_27DA02818, &qword_22D821A58);
    (*(v26 + 32))(v33[0], v31, v25);
    return sub_22D7976D0(v41, *(&v41 + 1));
  }

  return result;
}

uint64_t sub_22D796728()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02928, &qword_22D821CC8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v24 - v4 + 16;
  v6 = sub_22D81A8C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v11 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarTerminatorStream);
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  sub_22D81A8B8();
  Date.solarTerminatorPath.getter(v24);
  (*(v7 + 8))(v10, v6);
  v12 = v24[0];
  v13 = v24[1];
  v14 = v24[2];
  v15 = *(v11 + 48);
  v16 = v25;
  swift_beginAccess();
  os_unfair_lock_lock(v15 + 4);
  swift_endAccess();
  sub_22D79864C(v12, v13, v14, v16);

  v17 = *(v11 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v17 + 4);
  swift_endAccess();
  v18 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_currentLocationSolarPositionStream);
  sub_22D795CFC(v5);
  v19 = *(*v18 + 104);
  v20 = *(v18 + v19);
  swift_beginAccess();
  os_unfair_lock_lock(v20 + 4);
  swift_endAccess();
  sub_22D799350(v5);
  v21 = *(v18 + v19);
  swift_beginAccess();
  os_unfair_lock_unlock(v21 + 4);
  swift_endAccess();
  return sub_22D764440(v5, &qword_27DA02928, &qword_22D821CC8);
}

uint64_t sub_22D7969AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02918, &qword_22D822690);
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02920, &qword_22D821CC0);
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_22D81A8C8();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D796B80, 0, 0);
}

uint64_t sub_22D796B80()
{
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[5];
  sub_22D81A8B8();
  sub_22D81A858();
  v10 = v9;
  v11 = *(v3 + 8);
  v0[17] = v11;
  v0[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v1, v2);
  v12 = qword_27DA02990;
  v13 = *(qword_27DA02990 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_dateStreamObservers);
  sub_22D81A198();
  sub_22D7A98B8(1, v13, v12, 1, v5);
  sub_22D81B558();
  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  v0[19] = v10;
  v14 = *(MEMORY[0x277D85798] + 4);
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_22D796D38;
  v16 = v0[12];
  v17 = v0[10];
  v18 = v0[6];

  return MEMORY[0x2822003E8](v18, 0, 0, v17);
}

uint64_t sub_22D796D38()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22D796E34, 0, 0);
}

uint64_t sub_22D796E34()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 48);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = *(v0 + 40);
    (*(v2 + 32))(*(v0 + 120), v3, v1);
    Strong = swift_weakLoadStrong();
    *(v0 + 168) = Strong;
    if (Strong)
    {
      v6 = Strong;
      v7 = *(v0 + 152);
      v8 = *(v0 + 120);
      sub_22D81A858();
      *(v0 + 176) = v9;
      if (vabdd_f64(v9, v7) <= 5.0)
      {
        v16 = *(v0 + 144);
        (*(v0 + 136))(*(v0 + 120), *(v0 + 104));

        v17 = *(MEMORY[0x277D85798] + 4);
        v18 = swift_task_alloc();
        *(v0 + 160) = v18;
        *v18 = v0;
        v18[1] = sub_22D796D38;
        v19 = *(v0 + 96);
        v20 = *(v0 + 80);
        v21 = *(v0 + 48);

        return MEMORY[0x2822003E8](v21, 0, 0, v20);
      }

      else
      {

        return MEMORY[0x2822009F8](sub_22D797060, v6, 0);
      }
    }

    v10 = *(v0 + 144);
    (*(v0 + 136))(*(v0 + 120), *(v0 + 104));
    v11 = *(v0 + 48);
  }

  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  v14 = *(v0 + 72);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_22D797060()
{
  v1 = *(v0 + 168);
  sub_22D796728();

  return MEMORY[0x2822009F8](sub_22D7970C8, 0, 0);
}

uint64_t sub_22D7970C8()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[13];

  v3(v4, v5);
  v0[19] = v0[22];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_22D796D38;
  v8 = v0[12];
  v9 = v0[10];
  v10 = v0[6];

  return MEMORY[0x2822003E8](v10, 0, 0, v9);
}

uint64_t SolarDataProvider.deinit()
{
  sub_22D764440(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_currentLocation, &qword_27DA02840, &qword_22D821A70);
  v1 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_currentLocationSolarPositionStream);

  v2 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarTerminatorStream);

  v3 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarMovementsUpdateTask);

  v4 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarCycleStreams);

  v5 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarCycleCancellationBlockByLocation);

  v6 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_overrideTimeUpdateTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SolarDataProvider.__deallocating_deinit()
{
  SolarDataProvider.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_22D79726C()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_currentLocation;
  v2 = type metadata accessor for CurrentLocation(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_currentLocationSolarPositionStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02978, &qword_22D821D18);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = *(*v7 + 96);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02928, &qword_22D821CC8);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  v10 = *(*v7 + 104);
  type metadata accessor for MTSUnfairLock();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v7 + v10) = v11;
  v12 = MEMORY[0x277D84F98];
  *(v7 + *(*v7 + 112)) = MEMORY[0x277D84F98];
  *(v7 + *(*v7 + 120)) = 0;
  *(v0 + v3) = v7;
  v13 = OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarTerminatorStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02980, &qword_22D821D20);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22D821A40;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 48) = v15;
  *(v14 + 56) = v12;
  *(v14 + 64) = 0;
  *(v0 + v13) = v14;
  *(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarMovementsUpdateTask) = 0;
  v16 = OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarCycleStreams;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02988, &qword_22D821D28);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v0 + v16) = v17;
  *(v18 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarCycleCancellationBlockByLocation) = v12;
  *(v17 + 16) = v18;
  *(v17 + 24) = v12;
  *(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_overrideTimeUpdateTask) = 0;
  return v0;
}

uint64_t sub_22D7974C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02960, &qword_22D821D00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  swift_beginAccess();
  v11 = *(a2 + 24);
  if (v11 == 1)
  {
    v12 = *(a3 + 8);
    if (v12 != 1)
    {
      v13 = *(a3 + 16);
      v15 = *(a3 + 24);
      v20 = *a3;
      v14 = v20;
      v21 = v12;
      v22 = v13;
      v23 = v15;
      sub_22D79DDDC(v20, v12);
      sub_22D81A398();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02968, &qword_22D821D08);
      sub_22D81B528();
      (*(v7 + 8))(v10, v6);
      sub_22D79864C(v14, v12, v13, v15);
      sub_22D7976D0(v14, v12);
    }
  }

  else
  {
    v16 = *(a2 + 40);
    v17 = *(a2 + 32);
    v20 = *(a2 + 16);
    v21 = v11;
    v22 = v17;
    v23 = v16;
    sub_22D81A398();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02968, &qword_22D821D08);
    sub_22D81B528();
    (*(v7 + 8))(v10, v6);
  }

  return sub_22D79BAEC(a1);
}

uint64_t sub_22D7976D0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_22D79770C()
{
  sub_22D7977EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22D7977EC()
{
  if (!qword_27DA02880)
  {
    type metadata accessor for CurrentLocation(255);
    v0 = sub_22D81B718();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA02880);
    }
  }
}

void sub_22D7978AC()
{
  type metadata accessor for SolarPosition(319);
  if (v0 <= 0x3F)
  {
    sub_22D7977EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22D797958()
{
  result = type metadata accessor for SolarCycle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22D7979D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v39 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028C8, &qword_22D821C40);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F90, &unk_22D822BA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = type metadata accessor for CurrentLocationResult(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v35 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v33 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v33 - v23;
  v25 = *(*a2 + 96);
  swift_beginAccess();
  sub_22D7640C4(a2 + v25, v14, &qword_27DA02F90, &unk_22D822BA0);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    v34 = v7;
    v27 = v39;
    sub_22D764440(v14, &qword_27DA02F90, &unk_22D822BA0);
    sub_22D7640C4(v36, v12, &qword_27DA02F90, &unk_22D822BA0);
    if (v26(v12, 1, v15) == 1)
    {
      sub_22D764440(v12, &qword_27DA02F90, &unk_22D822BA0);
    }

    else
    {
      v30 = v35;
      sub_22D79D988(v12, v35, type metadata accessor for CurrentLocationResult);
      sub_22D79DD74(v30, v22, type metadata accessor for CurrentLocationResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028D0, &qword_22D821C48);
      v31 = v34;
      sub_22D81B528();
      (*(v37 + 8))(v31, v38);
      sub_22D798B48(v30);
      sub_22D79D9F0(v30, type metadata accessor for CurrentLocationResult);
    }

    v29 = v27;
  }

  else
  {
    sub_22D79D988(v14, v24, type metadata accessor for CurrentLocationResult);
    sub_22D79DD74(v24, v22, type metadata accessor for CurrentLocationResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028D0, &qword_22D821C48);
    v28 = v39;
    sub_22D81B528();
    (*(v37 + 8))(v7, v38);
    sub_22D79D9F0(v24, type metadata accessor for CurrentLocationResult);
    v29 = v28;
  }

  return sub_22D79BDC8(v29);
}

uint64_t sub_22D797E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v38 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028F8, &qword_22D821C80);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = sub_22D81A8C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v34 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v33 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v33 - v23;
  v25 = *(*a2 + 96);
  swift_beginAccess();
  v39 = a2;
  sub_22D7640C4(a2 + v25, v14, &qword_27DA02000, &qword_22D81F160);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    v33 = v7;
    v27 = v38;
    sub_22D764440(v14, &qword_27DA02000, &qword_22D81F160);
    sub_22D7640C4(v35, v12, &qword_27DA02000, &qword_22D81F160);
    if (v26(v12, 1, v15) == 1)
    {
      sub_22D764440(v12, &qword_27DA02000, &qword_22D81F160);
    }

    else
    {
      v30 = v34;
      (*(v16 + 32))(v34, v12, v15);
      (*(v16 + 16))(v22, v30, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02900, &qword_22D821C88);
      v31 = v33;
      sub_22D81B528();
      (*(v36 + 8))(v31, v37);
      sub_22D799EA0(v30);
      (*(v16 + 8))(v30, v15);
    }

    v29 = v27;
  }

  else
  {
    (*(v16 + 32))(v24, v14, v15);
    (*(v16 + 16))(v22, v24, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02900, &qword_22D821C88);
    v28 = v38;
    sub_22D81B528();
    (*(v36 + 8))(v7, v37);
    (*(v16 + 8))(v24, v15);
    v29 = v28;
  }

  return sub_22D79C0B8(v29);
}