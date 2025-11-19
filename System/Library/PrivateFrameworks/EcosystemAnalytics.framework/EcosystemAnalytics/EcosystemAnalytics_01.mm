uint64_t sub_249F87574(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB58, &qword_249F9BBB8);
  v52 = a2;
  result = sub_249F9ADA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v50 = v3;
    v51 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = *(v5 + 56);
      v27 = (*(v5 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = (v26 + 120 * v25);
      if (v52)
      {
        v53 = v30[1];
        v54 = *v30;
        v31 = *(v30 + 6);
        v68 = *(v30 + 5);
        v69 = v31;
        v70 = v30[14];
        v32 = *(v30 + 2);
        v64 = *(v30 + 1);
        v65 = v32;
        v34 = *(v30 + 3);
        v33 = *(v30 + 4);
      }

      else
      {
        v36 = *(v30 + 2);
        v35 = *(v30 + 3);
        v37 = *(v30 + 1);
        v56 = *v30;
        v57 = v37;
        v58 = v36;
        v39 = *(v30 + 5);
        v38 = *(v30 + 6);
        v40 = *(v30 + 4);
        v63 = v30[14];
        v61 = v39;
        v62 = v38;
        v59 = v35;
        v60 = v40;
        v53 = *(&v56 + 1);
        v54 = v56;

        sub_249F85EC4(&v56, v55);
        v68 = v61;
        v69 = v62;
        v70 = v63;
        v64 = v57;
        v65 = v58;
        v34 = v59;
        v33 = v60;
      }

      v66 = v34;
      v67 = v33;
      v41 = *(v8 + 40);
      sub_249F9AE64();
      sub_249F9AA34();
      result = sub_249F9AE84();
      v42 = -1 << *(v8 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v15 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v15 + 8 * v44);
          if (v48 != -1)
          {
            v16 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v43) & ~*(v15 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v28;
      v17[1] = v29;
      v18 = *(v8 + 56) + 120 * v16;
      *v18 = v54;
      *(v18 + 8) = v53;
      v19 = v69;
      *(v18 + 80) = v68;
      *(v18 + 96) = v19;
      *(v18 + 112) = v70;
      v20 = v65;
      *(v18 + 16) = v64;
      *(v18 + 32) = v20;
      v21 = v67;
      *(v18 + 48) = v66;
      *(v18 + 64) = v21;
      ++*(v8 + 16);
      v5 = v51;
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_36;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v10, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_249F878DC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_249F9ACE4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_249F9AE64();

      sub_249F9AA34();
      v13 = sub_249F9AE84();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_249F87A8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249F86B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_249F86F08(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_249F86B30(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_249F9AE04();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_249F882AC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 104 * v11;

    return sub_249F885F8(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 104 * v11;
  v27 = *a1;
  v28 = *(a1 + 32);
  *(v26 + 16) = *(a1 + 16);
  *(v26 + 32) = v28;
  *v26 = v27;
  v29 = *(a1 + 48);
  v30 = *(a1 + 64);
  v31 = *(a1 + 80);
  *(v26 + 96) = *(a1 + 96);
  *(v26 + 64) = v30;
  *(v26 + 80) = v31;
  *(v26 + 48) = v29;
  v32 = v22[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v33;
}

uint64_t sub_249F87C34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249F86B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_249F86C60(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_249F86B30(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_249F9AE04();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_249F8813C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_249F87DB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249F86B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_249F872D0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_249F86B30(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_249F9AE04();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_249F8848C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_249F87F28(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249F86B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_249F87574(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_249F86B30(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_249F9AE04();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_249F88654();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 120 * v11;

    return sub_249F8883C(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 120 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  v29 = *(a1 + 48);
  *(v26 + 32) = *(a1 + 32);
  *(v26 + 48) = v29;
  *v26 = v27;
  *(v26 + 16) = v28;
  v30 = *(a1 + 64);
  v31 = *(a1 + 80);
  v32 = *(a1 + 96);
  *(v26 + 112) = *(a1 + 112);
  *(v26 + 80) = v31;
  *(v26 + 96) = v32;
  *(v26 + 64) = v30;
  v33 = v22[2];
  v15 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v34;
}

unint64_t sub_249F880D0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 104 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 96) = *(a4 + 96);
  v8 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v8;
  v9 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v9;
  v10 = a5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v12;
  }

  return result;
}

void *sub_249F8813C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CBB0, &qword_249F9BC08);
  v2 = *v0;
  v3 = sub_249F9AD94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_249F882AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB68, &unk_249F9BF30);
  v2 = *v0;
  v3 = sub_249F9AD94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_249F80718(&v35, v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 104;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 64);
      v22 = *(v21 + 80);
      v24 = *(v21 + 48);
      v41 = *(v21 + 96);
      v39 = v23;
      v40 = v22;
      v38 = v24;
      v26 = *(v21 + 16);
      v25 = *(v21 + 32);
      v35 = *v21;
      v36 = v26;
      v37 = v25;
      v27 = (*(v4 + 48) + v17);
      *v27 = v20;
      v27[1] = v19;
      v28 = *(v4 + 56) + v16;
      v29 = v35;
      v30 = v37;
      *(v28 + 16) = v36;
      *(v28 + 32) = v30;
      *v28 = v29;
      v31 = v38;
      v32 = v39;
      v33 = v40;
      *(v28 + 96) = v41;
      *(v28 + 64) = v32;
      *(v28 + 80) = v33;
      *(v28 + 48) = v31;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_249F8848C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB90, &unk_249F9BBF0);
  v2 = *v0;
  v3 = sub_249F9AD94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_249F88654()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB58, &qword_249F9BBB8);
  v2 = *v0;
  v3 = sub_249F9AD94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_249F85EC4(&v37, v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 120;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 80);
      v22 = *(v21 + 96);
      v24 = *(v21 + 64);
      v44 = *(v21 + 112);
      v42 = v23;
      v43 = v22;
      v41 = v24;
      v26 = *v21;
      v25 = *(v21 + 16);
      v27 = *(v21 + 48);
      v39 = *(v21 + 32);
      v40 = v27;
      v37 = v26;
      v38 = v25;
      v28 = (*(v4 + 48) + v17);
      *v28 = v20;
      v28[1] = v19;
      v29 = *(v4 + 56) + v16;
      v30 = v37;
      v31 = v38;
      v32 = v40;
      *(v29 + 32) = v39;
      *(v29 + 48) = v32;
      *v29 = v30;
      *(v29 + 16) = v31;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      *(v29 + 112) = v44;
      *(v29 + 80) = v34;
      *(v29 + 96) = v35;
      *(v29 + 64) = v33;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_249F888B8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_18EcosystemAnalytics11BinaryImageVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_249F88A54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249F88A9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249F88B1C()
{
  v1 = *v0;
  sub_249F9AE64();
  MEMORY[0x24C20A630](v1);
  return sub_249F9AE84();
}

uint64_t sub_249F88B90()
{
  v1 = *v0;
  sub_249F9AE64();
  MEMORY[0x24C20A630](v1);
  return sub_249F9AE84();
}

uint64_t sub_249F88BD4()
{
  if (sub_249F9AAD4() & 1) != 0 || (sub_249F9AAD4())
  {
    return 0;
  }

  if (sub_249F9AAD4())
  {
    return 1;
  }

  if (sub_249F9AAD4())
  {
    return 2;
  }

  if (sub_249F9AAD4())
  {
    return 3;
  }

  if (sub_249F9AAD4())
  {
    return 4;
  }

  return 5;
}

uint64_t getEnumTagSinglePayload for CoreAnalyticsLocation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreAnalyticsLocation(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_249F88E80()
{
  result = qword_27EF2CD88;
  if (!qword_27EF2CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CD88);
  }

  return result;
}

uint64_t sub_249F88ED4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v139 = a5;
  v140 = a6;
  LODWORD(v158) = a4;
  v159 = a3;
  v160 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v121 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v121 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v121 - v18;
  v20 = type metadata accessor for TargetType(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v162 = v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v121 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v161 = v121 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = (v121 - v30);
  sub_249F7A228(a1, v121 - v30);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_249F8065C(v31);
    sub_249F9ABA4();
    v160 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v32 = sub_249F9AC64();
    sub_249F9A874();

    sub_249F7A228(a1, v19);
    (*(v21 + 56))(v19, 0, 1, v20);
    sub_249F805EC(v19, v17);
    v33 = *(v21 + 48);
    v34 = v33(v17, 1, v20);
    v157 = v19;
    if (v34 == 1)
    {
      v35 = v161;
      swift_storeEnumTagMultiPayload();
      if (v33(v17, 1, v20) != 1)
      {
        sub_249F7A1C0(v17);
      }
    }

    else
    {
      v35 = v161;
      sub_249F7A2F8(v17, v161);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_249F9B940;
    *(v44 + 32) = 0x74536E6F6D656164;
    *(v44 + 40) = 0xEB00000000657461;
    *(v44 + 48) = sub_249F9A9A4();
    *(v44 + 56) = 0xD000000000000012;
    *(v44 + 64) = 0x8000000249F9CCF0;
    *(v44 + 72) = sub_249F9A9A4();
    *(v44 + 80) = 0x546572756C696166;
    *(v44 + 88) = 0xEB00000000657079;
    *(v44 + 96) = sub_249F9A9A4();
    strcpy((v44 + 104), "targetBundleID");
    *(v44 + 119) = -18;
    *(v44 + 120) = sub_249F9A9A4();
    *(v44 + 128) = 0xD000000000000013;
    *(v44 + 136) = 0x8000000249F9CD10;
    *(v44 + 144) = sub_249F9A9A4();
    *(v44 + 152) = 0x614E746567726174;
    *(v44 + 160) = 0xEA0000000000656DLL;
    *(v44 + 168) = sub_249F9A9A4();
    *(v44 + 176) = 0x6150746567726174;
    *(v44 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75);
    v45 = sub_249F9A9A4();

    *(v44 + 192) = v45;
    *(v44 + 200) = 0x7954746567726174;
    *(v44 + 208) = 0xEA00000000006570;
    v46 = v35;
    sub_249F7A228(v35, v162);
    sub_249F9AA14();
    v47 = sub_249F9A9A4();

    *(v44 + 216) = v47;
    *(v44 + 224) = 1701869940;
    *(v44 + 232) = 0xE400000000000000;
    *(v44 + 240) = sub_249F9AB64();
    strcpy((v44 + 248), "failureRetries");
    *(v44 + 263) = -18;
    *(v44 + 264) = sub_249F9AB64();
    v48 = sub_249F791D4(v44);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v49 = sub_249F9ABA4();
    v50 = sub_249F9AC64();
    if (os_log_type_enabled(v50, v49))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v164[0] = v52;
      *v51 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v53 = sub_249F9A974();
      v55 = sub_249F78A30(v53, v54, v164);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_249F74000, v50, v49, "Sending failure analysis event: %s)", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C20AE50](v52, -1, -1);
      MEMORY[0x24C20AE50](v51, -1, -1);
    }

    v56 = v157;
    v57 = sub_249F9A9A4();
    v58 = swift_allocObject();
    *(v58 + 16) = v48;
    v164[4] = sub_249F7ABC0;
    v164[5] = v58;
    v164[0] = MEMORY[0x277D85DD0];
    v164[1] = 1107296256;
    v164[2] = sub_249F77EF4;
    v164[3] = &block_descriptor_14;
    v59 = _Block_copy(v164);

    AnalyticsSendEventLazy();
    _Block_release(v59);

    sub_249F8065C(v46);
    v60 = v56;
    return sub_249F7A1C0(v60);
  }

  v36 = v158;
  v157 = v27;
  v161 = v14;
  v38 = *v31;
  v37 = v31[1];
  v39 = v159;
  if (v160())
  {

    sub_249F9ABA4();
    v160 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v40 = sub_249F9AC64();
    sub_249F9A874();

    v41 = v161;
    sub_249F7A228(a1, v161);
    (*(v21 + 56))(v41, 0, 1, v20);
    sub_249F805EC(v41, v11);
    v42 = *(v21 + 48);
    if (v42(v11, 1, v20) == 1)
    {
      v43 = v157;
      swift_storeEnumTagMultiPayload();
      if (v42(v11, 1, v20) != 1)
      {
        sub_249F7A1C0(v11);
      }
    }

    else
    {
      v43 = v157;
      sub_249F7A2F8(v11, v157);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_249F9B940;
    *(v66 + 32) = 0x74536E6F6D656164;
    *(v66 + 40) = 0xEB00000000657461;
    *(v66 + 48) = sub_249F9A9A4();
    *(v66 + 56) = 0xD000000000000012;
    *(v66 + 64) = 0x8000000249F9CCF0;
    *(v66 + 72) = sub_249F9A9A4();
    *(v66 + 80) = 0x546572756C696166;
    *(v66 + 88) = 0xEB00000000657079;
    *(v66 + 96) = sub_249F9A9A4();
    strcpy((v66 + 104), "targetBundleID");
    *(v66 + 119) = -18;
    *(v66 + 120) = sub_249F9A9A4();
    *(v66 + 128) = 0xD000000000000013;
    *(v66 + 136) = 0x8000000249F9CD10;
    *(v66 + 144) = sub_249F9A9A4();
    *(v66 + 152) = 0x614E746567726174;
    *(v66 + 160) = 0xEA0000000000656DLL;
    *(v66 + 168) = sub_249F9A9A4();
    *(v66 + 176) = 0x6150746567726174;
    *(v66 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75);
    v67 = sub_249F9A9A4();

    *(v66 + 192) = v67;
    *(v66 + 200) = 0x7954746567726174;
    *(v66 + 208) = 0xEA00000000006570;
    v68 = v43;
    sub_249F7A228(v43, v162);
    sub_249F9AA14();
    v69 = sub_249F9A9A4();

    *(v66 + 216) = v69;
    *(v66 + 224) = 1701869940;
    *(v66 + 232) = 0xE400000000000000;
    *(v66 + 240) = sub_249F9AB64();
    strcpy((v66 + 248), "failureRetries");
    *(v66 + 263) = -18;
    *(v66 + 264) = sub_249F9AB64();
    v70 = sub_249F791D4(v66);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v71 = sub_249F9ABA4();
    v72 = sub_249F9AC64();
    if (os_log_type_enabled(v72, v71))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v164[0] = v74;
      *v73 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v75 = sub_249F9A974();
      v77 = sub_249F78A30(v75, v76, v164);

      *(v73 + 4) = v77;
      _os_log_impl(&dword_249F74000, v72, v71, "Sending failure analysis event: %s)", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x24C20AE50](v74, -1, -1);
      MEMORY[0x24C20AE50](v73, -1, -1);
    }

    v78 = v161;
    v79 = sub_249F9A9A4();
    v80 = swift_allocObject();
    *(v80 + 16) = v70;
    v164[4] = sub_249F7ABC0;
    v164[5] = v80;
    v164[0] = MEMORY[0x277D85DD0];
    v164[1] = 1107296256;
    v164[2] = sub_249F77EF4;
    v164[3] = &block_descriptor_21;
    v81 = _Block_copy(v164);

    AnalyticsSendEventLazy();
    _Block_release(v81);

    sub_249F8065C(v68);
    v60 = v78;
    return sub_249F7A1C0(v60);
  }

  type metadata accessor for MachOParser();
  swift_allocObject();

  v122 = v37;
  v61 = sub_249F85C5C(v38, v37, v160, v39);

  v121[2] = v61;
  v62 = sub_249F830E8();
  v165 = v62;
  if (v36)
  {
    v63 = v62;
    sub_249F9ABB4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v64 = sub_249F9AC64();
    sub_249F9A874();

    v65 = sub_249F83350();
    if (v65)
    {
      if (v63)
      {
        sub_249F83258(v65);
      }

      else
      {
      }
    }
  }

  v83 = v122;

  sub_249F7B308(v38, v83, &v166);
  v84 = v165;
  if (v165)
  {
    v85 = v165;
  }

  else
  {
    v85 = MEMORY[0x277D84F90];
  }

  v86 = *(v85 + 16);
  if (!v86)
  {

    goto LABEL_57;
  }

  v87 = v168;
  v162 = v167;
  v136 = 0x8000000249F9DE80;
  v88 = v169;
  v89 = v170;
  v91 = v171;
  v90 = v172;
  v132 = 0x8000000249F9DD10;
  v133 = "appBundleVersion";
  v131 = sub_249F7AA2C(0, &qword_27EF2CD90, 0x277CCA980);
  v121[1] = v84;

  v92 = 0;
  if (v87)
  {
    v93 = v162;
  }

  else
  {
    v93 = 0x6E776F6E6B6E75;
  }

  v94 = 0xE700000000000000;
  v137 = v87;
  if (v87)
  {
    v95 = v87;
  }

  else
  {
    v95 = 0xE700000000000000;
  }

  v129 = v95;
  v130 = v93;
  if (v89)
  {
    v96 = v88;
  }

  else
  {
    v96 = 0x6E776F6E6B6E75;
  }

  v134 = v90;
  v135 = v89;
  if (v89)
  {
    v97 = v89;
  }

  else
  {
    v97 = 0xE700000000000000;
  }

  v127 = v97;
  v128 = v96;
  if (v90)
  {
    v98 = v91;
  }

  else
  {
    v98 = 0x6E776F6E6B6E75;
  }

  if (v90)
  {
    v94 = v90;
  }

  v125 = v94;
  v126 = v98;
  v124 = v86 - 1;
  v99 = 32;
  v123 = xmmword_249F9C090;
  v138 = v85;
  do
  {
    v162 = v92;
    v141 = v99;
    memcpy(v164, (v85 + v99), sizeof(v164));
    if (!v164[33])
    {
      v100 = v164[20];
      v152 = LOBYTE(v164[21]);
      v104 = v164[23];
      v154 = v164[24];
      v155 = v164[22];
      v103 = v164[25];
      v150 = v164[26];
      v102 = v164[27];
      v158 = v164[19];
      v159 = v164[28];
      v101 = v164[29];
      goto LABEL_50;
    }

    v100 = v164[35];
    if (v164[35])
    {
      v101 = v164[44];
      v102 = v164[42];
      v150 = v164[41];
      v103 = v164[40];
      v104 = v164[38];
      v154 = v164[39];
      v155 = v164[37];
      v152 = LOBYTE(v164[36]);
      v158 = v164[34];
      v159 = v164[43];
LABEL_50:
      v151 = v102;

      v157 = v104;

      v156 = v103;

      v161 = v100;

      v160 = v101;

      goto LABEL_52;
    }

    v155 = v164[32];
    v157 = v164[33];

    v152 = 5;
    v159 = 0x6E776F6E6B6E75;
    v160 = 0xE700000000000000;
    v158 = 0x6E776F6E6B6E75;
    v161 = 0xE700000000000000;
    v154 = 0x6E776F6E6B6E75;
    v156 = 0xE700000000000000;
    v150 = 0x6E776F6E6B6E75;
    v151 = 0xE700000000000000;
LABEL_52:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v105 = swift_allocObject();
    *(v105 + 16) = v123;
    *(v105 + 32) = 0x6C646E7542707061;
    v153 = v105 + 32;
    *(v105 + 40) = 0xEB00000000444965;
    sub_249F8BC8C(v164, v163);

    v106 = sub_249F9A9A4();

    v149 = 0xD000000000000010;
    *(v105 + 48) = v106;
    *(v105 + 56) = 0xD000000000000010;
    *(v105 + 64) = v136;

    v107 = sub_249F9A9A4();

    *(v105 + 72) = v107;
    *(v105 + 80) = 0x656D614E707061;
    *(v105 + 88) = 0xE700000000000000;
    v147 = v164[7];
    v148 = v164[6];
    v142 = v164[10];
    v143 = v164[12];
    v146 = v164[15];
    v144 = v164[11];
    v145 = v164[16];

    v108 = sub_249F9A9A4();

    *(v105 + 96) = v108;
    *(v105 + 104) = 1751347809;
    *(v105 + 112) = 0xE400000000000000;
    *(v105 + 120) = sub_249F9A9A4();
    strcpy((v105 + 128), "binaryCDHash");
    *(v105 + 141) = 0;
    *(v105 + 142) = -5120;
    *(v105 + 144) = sub_249F9A9A4();
    strcpy((v105 + 152), "binaryLocation");
    *(v105 + 167) = -18;
    v109 = sub_249F9A9A4();

    *(v105 + 168) = v109;
    *(v105 + 176) = 0x61507972616E6962;
    *(v105 + 184) = 0xEA00000000006874;
    *(v105 + 192) = sub_249F9A9A4();
    strcpy((v105 + 200), "binaryTeamID");
    *(v105 + 213) = 0;
    *(v105 + 214) = -5120;
    *(v105 + 216) = sub_249F9A9A4();
    *(v105 + 224) = 0x55557972616E6962;
    *(v105 + 232) = 0xEA00000000004449;
    *(v105 + 240) = sub_249F9A9A4();
    strcpy((v105 + 248), "binaryVersion");
    *(v105 + 262) = -4864;
    *(v105 + 264) = sub_249F9A9A4();
    *(v105 + 272) = 0x48444362696C7964;
    *(v105 + 280) = 0xEB00000000687361;
    v110 = sub_249F9A9A4();

    *(v105 + 288) = v110;
    strcpy((v105 + 296), "dylibLocation");
    *(v105 + 310) = -4864;
    v111 = sub_249F9A9A4();

    *(v105 + 312) = v111;
    *(v105 + 320) = 0x74615062696C7964;
    *(v105 + 328) = 0xE900000000000068;
    v112 = sub_249F9A9A4();

    *(v105 + 336) = v112;
    *(v105 + 344) = 0x61655462696C7964;
    *(v105 + 352) = 0xEB0000000044496DLL;
    v113 = sub_249F9A9A4();

    *(v105 + 360) = v113;
    *(v105 + 368) = 0x49555562696C7964;
    *(v105 + 376) = 0xE900000000000044;
    v114 = sub_249F9A9A4();

    *(v105 + 384) = v114;
    strcpy((v105 + 392), "dylibVersion");
    *(v105 + 405) = 0;
    *(v105 + 406) = -5120;
    v115 = sub_249F9A9A4();

    *(v105 + 408) = v115;
    *(v105 + 416) = 0x656372756F73;
    *(v105 + 424) = 0xE600000000000000;
    *(v105 + 432) = sub_249F9A9A4();
    *(v105 + 440) = 0x614E6C6F626D7973;
    *(v105 + 448) = 0xEA0000000000656DLL;
    *(v105 + 456) = sub_249F9A9A4();
    strcpy((v105 + 464), "symbolOffset");
    *(v105 + 477) = 0;
    *(v105 + 478) = -5120;
    *(v105 + 480) = sub_249F9A9A4();
    *(v105 + 488) = 0x794472656C6C6163;
    *(v105 + 496) = 0xEF6874615062696CLL;
    v116 = sub_249F9A9A4();
    v117 = v149;
    *(v105 + 504) = v116;
    *(v105 + 512) = v117;
    *(v105 + 520) = v132;
    *(v105 + 528) = sub_249F9A9A4();
    v118 = sub_249F791D4(v105);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v119 = sub_249F9AC14();
    sub_249F8BCE8(v164);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163[0] = v118;
    sub_249F87DB0(v119, 0x6F436C6F626D7973, 0xEB00000000746E75, isUniquelyReferenced_nonNull_native);
    sub_249F92134(v163[0]);

    if (v124 == v162)
    {
      goto LABEL_55;
    }

    v92 = v162 + 1;
    v85 = v138;
    v99 = v141 + 432;
  }

  while ((v162 + 1) < *(v138 + 16));
  __break(1u);
LABEL_55:

LABEL_57:
  sub_249F7B86C(&v166);
}

uint64_t sub_249F8A5A4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4, uint64_t a5)
{
  v136 = a5;
  LODWORD(v154) = a4;
  v155 = a3;
  v156 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v119 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v119 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v119 - v17;
  v19 = type metadata accessor for TargetType(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v158 = v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v119 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v157 = v119 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = (v119 - v29);
  sub_249F7A228(a1, v119 - v29);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_249F8065C(v30);
    sub_249F9ABA4();
    v156 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v31 = sub_249F9AC64();
    sub_249F9A874();

    sub_249F7A228(a1, v18);
    (*(v20 + 56))(v18, 0, 1, v19);
    sub_249F805EC(v18, v16);
    v32 = *(v20 + 48);
    v33 = v32(v16, 1, v19);
    v153 = v18;
    if (v33 == 1)
    {
      v34 = v157;
      swift_storeEnumTagMultiPayload();
      if (v32(v16, 1, v19) != 1)
      {
        sub_249F7A1C0(v16);
      }
    }

    else
    {
      v34 = v157;
      sub_249F7A2F8(v16, v157);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_249F9B940;
    *(v43 + 32) = 0x74536E6F6D656164;
    *(v43 + 40) = 0xEB00000000657461;
    *(v43 + 48) = sub_249F9A9A4();
    *(v43 + 56) = 0xD000000000000012;
    *(v43 + 64) = 0x8000000249F9CCF0;
    *(v43 + 72) = sub_249F9A9A4();
    *(v43 + 80) = 0x546572756C696166;
    *(v43 + 88) = 0xEB00000000657079;
    *(v43 + 96) = sub_249F9A9A4();
    strcpy((v43 + 104), "targetBundleID");
    *(v43 + 119) = -18;
    *(v43 + 120) = sub_249F9A9A4();
    *(v43 + 128) = 0xD000000000000013;
    *(v43 + 136) = 0x8000000249F9CD10;
    *(v43 + 144) = sub_249F9A9A4();
    *(v43 + 152) = 0x614E746567726174;
    *(v43 + 160) = 0xEA0000000000656DLL;
    *(v43 + 168) = sub_249F9A9A4();
    *(v43 + 176) = 0x6150746567726174;
    *(v43 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75);
    v44 = sub_249F9A9A4();

    *(v43 + 192) = v44;
    *(v43 + 200) = 0x7954746567726174;
    *(v43 + 208) = 0xEA00000000006570;
    v45 = v34;
    sub_249F7A228(v34, v158);
    sub_249F9AA14();
    v46 = sub_249F9A9A4();

    *(v43 + 216) = v46;
    *(v43 + 224) = 1701869940;
    *(v43 + 232) = 0xE400000000000000;
    *(v43 + 240) = sub_249F9AB64();
    strcpy((v43 + 248), "failureRetries");
    *(v43 + 263) = -18;
    *(v43 + 264) = sub_249F9AB64();
    v47 = sub_249F791D4(v43);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v48 = sub_249F9ABA4();
    v49 = sub_249F9AC64();
    if (os_log_type_enabled(v49, v48))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v160[0] = v51;
      *v50 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v52 = sub_249F9A974();
      v54 = sub_249F78A30(v52, v53, v160);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_249F74000, v49, v48, "Sending failure analysis event: %s)", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x24C20AE50](v51, -1, -1);
      MEMORY[0x24C20AE50](v50, -1, -1);
    }

    v55 = v153;
    v56 = sub_249F9A9A4();
    v57 = swift_allocObject();
    *(v57 + 16) = v47;
    v160[4] = sub_249F7A28C;
    v160[5] = v57;
    v160[0] = MEMORY[0x277D85DD0];
    v160[1] = 1107296256;
    v160[2] = sub_249F77EF4;
    v160[3] = &block_descriptor_3;
    v58 = _Block_copy(v160);

    AnalyticsSendEventLazy();
    _Block_release(v58);

    sub_249F8065C(v45);
    v59 = v55;
    return sub_249F7A1C0(v59);
  }

  v35 = v154;
  v153 = v26;
  v157 = v13;
  v37 = *v30;
  v36 = v30[1];
  v38 = v155;
  if (v156())
  {

    sub_249F9ABA4();
    v156 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v39 = sub_249F9AC64();
    sub_249F9A874();

    v40 = v157;
    sub_249F7A228(a1, v157);
    (*(v20 + 56))(v40, 0, 1, v19);
    sub_249F805EC(v40, v10);
    v41 = *(v20 + 48);
    if (v41(v10, 1, v19) == 1)
    {
      v42 = v153;
      swift_storeEnumTagMultiPayload();
      if (v41(v10, 1, v19) != 1)
      {
        sub_249F7A1C0(v10);
      }
    }

    else
    {
      v42 = v153;
      sub_249F7A2F8(v10, v153);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_249F9B940;
    *(v65 + 32) = 0x74536E6F6D656164;
    *(v65 + 40) = 0xEB00000000657461;
    *(v65 + 48) = sub_249F9A9A4();
    *(v65 + 56) = 0xD000000000000012;
    *(v65 + 64) = 0x8000000249F9CCF0;
    *(v65 + 72) = sub_249F9A9A4();
    *(v65 + 80) = 0x546572756C696166;
    *(v65 + 88) = 0xEB00000000657079;
    *(v65 + 96) = sub_249F9A9A4();
    strcpy((v65 + 104), "targetBundleID");
    *(v65 + 119) = -18;
    *(v65 + 120) = sub_249F9A9A4();
    *(v65 + 128) = 0xD000000000000013;
    *(v65 + 136) = 0x8000000249F9CD10;
    *(v65 + 144) = sub_249F9A9A4();
    *(v65 + 152) = 0x614E746567726174;
    *(v65 + 160) = 0xEA0000000000656DLL;
    *(v65 + 168) = sub_249F9A9A4();
    *(v65 + 176) = 0x6150746567726174;
    *(v65 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75);
    v66 = sub_249F9A9A4();

    *(v65 + 192) = v66;
    *(v65 + 200) = 0x7954746567726174;
    *(v65 + 208) = 0xEA00000000006570;
    v67 = v42;
    sub_249F7A228(v42, v158);
    sub_249F9AA14();
    v68 = sub_249F9A9A4();

    *(v65 + 216) = v68;
    *(v65 + 224) = 1701869940;
    *(v65 + 232) = 0xE400000000000000;
    *(v65 + 240) = sub_249F9AB64();
    strcpy((v65 + 248), "failureRetries");
    *(v65 + 263) = -18;
    *(v65 + 264) = sub_249F9AB64();
    v69 = sub_249F791D4(v65);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v70 = sub_249F9ABA4();
    v71 = sub_249F9AC64();
    if (os_log_type_enabled(v71, v70))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v160[0] = v73;
      *v72 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v74 = sub_249F9A974();
      v76 = sub_249F78A30(v74, v75, v160);

      *(v72 + 4) = v76;
      _os_log_impl(&dword_249F74000, v71, v70, "Sending failure analysis event: %s)", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x24C20AE50](v73, -1, -1);
      MEMORY[0x24C20AE50](v72, -1, -1);
    }

    v77 = v157;
    v78 = sub_249F9A9A4();
    v79 = swift_allocObject();
    *(v79 + 16) = v69;
    v160[4] = sub_249F7ABC0;
    v160[5] = v79;
    v160[0] = MEMORY[0x277D85DD0];
    v160[1] = 1107296256;
    v160[2] = sub_249F77EF4;
    v160[3] = &block_descriptor_7;
    v80 = _Block_copy(v160);

    AnalyticsSendEventLazy();
    _Block_release(v80);

    sub_249F8065C(v67);
    v59 = v77;
    return sub_249F7A1C0(v59);
  }

  type metadata accessor for MachOParser();
  swift_allocObject();

  v60 = sub_249F85C5C(v37, v36, v156, v38);

  v119[3] = v60;
  v61 = sub_249F830E8();
  v161 = v61;
  if (v35)
  {
    v62 = v61;
    sub_249F9ABB4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v63 = sub_249F9AC64();
    sub_249F9A874();

    v64 = sub_249F83350();
    if (v64)
    {
      if (v62)
      {
        sub_249F83258(v64);
      }

      else
      {
      }
    }
  }

  sub_249F7B308(v37, v36, &v162);
  v82 = v161;
  if (v161)
  {
    v83 = v161;
  }

  else
  {
    v83 = MEMORY[0x277D84F90];
  }

  v84 = *(v83 + 16);
  if (!v84)
  {

    goto LABEL_57;
  }

  v119[2] = v36;
  v85 = v164;
  v158 = v163;
  v133 = 0x8000000249F9DE80;
  v86 = v165;
  v87 = v166;
  v89 = v167;
  v88 = v168;
  v129 = 0x8000000249F9DD10;
  v130 = "appBundleVersion";
  v128 = sub_249F7AA2C(0, &qword_27EF2CD90, 0x277CCA980);
  v119[1] = v82;

  v90 = 0;
  if (v85)
  {
    v91 = v158;
  }

  else
  {
    v91 = 0x6E776F6E6B6E75;
  }

  v92 = 0xE700000000000000;
  v134 = v85;
  if (v85)
  {
    v93 = v85;
  }

  else
  {
    v93 = 0xE700000000000000;
  }

  v126 = v93;
  v127 = v91;
  if (v87)
  {
    v94 = v86;
  }

  else
  {
    v94 = 0x6E776F6E6B6E75;
  }

  v131 = v88;
  v132 = v87;
  if (v87)
  {
    v95 = v87;
  }

  else
  {
    v95 = 0xE700000000000000;
  }

  v124 = v95;
  v125 = v94;
  if (v88)
  {
    v96 = v89;
  }

  else
  {
    v96 = 0x6E776F6E6B6E75;
  }

  if (v88)
  {
    v92 = v88;
  }

  v122 = v92;
  v123 = v96;
  v121 = v84 - 1;
  v97 = 32;
  v120 = xmmword_249F9C090;
  v135 = v83;
  do
  {
    v158 = v90;
    v137 = v97;
    memcpy(v160, (v83 + v97), sizeof(v160));
    if (!v160[33])
    {
      v98 = v160[20];
      v148 = LOBYTE(v160[21]);
      v102 = v160[23];
      v150 = v160[24];
      v151 = v160[22];
      v101 = v160[25];
      v146 = v160[26];
      v100 = v160[27];
      v154 = v160[19];
      v155 = v160[28];
      v99 = v160[29];
      goto LABEL_50;
    }

    v98 = v160[35];
    if (v160[35])
    {
      v99 = v160[44];
      v100 = v160[42];
      v146 = v160[41];
      v101 = v160[40];
      v102 = v160[38];
      v150 = v160[39];
      v151 = v160[37];
      v148 = LOBYTE(v160[36]);
      v154 = v160[34];
      v155 = v160[43];
LABEL_50:
      v147 = v100;

      v153 = v102;

      v152 = v101;

      v157 = v98;

      v156 = v99;

      goto LABEL_52;
    }

    v151 = v160[32];
    v153 = v160[33];

    v148 = 5;
    v155 = 0x6E776F6E6B6E75;
    v156 = 0xE700000000000000;
    v154 = 0x6E776F6E6B6E75;
    v157 = 0xE700000000000000;
    v150 = 0x6E776F6E6B6E75;
    v152 = 0xE700000000000000;
    v146 = 0x6E776F6E6B6E75;
    v147 = 0xE700000000000000;
LABEL_52:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v103 = swift_allocObject();
    *(v103 + 16) = v120;
    *(v103 + 32) = 0x6C646E7542707061;
    v149 = v103 + 32;
    *(v103 + 40) = 0xEB00000000444965;
    sub_249F8BC8C(v160, v159);

    v104 = sub_249F9A9A4();

    v145 = 0xD000000000000010;
    *(v103 + 48) = v104;
    *(v103 + 56) = 0xD000000000000010;
    *(v103 + 64) = v133;

    v105 = sub_249F9A9A4();

    *(v103 + 72) = v105;
    *(v103 + 80) = 0x656D614E707061;
    *(v103 + 88) = 0xE700000000000000;
    v143 = v160[7];
    v144 = v160[6];
    v138 = v160[10];
    v139 = v160[12];
    v142 = v160[15];
    v140 = v160[11];
    v141 = v160[16];

    v106 = sub_249F9A9A4();

    *(v103 + 96) = v106;
    *(v103 + 104) = 1751347809;
    *(v103 + 112) = 0xE400000000000000;
    *(v103 + 120) = sub_249F9A9A4();
    strcpy((v103 + 128), "binaryCDHash");
    *(v103 + 141) = 0;
    *(v103 + 142) = -5120;
    *(v103 + 144) = sub_249F9A9A4();
    strcpy((v103 + 152), "binaryLocation");
    *(v103 + 167) = -18;
    v107 = sub_249F9A9A4();

    *(v103 + 168) = v107;
    *(v103 + 176) = 0x61507972616E6962;
    *(v103 + 184) = 0xEA00000000006874;
    *(v103 + 192) = sub_249F9A9A4();
    strcpy((v103 + 200), "binaryTeamID");
    *(v103 + 213) = 0;
    *(v103 + 214) = -5120;
    *(v103 + 216) = sub_249F9A9A4();
    *(v103 + 224) = 0x55557972616E6962;
    *(v103 + 232) = 0xEA00000000004449;
    *(v103 + 240) = sub_249F9A9A4();
    strcpy((v103 + 248), "binaryVersion");
    *(v103 + 262) = -4864;
    *(v103 + 264) = sub_249F9A9A4();
    *(v103 + 272) = 0x48444362696C7964;
    *(v103 + 280) = 0xEB00000000687361;
    v108 = sub_249F9A9A4();

    *(v103 + 288) = v108;
    strcpy((v103 + 296), "dylibLocation");
    *(v103 + 310) = -4864;
    v109 = sub_249F9A9A4();

    *(v103 + 312) = v109;
    *(v103 + 320) = 0x74615062696C7964;
    *(v103 + 328) = 0xE900000000000068;
    v110 = sub_249F9A9A4();

    *(v103 + 336) = v110;
    *(v103 + 344) = 0x61655462696C7964;
    *(v103 + 352) = 0xEB0000000044496DLL;
    v111 = sub_249F9A9A4();

    *(v103 + 360) = v111;
    *(v103 + 368) = 0x49555562696C7964;
    *(v103 + 376) = 0xE900000000000044;
    v112 = sub_249F9A9A4();

    *(v103 + 384) = v112;
    strcpy((v103 + 392), "dylibVersion");
    *(v103 + 405) = 0;
    *(v103 + 406) = -5120;
    v113 = sub_249F9A9A4();

    *(v103 + 408) = v113;
    *(v103 + 416) = 0x656372756F73;
    *(v103 + 424) = 0xE600000000000000;
    *(v103 + 432) = sub_249F9A9A4();
    *(v103 + 440) = 0x614E6C6F626D7973;
    *(v103 + 448) = 0xEA0000000000656DLL;
    *(v103 + 456) = sub_249F9A9A4();
    strcpy((v103 + 464), "symbolOffset");
    *(v103 + 477) = 0;
    *(v103 + 478) = -5120;
    *(v103 + 480) = sub_249F9A9A4();
    *(v103 + 488) = 0x794472656C6C6163;
    *(v103 + 496) = 0xEF6874615062696CLL;
    v114 = sub_249F9A9A4();
    v115 = v145;
    *(v103 + 504) = v114;
    *(v103 + 512) = v115;
    *(v103 + 520) = v129;
    *(v103 + 528) = sub_249F9A9A4();
    v116 = sub_249F791D4(v103);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v117 = sub_249F9AC14();
    sub_249F8BCE8(v160);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v159[0] = v116;
    sub_249F87DB0(v117, 0x6F436C6F626D7973, 0xEB00000000746E75, isUniquelyReferenced_nonNull_native);
    sub_249F961E8(v159[0]);

    if (v121 == v158)
    {
      goto LABEL_55;
    }

    v90 = v158 + 1;
    v83 = v135;
    v97 = v137 + 432;
  }

  while ((v158 + 1) < *(v135 + 16));
  __break(1u);
LABEL_55:

LABEL_57:
  sub_249F7B86C(&v162);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249F8BD74()
{
  if (*(v0 + 104) != 1)
  {
    return *(v0 + 96);
  }

  result = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  return result;
}

uint64_t sub_249F8BD98()
{
  *(v0 + 16) = 0xD000000000000052;
  *(v0 + 24) = 0x8000000249F9E290;
  *(v0 + 32) = 0x6F6E67695F707061;
  *(v0 + 40) = 0xEF7473696C5F6572;
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x8000000249F9E2F0;
  *(v0 + 64) = 0xD00000000000001ELL;
  *(v0 + 72) = 0x8000000249F9E310;
  *(v0 + 80) = 0xD000000000000012;
  *(v0 + 88) = 0x8000000249F9E330;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  sub_249F8BE64();
  return v0;
}

uint64_t sub_249F8BE64()
{
  v58 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for TargetType(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v49 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v45 - v12;
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  v16 = sub_249F9AA24();
  v52 = sub_249F8BD74();
  v17 = sqlite3_open_v2((v16 + 32), &v52, 4194305, 0);
  *(v0 + 96) = v52;
  *(v0 + 104) = 0;

  if (v17)
  {
    v19 = sqlite3_extended_errcode(*(v0 + 96));
    v20 = sub_249F8E8A8(0xD000000000000029);
    v46 = v21;
    v47 = v20;
    sqlite3_close(*(v0 + 96));
    (*(v2 + 56))(v13, 1, 1, v1);
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_249F9AD14();

    v52 = 0xD000000000000029;
    v53 = 0x8000000249F9E260;
    v51 = v19;
    v22 = sub_249F9ADE4();
    MEMORY[0x24C20A200](v22);

    sub_249F805EC(v13, v11);
    v23 = *(v2 + 48);
    v24 = v23(v11, 1, v1);
    v48 = v13;
    v45[1] = v1;
    if (v24 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v23(v11, 1, v1) != 1)
      {
        sub_249F806B8(v11, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v11, v50);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    v26 = sub_249F9A9A4();

    *(inited + 72) = v26;
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75);
    v27 = sub_249F9A9A4();

    *(inited + 192) = v27;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    v28 = v50;
    sub_249F7A228(v50, v49);
    sub_249F9AA14();
    v29 = sub_249F9A9A4();

    *(inited + 216) = v29;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v30 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v31 = sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v32 = sub_249F9AC64();
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v52 = v34;
      *v33 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v35 = sub_249F9A974();
      v37 = sub_249F78A30(v35, v36, &v52);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_249F74000, v32, v31, "Sending failure analysis event: %s)", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C20AE50](v34, -1, -1);
      MEMORY[0x24C20AE50](v33, -1, -1);
    }

    v38 = v48;
    v39 = sub_249F9A9A4();
    v40 = swift_allocObject();
    *(v40 + 16) = v30;
    v56 = sub_249F7ABC0;
    v57 = v40;
    v52 = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_249F77EF4;
    v55 = &block_descriptor_31;
    v41 = _Block_copy(&v52);

    AnalyticsSendEventLazy();
    _Block_release(v41);

    sub_249F8065C(v28);
    sub_249F806B8(v38, &unk_27EF2CCC0, &unk_249F9B960);
    sub_249F8F9B8();
    swift_allocError();
    v42 = v46;
    *v43 = v47;
    v43[1] = v42;
    result = swift_willThrow();
  }

  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_249F8C660()
{
  v1 = v0;
  v2 = type metadata accessor for TargetType(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = sub_249F8BD74();
  result = sqlite3_close(v16);
  if (result)
  {
    v18 = result;
    (*(v3 + 56))(v15, 1, 1, v2);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_249F9AD14();

    v48 = 0xD00000000000002ALL;
    v49 = 0x8000000249F9E1D0;
    v54 = v18;
    v55 = v18;
    v19 = sub_249F9ADE4();
    MEMORY[0x24C20A200](v19);

    v45 = v15;
    sub_249F805EC(v15, v13);
    v20 = *(v3 + 48);
    v21 = v20(v13, 1, v2);
    v46 = v1;
    v44 = v8;
    if (v21 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v20(v13, 1, v2) != 1)
      {
        sub_249F806B8(v13, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v13, v8);
    }

    v43 = "unknown bundle ID";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    v23 = sub_249F9A9A4();

    *(inited + 72) = v23;
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75);
    v24 = sub_249F9A9A4();

    *(inited + 192) = v24;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    v25 = v44;
    sub_249F7A228(v44, v47);
    sub_249F9AA14();
    v26 = sub_249F9A9A4();

    *(inited + 216) = v26;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v27 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v28 = sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v29 = sub_249F9AC64();
    if (os_log_type_enabled(v29, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = v31;
      *v30 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v32 = sub_249F9A974();
      v34 = sub_249F78A30(v32, v33, &v48);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_249F74000, v29, v28, "Sending failure analysis event: %s)", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C20AE50](v31, -1, -1);
      MEMORY[0x24C20AE50](v30, -1, -1);
    }

    v35 = v45;
    v36 = sub_249F9A9A4();
    v37 = swift_allocObject();
    *(v37 + 16) = v27;
    v52 = sub_249F7ABC0;
    v53 = v37;
    v48 = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_249F77EF4;
    v51 = &block_descriptor_24;
    v38 = _Block_copy(&v48);

    AnalyticsSendEventLazy();
    _Block_release(v38);

    sub_249F8065C(v25);
    sub_249F806B8(v35, &unk_27EF2CCC0, &unk_249F9B960);
    v39 = sub_249F8E8A8(0xD00000000000002ALL);
    v41 = v40;
    sub_249F8F9B8();
    swift_allocError();
    *v42 = v39;
    v42[1] = v41;
    return swift_willThrow();
  }

  return result;
}

id sub_249F8CDF4(int a1, uint64_t a2, unint64_t a3)
{
  v130 = a1;
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v133 = type metadata accessor for TargetType(0);
  v126 = *(v133 - 8);
  v5 = *(v126 + 64);
  v6 = MEMORY[0x28223BE20](v133);
  v132 = v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v127 = v119 - v9;
  MEMORY[0x28223BE20](v8);
  v125 = v119 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v124 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v131 = v119 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v120 = v119 - v18;
  MEMORY[0x28223BE20](v17);
  v121 = v119 - v19;
  v20 = sub_249F9A944();
  v137 = *(v20 - 8);
  v21 = *(v137 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_249F9A934();
  v135 = *(v24 - 8);
  v25 = *(v135 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  *&v136 = v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v119 - v28;

  v122 = a2;
  v123 = a3;
  v30 = sub_249F8E388(a2, a3);
  v32 = v31;
  sub_249F8F748(&qword_27EF2CD98, MEMORY[0x277CC5560]);
  sub_249F9A924();
  sub_249F8F6F4(v30, v32);
  v33 = v138;
  sub_249F8F514(v30, v32);
  v119[1] = v33;
  sub_249F80470(v30, v32);
  sub_249F9A914();
  sub_249F80470(v30, v32);
  (*(v137 + 8))(v23, v20);
  v34 = *(v135 + 16);
  v128 = v29;
  v34(v136, v29, v24);
  sub_249F8F748(&qword_27EF2CDA0, MEMORY[0x277CC52E8]);
  v129 = v24;
  sub_249F9AB14();
  v35 = v140;
  v36 = v141;
  v138 = v140[2];
  v37 = MEMORY[0x277D84F90];
  if (v141 != v138)
  {
    v137 = (v140 + 4);
    v136 = xmmword_249F9B920;
    v38 = v141;
    while ((v36 & 0x8000000000000000) == 0)
    {
      if (v38 >= *(v35 + 2))
      {
        goto LABEL_39;
      }

      v50 = *(v38 + v137);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
      v51 = swift_allocObject();
      *(v51 + 16) = v136;
      *(v51 + 56) = MEMORY[0x277D84B78];
      *(v51 + 64) = MEMORY[0x277D84BC0];
      *(v51 + 32) = v50;
      v23 = sub_249F9A9E4();
      v53 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_249F8EAE8(0, *(v37 + 2) + 1, 1, v37);
      }

      v55 = *(v37 + 2);
      v54 = *(v37 + 3);
      v32 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v37 = sub_249F8EAE8((v54 > 1), v55 + 1, 1, v37);
      }

      v38 = (v38 + 1);
      *(v37 + 2) = v32;
      v56 = &v37[16 * v55];
      *(v56 + 4) = v23;
      *(v56 + 5) = v53;
      if (v138 == v38)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_2:

  v38 = &v140;
  v140 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CCE8, &qword_249F9BE28);
  sub_249F8F790();
  v39 = sub_249F9A984();
  v41 = v40;

  v42 = sub_249F9AB94();
  v138 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v43 = sub_249F9AC64();
  v44 = os_log_type_enabled(v43, v42);
  v137 = v39;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v140 = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_249F78A30(v122, v123, &v140);
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_249F78A30(v39, v41, &v140);
    _os_log_impl(&dword_249F74000, v43, v42, "Hash for %s = %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C20AE50](v46, -1, -1);
    MEMORY[0x24C20AE50](v45, -1, -1);
  }

  v47 = v134;
  v140 = 0;
  v141 = 0xE000000000000000;
  if (v130)
  {
    sub_249F9AD14();

    v140 = 0xD000000000000015;
    v141 = 0x8000000249F9E0B0;
    MEMORY[0x24C20A200](v47[6], v47[7]);
    MEMORY[0x24C20A200](0x20455245485720, 0xE700000000000000);
    v48 = v47[10];
    v49 = v47[11];
  }

  else
  {
    sub_249F9AD14();

    v140 = 0xD000000000000015;
    v141 = 0x8000000249F9E0B0;
    MEMORY[0x24C20A200](v47[4], v47[5]);
    MEMORY[0x24C20A200](0x20455245485720, 0xE700000000000000);
    v48 = v47[8];
    v49 = v47[9];
  }

  MEMORY[0x24C20A200](v48, v49);
  MEMORY[0x24C20A200](0x3B3F203D20, 0xE500000000000000);
  ppStmt[0] = 0;
  v57 = sub_249F8BD74();
  v58 = sub_249F9AA24();

  v59 = sqlite3_prepare_v2(v57, (v58 + 32), -1, ppStmt, 0);

  v35 = ppStmt[0];
  if (!ppStmt[0] || v59)
  {

    v64 = v126;
    v65 = v131;
    v66 = v133;
    (*(v126 + 56))(v131, 1, 1, v133);
    v140 = 0;
    v141 = 0xE000000000000000;
    sub_249F9AD14();
    MEMORY[0x24C20A200](0xD00000000000003DLL, 0x8000000249F9E0D0);
    LODWORD(v137) = v59;
    v139 = v59;
    v67 = sub_249F9ADE4();
    MEMORY[0x24C20A200](v67);

    v68 = v124;
    sub_249F805EC(v65, v124);
    v69 = *(v64 + 48);
    if (v69(v68, 1, v66) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v69(v68, 1, v66) != 1)
      {
        sub_249F806B8(v68, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v68, v132);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    v71 = sub_249F9A9A4();

    *(inited + 72) = v71;
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75);
    v72 = sub_249F9A9A4();

    *(inited + 192) = v72;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    v73 = v132;
    sub_249F7A228(v132, v127);
    sub_249F9AA14();
    v74 = sub_249F9A9A4();

    *(inited + 216) = v74;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v75 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v76 = sub_249F9ABA4();
    v77 = sub_249F9AC64();
    if (os_log_type_enabled(v77, v76))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v140 = v79;
      *v78 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v80 = sub_249F9A974();
      v82 = sub_249F78A30(v80, v81, &v140);

      *(v78 + 4) = v82;
      _os_log_impl(&dword_249F74000, v77, v76, "Sending failure analysis event: %s)", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x24C20AE50](v79, -1, -1);
      MEMORY[0x24C20AE50](v78, -1, -1);
    }

    v83 = sub_249F9A9A4();
    v84 = swift_allocObject();
    *(v84 + 16) = v75;
    v144 = sub_249F7A28C;
    v145 = v84;
    v140 = MEMORY[0x277D85DD0];
    v141 = 1107296256;
    v142 = sub_249F77EF4;
    v143 = &block_descriptor_4;
    v85 = _Block_copy(&v140);

    AnalyticsSendEventLazy();
    _Block_release(v85);

    sub_249F8065C(v73);
    sub_249F806B8(v131, &unk_27EF2CCC0, &unk_249F9B960);
    v63 = sub_249F8E8A8(0xD00000000000003DLL);
    v87 = v86;
    sub_249F8F9B8();
    swift_allocError();
    *v88 = v63;
    v88[1] = v87;
    swift_willThrow();
    goto LABEL_36;
  }

  v60 = sub_249F9A9A4();
  v23 = [v60 UTF8String];
  result = v60;
  v32 = v133;
  if (v23)
  {

    if (qword_27EF2CAF0 == -1)
    {
LABEL_20:
      sqlite3_bind_text(v35, 1, v23, -1, qword_27EF2D718);
      v62 = sqlite3_step(v38[40]);
      if (v62 == 100)
      {
        LOBYTE(v63) = sqlite3_column_int(v38[40], 0) > 0;
        sqlite3_finalize(v38[40]);
        (*(v135 + 8))(v128, v129);
LABEL_37:
        v118 = *MEMORY[0x277D85DE8];
        return (v63 & 1);
      }

      v89 = v62;
      v90 = v126;
      v91 = v121;
      (*(v126 + 56))(v121, 1, 1, v32);
      *v38 = 0;
      v38[1] = 0xE000000000000000;
      sub_249F9AD14();
      v92 = v38[1];
      *v38 = *v38;
      v38[1] = v92;
      MEMORY[0x24C20A200](0xD000000000000032, 0x8000000249F9E150);
      LODWORD(v137) = v89;
      v139 = v89;
      v93 = sub_249F9ADE4();
      MEMORY[0x24C20A200](v93);

      v95 = *v38;
      v94 = v38[1];
      v96 = v120;
      sub_249F805EC(v91, v120);
      v97 = *(v90 + 48);
      if (v97(v96, 1, v32) == 1)
      {
        swift_storeEnumTagMultiPayload();
        if (v97(v96, 1, v32) != 1)
        {
          sub_249F806B8(v96, &unk_27EF2CCC0, &unk_249F9B960);
        }
      }

      else
      {
        sub_249F7A2F8(v96, v125);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
      v98 = swift_initStackObject();
      *(v98 + 16) = xmmword_249F9B940;
      *(v98 + 32) = 0x74536E6F6D656164;
      *(v98 + 40) = 0xEB00000000657461;
      *(v98 + 48) = sub_249F9A9A4();
      *(v98 + 56) = 0xD000000000000012;
      *(v98 + 64) = 0x8000000249F9CCF0;
      v99 = sub_249F9A9A4();

      *(v98 + 72) = v99;
      *(v98 + 80) = 0x546572756C696166;
      *(v98 + 88) = 0xEB00000000657079;
      *(v98 + 96) = sub_249F9A9A4();
      strcpy((v98 + 104), "targetBundleID");
      *(v98 + 119) = -18;
      *(v98 + 120) = sub_249F9A9A4();
      *(v98 + 128) = 0xD000000000000013;
      *(v98 + 136) = 0x8000000249F9CD10;
      *(v98 + 144) = sub_249F9A9A4();
      *(v98 + 152) = 0x614E746567726174;
      *(v98 + 160) = 0xEA0000000000656DLL;
      *(v98 + 168) = sub_249F9A9A4();
      *(v98 + 176) = 0x6150746567726174;
      *(v98 + 184) = 0xEA00000000006874;
      sub_249F9A1B8(0x206E776F6E6B6E75);
      v100 = sub_249F9A9A4();

      *(v98 + 192) = v100;
      *(v98 + 200) = 0x7954746567726174;
      *(v98 + 208) = 0xEA00000000006570;
      v101 = v125;
      sub_249F7A228(v125, v127);
      sub_249F9AA14();
      v102 = sub_249F9A9A4();

      *(v98 + 216) = v102;
      *(v98 + 224) = 1701869940;
      *(v98 + 232) = 0xE400000000000000;
      *(v98 + 240) = sub_249F9AB64();
      strcpy((v98 + 248), "failureRetries");
      *(v98 + 263) = -18;
      *(v98 + 264) = sub_249F9AB64();
      v103 = sub_249F791D4(v98);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
      swift_arrayDestroy();
      v104 = sub_249F9ABA4();
      v105 = sub_249F9AC64();
      if (os_log_type_enabled(v105, v104))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v140 = v107;
        *v106 = 136315138;
        sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
        v108 = sub_249F9A974();
        v110 = sub_249F78A30(v108, v109, &v140);

        *(v106 + 4) = v110;
        _os_log_impl(&dword_249F74000, v105, v104, "Sending failure analysis event: %s)", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v107);
        v111 = v107;
        v101 = v125;
        MEMORY[0x24C20AE50](v111, -1, -1);
        MEMORY[0x24C20AE50](v106, -1, -1);
      }

      v112 = sub_249F9A9A4();
      v113 = swift_allocObject();
      *(v113 + 16) = v103;
      v144 = sub_249F7ABC0;
      v145 = v113;
      v140 = MEMORY[0x277D85DD0];
      v141 = 1107296256;
      v142 = sub_249F77EF4;
      v143 = &block_descriptor_17;
      v114 = _Block_copy(&v140);

      AnalyticsSendEventLazy();
      _Block_release(v114);

      sub_249F8065C(v101);
      sub_249F806B8(v121, &unk_27EF2CCC0, &unk_249F9B960);
      v63 = sub_249F8E8A8(0xD000000000000032);
      v116 = v115;
      sub_249F8F9B8();
      swift_allocError();
      *v117 = v63;
      v117[1] = v116;
      swift_willThrow();
      sqlite3_finalize(ppStmt[0]);
LABEL_36:
      (*(v135 + 8))(v128, v129);
      goto LABEL_37;
    }

LABEL_40:
    swift_once();
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_249F8E388(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDB0, &qword_249F9C128);
  if (swift_dynamicCast())
  {
    sub_249F8FBE0(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_249F9A6B4();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_249F806B8(__src, &qword_27EF2CDB8, &qword_249F9C130);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_249F9AD44();
  }

  sub_249F8EEF4(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_249F8FAC4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_249F8EFBC(sub_249F8FB64);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_249F9A7C4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_249F8F8D4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_249F9AA84();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_249F9AAB4();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_249F9AD44();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_249F8F8D4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_249F9AA94();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_249F9A7D4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_249F9A7D4();
    sub_249F8FBCC(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_249F8FBCC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_249F8F6F4(*&__src[0], *(&__src[0] + 1));

  sub_249F80470(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

const char *sub_249F8E8A8(uint64_t a1)
{

  MEMORY[0x24C20A200](32, 0xE100000000000000);
  v1 = sub_249F9ADE4();
  MEMORY[0x24C20A200](v1);

  MEMORY[0x24C20A200](32, 0xE100000000000000);
  v2 = sub_249F8BD74();
  result = sqlite3_errmsg(v2);
  if (result)
  {
    v4 = sub_249F9AA54();
    MEMORY[0x24C20A200](v4);

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249F8E968()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocClassInstance();
}

char *sub_249F8E9E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDC8, &qword_249F9C140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_249F8EAE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB98, &unk_249F9BF50);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_249F8EBF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDC0, &qword_249F9C138);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 432);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[432 * v8])
    {
      memmove(v12, v13, 432 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_249F8ED1C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDD0, &qword_249F9C148);
  v10 = *(sub_249F9A794() - 8);
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
  v15 = *(sub_249F9A794() - 8);
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

uint64_t sub_249F8EEF4@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_249F8FA0C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_249F9A6A4();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_249F9A654();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_249F9A7B4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_249F8EFBC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_249F80470(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_249F80470(v6, v5);
    *v3 = xmmword_249F9C0A0;
    sub_249F80470(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_249F9A664() && __OFSUB__(v6, sub_249F9A694()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_249F9A6A4();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_249F9A644();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_249F8F460(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_249F80470(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_249F9C0A0;
    sub_249F80470(0, 0xC000000000000000);
    sub_249F9A7A4();
    result = sub_249F8F460(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_249F8F360@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_249F8FA0C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_249F8FC3C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_249F8FCB8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_249F8F3F4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_249F8F460(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_249F9A664();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_249F9A694();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_249F9A684();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_249F8F514(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_249F9A944();
      sub_249F8F748(&qword_27EF2CD98, MEMORY[0x277CC5560]);
      result = sub_249F9A904();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_249F8F7F4(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_249F8F6F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_249F8F748(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_249F8F790()
{
  result = qword_27EF2CCF0;
  if (!qword_27EF2CCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2CCE8, &qword_249F9BE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CCF0);
  }

  return result;
}

uint64_t sub_249F8F7F4(uint64_t a1, uint64_t a2)
{
  result = sub_249F9A664();
  if (!result || (result = sub_249F9A694(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_249F9A684();
      sub_249F9A944();
      sub_249F8F748(&qword_27EF2CD98, MEMORY[0x277CC5560]);
      return sub_249F9A904();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_249F8F8D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_249F9AAC4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C20A260](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_249F8F950@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_249F9AD24();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_249F8F9B8()
{
  result = qword_27EF2CDA8;
  if (!qword_27EF2CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CDA8);
  }

  return result;
}

uint64_t sub_249F8FA0C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_249F8FAC4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_249F9A6A4();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_249F9A674();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_249F9A7B4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_249F8FB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_249F8F3F4(sub_249F8FD3C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_249F8FBCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_249F80470(a1, a2);
  }

  return a1;
}

uint64_t sub_249F8FBE0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_249F8FC3C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_249F9A6A4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_249F9A654();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_249F9A7B4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_249F8FCB8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_249F9A6A4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_249F9A654();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_249F8FD5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249F8FDA4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t static AnalysisFailure.send(analysisType:targetType:retries:targetPath:targetName:targetBundleID:targetBundleVersion:failureType:failureDescription:daemonState:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unsigned __int8 *a13, unint64_t a14, uint64_t a15, uint64_t *a16)
{
  v83 = a8;
  v76 = a7;
  v81 = a6;
  v79 = a5;
  LODWORD(v85) = a4;
  v82 = a12;
  v74 = a11;
  v80 = a10;
  v73 = a9;
  v77 = a15;
  v84 = a14;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v21 = v69 - v20;
  v22 = type metadata accessor for TargetType(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = (MEMORY[0x28223BE20])();
  v86 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v69 - v27;
  LODWORD(v29) = *a1;
  v30 = *a13;
  v31 = *a16;
  v32 = a16[1];
  if (v29 == 3)
  {
    v29 = 2;
  }

  else
  {
    v29 = v29;
  }

  v87 = v29;
  sub_249F805EC(a2, v21);
  v33 = *(v23 + 48);
  v34 = v33(v21, 1, v22);
  v88 = v22;
  v89 = v28;
  if (v34 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v33(v21, 1, v22) != 1)
    {
      sub_249F7A1C0(v21);
    }
  }

  else
  {
    sub_249F7A2F8(v21, v28);
  }

  if (v85)
  {
    v35 = 0;
  }

  else
  {
    v35 = a3;
  }

  v85 = v35;
  if (v81)
  {
    v36 = v79;
  }

  else
  {
    v36 = 0x206E776F6E6B6E75;
  }

  v37 = 0xEC00000068746170;
  if (v81)
  {
    v37 = v81;
  }

  v78 = v37;
  v79 = v36;
  if (v83)
  {
    v38 = v76;
  }

  else
  {
    v38 = 0x206E776F6E6B6E75;
  }

  v39 = 0xEC000000656D616ELL;
  if (v83)
  {
    v39 = v83;
  }

  v75 = v39;
  v76 = v38;
  v40 = 0x8000000249F9CCB0;
  v41 = v73;
  if (!v80)
  {
    v41 = 0xD000000000000011;
  }

  v72 = v41;
  if (v80)
  {
    v40 = v80;
  }

  v71 = v40;
  v42 = 0x8000000249F9CCD0;
  v43 = 0xD000000000000016;
  if (v82)
  {
    v43 = v74;
    v42 = v82;
  }

  v73 = v42;
  v74 = v43;
  if (v30 == 14)
  {
    v44 = 13;
  }

  else
  {
    v44 = v30;
  }

  v70 = v44;
  v45 = 0xD00000000000001BLL;
  if (v77)
  {
    v45 = v84;
  }

  v46 = 0x6E776F6E6B6E75;
  if (v32)
  {
    v46 = v31;
  }

  v69[1] = v46;
  v69[2] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F9B940;
  *(inited + 32) = 0x74536E6F6D656164;
  v84 = inited + 32;
  *(inited + 40) = 0xEB00000000657461;

  v48 = sub_249F9A9A4();

  *(inited + 48) = v48;
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x8000000249F9CCF0;
  v49 = sub_249F9A9A4();

  *(inited + 72) = v49;
  *(inited + 80) = 0x546572756C696166;
  *(inited + 88) = 0xEB00000000657079;
  LOBYTE(v90[0]) = v70;
  AnalysisFailureType.rawValue.getter();
  v50 = sub_249F9A9A4();

  *(inited + 96) = v50;
  strcpy((inited + 104), "targetBundleID");
  *(inited + 119) = -18;
  v51 = sub_249F9A9A4();

  *(inited + 120) = v51;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000249F9CD10;
  v52 = sub_249F9A9A4();

  *(inited + 144) = v52;
  *(inited + 152) = 0x614E746567726174;
  *(inited + 160) = 0xEA0000000000656DLL;
  v53 = sub_249F9A9A4();

  *(inited + 168) = v53;
  *(inited + 176) = 0x6150746567726174;
  *(inited + 184) = 0xEA00000000006874;
  sub_249F9A1B8(v79);

  v54 = sub_249F9A9A4();

  *(inited + 192) = v54;
  *(inited + 200) = 0x7954746567726174;
  *(inited + 208) = 0xEA00000000006570;
  v55 = v89;
  sub_249F7A228(v89, v86);
  sub_249F9AA14();
  v56 = sub_249F9A9A4();

  *(inited + 216) = v56;
  *(inited + 224) = 1701869940;
  *(inited + 232) = 0xE400000000000000;
  *(inited + 240) = sub_249F9AB64();
  strcpy((inited + 248), "failureRetries");
  *(inited + 263) = -18;
  *(inited + 264) = sub_249F9AB64();
  v57 = sub_249F791D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
  swift_arrayDestroy();
  v58 = sub_249F9ABA4();
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v59 = sub_249F9AC64();
  if (os_log_type_enabled(v59, v58))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v90[0] = v61;
    *v60 = 136315138;
    sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
    v62 = sub_249F9A974();
    v64 = sub_249F78A30(v62, v63, v90);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_249F74000, v59, v58, "Sending failure analysis event: %s)", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x24C20AE50](v61, -1, -1);
    MEMORY[0x24C20AE50](v60, -1, -1);
  }

  v65 = sub_249F9A9A4();
  v66 = swift_allocObject();
  *(v66 + 16) = v57;
  v90[4] = sub_249F7A97C;
  v90[5] = v66;
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 1107296256;
  v90[2] = sub_249F77EF4;
  v90[3] = &block_descriptor_5;
  v67 = _Block_copy(v90);

  AnalyticsSendEventLazy();
  _Block_release(v67);

  return sub_249F8065C(v55);
}

EcosystemAnalytics::AnalysisTypeForCA_optional __swiftcall AnalysisTypeForCA.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

EcosystemAnalytics::AnalysisFailureType_optional __swiftcall AnalysisFailureType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_249F9ADD4();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AnalysisFailureType.rawValue.getter()
{
  result = 0x45786F62646E6173;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x726F727245637078;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x7A696D6F646E6172;
      break;
    case 8:
      result = 0x7473694C73707061;
      break;
    case 9:
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xC:
      result = 0x72456574696C7173;
      break;
    case 0xD:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_249F90860(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AnalysisFailureType.rawValue.getter();
  v4 = v3;
  if (v2 == AnalysisFailureType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_249F9ADF4();
  }

  return v7 & 1;
}

uint64_t sub_249F908FC()
{
  v1 = *v0;
  sub_249F9AE64();
  AnalysisFailureType.rawValue.getter();
  sub_249F9AA34();

  return sub_249F9AE84();
}

uint64_t sub_249F90964()
{
  v2 = *v0;
  AnalysisFailureType.rawValue.getter();
  sub_249F9AA34();
}

uint64_t sub_249F909C8()
{
  v1 = *v0;
  sub_249F9AE64();
  AnalysisFailureType.rawValue.getter();
  sub_249F9AA34();

  return sub_249F9AE84();
}

unint64_t sub_249F90A38@<X0>(unint64_t *a1@<X8>)
{
  result = AnalysisFailureType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AnalysisFailureState.xpcState.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AnalysisFailureState.xpcState.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AnalysisFailureState.init(xpcActivity:)@<X0>(_xpc_activity_s *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = xpc_activity_copy_criteria(a1);
  if (v3)
  {
    xpc_dictionary_get_uint64(v3, *MEMORY[0x277D86250]);
    v4 = sub_249F9ADE4();
    MEMORY[0x24C20A200](v4);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v7 = 0x3D79616C6564;
    v6 = 0xE600000000000000;
  }

  else
  {
    result = swift_unknownObjectRelease();
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_249F90BE8()
{
  result = qword_27EF2CDD8;
  if (!qword_27EF2CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CDD8);
  }

  return result;
}

unint64_t sub_249F90C40()
{
  result = qword_27EF2CDE0;
  if (!qword_27EF2CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CDE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalysisTypeForCA(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnalysisTypeForCA(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AnalysisFailureType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalysisFailureType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalysisFailure(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AnalysisFailure(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_249F91058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249F910A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_249F91108(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_249F9A794() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_249F985A0();
  }

  while ((sub_249F9A994() & 1) == 0);
  return v4 != v5;
}

uint64_t MachOAnalysisCoordinator.__allocating_init(interruptCallback:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 32) = 1;
  *(result + 34) = 0;
  *(result + 40) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MachOAnalysisCoordinator.init(interruptCallback:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 1;
  *(v2 + 34) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MachOAnalysisCoordinator.__allocating_init(interruptCallback:sendEvents:coreSymbolication:printTostdout:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 33) = a4;
  *(result + 34) = a5;
  return result;
}

uint64_t MachOAnalysisCoordinator.init(interruptCallback:sendEvents:coreSymbolication:printTostdout:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v5 + 40) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 33) = a4;
  *(v5 + 34) = a5;
  return v5;
}

uint64_t sub_249F912D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyzableTarget(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = (&v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = type metadata accessor for TargetType(0);
  v97 = *(v108 - 8);
  v7 = *(v97 + 64);
  v8 = MEMORY[0x28223BE20](v108);
  v98 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v96 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v100 = (&v92 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDE8, &unk_249F9C478);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v104 = &v92 - v18;
  v19 = sub_249F9A704();
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = *(v109 + 64);
  MEMORY[0x28223BE20](v19);
  v101 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_249F9A794();
  v105 = *(v22 - 8);
  v106 = v22;
  v23 = *(v105 + 64);
  MEMORY[0x28223BE20](v22);
  v111 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_249F9AA04();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249F9ABB4();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v30 = swift_allocObject();
  v94 = xmmword_249F9B920;
  *(v30 + 16) = xmmword_249F9B920;
  v31 = MEMORY[0x277D837D0];
  *(v30 + 56) = MEMORY[0x277D837D0];
  v93 = sub_249F7A16C();
  *(v30 + 64) = v93;
  *(v30 + 32) = a1;
  *(v30 + 40) = a2;
  v32 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

  v107 = v32;
  v33 = sub_249F9AC64();
  sub_249F9A874();
  v34 = a1;

  v35 = a1;
  v36 = a2;
  v37 = sub_249F9A1B8(v35);
  v112 = 0xD000000000000020;
  v113 = 0x8000000249F9E3D0;
  MEMORY[0x24C20A200](v37);

  v112 = sub_249F9AB04();
  v113 = v38;
  sub_249F9A9F4();
  sub_249F7798C();
  v39 = sub_249F9ACA4();
  (*(v26 + 8))(v29, v25);

  if (v39)
  {
    nm_CRSetCrashLogMessage(v39 + 32);
  }

  sub_249F9A744();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF0, &qword_249F9C488);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F9B930;
  v41 = *MEMORY[0x277CBEA18];
  *(inited + 32) = *MEMORY[0x277CBEA18];
  v42 = *MEMORY[0x277CBEA20];
  *(inited + 40) = *MEMORY[0x277CBEA20];
  v43 = v41;
  v44 = v42;
  sub_249F97280(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  v45 = v104;
  sub_249F9A734();

  v47 = v109;
  v46 = v110;
  (*(v109 + 56))(v45, 0, 1, v110);
  v48 = v101;
  (*(v47 + 32))(v101, v45, v46);
  v49 = sub_249F9A6D4();
  if (v49 == 2 || (v49) && ((v50 = sub_249F9A6F4(), v50 == 2) || (v50))
  {
    (*(v47 + 8))(v48, v46);
    v51 = v102;
    *v102 = v34;
    v51[1] = v36;
    swift_storeEnumTagMultiPayload();
    v52 = v51;
    v53 = v103;
    v54 = *(v103 + 33);
    type metadata accessor for AnalyticsRandomizer();
    v55 = swift_initStackObject();

    v55[2] = sub_249F790D0(MEMORY[0x277D84F90]);
    v55[5] = -1;
    sub_249F9ABB4();
    v56 = sub_249F9AC64();
    sub_249F9A874();

    v55[3] = 0xD00000000000002CLL;
    v55[4] = 0x8000000249F9E400;
    v55[5] = 500;
    v57 = swift_allocObject();
    swift_weakInit();
    v58 = *(v53 + 16);
    v59 = *(v53 + 24);

    sub_249F88ED4(v52, v58, v59, v54, v57, v55);

    sub_249F864E4();
    v61 = v60;

    sub_249F98538(v52, type metadata accessor for AnalyzableTarget);
    (*(v105 + 8))(v111, v106);

    swift_setDeallocating();
    v62 = v55[2];

    v63 = v55[4];
  }

  else
  {
    sub_249F9ABA4();
    v65 = swift_allocObject();
    *(v65 + 16) = v94;
    v66 = v93;
    *(v65 + 56) = v31;
    *(v65 + 64) = v66;
    *(v65 + 32) = v34;
    *(v65 + 40) = v36;

    v67 = sub_249F9AC64();
    sub_249F9A874();

    v68 = sub_249F9A1B8(v34);
    v69 = v100;
    *v100 = v68;
    v69[1] = v70;
    v71 = v108;
    swift_storeEnumTagMultiPayload();
    v72 = v97;
    (*(v97 + 56))(v69, 0, 1, v71);
    v104 = sub_249F9A1B8(v34);
    v73 = v96;
    sub_249F805EC(v69, v96);
    v74 = *(v72 + 48);
    if (v74(v73, 1, v71) == 1)
    {
      v75 = v99;
      swift_storeEnumTagMultiPayload();
      if (v74(v73, 1, v71) != 1)
      {
        sub_249F806B8(v73, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      v75 = v99;
      sub_249F7A2F8(v73, v99);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_249F9B940;
    *(v76 + 32) = 0x74536E6F6D656164;
    *(v76 + 40) = 0xEB00000000657461;
    *(v76 + 48) = sub_249F9A9A4();
    *(v76 + 56) = 0xD000000000000012;
    *(v76 + 64) = 0x8000000249F9CCF0;
    *(v76 + 72) = sub_249F9A9A4();
    *(v76 + 80) = 0x546572756C696166;
    *(v76 + 88) = 0xEB00000000657079;
    *(v76 + 96) = sub_249F9A9A4();
    strcpy((v76 + 104), "targetBundleID");
    *(v76 + 119) = -18;
    *(v76 + 120) = sub_249F9A9A4();
    *(v76 + 128) = 0xD000000000000013;
    *(v76 + 136) = 0x8000000249F9CD10;
    *(v76 + 144) = sub_249F9A9A4();
    *(v76 + 152) = 0x614E746567726174;
    *(v76 + 160) = 0xEA0000000000656DLL;
    *(v76 + 168) = sub_249F9A9A4();
    *(v76 + 176) = 0x6150746567726174;
    *(v76 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v104);

    v77 = sub_249F9A9A4();

    *(v76 + 192) = v77;
    *(v76 + 200) = 0x7954746567726174;
    *(v76 + 208) = 0xEA00000000006570;
    sub_249F7A228(v75, v98);
    sub_249F9AA14();
    v78 = sub_249F9A9A4();

    *(v76 + 216) = v78;
    *(v76 + 224) = 1701869940;
    *(v76 + 232) = 0xE400000000000000;
    *(v76 + 240) = sub_249F9AB64();
    strcpy((v76 + 248), "failureRetries");
    *(v76 + 263) = -18;
    *(v76 + 264) = sub_249F9AB64();
    v79 = sub_249F791D4(v76);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v80 = sub_249F9ABA4();
    v81 = sub_249F9AC64();
    if (os_log_type_enabled(v81, v80))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v112 = v83;
      *v82 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v84 = sub_249F9A974();
      v86 = sub_249F78A30(v84, v85, &v112);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_249F74000, v81, v80, "Sending failure analysis event: %s)", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x24C20AE50](v83, -1, -1);
      MEMORY[0x24C20AE50](v82, -1, -1);
    }

    v87 = v109;
    v88 = v101;
    v89 = sub_249F9A9A4();
    v90 = swift_allocObject();
    *(v90 + 16) = v79;
    v116 = sub_249F7A28C;
    v117 = v90;
    v112 = MEMORY[0x277D85DD0];
    v113 = 1107296256;
    v114 = sub_249F77EF4;
    v115 = &block_descriptor_6;
    v91 = _Block_copy(&v112);

    AnalyticsSendEventLazy();
    _Block_release(v91);

    sub_249F98538(v75, type metadata accessor for TargetType);
    sub_249F806B8(v100, &unk_27EF2CCC0, &unk_249F9B960);
    (*(v87 + 8))(v88, v110);
    (*(v105 + 8))(v111, v106);
    return 0;
  }

  return v61;
}

uint64_t sub_249F92134(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 40);
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(result + 40) = v5;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v6 = *(result + 32);

      if (v6 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_7:
  sub_249F85FFC(a1);
LABEL_8:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = *(result + 34);

  if (v7 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB78, &unk_249F9BF40);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249F9B920;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB80, &qword_249F9BBE0);
    *(v8 + 32) = a1;

    sub_249F9AE54();
  }

  return result;
}

uint64_t sub_249F922D0()
{
  v0 = type metadata accessor for TargetType(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v190 = &v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v189 = &v179 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v187 = &v179 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v194 = &v179 - v10;
  MEMORY[0x28223BE20](v9);
  v185 = &v179 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v191 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v179 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v188 = &v179 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v192 = (&v179 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v183 = &v179 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v186 = (&v179 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v182 = &v179 - v28;
  MEMORY[0x28223BE20](v27);
  v184 = (&v179 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF8, &qword_249F9C490);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v179 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v179 - v35;
  v37 = sub_249F9A794();
  v38 = *(v37 - 8);
  v39 = v38[8];
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v179 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v193 = &v179 - v43;
  v44 = sub_249F965AC();
  v195 = v0;
  if (!v44)
  {
    v53 = v190;
    sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v54 = sub_249F9AC64();
    sub_249F9A874();

    *v18 = 0;
    v18[1] = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    (*(v1 + 56))(v18, 0, 1, v0);
    v55 = v191;
    sub_249F805EC(v18, v191);
    v56 = *(v1 + 48);
    v57 = v56(v55, 1, v0);
    v180 = v18;
    if (v57 == 1)
    {
      swift_storeEnumTagMultiPayload();
      v58 = v53;
      if (v56(v55, 1, v0) != 1)
      {
        sub_249F806B8(v55, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      v58 = v53;
      sub_249F7A2F8(v55, v53);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    *(inited + 72) = sub_249F9A9A4();
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75);
    v83 = sub_249F9A9A4();

    *(inited + 192) = v83;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    sub_249F7A228(v58, v194);
    sub_249F9AA14();
    v84 = sub_249F9A9A4();

    *(inited + 216) = v84;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v85 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v86 = sub_249F9ABA4();
    v87 = sub_249F9AC64();
    if (os_log_type_enabled(v87, v86))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&aBlock = v89;
      *v88 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v90 = sub_249F9A974();
      v92 = sub_249F78A30(v90, v91, &aBlock);

      *(v88 + 4) = v92;
      _os_log_impl(&dword_249F74000, v87, v86, "Sending failure analysis event: %s)", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x24C20AE50](v89, -1, -1);
      MEMORY[0x24C20AE50](v88, -1, -1);
    }

    v93 = sub_249F9A9A4();
    v94 = swift_allocObject();
    *(v94 + 16) = v85;
    v205 = sub_249F7ABC0;
    v206 = v94;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v203 = sub_249F77EF4;
    v204 = &block_descriptor_10;
    v95 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v95);

    sub_249F98538(v58, type metadata accessor for TargetType);
    v96 = v180;
    goto LABEL_22;
  }

  v191 = v1;
  sub_249F95230(v44, v36);

  v45 = v38;
  v46 = v38[6];
  if (v46(v36, 1, v37) == 1)
  {
    sub_249F806B8(v36, &qword_27EF2CDF8, &qword_249F9C490);
    sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v47 = sub_249F9AC64();
    sub_249F9A874();

    v48 = v192;
    *v192 = 0;
    *(v48 + 8) = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    v49 = v191;
    (*(v191 + 56))(v48, 0, 1, v0);
    v50 = v188;
    sub_249F805EC(v48, v188);
    v51 = *(v49 + 48);
    if (v51(v50, 1, v0) == 1)
    {
      v52 = v189;
      swift_storeEnumTagMultiPayload();
      if (v51(v50, 1, v0) != 1)
      {
        sub_249F806B8(v50, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      v52 = v189;
      sub_249F7A2F8(v50, v189);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v97 = swift_initStackObject();
    *(v97 + 16) = xmmword_249F9B940;
    *(v97 + 32) = 0x74536E6F6D656164;
    *(v97 + 40) = 0xEB00000000657461;
    *(v97 + 48) = sub_249F9A9A4();
    *(v97 + 56) = 0xD000000000000012;
    *(v97 + 64) = 0x8000000249F9CCF0;
    *(v97 + 72) = sub_249F9A9A4();
    *(v97 + 80) = 0x546572756C696166;
    *(v97 + 88) = 0xEB00000000657079;
    *(v97 + 96) = sub_249F9A9A4();
    strcpy((v97 + 104), "targetBundleID");
    *(v97 + 119) = -18;
    *(v97 + 120) = sub_249F9A9A4();
    *(v97 + 128) = 0xD000000000000013;
    *(v97 + 136) = 0x8000000249F9CD10;
    *(v97 + 144) = sub_249F9A9A4();
    *(v97 + 152) = 0x614E746567726174;
    *(v97 + 160) = 0xEA0000000000656DLL;
    *(v97 + 168) = sub_249F9A9A4();
    *(v97 + 176) = 0x6150746567726174;
    *(v97 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75);
    v98 = sub_249F9A9A4();

    *(v97 + 192) = v98;
    *(v97 + 200) = 0x7954746567726174;
    *(v97 + 208) = 0xEA00000000006570;
    sub_249F7A228(v52, v194);
    sub_249F9AA14();
    v99 = sub_249F9A9A4();

    *(v97 + 216) = v99;
    *(v97 + 224) = 1701869940;
    *(v97 + 232) = 0xE400000000000000;
    *(v97 + 240) = sub_249F9AB64();
    strcpy((v97 + 248), "failureRetries");
    *(v97 + 263) = -18;
    *(v97 + 264) = sub_249F9AB64();
    v100 = sub_249F791D4(v97);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v101 = sub_249F9ABA4();
    v102 = sub_249F9AC64();
    if (os_log_type_enabled(v102, v101))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&aBlock = v104;
      *v103 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v105 = sub_249F9A974();
      v107 = sub_249F78A30(v105, v106, &aBlock);

      *(v103 + 4) = v107;
      _os_log_impl(&dword_249F74000, v102, v101, "Sending failure analysis event: %s)", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v104);
      MEMORY[0x24C20AE50](v104, -1, -1);
      MEMORY[0x24C20AE50](v103, -1, -1);
    }

    v108 = sub_249F9A9A4();
    v109 = swift_allocObject();
    *(v109 + 16) = v100;
    v205 = sub_249F7ABC0;
    v206 = v109;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v203 = sub_249F77EF4;
    v204 = &block_descriptor_17_0;
    v110 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v110);

    sub_249F98538(v52, type metadata accessor for TargetType);
    v96 = v192;
LABEL_22:
    sub_249F806B8(v96, &unk_27EF2CCC0, &unk_249F9B960);
    return 0;
  }

  v192 = v45;
  v59 = v45[4];
  v59(v193, v36, v37);
  v60 = sub_249F9748C();
  if (v60)
  {
    sub_249F95230(v60, v34);

    v61 = v46(v34, 1, v37);
    v62 = v37;
    v63 = v191;
    if (v61 != 1)
    {
      v59(v42, v34, v62);
      v130 = sub_249F9A784();
      v132 = sub_249F912D0(v130, v131);

      v133 = v192[1];
      v133(v42, v62);
      v133(v193, v62);
      return v132;
    }

    v190 = v62;
    sub_249F806B8(v34, &qword_27EF2CDF8, &qword_249F9C490);
    sub_249F9ABA4();
    v189 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v64 = sub_249F9AC64();
    sub_249F9A874();

    v65 = sub_249F9A784();
    sub_249F7B308(v65, v66, &aBlock);
    v67 = sub_249F9A784();
    v68 = sub_249F9A1B8(v67);
    v70 = v69;

    v71 = v184;
    *v184 = v68;
    *(v71 + 8) = v70;
    v72 = v195;
    swift_storeEnumTagMultiPayload();
    (*(v63 + 56))(v71, 0, 1, v72);
    v73 = sub_249F9A784();
    v187 = sub_249F9A1B8(v73);
    v188 = v74;

    v76 = v207;
    v75 = v208;
    v77 = v203;
    v78 = v204;
    v79 = v206;
    v183 = v205;
    v80 = v182;
    sub_249F805EC(v71, v182);
    v81 = *(v63 + 48);
    if (v81(v80, 1, v72) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v81(v80, 1, v72) != 1)
      {
        sub_249F806B8(v80, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v80, v185);
    }

    v158 = 0x206E776F6E6B6E75;
    if (v75)
    {
      v158 = v76;
    }

    v186 = v158;
    if (v78)
    {
      v159 = v77;
    }

    else
    {
      v159 = 0xD000000000000011;
    }

    v160 = 0xD000000000000016;
    if (v79)
    {
      v160 = v183;
    }

    v182 = v159;
    v183 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v161 = swift_allocObject();
    *(v161 + 16) = xmmword_249F9B940;
    *(v161 + 32) = 0x74536E6F6D656164;
    v191 = v161 + 32;
    *(v161 + 40) = 0xEB00000000657461;

    *(v161 + 48) = sub_249F9A9A4();
    *(v161 + 56) = 0xD000000000000012;
    *(v161 + 64) = 0x8000000249F9CCF0;
    *(v161 + 72) = sub_249F9A9A4();
    *(v161 + 80) = 0x546572756C696166;
    *(v161 + 88) = 0xEB00000000657079;
    *(v161 + 96) = sub_249F9A9A4();
    strcpy((v161 + 104), "targetBundleID");
    *(v161 + 119) = -18;
    v162 = sub_249F9A9A4();

    *(v161 + 120) = v162;
    *(v161 + 128) = 0xD000000000000013;
    *(v161 + 136) = 0x8000000249F9CD10;
    v163 = sub_249F9A9A4();

    *(v161 + 144) = v163;
    *(v161 + 152) = 0x614E746567726174;
    *(v161 + 160) = 0xEA0000000000656DLL;
    v164 = sub_249F9A9A4();

    *(v161 + 168) = v164;
    *(v161 + 176) = 0x6150746567726174;
    *(v161 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v187);

    v165 = sub_249F9A9A4();

    *(v161 + 192) = v165;
    *(v161 + 200) = 0x7954746567726174;
    *(v161 + 208) = 0xEA00000000006570;
    v166 = v185;
    sub_249F7A228(v185, v194);
    sub_249F9AA14();
    v167 = sub_249F9A9A4();

    *(v161 + 216) = v167;
    *(v161 + 224) = 1701869940;
    *(v161 + 232) = 0xE400000000000000;
    *(v161 + 240) = sub_249F9AB64();
    strcpy((v161 + 248), "failureRetries");
    *(v161 + 263) = -18;
    *(v161 + 264) = sub_249F9AB64();
    v168 = sub_249F791D4(v161);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v169 = sub_249F9ABA4();
    v170 = sub_249F9AC64();
    if (os_log_type_enabled(v170, v169))
    {
      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v196 = v172;
      *v171 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v173 = sub_249F9A974();
      v175 = sub_249F78A30(v173, v174, &v196);

      *(v171 + 4) = v175;
      _os_log_impl(&dword_249F74000, v170, v169, "Sending failure analysis event: %s)", v171, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v172);
      MEMORY[0x24C20AE50](v172, -1, -1);
      MEMORY[0x24C20AE50](v171, -1, -1);
    }

    v153 = v192;
    v176 = sub_249F9A9A4();
    v177 = swift_allocObject();
    *(v177 + 16) = v168;
    v200 = sub_249F7ABC0;
    v201 = v177;
    v196 = MEMORY[0x277D85DD0];
    v197 = 1107296256;
    v198 = sub_249F77EF4;
    v199 = &block_descriptor_31_0;
    v178 = _Block_copy(&v196);

    AnalyticsSendEventLazy();
    _Block_release(v178);

    sub_249F7B86C(&aBlock);
    sub_249F98538(v166, type metadata accessor for TargetType);
    v157 = v184;
  }

  else
  {
    v190 = v37;
    sub_249F9ABA4();
    v189 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v111 = sub_249F9AC64();
    sub_249F9A874();

    v112 = sub_249F9A784();
    sub_249F7B308(v112, v113, &aBlock);
    v114 = sub_249F9A784();
    v115 = sub_249F9A1B8(v114);
    v117 = v116;

    v118 = v186;
    *v186 = v115;
    *(v118 + 8) = v117;
    v119 = v195;
    swift_storeEnumTagMultiPayload();
    v120 = v191;
    (*(v191 + 56))(v118, 0, 1, v119);
    v121 = sub_249F9A784();
    v185 = sub_249F9A1B8(v121);
    v188 = v122;

    v124 = v207;
    v123 = v208;
    v125 = v203;
    v126 = v204;
    v127 = v206;
    v181 = v205;
    v128 = v183;
    sub_249F805EC(v118, v183);
    v129 = *(v120 + 48);
    if (v129(v128, 1, v119) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v129(v128, 1, v119) != 1)
      {
        sub_249F806B8(v128, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v128, v187);
    }

    v135 = 0x206E776F6E6B6E75;
    if (v123)
    {
      v135 = v124;
    }

    v184 = v135;
    if (v126)
    {
      v136 = v125;
    }

    else
    {
      v136 = 0xD000000000000011;
    }

    v137 = 0xD000000000000016;
    if (v127)
    {
      v137 = v181;
    }

    v182 = v136;
    v183 = v137;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_249F9B940;
    *(v138 + 32) = 0x74536E6F6D656164;
    v191 = v138 + 32;
    *(v138 + 40) = 0xEB00000000657461;

    *(v138 + 48) = sub_249F9A9A4();
    *(v138 + 56) = 0xD000000000000012;
    *(v138 + 64) = 0x8000000249F9CCF0;
    *(v138 + 72) = sub_249F9A9A4();
    *(v138 + 80) = 0x546572756C696166;
    *(v138 + 88) = 0xEB00000000657079;
    *(v138 + 96) = sub_249F9A9A4();
    strcpy((v138 + 104), "targetBundleID");
    *(v138 + 119) = -18;
    v139 = sub_249F9A9A4();

    *(v138 + 120) = v139;
    *(v138 + 128) = 0xD000000000000013;
    *(v138 + 136) = 0x8000000249F9CD10;
    v140 = sub_249F9A9A4();

    *(v138 + 144) = v140;
    *(v138 + 152) = 0x614E746567726174;
    *(v138 + 160) = 0xEA0000000000656DLL;
    v141 = sub_249F9A9A4();

    *(v138 + 168) = v141;
    *(v138 + 176) = 0x6150746567726174;
    *(v138 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v185);

    v142 = sub_249F9A9A4();

    *(v138 + 192) = v142;
    *(v138 + 200) = 0x7954746567726174;
    *(v138 + 208) = 0xEA00000000006570;
    v143 = v187;
    sub_249F7A228(v187, v194);
    sub_249F9AA14();
    v144 = sub_249F9A9A4();

    *(v138 + 216) = v144;
    *(v138 + 224) = 1701869940;
    *(v138 + 232) = 0xE400000000000000;
    *(v138 + 240) = sub_249F9AB64();
    strcpy((v138 + 248), "failureRetries");
    *(v138 + 263) = -18;
    *(v138 + 264) = sub_249F9AB64();
    v145 = sub_249F791D4(v138);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v146 = sub_249F9ABA4();
    v147 = sub_249F9AC64();
    if (os_log_type_enabled(v147, v146))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v196 = v149;
      *v148 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v150 = sub_249F9A974();
      v152 = sub_249F78A30(v150, v151, &v196);

      *(v148 + 4) = v152;
      _os_log_impl(&dword_249F74000, v147, v146, "Sending failure analysis event: %s)", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v149);
      MEMORY[0x24C20AE50](v149, -1, -1);
      MEMORY[0x24C20AE50](v148, -1, -1);
    }

    v153 = v192;
    v154 = sub_249F9A9A4();
    v155 = swift_allocObject();
    *(v155 + 16) = v145;
    v200 = sub_249F7ABC0;
    v201 = v155;
    v196 = MEMORY[0x277D85DD0];
    v197 = 1107296256;
    v198 = sub_249F77EF4;
    v199 = &block_descriptor_24_0;
    v156 = _Block_copy(&v196);

    AnalyticsSendEventLazy();
    _Block_release(v156);

    sub_249F7B86C(&aBlock);
    sub_249F98538(v143, type metadata accessor for TargetType);
    v157 = v186;
  }

  sub_249F806B8(v157, &unk_27EF2CCC0, &unk_249F9B960);
  (v153[1])(v193, v190);
  return 0;
}

uint64_t sub_249F9413C()
{
  v111 = type metadata accessor for TargetType(0);
  v107 = *(v111 - 8);
  v0 = *(v107 + 8);
  v1 = MEMORY[0x28223BE20](v111);
  v85 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v106 = &v84 - v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v84 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v84 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v86 = (&v84 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v84 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v84 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF8, &qword_249F9C490);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v84 - v20;
  v22 = sub_249F9A794();
  *&v100 = *(v22 - 8);
  v23 = *(v100 + 64);
  MEMORY[0x28223BE20](v22);
  v109 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249F9ABB4();
  v110 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v25 = sub_249F9AC64();
  v26 = v22;
  sub_249F9A874();

  v112 = 0;
  v108 = (v100 + 48);
  v98 = (v100 + 32);
  v99 = (v107 + 56);
  v92 = "o binary, attempt %d";
  v104 = "pping microstackshot analysis";
  v105 = "unknown bundle ID";
  v101 = (v107 + 48);
  v102 = 0x8000000249F9CCF0;
  v103 = 0x8000000249F9CD10;
  v107 = "targetBundleVersion";
  v90 = &v115;
  v91 = "^/Users/.+/Library";
  v97 = (v100 + 8);
  v89 = xmmword_249F9B930;
  *(&v27 + 1) = 20;
  v100 = xmmword_249F9B940;
  *&v27 = 136315138;
  v88 = v27;
  v95 = v17;
  v96 = v15;
  v87 = v6;
  v93 = v22;
  v94 = v21;
  while (1)
  {
    sub_249F95230(MEMORY[0x277D84F90], v21);
    if ((*v108)(v21, 1, v26) == 1)
    {
      break;
    }

    v37 = v109;
    (*v98)(v109, v21, v26);
    v38 = sub_249F9A784();
    v40 = sub_249F912D0(v38, v39);

    if (v40)
    {
      (*v97)(v37, v26);

      return v40;
    }

    sub_249F9ABA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v41 = swift_allocObject();
    *(v41 + 16) = v89;
    v42 = sub_249F9A784();
    v44 = v43;
    *(v41 + 56) = MEMORY[0x277D837D0];
    v45 = sub_249F7A16C();
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    *(v41 + 96) = MEMORY[0x277D83B88];
    *(v41 + 104) = MEMORY[0x277D83C10];
    v46 = v112;
    *(v41 + 64) = v45;
    *(v41 + 72) = v46;
    v47 = sub_249F9AC64();
    sub_249F9A874();

    v48 = sub_249F9A784();
    v49 = sub_249F9A1B8(v48);
    v51 = v50;

    *v17 = v49;
    v17[1] = v51;
    v52 = v111;
    swift_storeEnumTagMultiPayload();
    (*v99)(v17, 0, 1, v52);
    v53 = sub_249F9A784();
    v54 = sub_249F9A1B8(v53);

    sub_249F805EC(v17, v15);
    v55 = *v101;
    if ((*v101)(v15, 1, v52) == 1)
    {
      swift_storeEnumTagMultiPayload();
      v56 = v6;
      if (v55(v15, 1, v52) != 1)
      {
        sub_249F806B8(v15, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v15, v6);
      v56 = v6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = v100;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = v102;
    *(inited + 72) = sub_249F9A9A4();
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = v103;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v54);

    v58 = sub_249F9A9A4();

    *(inited + 192) = v58;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    sub_249F7A228(v56, v106);
    sub_249F9AA14();
    v59 = sub_249F9A9A4();

    *(inited + 216) = v59;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v60 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v61 = sub_249F9ABA4();
    v62 = sub_249F9AC64();
    if (os_log_type_enabled(v62, v61))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v113 = v29;
      *v28 = v88;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v30 = sub_249F9A974();
      v32 = sub_249F78A30(v30, v31, &v113);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_249F74000, v62, v61, "Sending failure analysis event: %s)", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v33 = v29;
      v6 = v87;
      MEMORY[0x24C20AE50](v33, -1, -1);
      MEMORY[0x24C20AE50](v28, -1, -1);
    }

    else
    {
      v6 = v56;
    }

    v21 = v94;
    v34 = sub_249F9A9A4();
    v35 = swift_allocObject();
    *(v35 + 16) = v60;
    v117 = sub_249F7ABC0;
    v118 = v35;
    v113 = MEMORY[0x277D85DD0];
    v114 = 1107296256;
    v115 = sub_249F77EF4;
    v116 = &block_descriptor_45;
    v36 = _Block_copy(&v113);

    AnalyticsSendEventLazy();
    _Block_release(v36);

    sub_249F98538(v6, type metadata accessor for TargetType);
    v17 = v95;
    sub_249F806B8(v95, &unk_27EF2CCC0, &unk_249F9B960);
    v26 = v93;
    (*v97)(v109, v93);
    ++v112;
    v15 = v96;
    if (v112 == 5)
    {

      return 0;
    }
  }

  sub_249F806B8(v21, &qword_27EF2CDF8, &qword_249F9C490);
  sub_249F9ABA4();
  v63 = sub_249F9AC64();
  sub_249F9A874();

  v64 = v86;
  *v86 = 0;
  *(v64 + 8) = 0xE000000000000000;
  v65 = v111;
  swift_storeEnumTagMultiPayload();
  (*v99)(v64, 0, 1, v65);
  v66 = v84;
  sub_249F805EC(v64, v84);
  v67 = *v101;
  if ((*v101)(v66, 1, v65) == 1)
  {
    v68 = v85;
    swift_storeEnumTagMultiPayload();
    if (v67(v66, 1, v65) != 1)
    {
      sub_249F806B8(v66, &unk_27EF2CCC0, &unk_249F9B960);
    }
  }

  else
  {
    v68 = v85;
    sub_249F7A2F8(v66, v85);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
  v69 = swift_initStackObject();
  *(v69 + 16) = v100;
  *(v69 + 32) = 0x74536E6F6D656164;
  *(v69 + 40) = 0xEB00000000657461;
  *(v69 + 48) = sub_249F9A9A4();
  *(v69 + 56) = 0xD000000000000012;
  *(v69 + 64) = v102;
  *(v69 + 72) = sub_249F9A9A4();
  *(v69 + 80) = 0x546572756C696166;
  *(v69 + 88) = 0xEB00000000657079;
  *(v69 + 96) = sub_249F9A9A4();
  strcpy((v69 + 104), "targetBundleID");
  *(v69 + 119) = -18;
  *(v69 + 120) = sub_249F9A9A4();
  *(v69 + 128) = 0xD000000000000013;
  *(v69 + 136) = v103;
  *(v69 + 144) = sub_249F9A9A4();
  *(v69 + 152) = 0x614E746567726174;
  *(v69 + 160) = 0xEA0000000000656DLL;
  *(v69 + 168) = sub_249F9A9A4();
  *(v69 + 176) = 0x6150746567726174;
  *(v69 + 184) = 0xEA00000000006874;
  sub_249F9A1B8(0x206E776F6E6B6E75);
  v70 = sub_249F9A9A4();

  *(v69 + 192) = v70;
  *(v69 + 200) = 0x7954746567726174;
  *(v69 + 208) = 0xEA00000000006570;
  sub_249F7A228(v68, v106);
  sub_249F9AA14();
  v71 = sub_249F9A9A4();

  *(v69 + 216) = v71;
  *(v69 + 224) = 1701869940;
  *(v69 + 232) = 0xE400000000000000;
  *(v69 + 240) = sub_249F9AB64();
  strcpy((v69 + 248), "failureRetries");
  *(v69 + 263) = -18;
  *(v69 + 264) = sub_249F9AB64();
  v72 = sub_249F791D4(v69);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
  swift_arrayDestroy();
  v73 = sub_249F9ABA4();
  v74 = sub_249F9AC64();
  if (os_log_type_enabled(v74, v73))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v113 = v76;
    *v75 = v88;
    sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
    v77 = sub_249F9A974();
    v79 = sub_249F78A30(v77, v78, &v113);

    *(v75 + 4) = v79;
    v64 = v86;
    _os_log_impl(&dword_249F74000, v74, v73, "Sending failure analysis event: %s)", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x24C20AE50](v76, -1, -1);
    MEMORY[0x24C20AE50](v75, -1, -1);
  }

  v80 = sub_249F9A9A4();
  v81 = swift_allocObject();
  *(v81 + 16) = v72;
  v117 = sub_249F7ABC0;
  v118 = v81;
  v113 = MEMORY[0x277D85DD0];
  v114 = 1107296256;
  v115 = sub_249F77EF4;
  v116 = &block_descriptor_38;
  v82 = _Block_copy(&v113);

  AnalyticsSendEventLazy();
  _Block_release(v82);

  sub_249F98538(v68, type metadata accessor for TargetType);
  sub_249F806B8(v64, &unk_27EF2CCC0, &unk_249F9B960);
  return 0;
}

uint64_t sub_249F95230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_249F9A794();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF8, &qword_249F9C490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = *(v5 + 56);
  result = v13(&v27 - v11, 1, 1, v4);
  v15 = *(a1 + 16);
  if (!v15)
  {
    sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v22 = sub_249F9AC64();
    sub_249F9A874();

    v13(a2, 1, 1, v4);
    return sub_249F806B8(v12, &qword_27EF2CDF8, &qword_249F9C490);
  }

  if (HIDWORD(v15))
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = arc4random_uniform(*(a1 + 16));
  result = sub_249F806B8(v12, &qword_27EF2CDF8, &qword_249F9C490);
  if (v15 <= v16)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v28 = a2;
  v17 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16;
  v18 = *(v5 + 16);
  v18(v12, v17, v4);
  v13(v12, 0, 1, v4);
  sub_249F9AB84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249F9B920;
  if ((*(v5 + 48))(v12, 1, v4))
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v18(v8, v12, v4);
    v20 = sub_249F9A784();
    v21 = v23;
    (*(v5 + 8))(v8, v4);
  }

  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_249F7A16C();
  if (v21)
  {
    v24 = v20;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (v21)
  {
    v25 = v21;
  }

  *(v19 + 32) = v24;
  *(v19 + 40) = v25;
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v26 = sub_249F9AC64();
  sub_249F9A874();

  return sub_249F985F8(v12, v28);
}

uint64_t sub_249F955C0(uint64_t a1, uint64_t a2)
{
  v112 = type metadata accessor for TargetType(0);
  v103 = *(v112 - 8);
  v4 = *(v103 + 64);
  v5 = MEMORY[0x28223BE20](v112);
  v104 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v106 = (&v100 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v109 = (&v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v108 = &v100 - v12;
  v13 = type metadata accessor for AnalyzableTarget(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v115 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_249F9A794();
  v113 = *(v16 - 8);
  v17 = v113[8];
  v18 = MEMORY[0x28223BE20](v16);
  v114 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v100 - v20;
  sub_249F9ABB4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v23 = swift_allocObject();
  v102 = xmmword_249F9B920;
  *(v23 + 16) = xmmword_249F9B920;
  *(v23 + 56) = MEMORY[0x277D837D0];
  v101 = sub_249F7A16C();
  *(v23 + 64) = v101;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  v24 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

  v25 = sub_249F9AC64();
  v26 = v113;
  sub_249F9A874();

  v27 = v16;

  sub_249F7B308(a1, a2, &v117);
  sub_249F9A744();
  v28 = sub_249F9748C();
  v29 = v21;
  v30 = v26[1];
  v30(v29, v16);
  v107 = v24;
  if (v28)
  {
    v104 = v22;
    sub_249F7B86C(&v117);
    v106 = v28;
    v31 = v28[2];
    v32 = v105;
    v33 = v26 + 1;
    v34 = v114;
    v35 = v115;
    if (v31)
    {
      v36 = v30;
      v38 = v26[2];
      v37 = v26 + 2;
      v39 = v106 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
      v108 = v37[7];
      v109 = v38;
      v110 = v27;
      v111 = v33;
      do
      {
        v40 = v109(v34, v39, v27);
        v113 = MEMORY[0x24C20A7A0](v40);
        *v35 = sub_249F9A774();
        v35[1] = v41;
        swift_storeEnumTagMultiPayload();
        v42 = *(v32 + 33);
        v43 = v32;
        v44 = v37;
        v45 = swift_allocObject();
        swift_weakInit();
        v46 = v36;
        v48 = *(v43 + 16);
        v47 = *(v43 + 24);

        v49 = v48;
        v36 = v46;
        v50 = v42;
        v27 = v110;
        sub_249F8A5A4(v115, v49, v47, v50, v45);
        v35 = v115;

        sub_249F98538(v35, type metadata accessor for AnalyzableTarget);
        v37 = v44;
        v32 = v43;

        v34 = v114;
        objc_autoreleasePoolPop(v113);
        v46(v34, v27);
        v39 += v108;
        --v31;
      }

      while (v31);
    }

    sub_249F9ABB4();
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_249F9B930;
    v52 = v106[2];

    v53 = MEMORY[0x277D83B88];
    v54 = MEMORY[0x277D83C10];
    *(v51 + 56) = MEMORY[0x277D83B88];
    *(v51 + 64) = v54;
    *(v51 + 32) = v52;
    v55 = *(v32 + 40);
    *(v51 + 96) = v53;
    *(v51 + 104) = v54;
    *(v51 + 72) = v55;
    v56 = sub_249F9AC64();
    sub_249F9A874();

    return *(v32 + 40);
  }

  else
  {
    sub_249F9ABA4();
    v58 = swift_allocObject();
    *(v58 + 16) = v102;
    v59 = v101;
    *(v58 + 56) = MEMORY[0x277D837D0];
    *(v58 + 64) = v59;
    *(v58 + 32) = a1;
    *(v58 + 40) = a2;

    v60 = sub_249F9AC64();
    sub_249F9A874();

    v61 = sub_249F9A1B8(a1);
    v62 = v108;
    *v108 = v61;
    v62[1] = v63;
    v64 = v112;
    swift_storeEnumTagMultiPayload();
    v65 = v103;
    (*(v103 + 56))(v62, 0, 1, v64);
    v114 = sub_249F9A1B8(a1);
    v115 = v66;
    v67 = v122;
    v68 = v123;
    v69 = v119;
    v113 = v118;
    v71 = v120;
    v70 = v121;
    v72 = v62;
    v73 = v109;
    sub_249F805EC(v72, v109);
    v74 = *(v65 + 48);
    if (v74(v73, 1, v64) == 1)
    {
      v75 = v71;
      v76 = v112;
      swift_storeEnumTagMultiPayload();
      v77 = v76;
      v71 = v75;
      if (v74(v109, 1, v77) != 1)
      {
        sub_249F806B8(v109, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v109, v106);
    }

    v78 = 0x206E776F6E6B6E75;
    if (v68)
    {
      v78 = v67;
    }

    v111 = v78;
    v79 = v113;
    if (!v69)
    {
      v79 = 0xD000000000000011;
    }

    v80 = 0xD000000000000016;
    if (v70)
    {
      v80 = v71;
    }

    v109 = v79;
    v110 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    v113 = (inited + 32);
    *(inited + 40) = 0xEB00000000657461;

    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    *(inited + 72) = sub_249F9A9A4();
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    v82 = sub_249F9A9A4();

    *(inited + 120) = v82;
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    v83 = sub_249F9A9A4();

    *(inited + 144) = v83;
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    v84 = sub_249F9A9A4();

    *(inited + 168) = v84;
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v114);

    v85 = sub_249F9A9A4();

    *(inited + 192) = v85;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    v86 = v106;
    sub_249F7A228(v106, v104);
    sub_249F9AA14();
    v87 = sub_249F9A9A4();

    *(inited + 216) = v87;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v88 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v89 = sub_249F9ABA4();
    v90 = sub_249F9AC64();
    if (os_log_type_enabled(v90, v89))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v116[0] = v92;
      *v91 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v93 = sub_249F9A974();
      v95 = sub_249F78A30(v93, v94, v116);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_249F74000, v90, v89, "Sending failure analysis event: %s)", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x24C20AE50](v92, -1, -1);
      MEMORY[0x24C20AE50](v91, -1, -1);
    }

    v96 = v108;
    v97 = sub_249F9A9A4();
    v98 = swift_allocObject();
    *(v98 + 16) = v88;
    v116[4] = sub_249F7ABC0;
    v116[5] = v98;
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 1107296256;
    v116[2] = sub_249F77EF4;
    v116[3] = &block_descriptor_52;
    v99 = _Block_copy(v116);

    AnalyticsSendEventLazy();
    _Block_release(v99);

    sub_249F7B86C(&v117);
    sub_249F98538(v86, type metadata accessor for TargetType);
    sub_249F806B8(v96, &unk_27EF2CCC0, &unk_249F9B960);
    return 0;
  }
}

uint64_t sub_249F961E8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 40);
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(result + 40) = v5;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v6 = *(result + 32);

      if (v6 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_7:
  v7 = sub_249F9A9A4();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v12[4] = sub_249F7A97C;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_249F77EF4;
  v12[3] = &block_descriptor_78;
  v9 = _Block_copy(v12);

  AnalyticsSendEventLazy();
  _Block_release(v9);

LABEL_8:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v10 = *(result + 34);

  if (v10 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB78, &unk_249F9BF40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249F9B920;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB80, &qword_249F9BBE0);
    *(v11 + 32) = a1;

    sub_249F9AE54();
  }

  return result;
}

uint64_t MachOAnalysisCoordinator.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MachOAnalysisCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

char *sub_249F964A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDC8, &qword_249F9C140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_249F965AC()
{
  v72 = sub_249F9A794();
  v0 = *(v72 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v72);
  v71 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v83 = &v69 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v80 = &v69 - v7;
  MEMORY[0x28223BE20](v6);
  v85 = &v69 - v8;
  v81 = [objc_opt_self() enumeratorWithOptions_];
  v9 = [v81 nextObject];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0x277D84F90];
    v84 = v0 + 32;
    v86 = xmmword_249F9B920;
    do
    {
      v70 = v11;
      while (1)
      {
        sub_249F9AB94();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
        v12 = swift_allocObject();
        *(v12 + 16) = v86;
        v13 = v10;
        v14 = [v13 bundleIdentifier];
        if (v14)
        {
          v15 = v14;
          v16 = sub_249F9A9D4();
          v18 = v17;
        }

        else
        {
          v16 = 0;
          v18 = 0;
        }

        *&v89 = v16;
        *(&v89 + 1) = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CE18, &qword_249F9C520);
        v19 = sub_249F9AA14();
        v21 = v20;
        *(v12 + 56) = MEMORY[0x277D837D0];
        *(v12 + 64) = sub_249F7A16C();
        *(v12 + 32) = v19;
        *(v12 + 40) = v21;
        sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
        v22 = sub_249F9AC64();
        sub_249F9A874();

        v23 = [v13 bundleIdentifier];
        if (v23)
        {

          result = [v13 bundleIdentifier];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v25 = result;
          v26 = sub_249F9A9D4();
          v28 = v27;

          *&v89 = v26;
          *(&v89 + 1) = v28;
          v87 = 0x6C7070612E6D6F63;
          v88 = 0xE900000000000065;
          sub_249F7798C();
          LOBYTE(v26) = sub_249F9ACB4();

          if ((v26 & 1) == 0)
          {
            break;
          }
        }

        v10 = [v81 nextObject];
        if (!v10)
        {
          v11 = v70;
          goto LABEL_19;
        }
      }

      v29 = [v13 URL];

      sub_249F9A764();
      v11 = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_249F8ED1C(0, v11[2] + 1, 1, v11);
      }

      v31 = v11[2];
      v30 = v11[3];
      if (v31 >= v30 >> 1)
      {
        v11 = sub_249F8ED1C(v30 > 1, v31 + 1, 1, v11);
      }

      v11[2] = v31 + 1;
      (*(v0 + 32))(v11 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v31, v85, v72);
      v10 = [v81 nextObject];
    }

    while (v10);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

LABEL_19:
  sub_249F9AB94();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v33 = swift_allocObject();
  v77 = xmmword_249F9B920;
  *(v33 + 16) = xmmword_249F9B920;
  *(v33 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CE08, &qword_249F9C518);
  *(v33 + 64) = sub_249F98668();
  *(v33 + 32) = v11;
  v34 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

  v35 = sub_249F9AC64();
  sub_249F9A874();

  sub_249F9ABB4();
  v75 = v32;
  v36 = swift_allocObject();
  *(v36 + 16) = v77;
  v37 = v11[2];
  v38 = MEMORY[0x277D83C10];
  *(v36 + 56) = MEMORY[0x277D83B88];
  *(v36 + 64) = v38;
  *(v36 + 32) = v37;
  v76 = v34;
  v39 = sub_249F9AC64();
  sub_249F9A874();

  type metadata accessor for IgnoreListDataStore();
  swift_initStackObject();
  v82 = sub_249F8BD98();
  v40 = v11[2];
  if (v40)
  {
    v43 = *(v0 + 16);
    v42 = v0 + 16;
    v41 = v43;
    v44 = (*(v42 + 64) + 32) & ~*(v42 + 64);
    v70 = v11;
    v74 = v44;
    v45 = v11 + v44;
    v46 = *(v42 + 56);
    v78 = (v42 - 8);
    v73 = (v42 + 16);
    v47 = MEMORY[0x277D84F90];
    v48 = v72;
    v84 = v42;
    v49 = v80;
    v79 = v46;
    do
    {
      *&v86 = v40;
      v85 = v47;
      v41(v49, v45, v48);
      v56 = sub_249F9A784();
      sub_249F7B308(v56, v57, &v89);
      if (v93)
      {
        v58 = v92;
      }

      else
      {
        v58 = 0;
      }

      if (v93)
      {
        v59 = v93;
      }

      else
      {
        v59 = 0xE000000000000000;
      }

      if (v91)
      {
        v60 = v90;
      }

      else
      {
        v60 = 0;
      }

      if (v91)
      {
        v61 = v91;
      }

      else
      {
        v61 = 0xE000000000000000;
      }

      sub_249F7B86C(&v89);
      v87 = v58;
      v88 = v59;

      MEMORY[0x24C20A200](45, 0xE100000000000000);
      MEMORY[0x24C20A200](v60, v61);
      MEMORY[0x24C20A200](45, 0xE100000000000000);
      MEMORY[0x24C20A200](7565161, 0xE300000000000000);
      v62 = sub_249F8CDF4(0, v87, v88);

      if (v62)
      {
        sub_249F9AB84();
        v50 = swift_allocObject();
        *(v50 + 16) = v77;
        v49 = v80;
        v51 = sub_249F9A754();
        v53 = v52;
        *(v50 + 56) = MEMORY[0x277D837D0];
        *(v50 + 64) = sub_249F7A16C();
        *(v50 + 32) = v51;
        *(v50 + 40) = v53;
        v54 = sub_249F9AC64();
        sub_249F9A874();

        v48 = v72;
        (*v78)(v49, v72);
        v47 = v85;
        v55 = v79;
      }

      else
      {
        v49 = v80;
        v48 = v72;
        v41(v71, v80, v72);
        v47 = v85;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_249F8ED1C(0, *(v47 + 2) + 1, 1, v47);
        }

        v64 = *(v47 + 2);
        v63 = *(v47 + 3);
        if (v64 >= v63 >> 1)
        {
          v47 = sub_249F8ED1C(v63 > 1, v64 + 1, 1, v47);
        }

        (*v78)(v49, v48);
        *(v47 + 2) = v64 + 1;
        v55 = v79;
        (*v73)(&v47[v74 + v64 * v79], v71, v48);
      }

      v45 += v55;
      v40 = v86 - 1;
    }

    while (v86 != 1);
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  sub_249F8C660();
  if (*(v47 + 2))
  {
    sub_249F9ABB4();
    v65 = swift_allocObject();
    *(v65 + 16) = v77;
    v66 = *(v47 + 2);
    *(v65 + 56) = MEMORY[0x277D83B88];
    *(v65 + 64) = MEMORY[0x277D83C10];
    *(v65 + 32) = v66;

    v67 = sub_249F9AC64();
    sub_249F9A874();
  }

  else
  {

    sub_249F9ABB4();
    v68 = sub_249F9AC64();
    sub_249F9A874();

    return 0;
  }

  return v47;
}

uint64_t sub_249F97280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CE20, qword_249F9C528);
    v3 = sub_249F9ACF4();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_249F9A9D4();
      sub_249F9AE64();
      v29 = v7;
      sub_249F9AA34();
      v9 = sub_249F9AE84();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_249F9A9D4();
        v20 = v19;
        if (v18 == sub_249F9A9D4() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_249F9ADF4();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_249F9748C()
{
  v126 = 0;
  v112 = sub_249F9A704();
  v0 = *(v112 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v112);
  v108 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v124 = &v101 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF8, &qword_249F9C490);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v101 - v7;
  v9 = sub_249F9A794();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v122 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v113 = &v101 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v101 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v106 = &v101 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v101 - v21;
  v23 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF0, &qword_249F9C488);
  v24 = swift_allocObject();
  v123 = xmmword_249F9B920;
  *(v24 + 16) = xmmword_249F9B920;
  v25 = *MEMORY[0x277CBE868];
  *(v24 + 32) = *MEMORY[0x277CBE868];
  v121 = v25;
  v109 = v23;
  v26 = sub_249F9AB74();

  v114 = v26;
  v119 = v9;
  v120 = v18;
  if (v26)
  {
    v117 = (v10 + 48);
    v118 = (v10 + 56);
    v116 = (v10 + 32);
    v111 = (v0 + 8);
    v107 = *MEMORY[0x277CBE8B0];
    v104 = (v10 + 16);
    v105 = &v128;
    v115 = (v10 + 8);
    v110 = MEMORY[0x277D84F90];
    v27 = v10;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if ([v114 nextObject])
          {
            sub_249F9ACC4();
            swift_unknownObjectRelease();
          }

          else
          {
            v131 = 0u;
            v132 = 0u;
          }

          v127 = v131;
          v128 = v132;
          if (!*(&v132 + 1))
          {
            v58 = v110;
            goto LABEL_31;
          }

          v28 = swift_dynamicCast();
          (*v118)(v8, v28 ^ 1u, 1, v9);
          if ((*v117)(v8, 1, v9) == 1)
          {
            v58 = v110;
            goto LABEL_33;
          }

          v29 = v27;
          v30 = *v116;
          (*v116)(v22, v8, v9);
          inited = swift_initStackObject();
          *(inited + 16) = v123;
          v32 = v121;
          *(inited + 32) = v121;
          v33 = v32;
          sub_249F97280(inited);
          swift_setDeallocating();
          sub_249F98538(inited + 32, type metadata accessor for URLResourceKey);
          v34 = v124;
          v35 = v126;
          sub_249F9A734();
          v126 = v35;
          if (v35)
          {
            goto LABEL_11;
          }

          v36 = sub_249F9A6C4();
          v37 = *v111;
          (*v111)(v34, v112);
          v18 = v120;
          if (v36 == 2 || (v36 & 1) != 0)
          {
LABEL_3:
            v9 = v119;
            goto LABEL_4;
          }

          v38 = swift_initStackObject();
          *(v38 + 16) = v123;
          v39 = v107;
          *(v38 + 32) = v107;
          v40 = v39;
          sub_249F97280(v38);
          swift_setDeallocating();
          sub_249F98538(v38 + 32, type metadata accessor for URLResourceKey);
          v41 = v108;
          v42 = v126;
          sub_249F9A734();
          v126 = v42;
          if (v42)
          {
            v9 = v119;
LABEL_11:
            v18 = v120;

            v126 = 0;
            goto LABEL_4;
          }

          v43 = sub_249F9A6E4();
          v37(v41, v112);
          v18 = v120;
          if (v43 == 2)
          {
            goto LABEL_3;
          }

          v9 = v119;
          if ((v43 & 1) == 0)
          {
            break;
          }

LABEL_4:
          (*v115)(v22, v9);
        }

        sub_249F9A784();
        v44 = swift_allocObject();
        *(v44 + 16) = 0;
        v103 = (v44 + 16);
        v102 = sub_249F9A9A4();

        v129 = sub_249F98598;
        v130 = v44;
        v101 = v44;
        *&v127 = MEMORY[0x277D85DD0];
        *(&v127 + 1) = 1107296256;
        *&v128 = sub_249F80C8C;
        *(&v128 + 1) = &block_descriptor_85;
        v45 = _Block_copy(&v127);

        v46 = v102;
        nm_macho_for_each_slice(v102, v45);
        _Block_release(v45);

        v47 = v103;
        swift_beginAccess();
        v48 = *v47;

        if (v48)
        {
          break;
        }

        (*v115)(v22, v9);
LABEL_23:
        v18 = v120;
      }

      if (sub_249F91108(v22, v110))
      {
        v9 = v119;
        (*v115)(v22, v119);
        goto LABEL_23;
      }

      LODWORD(v103) = sub_249F9AB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
      v49 = swift_allocObject();
      *(v49 + 16) = v123;
      v50 = sub_249F9A784();
      v52 = v51;
      *(v49 + 56) = MEMORY[0x277D837D0];
      *(v49 + 64) = sub_249F7A16C();
      *(v49 + 32) = v50;
      *(v49 + 40) = v52;
      sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
      v53 = sub_249F9AC64();
      sub_249F9A874();

      (*v104)(v106, v22, v119);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_249F8ED1C(0, v110[2] + 1, 1, v110);
      }

      v55 = v110[2];
      v54 = v110[3];
      v9 = v119;
      v18 = v120;
      if (v55 >= v54 >> 1)
      {
        v110 = sub_249F8ED1C(v54 > 1, v55 + 1, 1, v110);
      }

      (*(v29 + 8))(v22, v9);
      v56 = v110;
      v110[2] = v55 + 1;
      v57 = v56 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v55;
      v27 = v29;
      v30(v57, v106, v9);
    }
  }

  v127 = 0u;
  v128 = 0u;
  v58 = MEMORY[0x277D84F90];
  v27 = v10;
LABEL_31:
  sub_249F806B8(&v127, &unk_27EF2CBC8, &qword_249F9C510);
  (*(v27 + 56))(v8, 1, 1, v9);
LABEL_33:
  sub_249F806B8(v8, &qword_27EF2CDF8, &qword_249F9C490);
  type metadata accessor for IgnoreListDataStore();
  swift_initStackObject();
  v121 = sub_249F8BD98();
  v59 = v58[2];
  if (v59)
  {
    v61 = *(v27 + 16);
    v60 = v27 + 16;
    v62 = *(v60 + 64);
    v110 = v58;
    v116 = ((v62 + 32) & ~v62);
    v63 = &v116[v58];
    v64 = v61;
    v65 = *(v60 + 56);
    v117 = (v60 - 8);
    v115 = (v60 + 16);
    v66 = MEMORY[0x277D84F90];
    v124 = v61;
    v118 = v65;
    do
    {
      v125 = v66;
      v64(v18, v63, v9);
      v74 = sub_249F9A784();
      v75 = v60;
      v77 = v76;
      type metadata accessor for MachOParser();
      swift_allocObject();
      sub_249F85C5C(v74, v77, sub_249F7C9A0, 0);
      v78 = sub_249F80D00();
      if (v79)
      {
        v80 = v78;
      }

      else
      {
        v80 = 0;
      }

      v81 = 0xE000000000000000;
      if (v79)
      {
        v81 = v79;
      }

      *&v127 = v80;
      *(&v127 + 1) = v81;
      MEMORY[0x24C20A200](45, 0xE100000000000000);
      MEMORY[0x24C20A200](7565161, 0xE300000000000000);
      v82 = v126;
      v83 = sub_249F8CDF4(1, v127, *(&v127 + 1));
      v126 = v82;
      if (v82)
      {

        sub_249F9ABA4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
        v84 = swift_allocObject();
        *(v84 + 16) = v123;
        v85 = sub_249F9A784();
        v87 = v86;
        *(v84 + 56) = MEMORY[0x277D837D0];
        *(v84 + 64) = sub_249F7A16C();
        *(v84 + 32) = v85;
        *(v84 + 40) = v87;
        v9 = v119;
        sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
        v88 = sub_249F9AC64();
        sub_249F9A874();

        (v124)(v122, v18, v9);
        v66 = v125;
        v60 = v75;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_249F8ED1C(0, *(v66 + 16) + 1, 1, v66);
        }

        v90 = *(v66 + 16);
        v89 = *(v66 + 24);
        v64 = v124;
        if (v90 >= v89 >> 1)
        {
          v66 = sub_249F8ED1C(v89 > 1, v90 + 1, 1, v66);
        }

        (*v117)(v18, v9);
        *(v66 + 16) = v90 + 1;
        v73 = v118;
        (*v115)(&v116[v66 + v90 * v118], v122, v9);
        v126 = 0;
      }

      else
      {
        v91 = v83;

        if (v91)
        {
          sub_249F9AB94();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
          v67 = swift_allocObject();
          *(v67 + 16) = v123;
          v18 = v120;
          v68 = sub_249F9A784();
          v70 = v69;
          *(v67 + 56) = MEMORY[0x277D837D0];
          *(v67 + 64) = sub_249F7A16C();
          *(v67 + 32) = v68;
          *(v67 + 40) = v70;
          v71 = v119;
          sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
          v72 = sub_249F9AC64();
          sub_249F9A874();
          v9 = v71;

          (*v117)(v18, v71);
          v60 = v75;
          v64 = v124;
          v66 = v125;
          v73 = v118;
        }

        else
        {
          v60 = v75;
          v64 = v124;
          (v124)(v113, v120, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_249F8ED1C(0, v125[2] + 1, 1, v125);
          }

          v93 = v125[2];
          v92 = v125[3];
          if (v93 >= v92 >> 1)
          {
            v125 = sub_249F8ED1C(v92 > 1, v93 + 1, 1, v125);
          }

          v18 = v120;
          (*v117)(v120, v9);
          v66 = v125;
          v125[2] = v93 + 1;
          v73 = v118;
          (*v115)(&v116[v66 + v93 * v118], v113, v9);
        }
      }

      v63 = v73 + v63;
      --v59;
    }

    while (v59);
    v94 = v66;
  }

  else
  {

    v94 = MEMORY[0x277D84F90];
  }

  v95 = v126;
  sub_249F8C660();
  if (v95)
  {
  }

  if (v94[2])
  {
    sub_249F9ABB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v96 = swift_allocObject();
    *(v96 + 16) = v123;
    v97 = v94[2];
    v98 = MEMORY[0x277D83C10];
    *(v96 + 56) = MEMORY[0x277D83B88];
    *(v96 + 64) = v98;
    *(v96 + 32) = v97;
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

    v99 = sub_249F9AC64();
    sub_249F9A874();
  }

  else
  {

    return 0;
  }

  return v94;
}

uint64_t sub_249F98538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_249F985A0()
{
  result = qword_27EF2CE00;
  if (!qword_27EF2CE00)
  {
    sub_249F9A794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CE00);
  }

  return result;
}

uint64_t sub_249F985F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF8, &qword_249F9C490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249F98668()
{
  result = qword_27EF2CE10;
  if (!qword_27EF2CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2CE08, &qword_249F9C518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CE10);
  }

  return result;
}

uint64_t sub_249F9879C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t))
{
  sub_249F9ABB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249F9B920;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_249F7A16C();
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  sub_249F7B7E8();

  v16 = sub_249F9AC64();
  sub_249F9A874();

  type metadata accessor for MachOAnalysisCoordinator();
  v17 = swift_allocObject();
  *(v17 + 40) = 0;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 33) = a6;
  *(v17 + 34) = a7;

  v18 = a10(a1, a2);

  return v18;
}

uint64_t static AnalysisCoordinator.staticallyAnalyze(interruptCallback:sendEvents:coreSymbolication:printTostdout:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  sub_249F9ABB4();
  sub_249F7B7E8();
  v10 = sub_249F9AC64();
  sub_249F9A874();

  type metadata accessor for MachOAnalysisCoordinator();
  v11 = swift_allocObject();
  *(v11 + 40) = 0;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 33) = a4;
  *(v11 + 34) = a5;

  v12 = sub_249F922D0();

  return v12;
}

uint64_t static AnalysisCoordinator.runtimeAnalyzePID(_:interruptCallback:sendEvents:printTostdout:)(int a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  sub_249F9ABB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D849A8];
  *(v10 + 16) = xmmword_249F9B920;
  v12 = MEMORY[0x277D84A20];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = a1;
  sub_249F7B7E8();
  v13 = sub_249F9AC64();
  sub_249F9A874();

  type metadata accessor for MicrostackshotsCoordinator();
  v14 = swift_allocObject();
  *(v14 + 24) = a3;
  *(v14 + 32) = 0;
  *(v14 + 16) = a2;
  *(v14 + 40) = a4;
  *(v14 + 41) = a5;

  v15 = sub_249F779E0(a1, 0);

  return v15;
}

uint64_t static AnalysisCoordinator.runtimeAnalyze(interruptCallback:sendEvents:printTostdout:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  sub_249F9ABB4();
  sub_249F7B7E8();
  v8 = sub_249F9AC64();
  sub_249F9A874();

  type metadata accessor for MicrostackshotsCoordinator();
  v9 = swift_allocObject();
  *(v9 + 24) = a2;
  *(v9 + 32) = 0;
  *(v9 + 16) = a1;
  *(v9 + 40) = a3;
  *(v9 + 41) = a4;

  sub_249F76830();
  v11 = v10;

  return v11;
}

uint64_t sub_249F98C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 432))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249F98C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 432) = 1;
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

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249F98D34(uint64_t *a1, void *a2, void (*a3)(unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F9C090;
  *(inited + 32) = 0x6C646E7542707061;
  *(inited + 40) = 0xEB00000000444965;
  if (a2[3])
  {
    v6 = a2[2];
    v7 = a2[3];
  }

  v8 = sub_249F9A9A4();

  *(inited + 48) = v8;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000249F9DE80;
  if (a2[5])
  {
    v9 = a2[4];
    v10 = a2[5];
  }

  v11 = sub_249F9A9A4();

  *(inited + 72) = v11;
  *(inited + 80) = 0x656D614E707061;
  *(inited + 88) = 0xE700000000000000;
  if (a2[7])
  {
    v12 = a2[6];
  }

  v13 = sub_249F9A9A4();

  *(inited + 96) = v13;
  *(inited + 104) = 1751347809;
  *(inited + 112) = 0xE400000000000000;
  v14 = a1[47];
  v15 = a1[48];
  *(inited + 120) = sub_249F9A9A4();
  strcpy((inited + 128), "binaryCDHash");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v16 = a1[6];
  v17 = a1[7];
  v18 = *(a1 + 64);
  v20 = a1[9];
  v19 = a1[10];
  v21 = a1[11];
  v22 = a1[12];
  v23 = a1[13];
  v24 = a1[14];
  v25 = a1[16];
  v51 = a1[15];
  *(inited + 144) = sub_249F9A9A4();
  strcpy((inited + 152), "binaryLocation");
  *(inited + 167) = -18;
  v26 = sub_249F9A9A4();

  *(inited + 168) = v26;
  *(inited + 176) = 0x61507972616E6962;
  *(inited + 184) = 0xEA00000000006874;
  *(inited + 192) = sub_249F9A9A4();
  strcpy((inited + 200), "binaryTeamID");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 216) = sub_249F9A9A4();
  *(inited + 224) = 0x55557972616E6962;
  *(inited + 232) = 0xEA00000000004449;
  *(inited + 240) = sub_249F9A9A4();
  strcpy((inited + 248), "binaryVersion");
  *(inited + 262) = -4864;
  *(inited + 264) = sub_249F9A9A4();
  *(inited + 272) = 0x48444362696C7964;
  *(inited + 280) = 0xEB00000000687361;
  v27 = a1[19];
  v28 = a1[20];
  v29 = *(a1 + 168);
  v30 = a1[22];
  v31 = a1[23];
  v32 = a1[24];
  v33 = a1[25];
  v34 = a1[26];
  v35 = a1[27];
  v50 = a1[29];
  v52 = a1[28];
  *(inited + 288) = sub_249F9A9A4();
  strcpy((inited + 296), "dylibLocation");
  *(inited + 310) = -4864;
  v36 = sub_249F9A9A4();

  *(inited + 312) = v36;
  *(inited + 320) = 0x74615062696C7964;
  *(inited + 328) = 0xE900000000000068;
  *(inited + 336) = sub_249F9A9A4();
  *(inited + 344) = 0x61655462696C7964;
  *(inited + 352) = 0xEB0000000044496DLL;
  *(inited + 360) = sub_249F9A9A4();
  *(inited + 368) = 0x49555562696C7964;
  *(inited + 376) = 0xE900000000000044;
  *(inited + 384) = sub_249F9A9A4();
  strcpy((inited + 392), "dylibVersion");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = sub_249F9A9A4();
  *(inited + 416) = 0x656372756F73;
  *(inited + 424) = 0xE600000000000000;
  *(inited + 432) = sub_249F9A9A4();
  *(inited + 440) = 0x614E6C6F626D7973;
  *(inited + 448) = 0xEA0000000000656DLL;
  v37 = *a1;
  v38 = a1[1];
  *(inited + 456) = sub_249F9A9A4();
  strcpy((inited + 464), "symbolOffset");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  v39 = a1[2];
  v40 = a1[3];
  *(inited + 480) = sub_249F9A9A4();
  *(inited + 488) = 0x794472656C6C6163;
  *(inited + 496) = 0xEF6874615062696CLL;
  v41 = a1[50];
  v42 = a1[51];
  *(inited + 504) = sub_249F9A9A4();
  *(inited + 512) = 0xD000000000000010;
  *(inited + 520) = 0x8000000249F9DD10;
  v43 = a1[52];
  v44 = a1[53];
  *(inited + 528) = sub_249F9A9A4();
  v45 = sub_249F791D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
  swift_arrayDestroy();
  sub_249F7AA2C(0, &qword_27EF2CD90, 0x277CCA980);
  v46 = a1[49];
  v47 = sub_249F9AC14();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_249F87DB0(v47, 0x6F436C6F626D7973, 0xEB00000000746E75, isUniquelyReferenced_nonNull_native);
  a3(v45);
}

uint64_t sub_249F992E8(uint64_t *a1, void *a2, void (*a3)(unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F9C090;
  *(inited + 32) = 0x6C646E7542707061;
  *(inited + 40) = 0xEB00000000444965;
  if (a2[3])
  {
    v6 = a2[2];
    v7 = a2[3];
  }

  v8 = sub_249F9A9A4();

  *(inited + 48) = v8;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000249F9DE80;
  if (a2[5])
  {
    v9 = a2[4];
    v10 = a2[5];
  }

  v11 = sub_249F9A9A4();

  *(inited + 72) = v11;
  *(inited + 80) = 0x656D614E707061;
  *(inited + 88) = 0xE700000000000000;
  if (a2[7])
  {
    v12 = a2[6];
    v13 = a2[7];
  }

  v14 = sub_249F9A9A4();

  *(inited + 96) = v14;
  *(inited + 104) = 1751347809;
  *(inited + 112) = 0xE400000000000000;
  v15 = a1[47];
  v16 = a1[48];
  *(inited + 120) = sub_249F9A9A4();
  strcpy((inited + 128), "binaryCDHash");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v17 = a1[6];
  v18 = a1[7];
  v19 = *(a1 + 64);
  v21 = a1[9];
  v20 = a1[10];
  v22 = a1[11];
  v23 = a1[12];
  v24 = a1[13];
  v25 = a1[14];
  v26 = a1[16];
  v52 = a1[15];
  *(inited + 144) = sub_249F9A9A4();
  strcpy((inited + 152), "binaryLocation");
  *(inited + 167) = -18;
  v27 = sub_249F9A9A4();

  *(inited + 168) = v27;
  *(inited + 176) = 0x61507972616E6962;
  *(inited + 184) = 0xEA00000000006874;
  *(inited + 192) = sub_249F9A9A4();
  strcpy((inited + 200), "binaryTeamID");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 216) = sub_249F9A9A4();
  *(inited + 224) = 0x55557972616E6962;
  *(inited + 232) = 0xEA00000000004449;
  *(inited + 240) = sub_249F9A9A4();
  strcpy((inited + 248), "binaryVersion");
  *(inited + 262) = -4864;
  *(inited + 264) = sub_249F9A9A4();
  *(inited + 272) = 0x48444362696C7964;
  *(inited + 280) = 0xEB00000000687361;
  v28 = a1[19];
  v29 = a1[20];
  v30 = *(a1 + 168);
  v31 = a1[22];
  v32 = a1[23];
  v33 = a1[24];
  v34 = a1[25];
  v35 = a1[26];
  v36 = a1[27];
  v51 = a1[29];
  v53 = a1[28];
  *(inited + 288) = sub_249F9A9A4();
  strcpy((inited + 296), "dylibLocation");
  *(inited + 310) = -4864;
  v37 = sub_249F9A9A4();

  *(inited + 312) = v37;
  *(inited + 320) = 0x74615062696C7964;
  *(inited + 328) = 0xE900000000000068;
  *(inited + 336) = sub_249F9A9A4();
  *(inited + 344) = 0x61655462696C7964;
  *(inited + 352) = 0xEB0000000044496DLL;
  *(inited + 360) = sub_249F9A9A4();
  *(inited + 368) = 0x49555562696C7964;
  *(inited + 376) = 0xE900000000000044;
  *(inited + 384) = sub_249F9A9A4();
  strcpy((inited + 392), "dylibVersion");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = sub_249F9A9A4();
  *(inited + 416) = 0x656372756F73;
  *(inited + 424) = 0xE600000000000000;
  *(inited + 432) = sub_249F9A9A4();
  *(inited + 440) = 0x614E6C6F626D7973;
  *(inited + 448) = 0xEA0000000000656DLL;
  v38 = *a1;
  v39 = a1[1];
  *(inited + 456) = sub_249F9A9A4();
  strcpy((inited + 464), "symbolOffset");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  v40 = a1[2];
  v41 = a1[3];
  *(inited + 480) = sub_249F9A9A4();
  *(inited + 488) = 0x794472656C6C6163;
  *(inited + 496) = 0xEF6874615062696CLL;
  v42 = a1[50];
  v43 = a1[51];
  *(inited + 504) = sub_249F9A9A4();
  *(inited + 512) = 0xD000000000000010;
  *(inited + 520) = 0x8000000249F9DD10;
  v44 = a1[52];
  v45 = a1[53];
  *(inited + 528) = sub_249F9A9A4();
  v46 = sub_249F791D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
  swift_arrayDestroy();
  sub_249F7AA2C(0, &qword_27EF2CD90, 0x277CCA980);
  v47 = a1[49];
  v48 = sub_249F9AC14();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_249F87DB0(v48, 0x6F436C6F626D7973, 0xEB00000000746E75, isUniquelyReferenced_nonNull_native);
  a3(v46);
}

uint64_t sub_249F99898(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_249F9ABB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D849A8];
  *(v10 + 16) = xmmword_249F9B920;
  v12 = MEMORY[0x277D84A20];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = a1;
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v13 = sub_249F9AC64();
  sub_249F9A874();

  v14 = type metadata accessor for MicrostackshotsParser();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 40) = xmmword_249F9C6C0;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0;
  sub_249F9A824();
  v18 = OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_interval;
  *(v17 + OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_interval) = 0;
  *(v17 + OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_thirdPartyOnly) = 2;
  *(v17 + 16) = a1;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = *(v17 + v18);

  if (v20 == 0.0)
  {
    v21 = sub_249F7E828(a1);
    sub_249F7FB7C(v21);
    sub_249F80228(v22);

    [v21 symbolicate];
    [v21 postprocess];
    sub_249F7B9AC(sub_249F99F74, v19, v21);
  }

  else
  {
    sub_249F7B8C4(sub_249F99F74, v19);
  }
}

uint64_t sub_249F99AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v9 = sub_249F9A834();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = type metadata accessor for TargetType(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_249F7A228(a1, v20);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (result <= 1)
    {
      return sub_249F8065C(v20);
    }

    return sub_249F99898(*v20, v43, a3, a4, a5);
  }

  if (result == 3)
  {
    return sub_249F99898(*v20, v43, a3, a4, a5);
  }

  if (result == 4)
  {
    v22 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB10, &unk_249F9B970) + 48));
    (*(v10 + 32))(v16, v20, v9);
    LODWORD(v42) = sub_249F9ABB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_249F9B920;
    v24 = sub_249F9AB44();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_249F7A16C();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v27 = sub_249F9AC64();
    sub_249F9A874();

    (*(v10 + 16))(v14, v16, v9);
    v28 = type metadata accessor for MicrostackshotsParser();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    v31 = swift_allocObject();
    *(v31 + 40) = xmmword_249F9C6C0;
    *(v31 + 56) = 0u;
    *(v31 + 72) = 0u;
    *(v31 + 88) = 0u;
    *(v31 + 104) = 0;
    v32 = OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_startTime;
    sub_249F9A824();
    v33 = OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_interval;
    *(v31 + OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_interval) = 0;
    v41 = a3;
    v34 = OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_thirdPartyOnly;
    *(v31 + OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_thirdPartyOnly) = 2;
    *(v31 + 16) = -1;
    *(v31 + 24) = a4;
    *(v31 + 32) = a5;
    swift_beginAccess();
    v42 = v10;
    v35 = *(v10 + 40);

    v35(v31 + v32, v14, v9);
    swift_endAccess();
    *(v31 + v33) = v22;
    *(v31 + v34) = 1;
    v36 = v41;
    v37 = swift_allocObject();
    *(v37 + 16) = v43;
    *(v37 + 24) = v36;
    if (*(v31 + v33) == 0.0)
    {
      v38 = *(v31 + 16);

      v39 = sub_249F7E828(v38);
      sub_249F7FB7C(v39);
      sub_249F80228(v40);

      [v39 symbolicate];
      [v39 postprocess];
      sub_249F7B9AC(sub_249F99F6C, v37, v39);
    }

    else
    {

      sub_249F7B8C4(sub_249F99F6C, v37);
    }

    return (*(v42 + 8))(v16, v9);
  }

  return result;
}

void sub_249F99FEC()
{
  sub_249F9A064();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_249F9A064()
{
  if (!qword_28105EDF8)
  {
    sub_249F9A834();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28105EDF8);
    }
  }
}

uint64_t sub_249F9A114(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249F9A14C()
{
  result = type metadata accessor for TargetType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249F9A1B8(uint64_t a1)
{
  v2 = sub_249F9A794();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_249F9AAD4() & 1) != 0 || (sub_249F9AAD4())
  {
  }

  else
  {
    sub_249F9A744();
    v8 = sub_249F9A724();
    result = (*(v3 + 8))(v6, v2);
    v9 = 0;
    v10 = *(v8 + 16);
    v16 = v8 + 32;
    v11 = (v8 + 40);
    while (v10 != v9)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return result;
      }

      ++v9;
      v12 = *v11;
      v17 = *(v11 - 1);
      v18 = v12;
      v21 = 1886413102;
      v22 = 0xE400000000000000;
      sub_249F7798C();
      result = sub_249F9ACB4();
      v11 += 2;
      if (result)
      {
        if (*(v8 + 16) >= v10)
        {
          v17 = v8;
          v18 = v16;
          v19 = v9 - 1;
          v20 = (2 * v10) | 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CD70, &qword_249F9BEA8);
          sub_249F85F30();
          a1 = sub_249F9A984();

          return a1;
        }

        goto LABEL_15;
      }
    }

    v13 = sub_249F9A9A4();
    v14 = nm_OSASanitizePath(v13);

    if (v14)
    {
      a1 = sub_249F9A9D4();
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

uint64_t sub_249F9A43C(uint64_t a1)
{
  v2 = sub_249F9A794();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249F9A744();
  v7 = sub_249F9A724();
  (*(v3 + 8))(v6, v2);
  v8 = 0;
  v9 = 0;
  v10 = *(v7 + 16);
  v16 = v7 + 32;
  do
  {
    if (v10 == v9)
    {

      goto LABEL_8;
    }

    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v11 = v7 + 8 * v8;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    ++v9;
    v17 = v13;
    v18 = v12;
    v21 = 1886413102;
    v22 = 0xE400000000000000;
    sub_249F7798C();
    v8 += 2;
  }

  while ((sub_249F9ACB4() & 1) == 0);
  if (*(v7 + 16) > v9 - 1)
  {
    v17 = v7;
    v18 = v16;
    v19 = 0;
    v20 = v8 + 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CD70, &qword_249F9BEA8);
    sub_249F85F30();
    a1 = sub_249F9A984();
LABEL_8:

    return a1;
  }

LABEL_10:
  __break(1u);
  return sub_249F9A624();
}