uint64_t sub_2545C70E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v67 = a8;
  v74 = a7;
  v75 = a5(0);
  v13 = *(*(v75 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v75);
  v72 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v71 = &v65 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v65 - v19;
  result = MEMORY[0x28223BE20](v18);
  v23 = &v65 - v22;
  v25 = *(v24 + 72);
  if (!v25)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_72;
  }

  v26 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_73;
  }

  v27 = (a2 - a1) / v25;
  v78 = a1;
  v77 = a4;
  if (v27 >= v26 / v25)
  {
    v29 = v26 / v25 * v25;
    if (a4 < a2 || a2 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v29;
    if (v29 < 1)
    {
      v47 = a4 + v29;
    }

    else
    {
      v45 = -v25;
      v46 = a4 + v29;
      v73 = a6;
      v47 = v44;
      v70 = v45;
      while (2)
      {
        while (1)
        {
          v66 = v47;
          v48 = a2;
          v49 = a2 + v45;
          v69 = a2;
          while (1)
          {
            if (v48 <= a1)
            {
              v78 = v48;
              v76 = v66;
              goto LABEL_70;
            }

            v51 = a3;
            v68 = v47;
            v52 = v46 + v45;
            v53 = v71;
            sub_2545D8660(v52, v71, a6);
            v54 = a6;
            v55 = v72;
            sub_2545D8660(v49, v72, v54);
            v56 = *(v75 + 24);
            v57 = v53 + v56;
            v58 = *(type metadata accessor for TileElementInfo() + 20);
            v59 = *(v57 + v58);
            v60 = *(v57 + v58 + 8);
            v61 = (v55 + v56 + v58);
            v62 = v59 == *v61 && v60 == v61[1];
            v63 = v62 ? 0 : sub_2545FF7B4();
            a3 = v51 + v70;
            v64 = v74;
            sub_2545D86C8(v72, v74);
            sub_2545D86C8(v71, v64);
            if (v63)
            {
              break;
            }

            v47 = v52;
            if (v51 < v46 || a3 >= v46)
            {
              swift_arrayInitWithTakeFrontToBack();
              a6 = v73;
            }

            else
            {
              a6 = v73;
              if (v51 != v46)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v46 = v52;
            v50 = v52 > a4;
            v48 = v69;
            v45 = v70;
            if (!v50)
            {
              a2 = v69;
              goto LABEL_69;
            }
          }

          if (v51 < v69 || a3 >= v69)
          {
            break;
          }

          v39 = v51 == v69;
          a6 = v73;
          a2 = v49;
          v47 = v68;
          v45 = v70;
          if (!v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v46 <= a4)
          {
            goto LABEL_69;
          }
        }

        a2 = v49;
        swift_arrayInitWithTakeFrontToBack();
        a6 = v73;
        v47 = v68;
        v45 = v70;
        if (v46 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_69:
    v78 = a2;
    v76 = v47;
  }

  else
  {
    v28 = v27 * v25;
    v73 = a6;
    if (a4 < a1 || a1 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v72 = a4 + v28;
    v76 = a4 + v28;
    if (v28 >= 1 && a2 < a3)
    {
      while (1)
      {
        v31 = v25;
        v32 = a2;
        v33 = v73;
        sub_2545D8660(a2, v23, v73);
        sub_2545D8660(a4, v20, v33);
        v34 = *(v75 + 24);
        v35 = *(type metadata accessor for TileElementInfo() + 20);
        v36 = *&v23[v34 + v35];
        v37 = *&v23[v34 + 8 + v35];
        v38 = &v20[v34 + v35];
        v39 = v36 == *v38 && v37 == *(v38 + 1);
        if (v39)
        {
          break;
        }

        v40 = sub_2545FF7B4();
        v41 = v74;
        sub_2545D86C8(v20, v74);
        sub_2545D86C8(v23, v41);
        if ((v40 & 1) == 0)
        {
          goto LABEL_30;
        }

        v42 = v32;
        v25 = v31;
        a2 = v42 + v31;
        if (a1 < v42 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v42)
        {
          swift_arrayInitWithTakeBackToFront();
        }

LABEL_36:
        a1 += v25;
        v78 = a1;
        if (a4 >= v72 || a2 >= a3)
        {
          goto LABEL_70;
        }
      }

      v43 = v74;
      sub_2545D86C8(v20, v74);
      sub_2545D86C8(v23, v43);
LABEL_30:
      a2 = v32;
      if (a1 < a4 || a1 >= a4 + v31)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v77 = a4 + v31;
      a4 += v31;
      v25 = v31;
      goto LABEL_36;
    }
  }

LABEL_70:
  sub_2545C79CC(&v78, &v77, &v76, v67);
  return 1;
}

uint64_t sub_2545C7688(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[24 * v11] <= a4)
    {
      memmove(a4, __src, 24 * v11);
    }

    v12 = &v4[24 * v11];
    if (v10 < 24 || v6 <= v7)
    {
      goto LABEL_56;
    }

LABEL_32:
    v30 = v6 - 24;
    v19 = v5;
    v20 = v12;
    while (1)
    {
      v21 = *(v20 - 24);
      v22 = *(v20 - 16);
      v20 -= 24;
      v23 = *(v6 - 2);
      if (!v22)
      {
        break;
      }

      if (v22 == 1)
      {
        v5 = (v19 - 24);
      }

      else
      {
        if (v23 < 2)
        {
          v24 = 0;
LABEL_40:
          if (v23 == 1)
          {
            v24 = 1;
          }

          v5 = (v19 - 24);
          if (v23)
          {
            v25 = v24 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
LABEL_50:
            if (v19 != v6)
            {
              v27 = *v30;
              *(v5 + 16) = *(v6 - 1);
              *v5 = v27;
            }

            if (v12 <= v4 || (v6 -= 24, v30 <= v7))
            {
              v6 = v30;
              goto LABEL_56;
            }

            goto LABEL_32;
          }

          goto LABEL_48;
        }

        v32 = *(v6 - 3);
        sub_2545D8470();
        v5 = (v19 - 24);
        if (sub_2545FF514() == -1)
        {
          goto LABEL_50;
        }
      }

LABEL_48:
      if (v12 != v19)
      {
        v26 = *v20;
        *(v5 + 16) = *(v20 + 16);
        *v5 = v26;
      }

      v12 = v20;
      v19 = v5;
      if (v20 <= v4)
      {
        v12 = v20;
        goto LABEL_56;
      }
    }

    v24 = 1;
    goto LABEL_40;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v12 = &v4[24 * v9];
  if (v8 >= 24 && v6 < v5)
  {
    do
    {
      v13 = *(v6 + 1);
      v14 = *(v4 + 1);
      if (v13)
      {
        if (v13 == 1)
        {
          goto LABEL_22;
        }

        if (v14 >= 2)
        {
          v33 = *v6;
          v31 = *v4;
          sub_2545D8470();
          if (sub_2545FF514() != -1)
          {
            goto LABEL_22;
          }

          goto LABEL_18;
        }

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      if (v14 == 1)
      {
        v15 = 1;
      }

      if (v14)
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
LABEL_22:
        v17 = v4;
        v16 = v7 == v4;
        v4 += 24;
        if (v16)
        {
          goto LABEL_24;
        }

LABEL_23:
        v18 = *v17;
        *(v7 + 2) = *(v17 + 2);
        *v7 = v18;
        goto LABEL_24;
      }

LABEL_18:
      v17 = v6;
      v16 = v7 == v6;
      v6 += 24;
      if (!v16)
      {
        goto LABEL_23;
      }

LABEL_24:
      v7 += 24;
    }

    while (v4 < v12 && v6 < v5);
  }

  v6 = v7;
LABEL_56:
  v28 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v28])
  {
    memmove(v6, v4, 24 * v28);
  }

  return 1;
}

uint64_t sub_2545C79CC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2545C7AB4(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_2545FEE64();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606710, &qword_254600C08);
  v41 = a2;
  result = sub_2545FF694();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_2545FF824();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {
      result = sub_2545FEA14();
      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

  result = sub_2545FEA14();
LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2545C7E00(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = a2;
  result = sub_2545FF694();
  v10 = result;
  if (*(v7 + 16))
  {
    v40 = v5;
    v41 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (1)
    {
      if (!v15)
      {
        v21 = v11;
        while (1)
        {
          v11 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v11 >= v16)
          {
            break;
          }

          v22 = v12[v11];
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v15 = (v22 - 1) & v22;
            goto LABEL_17;
          }
        }

        if ((v42 & 1) == 0)
        {
          result = sub_2545FEA14();
          v5 = v40;
          goto LABEL_41;
        }

        v39 = 1 << *(v7 + 32);
        v5 = v40;
        if (v39 >= 64)
        {
          bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v12 = -1 << v39;
        }

        *(v7 + 16) = 0;
        goto LABEL_40;
      }

      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v7 + 48) + 16 * v23);
      v25 = (*(v7 + 56) + 24 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v43 = v24;
      v29 = *(&v24 + 1);
      if ((v42 & 1) == 0)
      {
        sub_2545D71E4(v24, *(&v24 + 1));
        sub_2545D71E4(v26, v27);
        sub_2545FE8E4();
      }

      v30 = *(v10 + 40);
      sub_2545FF834();
      if (!v29)
      {
        break;
      }

      if (v29 == 1)
      {
        v31 = 2;
LABEL_23:
        MEMORY[0x259C12730](v31);
        goto LABEL_25;
      }

      MEMORY[0x259C12730](1);
      sub_2545FF1B4();
LABEL_25:
      result = sub_2545FF864();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v18 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v43;
      v19 = (*(v10 + 56) + 24 * v18);
      *v19 = v26;
      v19[1] = v27;
      v19[2] = v28;
      ++*(v10 + 16);
      v7 = v41;
    }

    v31 = 0;
    goto LABEL_23;
  }

LABEL_40:
  result = sub_2545FEA14();
LABEL_41:
  *v5 = v10;
  return result;
}

uint64_t sub_2545C810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t *a7, uint64_t *a8)
{
  v10 = v8;
  v17 = *v8;
  v18 = sub_2545C5718(a4, a5);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a6 & 1) == 0)
  {
    if (v25 < v23 || (a6 & 1) != 0)
    {
      sub_2545C7E00(v23, a6 & 1, a7, a8);
      v27 = *v10;
      v18 = sub_2545C5718(a4, a5);
      if ((v24 & 1) != (v28 & 1))
      {
LABEL_18:
        result = sub_2545FF7D4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = v18;
      sub_2545C89E8(a7, a8);
      v18 = v26;
    }
  }

  v29 = *v10;
  if (v24)
  {
    v30 = (v29[7] + 24 * v18);
    v31 = *v30;
    v32 = v30[1];
    v33 = v30[2];
    *v30 = a1;
    v30[1] = a2;
    v30[2] = a3;
    sub_2545D71F8(v31, v32);
  }

  v29[(v18 >> 6) + 8] |= 1 << v18;
  v35 = (v29[6] + 16 * v18);
  *v35 = a4;
  v35[1] = a5;
  v36 = (v29[7] + 24 * v18);
  *v36 = a1;
  v36[1] = a2;
  v36[2] = a3;
  v37 = v29[2];
  v22 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29[2] = v38;

  return sub_2545D71E4(a4, a5);
}

unint64_t sub_2545C82E4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2545FEB04();
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
      sub_2545D8728(&qword_27F606780, MEMORY[0x277CC95F0]);
      v16 = sub_2545FF0E4();
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

unint64_t sub_2545C84A4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2545C8510(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }
        }

        else if (a2 >= 2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_2545FF7B4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2545C85F4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x73656E656373;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0x726F737365636361;
          v7 = 0xEB00000000736569;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE300000000000000;
            if (v8 != 7105633)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE300000000000000;
        v8 = 7105633;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x73656E656373;
      }

      else
      {
        v10 = 0x726F737365636361;
      }

      if (v9 == 1)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xEB00000000736569;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_2545FF7B4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_2545C8780()
{
  v1 = v0;
  v30 = sub_2545FEE64();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606710, &qword_254600C08);
  v4 = *v0;
  v5 = sub_2545FF684();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        result = sub_2545FEA14();
        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_2545FEA14();
LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2545C89E8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2545FF684();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v19 *= 24;
        v21 = (*(v4 + 56) + v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = *(*(v4 + 48) + v20);
        *(*(v6 + 48) + v20) = v25;
        v26 = (*(v6 + 56) + v19);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;
        sub_2545D71E4(v25, *(&v25 + 1));
        sub_2545D71E4(v22, v23);
        result = sub_2545FE8E4();
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_2545FEA14();
    *v3 = v6;
  }

  return result;
}

uint64_t sub_2545C8B74@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_2545FEB64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2545FED04();
  v11 = a2(0);
  v12 = a3 + *(v11 + 20);
  sub_2545FEB34();
  (*(v7 + 8))(v10, v6);
  sub_2545D8660(a1, a3, type metadata accessor for ElementID);
  return sub_2545D8660(a1, a3 + *(v11 + 24), type metadata accessor for TileElementInfo);
}

void *sub_2545C8E7C(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 24 * (v17 | (v12 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      *v11 = *v18;
      v11[1] = v20;
      v11[2] = v21;
      if (v14 == v10)
      {
        sub_2545D71E4(v19, v20);
        sub_2545FE8E4();
        goto LABEL_23;
      }

      v11 += 3;
      sub_2545D71E4(v19, v20);
      sub_2545FE8E4();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_2545C8FFC(uint64_t *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = (*(a5 + 56) + 24 * a2);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    *result = *v8;
    result[1] = v10;
    result[2] = v11;
    sub_2545D71E4(v6, v7);
    sub_2545D71E4(v9, v10);
    sub_2545FE8E4();
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2545C90B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[55] = a2;
  v3[56] = a3;
  v3[54] = a1;
  v4 = sub_2545FEB04();
  v3[57] = v4;
  v5 = *(v4 - 8);
  v3[58] = v5;
  v6 = *(v5 + 64) + 15;
  v3[59] = swift_task_alloc();
  v7 = sub_2545FEE64();
  v3[60] = v7;
  v8 = *(v7 - 8);
  v3[61] = v8;
  v9 = *(v8 + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20) - 8) + 64) + 15;
  v3[64] = swift_task_alloc();
  v11 = type metadata accessor for HomeID();
  v3[65] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v13 = sub_2545FEB64();
  v3[68] = v13;
  v14 = *(v13 - 8);
  v3[69] = v14;
  v15 = *(v14 + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v16 = sub_2545FEF84();
  v3[72] = v16;
  v17 = *(v16 - 8);
  v3[73] = v17;
  v18 = *(v17 + 64) + 15;
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606758, &unk_254601DD0) - 8) + 64) + 15;
  v3[77] = swift_task_alloc();
  v20 = sub_2545FEED4();
  v3[78] = v20;
  v21 = *(v20 - 8);
  v3[79] = v21;
  v22 = *(v21 + 64) + 15;
  v3[80] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0) - 8) + 64) + 15;
  v3[81] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606760, &qword_254600C40) - 8) + 64) + 15;
  v3[82] = swift_task_alloc();
  v25 = sub_2545FED84();
  v3[83] = v25;
  v26 = *(v25 - 8);
  v3[84] = v26;
  v27 = *(v26 + 64) + 15;
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v28 = type metadata accessor for ElementID();
  v3[87] = v28;
  v29 = *(v28 - 8);
  v3[88] = v29;
  v30 = *(v29 + 64) + 15;
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v31 = *(type metadata accessor for HomeXLTileEntity() - 8);
  v3[93] = v31;
  v32 = *(v31 + 64) + 15;
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = sub_2545FF354();
  v3[99] = sub_2545FF344();
  type metadata accessor for IntentsService();
  v3[100] = swift_initStaticObject();
  v33 = swift_task_alloc();
  v3[101] = v33;
  *v33 = v3;
  v33[1] = sub_2545C95FC;

  return sub_2545B0448();
}

uint64_t sub_2545C95FC(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 808);
  v7 = *v2;
  v5[102] = a1;
  v5[103] = v1;

  v8 = v4[99];
  v9 = v4[98];
  v10 = sub_2545FF334();
  if (v3)
  {
    v12 = sub_2545C9E7C;
  }

  else
  {
    v5[104] = v10;
    v5[105] = v11;
    v12 = sub_2545C9770;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_2545C9770()
{
  v1 = *(v0 + 816);
  if (!v1 || (v2 = *(v0 + 800), v1, v3 = sub_2545B027C(), (*(v0 + 848) = v3) == 0))
  {
    v11 = *(v0 + 792);
    sub_2545FEA14();
    v12 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  *(v0 + 856) = sub_2545FECC4();
  if (sub_2545FECA4() != 7)
  {
    *(v0 + 880) = sub_2545FEBD4();
    *(v0 + 888) = sub_2545FECE4();
    *(v0 + 896) = sub_2545FECD4();
    *(v0 + 904) = sub_2545D8728(&qword_27F6064D8, MEMORY[0x277D15960]);
    v26 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545CA04C, v26, v25);
  }

  v4 = sub_2545FACE8(*(v0 + 432));
  *(v0 + 864) = v4;
  *(v0 + 408) = MEMORY[0x277D84F90];
  if (!(v4 >> 62))
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 872) = v8;
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  v39 = v4;
  v40 = sub_2545FF674();
  v4 = v39;
  *(v0 + 872) = v40;
  if (!v40)
  {
LABEL_22:
    v41 = *(v0 + 792);
    sub_2545FEA14();

    v42 = *(v0 + 440);
    if (v42)
    {
      v79 = *(v42 + 16);
      if (v79)
      {
        v4 = *(v0 + 408);
        v77 = *(v4 + 16);
        if (v77)
        {
          v43 = 0;
          v69 = *(v0 + 704);
          v71 = *(v0 + 744);
          v44 = *(v0 + 696);
          v82 = MEMORY[0x277D84F90];
          v73 = *(v0 + 440);
          v75 = *(v0 + 408);
          while (1)
          {
            if (v43 >= *(v4 + 16))
            {
              __break(1u);
LABEL_43:
              __break(1u);
              return MEMORY[0x28216EA18](v4, v9, v5, v6, v7);
            }

            v45 = (*(v71 + 80) + 32) & ~*(v71 + 80);
            v46 = v43 + 1;
            v81 = *(v71 + 72);
            sub_2545D8660(v4 + v45 + v81 * v43, *(v0 + 776), type metadata accessor for HomeXLTileEntity);
            v47 = v42 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
            v48 = *(v69 + 72);
            v49 = v79;
            while (1)
            {
              v50 = *(v0 + 776);
              sub_2545D8660(v47, *(v0 + 736), type metadata accessor for ElementID);
              if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
              {
                break;
              }

              sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_31:
              v47 += v48;
              if (!--v49)
              {
                sub_2545D86C8(*(v0 + 776), type metadata accessor for HomeXLTileEntity);
                goto LABEL_27;
              }
            }

            v51 = *(v0 + 736);
            v52 = *(v44 + 20);
            v53 = qword_254600D00[*(v51 + v52)];
            v54 = qword_254600D00[*(*(v0 + 776) + v52)];
            sub_2545D86C8(v51, type metadata accessor for ElementID);
            if (v53 != v54)
            {
              goto LABEL_31;
            }

            sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for HomeXLTileEntity);
            v55 = v82;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2545DBE44(0, *(v82 + 16) + 1, 1);
              v55 = v82;
            }

            v57 = *(v55 + 16);
            v56 = *(v55 + 24);
            if (v57 >= v56 >> 1)
            {
              sub_2545DBE44(v56 > 1, v57 + 1, 1);
              v55 = v82;
            }

            v58 = *(v0 + 768);
            *(v55 + 16) = v57 + 1;
            v82 = v55;
            sub_2545D8770(v58, v55 + v45 + v57 * v81, type metadata accessor for HomeXLTileEntity);
LABEL_27:
            v43 = v46;
            v4 = v75;
            v42 = v73;
            if (v46 == v77)
            {
              goto LABEL_41;
            }
          }
        }

        v82 = MEMORY[0x277D84F90];
LABEL_41:
        v59 = *(v0 + 848);

LABEL_10:
        v13 = *(v0 + 776);
        v14 = *(v0 + 768);
        v15 = *(v0 + 760);
        v16 = *(v0 + 752);
        v17 = *(v0 + 736);
        v18 = *(v0 + 728);
        v19 = *(v0 + 720);
        v20 = *(v0 + 712);
        v21 = *(v0 + 688);
        v22 = *(v0 + 680);
        v60 = *(v0 + 656);
        v61 = *(v0 + 648);
        v62 = *(v0 + 640);
        v63 = *(v0 + 616);
        v64 = *(v0 + 608);
        v65 = *(v0 + 600);
        v66 = *(v0 + 592);
        v67 = *(v0 + 568);
        v68 = *(v0 + 560);
        v70 = *(v0 + 536);
        v72 = *(v0 + 528);
        v74 = *(v0 + 512);
        v76 = *(v0 + 504);
        v78 = *(v0 + 496);
        v80 = *(v0 + 472);

        v23 = *(v0 + 8);

        return v23(v82);
      }
    }

    v12 = *(v0 + 408);
LABEL_9:
    v82 = v12;
    goto LABEL_10;
  }

LABEL_6:
  v9 = *(v0 + 864);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x259C124A0](0);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v10 = *(v9 + 32);
  }

  v27 = v10;
  *(v0 + 944) = v10;
  *(v0 + 952) = 1;
  v28 = *(v0 + 856);
  v29 = *(v0 + 648);
  v30 = *(v0 + 456);
  v31 = *(v0 + 464);
  *(v0 + 960) = sub_2545FEC94();
  v32 = [v27 uniqueIdentifier];
  sub_2545FEAC4();

  v33 = *(v31 + 56);
  *(v0 + 968) = v33;
  *(v0 + 976) = (v31 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v33(v29, 0, 1, v30);
  LOBYTE(v29) = sub_2545FEC54();
  v34 = sub_2545FEC64();
  v36 = v35;
  v37 = *(MEMORY[0x277D15428] + 4);
  v38 = swift_task_alloc();
  *(v0 + 984) = v38;
  *v38 = v0;
  v38[1] = sub_2545CA220;
  v4 = *(v0 + 656);
  v9 = *(v0 + 648);
  v5 = v29 & 1;
  v6 = v34;
  v7 = v36;

  return MEMORY[0x28216EA18](v4, v9, v5, v6, v7);
}

uint64_t sub_2545C9E7C()
{
  v1 = v0[99];
  sub_2545FEA14();
  v29 = v0[103];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[94];
  v6 = v0[92];
  v7 = v0[91];
  v8 = v0[90];
  v9 = v0[89];
  v10 = v0[86];
  v11 = v0[85];
  v14 = v0[82];
  v15 = v0[81];
  v16 = v0[80];
  v17 = v0[77];
  v18 = v0[76];
  v19 = v0[75];
  v20 = v0[74];
  v21 = v0[71];
  v22 = v0[70];
  v23 = v0[67];
  v24 = v0[66];
  v25 = v0[64];
  v26 = v0[63];
  v27 = v0[62];
  v28 = v0[59];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2545CA04C()
{
  v1 = v0[112];
  v2 = v0[110];
  sub_2545FEA14();
  v0[114] = sub_2545FEBC4();
  v3 = swift_task_alloc();
  v0[115] = v3;
  *v3 = v0;
  v3[1] = sub_2545CA0F8;
  v4 = v0[54];

  return sub_2545DD5C0(v4);
}

uint64_t sub_2545CA0F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 920);
  v10 = *v2;
  v3[116] = a1;
  v3[117] = v1;

  if (v1)
  {
    v5 = v3[105];
    v6 = v3[104];
    v7 = sub_2545CC25C;
  }

  else
  {
    v8 = v3[114];
    sub_2545FEA14();
    v5 = v3[105];
    v6 = v3[104];
    v7 = sub_2545CBB7C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2545CA220()
{
  v1 = *v0;
  v2 = *(*v0 + 984);
  v3 = *(*v0 + 960);
  v4 = *(*v0 + 648);
  v8 = *v0;

  sub_2545B612C(v4, &qword_27F6064D0, &unk_2546002B0);
  v5 = *(v1 + 840);
  v6 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_2545CA38C, v6, v5);
}

uint64_t sub_2545CA38C()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    v4 = sub_2545B612C(v3, &qword_27F606760, &qword_254600C40);
    v9 = *(v0 + 952);
    v10 = *(v0 + 864);
    if (v9 == *(v0 + 872))
    {
      v11 = *(v0 + 792);
      sub_2545FEA14();

      v12 = *(v0 + 440);
      v88 = v12;
      if (v12 && (v86 = *(v12 + 16)) != 0)
      {
        v4 = *(v0 + 408);
        v84 = v4[2];
        if (v84)
        {
          v13 = 0;
          v78 = *(v0 + 704);
          v80 = *(v0 + 744);
          v14 = *(v0 + 696);
          v76 = MEMORY[0x277D84F90];
          v82 = *(v0 + 408);
          while (1)
          {
            if (v13 >= v4[2])
            {
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              return MEMORY[0x28216EA18](v4, v5, v6, v7, v8);
            }

            v15 = *(v80 + 72);
            v16 = v13 + 1;
            v90 = (*(v80 + 80) + 32) & ~*(v80 + 80);
            sub_2545D8660(v4 + v90 + v15 * v13, *(v0 + 776), type metadata accessor for HomeXLTileEntity);
            v17 = v12 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
            v18 = *(v78 + 72);
            v19 = v86;
            while (1)
            {
              v20 = *(v0 + 776);
              sub_2545D8660(v17, *(v0 + 736), type metadata accessor for ElementID);
              if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
              {
                break;
              }

              sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_12:
              v17 += v18;
              if (!--v19)
              {
                sub_2545D86C8(*(v0 + 776), type metadata accessor for HomeXLTileEntity);
                goto LABEL_8;
              }
            }

            v21 = *(v0 + 736);
            v22 = *(v14 + 20);
            v23 = qword_254600D00[*(v21 + v22)];
            v24 = qword_254600D00[*(*(v0 + 776) + v22)];
            sub_2545D86C8(v21, type metadata accessor for ElementID);
            if (v23 != v24)
            {
              goto LABEL_12;
            }

            sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for HomeXLTileEntity);
            v25 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2545DBE44(0, *(v76 + 16) + 1, 1);
              v25 = v76;
            }

            v27 = *(v25 + 16);
            v26 = *(v25 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_2545DBE44(v26 > 1, v27 + 1, 1);
              v25 = v76;
            }

            v28 = *(v0 + 768);
            *(v25 + 16) = v27 + 1;
            v76 = v25;
            sub_2545D8770(v28, v25 + v90 + v27 * v15, type metadata accessor for HomeXLTileEntity);
LABEL_8:
            v13 = v16;
            v4 = v82;
            v12 = v88;
            if (v16 == v84)
            {
              goto LABEL_33;
            }
          }
        }

        v76 = MEMORY[0x277D84F90];
LABEL_33:
        v56 = *(v0 + 848);

        v43 = v76;
      }

      else
      {

        v43 = *(v0 + 408);
      }

      v57 = *(v0 + 776);
      v58 = *(v0 + 768);
      v59 = *(v0 + 760);
      v60 = *(v0 + 752);
      v61 = *(v0 + 736);
      v62 = *(v0 + 728);
      v63 = *(v0 + 720);
      v64 = *(v0 + 712);
      v65 = *(v0 + 688);
      v68 = *(v0 + 680);
      v69 = *(v0 + 656);
      v70 = *(v0 + 648);
      v71 = *(v0 + 640);
      v72 = *(v0 + 616);
      v73 = *(v0 + 608);
      v74 = *(v0 + 600);
      v75 = *(v0 + 592);
      v77 = *(v0 + 568);
      v79 = *(v0 + 560);
      v81 = *(v0 + 536);
      v83 = *(v0 + 528);
      v85 = *(v0 + 512);
      v87 = *(v0 + 504);
      v89 = *(v0 + 496);
      v91 = *(v0 + 472);

      v66 = *(v0 + 8);

      return v66(v43);
    }

    else
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x259C124A0](*(v0 + 952), *(v0 + 864));
      }

      else
      {
        if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v4 = *(v10 + 8 * v9 + 32);
      }

      v44 = v4;
      *(v0 + 944) = v4;
      *(v0 + 952) = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_38;
      }

      v45 = *(v0 + 856);
      v46 = *(v0 + 648);
      v47 = *(v0 + 456);
      v48 = *(v0 + 464);
      *(v0 + 960) = sub_2545FEC94();
      v49 = [v44 uniqueIdentifier];
      sub_2545FEAC4();

      v50 = *(v48 + 56);
      *(v0 + 968) = v50;
      *(v0 + 976) = (v48 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v50(v46, 0, 1, v47);
      LOBYTE(v49) = sub_2545FEC54();
      v51 = sub_2545FEC64();
      v53 = v52;
      v54 = *(MEMORY[0x277D15428] + 4);
      v55 = swift_task_alloc();
      *(v0 + 984) = v55;
      *v55 = v0;
      v55[1] = sub_2545CA220;
      v4 = *(v0 + 656);
      v5 = *(v0 + 648);
      v6 = v49 & 1;
      v7 = v51;
      v8 = v53;

      return MEMORY[0x28216EA18](v4, v5, v6, v7, v8);
    }
  }

  else
  {
    v29 = *(v0 + 976);
    v30 = *(v0 + 968);
    v31 = *(v0 + 944);
    v32 = *(v0 + 856);
    v33 = *(v0 + 648);
    v34 = *(v0 + 456);
    (*(v1 + 32))(*(v0 + 688), v3, v2);
    *(v0 + 992) = sub_2545FEC94();
    v35 = [v31 uniqueIdentifier];
    sub_2545FEAC4();

    v30(v33, 0, 1, v34);
    v36 = sub_2545FEC84();
    v38 = v37;
    v39 = *(MEMORY[0x277D15438] + 4);
    v40 = swift_task_alloc();
    *(v0 + 1000) = v40;
    *v40 = v0;
    v40[1] = sub_2545CAAB8;
    v41 = *(v0 + 648);
    v42 = *(v0 + 616);

    return MEMORY[0x28216EA48](v42, v41, 1, v36, v38);
  }
}

uint64_t sub_2545CAAB8()
{
  v1 = *v0;
  v2 = *(*v0 + 1000);
  v3 = *(*v0 + 992);
  v4 = *(*v0 + 648);
  v8 = *v0;

  sub_2545B612C(v4, &qword_27F6064D0, &unk_2546002B0);
  v5 = *(v1 + 840);
  v6 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_2545CAC24, v6, v5);
}

uint64_t sub_2545CAC24()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    v5 = *(v0 + 640);
    sub_2545FEEC4();
    if (v4(v3, 1, v2) != 1)
    {
      sub_2545B612C(*(v0 + 616), &qword_27F606758, &unk_254601DD0);
    }
  }

  else
  {
    (*(v1 + 32))(*(v0 + 640), v3, v2);
  }

  v6 = *(v0 + 688);
  v7 = *(v0 + 640);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 584);
  v11 = *(v0 + 576);
  v12 = *(v0 + 448);
  sub_2545FEEB4();
  sub_2545FED24();

  sub_2545FEF54();
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8]);
  v13 = sub_2545FF254();
  v14 = MEMORY[0x277D84F90];
  *(v0 + 416) = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v13 & ~(v13 >> 63), 0);
  v15 = *(v0 + 416);
  (*(v10 + 16))(v9, v8, v11);
  result = sub_2545FF244();
  if (v13 < 0)
  {
    goto LABEL_36;
  }

  v17 = *(v0 + 360);
  if (v13)
  {
    v18 = *(v0 + 352);
    v19 = *(v18 + 16);
    v20 = v18 + 40 * v17 + 32;
    v21 = *(v0 + 360);
    while (v19 != v21)
    {
      if (v17 < 0)
      {
        goto LABEL_33;
      }

      if (v21 >= *(v18 + 16))
      {
        goto LABEL_34;
      }

      sub_2545D850C(v20, v0 + 176);
      *(v0 + 416) = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2545DBE04((v22 > 1), v23 + 1, 1);
        v15 = *(v0 + 416);
      }

      *(v15 + 16) = v23 + 1;
      result = sub_2545D8570((v0 + 176), v15 + 40 * v23 + 32);
      v20 += 40;
      ++v21;
      if (!--v13)
      {
        *(v0 + 360) = v21;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v21 = *(v0 + 360);
LABEL_16:
  v24 = *(v0 + 352);
  v25 = *(v24 + 16);
  if (v21 != v25)
  {
    while (v21 < v25)
    {
      sub_2545D850C(v24 + 32 + 40 * v21, v0 + 216);
      *(v0 + 360) = v21 + 1;
      sub_2545D8570((v0 + 216), v0 + 256);
      *(v0 + 416) = v15;
      v37 = *(v15 + 16);
      v36 = *(v15 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2545DBE04((v36 > 1), v37 + 1, 1);
        v15 = *(v0 + 416);
      }

      *(v15 + 16) = v37 + 1;
      result = sub_2545D8570((v0 + 256), v15 + 40 * v37 + 32);
      v25 = *(v24 + 16);
      v21 = *(v0 + 360);
      if (v21 == v25)
      {
        goto LABEL_17;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

LABEL_17:
  (*(*(v0 + 584) + 8))(*(v0 + 608), *(v0 + 576));

  v26 = *(v15 + 16);
  if (v26)
  {
    *(v0 + 424) = v14;
    sub_2545DBDE4(0, v26, 0);
    v27 = *(v0 + 424);
    v28 = v15 + 32;
    do
    {
      v29 = *(v0 + 728);
      sub_2545D850C(v28, v0 + 296);
      v30 = *(v0 + 320);
      v31 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v30);
      sub_2545F3D54(v30, v31, v29);
      __swift_destroy_boxed_opaque_existential_0((v0 + 296));
      *(v0 + 424) = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2545DBDE4(v32 > 1, v33 + 1, 1);
        v27 = *(v0 + 424);
      }

      v34 = *(v0 + 728);
      v35 = *(v0 + 704);
      *(v27 + 16) = v33 + 1;
      sub_2545D8770(v34, v27 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33, type metadata accessor for ElementID);
      v28 += 40;
      --v26;
    }

    while (v26);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    v27 = MEMORY[0x277D84F90];
  }

  *(v0 + 1008) = v27;
  v38 = *(v0 + 944);
  v39 = v38;
  v40 = swift_task_alloc();
  *(v0 + 1016) = v40;
  *v40 = v0;
  v40[1] = sub_2545CB118;

  return sub_2545EA1F8(v27, v38);
}

uint64_t sub_2545CB118(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1016);
  v15 = *v2;
  *(*v2 + 1024) = v1;

  if (v1)
  {
    v6 = *(v4 + 1008);
    v7 = *(v4 + 944);
    v8 = *(v4 + 864);
    v9 = *(v4 + 408);

    v10 = *(v4 + 840);
    v11 = *(v4 + 832);
    v12 = sub_2545CB954;
  }

  else
  {
    v13 = *(v4 + 1008);

    *(v4 + 1032) = a1;
    v10 = *(v4 + 840);
    v11 = *(v4 + 832);
    v12 = sub_2545CB280;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_2545CB280()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 944);
  v4 = *(v0 + 688);
  v5 = *(v0 + 672);
  v80 = *(v0 + 640);
  v83 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_2545C2F44(sub_2545D88A0, v8, v1, type metadata accessor for HomeXLTileEntity, sub_2545DBE44, type metadata accessor for HomeXLTileEntity);

  sub_2545C3480(v9, &qword_27F6067F0, &qword_254600CC0, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity);

  (*(v6 + 8))(v80, v7);
  v10 = (*(v5 + 8))(v4, v83);
  v15 = *(v0 + 952);
  v16 = *(v0 + 864);
  if (v15 == *(v0 + 872))
  {
    v17 = *(v0 + 792);
    sub_2545FEA14();

    v18 = *(v0 + 440);
    v81 = v18;
    if (v18 && (v78 = *(v18 + 16)) != 0)
    {
      v10 = *(v0 + 408);
      v76 = v10[2];
      if (v76)
      {
        v19 = 0;
        v70 = *(v0 + 704);
        v72 = *(v0 + 744);
        v20 = *(v0 + 696);
        v68 = MEMORY[0x277D84F90];
        v74 = *(v0 + 408);
        while (1)
        {
          if (v19 >= v10[2])
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            return MEMORY[0x28216EA18](v10, v11, v12, v13, v14);
          }

          v21 = *(v72 + 72);
          v22 = v19 + 1;
          v84 = (*(v72 + 80) + 32) & ~*(v72 + 80);
          sub_2545D8660(v10 + v84 + v21 * v19, *(v0 + 776), type metadata accessor for HomeXLTileEntity);
          v23 = v18 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
          v24 = *(v70 + 72);
          v25 = v78;
          while (1)
          {
            v26 = *(v0 + 776);
            sub_2545D8660(v23, *(v0 + 736), type metadata accessor for ElementID);
            if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
            {
              break;
            }

            sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_11:
            v23 += v24;
            if (!--v25)
            {
              sub_2545D86C8(*(v0 + 776), type metadata accessor for HomeXLTileEntity);
              goto LABEL_7;
            }
          }

          v27 = *(v0 + 736);
          v28 = *(v20 + 20);
          v29 = qword_254600D00[*(v27 + v28)];
          v30 = qword_254600D00[*(*(v0 + 776) + v28)];
          sub_2545D86C8(v27, type metadata accessor for ElementID);
          if (v29 != v30)
          {
            goto LABEL_11;
          }

          sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for HomeXLTileEntity);
          v31 = v68;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2545DBE44(0, *(v68 + 16) + 1, 1);
            v31 = v68;
          }

          v33 = *(v31 + 16);
          v32 = *(v31 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_2545DBE44(v32 > 1, v33 + 1, 1);
            v31 = v68;
          }

          v34 = *(v0 + 768);
          *(v31 + 16) = v33 + 1;
          v68 = v31;
          sub_2545D8770(v34, v31 + v84 + v33 * v21, type metadata accessor for HomeXLTileEntity);
LABEL_7:
          v19 = v22;
          v10 = v74;
          v18 = v81;
          if (v22 == v76)
          {
            goto LABEL_29;
          }
        }
      }

      v68 = MEMORY[0x277D84F90];
LABEL_29:
      v48 = *(v0 + 848);

      v35 = v68;
    }

    else
    {

      v35 = *(v0 + 408);
    }

    v49 = *(v0 + 776);
    v50 = *(v0 + 768);
    v51 = *(v0 + 760);
    v52 = *(v0 + 752);
    v53 = *(v0 + 736);
    v54 = *(v0 + 728);
    v55 = *(v0 + 720);
    v56 = *(v0 + 712);
    v57 = *(v0 + 688);
    v60 = *(v0 + 680);
    v61 = *(v0 + 656);
    v62 = *(v0 + 648);
    v63 = *(v0 + 640);
    v64 = *(v0 + 616);
    v65 = *(v0 + 608);
    v66 = *(v0 + 600);
    v67 = *(v0 + 592);
    v69 = *(v0 + 568);
    v71 = *(v0 + 560);
    v73 = *(v0 + 536);
    v75 = *(v0 + 528);
    v77 = *(v0 + 512);
    v79 = *(v0 + 504);
    v82 = *(v0 + 496);
    v85 = *(v0 + 472);

    v58 = *(v0 + 8);

    return v58(v35);
  }

  else
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x259C124A0](*(v0 + 952), *(v0 + 864));
    }

    else
    {
      if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v10 = *(v16 + 8 * v15 + 32);
    }

    v36 = v10;
    *(v0 + 944) = v10;
    *(v0 + 952) = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_34;
    }

    v37 = *(v0 + 856);
    v38 = *(v0 + 648);
    v39 = *(v0 + 456);
    v40 = *(v0 + 464);
    *(v0 + 960) = sub_2545FEC94();
    v41 = [v36 uniqueIdentifier];
    sub_2545FEAC4();

    v42 = *(v40 + 56);
    *(v0 + 968) = v42;
    *(v0 + 976) = (v40 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v38, 0, 1, v39);
    LOBYTE(v41) = sub_2545FEC54();
    v43 = sub_2545FEC64();
    v45 = v44;
    v46 = *(MEMORY[0x277D15428] + 4);
    v47 = swift_task_alloc();
    *(v0 + 984) = v47;
    *v47 = v0;
    v47[1] = sub_2545CA220;
    v10 = *(v0 + 656);
    v11 = *(v0 + 648);
    v12 = v41 & 1;
    v13 = v43;
    v14 = v45;

    return MEMORY[0x28216EA18](v10, v11, v12, v13, v14);
  }
}

uint64_t sub_2545CB954()
{
  v1 = v0[118];
  v2 = v0[106];
  v3 = v0[99];
  v4 = v0[86];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[80];
  v8 = v0[79];
  v9 = v0[78];
  sub_2545FEA14();

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v37 = v0[128];
  v10 = v0[97];
  v11 = v0[96];
  v12 = v0[95];
  v13 = v0[94];
  v14 = v0[92];
  v15 = v0[91];
  v16 = v0[90];
  v17 = v0[89];
  v18 = v0[86];
  v19 = v0[85];
  v22 = v0[82];
  v23 = v0[81];
  v24 = v0[80];
  v25 = v0[77];
  v26 = v0[76];
  v27 = v0[75];
  v28 = v0[74];
  v29 = v0[71];
  v30 = v0[70];
  v31 = v0[67];
  v32 = v0[66];
  v33 = v0[64];
  v34 = v0[63];
  v35 = v0[62];
  v36 = v0[59];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2545CBB7C()
{
  v89 = v0;
  v1 = v0[116];
  v2 = *(v1 + 16);
  v0[130] = v2;
  if (v2)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
      v64 = v0[116];
    }

    v3 = v0[54];
    v4 = sub_2545FF0A4();
    __swift_project_value_buffer(v4, qword_27F60ADD8);
    sub_2545FE8E4();
    sub_2545D8588(v3);
    v5 = sub_2545FF084();
    v6 = sub_2545FF474();

    sub_2545CE4A8(v3);
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      v86 = v10;
      *v9 = 136315394;
      v12 = *(v1 + 16);
      v13 = MEMORY[0x277D84F90];
      if (v12)
      {
        v73 = v10;
        v75 = v9;
        v77 = v6;
        v79 = v5;
        v14 = v0[116];
        v15 = v0[69];
        v16 = v0[58];
        v87 = MEMORY[0x277D84F90];
        sub_2545DBE24(0, v12, 0);
        v13 = v87;
        v17 = *(v15 + 16);
        v15 += 16;
        v18 = v14 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
        v81 = *(v15 + 56);
        v83 = v17;
        v19 = (v15 - 8);
        do
        {
          v20 = v0[70];
          v21 = v0[68];
          v22 = v0[59];
          v83(v20, v18, v21);
          sub_2545FEB34();
          (*v19)(v20, v21);
          v87 = v13;
          v24 = *(v13 + 16);
          v23 = *(v13 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_2545DBE24(v23 > 1, v24 + 1, 1);
            v13 = v87;
          }

          v25 = v0[59];
          v26 = v0[57];
          *(v13 + 16) = v24 + 1;
          (*(v16 + 32))(v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v24, v25, v26);
          v18 += v81;
          --v12;
        }

        while (v12);
        v5 = v79;
        v8 = MEMORY[0x277D84F90];
        v6 = v77;
        v11 = v73;
        v9 = v75;
      }

      v47 = v0[54];
      v48 = MEMORY[0x259C121B0](v13, v0[57]);
      v50 = v49;

      v51 = sub_2545F0FB4(v48, v50, &v86);

      *(v9 + 4) = v51;
      *(v9 + 12) = 2080;
      if (v47)
      {
        if (v47 == 1)
        {
          v52 = 0xE300000000000000;
          v53 = 7105633;
        }

        else
        {
          v54 = v0[65];
          v55 = v0[54];
          v87 = 0x3A796C6E6FLL;
          v88 = 0xE500000000000000;
          sub_2545D8728(&qword_27F606768, type metadata accessor for HomeID);
          v56 = sub_2545FF3A4();
          MEMORY[0x259C120B0](v56);

          v53 = v87;
          v52 = v88;
        }
      }

      else
      {
        v52 = 0xE700000000000000;
        v53 = 0x746E6572727563;
      }

      v57 = sub_2545F0FB4(v53, v52, &v86);

      *(v9 + 14) = v57;
      _os_log_impl(&dword_2545AB000, v5, v6, "[WidgetDataModel.orderedHomes] homes=%s using scope=%s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v11, -1, -1);
      MEMORY[0x259C12CB0](v9, -1, -1);
    }

    v58 = v0[69];
    v0[46] = v8;
    v0[131] = 0;
    v59 = v0[116];
    if (*(v59 + 16))
    {
      v60 = v0[113];
      v61 = v0[111];
      (*(v58 + 16))(v0[71], v59 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v0[68]);
      v0[132] = sub_2545FECD4();
      v63 = sub_2545FF334();

      return MEMORY[0x2822009F8](sub_2545CC440, v63, v62);
    }

    __break(1u);
    goto LABEL_28;
  }

  v27 = v0[99];
  sub_2545FEA14();

  if (qword_27F6063A0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v28 = sub_2545FF0A4();
  __swift_project_value_buffer(v28, qword_27F60ADD8);
  v29 = sub_2545FF084();
  v30 = sub_2545FF454();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[106];
  if (v31)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2545AB000, v29, v30, "WidgetDataModel.orderedHomes is empty", v33, 2u);
    MEMORY[0x259C12CB0](v33, -1, -1);
  }

  v34 = v0[97];
  v35 = v0[96];
  v36 = v0[95];
  v37 = v0[94];
  v38 = v0[92];
  v39 = v0[91];
  v40 = v0[90];
  v41 = v0[89];
  v42 = v0[86];
  v43 = v0[85];
  v65 = v0[82];
  v66 = v0[81];
  v67 = v0[80];
  v68 = v0[77];
  v69 = v0[76];
  v70 = v0[75];
  v71 = v0[74];
  v72 = v0[71];
  v74 = v0[70];
  v76 = v0[67];
  v78 = v0[66];
  v80 = v0[64];
  v82 = v0[63];
  v84 = v0[62];
  v85 = v0[59];

  v44 = v0[1];
  v45 = MEMORY[0x277D84F90];

  return v44(v45);
}

uint64_t sub_2545CC25C()
{
  v1 = v0[114];
  v2 = v0[106];
  v3 = v0[99];
  sub_2545FEA14();
  sub_2545FEA14();

  v31 = v0[117];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[95];
  v7 = v0[94];
  v8 = v0[92];
  v9 = v0[91];
  v10 = v0[90];
  v11 = v0[89];
  v12 = v0[86];
  v13 = v0[85];
  v16 = v0[82];
  v17 = v0[81];
  v18 = v0[80];
  v19 = v0[77];
  v20 = v0[76];
  v21 = v0[75];
  v22 = v0[74];
  v23 = v0[71];
  v24 = v0[70];
  v25 = v0[67];
  v26 = v0[66];
  v27 = v0[64];
  v28 = v0[63];
  v29 = v0[62];
  v30 = v0[59];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2545CC440()
{
  v1 = v0[132];
  v2 = v0[110];
  sub_2545FEA14();
  v0[133] = sub_2545FEBC4();
  v3 = v0[105];
  v4 = v0[104];

  return MEMORY[0x2822009F8](sub_2545CC4B4, v4, v3);
}

uint64_t sub_2545CC4B4()
{
  v1 = v0[113];
  v2 = v0[111];
  v3 = v0[71];
  v4 = v0[67];
  sub_2545FEB34();
  v0[134] = sub_2545FECD4();
  v6 = sub_2545FF334();
  v0[135] = v6;
  v0[136] = v5;

  return MEMORY[0x2822009F8](sub_2545CC558, v6, v5);
}

uint64_t sub_2545CC558()
{
  v1 = v0[81];
  v2 = v0[64];
  v3 = v0[57];
  v4 = v0[58];
  (*(v4 + 16))(v1, v0[67], v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = sub_2545FECF4();
  sub_2545C3148(v1, v5, v6, v7, v8, v2);

  sub_2545B612C(v1, &qword_27F6064D0, &unk_2546002B0);
  v9 = *(MEMORY[0x277D15208] + 4);
  v10 = swift_task_alloc();
  v0[137] = v10;
  *v10 = v0;
  v10[1] = sub_2545CC6B4;
  v11 = v0[133];
  v12 = v0[85];
  v13 = v0[64];
  v14 = MEMORY[0x277D159D8];
  v15 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v12, v13, v14, v15);
}

uint64_t sub_2545CC6B4()
{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v10 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v4 = v2[116];
    v5 = v2[46];

    v6 = v2[136];
    v7 = v2[135];
    v8 = sub_2545CD520;
  }

  else
  {
    v6 = v2[136];
    v7 = v2[135];
    v8 = sub_2545CC7E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2545CC7E4()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[67];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v3, type metadata accessor for HomeID);
  v4 = v0[105];
  v5 = v0[104];

  return MEMORY[0x2822009F8](sub_2545CC878, v5, v4);
}

uint64_t sub_2545CC878()
{
  v1 = v0[113];
  v2 = v0[111];
  v3 = v0[106];
  v4 = v0[85];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  sub_2545FED04();
  v0[139] = sub_2545FEB44();
  v8 = *(v6 + 8);
  v0[140] = v8;
  v0[141] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  v0[142] = sub_2545FECD4();
  v10 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545CC970, v10, v9);
}

uint64_t sub_2545CC970()
{
  v1 = v0[142];
  v2 = v0[110];
  sub_2545FEA14();
  v0[143] = sub_2545FEBC4();
  v3 = v0[105];
  v4 = v0[104];

  return MEMORY[0x2822009F8](sub_2545CC9E4, v4, v3);
}

uint64_t sub_2545CC9E4()
{
  v1 = v0[111];
  v2 = v0[71];
  v3 = v0[66];
  sub_2545FEB34();
  v0[144] = sub_2545FECD4();
  v4 = *(MEMORY[0x277D15218] + 4);
  v5 = swift_task_alloc();
  v0[145] = v5;
  *v5 = v0;
  v5[1] = sub_2545CCA94;
  v6 = v0[143];

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545CCA94(uint64_t a1)
{
  v3 = *(*v1 + 1160);
  v7 = *v1;
  *(*v1 + 1168) = a1;

  sub_2545FEF44();
  sub_2545D8728(&qword_27F606698, MEMORY[0x277D16AF0]);
  v5 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545CCBEC, v5, v4);
}

uint64_t sub_2545CCBEC()
{
  v1 = v0[146];
  v2 = v0[144];
  v3 = v0[113];
  v4 = v0[111];
  v5 = v0[66];
  v0[147] = sub_2545FEF24();
  sub_2545FEA14();
  v7 = sub_2545FF334();
  v0[148] = v7;
  v0[149] = v6;

  return MEMORY[0x2822009F8](sub_2545CCC94, v7, v6);
}

uint64_t sub_2545CCC94()
{
  v1 = v0[98];
  v0[47] = v0[147];
  v0[150] = sub_2545FF344();
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545CCD28, v3, v2);
}

uint64_t sub_2545CCD28()
{
  v1 = v0[150];
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066A0, &qword_254600BA0);
  sub_2545B4F2C(&qword_27F6066A8, &qword_27F6066A0, &qword_254600BA0);
  v0[151] = sub_2545FF3E4();
  v2 = v0[149];
  v3 = v0[148];

  return MEMORY[0x2822009F8](sub_2545CCDF4, v3, v2);
}

uint64_t sub_2545CCDF4()
{
  v1 = v0[147];
  v2 = v0[144];
  v3 = v0[143];
  v4 = v0[66];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v4, type metadata accessor for HomeID);

  v5 = v0[105];
  v6 = v0[104];

  return MEMORY[0x2822009F8](sub_2545CCE9C, v6, v5);
}

unint64_t sub_2545CCE9C()
{
  result = *(v0 + 1208);
  v63 = *(result + 16);
  if (v63)
  {
    v2 = 0;
    v3 = *(*(v0 + 488) + 80);
    v62 = result + ((v3 + 32) & ~v3);
    v4 = MEMORY[0x277D84F98];
    v61 = *(v0 + 1208);
    while (v2 < *(result + 16))
    {
      v6 = *(v0 + 496);
      v5 = *(v0 + 504);
      v7 = *(v0 + 480);
      v8 = *(v0 + 488);
      v9 = *(v8 + 16);
      v10 = *(v8 + 72);
      v9(v5, v62 + v10 * v2, v7);
      v11 = sub_2545FEE54();
      v9(v6, v5, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 384) = v4;
      result = sub_2545C56D4(v11);
      v14 = v4[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_50;
      }

      v18 = v13;
      if (v4[3] >= v17)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = result;
          sub_2545C8780();
          result = v27;
        }
      }

      else
      {
        sub_2545C7AB4(v17, isUniquelyReferenced_nonNull_native);
        v19 = *(v0 + 384);
        result = sub_2545C56D4(v11);
        if ((v18 & 1) != (v20 & 1))
        {

          return sub_2545FF7D4();
        }
      }

      v4 = *(v0 + 384);
      v21 = *(v0 + 496);
      v22 = *(v0 + 504);
      v23 = *(v0 + 480);
      v24 = *(v0 + 488);
      if (v18)
      {
        (*(v24 + 40))(v4[7] + result * v10, v21, *(v0 + 480));
        (*(v24 + 8))(v22, v23);
      }

      else
      {
        v4[(result >> 6) + 8] |= 1 << result;
        *(v4[6] + 8 * result) = v11;
        (*(v24 + 32))(v4[7] + result * v10, v21, v23);
        result = (*(v24 + 8))(v22, v23);
        v25 = v4[2];
        v16 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v16)
        {
          goto LABEL_52;
        }

        v4[2] = v26;
      }

      ++v2;
      result = v61;
      if (v63 == v2)
      {
        v28 = *(v0 + 1208);
        goto LABEL_16;
      }
    }

    goto LABEL_49;
  }

LABEL_16:
  v29 = *(v0 + 680);
  v30 = *(v0 + 600);
  v31 = *(v0 + 592);
  v32 = *(v0 + 584);
  v33 = *(v0 + 576);
  v34 = *(v0 + 448);

  sub_2545FED24();

  sub_2545FEF54();
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8]);
  v35 = sub_2545FF254();
  v36 = MEMORY[0x277D84F90];
  *(v0 + 392) = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v35 & ~(v35 >> 63), 0);
  v37 = *(v0 + 392);
  (*(v32 + 16))(v30, v31, v33);
  result = sub_2545FF244();
  if (v35 < 0)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v38 = *(v0 + 344);
  if (v35)
  {
    v39 = *(v0 + 336);
    v40 = *(v39 + 16);
    v41 = v39 + 40 * v38 + 32;
    v42 = *(v0 + 344);
    while (v40 != v42)
    {
      if (v38 < 0)
      {
        goto LABEL_47;
      }

      if (v42 >= *(v39 + 16))
      {
        goto LABEL_48;
      }

      sub_2545D850C(v41, v0 + 16);
      *(v0 + 392) = v37;
      v44 = *(v37 + 16);
      v43 = *(v37 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_2545DBE04((v43 > 1), v44 + 1, 1);
        v37 = *(v0 + 392);
      }

      *(v37 + 16) = v44 + 1;
      result = sub_2545D8570((v0 + 16), v37 + 40 * v44 + 32);
      v41 += 40;
      ++v42;
      if (!--v35)
      {
        *(v0 + 344) = v42;
        v36 = MEMORY[0x277D84F90];
        goto LABEL_27;
      }
    }

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
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v42 = *(v0 + 344);
LABEL_27:
  v45 = *(v0 + 336);
  v46 = *(v45 + 16);
  if (v42 != v46)
  {
    while (v42 < v46)
    {
      sub_2545D850C(v45 + 32 + 40 * v42, v0 + 56);
      *(v0 + 344) = v42 + 1;
      sub_2545D8570((v0 + 56), v0 + 96);
      *(v0 + 392) = v37;
      v58 = *(v37 + 16);
      v57 = *(v37 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_2545DBE04((v57 > 1), v58 + 1, 1);
        v37 = *(v0 + 392);
      }

      *(v37 + 16) = v58 + 1;
      result = sub_2545D8570((v0 + 96), v37 + 40 * v58 + 32);
      v46 = *(v45 + 16);
      v42 = *(v0 + 344);
      if (v42 == v46)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_51;
  }

LABEL_28:
  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));

  v47 = *(v37 + 16);
  if (v47)
  {
    *(v0 + 400) = v36;
    sub_2545DBDE4(0, v47, 0);
    v48 = *(v0 + 400);
    v49 = v37 + 32;
    do
    {
      v50 = *(v0 + 712);
      sub_2545D850C(v49, v0 + 136);
      v51 = *(v0 + 160);
      v52 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v51);
      sub_2545F3D54(v51, v52, v50);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      *(v0 + 400) = v48;
      v54 = *(v48 + 16);
      v53 = *(v48 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2545DBDE4(v53 > 1, v54 + 1, 1);
        v48 = *(v0 + 400);
      }

      v55 = *(v0 + 712);
      v56 = *(v0 + 704);
      *(v48 + 16) = v54 + 1;
      sub_2545D8770(v55, v48 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v54, type metadata accessor for ElementID);
      v49 += 40;
      --v47;
    }

    while (v47);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    v48 = MEMORY[0x277D84F90];
  }

  *(v0 + 1216) = v48;
  v59 = swift_task_alloc();
  *(v0 + 1224) = v59;
  *v59 = v0;
  v59[1] = sub_2545CD7B0;
  v60 = *(v0 + 1112);

  return sub_2545EA1F8(v48, v60);
}

uint64_t sub_2545CD520()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[67];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v3, type metadata accessor for HomeID);
  v4 = v0[105];
  v5 = v0[104];

  return MEMORY[0x2822009F8](sub_2545CD5B4, v5, v4);
}

uint64_t sub_2545CD5B4()
{
  v1 = v0[106];
  v2 = v0[99];
  v3 = v0[71];
  v4 = v0[69];
  v5 = v0[68];
  sub_2545FEA14();

  (*(v4 + 8))(v3, v5);
  v33 = v0[138];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[95];
  v9 = v0[94];
  v10 = v0[92];
  v11 = v0[91];
  v12 = v0[90];
  v13 = v0[89];
  v14 = v0[86];
  v15 = v0[85];
  v18 = v0[82];
  v19 = v0[81];
  v20 = v0[80];
  v21 = v0[77];
  v22 = v0[76];
  v23 = v0[75];
  v24 = v0[74];
  v25 = v0[71];
  v26 = v0[70];
  v27 = v0[67];
  v28 = v0[66];
  v29 = v0[64];
  v30 = v0[63];
  v31 = v0[62];
  v32 = v0[59];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2545CD7B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1224);
  v14 = *v2;
  *(*v2 + 1232) = v1;

  if (v1)
  {
    v6 = v4[152];
    v7 = v4[116];
    v8 = v4[46];

    v9 = v4[105];
    v10 = v4[104];
    v11 = sub_2545CDF54;
  }

  else
  {
    v12 = v4[152];

    v4[155] = a1;
    v9 = v4[105];
    v10 = v4[104];
    v11 = sub_2545CD904;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2545CD904()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1232);
  v75 = *(v0 + 1128);
  v72 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v78 = *(v0 + 1040);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 568);
  v7 = *(v0 + 544);
  v66 = *(v0 + 1048) + 1;
  v69 = *(v0 + 664);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_2545C2F44(sub_2545D87D8, v8, v1, type metadata accessor for HomeXLTileEntity, sub_2545DBE44, type metadata accessor for HomeXLTileEntity);

  sub_2545C3480(v9, &qword_27F6067F0, &qword_254600CC0, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity);

  v72(v6, v7);
  v10 = (*(v5 + 8))(v4, v69);
  if (v66 == v78)
  {
    v13 = *(v0 + 928);
    v14 = *(v0 + 792);
    v15 = *(v0 + 440);

    sub_2545FEA14();
    if (v15 && (v76 = *(v0 + 440), (v73 = *(v76 + 16)) != 0))
    {
      v10 = *(v0 + 368);
      v70 = *(v10 + 2);
      if (v70)
      {
        v16 = 0;
        v64 = *(v0 + 744);
        v17 = *(v0 + 696);
        v62 = MEMORY[0x277D84F90];
        v67 = *(v0 + 368);
        while (1)
        {
          if (v16 >= *(v10 + 2))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            return MEMORY[0x2822009F8](v10, v11, v12);
          }

          v18 = *(v0 + 704);
          v19 = (*(v64 + 80) + 32) & ~*(v64 + 80);
          v20 = v16 + 1;
          v79 = *(v64 + 72);
          sub_2545D8660(v10 + v19 + v79 * v16, *(v0 + 760), type metadata accessor for HomeXLTileEntity);
          v21 = v76 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
          v22 = *(v18 + 72);
          v23 = v73;
          while (1)
          {
            v24 = *(v0 + 760);
            sub_2545D8660(v21, *(v0 + 720), type metadata accessor for ElementID);
            if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
            {
              break;
            }

            sub_2545D86C8(*(v0 + 720), type metadata accessor for ElementID);
LABEL_11:
            v21 += v22;
            if (!--v23)
            {
              sub_2545D86C8(*(v0 + 760), type metadata accessor for HomeXLTileEntity);
              goto LABEL_7;
            }
          }

          v25 = *(v0 + 720);
          v26 = *(v17 + 20);
          v27 = qword_254600D00[*(v25 + v26)];
          v28 = qword_254600D00[*(*(v0 + 760) + v26)];
          sub_2545D86C8(v25, type metadata accessor for ElementID);
          if (v27 != v28)
          {
            goto LABEL_11;
          }

          sub_2545D8770(*(v0 + 760), *(v0 + 752), type metadata accessor for HomeXLTileEntity);
          v29 = v62;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2545DBE44(0, *(v62 + 16) + 1, 1);
            v29 = v62;
          }

          v31 = *(v29 + 16);
          v30 = *(v29 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_2545DBE44(v30 > 1, v31 + 1, 1);
            v29 = v62;
          }

          v32 = *(v0 + 752);
          *(v29 + 16) = v31 + 1;
          v62 = v29;
          sub_2545D8770(v32, v29 + v19 + v31 * v79, type metadata accessor for HomeXLTileEntity);
LABEL_7:
          v16 = v20;
          v10 = v67;
          if (v20 == v70)
          {
            goto LABEL_25;
          }
        }
      }

      v62 = MEMORY[0x277D84F90];
LABEL_25:
      v41 = *(v0 + 848);

      v40 = v62;
    }

    else
    {

      v40 = *(v0 + 368);
    }

    v42 = *(v0 + 776);
    v43 = *(v0 + 768);
    v44 = *(v0 + 760);
    v45 = *(v0 + 752);
    v46 = *(v0 + 736);
    v47 = *(v0 + 728);
    v48 = *(v0 + 720);
    v49 = *(v0 + 712);
    v50 = *(v0 + 688);
    v53 = *(v0 + 680);
    v54 = *(v0 + 656);
    v55 = *(v0 + 648);
    v56 = *(v0 + 640);
    v57 = *(v0 + 616);
    v58 = *(v0 + 608);
    v59 = *(v0 + 600);
    v60 = *(v0 + 592);
    v61 = *(v0 + 568);
    v63 = *(v0 + 560);
    v65 = *(v0 + 536);
    v68 = *(v0 + 528);
    v71 = *(v0 + 512);
    v74 = *(v0 + 504);
    v77 = *(v0 + 496);
    v80 = *(v0 + 472);

    v51 = *(v0 + 8);

    return v51(v40);
  }

  else
  {
    v33 = *(v0 + 1048) + 1;
    *(v0 + 1048) = v33;
    v34 = *(v0 + 928);
    if (v33 >= *(v34 + 16))
    {
      goto LABEL_30;
    }

    v35 = *(v0 + 904);
    v36 = *(v0 + 888);
    (*(*(v0 + 552) + 16))(*(v0 + 568), v34 + ((*(*(v0 + 552) + 80) + 32) & ~*(*(v0 + 552) + 80)) + *(*(v0 + 552) + 72) * v33, *(v0 + 544));
    *(v0 + 1056) = sub_2545FECD4();
    v37 = sub_2545FF334();
    v39 = v38;
    v10 = sub_2545CC440;
    v11 = v37;
    v12 = v39;

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_2545CDF54()
{
  v1 = v0[141];
  v2 = v0[140];
  v3 = v0[139];
  v4 = v0[106];
  v5 = v0[99];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[83];
  v9 = v0[71];
  v10 = v0[68];
  sub_2545FEA14();

  v2(v9, v10);
  (*(v7 + 8))(v6, v8);
  v38 = v0[154];
  v11 = v0[97];
  v12 = v0[96];
  v13 = v0[95];
  v14 = v0[94];
  v15 = v0[92];
  v16 = v0[91];
  v17 = v0[90];
  v18 = v0[89];
  v19 = v0[86];
  v20 = v0[85];
  v23 = v0[82];
  v24 = v0[81];
  v25 = v0[80];
  v26 = v0[77];
  v27 = v0[76];
  v28 = v0[75];
  v29 = v0[74];
  v30 = v0[71];
  v31 = v0[70];
  v32 = v0[67];
  v33 = v0[66];
  v34 = v0[64];
  v35 = v0[63];
  v36 = v0[62];
  v37 = v0[59];

  v21 = v0[1];

  return v21();
}

unint64_t sub_2545CE174()
{
  result = qword_27F606670;
  if (!qword_27F606670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606520, &qword_2546002E0);
    sub_2545D8728(&qword_281533130, type metadata accessor for SelectedHomeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606670);
  }

  return result;
}

unint64_t sub_2545CE230()
{
  result = qword_281532EB0;
  if (!qword_281532EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532EB0);
  }

  return result;
}

unint64_t sub_2545CE288()
{
  result = qword_281532EA8;
  if (!qword_281532EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532EA8);
  }

  return result;
}

unint64_t sub_2545CE328()
{
  result = qword_281532EB8[0];
  if (!qword_281532EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281532EB8);
  }

  return result;
}

uint64_t sub_2545CE414(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2545CE45C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2545CE4A8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_2545CE4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[55] = a2;
  v3[56] = a3;
  v3[54] = a1;
  v4 = sub_2545FEB04();
  v3[57] = v4;
  v5 = *(v4 - 8);
  v3[58] = v5;
  v6 = *(v5 + 64) + 15;
  v3[59] = swift_task_alloc();
  v7 = sub_2545FEE64();
  v3[60] = v7;
  v8 = *(v7 - 8);
  v3[61] = v8;
  v9 = *(v8 + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20) - 8) + 64) + 15;
  v3[64] = swift_task_alloc();
  v11 = type metadata accessor for HomeID();
  v3[65] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v13 = sub_2545FEB64();
  v3[68] = v13;
  v14 = *(v13 - 8);
  v3[69] = v14;
  v15 = *(v14 + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v16 = sub_2545FEF84();
  v3[72] = v16;
  v17 = *(v16 - 8);
  v3[73] = v17;
  v18 = *(v17 + 64) + 15;
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606758, &unk_254601DD0) - 8) + 64) + 15;
  v3[77] = swift_task_alloc();
  v20 = sub_2545FEED4();
  v3[78] = v20;
  v21 = *(v20 - 8);
  v3[79] = v21;
  v22 = *(v21 + 64) + 15;
  v3[80] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0) - 8) + 64) + 15;
  v3[81] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606760, &qword_254600C40) - 8) + 64) + 15;
  v3[82] = swift_task_alloc();
  v25 = sub_2545FED84();
  v3[83] = v25;
  v26 = *(v25 - 8);
  v3[84] = v26;
  v27 = *(v26 + 64) + 15;
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v28 = type metadata accessor for ElementID();
  v3[87] = v28;
  v29 = *(v28 - 8);
  v3[88] = v29;
  v30 = *(v29 + 64) + 15;
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v31 = *(type metadata accessor for ToggleControlEntity() - 8);
  v3[93] = v31;
  v32 = *(v31 + 64) + 15;
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = sub_2545FF354();
  v3[99] = sub_2545FF344();
  type metadata accessor for IntentsService();
  v3[100] = swift_initStaticObject();
  v33 = swift_task_alloc();
  v3[101] = v33;
  *v33 = v3;
  v33[1] = sub_2545CEA34;

  return sub_2545B0448();
}

uint64_t sub_2545CEA34(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 808);
  v7 = *v2;
  v5[102] = a1;
  v5[103] = v1;

  v8 = v4[99];
  v9 = v4[98];
  v10 = sub_2545FF334();
  if (v3)
  {
    v12 = sub_2545D8814;
  }

  else
  {
    v5[104] = v10;
    v5[105] = v11;
    v12 = sub_2545CEBA8;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_2545CEBA8()
{
  v1 = *(v0 + 816);
  if (!v1 || (v2 = *(v0 + 800), v1, v3 = sub_2545B027C(), (*(v0 + 848) = v3) == 0))
  {
    v11 = *(v0 + 792);
    sub_2545FEA14();
    v12 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  *(v0 + 856) = sub_2545FECC4();
  if (sub_2545FECA4() != 7)
  {
    *(v0 + 880) = sub_2545FEBD4();
    *(v0 + 888) = sub_2545FECE4();
    *(v0 + 896) = sub_2545FECD4();
    *(v0 + 904) = sub_2545D8728(&qword_27F6064D8, MEMORY[0x277D15960]);
    v26 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545CF2B4, v26, v25);
  }

  v4 = sub_2545FACE8(*(v0 + 432));
  *(v0 + 864) = v4;
  *(v0 + 408) = MEMORY[0x277D84F90];
  if (!(v4 >> 62))
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 872) = v8;
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  v39 = v4;
  v40 = sub_2545FF674();
  v4 = v39;
  *(v0 + 872) = v40;
  if (!v40)
  {
LABEL_22:
    v41 = *(v0 + 792);
    sub_2545FEA14();

    v42 = *(v0 + 440);
    if (v42)
    {
      v79 = *(v42 + 16);
      if (v79)
      {
        v4 = *(v0 + 408);
        v77 = *(v4 + 16);
        if (v77)
        {
          v43 = 0;
          v69 = *(v0 + 704);
          v71 = *(v0 + 744);
          v44 = *(v0 + 696);
          v82 = MEMORY[0x277D84F90];
          v73 = *(v0 + 440);
          v75 = *(v0 + 408);
          while (1)
          {
            if (v43 >= *(v4 + 16))
            {
              __break(1u);
LABEL_43:
              __break(1u);
              return MEMORY[0x28216EA18](v4, v9, v5, v6, v7);
            }

            v45 = (*(v71 + 80) + 32) & ~*(v71 + 80);
            v46 = v43 + 1;
            v81 = *(v71 + 72);
            sub_2545D8660(v4 + v45 + v81 * v43, *(v0 + 776), type metadata accessor for ToggleControlEntity);
            v47 = v42 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
            v48 = *(v69 + 72);
            v49 = v79;
            while (1)
            {
              v50 = *(v0 + 776);
              sub_2545D8660(v47, *(v0 + 736), type metadata accessor for ElementID);
              if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
              {
                break;
              }

              sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_31:
              v47 += v48;
              if (!--v49)
              {
                sub_2545D86C8(*(v0 + 776), type metadata accessor for ToggleControlEntity);
                goto LABEL_27;
              }
            }

            v51 = *(v0 + 736);
            v52 = *(v44 + 20);
            v53 = qword_254600D00[*(v51 + v52)];
            v54 = qword_254600D00[*(*(v0 + 776) + v52)];
            sub_2545D86C8(v51, type metadata accessor for ElementID);
            if (v53 != v54)
            {
              goto LABEL_31;
            }

            sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for ToggleControlEntity);
            v55 = v82;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2545DC21C(0, *(v82 + 16) + 1, 1);
              v55 = v82;
            }

            v57 = *(v55 + 16);
            v56 = *(v55 + 24);
            if (v57 >= v56 >> 1)
            {
              sub_2545DC21C(v56 > 1, v57 + 1, 1);
              v55 = v82;
            }

            v58 = *(v0 + 768);
            *(v55 + 16) = v57 + 1;
            v82 = v55;
            sub_2545D8770(v58, v55 + v45 + v57 * v81, type metadata accessor for ToggleControlEntity);
LABEL_27:
            v43 = v46;
            v4 = v75;
            v42 = v73;
            if (v46 == v77)
            {
              goto LABEL_41;
            }
          }
        }

        v82 = MEMORY[0x277D84F90];
LABEL_41:
        v59 = *(v0 + 848);

LABEL_10:
        v13 = *(v0 + 776);
        v14 = *(v0 + 768);
        v15 = *(v0 + 760);
        v16 = *(v0 + 752);
        v17 = *(v0 + 736);
        v18 = *(v0 + 728);
        v19 = *(v0 + 720);
        v20 = *(v0 + 712);
        v21 = *(v0 + 688);
        v22 = *(v0 + 680);
        v60 = *(v0 + 656);
        v61 = *(v0 + 648);
        v62 = *(v0 + 640);
        v63 = *(v0 + 616);
        v64 = *(v0 + 608);
        v65 = *(v0 + 600);
        v66 = *(v0 + 592);
        v67 = *(v0 + 568);
        v68 = *(v0 + 560);
        v70 = *(v0 + 536);
        v72 = *(v0 + 528);
        v74 = *(v0 + 512);
        v76 = *(v0 + 504);
        v78 = *(v0 + 496);
        v80 = *(v0 + 472);

        v23 = *(v0 + 8);

        return v23(v82);
      }
    }

    v12 = *(v0 + 408);
LABEL_9:
    v82 = v12;
    goto LABEL_10;
  }

LABEL_6:
  v9 = *(v0 + 864);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x259C124A0](0);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v10 = *(v9 + 32);
  }

  v27 = v10;
  *(v0 + 944) = v10;
  *(v0 + 952) = 1;
  v28 = *(v0 + 856);
  v29 = *(v0 + 648);
  v30 = *(v0 + 456);
  v31 = *(v0 + 464);
  *(v0 + 960) = sub_2545FEC94();
  v32 = [v27 uniqueIdentifier];
  sub_2545FEAC4();

  v33 = *(v31 + 56);
  *(v0 + 968) = v33;
  *(v0 + 976) = (v31 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v33(v29, 0, 1, v30);
  LOBYTE(v29) = sub_2545FEC54();
  v34 = sub_2545FEC64();
  v36 = v35;
  v37 = *(MEMORY[0x277D15428] + 4);
  v38 = swift_task_alloc();
  *(v0 + 984) = v38;
  *v38 = v0;
  v38[1] = sub_2545CF488;
  v4 = *(v0 + 656);
  v9 = *(v0 + 648);
  v5 = v29 & 1;
  v6 = v34;
  v7 = v36;

  return MEMORY[0x28216EA18](v4, v9, v5, v6, v7);
}

uint64_t sub_2545CF2B4()
{
  v1 = v0[112];
  v2 = v0[110];
  sub_2545FEA14();
  v0[114] = sub_2545FEBC4();
  v3 = swift_task_alloc();
  v0[115] = v3;
  *v3 = v0;
  v3[1] = sub_2545CF360;
  v4 = v0[54];

  return sub_2545DD5C0(v4);
}

uint64_t sub_2545CF360(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 920);
  v10 = *v2;
  v3[116] = a1;
  v3[117] = v1;

  if (v1)
  {
    v5 = v3[105];
    v6 = v3[104];
    v7 = sub_2545D88BC;
  }

  else
  {
    v8 = v3[114];
    sub_2545FEA14();
    v5 = v3[105];
    v6 = v3[104];
    v7 = sub_2545D0BBC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2545CF488()
{
  v1 = *v0;
  v2 = *(*v0 + 984);
  v3 = *(*v0 + 960);
  v4 = *(*v0 + 648);
  v8 = *v0;

  sub_2545B612C(v4, &qword_27F6064D0, &unk_2546002B0);
  v5 = *(v1 + 840);
  v6 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_2545CF5F4, v6, v5);
}

uint64_t sub_2545CF5F4()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    v4 = sub_2545B612C(v3, &qword_27F606760, &qword_254600C40);
    v9 = *(v0 + 952);
    v10 = *(v0 + 864);
    if (v9 == *(v0 + 872))
    {
      v11 = *(v0 + 792);
      sub_2545FEA14();

      v12 = *(v0 + 440);
      v88 = v12;
      if (v12 && (v86 = *(v12 + 16)) != 0)
      {
        v4 = *(v0 + 408);
        v84 = v4[2];
        if (v84)
        {
          v13 = 0;
          v78 = *(v0 + 704);
          v80 = *(v0 + 744);
          v14 = *(v0 + 696);
          v76 = MEMORY[0x277D84F90];
          v82 = *(v0 + 408);
          while (1)
          {
            if (v13 >= v4[2])
            {
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              return MEMORY[0x28216EA18](v4, v5, v6, v7, v8);
            }

            v15 = *(v80 + 72);
            v16 = v13 + 1;
            v90 = (*(v80 + 80) + 32) & ~*(v80 + 80);
            sub_2545D8660(v4 + v90 + v15 * v13, *(v0 + 776), type metadata accessor for ToggleControlEntity);
            v17 = v12 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
            v18 = *(v78 + 72);
            v19 = v86;
            while (1)
            {
              v20 = *(v0 + 776);
              sub_2545D8660(v17, *(v0 + 736), type metadata accessor for ElementID);
              if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
              {
                break;
              }

              sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_12:
              v17 += v18;
              if (!--v19)
              {
                sub_2545D86C8(*(v0 + 776), type metadata accessor for ToggleControlEntity);
                goto LABEL_8;
              }
            }

            v21 = *(v0 + 736);
            v22 = *(v14 + 20);
            v23 = qword_254600D00[*(v21 + v22)];
            v24 = qword_254600D00[*(*(v0 + 776) + v22)];
            sub_2545D86C8(v21, type metadata accessor for ElementID);
            if (v23 != v24)
            {
              goto LABEL_12;
            }

            sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for ToggleControlEntity);
            v25 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2545DC21C(0, *(v76 + 16) + 1, 1);
              v25 = v76;
            }

            v27 = *(v25 + 16);
            v26 = *(v25 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_2545DC21C(v26 > 1, v27 + 1, 1);
              v25 = v76;
            }

            v28 = *(v0 + 768);
            *(v25 + 16) = v27 + 1;
            v76 = v25;
            sub_2545D8770(v28, v25 + v90 + v27 * v15, type metadata accessor for ToggleControlEntity);
LABEL_8:
            v13 = v16;
            v4 = v82;
            v12 = v88;
            if (v16 == v84)
            {
              goto LABEL_33;
            }
          }
        }

        v76 = MEMORY[0x277D84F90];
LABEL_33:
        v56 = *(v0 + 848);

        v43 = v76;
      }

      else
      {

        v43 = *(v0 + 408);
      }

      v57 = *(v0 + 776);
      v58 = *(v0 + 768);
      v59 = *(v0 + 760);
      v60 = *(v0 + 752);
      v61 = *(v0 + 736);
      v62 = *(v0 + 728);
      v63 = *(v0 + 720);
      v64 = *(v0 + 712);
      v65 = *(v0 + 688);
      v68 = *(v0 + 680);
      v69 = *(v0 + 656);
      v70 = *(v0 + 648);
      v71 = *(v0 + 640);
      v72 = *(v0 + 616);
      v73 = *(v0 + 608);
      v74 = *(v0 + 600);
      v75 = *(v0 + 592);
      v77 = *(v0 + 568);
      v79 = *(v0 + 560);
      v81 = *(v0 + 536);
      v83 = *(v0 + 528);
      v85 = *(v0 + 512);
      v87 = *(v0 + 504);
      v89 = *(v0 + 496);
      v91 = *(v0 + 472);

      v66 = *(v0 + 8);

      return v66(v43);
    }

    else
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x259C124A0](*(v0 + 952), *(v0 + 864));
      }

      else
      {
        if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v4 = *(v10 + 8 * v9 + 32);
      }

      v44 = v4;
      *(v0 + 944) = v4;
      *(v0 + 952) = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_38;
      }

      v45 = *(v0 + 856);
      v46 = *(v0 + 648);
      v47 = *(v0 + 456);
      v48 = *(v0 + 464);
      *(v0 + 960) = sub_2545FEC94();
      v49 = [v44 uniqueIdentifier];
      sub_2545FEAC4();

      v50 = *(v48 + 56);
      *(v0 + 968) = v50;
      *(v0 + 976) = (v48 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v50(v46, 0, 1, v47);
      LOBYTE(v49) = sub_2545FEC54();
      v51 = sub_2545FEC64();
      v53 = v52;
      v54 = *(MEMORY[0x277D15428] + 4);
      v55 = swift_task_alloc();
      *(v0 + 984) = v55;
      *v55 = v0;
      v55[1] = sub_2545CF488;
      v4 = *(v0 + 656);
      v5 = *(v0 + 648);
      v6 = v49 & 1;
      v7 = v51;
      v8 = v53;

      return MEMORY[0x28216EA18](v4, v5, v6, v7, v8);
    }
  }

  else
  {
    v29 = *(v0 + 976);
    v30 = *(v0 + 968);
    v31 = *(v0 + 944);
    v32 = *(v0 + 856);
    v33 = *(v0 + 648);
    v34 = *(v0 + 456);
    (*(v1 + 32))(*(v0 + 688), v3, v2);
    *(v0 + 992) = sub_2545FEC94();
    v35 = [v31 uniqueIdentifier];
    sub_2545FEAC4();

    v30(v33, 0, 1, v34);
    v36 = sub_2545FEC84();
    v38 = v37;
    v39 = *(MEMORY[0x277D15438] + 4);
    v40 = swift_task_alloc();
    *(v0 + 1000) = v40;
    *v40 = v0;
    v40[1] = sub_2545CFD20;
    v41 = *(v0 + 648);
    v42 = *(v0 + 616);

    return MEMORY[0x28216EA48](v42, v41, 1, v36, v38);
  }
}

uint64_t sub_2545CFD20()
{
  v1 = *v0;
  v2 = *(*v0 + 1000);
  v3 = *(*v0 + 992);
  v4 = *(*v0 + 648);
  v8 = *v0;

  sub_2545B612C(v4, &qword_27F6064D0, &unk_2546002B0);
  v5 = *(v1 + 840);
  v6 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_2545CFE8C, v6, v5);
}

uint64_t sub_2545CFE8C()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    v5 = *(v0 + 640);
    sub_2545FEEC4();
    if (v4(v3, 1, v2) != 1)
    {
      sub_2545B612C(*(v0 + 616), &qword_27F606758, &unk_254601DD0);
    }
  }

  else
  {
    (*(v1 + 32))(*(v0 + 640), v3, v2);
  }

  v6 = *(v0 + 688);
  v7 = *(v0 + 640);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 584);
  v11 = *(v0 + 576);
  v12 = *(v0 + 448);
  sub_2545FEEB4();
  sub_2545FED24();

  sub_2545FEF54();
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8]);
  v13 = sub_2545FF254();
  v14 = MEMORY[0x277D84F90];
  *(v0 + 416) = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v13 & ~(v13 >> 63), 0);
  v15 = *(v0 + 416);
  (*(v10 + 16))(v9, v8, v11);
  result = sub_2545FF244();
  if (v13 < 0)
  {
    goto LABEL_36;
  }

  v17 = *(v0 + 360);
  if (v13)
  {
    v18 = *(v0 + 352);
    v19 = *(v18 + 16);
    v20 = v18 + 40 * v17 + 32;
    v21 = *(v0 + 360);
    while (v19 != v21)
    {
      if (v17 < 0)
      {
        goto LABEL_33;
      }

      if (v21 >= *(v18 + 16))
      {
        goto LABEL_34;
      }

      sub_2545D850C(v20, v0 + 176);
      *(v0 + 416) = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2545DBE04((v22 > 1), v23 + 1, 1);
        v15 = *(v0 + 416);
      }

      *(v15 + 16) = v23 + 1;
      result = sub_2545D8570((v0 + 176), v15 + 40 * v23 + 32);
      v20 += 40;
      ++v21;
      if (!--v13)
      {
        *(v0 + 360) = v21;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v21 = *(v0 + 360);
LABEL_16:
  v24 = *(v0 + 352);
  v25 = *(v24 + 16);
  if (v21 != v25)
  {
    while (v21 < v25)
    {
      sub_2545D850C(v24 + 32 + 40 * v21, v0 + 216);
      *(v0 + 360) = v21 + 1;
      sub_2545D8570((v0 + 216), v0 + 256);
      *(v0 + 416) = v15;
      v37 = *(v15 + 16);
      v36 = *(v15 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2545DBE04((v36 > 1), v37 + 1, 1);
        v15 = *(v0 + 416);
      }

      *(v15 + 16) = v37 + 1;
      result = sub_2545D8570((v0 + 256), v15 + 40 * v37 + 32);
      v25 = *(v24 + 16);
      v21 = *(v0 + 360);
      if (v21 == v25)
      {
        goto LABEL_17;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

LABEL_17:
  (*(*(v0 + 584) + 8))(*(v0 + 608), *(v0 + 576));

  v26 = *(v15 + 16);
  if (v26)
  {
    *(v0 + 424) = v14;
    sub_2545DBDE4(0, v26, 0);
    v27 = *(v0 + 424);
    v28 = v15 + 32;
    do
    {
      v29 = *(v0 + 728);
      sub_2545D850C(v28, v0 + 296);
      v30 = *(v0 + 320);
      v31 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v30);
      sub_2545F3D54(v30, v31, v29);
      __swift_destroy_boxed_opaque_existential_0((v0 + 296));
      *(v0 + 424) = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2545DBDE4(v32 > 1, v33 + 1, 1);
        v27 = *(v0 + 424);
      }

      v34 = *(v0 + 728);
      v35 = *(v0 + 704);
      *(v27 + 16) = v33 + 1;
      sub_2545D8770(v34, v27 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33, type metadata accessor for ElementID);
      v28 += 40;
      --v26;
    }

    while (v26);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    v27 = MEMORY[0x277D84F90];
  }

  *(v0 + 1008) = v27;
  v38 = *(v0 + 944);
  v39 = v38;
  v40 = swift_task_alloc();
  *(v0 + 1016) = v40;
  *v40 = v0;
  v40[1] = sub_2545D0380;

  return sub_2545EA1F8(v27, v38);
}

uint64_t sub_2545D0380(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1016);
  v15 = *v2;
  *(*v2 + 1024) = v1;

  if (v1)
  {
    v6 = *(v4 + 1008);
    v7 = *(v4 + 944);
    v8 = *(v4 + 864);
    v9 = *(v4 + 408);

    v10 = *(v4 + 840);
    v11 = *(v4 + 832);
    v12 = sub_2545D88C0;
  }

  else
  {
    v13 = *(v4 + 1008);

    *(v4 + 1032) = a1;
    v10 = *(v4 + 840);
    v11 = *(v4 + 832);
    v12 = sub_2545D04E8;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_2545D04E8()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 944);
  v4 = *(v0 + 688);
  v5 = *(v0 + 672);
  v80 = *(v0 + 640);
  v83 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_2545C2F44(sub_2545D8888, v8, v1, type metadata accessor for ToggleControlEntity, sub_2545DC21C, type metadata accessor for ToggleControlEntity);

  sub_2545C3480(v9, &qword_27F6067A0, &qword_254600C78, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity);

  (*(v6 + 8))(v80, v7);
  v10 = (*(v5 + 8))(v4, v83);
  v15 = *(v0 + 952);
  v16 = *(v0 + 864);
  if (v15 == *(v0 + 872))
  {
    v17 = *(v0 + 792);
    sub_2545FEA14();

    v18 = *(v0 + 440);
    v81 = v18;
    if (v18 && (v78 = *(v18 + 16)) != 0)
    {
      v10 = *(v0 + 408);
      v76 = v10[2];
      if (v76)
      {
        v19 = 0;
        v70 = *(v0 + 704);
        v72 = *(v0 + 744);
        v20 = *(v0 + 696);
        v68 = MEMORY[0x277D84F90];
        v74 = *(v0 + 408);
        while (1)
        {
          if (v19 >= v10[2])
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            return MEMORY[0x28216EA18](v10, v11, v12, v13, v14);
          }

          v21 = *(v72 + 72);
          v22 = v19 + 1;
          v84 = (*(v72 + 80) + 32) & ~*(v72 + 80);
          sub_2545D8660(v10 + v84 + v21 * v19, *(v0 + 776), type metadata accessor for ToggleControlEntity);
          v23 = v18 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
          v24 = *(v70 + 72);
          v25 = v78;
          while (1)
          {
            v26 = *(v0 + 776);
            sub_2545D8660(v23, *(v0 + 736), type metadata accessor for ElementID);
            if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
            {
              break;
            }

            sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_11:
            v23 += v24;
            if (!--v25)
            {
              sub_2545D86C8(*(v0 + 776), type metadata accessor for ToggleControlEntity);
              goto LABEL_7;
            }
          }

          v27 = *(v0 + 736);
          v28 = *(v20 + 20);
          v29 = qword_254600D00[*(v27 + v28)];
          v30 = qword_254600D00[*(*(v0 + 776) + v28)];
          sub_2545D86C8(v27, type metadata accessor for ElementID);
          if (v29 != v30)
          {
            goto LABEL_11;
          }

          sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for ToggleControlEntity);
          v31 = v68;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2545DC21C(0, *(v68 + 16) + 1, 1);
            v31 = v68;
          }

          v33 = *(v31 + 16);
          v32 = *(v31 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_2545DC21C(v32 > 1, v33 + 1, 1);
            v31 = v68;
          }

          v34 = *(v0 + 768);
          *(v31 + 16) = v33 + 1;
          v68 = v31;
          sub_2545D8770(v34, v31 + v84 + v33 * v21, type metadata accessor for ToggleControlEntity);
LABEL_7:
          v19 = v22;
          v10 = v74;
          v18 = v81;
          if (v22 == v76)
          {
            goto LABEL_29;
          }
        }
      }

      v68 = MEMORY[0x277D84F90];
LABEL_29:
      v48 = *(v0 + 848);

      v35 = v68;
    }

    else
    {

      v35 = *(v0 + 408);
    }

    v49 = *(v0 + 776);
    v50 = *(v0 + 768);
    v51 = *(v0 + 760);
    v52 = *(v0 + 752);
    v53 = *(v0 + 736);
    v54 = *(v0 + 728);
    v55 = *(v0 + 720);
    v56 = *(v0 + 712);
    v57 = *(v0 + 688);
    v60 = *(v0 + 680);
    v61 = *(v0 + 656);
    v62 = *(v0 + 648);
    v63 = *(v0 + 640);
    v64 = *(v0 + 616);
    v65 = *(v0 + 608);
    v66 = *(v0 + 600);
    v67 = *(v0 + 592);
    v69 = *(v0 + 568);
    v71 = *(v0 + 560);
    v73 = *(v0 + 536);
    v75 = *(v0 + 528);
    v77 = *(v0 + 512);
    v79 = *(v0 + 504);
    v82 = *(v0 + 496);
    v85 = *(v0 + 472);

    v58 = *(v0 + 8);

    return v58(v35);
  }

  else
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x259C124A0](*(v0 + 952), *(v0 + 864));
    }

    else
    {
      if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v10 = *(v16 + 8 * v15 + 32);
    }

    v36 = v10;
    *(v0 + 944) = v10;
    *(v0 + 952) = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_34;
    }

    v37 = *(v0 + 856);
    v38 = *(v0 + 648);
    v39 = *(v0 + 456);
    v40 = *(v0 + 464);
    *(v0 + 960) = sub_2545FEC94();
    v41 = [v36 uniqueIdentifier];
    sub_2545FEAC4();

    v42 = *(v40 + 56);
    *(v0 + 968) = v42;
    *(v0 + 976) = (v40 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v38, 0, 1, v39);
    LOBYTE(v41) = sub_2545FEC54();
    v43 = sub_2545FEC64();
    v45 = v44;
    v46 = *(MEMORY[0x277D15428] + 4);
    v47 = swift_task_alloc();
    *(v0 + 984) = v47;
    *v47 = v0;
    v47[1] = sub_2545CF488;
    v10 = *(v0 + 656);
    v11 = *(v0 + 648);
    v12 = v41 & 1;
    v13 = v43;
    v14 = v45;

    return MEMORY[0x28216EA18](v10, v11, v12, v13, v14);
  }
}

uint64_t sub_2545D0BBC()
{
  v89 = v0;
  v1 = v0[116];
  v2 = *(v1 + 16);
  v0[130] = v2;
  if (v2)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
      v64 = v0[116];
    }

    v3 = v0[54];
    v4 = sub_2545FF0A4();
    __swift_project_value_buffer(v4, qword_27F60ADD8);
    sub_2545FE8E4();
    sub_2545D8588(v3);
    v5 = sub_2545FF084();
    v6 = sub_2545FF474();

    sub_2545CE4A8(v3);
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      v86 = v10;
      *v9 = 136315394;
      v12 = *(v1 + 16);
      v13 = MEMORY[0x277D84F90];
      if (v12)
      {
        v73 = v10;
        v75 = v9;
        v77 = v6;
        v79 = v5;
        v14 = v0[116];
        v15 = v0[69];
        v16 = v0[58];
        v87 = MEMORY[0x277D84F90];
        sub_2545DBE24(0, v12, 0);
        v13 = v87;
        v17 = *(v15 + 16);
        v15 += 16;
        v18 = v14 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
        v81 = *(v15 + 56);
        v83 = v17;
        v19 = (v15 - 8);
        do
        {
          v20 = v0[70];
          v21 = v0[68];
          v22 = v0[59];
          v83(v20, v18, v21);
          sub_2545FEB34();
          (*v19)(v20, v21);
          v87 = v13;
          v24 = *(v13 + 16);
          v23 = *(v13 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_2545DBE24(v23 > 1, v24 + 1, 1);
            v13 = v87;
          }

          v25 = v0[59];
          v26 = v0[57];
          *(v13 + 16) = v24 + 1;
          (*(v16 + 32))(v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v24, v25, v26);
          v18 += v81;
          --v12;
        }

        while (v12);
        v5 = v79;
        v8 = MEMORY[0x277D84F90];
        v6 = v77;
        v11 = v73;
        v9 = v75;
      }

      v47 = v0[54];
      v48 = MEMORY[0x259C121B0](v13, v0[57]);
      v50 = v49;

      v51 = sub_2545F0FB4(v48, v50, &v86);

      *(v9 + 4) = v51;
      *(v9 + 12) = 2080;
      if (v47)
      {
        if (v47 == 1)
        {
          v52 = 0xE300000000000000;
          v53 = 7105633;
        }

        else
        {
          v54 = v0[65];
          v55 = v0[54];
          v87 = 0x3A796C6E6FLL;
          v88 = 0xE500000000000000;
          sub_2545D8728(&qword_27F606768, type metadata accessor for HomeID);
          v56 = sub_2545FF3A4();
          MEMORY[0x259C120B0](v56);

          v53 = v87;
          v52 = v88;
        }
      }

      else
      {
        v52 = 0xE700000000000000;
        v53 = 0x746E6572727563;
      }

      v57 = sub_2545F0FB4(v53, v52, &v86);

      *(v9 + 14) = v57;
      _os_log_impl(&dword_2545AB000, v5, v6, "[WidgetDataModel.orderedHomes] homes=%s using scope=%s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v11, -1, -1);
      MEMORY[0x259C12CB0](v9, -1, -1);
    }

    v58 = v0[69];
    v0[46] = v8;
    v0[131] = 0;
    v59 = v0[116];
    if (*(v59 + 16))
    {
      v60 = v0[113];
      v61 = v0[111];
      (*(v58 + 16))(v0[71], v59 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v0[68]);
      v0[132] = sub_2545FECD4();
      v63 = sub_2545FF334();

      return MEMORY[0x2822009F8](sub_2545D129C, v63, v62);
    }

    __break(1u);
    goto LABEL_28;
  }

  v27 = v0[99];
  sub_2545FEA14();

  if (qword_27F6063A0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v28 = sub_2545FF0A4();
  __swift_project_value_buffer(v28, qword_27F60ADD8);
  v29 = sub_2545FF084();
  v30 = sub_2545FF454();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[106];
  if (v31)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2545AB000, v29, v30, "WidgetDataModel.orderedHomes is empty", v33, 2u);
    MEMORY[0x259C12CB0](v33, -1, -1);
  }

  v34 = v0[97];
  v35 = v0[96];
  v36 = v0[95];
  v37 = v0[94];
  v38 = v0[92];
  v39 = v0[91];
  v40 = v0[90];
  v41 = v0[89];
  v42 = v0[86];
  v43 = v0[85];
  v65 = v0[82];
  v66 = v0[81];
  v67 = v0[80];
  v68 = v0[77];
  v69 = v0[76];
  v70 = v0[75];
  v71 = v0[74];
  v72 = v0[71];
  v74 = v0[70];
  v76 = v0[67];
  v78 = v0[66];
  v80 = v0[64];
  v82 = v0[63];
  v84 = v0[62];
  v85 = v0[59];

  v44 = v0[1];
  v45 = MEMORY[0x277D84F90];

  return v44(v45);
}

uint64_t sub_2545D129C()
{
  v1 = v0[132];
  v2 = v0[110];
  sub_2545FEA14();
  v0[133] = sub_2545FEBC4();
  v3 = v0[105];
  v4 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D1310, v4, v3);
}

uint64_t sub_2545D1310()
{
  v1 = v0[113];
  v2 = v0[111];
  v3 = v0[71];
  v4 = v0[67];
  sub_2545FEB34();
  v0[134] = sub_2545FECD4();
  v6 = sub_2545FF334();
  v0[135] = v6;
  v0[136] = v5;

  return MEMORY[0x2822009F8](sub_2545D13B4, v6, v5);
}

uint64_t sub_2545D13B4()
{
  v1 = v0[81];
  v2 = v0[64];
  v3 = v0[57];
  v4 = v0[58];
  (*(v4 + 16))(v1, v0[67], v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = sub_2545FECF4();
  sub_2545C3148(v1, v5, v6, v7, v8, v2);

  sub_2545B612C(v1, &qword_27F6064D0, &unk_2546002B0);
  v9 = *(MEMORY[0x277D15208] + 4);
  v10 = swift_task_alloc();
  v0[137] = v10;
  *v10 = v0;
  v10[1] = sub_2545D1510;
  v11 = v0[133];
  v12 = v0[85];
  v13 = v0[64];
  v14 = MEMORY[0x277D159D8];
  v15 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v12, v13, v14, v15);
}

uint64_t sub_2545D1510()
{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v10 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v4 = v2[116];
    v5 = v2[46];

    v6 = v2[136];
    v7 = v2[135];
    v8 = sub_2545D237C;
  }

  else
  {
    v6 = v2[136];
    v7 = v2[135];
    v8 = sub_2545D1640;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2545D1640()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[67];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v3, type metadata accessor for HomeID);
  v4 = v0[105];
  v5 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D16D4, v5, v4);
}

uint64_t sub_2545D16D4()
{
  v1 = v0[113];
  v2 = v0[111];
  v3 = v0[106];
  v4 = v0[85];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  sub_2545FED04();
  v0[139] = sub_2545FEB44();
  v8 = *(v6 + 8);
  v0[140] = v8;
  v0[141] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  v0[142] = sub_2545FECD4();
  v10 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545D17CC, v10, v9);
}

uint64_t sub_2545D17CC()
{
  v1 = v0[142];
  v2 = v0[110];
  sub_2545FEA14();
  v0[143] = sub_2545FEBC4();
  v3 = v0[105];
  v4 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D1840, v4, v3);
}

uint64_t sub_2545D1840()
{
  v1 = v0[111];
  v2 = v0[71];
  v3 = v0[66];
  sub_2545FEB34();
  v0[144] = sub_2545FECD4();
  v4 = *(MEMORY[0x277D15218] + 4);
  v5 = swift_task_alloc();
  v0[145] = v5;
  *v5 = v0;
  v5[1] = sub_2545D18F0;
  v6 = v0[143];

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545D18F0(uint64_t a1)
{
  v3 = *(*v1 + 1160);
  v7 = *v1;
  *(*v1 + 1168) = a1;

  sub_2545FEF44();
  sub_2545D8728(&qword_27F606698, MEMORY[0x277D16AF0]);
  v5 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545D1A48, v5, v4);
}

uint64_t sub_2545D1A48()
{
  v1 = v0[146];
  v2 = v0[144];
  v3 = v0[113];
  v4 = v0[111];
  v5 = v0[66];
  v0[147] = sub_2545FEF24();
  sub_2545FEA14();
  v7 = sub_2545FF334();
  v0[148] = v7;
  v0[149] = v6;

  return MEMORY[0x2822009F8](sub_2545D1AF0, v7, v6);
}

uint64_t sub_2545D1AF0()
{
  v1 = v0[98];
  v0[47] = v0[147];
  v0[150] = sub_2545FF344();
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545D1B84, v3, v2);
}

uint64_t sub_2545D1B84()
{
  v1 = v0[150];
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066A0, &qword_254600BA0);
  sub_2545B4F2C(&qword_27F6066A8, &qword_27F6066A0, &qword_254600BA0);
  v0[151] = sub_2545FF3E4();
  v2 = v0[149];
  v3 = v0[148];

  return MEMORY[0x2822009F8](sub_2545D1C50, v3, v2);
}

uint64_t sub_2545D1C50()
{
  v1 = v0[147];
  v2 = v0[144];
  v3 = v0[143];
  v4 = v0[66];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v4, type metadata accessor for HomeID);

  v5 = v0[105];
  v6 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D1CF8, v6, v5);
}

unint64_t sub_2545D1CF8()
{
  result = *(v0 + 1208);
  v63 = *(result + 16);
  if (v63)
  {
    v2 = 0;
    v3 = *(*(v0 + 488) + 80);
    v62 = result + ((v3 + 32) & ~v3);
    v4 = MEMORY[0x277D84F98];
    v61 = *(v0 + 1208);
    while (v2 < *(result + 16))
    {
      v6 = *(v0 + 496);
      v5 = *(v0 + 504);
      v7 = *(v0 + 480);
      v8 = *(v0 + 488);
      v9 = *(v8 + 16);
      v10 = *(v8 + 72);
      v9(v5, v62 + v10 * v2, v7);
      v11 = sub_2545FEE54();
      v9(v6, v5, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 384) = v4;
      result = sub_2545C56D4(v11);
      v14 = v4[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_50;
      }

      v18 = v13;
      if (v4[3] >= v17)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = result;
          sub_2545C8780();
          result = v27;
        }
      }

      else
      {
        sub_2545C7AB4(v17, isUniquelyReferenced_nonNull_native);
        v19 = *(v0 + 384);
        result = sub_2545C56D4(v11);
        if ((v18 & 1) != (v20 & 1))
        {

          return sub_2545FF7D4();
        }
      }

      v4 = *(v0 + 384);
      v21 = *(v0 + 496);
      v22 = *(v0 + 504);
      v23 = *(v0 + 480);
      v24 = *(v0 + 488);
      if (v18)
      {
        (*(v24 + 40))(v4[7] + result * v10, v21, *(v0 + 480));
        (*(v24 + 8))(v22, v23);
      }

      else
      {
        v4[(result >> 6) + 8] |= 1 << result;
        *(v4[6] + 8 * result) = v11;
        (*(v24 + 32))(v4[7] + result * v10, v21, v23);
        result = (*(v24 + 8))(v22, v23);
        v25 = v4[2];
        v16 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v16)
        {
          goto LABEL_52;
        }

        v4[2] = v26;
      }

      ++v2;
      result = v61;
      if (v63 == v2)
      {
        v28 = *(v0 + 1208);
        goto LABEL_16;
      }
    }

    goto LABEL_49;
  }

LABEL_16:
  v29 = *(v0 + 680);
  v30 = *(v0 + 600);
  v31 = *(v0 + 592);
  v32 = *(v0 + 584);
  v33 = *(v0 + 576);
  v34 = *(v0 + 448);

  sub_2545FED24();

  sub_2545FEF54();
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8]);
  v35 = sub_2545FF254();
  v36 = MEMORY[0x277D84F90];
  *(v0 + 392) = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v35 & ~(v35 >> 63), 0);
  v37 = *(v0 + 392);
  (*(v32 + 16))(v30, v31, v33);
  result = sub_2545FF244();
  if (v35 < 0)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v38 = *(v0 + 344);
  if (v35)
  {
    v39 = *(v0 + 336);
    v40 = *(v39 + 16);
    v41 = v39 + 40 * v38 + 32;
    v42 = *(v0 + 344);
    while (v40 != v42)
    {
      if (v38 < 0)
      {
        goto LABEL_47;
      }

      if (v42 >= *(v39 + 16))
      {
        goto LABEL_48;
      }

      sub_2545D850C(v41, v0 + 16);
      *(v0 + 392) = v37;
      v44 = *(v37 + 16);
      v43 = *(v37 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_2545DBE04((v43 > 1), v44 + 1, 1);
        v37 = *(v0 + 392);
      }

      *(v37 + 16) = v44 + 1;
      result = sub_2545D8570((v0 + 16), v37 + 40 * v44 + 32);
      v41 += 40;
      ++v42;
      if (!--v35)
      {
        *(v0 + 344) = v42;
        v36 = MEMORY[0x277D84F90];
        goto LABEL_27;
      }
    }

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
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v42 = *(v0 + 344);
LABEL_27:
  v45 = *(v0 + 336);
  v46 = *(v45 + 16);
  if (v42 != v46)
  {
    while (v42 < v46)
    {
      sub_2545D850C(v45 + 32 + 40 * v42, v0 + 56);
      *(v0 + 344) = v42 + 1;
      sub_2545D8570((v0 + 56), v0 + 96);
      *(v0 + 392) = v37;
      v58 = *(v37 + 16);
      v57 = *(v37 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_2545DBE04((v57 > 1), v58 + 1, 1);
        v37 = *(v0 + 392);
      }

      *(v37 + 16) = v58 + 1;
      result = sub_2545D8570((v0 + 96), v37 + 40 * v58 + 32);
      v46 = *(v45 + 16);
      v42 = *(v0 + 344);
      if (v42 == v46)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_51;
  }

LABEL_28:
  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));

  v47 = *(v37 + 16);
  if (v47)
  {
    *(v0 + 400) = v36;
    sub_2545DBDE4(0, v47, 0);
    v48 = *(v0 + 400);
    v49 = v37 + 32;
    do
    {
      v50 = *(v0 + 712);
      sub_2545D850C(v49, v0 + 136);
      v51 = *(v0 + 160);
      v52 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v51);
      sub_2545F3D54(v51, v52, v50);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      *(v0 + 400) = v48;
      v54 = *(v48 + 16);
      v53 = *(v48 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2545DBDE4(v53 > 1, v54 + 1, 1);
        v48 = *(v0 + 400);
      }

      v55 = *(v0 + 712);
      v56 = *(v0 + 704);
      *(v48 + 16) = v54 + 1;
      sub_2545D8770(v55, v48 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v54, type metadata accessor for ElementID);
      v49 += 40;
      --v47;
    }

    while (v47);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    v48 = MEMORY[0x277D84F90];
  }

  *(v0 + 1216) = v48;
  v59 = swift_task_alloc();
  *(v0 + 1224) = v59;
  *v59 = v0;
  v59[1] = sub_2545D2410;
  v60 = *(v0 + 1112);

  return sub_2545EA1F8(v48, v60);
}

uint64_t sub_2545D237C()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[67];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v3, type metadata accessor for HomeID);
  v4 = v0[105];
  v5 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D886C, v5, v4);
}

uint64_t sub_2545D2410(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1224);
  v14 = *v2;
  *(*v2 + 1232) = v1;

  if (v1)
  {
    v6 = v4[152];
    v7 = v4[116];
    v8 = v4[46];

    v9 = v4[105];
    v10 = v4[104];
    v11 = sub_2545D88B8;
  }

  else
  {
    v12 = v4[152];

    v4[155] = a1;
    v9 = v4[105];
    v10 = v4[104];
    v11 = sub_2545D2564;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2545D2564()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1232);
  v75 = *(v0 + 1128);
  v72 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v78 = *(v0 + 1040);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 568);
  v7 = *(v0 + 544);
  v66 = *(v0 + 1048) + 1;
  v69 = *(v0 + 664);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_2545C2F44(sub_2545D85FC, v8, v1, type metadata accessor for ToggleControlEntity, sub_2545DC21C, type metadata accessor for ToggleControlEntity);

  sub_2545C3480(v9, &qword_27F6067A0, &qword_254600C78, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity);

  v72(v6, v7);
  v10 = (*(v5 + 8))(v4, v69);
  if (v66 == v78)
  {
    v13 = *(v0 + 928);
    v14 = *(v0 + 792);
    v15 = *(v0 + 440);

    sub_2545FEA14();
    if (v15 && (v76 = *(v0 + 440), (v73 = *(v76 + 16)) != 0))
    {
      v10 = *(v0 + 368);
      v70 = *(v10 + 2);
      if (v70)
      {
        v16 = 0;
        v64 = *(v0 + 744);
        v17 = *(v0 + 696);
        v62 = MEMORY[0x277D84F90];
        v67 = *(v0 + 368);
        while (1)
        {
          if (v16 >= *(v10 + 2))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            return MEMORY[0x2822009F8](v10, v11, v12);
          }

          v18 = *(v0 + 704);
          v19 = (*(v64 + 80) + 32) & ~*(v64 + 80);
          v20 = v16 + 1;
          v79 = *(v64 + 72);
          sub_2545D8660(v10 + v19 + v79 * v16, *(v0 + 760), type metadata accessor for ToggleControlEntity);
          v21 = v76 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
          v22 = *(v18 + 72);
          v23 = v73;
          while (1)
          {
            v24 = *(v0 + 760);
            sub_2545D8660(v21, *(v0 + 720), type metadata accessor for ElementID);
            if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
            {
              break;
            }

            sub_2545D86C8(*(v0 + 720), type metadata accessor for ElementID);
LABEL_11:
            v21 += v22;
            if (!--v23)
            {
              sub_2545D86C8(*(v0 + 760), type metadata accessor for ToggleControlEntity);
              goto LABEL_7;
            }
          }

          v25 = *(v0 + 720);
          v26 = *(v17 + 20);
          v27 = qword_254600D00[*(v25 + v26)];
          v28 = qword_254600D00[*(*(v0 + 760) + v26)];
          sub_2545D86C8(v25, type metadata accessor for ElementID);
          if (v27 != v28)
          {
            goto LABEL_11;
          }

          sub_2545D8770(*(v0 + 760), *(v0 + 752), type metadata accessor for ToggleControlEntity);
          v29 = v62;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2545DC21C(0, *(v62 + 16) + 1, 1);
            v29 = v62;
          }

          v31 = *(v29 + 16);
          v30 = *(v29 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_2545DC21C(v30 > 1, v31 + 1, 1);
            v29 = v62;
          }

          v32 = *(v0 + 752);
          *(v29 + 16) = v31 + 1;
          v62 = v29;
          sub_2545D8770(v32, v29 + v19 + v31 * v79, type metadata accessor for ToggleControlEntity);
LABEL_7:
          v16 = v20;
          v10 = v67;
          if (v20 == v70)
          {
            goto LABEL_25;
          }
        }
      }

      v62 = MEMORY[0x277D84F90];
LABEL_25:
      v41 = *(v0 + 848);

      v40 = v62;
    }

    else
    {

      v40 = *(v0 + 368);
    }

    v42 = *(v0 + 776);
    v43 = *(v0 + 768);
    v44 = *(v0 + 760);
    v45 = *(v0 + 752);
    v46 = *(v0 + 736);
    v47 = *(v0 + 728);
    v48 = *(v0 + 720);
    v49 = *(v0 + 712);
    v50 = *(v0 + 688);
    v53 = *(v0 + 680);
    v54 = *(v0 + 656);
    v55 = *(v0 + 648);
    v56 = *(v0 + 640);
    v57 = *(v0 + 616);
    v58 = *(v0 + 608);
    v59 = *(v0 + 600);
    v60 = *(v0 + 592);
    v61 = *(v0 + 568);
    v63 = *(v0 + 560);
    v65 = *(v0 + 536);
    v68 = *(v0 + 528);
    v71 = *(v0 + 512);
    v74 = *(v0 + 504);
    v77 = *(v0 + 496);
    v80 = *(v0 + 472);

    v51 = *(v0 + 8);

    return v51(v40);
  }

  else
  {
    v33 = *(v0 + 1048) + 1;
    *(v0 + 1048) = v33;
    v34 = *(v0 + 928);
    if (v33 >= *(v34 + 16))
    {
      goto LABEL_30;
    }

    v35 = *(v0 + 904);
    v36 = *(v0 + 888);
    (*(*(v0 + 552) + 16))(*(v0 + 568), v34 + ((*(*(v0 + 552) + 80) + 32) & ~*(*(v0 + 552) + 80)) + *(*(v0 + 552) + 72) * v33, *(v0 + 544));
    *(v0 + 1056) = sub_2545FECD4();
    v37 = sub_2545FF334();
    v39 = v38;
    v10 = sub_2545D129C;
    v11 = v37;
    v12 = v39;

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_2545D2BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[55] = a2;
  v3[56] = a3;
  v3[54] = a1;
  v4 = sub_2545FEB04();
  v3[57] = v4;
  v5 = *(v4 - 8);
  v3[58] = v5;
  v6 = *(v5 + 64) + 15;
  v3[59] = swift_task_alloc();
  v7 = sub_2545FEE64();
  v3[60] = v7;
  v8 = *(v7 - 8);
  v3[61] = v8;
  v9 = *(v8 + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20) - 8) + 64) + 15;
  v3[64] = swift_task_alloc();
  v11 = type metadata accessor for HomeID();
  v3[65] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v13 = sub_2545FEB64();
  v3[68] = v13;
  v14 = *(v13 - 8);
  v3[69] = v14;
  v15 = *(v14 + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v16 = sub_2545FEF84();
  v3[72] = v16;
  v17 = *(v16 - 8);
  v3[73] = v17;
  v18 = *(v17 + 64) + 15;
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606758, &unk_254601DD0) - 8) + 64) + 15;
  v3[77] = swift_task_alloc();
  v20 = sub_2545FEED4();
  v3[78] = v20;
  v21 = *(v20 - 8);
  v3[79] = v21;
  v22 = *(v21 + 64) + 15;
  v3[80] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0) - 8) + 64) + 15;
  v3[81] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606760, &qword_254600C40) - 8) + 64) + 15;
  v3[82] = swift_task_alloc();
  v25 = sub_2545FED84();
  v3[83] = v25;
  v26 = *(v25 - 8);
  v3[84] = v26;
  v27 = *(v26 + 64) + 15;
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v28 = type metadata accessor for ElementID();
  v3[87] = v28;
  v29 = *(v28 - 8);
  v3[88] = v29;
  v30 = *(v29 + 64) + 15;
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v31 = *(type metadata accessor for HomeSingleTileEntity() - 8);
  v3[93] = v31;
  v32 = *(v31 + 64) + 15;
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = sub_2545FF354();
  v3[99] = sub_2545FF344();
  type metadata accessor for IntentsService();
  v3[100] = swift_initStaticObject();
  v33 = swift_task_alloc();
  v3[101] = v33;
  *v33 = v3;
  v33[1] = sub_2545D30F8;

  return sub_2545B0448();
}

uint64_t sub_2545D30F8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 808);
  v7 = *v2;
  v5[102] = a1;
  v5[103] = v1;

  v8 = v4[99];
  v9 = v4[98];
  v10 = sub_2545FF334();
  if (v3)
  {
    v12 = sub_2545D8814;
  }

  else
  {
    v5[104] = v10;
    v5[105] = v11;
    v12 = sub_2545D326C;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_2545D326C()
{
  v1 = *(v0 + 816);
  if (!v1 || (v2 = *(v0 + 800), v1, v3 = sub_2545B027C(), (*(v0 + 848) = v3) == 0))
  {
    v11 = *(v0 + 792);
    sub_2545FEA14();
    v12 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  *(v0 + 856) = sub_2545FECC4();
  if (sub_2545FECA4() != 7)
  {
    *(v0 + 880) = sub_2545FEBD4();
    *(v0 + 888) = sub_2545FECE4();
    *(v0 + 896) = sub_2545FECD4();
    *(v0 + 904) = sub_2545D8728(&qword_27F6064D8, MEMORY[0x277D15960]);
    v26 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545D3978, v26, v25);
  }

  v4 = sub_2545FACE8(*(v0 + 432));
  *(v0 + 864) = v4;
  *(v0 + 408) = MEMORY[0x277D84F90];
  if (!(v4 >> 62))
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 872) = v8;
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  v39 = v4;
  v40 = sub_2545FF674();
  v4 = v39;
  *(v0 + 872) = v40;
  if (!v40)
  {
LABEL_22:
    v41 = *(v0 + 792);
    sub_2545FEA14();

    v42 = *(v0 + 440);
    if (v42)
    {
      v79 = *(v42 + 16);
      if (v79)
      {
        v4 = *(v0 + 408);
        v77 = *(v4 + 16);
        if (v77)
        {
          v43 = 0;
          v69 = *(v0 + 704);
          v71 = *(v0 + 744);
          v44 = *(v0 + 696);
          v82 = MEMORY[0x277D84F90];
          v73 = *(v0 + 440);
          v75 = *(v0 + 408);
          while (1)
          {
            if (v43 >= *(v4 + 16))
            {
              __break(1u);
LABEL_43:
              __break(1u);
              return MEMORY[0x28216EA18](v4, v9, v5, v6, v7);
            }

            v45 = (*(v71 + 80) + 32) & ~*(v71 + 80);
            v46 = v43 + 1;
            v81 = *(v71 + 72);
            sub_2545D8660(v4 + v45 + v81 * v43, *(v0 + 776), type metadata accessor for HomeSingleTileEntity);
            v47 = v42 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
            v48 = *(v69 + 72);
            v49 = v79;
            while (1)
            {
              v50 = *(v0 + 776);
              sub_2545D8660(v47, *(v0 + 736), type metadata accessor for ElementID);
              if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
              {
                break;
              }

              sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_31:
              v47 += v48;
              if (!--v49)
              {
                sub_2545D86C8(*(v0 + 776), type metadata accessor for HomeSingleTileEntity);
                goto LABEL_27;
              }
            }

            v51 = *(v0 + 736);
            v52 = *(v44 + 20);
            v53 = qword_254600D00[*(v51 + v52)];
            v54 = qword_254600D00[*(*(v0 + 776) + v52)];
            sub_2545D86C8(v51, type metadata accessor for ElementID);
            if (v53 != v54)
            {
              goto LABEL_31;
            }

            sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for HomeSingleTileEntity);
            v55 = v82;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2545DC25C(0, *(v82 + 16) + 1, 1);
              v55 = v82;
            }

            v57 = *(v55 + 16);
            v56 = *(v55 + 24);
            if (v57 >= v56 >> 1)
            {
              sub_2545DC25C(v56 > 1, v57 + 1, 1);
              v55 = v82;
            }

            v58 = *(v0 + 768);
            *(v55 + 16) = v57 + 1;
            v82 = v55;
            sub_2545D8770(v58, v55 + v45 + v57 * v81, type metadata accessor for HomeSingleTileEntity);
LABEL_27:
            v43 = v46;
            v4 = v75;
            v42 = v73;
            if (v46 == v77)
            {
              goto LABEL_41;
            }
          }
        }

        v82 = MEMORY[0x277D84F90];
LABEL_41:
        v59 = *(v0 + 848);

LABEL_10:
        v13 = *(v0 + 776);
        v14 = *(v0 + 768);
        v15 = *(v0 + 760);
        v16 = *(v0 + 752);
        v17 = *(v0 + 736);
        v18 = *(v0 + 728);
        v19 = *(v0 + 720);
        v20 = *(v0 + 712);
        v21 = *(v0 + 688);
        v22 = *(v0 + 680);
        v60 = *(v0 + 656);
        v61 = *(v0 + 648);
        v62 = *(v0 + 640);
        v63 = *(v0 + 616);
        v64 = *(v0 + 608);
        v65 = *(v0 + 600);
        v66 = *(v0 + 592);
        v67 = *(v0 + 568);
        v68 = *(v0 + 560);
        v70 = *(v0 + 536);
        v72 = *(v0 + 528);
        v74 = *(v0 + 512);
        v76 = *(v0 + 504);
        v78 = *(v0 + 496);
        v80 = *(v0 + 472);

        v23 = *(v0 + 8);

        return v23(v82);
      }
    }

    v12 = *(v0 + 408);
LABEL_9:
    v82 = v12;
    goto LABEL_10;
  }

LABEL_6:
  v9 = *(v0 + 864);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x259C124A0](0);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v10 = *(v9 + 32);
  }

  v27 = v10;
  *(v0 + 944) = v10;
  *(v0 + 952) = 1;
  v28 = *(v0 + 856);
  v29 = *(v0 + 648);
  v30 = *(v0 + 456);
  v31 = *(v0 + 464);
  *(v0 + 960) = sub_2545FEC94();
  v32 = [v27 uniqueIdentifier];
  sub_2545FEAC4();

  v33 = *(v31 + 56);
  *(v0 + 968) = v33;
  *(v0 + 976) = (v31 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v33(v29, 0, 1, v30);
  LOBYTE(v29) = sub_2545FEC54();
  v34 = sub_2545FEC64();
  v36 = v35;
  v37 = *(MEMORY[0x277D15428] + 4);
  v38 = swift_task_alloc();
  *(v0 + 984) = v38;
  *v38 = v0;
  v38[1] = sub_2545D3B4C;
  v4 = *(v0 + 656);
  v9 = *(v0 + 648);
  v5 = v29 & 1;
  v6 = v34;
  v7 = v36;

  return MEMORY[0x28216EA18](v4, v9, v5, v6, v7);
}

uint64_t sub_2545D3978()
{
  v1 = v0[112];
  v2 = v0[110];
  sub_2545FEA14();
  v0[114] = sub_2545FEBC4();
  v3 = swift_task_alloc();
  v0[115] = v3;
  *v3 = v0;
  v3[1] = sub_2545D3A24;
  v4 = v0[54];

  return sub_2545DD5C0(v4);
}

uint64_t sub_2545D3A24(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 920);
  v10 = *v2;
  v3[116] = a1;
  v3[117] = v1;

  if (v1)
  {
    v5 = v3[105];
    v6 = v3[104];
    v7 = sub_2545D88BC;
  }

  else
  {
    v8 = v3[114];
    sub_2545FEA14();
    v5 = v3[105];
    v6 = v3[104];
    v7 = sub_2545D5280;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2545D3B4C()
{
  v1 = *v0;
  v2 = *(*v0 + 984);
  v3 = *(*v0 + 960);
  v4 = *(*v0 + 648);
  v8 = *v0;

  sub_2545B612C(v4, &qword_27F6064D0, &unk_2546002B0);
  v5 = *(v1 + 840);
  v6 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_2545D3CB8, v6, v5);
}

uint64_t sub_2545D3CB8()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    v4 = sub_2545B612C(v3, &qword_27F606760, &qword_254600C40);
    v9 = *(v0 + 952);
    v10 = *(v0 + 864);
    if (v9 == *(v0 + 872))
    {
      v11 = *(v0 + 792);
      sub_2545FEA14();

      v12 = *(v0 + 440);
      v88 = v12;
      if (v12 && (v86 = *(v12 + 16)) != 0)
      {
        v4 = *(v0 + 408);
        v84 = v4[2];
        if (v84)
        {
          v13 = 0;
          v78 = *(v0 + 704);
          v80 = *(v0 + 744);
          v14 = *(v0 + 696);
          v76 = MEMORY[0x277D84F90];
          v82 = *(v0 + 408);
          while (1)
          {
            if (v13 >= v4[2])
            {
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              return MEMORY[0x28216EA18](v4, v5, v6, v7, v8);
            }

            v15 = *(v80 + 72);
            v16 = v13 + 1;
            v90 = (*(v80 + 80) + 32) & ~*(v80 + 80);
            sub_2545D8660(v4 + v90 + v15 * v13, *(v0 + 776), type metadata accessor for HomeSingleTileEntity);
            v17 = v12 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
            v18 = *(v78 + 72);
            v19 = v86;
            while (1)
            {
              v20 = *(v0 + 776);
              sub_2545D8660(v17, *(v0 + 736), type metadata accessor for ElementID);
              if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
              {
                break;
              }

              sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_12:
              v17 += v18;
              if (!--v19)
              {
                sub_2545D86C8(*(v0 + 776), type metadata accessor for HomeSingleTileEntity);
                goto LABEL_8;
              }
            }

            v21 = *(v0 + 736);
            v22 = *(v14 + 20);
            v23 = qword_254600D00[*(v21 + v22)];
            v24 = qword_254600D00[*(*(v0 + 776) + v22)];
            sub_2545D86C8(v21, type metadata accessor for ElementID);
            if (v23 != v24)
            {
              goto LABEL_12;
            }

            sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for HomeSingleTileEntity);
            v25 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2545DC25C(0, *(v76 + 16) + 1, 1);
              v25 = v76;
            }

            v27 = *(v25 + 16);
            v26 = *(v25 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_2545DC25C(v26 > 1, v27 + 1, 1);
              v25 = v76;
            }

            v28 = *(v0 + 768);
            *(v25 + 16) = v27 + 1;
            v76 = v25;
            sub_2545D8770(v28, v25 + v90 + v27 * v15, type metadata accessor for HomeSingleTileEntity);
LABEL_8:
            v13 = v16;
            v4 = v82;
            v12 = v88;
            if (v16 == v84)
            {
              goto LABEL_33;
            }
          }
        }

        v76 = MEMORY[0x277D84F90];
LABEL_33:
        v56 = *(v0 + 848);

        v43 = v76;
      }

      else
      {

        v43 = *(v0 + 408);
      }

      v57 = *(v0 + 776);
      v58 = *(v0 + 768);
      v59 = *(v0 + 760);
      v60 = *(v0 + 752);
      v61 = *(v0 + 736);
      v62 = *(v0 + 728);
      v63 = *(v0 + 720);
      v64 = *(v0 + 712);
      v65 = *(v0 + 688);
      v68 = *(v0 + 680);
      v69 = *(v0 + 656);
      v70 = *(v0 + 648);
      v71 = *(v0 + 640);
      v72 = *(v0 + 616);
      v73 = *(v0 + 608);
      v74 = *(v0 + 600);
      v75 = *(v0 + 592);
      v77 = *(v0 + 568);
      v79 = *(v0 + 560);
      v81 = *(v0 + 536);
      v83 = *(v0 + 528);
      v85 = *(v0 + 512);
      v87 = *(v0 + 504);
      v89 = *(v0 + 496);
      v91 = *(v0 + 472);

      v66 = *(v0 + 8);

      return v66(v43);
    }

    else
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x259C124A0](*(v0 + 952), *(v0 + 864));
      }

      else
      {
        if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v4 = *(v10 + 8 * v9 + 32);
      }

      v44 = v4;
      *(v0 + 944) = v4;
      *(v0 + 952) = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_38;
      }

      v45 = *(v0 + 856);
      v46 = *(v0 + 648);
      v47 = *(v0 + 456);
      v48 = *(v0 + 464);
      *(v0 + 960) = sub_2545FEC94();
      v49 = [v44 uniqueIdentifier];
      sub_2545FEAC4();

      v50 = *(v48 + 56);
      *(v0 + 968) = v50;
      *(v0 + 976) = (v48 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v50(v46, 0, 1, v47);
      LOBYTE(v49) = sub_2545FEC54();
      v51 = sub_2545FEC64();
      v53 = v52;
      v54 = *(MEMORY[0x277D15428] + 4);
      v55 = swift_task_alloc();
      *(v0 + 984) = v55;
      *v55 = v0;
      v55[1] = sub_2545D3B4C;
      v4 = *(v0 + 656);
      v5 = *(v0 + 648);
      v6 = v49 & 1;
      v7 = v51;
      v8 = v53;

      return MEMORY[0x28216EA18](v4, v5, v6, v7, v8);
    }
  }

  else
  {
    v29 = *(v0 + 976);
    v30 = *(v0 + 968);
    v31 = *(v0 + 944);
    v32 = *(v0 + 856);
    v33 = *(v0 + 648);
    v34 = *(v0 + 456);
    (*(v1 + 32))(*(v0 + 688), v3, v2);
    *(v0 + 992) = sub_2545FEC94();
    v35 = [v31 uniqueIdentifier];
    sub_2545FEAC4();

    v30(v33, 0, 1, v34);
    v36 = sub_2545FEC84();
    v38 = v37;
    v39 = *(MEMORY[0x277D15438] + 4);
    v40 = swift_task_alloc();
    *(v0 + 1000) = v40;
    *v40 = v0;
    v40[1] = sub_2545D43E4;
    v41 = *(v0 + 648);
    v42 = *(v0 + 616);

    return MEMORY[0x28216EA48](v42, v41, 1, v36, v38);
  }
}

uint64_t sub_2545D43E4()
{
  v1 = *v0;
  v2 = *(*v0 + 1000);
  v3 = *(*v0 + 992);
  v4 = *(*v0 + 648);
  v8 = *v0;

  sub_2545B612C(v4, &qword_27F6064D0, &unk_2546002B0);
  v5 = *(v1 + 840);
  v6 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_2545D4550, v6, v5);
}

uint64_t sub_2545D4550()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    v5 = *(v0 + 640);
    sub_2545FEEC4();
    if (v4(v3, 1, v2) != 1)
    {
      sub_2545B612C(*(v0 + 616), &qword_27F606758, &unk_254601DD0);
    }
  }

  else
  {
    (*(v1 + 32))(*(v0 + 640), v3, v2);
  }

  v6 = *(v0 + 688);
  v7 = *(v0 + 640);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 584);
  v11 = *(v0 + 576);
  v12 = *(v0 + 448);
  sub_2545FEEB4();
  sub_2545FED24();

  sub_2545FEF54();
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8]);
  v13 = sub_2545FF254();
  v14 = MEMORY[0x277D84F90];
  *(v0 + 416) = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v13 & ~(v13 >> 63), 0);
  v15 = *(v0 + 416);
  (*(v10 + 16))(v9, v8, v11);
  result = sub_2545FF244();
  if (v13 < 0)
  {
    goto LABEL_36;
  }

  v17 = *(v0 + 360);
  if (v13)
  {
    v18 = *(v0 + 352);
    v19 = *(v18 + 16);
    v20 = v18 + 40 * v17 + 32;
    v21 = *(v0 + 360);
    while (v19 != v21)
    {
      if (v17 < 0)
      {
        goto LABEL_33;
      }

      if (v21 >= *(v18 + 16))
      {
        goto LABEL_34;
      }

      sub_2545D850C(v20, v0 + 176);
      *(v0 + 416) = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2545DBE04((v22 > 1), v23 + 1, 1);
        v15 = *(v0 + 416);
      }

      *(v15 + 16) = v23 + 1;
      result = sub_2545D8570((v0 + 176), v15 + 40 * v23 + 32);
      v20 += 40;
      ++v21;
      if (!--v13)
      {
        *(v0 + 360) = v21;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v21 = *(v0 + 360);
LABEL_16:
  v24 = *(v0 + 352);
  v25 = *(v24 + 16);
  if (v21 != v25)
  {
    while (v21 < v25)
    {
      sub_2545D850C(v24 + 32 + 40 * v21, v0 + 216);
      *(v0 + 360) = v21 + 1;
      sub_2545D8570((v0 + 216), v0 + 256);
      *(v0 + 416) = v15;
      v37 = *(v15 + 16);
      v36 = *(v15 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2545DBE04((v36 > 1), v37 + 1, 1);
        v15 = *(v0 + 416);
      }

      *(v15 + 16) = v37 + 1;
      result = sub_2545D8570((v0 + 256), v15 + 40 * v37 + 32);
      v25 = *(v24 + 16);
      v21 = *(v0 + 360);
      if (v21 == v25)
      {
        goto LABEL_17;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

LABEL_17:
  (*(*(v0 + 584) + 8))(*(v0 + 608), *(v0 + 576));

  v26 = *(v15 + 16);
  if (v26)
  {
    *(v0 + 424) = v14;
    sub_2545DBDE4(0, v26, 0);
    v27 = *(v0 + 424);
    v28 = v15 + 32;
    do
    {
      v29 = *(v0 + 728);
      sub_2545D850C(v28, v0 + 296);
      v30 = *(v0 + 320);
      v31 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v30);
      sub_2545F3D54(v30, v31, v29);
      __swift_destroy_boxed_opaque_existential_0((v0 + 296));
      *(v0 + 424) = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2545DBDE4(v32 > 1, v33 + 1, 1);
        v27 = *(v0 + 424);
      }

      v34 = *(v0 + 728);
      v35 = *(v0 + 704);
      *(v27 + 16) = v33 + 1;
      sub_2545D8770(v34, v27 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33, type metadata accessor for ElementID);
      v28 += 40;
      --v26;
    }

    while (v26);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    v27 = MEMORY[0x277D84F90];
  }

  *(v0 + 1008) = v27;
  v38 = *(v0 + 944);
  v39 = v38;
  v40 = swift_task_alloc();
  *(v0 + 1016) = v40;
  *v40 = v0;
  v40[1] = sub_2545D4A44;

  return sub_2545EA1F8(v27, v38);
}

uint64_t sub_2545D4A44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1016);
  v15 = *v2;
  *(*v2 + 1024) = v1;

  if (v1)
  {
    v6 = *(v4 + 1008);
    v7 = *(v4 + 944);
    v8 = *(v4 + 864);
    v9 = *(v4 + 408);

    v10 = *(v4 + 840);
    v11 = *(v4 + 832);
    v12 = sub_2545D88C0;
  }

  else
  {
    v13 = *(v4 + 1008);

    *(v4 + 1032) = a1;
    v10 = *(v4 + 840);
    v11 = *(v4 + 832);
    v12 = sub_2545D4BAC;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_2545D4BAC()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 944);
  v4 = *(v0 + 688);
  v5 = *(v0 + 672);
  v80 = *(v0 + 640);
  v83 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_2545C2F44(sub_2545D8870, v8, v1, type metadata accessor for HomeSingleTileEntity, sub_2545DC25C, type metadata accessor for HomeSingleTileEntity);

  sub_2545C3480(v9, &qword_27F6066D8, &qword_254600BC8, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity);

  (*(v6 + 8))(v80, v7);
  v10 = (*(v5 + 8))(v4, v83);
  v15 = *(v0 + 952);
  v16 = *(v0 + 864);
  if (v15 == *(v0 + 872))
  {
    v17 = *(v0 + 792);
    sub_2545FEA14();

    v18 = *(v0 + 440);
    v81 = v18;
    if (v18 && (v78 = *(v18 + 16)) != 0)
    {
      v10 = *(v0 + 408);
      v76 = v10[2];
      if (v76)
      {
        v19 = 0;
        v70 = *(v0 + 704);
        v72 = *(v0 + 744);
        v20 = *(v0 + 696);
        v68 = MEMORY[0x277D84F90];
        v74 = *(v0 + 408);
        while (1)
        {
          if (v19 >= v10[2])
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            return MEMORY[0x28216EA18](v10, v11, v12, v13, v14);
          }

          v21 = *(v72 + 72);
          v22 = v19 + 1;
          v84 = (*(v72 + 80) + 32) & ~*(v72 + 80);
          sub_2545D8660(v10 + v84 + v21 * v19, *(v0 + 776), type metadata accessor for HomeSingleTileEntity);
          v23 = v18 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
          v24 = *(v70 + 72);
          v25 = v78;
          while (1)
          {
            v26 = *(v0 + 776);
            sub_2545D8660(v23, *(v0 + 736), type metadata accessor for ElementID);
            if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
            {
              break;
            }

            sub_2545D86C8(*(v0 + 736), type metadata accessor for ElementID);
LABEL_11:
            v23 += v24;
            if (!--v25)
            {
              sub_2545D86C8(*(v0 + 776), type metadata accessor for HomeSingleTileEntity);
              goto LABEL_7;
            }
          }

          v27 = *(v0 + 736);
          v28 = *(v20 + 20);
          v29 = qword_254600D00[*(v27 + v28)];
          v30 = qword_254600D00[*(*(v0 + 776) + v28)];
          sub_2545D86C8(v27, type metadata accessor for ElementID);
          if (v29 != v30)
          {
            goto LABEL_11;
          }

          sub_2545D8770(*(v0 + 776), *(v0 + 768), type metadata accessor for HomeSingleTileEntity);
          v31 = v68;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2545DC25C(0, *(v68 + 16) + 1, 1);
            v31 = v68;
          }

          v33 = *(v31 + 16);
          v32 = *(v31 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_2545DC25C(v32 > 1, v33 + 1, 1);
            v31 = v68;
          }

          v34 = *(v0 + 768);
          *(v31 + 16) = v33 + 1;
          v68 = v31;
          sub_2545D8770(v34, v31 + v84 + v33 * v21, type metadata accessor for HomeSingleTileEntity);
LABEL_7:
          v19 = v22;
          v10 = v74;
          v18 = v81;
          if (v22 == v76)
          {
            goto LABEL_29;
          }
        }
      }

      v68 = MEMORY[0x277D84F90];
LABEL_29:
      v48 = *(v0 + 848);

      v35 = v68;
    }

    else
    {

      v35 = *(v0 + 408);
    }

    v49 = *(v0 + 776);
    v50 = *(v0 + 768);
    v51 = *(v0 + 760);
    v52 = *(v0 + 752);
    v53 = *(v0 + 736);
    v54 = *(v0 + 728);
    v55 = *(v0 + 720);
    v56 = *(v0 + 712);
    v57 = *(v0 + 688);
    v60 = *(v0 + 680);
    v61 = *(v0 + 656);
    v62 = *(v0 + 648);
    v63 = *(v0 + 640);
    v64 = *(v0 + 616);
    v65 = *(v0 + 608);
    v66 = *(v0 + 600);
    v67 = *(v0 + 592);
    v69 = *(v0 + 568);
    v71 = *(v0 + 560);
    v73 = *(v0 + 536);
    v75 = *(v0 + 528);
    v77 = *(v0 + 512);
    v79 = *(v0 + 504);
    v82 = *(v0 + 496);
    v85 = *(v0 + 472);

    v58 = *(v0 + 8);

    return v58(v35);
  }

  else
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x259C124A0](*(v0 + 952), *(v0 + 864));
    }

    else
    {
      if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v10 = *(v16 + 8 * v15 + 32);
    }

    v36 = v10;
    *(v0 + 944) = v10;
    *(v0 + 952) = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_34;
    }

    v37 = *(v0 + 856);
    v38 = *(v0 + 648);
    v39 = *(v0 + 456);
    v40 = *(v0 + 464);
    *(v0 + 960) = sub_2545FEC94();
    v41 = [v36 uniqueIdentifier];
    sub_2545FEAC4();

    v42 = *(v40 + 56);
    *(v0 + 968) = v42;
    *(v0 + 976) = (v40 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v38, 0, 1, v39);
    LOBYTE(v41) = sub_2545FEC54();
    v43 = sub_2545FEC64();
    v45 = v44;
    v46 = *(MEMORY[0x277D15428] + 4);
    v47 = swift_task_alloc();
    *(v0 + 984) = v47;
    *v47 = v0;
    v47[1] = sub_2545D3B4C;
    v10 = *(v0 + 656);
    v11 = *(v0 + 648);
    v12 = v41 & 1;
    v13 = v43;
    v14 = v45;

    return MEMORY[0x28216EA18](v10, v11, v12, v13, v14);
  }
}

uint64_t sub_2545D5280()
{
  v89 = v0;
  v1 = v0[116];
  v2 = *(v1 + 16);
  v0[130] = v2;
  if (v2)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
      v64 = v0[116];
    }

    v3 = v0[54];
    v4 = sub_2545FF0A4();
    __swift_project_value_buffer(v4, qword_27F60ADD8);
    sub_2545FE8E4();
    sub_2545D8588(v3);
    v5 = sub_2545FF084();
    v6 = sub_2545FF474();

    sub_2545CE4A8(v3);
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      v86 = v10;
      *v9 = 136315394;
      v12 = *(v1 + 16);
      v13 = MEMORY[0x277D84F90];
      if (v12)
      {
        v73 = v10;
        v75 = v9;
        v77 = v6;
        v79 = v5;
        v14 = v0[116];
        v15 = v0[69];
        v16 = v0[58];
        v87 = MEMORY[0x277D84F90];
        sub_2545DBE24(0, v12, 0);
        v13 = v87;
        v17 = *(v15 + 16);
        v15 += 16;
        v18 = v14 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
        v81 = *(v15 + 56);
        v83 = v17;
        v19 = (v15 - 8);
        do
        {
          v20 = v0[70];
          v21 = v0[68];
          v22 = v0[59];
          v83(v20, v18, v21);
          sub_2545FEB34();
          (*v19)(v20, v21);
          v87 = v13;
          v24 = *(v13 + 16);
          v23 = *(v13 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_2545DBE24(v23 > 1, v24 + 1, 1);
            v13 = v87;
          }

          v25 = v0[59];
          v26 = v0[57];
          *(v13 + 16) = v24 + 1;
          (*(v16 + 32))(v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v24, v25, v26);
          v18 += v81;
          --v12;
        }

        while (v12);
        v5 = v79;
        v8 = MEMORY[0x277D84F90];
        v6 = v77;
        v11 = v73;
        v9 = v75;
      }

      v47 = v0[54];
      v48 = MEMORY[0x259C121B0](v13, v0[57]);
      v50 = v49;

      v51 = sub_2545F0FB4(v48, v50, &v86);

      *(v9 + 4) = v51;
      *(v9 + 12) = 2080;
      if (v47)
      {
        if (v47 == 1)
        {
          v52 = 0xE300000000000000;
          v53 = 7105633;
        }

        else
        {
          v54 = v0[65];
          v55 = v0[54];
          v87 = 0x3A796C6E6FLL;
          v88 = 0xE500000000000000;
          sub_2545D8728(&qword_27F606768, type metadata accessor for HomeID);
          v56 = sub_2545FF3A4();
          MEMORY[0x259C120B0](v56);

          v53 = v87;
          v52 = v88;
        }
      }

      else
      {
        v52 = 0xE700000000000000;
        v53 = 0x746E6572727563;
      }

      v57 = sub_2545F0FB4(v53, v52, &v86);

      *(v9 + 14) = v57;
      _os_log_impl(&dword_2545AB000, v5, v6, "[WidgetDataModel.orderedHomes] homes=%s using scope=%s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v11, -1, -1);
      MEMORY[0x259C12CB0](v9, -1, -1);
    }

    v58 = v0[69];
    v0[46] = v8;
    v0[131] = 0;
    v59 = v0[116];
    if (*(v59 + 16))
    {
      v60 = v0[113];
      v61 = v0[111];
      (*(v58 + 16))(v0[71], v59 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v0[68]);
      v0[132] = sub_2545FECD4();
      v63 = sub_2545FF334();

      return MEMORY[0x2822009F8](sub_2545D5960, v63, v62);
    }

    __break(1u);
    goto LABEL_28;
  }

  v27 = v0[99];
  sub_2545FEA14();

  if (qword_27F6063A0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v28 = sub_2545FF0A4();
  __swift_project_value_buffer(v28, qword_27F60ADD8);
  v29 = sub_2545FF084();
  v30 = sub_2545FF454();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[106];
  if (v31)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2545AB000, v29, v30, "WidgetDataModel.orderedHomes is empty", v33, 2u);
    MEMORY[0x259C12CB0](v33, -1, -1);
  }

  v34 = v0[97];
  v35 = v0[96];
  v36 = v0[95];
  v37 = v0[94];
  v38 = v0[92];
  v39 = v0[91];
  v40 = v0[90];
  v41 = v0[89];
  v42 = v0[86];
  v43 = v0[85];
  v65 = v0[82];
  v66 = v0[81];
  v67 = v0[80];
  v68 = v0[77];
  v69 = v0[76];
  v70 = v0[75];
  v71 = v0[74];
  v72 = v0[71];
  v74 = v0[70];
  v76 = v0[67];
  v78 = v0[66];
  v80 = v0[64];
  v82 = v0[63];
  v84 = v0[62];
  v85 = v0[59];

  v44 = v0[1];
  v45 = MEMORY[0x277D84F90];

  return v44(v45);
}

uint64_t sub_2545D5960()
{
  v1 = v0[132];
  v2 = v0[110];
  sub_2545FEA14();
  v0[133] = sub_2545FEBC4();
  v3 = v0[105];
  v4 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D59D4, v4, v3);
}

uint64_t sub_2545D59D4()
{
  v1 = v0[113];
  v2 = v0[111];
  v3 = v0[71];
  v4 = v0[67];
  sub_2545FEB34();
  v0[134] = sub_2545FECD4();
  v6 = sub_2545FF334();
  v0[135] = v6;
  v0[136] = v5;

  return MEMORY[0x2822009F8](sub_2545D5A78, v6, v5);
}

uint64_t sub_2545D5A78()
{
  v1 = v0[81];
  v2 = v0[64];
  v3 = v0[57];
  v4 = v0[58];
  (*(v4 + 16))(v1, v0[67], v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = sub_2545FECF4();
  sub_2545C3148(v1, v5, v6, v7, v8, v2);

  sub_2545B612C(v1, &qword_27F6064D0, &unk_2546002B0);
  v9 = *(MEMORY[0x277D15208] + 4);
  v10 = swift_task_alloc();
  v0[137] = v10;
  *v10 = v0;
  v10[1] = sub_2545D5BD4;
  v11 = v0[133];
  v12 = v0[85];
  v13 = v0[64];
  v14 = MEMORY[0x277D159D8];
  v15 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v12, v13, v14, v15);
}

uint64_t sub_2545D5BD4()
{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v10 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v4 = v2[116];
    v5 = v2[46];

    v6 = v2[136];
    v7 = v2[135];
    v8 = sub_2545D237C;
  }

  else
  {
    v6 = v2[136];
    v7 = v2[135];
    v8 = sub_2545D5D04;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2545D5D04()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[67];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v3, type metadata accessor for HomeID);
  v4 = v0[105];
  v5 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D5D98, v5, v4);
}

uint64_t sub_2545D5D98()
{
  v1 = v0[113];
  v2 = v0[111];
  v3 = v0[106];
  v4 = v0[85];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  sub_2545FED04();
  v0[139] = sub_2545FEB44();
  v8 = *(v6 + 8);
  v0[140] = v8;
  v0[141] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  v0[142] = sub_2545FECD4();
  v10 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545D5E90, v10, v9);
}

uint64_t sub_2545D5E90()
{
  v1 = v0[142];
  v2 = v0[110];
  sub_2545FEA14();
  v0[143] = sub_2545FEBC4();
  v3 = v0[105];
  v4 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D5F04, v4, v3);
}

uint64_t sub_2545D5F04()
{
  v1 = v0[111];
  v2 = v0[71];
  v3 = v0[66];
  sub_2545FEB34();
  v0[144] = sub_2545FECD4();
  v4 = *(MEMORY[0x277D15218] + 4);
  v5 = swift_task_alloc();
  v0[145] = v5;
  *v5 = v0;
  v5[1] = sub_2545D5FB4;
  v6 = v0[143];

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545D5FB4(uint64_t a1)
{
  v3 = *(*v1 + 1160);
  v7 = *v1;
  *(*v1 + 1168) = a1;

  sub_2545FEF44();
  sub_2545D8728(&qword_27F606698, MEMORY[0x277D16AF0]);
  v5 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545D610C, v5, v4);
}

uint64_t sub_2545D610C()
{
  v1 = v0[146];
  v2 = v0[144];
  v3 = v0[113];
  v4 = v0[111];
  v5 = v0[66];
  v0[147] = sub_2545FEF24();
  sub_2545FEA14();
  v7 = sub_2545FF334();
  v0[148] = v7;
  v0[149] = v6;

  return MEMORY[0x2822009F8](sub_2545D61B4, v7, v6);
}

uint64_t sub_2545D61B4()
{
  v1 = v0[98];
  v0[47] = v0[147];
  v0[150] = sub_2545FF344();
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545D6248, v3, v2);
}

uint64_t sub_2545D6248()
{
  v1 = v0[150];
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066A0, &qword_254600BA0);
  sub_2545B4F2C(&qword_27F6066A8, &qword_27F6066A0, &qword_254600BA0);
  v0[151] = sub_2545FF3E4();
  v2 = v0[149];
  v3 = v0[148];

  return MEMORY[0x2822009F8](sub_2545D6314, v3, v2);
}

uint64_t sub_2545D6314()
{
  v1 = v0[147];
  v2 = v0[144];
  v3 = v0[143];
  v4 = v0[66];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v4, type metadata accessor for HomeID);

  v5 = v0[105];
  v6 = v0[104];

  return MEMORY[0x2822009F8](sub_2545D63BC, v6, v5);
}

unint64_t sub_2545D63BC()
{
  result = *(v0 + 1208);
  v63 = *(result + 16);
  if (v63)
  {
    v2 = 0;
    v3 = *(*(v0 + 488) + 80);
    v62 = result + ((v3 + 32) & ~v3);
    v4 = MEMORY[0x277D84F98];
    v61 = *(v0 + 1208);
    while (v2 < *(result + 16))
    {
      v6 = *(v0 + 496);
      v5 = *(v0 + 504);
      v7 = *(v0 + 480);
      v8 = *(v0 + 488);
      v9 = *(v8 + 16);
      v10 = *(v8 + 72);
      v9(v5, v62 + v10 * v2, v7);
      v11 = sub_2545FEE54();
      v9(v6, v5, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 384) = v4;
      result = sub_2545C56D4(v11);
      v14 = v4[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_50;
      }

      v18 = v13;
      if (v4[3] >= v17)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = result;
          sub_2545C8780();
          result = v27;
        }
      }

      else
      {
        sub_2545C7AB4(v17, isUniquelyReferenced_nonNull_native);
        v19 = *(v0 + 384);
        result = sub_2545C56D4(v11);
        if ((v18 & 1) != (v20 & 1))
        {

          return sub_2545FF7D4();
        }
      }

      v4 = *(v0 + 384);
      v21 = *(v0 + 496);
      v22 = *(v0 + 504);
      v23 = *(v0 + 480);
      v24 = *(v0 + 488);
      if (v18)
      {
        (*(v24 + 40))(v4[7] + result * v10, v21, *(v0 + 480));
        (*(v24 + 8))(v22, v23);
      }

      else
      {
        v4[(result >> 6) + 8] |= 1 << result;
        *(v4[6] + 8 * result) = v11;
        (*(v24 + 32))(v4[7] + result * v10, v21, v23);
        result = (*(v24 + 8))(v22, v23);
        v25 = v4[2];
        v16 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v16)
        {
          goto LABEL_52;
        }

        v4[2] = v26;
      }

      ++v2;
      result = v61;
      if (v63 == v2)
      {
        v28 = *(v0 + 1208);
        goto LABEL_16;
      }
    }

    goto LABEL_49;
  }

LABEL_16:
  v29 = *(v0 + 680);
  v30 = *(v0 + 600);
  v31 = *(v0 + 592);
  v32 = *(v0 + 584);
  v33 = *(v0 + 576);
  v34 = *(v0 + 448);

  sub_2545FED24();

  sub_2545FEF54();
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8]);
  v35 = sub_2545FF254();
  v36 = MEMORY[0x277D84F90];
  *(v0 + 392) = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v35 & ~(v35 >> 63), 0);
  v37 = *(v0 + 392);
  (*(v32 + 16))(v30, v31, v33);
  result = sub_2545FF244();
  if (v35 < 0)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v38 = *(v0 + 344);
  if (v35)
  {
    v39 = *(v0 + 336);
    v40 = *(v39 + 16);
    v41 = v39 + 40 * v38 + 32;
    v42 = *(v0 + 344);
    while (v40 != v42)
    {
      if (v38 < 0)
      {
        goto LABEL_47;
      }

      if (v42 >= *(v39 + 16))
      {
        goto LABEL_48;
      }

      sub_2545D850C(v41, v0 + 16);
      *(v0 + 392) = v37;
      v44 = *(v37 + 16);
      v43 = *(v37 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_2545DBE04((v43 > 1), v44 + 1, 1);
        v37 = *(v0 + 392);
      }

      *(v37 + 16) = v44 + 1;
      result = sub_2545D8570((v0 + 16), v37 + 40 * v44 + 32);
      v41 += 40;
      ++v42;
      if (!--v35)
      {
        *(v0 + 344) = v42;
        v36 = MEMORY[0x277D84F90];
        goto LABEL_27;
      }
    }

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
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v42 = *(v0 + 344);
LABEL_27:
  v45 = *(v0 + 336);
  v46 = *(v45 + 16);
  if (v42 != v46)
  {
    while (v42 < v46)
    {
      sub_2545D850C(v45 + 32 + 40 * v42, v0 + 56);
      *(v0 + 344) = v42 + 1;
      sub_2545D8570((v0 + 56), v0 + 96);
      *(v0 + 392) = v37;
      v58 = *(v37 + 16);
      v57 = *(v37 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_2545DBE04((v57 > 1), v58 + 1, 1);
        v37 = *(v0 + 392);
      }

      *(v37 + 16) = v58 + 1;
      result = sub_2545D8570((v0 + 96), v37 + 40 * v58 + 32);
      v46 = *(v45 + 16);
      v42 = *(v0 + 344);
      if (v42 == v46)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_51;
  }

LABEL_28:
  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));

  v47 = *(v37 + 16);
  if (v47)
  {
    *(v0 + 400) = v36;
    sub_2545DBDE4(0, v47, 0);
    v48 = *(v0 + 400);
    v49 = v37 + 32;
    do
    {
      v50 = *(v0 + 712);
      sub_2545D850C(v49, v0 + 136);
      v51 = *(v0 + 160);
      v52 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v51);
      sub_2545F3D54(v51, v52, v50);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      *(v0 + 400) = v48;
      v54 = *(v48 + 16);
      v53 = *(v48 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2545DBDE4(v53 > 1, v54 + 1, 1);
        v48 = *(v0 + 400);
      }

      v55 = *(v0 + 712);
      v56 = *(v0 + 704);
      *(v48 + 16) = v54 + 1;
      sub_2545D8770(v55, v48 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v54, type metadata accessor for ElementID);
      v49 += 40;
      --v47;
    }

    while (v47);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    v48 = MEMORY[0x277D84F90];
  }

  *(v0 + 1216) = v48;
  v59 = swift_task_alloc();
  *(v0 + 1224) = v59;
  *v59 = v0;
  v59[1] = sub_2545D6A40;
  v60 = *(v0 + 1112);

  return sub_2545EA1F8(v48, v60);
}

uint64_t sub_2545D6A40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1224);
  v14 = *v2;
  *(*v2 + 1232) = v1;

  if (v1)
  {
    v6 = v4[152];
    v7 = v4[116];
    v8 = v4[46];

    v9 = v4[105];
    v10 = v4[104];
    v11 = sub_2545D88B8;
  }

  else
  {
    v12 = v4[152];

    v4[155] = a1;
    v9 = v4[105];
    v10 = v4[104];
    v11 = sub_2545D6B94;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2545D6B94()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1232);
  v75 = *(v0 + 1128);
  v72 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v78 = *(v0 + 1040);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 568);
  v7 = *(v0 + 544);
  v66 = *(v0 + 1048) + 1;
  v69 = *(v0 + 664);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_2545C2F44(sub_2545D8598, v8, v1, type metadata accessor for HomeSingleTileEntity, sub_2545DC25C, type metadata accessor for HomeSingleTileEntity);

  sub_2545C3480(v9, &qword_27F6066D8, &qword_254600BC8, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity);

  v72(v6, v7);
  v10 = (*(v5 + 8))(v4, v69);
  if (v66 == v78)
  {
    v13 = *(v0 + 928);
    v14 = *(v0 + 792);
    v15 = *(v0 + 440);

    sub_2545FEA14();
    if (v15 && (v76 = *(v0 + 440), (v73 = *(v76 + 16)) != 0))
    {
      v10 = *(v0 + 368);
      v70 = *(v10 + 2);
      if (v70)
      {
        v16 = 0;
        v64 = *(v0 + 744);
        v17 = *(v0 + 696);
        v62 = MEMORY[0x277D84F90];
        v67 = *(v0 + 368);
        while (1)
        {
          if (v16 >= *(v10 + 2))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            return MEMORY[0x2822009F8](v10, v11, v12);
          }

          v18 = *(v0 + 704);
          v19 = (*(v64 + 80) + 32) & ~*(v64 + 80);
          v20 = v16 + 1;
          v79 = *(v64 + 72);
          sub_2545D8660(v10 + v19 + v79 * v16, *(v0 + 760), type metadata accessor for HomeSingleTileEntity);
          v21 = v76 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
          v22 = *(v18 + 72);
          v23 = v73;
          while (1)
          {
            v24 = *(v0 + 760);
            sub_2545D8660(v21, *(v0 + 720), type metadata accessor for ElementID);
            if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
            {
              break;
            }

            sub_2545D86C8(*(v0 + 720), type metadata accessor for ElementID);
LABEL_11:
            v21 += v22;
            if (!--v23)
            {
              sub_2545D86C8(*(v0 + 760), type metadata accessor for HomeSingleTileEntity);
              goto LABEL_7;
            }
          }

          v25 = *(v0 + 720);
          v26 = *(v17 + 20);
          v27 = qword_254600D00[*(v25 + v26)];
          v28 = qword_254600D00[*(*(v0 + 760) + v26)];
          sub_2545D86C8(v25, type metadata accessor for ElementID);
          if (v27 != v28)
          {
            goto LABEL_11;
          }

          sub_2545D8770(*(v0 + 760), *(v0 + 752), type metadata accessor for HomeSingleTileEntity);
          v29 = v62;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2545DC25C(0, *(v62 + 16) + 1, 1);
            v29 = v62;
          }

          v31 = *(v29 + 16);
          v30 = *(v29 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_2545DC25C(v30 > 1, v31 + 1, 1);
            v29 = v62;
          }

          v32 = *(v0 + 752);
          *(v29 + 16) = v31 + 1;
          v62 = v29;
          sub_2545D8770(v32, v29 + v19 + v31 * v79, type metadata accessor for HomeSingleTileEntity);
LABEL_7:
          v16 = v20;
          v10 = v67;
          if (v20 == v70)
          {
            goto LABEL_25;
          }
        }
      }

      v62 = MEMORY[0x277D84F90];
LABEL_25:
      v41 = *(v0 + 848);

      v40 = v62;
    }

    else
    {

      v40 = *(v0 + 368);
    }

    v42 = *(v0 + 776);
    v43 = *(v0 + 768);
    v44 = *(v0 + 760);
    v45 = *(v0 + 752);
    v46 = *(v0 + 736);
    v47 = *(v0 + 728);
    v48 = *(v0 + 720);
    v49 = *(v0 + 712);
    v50 = *(v0 + 688);
    v53 = *(v0 + 680);
    v54 = *(v0 + 656);
    v55 = *(v0 + 648);
    v56 = *(v0 + 640);
    v57 = *(v0 + 616);
    v58 = *(v0 + 608);
    v59 = *(v0 + 600);
    v60 = *(v0 + 592);
    v61 = *(v0 + 568);
    v63 = *(v0 + 560);
    v65 = *(v0 + 536);
    v68 = *(v0 + 528);
    v71 = *(v0 + 512);
    v74 = *(v0 + 504);
    v77 = *(v0 + 496);
    v80 = *(v0 + 472);

    v51 = *(v0 + 8);

    return v51(v40);
  }

  else
  {
    v33 = *(v0 + 1048) + 1;
    *(v0 + 1048) = v33;
    v34 = *(v0 + 928);
    if (v33 >= *(v34 + 16))
    {
      goto LABEL_30;
    }

    v35 = *(v0 + 904);
    v36 = *(v0 + 888);
    (*(*(v0 + 552) + 16))(*(v0 + 568), v34 + ((*(*(v0 + 552) + 80) + 32) & ~*(*(v0 + 552) + 80)) + *(*(v0 + 552) + 72) * v33, *(v0 + 544));
    *(v0 + 1056) = sub_2545FECD4();
    v37 = sub_2545FF334();
    v39 = v38;
    v10 = sub_2545D5960;
    v11 = v37;
    v12 = v39;

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_2545D71E4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    return sub_2545FE8E4();
  }

  return result;
}

uint64_t sub_2545D71F8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_2545D7214(uint64_t a1)
{
  v2 = type metadata accessor for HomeID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066C8, &qword_254600BB8);
    v11 = sub_2545FF574();
    v12 = 0;
    v13 = v11 + 56;
    v27 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v28 = v10;
    v14 = *(v3 + 72);
    while (2)
    {
      sub_2545D8660(v27 + v14 * v12, v9, type metadata accessor for HomeID);
      v16 = *(v11 + 40);
      sub_2545FF834();
      sub_2545FEB04();
      sub_2545D8728(&qword_27F606430, MEMORY[0x277CC95F0]);
      sub_2545FF0C4();
      v17 = sub_2545FF864();
      v18 = ~(-1 << *(v11 + 32));
      for (i = v17 & v18; ; i = (i + 1) & v18)
      {
        v20 = *(v13 + 8 * (i >> 6));
        if (((1 << i) & v20) == 0)
        {
          break;
        }

        sub_2545D8660(*(v11 + 48) + i * v14, v7, type metadata accessor for HomeID);
        v21 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
        sub_2545D86C8(v7, type metadata accessor for HomeID);
        if (v21)
        {
          sub_2545D86C8(v9, type metadata accessor for HomeID);
          v15 = v28;
          goto LABEL_4;
        }
      }

      *(v13 + 8 * (i >> 6)) = (1 << i) | v20;
      result = sub_2545D8770(v9, *(v11 + 48) + i * v14, type metadata accessor for HomeID);
      v23 = *(v11 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      v15 = v28;
      if (!v24)
      {
        *(v11 + 16) = v25;
LABEL_4:
        if (++v12 == v15)
        {
          return v11;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2545D74D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = v35 - v7;
  v42 = sub_2545FEA64();
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for HomeXLTileEntity();
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v40);
  v39 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606800, &qword_254600CD0);
  v45 = *(v38 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x28223BE20](v38);
  v19 = v35 - v18;
  v46 = a1;
  sub_2545FE8E4();
  sub_2545C5880(&v46, type metadata accessor for HomeXLTileEntity, sub_2545C8CC0, sub_2545D881C);
  v20 = v46;
  v21 = *(v46 + 16);
  if (v21)
  {
    v46 = MEMORY[0x277D84F90];
    sub_2545DBE64(0, v21, 0);
    v22 = v46;
    v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v35[0] = v20;
    v24 = v20 + v23;
    v25 = *(v11 + 72);
    v36 = (v8 + 56);
    v37 = v25;
    v35[1] = v45 + 32;
    v26 = v40;
    do
    {
      sub_2545D8660(v24, v16, type metadata accessor for HomeXLTileEntity);
      sub_2545D8660(v16, v39, type metadata accessor for HomeXLTileEntity);
      v27 = &v16[*(v26 + 24)];
      v28 = &v27[*(type metadata accessor for TileElementInfo() + 20)];
      v29 = *v28;
      v30 = *(v28 + 1);
      sub_2545FE8E4();
      sub_2545FEA34();
      (*v36)(v43, 1, 1, v42);
      v31 = sub_2545FE884();
      (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
      sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity);
      sub_2545FE704();
      sub_2545D86C8(v16, type metadata accessor for HomeXLTileEntity);
      v46 = v22;
      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2545DBE64(v32 > 1, v33 + 1, 1);
        v22 = v46;
      }

      *(v22 + 16) = v33 + 1;
      (*(v45 + 32))(v22 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v33, v19, v38);
      v24 += v37;
      --v21;
    }

    while (v21);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    return MEMORY[0x277D84F90];
  }

  return v22;
}

uint64_t sub_2545D7A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = v35 - v7;
  v42 = sub_2545FEA64();
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ToggleControlEntity();
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v40);
  v39 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6067B0, &qword_254600C88);
  v45 = *(v38 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x28223BE20](v38);
  v19 = v35 - v18;
  v46 = a1;
  sub_2545FE8E4();
  sub_2545C5880(&v46, type metadata accessor for ToggleControlEntity, sub_2545C8D54, sub_2545D8834);
  v20 = v46;
  v21 = *(v46 + 16);
  if (v21)
  {
    v46 = MEMORY[0x277D84F90];
    sub_2545DC23C(0, v21, 0);
    v22 = v46;
    v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v35[0] = v20;
    v24 = v20 + v23;
    v25 = *(v11 + 72);
    v36 = (v8 + 56);
    v37 = v25;
    v35[1] = v45 + 32;
    v26 = v40;
    do
    {
      sub_2545D8660(v24, v16, type metadata accessor for ToggleControlEntity);
      sub_2545D8660(v16, v39, type metadata accessor for ToggleControlEntity);
      v27 = &v16[*(v26 + 24)];
      v28 = &v27[*(type metadata accessor for TileElementInfo() + 20)];
      v29 = *v28;
      v30 = *(v28 + 1);
      sub_2545FE8E4();
      sub_2545FEA34();
      (*v36)(v43, 1, 1, v42);
      v31 = sub_2545FE884();
      (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
      sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity);
      sub_2545FE704();
      sub_2545D86C8(v16, type metadata accessor for ToggleControlEntity);
      v46 = v22;
      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2545DC23C(v32 > 1, v33 + 1, 1);
        v22 = v46;
      }

      *(v22 + 16) = v33 + 1;
      (*(v45 + 32))(v22 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v33, v19, v38);
      v24 += v37;
      --v21;
    }

    while (v21);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    return MEMORY[0x277D84F90];
  }

  return v22;
}

uint64_t sub_2545D7F3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = v35 - v7;
  v42 = sub_2545FEA64();
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for HomeSingleTileEntity();
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v40);
  v39 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066E8, &qword_254600BE0);
  v45 = *(v38 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x28223BE20](v38);
  v19 = v35 - v18;
  v46 = a1;
  sub_2545FE8E4();
  sub_2545C5880(&v46, type metadata accessor for HomeSingleTileEntity, sub_2545C8DE8, sub_2545D884C);
  v20 = v46;
  v21 = *(v46 + 16);
  if (v21)
  {
    v46 = MEMORY[0x277D84F90];
    sub_2545DC27C(0, v21, 0);
    v22 = v46;
    v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v35[0] = v20;
    v24 = v20 + v23;
    v25 = *(v11 + 72);
    v36 = (v8 + 56);
    v37 = v25;
    v35[1] = v45 + 32;
    v26 = v40;
    do
    {
      sub_2545D8660(v24, v16, type metadata accessor for HomeSingleTileEntity);
      sub_2545D8660(v16, v39, type metadata accessor for HomeSingleTileEntity);
      v27 = &v16[*(v26 + 24)];
      v28 = &v27[*(type metadata accessor for TileElementInfo() + 20)];
      v29 = *v28;
      v30 = *(v28 + 1);
      sub_2545FE8E4();
      sub_2545FEA34();
      (*v36)(v43, 1, 1, v42);
      v31 = sub_2545FE884();
      (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
      sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity);
      sub_2545FE704();
      sub_2545D86C8(v16, type metadata accessor for HomeSingleTileEntity);
      v46 = v22;
      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2545DC27C(v32 > 1, v33 + 1, 1);
        v22 = v46;
      }

      *(v22 + 16) = v33 + 1;
      (*(v45 + 32))(v22 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v33, v19, v38);
      v24 += v37;
      --v21;
    }

    while (v21);
    sub_2545FEA14();
  }

  else
  {
    sub_2545FEA14();
    return MEMORY[0x277D84F90];
  }

  return v22;
}

unint64_t sub_2545D8470()
{
  result = qword_27F6066B8;
  if (!qword_27F6066B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6066B8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2545D850C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2545D8570(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2545D8588(unint64_t result)
{
  if (result >= 2)
  {
    return sub_2545FE8E4();
  }

  return result;
}

uint64_t sub_2545D8660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2545D86C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2545D8728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2545D8770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SelectedHomeEntityQuery.suggestedEntities()(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#") - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_2545FEFF4();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545D89C4, 0, 0);
}

uint64_t sub_2545D89C4()
{
  if (qword_27F6063A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_2545FF024();
  v3 = __swift_project_value_buffer(v2, qword_27F60ADF0);
  sub_2545FEFE4();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2545D8AD8;
  v5 = *(v0 + 48);

  return (sub_2545DC334)("SelectedHomeEntityQuery.homeEntities", 36, 2, v5, v3);
}

uint64_t sub_2545D8AD8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v10 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_2545DC330;
  }

  else
  {
    v8 = sub_2545D8C4C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2545D8C4C()
{
  v20 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  sub_2545FE8E4();
  v3 = sub_2545FF084();
  v4 = sub_2545FF474();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v8 = type metadata accessor for SelectedHomeEntity();
    v9 = MEMORY[0x259C121B0](v5, v8);
    v11 = sub_2545F0FB4(v9, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2545AB000, v3, v4, "SelectedHomeEntityQuery.suggestedEntities() returned %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x259C12CB0](v7, -1, -1);
    MEMORY[0x259C12CB0](v6, -1, -1);
  }

  v12 = v0[8];
  v13 = v0[6];
  v15 = v0[2];
  v14 = v0[3];
  v16 = sub_2545FEA64();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  type metadata accessor for SelectedHomeEntity();
  sub_2545DC29C(&qword_281533128, type metadata accessor for SelectedHomeEntity);
  sub_2545DC29C(&qword_281533130, type metadata accessor for SelectedHomeEntity);
  sub_2545FE824();

  v17 = v0[1];

  return v17();
}

uint64_t SelectedHomeEntityQuery.entities(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for HomeID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for SelectedHomeEntity();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = sub_2545FEFF4();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545D905C, 0, 0);
}

uint64_t sub_2545D905C()
{
  if (qword_27F6063A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_2545FF024();
  v3 = __swift_project_value_buffer(v2, qword_27F60ADF0);
  sub_2545FEFE4();
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_2545D9170;
  v5 = *(v0 + 96);

  return (sub_2545DC334)("SelectedHomeEntityQuery.homeEntities", 36, 2, v5, v3);
}

uint64_t sub_2545D9170(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  v10 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_2545D96E4;
  }

  else
  {
    v8 = sub_2545D92E4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2545D92E4()
{
  v43 = v0;
  v1 = v0[14];
  v40 = *(v1 + 16);
  if (v40)
  {
    v2 = 0;
    v3 = v0[4];
    v38 = v0[2];
    v39 = v0[7];
    v41 = MEMORY[0x277D84F90];
    while (v2 < *(v1 + 16))
    {
      v4 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v5 = *(v39 + 72);
      v6 = v2 + 1;
      sub_2545DBCD8(v0[14] + v4 + v5 * v2, v0[9], type metadata accessor for SelectedHomeEntity);
      v7 = 0;
      v8 = *(v38 + 16);
      do
      {
        v9 = v0[9];
        if (v8 == v7)
        {
          sub_2545DBEA4(v0[9], type metadata accessor for SelectedHomeEntity);
          goto LABEL_4;
        }

        v10 = v0[5];
        sub_2545DBCD8(v0[2] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7++, v10, type metadata accessor for HomeID);
        v11 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
        sub_2545DBEA4(v10, type metadata accessor for HomeID);
      }

      while ((v11 & 1) == 0);
      sub_2545DBD40(v0[9], v0[8]);
      v12 = v41;
      v42 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2545DBE84(0, *(v41 + 16) + 1, 1);
        v12 = v42;
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2545DBE84(v13 > 1, v14 + 1, 1);
        v12 = v42;
      }

      v15 = v0[8];
      *(v12 + 16) = v14 + 1;
      v41 = v12;
      sub_2545DBD40(v15, v12 + v4 + v14 * v5);
LABEL_4:
      v2 = v6;
      if (v6 == v40)
      {
        v16 = v0[14];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_16:

  if (qword_27F6063A0 != -1)
  {
    goto LABEL_23;
  }

LABEL_17:
  v17 = v0[2];
  v18 = sub_2545FF0A4();
  __swift_project_value_buffer(v18, qword_27F60ADD8);
  sub_2545FE8E4();
  sub_2545FE8F4();
  v19 = sub_2545FF084();
  v20 = sub_2545FF474();

  sub_2545FEA14();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[6];
    v23 = v0[2];
    v22 = v0[3];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v42 = v25;
    *v24 = 136315394;
    v26 = MEMORY[0x259C121B0](v23, v22);
    v28 = sub_2545F0FB4(v26, v27, &v42);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = MEMORY[0x259C121B0](v41, v21);
    v31 = sub_2545F0FB4(v29, v30, &v42);

    *(v24 + 14) = v31;
    _os_log_impl(&dword_2545AB000, v19, v20, "SelectedHomeEntityQuery.entities(for: %s) returned %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C12CB0](v25, -1, -1);
    MEMORY[0x259C12CB0](v24, -1, -1);
  }

  v32 = v0[12];
  v34 = v0[8];
  v33 = v0[9];
  v35 = v0[5];

  v36 = v0[1];

  return v36(v41);
}

uint64_t sub_2545D96E4()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t SelectedHomeEntityQuery.results()()
{
  v1 = sub_2545FEFF4();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545D982C, 0, 0);
}

uint64_t sub_2545D982C()
{
  if (qword_27F6063A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_2545FF024();
  v3 = __swift_project_value_buffer(v2, qword_27F60ADF0);
  sub_2545FEFE4();
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_2545D9940;
  v5 = *(v0 + 32);

  return (sub_2545DC334)("SelectedHomeEntityQuery.homeEntities", 36, 2, v5, v3);
}

uint64_t sub_2545D9940(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v10 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_2545D9C64;
  }

  else
  {
    v8 = sub_2545D9AB4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2545D9AB4()
{
  v17 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  sub_2545FE8E4();
  v3 = sub_2545FF084();
  v4 = sub_2545FF474();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = type metadata accessor for SelectedHomeEntity();
    v9 = MEMORY[0x259C121B0](v5, v8);
    v11 = sub_2545F0FB4(v9, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2545AB000, v3, v4, "SelectedHomeEntityQuery.results() returned %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x259C12CB0](v7, -1, -1);
    MEMORY[0x259C12CB0](v6, -1, -1);
  }

  v12 = v0[4];

  v13 = v0[1];
  v14 = v0[6];

  return v13(v14);
}

uint64_t sub_2545D9C64()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t SelectedHomeEntityQuery.defaultResult()(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for SelectedHomeEntity();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  type metadata accessor for IntentsService();
  swift_initStaticObject();
  v6 = swift_task_alloc();
  v1[9] = v6;
  *v6 = v1;
  v6[1] = sub_2545D9E1C;

  return sub_2545B0448();
}

uint64_t sub_2545D9E1C(void *a1)
{
  v4 = *(*v2 + 72);
  v5 = *v2;
  v5[10] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2545DA484, 0, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v5[11] = v6;
    *v6 = v5;
    v6[1] = sub_2545D9FA4;
    v7 = v5[3];

    return static SelectedHomeEntity.selectedHome.getter(v7);
  }
}

uint64_t sub_2545D9FA4()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2545DA0A0, 0, 0);
}

uint64_t sub_2545DA0A0()
{
  v26 = v0;
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    sub_2545B612C(v1, &qword_27F606520, &qword_2546002E0);
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v2 = sub_2545FF0A4();
    __swift_project_value_buffer(v2, qword_27F60ADD8);
    v3 = sub_2545FF084();
    v4 = sub_2545FF454();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2545AB000, v3, v4, "SelectedHomeEntityQuery.defaultResult() returned empty", v5, 2u);
      MEMORY[0x259C12CB0](v5, -1, -1);
    }

    v6 = 1;
  }

  else
  {
    sub_2545DBD40(v1, v0[8]);
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v7 = v0[7];
    v8 = v0[8];
    v9 = sub_2545FF0A4();
    __swift_project_value_buffer(v9, qword_27F60ADD8);
    sub_2545DBCD8(v8, v7, type metadata accessor for SelectedHomeEntity);
    v10 = sub_2545FF084();
    v11 = sub_2545FF474();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[7];
    if (v12)
    {
      v14 = v0[6];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136315138;
      sub_2545DBCD8(v13, v14, type metadata accessor for SelectedHomeEntity);
      sub_2545FF594();

      v25[1] = 0xD000000000000013;
      v25[2] = 0x8000000254603AC0;
      v17 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
      MEMORY[0x259C120B0](v17);

      MEMORY[0x259C120B0](41, 0xE100000000000000);
      sub_2545DBEA4(v14, type metadata accessor for SelectedHomeEntity);
      sub_2545DBEA4(v13, type metadata accessor for SelectedHomeEntity);
      v18 = sub_2545F0FB4(0xD000000000000013, 0x8000000254603AC0, v25);

      *(v15 + 4) = v18;
      _os_log_impl(&dword_2545AB000, v10, v11, "SelectedHomeEntityQuery.defaultResult() returned %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x259C12CB0](v16, -1, -1);
      MEMORY[0x259C12CB0](v15, -1, -1);
    }

    else
    {

      sub_2545DBEA4(v13, type metadata accessor for SelectedHomeEntity);
    }

    sub_2545DBD40(v0[8], v0[2]);
    v6 = 0;
  }

  v19 = v0[7];
  v20 = v0[8];
  v21 = v0[6];
  v22 = v0[3];
  (*(v0[5] + 56))(v0[2], v6, 1, v0[4]);

  v23 = v0[1];

  return v23();
}

uint64_t sub_2545DA484()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2545AB000, v4, v5, "SelectedHomeEntityQuery.defaultResult() threw error %@", v8, 0xCu);
    sub_2545B612C(v9, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v9, -1, -1);
    MEMORY[0x259C12CB0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[6];
  v15 = v0[3];
  (*(v0[5] + 56))(v0[2], 1, 1, v0[4]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_2545DA670(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_2545FEB64();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for SelectedHomeEntity();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545DA7A4, 0, 0);
}

uint64_t sub_2545DA7A4()
{
  sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    type metadata accessor for IntentsService();
    v0[18] = swift_initStaticObject();
    sub_2545FF354();
    v0[19] = sub_2545FF344();
    v1 = sub_2545FF334();
    v3 = v2;
    v4 = sub_2545DAE10;
  }

  else
  {
    v0[12] = sub_2545FEBD4();
    sub_2545FECE4();
    v0[13] = sub_2545FECD4();
    sub_2545DC29C(&qword_27F6064D8, MEMORY[0x277D15960]);
    v1 = sub_2545FF334();
    v3 = v5;
    v4 = sub_2545DA8E8;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_2545DA8E8()
{
  v2 = v0[12];
  v1 = v0[13];
  sub_2545FEA14();
  v0[14] = sub_2545FEBC4();
  v3 = *(MEMORY[0x277D15210] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_2545DA98C;

  return MEMORY[0x28216E6B8]();
}

uint64_t sub_2545DA98C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_2545DB2B0;
  }

  else
  {
    v5 = sub_2545DAAA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2545DAAA0()
{
  v47 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  sub_2545FEA14();
  v3 = *(v1 + 16);
  v4 = *(v0 + 128);
  if (v3)
  {
    v43 = *(v0 + 64);
    v44 = *(v0 + 72);
    v5 = *(v0 + 40);
    v46 = MEMORY[0x277D84F90];
    sub_2545DBE84(0, v3, 0);
    v6 = v46;
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = v4 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v41 = *(v5 + 56);
    v42 = v7;
    v39 = v0;
    v40 = (v5 - 8);
    do
    {
      v45 = v3;
      v9 = *(v0 + 88);
      v10 = *(v0 + 48);
      v11 = *(v0 + 56);
      v12 = *(v0 + 32);
      v42(v11, v8, v12);
      v42(v10, v11, v12);
      sub_2545FEB34();
      v13 = v6;
      v14 = sub_2545FEB54();
      v16 = v15;
      v17 = *v40;
      (*v40)(v10, v12);
      v17(v11, v12);
      v18 = (v9 + *(v43 + 20));
      *v18 = v14;
      v18[1] = v16;
      v6 = v13;
      v46 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2545DBE84(v19 > 1, v20 + 1, 1);
        v6 = v46;
      }

      v0 = v39;
      v21 = *(v39 + 88);
      *(v6 + 16) = v20 + 1;
      sub_2545DBD40(v21, v6 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v20);
      v8 += v41;
      --v3;
    }

    while (v45 != 1);
    v22 = *(v39 + 128);
  }

  else
  {
    v23 = *(v0 + 128);

    v6 = MEMORY[0x277D84F90];
  }

  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v24 = sub_2545FF0A4();
  __swift_project_value_buffer(v24, qword_27F60ADD8);
  sub_2545FE8E4();
  v25 = sub_2545FF084();
  v26 = sub_2545FF474();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 64);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46 = v29;
    *v28 = 136315138;
    v30 = MEMORY[0x259C121B0](v6, v27);
    v32 = sub_2545F0FB4(v30, v31, &v46);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2545AB000, v25, v26, "SelectedHomeEntityQuery.homeEntities() returned %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x259C12CB0](v29, -1, -1);
    MEMORY[0x259C12CB0](v28, -1, -1);
  }

  v34 = *(v0 + 80);
  v33 = *(v0 + 88);
  v36 = *(v0 + 48);
  v35 = *(v0 + 56);
  **(v0 + 24) = v6;

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2545DAE10()
{
  v2 = v0[18];
  v1 = v0[19];
  sub_2545FEA14();
  v0[20] = sub_2545B027C();

  return MEMORY[0x2822009F8](sub_2545DAE80, 0, 0);
}

size_t sub_2545DAE80()
{
  v42 = v0;
  v1 = *(v0 + 160);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = [*(v0 + 160) homes];
    sub_2545DC2E4();
    v4 = sub_2545FF2B4();

    *(v0 + 16) = v4;
    sub_2545FF424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606848, &qword_254600F20);
    sub_2545B4F2C(&qword_27F606850, &qword_27F606848, &qword_254600F20);
    v5 = sub_2545FF3D4();

    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }

LABEL_14:
    v6 = sub_2545FF674();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_15:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v5 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_14;
  }

LABEL_3:
  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v41 = v2;
  result = sub_2545DBE84(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = *(v0 + 72);
  v10 = v5;
  v38 = v5 & 0xC000000000000001;
  v39 = *(v0 + 64);
  v11 = v41;
  v40 = v5;
  do
  {
    if (v38)
    {
      v12 = MEMORY[0x259C124A0](v8);
    }

    else
    {
      v12 = *(v10 + 8 * v8 + 32);
    }

    v13 = v12;
    v14 = *(v0 + 80);
    v15 = [v12 uniqueIdentifier];
    sub_2545FEAC4();

    v16 = [v13 name];
    v17 = sub_2545FF174();
    v19 = v18;

    v20 = (v14 + *(v39 + 20));
    *v20 = v17;
    v20[1] = v19;
    v41 = v11;
    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_2545DBE84(v21 > 1, v22 + 1, 1);
      v11 = v41;
    }

    v23 = *(v0 + 80);
    ++v8;
    *(v11 + 16) = v22 + 1;
    sub_2545DBD40(v23, v11 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22);
    v10 = v40;
  }

  while (v6 != v8);

LABEL_16:
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v24 = sub_2545FF0A4();
  __swift_project_value_buffer(v24, qword_27F60ADD8);
  sub_2545FE8E4();
  v25 = sub_2545FF084();
  v26 = sub_2545FF474();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 64);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41 = v29;
    *v28 = 136315138;
    v30 = MEMORY[0x259C121B0](v11, v27);
    v32 = sub_2545F0FB4(v30, v31, &v41);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2545AB000, v25, v26, "SelectedHomeEntityQuery.homeEntities() returned %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x259C12CB0](v29, -1, -1);
    MEMORY[0x259C12CB0](v28, -1, -1);
  }

  v34 = *(v0 + 80);
  v33 = *(v0 + 88);
  v36 = *(v0 + 48);
  v35 = *(v0 + 56);
  **(v0 + 24) = v11;

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2545DB2B0()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  sub_2545FEA14();

  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

uint64_t sub_2545DB348(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D88C4;

  return SelectedHomeEntityQuery.entities(for:)(a1);
}

uint64_t sub_2545DB3DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D880C;

  return SelectedHomeEntityQuery.suggestedEntities()(a1);
}

uint64_t sub_2545DB474(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2545DC0E4();
  *v6 = v2;
  v6[1] = sub_2545D880C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_2545DB528(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545AF6A0;

  return SelectedHomeEntityQuery.defaultResult()(a1);
}

uint64_t SelectedHomeEntityQuery.allEntities()(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#") - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_2545FEFF4();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545DB6B8, 0, 0);
}

uint64_t sub_2545DB6B8()
{
  if (qword_27F6063A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_2545FF024();
  v3 = __swift_project_value_buffer(v2, qword_27F60ADF0);
  sub_2545FEFE4();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2545DB7CC;
  v5 = *(v0 + 48);

  return (sub_2545DC334)("SelectedHomeEntityQuery.homeEntities", 36, 2, v5, v3);
}

uint64_t sub_2545DB7CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v10 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_2545DBBCC;
  }

  else
  {
    v8 = sub_2545DB940;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2545DB940()
{
  v20 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  sub_2545FE8E4();
  v3 = sub_2545FF084();
  v4 = sub_2545FF474();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v8 = type metadata accessor for SelectedHomeEntity();
    v9 = MEMORY[0x259C121B0](v5, v8);
    v11 = sub_2545F0FB4(v9, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2545AB000, v3, v4, "SelectedHomeEntityQuery.allEntities() returned %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x259C12CB0](v7, -1, -1);
    MEMORY[0x259C12CB0](v6, -1, -1);
  }

  v12 = v0[8];
  v13 = v0[6];
  v15 = v0[2];
  v14 = v0[3];
  v16 = sub_2545FEA64();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  type metadata accessor for SelectedHomeEntity();
  sub_2545DC29C(&qword_281533128, type metadata accessor for SelectedHomeEntity);
  sub_2545DC29C(&qword_281533130, type metadata accessor for SelectedHomeEntity);
  sub_2545FE824();

  v17 = v0[1];

  return v17();
}

uint64_t sub_2545DBBCC()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_2545DBC3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545AF6A0;

  return SelectedHomeEntityQuery.allEntities()(a1);
}

uint64_t sub_2545DBCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2545DBD40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedHomeEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_2545DBDA4(size_t a1, int64_t a2, char a3)
{
  result = sub_2545C4E3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2545DBDC4(size_t a1, int64_t a2, char a3)
{
  result = sub_2545C4E64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2545DBDE4(size_t a1, int64_t a2, char a3)
{
  result = sub_2545C4E8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2545DBE04(void *a1, int64_t a2, char a3)
{
  result = sub_2545C4EB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2545DBE24(size_t a1, int64_t a2, char a3)
{
  result = sub_2545C4FFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2545DBE44(size_t a1, int64_t a2, char a3)
{
  result = sub_2545C5024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2545DBE64(size_t a1, int64_t a2, char a3)
{
  result = sub_2545C504C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2545DBE84(size_t a1, int64_t a2, char a3)
{
  result = sub_2545C5070(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2545DBEA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2545DBF08()
{
  result = qword_281533148;
  if (!qword_281533148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281533148);
  }

  return result;
}

unint64_t sub_2545DBF60()
{
  result = qword_281533140;
  if (!qword_281533140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281533140);
  }

  return result;
}

unint64_t sub_2545DC000()
{
  result = qword_281533150;
  if (!qword_281533150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281533150);
  }

  return result;
}

unint64_t sub_2545DC0E4()
{
  result = qword_27F606838;
  if (!qword_27F606838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606838);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SelectedHomeEntityQuery(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SelectedHomeEntityQuery(_WORD *result, int a2, int a3)
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

size_t sub_2545DC21C(size_t a1, int64_t a2, char a3)
{
  result = sub_2545C5098(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2545DC23C(size_t a1, int64_t a2, char a3)
{
  result = sub_2545C50C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2545DC25C(size_t a1, int64_t a2, char a3)
{
  result = sub_2545C50E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2545DC27C(size_t a1, int64_t a2, char a3)
{
  result = sub_2545C52E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2545DC29C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2545DC2E4()
{
  result = qword_27F606840;
  if (!qword_27F606840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F606840);
  }

  return result;
}

uint64_t sub_2545DC334(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 144) = a3;
  *(v5 + 40) = a1;
  v6 = sub_2545FF034();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v9 = sub_2545FEFF4();
  *(v5 + 88) = v9;
  v10 = *(v9 - 8);
  *(v5 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545DC464, 0, 0);
}

uint64_t sub_2545DC464()
{
  v1 = *(v0 + 56);
  v2 = sub_2545FF014();
  v3 = sub_2545FF494();
  result = sub_2545FF4C4();
  if (result)
  {
    v5 = *(v0 + 40);
    if ((*(v0 + 144) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 48);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = sub_2545FEFD4();
        _os_signpost_emit_with_name_impl(&dword_2545AB000, v2, v3, v8, v5, "", v7, 2u);
        MEMORY[0x259C12CB0](v7, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 32);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  (*(*(v0 + 96) + 16))(*(v0 + 112), *(v0 + 48), *(v0 + 88));
  v9 = sub_2545FF064();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 120) = sub_2545FF054();
  v12 = swift_task_alloc();
  *(v0 + 128) = v12;
  *v12 = v0;
  v12[1] = sub_2545DC618;

  return sub_2545DA670(v0 + 16);
}

uint64_t sub_2545DC618()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2545DC938;
  }

  else
  {
    v3 = sub_2545DC72C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545DC72C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);
  v4 = sub_2545FF014();
  sub_2545FF044();
  v5 = sub_2545FF484();
  result = sub_2545FF4C4();
  if (result)
  {
    v7 = *(v0 + 40);
    if ((*(v0 + 144) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 120);
        v10 = *(v0 + 72);
        v9 = *(v0 + 80);
        v11 = *(v0 + 64);
        sub_2545FE8F4();
        sub_2545FF074();
        sub_2545FEA14();
        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
          v12 = "";
        }

        v13 = *(v0 + 104);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_2545FEFD4();
        _os_signpost_emit_with_name_impl(&dword_2545AB000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x259C12CB0](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v19 = *(v0 + 96);
  v18 = *(v0 + 104);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  sub_2545FEA14();

  (*(v19 + 8))(v18, v20);
  v22 = *(v0 + 16);

  v23 = *(v0 + 8);

  return v23(v22);
}