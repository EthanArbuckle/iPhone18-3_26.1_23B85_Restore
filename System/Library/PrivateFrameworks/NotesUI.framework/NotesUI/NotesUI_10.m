uint64_t sub_1D438FDCC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = sub_1D4417494();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v42 = &v35 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    return sub_1D4180E4C(v36, v35, v37, a3);
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_1D4392788(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
    v25 = sub_1D4419B84();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_6:
      result = (v22)(v48, v9);
      goto LABEL_7;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      v44(v13, *(v30 + 48) + v27 * v45, v9);
      sub_1D4392788(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
      v32 = sub_1D4419BE4();
      v22 = *v47;
      (*v47)(v13, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_6;
      }
    }

    result = (v22)(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_7:
      v10 = v41;
      goto LABEL_8;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_21;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return MEMORY[0x1E69E7CD0];
    }

LABEL_8:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D43901C0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1D4417494();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1D41769C4(v11, &unk_1EC7CA4F0);
          v45 = v61;

          return sub_1D4180E4C(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1D4392788(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
        v35 = sub_1D4419B84();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1D4392788(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
        v43 = sub_1D4419BE4();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1D4390694(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = *a5;
  v11 = a5[1];
  v12 = *(*a5 + 16);
  if (v11 == v12)
  {
LABEL_2:

    return sub_1D43744D8(v7, a2, v9, a3);
  }

  else
  {
    v14 = a3 + 56;
    while ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v10 + 8 * v11 + 32);
      a5[1] = v11 + 1;
      result = sub_1D441AEA4();
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v15)
        {
LABEL_12:
          v22 = v7[v18];
          v7[v18] = v22 & ~v19;
          if ((v22 & v19) != 0)
          {
            if (__OFSUB__(v9--, 1))
            {
              goto LABEL_18;
            }

            if (!v9)
            {
              return MEMORY[0x1E69E7CD0];
            }
          }
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v15)
            {
              goto LABEL_12;
            }
          }
        }
      }

      v10 = *a5;
      v11 = a5[1];
      v12 = *(*a5 + 16);
      if (v11 == v12)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4390814(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1D4373E9C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1D441AEB4();

        sub_1D4419CD4();
        v19 = sub_1D441AF04();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1D441AD84() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

void sub_1D4390A4C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_1D441A8F4())
          {
            goto LABEL_29;
          }

          sub_1D41766C0(0, &qword_1EC7CAF48);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_1D43746C4(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_1D441A5D4();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1D41766C0(0, &qword_1EC7CAF48);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_1D441A5E4();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_1D441A5E4();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1D4390CF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1D4417494();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_1D41769C4(v5, &unk_1EC7CA4F0))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_1D43CB774(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4390F0C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1D43CBA40(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_1D4391038(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_1D441A8C4())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D441A874();
    sub_1D41766C0(0, &qword_1EC7CAF48);
    sub_1D4392800(&qword_1EC7CB8D8, &qword_1EC7CAF48);
    sub_1D441A0A4();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_1D419FA48();
      return;
    }

    while (1)
    {
      v16 = sub_1D43CBB7C(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1D441A8F4())
      {
        sub_1D41766C0(0, &qword_1EC7CAF48);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t (*sub_1D4391270(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6D6410](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D439285C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D43912F0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6D6410](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1D4391370;
  }

  __break(1u);
  return result;
}

void (*sub_1D4391378(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6D6410](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D43913F8;
  }

  __break(1u);
  return result;
}

void sub_1D4391414(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA6D62F0](a1, a2, v9);
      sub_1D41766C0(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D41766C0(0, a5);
    if (sub_1D441A8A4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D441A8B4();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_1D441A5D4();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_1D441A5E4();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_1D4391640(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D4391694(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA6D5A90](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D43C5A30(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D439172C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1D441A8C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_1D44198E4();
  v5 = sub_1D4392788(&qword_1EC7C9820, MEMORY[0x1E69921C8]);
  result = MEMORY[0x1DA6D5A90](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6D6410](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1D43C5B80(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_1D441A8C4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D4391898(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA6D5A90](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D43C5E20(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D439193C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ICAttachmentType(0);
  v4 = v3;
  v5 = sub_1D4392788(&qword_1EC7CB8C0, type metadata accessor for ICAttachmentType);
  result = MEMORY[0x1DA6D5A90](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1D43C66A0(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1D43919E8(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D441A8C4())
  {
    v4 = type metadata accessor for ThumbnailKey();
    v5 = sub_1D4392788(&qword_1EC7CB770, type metadata accessor for ThumbnailKey);
    result = MEMORY[0x1DA6D5A90](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6D6410](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1D418DED8(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1D441A8C4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D4391BA8(unint64_t a1, unint64_t *j, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D441A8C4())
  {
    v11 = sub_1D41766C0(0, j);
    v12 = sub_1D4392800(a4, j);
    result = MEMORY[0x1DA6D5A90](i, v11, v12);
    v17 = result;
    if (v9)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; j = (j + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA6D6410](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v15);

      if (v9 == v14)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v14 = sub_1D441A8C4();
  result = a4;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D4391D00(uint64_t a1)
{
  v1 = a1;
  v31 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D441A874();
    _s5IndexCMa();
    sub_1D4392788(&qword_1EDE325C0, _s5IndexCMa);
    result = sub_1D441A0A4();
    v1 = v26;
    v3 = v27;
    v4 = v28;
    v5 = v29;
    v6 = v30;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v21 = MEMORY[0x1E69E7CC0];
  v22 = v1;
LABEL_8:
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      v15 = sub_1D441A8F4();
      if (!v15 || (*&v23 = v15, _s5IndexCMa(), swift_dynamicCast(), v14 = *&v25[0], v5 = v10, v13 = v6, !*&v25[0]))
      {
LABEL_32:
        sub_1D419FA48();
        return v21;
      }

      goto LABEL_19;
    }

    v11 = v10;
    v12 = v6;
    v5 = v10;
    if (!v6)
    {
      break;
    }

LABEL_15:
    v13 = (v12 - 1) & v12;
    v14 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v14)
    {
      goto LABEL_32;
    }

LABEL_19:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      swift_beginAccess();
      v18 = objc_getAssociatedObject(v17, &unk_1EC7CA3C0);
      swift_endAccess();
      if (v18)
      {
        sub_1D441A804();
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
      }

      v25[0] = v23;
      v25[1] = v24;
      if (!*(&v24 + 1))
      {
        sub_1D41769C4(v25, &qword_1EC7C9720);
LABEL_27:
        sub_1D41899C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA470);
        swift_allocObject();
        v19 = sub_1D4419924();
        swift_beginAccess();

        objc_setAssociatedObject(v17, &unk_1EC7CA3C0, v19, 1);
        swift_endAccess();

        goto LABEL_28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA470);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_28:
      *&v25[0] = v14;
      v20 = sub_1D4419904();

      v10 = v5;
      v6 = v13;
      v1 = v22;
      if (v20)
      {
        MEMORY[0x1DA6D5820](result);
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D4419E94();
          v1 = v22;
        }

        result = sub_1D4419EB4();
        v21 = v31;
        v6 = v13;
        goto LABEL_8;
      }
    }

    else
    {

      v10 = v5;
      v6 = v13;
      v1 = v22;
    }
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_32;
    }

    v12 = *(v3 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4392124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D441A874();
    sub_1D44198E4();
    sub_1D4392788(&qword_1EC7C9820, MEMORY[0x1E69921C8]);
    sub_1D441A0A4();
    result = v31;
    v7 = v32;
    v8 = v33;
    v9 = v34;
    v10 = v35;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v27 = result;
  v28 = MEMORY[0x1E69E7CC0];
  v25 = a3;
  while (result < 0)
  {
    v20 = sub_1D441A8F4();
    if (!v20 || (v36 = v20, sub_1D44198E4(), swift_dynamicCast(), v19 = v29, v17 = v9, v18 = v10, !v29))
    {
LABEL_25:
      sub_1D419FA48();
      return v28;
    }

LABEL_19:
    v36 = v19;
    sub_1D438BF50(a2, a3, &v29);
    if (v4)
    {

      sub_1D419FA48();

      return v28;
    }

    v21 = v30;
    if (v30)
    {
      v22 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1D438D2B4(0, *(v28 + 2) + 1, 1, v28);
      }

      v24 = *(v28 + 2);
      v23 = *(v28 + 3);
      if (v24 >= v23 >> 1)
      {
        v28 = sub_1D438D2B4((v23 > 1), v24 + 1, 1, v28);
      }

      *(v28 + 2) = v24 + 1;
      v14 = &v28[16 * v24];
      *(v14 + 4) = v22;
      *(v14 + 5) = v21;
      a3 = v25;
    }

    result = v27;
    v9 = v17;
    v10 = v18;
  }

  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (v10)
  {
LABEL_15:
    v18 = (v16 - 1) & v16;
    v19 = *(*(result + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= ((v8 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D43923FC()
{
  result = sub_1D4419854();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD0);
    sub_1D41766C0(0, &qword_1EC7CCA50);
    if ((swift_dynamicCast() & 1) != 0 && (v1 = [v3 localizedFailureReason], v3, v1))
    {
      v2 = sub_1D4419C54();

      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D43924D4()
{
  v0 = sub_1D4419854();
  if (v0)
  {
    v1 = v0;
    swift_getErrorValue();
    v2 = sub_1D441AE44();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = 0;
  v27 = v2;
  v28[0] = v4;
  v28[1] = sub_1D43923FC();
  v28[2] = v6;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v8 = &v28[2 * v5];
  while (++v5 != 3)
  {
    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if (v10)
    {
      v11 = *(v9 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D438D2B4(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1D438D2B4((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v14 = &v7[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B60);
  result = swift_arrayDestroy();
  v16 = 0;
  v17 = *(v7 + 2);
  v18 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v19 = &v7[16 * v16 + 40];
  while (1)
  {
    if (v17 == v16)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
      sub_1D417645C(&qword_1EDE32A60, &qword_1EC7C9768);
      v26 = sub_1D4419BB4();

      return v26;
    }

    if (v16 >= *(v7 + 2))
    {
      break;
    }

    ++v16;
    v21 = *(v19 - 1);
    v20 = *v19;
    v19 += 16;
    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D418BC38(0, *(v18 + 16) + 1, 1);
      }

      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_1D418BC38((v23 > 1), v24 + 1, 1);
      }

      *(v18 + 16) = v24 + 1;
      v25 = v18 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v20;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4392788(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4392800(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D41766C0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t View.maximumSizeCategory(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a1;
  v21 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D4418A14();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SizeCategoryLimitModifier();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v18 - v15);
  (*(v10 + 16))(v12, v19, v9);
  (*(v6 + 16))(v8, v20, a2);
  sub_1D4392F7C(v12, v8, a2, v16);
  MEMORY[0x1DA6D4B10](v16, a2, v13, a3);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1D4392AF4(uint64_t a1)
{
  v2 = sub_1D4418A14();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1D4418704();
}

uint64_t sub_1D4392BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D4418A14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D435C22C(v8);
  v9 = *(a1 + 36);
  LOBYTE(a1) = sub_1D4393800(v8, v2 + v9);
  (*(v6 + 8))(v8, v5);
  if (a1)
  {
    return (*(v6 + 16))(a2, v2 + v9, v5);
  }

  else
  {
    return sub_1D435C22C(a2);
  }
}

uint64_t sub_1D4392CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a1;
  v20 = a3;
  v19 = sub_1D4418A14();
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_1D4418C14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB908);
  v7 = sub_1D4418614();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - v12;
  swift_getKeyPath();
  sub_1D4392BBC(a2, v6);
  WitnessTable = swift_getWitnessTable();
  sub_1D4418FE4();

  (*(v4 + 8))(v6, v19);
  v15 = sub_1D439379C();
  v21 = WitnessTable;
  v22 = v15;
  swift_getWitnessTable();
  sub_1D43EE934(v11);
  v16 = *(v8 + 8);
  v16(v11, v7);
  sub_1D43EE934(v13);
  return (v16)(v13, v7);
}

uint64_t sub_1D4392F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E78);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for SizeCategoryLimitModifier();
  v9 = *(v8 + 36);
  v10 = sub_1D4418A14();
  (*(*(v10 - 8) + 32))(a4 + v9, a1, v10);
  v11 = *(*(a3 - 8) + 32);
  v12 = a4 + *(v8 + 40);

  return v11(v12, a2, a3);
}

void sub_1D4393088()
{
  sub_1D433D228();
  if (v0 <= 0x3F)
  {
    sub_1D4418A14();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D4393128(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D4418A14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = *(v7 + 84);
  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = *(v11 + 80);
  if (v10 <= v12)
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = *(v7 + 84);
  }

  if (v15 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v9 + v13 + 1;
  if (a2 <= v16)
  {
    goto LABEL_34;
  }

  v18 = ((v8 + v14 + (v17 & ~v13)) & ~v14) + *(v11 + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 < 2)
    {
LABEL_34:
      if (v15 > 0xFE)
      {
        if (v10 == v16)
        {
          v27 = *(v7 + 48);

          return v27((a1 + v17) & ~v13);
        }

        else
        {
          v28 = *(v11 + 48);

          return v28((((a1 + v17) & ~v13) + v8 + v14) & ~v14, v12);
        }
      }

      else
      {
        v26 = *(a1 + v9);
        if (v26 >= 2)
        {
          return (v26 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_34;
  }

LABEL_21:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = ((v8 + v14 + (v17 & ~v13)) & ~v14) + *(v11 + 64);
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v16 + (v25 | v23) + 1;
}

void sub_1D43933BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1D4418A14();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(*(v8 - 8) + 64);
  }

  v12 = *(v9 + 84);
  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(v13 + 80);
  if (v12 <= v14)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = *(v9 + 84);
  }

  if (v17 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v17;
  }

  v19 = v11 + 1;
  v20 = v11 + 1 + v15;
  v21 = ((v10 + v16 + (v20 & ~v15)) & ~v16) + *(v13 + 64);
  if (a3 <= v18)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v18 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v18 < a2)
  {
    v23 = ~v18 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_65:
              if (v22 == 2)
              {
                *&a1[v21] = v24;
              }

              else
              {
                *&a1[v21] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v22)
    {
      a1[v21] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v22)
  {
    goto LABEL_36;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v17 > 0xFE)
  {
    if (v12 == v18)
    {
      v28 = *(v9 + 56);

      v28(&a1[v20] & ~v15, a2);
    }

    else
    {
      v32 = *(v13 + 56);

      v32(((&a1[v20] & ~v15) + v10 + v16) & ~v16, a2, v14);
    }
  }

  else if (a2 > 0xFE)
  {
    if (v19 <= 3)
    {
      v29 = ~(-1 << (8 * v19));
    }

    else
    {
      v29 = -1;
    }

    if (v11 != -1)
    {
      v30 = v29 & (a2 - 255);
      if (v19 <= 3)
      {
        v31 = v11 + 1;
      }

      else
      {
        v31 = 4;
      }

      bzero(a1, v19);
      if (v31 > 2)
      {
        if (v31 == 3)
        {
          *a1 = v30;
          a1[2] = BYTE2(v30);
        }

        else
        {
          *a1 = v30;
        }
      }

      else if (v31 == 1)
      {
        *a1 = v30;
      }

      else
      {
        *a1 = v30;
      }
    }
  }

  else
  {
    a1[v11] = -a2;
  }
}

unint64_t sub_1D439379C()
{
  result = qword_1EDE32B30;
  if (!qword_1EDE32B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32B30);
  }

  return result;
}

BOOL sub_1D4393800(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_1D4418A14();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a2, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x1E697F658];
  if (v12 != *MEMORY[0x1E697F658])
  {
    if (v12 == *MEMORY[0x1E697F690])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F698])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x1E697F650])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x1E697F660])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x1E697F630])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x1E697F670])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x1E697F668])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x1E697F678])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x1E697F640])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x1E697F690])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x1E697F698])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x1E697F680])
    {
      if (v15 == *MEMORY[0x1E697F650])
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F660])
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F630])
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F670])
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F668])
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F678])
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F640])
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F648])
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

unint64_t sub_1D4393C44()
{
  result = qword_1EC7CB770;
  if (!qword_1EC7CB770)
  {
    type metadata accessor for ThumbnailKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB770);
  }

  return result;
}

uint64_t sub_1D4393D04(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

id sub_1D4393D5C@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1D4393D68@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1D4416F04();
    if (v10)
    {
      v11 = sub_1D4416F24();
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
      result = sub_1D4416F14();
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
  v10 = sub_1D4416F04();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D4416F24();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D4416F14();
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

uint64_t sub_1D4393F98(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
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
    v10 = sub_1D4394128(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D4342814(a3, a4);
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
  sub_1D4393D68(v13, a3, a4, &v12);
  v10 = v4;
  sub_1D4342814(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1D4394128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D4416F04();
  v11 = result;
  if (result)
  {
    result = sub_1D4416F24();
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

  sub_1D4416F14();
  sub_1D4393D68(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1D43941E0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1D43944BC(a3, a4);
          return sub_1D4393F98(v13, a2, a3, a4) & 1;
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

uint64_t sub_1D4394348(uint64_t a1, uint64_t a2)
{
  sub_1D4394470();
  if ((sub_1D441A5E4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PersistedThumbnail();
  if ((sub_1D44173E4() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_1D441AD84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]) || (sub_1D43941E0(*(a1 + v4[9]), *(a1 + v4[9] + 8), *(a2 + v4[9]), *(a2 + v4[9] + 8)) & 1) == 0)
  {
    return 0;
  }

  v11 = v4[10];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *v14;
  v16 = v14[1];

  return sub_1D43941E0(v12, v13, v15, v16);
}

unint64_t sub_1D4394470()
{
  result = qword_1EDE323E0;
  if (!qword_1EDE323E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE323E0);
  }

  return result;
}

uint64_t sub_1D43944BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D4394510@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB920) + 36);
  *v5 = 0;
  *(v5 + 8) = 257;
  sub_1D4418574();
  v7 = v6 * 0.5;
  sub_1D4418574();
  v9 = v8 * 0.5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB928);
  v11 = (a2 + *(result + 36));
  *v11 = v7;
  v11[1] = v9;
  return result;
}

uint64_t sub_1D43945EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB918);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = (*(v5 + 32))(v9 + v8, v7, v4);
  *a2 = sub_1D43947C4;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = 0;
  return result;
}

unint64_t sub_1D4394744()
{
  result = qword_1EC7CB910;
  if (!qword_1EC7CB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB910);
  }

  return result;
}

uint64_t sub_1D43947C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB918) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D4394510(v4, a1);
}

unint64_t sub_1D4394850()
{
  result = qword_1EC7CB930;
  if (!qword_1EC7CB930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB938);
    sub_1D43948DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB930);
  }

  return result;
}

unint64_t sub_1D43948DC()
{
  result = qword_1EC7CB940;
  if (!qword_1EC7CB940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB940);
  }

  return result;
}

uint64_t sub_1D4394940()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CB950);
  __swift_project_value_buffer(v0, qword_1EC7CB950);
  return sub_1D4418104();
}

id sub_1D439498C()
{
  result = [objc_allocWithZone(type metadata accessor for NotePreviewProvider()) init];
  qword_1EC7CB968 = result;
  return result;
}

id NotePreviewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static NotePreviewProvider.shared.getter()
{
  if (qword_1EC7C9238 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC7CB968;

  return v1;
}

void sub_1D4394AA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4435D40;
  *(inited + 32) = sub_1D4419C54();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x80000001D4451E70;
  sub_1D42EA814(inited);
  swift_setDeallocating();
  sub_1D41769C4(inited + 32, &unk_1EC7CB710);
  v2 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v3 = sub_1D4419C14();
  v4 = sub_1D4419B54();

  v5 = [v2 initWithDomain:v3 code:1 userInfo:v4];

  qword_1EC7CB970 = v5;
}

void sub_1D4394C08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB788);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v14 - v8);
  LODWORD(v13) = 0;
  v10 = [objc_allocWithZone(type metadata accessor for ThumbnailKey()) initWithType:a2 accountId:0 objectId:0 preferredSize:a1 scale:0 appearance:0 isRTL:0.0 contentSizeCategory:0.0 hasBoldText:1.0 hasButtonShapes:v13 hasDarkerSystemColors:? hasBorder:?];
  sub_1D43434F0(v10, v9);
  if (v3)
  {
LABEL_6:

    return;
  }

  v11 = type metadata accessor for PersistedThumbnail();
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_1D41769C4(v9, &qword_1EC7CB788);
    if (qword_1EC7C9240 != -1)
    {
      swift_once();
    }

    v12 = qword_1EC7CB970;
    swift_willThrow();
    v12;
    goto LABEL_6;
  }

  sub_1D4397F38(v9, a3);
}

void sub_1D4394DBC(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v29 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB788);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v26 - v7);
  v9 = type metadata accessor for PersistedThumbnail();
  v28 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(type metadata accessor for ThumbnailKey());
  v13 = sub_1D4419C14();
  LODWORD(v25) = 0;
  v14 = a2;
  v15 = [v12 initWithType:a2 accountId:0 objectId:v13 preferredSize:a1 scale:0 appearance:0 isRTL:0.0 contentSizeCategory:0.0 hasBoldText:1.0 hasButtonShapes:v25 hasDarkerSystemColors:? hasBorder:?];

  v16 = v30;
  sub_1D43434F0(v15, v8);
  if (v16)
  {
  }

  else
  {
    v30 = v15;
    v26 = a1;
    v17 = v29;
    if ((*(v28 + 48))(v8, 1, v9) == 1)
    {
      sub_1D41769C4(v8, &qword_1EC7CB788);
      if (qword_1EC7C9230 != -1)
      {
        swift_once();
      }

      v18 = sub_1D44181B4();
      __swift_project_value_buffer(v18, qword_1EC7CB950);
      v19 = sub_1D44181A4();
      v20 = sub_1D441A154();
      v21 = os_log_type_enabled(v19, v20);
      v22 = v26;
      v23 = v27;
      if (v21)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1D4171000, v19, v20, v23, v24, 2u);
        MEMORY[0x1DA6D8690](v24, -1, -1);
      }

      sub_1D4394C08(v22, v14, v17);
    }

    else
    {

      sub_1D4397F38(v8, v11);
      sub_1D4397F38(v11, v17);
    }
  }
}

void sub_1D43950D8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const char *a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v45 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB788);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v36 - v15);
  v17 = type metadata accessor for PersistedThumbnail();
  v42 = *(v17 - 8);
  v43 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(type metadata accessor for ThumbnailKey());
  v38 = a1;
  v44 = a2;
  v21 = sub_1D4419C14();
  v39 = a3;
  v40 = a4;
  v22 = sub_1D4419C14();
  LODWORD(v35) = 0;
  v23 = a6;
  v24 = [v20 initWithType:a6 accountId:v21 objectId:v22 preferredSize:a5 scale:0 appearance:0 isRTL:0.0 contentSizeCategory:0.0 hasBoldText:1.0 hasButtonShapes:v35 hasDarkerSystemColors:? hasBorder:?];

  v25 = v46;
  sub_1D43434F0(v24, v16);
  if (v25)
  {
LABEL_8:

    return;
  }

  v46 = v24;
  v26 = v44;
  v36 = v23;
  v37 = a5;
  if ((*(v42 + 48))(v16, 1, v43) == 1)
  {
    sub_1D41769C4(v16, &qword_1EC7CB788);
    if (qword_1EC7C9230 != -1)
    {
      swift_once();
    }

    v27 = sub_1D44181B4();
    __swift_project_value_buffer(v27, qword_1EC7CB950);

    v28 = v40;

    v29 = sub_1D44181A4();
    v30 = sub_1D441A154();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v41;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v47 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_1D42E9410(v38, v26, &v47);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_1D42E9410(v39, v28, &v47);
      _os_log_impl(&dword_1D4171000, v29, v30, v32, v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D8690](v34, -1, -1);
      MEMORY[0x1DA6D8690](v33, -1, -1);
    }

    v24 = v46;
    sub_1D4394C08(v37, v36, v45);
    goto LABEL_8;
  }

  sub_1D4397F38(v16, v19);
  sub_1D4397F38(v19, v45);
}

void NotePreviewProvider.defaultPreview()(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for PersistedThumbnail();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB788);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  sub_1D4394C08(0, 4, &v30 - v14);
  if (v1)
  {
    v32 = v1;
    v17 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD0);
    if (swift_dynamicCast())
    {

      v18 = v31;
      sub_1D4397E38();
      swift_allocError();
      *v19 = v18;
      swift_willThrow();
      v20 = v32;
    }

    else
    {

      if (qword_1EC7C9230 != -1)
      {
        swift_once();
      }

      v21 = sub_1D44181B4();
      __swift_project_value_buffer(v21, qword_1EC7CB950);
      v22 = v1;
      v23 = sub_1D44181A4();
      v24 = sub_1D441A164();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v32 = v26;
        *v25 = 136315138;
        swift_getErrorValue();
        v27 = sub_1D441AE44();
        v29 = sub_1D42E9410(v27, v28, &v32);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_1D4171000, v23, v24, "Cannot retrieve default note preview {error: %s}", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x1DA6D8690](v26, -1, -1);
        MEMORY[0x1DA6D8690](v25, -1, -1);
      }

      sub_1D4397C68();
      swift_willThrow();
      v20 = v1;
    }
  }

  else
  {
    v30 = a1;
    v16 = *(v4 + 56);
    v16(v15, 0, 1, v3);
    sub_1D4394C08(1, 4, v13);
    v16(v13, 0, 1, v3);
    sub_1D4394C08(0, 7, v6);
    sub_1D4394C08(1, 7, v10);
    v16(v10, 0, 1, v3);
    sub_1D43810C0(v15, v13, v6, v10, v30);
  }
}

void NotePreviewProvider.recentPreview()(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for PersistedThumbnail();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB788);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  sub_1D4394DBC(0, 4, "Cannot retrieve recent chrome thumbnail — falling back to default chrome thumbnail", &v30 - v14);
  if (v1)
  {
    v32 = v1;
    v17 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD0);
    if (swift_dynamicCast())
    {

      v18 = v31;
      sub_1D4397E38();
      swift_allocError();
      *v19 = v18;
      swift_willThrow();
      v20 = v32;
    }

    else
    {

      if (qword_1EC7C9230 != -1)
      {
        swift_once();
      }

      v21 = sub_1D44181B4();
      __swift_project_value_buffer(v21, qword_1EC7CB950);
      v22 = v1;
      v23 = sub_1D44181A4();
      v24 = sub_1D441A164();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v32 = v26;
        *v25 = 136315138;
        swift_getErrorValue();
        v27 = sub_1D441AE44();
        v29 = sub_1D42E9410(v27, v28, &v32);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_1D4171000, v23, v24, "Cannot retrieve recent note preview {error: %s}", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x1DA6D8690](v26, -1, -1);
        MEMORY[0x1DA6D8690](v25, -1, -1);
      }

      sub_1D4397C68();
      swift_willThrow();
      v20 = v1;
    }
  }

  else
  {
    v30 = a1;
    v16 = *(v4 + 56);
    v16(v15, 0, 1, v3);
    sub_1D4394DBC(1, 4, "Cannot retrieve recent chrome thumbnail — falling back to default chrome thumbnail", v13);
    v16(v13, 0, 1, v3);
    sub_1D4394DBC(0, 7, "Cannot retrieve recent preview thumbnail — falling back to default preview thumbnail", v6);
    sub_1D4394DBC(1, 7, "Cannot retrieve recent preview thumbnail — falling back to default preview thumbnail", v10);
    v16(v10, 0, 1, v3);
    sub_1D43810C0(v15, v13, v6, v10, v30);
  }
}

void NotePreviewProvider.preview(accountId:noteId:prefersDefaultFallback:)(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, char a4@<W4>, _OWORD *a5@<X8>)
{
  v90 = a2;
  v91 = a1;
  v86 = a5;
  v7 = type metadata accessor for PersistedThumbnail();
  v8 = *(v7 - 8);
  v84 = v7;
  v85 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v83 = (&v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v83 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB788);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v83 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v83 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v83 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v83 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v83 - v30;
  v87 = v29;
  v88 = a3;
  if (!v29)
  {
    goto LABEL_12;
  }

  v32 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v32 = v91 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32 || !a3)
  {
    goto LABEL_12;
  }

  v33 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v33 = v90 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
LABEL_12:
    if (qword_1EC7C9230 != -1)
    {
      swift_once();
    }

    v43 = sub_1D44181B4();
    __swift_project_value_buffer(v43, qword_1EC7CB950);
    v44 = sub_1D44181A4();
    v45 = sub_1D441A154();
    v46 = os_log_type_enabled(v44, v45);
    v37 = v90;
    v47 = v91;
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 67109120;
      *(v48 + 4) = a4 & 1;
      _os_log_impl(&dword_1D4171000, v44, v45, "Cannot retrieve identifier — falling back to recent or default preview {prefersDefaultFallback: %{BOOL}d}", v48, 8u);
      MEMORY[0x1DA6D8690](v48, -1, -1);
    }

    if (a4)
    {
      v49 = v89;
      NotePreviewProvider.defaultPreview()(v92);
      v50 = v49;
      if (v49)
      {
LABEL_18:
        v41 = v50;
        goto LABEL_19;
      }
    }

    else
    {
      v55 = v89;
      NotePreviewProvider.recentPreview()(v92);
      v50 = v55;
      if (v55)
      {
        goto LABEL_18;
      }
    }

    v56 = v92[1];
    v57 = v93;
    v58 = v94;
    v59 = v86;
    *v86 = v92[0];
    v59[1] = v56;
    *(v59 + 4) = v57;
    *(v59 + 5) = v58;
    return;
  }

  v34 = [objc_opt_self() currentDevice];
  v35 = [v34 userInterfaceIdiom];

  if (v35)
  {
    v37 = v90;
    v36 = v91;
    v39 = v87;
    v38 = v88;
    v40 = v89;
    sub_1D43950D8(v91, v87, v90, v88, 0, 4, "Cannot retrieve chrome thumbnail — falling back to default chrome thumbnail {accountId: %s, noteId: %s}", v22);
    v41 = v40;
    if (!v40)
    {
      v42 = *(v85 + 56);
      v85 += 56;
      v89 = v42;
      v42(v22, 0, 1, v84);
      sub_1D43950D8(v36, v39, v37, v38, 1, 4, "Cannot retrieve chrome thumbnail — falling back to default chrome thumbnail {accountId: %s, noteId: %s}", v19);
      v89(v19, 0, 1, v84);
      sub_1D43950D8(v36, v39, v37, v38, 0, 7, "Cannot retrieve preview thumbnail — falling back to default preview thumbnail {accountId: %s, noteId: %s}", v83);
      sub_1D43950D8(v36, v39, v37, v38, 1, 7, "Cannot retrieve preview thumbnail — falling back to default preview thumbnail {accountId: %s, noteId: %s}", v16);
      v89(v16, 0, 1, v84);
      sub_1D43810C0(v22, v19, v83, v16, v86);
      return;
    }

    v47 = v36;
  }

  else
  {
    v79 = v84;
    v80 = *(v85 + 56);
    v80(v31, 1, 1, v84);
    v80(v28, 1, 1, v79);
    v81 = v87;
    v82 = v89;
    sub_1D43950D8(v91, v87, v90, v88, 0, 7, "Cannot retrieve preview thumbnail — falling back to default preview thumbnail {accountId: %s, noteId: %s}", v12);
    v41 = v82;
    if (!v82)
    {
      sub_1D43950D8(v91, v81, v90, v88, 1, 7, "Cannot retrieve preview thumbnail — falling back to default preview thumbnail {accountId: %s, noteId: %s}", v25);
      v80(v25, 0, 1, v84);
      sub_1D43810C0(v31, v28, v12, v25, v86);
      return;
    }

    sub_1D41769C4(v28, &qword_1EC7CB788);
    sub_1D41769C4(v31, &qword_1EC7CB788);
    v37 = v90;
    v47 = v91;
  }

LABEL_19:
  *&v92[0] = v41;
  v51 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD0);
  if (swift_dynamicCast())
  {

    v52 = v95;
    sub_1D4397E38();
    swift_allocError();
    *v53 = v52;
    swift_willThrow();
    v54 = *&v92[0];
  }

  else
  {

    if (qword_1EC7C9230 != -1)
    {
      swift_once();
    }

    v60 = sub_1D44181B4();
    __swift_project_value_buffer(v60, qword_1EC7CB950);
    v61 = v41;
    v62 = v88;

    v63 = v87;

    v64 = v62;
    v65 = sub_1D44181A4();
    v66 = sub_1D441A164();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v92[0] = v91;
      *v67 = 136315650;
      if (v63)
      {
        v68 = v47;
      }

      else
      {
        v68 = 9732322;
      }

      v69 = 0xA300000000000000;
      v70 = v37;
      if (v63)
      {
        v71 = v63;
      }

      else
      {
        v71 = 0xA300000000000000;
      }

      v72 = sub_1D42E9410(v68, v71, v92);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2080;
      if (v64)
      {
        v73 = v70;
      }

      else
      {
        v73 = 9732322;
      }

      if (v64)
      {
        v69 = v64;
      }

      v74 = sub_1D42E9410(v73, v69, v92);

      *(v67 + 14) = v74;
      *(v67 + 22) = 2080;
      swift_getErrorValue();
      v75 = sub_1D441AE44();
      v77 = sub_1D42E9410(v75, v76, v92);

      *(v67 + 24) = v77;
      _os_log_impl(&dword_1D4171000, v65, v66, "Cannot retrieve note preview {accountId: %s, noteId: %s, error: %s}", v67, 0x20u);
      v78 = v91;
      swift_arrayDestroy();
      MEMORY[0x1DA6D8690](v78, -1, -1);
      MEMORY[0x1DA6D8690](v67, -1, -1);
    }

    sub_1D4397C68();
    swift_willThrow();
    v54 = v41;
  }
}

void NotePreviewProvider.preview(for:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_1D4419B64();

  *&v51 = sub_1D4419C54();
  *(&v51 + 1) = v6;
  sub_1D441A954();
  if (!*(v5 + 16) || (v7 = sub_1D42D00F4(v48), (v8 & 1) == 0))
  {

    sub_1D42D7374(v48);
LABEL_12:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_13;
  }

  sub_1D42D5D14(*(v5 + 56) + 32 * v7, &v51);
  sub_1D42D7374(v48);

  if (!*(&v52 + 1))
  {
LABEL_13:
    sub_1D41769C4(&v51, &qword_1EC7C9720);
    v10 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v9 = swift_dynamicCast();
  if (v9)
  {
    v10 = v48[0];
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v48[1];
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  v12 = [a1 userInfo];
  if (!v12)
  {
LABEL_22:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = sub_1D4419B64();

  *&v51 = sub_1D4419C54();
  *(&v51 + 1) = v15;
  sub_1D441A954();
  if (!*(v14 + 16) || (v16 = sub_1D42D00F4(v48), (v17 & 1) == 0))
  {

    sub_1D42D7374(v48);
    goto LABEL_22;
  }

  sub_1D42D5D14(*(v14 + 56) + 32 * v16, &v51);
  sub_1D42D7374(v48);

  if (!*(&v52 + 1))
  {
LABEL_23:
    sub_1D41769C4(&v51, &qword_1EC7C9720);
    v18 = 0;
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    v18 = v48[0];
  }

  else
  {
    v18 = 0;
  }

LABEL_24:
  v19 = [a1 userInfo];
  if (!v19)
  {
LABEL_31:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_32;
  }

  v20 = v19;
  v21 = sub_1D4419B64();

  *&v51 = sub_1D4419C54();
  *(&v51 + 1) = v22;
  sub_1D441A954();
  if (!*(v21 + 16) || (v23 = sub_1D42D00F4(v48), (v24 & 1) == 0))
  {

    sub_1D42D7374(v48);
    goto LABEL_31;
  }

  sub_1D42D5D14(*(v21 + 56) + 32 * v23, &v51);
  sub_1D42D7374(v48);

  if (!*(&v52 + 1))
  {
LABEL_32:
    sub_1D41769C4(&v51, &qword_1EC7C9720);
    goto LABEL_33;
  }

  if (swift_dynamicCast())
  {
    v25 = v48[0];
    goto LABEL_34;
  }

LABEL_33:
  v25 = 0;
LABEL_34:
  v26 = objc_opt_self();
  v27 = sub_1D4419C14();
  v28 = [v26 objectForKey_];

  if (v28)
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  *v48 = v51;
  v49 = v52;
  if (*(&v52 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v25)
      {
        v29 = 1;
        goto LABEL_46;
      }

      v29 = v50;
      goto LABEL_45;
    }
  }

  else
  {
    sub_1D41769C4(v48, &qword_1EC7C9720);
  }

  v29 = 1;
  if ((v25 & 1) == 0)
  {
LABEL_45:
    v29 ^= 1u;
  }

LABEL_46:
  NotePreviewProvider.preview(accountId:noteId:prefersDefaultFallback:)(v18, v10, v11, v29, a2);
  v30 = v46;
  if (v46)
  {

    v48[0] = v46;
    v31 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD0);
    if (swift_dynamicCast())
    {

      v32 = v51;
      sub_1D4397E38();
      swift_allocError();
      *v33 = v32;
      swift_willThrow();
    }

    else
    {

      if (qword_1EC7C9230 != -1)
      {
        swift_once();
      }

      v34 = sub_1D44181B4();
      __swift_project_value_buffer(v34, qword_1EC7CB950);
      v35 = v46;
      v36 = a1;
      v37 = sub_1D44181A4();
      v38 = sub_1D441A164();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48[0] = v47;
        *v39 = 138412546;
        *(v39 + 4) = v36;
        *v40 = v36;
        *(v39 + 12) = 2080;
        swift_getErrorValue();
        v41 = v36;
        v42 = sub_1D441AE44();
        v44 = sub_1D42E9410(v42, v43, v48);

        *(v39 + 14) = v44;
        _os_log_impl(&dword_1D4171000, v37, v38, "Cannot retrieve note preview {userActivity: %@, error: %s}", v39, 0x16u);
        sub_1D41769C4(v40, &qword_1EC7C9918);
        MEMORY[0x1DA6D8690](v40, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x1DA6D8690](v47, -1, -1);
        MEMORY[0x1DA6D8690](v39, -1, -1);
      }

      sub_1D4397C68();
      swift_willThrow();
    }
  }

  else
  {
  }
}

unint64_t NotePreviewProvider.__previewDictionary(for:)(void *a1)
{
  NotePreviewProvider.preview(for:)(a1, &v6);
  if (!v2)
  {
    v3 = v7;
    v4 = v8;
    v1 = sub_1D43817DC();
  }

  return v1;
}

id NotePreviewProvider.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NPNotePreviewProviderInternal_cache;
  v3 = [objc_opt_self() defaultManager];
  type metadata accessor for PersistedThumbnailCache();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *&v0[v2] = v4;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id NotePreviewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D4397100()
{
  type metadata accessor for WidgetNotePreviewProvider();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() defaultManager];
  type metadata accessor for PersistedThumbnailCache();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(v0 + 16) = result;
  qword_1EC7CB978 = v0;
  return result;
}

uint64_t static WidgetNotePreviewProvider.shared.getter()
{
  if (qword_1EC7C9248 != -1)
  {
    swift_once();
  }
}

uint64_t WidgetNotePreviewProvider.preview(accountId:noteId:type:)@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, void *a3@<X4>, _OWORD *a4@<X8>)
{
  v105 = a3;
  v106 = a1;
  v101 = a4;
  v6 = sub_1D4417234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersistedThumbnail();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v103 = (&v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB788);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v89 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v89 - v20);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v22);
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28 || !a2)
  {
    goto LABEL_18;
  }

  v29 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v29 = v106 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v90 = v18;
    v92 = v7;
    v93 = v6;
    v96 = v10;
    v31 = v10[7];
    v30 = v10 + 7;
    v99 = v4;
    v100 = &v89 - v25;
    v32 = v26;
    v33 = v27;
    v31(&v89 - v25, 1, 1, v9);
    v91 = v31;
    v31(v24, 1, 1, v9);
    v94 = type metadata accessor for ThumbnailKey();
    v34 = objc_allocWithZone(v94);
    v95 = v32;
    v97 = v33;
    v35 = sub_1D4419C14();
    v98 = a2;
    v36 = v24;
    v37 = sub_1D4419C14();
    LODWORD(v87) = 0;
    v38 = [v34 initWithType:v105 accountId:v35 objectId:v37 preferredSize:0 scale:0 appearance:0 isRTL:0.0 contentSizeCategory:0.0 hasBoldText:1.0 hasButtonShapes:v87 hasDarkerSystemColors:? hasBorder:?];

    v39 = v36;
    v40 = v100;

    v41 = v104;
    sub_1D43434F0(v38, v21);
    if (v41)
    {
LABEL_16:

      sub_1D41769C4(v39, &qword_1EC7CB788);
      v59 = v40;
      return sub_1D41769C4(v59, &qword_1EC7CB788);
    }

    v99 = v30;
    v104 = v36;
    v42 = v96[6];
    if ((v42)(v21, 1, v9) == 1)
    {
      sub_1D41769C4(v21, &qword_1EC7CB788);
      if (qword_1EC7C9230 != -1)
      {
        swift_once();
      }

      v43 = sub_1D44181B4();
      __swift_project_value_buffer(v43, qword_1EC7CB950);
      v44 = v97;

      v45 = v98;

      v105 = v38;
      v46 = v38;
      v47 = sub_1D44181A4();
      v48 = sub_1D441A164();

      v49 = os_log_type_enabled(v47, v48);
      v50 = v106;
      if (v49)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v107 = v52;
        *v51 = 136315650;
        *(v51 + 4) = sub_1D42E9410(v95, v44, &v107);
        *(v51 + 12) = 2080;
        *(v51 + 14) = sub_1D42E9410(v50, v45, &v107);
        *(v51 + 22) = 2080;
        v53 = v102;
        sub_1D43A672C(v102);
        sub_1D4397EE0();
        v54 = v93;
        v55 = sub_1D441AD44();
        v57 = v56;
        (*(v92 + 8))(v53, v54);
        v58 = sub_1D42E9410(v55, v57, &v107);

        *(v51 + 24) = v58;
        _os_log_impl(&dword_1D4171000, v47, v48, "Cannot retrieve widget thumbnail {accountId: %s, noteId: %s, url: %s}", v51, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6D8690](v52, -1, -1);
        MEMORY[0x1DA6D8690](v51, -1, -1);
      }

      sub_1D4397E8C();
      swift_allocError();
      swift_willThrow();
      v40 = v100;
      v39 = v104;
      v38 = v105;
      goto LABEL_16;
    }

    v96 = v42;

    sub_1D4397F38(v21, v103);
    v65 = objc_allocWithZone(v94);
    v66 = sub_1D4419C14();
    v67 = sub_1D4419C14();
    LODWORD(v88) = 0;
    v68 = [v65 initWithType:v105 accountId:v66 objectId:v67 preferredSize:1 scale:0 appearance:0 isRTL:0.0 contentSizeCategory:0.0 hasBoldText:1.0 hasButtonShapes:v88 hasDarkerSystemColors:? hasBorder:?];

    sub_1D43434F0(v68, v15);
    if ((v96)(v15, 1, v9) == 1)
    {
      sub_1D41769C4(v15, &qword_1EC7CB788);
      if (qword_1EC7C9230 != -1)
      {
        swift_once();
      }

      v69 = sub_1D44181B4();
      __swift_project_value_buffer(v69, qword_1EC7CB950);
      v70 = v97;

      v71 = v98;

      v105 = v68;
      v72 = v68;
      v73 = sub_1D44181A4();
      v74 = sub_1D441A164();

      v75 = os_log_type_enabled(v73, v74);
      v76 = v106;
      if (v75)
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v107 = v78;
        *v77 = 136315650;
        *(v77 + 4) = sub_1D42E9410(v95, v70, &v107);
        *(v77 + 12) = 2080;
        *(v77 + 14) = sub_1D42E9410(v76, v71, &v107);
        *(v77 + 22) = 2080;
        v79 = v102;
        sub_1D43A672C(v102);
        sub_1D4397EE0();
        v80 = v93;
        v81 = sub_1D441AD44();
        v83 = v82;
        (*(v92 + 8))(v79, v80);
        v84 = sub_1D42E9410(v81, v83, &v107);

        *(v77 + 24) = v84;
        _os_log_impl(&dword_1D4171000, v73, v74, "Cannot retrieve widget thumbnail {accountId: %s, noteId: %s, url: %s}", v77, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6D8690](v78, -1, -1);
        MEMORY[0x1DA6D8690](v77, -1, -1);
      }

      sub_1D4397E8C();
      swift_allocError();
      swift_willThrow();
      v85 = v103;

      sub_1D4381CBC(v85);
      sub_1D41769C4(v104, &qword_1EC7CB788);
      v59 = v100;
      return sub_1D41769C4(v59, &qword_1EC7CB788);
    }

    v86 = v90;
    sub_1D4397F38(v15, v90);
    v91(v86, 0, 1, v9);
    return sub_1D43810C0(v100, v104, v103, v86, v101);
  }

  else
  {
LABEL_18:
    if (qword_1EC7C9230 != -1)
    {
      swift_once();
    }

    v61 = sub_1D44181B4();
    __swift_project_value_buffer(v61, qword_1EC7CB950);
    v62 = sub_1D44181A4();
    v63 = sub_1D441A164();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1D4171000, v62, v63, "Cannot retrieve identifier", v64, 2u);
      MEMORY[0x1DA6D8690](v64, -1, -1);
    }

    sub_1D4397E8C();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t WidgetNotePreviewProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1D4397C68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D44364A0;
  *(inited + 32) = sub_1D4419C54();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x80000001D4451E90;
  *(inited + 80) = sub_1D4419C54();
  *(inited + 88) = v2;
  swift_getErrorValue();
  *(inited + 120) = v9;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 96));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0Tm);
  sub_1D42EA814(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CB710);
  swift_arrayDestroy();
  v4 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v5 = sub_1D4419C14();
  v6 = sub_1D4419B54();

  v7 = [v4 initWithDomain:v5 code:0 userInfo:v6];

  return v7;
}

unint64_t sub_1D4397E38()
{
  result = qword_1EC7CB980;
  if (!qword_1EC7CB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB980);
  }

  return result;
}

unint64_t sub_1D4397E8C()
{
  result = qword_1EC7CB990;
  if (!qword_1EC7CB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB990);
  }

  return result;
}

unint64_t sub_1D4397EE0()
{
  result = qword_1EDE338C8;
  if (!qword_1EDE338C8)
  {
    sub_1D4417234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE338C8);
  }

  return result;
}

uint64_t sub_1D4397F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedThumbnail();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D4398010()
{
  result = qword_1EC7CB998;
  if (!qword_1EC7CB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB998);
  }

  return result;
}

uint64_t static ICSearchQueryOperation.searchResults(queryString:rankingQueries:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D4398088, 0, 0);
}

uint64_t sub_1D4398088()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9A0);
  *v4 = v0;
  v4[1] = sub_1D4398198;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000002ALL, 0x80000001D4451EB0, sub_1D43985C8, v2, v5);
}

uint64_t sub_1D4398198()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D43982D0;
  }

  else
  {

    v2 = sub_1D43982B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D43982D0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D4398334(uint64_t a1)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9A8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - v3;
  v5 = objc_opt_self();
  v6 = sub_1D4419C14();
  v7 = [v5 newOperationQueueWithName_];

  v8 = objc_allocWithZone(MEMORY[0x1E69B7880]);
  v9 = sub_1D4419C14();
  v10 = sub_1D4419E24();
  v11 = [v8 initWithQueryString:v9 rankingQueries:v10];

  (*(v2 + 16))(v4, v17, v1);
  v12 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v2 + 32))(v13 + v12, v4, v1);
  aBlock[4] = sub_1D43986BC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_20;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  [v15 setCompletionBlock_];
  _Block_release(v14);

  [v7 addOperation_];
}

uint64_t sub_1D43985D4(void *a1)
{
  if ([a1 error])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9A8);
    return sub_1D4419F14();
  }

  else
  {
    v3 = [a1 results];
    if (v3)
    {
      v4 = v3;
      sub_1D439872C();
      sub_1D4419E34();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9A8);
    return sub_1D4419F24();
  }
}

uint64_t sub_1D43986BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9A8);
  v1 = *(v0 + 16);

  return sub_1D43985D4(v1);
}

unint64_t sub_1D439872C()
{
  result = qword_1EC7CB9B0;
  if (!qword_1EC7CB9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7CB9B0);
  }

  return result;
}

uint64_t ICTTTextStorage.filteredAttributedString<A>(for:range:)()
{
  v1 = v0;
  v2 = [v0 string];
  sub_1D4419C54();

  sub_1D42ED314();
  sub_1D4419DF4();

  v3 = [v0 string];
  v4 = sub_1D4419C54();
  v6 = v5;

  v13 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9B8);
  sub_1D4398A14();
  sub_1D42CC920();
  v7 = sub_1D441A6F4();
  v9 = v8;
  sub_1D4417FB4();
  v10 = sub_1D4419C14();

  v11 = [v1 filteredAttributedStringForUTI:v10 range:{v7, v9, v13, v6}];

  return sub_1D4417034();
}

uint64_t ICTTTextStorage.filteredAttributedString(for:range:)()
{
  v1 = [v0 string];
  v2 = sub_1D4419C54();
  v4 = v3;

  v11 = v2;
  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9B8);
  sub_1D4398A14();
  sub_1D42CC920();
  v5 = sub_1D441A6F4();
  v7 = v6;
  sub_1D4417FB4();
  v8 = sub_1D4419C14();

  v9 = [v0 filteredAttributedStringForUTI:v8 range:{v5, v7, v11, v12}];

  return sub_1D4417034();
}

unint64_t sub_1D4398A14()
{
  result = qword_1EDE32A08;
  if (!qword_1EDE32A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32A08);
  }

  return result;
}

uint64_t ICTTTextStorage.Selection.isCursor.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ICTTTextStorage.TableSelection(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - v6;
  v8 = type metadata accessor for ICTTTextStorage.Selection(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  sub_1D4399064(v1, &v28 - v13, type metadata accessor for ICTTTextStorage.Selection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    return 1;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C0);
  sub_1D439E544(&v14[*(v17 + 48)], v7, type metadata accessor for ICTTTextStorage.TableSelection);
  sub_1D4399064(v7, v5, type metadata accessor for ICTTTextStorage.TableSelection);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1D43990CC(v7, type metadata accessor for ICTTTextStorage.TableSelection);
    sub_1D43990CC(v5, type metadata accessor for ICTTTextStorage.TableSelection);
    return 0;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C8);
  v19 = result;
  v20 = 0;
  v21 = *&v5[*(result + 64)];
  v22 = *(v21 + 16);
  while (1)
  {
    v16 = v22 != v20;
    if (v22 == v20)
    {
LABEL_10:
      v25 = *(v19 + 48);
      sub_1D43990CC(v7, type metadata accessor for ICTTTextStorage.TableSelection);

      v26 = sub_1D4417494();
      v27 = *(*(v26 - 8) + 8);
      v27(&v5[v25], v26);
      v27(v5, v26);
      return v16;
    }

    if (v20 >= *(v21 + 16))
    {
      break;
    }

    v23 = sub_1D4399064(v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20++, v12, type metadata accessor for ICTTTextStorage.Selection);
    v24 = ICTTTextStorage.Selection.isCursor.getter(v23);
    result = sub_1D43990CC(v12, type metadata accessor for ICTTTextStorage.Selection);
    if (v24)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t ICTTTextStorage.TableSelection.isCursor.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ICTTTextStorage.Selection(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ICTTTextStorage.TableSelection(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4399064(v1, v8, type metadata accessor for ICTTTextStorage.TableSelection);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C8);
    v10 = result;
    v11 = 0;
    v12 = *&v8[*(result + 64)];
    v13 = *(v12 + 16);
    while (1)
    {
      v14 = v13 != v11;
      if (v13 == v11)
      {
LABEL_6:

        v16 = *(v10 + 48);
        v17 = sub_1D4417494();
        v18 = *(*(v17 - 8) + 8);
        v18(&v8[v16], v17);
        v18(v8, v17);
        return v14;
      }

      if (v11 >= *(v12 + 16))
      {
        break;
      }

      sub_1D4399064(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11++, v5, type metadata accessor for ICTTTextStorage.Selection);
      v15 = ICTTTextStorage.Selection.isCursor.getter();
      result = sub_1D43990CC(v5, type metadata accessor for ICTTTextStorage.Selection);
      if (v15)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1D43990CC(v8, type metadata accessor for ICTTTextStorage.TableSelection);
    return 0;
  }

  return result;
}

uint64_t sub_1D4399064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D43990CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ICTTTextStorage.Selection.isText.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ICTTTextStorage.TableSelection(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - v6;
  v8 = type metadata accessor for ICTTTextStorage.Selection(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  sub_1D4399064(v1, &v28 - v13, type metadata accessor for ICTTTextStorage.Selection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    return EnumCaseMultiPayload != 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    return 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C0);
  sub_1D439E544(&v14[*(v17 + 48)], v7, type metadata accessor for ICTTTextStorage.TableSelection);
  sub_1D4399064(v7, v5, type metadata accessor for ICTTTextStorage.TableSelection);
  if (swift_getEnumCaseMultiPayload() < 3)
  {
    sub_1D43990CC(v7, type metadata accessor for ICTTTextStorage.TableSelection);
    sub_1D43990CC(v5, type metadata accessor for ICTTTextStorage.TableSelection);
    return 0;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C8);
  v19 = result;
  v20 = 0;
  v21 = *&v5[*(result + 64)];
  v22 = *(v21 + 16);
  while (1)
  {
    v16 = v22 != v20;
    if (v22 == v20)
    {
LABEL_13:
      v25 = *(v19 + 48);
      sub_1D43990CC(v7, type metadata accessor for ICTTTextStorage.TableSelection);

      v26 = sub_1D4417494();
      v27 = *(*(v26 - 8) + 8);
      v27(&v5[v25], v26);
      v27(v5, v26);
      return v16;
    }

    if (v20 >= *(v21 + 16))
    {
      break;
    }

    v23 = sub_1D4399064(v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20++, v12, type metadata accessor for ICTTTextStorage.Selection);
    v24 = ICTTTextStorage.Selection.isText.getter(v23);
    result = sub_1D43990CC(v12, type metadata accessor for ICTTTextStorage.Selection);
    if (v24)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ICTTTextStorage.Selection.isAttachment.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ICTTTextStorage.TableSelection(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  v8 = type metadata accessor for ICTTTextStorage.Selection(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  sub_1D4399064(v1, &v29 - v13, type metadata accessor for ICTTTextStorage.Selection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    return 1;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C0);
  sub_1D439E544(&v14[*(v17 + 48)], v7, type metadata accessor for ICTTTextStorage.TableSelection);
  sub_1D4399064(v7, v5, type metadata accessor for ICTTTextStorage.TableSelection);
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 < 3)
  {
    sub_1D43990CC(v7, type metadata accessor for ICTTTextStorage.TableSelection);
    sub_1D43990CC(v5, type metadata accessor for ICTTTextStorage.TableSelection);
    return 0;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C8);
  v20 = result;
  v21 = 0;
  v22 = *&v5[*(result + 64)];
  v23 = *(v22 + 16);
  while (1)
  {
    v16 = v23 != v21;
    if (v23 == v21)
    {
LABEL_12:
      v26 = *(v20 + 48);
      sub_1D43990CC(v7, type metadata accessor for ICTTTextStorage.TableSelection);

      v27 = sub_1D4417494();
      v28 = *(*(v27 - 8) + 8);
      v28(&v5[v26], v27);
      v28(v5, v27);
      return v16;
    }

    if (v21 >= *(v22 + 16))
    {
      break;
    }

    v24 = sub_1D4399064(v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21++, v12, type metadata accessor for ICTTTextStorage.Selection);
    v25 = ICTTTextStorage.Selection.isAttachment.getter(v24);
    result = sub_1D43990CC(v12, type metadata accessor for ICTTTextStorage.Selection);
    if (v25)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D43997F8(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = type metadata accessor for ICTTTextStorage.Selection(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ICTTTextStorage.TableSelection(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4399064(v3, v10, type metadata accessor for ICTTTextStorage.TableSelection);
  if (swift_getEnumCaseMultiPayload() >= 3)
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C8);
    v13 = result;
    v14 = 0;
    v15 = *&v10[*(result + 64)];
    v16 = *(v15 + 16);
    while (1)
    {
      v11 = v16 != v14;
      if (v16 == v14)
      {
LABEL_7:

        v19 = *(v13 + 48);
        v20 = sub_1D4417494();
        v21 = *(*(v20 - 8) + 8);
        v21(&v10[v19], v20);
        v21(v10, v20);
        return v11;
      }

      if (v14 >= *(v15 + 16))
      {
        break;
      }

      v17 = sub_1D4399064(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14++, v7, type metadata accessor for ICTTTextStorage.Selection);
      v18 = a1(v17);
      result = sub_1D43990CC(v7, type metadata accessor for ICTTTextStorage.Selection);
      if (v18)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1D43990CC(v10, type metadata accessor for ICTTTextStorage.TableSelection);
    return 0;
  }

  return result;
}

uint64_t ICTTTextStorage.Selection.range.getter()
{
  v1 = type metadata accessor for ICTTTextStorage.Selection(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D4399064(v0, v3, type metadata accessor for ICTTTextStorage.Selection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = *v3;
  if (EnumCaseMultiPayload > 2)
  {
    v6 = *v3;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C0);
    sub_1D43990CC(v3 + *(v7 + 48), type metadata accessor for ICTTTextStorage.TableSelection);
    return v6;
  }

  return result;
}

uint64_t ICTTTextStorage.Selection.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ICTTTextStorage.TableSelection(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ICTTTextStorage.Selection(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D4399064(v2, v9, type metadata accessor for ICTTTextStorage.Selection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = 2;
      goto LABEL_6;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C0);
    sub_1D439E544(v9 + *(v15 + 48), v6, type metadata accessor for ICTTTextStorage.TableSelection);
    MEMORY[0x1DA6D68D0](3);
    MEMORY[0x1DA6D68D0](v11);
    ICTTTextStorage.TableSelection.hash(into:)(a1);
    return sub_1D43990CC(v6, type metadata accessor for ICTTTextStorage.TableSelection);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = 0;
LABEL_6:
      MEMORY[0x1DA6D68D0](v12);
      return MEMORY[0x1DA6D68D0](v11);
    }

    v14 = v9[1];
    MEMORY[0x1DA6D68D0](1);
    MEMORY[0x1DA6D68D0](v11);
    return MEMORY[0x1DA6D68D0](v14);
  }
}

uint64_t ICTTTextStorage.canResolve(_:)(uint64_t a1)
{
  v3 = sub_1D4417CF4();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D441A404();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D441A434();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D4417D04();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == *MEMORY[0x1E69B7358])
  {
    (*(v14 + 96))(v16, v13);
    v18 = swift_projectBox();
    (*(v10 + 16))(v12, v18, v9);
    v19 = [v1 mergeableString];
    v20 = sub_1D441A3E4();

    (*(v10 + 8))(v12, v9);
    v21 = *(v20 + 16);

    v22 = v21 != 0;
    return v22 & 1;
  }

  if (v17 == *MEMORY[0x1E69B7348])
  {
    (*(v14 + 96))(v16, v13);
    v23 = swift_projectBox();
    v25 = v40;
    v24 = v41;
    (*(v40 + 16))(v8, v23, v41);
    v26 = [v1 mergeableString];
    sub_1D441A3F4();
    v28 = v27;

    (*(v25 + 8))(v8, v24);

    v22 = v28 ^ 1;
    return v22 & 1;
  }

  if (v17 == *MEMORY[0x1E69B7360])
  {
    (*(v14 + 96))(v16, v13);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9D0);
    v30 = swift_projectBox();
    v31 = *(v29 + 48);
    v33 = v40;
    v32 = v41;
    (*(v40 + 16))(v8, v30, v41);
    v34 = v38;
    v35 = v30 + v31;
    v36 = v39;
    (*(v38 + 16))(v5, v35, v39);
    v22 = sub_1D439A254(v5);
    (*(v34 + 8))(v5, v36);
    (*(v33 + 8))(v8, v32);

    return v22 & 1;
  }

  if (v17 == *MEMORY[0x1E69B7350])
  {
    v22 = 1;
    return v22 & 1;
  }

  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D439A254(void *a1)
{
  v2 = v1;
  v86 = a1;
  v3 = sub_1D4417D04();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4417494();
  v7 = *(v6 - 8);
  v84 = v6;
  v85 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v77 - v11;
  v13 = sub_1D44175B4();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D4417CF4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v1 mergeableString];
  v20 = sub_1D441A3F4();
  v22 = v21;

  if (v22)
  {
    goto LABEL_14;
  }

  if ([v2 attribute:*MEMORY[0x1E69DB5F8] atIndex:v20 effectiveRange:0])
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
  }

  v87 = v90;
  v88 = v91;
  if (!*(&v91 + 1))
  {
    sub_1D41769C4(&v87, &qword_1EC7C9720);
    goto LABEL_14;
  }

  sub_1D41766C0(0, &qword_1EC7CBA08);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    LOBYTE(v25) = 0;
    return v25 & 1;
  }

  v23 = v89;
  v24 = [v89 attachment];
  v25 = [v24 tableModel];

  if (!v25)
  {

    return v25 & 1;
  }

  v26 = [v25 table];

  if (!v26)
  {

    goto LABEL_14;
  }

  (*(v16 + 16))(v18, v86, v15);
  v27 = (*(v16 + 88))(v18, v15);
  if (v27 == *MEMORY[0x1E69B7338])
  {
    (*(v16 + 96))(v18, v15);
    v28 = *(*v18 + 16);
    v25 = *(v28 + 16);
    if (v25)
    {
      v86 = v26;
      v78 = v23;
      v29 = sub_1D438DAC4(v25, 0);
      v30 = sub_1D43C1E04(&v87, (v29 + ((*(v85 + 80) + 32) & ~*(v85 + 80))), v25, v28);

      result = sub_1D419FA48();
      if (v30 == v25)
      {
        v32 = sub_1D4419E24();

        v33 = v86;
        v34 = [v86 columnIndexesForIdentifiers_];
LABEL_22:
        v38 = v34;

        v39 = v81;
        sub_1D4417574();

        sub_1D4416D44();
        v40 = sub_1D4417594();

        (*(v82 + 8))(v39, v83);
LABEL_23:

        LOBYTE(v25) = v40 ^ 1;
        return v25 & 1;
      }

      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    goto LABEL_24;
  }

  if (v27 == *MEMORY[0x1E69B7328])
  {
    (*(v16 + 96))(v18, v15);
    v35 = *(*v18 + 16);
    v25 = *(v35 + 16);
    if (v25)
    {
      v86 = v26;
      v78 = v23;
      v36 = sub_1D438DAC4(v25, 0);
      v37 = sub_1D43C1E04(&v87, (v36 + ((*(v85 + 80) + 32) & ~*(v85 + 80))), v25, v35);

      result = sub_1D419FA48();
      if (v37 == v25)
      {
        v32 = sub_1D4419E24();

        v33 = v86;
        v34 = [v86 rowIndexesForIdentifiers_];
        goto LABEL_22;
      }

      goto LABEL_46;
    }

LABEL_24:

    return v25 & 1;
  }

  if (v27 != *MEMORY[0x1E69B7330])
  {
    if (v27 != *MEMORY[0x1E69B7340])
    {
      v67 = *MEMORY[0x1E69B7320];
      v68 = v27;

      if (v68 != v67)
      {
        (*(v16 + 8))(v18, v15);
      }

      LOBYTE(v25) = 1;
      return v25 & 1;
    }

    v78 = v23;
    (*(v16 + 96))(v18, v15);
    v54 = *v18;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBA10);
    v86 = v54;
    v56 = swift_projectBox();
    v57 = *(v55 + 48);
    v58 = *(v55 + 64);
    v59 = v84;
    v60 = v26;
    v61 = *(v85 + 16);
    v61(v12, v56, v84);
    v61(v10, v56 + v57, v59);
    v53 = v60;
    v48 = v79;
    v41 = v80;
    (*(v79 + 16))(v5, v56 + v58, v80);
    v62 = sub_1D4417454();
    v63 = sub_1D4417454();
    v64 = [v53 mergeableStringForColumnID:v62 rowID:v63 createIfNeeded:0];

    if (v64)
    {
      LOBYTE(v25) = sub_1D439EA3C(v64, v5);

      (*(v48 + 8))(v5, v41);
      v65 = v84;
      v66 = *(v85 + 8);
      v66(v10, v84);
      v66(v12, v65);

      return v25 & 1;
    }

LABEL_42:

    (*(v48 + 8))(v5, v41);
    v73 = v84;
    v25 = *(v85 + 8);
    (v25)(v10, v84);
    (v25)(v12, v73);

    LOBYTE(v25) = 1;
    return v25 & 1;
  }

  v86 = v26;
  (*(v16 + 96))(v18, v15);
  v41 = *v18;
  v42 = *(v41 + 16);
  v25 = *(v42 + 16);
  v43 = v85;
  if (!v25)
  {

    return v25 & 1;
  }

  v44 = *(v41 + 24);
  if (!*(v44 + 16))
  {

    goto LABEL_14;
  }

  v78 = v23;
  v45 = sub_1D438DAC4(v25, 0);
  v80 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v46 = sub_1D43C1E04(&v87, (v45 + v80), v25, v42);
  v47 = v44;
  v10 = *(&v88 + 1);
  v85 = v47;

  result = sub_1D419FA48();
  if (v46 == v25)
  {
    v48 = v84;
    v49 = sub_1D4419E24();

    v50 = v86;
    v51 = [v86 columnIndexesForIdentifiers_];

    v12 = v81;
    sub_1D4417574();

    sub_1D4416D44();
    LOBYTE(v49) = sub_1D4417594();
    v52 = v83;
    v5 = (v82 + 8);
    v53 = *(v82 + 8);
    (v53)(v12, v83);
    if (v49)
    {

      goto LABEL_14;
    }

    v69 = v85;
    v70 = *(v85 + 16);
    if (v70)
    {
      v71 = sub_1D438DAC4(*(v85 + 16), 0);
      v72 = sub_1D43C1E04(&v87, (v71 + v80), v70, v69);
      sub_1D419FA48();
      if (v72 != v70)
      {
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
    }

    v74 = sub_1D4419E24();

    v75 = v86;
    v76 = [v86 rowIndexesForIdentifiers_];

    sub_1D4417574();
    sub_1D4416D44();
    v40 = sub_1D4417594();

    (v53)(v12, v52);
    goto LABEL_23;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t ICTTTextStorage.resolvedSelections(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = (&v55 - v4);
  v5 = sub_1D4417CF4();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ICTTTextStorage.Selection(0);
  v8 = *(v7 - 8);
  v63 = v7;
  v64 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v55 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v55 - v14;
  v15 = sub_1D441A404();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v62 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - v18;
  v20 = sub_1D441A434();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D4417D04();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v27, a1, v24);
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 != *MEMORY[0x1E69B7358])
  {
    if (v28 == *MEMORY[0x1E69B7348])
    {
      (*(v25 + 96))(v27, v24);
      v31 = swift_projectBox();
      v33 = v65;
      v32 = v66;
      (*(v65 + 16))(v19, v31, v66);
      v34 = v1;
      v35 = [v1 mergeableString];
      v36 = sub_1D441A3F4();
      v38 = v37;

      if ((v38 & 1) == 0 && [v34 containsAttachmentsInRange_])
      {
        *v13 = v36;
        swift_storeEnumTagMultiPayload();
        v39 = v56;
        sub_1D439E544(v13, v56, type metadata accessor for ICTTTextStorage.Selection);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8B8);
        v40 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1D4435D40;
        sub_1D439E544(v39, v30 + v40, type metadata accessor for ICTTTextStorage.Selection);
        (*(v33 + 8))(v19, v32);
        goto LABEL_3;
      }

      (*(v33 + 8))(v19, v32);
    }

    else
    {
      if (v28 != *MEMORY[0x1E69B7360])
      {
        if (v28 != *MEMORY[0x1E69B7350])
        {
          (*(v25 + 8))(v27, v24);
        }

        return MEMORY[0x1E69E7CC0];
      }

      (*(v25 + 96))(v27, v24);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9D0);
      v42 = swift_projectBox();
      v43 = *(v41 + 48);
      v45 = v65;
      v44 = v66;
      v46 = v62;
      (*(v65 + 16))(v62, v42, v66);
      v48 = v59;
      v47 = v60;
      v49 = v61;
      (*(v60 + 16))(v59, v42 + v43, v61);
      v50 = v58;
      sub_1D439BE9C(v48, v58);
      v51 = v64;
      if ((*(v64 + 48))(v50, 1, v63) != 1)
      {
        v53 = v57;
        sub_1D439E544(v50, v57, type metadata accessor for ICTTTextStorage.Selection);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8B8);
        v54 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1D4435D40;
        sub_1D439E544(v53, v30 + v54, type metadata accessor for ICTTTextStorage.Selection);
        (*(v47 + 8))(v48, v49);
        (*(v45 + 8))(v62, v44);
        goto LABEL_3;
      }

      sub_1D41769C4(v50, &qword_1EC7CB9D8);
      (*(v47 + 8))(v48, v49);
      (*(v45 + 8))(v46, v44);
    }

    return MEMORY[0x1E69E7CC0];
  }

  (*(v25 + 96))(v27, v24);
  v29 = swift_projectBox();
  (*(v21 + 16))(v23, v29, v20);
  v30 = sub_1D439B504();
  (*(v21 + 8))(v23, v20);
LABEL_3:

  return v30;
}

uint64_t sub_1D439B504()
{
  v1 = v0;
  v2 = type metadata accessor for ICTTTextStorage.Selection(0);
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v82 = (v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (v67 - v6);
  MEMORY[0x1EEE9AC00](v5);
  v70 = (v67 - v8);
  v9 = sub_1D4417494();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v68 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v69 = v67 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v74 = v67 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v76 = v67 - v17;
  v94 = MEMORY[0x1E69E7CC0];
  v18 = [v0 mergeableString];
  v19 = sub_1D441A3E4();

  v20 = v19;
  v21 = *(v19 + 16);
  if (v21)
  {
    v78 = v9;
    v22 = 0;
    v86 = 0;
    v75 = (v10 + 32);
    v71 = (v10 + 8);
    v83 = *MEMORY[0x1E69B7600];
    v80 = &v89;
    v79 = *MEMORY[0x1E69DB5F8];
    v67[1] = v20;
    v23 = (v20 + 40);
    v81 = v0;
    v72 = v7;
    while (1)
    {
      v27 = *(v23 - 1);
      v26 = *v23;
      if ([v1 attribute:v83 atIndex:v27 effectiveRange:0])
      {
        sub_1D441A804();
        swift_unknownObjectRelease();
      }

      else
      {
        v92 = 0u;
        v93 = 0u;
      }

      aBlock = v92;
      v89 = v93;
      if (!*(&v93 + 1))
      {
        sub_1D41769C4(&aBlock, &qword_1EC7C9720);
        if (v26 < 1)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }

      sub_1D41766C0(0, &qword_1EDE33C88);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_25;
      }

      v28 = v87;
      v29 = [v1 outlineController];
      if (!v29)
      {

        if (v26 < 1)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }

      v30 = v29;
      v31 = [v28 uuid];
      if (!v31)
      {
        break;
      }

      v77 = v28;
      v32 = v74;
      v33 = v31;
      sub_1D4417474();

      v34 = v76;
      v35 = v32;
      v36 = v78;
      v73 = *v75;
      v73(v76, v35, v78);
      v37 = sub_1D4417454();
      v38 = [v30 isUUIDHidden_];

      if (v38)
      {
        v39 = sub_1D4417454();
        v40 = [v30 closestVisibleAncestorForUUID_];

        if (v40)
        {
          v41 = v68;
          sub_1D4417474();

          v73(v69, v41, v78);
          v42 = sub_1D4417454();
          v43 = [v30 rangeForUUID_];
          v45 = v44;

          v46 = v70;
          *v70 = v43;
          v46[1] = v45;
          swift_storeEnumTagMultiPayload();
          v47 = v94;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94 = v47;
          v1 = v81;
          v7 = v72;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v47 = sub_1D438D6C4(0, v47[2] + 1, 1, v47);
            v94 = v47;
          }

          v50 = v47[2];
          v49 = v47[3];
          if (v50 >= v49 >> 1)
          {
            v94 = sub_1D438D6C4(v49 > 1, v50 + 1, 1, v47);
          }

          v51 = *v71;
          v52 = v78;
          (*v71)(v69, v78);
          v51(v76, v52);
          v53 = v94;
          *(v94 + 16) = v50 + 1;
          v24 = v53 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v50;
          v25 = v70;
LABEL_4:
          sub_1D439E544(v25, v24, type metadata accessor for ICTTTextStorage.Selection);
          v94 = v53;
          goto LABEL_5;
        }

        (*v71)(v34, v78);
      }

      else
      {
        (*v71)(v34, v36);
      }

      v1 = v81;
      v7 = v72;
      if (v26 < 1)
      {
LABEL_35:
        *v82 = v27;
        swift_storeEnumTagMultiPayload();
        v53 = v94;
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v53;
        if ((v63 & 1) == 0)
        {
          v53 = sub_1D438D6C4(0, v53[2] + 1, 1, v53);
          v94 = v53;
        }

        v65 = v53[2];
        v64 = v53[3];
        if (v65 >= v64 >> 1)
        {
          v53 = sub_1D438D6C4(v64 > 1, v65 + 1, 1, v53);
        }

        v53[2] = v65 + 1;
        v24 = v53 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v65;
        v25 = v82;
        goto LABEL_4;
      }

LABEL_26:
      *v7 = v27;
      v7[1] = v26;
      swift_storeEnumTagMultiPayload();
      v54 = v94;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v54;
      if ((v55 & 1) == 0)
      {
        v54 = sub_1D438D6C4(0, v54[2] + 1, 1, v54);
        v94 = v54;
      }

      v57 = v54[2];
      v56 = v54[3];
      if (v57 >= v56 >> 1)
      {
        v54 = sub_1D438D6C4(v56 > 1, v57 + 1, 1, v54);
      }

      v54[2] = v57 + 1;
      sub_1D439E544(v7, v54 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v57, type metadata accessor for ICTTTextStorage.Selection);
      v94 = v54;
      v58 = swift_allocObject();
      *(v58 + 16) = &v94;
      sub_1D417BCA0(v22);
      v59 = swift_allocObject();
      v22 = sub_1D439EA34;
      *(v59 + 16) = sub_1D439EA34;
      *(v59 + 24) = v58;
      v90 = sub_1D417CF74;
      v91 = v59;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v89 = sub_1D417C9A0;
      *(&v89 + 1) = &block_descriptor_21;
      v60 = _Block_copy(&aBlock);

      v1 = v81;
      [v81 enumerateAttribute:v79 inRange:v27 options:v26 usingBlock:{0, v60}];
      _Block_release(v60);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }

      v86 = v58;
LABEL_5:
      v23 += 2;
      if (!--v21)
      {

        v66 = v94;
        goto LABEL_41;
      }
    }

LABEL_25:
    if (v26 < 1)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  v22 = 0;
  v66 = MEMORY[0x1E69E7CC0];
LABEL_41:
  sub_1D417BCA0(v22);
  return v66;
}

uint64_t sub_1D439BE9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v77 = a1;
  v5 = sub_1D4417D04();
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D4417494();
  v76 = *(v79 - 8);
  v8 = MEMORY[0x1EEE9AC00](v79);
  v75 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v71 - v10;
  v12 = sub_1D4417CF4();
  v78 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v2 mergeableString];
  v16 = sub_1D441A3F4();
  v18 = v17;

  if (v18)
  {
    goto LABEL_14;
  }

  v73 = a2;
  v19 = [v3 attribute:*MEMORY[0x1E69DB5F8] atIndex:v16 effectiveRange:0];
  v20 = v16;
  if (v19)
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
  }

  v21 = v79;
  v83[0] = v81;
  v83[1] = v82;
  if (!*(&v82 + 1))
  {
    sub_1D41769C4(v83, &qword_1EC7C9720);
    goto LABEL_13;
  }

  sub_1D41766C0(0, &qword_1EC7CBA08);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    a2 = v73;
LABEL_14:
    v29 = type metadata accessor for ICTTTextStorage.Selection(0);
    return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
  }

  v22 = v80;
  v23 = [v80 attachment];
  v24 = [v23 tableModel];

  if (!v24 || (v25 = [v24 table], v24, !v25))
  {

    goto LABEL_13;
  }

  v26 = v25;
  v27 = v78;
  (*(v78 + 16))(v14, v77, v12);
  v28 = (*(v27 + 88))(v14, v12);
  if (v28 == *MEMORY[0x1E69B7338] || v28 == *MEMORY[0x1E69B7328])
  {

    (*(v27 + 96))(v14, v12);
    v31 = *(*v14 + 16);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C0) + 48);
    v33 = v73;
    *v73 = v20;
    *(v33 + v32) = v31;
    type metadata accessor for ICTTTextStorage.TableSelection(0);
    swift_storeEnumTagMultiPayload();
    v34 = type metadata accessor for ICTTTextStorage.Selection(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
LABEL_17:
  }

  if (v28 == *MEMORY[0x1E69B7330])
  {

    (*(v27 + 96))(v14, v12);
    v35 = *(*v14 + 16);
    v36 = *(*v14 + 24);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C0);
    v38 = v73;
    v39 = (v73 + *(v37 + 48));
    *v73 = v20;
    *v39 = v35;
    v39[1] = v36;
    type metadata accessor for ICTTTextStorage.TableSelection(0);
    swift_storeEnumTagMultiPayload();
    v40 = type metadata accessor for ICTTTextStorage.Selection(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v40 - 8) + 56))(v38, 0, 1, v40);

    goto LABEL_17;
  }

  v77 = v26;
  if (v28 == *MEMORY[0x1E69B7340])
  {
    v71 = v20;
    v72 = v22;
    (*(v27 + 96))(v14, v12);
    v41 = *v14;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBA10);
    v78 = v41;
    v43 = swift_projectBox();
    v44 = *(v42 + 48);
    v45 = *(v42 + 64);
    v46 = v76[2];
    v46(v11, v43, v21);
    v47 = v75;
    v46(v75, v43 + v44, v21);
    v48 = v74;
    (*(v74 + 16))(v7, v43 + v45, v5);
    v49 = sub_1D4417454();
    v50 = sub_1D4417454();
    v51 = v77;
    v52 = [v77 mergeableStringForColumnID:v49 rowID:v50 createIfNeeded:0];

    if (v52)
    {
      v53 = sub_1D439EC9C(v52, v7);

      (*(v48 + 8))(v7, v5);
      v54 = v73;
      if (v53[2])
      {
        v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C0) + 48);
        *v54 = v71;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C8);
        v57 = *(v56 + 48);
        v58 = *(v56 + 64);
        v59 = v76[4];
        v60 = v11;
        v61 = v79;
        v59(v55, v60, v79);
        v59(&v55[v57], v75, v61);
        *&v55[v58] = v53;
        type metadata accessor for ICTTTextStorage.TableSelection(0);
        swift_storeEnumTagMultiPayload();
        v62 = type metadata accessor for ICTTTextStorage.Selection(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v62 - 8) + 56))(v54, 0, 1, v62);
      }

      else
      {

        v68 = v76[1];
        v69 = v79;
        v68(v75, v79);
        v68(v11, v69);
        v70 = type metadata accessor for ICTTTextStorage.Selection(0);
        (*(*(v70 - 8) + 56))(v54, 1, 1, v70);
      }
    }

    else
    {

      (*(v48 + 8))(v7, v5);
      v66 = v76[1];
      v66(v47, v21);
      v66(v11, v21);
      v67 = type metadata accessor for ICTTTextStorage.Selection(0);
      (*(*(v67 - 8) + 56))(v73, 1, 1, v67);
    }
  }

  else
  {
    v63 = *MEMORY[0x1E69B7320];
    v64 = v28;

    if (v64 != v63)
    {
      (*(v78 + 8))(v14, v12);
    }

    v65 = type metadata accessor for ICTTTextStorage.Selection(0);
    return (*(*(v65 - 8) + 56))(v73, 1, 1, v65);
  }
}

uint64_t sub_1D439C850(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v54 = a2;
  v8 = type metadata accessor for ICTTTextStorage.Selection(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v51 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v51 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v51 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v51 - v22;
  sub_1D418CFF4(a1, v56);
  if (!v57)
  {
    return sub_1D41769C4(v56, &qword_1EC7C9720);
  }

  sub_1D41766C0(0, &qword_1EC7CBA00);
  result = swift_dynamicCast();
  if (result)
  {

    v25 = *a5;
    v26 = *(*a5 + 16);
    if (v26)
    {
      v53 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v52 = *(v9 + 72);
      sub_1D4399064(v25 + v53 + v52 * (v26 - 1), v23, type metadata accessor for ICTTTextStorage.Selection);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v27 = v25[2];
          if (v27)
          {
LABEL_7:
            v28 = v27 - 1;
            sub_1D43990CC(v25 + v53 + (v27 - 1) * v52, type metadata accessor for ICTTTextStorage.Selection);
            v25[2] = v28;
            *a5 = v25;
            v29 = v54;
            v30 = sub_1D441A704();
            a3 = v30 + 2;
            v23 = v30[2];
            if (!v23)
            {
              goto LABEL_13;
            }

            v31 = v30[4];
            if (v31 >= v29)
            {
              goto LABEL_13;
            }

            v32 = v30[5];
            *v21 = v31;
            v21[1] = v32;
            swift_storeEnumTagMultiPayload();
            v25 = *a5;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a5 = v25;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_38;
            }

            while (1)
            {
              v35 = v25[2];
              v34 = v25[3];
              v36 = v35 + 1;
              if (v35 >= v34 >> 1)
              {
                *&v51 = v35 + 1;
                v50 = sub_1D438D6C4(v34 > 1, v35 + 1, 1, v25);
                v36 = v51;
                v25 = v50;
                *a5 = v50;
              }

              v25[2] = v36;
              sub_1D439E544(v21, v25 + v53 + v35 * v52, type metadata accessor for ICTTTextStorage.Selection);
              v29 = v54;
LABEL_13:
              *v18 = v29;
              swift_storeEnumTagMultiPayload();
              v25 = *a5;
              v37 = swift_isUniquelyReferenced_nonNull_native();
              *a5 = v25;
              if ((v37 & 1) == 0)
              {
LABEL_36:
                v25 = sub_1D438D6C4(0, v25[2] + 1, 1, v25);
                *a5 = v25;
              }

              v39 = v25[2];
              v38 = v25[3];
              v21 = (v39 + 1);
              if (v39 >= v38 >> 1)
              {
                v25 = sub_1D438D6C4(v38 > 1, v39 + 1, 1, v25);
                *a5 = v25;
              }

              v25[2] = v21;
              sub_1D439E544(v18, v25 + v53 + v39 * v52, type metadata accessor for ICTTTextStorage.Selection);
              if (!v23)
              {
              }

              if (v23 <= *a3)
              {
                break;
              }

              __break(1u);
LABEL_38:
              v25 = sub_1D438D6C4(0, v25[2] + 1, 1, v25);
              *a5 = v25;
            }

            v51 = *&a3[2 * v23];

            if (v51 <= v54)
            {
              return result;
            }

            *v15 = v51;
            swift_storeEnumTagMultiPayload();
            v40 = *a5;
            v41 = swift_isUniquelyReferenced_nonNull_native();
            *a5 = v40;
            if ((v41 & 1) == 0)
            {
              v40 = sub_1D438D6C4(0, v40[2] + 1, 1, v40);
              *a5 = v40;
            }

            v43 = v40[2];
            v42 = v40[3];
            if (v43 >= v42 >> 1)
            {
              v40 = sub_1D438D6C4(v42 > 1, v43 + 1, 1, v40);
              *a5 = v40;
            }

            v40[2] = v43 + 1;
            v44 = v40 + v53 + v43 * v52;
            v45 = v15;
            return sub_1D439E544(v45, v44, type metadata accessor for ICTTTextStorage.Selection);
          }
        }

        else
        {
          v25 = sub_1D43E7D14(v25);
          v27 = v25[2];
          if (v27)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        goto LABEL_36;
      }

      sub_1D43990CC(v23, type metadata accessor for ICTTTextStorage.Selection);
    }

    *v12 = v54;
    swift_storeEnumTagMultiPayload();
    v46 = *a5;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v46;
    if ((v47 & 1) == 0)
    {
      v46 = sub_1D438D6C4(0, v46[2] + 1, 1, v46);
      *a5 = v46;
    }

    v49 = v46[2];
    v48 = v46[3];
    if (v49 >= v48 >> 1)
    {
      v46 = sub_1D438D6C4(v48 > 1, v49 + 1, 1, v46);
      *a5 = v46;
    }

    v46[2] = v49 + 1;
    v44 = v46 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v49;
    v45 = v12;
    return sub_1D439E544(v45, v44, type metadata accessor for ICTTTextStorage.Selection);
  }

  return result;
}

uint64_t ICTTTextStorage.TableSelection.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for ICTTTextStorage.TableSelection(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D4399064(v2, v13, type metadata accessor for ICTTTextStorage.TableSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = *v13;
      v17 = v13[1];
      MEMORY[0x1DA6D68D0](2);
      v18 = MEMORY[0x1E69695A8];
      v19 = MEMORY[0x1E69695A8];
      v20 = MEMORY[0x1E69695B8];
      sub_1D439D914(a1, v16, MEMORY[0x1E69695A8], &qword_1EDE33D40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

      sub_1D439D914(a1, v17, v18, &qword_1EDE33D40, v19, v20);
    }

    else
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C8);
      v23 = *(v22 + 48);
      v24 = *(v13 + *(v22 + 64));
      v25 = *(v5 + 32);
      v25(v10, v13, v4);
      v25(v8, (v13 + v23), v4);
      MEMORY[0x1DA6D68D0](3);
      sub_1D417A834(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      sub_1D4419B94();
      sub_1D4419B94();
      sub_1D439D2E0(a1, v24);

      v26 = *(v5 + 8);
      v26(v8, v4);
      return (v26)(v10, v4);
    }
  }

  else
  {
    v15 = *v13;
    MEMORY[0x1DA6D68D0](EnumCaseMultiPayload != 0);
    sub_1D439D914(a1, v15, MEMORY[0x1E69695A8], &qword_1EDE33D40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  }
}

uint64_t sub_1D439D1D4(void (*a1)(_BYTE *))
{
  sub_1D441AEB4();
  a1(v3);
  return sub_1D441AF04();
}

uint64_t sub_1D439D234(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D441AEB4();
  a3(v5);
  return sub_1D441AF04();
}

uint64_t sub_1D439D298(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D441AEB4();
  a4(v6);
  return sub_1D441AF04();
}

uint64_t sub_1D439D2E0(__int128 *a1, uint64_t a2)
{
  v49 = sub_1D4417494();
  v54 = *(v49 - 8);
  v4 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v45 - v6;
  v7 = type metadata accessor for ICTTTextStorage.TableSelection(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v45 - v11;
  v12 = type metadata accessor for ICTTTextStorage.Selection(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  v19 = *(a2 + 16);
  result = MEMORY[0x1DA6D68D0](v19);
  if (v19)
  {
    v21 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v56 = *(v13 + 72);
    v46 = (v54 + 8);
    v47 = (v54 + 32);
    v51 = v10;
    v52 = v7;
    v54 = v12;
    while (1)
    {
      sub_1D4399064(v21, v18, type metadata accessor for ICTTTextStorage.Selection);
      sub_1D4399064(v18, v16, type metadata accessor for ICTTTextStorage.Selection);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v25 = *v16;
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (!EnumCaseMultiPayload)
      {
        v26 = 0;
LABEL_11:
        MEMORY[0x1DA6D68D0](v26);
        v23 = v25;
        goto LABEL_4;
      }

      v22 = v16[1];
      MEMORY[0x1DA6D68D0](1);
      MEMORY[0x1DA6D68D0](v25);
      v23 = v22;
LABEL_4:
      MEMORY[0x1DA6D68D0](v23);
LABEL_5:
      result = sub_1D43990CC(v18, type metadata accessor for ICTTTextStorage.Selection);
      v21 += v56;
      if (!--v19)
      {
        return result;
      }
    }

    if (EnumCaseMultiPayload != 2)
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C0);
      v28 = v55;
      sub_1D439E544(v16 + *(v27 + 48), v55, type metadata accessor for ICTTTextStorage.TableSelection);
      MEMORY[0x1DA6D68D0](3);
      MEMORY[0x1DA6D68D0](v25);
      sub_1D4399064(v28, v10, type metadata accessor for ICTTTextStorage.TableSelection);
      v29 = swift_getEnumCaseMultiPayload();
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          v31 = *v10;
          v32 = v10[1];
          MEMORY[0x1DA6D68D0](2);
          v33 = MEMORY[0x1E69695A8];
          v34 = MEMORY[0x1E69695A8];
          v35 = MEMORY[0x1E69695B8];
          sub_1D439D914(a1, v31, MEMORY[0x1E69695A8], &qword_1EDE33D40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

          v36 = v35;
          v10 = v51;
          sub_1D439D914(a1, v32, v33, &qword_1EDE33D40, v34, v36);
        }

        else
        {
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C8);
          v38 = *(v37 + 48);
          v50 = *(v10 + *(v37 + 64));
          v39 = *v47;
          v40 = v49;
          (*v47)(v53, v10, v49);
          v41 = v10 + v38;
          v42 = v48;
          v39(v48, v41, v40);
          MEMORY[0x1DA6D68D0](3);
          sub_1D417A834(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
          sub_1D4419B94();
          sub_1D4419B94();
          sub_1D439D2E0(a1, v50);

          v43 = *v46;
          v44 = v42;
          v10 = v51;
          (*v46)(v44, v40);
          v43(v53, v40);
        }
      }

      else
      {
        v30 = *v10;
        MEMORY[0x1DA6D68D0](v29 != 0);
        sub_1D439D914(a1, v30, MEMORY[0x1E69695A8], &qword_1EDE33D40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      }

      sub_1D43990CC(v55, type metadata accessor for ICTTTextStorage.TableSelection);
      goto LABEL_5;
    }

    v26 = 2;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1D439D914(__int128 *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - v10;
  v12 = a1[3];
  v32 = a1[2];
  v33 = v12;
  v34 = *(a1 + 8);
  v14 = *a1;
  v13 = a1[1];
  v26[1] = a1;
  v30 = v14;
  v31 = v13;
  v15 = sub_1D441AF04();
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v26[3] = v9 + 16;
  v26[4] = v15;
  v26[2] = v9 + 8;

  v21 = 0;
  for (i = 0; v18; v21 ^= v25)
  {
    v23 = i;
LABEL_9:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    (*(v9 + 16))(v11, *(a2 + 48) + *(v9 + 72) * (v24 | (v23 << 6)), v8);
    sub_1D417A834(v27, v28);
    v25 = sub_1D4419B84();
    result = (*(v9 + 8))(v11, v8);
  }

  while (1)
  {
    v23 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return MEMORY[0x1DA6D68D0](v21);
    }

    v18 = *(a2 + 56 + 8 * v23);
    ++i;
    if (v18)
    {
      i = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSo15ICTTTextStorageC7NotesUIE9SelectionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICTTTextStorage.TableSelection(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v37 - v7;
  v8 = type metadata accessor for ICTTTextStorage.Selection(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v37 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v37 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v37 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBA20);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v37 - v22;
  v24 = (&v37 + *(v21 + 56) - v22);
  sub_1D4399064(a1, &v37 - v22, type metadata accessor for ICTTTextStorage.Selection);
  sub_1D4399064(a2, v24, type metadata accessor for ICTTTextStorage.Selection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D4399064(v23, v17, type metadata accessor for ICTTTextStorage.Selection);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = *v17 == *v24 && v17[1] == v24[1];
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D4399064(v23, v19, type metadata accessor for ICTTTextStorage.Selection);
      if (!swift_getEnumCaseMultiPayload())
      {
        v26 = *v19;
LABEL_8:
        v27 = v26 == *v24;
LABEL_13:
        v28 = v27;
        goto LABEL_16;
      }
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D4399064(v23, v14, type metadata accessor for ICTTTextStorage.Selection);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v26 = *v14;
      goto LABEL_8;
    }

    goto LABEL_21;
  }

  sub_1D4399064(v23, v11, type metadata accessor for ICTTTextStorage.Selection);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C0) + 48);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1D43990CC(v11 + v29, type metadata accessor for ICTTTextStorage.TableSelection);
LABEL_21:
    sub_1D41769C4(v23, &qword_1EC7CBA20);
LABEL_22:
    v28 = 0;
    return v28 & 1;
  }

  v30 = *v11;
  v31 = *v24;
  v32 = v11 + v29;
  v33 = v38;
  sub_1D439E544(v32, v38, type metadata accessor for ICTTTextStorage.TableSelection);
  v34 = v24 + v29;
  v35 = v37;
  sub_1D439E544(v34, v37, type metadata accessor for ICTTTextStorage.TableSelection);
  if (v30 != v31)
  {
    sub_1D43990CC(v35, type metadata accessor for ICTTTextStorage.TableSelection);
    sub_1D43990CC(v33, type metadata accessor for ICTTTextStorage.TableSelection);
    sub_1D43990CC(v23, type metadata accessor for ICTTTextStorage.Selection);
    goto LABEL_22;
  }

  v28 = _sSo15ICTTTextStorageC7NotesUIE14TableSelectionO2eeoiySbAE_AEtFZ_0(v33, v35);
  sub_1D43990CC(v35, type metadata accessor for ICTTTextStorage.TableSelection);
  sub_1D43990CC(v33, type metadata accessor for ICTTTextStorage.TableSelection);
LABEL_16:
  sub_1D43990CC(v23, type metadata accessor for ICTTTextStorage.Selection);
  return v28 & 1;
}

uint64_t _sSo15ICTTTextStorageC7NotesUIE14TableSelectionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417494();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v55 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v51 - v9;
  v10 = type metadata accessor for ICTTTextStorage.TableSelection(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v51 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v51 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v51 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBA18);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v51 - v24;
  v26 = (&v51 + *(v23 + 56) - v24);
  sub_1D4399064(a1, &v51 - v24, type metadata accessor for ICTTTextStorage.TableSelection);
  sub_1D4399064(a2, v26, type metadata accessor for ICTTTextStorage.TableSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D4399064(v25, v19, type metadata accessor for ICTTTextStorage.TableSelection);
      v28 = *v19;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_10:
        v30 = *v26;
        goto LABEL_11;
      }
    }

    else
    {
      sub_1D4399064(v25, v21, type metadata accessor for ICTTTextStorage.TableSelection);
      v28 = *v21;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_10;
      }
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_1D4399064(v25, v13, type metadata accessor for ICTTTextStorage.TableSelection);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9C8);
    v34 = *(v33 + 48);
    v35 = *(v33 + 64);
    v36 = *&v13[v35];
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      v47 = *(v57 + 8);
      v48 = &v13[v34];
      v49 = v58;
      v47(v48, v58);
      v47(v13, v49);
      goto LABEL_20;
    }

    v52 = *(v26 + v35);
    v53 = v36;
    v37 = v56;
    v38 = v57;
    v39 = *(v57 + 32);
    v40 = v58;
    v39(v56, v26, v58);
    v41 = v55;
    v39(v55, &v13[v34], v40);
    v42 = v26 + v34;
    v43 = v54;
    v39(v54, v42, v40);
    v44 = sub_1D4417464();
    v45 = *(v38 + 8);
    v45(v13, v40);
    if (v44)
    {
      v46 = v52;
      if (sub_1D4417464())
      {
        v32 = sub_1D434FB4C(v53, v46);

        v45(v43, v40);
        v45(v41, v40);
        v45(v37, v40);
        goto LABEL_12;
      }
    }

    v45(v43, v40);
    v45(v41, v40);
    v45(v37, v40);
LABEL_22:
    sub_1D43990CC(v25, type metadata accessor for ICTTTextStorage.TableSelection);
    goto LABEL_23;
  }

  sub_1D4399064(v25, v16, type metadata accessor for ICTTTextStorage.TableSelection);
  v29 = *v16;
  v28 = v16[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

LABEL_18:

LABEL_20:
    sub_1D41769C4(v25, &qword_1EC7CBA18);
LABEL_23:
    v32 = 0;
    return v32 & 1;
  }

  v30 = v26[1];
  v31 = sub_1D4181490(v29, *v26);

  if ((v31 & 1) == 0)
  {

    goto LABEL_22;
  }

LABEL_11:
  v32 = sub_1D4181490(v28, v30);

LABEL_12:
  sub_1D43990CC(v25, type metadata accessor for ICTTTextStorage.TableSelection);
  return v32 & 1;
}

uint64_t sub_1D439E544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D439E63C()
{
  sub_1D439E6C8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for _NSRange(319);
    if (v1 <= 0x3F)
    {
      sub_1D439E6F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D439E6C8()
{
  result = qword_1EDE32A10;
  if (!qword_1EDE32A10)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EDE32A10);
  }

  return result;
}

void sub_1D439E6F8()
{
  if (!qword_1EDE32A18)
  {
    type metadata accessor for ICTTTextStorage.TableSelection(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDE32A18);
    }
  }
}

void sub_1D439E7B4()
{
  sub_1D439E8F4(319, &qword_1EDE32A40);
  if (v0 <= 0x3F)
  {
    sub_1D439E8F4(319, &qword_1EDE32A50);
    if (v1 <= 0x3F)
    {
      sub_1D439E93C();
      if (v2 <= 0x3F)
      {
        sub_1D439E9B0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D439E860()
{
  if (!qword_1EDE32A38)
  {
    sub_1D4417494();
    sub_1D417A834(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
    v0 = sub_1D441A0B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE32A38);
    }
  }
}

void sub_1D439E8F4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D439E860();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D439E93C()
{
  if (!qword_1EDE32A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C9948);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDE32A48);
    }
  }
}

void sub_1D439E9B0()
{
  if (!qword_1EC7CB9F0)
  {
    sub_1D4417494();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB9F8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC7CB9F0);
    }
  }
}

BOOL sub_1D439EA3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D441A434();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D4417D04();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a2, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x1E69B7358])
  {
    (*(v8 + 96))(v10, v7);
    v12 = swift_projectBox();
    (*(v4 + 16))(v6, v12, v3);
    v13 = sub_1D441A3E4();
    (*(v4 + 8))(v6, v3);
    v14 = *(v13 + 16);

    return v14 != 0;
  }

  else
  {
    if (v11 == *MEMORY[0x1E69B7348] || v11 == *MEMORY[0x1E69B7360] || v11 != *MEMORY[0x1E69B7350])
    {
      (*(v8 + 8))(v10, v7);
    }

    return 1;
  }
}

void *sub_1D439EC9C(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for ICTTTextStorage.Selection(0);
  v3 = *(v35 - 8);
  v4 = MEMORY[0x1EEE9AC00](v35);
  v34 = (v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v32 - v6);
  v8 = sub_1D441A434();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D4417D04();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v15, a2, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x1E69B7358])
  {
    (*(v13 + 96))(v15, v12);
    v32[2] = *v15;
    v17 = swift_projectBox();
    v33 = v9;
    (*(v9 + 16))(v11, v17, v8);
    v18 = sub_1D441A3E4();
    v19 = *(v18 + 16);
    v20 = v11;
    v32[1] = v18;
    if (v19)
    {
      v21 = v18 + 32;
      v22 = MEMORY[0x1E69E7CC0];
      v23 = v8;
      v24 = v20;
      do
      {
        v26 = *v21;
        if (*(v21 + 8) < 1)
        {
          *v34 = v26;
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1D438D6C4(0, v22[2] + 1, 1, v22);
          }

          v28 = v22[2];
          v30 = v22[3];
          v29 = v28 + 1;
          if (v28 >= v30 >> 1)
          {
            v22 = sub_1D438D6C4(v30 > 1, v28 + 1, 1, v22);
          }

          v25 = v34;
        }

        else
        {
          *v7 = v26;
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1D438D6C4(0, v22[2] + 1, 1, v22);
          }

          v28 = v22[2];
          v27 = v22[3];
          v29 = v28 + 1;
          if (v28 >= v27 >> 1)
          {
            v22 = sub_1D438D6C4(v27 > 1, v28 + 1, 1, v22);
          }

          v25 = v7;
        }

        v22[2] = v29;
        sub_1D439E544(v25, v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28, type metadata accessor for ICTTTextStorage.Selection);
        v21 += 16;
        --v19;
        v8 = v23;
        v20 = v24;
      }

      while (v19);
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    (*(v33 + 8))(v20, v8);
  }

  else
  {
    if (v16 == *MEMORY[0x1E69B7348] || v16 == *MEMORY[0x1E69B7360] || v16 != *MEMORY[0x1E69B7350])
    {
      (*(v13 + 8))(v15, v12);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v22;
}

uint64_t __LockedNotesViewConfigurationAccount.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t __LockedNotesViewConfigurationAccount.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t __LockedNotesViewConfigurationAccount.username.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t __LockedNotesViewConfigurationAccount.username.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __LockedNotesViewConfigurationAccount.init(account:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 accountType];
  v5 = [a1 localizedName];
  v6 = sub_1D4419C54();
  v8 = v7;

  v9 = [a1 username];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D4419C54();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a1 passwordProtectedNotes];
  sub_1D439F548();
  v15 = sub_1D4419E44();

  if (v15 >> 62)
  {
    v16 = sub_1D441A8C4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = [a1 accountData];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 lockedNotesMode];
  }

  else
  {
    v19 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v19;
  *(a2 + 42) = v16 != 0;
}

uint64_t _s7NotesUI08__LockedA24ViewConfigurationAccountV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 42);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 42);
  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_1D441AD84() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    if (v2 == v7 && v3 == v6)
    {
      if (v4 != v8)
      {
        return 0;
      }

      return v5 ^ v9 ^ 1u;
    }

    v11 = sub_1D441AD84();
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }

LABEL_15:
    if (v4 != v8)
    {
      return result;
    }

    return v5 ^ v9 ^ 1u;
  }

  result = 0;
  if (!v6)
  {
    goto LABEL_15;
  }

  return result;
}

unint64_t sub_1D439F548()
{
  result = qword_1EDE32440;
  if (!qword_1EDE32440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE32440);
  }

  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D439F5BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
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

uint64_t sub_1D439F604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D439F688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D439F730();
  v5 = MEMORY[0x1E69B7238];

  return MEMORY[0x1EEE22FA0](a1, v4, a2, v5);
}

uint64_t ActivityStreamItemConvertible<>.activityItemIsVisible(resolver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D439F730();

  return MEMORY[0x1EEE22FA0](a1, v6, a2, a3);
}

unint64_t sub_1D439F730()
{
  result = qword_1EC7C9760;
  if (!qword_1EC7C9760)
  {
    type metadata accessor for ActivityEventResolver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9760);
  }

  return result;
}

uint64_t sub_1D439F7E4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = sub_1D4417C84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  a2(0);
  sub_1D4417764();
  v17 = a1;
  v18 = v10;
  v14 = a4;
  v15 = &v16;
  sub_1D4417D34();
  v11 = v19;
  (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D4438490;
  *(result + 32) = v11;
  return result;
}

uint64_t ActivityStreamItemConvertible<>.activityItemParticipants(resolver:)(uint64_t a1)
{
  v2 = sub_1D4417C84();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D4417764();
  v12 = a1;
  v13 = v5;
  v9 = sub_1D4378094;
  v10 = &v11;
  sub_1D4417D34();
  v6 = v14;
  (*(v3 + 8))(v5, v2);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D4438490;
  *(result + 32) = v6;
  return result;
}

uint64_t sub_1D439FB00(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_1D4417964();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D4417C84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + OBJC_IVAR___ActivityEventResolver_object))
  {
    goto LABEL_40;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (!v18)
    {
      goto LABEL_40;
    }

    v19 = v18;
    v20 = [v18 collaborationColorManager];
    (a2)(0);
    v21 = v39;
    sub_1D4417764();
    sub_1D4417C04();
    (*(v11 + 8))(v21, v10);
    v22 = sub_1D4419C14();

    v23 = [v20 highlightColorForUserID:v22 note:v19];

    if (v23)
    {
      return _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();
    }

    return 0;
  }

  v14 = [v13 allChildCloudObjects];
  sub_1D43A0790();
  v6 = sub_1D4419E44();

  v40 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
LABEL_34:
    v15 = sub_1D441A8C4();
  }

  else
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v11;
  v36 = a2;
  v37 = v10;
  v38 = a3;
  if (v15)
  {
    a2 = 0;
    a3 = v6 & 0xC000000000000001;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = 0x1E69B7000uLL;
    do
    {
      v11 = a2;
      while (1)
      {
        if (a3)
        {
          v16 = MEMORY[0x1DA6D6410](v11, v6);
        }

        else
        {
          if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v16 = *(v6 + 8 * v11 + 32);
        }

        v17 = v16;
        a2 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v11;
        if (a2 == v15)
        {
          goto LABEL_24;
        }
      }

      MEMORY[0x1DA6D5820]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D4419E94();
      }

      sub_1D4419EB4();
      v9 = v40;
    }

    while (a2 != v15);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_24:

  if (v9 >> 62)
  {
    v34 = sub_1D441A8C4();
    v25 = v37;
    v7 = v38;
    a2 = v35;
    v26 = v36;
    if (v34)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  v25 = v37;
  v7 = v38;
  a2 = v35;
  v26 = v36;
  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:

    return 0;
  }

LABEL_26:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1DA6D6410](0, v9);
    goto LABEL_29;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v9 + 32);
LABEL_29:
    v28 = v27;

    v29 = [v28 collaborationColorManager];
    v26(0);
    v30 = v39;
    sub_1D4417764();
    sub_1D4417C04();
    (*(a2 + 8))(v30, v25);
    v31 = sub_1D4419C14();

    v32 = [v29 highlightColorForUserID:v31 note:v28];

    if (v32)
    {
      v33 = _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();

      return v33;
    }

    return 0;
  }

  __break(1u);
LABEL_40:
  (a2)(0);
  sub_1D4417784();
  (*(v7 + 8))(v9, v6);
  result = sub_1D441ABC4();
  __break(1u);
  return result;
}

uint64_t ActivityStreamItemConvertible<>.activityItemHighlightColor(resolver:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_1D4417964();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D4417C84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + OBJC_IVAR___ActivityEventResolver_object))
  {
    goto LABEL_40;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (!v18)
    {
      goto LABEL_40;
    }

    v19 = v18;
    v20 = [v18 collaborationColorManager];
    v21 = v39;
    sub_1D4417764();
    sub_1D4417C04();
    (*(v11 + 8))(v21, v10);
    v22 = sub_1D4419C14();

    v23 = [v20 highlightColorForUserID:v22 note:v19];

    if (v23)
    {
      return _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();
    }

    return 0;
  }

  v14 = [v13 allChildCloudObjects];
  sub_1D43A0790();
  v6 = sub_1D4419E44();

  v40 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
LABEL_34:
    v15 = sub_1D441A8C4();
  }

  else
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v11;
  v36 = v10;
  v37 = a2;
  v38 = a3;
  if (v15)
  {
    v10 = 0;
    a2 = v6 & 0xC000000000000001;
    v9 = MEMORY[0x1E69E7CC0];
    a3 = 0x1E69B7000uLL;
    do
    {
      v11 = v10;
      while (1)
      {
        if (a2)
        {
          v16 = MEMORY[0x1DA6D6410](v11, v6);
        }

        else
        {
          if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v16 = *(v6 + 8 * v11 + 32);
        }

        v17 = v16;
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v11;
        if (v10 == v15)
        {
          goto LABEL_24;
        }
      }

      MEMORY[0x1DA6D5820]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D4419E94();
      }

      sub_1D4419EB4();
      v9 = v40;
    }

    while (v10 != v15);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_24:

  if (v9 >> 62)
  {
    v34 = sub_1D441A8C4();
    v7 = v38;
    v26 = v35;
    v25 = v36;
    if (v34)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  v7 = v38;
  v26 = v35;
  v25 = v36;
  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:

    return 0;
  }

LABEL_26:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1DA6D6410](0, v9);
    goto LABEL_29;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v9 + 32);
LABEL_29:
    v28 = v27;

    v29 = [v28 collaborationColorManager];
    v30 = v39;
    sub_1D4417764();
    sub_1D4417C04();
    (*(v26 + 8))(v30, v25);
    v31 = sub_1D4419C14();

    v32 = [v29 highlightColorForUserID:v31 note:v28];

    if (v32)
    {
      v33 = _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();

      return v33;
    }

    return 0;
  }

  __break(1u);
LABEL_40:
  sub_1D4417784();
  (*(v7 + 8))(v9, v6);
  result = sub_1D441ABC4();
  __break(1u);
  return result;
}

uint64_t sub_1D43A0674@<X0>(uint64_t a1@<X8>)
{
  sub_1D4417784();
  v2 = type metadata accessor for ActivityStream.Destinations();
  swift_storeEnumTagMultiPayload();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t ActivityStreamItemConvertible<>.activityItemDestination(resolver:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D4417784();
  v2 = type metadata accessor for ActivityStream.Destinations();
  swift_storeEnumTagMultiPayload();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

unint64_t sub_1D43A0790()
{
  result = qword_1EDE32710;
  if (!qword_1EDE32710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE32710);
  }

  return result;
}

uint64_t sub_1D43A07E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D439F730();
  v5 = MEMORY[0x1E69B71B0];

  return MEMORY[0x1EEE22FA0](a1, v4, a2, v5);
}

id ICNote.append(_:)(uint64_t a1)
{
  v2 = v1;
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D4417014();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D43191DC();
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_1D441A3B4();
  v11[0] = 0;
  LOBYTE(v2) = [v2 appendAttributedString:v8 error:v11];

  if (v2)
  {
    return v11[0];
  }

  v10 = v11[0];
  sub_1D4417104();

  return swift_willThrow();
}

id ICNote.append(_:options:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1D4417014();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D43191DC();
  (*(v7 + 16))(v9, a1, v6);
  v10 = sub_1D441A3B4();
  v13[0] = 0;
  LOBYTE(a2) = [v3 appendAttributedString:v10 options:a2 error:v13];

  if (a2)
  {
    return v13[0];
  }

  v12 = v13[0];
  sub_1D4417104();

  return swift_willThrow();
}

{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ([v2 appendAttributedString:a1 options:a2 error:v5])
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_1D4417104();

  return swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICNote.append(_:)(NSAttributedString a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if ([v1 appendAttributedString:a1.super.isa error:v4])
  {
    v2 = v4[0];
  }

  else
  {
    v3 = v4[0];
    sub_1D4417104();

    swift_willThrow();
  }
}

uint64_t ICNote.attributedString(for:range:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 attributedString];
  v5 = [v4 string];

  v6 = sub_1D4419C54();
  v8 = v7;

  v17 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9B8);
  sub_1D4398A14();
  sub_1D42CC920();
  v9 = sub_1D441A6F4();
  v11 = v10;
  v12 = sub_1D4417FD4();
  v13 = [v2 attributedStringForUTI:v12 inRange:{v9, v11, v17, v8}];

  if (v13)
  {
    sub_1D4417034();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_1D4417014();
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_1D43A0F34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  __swift_allocate_value_buffer(v0, qword_1EDE331D8);
  __swift_project_value_buffer(v0, qword_1EDE331D8);
  return sub_1D44172F4();
}

uint64_t static AssetThumbnailCache.currentVersionDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE331D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v3 = __swift_project_value_buffer(v2, qword_1EDE331D8);

  return sub_1D430BD0C(v3, a1);
}

id sub_1D43A118C()
{
  result = [objc_allocWithZone(type metadata accessor for AssetThumbnailCache()) init];
  qword_1EDE331C0 = result;
  return result;
}

id AssetThumbnailCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AssetThumbnailCache.shared.getter()
{
  if (qword_1EDE331B8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE331C0;

  return v1;
}

uint64_t AssetThumbnailCache.creationDate(for:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE331D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v3 = __swift_project_value_buffer(v2, qword_1EDE331D8);

  return sub_1D430BD0C(v3, a1);
}

id AssetThumbnailCache.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AssetThumbnailCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s7NotesUI19AssetThumbnailCacheCySo22ICThumbnailDescriptionCSgSo0F13ConfigurationCcig_0(void *a1)
{
  v2 = sub_1D4417234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AssetThumbnailCache();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = [a1 uniqueKey];
  sub_1D43A672C(v5);

  sub_1D44171B4();
  (*(v3 + 8))(v5, v2);
  v9 = [objc_allocWithZone(ICThumbnailDescription) initWithConfiguration_];
  v10 = v7;
  v11 = sub_1D4419C14();

  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10 withConfiguration:0];

  [v9 setImage_];
  [v9 setCached_];

  return v9;
}

uint64_t sub_1D43A19C0()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CBA28);
  __swift_project_value_buffer(v0, qword_1EC7CBA28);
  return sub_1D4418114();
}

uint64_t sub_1D43A1A0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR___ICSwiftSystemPaperImageGenerator_cachedPaper;
  swift_beginAccess();
  sub_1D43A1C04(v2 + v10, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1D43A1C74(v9);
    v13 = sub_1D4417A24();
    if (v13)
    {
      v14 = v13;
      MEMORY[0x1DA6D3440]();

      sub_1D43A1C04(a1, v7);
      swift_beginAccess();
      sub_1D43A1CDC(v7, v2 + v10);
      return swift_endAccess();
    }

    else
    {
      return (*(v12 + 56))(a1, 1, 1, v11);
    }
  }

  else
  {
    (*(v12 + 32))(a1, v9, v11);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_1D43A1C04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43A1C74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D43A1CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id ICSwiftSystemPaperImageGenerator.__allocating_init(paperAttachment:useActivePaper:)(void *a1, char a2)
{
  v4 = [objc_allocWithZone(v2) initWithPaperAttachment:a1 useActivePaper:a2 & 1];

  return v4;
}

id ICSwiftSystemPaperImageGenerator.init(paperAttachment:useActivePaper:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = OBJC_IVAR___ICSwiftSystemPaperImageGenerator_cachedPaper;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  if (a2)
  {
    sub_1D4417A44();
    v10 = [a1 objectID];
    sub_1D44179F4();

    swift_beginAccess();
    sub_1D43A1CDC(v7, &v2[v8]);
    swift_endAccess();
  }

  v11 = objc_allocWithZone(sub_1D4417A44());
  v12 = a1;
  *&v2[OBJC_IVAR___ICSwiftSystemPaperImageGenerator_document] = sub_1D4417A14();
  v13 = type metadata accessor for ICSwiftSystemPaperImageGenerator();
  v17.receiver = v2;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, sel_initWithPaperAttachment_useActivePaper_, v12, a2 & 1);
  [v14 setSixChannelBlendingEnabled_];

  return v14;
}

uint64_t type metadata accessor for ICSwiftSystemPaperImageGenerator()
{
  result = qword_1EDE32D28;
  if (!qword_1EDE32D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D43A1FD8()
{
  result = qword_1EDE324F0;
  if (!qword_1EDE324F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE324F0);
  }

  return result;
}

uint64_t sub_1D43A2134(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  *&v22 = &v51 - v21;
  v23 = OBJC_IVAR___ICSwiftSystemPaperImageGenerator_cachedPaper;
  swift_beginAccess();
  sub_1D43A1C04(v5 + v23, v16);
  v24 = *(v20 + 48);
  if (v24(v16, 1, v19) != 1)
  {
    v27 = *(v20 + 32);
    v27(v18, v16, v19);
    (*(v20 + 56))(v18, 0, 1, v19);
    v27(*&v22, v18, v19);
    goto LABEL_6;
  }

  sub_1D43A1C74(v16);
  v25 = sub_1D4417A24();
  if (!v25)
  {
    (*(v20 + 56))(v18, 1, 1, v19);
    goto LABEL_12;
  }

  v51 = v22;
  v26 = v25;
  MEMORY[0x1DA6D3440]();

  sub_1D43A1C04(v18, v13);
  swift_beginAccess();
  sub_1D43A1CDC(v13, v5 + v23);
  swift_endAccess();
  if (v24(v18, 1, v19) == 1)
  {
LABEL_12:
    sub_1D43A1C74(v18);
    return 0;
  }

  v22 = v51;
  (*(v20 + 32))(COERCE_CGFLOAT(*&v51), v18, v19);
LABEL_6:
  swift_getKeyPath();
  sub_1D44199E4();

  v28 = v54;
  v29 = v55;
  v30 = v56;
  v31 = v57;
  v58.origin.x = a1;
  v58.origin.y = a2;
  v58.size.width = a3;
  v58.size.height = a4;
  Height = CGRectGetHeight(v58);
  v53 = a3;
  v33 = Height;
  v59.origin.x = v28;
  v59.origin.y = v29;
  v59.size.width = v30;
  v59.size.height = v31;
  Width = CGRectGetWidth(v59);
  v35 = a1;
  v52 = a1;
  v36 = v33 * Width;
  v60.origin.x = v35;
  v60.origin.y = a2;
  v60.size.width = v53;
  v60.size.height = a4;
  v37 = a4;
  v38 = ceil(v36 / CGRectGetWidth(v60));
  v61.origin.x = v28;
  v61.origin.y = v29;
  v61.size.width = v30;
  v61.size.height = v31;
  v39 = CGRectGetHeight(v61);
  if (v39 >= v38)
  {
    v39 = v38;
  }

  v51 = v39;
  v62.origin.x = v28;
  v62.origin.y = v29;
  v62.size.width = v30;
  v62.size.height = v31;
  MinX = CGRectGetMinX(v62);
  v63.origin.x = v28;
  v63.origin.y = v29;
  v63.size.width = v30;
  v63.size.height = v31;
  MinY = CGRectGetMinY(v63);
  v64.origin.x = v28;
  v64.origin.y = v29;
  v64.size.width = v30;
  v42 = v53;
  v64.size.height = v31;
  v43 = CGRectGetWidth(v64);
  v65.origin.x = v52;
  v44 = v52;
  v65.origin.y = a2;
  v65.size.width = v42;
  v65.size.height = v37;
  v45 = CGRectGetWidth(v65);
  v46 = sub_1D43A2648(v45, 2.0, MinX, MinY, v43, v51);
  if (v46)
  {
    v47 = v46;
    [v46 size];
    v68.size.width = v48;
    v68.size.height = v49;
    v66.origin.x = v44;
    v66.origin.y = a2;
    v66.size.width = v42;
    v66.size.height = v37;
    v68.origin.x = v44;
    v68.origin.y = a2;
    v67 = CGRectIntersection(v66, v68);
    [v47 drawInRect_];

    (*(v20 + 8))(COERCE_DOUBLE(*&v22), v19);
    return 1;
  }

  (*(v20 + 8))(COERCE_DOUBLE(*&v22), v19);
  return 0;
}

id sub_1D43A2648(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v52 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = (v52 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v57 = v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v60 = v52 - v27;
  v28 = OBJC_IVAR___ICSwiftSystemPaperImageGenerator_cachedPaper;
  swift_beginAccess();
  sub_1D43A1C04(v7 + v28, v20);
  v29 = *(v24 + 48);
  v30 = v29(v20, 1, v23);
  v59 = v24;
  if (v30 == 1)
  {
    sub_1D43A1C74(v20);
    v31 = sub_1D4417A24();
    if (!v31)
    {
LABEL_8:
      (*(v24 + 56))(v22, 1, 1, v23);
      goto LABEL_9;
    }

    v32 = v31;
    MEMORY[0x1DA6D3440]();

    sub_1D43A1C04(v22, v17);
    swift_beginAccess();
    sub_1D43A1CDC(v17, v7 + v28);
    swift_endAccess();
    if (v29(v22, 1, v23) == 1)
    {
LABEL_9:
      sub_1D43A1C74(v22);
      return 0;
    }

    v33 = v59;
    v34 = *(v59 + 32);
    v35 = (v59 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  }

  else
  {
    v34 = *(v24 + 32);
    v35 = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v34(v22, v20, v23);
    (*(v24 + 56))(v22, 0, 1, v23);
    v33 = v24;
  }

  v52[0] = v34;
  v52[1] = v35;
  v34(v60, v22, v23);
  v63.origin.x = a3;
  v63.origin.y = a4;
  v63.size.width = a5;
  v63.size.height = a6;
  v36 = a1 / CGRectGetWidth(v63);
  v64.origin.x = a3;
  v64.origin.y = a4;
  v64.size.width = a5;
  v64.size.height = a6;
  v37 = ceil(v36 * CGRectGetHeight(v64));
  v56 = [v7 validatePaperBounds_] ^ 1;
  v65.origin.x = a3;
  v65.origin.y = a4;
  v65.size.width = a5;
  v65.size.height = a6;
  Height = CGRectGetHeight(v65);
  CGAffineTransformMakeScale(&v62, v37 / Height, v37 / Height);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = fmin(a6, 512.0);
  sub_1D43A1FD8();
  v39 = [swift_getObjCClassFromMetadata() preferredFormat];
  [v39 setScale_];
  [v39 setPreferredRange_];
  sub_1D44196B4();
  v40 = v39;
  v55 = v40;
  v53 = sub_1D4419694();
  [v7 isSixChannelBlendingEnabled];
  sub_1D4419674();
  v54 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v40 format:{a1, v37}];
  v41 = v57;
  (*(v33 + 16))(v57, v60, v23);
  v42 = (*(v33 + 80) + 144) & ~*(v33 + 80);
  v43 = (v25 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v56;
  *(v44 + 24) = a1;
  *(v44 + 32) = v37;
  *(v44 + 40) = v22;
  *(v44 + 48) = a3;
  *(v44 + 56) = a4;
  *(v44 + 64) = a5;
  *(v44 + 72) = a6;
  *(v44 + 80) = 0;
  v45 = *&v62.c;
  *(v44 + 88) = *&v62.a;
  *(v44 + 104) = v45;
  *(v44 + 120) = *&v62.tx;
  *(v44 + 136) = v53;
  (v52[0])(v44 + v42, v41, v23);
  *(v44 + v43) = v7;
  *(v44 + v24) = 0x4080000000000000;
  *(v44 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1D43A43C0;
  *(v46 + 24) = v44;
  aBlock[4] = sub_1D43A44A0;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D4402354;
  aBlock[3] = &block_descriptor_22;
  v47 = _Block_copy(aBlock);

  v48 = v7;

  v49 = v54;
  v50 = [v54 imageWithActions_];
  _Block_release(v47);

  (*(v59 + 8))(v60, v23);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
    goto LABEL_8;
  }

  return v50;
}

uint64_t sub_1D43A2D78(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;

  return sub_1D441A4D4();
}

void sub_1D43A2DD8(void *a1, char a2, CGFloat *a3, double *a4, uint64_t a5, uint64_t a6, void *a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, double a14, double a15)
{
  v72 = a6;
  v71 = a5;
  v64 = a15;
  v70 = a14;
  v69 = *(a4 + 1);
  v68 = *a4;
  v67 = a4[4];
  v66 = a4[5];
  v65 = sub_1D44194A4();
  v25 = *(v65 - 8);
  v26 = MEMORY[0x1EEE9AC00](v65);
  v28 = v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v61 - v29;
  v63 = [a1 CGContext];
  if (a2)
  {
    if ([objc_opt_self() showInternalInstallUI])
    {
      GenericRGB = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 1.0);
      CGContextSetFillColorWithColor(v63, GenericRGB);

      v79.origin.x = 0.0;
      v79.origin.y = 0.0;
      v79.size.width = a8;
      v79.size.height = a9;
      CGContextFillRect(v63, v79);
    }

    v32 = v63;
  }

  else
  {
    v62 = a7;
    v61[1] = OBJC_IVAR___ICSwiftSystemPaperImageGenerator_document;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v33 = a3[3];
    v80.origin.x = a10;
    v80.origin.y = a11;
    v80.size.width = a12;
    v80.size.height = a13;
    if (v33 < CGRectGetMaxY(v80))
    {
      v34 = (v25 + 8);
      while (1)
      {
        v73 = objc_autoreleasePoolPush();
        v82.origin.x = a3[2];
        v82.size.width = a3[4];
        v82.size.height = a3[5];
        v82.origin.y = a3[3] - v70;
        *&v74.c = v69;
        *&v74.a = v68;
        v74.tx = v67;
        v74.ty = v66;
        v83 = CGRectApplyAffineTransform(v82, &v74);
        x = v83.origin.x;
        y = v83.origin.y;
        width = v83.size.width;
        height = v83.size.height;
        v40 = swift_allocObject();
        *(v40 + 16) = 0;
        v41 = (v40 + 16);
        v42 = dispatch_semaphore_create(0);
        v43 = *(a3 + 2);
        v75 = *(a3 + 1);
        v76 = v43;
        v77 = 0;
        v44 = swift_allocObject();
        *(v44 + 16) = v40;
        *(v44 + 24) = v42;

        v45 = v42;
        sub_1D44196A4();

        sub_1D4419494();
        sub_1D44194F4();
        v46 = *v34;
        v47 = v65;
        (*v34)(v28, v65);
        sub_1D441A4C4();
        v46(v30, v47);
        if (sub_1D4419424())
        {
          break;
        }

        swift_beginAccess();
        if (*v41)
        {
          v48 = *v41;
          [v48 drawInRect_];
        }

        a3[3] = a3[3] + v64;

        objc_autoreleasePoolPop(v73);
        v35 = a3[3];
        v81.origin.x = a10;
        v81.origin.y = a11;
        v81.size.width = a12;
        v81.size.height = a13;
        if (v35 >= CGRectGetMaxY(v81))
        {
          goto LABEL_18;
        }
      }

      if (qword_1EC7C9250 != -1)
      {
        swift_once();
      }

      v49 = sub_1D44181B4();
      __swift_project_value_buffer(v49, qword_1EC7CBA28);
      v50 = v62;
      v51 = sub_1D44181A4();
      v52 = sub_1D441A164();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = COERCE_DOUBLE(swift_slowAlloc());
        v74.a = v54;
        *v53 = 136315138;
        v55 = sub_1D4417A04();
        v56 = [v55 loggingDescription];

        v57 = sub_1D4419C54();
        v59 = v58;

        v60 = sub_1D42E9410(v57, v59, &v74);

        *(v53 + 4) = v60;
        _os_log_impl(&dword_1D4171000, v51, v52, "Timed out while generating tile; bailing {attachment: %s}", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(*&v54);
        MEMORY[0x1DA6D8690](*&v54, -1, -1);
        MEMORY[0x1DA6D8690](v53, -1, -1);
      }

      objc_autoreleasePoolPop(v73);
    }

LABEL_18:
  }
}

double sub_1D43A34C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR___ICSwiftSystemPaperImageGenerator_cachedPaper;
  swift_beginAccess();
  sub_1D43A1C04(v1 + v15, v8);
  v16 = *(v12 + 48);
  if (v16(v8, 1, v11) != 1)
  {
    v20 = *(v12 + 32);
    v20(v10, v8, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v20(v14, v10, v11);
    goto LABEL_6;
  }

  sub_1D43A1C74(v8);
  v17 = sub_1D4417A24();
  if (!v17)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_8;
  }

  v25 = v5;
  v18 = v17;
  MEMORY[0x1DA6D3440]();

  v19 = v25;
  sub_1D43A1C04(v10, v25);
  swift_beginAccess();
  sub_1D43A1CDC(v19, v1 + v15);
  swift_endAccess();
  if (v16(v10, 1, v11) == 1)
  {
LABEL_8:
    sub_1D43A1C74(v10);
    return *MEMORY[0x1E695F050];
  }

  (*(v12 + 32))(v14, v10, v11);
LABEL_6:
  sub_1D4419A24();
  v22 = v21;
  (*(v12 + 8))(v14, v11);
  return v22;
}

BOOL sub_1D43A3824()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR___ICSwiftSystemPaperImageGenerator_cachedPaper;
  swift_beginAccess();
  sub_1D43A1C04(v1 + v15, v8);
  v16 = *(v12 + 48);
  if (v16(v8, 1, v11) != 1)
  {
    v20 = *(v12 + 32);
    v20(v10, v8, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v20(v14, v10, v11);
    goto LABEL_6;
  }

  sub_1D43A1C74(v8);
  v17 = sub_1D4417A24();
  if (!v17)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_10;
  }

  v25 = v5;
  v18 = v17;
  MEMORY[0x1DA6D3440]();

  v19 = v25;
  sub_1D43A1C04(v10, v25);
  swift_beginAccess();
  sub_1D43A1CDC(v19, v1 + v15);
  swift_endAccess();
  if (v16(v10, 1, v11) == 1)
  {
LABEL_10:
    sub_1D43A1C74(v10);
    return 0;
  }

  (*(v12 + 32))(v14, v10, v11);
LABEL_6:
  v21 = sub_1D4419A44();
  if (v21 >> 62)
  {
    v22 = sub_1D441A8C4();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v12 + 8))(v14, v11);
  return v22 != 0;
}

id ICSwiftSystemPaperImageGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICSwiftSystemPaperImageGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D43A3BD4(void *a1, void (**a2)(void, void), double a3, double a4, double a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  _Block_copy(a2);
  sub_1D43A1A0C(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D43A1C74(v14);
    a2[2](a2, 0);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_1D43A1FD8();
    v20 = [swift_getObjCClassFromMetadata() preferredFormat];
    [v20 setScale_];
    [v20 setPreferredRange_];
    sub_1D44196B4();
    v21 = v20;
    sub_1D4419694();
    [a1 isSixChannelBlendingEnabled];
    sub_1D4419674();
    *&v24[1] = a3;
    *&v24[2] = a4;
    *&v24[3] = a5;
    *&v24[4] = a6;
    v25 = 0;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1D43A43AC;
    *(v22 + 24) = v19;

    sub_1D44196A4();

    (*(v16 + 8))(v18, v15);
  }
}

id sub_1D43A3EB8(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v31[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v31[-v15];
  v16 = OBJC_IVAR___ICSwiftSystemPaperImageGenerator_cachedPaper;
  swift_beginAccess();
  sub_1D43A1C04(v2 + v16, v10);
  v17 = *(v14 + 48);
  if (v17(v10, 1, v13) == 1)
  {
    sub_1D43A1C74(v10);
    v18 = sub_1D4417A24();
    if (v18)
    {
      v32 = a1;
      v19 = v2;
      v20 = v18;
      MEMORY[0x1DA6D3440]();

      sub_1D43A1C04(v12, v7);
      swift_beginAccess();
      sub_1D43A1CDC(v7, v19 + v16);
      swift_endAccess();
      if (v17(v12, 1, v13) != 1)
      {
        v21 = *(v14 + 32);
        LOBYTE(a1) = v32;
        goto LABEL_6;
      }
    }

    else
    {
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    sub_1D43A1C74(v12);
    return 0;
  }

  v21 = *(v14 + 32);
  v21(v12, v10, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
LABEL_6:
  v22 = v33;
  v21(v33, v12, v13);
  swift_getKeyPath();
  sub_1D44199E4();

  v24 = v36;
  v23 = v37;
  if (v36 == 0.0 && v37 == 0.0)
  {
    v34 = 0.0;
    v35 = 0.0;
    v23 = 100.0;
    v24 = 100.0;
  }

  if (v24 > 1.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1.0;
  }

  if (v23 > 1.0)
  {
    v26 = v23;
  }

  else
  {
    v26 = 1.0;
  }

  if (a1)
  {
    v27 = 16384.0;
  }

  else
  {
    v27 = 1536.0;
  }

  v28 = v25;
  if (v26 > v27)
  {
    v28 = ceil(v25 * (v27 / v26));
  }

  v29 = sub_1D43A2648(v28, 2.0, v34, v35, v25, v26);
  (*(v14 + 8))(v22, v13);
  return v29;
}

void sub_1D43A425C()
{
  sub_1D43A4348();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D43A4348()
{
  if (!qword_1EDE32A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7C9F98);
    v0 = sub_1D441A784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE32A98);
    }
  }
}

void sub_1D43A43C0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98) - 8);
  v4 = (*(v3 + 80) + 144) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v13 = *(v1 + 72);
  v14 = *(v1 + 80);
  v15 = *(v1 + 136);
  v16 = *(v1 + v5);
  v17 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D43A2DD8(a1, v6, v9, (v1 + 88), v15, v1 + v4, v16, v7, v8, v10, v11, v12, v13, v14, v17);
}

id sub_1D43A44B4()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelAction_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D43A4558(_OWORD *a1, void *a2)
{
  v4 = a1[3];
  v16[2] = a1[2];
  v16[3] = v4;
  v16[4] = a1[4];
  v5 = a1[1];
  v16[0] = *a1;
  v16[1] = v5;
  v6 = *(v2 + 128);
  sub_1D431A328(a1, &v15);
  v7 = v6(v16);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBA60));
  v9 = v7;
  v10 = sub_1D43A56E0(v9);

  v11 = [a2 rootViewController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 ic_topViewController];

    [v13 presentViewController:v10 animated:1 completion:0];
  }

  return v9;
}

id sub_1D43A4658(_OWORD *a1, void *a2)
{
  v4 = a1[5];
  v16[4] = a1[4];
  v16[5] = v4;
  v16[6] = a1[6];
  v5 = a1[1];
  v16[0] = *a1;
  v16[1] = v5;
  v6 = a1[3];
  v16[2] = a1[2];
  v16[3] = v6;
  v7 = *(v2 + 128);
  sub_1D43A5804(a1, &v15);
  v8 = v7(v16);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBA58));
  v9 = v8;
  v10 = sub_1D43A56E0(v9);

  v11 = [a2 rootViewController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 ic_topViewController];

    [v13 presentViewController:v10 animated:1 completion:0];
  }

  return v9;
}

id sub_1D43A476C(_OWORD *a1, void *a2)
{
  v4 = a1[3];
  v16[2] = a1[2];
  v16[3] = v4;
  v16[4] = a1[4];
  v5 = a1[1];
  v16[0] = *a1;
  v16[1] = v5;
  v6 = *(v2 + 128);
  sub_1D43A5684(a1, &v15);
  v7 = v6(v16);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBA50));
  v9 = v7;
  v10 = sub_1D43A56E0(v9);

  v11 = [a2 rootViewController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 ic_topViewController];

    [v13 presentViewController:v10 animated:1 completion:0];
  }

  return v9;
}

Swift::Void __swiftcall LockedNotesWelcomeViewController.viewDidLoad()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  v2 = sub_1D43A44B4();
  [v1 setLeftBarButtonItem_];
}

void sub_1D43A48EC(void *a1)
{
  v4.receiver = a1;
  v4.super_class = swift_getObjectType();
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v2 = [v1 navigationItem];
  v3 = sub_1D43A44B4();
  [v2 setLeftBarButtonItem_];
}

uint64_t static LockedNotesWelcomeViewController.present(for:skipsAlerts:window:completion:)(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() sharedContext];
  if (v9 && (v10 = v9, v11 = [v9 managedObjectContext], v10, v11))
  {
    v12 = a1;
    __LockedNotesViewConfigurationAccount.init(account:)(v12, &v33);
    v13 = v33;
    v14 = v34;
    v29 = v35;
    v30 = *(&v33 + 1);
    v28 = v36;
    v26 = v38;
    v27 = v37;
    v15 = [objc_opt_self() allActiveAccountsInContext_];
    sub_1D43A4C08();
    v16 = sub_1D4419E44();

    if (v16 >> 62)
    {
      v17 = sub_1D441A8C4();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v17 > 1;
    v19 = swift_allocObject();
    *(v19 + 16) = a2 & 1;
    *(v19 + 24) = v32;
    *(v19 + 32) = a3;
    *(v19 + 40) = a4;
    *(v19 + 48) = a5;
    *(v19 + 56) = v12;
    v20 = swift_allocObject();
    *(v20 + 16) = v12;
    *(v20 + 24) = a3;
    LODWORD(v33) = v13;
    *(&v33 + 1) = v30;
    v34 = v14;
    v35 = v29;
    v36 = v28;
    v37 = v27;
    v38 = v26;
    v39 = v18;
    v40 = sub_1D43A501C;
    v41 = v19;
    v42 = sub_1D43A5230;
    v43 = v20;
    v21 = v12;
    v22 = a3;
    v23 = v21;
    v24 = v22;

    return sub_1D43A5238(&v33);
  }

  else
  {
    result = sub_1D441ABC4();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D43A4C08()
{
  result = qword_1EDE323C8;
  if (!qword_1EDE323C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE323C8);
  }

  return result;
}

void sub_1D43A4C54(uint64_t a1, char a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v25 = [objc_opt_self() customPasswordConfirmationAlert];
  if (a1 == 2)
  {
    v21 = [objc_opt_self() sharedMigrator];
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    *(v22 + 32) = a5;
    *(v22 + 40) = a6;
    *(v22 + 48) = 2;
    v30 = sub_1D43A58B4;
    v31 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1D4315880;
    v29 = &block_descriptor_23_0;
    v23 = _Block_copy(&aBlock);
    v24 = a4;

    [v21 presentBackwardsCompatibilityAlertIfNeededForAccount:a7 mode:2 window:v24 confirmHandler:v23 cancelHandler:0];

    _Block_release(v23);
  }

  else if (a1 == 1 && [v25 shouldPresent] && (a2 & 1) == 0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    *(v14 + 32) = a5;
    *(v14 + 40) = a6;
    *(v14 + 48) = 1;
    v30 = sub_1D43A591C;
    v31 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1D4315880;
    v29 = &block_descriptor_29;
    v15 = _Block_copy(&aBlock);
    v16 = a4;

    [v25 setActionHandler_];
    _Block_release(v15);
    [v25 presentInWindow:v16 completionHandler:0];
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a5;
    *(v17 + 24) = a6;
    *(v17 + 32) = a1;

    v18 = [a4 rootViewController];
    if (v18)
    {
      v19 = v18;
      v30 = sub_1D43A59CC;
      v31 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = sub_1D417BEE4;
      v29 = &block_descriptor_23;
      v20 = _Block_copy(&aBlock);

      [v19 dismissViewControllerAnimated:1 completion:v20];

      _Block_release(v20);
    }

    else
    {
      a5(a1);
    }
  }
}

void sub_1D43A5030(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  *(v14 + 32) = a6;

  v15 = [a3 rootViewController];
  if (v15)
  {
    v16 = v15;
    v18[4] = a8;
    v18[5] = v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1D417BEE4;
    v18[3] = a9;
    v17 = _Block_copy(v18);

    [v16 dismissViewControllerAnimated:1 completion:v17];

    _Block_release(v17);
  }

  else
  {
    a4(a6);
  }
}

uint64_t sub_1D43A5194(void *a1, void *a2)
{
  type metadata accessor for LockedNotesLearnMoreViewController();
  __LockedNotesViewConfigurationAccount.init(account:)(a1, &v11);
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  LockedNotesLearnMoreView.Configuration.init(account:)(&v5, v17);

  return sub_1D43A5860(v17);
}

uint64_t sub_1D43A528C(int a1, int a2, void *a3, char a4, void *a5, void *aBlock)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  swift_getObjCClassMetadata();
  v11 = a3;
  v12 = a5;
  static LockedNotesWelcomeViewController.present(for:skipsAlerts:window:completion:)(v11, a4, v12, sub_1D43A567C, v10);
}

uint64_t LockedNotesWelcomeViewController.cancelAction(_:)()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60) + 48);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

void sub_1D43A53B0(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1D441A804();
  swift_unknownObjectRelease();
  v3 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x60) + 48);
  if (v3)
  {
    v3(0);
  }

  __swift_destroy_boxed_opaque_existential_0(&v4);
}

id LockedNotesWelcomeViewController.__allocating_init(configuration:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68)) = 0;
  *(v3 + *((*v4 & *v3) + 0x70)) = 0;
  *(v3 + *((*v4 & *v3) + 0x78)) = 0;
  v5 = (v3 + *((*v4 & *v3) + 0x60));
  v6 = a1[3];
  v5[2] = a1[2];
  v5[3] = v6;
  v5[4] = a1[4];
  v7 = a1[1];
  *v5 = *a1;
  v5[1] = v7;
  v9.receiver = v3;
  v9.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBA48);
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

id LockedNotesWelcomeViewController.init(configuration:)(_OWORD *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68)) = 0;
  *(v1 + *((*v2 & *v1) + 0x70)) = 0;
  *(v1 + *((*v2 & *v1) + 0x78)) = 0;
  v3 = (v1 + *((*v2 & *v1) + 0x60));
  v4 = a1[4];
  v3[3] = a1[3];
  v3[4] = v4;
  v5 = a1[2];
  v3[1] = a1[1];
  v3[2] = v5;
  *v3 = *a1;
  v7.receiver = v1;
  v7.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBA48);
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id LockedNotesWelcomeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D43A56E0(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[qword_1EDE33698] = 1;
  *&v1[qword_1EDE336A0] = a1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v11, sel_initWithRootViewController_, a1);
  v5 = objc_opt_self();
  v6 = v4;
  if ([v5 ic_isVision])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v6 setModalPresentationStyle_];
  v8 = [v6 presentationController];
  if (v8)
  {
    v9 = v8;
    [v8 setDelegate_];
  }

  [v6 setPreferredContentSize_];

  return v6;
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 50, 7);
}

uint64_t sub_1D43A59E8(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1D43A5C30, v4);
}

void sub_1D43A5A7C(uint64_t a1, uint64_t a2)
{
  sub_1D41766C0(0, &unk_1EDE32910);
  v3 = sub_1D4419E24();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1D43A5AF8(void (*a1)(void))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  (*(v4 + 48))(v3, v4);
  (*(v4 + 40))(v3, v4);
  a1();
}

uint64_t ShareActivityEvent.activityItemIdParts.getter()
{
  v0 = sub_1D4417C84();
  v22 = *(v0 - 8);
  v23 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D4417964();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4417434();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D4435D30;
  sub_1D4417904();
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  MEMORY[0x1DA6D5730](0x2865746144, 0xE500000000000000);
  sub_1D44173D4();
  sub_1D441A044();
  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v11 = v24[0];
  v12 = v24[1];
  (*(v7 + 8))(v9, v6);
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1D44178F4();
  strcpy(v24, "Object(");
  v24[1] = 0xE700000000000000;
  v13 = sub_1D4417914();
  MEMORY[0x1DA6D5730](v13);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v14 = v24[0];
  v15 = v24[1];
  (*(v3 + 8))(v5, v21);
  *(v10 + 48) = v14;
  *(v10 + 56) = v15;
  sub_1D44178E4();
  strcpy(v24, "Participant(");
  BYTE5(v24[1]) = 0;
  HIWORD(v24[1]) = -5120;
  v16 = sub_1D4417C04();
  MEMORY[0x1DA6D5730](v16);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v17 = v24[0];
  v18 = v24[1];
  (*(v22 + 8))(v2, v23);
  *(v10 + 64) = v17;
  *(v10 + 72) = v18;
  return v10;
}

uint64_t ShareActivityEvent.activityItemTitle(resolver:)(uint64_t a1)
{
  v18 = a1;
  v19 = sub_1D4417C84();
  v16 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D4417C64();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D4417954();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D4417964();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D44178F4();
  sub_1D4417934();
  (*(v10 + 8))(v12, v9);
  sub_1D44178E4();
  sub_1D439F730();
  sub_1D4417C74();
  (*(v16 + 8))(v2, v19);
  v13 = sub_1D4350C3C(v8, v5);
  (*(v3 + 8))(v5, v17);
  (*(v6 + 8))(v8, v15);
  return v13;
}

uint64_t ShareActivityEvent.activityItemDestination(resolver:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ActivityStream.Destinations();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D43A62DC(uint64_t a1)
{
  v18 = a1;
  v19 = sub_1D4417C84();
  v16 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D4417C64();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D4417954();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D4417964();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D44178F4();
  sub_1D4417934();
  (*(v10 + 8))(v12, v9);
  sub_1D44178E4();
  sub_1D439F730();
  sub_1D4417C74();
  (*(v16 + 8))(v2, v19);
  v13 = sub_1D4350C3C(v8, v5);
  (*(v3 + 8))(v5, v17);
  (*(v6 + 8))(v8, v15);
  return v13;
}

uint64_t sub_1D43A65D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ActivityStream.Destinations();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double UIColor.components.getter()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v3 = 0;
  v4 = 0;
  v2 = 0;
  [v0 getRed:v5 green:&v4 blue:&v3 alpha:&v2];
  return *v5;
}

uint64_t sub_1D43A6744@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v18[0] = sub_1D4418034();
  v3 = *(v18[0] - 8);
  MEMORY[0x1EEE9AC00](v18[0]);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4417234();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  ThumbnailKey.containerUrl.getter(v10);
  v13 = sub_1D4419C14();
  v14 = [v13 ic_sanitizedFilenameString];

  sub_1D4419C54();
  sub_1D44171E4();

  v15 = *(v7 + 8);
  v16 = v15(v10, v6);
  a1(v16);
  sub_1D4417FE4();
  (*(v3 + 8))(v5, v18[0]);
  sub_1D44171F4();

  return v15(v12, v6);
}

uint64_t ThumbnailKey.containerUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1D4417234();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v31 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v31 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v31 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - v17;
  if (*(v2 + OBJC_IVAR___ICThumbnailKey_accountId + 8))
  {
    v31[1] = *(v2 + OBJC_IVAR___ICThumbnailKey_accountId);
    v19 = [objc_opt_self() sharedInstance];
    v20 = sub_1D4419C14();
    v21 = [v19 applicationDocumentsURLForAccountIdentifier_];
    v32 = v2;
    v22 = v21;

    sub_1D4417214();
    sub_1D4419C54();
    sub_1D44171E4();

    v23 = *(v4 + 8);
    v23(v10, v3);
    sub_1D44171E4();
    v23(v13, v3);
    sub_1D4419C54();
    sub_1D44171E4();

    v23(v16, v3);
    if (*(v32 + OBJC_IVAR___ICThumbnailKey_objectId + 8))
    {
      v24 = sub_1D4419C14();
      v25 = [v24 ic_sanitizedFilenameString];

      sub_1D4419C54();
    }

    sub_1D44171E4();

    return (v23)(v18, v3);
  }

  else
  {
    v26 = [objc_opt_self() applicationDocumentsURL];
    sub_1D4417214();

    sub_1D4419C54();
    sub_1D44171E4();

    v27 = *(v4 + 8);
    v27(v16, v3);
    if (*(v2 + OBJC_IVAR___ICThumbnailKey_objectId + 8))
    {
      v28 = sub_1D4419C14();
      v29 = [v28 ic_sanitizedFilenameString];

      sub_1D4419C54();
    }

    sub_1D44171E4();

    return (v27)(v7, v3);
  }
}

id ThumbnailKey.__allocating_init(type:accountId:objectId:preferredSize:scale:appearance:)(uint64_t a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v18 = objc_allocWithZone(v10);
  if (!a6)
  {
    v19 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v19 = sub_1D4419C14();

  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = sub_1D4419C14();

LABEL_6:
  LODWORD(v23) = 0;
  v21 = [v18 initWithType:a1 accountId:v19 objectId:v20 preferredSize:a9 scale:0 appearance:0 isRTL:a2 contentSizeCategory:a3 hasBoldText:a4 hasButtonShapes:v23 hasDarkerSystemColors:? hasBorder:?];

  return v21;
}

uint64_t ThumbnailKey.accountId.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_accountId);

  return v1;
}

id sub_1D43A6F6C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_1D4419C14();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t ThumbnailKey.objectId.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_objectId);

  return v1;
}

uint64_t ThumbnailKey.thumbnailId.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId);

  return v1;
}

id ThumbnailKey.__allocating_init(accountId:objectId:thumbnailId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___ICThumbnailKey_accountId];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR___ICThumbnailKey_objectId];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR___ICThumbnailKey_thumbnailId];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id ThumbnailKey.init(accountId:objectId:thumbnailId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR___ICThumbnailKey_accountId];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR___ICThumbnailKey_objectId];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR___ICThumbnailKey_thumbnailId];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

id ThumbnailKey.init(accountId:objectId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_1D4419C14();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_1D4419C14();

LABEL_6:
  v8 = sub_1D4419C14();
  v9 = [v4 initWithAccountId:v6 objectId:v7 thumbnailId:v8];

  return v9;
}