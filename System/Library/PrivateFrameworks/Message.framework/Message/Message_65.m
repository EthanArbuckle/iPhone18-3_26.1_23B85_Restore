uint64_t sub_1B0BC9D90()
{
  if (*v0)
  {
    result = 0x69736956746F6E2ELL;
  }

  else
  {
    result = 0x656C62697369762ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1B0BC9DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  result = sub_1B03B5DDC(*a1, v5, a2);
  if (result)
  {
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  return result;
}

uint64_t sub_1B0BC9E34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 12))
  {
    result = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 2);
    v5 = *a1;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B0BC9E94(int a1, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v5 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = a3(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = a3(v11 > 1, v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  *(v8 + 4 * v12 + 32) = a1;
  v5[1] = v8;
  v13 = *v5;
  if (*v5)
  {
    swift_beginAccess();
    if (MEMORY[0x1B2725670](*(v13 + 16) & 0x3FLL) > v12)
    {
      v14 = *v5;
      result = swift_isUniquelyReferenced_native();
      v15 = *v5;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = *v5;
        v17 = sub_1B0E43578();

        *v5 = v17;
        v15 = v17;
      }

      if (v15)
      {
        v18 = *(v15 + 16);
        v19 = *(*v7 + 16) + ~(*(v15 + 24) >> 6);
        return sub_1B0E43518();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1B0BCA0B0();
}

uint64_t sub_1B0BCA00C()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1B27256A0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1B0BCA150(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1B0BCA0B0()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1B27256A0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1B0BCA1D0(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1B0BCA150(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1B27256A0](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1B27256B0](v8, a4);
    sub_1B0BCA250(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_1B0BCA1D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1B27256A0](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1B27256B0](v8, a4);
    sub_1B0BCA2A0(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_1B0BCA2F0(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v6 = result + 8;
      while (1)
      {
        v7 = *(v6 + 16 * v5);
        v8 = *a3;
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v7 | (v7 << 32));
        result = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            sub_1B0E43548();
          }
        }

        result = sub_1B0E43538();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BCA3FC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 4 * v6);
        v8 = *a3;
        sub_1B0E46C28();
        sub_1B0E46C88();
        result = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            sub_1B0E43548();
          }
        }

        result = sub_1B0E43538();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BCA504(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v94 = *v94;
    if (!v94)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_1B0B9443C(v9);
      v9 = result;
    }

    v86 = v9 + 16;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = &v9[16 * v87];
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_1B0BCAAAC((*a3 + 16 * *v88), (*a3 + 16 * *v90), (*a3 + 16 * v91), v94);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_115;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_116;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_117;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8 + 12);
      v12 = 16 * v10;
      v13 = *a3 + 16 * v10;
      v14 = *(v13 + 12);
      v15 = v10 + 2;
      v16 = (v13 + 44);
      while (v6 != v15)
      {
        v17 = *(v16 - 16) >= *v16;
        ++v15;
        v16 += 16;
        if ((((v14 < v11) ^ v17) & 1) == 0)
        {
          v8 = v15 - 1;
          if (v14 >= v11)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v14 >= v11)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_120;
      }

      if (v10 < v8)
      {
        v18 = 16 * v8 - 16;
        v19 = v8;
        v20 = v10;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_126;
            }

            v23 = (v22 + v12);
            v24 = (v22 + v18);
            v25 = *(v22 + v12);
            v26 = *(v22 + v12 + 8);
            v27 = *(v22 + v12 + 12);
            if (v12 != v18 || v23 >= v24 + 1)
            {
              *v23 = *v24;
            }

            v21 = v22 + v18;
            *v21 = v25;
            *(v21 + 8) = v26;
            *(v21 + 12) = v27;
          }

          ++v20;
          v18 -= 16;
          v12 += 16;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_119;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_121;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v40 = *(v9 + 2);
    v39 = *(v9 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B0AFF300((v39 > 1), v40 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v41;
    v42 = &v9[16 * v40];
    *(v42 + 4) = v10;
    *(v42 + 5) = v8;
    v43 = *v94;
    if (!*v94)
    {
      goto LABEL_128;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v9 + 4);
          v46 = *(v9 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_60:
          if (v48)
          {
            goto LABEL_106;
          }

          v61 = &v9[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_109;
          }

          v67 = &v9[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_113;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v71 = &v9[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_74:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = &v9[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_111;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_81:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v83 = *&v9[16 * v82 + 32];
        v84 = *&v9[16 * v44 + 40];
        sub_1B0BCAAAC((*a3 + 16 * v83), (*a3 + 16 * *&v9[16 * v44 + 32]), (*a3 + 16 * v84), v43);
        if (v4)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B0B9443C(v9);
        }

        if (v82 >= *(v9 + 2))
        {
          goto LABEL_103;
        }

        v85 = &v9[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        result = sub_1B0B943B0(v44);
        v41 = *(v9 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v9[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_104;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_105;
      }

      v56 = &v9[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_107;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_110;
      }

      if (v60 >= v52)
      {
        v78 = &v9[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_114;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_91;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v8 + 12;
  v30 = v10 - v8;
LABEL_33:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *v32;
    if (*(v32 - 16) >= v33)
    {
LABEL_32:
      ++v8;
      v29 += 16;
      --v30;
      if (v8 != v6)
      {
        goto LABEL_33;
      }

      v8 = v6;
      goto LABEL_40;
    }

    if (!v28)
    {
      break;
    }

    v34 = v32 - 12;
    v35 = *(v32 - 28);
    *(v32 - 16) = v33;
    v32 -= 16;
    v36 = *(v32 + 4);
    v37 = *(v32 + 3);
    *v34 = v35;
    *(v32 - 12) = v36;
    *(v32 - 1) = v37;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_32;
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
  return result;
}

uint64_t sub_1B0BCAAAC(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 16)
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

      if (v4[12] < v6[12])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 16 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v19 = v5 + 16;
      if (*(v6 - 4) < *(v15 - 4))
      {
        v21 = v6 - 16;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 16, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 16;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 16;
      v15 -= 16;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_1B0BCACA8(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1B0B0A044(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1B27256A0](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1B27256A0](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v17 = *(v7 + 16);
  if (v13 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  result = MEMORY[0x1B27256A0](*(v7 + 16));
  if (result <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = result;
  }

  if (v19 < v11)
  {
    if (v13 <= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v20 = sub_1B0BCA1D0(v7, v15, 0, v13);

    *v3 = v20;
    return result;
  }

  if (!v10 || (v21 = *v3, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v22 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v23 = *v3;
  v22 = sub_1B0E43578();

  *v3 = v22;
  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v22 + 24) & 0x3FLL) != v13)
  {
    *(v22 + 24) = *(v22 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

unint64_t sub_1B0BCAE88(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1B0BCB130(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1B2725680]())
  {
LABEL_16:
    v14 = sub_1B0BCB130(a1);
    sub_1B0BCA00C();
    return v14;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = sub_1B0E43578();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {
    result = sub_1B0BCB424(a2, (v10 + 16), v10 + 32, v2);
    v13 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v13 >= a1)
    {
      sub_1B0BCB7E4(a1, v13, v4, (v10 + 16));
      return sub_1B0BCB130(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1B0BCAFCC(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1B0BCB25C(a1, sub_1B0B94634);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1B2725680]())
  {
LABEL_16:
    v14 = sub_1B0BCB25C(a1, sub_1B0B94634);
    sub_1B0BCA0B0();
    return v14;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = sub_1B0E43578();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {
    result = sub_1B0BCB604(a2, (v10 + 16), v10 + 32, v2);
    v13 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v13 >= a1)
    {
      sub_1B0BCBBD4(a1, v13, v4, (v10 + 16));
      return sub_1B0BCB25C(a1, sub_1B0B94634);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B0BCB130(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B9458C(v3);
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
    v7 += 32;
    v9 = *(v7 + 8);
    memmove(v7, (v7 + 16), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B0BCB1BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B9466C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    result = memmove(v9, (v9 + 24), 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0BCB25C(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 4 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 36), 4 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

uint64_t sub_1B0BCB2E8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B946F0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 176 * a1);
    v9 = v8[11];
    v10 = v7 - 1;
    a2[8] = v8[10];
    a2[9] = v9;
    a2[10] = v8[12];
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[9];
    a2[6] = v8[8];
    a2[7] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    v14 = v8[5];
    a2[2] = v8[4];
    a2[3] = v14;
    result = memmove(v8 + 2, v8 + 13, 176 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0BCB3A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B94750(v3);
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
    v7 = v3 + 2 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 34), 2 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1B0BCB424(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v20 = sub_1B0E434F8();
  sub_1B0E43548();
  if (v20)
  {
    v7 = sub_1B0E43508();
    while (1)
    {
      result = sub_1B0E43528();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = *(v11 + 16 * result + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v13 | (v13 << 32));
      result = sub_1B0E46CB8();
      v14 = 1 << *a2;
      v15 = v14 - 1;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_22;
      }

      v16 = v15 & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v16 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v17 = sub_1B0E43528();
      if ((v18 & 1) == 0)
      {
        v8 = ((v15 & ((v17 - (a2[1] >> 6)) >> 63)) + v17 - (a2[1] >> 6)) ^ v15;
      }

      v6 = a1;
      sub_1B0E43518();
LABEL_5:
      sub_1B0E43548();
    }

    if (v16 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_1B0E43518();
}

unint64_t sub_1B0BCB604(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v20 = sub_1B0E434F8();
  sub_1B0E43548();
  if (v20)
  {
    v7 = sub_1B0E43508();
    while (1)
    {
      result = sub_1B0E43528();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = *(v11 + 4 * result + 32);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v14 = 1 << *a2;
      v15 = v14 - 1;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_22;
      }

      v16 = v15 & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v16 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v17 = sub_1B0E43528();
      if ((v18 & 1) == 0)
      {
        v8 = ((v15 & ((v17 - (a2[1] >> 6)) >> 63)) + v17 - (a2[1] >> 6)) ^ v15;
      }

      v6 = a1;
      sub_1B0E43518();
LABEL_5:
      sub_1B0E43548();
    }

    if (v16 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_1B0E43518();
}

uint64_t sub_1B0BCB7E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_54;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x1B2725670](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 < v8)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v8)
        {
          v10 = 0;
          v11 = a3 + 40;
          while (1)
          {
            v12 = *(v11 + 16 * v10);
            v13 = *a4;
            sub_1B0E46C28();
            MEMORY[0x1B2728D70](v12 | (v12 << 32));
            result = sub_1B0E46CB8();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1B0E434F8())
            {
              while (1)
              {
                v14 = sub_1B0E43528();
                if ((v15 & 1) == 0 && v14 == v10)
                {
                  break;
                }

                sub_1B0E43548();
              }
            }

            result = v10 + v5;
            if (__OFADD__(v10, v5))
            {
              goto LABEL_51;
            }

            ++v10;
            result = sub_1B0E43538();
            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_1B0E434F8();
      v22 = sub_1B0E43528();
      if ((v23 & 1) != 0 || v22 >= v8)
      {
LABEL_29:
        result = sub_1B0E43548();
LABEL_17:
        v16 = a4[1];
        if (__OFSUB__(v16 >> 6, v5))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v17 = 1 << *a4;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v20 = (v19 & (((v16 >> 6) - v5) >> 63)) + (v16 >> 6) - v5;
        if (v20 < v19)
        {
          v19 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v20 - v19) << 6);
        return result;
      }

      if (!__OFADD__(v22, v5))
      {
        sub_1B0E43538();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_1B0E434F8();
      v24 = sub_1B0E43528();
      if ((v25 & 1) == 0 && v24 >= v4)
      {
        v18 = __OFSUB__(v24, v5);
        result = v24 - v5;
        if (v18)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_1B0E43538();
      }

      return sub_1B0E43548();
    }

    v4 = a2;
    v21 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    result = MEMORY[0x1B2725670](*a4 & 0x3F);
    if (v21 >= result / 3)
    {
      goto LABEL_35;
    }

    if (v9 < v4)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v4 < 0)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      v26 = a3 + 40;
      while (1)
      {
        v27 = *(v26 + 16 * v4);
        v28 = *a4;
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v27 | (v27 << 32));
        result = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            v29 = sub_1B0E43528();
            if ((v30 & 1) == 0 && v29 == v4)
            {
              break;
            }

            sub_1B0E43548();
          }
        }

        result = sub_1B0E43538();
        if (++v4 == v9)
        {
          return result;
        }
      }

      goto LABEL_53;
    }
  }

  return result;
}

uint64_t sub_1B0BCBBD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x1B2725670](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v9 < v8)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (v8)
        {
          v10 = 0;
          while (1)
          {
            v11 = *(a3 + 32 + 4 * v10);
            v12 = *a4;
            sub_1B0E46C28();
            sub_1B0E46C88();
            result = sub_1B0E46CB8();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1B0E434F8())
            {
              while (1)
              {
                v13 = sub_1B0E43528();
                if ((v14 & 1) == 0 && v13 == v10)
                {
                  break;
                }

                sub_1B0E43548();
              }
            }

            result = v10 + v5;
            if (__OFADD__(v10, v5))
            {
              goto LABEL_55;
            }

            ++v10;
            result = sub_1B0E43538();
            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        goto LABEL_17;
      }

      sub_1B0E434F8();
      v27 = sub_1B0E43528();
      if ((v28 & 1) != 0 || v27 >= v8)
      {
LABEL_42:
        result = sub_1B0E43548();
LABEL_17:
        v15 = a4[1];
        if (__OFSUB__(v15 >> 6, v5))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v16 = 1 << *a4;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v19 = (v18 & (((v15 >> 6) - v5) >> 63)) + (v15 >> 6) - v5;
        if (v19 < v18)
        {
          v18 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v19 - v18) << 6);
        return result;
      }

      if (!__OFADD__(v27, v5))
      {
        sub_1B0E43538();
        goto LABEL_42;
      }

      __break(1u);
LABEL_48:
      sub_1B0E434F8();
      v29 = sub_1B0E43528();
      if ((v30 & 1) == 0 && v29 >= v4)
      {
        v17 = __OFSUB__(v29, v5);
        result = v29 - v5;
        if (v17)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        sub_1B0E43538();
      }

      return sub_1B0E43548();
    }

    v4 = a2;
    v20 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    result = MEMORY[0x1B2725670](*a4 & 0x3F);
    if (v20 >= result / 3)
    {
      goto LABEL_48;
    }

    if (v9 < v4)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v4 < 0)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v9 != v4)
    {
      if (v9 <= v4)
      {
LABEL_68:
        __break(1u);
        return result;
      }

      while (1)
      {
        v21 = *(a3 + 32 + 4 * v4);
        v22 = *a4;
        sub_1B0E46C28();
        sub_1B0E46C88();
        result = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            v23 = sub_1B0E43528();
            if ((v24 & 1) == 0 && v23 == v4)
            {
              break;
            }

            sub_1B0E43548();
          }
        }

        v25 = v4 + 1;
        v26 = __OFADD__(v4, 1);
        result = v4 - v5;
        if (__OFSUB__(v4, v5))
        {
          goto LABEL_58;
        }

        result = sub_1B0E43538();
        if (v26)
        {
          goto LABEL_59;
        }

        ++v4;
        if (v25 == v9)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B0BCBFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  if (result)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 8);
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 12) = v4;
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BCBFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  if (result)
  {
    v4 = *(a1 + 8);
    *a2 = result;
    *(a2 + 8) = v4;
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1B0BCC018(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 7u)
  {
    switch(a1)
    {
      case 5u:
        return a2 == 5;
      case 6u:
        return a2 == 6;
      case 7u:
        return a2 == 7;
    }

LABEL_16:
    if (a2 - 5 >= 6)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 8)
  {
    return a2 == 8;
  }

  if (a1 != 9)
  {
    if (a1 == 10)
    {
      return a2 == 10;
    }

    goto LABEL_16;
  }

  return a2 == 9;
}

BOOL sub_1B0BCC0D8(unsigned __int16 a1, unsigned __int16 a2)
{
  if ((a1 >> 14) > 1u)
  {
    if (a1 >> 14 == 2)
    {
      if ((a2 & 0xC000) == 0x8000)
      {
        return (a2 ^ a1) == 0;
      }
    }

    else if (a1 > 0xC001u)
    {
      if (a1 == 49154)
      {
        if (a2 == 49154)
        {
          return 1;
        }
      }

      else if (a2 == 49155)
      {
        return 1;
      }
    }

    else if (a1 == 49152)
    {
      if (a2 == 49152)
      {
        return 1;
      }
    }

    else if (a2 == 49153)
    {
      return 1;
    }
  }

  else
  {
    if (!(a1 >> 14))
    {
      if (a2 < 0x4000u)
      {
        return a1 == a2;
      }

      return 0;
    }

    if ((a2 & 0xC000) == 0x4000)
    {
      return (a2 ^ a1) == 0;
    }
  }

  return 0;
}

uint64_t sub_1B0BCC1A8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B0BCACA8(v3, 0);
  sub_1B0B0A284(0, v3, 0);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 32;
    do
    {
      v6 = v5 + 32 * v4;
      v7 = *(v6 + 16);
      v8 = *v6;
      v9 = *(v6 + 24);
      v10 = *(v6 + 8);
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v9 == 1)
      {
        break;
      }

      v12 = (v18 + 32);
      v13 = *(v18 + 16);
      if (v13)
      {
        while (1)
        {
          v14 = *v12++;
          if (v14 == v8)
          {
            break;
          }

          if (!--v13)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        return result;
      }

LABEL_7:
      sub_1B0BC9E94(v8, v13, sub_1B0B0A044);
      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1B0B0A284((v15 > 1), v16 + 1, 1);
      }

      *(v2 + 16) = v16 + 1;
      v17 = v2 + 24 * v16;
      *(v17 + 32) = v10;
      ++v4;
      *(v17 + 40) = v7;
      *(v17 + 48) = v9;
    }

    while (v4 != v3);
  }

  return 0;
}

void sub_1B0BCC328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v74 = a6;
  v66 = type metadata accessor for State.Logger();
  v11 = *(*(v66 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v66);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v62 - v15;
  v18 = a5[2];
  v17 = a5[3];
  v19 = a5[4];
  if (!v17 || (sub_1B03B5CE8(a5[3], a2) & 1) == 0 || (sub_1B03AC27C(v19, a3) & 1) == 0)
  {
    a5[2] = a1;
    a5[3] = a2;
    a5[4] = a3;
    sub_1B03B8738(v18, v17);
    v20 = *(a3 + 16);
    if (v20)
    {
      v21 = 255;
      if (v20 < 0xFF)
      {
        v21 = *(a3 + 16);
      }

      v70 = v21;
      v62[1] = a1;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v22 = 0;
      v23 = (a2 + 40);
      *&v24 = 68160003;
      v63 = v24;
      v72 = v14;
      v73 = a2;
      v64 = a3;
      v65 = a4;
      v71 = v20;
      while (1)
      {
        if (v22 >= *(a2 + 16))
        {
          __break(1u);
          return;
        }

        v26 = *(v23 - 1);
        v27 = *v23;
        v28 = *(a3 + 2 * v22 + 32);
        v29 = v22 + 1;
        v30 = v22 > 0xFE;
        v31 = v70;
        if (v30)
        {
          v31 = -1;
        }

        v76 = v31;
        v77 = v28;
        v32 = v30 ? -1 : v29;
        v75 = v32;
        v33 = sub_1B03B87EC(v26, v27, v74);
        if (v34)
        {
          v36 = v33;
          v37 = v34;
          v38 = v35;
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v36 = -1;
          v37 = v26;
          v38 = v27;
        }

        sub_1B03B8788(a4, v14);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v39 = sub_1B0E43988();
        v40 = sub_1B0E45908();
        if (os_log_type_enabled(v39, v40))
        {
          break;
        }

        sub_1B03B88DC(v14);

        swift_bridgeObjectRelease_n();
LABEL_9:
        v23 += 4;
        v22 = v29;
        v14 = v72;
        v25 = v71 == v29;
        a2 = v73;
        if (v25)
        {

          return;
        }
      }

      v68 = v40;
      v69 = v29;
      v41 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v80[0] = v67;
      *v41 = v63;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      v42 = v14[*(v66 + 20)];
      sub_1B03B88DC(v14);
      *(v41 + 10) = v42;
      *(v41 + 11) = 1040;
      *(v41 + 13) = 2;
      *(v41 + 17) = 512;
      *(v41 + 19) = v36;

      *(v41 + 21) = 2160;
      *(v41 + 23) = 0x786F626C69616DLL;
      *(v41 + 31) = 2085;
      v78 = v37;
      v79 = v38;
      v43 = sub_1B0E44BA8();
      v45 = sub_1B0399D64(v43, v44, v80);

      *(v41 + 33) = v45;
      *(v41 + 41) = 256;
      v46 = v76;
      *(v41 + 43) = v75;
      *(v41 + 44) = 256;
      *(v41 + 46) = v46;
      v47 = v77;
      v48 = v77 >> 14;
      *(v41 + 47) = 2082;
      if (v47 >> 14 > 1)
      {
        if (v48 != 2)
        {
          v29 = v69;
          v50 = v68;
          v49 = 0xA090806u >> (8 * v47);
          goto LABEL_29;
        }

        LOBYTE(v49) = 7;
      }

      else if (v48)
      {
        LOBYTE(v49) = 5;
      }

      else
      {
        v49 = v47 >> 8;
      }

      v29 = v69;
      v50 = v68;
LABEL_29:
      LOBYTE(v78) = v49;
      v51 = sub_1B0E44BA8();
      v53 = sub_1B0399D64(v51, v52, v80);

      *(v41 + 49) = v53;
      *(v41 + 57) = 2082;
      if (v48 > 2)
      {
        LOBYTE(v47) = 0;
      }

      LOBYTE(v78) = v47;
      v54 = sub_1B0E44BA8();
      v56 = sub_1B0399D64(v54, v55, v80);

      *(v41 + 59) = v56;
      _os_log_impl(&dword_1B0389000, v39, v50, "[%.*hhx] [{%.*hx}%{sensitive,mask.mailbox}s] [MailboxesToSelect] %hhu/%hhu: %{public}s - %{public}s", v41, 0x43u);
      v57 = v67;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v57, -1, -1);
      MEMORY[0x1B272C230](v41, -1, -1);

      a3 = v64;
      a4 = v65;
      goto LABEL_9;
    }

    sub_1B03B8788(a4, v16);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v58 = sub_1B0E43988();
    v59 = sub_1B0E45908();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 68157952;
      *(v60 + 4) = 2;
      *(v60 + 8) = 256;
      v61 = v16[*(v66 + 20)];
      sub_1B03B88DC(v16);
      *(v60 + 10) = v61;
      _os_log_impl(&dword_1B0389000, v58, v59, "[%.*hhx] [MailboxesToSelect] None.", v60, 0xBu);
      MEMORY[0x1B272C230](v60, -1, -1);
    }

    else
    {
      sub_1B03B88DC(v16);
    }
  }
}

IMAP2Connection::MailboxesSelectionUsage sub_1B0BCC8B0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  return sub_1B03AC81C(v1, v2);
}

uint64_t _s17MailboxesToSelectV6ReasonO4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t _s17MailboxesToSelectV6ReasonO4KindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B0BCCA4C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B0BCCA60(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t _s17MailboxesToSelectV6ReasonOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FD)
  {
    goto LABEL_17;
  }

  if (a2 + 63491 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 63491 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 63491;
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

      return (*a1 | (v4 << 16)) - 63491;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 63491;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFC | (*a1 >> 14) | (*a1 >> 3) & 0x700) ^ 0x7FF;
  if (v6 >= 0x7FC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *_s17MailboxesToSelectV6ReasonOwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63491 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 63491 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7FD)
  {
    v4 = 0;
  }

  if (a2 > 0x7FC)
  {
    v5 = ((a2 - 2045) >> 16) + 1;
    *result = a2 - 2045;
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
    v6 = ((-a2 >> 2) & 0x1FF) - (a2 << 9);
    *result = (32 * v6) & 0xF800 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0BCCC10(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 14;
  v3 = (v1 & 3 | (4 * ((v1 >> 8) & 7))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_WORD *sub_1B0BCCC44(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x703 | (a2 << 14);
  }

  else
  {
    *result = ((a2 - 3) << 6) & 0x700 | (a2 - 3) & 3 | 0xC000;
  }

  return result;
}

unint64_t sub_1B0BCCC90()
{
  result = qword_1EB6E5338;
  if (!qword_1EB6E5338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5340, qword_1B0ECE3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5338);
  }

  return result;
}

unint64_t sub_1B0BCCCF8()
{
  result = qword_1EB6E5348;
  if (!qword_1EB6E5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5348);
  }

  return result;
}

unint64_t sub_1B0BCCD50()
{
  result = qword_1EB6E5350;
  if (!qword_1EB6E5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5350);
  }

  return result;
}

unint64_t sub_1B0BCCDA8()
{
  result = qword_1EB6E5358;
  if (!qword_1EB6E5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5358);
  }

  return result;
}

uint64_t sub_1B0BCCE00(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  v5 = v4 >> 60 == 15 && v3 >> 60 == 15;
  if (v3 >> 60 == 15 || v4 >> 60 == 15)
  {
    return v5;
  }

  else
  {
    return sub_1B0AB8858(*a1, v3, *a2, v4);
  }
}

BOOL sub_1B0BCCE44(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v13[4] = a2[4];
  v8 = *a2;
  v13[1] = a2[1];
  v12[4] = v3;
  v13[0] = v8;
  v10 = *(a2 + 10);
  v9 = *(a2 + 11);
  if ((sub_1B0C0FEBC(v12, v13) & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 != 15)
  {
    return v9 >> 60 != 15 && (sub_1B0AB8858(v5, v6, v10, v9) & 1) != 0;
  }

  return v9 >> 60 == 15;
}

uint64_t sub_1B0BCCF04()
{
  v2 = *(v0 + 88);
  if (v2 >> 60 == 15)
  {
    sub_1B0BCD47C();
    swift_allocError();
    *v3 = xmmword_1B0ECE570;
    *(v3 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 80);
    sub_1B03B2000(v1, *(v0 + 88));
    sub_1B050755C(v1, v2);
    *(v0 + 80) = xmmword_1B0EC58F0;
  }

  return v1;
}

uint64_t sub_1B0BCCFB0()
{
  sub_1B0BCD47C();
  swift_allocError();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  return swift_willThrow();
}

double variable initialization expression of CommandConnection.idle@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 44) = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t variable initialization expression of ConnectionConfiguration.prohibitedInterfaceTypes()
{
  return 0;
}

{
  return 0;
}

uint64_t variable initialization expression of ConnectionConfiguration.sourceApplicationBundleIdentifier()
{
  return 0;
}

{
  return 0;
}

uint64_t variable initialization expression of ConnectionConfiguration.networkAccountIdentifier()
{
  return 0;
}

{
  return 0;
}

uint64_t sub_1B0BCD0EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B0E441D8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1B0BCD1B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_1B0BCD210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

void sub_1B0BCD2E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO10AppleTokenV5StateO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0BCD374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3A && *(a1 + 96))
  {
    return (*a1 + 58);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x39)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1B0BCD3E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

unint64_t sub_1B0BCD47C()
{
  result = qword_1EB6E53B8;
  if (!qword_1EB6E53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E53B8);
  }

  return result;
}

uint64_t sub_1B0BCD4D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0BCD524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO11AppleToken2V5StateO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0BCD5E0(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v20 = xmmword_1B0ECF4A0;
  v1 = *(a1 + 16);
  if (!v1)
  {
    result = 0;
    goto LABEL_23;
  }

  v2 = 0;
  v3 = a1 + 32;
  v4 = MEMORY[0x1E6969080];
  v5 = MEMORY[0x1E6969078];
  do
  {
    v18 = v4;
    v19 = v5;
    v17 = *(v3 + 16 * v2);
    v16 = v17;
    v6 = __swift_project_boxed_opaque_existential_0(&v17, v4);
    v7 = *v6;
    v8 = v6[1] >> 62;
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_18;
      }

      v11 = v7;
      if (v7 >> 32 < v7)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
      }

      sub_1B03B2000(v16, *(&v16 + 1));
      sub_1B03B2000(v16, *(&v16 + 1));
      if (sub_1B0E42A98() && __OFSUB__(v11, sub_1B0E42AC8()))
      {
        goto LABEL_27;
      }

LABEL_17:
      sub_1B0E42AB8();
      sub_1B0E42EF8();
      v5 = MEMORY[0x1E6969078];
      goto LABEL_19;
    }

    if (v8 == 2)
    {
      v9 = *(v7 + 16);
      v10 = *(v7 + 24);
      sub_1B03B2000(v16, *(&v16 + 1));
      sub_1B03B2000(v16, *(&v16 + 1));
      if (sub_1B0E42A98() && __OFSUB__(v9, sub_1B0E42AC8()))
      {
        goto LABEL_26;
      }

      if (__OFSUB__(v10, v9))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

LABEL_18:
    sub_1B03B2000(v16, *(&v16 + 1));
    sub_1B03B2000(v16, *(&v16 + 1));
    sub_1B0E42EF8();
LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(&v17);
    if (v2 >= v1 - 1)
    {
      sub_1B0391D50(v16, *(&v16 + 1));
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
      v18 = v12;
      v19 = sub_1B039E3F8(&qword_1EB6DAE08, &qword_1EB6E21D0, &unk_1B0EA2E70);
      *&v17 = &unk_1F271B6B0;
      v13 = *(*__swift_project_boxed_opaque_existential_0(&v17, v12) + 16);
      sub_1B0E42EF8();
      sub_1B0391D50(v16, *(&v16 + 1));
      __swift_destroy_boxed_opaque_existential_0(&v17);
    }

    ++v2;
  }

  while (v1 != v2);
  result = v20;
LABEL_23:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0BCD964(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v39 = *MEMORY[0x1E69E9840];
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
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
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
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v5 & ~(v5 >> 63), 0);
    v30 = v3;
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(v3 + 16);
      }

      else
      {
        v9 = v3;
      }
    }

    else
    {
      v9 = 0;
    }

    v35 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v38;
    v29 = v3 >> 32;
    v28 = &v36 + v9;
    v33 = v4;
    v34 = v3;
    v32 = v5;
    do
    {
      if (v10 >= v5)
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

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v35 + v10;
      if (v4 == 2)
      {
        if (v12 < *(v3 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(v3 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_1B0E42A98();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_1B0E42AC8();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          LOWORD(v36) = v3;
          BYTE2(v36) = BYTE2(v3);
          BYTE3(v36) = BYTE3(v3);
          BYTE4(v36) = v31;
          BYTE5(v36) = BYTE5(v3);
          BYTE6(v36) = BYTE6(v3);
          HIBYTE(v36) = HIBYTE(v3);
          LOWORD(v37) = a2;
          BYTE2(v37) = BYTE2(a2);
          BYTE3(v37) = BYTE3(a2);
          BYTE4(v37) = BYTE4(a2);
          BYTE5(v37) = BYTE5(a2);
          v19 = v28[v10];
          goto LABEL_36;
        }

        if (v12 < v30 || v12 >= v29)
        {
          goto LABEL_44;
        }

        v13 = sub_1B0E42A98();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_1B0E42AC8();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      LOBYTE(v36) = v19;
      sub_1B0BA1E94();
      v20 = sub_1B0E44E98();
      v36 = 30768;
      v37 = 0xE200000000000000;
      MEMORY[0x1B2726E80](v20);

      v22 = v36;
      v21 = v37;
      v38 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B041D32C((v23 > 1), v24 + 1, 1);
        v8 = v38;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v21;
      ++v10;
      v5 = v32;
      LODWORD(v4) = v33;
      v3 = v34;
    }

    while (v11 != v32);
  }

LABEL_39:
  v26 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1B0BCDCB0()
{
  sub_1B0BCD964(*v0, v0[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
  v1 = sub_1B0E448E8();

  return v1;
}

uint64_t sub_1B0BCDD68(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v3 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v3)
    {
      goto LABEL_11;
    }

    if (result == 32 && a2 == 0xE100000000000000)
    {
      result = 32;
      a2 = 0xE100000000000000;
LABEL_11:
      sub_1B0BCDEB0(result, a2, 0);
      return 0;
    }

    v4 = result;
    v5 = a2;
    if (sub_1B0E46A78())
    {
      result = v4;
      a2 = v5;
      goto LABEL_11;
    }

    sub_1B0BCDE5C();
    swift_allocError();
    swift_willThrow();
    return sub_1B0BCDEB0(v4, v5, 0);
  }

  return result;
}

unint64_t sub_1B0BCDE5C()
{
  result = qword_1EB6E53C0;
  if (!qword_1EB6E53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E53C0);
  }

  return result;
}

uint64_t sub_1B0BCDEB0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B0391D50(a1, a2);
  }

  else
  {
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection18AuthenticationTaskV5StateV4StepO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO5ErrorO(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for MailboxSyncStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataTransferReportAccumulator.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1B0BCDF70(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
    if (a2)
    {
      *result = xmmword_1B0ECD830;
    }
  }

  return result;
}

uint64_t sub_1B0BCDFD4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B0BCE028(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static AuthenticationFailure.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      return !a6;
    }

    if (a3 == 1)
    {
      return a6 == 1;
    }

LABEL_10:
    if (a6 >= 4)
    {
      return static ResponseText.__derived_struct_equals(_:_:)();
    }

    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      return a6 == 3;
    }

    goto LABEL_10;
  }

  return a6 == 2;
}

uint64_t AuthenticationFailure.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v5 = 3;
      return MEMORY[0x1B2728D70](v5);
    }

    if (a4 == 3)
    {
      v5 = 4;
      return MEMORY[0x1B2728D70](v5);
    }
  }

  else
  {
    if (!a4)
    {
      v5 = 1;
      return MEMORY[0x1B2728D70](v5);
    }

    if (a4 == 1)
    {
      v5 = 2;
      return MEMORY[0x1B2728D70](v5);
    }
  }

  MEMORY[0x1B2728D70](0);
  sub_1B0E46C68();
  if ((~a2 & 0xF000000000000007) != 0)
  {
    ResponseTextCode.hash(into:)(a1, a2);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t AuthenticationFailure.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      MEMORY[0x1B2728D70](3);
      return sub_1B0E46CB8();
    }

    if (a3 == 3)
    {
      MEMORY[0x1B2728D70](4);
      return sub_1B0E46CB8();
    }
  }

  else
  {
    if (!a3)
    {
      MEMORY[0x1B2728D70](1);
      return sub_1B0E46CB8();
    }

    if (a3 == 1)
    {
      MEMORY[0x1B2728D70](2);
      return sub_1B0E46CB8();
    }
  }

  MEMORY[0x1B2728D70](0);
  sub_1B0E46C68();
  if ((~a1 & 0xF000000000000007) != 0)
  {
    ResponseTextCode.hash(into:)(v6, a1);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BCE2F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B0E46C28();
  AuthenticationFailure.hash(into:)(v5, v1, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BCE350(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      return v7 == 2;
    }

    if (v4 == 3)
    {
      return v7 == 3;
    }
  }

  else
  {
    if (!v4)
    {
      return v7 == 0;
    }

    if (v4 == 1)
    {
      return v7 == 1;
    }
  }

  if (v7 >= 4)
  {
    return static ResponseText.__derived_struct_equals(_:_:)(v3, a1[1]);
  }

  else
  {
    return 0;
  }
}

unint64_t AuthenticationFailure.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x6F7571207265766FLL;
  v4 = 0x6B63757473;
  v5 = 0x726568746FLL;
  if (a3 != 3)
  {
    v5 = 0x6F7571207265766FLL;
  }

  if (a3 != 2)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    v3 = 0xD000000000000015;
  }

  if (!a3)
  {
    v3 = 0x6465726320646162;
  }

  if (a3 <= 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1B0BCE480()
{
  v1 = *(v0 + 16);
  v2 = 0x6F7571207265766FLL;
  v3 = 0x6B63757473;
  v4 = 0x726568746FLL;
  if (v1 != 3)
  {
    v4 = 0x6F7571207265766FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000015;
  }

  if (!v1)
  {
    v2 = 0x6465726320646162;
  }

  if (v1 <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection21AuthenticationFailureO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0BCE54C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 24))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0BCE5A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

void *sub_1B0BCE600(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B0BCE634(unint64_t result)
{
  if ((~result & 0xF000000000000007) == 0)
  {
    goto LABEL_5;
  }

  if (((result >> 59) & 0x1E | (result >> 2) & 1) != 0x11 || __ROR8__(result + 0x7FFFFFFFFFFFFF94, 3) != 14)
  {
    sub_1B0447F00(result);
LABEL_5:

    return 0;
  }

  return result;
}

uint64_t sub_1B0BCE780@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s6LoggerVMa_0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  if ((a1 & 1) == 0)
  {
    v31 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
    if (v31 > 2)
    {
      if ((v31 - 5) >= 2)
      {
        if (v31 == 3)
        {
          if (qword_1EB6E5378 != -1)
          {
            swift_once();
          }

          v32 = &qword_1EB738388;
        }

        else
        {
          if (qword_1EB6E5380 != -1)
          {
            swift_once();
          }

          v32 = &qword_1EB738398;
        }
      }

      else
      {
        if (qword_1EB6E5370 != -1)
        {
          swift_once();
        }

        v32 = &qword_1EB738378;
      }
    }

    else if (v31)
    {
      if (v31 == 1)
      {
        if (qword_1EB6DE340 != -1)
        {
          swift_once();
        }

        v32 = &qword_1EB737E98;
      }

      else
      {
        if (qword_1EB6DE338 != -1)
        {
          swift_once();
        }

        v32 = &qword_1EB737E88;
      }
    }

    else
    {
      v32 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v38 = *v32;
    v37 = v32[1];
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v39 = 0;
    v40 = 0;
    v41 = 0;
    goto LABEL_54;
  }

  v15 = v3[11];
  if (v15 >> 60 == 11)
  {
    v33 = 0;
    v15 = 0xC000000000000000;
LABEL_18:
    v34 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
    if (v34 > 2)
    {
      if ((v34 - 5) >= 2)
      {
        if (v34 == 3)
        {
          if (qword_1EB6E5378 != -1)
          {
            swift_once();
          }

          v35 = &qword_1EB738388;
        }

        else
        {
          if (qword_1EB6E5380 != -1)
          {
            swift_once();
          }

          v35 = &qword_1EB738398;
        }
      }

      else
      {
        if (qword_1EB6E5370 != -1)
        {
          swift_once();
        }

        v35 = &qword_1EB738378;
      }
    }

    else if (v34)
    {
      if (v34 == 1)
      {
        if (qword_1EB6DE340 != -1)
        {
          swift_once();
        }

        v35 = &qword_1EB737E98;
      }

      else
      {
        if (qword_1EB6DE338 != -1)
        {
          swift_once();
        }

        v35 = &qword_1EB737E88;
      }
    }

    else
    {
      v35 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v38 = *v35;
    v37 = v35[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v39 = sub_1B0BD09D4(v33, v15, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
    v40 = v42;
    v41 = v43;
    result = sub_1B050755C(v33, v15);
LABEL_54:
    *a3 = v38;
    *(a3 + 8) = v37;
    *(a3 + 16) = v39;
    *(a3 + 24) = v40;
    *(a3 + 32) = v41;
    *(a3 + 38) = BYTE6(v41);
    *(a3 + 36) = WORD2(v41);
    *(a3 + 64) = 1;
    return result;
  }

  if (v15 >> 60 != 15)
  {
    v33 = v3[10];
    sub_1B03B2000(v33, v3[11]);
    sub_1B05072A8(v33, v15);
    *(v3 + 5) = xmmword_1B0EC58F0;
    goto LABEL_18;
  }

  v16 = v12;
  sub_1B0BCD47C();
  v17 = swift_allocError();
  *v18 = xmmword_1B0ECE570;
  *(v18 + 16) = 1;
  swift_willThrow();
  sub_1B041C97C(a2, v14);
  sub_1B041C97C(a2, v10);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v19 = v17;
  v20 = sub_1B0E43988();
  v21 = sub_1B0E458E8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v24 = v10[*(v16 + 20)];
    sub_1B041C9E0(v10);
    *(v22 + 10) = v24;
    *(v22 + 11) = 2082;
    v25 = *&v14[*(v16 + 20) + 4];
    sub_1B041C9E0(v14);
    v26 = ConnectionID.debugDescription.getter(v25);
    v28 = sub_1B0399D64(v26, v27, &v46);

    *(v22 + 13) = v28;
    *(v22 + 21) = 2112;
    v29 = sub_1B0E42CC8();
    *(v22 + 23) = v29;
    *v23 = v29;
    _os_log_impl(&dword_1B0389000, v20, v21, "[%.*hhx-%{public}s] Authentication failed: %@", v22, 0x1Fu);
    sub_1B0BD096C(v23);
    MEMORY[0x1B272C230](v23, -1, -1);
    v30 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1B272C230](v30, -1, -1);
    MEMORY[0x1B272C230](v22, -1, -1);
  }

  else
  {
    sub_1B041C9E0(v10);

    sub_1B041C9E0(v14);
  }

  return swift_willThrow();
}

uint64_t sub_1B0BCEE04@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s6LoggerVMa_0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v75[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v75[-v19];
  if ((a1 & 1) == 0)
  {
    v34 = (*(v3 + 14) >> 59) & 6 | ((*(v3 + 12) & 0x2000000000000000) != 0);
    if (v34 <= 2)
    {
      if (!v34)
      {
LABEL_24:
        v35 = AuthenticationMechanism.plain.unsafeMutableAddressor();
LABEL_39:
        v65 = *v35;
        v64 = v35[1];
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v67 = 0;
        v68 = 0;
        v69 = 0;
LABEL_40:
        *a3 = v65;
        *(a3 + 8) = v64;
        *(a3 + 16) = v67;
        *(a3 + 24) = v68;
        *(a3 + 38) = BYTE6(v69);
        *(a3 + 36) = WORD2(v69);
        *(a3 + 32) = v69;
        *(a3 + 39) = v96[0];
        *(a3 + 48) = *(v96 + 9);
        *(a3 + 64) = 1;
        return result;
      }

LABEL_7:
      if (v34 == 1)
      {
        if (qword_1EB6DE340 != -1)
        {
          swift_once();
        }

        v35 = &qword_1EB737E98;
      }

      else
      {
        if (qword_1EB6DE338 != -1)
        {
          swift_once();
        }

        v35 = &qword_1EB737E88;
      }

      goto LABEL_39;
    }

LABEL_25:
    if ((v34 - 5) >= 2)
    {
      if (v34 == 3)
      {
        if (qword_1EB6E5378 != -1)
        {
          swift_once();
        }

        v35 = &qword_1EB738388;
      }

      else
      {
        if (qword_1EB6E5380 != -1)
        {
          swift_once();
        }

        v35 = &qword_1EB738398;
      }
    }

    else
    {
      if (qword_1EB6E5370 != -1)
      {
        swift_once();
      }

      v35 = &qword_1EB738378;
    }

    goto LABEL_39;
  }

  v21 = v3 + 120;
  v22 = *(v3 + 15);
  v23 = *(v3 + 18);
  if ((v23 - 1) < 2)
  {
    v79 = v3;
    v80 = v18;
    sub_1B041C97C(a2, v13);
    sub_1B041C97C(a2, v10);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E458C8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v81[0] = v78;
      *v26 = 68158210;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v27 = v80;
      v28 = v10[*(v80 + 20)];
      sub_1B041C9E0(v10);
      *(v26 + 10) = v28;
      *(v26 + 11) = 2082;
      v29 = *&v13[*(v27 + 20) + 4];
      sub_1B041C9E0(v13);
      v30 = ConnectionID.debugDescription.getter(v29);
      v32 = sub_1B0399D64(v30, v31, v81);

      *(v26 + 13) = v32;
      _os_log_impl(&dword_1B0389000, v24, v25, "[%.*hhx-%{public}s] Authentication implementation has no initial response", v26, 0x15u);
      v33 = v78;
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x1B272C230](v33, -1, -1);
      MEMORY[0x1B272C230](v26, -1, -1);
    }

    else
    {
      sub_1B041C9E0(v10);

      sub_1B041C9E0(v13);
    }

    v34 = (v79[14] >> 59) & 6 | ((v79[12] & 0x2000000000000000) != 0);
    if (v34 <= 2)
    {
      if (!v34)
      {
        goto LABEL_24;
      }

      goto LABEL_7;
    }

    goto LABEL_25;
  }

  if (!v23)
  {
    *v21 = 0;
    *(v3 + 16) = 0;
    *(v3 + 17) = 0;
    *(v3 + 18) = 1;
    *(v3 + 19) = 0;
    *(v3 + 20) = 0;
    *(v3 + 42) = 0;
    v36 = *v3;
    v87 = 0;
    v88 = 0xE000000000000000;
    v89 = 0;
    v90 = 0xE000000000000000;
    v91 = (v36 & 1) == 0;
    v37 = v3;
    v38 = sub_1B0C10BEC();
    v40 = v39;
    v41 = (*(v37 + 14) >> 59) & 6 | ((*(v37 + 12) & 0x2000000000000000) != 0);
    if (v41 <= 2)
    {
      if (v41)
      {
        goto LABEL_14;
      }

      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v80 = v18;
  v77 = *(v3 + 16);
  v78 = v22;
  v43 = *(v3 + 42);
  v44 = *(v3 + 19);
  v45 = *(v3 + 20);
  v76 = v3[136];
  *v21 = 0;
  *(v3 + 16) = 0;
  *(v3 + 17) = 0;
  *(v3 + 18) = 2;
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v3 + 42) = 0;
  v46 = *(v3 + 1);
  v47 = *(v3 + 2);
  v48 = *(v3 + 3);
  v49 = *(v3 + 4);
  v74 = *v3;
  v79 = v44;
  v50 = v97;
  sub_1B0C154B8(v46, v47, v48, v49, v23, v44, v45, v43, &v83, v74);
  if (!v50)
  {
    v97 = 0;
    sub_1B0BD1280(v78, v77, v76);

    v81[0] = v85;
    v81[1] = v84;
    v81[2] = v83;
    *&v82[0] = 0;
    *(&v82[0] + 1) = 0xE000000000000000;
    *&v82[1] = 0;
    DWORD2(v82[1]) = v86 & 0x80201;
    BYTE12(v82[1]) = 0;
    v94 = v83;
    v95[0] = v82[0];
    v92 = v85;
    v93 = v84;
    *(v95 + 13) = *(v82 + 13);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v70 = v3;
    v38 = sub_1B0C11ACC();
    v40 = v71;
    sub_1B0BD12AC(v81);
    sub_1B0BD1300(&v83);
    v41 = (*(v70 + 14) >> 59) & 6 | ((*(v70 + 12) & 0x2000000000000000) != 0);
    if (v41 <= 2)
    {
      if (v41)
      {
LABEL_14:
        if (v41 == 1)
        {
          if (qword_1EB6DE340 != -1)
          {
            swift_once();
          }

          v42 = &qword_1EB737E98;
        }

        else
        {
          if (qword_1EB6DE338 != -1)
          {
            swift_once();
          }

          v42 = &qword_1EB737E88;
        }

        goto LABEL_60;
      }

LABEL_43:
      v42 = AuthenticationMechanism.plain.unsafeMutableAddressor();
LABEL_60:
      v65 = *v42;
      v64 = v42[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v67 = sub_1B0BD09D4(v38, v40, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v68 = v72;
      v69 = v73;
      result = sub_1B0391D50(v38, v40);
      goto LABEL_40;
    }

LABEL_44:
    if ((v41 - 5) >= 2)
    {
      if (v41 == 3)
      {
        if (qword_1EB6E5378 != -1)
        {
          swift_once();
        }

        v42 = &qword_1EB738388;
      }

      else
      {
        if (qword_1EB6E5380 != -1)
        {
          swift_once();
        }

        v42 = &qword_1EB738398;
      }
    }

    else
    {
      if (qword_1EB6E5370 != -1)
      {
        swift_once();
      }

      v42 = &qword_1EB738378;
    }

    goto LABEL_60;
  }

  sub_1B0BD1280(v78, v77, v76);

  sub_1B041C97C(a2, v20);
  sub_1B041C97C(a2, v16);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v51 = v50;
  v52 = sub_1B0E43988();
  v53 = sub_1B0E458E8();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v81[0] = v97;
    *v54 = 68158466;
    *(v54 + 4) = 2;
    *(v54 + 8) = 256;
    v55 = v80;
    v56 = v16[*(v80 + 20)];
    sub_1B041C9E0(v16);
    *(v54 + 10) = v56;
    *(v54 + 11) = 2082;
    v57 = *&v20[*(v55 + 20) + 4];
    sub_1B041C9E0(v20);
    v58 = ConnectionID.debugDescription.getter(v57);
    v60 = sub_1B0399D64(v58, v59, v81);

    *(v54 + 13) = v60;
    *(v54 + 21) = 2112;
    v61 = sub_1B0E42CC8();
    *(v54 + 23) = v61;
    v62 = v79;
    *v79 = v61;
    _os_log_impl(&dword_1B0389000, v52, v53, "[%.*hhx-%{public}s] Authentication failed: %@", v54, 0x1Fu);
    sub_1B0BD096C(v62);
    MEMORY[0x1B272C230](v62, -1, -1);
    v63 = v97;
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x1B272C230](v63, -1, -1);
    MEMORY[0x1B272C230](v54, -1, -1);
  }

  else
  {
    sub_1B041C9E0(v16);

    sub_1B041C9E0(v20);
  }

  return swift_willThrow();
}

uint64_t sub_1B0BCF7A4@<X0>(char a1@<W0>, uint64_t a2@<X1>, void (*a3)(unint64_t, unint64_t)@<X2>, uint64_t a4@<X8>)
{
  v10 = _s6LoggerVMa_0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - v16;
  if ((a1 & 1) == 0)
  {
    v34 = (v4[9] >> 59) & 6 | ((v4[7] & 0x2000000000000000) != 0);
    v48 = v5;
    if (v34 > 2)
    {
      if ((v34 - 5) >= 2)
      {
        if (v34 == 3)
        {
          if (qword_1EB6E5378 != -1)
          {
            swift_once();
          }

          v35 = &qword_1EB738388;
        }

        else
        {
          if (qword_1EB6E5380 != -1)
          {
            swift_once();
          }

          v35 = &qword_1EB738398;
        }
      }

      else
      {
        if (qword_1EB6E5370 != -1)
        {
          swift_once();
        }

        v35 = &qword_1EB738378;
      }
    }

    else if (v34)
    {
      if (v34 == 1)
      {
        if (qword_1EB6DE340 != -1)
        {
          swift_once();
        }

        v35 = &qword_1EB737E98;
      }

      else
      {
        if (qword_1EB6DE338 != -1)
        {
          swift_once();
        }

        v35 = &qword_1EB737E88;
      }
    }

    else
    {
      v35 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v40 = *v35;
    v41 = v35[1];
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v42 = 0;
    v43 = 0;
    v44 = 0;
    goto LABEL_51;
  }

  v18 = v4[11];
  if (v18 >> 60 != 15)
  {
    v36 = v4[10];
    *(v4 + 5) = xmmword_1B0EC58F0;
    sub_1B03B2000(v36, v18);
    a3(v36, v18);
    v37 = (v4[9] >> 59) & 6 | ((v4[7] & 0x2000000000000000) != 0);
    v48 = v5;
    if (v37 > 2)
    {
      if ((v37 - 5) >= 2)
      {
        if (v37 == 3)
        {
          if (qword_1EB6E5378 != -1)
          {
            swift_once();
          }

          v38 = &qword_1EB738388;
        }

        else
        {
          if (qword_1EB6E5380 != -1)
          {
            swift_once();
          }

          v38 = &qword_1EB738398;
        }
      }

      else
      {
        if (qword_1EB6E5370 != -1)
        {
          swift_once();
        }

        v38 = &qword_1EB738378;
      }
    }

    else if (v37)
    {
      if (v37 == 1)
      {
        if (qword_1EB6DE340 != -1)
        {
          swift_once();
        }

        v38 = &qword_1EB737E98;
      }

      else
      {
        if (qword_1EB6DE338 != -1)
        {
          swift_once();
        }

        v38 = &qword_1EB737E88;
      }
    }

    else
    {
      v38 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v40 = *v38;
    v41 = v38[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v42 = sub_1B0BD09D4(v36, v18, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
    v43 = v45;
    v44 = v46;
    result = (a3)(v36, v18);
LABEL_51:
    *a4 = v40;
    *(a4 + 8) = v41;
    *(a4 + 16) = v42;
    *(a4 + 24) = v43;
    *(a4 + 32) = v44;
    *(a4 + 38) = BYTE6(v44);
    *(a4 + 36) = WORD2(v44);
    *(a4 + 39) = *v49;
    *(a4 + 48) = *&v49[9];
    *(a4 + 64) = 1;
    return result;
  }

  v19 = v15;
  sub_1B0BCD47C();
  v20 = swift_allocError();
  *v21 = xmmword_1B0ECE570;
  *(v21 + 16) = 1;
  swift_willThrow();
  sub_1B041C97C(a2, v17);
  sub_1B041C97C(a2, v13);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v22 = v20;
  v23 = sub_1B0E43988();
  v24 = sub_1B0E458E8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = v48;
    *v25 = 68158466;
    *(v25 + 4) = 2;
    *(v25 + 8) = 256;
    v27 = v13[*(v19 + 20)];
    sub_1B041C9E0(v13);
    *(v25 + 10) = v27;
    *(v25 + 11) = 2082;
    v28 = *&v17[*(v19 + 20) + 4];
    sub_1B041C9E0(v17);
    v29 = ConnectionID.debugDescription.getter(v28);
    v31 = sub_1B0399D64(v29, v30, &v50);

    *(v25 + 13) = v31;
    *(v25 + 21) = 2112;
    v32 = sub_1B0E42CC8();
    *(v25 + 23) = v32;
    *v26 = v32;
    _os_log_impl(&dword_1B0389000, v23, v24, "[%.*hhx-%{public}s] Authentication failed: %@", v25, 0x1Fu);
    sub_1B0BD096C(v26);
    MEMORY[0x1B272C230](v26, -1, -1);
    v33 = v48;
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x1B272C230](v33, -1, -1);
    MEMORY[0x1B272C230](v25, -1, -1);
  }

  else
  {
    sub_1B041C9E0(v13);

    sub_1B041C9E0(v17);
  }

  return swift_willThrow();
}

uint64_t sub_1B0BCFE44@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s6LoggerVMa_0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v63 - v19;
  if ((a1 & 1) == 0)
  {
    v32 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
    if (v32 <= 2)
    {
      if (!v32)
      {
LABEL_26:
        v33 = AuthenticationMechanism.plain.unsafeMutableAddressor();
LABEL_40:
        v57 = *v33;
        v56 = v33[1];
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v58 = 0;
        v59 = 0;
        v60 = 0;
LABEL_41:
        *a3 = v57;
        *(a3 + 8) = v56;
        *(a3 + 16) = v58;
        *(a3 + 24) = v59;
        *(a3 + 32) = v60;
        *(a3 + 38) = BYTE6(v60);
        *(a3 + 36) = WORD2(v60);
        *(a3 + 39) = *v65;
        *(a3 + 48) = *&v65[9];
        *(a3 + 64) = 1;
        return result;
      }

LABEL_8:
      if (v32 == 1)
      {
        if (qword_1EB6DE340 != -1)
        {
          swift_once();
        }

        v33 = &qword_1EB737E98;
      }

      else
      {
        if (qword_1EB6DE338 != -1)
        {
          swift_once();
        }

        v33 = &qword_1EB737E88;
      }

      goto LABEL_40;
    }

LABEL_27:
    if ((v32 - 5) >= 2)
    {
      if (v32 == 3)
      {
        if (qword_1EB6E5378 != -1)
        {
          swift_once();
        }

        v33 = &qword_1EB738388;
      }

      else
      {
        if (qword_1EB6E5380 != -1)
        {
          swift_once();
        }

        v33 = &qword_1EB738398;
      }
    }

    else
    {
      if (qword_1EB6E5370 != -1)
      {
        swift_once();
      }

      v33 = &qword_1EB738378;
    }

    goto LABEL_40;
  }

  v21 = v3[11];
  if (v21 >> 60 != 11)
  {
    if (v21 >> 60 != 15)
    {
      v49 = v3[10];
      *(v3 + 5) = xmmword_1B0ECD820;
      sub_1B03B2000(v49, v21);
      sub_1B05072A8(v49, v21);
      v50 = sub_1B0BF8AAC(v3[12], v3[13], v3[14], v3[15], v49, v21);
      v52 = v51;
      sub_1B05072A8(v49, v21);
      v53 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
      if (v53 > 2)
      {
        if ((v53 - 5) >= 2)
        {
          if (v53 == 3)
          {
            if (qword_1EB6E5378 != -1)
            {
              swift_once();
            }

            v54 = &qword_1EB738388;
          }

          else
          {
            if (qword_1EB6E5380 != -1)
            {
              swift_once();
            }

            v54 = &qword_1EB738398;
          }
        }

        else
        {
          if (qword_1EB6E5370 != -1)
          {
            swift_once();
          }

          v54 = &qword_1EB738378;
        }
      }

      else if (v53)
      {
        if (v53 == 1)
        {
          if (qword_1EB6DE340 != -1)
          {
            swift_once();
          }

          v54 = &qword_1EB737E98;
        }

        else
        {
          if (qword_1EB6DE338 != -1)
          {
            swift_once();
          }

          v54 = &qword_1EB737E88;
        }
      }

      else
      {
        v54 = AuthenticationMechanism.plain.unsafeMutableAddressor();
      }

      v57 = *v54;
      v56 = v54[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v58 = sub_1B0BD09D4(v50, v52, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v59 = v61;
      v60 = v62;
      result = sub_1B0391D50(v50, v52);
      goto LABEL_41;
    }

    v22 = v18;
    v64 = v3;
    sub_1B041C97C(a2, v13);
    sub_1B041C97C(a2, v10);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v23 = sub_1B0E43988();
    v24 = sub_1B0E458C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66 = v63;
      *v25 = 68158210;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      v26 = v10[*(v22 + 20)];
      sub_1B041C9E0(v10);
      *(v25 + 10) = v26;
      *(v25 + 11) = 2082;
      v27 = *&v13[*(v22 + 20) + 4];
      sub_1B041C9E0(v13);
      v28 = ConnectionID.debugDescription.getter(v27);
      v30 = sub_1B0399D64(v28, v29, &v66);

      *(v25 + 13) = v30;
      _os_log_impl(&dword_1B0389000, v23, v24, "[%.*hhx-%{public}s] Authentication implementation has no initial response", v25, 0x15u);
      v31 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x1B272C230](v31, -1, -1);
      MEMORY[0x1B272C230](v25, -1, -1);
    }

    else
    {
      sub_1B041C9E0(v10);

      sub_1B041C9E0(v13);
    }

    v32 = (v64[9] >> 59) & 6 | ((v64[7] & 0x2000000000000000) != 0);
    if (v32 <= 2)
    {
      if (!v32)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    goto LABEL_27;
  }

  v34 = v18;
  sub_1B0BCD47C();
  v35 = swift_allocError();
  *v36 = xmmword_1B0ECE570;
  *(v36 + 16) = 1;
  swift_willThrow();
  sub_1B041C97C(a2, v20);
  sub_1B041C97C(a2, v16);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v37 = v35;
  v38 = sub_1B0E43988();
  v39 = sub_1B0E458E8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v66 = v64;
    *v40 = 68158466;
    *(v40 + 4) = 2;
    *(v40 + 8) = 256;
    v42 = v16[*(v34 + 20)];
    sub_1B041C9E0(v16);
    *(v40 + 10) = v42;
    *(v40 + 11) = 2082;
    v43 = *&v20[*(v34 + 20) + 4];
    sub_1B041C9E0(v20);
    v44 = ConnectionID.debugDescription.getter(v43);
    v46 = sub_1B0399D64(v44, v45, &v66);

    *(v40 + 13) = v46;
    *(v40 + 21) = 2112;
    v47 = sub_1B0E42CC8();
    *(v40 + 23) = v47;
    *v41 = v47;
    _os_log_impl(&dword_1B0389000, v38, v39, "[%.*hhx-%{public}s] Authentication failed: %@", v40, 0x1Fu);
    sub_1B0BD096C(v41);
    MEMORY[0x1B272C230](v41, -1, -1);
    v48 = v64;
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x1B272C230](v48, -1, -1);
    MEMORY[0x1B272C230](v40, -1, -1);
  }

  else
  {
    sub_1B041C9E0(v16);

    sub_1B041C9E0(v20);
  }

  return swift_willThrow();
}

__n128 sub_1B0BD06BC@<Q0>(char a1@<W0>, uint64_t a2@<X1>, void (*a3)(unint64_t, unint64_t)@<X4>, uint64_t a4@<X8>)
{
  sub_1B0BCF7A4(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a4 + 32) = v8[2];
    *(a4 + 48) = v7;
    *(a4 + 64) = v9;
    result = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = result;
  }

  return result;
}

__n128 sub_1B0BD0714@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v15 = v1[2];
  v16 = v3;
  v17 = v1[4];
  v4 = v1[1];
  v14[0] = *v1;
  v14[1] = v4;
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = *(&v15 + 1) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(&v16 + 1) | 0x1000000000000000;
  v11 = v4;
  v12 = v14[0];
  sub_1B0BD1224(v14, v13);
  result = v12;
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 48) = v6;
  *(a1 + 56) = v9;
  *(a1 + 64) = v7;
  return result;
}

__n128 sub_1B0BD07A8@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B0BCFE44(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

__n128 sub_1B0BD07FC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  v15 = *(v1 + 72);
  v16 = v3;
  v17 = *(v1 + 104);
  v4 = *(v1 + 56);
  v14[0] = *(v1 + 40);
  v14[1] = v4;
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = *(&v15 + 1) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(&v16 + 1) | 0x1000000000000000;
  v11 = v4;
  v12 = v14[0];
  sub_1B0BD1224(v14, v13);
  result = v12;
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 48) = v6;
  *(a1 + 56) = v9;
  *(a1 + 64) = v7;
  return result;
}

__n128 sub_1B0BD0898@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B0BCEE04(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

__n128 sub_1B0BD08EC@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B0BCE780(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_1B0BD096C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B0BD09D4(unint64_t result, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = result;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    result = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    result = BYTE6(a2);
    goto LABEL_11;
  }

  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    result = HIDWORD(v7) - v7;
LABEL_10:
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_11:
    if (result)
    {
      v11 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(result, a3, a4, a5, a6);
      swift_beginAccess();
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = *(v11 + 16);
      goto LABEL_14;
    }

LABEL_13:
    v17 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
    v11 = *v17;
    v12 = *(v17 + 2);
    v13 = *(v17 + 3);
    v16 = *(v17 + 4);
    v14 = *(v17 + 10);
    v15 = *(v17 + 22);

LABEL_14:
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v21 = v16;
    v22 = v14;
    v23 = v15;
    result = sub_1B0BD0F04(v7, a2, &v18, v13);
    if ((result & 0x100000000) != 0)
    {
      result = sub_1B0BD0B40(v7, a2, v13);
    }

    if (!__CFADD__(v20, result))
    {
      return v18;
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B0BD0B40(uint64_t a1, unint64_t a2, Swift::UInt32 a3)
{
  v4 = v3;
  v34 = sub_1B0E42FC8();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53C8, &qword_1B0ECFB78);
  if (result == MEMORY[0x1E6969080])
  {
    goto LABEL_31;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v12 != 2)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v13 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v13 = HIDWORD(a1) - a1;
  }

LABEL_12:
  v16 = a3 + v13;
  if (__CFADD__(a3, v13))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = *(v4 + 16);
    v19 = v16 >= v18;
    v20 = v16 - v18;
    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v21, v22 & 1);
  }

  v32 = v8;
  sub_1B0BD0DC8(v13, v4, a3);
  v23 = sub_1B0E42EB8();
  sub_1B0BD11CC();
  result = sub_1B0E45E38();
  if (v36 != 1)
  {
    v25 = a3;
    v26 = a3;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (HIDWORD(v24))
      {
        goto LABEL_28;
      }

      v27 = v35;
      ByteBuffer._ensureAvailableCapacity(_:at:)(v23 + 1, v25);
      v28 = *v4;
      v29 = *(v4 + 20);
      v30 = *(v4 + 22);
      swift_beginAccess();
      *(*(v28 + 24) + (v30 | (v29 << 8)) + v26 + v23) = v27;
      result = sub_1B0E45E38();
      ++v23;
      if (v36 == 1)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
LABEL_25:
  (*(v32 + 8))(v33, v34);
  return v24;
}

unint64_t sub_1B0BD0DC8(unint64_t result, uint64_t *a2, Swift::UInt32 at)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    ByteBuffer._ensureAvailableCapacity(_:at:)(result, at);
    v5 = *a2;
    v6 = *(a2 + 10);
    v7 = *(a2 + 22);
    swift_beginAccess();
    return *(v5 + 24) + (v7 | (v6 << 8)) + at;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BD0E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::UInt32 a5)
{
  result = sub_1B0E42A98();
  v9 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_1B0E42AB8();
  if (v9)
  {
    if (v12 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    v14 = &v9[v13];
    v15 = v9;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  ByteBuffer._setBytes(_:at:)(v15, v14, a5);
  return result;
}

unint64_t sub_1B0BD0F04(uint64_t a1, unint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v7)
    {
      if (a1 >> 32 >= a1)
      {
        result = sub_1B0BD0E48(a1, a1 >> 32, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
        if (v4)
        {
          goto LABEL_24;
        }

        LODWORD(v8) = result;
        v16 = HIDWORD(result) & 1;
        goto LABEL_23;
      }
    }

    else
    {
      v24[0] = a1;
      LOWORD(v24[1]) = a2;
      BYTE2(v24[1]) = BYTE2(a2);
      BYTE3(v24[1]) = BYTE3(a2);
      BYTE4(v24[1]) = BYTE4(a2);
      v8 = BYTE6(a2);
      BYTE5(v24[1]) = BYTE5(a2);
      v9 = a4 + BYTE6(a2);
      if (!__CFADD__(a4, BYTE6(a2)))
      {
        v10 = *a3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = *(a3 + 16);
          v12 = v9 >= v11;
          v13 = v9 - v11;
          if (v12)
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = sub_1B03904C0();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v14, v15 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(v8, a4);
        ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v24, v24 + v8, a4);
        LOBYTE(v16) = 0;
        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
  }

  if (v7 == 2)
  {
    result = sub_1B0BD0E48(*(a1 + 16), *(a1 + 24), a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    if (v4)
    {
      goto LABEL_24;
    }

    LODWORD(v8) = result;
    v16 = HIDWORD(result) & 1;
  }

  else
  {
    memset(v24, 0, 14);
    v18 = *a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = *(a3 + 16);
      v12 = a4 >= v19;
      v20 = a4 - v19;
      if (v12)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v21, v22 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(0, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v24, v24, a4);
    LODWORD(v8) = 0;
    LOBYTE(v16) = 0;
  }

LABEL_23:
  LOBYTE(v24[0]) = v16;
  result = v8 | (v16 << 32);
LABEL_24:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(int a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
    v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
    v11 = v10 | HIWORD(v10);
    v12 = __CFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      v14 = -1;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = 0;
  }

  result = a2(v14);
  if (result)
  {
    v16 = result;
    type metadata accessor for ByteBuffer._Storage();
    result = swift_allocObject();
    *(result + 16) = v14;
    *(result + 24) = v16;
    *(result + 32) = a2;
    *(result + 40) = a3;
    *(result + 48) = a4;
    *(result + 56) = a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0BD11CC()
{
  result = qword_1EB6DED20;
  if (!qword_1EB6DED20)
  {
    sub_1B0E42FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DED20);
  }

  return result;
}

uint64_t sub_1B0BD1280(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B0BD1294(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B0BD1294(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1B0BD1360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Authenticator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BD13F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53D0, &unk_1B0ECFB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0BD1458(uint64_t result, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
    }
  }

  else if (a4 >> 6)
  {
    return sub_1B0BB6FE0(result, a2, a3, a4 & 0x3F);
  }

  else
  {
    return sub_1B0BD1488(result, a2, a3);
  }

  return result;
}

unint64_t sub_1B0BD1488(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    sub_1B0447F00(result);
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1B0BD1510(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1B0BD1558(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B0BD15D4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 120);
  v4 = *(a1 + 152);
  v16[8] = *(a1 + 136);
  v16[9] = v4;
  v16[10] = *(a1 + 168);
  v5 = *(a1 + 56);
  v6 = *(a1 + 88);
  v16[4] = *(a1 + 72);
  v16[5] = v6;
  v16[6] = *(a1 + 104);
  v16[7] = v3;
  v7 = *(a1 + 24);
  v16[0] = *(a1 + 8);
  v16[1] = v7;
  v16[2] = *(a1 + 40);
  v16[3] = v5;
  v8 = *a2;
  v9 = *(a2 + 120);
  v10 = *(a2 + 152);
  v17[8] = *(a2 + 136);
  v17[9] = v10;
  v17[10] = *(a2 + 168);
  v11 = *(a2 + 56);
  v12 = *(a2 + 88);
  v17[4] = *(a2 + 72);
  v17[5] = v12;
  v17[6] = *(a2 + 104);
  v17[7] = v9;
  v13 = *(a2 + 24);
  v17[0] = *(a2 + 8);
  v17[1] = v13;
  v17[2] = *(a2 + 40);
  v17[3] = v11;
  if (sub_1B044DA4C(v2, v8))
  {
    v14 = static ServerID.__derived_struct_equals(_:_:)(v16, v17);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1B0BD16D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *&v48 = _s6LoggerVMa_0();
  v4 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = v1[3];
  v14 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v13);
  (*(v14 + 8))(v49, v13, v14);
  v15 = sub_1B0C0E5E8();
  v17 = v16;
  sub_1B0BD2F90(v49);
  v18 = type metadata accessor for AuthenticationTask();
  sub_1B0BD2FE4(v1 + *(v18 + 20), v12, _s6LoggerVMa_0);
  sub_1B0BD2FE4(v12, v9, _s6LoggerVMa_0);
  sub_1B0BD2FE4(v12, v6, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = sub_1B0E43988();
  v20 = sub_1B0E45908();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *&v46 = v18;
    v22 = v21;
    *&v45 = swift_slowAlloc();
    *&v50[0] = v45;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v43 = v15;
    v23 = v48;
    v24 = *(v48 + 20);
    v44 = v20;
    v25 = v6[v24];
    *&v47 = a1;
    sub_1B0BD304C(v6, _s6LoggerVMa_0);
    *(v22 + 10) = v25;
    *(v22 + 11) = 2082;
    v26 = *&v9[*(v23 + 20) + 4];
    sub_1B0BD304C(v9, _s6LoggerVMa_0);
    v27 = ConnectionID.debugDescription.getter(v26);
    v29 = sub_1B0399D64(v27, v28, v50);

    *(v22 + 13) = v29;
    a1 = v47;
    *(v22 + 21) = 2082;
    v30 = sub_1B0399D64(v43, v17, v50);

    *(v22 + 23) = v30;
    _os_log_impl(&dword_1B0389000, v19, v44, "[%.*hhx-%{public}s] Using authentication mechanism '%{public}s'.", v22, 0x1Fu);
    v31 = v45;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v31, -1, -1);
    v32 = v22;
    v18 = v46;
    MEMORY[0x1B272C230](v32, -1, -1);
  }

  else
  {
    sub_1B0BD304C(v6, _s6LoggerVMa_0);

    sub_1B0BD304C(v9, _s6LoggerVMa_0);
  }

  v33 = v2[6];
  if ((v33 & 0x3000000000000000) == 0x2000000000000000 && v33 == 0x2000000000000000 && !v2[5])
  {
    v34 = *(v2 + *(v18 + 24));
    if (*(v2 + *(v18 + 24)))
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    sub_1B0BD30AC(0, 0x2000000000000000uLL);
    v2[5] = v35;
    v2[6] = 0x2000000000000000;
    v36 = v2[3];
    v37 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v2, v36);
    (*(v37 + 16))(v50, v34, v12, v36, v37);
    v48 = v50[1];
    v47 = v50[0];
    v46 = v50[3];
    v45 = v50[2];
    v38 = v51;
    result = sub_1B0BD304C(v12, _s6LoggerVMa_0);
    v40 = v45;
    v41 = v46;
    v42 = v48;
    *a1 = v47;
    *(a1 + 16) = v42;
    *(a1 + 32) = v40;
    *(a1 + 48) = v41;
    *(a1 + 64) = v38;
  }

  else
  {
    result = sub_1B0E465B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BD1BE0(uint64_t a1)
{
  v2 = v1;
  v4 = _s6LoggerVMa_0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for UntaggedResponse(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0BD2FE4(a1, v17, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    return sub_1B0BD304C(v17, type metadata accessor for UntaggedResponse);
  }

  v18 = *v17;
  v19 = type metadata accessor for AuthenticationTask();
  sub_1B0BD2FE4(v2 + *(v19 + 20), v13, _s6LoggerVMa_0);
  sub_1B0BD2FE4(v13, v10, _s6LoggerVMa_0);
  sub_1B0BD2FE4(v13, v7, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = sub_1B0E43988();
  v21 = sub_1B0E45908();

  if (os_log_type_enabled(v20, v21))
  {
    v48 = v21;
    v49 = v20;
    v50 = v2;
    v22 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52 = v47;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v23 = v7[*(v4 + 20)];
    sub_1B0BD304C(v7, _s6LoggerVMa_0);
    *(v22 + 10) = v23;
    *(v22 + 11) = 2082;
    v24 = *&v10[*(v4 + 20) + 4];
    sub_1B0BD304C(v10, _s6LoggerVMa_0);
    v25 = ConnectionID.debugDescription.getter(v24);
    v27 = sub_1B0399D64(v25, v26, &v52);

    *(v22 + 13) = v27;
    *(v22 + 21) = 2080;
    v28 = *(v18 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v45 = v19;
      v51 = MEMORY[0x1E69E7CC0];
      sub_1B041D32C(0, v28, 0);
      v29 = v51;
      v46 = v18;
      v30 = (v18 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        v51 = v29;
        v34 = *(v29 + 16);
        v33 = *(v29 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v34 >= v33 >> 1)
        {
          sub_1B041D32C((v33 > 1), v34 + 1, 1);
          v29 = v51;
        }

        *(v29 + 16) = v34 + 1;
        v35 = v29 + 16 * v34;
        *(v35 + 32) = v31;
        *(v35 + 40) = v32;
        v30 += 4;
        --v28;
      }

      while (v28);
      v19 = v45;
      v18 = v46;
    }

    v51 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v37 = sub_1B0E448E8();
    v39 = v38;

    v40 = sub_1B0399D64(v37, v39, &v52);

    *(v22 + 23) = v40;
    v41 = v49;
    _os_log_impl(&dword_1B0389000, v49, v48, "[%.*hhx-%{public}s] Got capabilities during auth: %s.", v22, 0x1Fu);
    v42 = v47;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v42, -1, -1);
    MEMORY[0x1B272C230](v22, -1, -1);

    sub_1B0BD304C(v13, _s6LoggerVMa_0);
    v2 = v50;
  }

  else
  {
    sub_1B0BD304C(v7, _s6LoggerVMa_0);

    sub_1B0BD304C(v10, _s6LoggerVMa_0);
    sub_1B0BD304C(v13, _s6LoggerVMa_0);
  }

  v43 = *(v19 + 28);
  v44 = *(v2 + v43);

  *(v2 + v43) = v18;
  return result;
}

void sub_1B0BD208C(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v88 = _s6LoggerVMa_0();
  v10 = *(*(v88 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v88);
  v13 = (&v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v11);
  v91 = &v86 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v86 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v86 - v22);
  v24 = type metadata accessor for AuthenticationTask();
  sub_1B0BD2FE4(v5 + *(v24 + 20), v23, _s6LoggerVMa_0);
  sub_1B0BD30C8(a1, a2, a3 & 1);
  v25 = sub_1B0BCDD68(a1, a2, a3 & 1);
  v89 = v21;
  v90 = v13;
  v26 = v25;
  v28 = v27;
  sub_1B0BD3198(v25, v27, v23);
  sub_1B0391D50(v26, v28);
  v49 = v5[5];
  v50 = v5[6];
  v65 = (v50 >> 60) & 3;
  if (!v65)
  {
    sub_1B03B2000(v5[5], v5[6]);
    sub_1B0BD30AC(v49, v50);
    *(v5 + 5) = xmmword_1B0ECFC50;
    sub_1B0BD304C(v23, _s6LoggerVMa_0);
    sub_1B04FAEB0(&v106);
    v52 = v106;
    v51 = v107;
    v54 = v108;
    v53 = v109;
    v56 = v110;
    v55 = v111;
    v58 = v112;
    v57 = v113;
    v60 = v114;
    v59 = v115;
    v62 = *(&v116 + 1);
    v61 = v116;
    v63 = 1;
    goto LABEL_7;
  }

  if (v65 == 1)
  {
    v66 = v5[5];
    swift_willThrow();
    v89 = v49;
    v67 = v49;
  }

  else
  {
    if (__PAIR128__(v50 - 0x2000000000000000, v49) >= 3)
    {
      v70 = v18;
      v87 = v5;
      v71 = v89;
      sub_1B0BD2FE4(v23, v89, _s6LoggerVMa_0);
      sub_1B0BD2FE4(v23, v18, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v72 = sub_1B0E43988();
      v73 = sub_1B0E458F8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        LODWORD(v91) = v73;
        v75 = v74;
        v90 = swift_slowAlloc();
        *&v106 = v90;
        *v75 = 68158210;
        *(v75 + 4) = 2;
        *(v75 + 8) = 256;
        v76 = v88;
        v77 = v23;
        v78 = *(v70 + *(v88 + 20));
        sub_1B0BD304C(v70, _s6LoggerVMa_0);
        *(v75 + 10) = v78;
        v23 = v77;
        *(v75 + 11) = 2082;
        v79 = *&v71[*(v76 + 20) + 4];
        sub_1B0BD304C(v71, _s6LoggerVMa_0);
        v80 = ConnectionID.debugDescription.getter(v79);
        v82 = sub_1B0399D64(v80, v81, &v106);

        *(v75 + 13) = v82;
        _os_log_impl(&dword_1B0389000, v72, v91, "[%.*hhx-%{public}s] Authentication plugin failed generating response", v75, 0x15u);
        v83 = v90;
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x1B272C230](v83, -1, -1);
        MEMORY[0x1B272C230](v75, -1, -1);
      }

      else
      {
        sub_1B0BD304C(v18, _s6LoggerVMa_0);

        sub_1B0BD304C(v71, _s6LoggerVMa_0);
      }

      v84 = v87[3];
      v85 = v87[4];
      __swift_project_boxed_opaque_existential_0(v87, v84);
      (*(v85 + 8))(v92, v84, v85);
      sub_1B0BD304C(v23, _s6LoggerVMa_0);
      v96 = v92[2];
      v97 = v92[3];
      v98 = v92[4];
      v48 = v92[0];
      v47 = v92[1];
      goto LABEL_6;
    }

    sub_1B0BCD47C();
    v68 = swift_allocError();
    *v69 = v49;
    *(v69 + 8) = v50;
    *(v69 + 16) = 0;
    swift_willThrow();
    sub_1B0BD30D8(v49, v50);
    v89 = v68;
  }

  v29 = v90;
  sub_1B0BD2FE4(v23, v91, _s6LoggerVMa_0);
  sub_1B0BD2FE4(v23, v29, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v90 = v23;
  v30 = sub_1B0E43988();
  v31 = sub_1B0E458E8();
  v32 = v29;
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v106 = v86;
    *v33 = 68158210;
    *(v33 + 4) = 2;
    *(v33 + 8) = 256;
    v34 = a4;
    v35 = v91;
    v36 = v88;
    v37 = *(v88 + 20);
    v87 = v5;
    v38 = *(v32 + v37);
    sub_1B0BD304C(v32, _s6LoggerVMa_0);
    *(v33 + 10) = v38;
    *(v33 + 11) = 2082;
    v39 = *(v35 + *(v36 + 20) + 4);
    v40 = v35;
    a4 = v34;
    sub_1B0BD304C(v40, _s6LoggerVMa_0);
    v41 = ConnectionID.debugDescription.getter(v39);
    v43 = sub_1B0399D64(v41, v42, &v106);

    *(v33 + 13) = v43;
    v5 = v87;
    _os_log_impl(&dword_1B0389000, v30, v31, "[%.*hhx-%{public}s] Caught error processing Handshake query", v33, 0x15u);
    v44 = v86;
    __swift_destroy_boxed_opaque_existential_0(v86);
    MEMORY[0x1B272C230](v44, -1, -1);
    MEMORY[0x1B272C230](v33, -1, -1);
  }

  else
  {
    sub_1B0BD304C(v29, _s6LoggerVMa_0);

    sub_1B0BD304C(v91, _s6LoggerVMa_0);
  }

  v45 = v5[3];
  v46 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v45);
  (*(v46 + 8))(v93, v45, v46);

  sub_1B0BD304C(v90, _s6LoggerVMa_0);
  v96 = v93[2];
  v97 = v93[3];
  v98 = v93[4];
  v48 = v93[0];
  v47 = v93[1];
LABEL_6:
  v94 = v48;
  v95 = v47;
  *&v100 = 0;
  v99 = 0uLL;
  sub_1B0BD2F7C(&v94);
  v114 = v102;
  v115 = v103;
  v116 = v104;
  v117 = v105;
  v110 = v98;
  v111 = v99;
  v112 = v100;
  v113 = v101;
  v106 = v94;
  v107 = v95;
  v108 = v96;
  v109 = v97;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v106);
  v49 = 0;
  v50 = 0;
  v52 = v106;
  v51 = v107;
  v54 = v108;
  v53 = v109;
  v56 = v110;
  v55 = v111;
  v58 = v112;
  v57 = v113;
  v60 = v114;
  v59 = v115;
  v62 = *(&v116 + 1);
  v61 = v116;
  v63 = -1;
LABEL_7:
  v64 = v117;
  *a4 = v49;
  *(a4 + 8) = v50;
  *(a4 + 16) = v63;
  *(a4 + 24) = v52;
  *(a4 + 40) = v51;
  *(a4 + 56) = v54;
  *(a4 + 72) = v53;
  *(a4 + 88) = v56;
  *(a4 + 104) = v55;
  *(a4 + 120) = v58;
  *(a4 + 136) = v57;
  *(a4 + 152) = v60;
  *(a4 + 168) = v59;
  *(a4 + 184) = v61;
  *(a4 + 192) = v62;
  *(a4 + 200) = v64;
}

double sub_1B0BD2844@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v63 = a2;
  v64 = a3;
  v9 = a4;
  v10 = type metadata accessor for AuthenticationTask();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = _s6LoggerVMa_0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55[-v21];
  sub_1B0BD2FE4(v6 + *(v10 + 20), &v55[-v21], _s6LoggerVMa_0);
  if (v9)
  {
    sub_1B04420D8(a1);
    v23 = v64;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v24 = v6[3];
    v25 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v24);
    (*(v25 + 8))(v89, v24, v25);
    sub_1B0BD304C(v22, _s6LoggerVMa_0);
    v67 = v89[2];
    v68 = v89[3];
    v69 = v89[4];
    v65 = v89[0];
    v66 = v89[1];
    *&v70 = a1;
    *(&v70 + 1) = v63;
    *&v71 = v23;
    sub_1B0BD2F7C(&v65);
    v85 = v73;
    v86 = v74;
    v87 = v75;
    v88 = v76;
    v81 = v69;
    v82 = v70;
    v83 = v71;
    v84 = v72;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v80 = v68;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v77);
    v98 = v85;
    v99 = v86;
    v100 = v87;
    v101 = v88;
    v94 = v81;
    v95 = v82;
    v96 = v83;
    v97 = v84;
    v90 = v77;
    v91 = v78;
    v92 = v79;
    v93 = v80;
  }

  else
  {
    v59 = v13;
    v61 = v10;
    sub_1B0BD2FE4(v22, v19, _s6LoggerVMa_0);
    sub_1B0BD2FE4(v22, v16, _s6LoggerVMa_0);
    v60 = a1;
    sub_1B04420D8(a1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0BD2FE4(v6, v62, type metadata accessor for AuthenticationTask);
    v26 = sub_1B0E43988();
    v27 = sub_1B0E45908();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v58 = v6;
      v29 = v28;
      v57 = swift_slowAlloc();
      *&v90 = v57;
      *v29 = 68158466;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = v59;
      v31 = *(v59 + 20);
      v56 = v27;
      v32 = v16[v31];
      sub_1B0BD304C(v16, _s6LoggerVMa_0);
      *(v29 + 10) = v32;
      *(v29 + 11) = 2082;
      v33 = *&v19[*(v30 + 20) + 4];
      sub_1B0BD304C(v19, _s6LoggerVMa_0);
      v34 = ConnectionID.debugDescription.getter(v33);
      v36 = sub_1B0399D64(v34, v35, &v90);

      *(v29 + 13) = v36;
      *(v29 + 21) = 2082;
      v37 = v62;
      v38 = v62[3];
      v39 = v62[4];
      __swift_project_boxed_opaque_existential_0(v62, v38);
      (*(v39 + 8))(v89, v38, v39);
      v40 = sub_1B0C0E5E8();
      v42 = v41;
      sub_1B0BD2F90(v89);
      sub_1B0BD304C(v37, type metadata accessor for AuthenticationTask);
      v43 = sub_1B0399D64(v40, v42, &v90);

      *(v29 + 23) = v43;
      _os_log_impl(&dword_1B0389000, v26, v56, "[%.*hhx-%{public}s] Authenticated with '%{public}s'.", v29, 0x1Fu);
      v44 = v57;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v44, -1, -1);
      v45 = v29;
      v6 = v58;
      MEMORY[0x1B272C230](v45, -1, -1);

      v46 = v22;
      v47 = _s6LoggerVMa_0;
    }

    else
    {
      sub_1B0BD304C(v16, _s6LoggerVMa_0);

      sub_1B0BD304C(v19, _s6LoggerVMa_0);
      sub_1B0BD304C(v22, _s6LoggerVMa_0);
      v47 = type metadata accessor for AuthenticationTask;
      v46 = v62;
    }

    sub_1B0BD304C(v46, v47);
    v48 = *(v6 + *(v61 + 28));
    *&v65 = v60;
    *(&v65 + 1) = v63;
    *&v66 = v64;
    *(&v66 + 1) = v48;
    sub_1B0BD2F88(&v65);
    v85 = v73;
    v86 = v74;
    v87 = v75;
    v88 = v76;
    v81 = v69;
    v82 = v70;
    v83 = v71;
    v84 = v72;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v80 = v68;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v77);
    v98 = v85;
    v99 = v86;
    v100 = v87;
    v101 = v88;
    v94 = v81;
    v95 = v82;
    v96 = v83;
    v97 = v84;
    v90 = v77;
    v91 = v78;
    v92 = v79;
    v93 = v80;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v49 = v99;
  *(a5 + 128) = v98;
  *(a5 + 144) = v49;
  *(a5 + 160) = v100;
  *(a5 + 176) = v101;
  v50 = v95;
  *(a5 + 64) = v94;
  *(a5 + 80) = v50;
  v51 = v97;
  *(a5 + 96) = v96;
  *(a5 + 112) = v51;
  v52 = v91;
  *a5 = v90;
  *(a5 + 16) = v52;
  result = *&v92;
  v54 = v93;
  *(a5 + 32) = v92;
  *(a5 + 48) = v54;
  return result;
}

__n128 sub_1B0BD2E54@<Q0>(uint64_t a1@<X8>)
{
  sub_1B0BD16D8(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

double sub_1B0BD2EA8@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  sub_1B0BD2844(a1, a2, a3, a4, v12);
  v6 = v20;
  *(a5 + 128) = v19;
  *(a5 + 144) = v6;
  *(a5 + 160) = v21;
  *(a5 + 176) = v22;
  v7 = v16;
  *(a5 + 64) = v15;
  *(a5 + 80) = v7;
  v8 = v18;
  *(a5 + 96) = v17;
  *(a5 + 112) = v8;
  v9 = v12[1];
  *a5 = v12[0];
  *(a5 + 16) = v9;
  result = *&v13;
  v11 = v14;
  *(a5 + 32) = v13;
  *(a5 + 48) = v11;
  return result;
}

uint64_t sub_1B0BD2F24(void *a1, void *a2, uint64_t a3)
{
  if (sub_1B0BD35D4(a1, a2))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1B0BD2FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0BD304C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B0BD30AC(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
  }

  else if (!v2)
  {
    sub_1B0391D50(a1, a2);
  }
}

uint64_t sub_1B0BD30C8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B03B2000(a1, a2);
  }

  else
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }
}

uint64_t sub_1B0BD30D8(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
    return a1;
  }

  if (!v2)
  {
    return sub_1B03B2000(a1, a2);
  }

  return a1;
}

uint64_t sub_1B0BD30F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B0BD313C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0BD3198(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3[5];
  v6 = v3[6];
  v7 = (v6 >> 60) & 3;
  if (!v7)
  {
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    v8 = v5;
LABEL_19:
    swift_willThrow();
    return;
  }

  v9 = v4;
  if (__PAIR128__(0x2000000000000000, 1) < __PAIR128__(v6, v5))
  {
    if (v6 == 0x2000000000000000 && v5 == 2)
    {
      v12 = v3[3];
      v13 = v3[4];
      v14 = v3;
      v16 = v3;
      __swift_mutable_project_boxed_opaque_existential_1(v16, v12);
      (*(v13 + 32))(a1, a2, a3, v12, v13);
      if (!v4)
      {
        v19 = v14[3];
        v20 = v14[4];
        __swift_mutable_project_boxed_opaque_existential_1(v14, v19);
        v21 = (*(v20 + 24))(v19, v20);
        if (v22 >> 60 != 15)
        {
          v45 = v21;
          v46 = v22;
          sub_1B0BD30AC(v14[5], v14[6]);
          v14[5] = v45;
          v14[6] = v46;
          return;
        }

        sub_1B0BD3E9C();
        v9 = swift_allocError();
        swift_willThrow();
      }

LABEL_25:
      v32 = v14[5];
      v33 = v14[6];
      v34 = v9;
      sub_1B0BD30AC(v32, v33);
      v14[5] = v9;
      v14[6] = 0x1000000000000000;
      goto LABEL_19;
    }

LABEL_18:
    sub_1B0BCD47C();
    swift_allocError();
    *v23 = v5;
    *(v23 + 8) = v6;
    *(v23 + 16) = 0;
    sub_1B0BD30D8(v5, v6);
    goto LABEL_19;
  }

  if (!(v5 | v6 ^ 0x2000000000000000))
  {
    goto LABEL_18;
  }

  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_27;
    }

    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
    goto LABEL_23;
  }

  if (v10)
  {
    v24 = a1;
    v25 = a1 >> 32;
LABEL_23:
    if (v24 == v25)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v26 = v3[3];
  v27 = v3[4];
  v14 = v3;
  v29 = v3;
  __swift_mutable_project_boxed_opaque_existential_1(v29, v26);
  (*(v27 + 32))(a1, a2, a3, v26, v27);
  if (v4)
  {
    goto LABEL_25;
  }

  v3 = v14;
LABEL_27:
  v35 = v3[3];
  v36 = v3[4];
  v37 = v3;
  __swift_mutable_project_boxed_opaque_existential_1(v3, v35);
  v38 = (*(v36 + 24))(v35, v36);
  if (v4)
  {
LABEL_30:
    v40 = v3[5];
    v41 = v37[6];
    v42 = v9;
    sub_1B0BD30AC(v40, v41);
    v37[5] = v9;
    v37[6] = 0x1000000000000000;
    goto LABEL_19;
  }

  if (v39 >> 60 == 15)
  {
    sub_1B0BD3E9C();
    v9 = swift_allocError();
    swift_willThrow();
    goto LABEL_30;
  }

  v43 = v38;
  v44 = v39;
  sub_1B0BD30AC(v37[5], v37[6]);
  v37[5] = v43;
  v37[6] = v44;
}

BOOL sub_1B0BD34C8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = (v5 >> 60) & 3;
  if (!v8)
  {
    return (v7 & 0x3000000000000000) == 0 && (sub_1B0AB8858(v4, v5, v6, v7) & 1) != 0;
  }

  if (v8 == 1)
  {
    return (v7 & 0x3000000000000000) == 0x1000000000000000;
  }

  if (__PAIR128__(0x2000000000000000, 1) < __PAIR128__(v5, v4))
  {
    v9 = v7 & 0x3000000000000000;
    if (v5 == 0x2000000000000000 && v4 == 2)
    {
      if (v9 != 0x2000000000000000 || v6 != 2)
      {
        return 0;
      }
    }

    else if (v9 != 0x2000000000000000 || v6 != 3)
    {
      return 0;
    }
  }

  else if (v4 | v5 ^ 0x2000000000000000)
  {
    if ((v7 & 0x3000000000000000) != 0x2000000000000000 || v6 != 1)
    {
      return 0;
    }
  }

  else if ((v7 & 0x3000000000000000) != 0x2000000000000000 || v6)
  {
    return 0;
  }

  return v7 == 0x2000000000000000;
}

uint64_t sub_1B0BD35D4(void *a1, void *a2)
{
  v4 = a1[5];
  v3 = a1[6];
  v5 = a2[5];
  v6 = a2[6];
  v7 = (v3 >> 60) & 3;
  if (!v7)
  {
    if ((v6 & 0x3000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v8 = a1;
    v9 = sub_1B0AB8858(a1[5], v3, v5, v6);
    a1 = v8;
    if ((v9 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_27;
  }

  if (v7 == 1)
  {
    if ((v6 & 0x3000000000000000) != 0x1000000000000000)
    {
      goto LABEL_63;
    }

LABEL_27:
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1;
    __swift_project_boxed_opaque_existential_0(a1, v12);
    (*(v13 + 8))(&v68, v12, v13);
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_0(a2, v15);
    (*(v16 + 8))(&v75, v15, v16);
    v17 = v69;
    v18 = v70;
    if ((v73 & 0x1000000000000000) != 0)
    {
      v85 = v68;
      v86 = v69;
      v87 = v70;
      v88 = v71;
      v89 = v72;
      v90 = v73 & 0xEFFFFFFFFFFFFFFFLL;
      v91 = v74;
      if ((v79 & 0x1000000000000000) != 0)
      {
        v81[0] = v75;
        v81[1] = v76;
        v81[2] = v77;
        v82 = v78;
        v83 = v79 & 0xEFFFFFFFFFFFFFFFLL;
        v84 = v80;
        v20 = sub_1B0C0FEBC(&v85, v81);
        goto LABEL_37;
      }
    }

    else if ((v79 & 0x1000000000000000) == 0)
    {
      v19 = v76;
      if (v68 == v75 || (sub_1B0E46A78() & 1) != 0)
      {
        if (__PAIR128__(v18, v17) == v19)
        {
          sub_1B0BD2F90(&v75);
          sub_1B0BD2F90(&v68);
LABEL_38:
          sub_1B03D2CA8(v14, v66);
          sub_1B03D2CA8(a2, v67);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53E0, &qword_1B0ECFDF8);
          if (swift_dynamicCast())
          {
            v52 = v62;
            v53 = v63;
            v54 = v64;
            v55 = v65;
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v46 = v56;
            v47 = v57;
            if (swift_dynamicCast())
            {
              v32 = v42;
              v33 = v43;
              v34 = v44;
              v35 = v45;
              v28 = v38;
              v29 = v39;
              v30 = v40;
              v31 = v41;
              v26 = v36;
              v27 = v37;
              if ((*(&v49 + 1) & 0x1000000000000000) != 0)
              {
                v96 = v46;
                v97 = v47;
                v98 = v48;
                *&v99 = v49;
                *(&v99 + 1) = *(&v49 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                v100 = v50;
                if ((*(&v29 + 1) & 0x1000000000000000) == 0 || (v101 = v26, v102 = v27, v103 = v28, *&v104 = v29, *(&v104 + 1) = *(&v29 + 1) & 0xEFFFFFFFFFFFFFFFLL, v105 = v30, (sub_1B0C0FEBC(&v96, &v101) & 1) == 0))
                {
LABEL_68:
                  v10 = 0;
                  goto LABEL_69;
                }
              }

              else if ((HIBYTE(v29) & 0x10) != 0 || v46 != v26 && (sub_1B0E46A78() & 1) == 0 || v47 != v27 && (sub_1B0E46A78() & 1) == 0)
              {
                goto LABEL_68;
              }

              v92[2] = v53;
              v92[3] = v54;
              v93 = v55;
              v92[0] = v51;
              v92[1] = v52;
              v94[2] = v33;
              v94[3] = v34;
              v95 = v35;
              v94[1] = v32;
              v94[0] = v31;
              v10 = sub_1B0C2DC74(v92, v94);
LABEL_69:
              sub_1B0BD3E48(&v26);
              sub_1B0BD3E48(&v46);
LABEL_75:
              __swift_destroy_boxed_opaque_existential_0(v67);
              __swift_destroy_boxed_opaque_existential_0(v66);
              return v10 & 1;
            }

            sub_1B0BD3E48(&v46);
          }

          if (swift_dynamicCast())
          {
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v46 = v56;
            v47 = v57;
            if (swift_dynamicCast())
            {
              v28 = v38;
              v29 = v39;
              v30 = v40;
              v31 = v41;
              v26 = v36;
              v27 = v37;
              v98 = v48;
              v99 = v49;
              v100 = v50;
              v101 = v36;
              v96 = v46;
              v97 = v47;
              v103 = v38;
              v104 = v39;
              v105 = v40;
              v102 = v37;
              if (sub_1B0C0FEBC(&v96, &v101))
              {
                v22 = v31.u64[1];
                if (*(&v51 + 1) >> 60 == 15)
                {
                  sub_1B0BD3DF4(&v46);
                  sub_1B0BD3DF4(&v26);
                  goto LABEL_59;
                }

                if (v31.i64[1] >> 60 != 15)
                {
                  v24 = sub_1B0AB8858(v51, *(&v51 + 1), v31.i64[0], v31.u64[1]);
                  sub_1B0BD3DF4(&v26);
                  sub_1B0BD3DF4(&v46);
                  if (v24)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_74;
                }
              }

              sub_1B0BD3DF4(&v26);
              sub_1B0BD3DF4(&v46);
              goto LABEL_74;
            }

            sub_1B0BD3DF4(&v46);
          }

          if (swift_dynamicCast())
          {
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v46 = v56;
            v47 = v57;
            if (swift_dynamicCast())
            {
              v28 = v38;
              v29 = v39;
              v30 = v40;
              v31 = v41;
              v26 = v36;
              v27 = v37;
              v98 = v48;
              v99 = v49;
              v100 = v50;
              v101 = v36;
              v96 = v46;
              v97 = v47;
              v103 = v38;
              v104 = v39;
              v105 = v40;
              v102 = v37;
              if (sub_1B0C0FEBC(&v96, &v101))
              {
                v22 = v31.u64[1];
                if (*(&v51 + 1) >> 60 == 15)
                {
                  sub_1B0BD3DA0(&v46);
                  sub_1B0BD3DA0(&v26);
LABEL_59:
                  if (v22 >> 60 == 15)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_74;
                }

                if (v31.i64[1] >> 60 != 15)
                {
                  v25 = sub_1B0AB8858(v51, *(&v51 + 1), v31.i64[0], v31.u64[1]);
                  sub_1B0BD3DA0(&v26);
                  sub_1B0BD3DA0(&v46);
                  if (v25)
                  {
LABEL_79:
                    v10 = 1;
                    goto LABEL_75;
                  }

LABEL_74:
                  v10 = 0;
                  goto LABEL_75;
                }
              }

              sub_1B0BD3DA0(&v26);
              sub_1B0BD3DA0(&v46);
              goto LABEL_74;
            }

            sub_1B0BD3DA0(&v46);
          }

          sub_1B0BD3D38(v66);
LABEL_63:
          v10 = 0;
          return v10 & 1;
        }

        v20 = sub_1B0E46A78();
LABEL_37:
        v21 = v20;
        sub_1B0BD2F90(&v75);
        sub_1B0BD2F90(&v68);
        if ((v21 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_38;
      }
    }

    sub_1B0BD2F90(&v75);
    sub_1B0BD2F90(&v68);
    goto LABEL_63;
  }

  if (__PAIR128__(0x2000000000000000, 1) < __PAIR128__(v3, v4))
  {
    if (v3 == 0x2000000000000000 && v4 == 2)
    {
      if ((v6 & 0x3000000000000000) != 0x2000000000000000)
      {
        goto LABEL_63;
      }

      v10 = 0;
      if (v5 != 2)
      {
        return v10 & 1;
      }
    }

    else
    {
      if ((v6 & 0x3000000000000000) != 0x2000000000000000)
      {
        goto LABEL_63;
      }

      v10 = 0;
      if (v5 != 3)
      {
        return v10 & 1;
      }
    }
  }

  else if (v4 | v3 ^ 0x2000000000000000)
  {
    if ((v6 & 0x3000000000000000) != 0x2000000000000000)
    {
      goto LABEL_63;
    }

    v10 = 0;
    if (v5 != 1)
    {
      return v10 & 1;
    }
  }

  else
  {
    if ((v6 & 0x3000000000000000) != 0x2000000000000000)
    {
      goto LABEL_63;
    }

    v10 = 0;
    if (v5)
    {
      return v10 & 1;
    }
  }

  if (v6 == 0x2000000000000000)
  {
    goto LABEL_27;
  }

  return v10 & 1;
}

uint64_t sub_1B0BD3D38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53E8, &unk_1B0ECFE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B0BD3E9C()
{
  result = qword_1EB6E53F0;
  if (!qword_1EB6E53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E53F0);
  }

  return result;
}

unint64_t sub_1B0BD3F38()
{
  v1 = *(v0 + 24);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = 1 << *(*(v0 + 24) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v21 = *(v0 + 24);
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 3;
  while (1)
  {
    v14 = v13;
    v15 = v12;
    v16 = v11;
    if (!v7)
    {
      break;
    }

    v17 = v7;
LABEL_11:
    v7 = (v17 - 1) & v17;
    if (v14 >= 4)
    {
      sub_1B04420D8(v11);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0BD1488(v11, v12, v14);
      v13 = v14;
    }

    else
    {
      v19 = (*(v21 + 48) + 24 * (__clz(__rbit64(v17)) | (v10 << 6)));
      v20 = v19[2];
      if (v20 >= 4)
      {
        v11 = *v19;
        v12 = v19[1];
        sub_1B04420D8(*v19);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BD1488(v16, v15, v14);
        sub_1B04420D8(v11);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = sub_1B0BD1488(v11, v12, v20);
        v13 = v20;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        if (v14)
        {
          if (v20)
          {
            v11 = 0;
            v12 = 0;
            v13 = 1;
            if (v14 != 1)
            {
              if (v20 == 1)
              {
                result = sub_1B0BD1488(v16, v15, v14);
                v11 = 0;
                v12 = 0;
                v13 = 1;
              }

              else
              {
                v11 = 0;
                v12 = 0;
                v13 = 2;
                if (v14 != 2)
                {
                  v11 = 0;
                  v12 = 0;
                  v13 = 3;
                  if (v20 == 2)
                  {
                    result = sub_1B0BD1488(v16, v15, v14);
                    v11 = 0;
                    v12 = 0;
                    v13 = 2;
                  }
                }
              }
            }
          }

          else
          {
            result = sub_1B0BD1488(v16, v15, v14);
            v11 = 0;
            v12 = 0;
            v13 = 0;
          }
        }
      }
    }
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v8)
    {

      return v11;
    }

    v17 = *(v3 + 8 * v18);
    ++v10;
    if (v17)
    {
      v10 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BD4184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v26 - v9;
  v11 = _s6LoggerVMa_0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BD445C(a2);
  if (v3)
  {
    sub_1B044D7D0(a2, _s6LoggerVMa_0);
    return sub_1B0BD65E4(a1);
  }

  else
  {
    v16 = a1[1];
    v17 = sub_1B0C0F6E4(*a1);
    v18 = sub_1B0C0F858(v16, v17);

    v26[0] = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BD4F78(v26);

    v28 = v26[0];
    v19 = Capability.saslIR.unsafeMutableAddressor();
    v20 = v19[1];
    v21 = v19[2];
    v22 = *(v19 + 24);
    v26[0] = *v19;
    v26[1] = v20;
    v26[2] = v21;
    v27 = v22;
    MEMORY[0x1EEE9AC00](v19);
    v26[-2] = v26;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v16) = sub_1B0C32414(sub_1B0BD6614, &v26[-4], v16);
    sub_1B0BD65E4(a1);

    sub_1B041C97C(a2, v14);
    v23 = MEMORY[0x1E69E7CD0];
    *(a3 + 16) = MEMORY[0x1E69E7CD0];
    *(a3 + 24) = v23;
    v24 = *(type metadata accessor for Authenticator() + 32);
    v25 = type metadata accessor for AuthenticationTask();
    (*(*(v25 - 8) + 56))(a3 + v24, 1, 1, v25);
    *(a3 + 8) = v16 & 1;
    *a3 = v28;
    sub_1B0BD4AAC(v14, v10);
    sub_1B044D7D0(a2, _s6LoggerVMa_0);
    sub_1B044D7D0(v14, _s6LoggerVMa_0);
    return sub_1B0BD6634(v10, a3 + v24);
  }
}

void sub_1B0BD445C(uint64_t a1)
{
  v3 = _s6LoggerVMa_0();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v54 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v54 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v54 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - v20;
  v22 = *(v1 + 16);
  v23 = *(v1 + 56);
  if (v23 != 1)
  {
    if (v22 >> 62 == 1)
    {
      v35 = *(v1 + 40);
      if (!v23)
      {
        v43 = *(v1 + 16);
        if (v35 == 1)
        {
          if (v43 == 772)
          {
            return;
          }
        }

        else if ((v43 - 771) < 2)
        {
          return;
        }

        goto LABEL_28;
      }

      v36 = *(v1 + 32);
      v37 = *(v1 + 16);
      if (v35 == 1)
      {
        if (v37 != 772)
        {
          goto LABEL_28;
        }
      }

      else if ((v37 - 773) < 0xFFFFFFFE)
      {
        goto LABEL_28;
      }

      if (v36 && (*(v1 + 48) == *(v1 + 24) && v23 == v36 || (sub_1B0E46A78() & 1) != 0))
      {
        return;
      }
    }

LABEL_28:
    sub_1B041C97C(a1, v10);
    sub_1B041C97C(a1, v7);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v45 = sub_1B0E43988();
    v46 = sub_1B0E458E8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v55 = v48;
      *v47 = 68158210;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      v49 = v7[*(v3 + 20)];
      sub_1B044D7D0(v7, _s6LoggerVMa_0);
      *(v47 + 10) = v49;
      *(v47 + 11) = 2082;
      v50 = *&v10[*(v3 + 20) + 4];
      sub_1B044D7D0(v10, _s6LoggerVMa_0);
      v51 = ConnectionID.debugDescription.getter(v50);
      v53 = sub_1B0399D64(v51, v52, &v55);

      *(v47 + 13) = v53;
      _os_log_impl(&dword_1B0389000, v45, v46, "[%.*hhx-%{public}s] Connection security does not fulfil requirements for sending credentials.", v47, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x1B272C230](v48, -1, -1);
      MEMORY[0x1B272C230](v47, -1, -1);
    }

    else
    {
      sub_1B044D7D0(v7, _s6LoggerVMa_0);

      sub_1B044D7D0(v10, _s6LoggerVMa_0);
    }

    sub_1B0BD675C();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v24 = v22 >> 62;
  if (v24)
  {
    if (v24 == 1)
    {
      return;
    }

    sub_1B041C97C(a1, &v54 - v20);
    sub_1B041C97C(a1, v19);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v25 = sub_1B0E43988();
    v26 = sub_1B0E45908();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55 = v28;
      *v27 = 68158210;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v29 = v19[*(v3 + 20)];
      sub_1B044D7D0(v19, _s6LoggerVMa_0);
      *(v27 + 10) = v29;
      *(v27 + 11) = 2082;
      v30 = *&v21[*(v3 + 20) + 4];
      sub_1B044D7D0(v21, _s6LoggerVMa_0);
      v31 = ConnectionID.debugDescription.getter(v30);
      v33 = sub_1B0399D64(v31, v32, &v55);

      *(v27 + 13) = v33;
      v34 = "[%.*hhx-%{public}s] Sending credentials over insecure connection.";
LABEL_13:
      _os_log_impl(&dword_1B0389000, v25, v26, v34, v27, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B272C230](v28, -1, -1);
      MEMORY[0x1B272C230](v27, -1, -1);

      return;
    }

    sub_1B044D7D0(v19, _s6LoggerVMa_0);

    v44 = v21;
  }

  else
  {
    sub_1B041C97C(a1, v16);
    sub_1B041C97C(a1, v13);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v25 = sub_1B0E43988();
    v26 = sub_1B0E45908();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55 = v28;
      *v27 = 68158210;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v38 = v13[*(v3 + 20)];
      sub_1B044D7D0(v13, _s6LoggerVMa_0);
      *(v27 + 10) = v38;
      *(v27 + 11) = 2082;
      v39 = *&v16[*(v3 + 20) + 4];
      sub_1B044D7D0(v16, _s6LoggerVMa_0);
      v40 = ConnectionID.debugDescription.getter(v39);
      v42 = sub_1B0399D64(v40, v41, &v55);

      *(v27 + 13) = v42;
      v34 = "[%.*hhx-%{public}s] Sending credentials over insecure connection (opportunistic TLS).";
      goto LABEL_13;
    }

    sub_1B044D7D0(v13, _s6LoggerVMa_0);

    v44 = v16;
  }

  sub_1B044D7D0(v44, _s6LoggerVMa_0);
}

uint64_t sub_1B0BD4AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AuthenticationTask();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v2;
  v16 = v2;
  sub_1B0BD4E3C(sub_1B0BD66A4, v10, v24);
  if ((~v26 & 0x3000000000000000) != 0 || (v28 & 0x1000000000000000) == 0)
  {
    v17 = v24[0];
    v18 = v24[1];
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v12 = *(v2 + 8);
    sub_1B041C97C(a1, &v9[v5[5]]);
    sub_1B0C0E7D4(v9);
    sub_1B0398EFC(v24, &qword_1EB6E53D0, &unk_1B0ECFB80);
    *(v9 + 40) = xmmword_1B0ECFF60;
    *&v9[v5[7]] = 0;
    v9[v5[8]] = 2;
    v9[v5[6]] = v12;
    sub_1B0BD6580(v9, a2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v6 + 56))(a2, v13, 1, v5);
}

uint64_t sub_1B0BD4C68(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24[-1] - v13;
  if (a4 && (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), sub_1B04420D8(a2), v15 = sub_1B0BCE634(a2), v17 != 4))
  {
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 3;
  }

  sub_1B0BD6700(a1, v25);
  sub_1B0C1DC1C(v25, a1);
  sub_1B0BD2F90(v25);
  sub_1B0BD67B0(v18, v19, v20);
  sub_1B0C1D95C(v24, v18, v19, v20);
  sub_1B0BD1488(v24[0], v24[1], v24[2]);
  sub_1B0BD4AAC(a5, v14);
  sub_1B0BD1488(v18, v19, v20);
  v21 = type metadata accessor for Authenticator();
  return sub_1B0BD6634(v14, v6 + *(v21 + 32));
}

BOOL sub_1B0BD4DE4(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v6[4] = a1[4];
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  sub_1B0BE2F58(v6, *(a2 + 16));
  return (v4 & 1) == 0;
}

uint64_t sub_1B0BD4E3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[3];
      v23 = v7[2];
      v24 = v8;
      v25 = v7[4];
      v9 = v7[1];
      v22[0] = *v7;
      v22[1] = v9;
      v19 = v23;
      v20 = v8;
      v21 = v25;
      v17 = v22[0];
      v18 = v9;
      sub_1B0BD6700(v22, &v12);
      result = v6(&v17);
      if (v3)
      {
        v14 = v19;
        v15 = v20;
        v16 = v21;
        v12 = v17;
        v13 = v18;
        return sub_1B0BD2F90(&v12);
      }

      if (result)
      {
        break;
      }

      v14 = v19;
      v15 = v20;
      v16 = v21;
      v12 = v17;
      v13 = v18;
      result = sub_1B0BD2F90(&v12);
      v7 += 5;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v10 = v20;
    *(a3 + 32) = v19;
    *(a3 + 48) = v10;
    *(a3 + 64) = v21;
    v11 = v18;
    *a3 = v17;
    *(a3 + 16) = v11;
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = xmmword_1B0ECFF70;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0x1000000000000000;
  }

  return result;
}

int64_t sub_1B0BD4F78(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0C0E050(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B0BD4FE4(v5);
  *a1 = v2;
  return result;
}

int64_t sub_1B0BD4FE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B0E469A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B0E45278();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B0BD5334(v7, v8, a1, v4);
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
    return sub_1B0BD50DC(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1B0BD50DC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 80 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 56);
      if ((v9 & 0x1000000000000000) != 0)
      {
        v21 = (*(v8 + 72) >> 59) & 6 | ((v9 & 0x2000000000000000) != 0);
        if (v21 <= 2)
        {
          if (v21)
          {
            if (v21 == 1)
            {
              v10 = 1;
              v11 = 1;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              result = 2;
            }

            else
            {
              v10 = 1;
              v11 = 1;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              result = 1;
            }
          }

          else
          {
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v10 = 1;
            v11 = 1;
            result = 5;
          }
        }

        else if (v21 > 4)
        {
          if (v21 == 5)
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v10 = 1;
            result = 6;
          }

          else
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            result = 7;
          }
        }

        else if (v21 == 3)
        {
          v13 = 0;
          v10 = 1;
          v11 = 1;
          v12 = 1;
          v14 = 1;
          result = 3;
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v10 = 1;
          v11 = 1;
          v14 = 1;
          result = 4;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        result = 8;
      }

      v15 = *(v8 - 24);
      if ((v15 & 0x1000000000000000) == 0)
      {
        break;
      }

      v22 = (*(v8 - 8) >> 59) & 6 | ((v15 & 0x2000000000000000) != 0);
      if (v22 <= 2)
      {
        if (v22)
        {
          if (v22 == 1)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

LABEL_10:
          if (result >= v16)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v22 > 4)
      {
        if (v22 == 5)
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if ((v10 & 1) == 0)
        {
LABEL_4:
          ++a3;
          v5 += 80;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v22 == 3)
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((v12 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v17 = (v8 - 80);
      v25 = *(v8 + 32);
      v26 = *(v8 + 48);
      v27 = *(v8 + 64);
      v23 = *v8;
      v24 = *(v8 + 16);
      v18 = *(v8 - 32);
      *(v8 + 32) = *(v8 - 48);
      *(v8 + 48) = v18;
      *(v8 + 64) = *(v8 - 16);
      v19 = *(v8 - 64);
      *v8 = *(v8 - 80);
      *(v8 + 16) = v19;
      v17[3] = v26;
      v17[4] = v27;
      v17[1] = v24;
      v17[2] = v25;
      v8 -= 80;
      *v17 = v23;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    v16 = 8;
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_1B0BD5334(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v102 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_170:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_208;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_172:
      v96 = *(v9 + 2);
      if (v96 >= 2)
      {
        while (*a3)
        {
          v97 = *&v9[16 * v96];
          v98 = *&v9[16 * v96 + 24];
          sub_1B0BD5CCC((*a3 + 80 * v97), (*a3 + 80 * *&v9[16 * v96 + 16]), (*a3 + 80 * v98), v5);
          if (v6)
          {
          }

          if (v98 < v97)
          {
            goto LABEL_195;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B0B9443C(v9);
          }

          if (v96 - 2 >= *(v9 + 2))
          {
            goto LABEL_196;
          }

          v99 = &v9[16 * v96];
          *v99 = v97;
          *(v99 + 1) = v98;
          result = sub_1B0B943B0(v96 - 1);
          v96 = *(v9 + 2);
          if (v96 <= 1)
          {
          }
        }

        goto LABEL_206;
      }
    }

LABEL_202:
    result = sub_1B0B9443C(v9);
    v9 = result;
    goto LABEL_172;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *a3;
      v12 = *a3 + 80 * v8;
      v13 = *(v12 + 56);
      if ((v13 & 0x1000000000000000) != 0)
      {
        v14 = qword_1B0ED00E8[(*(v12 + 72) >> 59) & 6 | (v13 >> 61) & 1];
      }

      else
      {
        v14 = 8;
      }

      v15 = v11 + 80 * v10;
      v16 = *(v15 + 56);
      if ((v16 & 0x1000000000000000) != 0)
      {
        v17 = qword_1B0ED00E8[(*(v15 + 72) >> 59) & 6 | (v16 >> 61) & 1];
      }

      else
      {
        v17 = 8;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v18 = (v11 + 80 * v10 + 232);
        while (1)
        {
          v20 = *(v18 - 2);
          if ((v20 & 0x1000000000000000) != 0)
          {
            v21 = (*v18 >> 59) & 6 | ((v20 & 0x2000000000000000) != 0);
            if (v21 <= 2)
            {
              if (v21)
              {
                v26 = v21 == 1;
                v21 = 0;
                v22 = 0;
                v23 = 0;
                v24 = 0;
                v25 = 2;
                if (!v26)
                {
                  v25 = 1;
                }

                result = 0;
                if ((v13 & 0x1000000000000000) == 0)
                {
LABEL_13:
                  v19 = 8;
                  goto LABEL_14;
                }
              }

              else
              {
                v22 = 0;
                v23 = 1;
                v24 = 1;
                result = 1;
                v25 = 5;
                if ((v13 & 0x1000000000000000) == 0)
                {
                  goto LABEL_13;
                }
              }
            }

            else if (v21 > 4)
            {
              v26 = v21 == 5;
              v22 = 1;
              v21 = v21 != 5;
              v23 = 1;
              v24 = 1;
              v25 = 6;
              if (!v26)
              {
                v25 = 7;
              }

              result = 1;
              if ((v13 & 0x1000000000000000) == 0)
              {
                goto LABEL_13;
              }
            }

            else
            {
              v26 = v21 == 3;
              v21 = 0;
              v22 = 0;
              v23 = !v26;
              v24 = 1;
              v25 = 3;
              if (!v26)
              {
                v25 = 4;
              }

              result = 0;
              if ((v13 & 0x1000000000000000) == 0)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
            v21 = 1;
            v22 = 1;
            v23 = 1;
            v24 = 1;
            result = 1;
            v25 = 8;
            if ((v13 & 0x1000000000000000) == 0)
            {
              goto LABEL_13;
            }
          }

          v27 = (*(v18 - 10) >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
          if (v27 > 2)
          {
            if (v27 > 4)
            {
              if (v27 == 5)
              {
                if ((((v14 < v17) ^ v22) & 1) == 0)
                {
                  break;
                }
              }

              else if ((((v14 < v17) ^ v21) & 1) == 0)
              {
                break;
              }
            }

            else if (v27 == 3)
            {
              if ((((v14 < v17) ^ v24) & 1) == 0)
              {
                break;
              }
            }

            else if ((((v14 < v17) ^ v23) & 1) == 0)
            {
              break;
            }

            goto LABEL_15;
          }

          if (!v27)
          {
            if ((((v14 < v17) ^ result) & 1) == 0)
            {
              break;
            }

            goto LABEL_15;
          }

          v26 = v27 == 1;
          v19 = 2;
          if (!v26)
          {
            v19 = 1;
          }

LABEL_14:
          if (v14 < v17 == v25 >= v19)
          {
            break;
          }

LABEL_15:
          ++v8;
          v18 += 10;
          v13 = v20;
          if (v7 == v8)
          {
            v8 = v7;
            break;
          }
        }
      }

      if (v14 < v17)
      {
        if (v8 < v10)
        {
          goto LABEL_199;
        }

        if (v10 < v8)
        {
          v28 = 80 * v8 - 80;
          v29 = 80 * v10;
          v5 = v8;
          v100 = v10;
          do
          {
            if (v10 != --v5)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_205;
              }

              v30 = (v31 + v28);
              v108 = *(v31 + v29 + 32);
              v110 = *(v31 + v29 + 48);
              v112 = *(v31 + v29 + 64);
              v104 = *(v31 + v29);
              v106 = *(v31 + v29 + 16);
              result = memmove((v31 + v29), (v31 + v28), 0x50uLL);
              v30[2] = v108;
              v30[3] = v110;
              v30[4] = v112;
              *v30 = v104;
              v30[1] = v106;
            }

            ++v10;
            v28 -= 80;
            v29 += 80;
          }

          while (v10 < v5);
          v7 = a3[1];
          v10 = v100;
        }
      }
    }

    if (v8 >= v7)
    {
      goto LABEL_119;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_198;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_119;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_200;
    }

    if (v10 + a4 < v7)
    {
      v7 = v10 + a4;
    }

    if (v7 < v10)
    {
LABEL_201:
      __break(1u);
      goto LABEL_202;
    }

    if (v8 == v7)
    {
      goto LABEL_119;
    }

    v32 = *a3;
    v33 = *a3 + 80 * v8;
    v34 = v10 - v8;
LABEL_77:
    v35 = v34;
    v36 = v33;
LABEL_78:
    v37 = *(v36 + 56);
    if ((v37 & 0x1000000000000000) != 0)
    {
      v49 = (*(v36 + 72) >> 59) & 6 | ((v37 & 0x2000000000000000) != 0);
      if (v49 <= 2)
      {
        if (v49)
        {
          if (v49 == 1)
          {
            v38 = 1;
            v39 = 1;
            v40 = 1;
            v41 = 1;
            v42 = 1;
            result = 2;
          }

          else
          {
            v38 = 1;
            v39 = 1;
            v40 = 1;
            v41 = 1;
            v42 = 1;
            result = 1;
          }
        }

        else
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v38 = 1;
          v39 = 1;
          result = 5;
        }
      }

      else if (v49 > 4)
      {
        if (v49 == 5)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v38 = 1;
          result = 6;
        }

        else
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          result = 7;
        }
      }

      else if (v49 == 3)
      {
        v41 = 0;
        v38 = 1;
        v39 = 1;
        v40 = 1;
        v42 = 1;
        result = 3;
      }

      else
      {
        v40 = 0;
        v41 = 0;
        v38 = 1;
        v39 = 1;
        v42 = 1;
        result = 4;
      }
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      result = 8;
    }

    v43 = *(v36 - 24);
    if ((v43 & 0x1000000000000000) == 0)
    {
      v44 = 8;
      goto LABEL_82;
    }

    v50 = (*(v36 - 8) >> 59) & 6 | ((v43 & 0x2000000000000000) != 0);
    if (v50 <= 2)
    {
      break;
    }

    if (v50 <= 4)
    {
      if (v50 == 3)
      {
        if ((v41 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      else if ((v40 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_83;
    }

    if (v50 == 5)
    {
      if ((v39 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_83;
    }

    if (v38)
    {
      goto LABEL_83;
    }

LABEL_76:
    ++v8;
    v33 += 80;
    --v34;
    if (v8 != v7)
    {
      goto LABEL_77;
    }

    v8 = v7;
LABEL_119:
    if (v8 < v10)
    {
      goto LABEL_197;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 2);
    v51 = *(v9 + 3);
    v52 = v5 + 1;
    if (v5 >= v51 >> 1)
    {
      result = sub_1B0AFF300((v51 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v52;
    v53 = &v9[16 * v5];
    *(v53 + 4) = v10;
    *(v53 + 5) = v8;
    v54 = *v102;
    if (!*v102)
    {
      goto LABEL_207;
    }

    if (v5)
    {
      while (2)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          v60 = &v9[16 * v52 + 32];
          v61 = *(v60 - 64);
          v62 = *(v60 - 56);
          v66 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          if (v66)
          {
            goto LABEL_184;
          }

          v65 = *(v60 - 48);
          v64 = *(v60 - 40);
          v66 = __OFSUB__(v64, v65);
          v58 = v64 - v65;
          v59 = v66;
          if (v66)
          {
            goto LABEL_185;
          }

          v67 = &v9[16 * v52];
          v69 = *v67;
          v68 = *(v67 + 1);
          v66 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v66)
          {
            goto LABEL_187;
          }

          v66 = __OFADD__(v58, v70);
          v71 = v58 + v70;
          if (v66)
          {
            goto LABEL_190;
          }

          if (v71 >= v63)
          {
            v89 = &v9[16 * v55 + 32];
            v91 = *v89;
            v90 = *(v89 + 1);
            v66 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v66)
            {
              goto LABEL_194;
            }

            if (v58 < v92)
            {
              v55 = v52 - 2;
            }
          }

          else
          {
LABEL_139:
            if (v59)
            {
              goto LABEL_186;
            }

            v72 = &v9[16 * v52];
            v74 = *v72;
            v73 = *(v72 + 1);
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_189;
            }

            v78 = &v9[16 * v55 + 32];
            v80 = *v78;
            v79 = *(v78 + 1);
            v66 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v66)
            {
              goto LABEL_192;
            }

            if (__OFADD__(v76, v81))
            {
              goto LABEL_193;
            }

            if (v76 + v81 < v58)
            {
              goto LABEL_153;
            }

            if (v58 < v81)
            {
              v55 = v52 - 2;
            }
          }
        }

        else
        {
          if (v52 == 3)
          {
            v56 = *(v9 + 4);
            v57 = *(v9 + 5);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
            goto LABEL_139;
          }

          v82 = &v9[16 * v52];
          v84 = *v82;
          v83 = *(v82 + 1);
          v66 = __OFSUB__(v83, v84);
          v76 = v83 - v84;
          v77 = v66;
LABEL_153:
          if (v77)
          {
            goto LABEL_188;
          }

          v85 = &v9[16 * v55];
          v87 = *(v85 + 4);
          v86 = *(v85 + 5);
          v66 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v66)
          {
            goto LABEL_191;
          }

          if (v88 < v76)
          {
            break;
          }
        }

        v5 = v55 - 1;
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
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
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
          goto LABEL_201;
        }

        if (!*a3)
        {
          goto LABEL_204;
        }

        v93 = *&v9[16 * v5 + 32];
        v94 = *&v9[16 * v55 + 40];
        sub_1B0BD5CCC((*a3 + 80 * v93), (*a3 + 80 * *&v9[16 * v55 + 32]), (*a3 + 80 * v94), v54);
        if (v6)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_182;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B0B9443C(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_183;
        }

        v95 = &v9[16 * v5];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        result = sub_1B0B943B0(v55);
        v52 = *(v9 + 2);
        if (v52 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_170;
    }
  }

  if (v50)
  {
    if (v50 == 1)
    {
      v44 = 2;
    }

    else
    {
      v44 = 1;
    }

LABEL_82:
    if (result >= v44)
    {
      goto LABEL_76;
    }

    goto LABEL_83;
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_83:
  if (v32)
  {
    v45 = (v36 - 80);
    v109 = *(v36 + 32);
    v111 = *(v36 + 48);
    v113 = *(v36 + 64);
    v105 = *v36;
    v107 = *(v36 + 16);
    v46 = *(v36 - 32);
    *(v36 + 32) = *(v36 - 48);
    *(v36 + 48) = v46;
    *(v36 + 64) = *(v36 - 16);
    v47 = *(v36 - 64);
    *v36 = *(v36 - 80);
    *(v36 + 16) = v47;
    v45[3] = v111;
    v45[4] = v113;
    v45[1] = v107;
    v45[2] = v109;
    v36 -= 80;
    *v45 = v105;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_76;
    }

    goto LABEL_78;
  }

  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
  return result;
}

uint64_t sub_1B0BD5CCC(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 80;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 80;
  if (v9 < v11)
  {
    if (__src != __dst || &__dst[80 * v9] <= __src)
    {
      memmove(__src, __dst, 80 * v9);
    }

    v12 = &v4[80 * v9];
    if (v8 < 80 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_127;
    }

    while (1)
    {
      v13 = *(v6 + 7);
      if ((v13 & 0x1000000000000000) != 0)
      {
        v23 = (*(v6 + 9) >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
        if (v23 <= 2)
        {
          v18 = 1;
          if (v23 == 1)
          {
            v27 = 2;
          }

          else
          {
            v27 = 1;
          }

          v14 = 1;
          v15 = 1;
          v16 = v23 != 0;
          v17 = v23 != 0;
          if (!v23)
          {
            v18 = 0;
          }

          v22 = v23 == 0;
          v19 = 5;
          if (!v22)
          {
            v19 = v27;
          }

          v20 = *(v4 + 7);
          if ((v20 & 0x1000000000000000) == 0)
          {
LABEL_9:
            if (v19 >= 8)
            {
              goto LABEL_48;
            }

            goto LABEL_10;
          }
        }

        else
        {
          v14 = v23 == 5;
          if (v23 == 5)
          {
            v24 = 6;
          }

          else
          {
            v24 = 7;
          }

          v16 = v23 == 3;
          if (v23 == 3)
          {
            v25 = 3;
          }

          else
          {
            v25 = 4;
          }

          if (v23 > 4)
          {
            v15 = 0;
          }

          else
          {
            v14 = 1;
            v15 = 1;
          }

          if (v23 > 4)
          {
            v16 = 0;
          }

          v17 = 0;
          v18 = v23 <= 4;
          if (v23 <= 4)
          {
            v19 = v25;
          }

          else
          {
            v19 = v24;
          }

          v20 = *(v4 + 7);
          if ((v20 & 0x1000000000000000) == 0)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 8;
        v20 = *(v4 + 7);
        if ((v20 & 0x1000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v26 = (*(v4 + 9) >> 59) & 6 | ((v20 & 0x2000000000000000) != 0);
      if (v26 <= 2)
      {
        if (v26)
        {
          if (v26 == 1)
          {
            v28 = 2;
          }

          else
          {
            v28 = 1;
          }

          if (v19 >= v28)
          {
LABEL_48:
            v21 = v4;
            v22 = v7 == v4;
            v4 += 80;
            if (v22)
            {
              goto LABEL_50;
            }

LABEL_49:
            memmove(v7, v21, 0x50uLL);
            goto LABEL_50;
          }
        }

        else if (!v18)
        {
          goto LABEL_48;
        }
      }

      else if (v26 > 4)
      {
        if (v26 == 5)
        {
          if ((v15 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else if (!v14)
        {
          goto LABEL_48;
        }
      }

      else if (v26 == 3)
      {
        if (!v17)
        {
          goto LABEL_48;
        }
      }

      else if (!v16)
      {
        goto LABEL_48;
      }

LABEL_10:
      v21 = v6;
      v22 = v7 == v6;
      v6 += 80;
      if (!v22)
      {
        goto LABEL_49;
      }

LABEL_50:
      v7 += 80;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_127;
      }
    }
  }

  if (__src != a2 || &a2[80 * v11] <= __src)
  {
    memmove(__src, a2, 80 * v11);
  }

  v12 = &v4[80 * v11];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_67:
    v5 -= 80;
    while (1)
    {
      v29 = *(v12 - 3);
      if ((v29 & 0x1000000000000000) != 0)
      {
        v37 = (*(v12 - 1) >> 59) & 6 | ((v29 & 0x2000000000000000) != 0);
        if (v37 <= 2)
        {
          v34 = 1;
          if (v37 == 1)
          {
            v41 = 2;
          }

          else
          {
            v41 = 1;
          }

          v30 = 1;
          v31 = 1;
          v32 = v37 != 0;
          v33 = v37 != 0;
          if (!v37)
          {
            v34 = 0;
          }

          v22 = v37 == 0;
          v35 = 5;
          if (!v22)
          {
            v35 = v41;
          }

          v36 = *(v6 - 3);
          if ((v36 & 0x1000000000000000) == 0)
          {
LABEL_71:
            if (v35 < 8)
            {
              goto LABEL_119;
            }

            goto LABEL_117;
          }
        }

        else
        {
          v30 = v37 == 5;
          if (v37 == 5)
          {
            v38 = 6;
          }

          else
          {
            v38 = 7;
          }

          v32 = v37 == 3;
          if (v37 == 3)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }

          if (v37 > 4)
          {
            v31 = 0;
          }

          else
          {
            v30 = 1;
            v31 = 1;
          }

          if (v37 > 4)
          {
            v32 = 0;
          }

          v33 = 0;
          v34 = v37 <= 4;
          if (v37 <= 4)
          {
            v35 = v39;
          }

          else
          {
            v35 = v38;
          }

          v36 = *(v6 - 3);
          if ((v36 & 0x1000000000000000) == 0)
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 8;
        v36 = *(v6 - 3);
        if ((v36 & 0x1000000000000000) == 0)
        {
          goto LABEL_71;
        }
      }

      v40 = (*(v6 - 1) >> 59) & 6 | ((v36 & 0x2000000000000000) != 0);
      if (v40 <= 2)
      {
        if (v40)
        {
          if (v40 == 1)
          {
            v42 = 2;
          }

          else
          {
            v42 = 1;
          }

          if (v35 < v42)
          {
LABEL_119:
            v44 = v6 - 80;
            if (v5 + 80 != v6)
            {
              memmove(v5, v6 - 80, 0x50uLL);
            }

            if (v12 <= v4 || (v6 -= 80, v44 <= v7))
            {
              v6 = v44;
              break;
            }

            goto LABEL_67;
          }
        }

        else if (v34)
        {
          goto LABEL_119;
        }
      }

      else if (v40 > 4)
      {
        if (v40 == 5)
        {
          if (v31)
          {
            goto LABEL_119;
          }
        }

        else if (v30)
        {
          goto LABEL_119;
        }
      }

      else if (v40 == 3)
      {
        if (v33)
        {
          goto LABEL_119;
        }
      }

      else if (v32)
      {
        goto LABEL_119;
      }

LABEL_117:
      v43 = (v12 - 80);
      if (v5 + 80 != v12)
      {
        memmove(v5, v12 - 80, 0x50uLL);
      }

      v5 -= 80;
      v12 -= 80;
      if (v43 <= v4)
      {
        v12 = v43;
        break;
      }
    }
  }

LABEL_127:
  v45 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v45])
  {
    memmove(v6, v4, 80 * v45);
  }

  return 1;
}