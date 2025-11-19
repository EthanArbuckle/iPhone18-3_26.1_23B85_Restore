uint64_t sub_1CF6F2E1C(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[24 * v11] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
    }

    v12 = &v4[24 * v11];
    if (v10 < 24 || v6 <= v7)
    {
      goto LABEL_96;
    }

    while (2)
    {
      v48 = v5;
      while (1)
      {
        v49 = *(v12 - 1);
        v50 = *(v6 - 1);
        v51 = *(v49 + 16);
        if (v51)
        {
          break;
        }

        v5 = (v48 - 24);
        v54 = *(v50 + 16);
        if (v54)
        {
          v52 = 0;
          goto LABEL_69;
        }

LABEL_87:
        v81 = v12 - 24;
        if (v48 != v12)
        {
          v82 = *v81;
          *(v5 + 16) = *(v12 - 1);
          *v5 = v82;
        }

        v12 -= 24;
        v48 = v5;
        if (v81 <= v4)
        {
          v12 = v81;
          goto LABEL_96;
        }
      }

      if (v51 > 4)
      {
        v55 = *(v49 + 16) & 3;
        if ((v51 & 3) == 0)
        {
          v55 = 4;
        }

        v53 = v51 - v55;
        v56 = (v49 + 80);
        v57 = 0uLL;
        v58 = v53;
        v59 = 0uLL;
        do
        {
          v60 = v56 - 6;
          v61 = vld3q_f64(v60);
          v62 = vld3q_f64(v56);
          v57 = vbslq_s8(vcgtq_s64(v61, v57), v61, v57);
          v59 = vbslq_s8(vcgtq_s64(v62, v59), v62, v59);
          v56 += 12;
          v58 -= 4;
        }

        while (v58);
        v63 = vbslq_s8(vcgtq_s64(v57, v59), v57, v59);
        v64 = vextq_s8(v63, v63, 8uLL).u64[0];
        v52 = vbsl_s8(vcgtd_s64(v63.i64[0], v64), *v63.i8, v64);
      }

      else
      {
        v52 = 0;
        v53 = 0;
      }

      v65 = v51 - v53;
      v66 = (v49 + 24 * v53 + 32);
      do
      {
        v68 = *v66;
        v66 += 3;
        v67 = v68;
        if (v68 > v52)
        {
          v52 = v67;
        }

        --v65;
      }

      while (v65);
      v5 = (v48 - 24);
      v54 = *(v50 + 16);
      if (!v54)
      {
        if (v52 > 0)
        {
LABEL_89:
          v83 = v6 - 24;
          if (v48 != v6)
          {
            v84 = *v83;
            *(v5 + 16) = *(v6 - 1);
            *v5 = v84;
          }

          if (v12 <= v4 || (v6 -= 24, v83 <= v7))
          {
            v6 = v83;
            goto LABEL_96;
          }

          continue;
        }

        goto LABEL_87;
      }

      break;
    }

LABEL_69:
    if (v54 > 1)
    {
      v69 = 0;
      v71 = 0;
      v70 = v54 & 0x7FFFFFFFFFFFFFFELL;
      v72 = (v50 + 56);
      v73 = v54 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v74 = *(v72 - 3);
        v76 = *v72;
        v72 += 6;
        v75 = v76;
        if (v74 > v69)
        {
          v69 = v74;
        }

        if (v75 > v71)
        {
          v71 = v75;
        }

        v73 -= 2;
      }

      while (v73);
      if (v69 <= v71)
      {
        v69 = v71;
      }

      if (v54 == v70)
      {
LABEL_84:
        if (v69 < v52)
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }
    }

    else
    {
      v69 = 0;
      v70 = 0;
    }

    v77 = v54 - v70;
    v78 = (v50 + 24 * v70 + 32);
    do
    {
      v80 = *v78;
      v78 += 3;
      v79 = v80;
      if (v80 > v69)
      {
        v69 = v79;
      }

      --v77;
    }

    while (v77);
    goto LABEL_84;
  }

  if (a4 != __src || &__src[24 * v9] <= a4)
  {
    memmove(a4, __src, 24 * v9);
  }

  v12 = &v4[24 * v9];
  if (v8 >= 24 && v6 < v5)
  {
    while (1)
    {
      v13 = *(v6 + 2);
      v14 = *(v4 + 2);
      v15 = *(v13 + 16);
      if (!v15)
      {
        break;
      }

      if (v15 > 4)
      {
        v19 = *(v13 + 16) & 3;
        if ((v15 & 3) == 0)
        {
          v19 = 4;
        }

        v17 = v15 - v19;
        v20 = (v13 + 80);
        v21 = 0uLL;
        v22 = v17;
        v23 = 0uLL;
        do
        {
          v24 = v20 - 6;
          v25 = vld3q_f64(v24);
          v26 = vld3q_f64(v20);
          v21 = vbslq_s8(vcgtq_s64(v25, v21), v25, v21);
          v23 = vbslq_s8(vcgtq_s64(v26, v23), v26, v23);
          v20 += 12;
          v22 -= 4;
        }

        while (v22);
        v27 = vbslq_s8(vcgtq_s64(v21, v23), v21, v23);
        v28 = vextq_s8(v27, v27, 8uLL).u64[0];
        v16 = vbsl_s8(vcgtd_s64(v27.i64[0], v28), *v27.i8, v28);
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      v29 = v15 - v17;
      v30 = (v13 + 24 * v17 + 32);
      do
      {
        v32 = *v30;
        v30 += 3;
        v31 = v32;
        if (v32 > v16)
        {
          v16 = v31;
        }

        --v29;
      }

      while (v29);
      v18 = *(v14 + 16);
      if (v18)
      {
        goto LABEL_22;
      }

      if (v16 <= 0)
      {
LABEL_38:
        v45 = v4;
        v46 = v7 == v4;
        v4 += 24;
        if (v46)
        {
          goto LABEL_40;
        }

LABEL_39:
        v47 = *v45;
        *(v7 + 2) = *(v45 + 2);
        *v7 = v47;
        goto LABEL_40;
      }

LABEL_44:
      v45 = v6;
      v46 = v7 == v6;
      v6 += 24;
      if (!v46)
      {
        goto LABEL_39;
      }

LABEL_40:
      v7 += 24;
      if (v4 >= v12 || v6 >= v5)
      {
        goto LABEL_94;
      }
    }

    v18 = *(v14 + 16);
    if (!v18)
    {
      goto LABEL_38;
    }

    v16 = 0;
LABEL_22:
    if (v18 > 1)
    {
      v33 = 0;
      v35 = 0;
      v34 = v18 & 0x7FFFFFFFFFFFFFFELL;
      v36 = (v14 + 56);
      v37 = v18 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v38 = *(v36 - 3);
        v40 = *v36;
        v36 += 6;
        v39 = v40;
        if (v38 > v33)
        {
          v33 = v38;
        }

        if (v39 > v35)
        {
          v35 = v39;
        }

        v37 -= 2;
      }

      while (v37);
      if (v33 <= v35)
      {
        v33 = v35;
      }

      if (v18 == v34)
      {
LABEL_37:
        if (v33 >= v16)
        {
          goto LABEL_38;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v41 = v18 - v34;
    v42 = (v14 + 24 * v34 + 32);
    do
    {
      v44 = *v42;
      v42 += 3;
      v43 = v44;
      if (v44 > v33)
      {
        v33 = v43;
      }

      --v41;
    }

    while (v41);
    goto LABEL_37;
  }

LABEL_94:
  v6 = v7;
LABEL_96:
  v85 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v86 = (v85 >> 2) + (v85 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v86])
  {
    memmove(v6, v4, 24 * v86);
  }

  return 1;
}

uint64_t sub_1CF6F32DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CF6F3368(v3);
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

char *sub_1CF6F337C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7C8, &qword_1CF9FE688);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1CF6F3480(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    v10 = *(a2 + 40);
    sub_1CF9E81D8();

    sub_1CF9E69C8();
    v11 = sub_1CF9E8228();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(a2 + 48) + 16 * v13);
    v16 = *v15 == v9 && v15[1] == v8;
    if (v16 || (sub_1CF9E8048() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1CF6F35CC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = *(a2 + 40);
  v7 = a2 + 56;
  v8 = ~(-1 << *(a2 + 32));
  while (1)
  {
    v9 = *(v5 + 8 * v4);
    v10 = sub_1CF9E81C8();
    v11 = v10 & v8;
    if ((*(v7 + (((v10 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v8)))
    {
      break;
    }

LABEL_4:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  while (*(*(a2 + 48) + 8 * v11) != v9)
  {
    v11 = (v11 + 1) & v8;
    if (((*(v7 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1CF6F36B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1CF1F8E9C(*(v1 + 16), 0);
  v4 = sub_1CF1FAC30(&v6, v3 + 4, v2, v1);
  swift_bridgeObjectRetain_n();
  result = sub_1CEFCB59C();
  if (v4 == v2)
  {

    return v3;
  }

  __break(1u);
  return result;
}

id sub_1CF6F37BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_1CF6F3808(void *a1, char a2, char a3, uint64_t a4)
{
  v8 = sub_1CEFD57E0(0, &qword_1EC4C2890, 0x1E69672D0);
  v23[3] = v8;
  v23[4] = &off_1F4C02F98;
  v23[0] = a1;
  v9 = *(a4 + qword_1EC4EBCD0);
  if (v9)
  {
    v10 = *(a4 + qword_1EC4EBCD0 + 8);
    v11 = a1;
    sub_1CF1FD6B8(v9, v10);
    v12 = v9;
    sub_1CF1FD6F8(v9, v10);
    if ((*(a4 + 82) & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v13);
      v19 = a4;
      v20 = v23;
      v21 = a2 & 1;
      v22 = a3 & 1;
      v16 = objc_autoreleasePoolPush();
      sub_1CF804374(a4, 1, "dump(to:limitNumberOfItems:includingFileTrees:)", 47, 2, 0, sub_1CF6FC958, v18);
      objc_autoreleasePoolPop(v16);
    }

    else
    {

      sub_1CF482E50(v12, 2, v23, a2 & 1, a3 & 1, a4, a4);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    v19 = a4;
    v20 = v23;
    v21 = a2 & 1;
    v22 = a3 & 1;
    v14 = a1;
    v15 = objc_autoreleasePoolPush();
    sub_1CF804374(a4, 2, "dump(to:limitNumberOfItems:includingFileTrees:)", 47, 2, 0, sub_1CF6FC97C, v18);
    objc_autoreleasePoolPop(v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1CF6F3A1C(char a1, char a2, unsigned __int8 a3, uint64_t a4, char a5, char a6, unsigned __int8 a7, uint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a2 != 89)
  {
    if (a6 == 89 || qword_1CFA12E48[a2] != qword_1CFA12E48[a6])
    {
      return 0;
    }

LABEL_7:
    if (a3 == 2)
    {
      if (a7 != 2)
      {
        return 0;
      }
    }

    else if (a7 == 2 || ((a7 ^ a3) & 1) != 0)
    {
      return 0;
    }

    return sub_1CF6BEA0C(a4, a8);
  }

  if (a6 == 89)
  {
    goto LABEL_7;
  }

  return 0;
}

unint64_t sub_1CF6F3AF4(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_1CF6F3B04(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a1 + 56) + 8 * v13);

    a2(v15, v16, v17);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF6F3C14(void *a1, uint64_t a2)
{
  v7[2] = 1129530692;
  v7[3] = 0xE400000000000000;
  v3 = sub_1CF7D5474(sub_1CF250D78, v7, a1, a2);
  if (v2)
  {

    return 0;
  }

  else
  {
    v5 = v3;
    if ([v3 next])
    {
      sub_1CF25069C(v5, v8);
      v6 = v9;

      sub_1CF250D40(v8);
      return v6;
    }

    else
    {

      return 0;
    }
  }
}

void sub_1CF6F3CF4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1CF9E7818())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C0728, &qword_1CFA05B38);
      v3 = sub_1CF9E7908();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1CF9E7818();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x1D3869C30](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1CF9E7558();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1CF9E7568();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_1CF9E7558();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1CF9E7568();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1CF6F3FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v60 = a5;
  v58 = a3;
  v56 = a6;
  v9 = sub_1CF9E5248();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1CF9E5268();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a2;
  v59 = a4;
  v16 = type metadata accessor for ItemReconciliationHalf();
  v17 = v16;
  v18 = *(a1 + *(v16 + 76));
  if ((v18 & 2) != 0)
  {
    goto LABEL_10;
  }

  if (v18)
  {
    v55 = v12;
    v19 = v18;
    v18 = v16;
    v63 = v57;
    v64 = v58;
    v65 = v59;
    v66 = v60;
    v20 = a1 + *(type metadata accessor for ItemReconciliation() + 52);
    v17 = v18;
    LOBYTE(v18) = v19;
    v12 = v55;
    if ((*(v20 + *(type metadata accessor for ItemReconciliationHalf() + 40)) & 0x18) != 0)
    {
      goto LABEL_10;
    }
  }

  if ((v18 & 4) != 0)
  {
    if ((*(a1 + *(v17 + 40)) & 0x18) != 0)
    {
      goto LABEL_10;
    }

    v55 = v12;
    v63 = v57;
    v64 = v58;
    v65 = v59;
    v66 = v60;
    v25 = a1 + *(type metadata accessor for ItemReconciliation() + 52);
    v12 = v55;
    if ((*(v25 + *(type metadata accessor for ItemReconciliationHalf() + 40)) & 0x18) != 0)
    {
      goto LABEL_10;
    }
  }

  if ((v18 & 8) != 0 && (v55 = v12, v63 = v57, v64 = v58, v65 = v59, v66 = v60, v21 = a1 + *(type metadata accessor for ItemReconciliation() + 52), v12 = v55, (*(v21 + *(type metadata accessor for ItemReconciliationHalf() + 40)) & 0x18) != 0))
  {
LABEL_10:
    sub_1CF9E5168();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BCE0(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v26 = sub_1CF9E50D8();
    (*(v12 + 8))(v15, v11);
    v27 = sub_1CF9E57E8();

    v24 = v27;
  }

  else
  {
    sub_1CF6FC3E4();
    v22 = swift_allocError();
    *v23 = 17;
    *(v23 + 8) = 18;
    v24 = sub_1CF9E57E8();
  }

  v28 = *(a1 + *(v17 + 40));
  if ((v28 & 8) != 0)
  {
    v55 = 1;
    v31 = 1;
  }

  else
  {
    v63 = v57;
    v64 = v58;
    v65 = v59;
    v66 = v60;
    v29 = a1 + *(type metadata accessor for ItemReconciliation() + 52);
    v30 = *(v29 + *(type metadata accessor for ItemReconciliationHalf() + 40));
    if ((v30 & 8) != 0)
    {
      v55 = 2;
      v31 = 3;
    }

    else
    {
      v31 = 2;
      if (v28)
      {
        v55 = 1;
      }

      else
      {
        v32 = v30 == 0;
        if (v30)
        {
          v33 = 2;
        }

        else
        {
          v33 = 5;
        }

        v55 = v33;
        if (v32)
        {
          v31 = 5;
        }

        else
        {
          v31 = 4;
        }
      }
    }
  }

  sub_1CF6FC3E4();
  v34 = swift_allocError();
  v36 = v34;
  v37 = 18;
  if ((v18 & 0xC) != 0)
  {
    *v35 = v31;
    *(v35 + 8) = 18;
    v31 = v34;
    v36 = swift_allocError();
    v37 = 12;
  }

  v38 = a1;
  *v35 = v31;
  *(v35 + 8) = v37;
  v39 = v36;
  v40 = [v24 domain];
  if (!v40)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v40 = sub_1CF9E6888();
  }

  v41 = [v24 code];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v43 = *MEMORY[0x1E696AA08];
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v44;
  swift_getErrorValue();
  v46 = v61;
  v45 = v62;
  *(inited + 72) = v62;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  (*(*(v45 - 8) + 16))(boxed_opaque_existential_0, v46, v45);

  sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  v48 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v49 = sub_1CF9E6618();

  v50 = [v48 initWithDomain:v40 code:v41 userInfo:v49];

  v63 = v57;
  v64 = v58;
  v65 = v59;
  v66 = v60;
  result = type metadata accessor for ItemReconciliation();
  v52 = *(v38 + *(result + 64) + 8);
  v53 = v56;
  *v56 = v50;
  v53[1] = 0;
  *(v53 + 16) = v55;
  *(v53 + 17) = 601;
  v53[3] = v52;
  *(v53 + 32) = 0;
  return result;
}

void sub_1CF6F4684(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1CF9E7818())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F8, &qword_1CFA05B08);
      v3 = sub_1CF9E7908();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1CF9E7818();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x1D3869C30](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1CF9E7558();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        type metadata accessor for FSChangesEnumerator();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1CF9E7568();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_1CF9E7558();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        type metadata accessor for FSChangesEnumerator();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1CF9E7568();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1CF6F4950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27A8, &unk_1CFA129B0);
    v3 = sub_1CF9E7908();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1CF9E81D8();

      sub_1CF9E69C8();
      result = sub_1CF9E8228();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1CF9E8048();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1CF6F4AB8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA58FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CF9E7B58();
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF6F4B7C(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_1CF2CA194();
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = swift_allocError();
      v9[0] = v7;

      v6(v9);

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  sub_1CF3FE278(v9);
  return sub_1CEFDA9E0(v9, a1, &unk_1EC4C0680, &qword_1CFA05A88);
}

uint64_t sub_1CF6F4C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646F43626F6ALL && a2 == 0xE700000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646953626F6ALL && a2 == 0xE700000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFA59100 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1CF6F4E0C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2780, &qword_1CFA129A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF6FC2C4();
  sub_1CF9E8298();
  LOBYTE(v11) = 0;
  v8 = sub_1CF9E7D78();
  v13 = 1;
  sub_1CF1A8AD0();
  sub_1CF9E7D88();
  v13 = 2;
  sub_1CF1A8B24();
  sub_1CF9E7CF8();
  v13 = 3;
  sub_1CF6FC318();
  sub_1CF9E7CF8();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  v13 = 4;
  sub_1CEFE7C14(&qword_1EDEAB660);
  sub_1CF9E7D88();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1CF6F50D8(char a1)
{
  v2 = [objc_opt_self() defaultStore];
  v3 = v2;
  v4 = &selRef_maxFPCKDatabaseChecks;
  if ((a1 & 8) != 0)
  {
    v4 = &selRef_maxFPCKDatabaseChecksDiagnostic;
  }

  v5 = [v2 *v4];

  return v5;
}

uint64_t sub_1CF6F516C()
{
  v1 = *(v0 + 16);
  sub_1CF6CFD64();
  return 1;
}

uint64_t sub_1CF6F521C()
{
  v1 = *(v0 + 16);
  sub_1CF6D82E4();
  return 1;
}

uint64_t sub_1CF6F528C()
{
  v0 = sub_1CF9E57E8();
  v1 = [v0 domain];
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;

  if (v2 == 0xD000000000000021 && 0x80000001CFA58C80 == v4)
  {

    goto LABEL_9;
  }

  v6 = sub_1CF9E8048();

  if (v6)
  {
LABEL_9:
    v8 = [v0 code];

    v7 = (v8 - 3) < 2;
    return v7 & 1;
  }

  sub_1CF9E52B8();
  sub_1CF196978();
  if (sub_1CF9E5658())
  {

    v7 = 1;
  }

  else
  {
    _s3__C4CodeOMa_1(0);
    sub_1CF00BCE0(&qword_1EDEA3590, _s3__C4CodeOMa_1);
    v7 = sub_1CF9E5658();
  }

  return v7 & 1;
}

uint64_t sub_1CF6F5410(uint64_t a1)
{
  v2 = sub_1CF9E6938();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v58 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = sub_1CF1F8AE8(*(a1 + 16), 0);
    v7 = sub_1CF1F9BD8(&v68, v6 + 4, v5, a1);

    sub_1CEFCB59C();
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v68 = v6;
  v8 = 0;
  sub_1CF6F214C(&v68);
  v9 = v68[2];
  if (v9)
  {
    v59 = v68;
    v60 = 0;
    v8 = 0;
    if (v9 >= 5)
    {
      v10 = 5;
    }

    else
    {
      v10 = v9;
    }

    v62 = v68 + 4;
    v11 = MEMORY[0x1E69E7CC8];
    v61 = v10;
    while (1)
    {
      if (v8 == v10)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v14 = &v62[3 * v8];
      v16 = *v14;
      v15 = v14[1];
      v17 = v14[2];
      v18 = *(v17 + 16);
      if (v18)
      {
        v64 = *v14;
        v66 = v8;
        v67 = v11;
        swift_bridgeObjectRetain_n();
        v65 = v15;

        v63 = v17;
        v19 = (v17 + 48);
        v20 = MEMORY[0x1E69E7CC0];
        do
        {
          v21 = *(v19 - 2);
          v22 = *(v19 - 8);
          v23 = *(v19 - 7);
          v24 = *(v19 - 6);
          v25 = *v19;
          v26 = objc_allocWithZone(MEMORY[0x1E696AD98]);

          v27 = [v26 initWithInteger_];
          sub_1CF5174A4(2);
          v29 = v28;

          if (v29)
          {
            v30 = [v29 integerValue];
          }

          else
          {
            v30 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1CF1F7588(0, *(v20 + 2) + 1, 1, v20);
          }

          v32 = *(v20 + 2);
          v31 = *(v20 + 3);
          if (v32 >= v31 >> 1)
          {
            v20 = sub_1CF1F7588((v31 > 1), v32 + 1, 1, v20);
          }

          *(v20 + 2) = v32 + 1;
          v33 = &v20[24 * v32];
          *(v33 + 4) = v30;
          v33[40] = v22;
          v33[41] = v23;
          v33[42] = v24;
          *(v33 + 6) = v25;
          v19 += 3;
          --v18;
        }

        while (v18);
        swift_bridgeObjectRelease_n();
        v8 = v66;
        v11 = v67;
        v10 = v61;
        v16 = v64;
        v15 = v65;
      }

      else
      {
        v34 = v14[1];

        v20 = MEMORY[0x1E69E7CC0];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v11;
      v36 = sub_1CEFE4328(v16, v15);
      v38 = v11[2];
      v39 = (v37 & 1) == 0;
      v40 = __OFADD__(v38, v39);
      v41 = v38 + v39;
      if (v40)
      {
        goto LABEL_39;
      }

      v42 = v37;
      if (v11[3] < v41)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_30;
      }

      v47 = v36;
      sub_1CF7D0D70();
      v36 = v47;
      v11 = v68;
      if ((v42 & 1) == 0)
      {
LABEL_31:
        v11[(v36 >> 6) + 8] |= 1 << v36;
        v44 = (v11[6] + 16 * v36);
        *v44 = v16;
        v44[1] = v15;
        *(v11[7] + 8 * v36) = v20;
        v45 = v11[2];
        v40 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v40)
        {
          goto LABEL_40;
        }

        v11[2] = v46;
        goto LABEL_11;
      }

LABEL_10:
      v12 = v11[7];
      v13 = *(v12 + 8 * v36);
      *(v12 + 8 * v36) = v20;

LABEL_11:
      v8 = v8 + 1;
      if (v8 == v10)
      {

        v48 = sub_1CF9E5438();
        v49 = *(v48 + 48);
        v50 = *(v48 + 52);
        swift_allocObject();
        sub_1CF9E5428();
        v68 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2848, &qword_1CFA12A70);
        sub_1CF6FC740(&qword_1EC4C2850, &qword_1EC4C2848, &qword_1CFA12A70, sub_1CF6FC7C4);
        v51 = v60;
        v52 = sub_1CF9E5418();
        if (v51)
        {

          return 0;
        }

        else
        {
          v55 = v52;
          v56 = v53;

          sub_1CF9E6918();
          v57 = sub_1CF9E68D8();
          sub_1CEFE4714(v55, v56);

          return v57;
        }
      }
    }

    sub_1CF7C6EBC(v41, isUniquelyReferenced_nonNull_native);
    v36 = sub_1CEFE4328(v16, v15);
    if ((v42 & 1) != (v43 & 1))
    {
      goto LABEL_42;
    }

LABEL_30:
    v11 = v68;
    if ((v42 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_10;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  sub_1CF9E8108();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1CF6F5920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x1E69E6158];
  v33 = MEMORY[0x1E69E6158];
  v34 = MEMORY[0x1E69E6160];
  *&v32 = a1;
  *(&v32 + 1) = a2;
  v11 = *a6;
  v13 = sub_1CEFE4328(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_1CF054EA0(&v32, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_1CF7D0EE0();
    goto LABEL_7;
  }

  sub_1CF7C7164(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_1CEFE4328(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v10);
  v26 = *(*(v10 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  sub_1CF6F5D90(v13, a3, a4, *v29, v29[1], v19);
  __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_1CF6F5B10(int a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LODWORD(v31) = a1;
  v9 = MEMORY[0x1E69E7668];
  v32 = MEMORY[0x1E69E7668];
  v33 = MEMORY[0x1E69E7670];
  v10 = *a5;
  v12 = sub_1CEFE4328(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *a5;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 40 * v12);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return sub_1CF054EA0(&v31, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1CF7D0EE0();
    goto LABEL_7;
  }

  sub_1CF7C7164(v15, a4 & 1);
  v21 = *a5;
  v22 = sub_1CEFE4328(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *a5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v9);
  v25 = *(*(v9 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  sub_1CF6F5D00(v12, a2, a3, *v28, v18);
  __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t sub_1CF6F5D00(unint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  LODWORD(v11) = a4;
  v12 = MEMORY[0x1E69E7668];
  v13 = MEMORY[0x1E69E7670];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1CF054EA0(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1CF6F5D90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x1E69E6158];
  v14 = MEMORY[0x1E69E6160];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1CF054EA0(&v12, a6[7] + 40 * a1);
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

uint64_t sub_1CF6F5E20(char *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v106 = a5;
  v105 = a6;
  v110 = a2;
  v112 = sub_1CF9E5CF8();
  v9 = *(v112 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v112);
  v99 = &v97[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v97[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v97[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v97[-v17];
  v18 = sub_1CF9E6118();
  v111 = *(v18 - 8);
  v19 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v97[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v97[-v22];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v97[-v25];
  v27 = *a1;
  v98 = *a1;
  if (a3)
  {
    v28 = a3;
  }

  else
  {
    LOBYTE(v114) = v27;
    v110 = sub_1CF4D5AB0();
    v28 = v29;
  }

  v102 = v23;

  v30 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v31 = a4;

  v32 = sub_1CF9E6108();
  LOBYTE(v33) = sub_1CF9E7288();

  v34 = os_log_type_enabled(v32, v33);
  v101 = v31;
  v104 = v28;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v103 = v9;
    v36 = v35;
    v37 = swift_slowAlloc();
    v114 = v37;
    *v36 = 136446466;
    v38 = &v31[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
    v39 = v18;
    v41 = *v38;
    v40 = v38[1];

    v42 = v26;
    v43 = sub_1CEFD0DF0(v41, v40, &v114);
    v18 = v39;

    *(v36 + 4) = v43;
    *(v36 + 12) = 2082;
    *(v36 + 14) = sub_1CEFD0DF0(v110, v28, &v114);
    _os_log_impl(&dword_1CEFC7000, v32, v33, "🧹 FPCK %{public}s: launching %{public}s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v37, -1, -1);
    v44 = v36;
    v9 = v103;
    MEMORY[0x1D386CDC0](v44, -1, -1);

    v45 = *(v111 + 8);
    (v45)(v42, v18);
  }

  else
  {

    v45 = *(v111 + 8);
    (v45)(v26, v18);
  }

  v46 = sub_1CF9E5CC8();
  v47 = v107;
  v106(&v114, v46);
  v49 = v108;
  v48 = v109;
  if (v47)
  {
    (v9[1])(v113, v112);
  }

  else
  {
    v106 = 0;
    v107 = v18;
    LODWORD(v33) = v114;
    v50 = fpfs_current_or_default_log();
    v51 = (v9 + 2);
    if (v33)
    {
      v108 = v45;
      sub_1CF9E6128();
      (*v51)(v48, v113, v112);
      v52 = v101;
      v53 = v104;

      v54 = v52;
      v55 = sub_1CF9E6108();
      v56 = sub_1CF9E7288();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        LODWORD(v100) = v56;
        v58 = v48;
        v59 = v57;
        v101 = swift_slowAlloc();
        v114 = v101;
        *v59 = 136446722;
        v103 = v54;
        v61 = *&v54[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
        v60 = *&v54[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

        v62 = sub_1CEFD0DF0(v61, v60, &v114);
        LODWORD(v105) = v33;
        v63 = v9;
        v64 = v62;

        *(v59 + 4) = v64;
        *(v59 + 12) = 2080;
        v65 = sub_1CEFD0DF0(v110, v53, &v114);

        *(v59 + 14) = v65;
        *(v59 + 22) = 2048;
        v66 = v99;
        sub_1CF9E5CC8();
        sub_1CF9E5C28();
        v68 = v67;
        v69 = v63[1];
        v70 = v66;
        v54 = v103;
        v69(v70, v112);
        v69(v58, v112);
        LOBYTE(v33) = v105;
        *(v59 + 24) = v68;
        _os_log_impl(&dword_1CEFC7000, v55, v100, "🧹 FPCK %{public}s: %s took %fs", v59, 0x20u);
        v71 = v101;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v71, -1, -1);
        MEMORY[0x1D386CDC0](v59, -1, -1);
      }

      else
      {

        v69 = v9[1];
        v69(v48, v112);
      }

      (v108)(v102, v107);
      v92 = *&v54[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_saveCheckpoint];
      v91 = *&v54[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_saveCheckpoint + 8];
      LOBYTE(v114) = v98;

      v93 = sub_1CF6CBDC8(&v114);
      v92();

      v69(v113, v112);
    }

    else
    {
      v103 = v9;
      v72 = v100;
      sub_1CF9E6128();
      (*v51)(v49, v113, v112);
      v73 = v101;
      v74 = v49;
      v75 = v104;

      v76 = sub_1CF9E6108();
      v77 = sub_1CF9E7288();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        LODWORD(v105) = v33;
        LODWORD(v109) = v77;
        v79 = v78;
        v80 = swift_slowAlloc();
        v81 = v112;
        v33 = v80;
        v114 = v80;
        *v79 = 136446722;
        v83 = *&v73[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
        v82 = *&v73[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

        v84 = sub_1CEFD0DF0(v83, v82, &v114);

        *(v79 + 4) = v84;
        *(v79 + 12) = 2080;
        v85 = sub_1CEFD0DF0(v110, v75, &v114);

        *(v79 + 14) = v85;
        *(v79 + 22) = 2048;
        v86 = v99;
        sub_1CF9E5CC8();
        sub_1CF9E5C28();
        v88 = v87;
        v89 = v74;
        v90 = v103[1];
        v90(v86, v81);
        v90(v89, v81);
        *(v79 + 24) = v88;
        _os_log_impl(&dword_1CEFC7000, v76, v109, "🧹 FPCK %{public}s: %s interrupted after %fs", v79, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v33, -1, -1);
        LOBYTE(v33) = v105;
        MEMORY[0x1D386CDC0](v79, -1, -1);

        (v45)(v100, v107);
        v90(v113, v81);
      }

      else
      {

        v94 = v103[1];
        v95 = v112;
        v94(v74, v112);
        (v45)(v72, v107);
        v94(v113, v95);
      }
    }
  }

  return v33 & 1;
}

uint64_t sub_1CF6F674C()
{
  v1 = *(v0 + 16);
  sub_1CF6E6D28();
  return 1;
}

uint64_t sub_1CF6F6774()
{
  v1 = *(v0 + 16);
  sub_1CF6D7B60();
  return 1;
}

uint64_t sub_1CF6F679C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1CF6F67D4(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v332 = a1;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v319 = &v305 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v320 = &v305 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v317 = *(v16 - 8);
  v318 = v16;
  v17 = *(v317 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v305 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v305 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v330 = &v305 - v25;
  v26 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked;
  swift_beginAccess();
  v27 = *(v5 + v26);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  v315 = v19;
  v334 = v26;
  *(v5 + v26) = v29;
  v30 = sub_1CF6CF224("checker(_:handleItem:itemStatus:under:brokenInvariants:)", 56, 2, 989);
  if ((v30 & 1) == 0)
  {
    return v30 & 1;
  }

  v313 = v30;
  v31 = 0;
  v333 = *(a2 + 16);
  v32 = v333[3];
  v314 = a2;
  v308 = v22;
  v309 = v10;
  v306 = a3;
  v310 = v9;
  v329 = v32;
  if ((a4 & 0x4000000000) == 0 || !v32)
  {
    goto LABEL_17;
  }

  sub_1CF9E6A58();
  sub_1CF51B588(v340);
  v33 = v340[4];
  v34 = v340[5];

  if (!v34)
  {
    v31 = 0;
    goto LABEL_17;
  }

  a2 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_multipleHardlinksExtensions;
  swift_beginAccess();
  v35 = *(v5 + a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v339[0] = *(v5 + a2);
  v37 = v339[0];
  *(v5 + a2) = 0x8000000000000000;
  v39 = sub_1CEFE4328(v33, v34);
  v40 = v37[2];
  v41 = (v38 & 1) == 0;
  v42 = v40 + v41;
  if (__OFADD__(v40, v41))
  {
    __break(1u);
    goto LABEL_245;
  }

  v26 = v38;
  if (v37[3] >= v42)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_247;
    }

    *(v5 + a2) = v37;
    if (v38)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_1CF7C745C(v42, isUniquelyReferenced_nonNull_native);
    v37 = v339[0];
    v43 = sub_1CEFE4328(v33, v34);
    if ((v26 & 1) != (v44 & 1))
    {
LABEL_267:
      sub_1CF9E8108();
      __break(1u);
      goto LABEL_268;
    }

    v39 = v43;
    *(v5 + a2) = v37;
    if (v26)
    {
      goto LABEL_14;
    }
  }

LABEL_10:
  sub_1CF1D5A0C(v39, v33, v34, 0, v37);
  while (1)
  {
    v45 = v37[7];
    v46 = *(v45 + 8 * v39);
    v47 = __CFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
LABEL_245:
      __break(1u);
      goto LABEL_246;
    }

    *(v45 + 8 * v39) = v48;
    swift_endAccess();
    v31 = sub_1CF193338;
LABEL_17:
    v345[0] = a4;
    v307 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions;
    v49 = a4;
    if ((*(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions) & 2) != 0)
    {
      v50 = 0;
      v51 = 0;
      do
      {
        v52 = *(&unk_1F4BEF1D8 + v50 + 32);
        if ((v52 & ~v51) == 0)
        {
          v52 = 0;
        }

        v51 |= v52;
        v50 += 8;
      }

      while (v50 != 232);
      v49 = a4 & ~v51;
      v345[0] = v49;
    }

    v331 = a4;
    v335 = v5;
    v312 = v31;
    v321 = v49;
    v339[0] = v49;
    type metadata accessor for BrokenInvariants(0);
    v33 = v53;
    v34 = sub_1CF00BCE0(&qword_1EDEA36C0, type metadata accessor for BrokenInvariants);
    v54 = 0;
    if ((sub_1CF9E7798() & 1) == 0)
    {
      break;
    }

LABEL_24:
    if (fpfs_fileattrs_fullpath())
    {
      v55 = sub_1CF9E6A58();
      v39 = v56;
      v328 = v55;
      v344[0] = v55;
      a4 = v335;
    }

    else
    {
      a4 = v335;
      if (v329)
      {
        v73 = sub_1CF9E6A58();
        strcpy(v340, "unknownPath/");
        BYTE5(v340[1]) = 0;
        HIWORD(v340[1]) = -5120;
      }

      else
      {
        v340[0] = 0;
        v340[1] = 0xE000000000000000;
        sub_1CF9E7948();

        v340[0] = 0xD00000000000001BLL;
        v340[1] = 0x80000001CFA59000;
        v339[0] = *(a4 + v334);
        v73 = sub_1CF9E7F98();
      }

      MEMORY[0x1D3868CC0](v73);

      v39 = v340[1];
      v328 = v340[0];
      v344[0] = v340[0];
    }

    v344[1] = v39;
    v343 = 0;
    v342 = 0;
    v305 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair;
    v74 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair);
    v334 = v39;
    if (v74)
    {
      v311 = v54;
      a2 = v331;
      v339[0] = v331;
      v327 = v74;

      if ((sub_1CF9E7798() & 1) == 0)
      {
        v325 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase;
        v326 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURL;
        v323 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskBrokenInvariantsCounters;
        swift_beginAccess();
        v329 = 0;
        v322 = 0;
        v324 = v34;
        while (1)
        {
          v88 = __clz(__rbit64(a2));
          if (v88 >= 0x40)
          {
            v39 = 0;
          }

          else
          {
            v39 = 1 << v88;
          }

          v340[0] = v39 & a2;
          if ((sub_1CF9E7798() & 1) == 0)
          {
            a2 &= ~v39;
            v339[0] = a2;
          }

          v89 = v330;
          v34 = v33;
          sub_1CEFCCBDC(a4 + v326, v330, &unk_1EC4BE310, qword_1CF9FCBE0);
          v5 = sub_1CF9E5A58();
          v90 = *(v5 - 8);
          if ((*(v90 + 48))(v89, 1, v5) == 1)
          {
            goto LABEL_260;
          }

          v26 = a4;
          v92 = *(a4 + v325);

          v93 = v89;
          v94 = sub_1CF7063DC(v39, v332, v333, v328, v334, v89, v92, v331);

          (*(v90 + 8))(v93, v5);
          if (v94)
          {
            v33 = v323;
            swift_beginAccess();
            sub_1CEFF7124(v329);
            v95 = *(v26 + v33);
            v96 = swift_isUniquelyReferenced_nonNull_native();
            v338[0] = *(v26 + v33);
            v97 = v338[0];
            *(v26 + v33) = 0x8000000000000000;
            v5 = sub_1CF7D52B0(v39);
            v99 = v97[2];
            v100 = (v98 & 1) == 0;
            v101 = v99 + v100;
            if (__OFADD__(v99, v100))
            {
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              v39 = MEMORY[0x1E69E7CC0];
LABEL_192:
              v337[0] = 0;
              v337[1] = 0xE000000000000000;
              sub_1CF9E7948();

              v337[0] = 0x7466654C208C9DE2;
              v337[1] = 0xAB00000000203A20;
              v253 = sub_1CF7F5AAC(v5 & ~v322);
              MEMORY[0x1D3868CC0](v253);

              MEMORY[0x1D3868CC0](32, 0xE100000000000000);
              v254 = sub_1CF7F5394(0x40000000);
              MEMORY[0x1D3868CC0](v254);

              v5 = v337[0];
              a4 = v337[1];
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_193:
                v256 = *(v39 + 16);
                v255 = *(v39 + 24);
                if (v256 >= v255 >> 1)
                {
                  v39 = sub_1CF0710C0((v255 > 1), v256 + 1, 1, v39);
                }

                *(v39 + 16) = v256 + 1;
                v257 = v39 + 16 * v256;
                *(v257 + 32) = v5;
                *(v257 + 40) = a4;
                v337[0] = v39;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
                sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
                v258 = sub_1CF9E67D8();
                v260 = v259;

                v337[0] = v34;
                v337[1] = v33;
                MEMORY[0x1D3868CC0](8250, 0xE200000000000000);

                MEMORY[0x1D3868CC0](v258, v260);

                MEMORY[0x1D3868CC0](10, 0xE100000000000000);

                v261 = v337[0];
                v262 = v337[1];
                v264 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);
                v263 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler + 8);

                v264(v261, v262);

                sub_1CEFF7124(v312);
                v162 = v311;
                goto LABEL_124;
              }

LABEL_265:
              v39 = sub_1CF0710C0(0, *(v39 + 16) + 1, 1, v39);
              goto LABEL_193;
            }

            v22 = v98;
            v33 = v34;
            if (v97[3] >= v101)
            {
              v34 = v324;
              if ((v96 & 1) == 0)
              {
                sub_1CF7D122C();
                v97 = v338[0];
              }
            }

            else
            {
              sub_1CF7C7730(v101, v96);
              v97 = v338[0];
              v102 = sub_1CF7D52B0(v39);
              v34 = v324;
              if ((v22 & 1) != (v103 & 1))
              {
                goto LABEL_266;
              }

              v5 = v102;
            }

            a4 = v335;
            *(v335 + v323) = v97;
            if ((v22 & 1) == 0)
            {
              v97[(v5 >> 6) + 8] |= 1 << v5;
              *(v97[6] + 8 * v5) = v39;
              *(v97[7] + 8 * v5) = 0;
              v104 = v97[2];
              v28 = __OFADD__(v104, 1);
              v105 = v104 + 1;
              if (v28)
              {
                __break(1u);
                goto LABEL_203;
              }

              v97[2] = v105;
            }

            v106 = v97[7];
            v107 = *(v106 + 8 * v5);
            v28 = __OFADD__(v107, 1);
            v108 = v107 + 1;
            if (v28)
            {
              goto LABEL_190;
            }

            *(v106 + 8 * v5) = v108;
            swift_endAccess();
            if ((v39 & ~v322) != 0)
            {
              v322 |= v39;
              v343 = v322;
            }

            v329 = sub_1CF193338;
          }

          else
          {
            a4 = v26;
            v33 = v34;
            v34 = v324;
          }

          if (sub_1CF9E7798())
          {
            goto LABEL_51;
          }
        }
      }

      v329 = 0;
      v322 = 0;
LABEL_51:

      v54 = v311;
      v39 = v334;
    }

    else
    {
      v329 = 0;
      v322 = 0;
    }

    v341 = 0;
    if (v314[1] != 1)
    {
      if (v314[10] == 1)
      {
        if (v321)
        {
          v85 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
          swift_beginAccess();
          v86 = *(a4 + v85);
          v28 = __OFADD__(v86, 1);
          v87 = v86 + 1;
          if (v28)
          {
            __break(1u);
LABEL_250:
            __break(1u);
LABEL_251:
            __break(1u);
LABEL_252:
            __break(1u);
            goto LABEL_253;
          }

LABEL_109:
          *(a4 + v85) = v87;
          v138 = sub_1CF9E6888();
          v139 = [v138 fp_prettyPath];

          v80 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v82 = v140;

          v84 = v322;
          if (!v322)
          {
            goto LABEL_115;
          }

          v339[0] = 0x6578694620859CE2;
          v339[1] = 0xAC000000203A2064;
LABEL_111:
          v141 = sub_1CF7F5AAC(v84);
          MEMORY[0x1D3868CC0](v141);

          MEMORY[0x1D3868CC0](32, 0xE100000000000000);
          MEMORY[0x1D3868CC0](0, 0xE000000000000000);
          v142 = v339[0];
          v143 = v339[1];
          v144 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v146 = *(v144 + 2);
          v145 = *(v144 + 3);
          if (v146 >= v145 >> 1)
          {
            v144 = sub_1CF0710C0((v145 > 1), v146 + 1, 1, v144);
          }

          *(v144 + 2) = v146 + 1;
          v147 = &v144[16 * v146];
          *(v147 + 4) = v142;
          *(v147 + 5) = v143;
          a4 = v335;
LABEL_116:
          v148 = v331 & ~v322;
          if (v148)
          {
            v339[0] = 0x7466654C208C9DE2;
            v339[1] = 0xAB00000000203A20;
            v149 = sub_1CF7F5AAC(v148);
            MEMORY[0x1D3868CC0](v149);

            MEMORY[0x1D3868CC0](32, 0xE100000000000000);
            MEMORY[0x1D3868CC0](0, 0xE000000000000000);
            v150 = v339[0];
            v151 = v339[1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v144 = sub_1CF0710C0(0, *(v144 + 2) + 1, 1, v144);
            }

            v153 = *(v144 + 2);
            v152 = *(v144 + 3);
            if (v153 >= v152 >> 1)
            {
              v144 = sub_1CF0710C0((v152 > 1), v153 + 1, 1, v144);
            }

            *(v144 + 2) = v153 + 1;
            v154 = &v144[16 * v153];
            *(v154 + 4) = v150;
            *(v154 + 5) = v151;
            a4 = v335;
          }

          v339[0] = v144;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
          sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
          v155 = sub_1CF9E67D8();
          v157 = v156;

          v339[0] = v80;
          v339[1] = v82;
          MEMORY[0x1D3868CC0](8250, 0xE200000000000000);

          MEMORY[0x1D3868CC0](v155, v157);

          MEMORY[0x1D3868CC0](10, 0xE100000000000000);

          v158 = v339[0];
          v159 = v339[1];
          v161 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);
          v160 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler + 8);

          v161(v158, v159);

LABEL_123:
          sub_1CEFF7124(v312);
          v162 = v54;
          goto LABEL_124;
        }

LABEL_114:

        goto LABEL_123;
      }

      v109 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);
      v110 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      a2 = v111;
      v340[0] = v110;
      v340[1] = v111;
      v339[0] = 47;
      v339[1] = 0xE100000000000000;
      sub_1CEFE4E68();
      v112 = sub_1CF9E7638();

      v113 = *(v112 + 16);
      if (!v113)
      {

        if (v321)
        {
          v85 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
          swift_beginAccess();
          v137 = *(a4 + v85);
          v28 = __OFADD__(v137, 1);
          v87 = v137 + 1;
          if (v28)
          {
            goto LABEL_255;
          }

          goto LABEL_109;
        }

        goto LABEL_114;
      }

      v311 = v54;
      v114 = (v112 + 16 + 16 * v113);
      v26 = *v114;
      v34 = v114[1];

      v5 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);
      if (v5)
      {
        v115 = *v333;
        v116 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);

        if (sub_1CF70E404(v115, 0, 1, 0, 1))
        {
          v117 = sub_1CF9E6888();
          swift_beginAccess();
          a2 = *(v5 + 16);

          v33 = sub_1CF90517C(v117, a2);

          if (v33)
          {

            v22 = sub_1CF9E6888();
            v118 = v320;
            sub_1CF70D7C8(v333, v22, v320);
            v194 = v317;
            v195 = (*(v317 + 48))(v118, 1, v318);
            v330 = v22;
            if (v195 == 1)
            {

              sub_1CEFCCC44(v118, &qword_1EC4C1B40, &unk_1CF9FCB70);
              if ((v314[3] & 1) == 0)
              {
                goto LABEL_180;
              }

              v22 = 0;
              a4 = v311;
              goto LABEL_219;
            }

            v327 = v5;
            v228 = v194;
            v229 = v118;
            v230 = v308;
            sub_1CEFE55D0(v229, v308, &unk_1EC4BE360, &qword_1CF9FE650);
            v231 = v315;
            sub_1CEFCCBDC(v230, v315, &unk_1EC4BE360, &qword_1CF9FE650);
            v232 = (*(v228 + 80) + 32) & ~*(v228 + 80);
            v233 = swift_allocObject();
            *(v233 + 16) = a4;
            *(v233 + 24) = v22;
            sub_1CEFE55D0(v231, v233 + v232, &unk_1EC4BE360, &qword_1CF9FE650);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C28A0, &qword_1CFA12AF0);
            v33 = swift_allocObject();
            sub_1CF6FCA20(v340);
            memcpy((v33 + 32), v340, 0x208uLL);
            *(v33 + 16) = sub_1CF6FC9A0;
            *(v33 + 24) = v233;
            LODWORD(v231) = v314[3];
            a2 = a4;
            if (v231 == 1)
            {

LABEL_184:

              swift_setDeallocating();
              memcpy(v339, (v33 + 32), sizeof(v339));
              sub_1CEFCCC44(v339, &qword_1EC4C28A8, &qword_1CFA12AF8);
              swift_deallocClassInstance();
              sub_1CEFCCC44(v308, &unk_1EC4BE360, &qword_1CF9FE650);
              v341 = 0x40000000;
              v239 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
              swift_beginAccess();
              v240 = *(a2 + v239);
              v28 = __OFADD__(v240, 1);
              v241 = v240 + 1;
              v5 = v331;
              if (!v28)
              {
                *(a2 + v239) = v241;

                v242 = sub_1CF9E6888();

                v243 = [v242 fp_prettyPath];

                v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v33 = v244;

                v245 = v322;
                if (!v322)
                {
                  goto LABEL_191;
                }

                v337[0] = 0;
                v337[1] = 0xE000000000000000;
                sub_1CF9E7948();

                v337[0] = 0x6578694620859CE2;
                v337[1] = 0xAC000000203A2064;
                v246 = sub_1CF7F5AAC(v245);
                MEMORY[0x1D3868CC0](v246);

                MEMORY[0x1D3868CC0](32, 0xE100000000000000);
                v247 = sub_1CF7F5394(0);
                MEMORY[0x1D3868CC0](v247);

                v248 = v337[0];
                v249 = v337[1];
                v39 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
                v251 = *(v39 + 16);
                v250 = *(v39 + 24);
                if (v251 >= v250 >> 1)
                {
                  v39 = sub_1CF0710C0((v250 > 1), v251 + 1, 1, v39);
                }

                *(v39 + 16) = v251 + 1;
                v252 = v39 + 16 * v251;
                *(v252 + 32) = v248;
                *(v252 + 40) = v249;
                v5 = v331;
                goto LABEL_192;
              }

              __break(1u);
              goto LABEL_265;
            }

            v238 = v330;
            if (sub_1CF6D34D8(v306))
            {

              v39 = v334;
              goto LABEL_184;
            }

            v270 = v314[2];
            v271 = v308 + *(v318 + 48);
            v22 = 0;
            v272 = *(v271 + *(type metadata accessor for ItemMetadata() + 48));
            if (v270 != v272)
            {
              if (v272)
              {
                v22 = 0x1000000000;
              }

              else
              {
                v22 = 0x800000000;
              }

              v341 = v22;
            }

            sub_1CF6C1FA4(v337);
            memcpy(v338, v337, sizeof(v338));
            memcpy(v339, v337, sizeof(v339));
            if (sub_1CF08B99C(v339) == 1)
            {
              sub_1CEFCCC44(v308, &unk_1EC4BE360, &qword_1CF9FE650);

              swift_setDeallocating();
              memcpy(v336, (v33 + 32), sizeof(v336));
              sub_1CEFCCC44(v336, &qword_1EC4C28A8, &qword_1CFA12AF8);
              swift_deallocClassInstance();

              v22 |= 1uLL;
              goto LABEL_213;
            }

            memcpy(v346, v339, 0x208uLL);
            if (sub_1CF44F4AC())
            {
              v275 = sub_1CF9E6888();

              v276 = sub_1CF6D22AC(v346, v275, *(v327 + 64), *(v327 + 72));

              v277 = v308;
              v278 = sub_1CF6E512C(v333, v308, v276, *(a4 + v307));
              sub_1CEFCCC44(v338, &unk_1EC4BFC20, &unk_1CFA0A290);

              swift_setDeallocating();
              memcpy(v337, (v33 + 32), sizeof(v337));
              sub_1CEFCCC44(v337, &qword_1EC4C28A8, &qword_1CFA12AF8);
              swift_deallocClassInstance();
              sub_1CEFCCC44(v277, &unk_1EC4BE360, &qword_1CF9FE650);
              if ((v278 & ~v22) != 0)
              {
                v22 |= v278;
LABEL_213:
                v341 = v22;
              }
            }

            else
            {
              sub_1CEFCCC44(v308, &unk_1EC4BE360, &qword_1CF9FE650);
              sub_1CEFCCC44(v338, &unk_1EC4BFC20, &unk_1CFA0A290);

              swift_setDeallocating();
              memcpy(v337, (v33 + 32), sizeof(v337));
              sub_1CEFCCC44(v337, &qword_1EC4C28A8, &qword_1CFA12AF8);
              swift_deallocClassInstance();
            }

            a4 = v311;
            v5 = v327;
            goto LABEL_219;
          }

          if (v321)
          {
            v89 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
            swift_beginAccess();
            v188 = *(v89 + a4);
            v28 = __OFADD__(v188, 1);
            v91 = v188 + 1;
            v26 = v311;
            if (v28)
            {
              goto LABEL_262;
            }

            *(v89 + a4) = v91;
            v189 = sub_1CF9E6888();
            v190 = [v189 fp_prettyPath];

            a2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v34 = v191;

            if (v322)
            {
              v339[0] = 0x6578694620859CE2;
              v339[1] = 0xAC000000203A2064;
              v192 = sub_1CF7F5AAC(v322);
              MEMORY[0x1D3868CC0](v192);

              MEMORY[0x1D3868CC0](32, 0xE100000000000000);
              MEMORY[0x1D3868CC0](0, 0xE000000000000000);
              v39 = v339[0];
              v5 = v339[1];
              v33 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
              a4 = *(v33 + 16);
              v91 = *(v33 + 24);
              v89 = (a4 + 1);
              if (a4 >= v91 >> 1)
              {
                goto LABEL_263;
              }

              goto LABEL_148;
            }

            v33 = MEMORY[0x1E69E7CC0];
LABEL_177:
            v234 = v331 & ~v322;
            if (!v234)
            {
              goto LABEL_143;
            }

            v339[0] = 0x7466654C208C9DE2;
            v339[1] = 0xAB00000000203A20;
            v235 = sub_1CF7F5AAC(v234);
            MEMORY[0x1D3868CC0](v235);

            MEMORY[0x1D3868CC0](32, 0xE100000000000000);
            v236 = sub_1CF7F5394(0);
            MEMORY[0x1D3868CC0](v236);

LABEL_139:
            v39 = v339[0];
            v5 = v339[1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_256;
            }

            goto LABEL_140;
          }

LABEL_149:

          v26 = v311;
          goto LABEL_150;
        }

        if (!v321)
        {
          goto LABEL_149;
        }

        v89 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
        swift_beginAccess();
        v166 = *(v89 + a4);
        v28 = __OFADD__(v166, 1);
        v91 = v166 + 1;
        v26 = v311;
        if (v28)
        {
          goto LABEL_259;
        }
      }

      else
      {

        if (!v321)
        {
          goto LABEL_149;
        }

        v89 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
        swift_beginAccess();
        v165 = *(v89 + a4);
        v28 = __OFADD__(v165, 1);
        v91 = v165 + 1;
        v26 = v311;
        if (v28)
        {
          __break(1u);
          goto LABEL_258;
        }
      }

      *(v89 + a4) = v91;
      v167 = sub_1CF9E6888();
      v168 = [v167 fp_prettyPath];

      a2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v34 = v169;

      if (v322)
      {
        v339[0] = 0x6578694620859CE2;
        v339[1] = 0xAC000000203A2064;
        v170 = sub_1CF7F5AAC(v322);
        MEMORY[0x1D3868CC0](v170);

        MEMORY[0x1D3868CC0](32, 0xE100000000000000);
        MEMORY[0x1D3868CC0](0, 0xE000000000000000);
        v171 = v339[0];
        v172 = v339[1];
        v33 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v174 = *(v33 + 16);
        v173 = *(v33 + 24);
        if (v174 >= v173 >> 1)
        {
          v33 = sub_1CF0710C0((v173 > 1), v174 + 1, 1, v33);
        }

        *(v33 + 16) = v174 + 1;
        v175 = v33 + 16 * v174;
        *(v175 + 32) = v171;
        *(v175 + 40) = v172;
        a4 = v335;
      }

      else
      {
        v33 = MEMORY[0x1E69E7CC0];
      }

      v176 = v331 & ~v322;
      if (!v176)
      {
        goto LABEL_143;
      }

      v339[0] = 0x7466654C208C9DE2;
      v339[1] = 0xAB00000000203A20;
      v177 = sub_1CF7F5AAC(v176);
      MEMORY[0x1D3868CC0](v177);

      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      MEMORY[0x1D3868CC0](0, 0xE000000000000000);
      goto LABEL_139;
    }

    if (!v321)
    {
      goto LABEL_114;
    }

    v75 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
    swift_beginAccess();
    v76 = *(a4 + v75);
    v28 = __OFADD__(v76, 1);
    v77 = v76 + 1;
    if (!v28)
    {
      *(a4 + v75) = v77;
      v78 = sub_1CF9E6888();
      v79 = [v78 fp_prettyPath];

      v80 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v82 = v81;

      v83 = v322;
      if (v322)
      {
        v339[0] = 0;
        v339[1] = 0xE000000000000000;
        sub_1CF9E7948();

        v339[0] = 0x6578694620859CE2;
        v339[1] = 0xAC000000203A2064;
        v84 = v83;
        goto LABEL_111;
      }

LABEL_115:
      v144 = MEMORY[0x1E69E7CC0];
      goto LABEL_116;
    }

LABEL_246:
    __break(1u);
LABEL_247:
    sub_1CF7D10AC();
    v37 = v339[0];
    *(v5 + a2) = v339[0];
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
  }

  v54 = 0;
  a2 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskBrokenInvariantsCounters;
  v5 = 1;
  v57 = v321;
  while (1)
  {
    v58 = __clz(__rbit64(v57));
    if (v58 >= 0x40)
    {
      v59 = 0;
    }

    else
    {
      v59 = 1 << v58;
    }

    v340[0] = v59 & v57;
    if ((sub_1CF9E7798() & 1) == 0)
    {
      v57 &= ~v59;
      v339[0] = v57;
    }

    v26 = v335;
    swift_beginAccess();
    sub_1CEFF7124(v54);
    v60 = *(v26 + a2);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v338[0] = *(v26 + a2);
    v61 = v338[0];
    *(v26 + a2) = 0x8000000000000000;
    v62 = sub_1CF7D52B0(v59);
    v64 = v61[2];
    v65 = (v63 & 1) == 0;
    v28 = __OFADD__(v64, v65);
    v66 = v64 + v65;
    if (v28)
    {
      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    v26 = v63;
    if (v61[3] >= v66)
    {
      if ((v22 & 1) == 0)
      {
        v22 = v62;
        sub_1CF7D122C();
        v62 = v22;
        v61 = v338[0];
      }
    }

    else
    {
      sub_1CF7C7730(v66, v22);
      v61 = v338[0];
      v62 = sub_1CF7D52B0(v59);
      if ((v26 & 1) != (v67 & 1))
      {
LABEL_266:
        sub_1CF9E8108();
        __break(1u);
        goto LABEL_267;
      }
    }

    *(v335 + a2) = v61;
    if ((v26 & 1) == 0)
    {
      break;
    }

LABEL_41:
    v70 = v61[7];
    v71 = *(v70 + 8 * v62);
    v28 = __OFADD__(v71, 1);
    v72 = v71 + 1;
    if (v28)
    {
      goto LABEL_162;
    }

    *(v70 + 8 * v62) = v72;
    swift_endAccess();
    v54 = sub_1CF193338;
    if (sub_1CF9E7798())
    {
      goto LABEL_24;
    }
  }

  v61[(v62 >> 6) + 8] |= 1 << v62;
  *(v61[6] + 8 * v62) = v59;
  *(v61[7] + 8 * v62) = 0;
  v68 = v61[2];
  v28 = __OFADD__(v68, 1);
  v69 = v68 + 1;
  if (!v28)
  {
    v61[2] = v69;
    goto LABEL_41;
  }

  __break(1u);
LABEL_180:
  v237 = sub_1CF6D34D8(v306);
  a4 = v311;
  if (v237)
  {
LABEL_181:
    v22 = 0;
    goto LABEL_219;
  }

  if (v333[3])
  {
    v265 = *(v335 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_diskVsFSSnapshotIgnoredFilenames);
    v266 = sub_1CF9E6A58();
    LOBYTE(v265) = sub_1CEFDB148(v266, v267, v265);

    if (v265)
    {

      v268 = v335;
      v269 = v331;
      goto LABEL_206;
    }
  }

LABEL_204:
  v273 = sub_1CEFF8C8C(&unk_1F4BEF2E0);
  v274 = v331;
  if ((v273 & ~v331) == 0)
  {

    v268 = v335;
    v269 = v274;
LABEL_206:
    sub_1CF6D27BC(v345, &v341, v268, v344, v269, &v343, &v342);

    sub_1CEFF7124(v312);
    v162 = a4;
LABEL_124:
    sub_1CEFF7124(v162);
    v163 = v329;
    goto LABEL_125;
  }

  if ((v331 & 0x8000000000000) != 0)
  {
    goto LABEL_181;
  }

  v22 = 1;
  v341 = 1;
LABEL_219:
  if ((*(v335 + v307) & 2) != 0)
  {
    v341 = v22;
  }

  if (!v22)
  {

    v196 = 0;
    goto LABEL_90;
  }

  v326 = v22;
  v327 = v5;
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskVsFSSnapshotDiffCounters;
  a2 = v22 & -v22;
  v34 = v335;
  swift_beginAccess();
  sub_1CEFF7124(0);
  v279 = *(v34 + v5);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v339[0] = *(v34 + v5);
  v280 = v339[0];
  *(v34 + v5) = 0x8000000000000000;
  v281 = sub_1CF7D52B4(a2);
  v33 = v282;
  v283 = *(v280 + 16);
  v284 = (v282 & 1) == 0;
  if (__OFADD__(v283, v284))
  {
    goto LABEL_253;
  }

  v34 = v281;
  v285 = sub_1CF6E9478(v39, v283 + v284);
  v89 = v339[0];
  if ((v285 & 1) == 0)
  {
    goto LABEL_226;
  }

  v286 = sub_1CF7D52B4(v22 & -v22);
  if ((v33 & 1) != (v287 & 1))
  {
LABEL_268:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

  v34 = v286;
LABEL_226:
  *(v335 + v5) = v89;
  if ((v33 & 1) == 0)
  {
    v89[(v34 >> 6) + 8] |= 1 << v34;
    *(v89[6] + 8 * v34) = a2;
    *(v89[7] + 8 * v34) = 0;
    v288 = v89[2];
    v28 = __OFADD__(v288, 1);
    v91 = v288 + 1;
    if (!v28)
    {
      v89[2] = v91;
      goto LABEL_229;
    }

LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    v33 = sub_1CF0710C0((v91 > 1), v89, 1, v33);
LABEL_148:
    *(v33 + 16) = v89;
    v193 = v33 + 16 * a4;
    *(v193 + 32) = v39;
    *(v193 + 40) = v5;
    a4 = v335;
    goto LABEL_177;
  }

LABEL_229:
  v289 = v89[7];
  v290 = *(v289 + 8 * v34);
  v28 = __OFADD__(v290, 1);
  v291 = v290 + 1;
  if (v28)
  {
    goto LABEL_254;
  }

  *(v289 + 8 * v34) = v291;
  swift_endAccess();
  if (v326 != a2)
  {
    a4 = a2 ^ v326;
    v26 = 0x8000000000000000;
    while (1)
    {
      a2 = a4 & -a4;
      v34 = v335;
      swift_beginAccess();
      sub_1CEFF7124(sub_1CF193338);
      v292 = *(v34 + v5);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v339[0] = *(v34 + v5);
      v293 = v339[0];
      *(v34 + v5) = 0x8000000000000000;
      v294 = sub_1CF7D52B4(a2);
      v33 = v295;
      v296 = *(v293 + 16);
      v297 = (v295 & 1) == 0;
      if (__OFADD__(v296, v297))
      {
        break;
      }

      v34 = v294;
      v298 = sub_1CF6E9478(v39, v296 + v297);
      v89 = v339[0];
      if (v298)
      {
        v299 = sub_1CF7D52B4(a4 & -a4);
        if ((v33 & 1) != (v300 & 1))
        {
          goto LABEL_268;
        }

        v34 = v299;
      }

      *(v335 + v5) = v89;
      if ((v33 & 1) == 0)
      {
        v89[(v34 >> 6) + 8] |= 1 << v34;
        *(v89[6] + 8 * v34) = a2;
        *(v89[7] + 8 * v34) = 0;
        v301 = v89[2];
        v28 = __OFADD__(v301, 1);
        v91 = v301 + 1;
        if (v28)
        {
          goto LABEL_258;
        }

        v89[2] = v91;
      }

      v302 = v89[7];
      v303 = *(v302 + 8 * v34);
      v28 = __OFADD__(v303, 1);
      v304 = v303 + 1;
      if (v28)
      {
        goto LABEL_254;
      }

      *(v302 + 8 * v34) = v304;
      swift_endAccess();
      v119 = a4 == a2;
      a4 ^= a2;
      if (v119)
      {
        goto LABEL_242;
      }
    }

LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    v33 = sub_1CF0710C0(0, *(v33 + 16) + 1, 1, v33);
LABEL_140:
    v179 = *(v33 + 16);
    v178 = *(v33 + 24);
    if (v179 >= v178 >> 1)
    {
      v33 = sub_1CF0710C0((v178 > 1), v179 + 1, 1, v33);
    }

    *(v33 + 16) = v179 + 1;
    v180 = v33 + 16 * v179;
    *(v180 + 32) = v39;
    *(v180 + 40) = v5;
    a4 = v335;
LABEL_143:
    v339[0] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
    v181 = sub_1CF9E67D8();
    v183 = v182;

    v339[0] = a2;
    v339[1] = v34;
    MEMORY[0x1D3868CC0](8250, 0xE200000000000000);

    MEMORY[0x1D3868CC0](v181, v183);

    MEMORY[0x1D3868CC0](10, 0xE100000000000000);

    v184 = v339[0];
    v185 = v339[1];
    v187 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);
    v186 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler + 8);

    v187(v184, v185);

LABEL_150:
    sub_1CEFF7124(v312);
    v162 = v26;
    goto LABEL_124;
  }

LABEL_242:

  v196 = sub_1CF193338;
  a4 = v311;
  v22 = v326;
  v5 = v327;
LABEL_90:
  v39 = *(v335 + v305);
  if (!v39 || !v22)
  {
    v34 = 0;
    v33 = 0;
    goto LABEL_156;
  }

  v330 = v196;
  v327 = v5;
  a2 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskVsFSSnapshotDiffCounters;

  v34 = 0;
  v33 = 0;
  v326 = v22;
  while (2)
  {
    v5 = v22 & -v22;
    if (sub_1CF70D1C8(v5, v332, v333, v328, v334))
    {
      v120 = v335;
      swift_beginAccess();
      sub_1CEFF7124(v34);
      v121 = *(v120 + a2);
      v122 = swift_isUniquelyReferenced_nonNull_native();
      v339[0] = *(v120 + a2);
      v123 = v339[0];
      *(v120 + a2) = 0x8000000000000000;
      v124 = sub_1CF7D52B4(v22 & -v22);
      v26 = v125;
      v126 = *(v123 + 16);
      v127 = (v125 & 1) == 0;
      if (__OFADD__(v126, v127))
      {
        goto LABEL_250;
      }

      v34 = v124;
      v128 = sub_1CF6E9478(v122, v126 + v127);
      v129 = v339[0];
      if (v128)
      {
        v130 = sub_1CF7D52B4(v22 & -v22);
        if ((v26 & 1) != (v131 & 1))
        {
          goto LABEL_268;
        }

        v34 = v130;
        *(v335 + a2) = v129;
        if (v26)
        {
          goto LABEL_104;
        }
      }

      else
      {
        *(v335 + a2) = v339[0];
        if (v26)
        {
          goto LABEL_104;
        }
      }

      v129[(v34 >> 6) + 8] |= 1 << v34;
      *(v129[6] + 8 * v34) = v5;
      *(v129[7] + 8 * v34) = 0;
      v132 = v129[2];
      v28 = __OFADD__(v132, 1);
      v133 = v132 + 1;
      if (v28)
      {
        goto LABEL_252;
      }

      v129[2] = v133;
LABEL_104:
      v134 = v129[7];
      v135 = *(v134 + 8 * v34);
      v28 = __OFADD__(v135, 1);
      v136 = v135 + 1;
      if (v28)
      {
        goto LABEL_251;
      }

      *(v134 + 8 * v34) = v136;
      swift_endAccess();
      a4 = v311;
      if ((v33 & v5) == 0)
      {
        v33 |= v5;
        v342 = v33;
      }

      v34 = sub_1CF193338;
    }

    v119 = v22 == v5;
    v22 ^= v5;
    if (!v119)
    {
      continue;
    }

    break;
  }

  v5 = v39;
  v22 = v326;
  v196 = v330;
LABEL_156:

  v39 = v334;
  if (!(v321 | v22))
  {

    goto LABEL_173;
  }

  v330 = v196;
  v89 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  a2 = v335;
  swift_beginAccess();
  v197 = *(v89 + a2);
  v28 = __OFADD__(v197, 1);
  v91 = v197 + 1;
  if (v28)
  {
    goto LABEL_261;
  }

  *(v89 + a2) = v91;
  v198 = sub_1CF9E6888();
  v199 = [v198 fp_prettyPath];

  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v200;

  v62 = v322;
  if (v322 | v33)
  {
LABEL_163:
    v333 = v26;
    v203 = v5;
    v204 = v22;
    v339[0] = 0x6578694620859CE2;
    v339[1] = 0xAC000000203A2064;
    v205 = sub_1CF7F5AAC(v62);
    MEMORY[0x1D3868CC0](v205);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v206 = sub_1CF7F5394(v33);
    MEMORY[0x1D3868CC0](v206);

    v207 = v339[0];
    v208 = v339[1];
    v201 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v210 = *(v201 + 2);
    v209 = *(v201 + 3);
    if (v210 >= v209 >> 1)
    {
      v201 = sub_1CF0710C0((v209 > 1), v210 + 1, 1, v201);
    }

    *(v201 + 2) = v210 + 1;
    v211 = &v201[16 * v210];
    *(v211 + 4) = v207;
    *(v211 + 5) = v208;
    v202 = v331;
    v22 = v204;
    v5 = v203;
    v26 = v333;
    goto LABEL_166;
  }

  v201 = MEMORY[0x1E69E7CC0];
  v202 = v331;
LABEL_166:
  v212 = v202 & ~v322;
  v213 = v22 & ~v33;
  if (v212 | v213)
  {
    v339[0] = 0x7466654C208C9DE2;
    v339[1] = 0xAB00000000203A20;
    v214 = sub_1CF7F5AAC(v212);
    MEMORY[0x1D3868CC0](v214);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v215 = sub_1CF7F5394(v213);
    MEMORY[0x1D3868CC0](v215);

    v216 = v339[0];
    v217 = v339[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v201 = sub_1CF0710C0(0, *(v201 + 2) + 1, 1, v201);
    }

    v219 = *(v201 + 2);
    v218 = *(v201 + 3);
    if (v219 >= v218 >> 1)
    {
      v201 = sub_1CF0710C0((v218 > 1), v219 + 1, 1, v201);
    }

    *(v201 + 2) = v219 + 1;
    v220 = &v201[16 * v219];
    *(v220 + 4) = v216;
    *(v220 + 5) = v217;
  }

  v339[0] = v201;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v221 = sub_1CF9E67D8();
  v223 = v222;

  v339[0] = v5;
  v339[1] = v26;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);

  MEMORY[0x1D3868CC0](v221, v223);

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);

  v224 = v339[0];
  v225 = v339[1];
  v226 = *(v335 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);
  v227 = *(v335 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler + 8);

  v226(v224, v225);

  a4 = v311;
  v196 = v330;
LABEL_173:
  sub_1CEFF7124(v312);
  sub_1CEFF7124(a4);
  sub_1CEFF7124(v329);
  sub_1CEFF7124(v196);
  v163 = v34;
LABEL_125:
  sub_1CEFF7124(v163);
  LOBYTE(v30) = v313;
  return v30 & 1;
}

BOOL sub_1CF6F9188(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (*(a1 + 8) == 255)
  {
    return 0;
  }

  if (!a5)
  {
    return 1;
  }

  v9 = *MEMORY[0x1E6966F10];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(a5 + 16))
  {
    goto LABEL_11;
  }

  v12 = sub_1CEFE4328(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = *(*(a5 + 56) + 8 * v12);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = *MEMORY[0x1E6966F08];
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;
  if (*(a5 + 16))
  {
    v22 = v19;
    v23 = v15;
    v24 = sub_1CEFE4328(v22, v21);
    v26 = v25;

    if (v26)
    {
      v27 = *(*(a5 + 56) + 8 * v24);
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v30 = v23;
        v31 = v27;
        v32 = [v29 integerValue];
        v33 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v17 code:v32 userInfo:0];

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v33 = 0;
LABEL_13:
  v35 = *MEMORY[0x1E6966E90];
  v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (*(a5 + 16))
  {
    v38 = sub_1CEFE4328(v36, v37);
    v40 = v39;

    if (v40)
    {
      v41 = *(*(a5 + 56) + 8 * v38);
      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();
      if (v42)
      {
        v43 = [v42 integerValue];
        v44 = 0;
        goto LABEL_19;
      }
    }
  }

  else
  {
  }

  v43 = 0;
  v44 = 1;
LABEL_19:
  v45 = [objc_opt_self() defaultStore];
  v46 = [v45 avoidNilErrorItemsForDetailedPayload];

  if (v46)
  {
    if (!v33)
    {
      return a2 != 0;
    }
  }

  else if (!v33)
  {
    return 0;
  }

  v47 = v33;
  if ((sub_1CF6F528C() & 1) == 0)
  {

    if (!a2)
    {
LABEL_30:

      return 0;
    }

LABEL_29:
    if (((a4 | v44) & 1) == 0)
    {
      v49 = a2;
      v50 = sub_1CF6F528C();

      return (v43 < a3) & ~v50;
    }

    goto LABEL_30;
  }

  if (a2)
  {
    v48 = sub_1CF6F528C();

    if ((v48 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

LABEL_34:
  return 1;
}

void sub_1CF6F9484(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1CF9E6118();
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  memcpy(v62, a1, 0x208uLL);
  v13 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);

  v14 = a4;
  v15 = v13;
  v16 = [v15 pathComponents];
  v17 = sub_1CF9E6D48();

  v18 = *(v17 + 16);

  if (v18 < 2)
  {
    v19 = *MEMORY[0x1E6967178];
  }

  else
  {
    v19 = [v15 lastPathComponent];
    if (!v19)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v19 = sub_1CF9E6888();
    }
  }

  v20 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);
  if (!v20)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  v21 = *(v20 + 24);
  if (!*(v21 + 16))
  {
    goto LABEL_12;
  }

  v22 = sub_1CEFE863C(v19);
  if ((v23 & 1) == 0)
  {

LABEL_12:
    swift_beginAccess();
    v34 = *(a3 + 16);
    *(a3 + 16) = 0;

    dispatch_group_leave(v14);

    return;
  }

  v57 = *(*(v21 + 56) + 8 * v22);

  v24 = v62[0];
  v25 = v62[1];
  if (!LOBYTE(v62[1]))
  {
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1CF6FC60C;
    *(v35 + 24) = v12;
    *(v35 + 32) = v24;
    v36 = v57;
    v37 = *(v57 + 216);
    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    *(v29 + 24) = v36;
    *(v29 + 32) = 0;
    *(v29 + 40) = sub_1CF6FC634;
    *(v29 + 48) = v35;

    v30 = v37;

    v31 = "performWithDiskDiagnosticAttributes(for:isExternalQuery:block:)";
    v32 = sub_1CF6FC644;
    v33 = 63;
    goto LABEL_15;
  }

  if (LOBYTE(v62[1]) == 1)
  {
    v26 = swift_allocObject();
    v26[2] = sub_1CF6FC60C;
    v26[3] = v12;
    v26[4] = v24;
    v27 = v57;
    v28 = *(v57 + 216);
    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    *(v29 + 24) = v27;
    *(v29 + 32) = 0;
    *(v29 + 40) = sub_1CF6FC614;
    *(v29 + 48) = v26;

    v30 = v28;

    v31 = "performWithDiskDiagnosticAttributes(by:isExternalQuery:block:)";
    v32 = sub_1CF6FC624;
    v33 = 62;
LABEL_15:
    sub_1CF01001C(0, v31, v33, 2, v32, v29);

    return;
  }

  v55 = v62[0];
  v38 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(v62, &v60, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v39 = sub_1CF9E6108();
  v40 = sub_1CF9E72A8();
  sub_1CEFCCC44(v62, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v56 = v40;
  v41 = v40;
  v42 = v39;
  if (os_log_type_enabled(v39, v41))
  {
    v43 = swift_slowAlloc();
    v53 = v43;
    v44 = swift_slowAlloc();
    v54 = v44;
    *v43 = 136315138;
    v59 = v44;
    v60 = v55;
    v61 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9C8, &unk_1CFA12A40);
    v45 = sub_1CF9E6948();
    v46 = v42;
    v48 = sub_1CEFD0DF0(v45, v47, &v59);

    v49 = v53;
    *(v53 + 1) = v48;
    _os_log_impl(&dword_1CEFC7000, v46, v56, "Asked to retrieve diag info for %s, unsupported", v49, 0xCu);
    v50 = v54;
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1D386CDC0](v50, -1, -1);
    MEMORY[0x1D386CDC0](v49, -1, -1);
  }

  else
  {
  }

  (*(v58 + 8))(v11, v8);
  swift_beginAccess();
  v51 = *(a3 + 16);
  *(a3 + 16) = 0;

  dispatch_group_leave(v14);
}

uint64_t sub_1CF6F9A38(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v50[0] = *v18;
    v50[1] = v19;
    v50[2] = v20;

    v21 = v20;
    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_1CEFE4328(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_1CF7CF818();
      }
    }

    else
    {
      v32 = v51;
      sub_1CF7C3E7C(v30, v46 & 1);
      v33 = *v32;
      v34 = sub_1CEFE4328(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = v36[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v15;
    v6 = v43;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_1CEFCB59C();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF6F9CD4(void *a1)
{
  _s3__C4CodeOMa_1(0);
  *&v13[0] = -1004;
  sub_1CF00BCE0(&qword_1EDEA3590, _s3__C4CodeOMa_1);
  v2 = sub_1CF9E5658();
  result = 0;
  if (v2)
  {
    v4 = [a1 userInfo];
    v5 = sub_1CF9E6638();

    v6 = *MEMORY[0x1E6967198];
    v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    if (*(v5 + 16))
    {
      v9 = sub_1CEFE4328(v7, v8);
      v11 = v10;

      if (v11)
      {
        sub_1CEFD1104(*(v5 + 56) + 32 * v9, v13);

        sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        sub_1CF6FC3E4();
        result = swift_allocError();
        *v12 = 28;
        *(v12 + 8) = 18;
        return result;
      }
    }

    else
    {
    }

    memset(v13, 0, sizeof(v13));
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return 0;
  }

  return result;
}

uint64_t sub_1CF6F9E84(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = v4;
  v92 = a4;
  v7 = sub_1CF9E53C8();
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v82 - v12;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v82 - v18;
  sub_1CF9E58C8();
  if (qword_1EC4BCD90 != -1)
  {
    swift_once();
  }

  v21 = qword_1EC4EBF30;
  v20 = *algn_1EC4EBF38;
  v22 = qword_1EC4EBF40;
  if (byte_1EC4EBF49)
  {
    v23 = 256;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23 | byte_1EC4EBF48;
  if (byte_1EC4EBF4A)
  {
    v25 = 0x10000;
  }

  else
  {
    v25 = 0;
  }

  v26 = sub_1CF713060(v21, v20, v22, v24 | v25);
  if (v5)
  {
    return (*(v14 + 8))(v19, v13);
  }

  v28 = v26;
  v82 = 0;
  v94 = a3;
  v84 = v19;
  v85 = v14;
  v86 = v13;
  v29 = objc_opt_self();

  v30 = [v29 defaultStore];
  v93 = v28;
  v31 = v30;
  v32 = [v30 softConcurrentOperationLimit];
  v33 = [v31 hardConcurrentOperationLimit];

  type metadata accessor for JobLimit();
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = v32;
  v34[4] = v32;
  v34[5] = v33;
  v35 = [v29 defaultStore];
  v36 = [v35 softConcurrentContentUpdateLimit];
  v37 = [v35 hardConcurrentContentUpdateLimit];

  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = v36;
  v38[4] = v36;
  v38[5] = v37;
  v83 = v29;
  v39 = [v29 defaultStore];
  v40 = [v39 softConcurrentMetadataOnlyUpdateLimit];
  LODWORD(v36) = [v39 hardConcurrentMetadataOnlyUpdateLimit];

  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = v40;
  v41[4] = v40;
  v41[5] = v36;
  v42 = [v29 defaultStore];
  v43 = [v42 softConcurrentProvideFileLimit];
  LODWORD(v36) = [v42 hardConcurrentProvideFileLimit];

  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = v43;
  v44[4] = v43;
  v44[5] = v36;
  type metadata accessor for RestoreUpgradeSchemaVFSFileTree(0);
  v45 = swift_allocObject();
  *(v45 + 112) = 0;
  *(v45 + 144) = 0;
  *(v45 + 16) = 0u;
  *(v45 + 32) = 0u;
  *(v45 + 48) = 0u;
  *(v45 + 64) = 0u;
  *(v45 + 120) = 0;
  *(v45 + 128) = 0;
  v46 = *(*v45 + 520);
  v47 = v93;

  v46(v48);
  *(v45 + 136) = v47;
  *(v45 + 80) = v34;
  *(v45 + 88) = v38;
  *(v45 + 96) = v41;
  *(v45 + 104) = v44;
  v49 = v83;
  v50 = [v83 defaultStore];
  v51 = [v50 softConcurrentOperationLimit];
  LODWORD(v42) = [v50 hardConcurrentOperationLimit];

  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = v51;
  v52[4] = v51;
  v52[5] = v42;
  v53 = [v49 defaultStore];
  v54 = [v53 softConcurrentContentUpdateLimit];
  LODWORD(v42) = [v53 hardConcurrentContentUpdateLimit];

  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = v54;
  v55[4] = v54;
  v55[5] = v42;
  v56 = [v49 defaultStore];
  v57 = [v56 softConcurrentMetadataOnlyUpdateLimit];
  LODWORD(v44) = [v56 hardConcurrentMetadataOnlyUpdateLimit];

  v58 = swift_allocObject();
  v58[2] = 0;
  v58[3] = v57;
  v58[4] = v57;
  v58[5] = v44;
  v59 = [v49 defaultStore];
  v60 = [v59 softConcurrentProvideFileLimit];
  LODWORD(v44) = [v59 hardConcurrentProvideFileLimit];

  v61 = v44;
  v62 = swift_allocObject();
  v62[2] = 0;
  v62[3] = v60;
  v62[4] = v60;
  v62[5] = v61;
  type metadata accessor for RestoreUpgradeSchemaFPFileTree(0);
  v63 = swift_allocObject();
  *(v63 + 112) = 0;
  *(v63 + 144) = 0;
  *(v63 + 16) = 0u;
  *(v63 + 32) = 0u;
  *(v63 + 48) = 0u;
  *(v63 + 64) = 0u;
  *(v63 + 120) = 0;
  *(v63 + 128) = 0;
  (*(*v63 + 520))();
  v64 = v92;
  *(v63 + 136) = v93;
  *(v63 + 80) = v52;
  *(v63 + 88) = v55;
  *(v63 + 96) = v58;
  *(v63 + 104) = v62;
  v65 = [v64 fileDescriptor];
  v66 = [objc_allocWithZone(MEMORY[0x1E69672D0]) initWithFd:v65 forceColor:1];
  if (!v66)
  {
    v95 = 9;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BCE0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v80 = v87;
    v81 = v89;
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v88 + 8))(v80, v81);
    swift_willThrow();

    v14 = v85;
    v13 = v86;
    v19 = v84;
    return (*(v14 + 8))(v19, v13);
  }

  v67 = v66;
  v69 = v84;
  v68 = v85;
  v70 = v90;
  v71 = v86;
  (*(v85 + 16))(v90, v84, v86);
  v72 = type metadata accessor for TelemetrySignposter(0);
  v73 = v91;
  (*(*(v72 - 8) + 56))(v91, 1, 1, v72);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  v77 = swift_allocObject();

  v78 = sub_1CF3B5E24(v70, v45, v63, v73, 1, 0x706D7564, 0xE400000000000000, v77);
  v79 = v67;
  sub_1CF6F3808(v79, (v94 & 1) == 0, 0, v78);

  sub_1CF6C0474();

  return (*(v68 + 8))(v69, v71);
}

uint64_t sub_1CF6FA884(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1CF00BCE0(a4, type metadata accessor for BrokenInvariants);
  result = sub_1CF00BCE0(a6, type metadata accessor for BrokenInvariants);
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_1CF6FA9E0()
{
  v0 = sub_1CF9E5A58();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1CF1DEC4C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1CF6FAB38()
{
  sub_1CF1DEC4C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1CF6FB2EC()
{
  result = qword_1EDEA5200;
  if (!qword_1EDEA5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5200);
  }

  return result;
}

unint64_t sub_1CF6FB344()
{
  result = qword_1EC4C2630;
  if (!qword_1EC4C2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2630);
  }

  return result;
}

unint64_t sub_1CF6FB3E0()
{
  result = qword_1EC4C2648;
  if (!qword_1EC4C2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2648);
  }

  return result;
}

unint64_t sub_1CF6FB438()
{
  result = qword_1EC4C2650;
  if (!qword_1EC4C2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2650);
  }

  return result;
}

unint64_t sub_1CF6FB4B8()
{
  result = qword_1EC4C2658;
  if (!qword_1EC4C2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2658);
  }

  return result;
}

unint64_t sub_1CF6FB50C()
{
  result = qword_1EC4C2660;
  if (!qword_1EC4C2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2660);
  }

  return result;
}

unint64_t sub_1CF6FB58C()
{
  result = qword_1EC4C2668;
  if (!qword_1EC4C2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2668);
  }

  return result;
}

unint64_t sub_1CF6FB5E0()
{
  result = qword_1EC4C2670;
  if (!qword_1EC4C2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2670);
  }

  return result;
}

unint64_t sub_1CF6FB660()
{
  result = qword_1EC4C2678;
  if (!qword_1EC4C2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2678);
  }

  return result;
}

unint64_t sub_1CF6FB6B4()
{
  result = qword_1EDEA5208[0];
  if (!qword_1EDEA5208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA5208);
  }

  return result;
}

unint64_t sub_1CF6FB708()
{
  result = qword_1EDEA4A30;
  if (!qword_1EDEA4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA4A30);
  }

  return result;
}

unint64_t sub_1CF6FB760()
{
  result = qword_1EC4C2680;
  if (!qword_1EC4C2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2680);
  }

  return result;
}

unint64_t sub_1CF6FB7FC()
{
  result = qword_1EC4C2698;
  if (!qword_1EC4C2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2698);
  }

  return result;
}

unint64_t sub_1CF6FB854()
{
  result = qword_1EC4C26A0;
  if (!qword_1EC4C26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26A0);
  }

  return result;
}

unint64_t sub_1CF6FB8D4()
{
  result = qword_1EC4C26A8;
  if (!qword_1EC4C26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26A8);
  }

  return result;
}

unint64_t sub_1CF6FB928()
{
  result = qword_1EC4C26B0;
  if (!qword_1EC4C26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26B0);
  }

  return result;
}

unint64_t sub_1CF6FB9A8()
{
  result = qword_1EC4C26B8;
  if (!qword_1EC4C26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26B8);
  }

  return result;
}

unint64_t sub_1CF6FB9FC()
{
  result = qword_1EC4C26C0;
  if (!qword_1EC4C26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26C0);
  }

  return result;
}

unint64_t sub_1CF6FBA7C()
{
  result = qword_1EC4C26C8;
  if (!qword_1EC4C26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26C8);
  }

  return result;
}

unint64_t sub_1CF6FBAD0()
{
  result = qword_1EDEA4A38;
  if (!qword_1EDEA4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA4A38);
  }

  return result;
}

unint64_t sub_1CF6FBB24()
{
  result = qword_1EDEA48D0;
  if (!qword_1EDEA48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA48D0);
  }

  return result;
}

unint64_t sub_1CF6FBB7C()
{
  result = qword_1EC4C26D0;
  if (!qword_1EC4C26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26D0);
  }

  return result;
}

unint64_t sub_1CF6FBC18()
{
  result = qword_1EC4C26E8;
  if (!qword_1EC4C26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26E8);
  }

  return result;
}

unint64_t sub_1CF6FBC70()
{
  result = qword_1EC4C26F0;
  if (!qword_1EC4C26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26F0);
  }

  return result;
}

unint64_t sub_1CF6FBCF0()
{
  result = qword_1EC4C26F8;
  if (!qword_1EC4C26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26F8);
  }

  return result;
}

unint64_t sub_1CF6FBD44()
{
  result = qword_1EC4C2700;
  if (!qword_1EC4C2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2700);
  }

  return result;
}

unint64_t sub_1CF6FBDC4()
{
  result = qword_1EC4C2708;
  if (!qword_1EC4C2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2708);
  }

  return result;
}

unint64_t sub_1CF6FBE18()
{
  result = qword_1EC4C2710;
  if (!qword_1EC4C2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2710);
  }

  return result;
}

unint64_t sub_1CF6FBE98()
{
  result = qword_1EC4C2718;
  if (!qword_1EC4C2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2718);
  }

  return result;
}

unint64_t sub_1CF6FBEEC()
{
  result = qword_1EDEA48D8[0];
  if (!qword_1EDEA48D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA48D8);
  }

  return result;
}

unint64_t sub_1CF6FBF40()
{
  result = qword_1EDEA4A40;
  if (!qword_1EDEA4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA4A40);
  }

  return result;
}

unint64_t sub_1CF6FBF98()
{
  result = qword_1EC4C2720;
  if (!qword_1EC4C2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2720);
  }

  return result;
}

unint64_t sub_1CF6FC034()
{
  result = qword_1EC4C2738;
  if (!qword_1EC4C2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2738);
  }

  return result;
}

unint64_t sub_1CF6FC08C()
{
  result = qword_1EC4C2740;
  if (!qword_1EC4C2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2740);
  }

  return result;
}

unint64_t sub_1CF6FC10C()
{
  result = qword_1EC4C2748;
  if (!qword_1EC4C2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2748);
  }

  return result;
}

unint64_t sub_1CF6FC160()
{
  result = qword_1EC4C2750;
  if (!qword_1EC4C2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2750);
  }

  return result;
}

uint64_t sub_1CF6FC1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF6FC21C()
{
  result = qword_1EC4C2758;
  if (!qword_1EC4C2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2758);
  }

  return result;
}

unint64_t sub_1CF6FC270()
{
  result = qword_1EC4C2760;
  if (!qword_1EC4C2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2760);
  }

  return result;
}

unint64_t sub_1CF6FC2C4()
{
  result = qword_1EC4C2788;
  if (!qword_1EC4C2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2788);
  }

  return result;
}

unint64_t sub_1CF6FC318()
{
  result = qword_1EC4C2790;
  if (!qword_1EC4C2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2790);
  }

  return result;
}

unint64_t sub_1CF6FC36C()
{
  result = qword_1EC4C27A0;
  if (!qword_1EC4C27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C27A0);
  }

  return result;
}

unint64_t sub_1CF6FC3E4()
{
  result = qword_1EC4C27D0;
  if (!qword_1EC4C27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C27D0);
  }

  return result;
}

uint64_t sub_1CF6FC438(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 72);
  v9 = *(v1 + 56);
  return sub_1CF6E3340(a1, *(v1 + 64)) & 1;
}

void sub_1CF6FC470(id a1, unsigned __int8 a2)
{
  if (a2 <= 0x10u)
  {
  }
}

uint64_t sub_1CF6FC524(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1CEFCCCEC(&qword_1EC4BE548, &unk_1EC4BFC10, &qword_1CF9FE510);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF6FC5B8()
{
  result = qword_1EC4C2828;
  if (!qword_1EC4C2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2828);
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

unint64_t sub_1CF6FC6EC()
{
  result = qword_1EDEA4A48[0];
  if (!qword_1EDEA4A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA4A48);
  }

  return result;
}

uint64_t sub_1CF6FC740(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF6FC7C4()
{
  result = qword_1EC4C2858;
  if (!qword_1EC4C2858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2860, &qword_1CFA12A78);
    sub_1CF6FC5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2858);
  }

  return result;
}

id sub_1CF6FC860()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

void sub_1CF6FC8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(v3 + 16);
  v5 = a3();
  (*(v4 + 16))(v4, v5);
}

BOOL sub_1CF6FC944(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  return sub_1CF6E34F8(a1);
}

void *sub_1CF6FC9A0@<X0>(void *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1CF6D2BDC(v4, v5, v6, a1);
}

double sub_1CF6FCA20(uint64_t a1)
{
  result = 0.0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 464) = 1;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  return result;
}

uint64_t sub_1CF6FCB08(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1CF6E3CE8(a1);
}

uint64_t sub_1CF6FCB7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CF0262EC;

  return sub_1CF6C20F4(a1, v4, v5, v6);
}

unint64_t sub_1CF6FCC30()
{
  result = qword_1EDEA7110[0];
  if (!qword_1EDEA7110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA7110);
  }

  return result;
}

uint64_t sub_1CF6FCC84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1CF6FCCCC(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CF6FCD44()
{
  result = qword_1EC4C28B8;
  if (!qword_1EC4C28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C28B8);
  }

  return result;
}

unint64_t sub_1CF6FCD9C()
{
  result = qword_1EC4C28C0;
  if (!qword_1EC4C28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C28C0);
  }

  return result;
}

unint64_t sub_1CF6FCDF4()
{
  result = qword_1EC4C28C8;
  if (!qword_1EC4C28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C28C8);
  }

  return result;
}

unint64_t sub_1CF6FCE4C()
{
  result = qword_1EC4C28D0;
  if (!qword_1EC4C28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C28D0);
  }

  return result;
}

unint64_t sub_1CF6FCEA0()
{
  result = qword_1EDEADDC8[0];
  if (!qword_1EDEADDC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEADDC8);
  }

  return result;
}

uint64_t sub_1CF6FCFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1CF7019D4(a3, v27 - v11);
  v13 = sub_1CF9E6F08();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1CEFCCC44(v12, &qword_1EC4BFBA8, &qword_1CFA12B20);
  }

  else
  {
    sub_1CF9E6EF8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1CF9E6EC8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1CF9E6978() + 32;
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

      sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);

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

  sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);
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

uint64_t sub_1CF6FD2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1CF7019D4(a3, v27 - v11);
  v13 = sub_1CF9E6F08();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1CEFCCC44(v12, &qword_1EC4BFBA8, &qword_1CFA12B20);
  }

  else
  {
    sub_1CF9E6EF8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1CF9E6EC8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1CF9E6978() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C28E0, &qword_1CFA13260);
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

      sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);

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

  sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C28E0, &qword_1CFA13260);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1CF6FD5E0()
{
  v0 = sub_1CF9E7388();
  v25 = *(v0 - 8);
  v26 = v0;
  v1 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v24 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CF9E7318();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v21 = sub_1CF9E6448();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  v22 = sub_1CF701F40();
  v20 = "@NSDictionary24@NSError32";
  sub_1CF9E63F8();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1CF701F8C(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF9E77B8();
  v17 = v21;
  (*(v10 + 16))(v13, v16, v21);
  (*(v4 + 16))(v23, v9, v3);
  (*(v25 + 104))(v24, *MEMORY[0x1E69E8098], v26);
  v18 = sub_1CF9E73B8();
  (*(v4 + 8))(v9, v3);
  result = (*(v10 + 8))(v16, v17);
  qword_1EDEBB898 = v18;
  return result;
}

dispatch_semaphore_t sub_1CF6FD974()
{
  result = dispatch_semaphore_create(0);
  qword_1EC4EBE88 = result;
  return result;
}

uint64_t sub_1CF6FD9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_1CF9E6118();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CF6FDA94, 0, 0);
}

uint64_t sub_1CF6FDA94()
{
  v1 = v0[10];
  v2 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v3 = sub_1CF9E6108();
  v4 = sub_1CF9E7288();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1CEFC7000, v3, v4, "🧹 reingesting items from Periodic FPCK", v5, 2u);
    MEMORY[0x1D386CDC0](v5, -1, -1);
  }

  v6 = v0[10];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[3];

  v10 = *(v8 + 8);
  v10(v6, v7);
  v11 = *(v9 + 160);
  if (v11)
  {
    v12 = *(v9 + 168);
    v14 = v0[4];
    v13 = v0[5];
    v15 = sub_1CF9E5688();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();

    sub_1CF9E5678();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
    sub_1CF1E1244();
    sub_1CF9E5668();

    v11(v0[2]);

    sub_1CEFF7124(v11);
  }

  else
  {
    v18 = v0[9];
    v19 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E72A8();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[9];
    v24 = v0[6];
    v25 = v0[7];
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "🧹 could not accept items to reingest from FPCK, reingestItemsInDomain is nil", v26, 2u);
      MEMORY[0x1D386CDC0](v26, -1, -1);
    }

    v10(v23, v24);
  }

  v28 = v0[9];
  v27 = v0[10];
  v29 = v0[8];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1CF6FDE04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0264D8;

  return sub_1CF6FD9B8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CF6FDF0C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  v13 = sub_1CF9E6F08();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v6;
  v14[5] = a1;
  v14[6] = a2;

  sub_1CEFE42D4(a1, a2);
  sub_1CF6FCFEC(0, 0, v12, a4, v14);
}

uint64_t sub_1CF6FE02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_1CF9E6118();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CF6FE108, 0, 0);
}

uint64_t sub_1CF6FE108()
{
  v1 = v0[10];
  v2 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v3 = sub_1CF9E6108();
  v4 = sub_1CF9E7288();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1CEFC7000, v3, v4, "🧹 sending TTR for Periodic FPCK", v5, 2u);
    MEMORY[0x1D386CDC0](v5, -1, -1);
  }

  v6 = v0[10];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[3];

  v10 = *(v8 + 8);
  v0[11] = v10;
  v11 = v10(v6, v7);
  v12 = *(v9 + 152);
  v13 = (*(v9 + 144))(v11);
  v0[12] = v13;
  if (v13)
  {
    v15 = v0[4];
    v14 = v0[5];
    v16 = sub_1CF9E5688();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1CF9E5678();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
    sub_1CF1E1244();
    sub_1CF9E5668();

    v33 = v0[2];
    v0[13] = v33;
    v34 = swift_task_alloc();
    v0[14] = v34;
    *v34 = v0;
    v34[1] = sub_1CF6FE4D4;

    return sub_1CF7F8760(v33, 0, 0, 0, 0x2000000);
  }

  else
  {
    v19 = v0[9];
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E72A8();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[9];
    v25 = v0[6];
    v26 = v0[7];
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "🧹 could not accept TTR from FPCK, DiagnosticsManager is nil", v27, 2u);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    v10(v24, v25);
    v29 = v0[9];
    v28 = v0[10];
    v30 = v0[8];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1CF6FE4D4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);

  if (v0)
  {
    v6 = sub_1CF6FE684;
  }

  else
  {
    v6 = sub_1CF6FE608;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CF6FE608()
{
  v1 = v0[12];

  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1CF6FE684()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v4 = sub_1CF9E6108();
  v5 = sub_1CF9E72A8();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v6)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1CEFC7000, v4, v5, "🧹 failed decoding VFSItemID for TTR from FPCK", v12, 2u);
    MEMORY[0x1D386CDC0](v12, -1, -1);
  }

  v8(v9, v11);
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1CF6FE7D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0264D8;

  return sub_1CF6FE02C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CF6FE8BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = a3;

  v13 = sub_1CF9E5B88();
  v15 = v14;

  v16 = sub_1CF9E6F08();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = v13;
  v17[6] = v15;
  sub_1CF6FCFEC(0, 0, v11, a5, v17);
}

uint64_t sub_1CF6FE9EC(uint64_t (*a1)(void, void))
{
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  if (*(v1 + 97) != 1)
  {
    v19 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v16 = sub_1CF9E6108();
    v20 = sub_1CF9E7288();
    if (!os_log_type_enabled(v16, v20))
    {
      v14 = 1;
      goto LABEL_10;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1CEFC7000, v16, v20, "🧹 Periodic FPCK is paused because it has been unregistered", v18, 2u);
    v14 = 1;
LABEL_7:
    MEMORY[0x1D386CDC0](v18, -1, -1);
LABEL_10:

    (*(v4 + 8))(v7, v3);
    return a1(v14 & 1, 0);
  }

  v12 = *(v1 + 112);
  v11 = *(v1 + 120);

  v14 = v12(v13);

  if (v14)
  {
    v15 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E7288();
    if (!os_log_type_enabled(v16, v17))
    {
      v7 = v10;
      goto LABEL_10;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1CEFC7000, v16, v17, "🧹 Periodic FPCK is paused because system indicated", v18, 2u);
    v7 = v10;
    goto LABEL_7;
  }

  return a1(v14 & 1, 0);
}

uint64_t sub_1CF6FEC9C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  return v1();
}

uint64_t sub_1CF6FED30(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v46 = a4;
  v47 = a5;
  v44 = a10;
  v45 = a11;
  v17 = a9;
  v18 = sub_1CF9E6118();
  v42 = *(v18 - 8);
  v43 = v18;
  v19 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v23 = sub_1CF9E6108();
  v24 = sub_1CF9E7288();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v41 = a8;
    v26 = v25;
    v27 = swift_slowAlloc();
    v40 = a6;
    v38 = v27;
    v48 = v27;
    *v26 = 136315138;
    v28 = *(a1 + 24);
    v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v39 = a1;
    v31 = a3;
    v32 = a7;
    v33 = sub_1CEFD0DF0(v29, v30, &v48);

    *(v26 + 4) = v33;
    a7 = v32;
    a3 = v31;
    v17 = a9;
    _os_log_impl(&dword_1CEFC7000, v23, v24, "starting to run periodic FPCK for %s", v26, 0xCu);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    a6 = v40;
    MEMORY[0x1D386CDC0](v34, -1, -1);
    v35 = v26;
    a8 = v41;
    MEMORY[0x1D386CDC0](v35, -1, -1);
  }

  (*(v42 + 8))(v21, v43);
  return sub_1CF6FEF88(a2, a3, v46, v47, a6, a7 & 1, a8, v17, v44, v45);
}

uint64_t sub_1CF6FEF88(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v184 = a6;
  v183 = a5;
  v195 = a4;
  v182 = a3;
  v185 = a2;
  v223 = *MEMORY[0x1E69E9840];
  v205 = sub_1CF9E6118();
  v204 = *(v205 - 8);
  v15 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v199 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v201 = &v176 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v180 = &v176 - v20;
  v191 = sub_1CF9E5CF8();
  v190 = *(v191 - 8);
  v21 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v189 = &v176 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E5D98();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v200 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1CF9E5868();
  v214 = *(v207 - 1);
  v27 = v214[8];
  MEMORY[0x1EEE9AC00](v207);
  v206 = &v176 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1CF9E5A58();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v194 = &v176 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v178 = &v176 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v211 = &v176 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v215 = &v176 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v208 = &v176 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v213 = &v176 - v42;
  v181 = v43;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v176 - v46;
  if (!*(a1 + 16))
  {
    sub_1CF5137B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/fpck/PeriodicFPCK.swift", 96, 2, 192);
  }

  v48 = *(v30 + 16);
  v179 = *(v30 + 80);
  v196 = a1;
  v193 = v30 + 16;
  v192 = v48;
  (v48)(v47, a1 + ((v179 + 32) & ~v179), v29, v45);
  v49 = swift_allocObject();
  v210 = v11;
  swift_weakInit();
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = a7;
  v203 = a7;
  v50[4] = a8;
  v51 = objc_opt_self();
  v209 = v49;

  v202 = a8;

  v52 = [v51 fp_secureTempDirectory];
  if (!v52)
  {
    v81 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v82 = sub_1CF9E6108();
    v83 = sub_1CF9E72B8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_1CEFC7000, v82, v83, "Couldn't get secure temp URL for periodic FPCK", v84, 2u);
      MEMORY[0x1D386CDC0](v84, -1, -1);
    }

    (*(v204 + 8))(v201, v205);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 96) = 0;
    }

    v203(Strong);

    (*(v30 + 8))(v47, v29);
    goto LABEL_24;
  }

  v198 = v50;
  v201 = v47;
  v53 = v52;
  sub_1CF9E59D8();

  aBlock = 0xD000000000000011;
  v218 = 0x80000001CFA591D0;
  v212 = v29;
  LODWORD(v188) = *MEMORY[0x1E6968F58];
  v54 = v24;
  v55 = v214;
  v186 = v23;
  v56 = (v214 + 13);
  v187 = v214[13];
  v57 = v206;
  v58 = v207;
  v187(v206);
  v59 = sub_1CEFE4E68();
  sub_1CF9E5A48();
  v197 = v30;
  v60 = v55[1];
  v60(v57, v58);
  v61 = v200;
  sub_1CF9E5D88();
  v62 = sub_1CF9E5D18();
  v64 = v63;
  (*(v54 + 8))(v61, v186);
  aBlock = v62;
  v218 = v64;
  v65 = v188;
  v188 = v56;
  v66 = v187;
  (v187)(v57, v65, v58);
  v67 = v66;
  v186 = v59;
  v68 = v208;
  v69 = v215;
  sub_1CF9E5A48();
  v214 = v55 + 1;
  v177 = v60;
  v60(v57, v58);

  v70 = v197 + 8;
  v200 = *(v197 + 8);
  (v200)(v69, v212);
  v71 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v72 = sub_1CF9E5928();
  aBlock = 0;
  LODWORD(v64) = [v71 createDirectoryAtURL:v72 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  if (!v64)
  {
    v86 = aBlock;
    v87 = sub_1CF9E57F8();

    swift_willThrow();
    v88 = fpfs_current_or_default_log();
    v89 = v199;
    sub_1CF9E6128();
    v90 = v210;

    v91 = v87;
    v92 = sub_1CF9E6108();
    v93 = sub_1CF9E72A8();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      aBlock = v96;
      *v94 = 136315394;
      v97 = v90[3];
      v98 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v100 = sub_1CEFD0DF0(v98, v99, &aBlock);

      *(v94 + 4) = v100;
      *(v94 + 12) = 2112;
      swift_getErrorValue();
      v101 = Error.prettyDescription.getter(v216);
      *(v94 + 14) = v101;
      *v95 = v101;
      _os_log_impl(&dword_1CEFC7000, v92, v93, "Failed to mkdir for DB backup on %s : %@", v94, 0x16u);
      sub_1CEFCCC44(v95, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v95, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v96);
      v68 = v208;
      MEMORY[0x1D386CDC0](v96, -1, -1);
      MEMORY[0x1D386CDC0](v94, -1, -1);

      (*(v204 + 8))(v199, v205);
    }

    else
    {

      (*(v204 + 8))(v89, v205);
    }

    v115 = v203;
    swift_beginAccess();
    v116 = swift_weakLoadStrong();
    if (v116)
    {
      *(v116 + 96) = 0;
    }

    v115(v116);

    v117 = v212;
    v118 = v200;
    (v200)(v68, v212);
    v118(v213, v117);
    v118(v201, v117);
LABEL_24:

    goto LABEL_25;
  }

  v73 = v210;
  v74 = v210[3];
  v75 = aBlock;
  v76 = v74;
  v77 = [v76 pathComponents];
  v78 = sub_1CF9E6D48();

  v79 = *(v78 + 16);

  if (v79 < 2)
  {
    v80 = *MEMORY[0x1E6967178];
  }

  else
  {
    v80 = [v76 lastPathComponent];
    if (!v80)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v80 = sub_1CF9E6888();
    }
  }

  aBlock = 0;
  v218 = 0xE000000000000000;
  v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  MEMORY[0x1D3868CC0](v102);

  MEMORY[0x1D3868CC0](45, 0xE100000000000000);
  v103 = v189;
  sub_1CF9E5CC8();
  sub_1CF9E5C98();
  (*(v190 + 8))(v103, v191);
  sub_1CF9E6F78();
  v104 = v206;
  v105 = v207;
  (v67)(v206, *MEMORY[0x1E6968F70], v207);
  v106 = v211;
  sub_1CF9E5A48();
  v177(v104, v105);

  v107 = v73[7];
  if ((v73[6])(v106))
  {
    v214 = v76;

    is_internal_build = fpfs_is_internal_build();
    v176 = v70;
    v199 = v80;
    if (!is_internal_build)
    {
      goto LABEL_29;
    }

    v109 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v110 = sub_1CF9E6888();
    v111 = [v109 initWithSuiteName_];

    if (!v111)
    {
      goto LABEL_29;
    }

    v112 = sub_1CF9E6888();
    v113 = [v111 BOOLForKey_];

    if (v113)
    {
      v114 = 7176;
    }

    else
    {
LABEL_29:
      v114 = 3080;
    }

    v209 = v114;
    v124 = v180;
    v125 = v178;
    v126 = v212;
    v127 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v192(v125, v211, v126);
    v128 = v210;

    v129 = sub_1CF9E6108();
    v130 = sub_1CF9E7288();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      aBlock = v132;
      *v131 = 136315394;
      v133 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v135 = sub_1CEFD0DF0(v133, v134, &aBlock);

      *(v131 + 4) = v135;
      *(v131 + 12) = 2080;
      v136 = sub_1CF9E5928();
      v137 = [v136 fp_shortDescription];

      v138 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v140 = v139;

      v126 = v212;
      (v200)(v125, v212);
      v141 = sub_1CEFD0DF0(v138, v140, &aBlock);

      *(v131 + 14) = v141;
      _os_log_impl(&dword_1CEFC7000, v129, v130, "🧹 Periodic FPCK starting for %s with DB at %s", v131, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v132, -1, -1);
      v142 = v131;
      v128 = v210;
      MEMORY[0x1D386CDC0](v142, -1, -1);
    }

    else
    {

      (v200)(v125, v126);
    }

    (*(v204 + 8))(v124, v205);
    v207 = [objc_opt_self() sharedManager];
    v143 = v179;
    if (v128[4])
    {
      v206 = sub_1CF9E6618();
    }

    else
    {
      v206 = 0;
    }

    v191 = a10;
    v190 = a9;
    v144 = ~v143;
    v205 = sub_1CF9E5928();
    v204 = sub_1CF9E5928();
    v203 = sub_1CF9E6D28();
    if (v128[9])
    {
      v145 = v128[8];
      v202 = sub_1CF9E6888();
    }

    else
    {
      v202 = 0;
    }

    v189 = v128[13];
    v146 = v192;
    v192(v215, v201, v126);
    v146(v194, v211, v126);
    v147 = v128;
    v148 = (v143 + 56) & v144;
    v149 = (v181 + v143 + v148) & v144;
    v150 = (v181 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
    v151 = (v150 + 11) & 0xFFFFFFFFFFFFFFF8;
    v152 = (v151 + 11) & 0xFFFFFFFFFFFFFFF8;
    v193 = (v152 + 15) & 0xFFFFFFFFFFFFFFF8;
    v153 = swift_allocObject();
    v154 = v198;
    *(v153 + 2) = sub_1CF701DD8;
    *(v153 + 3) = v154;
    v155 = v182;
    *(v153 + 4) = v147;
    *(v153 + 5) = v155;
    *(v153 + 6) = v195;
    v156 = *(v197 + 32);
    v156(&v153[v148], v215, v126);
    v156(&v153[v149], v194, v126);
    *&v153[v150] = v196;
    v157 = v185;
    *&v153[v151] = v185;
    v158 = v209;
    *&v153[v152] = v209;
    v159 = &v153[v193];
    *v159 = v183;
    v159[8] = v184 & 1;
    v160 = &v153[(v152 + 31) & 0xFFFFFFFFFFFFFFF8];
    v161 = v190;
    v162 = v191;
    *v160 = v190;
    v160[1] = v162;
    v221 = sub_1CF701DE4;
    v222 = v153;
    aBlock = MEMORY[0x1E69E9820];
    v218 = 1107296256;
    v219 = sub_1CF70176C;
    v220 = &block_descriptor_35;
    v163 = _Block_copy(&aBlock);

    sub_1CF03C63C(v161);

    LOBYTE(v175) = 0;
    LOWORD(v174) = 1;
    v173 = v158;
    v164 = v202;
    v165 = v207;
    v166 = v206;
    v167 = v205;
    v168 = v204;
    v169 = v203;
    [v207 prepareFPCKRun:v214 domainUserInfo:v206 domainRootURL:v205 databaseBackupPath:v204 urls:v203 volumeRole:v157 personaIdentifier:v202 options:v173 reason:20 fpfs:v174 iCDPackageDetection:v189 launchType:v175 runOnWorkQueue:v163 completionHandler:?];
    _Block_release(v163);

    v170 = v212;
    v171 = v200;
    (v200)(v211, v212);
    v172 = v208;
    sub_1CF700518();

    v171(v172, v170);
    v171(v213, v170);
    result = (v171)(v201, v170);
  }

  else
  {
    swift_beginAccess();
    v121 = swift_weakLoadStrong();
    if (v121)
    {
      *(v121 + 96) = 0;
    }

    v203(v121);

    v122 = v212;
    v123 = v200;
    (v200)(v211, v212);

    sub_1CF700518();

    v123(v68, v122);
    v123(v213, v122);
    result = (v123)(v201, v122);
  }

LABEL_25:
  v120 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF7004B0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 96) = 0;
  }

  return a2(Strong);
}

void sub_1CF700518()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v1 = sub_1CF9E5928();
  v9[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v9];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x1E69E9840];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_1CF9E57F8();

    swift_willThrow();
    v8 = *MEMORY[0x1E69E9840];
  }
}

void sub_1CF700630(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  v72 = a7;
  v78 = a4;
  v22 = sub_1CF9E63A8();
  v77 = *(v22 - 1);
  v23 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1CF9E6448();
  v74 = *(v76 - 8);
  v25 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CF9E6118();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v72 = v22;
    v33 = a3;
    v34 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v35 = a3;
    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E72A8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v73 = a5;
      v40 = v39;
      *v38 = 138412290;
      swift_getErrorValue();
      v41 = Error.prettyDescription.getter(v79);
      *(v38 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&dword_1CEFC7000, v36, v37, "Failed to prepare FPCK run: %@", v38, 0xCu);
      sub_1CEFCCC44(v40, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v42 = v40;
      a5 = v73;
      MEMORY[0x1D386CDC0](v42, -1, -1);
      MEMORY[0x1D386CDC0](v38, -1, -1);
    }

    (*(v29 + 8))(v32, v28);
    if (qword_1EDEA6A18 != -1)
    {
      swift_once();
    }

    v43 = swift_allocObject();
    *(v43 + 16) = v78;
    *(v43 + 24) = a5;
    v85 = sub_1CEFFD05C;
    v86 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v82 = 1107296256;
    v83 = sub_1CEFCA444;
    v84 = &block_descriptor_73_0;
    v44 = _Block_copy(&aBlock);

    sub_1CF9E63F8();
    v80 = MEMORY[0x1E69E7CC0];
    sub_1CF701F8C(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v45 = v75;
    v46 = v72;
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v27, v45, v44);
    _Block_release(v44);

    (*(v77 + 8))(v45, v46);
    (*(v74 + 8))(v27, v76);
  }

  else
  {
    v77 = a1;
    v73 = a5;
    v74 = a17;
    v69 = a14;
    v75 = a13;
    LODWORD(v76) = a12;
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    v49 = v72;
    v48[2] = v47;
    v48[3] = v49;
    v48[4] = a8;
    v50 = objc_opt_self();

    v72 = [v50 sharedManager];
    v51 = a6[4];
    v70 = a6[3];
    if (v51)
    {
      v71 = sub_1CF9E6618();
    }

    else
    {
      v71 = 0;
    }

    v68 = sub_1CF9E5928();
    v67 = sub_1CF9E5928();
    sub_1CF9E5A58();
    v66 = sub_1CF9E6D28();
    v65 = a6[13];
    v85 = sub_1CF701F04;
    v86 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v82 = 1107296256;
    v83 = sub_1CF5D9124;
    v84 = &block_descriptor_61;
    v52 = _Block_copy(&aBlock);

    if (a15)
    {
      v53 = -1;
    }

    else
    {
      v53 = v69;
    }

    v54 = swift_allocObject();
    v54[2] = a6;
    v54[3] = a16;
    v55 = v73;
    v56 = v78;
    v54[4] = v74;
    v54[5] = v56;
    v54[6] = v55;
    v85 = sub_1CF701F10;
    v86 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v82 = 1107296256;
    v83 = sub_1CF701680;
    v84 = &block_descriptor_67_1;
    v57 = _Block_copy(&aBlock);

    sub_1CF03C63C(a16);

    v64 = v53;
    LOWORD(v63) = 1;
    v59 = v71;
    v58 = v72;
    v60 = v68;
    v61 = v67;
    v62 = v66;
    [v72 scheduleFPCKRun:v70 domainUserInfo:v71 domainRootURL:v68 databaseBackupPath:v67 urls:v66 volumeRole:v76 options:v75 reason:20 fpfs:v63 iCDPackageDetection:v65 launchType:a6 updateReceiver:v52 shouldPause:v64 contentBarrier:v77 proxy:v57 completionHandler:?];
    _Block_release(v57);
    _Block_release(v52);
  }
}

id sub_1CF700E24(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v15 = type metadata accessor for FPShouldPauseResult();
    v16 = objc_allocWithZone(v15);
    v16[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause] = 1;
    *&v16[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore] = 0;
    v26.receiver = v16;
    v26.super_class = v15;
    return objc_msgSendSuper2(&v26, sel_init);
  }

  v4 = Strong;
  if ((*(Strong + 97) & 1) == 0)
  {
    v17 = type metadata accessor for FPShouldPauseResult();
    v18 = objc_allocWithZone(v17);
    v18[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause] = 1;
    *&v18[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore] = 0;
    v25.receiver = v18;
    v25.super_class = v17;
    v19 = objc_msgSendSuper2(&v25, sel_init);
LABEL_12:
    v14 = v19;
LABEL_13:

    return v14;
  }

  if ((a2() & 1) == 0)
  {
    v20 = type metadata accessor for FPShouldPauseResult();
    v21 = objc_allocWithZone(v20);
    v21[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause] = 0;
    *&v21[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore] = 0;
    v24.receiver = v21;
    v24.super_class = v20;
    v19 = objc_msgSendSuper2(&v24, sel_init);
    goto LABEL_12;
  }

  *(v4 + 96) = 2;
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *(v5 + 56);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF702384;
  *(v7 + 24) = v5;
  aBlock[4] = sub_1CF1C0B54;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_93;
  v8 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
LABEL_6:
    if (qword_1EC4BCD70 != -1)
    {
      swift_once();
    }

    v10 = qword_1EC4EBE88;
    v11 = type metadata accessor for FPShouldPauseResult();
    v12 = objc_allocWithZone(v11);
    v12[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause] = 1;
    *&v12[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore] = v10;
    v22.receiver = v12;
    v22.super_class = v11;
    v13 = v10;
    v14 = objc_msgSendSuper2(&v22, sel_init);

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF701134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a4;
  v28 = sub_1CF9E63A8();
  v33 = *(v28 - 8);
  v16 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1CF9E6448();
  v30 = *(v32 - 8);
  v19 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEA6A18 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDEBB898;
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a5;
  v22[4] = a7;
  v22[5] = a8;
  v22[6] = a1;
  v22[7] = a2;
  v22[8] = v31;
  v22[9] = a9;
  v22[10] = a10;
  aBlock[4] = sub_1CF701FD4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_79_0;
  v23 = _Block_copy(aBlock);

  v24 = a5;
  sub_1CF03C63C(a7);

  sub_1CF9E63F8();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1CF701F8C(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v25 = v28;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v21, v18, v23);
  _Block_release(v23);
  (*(v33 + 8))(v18, v25);
  (*(v30 + 8))(v21, v32);
}

uint64_t sub_1CF7014A8(uint64_t a1, id a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1;
    v14 = *(v12 + 56);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1CF70200C;
    *(v15 + 24) = v12;
    aBlock[4] = sub_1CEFFD054;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFFD02C;
    aBlock[3] = &block_descriptor_85_1;
    v16 = _Block_copy(aBlock);
    swift_retain_n();

    dispatch_sync(v14, v16);
    _Block_release(v16);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
      return result;
    }

    v18 = *(v13 + 16);
    *(v13 + 16) = 0;
  }

  if (a2)
  {
    if (a3)
    {
      v19 = a2;
      a3(a2, 0, 0, 1);
    }
  }

  else if (a3)
  {
    a1 = a3(a5, a6, a7, 0);
  }

  return a8(a1);
}

void sub_1CF701680(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;
  v12 = sub_1CF9E6638();

  v14 = a3;
  v13 = a5;
  v8(v9, v11, v14, v12, a5);
}

uint64_t sub_1CF70176C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  v9 = a3;
  v10 = a4;
  v8(a2, v9, a4);

  return swift_unknownObjectRelease();
}

uint64_t PeriodicFPCK.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 120);

  v6 = *(v0 + 136);

  v7 = *(v0 + 152);

  v8 = *(v0 + 168);
  sub_1CEFF7124(*(v0 + 160));
  return v0;
}

uint64_t PeriodicFPCK.__deallocating_deinit()
{
  PeriodicFPCK.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1CF701980()
{
  result = qword_1EC4C28D8;
  if (!qword_1EC4C28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C28D8);
  }

  return result;
}

uint64_t sub_1CF7019D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF701A44(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1CF701B38;

  return v6(v2 + 16);
}

uint64_t sub_1CF701B38()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1CF701C68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CF0264D8;

  return sub_1CF701A44(a1, v5);
}

uint64_t sub_1CF701D20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CF0262EC;

  return sub_1CF701A44(a1, v5);
}

void sub_1CF701DE4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(sub_1CF9E5A58() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 56) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 11) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 11) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF700630(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + v9, v3 + v11, *(v3 + v12), *(v3 + v13), *(v3 + v14), *(v3 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((v14 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_1CF701F40()
{
  result = qword_1EDEAED70;
  if (!qword_1EDEAED70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEAED70);
  }

  return result;
}

uint64_t sub_1CF701F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF702014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  if (*(a1 + 97) != 1)
  {
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = sub_1CF9E6108();
    v21 = sub_1CF9E7288();
    if (!os_log_type_enabled(v17, v21))
    {
      v15 = 1;
      goto LABEL_10;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1CEFC7000, v17, v21, "🧹 Periodic FPCK is paused because it has been unregistered", v19, 2u);
    v15 = 1;
LABEL_7:
    MEMORY[0x1D386CDC0](v19, -1, -1);
LABEL_10:

    (*(v5 + 8))(v11, v4);
    return (*(a2 + 16))(a2, v15 & 1, 0);
  }

  v13 = *(a1 + 112);
  v12 = *(a1 + 120);

  v15 = v13(v14);

  if (v15)
  {
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = sub_1CF9E6108();
    v18 = sub_1CF9E7288();
    if (!os_log_type_enabled(v17, v18))
    {
      v11 = v8;
      goto LABEL_10;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1CEFC7000, v17, v18, "🧹 Periodic FPCK is paused because system indicated", v19, 2u);
    v11 = v8;
    goto LABEL_7;
  }

  return (*(a2 + 16))(a2, v15 & 1, 0);
}

uint64_t objectdestroyTm_6()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_1CEFE4714(v0[5], v0[6]);

  return swift_deallocObject();
}

uint64_t sub_1CF7022A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0262EC;

  return sub_1CF6FD9B8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CF7023A0()
{
  if (*(v0 + 48) != 1)
  {
    return *(v0 + 40);
  }

  result = sub_1CF7023DC(v0);
  *(v0 + 40) = result;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_1CF7023DC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);

  v4 = sub_1CF663824(v3);
  v6 = v5;

  if (!v4)
  {
    return 0;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(*result + 464);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2B0, &unk_1CF9FD410);
    v8(&v10, 1, "itemCount", 9, 2, 2, sub_1CF7035B0, v6, v9);

    if (v11)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CF702508@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  result = sub_1CF4AC9EC(v6, v4, v5);
  if (v2)
  {

    result = 0;
  }

  *a2 = result;
  *(a2 + 8) = v2 != 0;
  return result;
}

uint64_t sub_1CF70258C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = v6;
  v50 = a4;
  v51 = a5;
  v52 = a3;
  v12 = sub_1CF9E6118();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v46 - v20;
  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  (*(*(v24 - 8) + 56))(a6, 1, 1, v24);
  result = swift_beginAccess();
  v26 = *(v8 + 24);
  if (!*(v26 + 16))
  {
    return result;
  }

  v27 = *(v8 + 24);

  v28 = sub_1CEFE863C(a2);
  if ((v29 & 1) == 0)
  {
  }

  v46 = v15;
  v30 = *(*(v26 + 56) + 8 * v28);

  swift_beginAccess();
  v31 = *(v8 + 16);
  if (!*(v31 + 16))
  {
  }

  v32 = sub_1CEFE863C(a2);
  if ((v33 & 1) == 0)
  {
  }

  v34 = *(*(v31 + 56) + 8 * v32);

  v54 = v22;
  v55 = v23;
  v35 = v51;
  v36 = v50;
  sub_1CF20BAC8(&v54, v52, v50, v51, &v56);
  if (v7)
  {
    v37 = fpfs_current_or_default_log();
    v38 = v47;
    sub_1CF9E6128();
    v39 = v7;
    v40 = sub_1CF9E6108();
    v41 = sub_1CF9E72A8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138543362;
      swift_getErrorValue();
      v44 = Error.prettyDescription.getter(v53);
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&dword_1CEFC7000, v40, v41, "Error fetching the item in the reconciliation table: %{public}@", v42, 0xCu);
      sub_1CEFCCC44(v43, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v43, -1, -1);
      MEMORY[0x1D386CDC0](v42, -1, -1);
    }

    else
    {
    }

    return (*(v48 + 8))(v38, v49);
  }

  else
  {
    v45 = v56;
    if (v56)
    {
      v54 = v56;
      sub_1CF48C684(&v54, 0, v52, v36, v35, v21);
      sub_1CEFCCC44(a6, &unk_1EC4BFBB0, &qword_1CF9FCB90);

      return sub_1CF703540(v21, a6);
    }

    else
    {
    }
  }
}

uint64_t sub_1CF702B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = sub_1CF9E6118();
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(v6 + 16);
  if (*(v17 + 16))
  {

    v18 = sub_1CEFE863C(a1);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      MEMORY[0x1EEE9AC00](v21);
      *(&v32 - 2) = a3;
      *(&v32 - 1) = a4;
      sub_1CF4B9A30(a2, sub_1CF703514, (&v32 - 4), a5, a6);
    }
  }

  v23 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v24 = a1;
  v25 = sub_1CF9E6108();
  v26 = sub_1CF9E72A8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v27 = 136315138;
    v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v31 = sub_1CEFD0DF0(v29, v30, &v34);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1CEFC7000, v25, v26, "Failed to fetch upload errors for %s, no snapshot", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1D386CDC0](v28, -1, -1);
    MEMORY[0x1D386CDC0](v27, -1, -1);
  }

  return (*(v13 + 8))(v16, v33);
}

BOOL sub_1CF702E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v98 = a2;
  swift_beginAccess();
  v14 = *(v6 + 24);
  if (!*(v14 + 16))
  {
    goto LABEL_9;
  }

  v15 = sub_1CEFE863C(a3);
  if ((v16 & 1) == 0)
  {

LABEL_9:
    sub_1CEFE528C(__src);
    v23 = 0;
    *(a1 + 240) = *&__src[240];
    v24 = *&__src[208];
    *(a1 + 192) = *&__src[192];
    *(a1 + 208) = v24;
    *(a1 + 224) = *&__src[224];
    v25 = *&__src[144];
    *(a1 + 128) = *&__src[128];
    *(a1 + 144) = v25;
    v26 = *&__src[176];
    *(a1 + 160) = *&__src[160];
    *(a1 + 176) = v26;
    v27 = *&__src[80];
    *(a1 + 64) = *&__src[64];
    *(a1 + 80) = v27;
    v28 = *&__src[112];
    *(a1 + 96) = *&__src[96];
    *(a1 + 112) = v28;
    v29 = *&__src[16];
    *a1 = *__src;
    *(a1 + 16) = v29;
    v30 = *&__src[32];
    v31 = *&__src[48];
LABEL_10:
    *(a1 + 32) = v30;
    *(a1 + 48) = v31;
    return v23;
  }

  v42 = a5;
  v17 = a6;
  v18 = *(*(v14 + 56) + 8 * v15);

  swift_beginAccess();
  v19 = *(v8 + 16);
  if (!*(v19 + 16))
  {

    goto LABEL_9;
  }

  v20 = sub_1CEFE863C(a3);
  if ((v21 & 1) == 0)
  {

    goto LABEL_9;
  }

  v22 = *(*(v19 + 56) + 8 * v20);

  v81 = v98;
  v23 = v22;
  sub_1CF48DF18(&v81, a4, v42, v17, &v82);
  if (!v7)
  {
    v64 = v97;
    v63[12] = v94;
    v63[13] = v95;
    v63[14] = v96;
    v63[8] = v90;
    v63[9] = v91;
    v63[10] = v92;
    v63[11] = v93;
    v63[4] = v86;
    v63[5] = v87;
    v63[6] = v88;
    v63[7] = v89;
    v63[0] = v82;
    v63[1] = v83;
    v63[2] = v84;
    v63[3] = v85;
    v77 = v94;
    v78 = v95;
    v79 = v96;
    v80 = v97;
    v73 = v90;
    v74 = v91;
    v75 = v92;
    v76 = v93;
    v69 = v86;
    v70 = v87;
    v71 = v88;
    v72 = v89;
    v65 = v82;
    v66 = v83;
    v67 = v84;
    v68 = v85;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v65) == 1)
    {
LABEL_14:

      goto LABEL_9;
    }

    v61 = v98;
    sub_1CF68E230(&v61, a4, v42, v17, __src);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v60, __src, sizeof(v60));
    if (sub_1CEFF755C(v60) == 1)
    {
      sub_1CEFCCC44(v63, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      goto LABEL_14;
    }

    if ((v60[56] & 4) != 0)
    {
      if ((BYTE9(v65) & 1) == 0)
      {
        goto LABEL_37;
      }

      v33 = (v60[56] & 0x30) == 0;
    }

    else
    {
      if ((BYTE9(v65) & 1) == 0)
      {
        goto LABEL_37;
      }

      v33 = 0;
    }

    sub_1CF7034A4(&v60[26], &v43);
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v34 = qword_1EDEABDE8;
    sub_1CEFCCC44(&v60[26], &unk_1EC4BFE00, &unk_1CF9FEF00);
    if (v34)
    {
      if ((v34 & 0x10) != 0)
      {
        if (!v33)
        {
          goto LABEL_35;
        }
      }

      else if (!v33)
      {
        v34 |= 0x10uLL;
LABEL_35:
        if ((v60[29] & v34) == 0 && (v60[28] & 0x51) == 0)
        {
          if (LOBYTE(v60[15]) <= 1u)
          {
            if (!LOBYTE(v60[15]))
            {

              sub_1CEFCCC44(__dst, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              goto LABEL_39;
            }
          }

          else if (LOBYTE(v60[15]) != 2 && LOBYTE(v60[15]) != 3)
          {
            v23 = *&v60[13] != 0;
            sub_1CEFCCC44(__dst, &unk_1EC4BFD80, &unk_1CFA0A2A0);

            goto LABEL_40;
          }

          sub_1CEFCCC44(__dst, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_38:

LABEL_39:
          v23 = 0;
LABEL_40:
          v55 = v77;
          v56 = v78;
          v57 = v79;
          v58 = v80;
          v51 = v73;
          v52 = v74;
          v53 = v75;
          v54 = v76;
          v47 = v69;
          v48 = v70;
          v49 = v71;
          v50 = v72;
          v43 = v65;
          v44 = v66;
          v45 = v67;
          v46 = v68;
          nullsub_1(&v43);
          v36 = v56;
          *(a1 + 192) = v55;
          *(a1 + 208) = v36;
          *(a1 + 224) = v57;
          *(a1 + 240) = v58;
          v37 = v52;
          *(a1 + 128) = v51;
          *(a1 + 144) = v37;
          v38 = v54;
          *(a1 + 160) = v53;
          *(a1 + 176) = v38;
          v39 = v48;
          *(a1 + 64) = v47;
          *(a1 + 80) = v39;
          v40 = v50;
          *(a1 + 96) = v49;
          *(a1 + 112) = v40;
          v41 = v44;
          *a1 = v43;
          *(a1 + 16) = v41;
          v30 = v45;
          v31 = v46;
          goto LABEL_10;
        }

LABEL_37:

        sub_1CEFCCC44(__dst, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        goto LABEL_38;
      }

      v35 = v34 & 0xFFFFDFFFFFFEF6E7;
      if ((v34 & 0x4000) != 0)
      {
LABEL_33:
        v34 = (v34 | 0x64090000008000) & v35;
        goto LABEL_35;
      }
    }

    else
    {
      if (!v33)
      {
        v34 = 16;
        goto LABEL_35;
      }

      v35 = 0;
    }

    v34 |= 0x4000uLL;
    goto LABEL_33;
  }

  return v23;
}

uint64_t sub_1CF703440()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF7034A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE00, &unk_1CF9FEF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF703514()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  return 1;
}

uint64_t sub_1CF703540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF7035CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  a3(&v12, a1, v9);
  result = 0;
  v11 = BYTE4(v12);
  *a2 = v12;
  *(a2 + 4) = v11;
  return result;
}

uint64_t sub_1CF70381C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v50 = a2;
  v66 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E5A58();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  v8 = sub_1CF9E5D98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v65[0] = sub_1CF9E5A18();
  *(&v65[0] + 1) = v13;
  MEMORY[0x1D3868CC0](0x692F66726168772FLL, 0xED0000747365676ELL);
  v14 = *(&v65[0] + 1);
  v51 = *&v65[0];

  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  sub_1CF9E5D88();
  v15 = sub_1CF9E5D18();
  v17 = v16;
  (*(v9 + 8))(v12, v8);
  v18 = v7;
  v19 = v56;
  MEMORY[0x1D3868CC0](v15, v17);

  v20 = v65[0];
  sub_1CF9E58C8();
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  v23 = v53;
  sub_1CF18A5A0(v18, 1, v22, v19);
  if (!v23)
  {
    v53 = v18;
    v25 = v54;

    memset(v65, 0, sizeof(v65));
    MEMORY[0x1EEE9AC00](v26);
    *(&v50 - 2) = v20;
    *(&v50 - 2) = v65;
    sub_1CEFE1894(sub_1CF705BF4);

    v27 = [v21 defaultManager];
    v28 = sub_1CF9E5928();
    v58[0] = v51;
    v58[1] = v14;
    MEMORY[0x1D3868CC0](47, 0xE100000000000000);
    v51 = *(&v65[0] + 1);
    v57 = *(&v65[0] + 1);
    v29 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v29);

    v30 = v52;
    sub_1CF9E58C8();

    v31 = sub_1CF9E5928();
    v32 = *(v25 + 8);
    v33 = v55;
    v32(v30, v55);
    v58[0] = 0;
    LOBYTE(v30) = [v27 moveItemAtURL:v28 toURL:v31 error:v58];

    if ((v30 & 1) == 0)
    {
      v40 = v58[0];
      sub_1CF9E57F8();

      swift_willThrow();
      result = (v32)(v53, v33);
      goto LABEL_14;
    }

    if (v56 >> 62 == 2)
    {
      v41 = *((v56 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v62 = *((v56 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v63 = v41;
      v64 = *((v56 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v42 = v58[0];
      v43 = sub_1CF189010();
      v34 = v50;
      if (!*(v43 + 2))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      v44 = *(v43 + 4);
      v45 = *(v43 + 5);

      v46 = __OFSUB__(v45, v44);
      v47 = v45 - v44;
      if (v46)
      {
        goto LABEL_17;
      }

      result = (v32)(v53, v33);
      *v34 = v51;
      *(v34 + 8) = 0;
      *(v34 + 12) = 1;
      *(v34 + 16) = xmmword_1CF9F4E20;
      *(v34 + 32) = v44;
      *(v34 + 40) = v47;
      *(v34 + 48) = 0;
    }

    else
    {
      v34 = v50;
      if (v56 >> 62 == 3)
      {
        v35 = *((v56 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v59 = *((v56 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v60 = v35;
        v61 = *((v56 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v36 = v58[0];
        v37 = sub_1CF189010();
        if (*(v37 + 2))
        {
          v38 = *(v37 + 4);

          v39 = *(&v59 + 1);
          result = (v32)(v53, v33);
          *v34 = v51;
          *(v34 + 8) = 0;
          *(v34 + 12) = 1;
          *(v34 + 16) = xmmword_1CF9F4E20;
          *(v34 + 32) = v38;
          *(v34 + 40) = v39;
          *(v34 + 48) = 0;
          *(v34 + 56) = 1;
          goto LABEL_14;
        }

        __break(1u);
        goto LABEL_16;
      }

      v48 = v58[0];
      result = (v32)(v53, v33);
      *v34 = v51;
      *(v34 + 8) = 0;
      *(v34 + 12) = 1;
      *(v34 + 16) = xmmword_1CF9F4E20;
      *(v34 + 32) = 0;
      *(v34 + 40) = 0;
      *(v34 + 48) = 1;
    }

    *(v34 + 56) = 0;
    goto LABEL_14;
  }

  result = (*(v54 + 8))(v18, v55);
LABEL_14:
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF703E34(__int128 *a1, uint64_t (*a2)(_OWORD *))
{
  v4 = a1[1];
  v28 = *a1;
  v29 = v4;
  v5 = a1[3];
  v30 = a1[2];
  v31 = v5;
  if (*(&v4 + 1) >> 60 == 11)
  {
    goto LABEL_4;
  }

  v6 = a2;
  if (*(&v29 + 1) >> 60 == 15)
  {
    sub_1CF7042C0(&v28);
    a2 = v6;
LABEL_4:
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    return sub_1CF9BF584(&v23, a2);
  }

  v9 = sub_1CF9E5688();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = a1[1];
  v23 = *a1;
  v24 = v12;
  v13 = a1[3];
  v25 = a1[2];
  v26 = v13;
  sub_1CF023C28(&v28, &v19);
  sub_1CF023C28(&v28, &v19);
  sub_1CF1AE1DC(&v23, &v19);
  sub_1CF9E5678();
  sub_1CF190978();
  sub_1CF9E5668();

  sub_1CF7042C0(&v28);
  if (v3)
  {
    sub_1CF7042C0(&v28);
    v19 = v28;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    return sub_1CF1AE25C(&v19);
  }

  else
  {
    sub_1CF70381C(v15, &v19);
    v27[0] = v19;
    v27[1] = v20;
    v27[2] = v21;
    v27[3] = v22;
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    sub_1CF1AE1DC(v27, v14);
    v6(&v15);
    v14[0] = v15;
    v14[1] = v16;
    v14[2] = v17;
    v14[3] = v18;
    sub_1CF7042C0(v14);
    sub_1CF704088(v2, v27);
    sub_1CF1AE25C(v27);

    sub_1CF7042C0(&v28);
    return sub_1CF7042C0(&v28);
  }
}

uint64_t sub_1CF704088(uint64_t a1, uint64_t *a2)
{
  v6 = *a2;
  result = sub_1CEFE1894(sub_1CF2AF9F4);
  *(a1 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
  {
    v4 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF7041E0()
{
  v0 = *sub_1CF9BF5C8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DocumentWharfForTesting()
{
  result = qword_1EC4C28E8;
  if (!qword_1EC4C28E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF7042C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF260, &unk_1CFA01B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF704328@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E53C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  v19 = a1;
  v20 = v15;
  result = sub_1CEFE1894(sub_1CF6FCF48);
  if (!v2)
  {
    v11 = WORD2(v15[0]);
    v12 = sub_1CF9E61D8() & v11;
    if (v12 == sub_1CF9E61D8())
    {
      result = sub_1CF70609C(a1, v16);
      *a2 = result;
    }

    else
    {
      v14[3] = 22;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF198A44();
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v6 + 8))(v9, v5);
      result = swift_willThrow();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF704500@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AC00]) initWithFileDescriptor_];
  v4 = [v3 readDataToEndOfFile];
  v5 = sub_1CF9E5B88();
  v7 = v6;

  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v7;
  *a2 = result | 0x4000000000000000;
  return result;
}

uint64_t sub_1CF7045A8(int a1)
{
  v3 = sub_1CF9E53C8();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6118();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1E69E7CC8];
  v34 = &v47;
  v35 = v1;
  v36 = a1;
  v31 = sub_1CF7062AC;
  v32 = &v33;
  v45 = 0;
  v46 = 1;
  v44 = 0;
  v11 = swift_allocObject();
  v11[2] = &v45;
  v11[3] = sub_1CF7062CC;
  v11[4] = &v30;
  v11[5] = &v44;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF706304;
  *(v12 + 24) = v11;
  v42 = sub_1CF706310;
  v43 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1CF7037F0;
  v41 = &block_descriptor_36;
  v13 = _Block_copy(&aBlock);

  v14 = fpfs_fopendir();
  _Block_release(v13);

  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    if (v44)
    {
LABEL_3:
      swift_willThrow();
    }

    if ((v14 & 0x80000000) == 0)
    {
      result = swift_allocObject();
      *(result + 16) = v47;
      return result;
    }

    if (MEMORY[0x1D38683F0](v15))
    {
      if (MEMORY[0x1D38683F0]() == 9939394)
      {
        [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v17 = sub_1CF9E6138();
        if ((v17 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v17;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF198A44();
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*(v29 + 8))(v6, v3);
      }

      goto LABEL_3;
    }
  }

  aBlock = 0;
  v39 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD00000000000001ALL;
  v39 = 0x80000001CFA2DF30;
  v37 = v14;
  v18 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v18);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v19 = v39;
  v29 = aBlock;
  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E72B8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v23 = 136315650;
    v25 = sub_1CF9E7988();
    v27 = sub_1CEFD0DF0(v25, v26, &aBlock);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2048;
    *(v23 + 14) = 315;
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_1CEFD0DF0(v29, v19, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v21, v22, "[ASSERT] ‼️  %s:%lu: %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v24, -1, -1);
    MEMORY[0x1D386CDC0](v23, -1, -1);
  }

  (*(v28 + 8))(v10, v7);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF704B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a2;
  v5 = sub_1CF9E53C8();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6118();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v77 - v19;
  if (!a1)
  {
    return 0;
  }

  v80 = v6;
  v81 = v5;
  v78 = v18;
  v79 = v17;
  v21 = sub_1CF9E6A68();
  v84 = v22;
  LODWORD(v5) = *(a1 + 20);
  switch(v5)
  {
    case 4:
      goto LABEL_9;
    case 0xA:
      v93 = 0xF000000000000007;
      v92 = 0;
      v23 = swift_allocObject();
      *(v23 + 16) = &v93;
      *(v23 + 24) = sub_1CF706370;
      *(v23 + 32) = a3;
      *(v23 + 40) = &v92;
      a3 = swift_allocObject();
      *(a3 + 16) = sub_1CF7063B4;
      *(a3 + 24) = v23;
      v90 = sub_1CF50EB9C;
      v91 = a3;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = sub_1CF005DF8;
      v89 = &block_descriptor_75;
      v5 = _Block_copy(&aBlock);

      v12 = sub_1CF9E6978();
      v24 = fpfs_openat();

      _Block_release(v5);

      LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

      if (v23)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v92)
      {
        goto LABEL_35;
      }

      if (v24 < 0)
      {
        if (!MEMORY[0x1D38683F0](v25))
        {

          aBlock = 0;
          v87 = 0xE000000000000000;
          sub_1CF9E7948();

          aBlock = 0xD00000000000001ALL;
          v87 = 0x80000001CFA2DF30;
          v85 = v24;
          v44 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v44);

          MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
          v45 = aBlock;
          v46 = v87;
          v47 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v48 = sub_1CF9E6108();
          v49 = sub_1CF9E72B8();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            aBlock = v51;
            *v50 = 136315650;
            v52 = sub_1CF9E7988();
            v54 = sub_1CEFD0DF0(v52, v53, &aBlock);

            *(v50 + 4) = v54;
            *(v50 + 12) = 2048;
            *(v50 + 14) = 315;
            *(v50 + 22) = 2080;
            *(v50 + 24) = sub_1CEFD0DF0(v45, v46, &aBlock);
            _os_log_impl(&dword_1CEFC7000, v48, v49, "[ASSERT] ‼️  %s:%lu: %s", v50, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v51, -1, -1);
            MEMORY[0x1D386CDC0](v50, -1, -1);
          }

          (*(v78 + 8))(v15, v79);
          goto LABEL_51;
        }

        v35 = MEMORY[0x1D38683F0]();
        v37 = v80;
        v36 = v81;
        if (v35 != 9939394)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v26 = v93;
      if ((~v93 & 0xF000000000000007) != 0)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_9:
      v93 = 0xF000000000000007;
      v92 = 0;
      v27 = swift_allocObject();
      *(v27 + 16) = &v93;
      *(v27 + 24) = sub_1CF706338;
      *(v27 + 32) = a3;
      *(v27 + 40) = &v92;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_1CF706364;
      *(v28 + 24) = v27;
      v90 = sub_1CF005DC8;
      v91 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = sub_1CF005DF8;
      v89 = &block_descriptor_64;
      v5 = _Block_copy(&aBlock);

      sub_1CF9E6978();
      v29 = fpfs_openat();

      _Block_release(v5);

      LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

      if ((v27 & 1) == 0)
      {
        v20 = v92;
        if (v92)
        {
          goto LABEL_35;
        }

        if ((v29 & 0x80000000) == 0)
        {

          v26 = v93;
          if ((~v93 & 0xF000000000000007) == 0)
          {
            __break(1u);
            goto LABEL_19;
          }

LABEL_21:
          sub_1CF1C9498(v26, v21, v84);
          return 0;
        }

        if (!MEMORY[0x1D38683F0](v30))
        {

          aBlock = 0;
          v87 = 0xE000000000000000;
          sub_1CF9E7948();

          aBlock = 0xD00000000000001ALL;
          v87 = 0x80000001CFA2DF30;
          v85 = v29;
          v55 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v55);

          MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
          v56 = aBlock;
          v57 = v87;
          v58 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v59 = sub_1CF9E6108();
          v60 = sub_1CF9E72B8();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            aBlock = v62;
            *v61 = 136315650;
            v63 = sub_1CF9E7988();
            v65 = sub_1CEFD0DF0(v63, v64, &aBlock);

            *(v61 + 4) = v65;
            *(v61 + 12) = 2048;
            *(v61 + 14) = 315;
            *(v61 + 22) = 2080;
            *(v61 + 24) = sub_1CEFD0DF0(v56, v57, &aBlock);
            _os_log_impl(&dword_1CEFC7000, v59, v60, "[ASSERT] ‼️  %s:%lu: %s", v61, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v62, -1, -1);
            MEMORY[0x1D386CDC0](v61, -1, -1);
          }

          (*(v78 + 8))(v12, v79);
          goto LABEL_51;
        }

        v38 = MEMORY[0x1D38683F0]();
        v37 = v80;
        v36 = v81;
        if (v38 != 9939394)
        {
          goto LABEL_31;
        }

LABEL_30:
        [objc_opt_self() fp:2 errorForDataProtectionClass:?];
LABEL_35:
        swift_willThrow();
        swift_bridgeObjectRelease_n();
        sub_1CF4EB118(v93);
        return 0;
      }

      goto LABEL_38;
    case 8:
      v93 = 0xF000000000000007;
      v92 = 0;
      v31 = swift_allocObject();
      v31[2] = &v93;
      v31[3] = sub_1CF70638C;
      v31[4] = a3;
      v31[5] = &v92;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_1CF7063B4;
      *(v32 + 24) = v31;
      v90 = sub_1CF50EB9C;
      v91 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = sub_1CF005DF8;
      v89 = &block_descriptor_86;
      v33 = _Block_copy(&aBlock);

      LODWORD(v5) = sub_1CF9E6978();
      v29 = fpfs_openat();

      _Block_release(v33);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (v92)
        {
          goto LABEL_35;
        }

LABEL_19:
        if ((v29 & 0x80000000) == 0)
        {

          v26 = v93;
          if ((~v93 & 0xF000000000000007) != 0)
          {
            goto LABEL_21;
          }

          goto LABEL_40;
        }

        if (!MEMORY[0x1D38683F0](v26))
        {

          aBlock = 0;
          v87 = 0xE000000000000000;
          sub_1CF9E7948();

          aBlock = 0xD00000000000001ALL;
          v87 = 0x80000001CFA2DF30;
          v85 = v29;
          v66 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v66);

          MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
          v67 = aBlock;
          v68 = v87;
          v69 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v70 = sub_1CF9E6108();
          v71 = sub_1CF9E72B8();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            aBlock = v73;
            *v72 = 136315650;
            v74 = sub_1CF9E7988();
            v76 = sub_1CEFD0DF0(v74, v75, &aBlock);

            *(v72 + 4) = v76;
            *(v72 + 12) = 2048;
            *(v72 + 14) = 315;
            *(v72 + 22) = 2080;
            *(v72 + 24) = sub_1CEFD0DF0(v67, v68, &aBlock);
            _os_log_impl(&dword_1CEFC7000, v70, v71, "[ASSERT] ‼️  %s:%lu: %s", v72, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v73, -1, -1);
            MEMORY[0x1D386CDC0](v72, -1, -1);
          }

          (*(v78 + 8))(v20, v79);
          goto LABEL_51;
        }

        v39 = MEMORY[0x1D38683F0]();
        v37 = v80;
        v36 = v81;
        if (v39 == 9939394)
        {
          goto LABEL_30;
        }

LABEL_31:
        MEMORY[0x1D38683F0]();
        v40 = sub_1CF9E6138();
        if ((v40 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v40;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF198A44();
        v41 = v82;
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*(v37 + 8))(v41, v36);
        goto LABEL_35;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      break;
  }

  aBlock = 0;
  v87 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD000000000000014;
  v87 = 0x80000001CFA59530;
  LODWORD(v93) = v5;
  v43 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v43);

LABEL_51:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF705A74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  v20 = a1;
  v21 = v16;
  result = sub_1CEFE1894(sub_1CF198A9C);
  if (!v2)
  {
    v6 = WORD2(v16[0]);
    v7 = sub_1CF9E61D8() & v6;
    if (v7 == sub_1CF9E61D8())
    {
      result = sub_1CF70609C(a1, v17);
    }

    else
    {
      v8 = sub_1CF9E61C8() & v6;
      if (v8 == sub_1CF9E61C8())
      {
        result = sub_1CF7045A8(a1);
      }

      else
      {
        v9 = [objc_allocWithZone(MEMORY[0x1E696AC00]) initWithFileDescriptor_];
        v10 = [v9 readDataToEndOfFile];
        v11 = sub_1CF9E5B88();
        v13 = v12;

        v14 = swift_allocObject();
        *(v14 + 16) = v11;
        *(v14 + 24) = v13;
        result = v14 | 0x4000000000000000;
      }
    }

    *a2 = result;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF705BF4@<X0>(_DWORD *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = sub_1CF9E6978();
  LODWORD(v5) = stat((v6 + 32), v5);

  *a1 = v5;
  return result;
}

uint64_t sub_1CF705C50(unint64_t *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (v5)
    {

      sub_1CEFE4714(v4, v3);
      *&v18 = v4;
      *(&v18 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1CF9FA380;
      sub_1CEFE4714(0, 0xC000000000000000);
      result = sub_1CF705FAC(&v18);
      v8 = *(&v18 + 1) | 0x4000000000000000;
    }

    else
    {
      v15[1] = HIWORD(v4);
      v15[2] = HIBYTE(v4);
      v15[3] = v3 >> 8;
      v15[4] = v3 >> 16;
      v15[7] = HIDWORD(v3);
      v15[5] = v3 >> 24;
      v15[6] = v3 >> 40;
      v16 = a2;
      v6 = sub_1CEFE4714(v4, v3);
      v17 = v15;
      *&v18 = v4;
      WORD4(v18) = v3;
      BYTE10(v18) = BYTE2(v3);
      BYTE11(v18) = BYTE3(v3);
      BYTE12(v18) = BYTE4(v3);
      BYTE13(v18) = BYTE5(v3);
      BYTE14(v18) = BYTE6(v3);
      MEMORY[0x1EEE9AC00](v6);
      result = sub_1CF5162A0(sub_1CF7063C4);
      v8 = DWORD2(v18) | ((WORD6(v18) | (BYTE14(v18) << 16)) << 32);
    }

    *a1 = v18;
    a1[1] = v8;
    goto LABEL_12;
  }

  if (v5 != 2)
  {
    *(&v18 + 7) = 0;
    *&v18 = 0;
    MEMORY[0x1EEE9AC00](a1);
    result = sub_1CF5162A0(sub_1CF7063C4);
    goto LABEL_12;
  }

  v9 = *a1;

  sub_1CEFE4714(v4, v3);
  *&v18 = v4;
  *(&v18 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1CF9FA380;
  sub_1CEFE4714(0, 0xC000000000000000);
  sub_1CF9E5A68();
  v10 = *(&v18 + 1);
  v11 = *(v18 + 16);
  v12 = *(v18 + 24);
  result = sub_1CF9E5498();
  if (result)
  {
    if (__OFSUB__(v11, sub_1CF9E54C8()))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v12, v11))
    {
      v13 = sub_1CF9E54B8();
      MEMORY[0x1EEE9AC00](v13);
      result = sub_1CF5162A0(sub_1CF706250);
      *a1 = v18;
      a1[1] = v10 | 0x8000000000000000;
LABEL_12:
      v14 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF705FAC(int *a1)
{
  result = sub_1CF9E5AA8();
  v3 = *a1;
  if (a1[1] < v3)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(a1 + 1);

  result = sub_1CF9E5498();
  if (result)
  {
    result = sub_1CF9E54C8();
    if (!__OFSUB__(v3, result))
    {
      v5 = sub_1CF9E54B8();
      MEMORY[0x1EEE9AC00](v5);
      sub_1CF5162A0(sub_1CF7063C4);
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CF70609C(int a1, uint64_t a2)
{
  v5 = sub_1CF9E6938();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CF195D88(a2);
  v18 = result;
  v19 = v11;
  if (a2 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1CF9E5AF8();
  sub_1CF705C50(&v18, a1);
  v12 = v18;
  if (v2)
  {
    sub_1CEFE4714(v18, v19);
    return v12;
  }

  sub_1CF9E6918();
  result = sub_1CF9E68D8();
  if (!v13)
  {
    goto LABEL_9;
  }

  sub_1CF9E6918();
  v14 = sub_1CF9E68C8();
  v16 = v15;
  result = (*(v6 + 8))(v9, v5);
  if (v16 >> 60 != 15)
  {

    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v16;
    v12 = v17 | 0x4000000000000000;
    sub_1CEFE4714(v18, v19);
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

ssize_t sub_1CF706268@<X0>(ssize_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32) - v3;
  if (v3)
  {
    v5 = *(v1 + 32) - v3;
  }

  else
  {
    v5 = 0;
  }

  result = freadlink(*(v1 + 16), v3, v5);
  *a1 = result;
  return result;
}

uint64_t sub_1CF7062CC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = 0;
  }

  return result;
}

uint64_t sub_1CF706304(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1CF7035CC(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1CF706310()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1CF706338@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF7045A8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CF7063DC(int64_t a1, unsigned int a2, const void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v242 = a6;
  v240 = a8;
  v241 = a7;
  v246 = a5;
  v243 = a4;
  v244 = a3;
  v245 = a2;
  v9 = sub_1CF9E6118();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v239 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v239 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v239 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v239 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v239 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v239 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v239 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v239 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v52 = &v239 - v51;
  if (a1 <= 0x1FFFFFFFFFFFFLL)
  {
    if (a1 > 0xFFFFFFFFFFLL)
    {
      v53 = v246;
      if (a1 > 0x3FFFFFFFFFFLL)
      {
        if (a1 != 0x40000000000)
        {
          if (a1 != 0x200000000000)
          {
            if (a1 == 0x1000000000000)
            {
              v54 = v42;
              v55 = v48;
              v56 = fpfs_current_or_default_log();
              sub_1CF9E6128();

              v57 = sub_1CF9E6108();
              v58 = sub_1CF9E7288();

              if (os_log_type_enabled(v57, v58))
              {
                v59 = swift_slowAlloc();
                v60 = swift_slowAlloc();
                v247 = v60;
                *v59 = 136446466;
                v61 = sub_1CF7F5AAC(0x1000000000000uLL);
                v63 = v53;
                v64 = sub_1CEFD0DF0(v61, v62, &v247);

                *(v59 + 4) = v64;
                *(v59 + 12) = 2080;
                *(v59 + 14) = sub_1CEFD0DF0(v243, v63, &v247);
                _os_log_impl(&dword_1CEFC7000, v57, v58, "Repairing %{public}s on %s (setting a valid detached root bookmark)", v59, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1D386CDC0](v60, -1, -1);
                MEMORY[0x1D386CDC0](v59, -1, -1);
              }

              (*(v55 + 8))(v19, v54);
              v65 = sub_1CF709974(v245, v244, v242, v241);
              return v65 & 1;
            }

            goto LABEL_55;
          }

          v170 = v42;
          v171 = v48;
          v172 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v173 = sub_1CF9E6108();
          v174 = sub_1CF9E7288();

          if (os_log_type_enabled(v173, v174))
          {
            v175 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            v247 = v176;
            *v175 = 136446466;
            v177 = sub_1CF7F5AAC(0x200000000000uLL);
            v179 = v53;
            v180 = sub_1CEFD0DF0(v177, v178, &v247);

            *(v175 + 4) = v180;
            *(v175 + 12) = 2080;
            *(v175 + 14) = sub_1CEFD0DF0(v243, v179, &v247);
            _os_log_impl(&dword_1CEFC7000, v173, v174, "Repairing %{public}s on %s (removing before bounce filename)", v175, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v176, -1, -1);
            MEMORY[0x1D386CDC0](v175, -1, -1);
          }

          (*(v171 + 8))(v25, v170);
          v112 = v245;
          v113 = sub_1CF70D01C;
LABEL_71:
          v65 = sub_1CF70B538(v112, v113);
          return v65 & 1;
        }

        goto LABEL_45;
      }

      if (a1 == 0x10000000000)
      {
        v205 = v42;
        v206 = v48;
        v207 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v208 = sub_1CF9E6108();
        v209 = sub_1CF9E7288();

        if (os_log_type_enabled(v208, v209))
        {
          v210 = swift_slowAlloc();
          v211 = swift_slowAlloc();
          v247 = v211;
          *v210 = 136446466;
          v212 = sub_1CF7F5AAC(0x10000000000uLL);
          v214 = sub_1CEFD0DF0(v212, v213, &v247);

          *(v210 + 4) = v214;
          *(v210 + 12) = 2080;
          *(v210 + 14) = sub_1CEFD0DF0(v243, v53, &v247);
          _os_log_impl(&dword_1CEFC7000, v208, v209, "Repairing %{public}s on %s (set bundle bit)", v210, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v211, -1, -1);
          MEMORY[0x1D386CDC0](v210, -1, -1);
        }

        (*(v206 + 8))(v34, v205);
        v112 = v245;
        v113 = sub_1CF70CF78;
        goto LABEL_71;
      }

      if (a1 == 0x20000000000)
      {
        goto LABEL_45;
      }

LABEL_55:
      v158 = v42;
      v159 = v48;
      v160 = v49;
      v161 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v162 = sub_1CF9E6108();
      v163 = sub_1CF9E7298();

      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v247 = v165;
        *v164 = 136446466;
        v166 = sub_1CF7F5AAC(a1);
        v168 = v53;
        v169 = sub_1CEFD0DF0(v166, v167, &v247);

        *(v164 + 4) = v169;
        *(v164 + 12) = 2080;
        *(v164 + 14) = sub_1CEFD0DF0(v243, v168, &v247);
        _os_log_impl(&dword_1CEFC7000, v162, v163, "Repairing %{public}s on %s is not supported", v164, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v165, -1, -1);
        MEMORY[0x1D386CDC0](v164, -1, -1);
      }

      (*(v159 + 8))(v160, v158);
      v65 = 0;
      return v65 & 1;
    }

    v53 = v246;
    if (a1 <= 0x3FFFFFFF)
    {
      if (a1 == 8)
      {
        v137 = v42;
        v138 = v48;
        v139 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v140 = sub_1CF9E6108();
        v141 = sub_1CF9E7288();

        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v247 = v143;
          *v142 = 136446466;
          v144 = sub_1CF7F5AAC(8uLL);
          v146 = v53;
          v147 = sub_1CEFD0DF0(v144, v145, &v247);

          *(v142 + 4) = v147;
          *(v142 + 12) = 2080;
          *(v142 + 14) = sub_1CEFD0DF0(v243, v146, &v247);
          _os_log_impl(&dword_1CEFC7000, v140, v141, "Repairing %{public}s on %s (force re-ingestion)", v142, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v143, -1, -1);
          MEMORY[0x1D386CDC0](v142, -1, -1);
        }

        (*(v138 + 8))(v40, v137);
        v65 = sub_1CF708564(v245, v244);
      }

      else
      {
        if (a1 != 0x1000000)
        {
          goto LABEL_55;
        }

        v78 = v42;
        v79 = v48;
        v80 = v43;
        v81 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v82 = sub_1CF9E6108();
        v83 = sub_1CF9E7288();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v247 = v85;
          *v84 = 136446466;
          v86 = sub_1CF7F5AAC(0x1000000uLL);
          v88 = v53;
          v89 = sub_1CEFD0DF0(v86, v87, &v247);

          *(v84 + 4) = v89;
          *(v84 + 12) = 2080;
          *(v84 + 14) = sub_1CEFD0DF0(v243, v88, &v247);
          _os_log_impl(&dword_1CEFC7000, v82, v83, "Repairing %{public}s on %s (restore missing SF_DATALESS flag)", v84, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v85, -1, -1);
          MEMORY[0x1D386CDC0](v84, -1, -1);
        }

        (*(v79 + 8))(v80, v78);
        v65 = sub_1CF70C540(v245, v244);
      }

      return v65 & 1;
    }

    if (a1 != 0x40000000)
    {
      if (a1 == 0x2000000000)
      {
        v102 = v42;
        v103 = v48;
        v104 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v105 = sub_1CF9E6108();
        v106 = sub_1CF9E7288();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v247 = v108;
          *v107 = 136446466;
          v109 = sub_1CF7F5AAC(0x2000000000uLL);
          v111 = sub_1CEFD0DF0(v109, v110, &v247);

          *(v107 + 4) = v111;
          *(v107 + 12) = 2080;
          *(v107 + 14) = sub_1CEFD0DF0(v243, v53, &v247);
          _os_log_impl(&dword_1CEFC7000, v105, v106, "Repairing %{public}s on %s (remove demoted flag)", v107, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v108, -1, -1);
          MEMORY[0x1D386CDC0](v107, -1, -1);
        }

        (*(v103 + 8))(v37, v102);
        v112 = v245;
        v113 = sub_1CF70CF44;
        goto LABEL_71;
      }

      goto LABEL_55;
    }

LABEL_45:
    v127 = v42;
    v128 = v48;
    v129 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v130 = sub_1CF9E6108();
    v131 = sub_1CF9E7288();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v247 = v133;
      *v132 = 136446466;
      v134 = sub_1CF7F5AAC(a1);
      v136 = sub_1CEFD0DF0(v134, v135, &v247);

      *(v132 + 4) = v136;
      *(v132 + 12) = 2080;
      *(v132 + 14) = sub_1CEFD0DF0(v243, v53, &v247);
      _os_log_impl(&dword_1CEFC7000, v130, v131, "Repairing %{public}s on %s (drop purgeability)", v132, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v133, -1, -1);
      MEMORY[0x1D386CDC0](v132, -1, -1);
    }

    (*(v128 + 8))(v52, v127);
    v65 = sub_1CF70B1A8(v245, v244);
    return v65 & 1;
  }

  if (a1 <= 0x1FFFFFFFFFFFFFLL)
  {
    v53 = v246;
    if (a1 <= 0x7FFFFFFFFFFFFLL)
    {
      if (a1 == 0x2000000000000)
      {
        v148 = v42;
        v149 = v48;
        v150 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v151 = sub_1CF9E6108();
        v152 = sub_1CF9E7288();

        if (os_log_type_enabled(v151, v152))
        {
          v153 = swift_slowAlloc();
          v154 = swift_slowAlloc();
          v247 = v154;
          *v153 = 136446466;
          v155 = sub_1CF7F5AAC(0x2000000000000uLL);
          v157 = sub_1CEFD0DF0(v155, v156, &v247);

          *(v153 + 4) = v157;
          *(v153 + 12) = 2080;
          *(v153 + 14) = sub_1CEFD0DF0(v243, v53, &v247);
          _os_log_impl(&dword_1CEFC7000, v151, v152, "Repairing %{public}s on %s (refreshing detached root bookmark)", v153, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v154, -1, -1);
          MEMORY[0x1D386CDC0](v153, -1, -1);
        }

        (*(v149 + 8))(v22, v148);
        v65 = sub_1CF70B74C(v245, v242);
      }

      else
      {
        if (a1 != 0x4000000000000)
        {
          goto LABEL_55;
        }

        v90 = v42;
        v91 = v48;
        v92 = v47;
        v93 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v94 = sub_1CF9E6108();
        v95 = sub_1CF9E7288();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v247 = v97;
          *v96 = 136446466;
          v98 = sub_1CF7F5AAC(0x4000000000000uLL);
          v100 = v53;
          v101 = sub_1CEFD0DF0(v98, v99, &v247);

          *(v96 + 4) = v101;
          *(v96 + 12) = 2080;
          *(v96 + 14) = sub_1CEFD0DF0(v243, v100, &v247);
          _os_log_impl(&dword_1CEFC7000, v94, v95, "Repairing %{public}s on %s (set syncroot bit)", v96, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v97, -1, -1);
          MEMORY[0x1D386CDC0](v96, -1, -1);
        }

        (*(v91 + 8))(v92, v90);
        v65 = sub_1CF70BBE4(v245, 1);
      }

      return v65 & 1;
    }

    if (a1 == 0x8000000000000)
    {
      if ((v240 & 0x80000) == 0)
      {
        goto LABEL_55;
      }

      v226 = v42;
      v227 = v48;
      v228 = v46;
      v229 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v230 = sub_1CF9E6108();
      v231 = sub_1CF9E7288();

      if (os_log_type_enabled(v230, v231))
      {
        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v247 = v233;
        *v232 = 136446466;
        v234 = sub_1CF7F5AAC(0x8000000000000uLL);
        v236 = sub_1CEFD0DF0(v234, v235, &v247);

        *(v232 + 4) = v236;
        v237 = v246;
        *(v232 + 12) = 2080;
        *(v232 + 14) = sub_1CEFD0DF0(v243, v237, &v247);
        _os_log_impl(&dword_1CEFC7000, v230, v231, "Repairing %{public}s on %s (unlink if side fault)", v232, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v233, -1, -1);
        MEMORY[0x1D386CDC0](v232, -1, -1);
      }

      (*(v227 + 8))(v228, v226);
      v65 = sub_1CF70BFCC();
      return v65 & 1;
    }

    if (a1 != 0x10000000000000)
    {
      goto LABEL_55;
    }

    v114 = v42;
    v115 = v48;
    v116 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v117 = sub_1CF9E6108();
    v118 = sub_1CF9E7288();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v247 = v120;
      *v119 = 136446466;
      v121 = sub_1CF7F5AAC(0x10000000000000uLL);
      v123 = sub_1CEFD0DF0(v121, v122, &v247);

      *(v119 + 4) = v123;
      *(v119 + 12) = 2080;
      *(v119 + 14) = sub_1CEFD0DF0(v243, v53, &v247);
      _os_log_impl(&dword_1CEFC7000, v117, v118, "Repairing %{public}s on %s (remove promotion xattr)", v119, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v120, -1, -1);
      MEMORY[0x1D386CDC0](v119, -1, -1);
    }

    (*(v115 + 8))(v28, v114);
    v124 = v245;
    v125 = v244;
    v126 = sub_1CF70CFE8;
LABEL_67:
    v65 = sub_1CF70C260(v124, v125, v126);
    return v65 & 1;
  }

  if (a1 <= 0x7FFFFFFFFFFFFFLL)
  {
    if (a1 == 0x20000000000000)
    {
      v215 = v42;
      v216 = v48;
      v217 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v218 = v246;

      v219 = sub_1CF9E6108();
      v220 = sub_1CF9E7288();

      if (os_log_type_enabled(v219, v220))
      {
        v221 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v247 = v222;
        *v221 = 136446466;
        v223 = sub_1CF7F5AAC(0x20000000000000uLL);
        v225 = sub_1CEFD0DF0(v223, v224, &v247);

        *(v221 + 4) = v225;
        *(v221 + 12) = 2080;
        *(v221 + 14) = sub_1CEFD0DF0(v243, v218, &v247);
        _os_log_impl(&dword_1CEFC7000, v219, v220, "Repairing %{public}s on %s (clear bundle bit)", v221, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v222, -1, -1);
        MEMORY[0x1D386CDC0](v221, -1, -1);
      }

      (*(v216 + 8))(v31, v215);
      v65 = sub_1CF70B538(v245, sub_1CF70CFB0);
      return v65 & 1;
    }

    v53 = v246;
    if (a1 != 0x40000000000000)
    {
      goto LABEL_55;
    }

    goto LABEL_45;
  }

  if (a1 == 0x80000000000000)
  {
    v193 = v42;
    v194 = v48;
    v195 = v45;
    v196 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v197 = v246;

    v198 = sub_1CF9E6108();
    v199 = sub_1CF9E7288();

    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v247 = v201;
      *v200 = 136446466;
      v202 = sub_1CF7F5AAC(0x80000000000000uLL);
      v204 = sub_1CEFD0DF0(v202, v203, &v247);

      *(v200 + 4) = v204;
      *(v200 + 12) = 2080;
      *(v200 + 14) = sub_1CEFD0DF0(v243, v197, &v247);
      _os_log_impl(&dword_1CEFC7000, v198, v199, "Repairing %{public}s on %s (fix pinned item purge urgency)", v200, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v201, -1, -1);
      MEMORY[0x1D386CDC0](v200, -1, -1);
    }

    (*(v194 + 8))(v195, v193);
    v124 = v245;
    v125 = v244;
    v126 = sub_1CF70D110;
    goto LABEL_67;
  }

  v53 = v246;
  if (a1 == 0x100000000000000)
  {
    v181 = v42;
    v182 = v48;
    v183 = v44;
    v184 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v185 = sub_1CF9E6108();
    v186 = sub_1CF9E7288();

    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v247 = v188;
      *v187 = 136446466;
      v189 = sub_1CF7F5AAC(0x100000000000000uLL);
      v191 = v53;
      v192 = sub_1CEFD0DF0(v189, v190, &v247);

      *(v187 + 4) = v192;
      *(v187 + 12) = 2080;
      *(v187 + 14) = sub_1CEFD0DF0(v243, v191, &v247);
      _os_log_impl(&dword_1CEFC7000, v185, v186, "Repairing %{public}s on %s (downgrade purge urgency)", v187, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v188, -1, -1);
      MEMORY[0x1D386CDC0](v187, -1, -1);
    }

    (*(v182 + 8))(v183, v181);
    v124 = v245;
    v125 = v244;
    v126 = sub_1CF70D148;
    goto LABEL_67;
  }

  if (a1 != 0x200000000000000)
  {
    goto LABEL_55;
  }

  v66 = v42;
  v67 = v48;
  v68 = v50;
  v69 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v70 = sub_1CF9E6108();
  v71 = sub_1CF9E7288();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v247 = v73;
    *v72 = 136446466;
    v74 = sub_1CF7F5AAC(0x200000000000000uLL);
    v76 = v53;
    v77 = sub_1CEFD0DF0(v74, v75, &v247);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;
    *(v72 + 14) = sub_1CEFD0DF0(v243, v76, &v247);
    _os_log_impl(&dword_1CEFC7000, v70, v71, "Repairing %{public}s on %s (fix finder info)", v72, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v73, -1, -1);
    MEMORY[0x1D386CDC0](v72, -1, -1);
  }

  (*(v67 + 8))(v68, v66);
  v65 = sub_1CF70CBAC(v245);
  return v65 & 1;
}