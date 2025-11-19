uint64_t sub_252DFDF44(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v51 = result;
  v58 = a4;
  if (a4[2] >= *(a3 + 16))
  {
    v28 = 0;
    v29 = a3 + 56;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v54 = 0;
    v56 = v31 & *(a3 + 56);
    v49 = (v30 + 63) >> 6;
    v32 = a4 + 7;
LABEL_28:
    while (v56)
    {
      v33 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v34 = v33 | (v28 << 6);
      v4 = a3;
LABEL_35:
      v53 = v34;
      v37 = *(*(v4 + 48) + v34);
      v38 = a4[5];
      sub_252E37EC4();
      sub_252A9AD58(v37);
      sub_252E37044();

      result = sub_252E37F14();
      a4 = v58;
      v39 = ~(-1 << *(v58 + 32));
      v40 = result & v39;
      if ((*(v32 + (((result & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v39)))
      {
        while (1)
        {
          v41 = sub_252A9AD58(*(a4[6] + v40));
          v43 = v42;
          if (v41 == sub_252A9AD58(v37) && v43 == v44)
          {
            break;
          }

          v46 = sub_252E37DB4();

          if (v46)
          {
            goto LABEL_44;
          }

          v40 = (v40 + 1) & v39;
          a4 = v58;
          if (((*(v32 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_44:
        *(v51 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        a4 = v58;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_49;
        }

        ++v54;
      }
    }

    v35 = v28;
    v4 = a3;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v49)
      {
LABEL_46:

        return sub_252C53E9C(v51, a2, v54, v4);
      }

      v36 = *(v29 + 8 * v28);
      ++v35;
      if (v36)
      {
        v56 = (v36 - 1) & v36;
        v34 = __clz(__rbit64(v36)) | (v28 << 6);
        goto LABEL_35;
      }
    }
  }

  else
  {
    v5 = 0;
    v8 = a4[7];
    v6 = a4 + 7;
    v7 = v8;
    v9 = 1 << *(v6 - 24);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v52 = v10 & v7;
    v54 = 0;
    v47 = (v9 + 63) >> 6;
    v48 = v6;
    v55 = a3 + 56;
LABEL_6:
    while (v52)
    {
      v11 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v12 = v11 | (v5 << 6);
      v13 = v58;
LABEL_13:
      v16 = *(v13[6] + v12);
      v17 = *(v4 + 40);
      sub_252E37EC4();
      sub_252A9AD58(v16);
      sub_252E37044();

      result = sub_252E37F14();
      v18 = ~(-1 << *(v4 + 32));
      v19 = result & v18;
      v20 = (result & v18) >> 6;
      v21 = 1 << (result & v18);
      if ((v21 & *(v55 + 8 * v20)) != 0)
      {
        while (1)
        {
          v22 = sub_252A9AD58(*(*(v4 + 48) + v19));
          v24 = v23;
          if (v22 == sub_252A9AD58(v16) && v24 == v25)
          {
            break;
          }

          v27 = sub_252E37DB4();

          if (v27)
          {
            goto LABEL_22;
          }

          v19 = (v19 + 1) & v18;
          v20 = v19 >> 6;
          v4 = a3;
          v21 = 1 << v19;
          if (((1 << v19) & *(v55 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

LABEL_22:
        v51[v20] |= v21;
        v4 = a3;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_50;
        }

        ++v54;
      }
    }

    v14 = v5;
    v13 = v58;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v47)
      {
        goto LABEL_46;
      }

      v15 = v48[v5];
      ++v14;
      if (v15)
      {
        v52 = (v15 - 1) & v15;
        v12 = __clz(__rbit64(v15)) | (v5 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_252DFE39C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v49 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v26 = 0;
    v27 = a3 + 56;
    v28 = 1 << *(a3 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v52 = 0;
    v54 = v29 & *(a3 + 56);
    v47 = (v28 + 63) >> 6;
    v30 = a4 + 56;
LABEL_28:
    while (v54)
    {
      v31 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v32 = v31 | (v26 << 6);
      v5 = a3;
LABEL_35:
      v51 = v32;
      v35 = *(*(v5 + 48) + v32);
      v36 = *(v4 + 40);
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v37 = ~(-1 << *(v4 + 32));
      v38 = result & v37;
      if ((*(v30 + (((result & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v37)))
      {
        while (1)
        {
          v58 = *(*(v4 + 48) + v38);
          v39 = StateSemantic.rawValue.getter();
          v41 = v40;
          if (v39 == StateSemantic.rawValue.getter() && v41 == v42)
          {
            break;
          }

          v44 = sub_252E37DB4();

          if (v44)
          {
            goto LABEL_44;
          }

          v38 = (v38 + 1) & v37;
          v4 = a4;
          if (((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_44:
        *(v49 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v4 = a4;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_49;
        }

        ++v52;
      }
    }

    v33 = v26;
    v5 = a3;
    while (1)
    {
      v26 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v26 >= v47)
      {
LABEL_46:

        return sub_252C540C0(v49, a2, v52, v5);
      }

      v34 = *(v27 + 8 * v26);
      ++v33;
      if (v34)
      {
        v54 = (v34 - 1) & v34;
        v32 = __clz(__rbit64(v34)) | (v26 << 6);
        goto LABEL_35;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v50 = v8 & *(a4 + 56);
    v52 = 0;
    v45 = (v7 + 63) >> 6;
    v46 = a4 + 56;
    v53 = a3 + 56;
LABEL_6:
    while (v50)
    {
      v9 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v10 = v9 | (v6 << 6);
      v11 = a4;
LABEL_13:
      v14 = *(*(v11 + 48) + v10);
      v15 = *(v5 + 40);
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v16 = ~(-1 << *(v5 + 32));
      v17 = result & v16;
      v18 = (result & v16) >> 6;
      v19 = 1 << (result & v16);
      if ((v19 & *(v53 + 8 * v18)) != 0)
      {
        while (1)
        {
          v57 = *(*(v5 + 48) + v17);
          v20 = StateSemantic.rawValue.getter();
          v22 = v21;
          if (v20 == StateSemantic.rawValue.getter() && v22 == v23)
          {
            break;
          }

          v25 = sub_252E37DB4();

          if (v25)
          {
            goto LABEL_22;
          }

          v17 = (v17 + 1) & v16;
          v18 = v17 >> 6;
          v5 = a3;
          v19 = 1 << v17;
          if (((1 << v17) & *(v53 + 8 * (v17 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

LABEL_22:
        v49[v18] |= v19;
        v5 = a3;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_50;
        }

        ++v52;
      }
    }

    v12 = v6;
    v11 = a4;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v45)
      {
        goto LABEL_46;
      }

      v13 = *(v46 + 8 * v6);
      ++v12;
      if (v13)
      {
        v50 = (v13 - 1) & v13;
        v10 = __clz(__rbit64(v13)) | (v6 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_252DFE84C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546308, &qword_252E61A78);
  v33 = a2;
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_252E37EC4();
      sub_252E37EE4();
      if (v22)
      {
        sub_252E37044();
      }

      result = sub_252E37F14();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_37;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_252DFEB50(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = a2;
  result = sub_252E37B44();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
        v25 = v23;
      }

      v26 = *(v10 + 40);
      sub_252E37EC4();
      sub_252E37EE4();
      if (v23)
      {
        v27 = v23;
        sub_252E376A4();
      }

      result = sub_252E37F14();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
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

    if ((v37 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_37;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_37:
  *v5 = v10;
  return result;
}

uint64_t sub_252DFEE14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F545160, &unk_252E5A4E0);
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_252A00AF4(v22, v33);
      }

      else
      {
        sub_252974E7C(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_252E37EC4();
      sub_252E37044();

      result = sub_252E37F14();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_252A00AF4(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_252DFF0E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545158, &qword_252E5A4D8);
  v42 = a2;
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
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
    while (1)
    {
      if (!v13)
      {
        v19 = v9;
        while (1)
        {
          v9 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_48;
          }

          if (v9 >= v14)
          {
            break;
          }

          v20 = v10[v9];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v13 = (v20 - 1) & v20;
            goto LABEL_17;
          }
        }

        if ((v42 & 1) == 0)
        {

          v3 = v40;
          goto LABEL_46;
        }

        v39 = 1 << *(v5 + 32);
        v3 = v40;
        if (v39 >= 64)
        {
          bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v39;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(*(v5 + 48) + 8 * v21);
      v24 = *(v22 + 8 * v21);
      if ((v42 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_252E37EC4();
      v43 = v24;
      if (v23 >> 62)
      {
        v38 = sub_252E378C4();
        MEMORY[0x2530AE390](v38);
        result = sub_252E378C4();
        v26 = result;
        if (!result)
        {
          goto LABEL_28;
        }
      }

      else
      {
        result = MEMORY[0x2530AE390](*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_28;
        }
      }

      if (v26 < 1)
      {
        goto LABEL_49;
      }

      if ((v23 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v26; ++i)
        {
          MEMORY[0x2530ADF00](i, v23);
          sub_252E376A4();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v28 = (v23 + 32);
        do
        {
          v29 = *v28++;
          v30 = v29;
          sub_252E376A4();

          --v26;
        }

        while (v26);
      }

LABEL_28:
      result = sub_252E37F14();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v17 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v17 = v43;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v23;
      *(*(v8 + 56) + 8 * v16) = v17;
      ++*(v8 + 16);
      v5 = v41;
    }
  }

LABEL_46:
  *v3 = v8;
  return result;
}

uint64_t sub_252DFF440(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545220, &qword_252E5A5A0);
  v38 = a2;
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_252DFF6F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545080, &qword_252E5A400);
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v21);
      result = sub_252E37F14();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_252DFF974(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545370, &qword_252E42C28);
  v36 = a2;
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_252A00AF4(v25, v37);
      }

      else
      {
        sub_252974E7C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_252A00AF4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_252DFFC2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5463E0, &qword_252E61AE0);
  v39 = a2;
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 8 * (v19 | (v9 << 6));
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + v22;
      v25 = *v24;
      v26 = *(v24 + 4);
      v27 = *(v23 + v22);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_252E37EC4();
      sub_252E37EE4();
      if (!v26)
      {
        sub_252E37EF4();
      }

      result = sub_252E37F14();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 8 * v16;
      v18 = *(v8 + 48) + v17;
      *v18 = v25;
      *(v18 + 4) = v26;
      *(*(v8 + 56) + v17) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_37;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_252DFFF08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545298, &qword_252E5A618);
  v45 = a2;
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
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
      v19 = __clz(__rbit64(v13));
      v20 = (v13 - 1) & v13;
LABEL_17:
      v23 = v19 | (v9 << 6);
      v54 = v20;
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 88 * v23;
      if (v45)
      {
        v46 = *v27;
        v28 = *(v27 + 8);
        v29 = *(v27 + 24);
        v47 = *(v27 + 32);
        v48 = *(v27 + 48);
        v52 = *(v27 + 64);
        v49 = *(v27 + 16);
        v50 = *(v27 + 72);
        v51 = *(v27 + 80);
        v53 = *(v27 + 81);
      }

      else
      {
        v30 = *(v27 + 32);
        v31 = *(v27 + 48);
        v32 = *(v27 + 64);
        v59 = *(v27 + 80);
        v57 = v31;
        v58 = v32;
        v56[2] = v30;
        v33 = *(v27 + 16);
        v56[0] = *v27;
        v56[1] = v33;
        v53 = HIBYTE(v59);
        v51 = v59;
        v52 = v32;
        v47 = v30;
        v48 = v57;
        v49 = v33;
        v50 = *(&v32 + 1);
        v29 = BYTE8(v33);
        v46 = *&v56[0];
        v28 = BYTE8(v56[0]);

        sub_252ADFB08(v56, v55);
      }

      v34 = *(v8 + 40);
      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v35 = -1 << *(v8 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v56[0]) = v28;
      v55[0] = v29;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = *(v8 + 56) + 88 * v16;
      *v18 = v46;
      *(v18 + 8) = v28;
      *(v18 + 16) = v49;
      *(v18 + 24) = v29;
      *(v18 + 32) = v47;
      *(v18 + 48) = v48;
      *(v18 + 64) = v52;
      *(v18 + 72) = v50;
      *(v18 + 80) = v51;
      *(v18 + 81) = v53;
      ++*(v8 + 16);
      v5 = v44;
      v13 = v54;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v20 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v10, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_252E002B8(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_252E35EF4();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546340, &qword_252E61AA0);
  v46 = a2;
  result = sub_252E37B44();
  v12 = result;
  if (*(v9 + 16))
  {
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
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
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

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_252E00638(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545280, &qword_252E5A600);
  v36 = a2;
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_252E37EC4();
      sub_252E32E84();
      sub_252E11098(&qword_27F540680, MEMORY[0x277CC95F0]);
      sub_252E36E94();
      MEMORY[0x2530AE390](*(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
      v24 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v25 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      sub_252E37044();

      result = sub_252E37F14();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
      v5 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_252E0099C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_252E37B44();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
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
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = *(v7 + 56);
      v25 = *(v7 + 48) + 16 * v23;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v24 + 8 * v23);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v10 + 40);
      sub_252E37EC4();
      sub_252E37EE4();
      if (!v27)
      {
        MEMORY[0x2530AE390](v26);
      }

      result = sub_252E37F14();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v10 + 48) + 16 * v18;
      *v19 = v26;
      *(v19 + 8) = v27;
      *(*(v10 + 56) + 8 * v18) = v28;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
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

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_37;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_37:
  *v5 = v10;
  return result;
}

uint64_t sub_252E00C68(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_252E37B44();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
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
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_252E00F04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545318, &qword_252E5A6A0);
  v35 = a2;
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      if (v35)
      {
        v23 = *(v5 + 56) + 504 * v21;
        v44 = *v23;
        v45 = *(v23 + 8);
        v46 = *(v23 + 9);
        v24 = *(v23 + 10);
        v47 = *(v23 + 16);
        v48 = *(v23 + 24);
        v49 = *(v23 + 25);
        v50 = *(v23 + 26);
        v51 = *(v23 + 32);
        v53 = *(v23 + 40);
        v52 = *(v23 + 48);
        v55 = *(v23 + 64);
        v54 = *(v23 + 72);
        v56 = *(v23 + 88);
        v57 = *(v23 + 104);
        v58 = *(v23 + 120);
        v59 = *(v23 + 136);
        v60 = *(v23 + 152);
        v61 = *(v23 + 168);
        v62 = *(v23 + 184);
        v63 = *(v23 + 200);
        v64 = *(v23 + 208);
        v66 = *(v23 + 209);
        v65 = *(v23 + 216);
        v69 = *(v23 + 264);
        v70 = *(v23 + 256);
        v67 = *(v23 + 240);
        v68 = *(v23 + 272);
        v71 = *(v23 + 288);
        v42 = *(v23 + 289);
        v43 = *(v23 + 232);
        v72 = *(v23 + 296);
        v73 = *(v23 + 304);
        v74 = *(v23 + 312);
        v76 = *(v23 + 320);
        v78 = *(v23 + 328);
        v77 = *(v23 + 336);
        v79 = *(v23 + 352);
        v81 = *(v23 + 368);
        v82 = *(v23 + 384);
        v83 = *(v23 + 385);
        v84 = *(v23 + 386);
        v85 = *(v23 + 387);
        v86 = *(v23 + 388);
        v36 = *(v23 + 400);
        v37 = *(v23 + 416);
        v38 = *(v23 + 432);
        v39 = *(v23 + 448);
        v40 = *(v23 + 464);
        v41 = *(v23 + 480);
        v75 = *(v23 + 389);
        v80 = *(v23 + 392);
        v87 = *(v23 + 496);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 504 * v21), 0x1F8uLL);
        v87 = *&__dst[31];
        v80 = *(&__dst[24] + 1);
        v75 = BYTE5(__dst[24]);
        v86 = BYTE4(__dst[24]);
        v85 = BYTE3(__dst[24]);
        v84 = BYTE2(__dst[24]);
        v83 = BYTE1(__dst[24]);
        v82 = __dst[24];
        v81 = __dst[23];
        v79 = __dst[22];
        v77 = __dst[21];
        v78 = *(&__dst[20] + 1);
        v76 = *&__dst[20];
        v74 = BYTE8(__dst[19]);
        v72 = *(&__dst[18] + 1);
        v73 = *&__dst[19];
        v71 = __dst[18];
        v69 = *(&__dst[16] + 1);
        v70 = *&__dst[16];
        v67 = __dst[15];
        v68 = __dst[17];
        v42 = BYTE1(__dst[18]);
        v43 = BYTE8(__dst[14]);
        v65 = *(&__dst[13] + 8);
        v66 = BYTE1(__dst[13]);
        v64 = __dst[13];
        v63 = *(&__dst[12] + 1);
        v61 = *(&__dst[10] + 8);
        v62 = *(&__dst[11] + 8);
        v59 = *(&__dst[8] + 8);
        v60 = *(&__dst[9] + 8);
        v57 = *(&__dst[6] + 8);
        v58 = *(&__dst[7] + 8);
        v56 = *(&__dst[5] + 8);
        v54 = *(&__dst[4] + 8);
        v55 = __dst[4];
        v52 = __dst[3];
        v53 = BYTE8(__dst[2]);
        v51 = *&__dst[2];
        v49 = BYTE9(__dst[1]);
        v50 = BYTE10(__dst[1]);
        v48 = BYTE8(__dst[1]);
        v47 = *&__dst[1];
        v24 = BYTE10(__dst[0]);
        v45 = BYTE8(__dst[0]);
        v46 = BYTE9(__dst[0]);
        v40 = __dst[29];
        v41 = __dst[30];
        v38 = __dst[27];
        v39 = __dst[28];
        v36 = __dst[25];
        v37 = __dst[26];
        v44 = *&__dst[0];
        sub_2529353AC(__dst, v88);
      }

      v25 = *(v8 + 40);
      result = sub_252E37EB4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v88[0] = v43;
      LOBYTE(__dst[0]) = v24;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 504 * v16;
      *v17 = v44;
      *(v17 + 8) = v45;
      *(v17 + 9) = v46;
      *(v17 + 10) = v24;
      *(v17 + 16) = v47;
      *(v17 + 24) = v48;
      *(v17 + 25) = v49;
      *(v17 + 26) = v50;
      *(v17 + 32) = v51;
      *(v17 + 40) = v53;
      *(v17 + 48) = v52;
      *(v17 + 64) = v55;
      *(v17 + 72) = v54;
      *(v17 + 88) = v56;
      *(v17 + 104) = v57;
      *(v17 + 120) = v58;
      *(v17 + 136) = v59;
      *(v17 + 152) = v60;
      *(v17 + 168) = v61;
      *(v17 + 184) = v62;
      *(v17 + 200) = v63;
      *(v17 + 208) = v64;
      *(v17 + 209) = v66;
      *(v17 + 216) = v65;
      *(v17 + 232) = v88[0];
      *(v17 + 240) = v67;
      *(v17 + 256) = v70;
      *(v17 + 264) = v69;
      *(v17 + 272) = v68;
      *(v17 + 288) = v71;
      *(v17 + 289) = v42;
      *(v17 + 296) = v72;
      *(v17 + 304) = v73;
      *(v17 + 312) = v74;
      *(v17 + 320) = v76;
      *(v17 + 328) = v78;
      *(v17 + 336) = v77;
      *(v17 + 352) = v79;
      *(v17 + 368) = v81;
      *(v17 + 384) = v82;
      *(v17 + 385) = v83;
      *(v17 + 386) = v84;
      *(v17 + 387) = v85;
      *(v17 + 388) = v86;
      *(v17 + 389) = v75;
      *(v17 + 392) = v80;
      *(v17 + 400) = v36;
      *(v17 + 416) = v37;
      *(v17 + 432) = v38;
      *(v17 + 448) = v39;
      *(v17 + 496) = v87;
      *(v17 + 464) = v40;
      *(v17 + 480) = v41;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_252E015DC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = a2;
  result = sub_252E37B44();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v23);
      result = sub_252E37F14();
      v26 = -1 << *(v10 + 32);
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

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_252E018A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545308, &qword_252E5A690);
  v109 = a2;
  v7 = sub_252E37B44();
  if (*(v5 + 16))
  {
    v8 = 0;
    result = v5 + 64;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v104 = v3;
    v105 = (v10 + 63) >> 6;
    v13 = v7 + 64;
    v106 = v5 + 64;
    v107 = v5;
    v108 = v7;
    while (v12)
    {
      v38 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_17:
      v42 = v38 | (v8 << 6);
      v115 = v39;
      if (v109)
      {
        v43 = *(v5 + 56);
        v44 = *(v5 + 48) + 504 * v42;
        v45 = *v44;
        v46 = *(v44 + 9);
        v47 = *(v44 + 10);
        v48 = *(v44 + 16);
        v116 = *(v44 + 24);
        v117 = *(v44 + 8);
        v49 = *(v44 + 25);
        v50 = *(v44 + 26);
        v51 = *(v44 + 32);
        v52 = *(v44 + 40);
        v53 = *(v44 + 48);
        v54 = *(v44 + 64);
        v55 = *(v44 + 72);
        v56 = *(v44 + 88);
        v57 = *(v44 + 104);
        v58 = *(v44 + 120);
        v59 = *(v44 + 136);
        v60 = *(v44 + 152);
        v61 = *(v44 + 168);
        v62 = *(v44 + 184);
        v63 = *(v44 + 200);
        v126 = *(v44 + 208);
        v64 = *(v44 + 209);
        v65 = *(v44 + 216);
        v66 = *(v44 + 232);
        v67 = *(v44 + 240);
        v69 = *(v44 + 256);
        v68 = *(v44 + 264);
        v70 = *(v44 + 272);
        v131 = *(v44 + 288);
        v71 = *(v44 + 289);
        v73 = *(v44 + 296);
        v72 = *(v44 + 304);
        v74 = *(v44 + 312);
        v76 = *(v44 + 320);
        v75 = *(v44 + 328);
        v78 = *(v44 + 336);
        v77 = *(v44 + 352);
        v79 = *(v44 + 368);
        v80 = *(v44 + 384);
        v143 = *(v44 + 385);
        v146 = *(v44 + 386);
        v149 = *(v44 + 387);
        v113 = *(v43 + 8 * v42);
        v81 = *(v44 + 388);
        v83 = *(v44 + 400);
        v82 = *(v44 + 416);
        v85 = *(v44 + 432);
        v84 = *(v44 + 448);
        v87 = *(v44 + 464);
        v86 = *(v44 + 480);
        v88 = *(v44 + 389);
        v89 = *(v44 + 392);
        v90 = *(v44 + 496);
      }

      else
      {
        memcpy(__dst, (*(v5 + 48) + 504 * v42), 0x1F8uLL);
        v114 = *(*(v5 + 56) + 8 * v42);
        v152 = *&__dst[31];
        v147 = *(&__dst[24] + 1);
        v149 = BYTE3(__dst[24]);
        v150 = BYTE4(__dst[24]);
        v144 = BYTE5(__dst[24]);
        v146 = BYTE2(__dst[24]);
        v141 = __dst[24];
        v143 = BYTE1(__dst[24]);
        v192 = __dst[22];
        v194 = __dst[23];
        v138 = __dst[20];
        v136 = BYTE8(__dst[19]);
        v132 = *(&__dst[18] + 1);
        v134 = *&__dst[19];
        v131 = __dst[18];
        v91 = BYTE1(__dst[18]);
        v188 = __dst[17];
        v190 = __dst[21];
        v127 = *(&__dst[16] + 1);
        v129 = *&__dst[16];
        v111 = BYTE8(__dst[14]);
        v184 = *(&__dst[13] + 8);
        v186 = __dst[15];
        v124 = BYTE1(__dst[13]);
        v126 = __dst[13];
        v119 = *(&__dst[12] + 1);
        v180 = *(&__dst[10] + 8);
        v182 = *(&__dst[11] + 8);
        v176 = *(&__dst[8] + 8);
        v178 = *(&__dst[9] + 8);
        v172 = *(&__dst[6] + 8);
        v174 = *(&__dst[7] + 8);
        v168 = *(&__dst[4] + 8);
        v170 = *(&__dst[5] + 8);
        v122 = __dst[4];
        v154 = __dst[3];
        v118 = BYTE8(__dst[2]);
        v121 = *&__dst[2];
        v92 = BYTE10(__dst[1]);
        v93 = BYTE9(__dst[1]);
        v48 = *&__dst[1];
        v47 = BYTE10(__dst[0]);
        v46 = BYTE9(__dst[0]);
        v164 = __dst[29];
        v166 = __dst[30];
        v160 = __dst[27];
        v162 = __dst[28];
        v156 = __dst[25];
        v158 = __dst[26];
        v116 = BYTE8(__dst[1]);
        v117 = BYTE8(__dst[0]);
        v45 = *&__dst[0];
        sub_2529353AC(__dst, v206);
        v94 = v114;
        v53 = v154;
        v83 = v156;
        v82 = v158;
        v85 = v160;
        v84 = v162;
        v87 = v164;
        v86 = v166;
        v55 = v168;
        v56 = v170;
        v57 = v172;
        v58 = v174;
        v59 = v176;
        v88 = v144;
        v60 = v178;
        v61 = v180;
        v89 = v147;
        v62 = v182;
        v65 = v184;
        v75 = *(&v138 + 1);
        v76 = v138;
        v73 = v132;
        v72 = v134;
        v52 = v118;
        v50 = v92;
        v66 = v111;
        v54 = v122;
        v64 = v124;
        v49 = v93;
        v63 = v119;
        v51 = v121;
        v68 = v127;
        v69 = v129;
        v74 = v136;
        v80 = v141;
        v81 = v150;
        v67 = v186;
        v70 = v188;
        v90 = v152;
        v78 = v190;
        v77 = v192;
        v79 = v194;
        v113 = v94;
        v71 = v91;
      }

      v201 = v66;
      v199 = v71;
      v7 = v108;
      v95 = *(v108 + 40);
      *&__dst[0] = v45;
      BYTE8(__dst[0]) = v117;
      v110 = v50;
      BYTE9(__dst[0]) = v46;
      BYTE10(__dst[0]) = v47;
      *&__dst[1] = v48;
      BYTE8(__dst[1]) = v116;
      v112 = v49;
      BYTE9(__dst[1]) = v49;
      BYTE10(__dst[1]) = v50;
      *&__dst[2] = v51;
      BYTE8(__dst[2]) = v52;
      v155 = v53;
      __dst[3] = v53;
      v123 = v54;
      LOBYTE(__dst[4]) = v54;
      v169 = v55;
      v171 = v56;
      *(&__dst[4] + 8) = v55;
      *(&__dst[5] + 8) = v56;
      v173 = v57;
      v175 = v58;
      *(&__dst[6] + 8) = v57;
      *(&__dst[7] + 8) = v58;
      v177 = v59;
      v179 = v60;
      *(&__dst[8] + 8) = v59;
      *(&__dst[9] + 8) = v60;
      v181 = v61;
      v183 = v62;
      *(&__dst[10] + 8) = v61;
      *(&__dst[11] + 8) = v62;
      v120 = v63;
      *(&__dst[12] + 1) = v63;
      LOBYTE(__dst[13]) = v126;
      v125 = v64;
      BYTE1(__dst[13]) = v64;
      v185 = v65;
      v187 = v67;
      *(&__dst[13] + 8) = v65;
      BYTE8(__dst[14]) = v201;
      __dst[15] = v67;
      v128 = v68;
      v130 = v69;
      *&__dst[16] = v69;
      *(&__dst[16] + 1) = v68;
      v189 = v70;
      v191 = v78;
      __dst[17] = v70;
      LOBYTE(__dst[18]) = v131;
      BYTE1(__dst[18]) = v199;
      v133 = v73;
      v135 = v72;
      *(&__dst[18] + 1) = v73;
      *&__dst[19] = v72;
      v137 = v74;
      BYTE8(__dst[19]) = v74;
      v139 = v76;
      v140 = v75;
      *&__dst[20] = v76;
      *(&__dst[20] + 1) = v75;
      __dst[21] = v78;
      __dst[22] = v77;
      v193 = v77;
      v195 = v79;
      __dst[23] = v79;
      v142 = v80;
      LOBYTE(__dst[24]) = v80;
      BYTE1(__dst[24]) = v143;
      BYTE2(__dst[24]) = v146;
      BYTE3(__dst[24]) = v149;
      v151 = v81;
      BYTE4(__dst[24]) = v81;
      v145 = v88;
      BYTE5(__dst[24]) = v88;
      v148 = v89;
      *(&__dst[24] + 1) = v89;
      v157 = v83;
      v159 = v82;
      __dst[25] = v83;
      __dst[26] = v82;
      v161 = v85;
      v163 = v84;
      __dst[27] = v85;
      __dst[28] = v84;
      v165 = v87;
      v167 = v86;
      __dst[29] = v87;
      __dst[30] = v86;
      v153 = v90;
      *&__dst[31] = v90;
      sub_252E37EC4();
      HomeAutomationIntent.hash(into:)(v206);
      result = sub_252E37F14();
      v96 = -1 << *(v108 + 32);
      v97 = result & ~v96;
      v98 = v97 >> 6;
      if (((-1 << v97) & ~*(v13 + 8 * (v97 >> 6))) == 0)
      {
        v99 = 0;
        v100 = (63 - v96) >> 6;
        v16 = v193;
        v15 = v195;
        v18 = v189;
        v17 = v191;
        v20 = v185;
        v19 = v187;
        v22 = v181;
        v21 = v183;
        v24 = v177;
        v23 = v179;
        v26 = v173;
        v25 = v175;
        v28 = v169;
        v27 = v171;
        v30 = v165;
        v29 = v167;
        v32 = v161;
        v31 = v163;
        v34 = v157;
        v33 = v159;
        v35 = v155;
        while (++v98 != v100 || (v99 & 1) == 0)
        {
          v101 = v98 == v100;
          if (v98 == v100)
          {
            v98 = 0;
          }

          v99 |= v101;
          v102 = *(v13 + 8 * v98);
          if (v102 != -1)
          {
            v14 = __clz(__rbit64(~v102)) + (v98 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v97) & ~*(v13 + 8 * (v97 >> 6)))) | v97 & 0x7FFFFFFFFFFFFFC0;
      v16 = v193;
      v15 = v195;
      v18 = v189;
      v17 = v191;
      v20 = v185;
      v19 = v187;
      v22 = v181;
      v21 = v183;
      v24 = v177;
      v23 = v179;
      v26 = v173;
      v25 = v175;
      v28 = v169;
      v27 = v171;
      v30 = v165;
      v29 = v167;
      v32 = v161;
      v31 = v163;
      v34 = v157;
      v33 = v159;
      v35 = v155;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v36 = *(v108 + 48) + 504 * v14;
      *v36 = v45;
      *(v36 + 8) = v117;
      *(v36 + 9) = v46;
      *(v36 + 10) = v47;
      *(v36 + 16) = v48;
      *(v36 + 24) = v116;
      *(v36 + 25) = v112;
      *(v36 + 26) = v110;
      *(v36 + 27) = v204;
      *(v36 + 31) = v205;
      *(v36 + 32) = v51;
      *(v36 + 40) = v52;
      *(v36 + 41) = __dst[0];
      *(v36 + 44) = *(__dst + 3);
      *(v36 + 48) = v35;
      *(v36 + 64) = v123;
      *(v36 + 68) = *(v206 + 3);
      v37 = v206[0];
      *(v36 + 290) = v197;
      *(v36 + 316) = *&v196[3];
      *(v36 + 313) = *v196;
      *(v36 + 65) = v37;
      *(v36 + 200) = v120;
      *(v36 + 208) = v126;
      *(v36 + 209) = v125;
      *(v36 + 214) = v203;
      *(v36 + 210) = v202;
      *(v36 + 232) = v201;
      *(v36 + 236) = *&v200[3];
      *(v36 + 233) = *v200;
      *(v36 + 256) = v130;
      *(v36 + 264) = v128;
      *(v36 + 288) = v131;
      *(v36 + 289) = v199;
      *(v36 + 294) = v198;
      *(v36 + 296) = v133;
      *(v36 + 304) = v135;
      *(v36 + 312) = v137;
      *(v36 + 320) = v139;
      *(v36 + 328) = v140;
      *(v36 + 384) = v142;
      *(v36 + 385) = v143;
      *(v36 + 386) = v146;
      *(v36 + 387) = v149;
      *(v36 + 388) = v151;
      *(v36 + 389) = v145;
      *(v36 + 392) = v148;
      *(v36 + 496) = v153;
      *(v36 + 72) = v28;
      *(v36 + 88) = v27;
      *(v36 + 104) = v26;
      *(v36 + 120) = v25;
      *(v36 + 136) = v24;
      *(v36 + 152) = v23;
      *(v36 + 168) = v22;
      *(v36 + 184) = v21;
      *(v36 + 216) = v20;
      *(v36 + 240) = v19;
      *(v36 + 272) = v18;
      *(v36 + 336) = v17;
      *(v36 + 352) = v16;
      *(v36 + 368) = v15;
      *(v36 + 400) = v34;
      *(v36 + 416) = v33;
      *(v36 + 432) = v32;
      *(v36 + 448) = v31;
      *(v36 + 464) = v30;
      *(v36 + 480) = v29;
      v12 = v115;
      *(*(v108 + 56) + 8 * v14) = v113;
      ++*(v108 + 16);
      result = v106;
      v5 = v107;
    }

    v40 = v8;
    while (1)
    {
      v8 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v105)
      {
        break;
      }

      v41 = *(result + 8 * v8);
      ++v40;
      if (v41)
      {
        v38 = __clz(__rbit64(v41));
        v39 = (v41 - 1) & v41;
        goto LABEL_17;
      }
    }

    if ((v109 & 1) == 0)
    {

      v3 = v104;
      goto LABEL_36;
    }

    v103 = 1 << *(v5 + 32);
    v3 = v104;
    if (v103 >= 64)
    {
      bzero(result, ((v103 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *result = -1 << v103;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_252E0216C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_252E37B44();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
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
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_252E02420(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_252E37B44();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
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
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_252E026C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5452E8, &qword_252E5A670);
  v36 = a2;
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_252E37EB4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_252E02944(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5450F0, &qword_252E5A470);
  v36 = a2;
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_252E02BFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546338, &qword_252E61A98);
  v36 = a2;
  result = sub_252E37B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_252927BEC(v25, v37);
      }

      else
      {
        sub_252929E74(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_252927BEC(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_252E02EC0(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  result = sub_252A00AF4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_252E02F2C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_252E02F70(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_252A00AF4(a4, (a5[7] + 32 * a1));
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

unint64_t sub_252E02FDC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 88 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 80) = *(a4 + 80);
  v8 = *(a4 + 64);
  *(v6 + 48) = *(a4 + 48);
  *(v6 + 64) = v8;
  *(v6 + 32) = *(a4 + 32);
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_252E03048(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_252E35EF4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_252E030F8(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = memcpy((a4[7] + 504 * a1), __src, 0x1F8uLL);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_252E03168(unint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  result = memcpy((a4[6] + 504 * a1), a2, 0x1F8uLL);
  *(a4[7] + 8 * a1) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_252E031E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_252E0322C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_252E03274(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_252E03314()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F545160, &unk_252E5A4E0);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v18 = *(*(v2 + 48) + v17);
        sub_252974E7C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_252A00AF4(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_252E03490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545158, &qword_252E5A4D8);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_252E035F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545220, &qword_252E5A5A0);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_252E03770()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545080, &qword_252E5A400);
  v2 = *v0;
  v3 = sub_252E37B34();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_252E038BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545370, &qword_252E42C28);
  v2 = *v0;
  v3 = sub_252E37B34();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_252974E7C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_252A00AF4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_252E03A74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545298, &qword_252E5A618);
  v2 = *v0;
  v3 = sub_252E37B34();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_252ADFB08(&v33, v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 88;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 64);
      v38 = *(v21 + 80);
      v36 = v23;
      v37 = v24;
      v25 = *(v21 + 16);
      v33 = *v21;
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v20;
      v26[1] = v19;
      v27 = *(v4 + 56) + v16;
      v28 = v34;
      *v27 = v33;
      *(v27 + 16) = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *(v27 + 80) = v38;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      *(v27 + 32) = v29;
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

char *sub_252E03C44()
{
  v1 = v0;
  v36 = sub_252E35EF4();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546340, &qword_252E61AA0);
  v4 = *v0;
  v5 = sub_252E37B34();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

void *sub_252E03EC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545280, &qword_252E5A600);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

id sub_252E0403C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37B34();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

    *v3 = v6;
  }

  return result;
}

void *sub_252E04198()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545318, &qword_252E5A6A0);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v18 = 8 * v17;
        v19 = *(*(v2 + 48) + 8 * v17);
        v20 = 504 * v17;
        memcpy(__dst, (*(v2 + 56) + 504 * v17), 0x1F8uLL);
        *(*(v4 + 48) + v18) = v19;
        memcpy((*(v4 + 56) + v20), __dst, 0x1F8uLL);
        result = sub_2529353AC(__dst, v21);
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

void *sub_252E04330()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5452D0, &qword_252E5A650);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

id sub_252E044C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545308, &qword_252E5A690);
  v2 = *v0;
  v3 = sub_252E37B34();
  v4 = v3;
  if (*(v2 + 16))
  {
    v22 = v1;
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
        v18 = *(v2 + 48);
        v19 = 8 * v17;
        v20 = 504 * v17;
        memcpy(__dst, (v18 + 504 * v17), 0x1F8uLL);
        v21 = *(*(v2 + 56) + v19);
        memmove((*(v4 + 48) + v20), (v18 + v20), 0x1F8uLL);
        *(*(v4 + 56) + v19) = v21;
        sub_2529353AC(__dst, v23);
        result = v21;
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

        v1 = v22;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_252E04690(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37B34();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

    *v3 = v6;
  }

  return result;
}

void *sub_252E04804(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37B34();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

    *v3 = v6;
  }

  return result;
}

void *sub_252E04964()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5452E8, &qword_252E5A670);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_252E04ACC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5450F0, &qword_252E5A470);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_252E04C4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546338, &qword_252E61A98);
  v2 = *v0;
  v3 = sub_252E37B34();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_252929E74(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_252927BEC(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_252E04DF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F541390, &qword_27F541388, &qword_252E404A8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541388, &qword_252E404A8);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E04F94(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F541360, &unk_27F53FBC0, &unk_252E3B240);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Service();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05124(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F541868, &qword_27F541840, &qword_252E40AD8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541840, &qword_252E40AD8);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Accessory();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E052B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546300, &qword_27F5462F8, &qword_252E61A70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462F8, &qword_252E61A70);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F540388, 0x277D47338);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05454(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&unk_27F5413C0, &qword_27F5413B8, &unk_252E404C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5413B8, &unk_252E404C0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_2814B01E8, 0x277CD1F50);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E055F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5421A8, &qword_27F541850, &qword_252E43DC0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541850, &qword_252E43DC0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeUserTaskResponse();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05784(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546440, &qword_27F546438, &qword_252E61B18);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546438, &qword_252E61B18);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeEntityResponse();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05914(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F544358, &qword_27F541EA8, qword_252E51A90);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeUserTask();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05AA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F544A80, &qword_27F5429C8, &unk_252E47580);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429C8, &unk_252E47580);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeFilter();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05C34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F541C38, &qword_27F541C30, &qword_252E41DE8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C30, &qword_252E41DE8);
            v9 = sub_2529FBF08(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_252E34554();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05DC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F541380, &qword_27F541378, &qword_252E404A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541378, &qword_252E404A0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05F64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5413A0, &qword_27F541398, &qword_252E404B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541398, &qword_252E404B0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &unk_2814B0248, 0x277CD1D98);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06104(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5413B0, &qword_27F5413A8, &qword_252E404B8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5413A8, &qword_252E404B8);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E062A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F541370, &qword_27F541368, &qword_252E40498);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541368, &qword_252E40498);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F541320, 0x277CD1EC0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06444(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546330, &qword_27F546328, &qword_252E61A90);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546328, &qword_252E61A90);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F543D58, 0x277D052C8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E065E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546358, &qword_27F546350, &qword_252E61AA8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546350, &qword_252E61AA8);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F542128, 0x277D052B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06784(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5433E0, &qword_27F5433D8, &qword_252E4B828);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433D8, &qword_252E4B828);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeAttributeTargetMap();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06914(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F542DB0, &qword_27F542DA8, &qword_252E49180);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DA8, &qword_252E49180);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeAttributeTargetArea();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06AA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5463D8, &qword_27F540A70, &qword_252E3DF98);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A70, &qword_252E3DF98);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Entity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06C34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546320, &qword_27F546318, &qword_252E61A88);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546318, &qword_252E61A88);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DeviceEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06DC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5463A0, &qword_27F546398, &qword_252E61AC0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546398, &qword_252E61AC0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F540170, 0x277CD1760);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06F64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F545A08, &qword_27F545A00, &unk_252E5DBB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545A00, &unk_252E5DBB0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07104(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5463B0, &qword_27F5463A8, &qword_252E61AC8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5463A8, &qword_252E61AC8);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E072A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5463C0, &qword_27F5463B8, &qword_252E61AD0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5463B8, &qword_252E61AD0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_2814B0210, 0x277CD1A60);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07444(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546390, &qword_27F546388, &qword_252E61AB8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546388, &qword_252E61AB8);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F546380, 0x277CD19B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E075E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546378, &qword_27F546370, &qword_252E61AB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546370, &qword_252E61AB0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F546368, 0x277CD1988);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07784(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546400, &qword_27F5463F8, &qword_252E61AF0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5463F8, &qword_252E61AF0);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MutableHomeEntityResponse();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07914(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546418, &qword_27F546410, &qword_252E61B00);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546410, &qword_252E61B00);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07AB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546348, &qword_27F543F78, &qword_252E52860);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F78, &qword_252E52860);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeAutomationTappableCommand(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07C44(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546428, &qword_27F546420, &qword_252E61B08);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546420, &qword_252E61B08);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_252E34D94();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07DD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546360, &qword_27F540030, &qword_252E491C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540030, &qword_252E491C0);
            v9 = sub_2529FBE80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeAttributeValue();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07F64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5463D0, &qword_27F5463C8, &qword_252E61AD8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5463C8, &qword_252E61AD8);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F540898, 0x277CD3CF8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_252E08154(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_252E082D0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

void *sub_252E0845C(void *result, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  sub_252E37874();
  a5(0);
  sub_252E11098(a6, a7);
  result = sub_252E373E4();
  v8 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = v14;
  v29 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_252E37904())
      {
        goto LABEL_30;
      }

      v29(0);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_30:
  v14 = v28;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

void *sub_252E08698(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_252E08794(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t *sub_252E088B0(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_252E37874();
  sub_25293F638(0, a5, a6);
  sub_252C768DC(a7, a5, a6);
  result = sub_252E373E4();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_252E37904())
      {
        goto LABEL_30;
      }

      sub_25293F638(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void *sub_252E08AE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_252E08BE0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_252E08D9C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
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
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_252E08F10(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_252E09068(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v28 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 152 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v30[0] = *v18;
      v30[1] = v19;
      v20 = v18[5];
      v22 = v18[2];
      v21 = v18[3];
      v30[4] = v18[4];
      v30[5] = v20;
      v30[2] = v22;
      v30[3] = v21;
      v24 = v18[7];
      v23 = v18[8];
      v25 = v18[6];
      v31 = *(v18 + 72);
      v30[7] = v24;
      v30[8] = v23;
      v30[6] = v25;
      memmove(v11, v18, 0x92uLL);
      if (v14 == v10)
      {
        sub_25297DE08(v30, v29);
        goto LABEL_23;
      }

      v11 += 152;
      sub_25297DE08(v30, v29);
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
      v27 = v12 + 1;
    }

    else
    {
      v27 = v13;
    }

    v12 = v27 - 1;
    v10 = result;
LABEL_23:
    v7 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_252E092B4(uint64_t result, uint64_t *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v25 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v16 = v27 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  sub_252E37874();
  a5(0);
  sub_252E11098(a6, a7);
  result = sub_252E373E4();
  v8 = v33;
  v13 = v34;
  v14 = v35;
  v15 = v36;
  v16 = v37;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v29 = v14;
  v30 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_252E37904())
      {
        goto LABEL_30;
      }

      v30(0);
      swift_dynamicCast();
      result = v32;
      v17 = a3;
      if (!v32)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v28 = v15 + 1;
  }

  else
  {
    v28 = v18;
  }

  v15 = v28 - 1;
LABEL_30:
  v14 = v29;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

void *sub_252E094F0(void *result, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 504 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x1F8uLL);
      memmove(v11, v18, 0x1F8uLL);
      if (v14 == v10)
      {
        sub_2529353AC(__dst, v22);
        goto LABEL_23;
      }

      v11 += 504;
      sub_2529353AC(__dst, v22);
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL sub_252E09680(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(__dst, v4);
}

uint64_t sub_252E096E8(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 5);
  v4 = *(a1 + 24);
  v5 = *(a2 + 16);
  v6 = *(a2 + 5);
  v7 = *(a2 + 24);
  v13 = *a1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v9 = *a2;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  return sub_252C5FF90(&v13, &v9) & 1;
}

unint64_t sub_252E09764(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v30)
  {
    v5 = 0;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v37 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v34 = i;
    v35 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (v37)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v5, v32);
      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        goto LABEL_44;
      }

LABEL_9:
      v42 = v7;
      v9 = v3;
      sub_252DFA164(&v42, a2, &v41);
      if (v3)
      {
        goto LABEL_43;
      }

      v10 = v41;
      v11 = v41 >> 62;
      if (v41 >> 62)
      {
        v12 = sub_252E378C4();
      }

      else
      {
        v12 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v6 >> 62;
      if (v6 >> 62)
      {
        v29 = sub_252E378C4();
        v15 = v29 + v12;
        if (__OFADD__(v29, v12))
        {
LABEL_42:
          __break(1u);
LABEL_43:

          return v6;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 + v12;
        if (__OFADD__(v14, v12))
        {
          goto LABEL_42;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v13)
        {
          goto LABEL_21;
        }

        v16 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v13)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v16 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v17 = *(v16 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v16 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v18 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v11)
      {
        v21 = v16;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = v21;
        v20 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v20)
      {
        if (((v19 >> 1) - v18) < v12)
        {
          goto LABEL_47;
        }

        v39 = v6;
        v22 = v16 + 8 * v18 + 32;
        v33 = v16;
        if (v11)
        {
          if (v20 < 1)
          {
            goto LABEL_49;
          }

          sub_252A00B04(&qword_27F542DB0, &qword_27F542DA8, &qword_252E49180);
          for (j = 0; j != v20; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DA8, &qword_252E49180);
            v24 = sub_2529FBD80(v40, j, v10);
            v26 = *v25;
            (v24)(v40, 0);
            *(v22 + 8 * j) = v26;
          }
        }

        else
        {
          type metadata accessor for HomeAttributeTargetArea();
          swift_arrayInitWithCopy();
        }

        v6 = v39;
        v3 = v9;
        if (v12 >= 1)
        {
          v27 = *(v33 + 16);
          v8 = __OFADD__(v27, v12);
          v28 = v27 + v12;
          if (v8)
          {
            goto LABEL_48;
          }

          *(v33 + 16) = v28;
        }
      }

      else
      {

        if (v12 > 0)
        {
          goto LABEL_46;
        }
      }

      if (v5 == v34)
      {
        return v6;
      }
    }

    if (v5 >= *(v36 + 16))
    {
      goto LABEL_45;
    }

    v7 = *(v35 + 8 * v5);

    v8 = __OFADD__(v5++, 1);
    if (!v8)
    {
      goto LABEL_9;
    }

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
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_252E378C4();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252E09AE4(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 192);
  result = sub_252CC618C(&unk_2864A4470);
  v4 = result;
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v2 + 16))
    {
      if (*(v4 + 16))
      {
        result = sub_252A4509C(*(v2 + 32 + v6));
        if (v7)
        {
          v8 = *(*(v4 + 56) + 8 * result);

          return v8;
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    if (sub_2529A6F1C(65, v1))
    {
      return 6;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

char *sub_252E09BA8(char *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (!(*(result + 31) | *(result + 34)))
  {
    v33 = *(result + 14);
    if (v2)
    {
      v3 = 0;
      v4 = v1 + 18;
      v5 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v3 >= v1[2])
        {
          __break(1u);
          goto LABEL_49;
        }

        v6 = *v4;
        v7 = *(*v4 + 16);
        v8 = *(v5 + 16);
        v9 = v8 + v7;
        if (__OFADD__(v8, v7))
        {
          goto LABEL_50;
        }

        v10 = *v4;

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v9 <= *(v5 + 24) >> 1)
        {
          if (!*(v6 + 16))
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v8 <= v9)
          {
            v11 = v8 + v7;
          }

          else
          {
            v11 = v8;
          }

          result = sub_2529F7A80(result, v11, 1, v5);
          v5 = result;
          if (!*(v6 + 16))
          {
LABEL_4:

            if (v7)
            {
              goto LABEL_52;
            }

            goto LABEL_5;
          }
        }

        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v7)
        {
          goto LABEL_54;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v5 + 16);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_56;
          }

          *(v5 + 16) = v14;
        }

LABEL_5:
        ++v3;
        v4 += 63;
        if (v2 == v3)
        {
          goto LABEL_39;
        }
      }
    }

    v5 = MEMORY[0x277D84F90];
LABEL_39:
    v34 = v33;

    sub_25297A744(v5);
    v26 = sub_252C75848(v33);

    v27 = *(v26 + 16);
    if (!v27)
    {
      goto LABEL_46;
    }

    v28 = sub_252DFA3E0(*(v26 + 16), 0);
    v29 = sub_252E082D0(&v34, v28 + 4, v27, v26);
    sub_25291AE30();
    if (v29 == v27)
    {
      return v28;
    }

    __break(1u);
LABEL_42:
    v17 = MEMORY[0x277D84F90];
LABEL_43:
    v34 = v33;

    sub_25297A744(v17);
    v30 = sub_252C75848(v34);

    v31 = *(v30 + 16);
    if (!v31)
    {
      goto LABEL_46;
    }

    v28 = sub_252DFA3E0(*(v30 + 16), 0);
    v32 = sub_252E082D0(&v34, v28 + 4, v31, v30);
    sub_25291AE30();
    if (v32 != v31)
    {
      __break(1u);
LABEL_46:

      return MEMORY[0x277D84F90];
    }

    return v28;
  }

  v33 = *(result + 13);
  if (!v2)
  {
    goto LABEL_42;
  }

  v15 = 0;
  v16 = v1 + 17;
  v17 = MEMORY[0x277D84F90];
  while (v15 < v1[2])
  {
    v18 = *v16;
    v19 = *(*v16 + 16);
    v20 = *(v17 + 16);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_51;
    }

    v22 = *v16;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v21 <= *(v17 + 24) >> 1)
    {
      if (*(v18 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      result = sub_2529F7A80(result, v23, 1, v17);
      v17 = result;
      if (*(v18 + 16))
      {
LABEL_34:
        if ((*(v17 + 24) >> 1) - *(v17 + 16) < v19)
        {
          goto LABEL_55;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v24 = *(v17 + 16);
          v13 = __OFADD__(v24, v19);
          v25 = v24 + v19;
          if (v13)
          {
            goto LABEL_57;
          }

          *(v17 + 16) = v25;
        }

        goto LABEL_23;
      }
    }

    if (v19)
    {
      goto LABEL_53;
    }

LABEL_23:
    ++v15;
    v16 += 63;
    if (v2 == v15)
    {
      goto LABEL_43;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
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
LABEL_57:
  __break(1u);
  return result;
}

char *sub_252E09F40(char *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (!(*(result + 31) | *(result + 34)))
  {
    v33 = *(result + 15);
    if (v2)
    {
      v3 = 0;
      v4 = v1 + 19;
      v5 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v3 >= v1[2])
        {
          __break(1u);
          goto LABEL_49;
        }

        v6 = *v4;
        v7 = *(*v4 + 16);
        v8 = *(v5 + 16);
        v9 = v8 + v7;
        if (__OFADD__(v8, v7))
        {
          goto LABEL_50;
        }

        v10 = *v4;

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v9 <= *(v5 + 24) >> 1)
        {
          if (!*(v6 + 16))
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v8 <= v9)
          {
            v11 = v8 + v7;
          }

          else
          {
            v11 = v8;
          }

          result = sub_2529F7A80(result, v11, 1, v5);
          v5 = result;
          if (!*(v6 + 16))
          {
LABEL_4:

            if (v7)
            {
              goto LABEL_52;
            }

            goto LABEL_5;
          }
        }

        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v7)
        {
          goto LABEL_54;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v5 + 16);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_56;
          }

          *(v5 + 16) = v14;
        }

LABEL_5:
        ++v3;
        v4 += 63;
        if (v2 == v3)
        {
          goto LABEL_39;
        }
      }
    }

    v5 = MEMORY[0x277D84F90];
LABEL_39:
    v34 = v33;

    sub_25297A744(v5);
    v26 = sub_252C75848(v33);

    v27 = *(v26 + 16);
    if (!v27)
    {
      goto LABEL_46;
    }

    v28 = sub_252DFA3E0(*(v26 + 16), 0);
    v29 = sub_252E082D0(&v34, v28 + 4, v27, v26);
    sub_25291AE30();
    if (v29 == v27)
    {
      return v28;
    }

    __break(1u);
LABEL_42:
    v17 = MEMORY[0x277D84F90];
LABEL_43:
    v34 = v33;

    sub_25297A744(v17);
    v30 = sub_252C75848(v34);

    v31 = *(v30 + 16);
    if (!v31)
    {
      goto LABEL_46;
    }

    v28 = sub_252DFA3E0(*(v30 + 16), 0);
    v32 = sub_252E082D0(&v34, v28 + 4, v31, v30);
    sub_25291AE30();
    if (v32 != v31)
    {
      __break(1u);
LABEL_46:

      return MEMORY[0x277D84F90];
    }

    return v28;
  }

  v33 = *(result + 28);
  if (!v2)
  {
    goto LABEL_42;
  }

  v15 = 0;
  v16 = v1 + 32;
  v17 = MEMORY[0x277D84F90];
  while (v15 < v1[2])
  {
    v18 = *v16;
    v19 = *(*v16 + 16);
    v20 = *(v17 + 16);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_51;
    }

    v22 = *v16;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v21 <= *(v17 + 24) >> 1)
    {
      if (*(v18 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      result = sub_2529F7A80(result, v23, 1, v17);
      v17 = result;
      if (*(v18 + 16))
      {
LABEL_34:
        if ((*(v17 + 24) >> 1) - *(v17 + 16) < v19)
        {
          goto LABEL_55;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v24 = *(v17 + 16);
          v13 = __OFADD__(v24, v19);
          v25 = v24 + v19;
          if (v13)
          {
            goto LABEL_57;
          }

          *(v17 + 16) = v25;
        }

        goto LABEL_23;
      }
    }

    if (v19)
    {
      goto LABEL_53;
    }

LABEL_23:
    ++v15;
    v16 += 63;
    if (v2 == v15)
    {
      goto LABEL_43;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
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
LABEL_57:
  __break(1u);
  return result;
}

unint64_t sub_252E0A2D8(unint64_t a1, unint64_t a2, void *a3)
{
  v97 = sub_252E32E84();
  v6 = *(v97 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v97);
  v96 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a2;
  v9 = *(a2 + 16);
  if (!v9 || !a3[2])
  {
    return 0;
  }

  v10 = a3[5];
  v84 = a3[4];
  v85 = v10;
  v104 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_127;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v11)
  {
    v12 = 0;
    v94 = a1 & 0xFFFFFFFFFFFFFF8;
    v95 = a1 & 0xC000000000000001;
    v92 = a1 + 32;
    v93 = (v6 + 8);
    v78 = "Modified user task: ";
    v87 = "tity with accessoryID ";
    v86 = ". Returning .robotVacuumCleaner";
    v83 = "MatterAccessory.swift";
    v82 = "for accessoryID ";
    v81 = "MatterAccessoryManager.swift";
    v80 = "deviceEntity(for:)";
    v89 = (v79 + 40);
    v88 = v9 + 1;
    v91 = a1;
    v90 = v11;
    while (1)
    {
      if (v95)
      {
        v14 = MEMORY[0x2530ADF00](v12, a1);
        v15 = __OFADD__(v12, 1);
        v16 = v12 + 1;
        if (v15)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v12 >= *(v94 + 16))
        {
          goto LABEL_125;
        }

        v13 = *(v92 + 8 * v12);

        v15 = __OFADD__(v12, 1);
        v16 = v12 + 1;
        if (v15)
        {
          goto LABEL_124;
        }
      }

      v99 = v16;
      v98 = v14;
      v17 = [*(v14 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
      v18 = v96;
      sub_252E32E64();

      v19 = sub_252E32E24();
      v101 = v20;
      (*v93)(v18, v97);
      v21 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v6 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v22 = *&v21[v6];
      v100 = v21;
      v23 = v22 >> 62 ? sub_252E378C4() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v23)
      {
        break;
      }

      v24 = 0;
      a1 = v22 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v24, v22);
          v9 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_117;
          }

          v6 = *(v22 + 8 * v24 + 32);

          v9 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }
        }

        v26 = *(v6 + qword_27F5427D0);

        sub_252E36744();

        if (v103)
        {
          if (v102 == v19 && v103 == v101)
          {

            goto LABEL_33;
          }

          v25 = sub_252E37DB4();

          if (v25)
          {
            break;
          }
        }

        ++v24;
        if (v9 == v23)
        {
          goto LABEL_27;
        }
      }

LABEL_33:

      v29 = sub_252BF8258(v6);
      v9 = 0xD00000000000001FLL;
      if (!v29)
      {
        goto LABEL_39;
      }

      if (!*(v29 + 2))
      {

LABEL_39:
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v33 = sub_252E36AD4();
        __swift_project_value_buffer(v33, qword_27F544CB8);
        v102 = 0;
        v103 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000036, v78 | 0x8000000000000000);
        MEMORY[0x2530AD570](v19, v101);

        MEMORY[0x2530AD570](0xD00000000000001FLL, v87 | 0x8000000000000000);
        sub_252CC4050(v102, v103, 0xD000000000000075, v86 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

LABEL_42:

        a1 = v91;
        v32 = v90;
        v12 = v99;
        goto LABEL_43;
      }

      v30 = v29;

      if (!*(v30 + 2))
      {
        goto LABEL_126;
      }

      v31 = *(v30 + 4);

      a1 = v91;
      v32 = v90;
      v12 = v99;
      if (v31 == 46)
      {
LABEL_43:
        v9 = v88;
        v34 = v89;
        while (--v9)
        {
          v35 = v34 + 2;
          v36 = *(v34 - 1);
          v6 = *v34;

          LOBYTE(v36) = sub_25292C010(v36, v6);

          v34 = v35;
          if ((v36 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        sub_252E37A94();
        v6 = *(v104 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        if (v12 == v32)
        {
LABEL_52:
          v37 = v104;
          goto LABEL_54;
        }
      }

      else
      {
LABEL_46:

        if (v12 == v32)
        {
          goto LABEL_52;
        }
      }
    }

LABEL_27:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544EC8);
    v102 = 0;
    v103 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, v83 | 0x8000000000000000);
    v28 = v101;
    MEMORY[0x2530AD570](v19, v101);
    sub_252CC4050(v102, v103, 0xD00000000000007CLL, v82 | 0x8000000000000000, 0xD000000000000012, v81 | 0x8000000000000000, 375);

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v27, qword_27F544CB8);
    v102 = 0;
    v103 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, v80 | 0x8000000000000000);
    MEMORY[0x2530AD570](v19, v28);

    MEMORY[0x2530AD570](0xD00000000000001FLL, v87 | 0x8000000000000000);
    sub_252CC4050(v102, v103, 0xD000000000000075, v86 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
    goto LABEL_42;
  }

  v37 = MEMORY[0x277D84F90];
LABEL_54:
  v6 = v79;

  sub_252E09764(v37, v6);

  v99 = v37;
  v38 = sub_252B10C8C(v37);
  v39 = v38;
  v9 = v38 & 0xFFFFFFFFFFFFFF8;
  if (v38 >> 62)
  {
    v40 = sub_252E378C4();
  }

  else
  {
    v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v40)
  {
    v101 = MEMORY[0x277D84F90];
    goto LABEL_80;
  }

  v41 = 0;
  v101 = MEMORY[0x277D84F90];
  do
  {
    v6 = v41;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x2530ADF00](v6, v39);
      }

      else
      {
        if (v6 >= *(v9 + 16))
        {
          goto LABEL_121;
        }

        v42 = *(v39 + 8 * v6 + 32);
      }

      a1 = v42;
      v41 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_120;
      }

      v43 = [v42 name];
      if (!v43)
      {
        goto LABEL_59;
      }

      v44 = v43;
      v45 = sub_252E36F34();
      v47 = v46;

      if (v45 == v84 && v47 == v85)
      {
        break;
      }

      v49 = sub_252E37DB4();

      if (v49)
      {
        goto LABEL_73;
      }

LABEL_59:

      ++v6;
      if (v41 == v40)
      {
        goto LABEL_80;
      }
    }

LABEL_73:
    [a1 mapID];
    v51 = v50;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = sub_2529F7D44(0, *(v101 + 2) + 1, 1, v101);
    }

    a1 = *(v101 + 2);
    v52 = *(v101 + 3);
    v6 = a1 + 1;
    if (a1 >= v52 >> 1)
    {
      v101 = sub_2529F7D44((v52 > 1), a1 + 1, 1, v101);
    }

    v53 = v101;
    *(v101 + 2) = v6;
    *&v53[8 * a1 + 32] = v51;
  }

  while (v41 != v40);
LABEL_80:

  v54 = MEMORY[0x277D84F90];
  v104 = MEMORY[0x277D84F90];
  v55 = v99;
  if ((v99 & 0x8000000000000000) != 0 || (v99 & 0x4000000000000000) != 0)
  {
    v6 = v99;
    v9 = sub_252E378C4();
    v55 = v6;
    if (!v9)
    {
      goto LABEL_130;
    }

LABEL_83:
    v56 = 0;
    v97 = v55 + 32;
    v98 = v55 & 0xC000000000000001;
    v100 = v101 + 32;
    while (1)
    {
      if (v98)
      {
        a1 = MEMORY[0x2530ADF00](v56, v55);
        v15 = __OFADD__(v56++, 1);
        if (v15)
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (v56 >= *(v55 + 16))
        {
          goto LABEL_123;
        }

        a1 = *(v97 + 8 * v56);

        v15 = __OFADD__(v56++, 1);
        if (v15)
        {
          goto LABEL_122;
        }
      }

      v58 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v6 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v59 = *&v58[v6];
      if (v59 >> 62)
      {
        if (v59 < 0)
        {
          v72 = *&v58[v6];
        }

        v73 = sub_252E378C4();

        if (!v73)
        {
LABEL_113:
          v63 = v54;
          if (!(v54 >> 62))
          {
            goto LABEL_94;
          }

          goto LABEL_114;
        }
      }

      else
      {
        v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v60)
        {
          goto LABEL_113;
        }
      }

      v61 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v62 = sub_252AC0F68(a1);

      if (v62)
      {
        v63 = v62;
      }

      else
      {
        v63 = v54;
      }

      if (!(v63 >> 62))
      {
LABEL_94:
        v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v64)
        {
          goto LABEL_95;
        }

        goto LABEL_115;
      }

LABEL_114:
      v64 = sub_252E378C4();
      if (v64)
      {
LABEL_95:
        v65 = 0;
        v6 = v63 + 32;
        while (1)
        {
          if ((v63 & 0xC000000000000001) != 0)
          {
            v66 = MEMORY[0x2530ADF00](v65, v63);
          }

          else
          {
            if (v65 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_119;
            }

            v66 = *(v6 + 8 * v65);
          }

          v67 = v66;
          v15 = __OFADD__(v65++, 1);
          if (v15)
          {
            break;
          }

          [v66 mapID];
          v69 = v100;
          v70 = *(v101 + 2);
          while (v70)
          {
            v71 = *v69++;
            --v70;
            if (v71 == v68)
            {

              sub_252E37A94();
              v57 = *(v104 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              goto LABEL_84;
            }
          }

          if (v65 == v64)
          {
            goto LABEL_115;
          }
        }

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
        v11 = sub_252E378C4();
        goto LABEL_5;
      }

LABEL_115:

LABEL_84:
      v55 = v99;
      v54 = MEMORY[0x277D84F90];
      if (v56 == v9)
      {
        goto LABEL_130;
      }
    }
  }

  v9 = *(v99 + 16);
  if (v9)
  {
    goto LABEL_83;
  }

LABEL_130:

  result = v104;
  if ((v104 & 0x8000000000000000) != 0 || (v104 & 0x4000000000000000) != 0)
  {
    v75 = v104;
    v76 = sub_252E378C4();
    result = v75;
    if (v76)
    {
      return result;
    }

LABEL_133:

    return 0;
  }

  if (!*(v104 + 16))
  {
    goto LABEL_133;
  }

  return result;
}

unint64_t sub_252E0AF28(unint64_t a1, const void *a2)
{
  v82 = a1;
  v81 = sub_252E32E84();
  v88 = *(v81 - 8);
  v3 = *(v88 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v93, a2, sizeof(v93));
  memcpy(v92, a2, sizeof(v92));
  v5 = sub_252E09BA8(v92);
  memcpy(v92, a2, sizeof(v92));
  v6 = sub_252E09F40(v92);
  if (qword_27F53F4B0 != -1)
  {
LABEL_76:
    swift_once();
  }

  v7 = 0xD00000000000007DLL;
  v8 = sub_252E36AD4();
  v9 = __swift_project_value_buffer(v8, qword_27F544CB8);
  v92[0] = 0;
  v92[1] = 0xE000000000000000;
  sub_252E379F4();
  v90 = v92[0];
  v91 = v92[1];
  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E9E940);
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x2530AD730](v5, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v11);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E9E960);
  v12 = MEMORY[0x2530AD730](v6, v10);
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](0x69206D6F72660A29, 0xEF203A746E65746ELL);
  memcpy(v92, v93, sizeof(v92));
  v13 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](0x2020202020202020, 0xEF20202020202020);
  v14 = " explicit clean utterance.";
  sub_252CC3D90(v90, v91, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  v15 = sub_252E0A2D8(v82, v5, v6);
  if (!v15)
  {
    v68 = 0xD000000000000012;
    v69 = v8;
    v62 = " explicit clean utterance.";
    v23 = *(v5 + 16);
    v79 = v9;
    if (v23)
    {

      v89 = MEMORY[0x277D84F90];
      v24 = v82;
      if (v82 >> 62)
      {
        goto LABEL_78;
      }

      for (i = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v24 = v82)
      {
        v26 = 0;
        v77 = v24 & 0xFFFFFFFFFFFFFF8;
        v78 = v24 & 0xC000000000000001;
        v75 = v24 + 32;
        v76 = (v88 + 8);
        v63 = "Modified user task: ";
        v70 = ". Returning .robotVacuumCleaner";
        v71 = "tity with accessoryID ";
        v66 = "for accessoryID ";
        v67 = "MatterAccessory.swift";
        v64 = "deviceEntity(for:)";
        v65 = "MatterAccessoryManager.swift";
        v72 = (v5 + 40);
        v73 = i;
        v87 = -v23;
        v74 = v5;
        while (1)
        {
          if (v78)
          {
            v88 = MEMORY[0x2530ADF00](v26, v82);
            v27 = __OFADD__(v26, 1);
            v28 = v26 + 1;
            if (v27)
            {
              goto LABEL_73;
            }
          }

          else
          {
            if (v26 >= *(v77 + 16))
            {
              goto LABEL_74;
            }

            v88 = *(v75 + 8 * v26);

            v27 = __OFADD__(v26, 1);
            v28 = v26 + 1;
            if (v27)
            {
              goto LABEL_73;
            }
          }

          v29 = [*(v88 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
          v30 = v80;
          sub_252E32E64();

          v31 = sub_252E32E24();
          v85 = v32;
          v86 = v31;
          (*v76)(v30, v81);
          v33 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
          v34 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
          swift_beginAccess();
          v35 = *&v33[v34];
          v83 = v33;
          v84 = v28;
          if (v35 >> 62)
          {
            v36 = sub_252E378C4();
          }

          else
          {
            v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v36)
          {
LABEL_32:

            if (qword_27F53F560 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v69, qword_27F544EC8);
            v90 = 0;
            v91 = 0xE000000000000000;
            sub_252E379F4();
            v7 = 0xD00000000000007DLL;
            MEMORY[0x2530AD570](0xD000000000000040, v67 | 0x8000000000000000);
            v40 = v85;
            v41 = v86;
            MEMORY[0x2530AD570](v86, v85);
            sub_252CC4050(v90, v91, 0xD00000000000007CLL, v66 | 0x8000000000000000, v68, v65 | 0x8000000000000000, 375);

            v90 = 0;
            v91 = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000027, v64 | 0x8000000000000000);
            MEMORY[0x2530AD570](v41, v40);

            MEMORY[0x2530AD570](0xD00000000000001FLL, v71 | 0x8000000000000000);
            v6 = v91;
            sub_252CC4050(v90, v91, 0xD000000000000075, v70 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
            v5 = v74;
            v26 = v84;
LABEL_43:

LABEL_44:
            v44 = -1;
            v45 = v72;
            while (1)
            {
              if (v87 + v44 == -1)
              {
                sub_252E37A94();
                v6 = *(v89 + 16);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                goto LABEL_12;
              }

              if (++v44 >= *(v5 + 16))
              {
                break;
              }

              v46 = v45 + 2;
              v47 = *(v45 - 1);
              v6 = *v45;

              LOBYTE(v47) = sub_25292C010(v47, v6);

              v45 = v46;
              if ((v47 & 1) == 0)
              {
                goto LABEL_48;
              }
            }

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

          v6 = 0;
          while (1)
          {
            if ((v35 & 0xC000000000000001) != 0)
            {
              v38 = MEMORY[0x2530ADF00](v6, v35);
              v5 = v6 + 1;
              if (__OFADD__(v6, 1))
              {
                goto LABEL_71;
              }
            }

            else
            {
              if (v6 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_72;
              }

              v38 = *(v35 + 8 * v6 + 32);

              v5 = v6 + 1;
              if (__OFADD__(v6, 1))
              {
                goto LABEL_71;
              }
            }

            v39 = *(v38 + qword_27F5427D0);

            sub_252E36744();

            if (v91)
            {
              if (v90 == v86 && v91 == v85)
              {

                goto LABEL_36;
              }

              v37 = sub_252E37DB4();

              if (v37)
              {
                break;
              }
            }

            ++v6;
            if (v5 == v36)
            {
              goto LABEL_32;
            }
          }

LABEL_36:

          v42 = sub_252BF8258(v38);
          v7 = 0xD00000000000007DLL;
          v5 = v74;
          v26 = v84;
          if (!v42)
          {
            goto LABEL_42;
          }

          if (!*(v42 + 2))
          {

LABEL_42:
            v90 = 0;
            v91 = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000036, v63 | 0x8000000000000000);
            MEMORY[0x2530AD570](v86, v85);

            MEMORY[0x2530AD570](0xD00000000000001FLL, v71 | 0x8000000000000000);
            v6 = v91;
            sub_252CC4050(v90, v91, 0xD000000000000075, v70 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

            goto LABEL_43;
          }

          v23 = v42;

          if (!*(v23 + 2))
          {
            break;
          }

          v43 = *(v23 + 4);

          if (v43 == 46)
          {
            goto LABEL_44;
          }

LABEL_48:

LABEL_12:
          if (v26 == v73)
          {
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_78:
        i = sub_252E378C4();
      }

      v16 = MEMORY[0x277D84F90];
LABEL_80:

      if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
      {
        if (sub_252E378C4())
        {
          goto LABEL_83;
        }
      }

      else if (*(v16 + 16))
      {
LABEL_83:
        v18 = v7 - 95;
        v19 = 0x8000000252E9E980;
        v14 = v62;
        goto LABEL_5;
      }

LABEL_86:
      v16 = v82;

      v14 = v62;
      goto LABEL_6;
    }

    if (!*(v6 + 16))
    {

      goto LABEL_86;
    }

    v49 = *(v6 + 32);
    v48 = *(v6 + 40);

    v92[0] = MEMORY[0x277D84F90];
    v50 = v82;
    if (v82 >> 62)
    {
      v59 = sub_252E378C4();
      v50 = v82;
      v6 = v59;
      if (v59)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v6 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_56:
        v51 = 0;
        v52 = v50 & 0xC000000000000001;
        v5 = v50 & 0xFFFFFFFFFFFFFF8;
        v88 = v50 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v52)
          {
            v7 = MEMORY[0x2530ADF00](v51);
            v53 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_66;
            }
          }

          else
          {
            if (v51 >= *(v5 + 16))
            {
LABEL_75:
              __break(1u);
              goto LABEL_76;
            }

            v7 = *(v50 + 8 * v51 + 32);

            v53 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              v16 = v89;
              goto LABEL_80;
            }
          }

          if (sub_25292C028(v49, v48))
          {
            sub_252E37A94();
            v54 = v52;
            v55 = v6;
            v56 = v48;
            v57 = v49;
            v58 = *(v92[0] + 16);
            sub_252E37AC4();
            v49 = v57;
            v48 = v56;
            v6 = v55;
            v52 = v54;
            v5 = v88;
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v51;
          v50 = v82;
          if (v53 == v6)
          {
            v16 = v92[0];
            v7 = 0xD00000000000007DLL;
            goto LABEL_89;
          }
        }
      }
    }

    v16 = MEMORY[0x277D84F90];
LABEL_89:

    if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
    {
      v60 = sub_252E378C4();
      v14 = v62;
      if (v60)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v14 = v62;
      if (*(v16 + 16))
      {
LABEL_92:
        v17 = "the targeted service areas: ";
        v18 = 0xD00000000000001DLL;
        goto LABEL_4;
      }
    }

    v16 = v82;

    goto LABEL_6;
  }

  v16 = v15;

  v17 = "Found RVC(s) that support map";
  v18 = 0xD000000000000032;
LABEL_4:
  v19 = v17 | 0x8000000000000000;
LABEL_5:
  sub_252CC3D90(v18, v19, 0xD00000000000007DLL, v14 | 0x8000000000000000);
LABEL_6:
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_252E379F4();

  v90 = v7 - 81;
  v91 = 0x8000000252E9E9A0;
  v20 = type metadata accessor for MatterAccessory();
  v21 = MEMORY[0x2530AD730](v16, v20);
  MEMORY[0x2530AD570](v21);

  sub_252CC3D90(v90, v91, 0xD00000000000007DLL, v14 | 0x8000000000000000);

  return v16;
}

void *sub_252E0BAE8(unint64_t a1, uint64_t a2)
{
  v5 = sub_252E32E84();
  v6 = *(v5 - 8);
  v69 = v5;
  v70 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 368);
  v72 = *(a2 + 168);
  v73 = v9;
  if (a1 >> 62)
  {
    goto LABEL_88;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    while (1)
    {
      v11 = 0;
      v74 = a1 & 0xFFFFFFFFFFFFFF8;
      v75 = a1 & 0xC000000000000001;
      v66 = a1 + 32;
      v71 = v10;
      while (v75)
      {
        v13 = MEMORY[0x2530ADF00](v11, a1);
        v12 = v13;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          v12 = v2;
LABEL_52:

          v42 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
          v43 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
          swift_beginAccess();
          v44 = *&v42[v43];
          if (v44 >> 62)
          {
            if (v44 < 0)
            {
              v60 = *&v42[v43];
            }

            v61 = sub_252E378C4();

            if (!v61)
            {
              goto LABEL_55;
            }

LABEL_54:
            v46 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
            v47 = sub_252AC0884(v12);

            if (!v47)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (v45)
            {
              goto LABEL_54;
            }

LABEL_55:
            v47 = sub_252CC479C(MEMORY[0x277D84F90]);
          }

          if (*(v47 + 16))
          {
            v48 = sub_252A488EC(67);
            if (v49)
            {
              v21 = *(*(v47 + 56) + 8 * v48);

              v76 = MEMORY[0x277D84F90];
              v67 = v12;
              v19 = v21 & 0xFFFFFFFFFFFFFF8;
              if (v21 >> 62)
              {
                goto LABEL_99;
              }

              v2 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_60:
              v50 = 0;
              a1 = MEMORY[0x277D84F90];
              while (v2 != v50)
              {
                if ((v21 & 0xC000000000000001) != 0)
                {
                  v51 = MEMORY[0x2530ADF00](v50, v21);
                }

                else
                {
                  if (v50 >= *(v19 + 16))
                  {
                    goto LABEL_85;
                  }

                  v51 = *(v21 + 8 * v50 + 32);
                }

                v52 = v51;
                v53 = (v50 + 1);
                if (__OFADD__(v50, 1))
                {
                  goto LABEL_84;
                }

                v54 = [v51 cleaningJob];

                ++v50;
                if (v54)
                {
                  MEMORY[0x2530AD700]();
                  if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v55 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_252E372A4();
                  }

                  sub_252E372D4();
                  a1 = v76;
                  v50 = v53;
                }
              }

              if (a1 >> 62)
              {
                if (sub_252E378C4())
                {
                  goto LABEL_73;
                }
              }

              else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_73:
                if (Array<A>.contains(_:)(&unk_2864A45A0, a1))
                {

                  return &unk_2864A45A0;
                }

                if (Array<A>.contains(_:)(&unk_2864A45D0, a1))
                {

                  return &unk_2864A45D0;
                }

                v57 = Array<A>.contains(_:)(&unk_2864A45F8, a1);

                if (v57)
                {

                  return &unk_2864A45F8;
                }

                goto LABEL_102;
              }
            }
          }

LABEL_102:
          if (qword_27F53F4F8 != -1)
          {
            swift_once();
          }

          v62 = sub_252E36AD4();
          __swift_project_value_buffer(v62, qword_27F544D90);
          sub_252CC4050(0xD00000000000003ALL, 0x8000000252E9E770, 0xD00000000000007DLL, 0x8000000252E9E7B0, 0xD000000000000034, 0x8000000252E9E830, 231);

          return 0;
        }

LABEL_7:
        v15 = (v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v16 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        v77 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v78 = v16;
        MEMORY[0x28223BE20](v13);
        *(&v63 - 2) = &v77;
        v17 = sub_2529ED970(sub_25296A69C, (&v63 - 4), v73);
        if (v17)
        {
          goto LABEL_52;
        }

        v18 = a1;
        v2 = v12;
        v19 = v15[1];
        v77 = *v15;
        v78 = v19;
        MEMORY[0x28223BE20](v17);
        *(&v63 - 2) = &v77;

        v20 = sub_2529ED970(sub_25296A724, (&v63 - 4), v72);

        if (v20)
        {
          goto LABEL_14;
        }

        ++v11;
        if (v14 == v71)
        {
          v21 = 0;
          v2 = (v70 + 8);
          v22 = &off_279711000;
          v23 = &unk_27F542000;
          v63 = (v70 + 8);
          while (1)
          {
            if (v75)
            {
              v25 = MEMORY[0x2530ADF00](v21, a1);
              v26 = __OFADD__(v21++, 1);
              if (v26)
              {
                goto LABEL_96;
              }
            }

            else
            {
              if (v21 >= *(v74 + 16))
              {
                goto LABEL_97;
              }

              v24 = *(v66 + 8 * v21);

              v26 = __OFADD__(v21++, 1);
              if (v26)
              {
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
LABEL_98:
                __break(1u);
LABEL_99:
                v2 = sub_252E378C4();
                goto LABEL_60;
              }
            }

            v67 = v25;
            v27 = [*(v25 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) v22[199]];
            v28 = v68;
            sub_252E32E64();

            v70 = sub_252E32E24();
            v72 = v29;
            (*v2)(v28, v69);
            a1 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
            v30 = v23[429];
            swift_beginAccess();
            v31 = *(a1 + v30);
            v64 = v21;
            v65 = a1;
            if (v31 >> 62)
            {
              v32 = sub_252E378C4();
            }

            else
            {
              v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v32)
            {
LABEL_46:

              if (qword_27F53F560 != -1)
              {
                swift_once();
              }

              v39 = sub_252E36AD4();
              __swift_project_value_buffer(v39, qword_27F544EC8);
              v77 = 0;
              v78 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E6B840);
              v40 = v70;
              v41 = v72;
              MEMORY[0x2530AD570](v70, v72);
              sub_252CC4050(v77, v78, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000012, 0x8000000252E6B910, 375);

              v12 = v67;
              if (qword_27F53F4B0 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v39, qword_27F544CB8);
              v77 = 0;
              v78 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E6B930);
              MEMORY[0x2530AD570](v40, v41);

              MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E6B7A0);
              sub_252CC4050(v77, v78, 0xD000000000000075, 0x8000000252E6B7C0, 1701869940, 0xE400000000000000, 96);
              goto LABEL_51;
            }

            v33 = 0;
            v73 = v31 & 0xC000000000000001;
            v21 = v31 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v73)
              {
                v2 = MEMORY[0x2530ADF00](v33, v31);
                v34 = v33 + 1;
                if (__OFADD__(v33, 1))
                {
                  goto LABEL_86;
                }
              }

              else
              {
                if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_87;
                }

                v2 = *(v31 + 8 * v33 + 32);

                v34 = v33 + 1;
                if (__OFADD__(v33, 1))
                {
                  goto LABEL_86;
                }
              }

              v35 = *(v2 + qword_27F5427D0);

              sub_252E36744();

              a1 = v78;
              if (v78)
              {
                if (v77 == v70 && v78 == v72)
                {

                  goto LABEL_35;
                }

                v19 = sub_252E37DB4();

                if (v19)
                {
                  break;
                }
              }

              ++v33;
              if (v34 == v32)
              {
                goto LABEL_46;
              }
            }

LABEL_35:

            v36 = sub_252BF8258(v2);
            v12 = v67;
            if (!v36)
            {
              goto LABEL_80;
            }

            v37 = v36;
            if (!*(v36 + 2))
            {

LABEL_80:
              if (qword_27F53F4B0 != -1)
              {
                swift_once();
              }

              v58 = sub_252E36AD4();
              __swift_project_value_buffer(v58, qword_27F544CB8);
              v77 = 0;
              v78 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E6B760);
              MEMORY[0x2530AD570](v70, v72);

              MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E6B7A0);
              sub_252CC4050(v77, v78, 0xD000000000000075, 0x8000000252E6B7C0, 1701869940, 0xE400000000000000, 102);

LABEL_51:

              goto LABEL_52;
            }

            if (!*(v37 + 2))
            {
              goto LABEL_98;
            }

            v38 = *(v37 + 4);

            if (v38 == 46)
            {
              goto LABEL_52;
            }

            v2 = v63;
            v21 = v64;
            a1 = v18;
            v22 = &off_279711000;
            v23 = &unk_27F542000;
            if (v64 == v71)
            {
              goto LABEL_89;
            }
          }
        }
      }

      if (v11 < *(v74 + 16))
      {
        break;
      }

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
      v10 = sub_252E378C4();
      if (!v10)
      {
        goto LABEL_89;
      }
    }

    v12 = *(a1 + 8 * v11 + 32);

    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

LABEL_89:
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v59 = sub_252E36AD4();
  __swift_project_value_buffer(v59, qword_27F544D90);
  sub_252CC4050(0xD000000000000053, 0x8000000252E9E870, 0xD00000000000007DLL, 0x8000000252E9E7B0, 0xD000000000000034, 0x8000000252E9E830, 210);
  return 0;
}

unint64_t sub_252E0C6DC(unint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v67 = *a2;
  v68 = v2;
  v3 = a2[3];
  v69 = a2[2];
  v70 = v3;
  v41 = *(a2 + 64);
  v4 = *(a2 + 81);
  v5 = *(a2 + 113);
  v65 = *(a2 + 97);
  v66[0] = v5;
  v6 = *(a2 + 17);
  *(v66 + 15) = *(a2 + 16);
  v63 = *(a2 + 65);
  v64 = v4;
  v7 = *(a2 + 24);
  v62 = *(a2 + 23);
  v8 = *(a2 + 18);
  v9 = *(a2 + 168);
  v60 = *(a2 + 152);
  v61 = v9;
  memcpy(__dst, a2 + 200, sizeof(__dst));
  v44 = v8;
  if (sub_2529A78C8(50, v8) || (, v10 = sub_2529A78C8(50, v6), , v10))
  {
    v11 = 0;
  }

  else
  {

    v12 = sub_2529A78B0(57, v7);

    v11 = !v12;
  }

  result = sub_2529A78C8(51, v44);
  if (result & 1) != 0 || (, v14 = sub_2529A78C8(51, v6), result = , v14) || (, v15 = sub_2529A78B0(58, v7), result = , ((v11 | v15)))
  {
    v16 = &unk_2864A4648;
  }

  else
  {
    v16 = &unk_2864A4620;
  }

  v37 = v16;
  v38 = *(v7 + 16);
  if (v38)
  {
    v17 = 0;
    v39 = v6;
    while (v17 < *(v7 + 16))
    {
      v45 = *(v7 + 32 + v17);
      v43 = sub_2529A78B0(57, v7) || sub_2529A78B0(58, v7) || sub_2529A78C8(51, v44);
      v42 = sub_2529A78B0(56, v7) || sub_2529A78B0(0, v7);
      if (qword_27F53F920 != -1)
      {
        swift_once();
      }

      ++v17;
      v18 = qword_27F575E00;

      v20 = sub_252C76E88(v19);
      v21 = v20;
      v22 = v20 + 56;
      v23 = 1 << *(v20 + 32);
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v25 = v24 & *(v20 + 56);
      v26 = (v23 + 63) >> 6;

      v27 = 0;
      do
      {
        if (!v25)
        {
          while (1)
          {
            v28 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v28 >= v26)
            {
              v30 = 0;
              goto LABEL_35;
            }

            v25 = *(v22 + 8 * v28);
            ++v27;
            if (v25)
            {
              v27 = v28;
              goto LABEL_32;
            }
          }

          __break(1u);
          goto LABEL_58;
        }

        v28 = v27;
LABEL_32:
        v29 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        result = sub_2529A78B0(*(*(v21 + 48) + (v29 | (v28 << 6))), v7);
      }

      while ((result & 1) == 0);
      v30 = 1;
LABEL_35:

      v46[0] = v67;
      v46[1] = v68;
      v46[2] = v69;
      v46[3] = v70;
      v49 = v64;
      v50 = v65;
      *v51 = v66[0];
      v48 = v63;
      v55 = v61;
      v47 = v41;
      *&v51[15] = *(v66 + 15);
      v52 = v39;
      v53 = v44;
      v56 = v62;
      v54 = v60;
      v57 = v7;
      memcpy(v58, __dst, sizeof(v58));
      v31 = sub_252E0BAE8(a1, v46);
      LOBYTE(v46[0]) = v45;
      if (StateSemantic.rawValue.getter() == 0x656D75736572 && v32 == 0xE600000000000000)
      {

LABEL_53:

        return MEMORY[0x277D84F90];
      }

      v33 = sub_252E37DB4();

      if (v33)
      {
        goto LABEL_53;
      }

      if (!v31)
      {
        goto LABEL_41;
      }

      if (v43 || !v42 && (v30 & 1) == 0)
      {

LABEL_41:
        if (*(v18 + 16))
        {
          goto LABEL_42;
        }

        goto LABEL_11;
      }

      v37 = v31;
      if (!*(v18 + 16))
      {
        goto LABEL_11;
      }

LABEL_42:
      result = sub_252A4509C(v45);
      if (v34)
      {
        v35 = *(*(v18 + 56) + 8 * result);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402D0, &qword_252E3C108);
        v36 = swift_allocObject();
        v36[1] = xmmword_252E3C290;
        *(v36 + 4) = v35;
        *&v46[0] = v37;
        goto LABEL_56;
      }

LABEL_11:
      if (v17 == v38)
      {
        goto LABEL_48;
      }
    }

LABEL_58:
    __break(1u);
  }

  else
  {
LABEL_48:
    if (v41 == 4)
    {
      return v37;
    }

    else if (sub_252A0CE08(v41, 2u))
    {
      *&v46[0] = v37;
      v36 = &unk_2864A4670;
LABEL_56:
      sub_25297B164(v36);
      return *&v46[0];
    }

    else
    {
      return v37;
    }
  }

  return result;
}

uint64_t sub_252E0CBE8(unint64_t a1, const void *a2)
{
  v16 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    v2 = a1;
    v3 = a2;
    v4 = sub_252E378C4();
    a2 = v3;
    v5 = v4;
    a1 = v2;
    if (v5 >= 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_3:
    sub_252DA74DC(v15, 14);
    goto LABEL_9;
  }

  v6 = a1;
  memcpy(v15, a2, sizeof(v15));
  v7 = sub_252E0C6DC(v6, v15);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 32;
    do
    {
      sub_252DA74DC(v15, *(v7 + v9));
      v9 += 8;
      --v8;
    }

    while (v8);
  }

LABEL_9:
  v10 = v16;
  v11 = *(v16 + 16);
  if (!v11)
  {

    return MEMORY[0x277D84F90];
  }

  v12 = sub_252DFA500(*(v16 + 16), 0, &qword_27F5402D0, &qword_252E3C108);
  v13 = sub_252E08794(v15, v12 + 4, v11, v10);

  result = sub_25291AE30();
  if (v13 == v11)
  {

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_252E0CD80()
{
  v0 = sub_252CC61DC(&unk_2864A4718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462E8, &qword_252E61A60);
  swift_arrayDestroy();

  v2 = sub_252C75D8C(v1);

  v4 = sub_252C76E88(v3);
  v5 = sub_252DFAC78(v4, v2, sub_252DFE39C, sub_252DFE39C);

  if (sub_252DA0454(57, v5) & 1) != 0 && (sub_252DA0454(58, v5))
  {
    v6 = 59;
LABEL_6:

    goto LABEL_7;
  }

  v6 = 59;
  if (sub_252DA0454(59, v5))
  {
    goto LABEL_6;
  }

  v6 = 57;
  if (sub_252DA0454(57, v5))
  {
    goto LABEL_6;
  }

  v6 = 58;
  v11 = sub_252DA0454(58, v5);

  if ((v11 & 1) == 0)
  {

    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D90);
    sub_252CC4050(0xD00000000000003BLL, 0x8000000252E9E8D0, 0xD00000000000007DLL, 0x8000000252E9E7B0, 0xD000000000000022, 0x8000000252E9E910, 254);
    return 0;
  }

LABEL_7:
  if (*(v0 + 16))
  {
    v7 = sub_252A4509C(v6);
    if (v8)
    {
      v9 = *(*(v0 + 56) + 8 * v7);

      return v9;
    }
  }

  return 0;
}

void *sub_252E0CFA4(unint64_t a1, uint64_t a2, void *__src)
{
  v19 = MEMORY[0x277D84FA0];
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (sub_252E378C4() >= 2)
  {
LABEL_3:
    sub_252DA74DC(v18, 14);
  }

LABEL_4:
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 32);
    do
    {
      v8 = *v7++;
      sub_252DA74DC(v18, v8);
      --v6;
    }

    while (v6);
  }

  memcpy(v18, __src, sizeof(v18));
  v9 = sub_252E0C6DC(a1, v18);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      v12 = *v11++;
      sub_252DA74DC(v18, v12);
      --v10;
    }

    while (v10);
  }

  v13 = v19;
  v14 = *(v19 + 16);
  if (!v14)
  {

    return MEMORY[0x277D84F90];
  }

  v15 = sub_252DFA500(*(v19 + 16), 0, &qword_27F5402D0, &qword_252E3C108);
  v16 = sub_252E08794(v18, v15 + 4, v14, v13);

  result = sub_25291AE30();
  if (v16 == v14)
  {

    return v15;
  }

  __break(1u);
  return result;
}

void sub_252E0D150(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for HomeAttributeTargetArea();
    sub_252E11098(&qword_27F5447E8, type metadata accessor for HomeAttributeTargetArea);
    sub_252E373E4();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        sub_252DF9D70(&v25, a2, a3);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_252E37904())
        {
          break;
        }

        type metadata accessor for HomeAttributeTargetArea();
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_25291AE30();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_252E0D364(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v6, a1);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v9 = v7;
      sub_252E0D150(a2, v9, a3);

      ++v6;
      if (v8 == i)
      {
        return;
      }
    }

    if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = *(a1 + 8 * v6 + 32);
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_252E0D464(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 168);
  if (qword_27F53F4B0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v6 = 0xD00000000000007DLL;
  v7 = sub_252E36AD4();
  v8 = __swift_project_value_buffer(v7, qword_27F544CB8);
  v102 = 0;
  v103 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E9EF70);
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x2530AD730](a1, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0x656D614E70616D0ALL, 0xEB00000000203A73);
  v93 = a2;
  v11 = MEMORY[0x2530AD730](a2, v9);
  MEMORY[0x2530AD570](v11);

  a2 = " explicit clean utterance.";
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v12 = MEMORY[0x277D84F90];
  v96 = v8;
  if (v5[2])
  {
    v95 = a1;
    v13 = v5[4];
    v5 = v5[5];
    type metadata accessor for HomeStore();

    v14 = static HomeStore.shared.getter();
    v15 = sub_2529DA2BC();

    v102 = v12;
    if (v15 >> 62)
    {
      v6 = sub_252E378C4();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        v16 = 0;
        a1 = v15 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x2530ADF00](v16, v15);
            a2 = (v16 + 1);
            if (__OFADD__(v16, 1))
            {
LABEL_20:
              __break(1u);
LABEL_21:
              v20 = v6 - 74;
              v21 = v6 - 53;
              v22 = 0x8000000252E9F120;
              v23 = a2 | 0x8000000000000000;
              v24 = 396;
LABEL_72:
              sub_252CC4050(v21, v22, 0xD00000000000007DLL, v23, v20, 0x8000000252E9F0E0, v24);
              return MEMORY[0x277D84F90];
            }
          }

          else
          {
            if (v16 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_25;
            }

            v18 = *(v15 + 8 * v16 + 32);

            a2 = (v16 + 1);
            if (__OFADD__(v16, 1))
            {
              goto LABEL_20;
            }
          }

          v19 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v13 && *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v5;
          if (v19 || (sub_252E37DB4() & 1) != 0)
          {
            sub_252E37A94();
            v17 = *(v102 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v16;
          if (a2 == v6)
          {
            v25 = v102;
            goto LABEL_28;
          }
        }
      }
    }

    v25 = MEMORY[0x277D84F90];
LABEL_28:

    a1 = v95;
  }

  else
  {
    type metadata accessor for HomeStore();
    v26 = static HomeStore.shared.getter();
    v25 = sub_2529DA2BC();
  }

  sub_252E379F4();

  v102 = 0xD00000000000002DLL;
  v103 = 0x8000000252E9EFB0;
  v97 = type metadata accessor for MatterAccessory();
  v27 = MEMORY[0x2530AD730](v25);
  MEMORY[0x2530AD570](v27);

  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E9EFB0, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  v100 = MEMORY[0x277D84F90];
  if (v25 >> 62)
  {
    goto LABEL_53;
  }

  v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28)
  {
LABEL_31:
    v29 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x2530ADF00](v29, v25);
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v29 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v30 = *(v25 + 8 * v29 + 32);

        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v28 = sub_252E378C4();
          if (!v28)
          {
            break;
          }

          goto LABEL_31;
        }
      }

      v32 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v33 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v34 = *&v32[v33];
      if (v34 >> 62)
      {
        if (v34 < 0)
        {
          v38 = *&v32[v33];
        }

        v39 = sub_252E378C4();

        if (v39)
        {
LABEL_39:
          v36 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
          v37 = sub_252AC0F68(v30);

          if (!v37)
          {
            v37 = MEMORY[0x277D84F90];
          }

          goto LABEL_49;
        }
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v35)
        {
          goto LABEL_39;
        }
      }

      v37 = MEMORY[0x277D84F90];
LABEL_49:
      v40 = Array<A>.contains(_:)(a1, v37);

      if (v40)
      {
        sub_252E37A94();
        v41 = *(v100 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v29;
    }

    while (v31 != v28);
  }

  v42 = v100;
  sub_252E379F4();

  v100 = 0xD00000000000002FLL;
  v101 = 0x8000000252E9EFE0;
  v43 = MEMORY[0x2530AD730](v42, v97);
  MEMORY[0x2530AD570](v43);

  v44 = v96;
  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E9EFE0, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  if ((v42 & 0x8000000000000000) == 0 && (v42 & 0x4000000000000000) == 0)
  {
    v45 = *(v42 + 16);
    if (v45)
    {
      goto LABEL_57;
    }

LABEL_71:

    v20 = 0xD000000000000033;
    v21 = 0xD000000000000034;
    v22 = 0x8000000252E9F0A0;
    v23 = 0x8000000252E9E7B0;
    v24 = 425;
    goto LABEL_72;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_71;
  }

  v45 = sub_252E378C4();
LABEL_57:
  v46 = v42 & 0xC000000000000001;
  if (v45 == 1)
  {
    if (v46)
    {
      goto LABEL_73;
    }

    v46 = *(v42 + 16);
    if (v46)
    {
LABEL_63:
      v47 = *(v42 + 32);

      goto LABEL_64;
    }

    __break(1u);
  }

  if (!v46)
  {
    if (!*(v42 + 16))
    {
      __break(1u);
LABEL_129:
      v77 = sub_252E378C4();
      goto LABEL_103;
    }

    goto LABEL_63;
  }

LABEL_73:
  v47 = MEMORY[0x2530ADF00](0, v42);
LABEL_64:

  sub_252E379F4();

  v100 = 0xD000000000000015;
  v101 = 0x8000000252E9F010;
  v92 = v47;
  v48 = sub_252D69924();
  MEMORY[0x2530AD570](v48);

  sub_252CC3D90(0xD000000000000015, 0x8000000252E9F010, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  v49 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v50 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v51 = *&v49[v50];
  if (v51 >> 62)
  {
    if (v51 < 0)
    {
      v57 = *&v49[v50];
    }

    v58 = sub_252E378C4();

    if (v58)
    {
      goto LABEL_66;
    }

LABEL_77:

    v55 = MEMORY[0x277D84F90];
    goto LABEL_78;
  }

  v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v52)
  {
    goto LABEL_77;
  }

LABEL_66:
  v53 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v54 = sub_252AC0F68(v92);

  if (v54)
  {
    v55 = v54;
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
  }

LABEL_78:
  v56 = Array<A>.filter(_:)(a1, v55);

  if (!v93[2])
  {
    goto LABEL_134;
  }

  v95 = v93[4];
  v97 = v93[5];

  v44 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v59 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v60 = *(v44 + v59);
  if (v60 >> 62)
  {
    goto LABEL_125;
  }

  v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {

    v62 = MEMORY[0x277D84F90];
    if (v61)
    {
      v63 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v64 = sub_252AC11C8(v92);

      if (v64)
      {
        v62 = v64;
      }
    }

    v94 = v56;
    if (v62 >> 62)
    {
      v44 = sub_252E378C4();
      if (!v44)
      {
LABEL_127:

        v56 = v94;
        goto LABEL_133;
      }
    }

    else
    {
      v44 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v44)
      {
        goto LABEL_127;
      }
    }

    v65 = 0;
    v56 = v62 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x2530ADF00](v65, v62);
      }

      else
      {
        if (v65 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_122;
        }

        v66 = *(v62 + 8 * v65 + 32);
      }

      v42 = v66;
      v67 = (v65 + 1);
      if (__OFADD__(v65, 1))
      {
        __break(1u);
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v68 = [v66 name];
      if (!v68)
      {
        goto LABEL_87;
      }

      v69 = v68;
      v70 = sub_252E36F34();
      v72 = v71;

      if (v70 == v95 && v72 == v97)
      {
        break;
      }

      v74 = sub_252E37DB4();

      if (v74)
      {
        goto LABEL_101;
      }

LABEL_87:

      ++v65;
      if (v67 == v44)
      {
        goto LABEL_127;
      }
    }

LABEL_101:

    v44 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v75 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v76 = *(v44 + v75);
    if (v76 >> 62)
    {
      goto LABEL_129;
    }

    v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_103:

    v78 = MEMORY[0x277D84F90];
    if (v77)
    {
      v44 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v79 = sub_252AC0F68(v92);

      if (v79)
      {
        v80 = v79;
      }

      else
      {
        v80 = v78;
      }
    }

    else
    {
      v80 = MEMORY[0x277D84F90];
    }

    v98 = v78;
    if (v80 >> 62)
    {
      v56 = sub_252E378C4();
      if (!v56)
      {
        goto LABEL_131;
      }

LABEL_110:
      v81 = 0;
      while (1)
      {
        if ((v80 & 0xC000000000000001) != 0)
        {
          v82 = MEMORY[0x2530ADF00](v81, v80);
        }

        else
        {
          if (v81 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_124;
          }

          v82 = *(v80 + 8 * v81 + 32);
        }

        v83 = v82;
        v84 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          break;
        }

        [v82 mapID];
        v86 = v85;
        [v42 mapID];
        if (v86 == v87)
        {
          sub_252E37A94();
          v88 = *(v98 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          v44 = &v98;
          sub_252E37AA4();
        }

        else
        {
        }

        ++v81;
        if (v84 == v56)
        {
          v56 = v98;
          goto LABEL_132;
        }
      }

LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      v61 = sub_252E378C4();
      continue;
    }

    break;
  }

  v56 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56)
  {
    goto LABEL_110;
  }

LABEL_131:
  v56 = MEMORY[0x277D84F90];
LABEL_132:

  v98 = 0;
  v99 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E9F030);
  MEMORY[0x2530AD570](v95, v97);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E9F050);
  sub_252CC3D90(v98, v99, 0xD00000000000007DLL, 0x8000000252E9E7B0);

LABEL_133:

LABEL_134:
  v98 = 0;
  v99 = 0xE000000000000000;
  sub_252E379F4();

  v98 = 0xD00000000000002BLL;
  v99 = 0x8000000252E9F070;
  v89 = type metadata accessor for HomeAttributeTargetArea();
  v90 = MEMORY[0x2530AD730](v56, v89);
  MEMORY[0x2530AD570](v90);

  sub_252CC3D90(v98, v99, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  return v56;
}

uint64_t sub_252E0E100(unint64_t a1, uint64_t a2, char *a3, const void *a4)
{
  v130 = a3;
  v144 = sub_252E32E84();
  v7 = *(v144 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v144);
  v143 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v156, a4, sizeof(v156));
  v154 = MEMORY[0x277D84F90];
  v128 = a1;
  v145 = a2;
  if (a1 >> 62)
  {
    goto LABEL_79;
  }

  v10 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = 0xD00000000000007DLL;
  if (v10)
  {
    v12 = 0;
    v141 = v128 & 0xFFFFFFFFFFFFFF8;
    v142 = v128 & 0xC000000000000001;
    v139 = v128 + 32;
    v140 = (v7 + 8);
    v129 = "Modified user task: ";
    v135 = ". Returning .robotVacuumCleaner";
    v136 = "tity with accessoryID ";
    v133 = "for accessoryID ";
    v134 = "MatterAccessory.swift";
    v131 = "deviceEntity(for:)";
    v132 = "MatterAccessoryManager.swift";
    v137 = (v145 + 40);
    v138 = v10;
    while (1)
    {
      if (v142)
      {
        v14 = MEMORY[0x2530ADF00](v12, v128);
        v15 = __OFADD__(v12, 1);
        v16 = (v12 + 1);
        if (v15)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v12 >= *(v141 + 16))
        {
          goto LABEL_77;
        }

        v14 = *(v139 + 8 * v12);

        v15 = __OFADD__(v12, 1);
        v16 = (v12 + 1);
        if (v15)
        {
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          v10 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v146 = v16;
      v17 = [*(v14 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
      v18 = v143;
      sub_252E32E64();

      v149 = sub_252E32E24();
      v150 = v19;
      (*v140)(v18, v144);
      v20 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v7 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v21 = *&v20[v7];
      v147 = v20;
      v148 = v14;
      if (v21 >> 62)
      {
        v22 = sub_252E378C4();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v22)
      {
        v23 = 0;
        while (1)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x2530ADF00](v23, v21);
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            v24 = *(v21 + 8 * v23 + 32);

            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
              goto LABEL_76;
            }
          }

          v26 = *(v24 + qword_27F5427D0);

          sub_252E36744();

          v7 = v155[1];
          if (v155[1])
          {
            if (v155[0] == v149 && v155[1] == v150)
            {

              goto LABEL_32;
            }

            a2 = sub_252E37DB4();

            if (a2)
            {
              break;
            }
          }

          ++v23;
          if (v25 == v22)
          {
            goto LABEL_26;
          }
        }

LABEL_32:

        v31 = sub_252BF8258(v24);
        v11 = 0xD00000000000007DLL;
        v30 = v138;
        if (v31)
        {
          if (*(v31 + 2))
          {
            v7 = v31;

            if (!*(v7 + 16))
            {
              goto LABEL_78;
            }

            v7 = *(v7 + 32);

            if (v7 != 46)
            {
LABEL_45:

              goto LABEL_6;
            }

            goto LABEL_42;
          }
        }

        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v32 = sub_252E36AD4();
        a2 = __swift_project_value_buffer(v32, qword_27F544CB8);
        v155[0] = 0;
        v155[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000036, v129 | 0x8000000000000000);
        MEMORY[0x2530AD570](v149, v150);

        MEMORY[0x2530AD570](0xD00000000000001FLL, v136 | 0x8000000000000000);
        sub_252CC4050(v155[0], v155[1], 0xD000000000000075, v135 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);
      }

      else
      {
LABEL_26:

        if (qword_27F53F560 != -1)
        {
          swift_once();
        }

        v27 = sub_252E36AD4();
        __swift_project_value_buffer(v27, qword_27F544EC8);
        v155[0] = 0;
        v155[1] = 0xE000000000000000;
        sub_252E379F4();
        v11 = 0xD00000000000007DLL;
        MEMORY[0x2530AD570](0xD000000000000040, v134 | 0x8000000000000000);
        v29 = v149;
        v28 = v150;
        MEMORY[0x2530AD570](v149, v150);
        sub_252CC4050(v155[0], v155[1], 0xD00000000000007CLL, v133 | 0x8000000000000000, 0xD000000000000012, v132 | 0x8000000000000000, 375);

        v30 = v138;
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        a2 = __swift_project_value_buffer(v27, qword_27F544CB8);
        v155[0] = 0;
        v155[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000027, v131 | 0x8000000000000000);
        MEMORY[0x2530AD570](v29, v28);

        MEMORY[0x2530AD570](0xD00000000000001FLL, v136 | 0x8000000000000000);
        sub_252CC4050(v155[0], v155[1], 0xD000000000000075, v135 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
      }

LABEL_42:
      v33 = *(v145 + 16) + 1;
      v34 = v137;
      while (--v33)
      {
        a2 = (v34 + 2);
        v35 = *(v34 - 1);
        v36 = *v34;

        v7 = sub_25292C010(v35, v36);

        v34 = a2;
        if ((v7 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      sub_252E37A94();
      v13 = *(v154 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      v7 = &v154;
      sub_252E37AA4();
LABEL_6:
      v12 = v146;
      if (v146 == v30)
      {
        v37 = v154;
        goto LABEL_52;
      }
    }
  }

  v37 = MEMORY[0x277D84F90];
LABEL_52:
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v38 = sub_252E36AD4();
  v39 = __swift_project_value_buffer(v38, qword_27F544CB8);
  v155[0] = 0;
  v155[1] = 0xE000000000000000;
  sub_252E379F4();

  v155[0] = 0xD000000000000026;
  v155[1] = 0x8000000252E9ECC0;
  v40 = MEMORY[0x2530AD730](v145, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v40);

  MEMORY[0x2530AD570](2112041, 0xE300000000000000);
  v41 = type metadata accessor for MatterAccessory();
  v42 = MEMORY[0x2530AD730](v37, v41);
  MEMORY[0x2530AD570](v42);

  v146 = " explicit clean utterance.";
  v147 = v39;
  sub_252CC3D90(v155[0], v155[1], 0xD00000000000007DLL, 0x8000000252E9E7B0);

  if (v37 < 0)
  {
    v43 = 1;
  }

  else
  {
    v43 = (v37 >> 62) & 1;
  }

  if (v43 == 1)
  {
    if (!sub_252E378C4())
    {
LABEL_64:
      if (v43)
      {
        if (sub_252E378C4() < 2)
        {
LABEL_66:

          memcpy(v155, v156, 0x1F8uLL);
          v44 = sub_252E0D464(v145, v130, v155);
          v155[0] = 0;
          v155[1] = 0xE000000000000000;
          sub_252E379F4();
          v45 = "t the target area(s) (";
          v46 = 0xD00000000000003ELL;
LABEL_73:
          MEMORY[0x2530AD570](v46, v45 | 0x8000000000000000);
          v62 = type metadata accessor for HomeAttributeTargetArea();
          v63 = MEMORY[0x2530AD730](v44, v62);
          MEMORY[0x2530AD570](v63);

          sub_252CC3D90(v155[0], v155[1], 0xD00000000000007DLL, v146 | 0x8000000000000000);

          return v44;
        }
      }

      else if (*(v37 + 16) < 2)
      {
        goto LABEL_66;
      }

      v47 = v145;
      v48 = *(v145 + 16);
      v44 = MEMORY[0x277D84F90];
      if (v48)
      {
        v149 = v41;
        v150 = v37;
        v155[0] = MEMORY[0x277D84F90];
        sub_252E37AB4();
        v49 = type metadata accessor for HomeAttributeTargetArea();
        v50 = (v47 + 40);
        do
        {
          v51 = *(v50 - 1);
          v52 = *v50;
          v53 = objc_allocWithZone(v49);

          v54 = sub_252E36F04();
          v55 = [v53 initWithIdentifier:0 displayString:v54];

          v56 = v55;
          v57 = sub_252E36F04();

          [v56 setName_];

          [v56 setAreaID_];
          [v56 setMapID_];

          sub_252E37A94();
          v58 = *(v155[0] + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          v50 += 2;
          --v48;
        }

        while (v48);
        v44 = v155[0];
        v41 = v149;
        v37 = v150;
      }

      v155[0] = 0;
      v155[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E9ED30);
      v59 = MEMORY[0x2530AD730](v37, v41);
      v61 = v60;

      MEMORY[0x2530AD570](v59, v61);

      v45 = "pport the area: ";
      v46 = 0xD00000000000001ALL;
      goto LABEL_73;
    }
  }

  else if (!*(v37 + 16))
  {
    goto LABEL_64;
  }

  if ((v37 & 0xC000000000000001) == 0)
  {
    if (!*(v37 + 16))
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    a2 = *(v37 + 32);

    if (v43)
    {
      goto LABEL_62;
    }

LABEL_83:
    if (*(v37 + 16) != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_84;
  }

  a2 = MEMORY[0x2530ADF00](0, v37);
  if (!v43)
  {
    goto LABEL_83;
  }

LABEL_62:
  if (sub_252E378C4() != 1)
  {
LABEL_63:

    goto LABEL_64;
  }

LABEL_84:

  v43 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v41 = &unk_27F542000;
  v64 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v65 = *(v43 + v64);
  if (!(v65 >> 62))
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_86;
  }

LABEL_113:
  v66 = sub_252E378C4();
LABEL_86:

  v67 = MEMORY[0x277D84F90];
  if (v66)
  {
    v68 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v69 = sub_252AC0F68(a2);

    if (v69)
    {
      v43 = v69;
    }

    else
    {
      v43 = v67;
    }
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v152 = v67;
  if (v43 >> 62)
  {
    v150 = v43 & 0xFFFFFFFFFFFFFF8;
    v70 = sub_252E378C4();
    v143 = a2;
    if (v70)
    {
      goto LABEL_93;
    }

LABEL_115:
    v144 = MEMORY[0x277D84F90];
    goto LABEL_116;
  }

  v150 = v43 & 0xFFFFFFFFFFFFFF8;
  v70 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v143 = a2;
  if (!v70)
  {
    goto LABEL_115;
  }

LABEL_93:
  a2 = 0;
  v149 = v43 & 0xC000000000000001;
  v144 = MEMORY[0x277D84F90];
  v148 = v43;
  do
  {
    v71 = a2;
    while (1)
    {
      if (v149)
      {
        v72 = MEMORY[0x2530ADF00](v71, v43);
      }

      else
      {
        if (v71 >= *(v150 + 16))
        {
          goto LABEL_111;
        }

        v72 = *(v43 + 8 * v71 + 32);
      }

      v73 = v72;
      a2 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v74 = [v72 name];
      if (v74)
      {
        break;
      }

LABEL_96:

      ++v71;
      if (a2 == v70)
      {
        v41 = &unk_27F542000;
        goto LABEL_116;
      }
    }

    v75 = v74;
    v76 = sub_252E36F34();
    v41 = v77;

    v155[0] = v76;
    v155[1] = v41;
    MEMORY[0x28223BE20](v78);
    *(&v128 - 2) = v155;

    LOBYTE(v75) = sub_2529ED970(sub_25296A724, (&v128 - 4), v145);
    v79 = swift_bridgeObjectRelease_n();
    if ((v75 & 1) == 0)
    {
      v11 = 0xD00000000000007DLL;
      v43 = v148;
      goto LABEL_96;
    }

    MEMORY[0x2530AD700](v79);
    v11 = 0xD00000000000007DLL;
    if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v80 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v144 = v152;
    v41 = &unk_27F542000;
    v43 = v148;
  }

  while (a2 != v70);
LABEL_116:

  v81 = sub_252C75DC0(v144);

  v155[0] = 0;
  v155[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E9ED80);
  v82 = type metadata accessor for HomeAttributeTargetArea();
  sub_252E11098(&qword_27F5447E8, type metadata accessor for HomeAttributeTargetArea);
  v142 = v82;
  v83 = sub_252E373B4();
  MEMORY[0x2530AD570](v83);

  sub_252CC3D90(v155[0], v155[1], 0xD00000000000007DLL, v146 | 0x8000000000000000);

  v153 = sub_252CC62F8(MEMORY[0x277D84F90]);
  v84 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v85 = v41[429];
  swift_beginAccess();
  v86 = *&v84[v85];
  if (v86 >> 62)
  {
    goto LABEL_141;
  }

  v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {

    v88 = MEMORY[0x277D84F90];
    if (v87)
    {
      v89 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v90 = sub_252AC11C8(v143);

      if (v90)
      {
        v91 = v90;
      }

      else
      {
        v91 = v88;
      }
    }

    else
    {
      v91 = MEMORY[0x277D84F90];
    }

    sub_252E0D364(v91, v81, &v153);

    swift_bridgeObjectRelease_n();
    v155[0] = 0;
    v155[1] = 0xE000000000000000;
    sub_252E379F4();

    v155[0] = v11 - 77;
    v155[1] = 0x8000000252E9EDC0;
    v92 = v153;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433D8, &qword_252E4B828);
    v93 = sub_252E36E54();
    MEMORY[0x2530AD570](v93);

    sub_252CC3D90(v155[0], v155[1], 0xD00000000000007DLL, v146 | 0x8000000000000000);

    v144 = v92;
    v94 = sub_252DF81D0(v92);
    v81 = sub_252DF9B90(v94, sub_252E10AC0, sub_252A00B74);

    v151 = v88;
    if (!(v81 >> 62))
    {
      v84 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v84)
      {
        break;
      }

      goto LABEL_125;
    }

    v84 = sub_252E378C4();
    if (v84)
    {
LABEL_125:
      v11 = 0;
      v149 = v81 & 0xFFFFFFFFFFFFFF8;
      v150 = v81 & 0xC000000000000001;
      v148 = v84;
      while (1)
      {
        if (v150)
        {
          v95 = MEMORY[0x2530ADF00](v11, v81);
        }

        else
        {
          if (v11 >= *(v149 + 16))
          {
            goto LABEL_140;
          }

          v95 = *(v81 + 8 * v11 + 32);
        }

        v96 = v95;
        v97 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v98 = [v95 name];
        if (v98)
        {
          v99 = v98;
          v100 = sub_252E36F34();
          v102 = v101;
        }

        else
        {
          v100 = 0;
          v102 = 0xE000000000000000;
        }

        v155[0] = v100;
        v155[1] = v102;
        MEMORY[0x28223BE20](v98);
        *(&v128 - 2) = v155;
        v103 = sub_2529ED970(sub_25296A724, (&v128 - 4), v130);

        if (v103)
        {
          sub_252E37A94();
          v104 = *(v151 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v84 = v148;
        ++v11;
        if (v97 == v148)
        {
          v105 = v151;
          v11 = 0xD00000000000007DLL;
          goto LABEL_144;
        }
      }

      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      v87 = sub_252E378C4();
      continue;
    }

    break;
  }

  v105 = MEMORY[0x277D84F90];
LABEL_144:

  v155[0] = 0;
  v155[1] = 0xE000000000000000;
  sub_252E379F4();

  v155[0] = v11 - 81;
  v155[1] = 0x8000000252E9EE00;
  v106 = type metadata accessor for HomeAttributeTargetMap();
  v107 = MEMORY[0x2530AD730](v105, v106);
  MEMORY[0x2530AD570](v107);

  sub_252CC3D90(v155[0], v155[1], 0xD00000000000007DLL, v146 | 0x8000000000000000);

  if (v105 < 0 || (v105 & 0x4000000000000000) != 0)
  {
    if (sub_252E378C4() != 1)
    {
      goto LABEL_155;
    }

    result = sub_252E378C4();
    if (!result)
    {
      goto LABEL_155;
    }

LABEL_147:
    if ((v105 & 0xC000000000000001) != 0)
    {
      v109 = MEMORY[0x2530ADF00](0, v105);
    }

    else
    {
      if (!*(v105 + 16))
      {
        __break(1u);
        return result;
      }

      v109 = *(v105 + 32);
    }

    v110 = v109;

    v111 = [v110 name];
    if (!v111)
    {

      goto LABEL_156;
    }

    v112 = v111;
    v113 = sub_252E36F34();
    v115 = v114;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_252E3C290;
    *(v116 + 32) = v113;
    *(v116 + 40) = v115;
    memcpy(v155, v156, 0x1F8uLL);
    v44 = sub_252E0D464(v145, v116, v155);

    v155[0] = 0;
    v155[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](v11 - 63, 0x8000000252E9EF30);
    v117 = MEMORY[0x2530AD730](v44, v142);
    MEMORY[0x2530AD570](v117);

    sub_252CC3D90(v155[0], v155[1], 0xD00000000000007DLL, v146 | 0x8000000000000000);

    goto LABEL_163;
  }

  if (*(v105 + 16) == 1)
  {
    goto LABEL_147;
  }

LABEL_155:

LABEL_156:
  v118 = v144;
  v119 = sub_252DF8544(v144);
  v155[0] = 0;
  v155[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](v11 - 43, 0x8000000252E9EE30);
  v120 = MEMORY[0x2530AD730](v119, v142);
  MEMORY[0x2530AD570](v120);

  sub_252CC3D90(v155[0], v155[1], 0xD00000000000007DLL, v146 | 0x8000000000000000);

  v121 = *(v118 + 16);
  if (v119 >> 62)
  {
    v122 = sub_252E378C4();
    if (!v121)
    {
      goto LABEL_161;
    }

LABEL_158:
    if (v121 >= v122)
    {
      goto LABEL_161;
    }

    v155[0] = 0;
    v155[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](v11 - 102, 0x8000000252E9EEF0);
    v151 = v122;
    v123 = sub_252E37D94();
    MEMORY[0x2530AD570](v123);

    MEMORY[0x2530AD570](0x70616D20726F6620, 0xEB00000000282073);
    v151 = v121;
    v124 = sub_252E37D94();
    MEMORY[0x2530AD570](v124);

    MEMORY[0x2530AD570](v11 - 99, 0x8000000252E9EF10);
    sub_252CC3D90(v155[0], v155[1], 0xD00000000000007DLL, v146 | 0x8000000000000000);

    v44 = sub_252DF9B90(v119, sub_252E10A90, sub_252A00B74);
  }

  else
  {
    v122 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v121)
    {
      goto LABEL_158;
    }

LABEL_161:

    memcpy(v155, v156, 0x1F8uLL);
    v44 = sub_252E0D464(v145, v130, v155);
    v155[0] = 0;
    v155[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x6120746567726174, 0xEE00282073616572);
    v151 = v122;
    v125 = sub_252E37D94();
    MEMORY[0x2530AD570](v125);

    MEMORY[0x2530AD570](v11 - 88, 0x8000000252E9EE90);
    v151 = v121;
    v126 = sub_252E37D94();
    MEMORY[0x2530AD570](v126);

    MEMORY[0x2530AD570](v11 - 86, 0x8000000252E9EEC0);
    v127 = MEMORY[0x2530AD730](v44, v142);
    MEMORY[0x2530AD570](v127);

    sub_252CC3D90(v155[0], v155[1], 0xD00000000000007DLL, v146 | 0x8000000000000000);
  }

LABEL_163:

  return v44;
}

uint64_t sub_252E0F8A8(unint64_t a1)
{
  if (qword_27F53F4B0 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v67 = sub_252E36AD4();
    __swift_project_value_buffer(v67, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E9EB60);
    v2 = MEMORY[0x2530AD730](a1, MEMORY[0x277D837D0]);
    MEMORY[0x2530AD570](v2);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007DLL, 0x8000000252E9E7B0);

    v66 = a1;
    v72 = *(a1 + 16);
    if (!v72)
    {
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v67, qword_27F544D90);
      v47 = 0x8000000252E9EC80;
      v48 = 550;
LABEL_84:
      sub_252CC4050(0xD000000000000033, v47, 0xD00000000000007DLL, 0x8000000252E9E7B0, 0xD000000000000028, 0x8000000252E9EC10, v48);
      return 0;
    }

    type metadata accessor for HomeStore();
    v3 = static HomeStore.shared.getter();
    v4 = sub_2529DA2BC();

    v74 = MEMORY[0x277D84F90];
    v65 = v4;
    if (v4 >> 62)
    {
      v5 = sub_252E378C4();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = MEMORY[0x277D84F90];
    if (!v5)
    {
      v46 = MEMORY[0x277D84F90];
      goto LABEL_59;
    }

    a1 = 0;
    v70 = v4 & 0xFFFFFFFFFFFFFF8;
    v71 = v4 & 0xC000000000000001;
    v68 = v5;
    v69 = v4 + 32;
LABEL_7:
    if (v71)
    {
      v7 = MEMORY[0x2530ADF00](a1, v65);
      v8 = __OFADD__(a1++, 1);
      if (v8)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (a1 >= *(v70 + 16))
      {
        goto LABEL_76;
      }

      v7 = *(v69 + 8 * a1);

      v8 = __OFADD__(a1++, 1);
      if (v8)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }
    }

    v9 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v10 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v11 = *&v9[v10];
    if (!(v11 >> 62))
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v12)
      {
        goto LABEL_14;
      }

LABEL_12:
      v13 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v14 = sub_252AC11C8(v7);

      if (v14)
      {
        v6 = v14;
      }

      goto LABEL_14;
    }

    if (v11 < 0)
    {
      v28 = *&v9[v10];
    }

    v29 = sub_252E378C4();

    if (v29)
    {
      goto LABEL_12;
    }

LABEL_14:
    if (v6 >> 62)
    {
      v15 = sub_252E378C4();
      v73 = a1;
      if (!v15)
      {
LABEL_36:

        v17 = MEMORY[0x277D84F90];
        goto LABEL_37;
      }
    }

    else
    {
      v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v73 = a1;
      if (!v15)
      {
        goto LABEL_36;
      }
    }

    v75 = MEMORY[0x277D84F90];
    sub_2529AA380(0, v15 & ~(v15 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  v16 = 0;
  v17 = v75;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x2530ADF00](v16, v6);
    }

    else
    {
      v18 = *(v6 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = [v18 name];
    if (v20)
    {
      v21 = v20;
      v22 = sub_252E36F34();
      v24 = v23;
    }

    else
    {

      v22 = 0;
      v24 = 0;
    }

    v26 = *(v75 + 16);
    v25 = *(v75 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_2529AA380((v25 > 1), v26 + 1, 1);
    }

    ++v16;
    *(v75 + 16) = v26 + 1;
    v27 = v75 + 16 * v26;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
  }

  while (v15 != v16);

LABEL_37:
  v30 = sub_252C75A1C(v17);

  v31 = 0;
  a1 = v30 + 56;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    if (!*(v30 + 16))
    {
      break;
    }

    v33 = (v66 + 32 + 16 * v31);
    v35 = *v33;
    v34 = v33[1];
    v36 = *(v30 + 40);
    sub_252E37EC4();
    sub_252E37EE4();
    swift_bridgeObjectRetain_n();
    sub_252E37044();
    v37 = sub_252E37F14();
    v38 = -1 << *(v30 + 32);
    v39 = v37 & ~v38;
    if (((*(a1 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
    {
LABEL_51:
      swift_bridgeObjectRelease_n();
      break;
    }

    ++v31;
    v40 = ~v38;
    v41 = *(v30 + 48);
    while (1)
    {
      v42 = (v41 + 16 * v39);
      v43 = v42[1];
      if (v43)
      {
        v44 = *v42 == v35 && v43 == v34;
        if (v44 || (sub_252E37DB4() & 1) != 0)
        {
          break;
        }
      }

      v39 = (v39 + 1) & v40;
      if (((*(a1 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    swift_bridgeObjectRelease_n();
    if (v32 == v72)
    {

      sub_252E37A94();
      v45 = *(v74 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
      goto LABEL_53;
    }
  }

LABEL_53:
  a1 = v73;
  v6 = MEMORY[0x277D84F90];
  if (v73 != v68)
  {
    goto LABEL_7;
  }

  v46 = v74;
LABEL_59:

  if ((v46 & 0x8000000000000000) == 0 && (v46 & 0x4000000000000000) == 0)
  {
    result = *(v46 + 16);
    if (result)
    {
      goto LABEL_62;
    }

LABEL_82:

    if (qword_27F53F4F8 == -1)
    {
LABEL_83:
      __swift_project_value_buffer(v67, qword_27F544D90);
      v47 = 0x8000000252E9EC40;
      v48 = 569;
      goto LABEL_84;
    }

LABEL_108:
    swift_once();
    goto LABEL_83;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_82;
  }

  result = sub_252E378C4();
LABEL_62:
  v50 = v46 & 0xC000000000000001;
  if (result != 1)
  {
LABEL_66:
    if (!v50)
    {
      if (*(v46 + 16))
      {
        goto LABEL_68;
      }

      __break(1u);
      return result;
    }

LABEL_86:
    v51 = MEMORY[0x2530ADF00](0, v46);
    goto LABEL_69;
  }

  if (v50)
  {
    goto LABEL_86;
  }

  v50 = *(v46 + 16);
  if (!v50)
  {
    __break(1u);
    goto LABEL_66;
  }

LABEL_68:
  v51 = *(v46 + 32);

LABEL_69:

  sub_252E379F4();

  v52 = sub_252D69924();
  MEMORY[0x2530AD570](v52);

  sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E9EBA0, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  v53 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v54 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v55 = *&v53[v54];
  if (v55 >> 62)
  {
    if (v55 < 0)
    {
      v59 = *&v53[v54];
    }

    v60 = sub_252E378C4();

    if (!v60)
    {
      goto LABEL_90;
    }

LABEL_71:
    v57 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v58 = sub_252AC11C8(v51);

    if (!v58)
    {
      v58 = v6;
    }
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v56)
    {
      goto LABEL_71;
    }

LABEL_90:

    v58 = MEMORY[0x277D84F90];
  }

  v61 = Array<A>.filter(_:)(v66, v58);

  if (v61 >> 62)
  {
    if (sub_252E378C4() >= 2)
    {
LABEL_93:
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v67, qword_27F544D90);
      sub_252E379F4();
      MEMORY[0x2530AD570](0x656C7069746C754DLL, 0xEA00000000002820);
      v62 = sub_252E37D94();
      MEMORY[0x2530AD570](v62);

      MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E9EBD0);
      sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007DLL, 0x8000000252E9E7B0, 0xD000000000000028, 0x8000000252E9EC10, 577);
    }
  }

  else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
    goto LABEL_93;
  }

  if (!(v61 >> 62))
  {
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_98;
    }

LABEL_103:

    return 0;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_103;
  }

LABEL_98:
  if ((v61 & 0xC000000000000001) != 0)
  {
    v63 = MEMORY[0x2530ADF00](0, v61);
  }

  else
  {
    if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_108;
    }

    v63 = *(v61 + 32);
  }

  v64 = v63;

  return v64;
}

uint64_t sub_252E10290(unint64_t a1, void *a2)
{
  if (!a2[2])
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544CB8);
    sub_252CC3D90(0xD000000000000017, 0x8000000252E9EB40, 0xD00000000000007DLL, 0x8000000252E9E7B0);
    return 0;
  }

  v2 = a1;
  v3 = a2[4];
  v4 = a2[5];
  v52 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_59;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  v51 = v3;
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v6, v2);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v10 = v52;
          goto LABEL_21;
        }
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          v5 = sub_252E378C4();
          goto LABEL_4;
        }

        v7 = *(v2 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_15;
        }
      }

      if (sub_25292C028(v3, v4))
      {
        sub_252E37A94();
        v9 = *(v52 + 16);
        sub_252E37AC4();
        v3 = v51;
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v6;
      if (v8 == v5)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_21:
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544CB8);
  sub_252E379F4();

  v52 = 0xD000000000000022;
  MEMORY[0x2530AD570](v3, v4);
  MEMORY[0x2530AD570](2112041, 0xE300000000000000);
  v14 = type metadata accessor for MatterAccessory();
  v15 = MEMORY[0x2530AD730](v10, v14);
  MEMORY[0x2530AD570](v15);

  v2 = 0x8000000252E9EA30;
  sub_252CC3D90(0xD000000000000022, 0x8000000252E9EA30, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
  {
    v17 = *(v10 + 16);
    if (v17 == 1)
    {
      goto LABEL_26;
    }

LABEL_63:

    if (v17 >= 2)
    {
      sub_252CC3D90(0xD00000000000004ELL, 0x8000000252E9EAA0, 0xD00000000000007DLL, 0x8000000252E9E7B0);
      v37 = objc_allocWithZone(type metadata accessor for HomeAttributeTargetMap());
      v38 = sub_252E36F04();
      v39 = [v37 initWithIdentifier:0 displayString:v38];

      v12 = v39;
      v40 = sub_252E36F04();

      [v12 setName_];

      [v12 setMapID_];
      return v12;
    }

LABEL_77:

    v12 = sub_252E0F8A8(a2);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E9EA60);
    v48 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545A20, &unk_252E5DE50);
    v49 = sub_252E36F94();
    MEMORY[0x2530AD570](v49);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007DLL, 0x8000000252E9E7B0);

    return v12;
  }

  v17 = sub_252E378C4();
  if (v17 != 1)
  {
    goto LABEL_63;
  }

  result = sub_252E378C4();
  if (!result)
  {
LABEL_76:

    goto LABEL_77;
  }

LABEL_26:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x2530ADF00](0, v10);
LABEL_29:

    v19 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v20 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v21 = *&v19[v20];
    if (v21 >> 62)
    {
      if (v21 < 0)
      {
        v41 = *&v19[v20];
      }

      v22 = sub_252E378C4();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v24 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v2 = sub_252AC11C8(v18);

      if (v2)
      {
        v25 = v2;
      }

      else
      {
        v25 = v23;
      }
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v53 = v23;
    if (v25 >> 62)
    {
      v26 = sub_252E378C4();
      if (v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
LABEL_38:
        v3 = 0;
        v27 = v4;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x2530ADF00](v3, v25);
          }

          else
          {
            if (v3 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v28 = *(v25 + 8 * v3 + 32);
          }

          v4 = v28;
          v29 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_57;
          }

          v30 = [v28 name];
          if (v30)
          {
            v31 = v30;
            v32 = sub_252E36F34();
            v34 = v33;

            if (v32 == v51 && v34 == v27)
            {

LABEL_53:
              sub_252E37A94();
              v2 = *(v53 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              goto LABEL_40;
            }

            v2 = sub_252E37DB4();

            if (v2)
            {
              goto LABEL_53;
            }
          }

LABEL_40:
          ++v3;
          if (v29 == v26)
          {
            v36 = v53;
            goto LABEL_71;
          }
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_71:

    v42 = sub_252C75E08(v36);

    if ((v42 & 0xC000000000000001) != 0)
    {
      v43 = sub_252E378C4();
    }

    else
    {
      v43 = *(v42 + 16);
    }

    if (v43 >= 2)
    {
      sub_252CC3D90(0xD00000000000004ELL, 0x8000000252E9EAF0, 0xD00000000000007DLL, 0x8000000252E9E7B0);
      v44 = objc_allocWithZone(type metadata accessor for HomeAttributeTargetMap());
      v45 = sub_252E36F04();
      v46 = [v44 initWithIdentifier:0 displayString:v45];

      v12 = v46;
      v47 = sub_252E36F04();

      [v12 setName_];

      [v12 setMapID_];

      return v12;
    }

    goto LABEL_76;
  }

  if (*(v10 + 16))
  {
    v18 = *(v10 + 32);

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_252E10AF0(uint64_t *a1, void (*a2)(void))
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = *v3;
  a2(0);
  return sub_252E37694() & 1;
}

uint64_t sub_252E10B78(uint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = *(v3 + 16);
  v5 = *a1;
  v6 = *v4;
  sub_25293F638(0, a2, a3);
  return sub_252E37694() & 1;
}

uint64_t sub_252E10C30(__int128 *a1)
{
  v1 = a1[9];
  v40 = a1[8];
  v41 = v1;
  v2 = a1[11];
  v42 = a1[10];
  v43 = v2;
  v3 = a1[5];
  v36 = a1[4];
  v37 = v3;
  v4 = a1[7];
  v38 = a1[6];
  v39 = v4;
  v5 = a1[1];
  v32 = *a1;
  v33 = v5;
  v6 = a1[3];
  v34 = a1[2];
  v35 = v6;
  v7 = *(a1 + 24);
  memcpy(__dst, a1 + 200, sizeof(__dst));

  v9 = sub_252C75D8C(v8);

  v10 = sub_252C75D8C(&unk_2864A9268);
  if (qword_27F53F920 != -1)
  {
    swift_once();
  }

  v12 = sub_252C76E88(v11);

  v13 = sub_252DFAC78(v10, v9, sub_252DFE39C, sub_252DFE39C);
  v14 = sub_252A11F64(v12, v9);
  v15 = *(v9 + 16);
  v16 = v13[2];

  if (!v16)
  {
    if ((v15 != 1) | v14 & 1)
    {
      goto LABEL_9;
    }

LABEL_13:

    v19 = 1;
    return v19 & 1;
  }

  if (v15 == 1)
  {
    goto LABEL_13;
  }

  if (v16 != 1)
  {
LABEL_9:

    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544D90);
    sub_252E379F4();

    *&v30 = 0xD00000000000002DLL;
    *(&v30 + 1) = 0x8000000252E9F170;
    memcpy(v29, __dst, sizeof(v29));
    v21 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v21);

    v23 = *(&v30 + 1);
    v22 = v30;
    v24 = 69;
    goto LABEL_12;
  }

  v17 = sub_2529F261C(v12, v10);
  v18 = sub_252938DFC(v17, v9);

  if ((v18 & 1) == 0)
  {
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_27F544D90);
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v30 = v28;
    MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E9F1D0);
    memcpy(v29, __dst, sizeof(v29));
    v27 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v27);

    v23 = *(&v30 + 1);
    v22 = v30;
    v24 = 76;
LABEL_12:
    sub_252CC4050(v22, v23, 0xD00000000000007DLL, 0x8000000252E9E7B0, 0xD000000000000024, 0x8000000252E9F1A0, v24);

    v19 = 0;
    return v19 & 1;
  }

  v19 = v14 ^ 1;
  return v19 & 1;
}

uint64_t sub_252E11098(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_252E1119C(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, v2, sizeof(v4));
  return _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(__dst, v4);
}

uint64_t sub_252E11264(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v3;
  v14[8] = *(a1 + 128);
  v15 = *(a1 + 144);
  v4 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v4;
  v5 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v5;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v7 = *(v2 + 112);
  v12[6] = *(v2 + 96);
  v12[7] = v7;
  v12[8] = *(v2 + 128);
  v13 = *(v2 + 144);
  v8 = *(v2 + 48);
  v12[2] = *(v2 + 32);
  v12[3] = v8;
  v9 = *(v2 + 80);
  v12[4] = *(v2 + 64);
  v12[5] = v9;
  v10 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v10;
  return sub_252A39200(v14, v12) & 1;
}

char *sub_252E1139C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v51 = v1;
  if (v1)
  {
    v2 = 0;
    v48 = a1 + 32;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v52 = v3;
      memcpy(__dst, (v48 + 504 * v2), sizeof(__dst));
      v50 = v2 + 1;
      v4 = __dst[4];
      v5 = *(__dst[4] + 16);
      sub_2529353AC(__dst, v55);
      v6 = (v4 + 32);
      v7 = (v4 + 32);
      while (1)
      {
        if (!v5)
        {
          v10 = *(v4 + 16);
          while (v10)
          {
            v12 = *v6;
            if (v12 > 2 && v12 != 4)
            {
              goto LABEL_23;
            }

            v11 = sub_252E37DB4();

            ++v6;
            --v10;
            if (v11)
            {
              goto LABEL_24;
            }
          }

          v13 = *(__dst[11] + 16);
          v14 = (__dst[11] + 32);
          while (2)
          {
            if (v13)
            {
              switch(*v14)
              {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 0xA:
                case 0xB:
                case 0xC:
                case 0xD:
                case 0xE:
                case 0xF:
                case 0x10:
                case 0x11:
                case 0x12:
                case 0x13:
                case 0x14:
                  v15 = sub_252E37DB4();

                  ++v14;
                  --v13;
                  if ((v15 & 1) == 0)
                  {
                    continue;
                  }

                  goto LABEL_24;
                default:
                  goto LABEL_23;
              }
            }

            break;
          }

LABEL_3:
          sub_252935408(__dst);
          v1 = v51;
          v3 = v52;
          v2 = v50;
          goto LABEL_4;
        }

        v9 = *v7;
        if (v9 > 1 && v9 != 3 && v9 != 4)
        {
          break;
        }

        v8 = sub_252E37DB4();

        ++v7;
        --v5;
        if (v8)
        {
          goto LABEL_24;
        }
      }

LABEL_23:

LABEL_24:
      memcpy(v55, __dst, sizeof(v55));
      if (sub_252A13FE0())
      {
        goto LABEL_3;
      }

      memcpy(v54, __dst, sizeof(v54));
      v1 = v51;
      v3 = v52;
      v2 = v50;
      if (sub_252A13BEC() & 1) != 0 || (memcpy(v55, __dst, sizeof(v55)), (sub_252A143D4()) || *(__dst[21] + 16) && (memcpy(v55, __dst, sizeof(v55)), (sub_252A13FE0() & 1) == 0) || *(__dst[19] + 16) && (memcpy(v55, __dst, sizeof(v55)), (sub_252A13BEC() & 1) == 0) || *(__dst[20] + 16) && (memcpy(v55, __dst, sizeof(v55)), (sub_252A143D4() & 1) == 0))
      {
        sub_252935408(__dst);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2529AA480(0, *(v52 + 16) + 1, 1);
          v3 = v57;
        }

        v18 = *(v3 + 16);
        v17 = *(v3 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_2529AA480((v17 > 1), v18 + 1, 1);
          v3 = v57;
        }

        *(v3 + 16) = v18 + 1;
        memcpy((v3 + 504 * v18 + 32), __dst, 0x1F8uLL);
      }

LABEL_4:
      if (v2 == v1)
      {
        goto LABEL_40;
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_40:
  v53 = v3;
  if (v1)
  {
    v19 = 0;
    v49 = MEMORY[0x277D84F90];
    while (v19 < v1)
    {
      memcpy(__dst, (a1 + 32 + 504 * v19), sizeof(__dst));
      if (__OFADD__(v19++, 1))
      {
        goto LABEL_95;
      }

      v21 = __dst[4];
      v22 = *(__dst[4] + 16);
      sub_2529353AC(__dst, v55);
      v23 = (v21 + 32);
      v24 = (v21 + 32);
      while (1)
      {
        if (!v22)
        {
          v27 = *(v21 + 16);
          while (v27)
          {
            v29 = *v23;
            if (v29 > 2 && v29 != 4)
            {
              goto LABEL_66;
            }

            v28 = sub_252E37DB4();

            ++v23;
            --v27;
            if (v28)
            {
              goto LABEL_67;
            }
          }

          v30 = *(__dst[11] + 16);
          v31 = (__dst[11] + 32);
          while (2)
          {
            if (v30)
            {
              switch(*v31)
              {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 0xA:
                case 0xB:
                case 0xC:
                case 0xD:
                case 0xE:
                case 0xF:
                case 0x10:
                case 0x11:
                case 0x12:
                case 0x13:
                case 0x14:
                  v32 = sub_252E37DB4();

                  ++v31;
                  --v30;
                  if ((v32 & 1) == 0)
                  {
                    continue;
                  }

                  goto LABEL_67;
                default:
                  goto LABEL_66;
              }
            }

            break;
          }

          sub_252935408(__dst);
          v1 = v51;
          goto LABEL_43;
        }

        v26 = *v24;
        if (v26 > 1 && v26 != 3 && v26 != 4)
        {
          break;
        }

        v25 = sub_252E37DB4();

        ++v24;
        --v22;
        if (v25)
        {
          goto LABEL_67;
        }
      }

LABEL_66:

LABEL_67:
      memcpy(v55, __dst, sizeof(v55));
      if (sub_252A13FE0())
      {
        v1 = v51;
      }

      else
      {
        memcpy(v54, __dst, sizeof(v54));
        v1 = v51;
        if ((sub_252A13BEC() & 1) == 0)
        {
          memcpy(v55, __dst, sizeof(v55));
          if ((sub_252A143D4() & 1) == 0)
          {
            if (!*(__dst[21] + 16) || (memcpy(v55, __dst, sizeof(v55)), (sub_252A13FE0() & 1) != 0))
            {
              if (!*(__dst[19] + 16) || (memcpy(v55, __dst, sizeof(v55)), (sub_252A13BEC() & 1) != 0))
              {
                if (!*(__dst[20] + 16) || (memcpy(v55, __dst, sizeof(v55)), (sub_252A143D4() & 1) != 0))
                {
                  sub_252935408(__dst);
                  goto LABEL_43;
                }
              }
            }
          }
        }
      }

      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v49;
      v57 = v49;
      if ((v33 & 1) == 0)
      {
        sub_2529AA480(0, *(v49 + 16) + 1, 1);
        v34 = v57;
      }

      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2529AA480((v35 > 1), v36 + 1, 1);
        v34 = v57;
      }

      *(v34 + 16) = v36 + 1;
      v49 = v34;
      memcpy((v34 + 504 * v36 + 32), __dst, 0x1F8uLL);
LABEL_43:
      if (v19 == v1)
      {
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v49 = MEMORY[0x277D84F90];
LABEL_84:
  v37 = *(v53 + 16);

  if (v37)
  {

    v39 = sub_252C76D88(v38);

    v40 = sub_252C76D88(v49);

    if (*(v40 + 16) <= *(v39 + 16) >> 3)
    {
      __dst[0] = v39;
      sub_2529AAC78(v40);

      v41 = __dst[0];
      v42 = *(__dst[0] + 16);
      if (v42)
      {
LABEL_87:
        v43 = sub_252DFA57C(v42, 0);
        v44 = sub_252E094F0(__dst, v43 + 32, v42, v41);
        sub_25291AE30();
        if (v44 == v42)
        {
          return v43;
        }

        goto LABEL_96;
      }
    }

    else
    {
      v41 = sub_2529AC7A8(v40);

      v42 = *(v41 + 16);
      if (v42)
      {
        goto LABEL_87;
      }
    }

    return MEMORY[0x277D84F90];
  }

  if (qword_27F53F520 != -1)
  {
LABEL_97:
    swift_once();
  }

  v46 = sub_252E36AD4();
  __swift_project_value_buffer(v46, qword_27F544E08);
  sub_252CC3D90(0xD000000000000058, 0x8000000252E9F210, 0xD0000000000000A7, 0x8000000252E9F270);
  return MEMORY[0x277D84F90];
}

uint64_t sub_252E120A4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v31 = a5;
  v42 = a4(0);
  v9 = *(*(v42 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = MEMORY[0x277D84F90];
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v5)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31(0, *(v26 + 16) + 1, 1);
          v26 = v43;
        }

        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          v31(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
LABEL_14:

    return v40;
  }

  return result;
}

uint64_t sub_252E1238C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546450, &qword_252E61BB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_252E35EF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_25293847C(a1, &qword_27F546450, &qword_252E61BB0);
    sub_252E16C28(a2, a3, v10);

    return sub_25293847C(v10, &qword_27F546450, &qword_252E61BB0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2529FB0B4(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_252E12564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2529FB94C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_252A44A10(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_252E047F0();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_252AEF114(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_252E1265C(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_252E35ED4();
  *(v3 + 88) = v4;
  v5 = *(v4 - 8);
  *(v3 + 96) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546458, &qword_252E61BB8) - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v8 = sub_252E35EA4();
  *(v3 + 120) = v8;
  v9 = *(v8 - 8);
  *(v3 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252E127B4, 0, 0);
}

uint64_t sub_252E127B4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = v2[4];
  v4 = v2[5];
  v5 = sub_252E36F04();
  [v1 _setLaunchId_];

  v6 = v2[2];
  v7 = v2[3];
  v8 = sub_252E36F04();
  [v1 setDomain_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:v1 response:0];
  [v9 _setDonatedBySiri_];
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 88);
  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D30);
  sub_252E379F4();

  v12 = [v9 description];
  v13 = sub_252E36F34();
  v15 = v14;

  MEMORY[0x2530AD570](v13, v15);

  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E9F750, 0xD000000000000072, 0x8000000252E9F3C0);

  swift_allocBox();
  v17 = v16;
  sub_252E374A4();
  v18 = *(v0 + 120);
  v19 = *(v0 + 128);
  v20 = *(v0 + 112);
  v21 = *(v0 + 80);
  sub_252E12EF8(*(v0 + 72), *(v0 + 144), v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    sub_25293847C(*(v0 + 112), &qword_27F546458, &qword_252E61BB8);
  }

  else
  {
    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v24 = *(v0 + 112);
    v38 = v22;
    v39 = *(v0 + 120);
    v25 = *(v0 + 80);
    (*(v23 + 32))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546460, &unk_252E61BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    v27 = *(v25 + 48);
    v28 = *(v25 + 56);
    *(inited + 32) = v27;
    *(inited + 40) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401D8, &qword_252E3C000);
    v29 = *(v23 + 72);
    v30 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_252E3C290;
    (*(v23 + 16))(v31 + v30, v38, v39);
    *(inited + 48) = v31;

    sub_252CC6E20(inited);
    swift_setDeallocating();
    sub_25293847C(inited + 32, &qword_27F546468, &unk_252E61BD0);
    sub_252E35EC4();
    (*(v23 + 8))(v38, v39);
  }

  v32 = *(v0 + 136);
  v33 = *(v0 + 104);
  v34 = *(v0 + 88);
  v35 = *(v0 + 96);
  (*(v35 + 16))(v33, v17, v34);

  sub_252E35EB4();

  (*(v35 + 8))(v33, v34);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_252E12C0C(uint64_t a1, char a2)
{
  v4 = sub_252E35ED4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_projectBox();
  if (a2)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544D30);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E9F770);
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(v15, v16, 0xD000000000000072, 0x8000000252E9F3C0, 0xD000000000000028, 0x8000000252E9F790, 96);
  }

  else
  {
    v11 = v9;
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D30);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_252E379F4();
    v17 = v15;
    v18 = v16;
    MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E9F7C0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v11, v4);
    sub_252E37AE4();
    (*(v5 + 8))(v8, v4);
    sub_252CC3D90(v17, v18, 0xD000000000000072, 0x8000000252E9F3C0);
  }
}

uint64_t sub_252E12EF8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v5 = sub_252E35EF4();
  v83 = *(v5 - 8);
  v6 = *(v83 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v87 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546450, &qword_252E61BB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - v17;
  v19 = sub_252E32E84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_252E35EA4();
  v79 = *(v24 - 8);
  v25 = *(v79 + 64);
  MEMORY[0x28223BE20](v24);
  v77 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [a1 userTask];
  v28 = [a1 filters];
  if (v28)
  {
    v29 = v28;
    type metadata accessor for HomeFilter();
    v82 = sub_252E37264();

    if (v27)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v82 = 0;
    if (v27)
    {
      goto LABEL_9;
    }
  }

  if (!v82)
  {
    v30 = *(v79 + 56);

    return v30(a3, 1, 1, v24);
  }

LABEL_9:
  v71 = v24;
  v74 = a3;
  v32 = v27;
  v33 = v77;
  sub_252E35E94();
  v34 = *(v78 + 48);
  v35 = *(v78 + 56);

  sub_252E35E64();
  sub_252E32E74();
  sub_252E32E24();
  (*(v20 + 8))(v23, v19);
  sub_252E35E54();
  v80 = v5;
  v73 = v32;
  if (v32)
  {
    v36 = v73;
    [v36 taskType];
    sub_252E37404();
    v37 = *(v83 + 56);
    v37(v18, 0, 1, v5);
    v38 = sub_252E35E74();
    sub_252E1238C(v18, 0x657079546B736174, 0xE800000000000000);
    v38(v88, 0);
    [v36 attribute];
    sub_252E37404();
    v37(v18, 0, 1, v5);
    v39 = sub_252E35E74();
    sub_252E1238C(v18, 0x7475626972747461, 0xE900000000000065);
    v39(v88, 0);
    v40 = [v36 value];
    if (v40)
    {
      v86 = v40;
      v41 = [v40 description];
      sub_252E36F34();

      sub_252E36FF4();
      v33 = v77;

      v37(v18, 0, 1, v5);
      v42 = sub_252E35E74();
      sub_252E1238C(v18, 0x65756C6176, 0xE500000000000000);
      v42(v88, 0);

      v36 = v86;
    }

    v5 = v80;
  }

  v72 = v18;
  v43 = v74;
  v44 = v78;
  v45 = v82;
  if (v82)
  {
    v46 = v82 & 0xFFFFFFFFFFFFFF8;
    if (v82 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v48 = 0;
      v86 = v45 & 0xC000000000000001;
      v49 = (v83 + 48);
      v50 = (v83 + 32);
      v51 = MEMORY[0x277D84F90];
      v84 = i;
      v85 = v46;
      while (1)
      {
        if (v86)
        {
          v53 = MEMORY[0x2530ADF00](v48, v45);
        }

        else
        {
          if (v48 >= *(v46 + 16))
          {
            goto LABEL_31;
          }

          v53 = *(v45 + 8 * v48 + 32);
        }

        v54 = v53;
        v46 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        v88[0] = v53;
        sub_252E138E8(v88, v16);

        if ((*v49)(v16, 1, v5) == 1)
        {
          sub_25293847C(v16, &qword_27F546450, &qword_252E61BB0);
        }

        else
        {
          v55 = *v50;
          v56 = v81;
          (*v50)(v81, v16, v5);
          v55(v87, v56, v5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_2529F88F4(0, v51[2] + 1, 1, v51);
          }

          v58 = v51[2];
          v57 = v51[3];
          if (v58 >= v57 >> 1)
          {
            v51 = sub_2529F88F4(v57 > 1, v58 + 1, 1, v51);
          }

          v51[2] = v58 + 1;
          v59 = v51 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v58;
          v5 = v80;
          v55(v59, v87, v80);
          v45 = v82;
        }

        ++v48;
        v52 = v46 == v84;
        v46 = v85;
        if (v52)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

LABEL_33:

    v60 = v72;
    sub_252E37284();

    (*(v83 + 56))(v60, 0, 1, v5);
    v33 = v77;
    v61 = sub_252E35E74();
    sub_252E1238C(v60, 0x737265746C6966, 0xE700000000000000);
    v61(v88, 0);
    v43 = v74;
    v44 = v78;
  }

  v62 = v76;
  sub_252E36FF4();

  v63 = *(v83 + 56);
  v63(v62, 0, 1, v5);
  v64 = sub_252E35E74();
  sub_252E1238C(v62, 0x7463617265746E69, 0xEF657079546E6F69);
  v64(v88, 0);
  v65 = *(v44 + 32);
  v66 = *(v44 + 40);
  v67 = v72;
  sub_252E36FF4();
  v63(v67, 0, 1, v5);
  v68 = sub_252E35E74();
  sub_252E1238C(v67, 0x6449656C646E7562, 0xE800000000000000);
  v68(v88, 0);

  v69 = v71;
  (*(v79 + 32))(v43, v33, v71);
  return (*(v79 + 56))(v43, 0, 1, v69);
}

uint64_t sub_252E138E8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 isExcludeFilter];
  if (v4)
  {

    v5 = [v3 isExcludeFilter];
    sub_252956D08();
    v6 = sub_252E37674();
    v7 = v6;
    if (v5)
    {
      v8 = sub_252E37694();

      if (v8)
      {
        v9 = sub_252E35EF4();
        return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
      }
    }

    else
    {
    }
  }

  v111 = a2;
  v118 = [v3 entityType];
  sub_252E16B10();
  v11 = sub_252E377E4();
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D60028];
  v116 = MEMORY[0x277D837D0];
  v117 = MEMORY[0x277D60028];
  *&v115 = v11;
  *(&v115 + 1) = v14;
  sub_252927BEC(&v115, v113);
  v15 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v112 = v15;
  v17 = v114;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  sub_252E16E30(*v21, v21[1], 0x7954797469746E65, 0xEA00000000006570, isUniquelyReferenced_nonNull_native, &v112);
  __swift_destroy_boxed_opaque_existential_1(v113);
  v23 = v112;
  v118 = [v3 deviceType];
  v24 = sub_252E377E4();
  v116 = v12;
  v117 = v13;
  *&v115 = v24;
  *(&v115 + 1) = v25;
  sub_252927BEC(&v115, v113);
  LOBYTE(v17) = swift_isUniquelyReferenced_nonNull_native();
  v112 = v23;
  v26 = v114;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  sub_252E16E30(*v30, v30[1], 0x7954656369766564, 0xEA00000000006570, v17, &v112);
  __swift_destroy_boxed_opaque_existential_1(v113);
  v32 = v112;
  v118 = [v3 outerDeviceType];
  v33 = sub_252E377E4();
  v116 = v12;
  v117 = v13;
  *&v115 = v33;
  *(&v115 + 1) = v34;
  sub_252927BEC(&v115, v113);
  LOBYTE(v17) = swift_isUniquelyReferenced_nonNull_native();
  v112 = v32;
  v35 = v114;
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
  v37 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = (&v110 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  sub_252E16E30(*v39, v39[1], 0x766544726574756FLL, 0xEF65707954656369, v17, &v112);
  __swift_destroy_boxed_opaque_existential_1(v113);
  v41 = v112;
  v42 = [v3 outerDeviceName];
  if (v42)
  {
    v43 = v42;
    v44 = sub_252E36F34();
    v46 = v45;

    v116 = v12;
    v117 = v13;
    *&v115 = v44;
    *(&v115 + 1) = v46;
    sub_252927BEC(&v115, v113);
    LOBYTE(v43) = swift_isUniquelyReferenced_nonNull_native();
    v118 = v41;
    v47 = v114;
    v48 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
    v49 = *(*(v47 - 8) + 64);
    MEMORY[0x28223BE20](v48);
    v51 = (&v110 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v52 + 16))(v51);
    sub_252E16E30(*v51, v51[1], 0x766544726574756FLL, 0xEF656D614E656369, v43, &v118);
    __swift_destroy_boxed_opaque_existential_1(v113);
    v41 = v118;
  }

  v53 = [v3 homeEntityName];
  if (v53)
  {
    v54 = v53;
    v55 = sub_252E36F34();
    v57 = v56;

    v116 = v12;
    v117 = v13;
    *&v115 = v55;
    *(&v115 + 1) = v57;
    sub_252927BEC(&v115, v113);
    LOBYTE(v54) = swift_isUniquelyReferenced_nonNull_native();
    v118 = v41;
    v58 = v114;
    v59 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
    v60 = *(*(v58 - 8) + 64);
    MEMORY[0x28223BE20](v59);
    v62 = (&v110 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v63 + 16))(v62);
    sub_252E16E30(*v62, v62[1], 0x69746E45656D6F68, 0xEE00656D614E7974, v54, &v118);
    __swift_destroy_boxed_opaque_existential_1(v113);
    v41 = v118;
  }

  v64 = [v3 homeName];
  if (v64)
  {
    v65 = v64;
    v66 = sub_252E36F34();
    v68 = v67;

    v116 = v12;
    v117 = v13;
    *&v115 = v66;
    *(&v115 + 1) = v68;
    sub_252927BEC(&v115, v113);
    LOBYTE(v65) = swift_isUniquelyReferenced_nonNull_native();
    v118 = v41;
    v69 = v114;
    v70 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
    v71 = *(*(v69 - 8) + 64);
    MEMORY[0x28223BE20](v70);
    v73 = (&v110 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v74 + 16))(v73);
    sub_252E16E30(*v73, v73[1], 1701670760, 0xE400000000000000, v65, &v118);
    __swift_destroy_boxed_opaque_existential_1(v113);
    v41 = v118;
  }

  v75 = [v3 zoneName];
  if (v75)
  {
    v76 = v75;
    v77 = sub_252E36F34();
    v79 = v78;

    v116 = v12;
    v117 = v13;
    *&v115 = v77;
    *(&v115 + 1) = v79;
    sub_252927BEC(&v115, v113);
    LOBYTE(v76) = swift_isUniquelyReferenced_nonNull_native();
    v118 = v41;
    v80 = v114;
    v81 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
    v82 = *(*(v80 - 8) + 64);
    MEMORY[0x28223BE20](v81);
    v84 = (&v110 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v85 + 16))(v84);
    sub_252E16E30(*v84, v84[1], 1701736314, 0xE400000000000000, v76, &v118);
    __swift_destroy_boxed_opaque_existential_1(v113);
    v41 = v118;
  }

  v86 = [v3 groupName];
  if (v86)
  {
    v87 = v86;
    v88 = sub_252E36F34();
    v90 = v89;

    v116 = v12;
    v117 = v13;
    *&v115 = v88;
    *(&v115 + 1) = v90;
    sub_252927BEC(&v115, v113);
    LOBYTE(v87) = swift_isUniquelyReferenced_nonNull_native();
    v118 = v41;
    v91 = v114;
    v92 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
    v93 = *(*(v91 - 8) + 64);
    MEMORY[0x28223BE20](v92);
    v95 = (&v110 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v96 + 16))(v95);
    sub_252E16E30(*v95, v95[1], 0x70756F7267, 0xE500000000000000, v87, &v118);
    __swift_destroy_boxed_opaque_existential_1(v113);
    v41 = v118;
  }

  v97 = v111;
  v98 = [v3 roomName];
  if (v98)
  {
    v99 = v98;
    v100 = sub_252E36F34();
    v102 = v101;

    v116 = v12;
    v117 = v13;
    *&v115 = v100;
    *(&v115 + 1) = v102;
    sub_252927BEC(&v115, v113);
    LOBYTE(v99) = swift_isUniquelyReferenced_nonNull_native();
    v118 = v41;
    v103 = v114;
    v104 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
    v105 = *(*(v103 - 8) + 64);
    MEMORY[0x28223BE20](v104);
    v107 = (&v110 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v108 + 16))(v107);
    sub_252E16E30(*v107, v107[1], 1836019570, 0xE400000000000000, v99, &v118);
    __swift_destroy_boxed_opaque_existential_1(v113);
  }

  sub_252E36E64();

  v109 = sub_252E35EF4();
  return (*(*(v109 - 8) + 56))(v97, 0, 1, v109);
}

id sub_252E144A4(void *a1)
{
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544D30);
  sub_252CC3D90(0xD000000000000043, 0x8000000252E9F6C0, 0xD000000000000072, 0x8000000252E9F3C0);
  if ([a1 resolutionResultCode] == 2)
  {

    return sub_252E15254(a1);
  }

  else if ([a1 resolutionResultCode] == 3)
  {

    return sub_252E14690(a1);
  }

  else
  {
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E9F710);
    [a1 resolutionResultCode];
    type metadata accessor for INResolutionResultCode(0);
    sub_252E37AE4();
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000072, 0x8000000252E9F3C0);

    return 0;
  }
}

id sub_252E14690(void *a1)
{
  v2 = sub_252E36324();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  v8 = __swift_project_value_buffer(v7, qword_27F544D30);
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E9F620);
  v9 = [a1 description];
  v10 = sub_252E36F34();
  v12 = v11;

  MEMORY[0x2530AD570](v10, v12);

  sub_252CC3D90(v42, v43, 0xD000000000000072, 0x8000000252E9F3C0);

  v13 = [a1 itemToConfirm];
  sub_252E377F4();
  swift_unknownObjectRelease();
  type metadata accessor for HomeFilter();
  if (!swift_dynamicCast())
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_252E379F4();
    v40 = v42;
    v41 = v43;
    MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E9F660);
    v22 = [a1 itemToConfirm];
    sub_252E377F4();
    swift_unknownObjectRelease();
    sub_252E37AE4();
    __swift_destroy_boxed_opaque_existential_1(&v42);
    sub_252CC4050(v40, v41, 0xD000000000000072, 0x8000000252E9F3C0, 0xD00000000000002ELL, 0x8000000252E9F690, 195);
LABEL_8:

    return 0;
  }

  v39[1] = v8;
  v14 = v40;
  v15 = v40;
  v16 = sub_252A6D5D4(v14);

  v17 = sub_252A6D400(v16, v15);
  if (!v18)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    v23 = v17;
    sub_252E379F4();

    v42 = 0xD00000000000001ELL;
    v43 = 0x8000000252E7C200;
    v40 = v23;
    v41 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v24 = sub_252E36F94();
    MEMORY[0x2530AD570](v24);

    sub_252CC4050(v42, v43, 0xD000000000000072, 0x8000000252E9F3C0, 0xD00000000000002ELL, 0x8000000252E9F690, 203);

    goto LABEL_8;
  }

  sub_252E37024();

  v19 = sub_252E36304();
  v21 = v20;
  (*(v3 + 8))(v6, v2);
  v26 = sub_252E15934(v16, v15, v19, v21, 2, 0);

  v27 = *(v26 + 2);

  if (v27 < 3)
  {
    sub_252CC3D90(0xD000000000000020, 0x8000000252E9F4F0, 0xD000000000000072, 0x8000000252E9F3C0);

    return 0;
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E9F4B0);
  v28 = [v15 description];
  v29 = sub_252E36F34();
  v31 = v30;

  MEMORY[0x2530AD570](v29, v31);

  sub_252CC3D90(v42, v43, 0xD000000000000072, 0x8000000252E9F3C0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_252E3C130;
  *(v32 + 32) = v15;
  v33 = v15;
  v34 = sub_252A7564C(v32);
  v36 = v35;

  type metadata accessor for ControlHomeFiltersResolutionResult();
  if (v36)
  {
    v37 = sub_252E2B004(v33);
  }

  else
  {
    v37 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  v38 = v37;

  return v38;
}

id sub_252E14D14(void *a1)
{
  v36 = sub_252E36324();
  v2 = *(v36 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v36);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4D8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = sub_252E36AD4();
    v7 = __swift_project_value_buffer(v6, qword_27F544D30);
    v33 = "ore with entity name ";
    v34 = v7;
    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E9F5B0, 0xD000000000000072, 0x8000000252E9F3C0);
    v39 = [a1 userTask];
    if (!v39)
    {
      goto LABEL_22;
    }

    v8 = [a1 filters];
    if (!v8)
    {

LABEL_22:
      if (qword_27F53F490 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v6, qword_27F544C58);
      v25 = sub_252E36AC4();
      v26 = sub_252E374D4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_252917000, v25, v26, "Failed to retrieve filters.", v27, 2u);
        MEMORY[0x2530AED00](v27, -1, -1);
      }

      return 0;
    }

    v9 = v8;
    type metadata accessor for HomeFilter();
    v10 = sub_252E37264();

    v40 = MEMORY[0x277D84F90];
    if (v10 >> 62)
    {
      break;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_31;
    }

LABEL_6:
    v12 = 0;
    a1 = 0;
    v37 = v10 & 0xFFFFFFFFFFFFFF8;
    v38 = v10 & 0xC000000000000001;
    v13 = v2 + 1;
    v31 = "morized confirmation resolution";
    v32 = "can't get an entity name from ";
    v30 = 0xD00000000000001ALL;
    v35 = v11;
    while (1)
    {
      if (v38)
      {
        v14 = MEMORY[0x2530ADF00](v12, v10);
      }

      else
      {
        if (v12 >= *(v37 + 16))
        {
          goto LABEL_28;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v2 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v14 outerDeviceName];
      if (v16 || (v16 = [v2 homeEntityName]) != 0)
      {
        v17 = v16;
        sub_252E36F34();

        sub_252E37024();

        v18 = sub_252E36304();
        v20 = v19;
        (*v13)(v5, v36);
        v11 = v35;
      }

      else
      {
        v18 = 0;
        v20 = 0xE000000000000000;
      }

      v21 = sub_252E15934(7, v2, v18, v20, 2, v39);

      v22 = *(v21 + 2);

      if (v22 >= 3)
      {
        sub_252E37A94();
        v23 = *(v40 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v12;
      if (v15 == v11)
      {
        v24 = v40;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v11 = sub_252E378C4();
  if (v11)
  {
    goto LABEL_6;
  }

LABEL_31:
  v24 = MEMORY[0x277D84F90];
LABEL_32:

  v29 = sub_252E170B0(v24);

  return v29;
}

id sub_252E15254(unint64_t a1)
{
  v2 = v1;
  if (qword_27F53F4D8 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544D30);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_252E379F4();

    v27 = 0xD000000000000027;
    v28 = 0x8000000252E9F440;
    v5 = [a1 description];
    v6 = sub_252E36F34();
    v8 = v7;

    MEMORY[0x2530AD570](v6, v8);

    sub_252CC3D90(v27, v28, 0xD000000000000072, 0x8000000252E9F3C0);

    v9 = [a1 disambiguationItems];
    v10 = sub_252E37264();

    a1 = sub_252A9E238(v10);

    if (!a1)
    {
      sub_252CC4050(0xD00000000000002BLL, 0x8000000252E77290, 0xD000000000000072, 0x8000000252E9F3C0, 0xD000000000000030, 0x8000000252E9F470, 278);
      return 0;
    }

    v11 = sub_252A6D8E8(a1);
    v27 = MEMORY[0x277D84F90];
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      break;
    }

    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_5:
    v14 = 0;
    v15 = a1 & 0xC000000000000001;
    v25 = v13;
    while (1)
    {
      if (v15)
      {
        v16 = MEMORY[0x2530ADF00](v14, a1);
      }

      else
      {
        if (v14 >= *(v12 + 16))
        {
          goto LABEL_18;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v26 = v16;
      if (sub_252E15598(&v26, v11))
      {
        sub_252E37A94();
        v19 = v15;
        v20 = v2;
        v21 = *(v27 + 16);
        sub_252E37AC4();
        v2 = v20;
        v15 = v19;
        sub_252E37AD4();
        sub_252E37AA4();
        v12 = a1 & 0xFFFFFFFFFFFFFF8;
        v13 = v25;
      }

      else
      {
      }

      ++v14;
      if (v18 == v13)
      {
        v22 = v27;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v13 = sub_252E378C4();
  if (v13)
  {
    goto LABEL_5;
  }

LABEL_21:
  v22 = MEMORY[0x277D84F90];
LABEL_22:

  v24 = sub_252E170B0(v22);

  return v24;
}

BOOL sub_252E15598(void **a1, uint64_t a2)
{
  v5 = sub_252E36324();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = sub_252A6D400(a2, v10);
  if (v12)
  {
    sub_252E37024();

    v13 = sub_252E36304();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    v16 = sub_252E15934(a2, v10, v13, v15, 1, 0);
    if (v2)
    {

      if (qword_27F53F4D8 != -1)
      {
        swift_once();
      }

      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544D30);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E9F590);
      v24[0] = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(v25, v26, 0xD000000000000072, 0x8000000252E9F3C0, 0xD000000000000030, 0x8000000252E9F470, 301);

      return 0;
    }

    else
    {
      v22 = v16;

      v23 = *(v22 + 2);

      return v23 > 2;
    }
  }

  else
  {
    v19 = v11;
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544D30);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_252E379F4();

    v25 = 0xD00000000000001ELL;
    v26 = 0x8000000252E9F570;
    v24[0] = v19;
    v24[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v21 = sub_252E36F94();
    MEMORY[0x2530AD570](v21);

    sub_252CC4050(v25, v26, 0xD000000000000072, 0x8000000252E9F3C0, 0xD000000000000030, 0x8000000252E9F470, 288);

    return 0;
  }
}

char *sub_252E15934(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, int a5, void (*a6)(void, void, void))
{
  v177 = a4;
  v169 = a6;
  v170 = a1;
  LODWORD(v168) = a5;
  v178 = a3;
  v175 = a2;
  v164 = sub_252E32E04();
  v163 = *(v164 - 8);
  v6 = *(v163 + 64);
  v7 = MEMORY[0x28223BE20](v164);
  v166 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v162 = &v147 - v9;
  v171 = sub_252E35E24();
  v174 = *(v171 - 8);
  v10 = *(v174 + 64);
  v11 = MEMORY[0x28223BE20](v171);
  v160 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v161 = &v147 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v172 = &v147 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v173 = &v147 - v18;
  MEMORY[0x28223BE20](v17);
  v165 = &v147 - v19;
  v20 = sub_252E35EE4();
  v181 = *(v20 - 8);
  v182 = v20;
  v21 = *(v181 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v147 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v147 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v147 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v147 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v147 - v37;
  v39 = sub_252E35E44();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v147 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v183;
  sub_252E35E34();
  if (!v44)
  {
    v154 = v38;
    v155 = v36;
    v156 = v33;
    v148 = v30;
    v149 = v27;
    v151 = v24;
    v157 = v43;
    v152 = v40;
    v153 = v39;
    v158 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416B8, &unk_252E61BA0);
    v45 = v181;
    v46 = (*(v181 + 80) + 32) & ~*(v181 + 80);
    v180 = *(v181 + 72);
    v150 = 2 * v180;
    v47 = swift_allocObject();
    v167 = v47;
    *(v47 + 16) = xmmword_252E3C3C0;
    v179 = v46;
    v48 = (v47 + v46);
    v184 = [v175 deviceType];
    v159 = sub_252E16B10();
    v49 = sub_252E377E4();
    *v48 = 0x7954656369766564;
    v48[1] = 0xEA00000000006570;
    v48[2] = v49;
    v48[3] = v50;
    LODWORD(v175) = *MEMORY[0x277D5FFE8];
    v51 = *(v45 + 104);
    v52 = v182;
    (v51)(v48);
    if (v168)
    {
      if (v168 == 1)
      {
        v53 = 0xEE006E6F69746175;
        v54 = 0x6769626D61736964;
      }

      else
      {
        v53 = 0xEC0000006E6F6974;
        v54 = 0x616D7269666E6F63;
      }
    }

    else
    {
      v53 = 0xE700000000000000;
      v54 = 0x6E776F6E6B6E75;
    }

    v55 = v180;
    v56 = (v48 + v180);
    *v56 = 0x7463617265746E69;
    v56[1] = 0xEF657079546E6F69;
    v56[2] = v54;
    v56[3] = v53;
    v57 = v175;
    v51();
    v58 = v179;
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_252E3C280;
    v60 = (v59 + v58);
    v61 = v170;
    *v60 = sub_252BEBD04(v170);
    *(v60 + 1) = v62;
    v183 = v51;
    v64 = v177;
    v63 = v178;
    *(v60 + 2) = v178;
    *(v60 + 3) = v64;
    (v183)(v60, v57, v52);
    v65 = &v60[v55];
    *v65 = 0x766544726574756FLL;
    *(v65 + 1) = 0xEF656D614E656369;
    *(v65 + 2) = v63;
    *(v65 + 3) = v64;
    v183();
    v66 = &v60[v150];
    strcpy(&v60[v150], "homeEntityName");
    v66[15] = -18;
    *(v66 + 2) = v63;
    v67 = v183;
    *(v66 + 3) = v64;
    v67();
    v68 = v169;
    if (v169)
    {
      swift_bridgeObjectRetain_n();
      v69 = v68;

      v168 = v69;
      v184 = [v69 taskType];
      v70 = sub_252E377E4();
      v71 = v154;
      *v154 = 0x657079546B736174;
      v71[1] = 0xE800000000000000;
      v71[2] = v70;
      v71[3] = v72;
      (v67)(v71, v57, v52);
      v73 = v167;
      v75 = v167[2];
      v74 = v167[3];
      if (v75 >= v74 >> 1)
      {
        v73 = sub_2529F8F18(v74 > 1, v75 + 1, 1, v167);
      }

      v76 = v180;
      v77 = v181;
      v73[2] = v75 + 1;
      v169 = *(v77 + 32);
      v169(v73 + v179 + v75 * v76, v154, v52);
      v184 = [v168 attribute];
      v78 = sub_252E377E4();
      v79 = v155;
      *v155 = 0x7475626972747461;
      v79[1] = 0xE900000000000065;
      v79[2] = v78;
      v79[3] = v80;
      (v183)(v79, v57, v52);
      v82 = v73[2];
      v81 = v73[3];
      if (v82 >= v81 >> 1)
      {
        v73 = sub_2529F8F18(v81 > 1, v82 + 1, 1, v73);
      }

      v73[2] = v82 + 1;
      v169(v73 + v179 + v82 * v180, v155, v52);
      v83 = [v168 value];
      if (v83)
      {
        v84 = v83;
        v85 = [v83 description];

        v86 = sub_252E36F34();
        v88 = v87;

        v64 = v177;
      }

      else
      {
        v86 = 0;
        v88 = 0xE000000000000000;
      }

      v104 = v178;
      v105 = v183;
      v106 = v156;
      *v156 = 0x65756C6176;
      v106[1] = 0xE500000000000000;
      v106[2] = v86;
      v106[3] = v88;
      v105();
      v108 = v73[2];
      v107 = v73[3];
      if (v108 >= v107 >> 1)
      {
        v73 = sub_2529F8F18(v107 > 1, v108 + 1, 1, v73);
      }

      v109 = v176;
      v73[2] = v108 + 1;
      v110 = v73 + v179 + v108 * v180;
      v111 = v182;
      v169(v110, v156, v182);
      v184 = v61;
      v112 = sub_252E377E4();
      v113 = v148;
      *v148 = 0x7954797469746E65;
      v113[1] = 0xEA00000000006570;
      v113[2] = v112;
      v113[3] = v114;
      (v183)(v113, v175, v111);
      v116 = v73[2];
      v115 = v73[3];
      v117 = v116 + 1;
      if (v116 >= v115 >> 1)
      {
        v73 = sub_2529F8F18(v115 > 1, v116 + 1, 1, v73);
      }

      v73[2] = v117;
      v118 = v113;
      v119 = v182;
      v169(v73 + v179 + v116 * v180, v118, v182);
      v120 = HIBYTE(v64) & 0xF;
      if ((v64 & 0x2000000000000000) == 0)
      {
        v120 = v104 & 0xFFFFFFFFFFFFLL;
      }

      if (v120)
      {
        v121 = v149;
        *v149 = 0x69746E45656D6F68;
        v121[1] = 0xEE00656D614E7974;
        v121[2] = v104;
        v121[3] = v64;
        v183();
        v122 = v73[3];
        v123 = v116 + 2;

        if (v123 > (v122 >> 1))
        {
          v73 = sub_2529F8F18(v122 > 1, v123, 1, v73);
        }

        v100 = v157;
        v124 = v173;
        v73[2] = v123;
        v119 = v182;
        v169(v73 + v179 + v117 * v180, v149, v182);
      }

      else
      {
        v100 = v157;
        v124 = v173;
      }

      v125 = v172;
      sub_252E35E14();
      v126 = v151;
      *v151 = v73;
      (v183)(v126, *MEMORY[0x277D5FFD8], v119);
      v167 = v73;

      sub_252E35DE4();
      (*(v181 + 8))(v126, v119);
      v127 = v124;
      v92 = *(v174 + 8);
      v94 = v171;
      v92(v125, v171);
      v128 = *(v109 + 48);
      v129 = *(v109 + 56);
      v130 = v165;
      sub_252E35DF4();
      v92(v127, v94);
      v131 = v158;
      v132 = sub_252E35E04();
      v36 = v131;
      v133 = v166;
      if (v131)
      {

        v103 = v130;
        goto LABEL_30;
      }

      v135 = v132;
      v92(v130, v94);
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v89 = v160;
      sub_252E35E14();
      v90 = v151;
      *v151 = v167;
      (v67)(v90, *MEMORY[0x277D5FFD8], v52);

      v91 = v172;
      sub_252E35DE4();
      v181 = *(v181 + 8);
      (v181)(v90, v52);
      v92 = *(v174 + 8);
      v93 = v89;
      v94 = v171;
      v92(v93, v171);
      *v90 = v59;
      (v183)(v90, *MEMORY[0x277D5FFE0], v52);
      v95 = v52;
      v96 = v173;
      sub_252E35DE4();
      (v181)(v90, v95);
      v92(v91, v94);
      v97 = *(v176 + 48);
      v98 = *(v176 + 56);
      v99 = v161;
      sub_252E35DF4();
      v92(v96, v94);
      v100 = v157;
      v101 = v158;
      v102 = sub_252E35E04();
      v36 = v101;
      if (v101)
      {
        v103 = v99;
LABEL_30:
        v92(v103, v94);
        (*(v152 + 8))(v100, v153);

        return v36;
      }

      v135 = v102;
      v92(v99, v94);
      v133 = v166;
    }

    v136 = v162;
    sub_252E32DF4();
    v137 = sub_252E32D54();
    MEMORY[0x28223BE20](v137);
    *(&v147 - 2) = v133;
    *(&v147 - 1) = v136;

    v36 = sub_252E120A4(sub_252E16B64, (&v147 - 4), v135, MEMORY[0x277D5FFD0], sub_2529AA680);
    v158 = 0;

    v138 = v133;
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v139 = sub_252E36AD4();
    __swift_project_value_buffer(v139, qword_27F544D30);
    v184 = 0;
    v185 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](544501575, 0xE400000000000000);
    v186 = *(v36 + 2);
    v140 = sub_252E37D94();
    MEMORY[0x2530AD570](v140);

    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E9F380);
    MEMORY[0x2530AD570](v178, v177);
    MEMORY[0x2530AD570](0x69746E65200A202CLL, 0xEE00203A73656974);
    v141 = sub_252E35EA4();
    v142 = MEMORY[0x2530AD730](v135, v141);
    v144 = v143;

    MEMORY[0x2530AD570](v142, v144);

    sub_252CC3D90(v184, v185, 0xD000000000000072, 0x8000000252E9F3C0);

    (*(v152 + 8))(v157, v153);
    v145 = *(v163 + 8);
    v146 = v164;
    v145(v138, v164);
    v145(v136, v146);
  }

  return v36;
}

uint64_t sub_252E169A4()
{
  v0 = sub_252E32E04();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E35E84();
  sub_252B94C38();
  v5 = sub_252E36EB4();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    sub_252E35E84();
    v7 = sub_252E32D84();
    v6(v4, v0);
  }

  return v7 & 1;
}

unint64_t sub_252E16B10()
{
  result = qword_27F546448;
  if (!qword_27F546448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546448);
  }

  return result;
}

uint64_t sub_252E16B64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_252E169A4() & 1;
}

double sub_252E16B84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_252A44A10(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_252E038BC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_252A00AF4((*(v12 + 56) + 32 * v9), a3);
    sub_252AEF2C4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_252E16C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_252A44A10(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_252E03C44();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_252E35EF4();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_252AEF474(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_252E35EF4();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_252E16D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_252A44A10(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_252E047F0();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_252AEF114(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_252E16E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277D837D0];
  v33 = MEMORY[0x277D60028];
  *&v31 = a1;
  *(&v31 + 1) = a2;
  v11 = *a6;
  v13 = sub_252A44A10(a3, a4);
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
      return sub_252927BEC(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_252E04C4C();
    goto LABEL_7;
  }

  sub_252E02BFC(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_252A44A10(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_252E37E24();
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
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_252E17020(v13, a3, a4, *v28, v28[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t sub_252E17020(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D60028];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_252927BEC(&v12, a6[7] + 40 * a1);
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

id sub_252E170B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v5 = a1;
    if (sub_252E378C4() >= 2)
    {
      goto LABEL_3;
    }

    v1 = sub_252E378C4();
    a1 = v5;
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1 > 1)
    {
LABEL_3:
      if (qword_27F53F4D8 != -1)
      {
        swift_once();
      }

      v2 = sub_252E36AD4();
      __swift_project_value_buffer(v2, qword_27F544D30);
      v3 = "morized results.";
      v4 = 0xD000000000000048;
      goto LABEL_18;
    }
  }

  if (!v1)
  {
    if (qword_27F53F4D8 == -1)
    {
LABEL_17:
      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_27F544D30);
      v3 = "urning a successful resolution ";
      v4 = 0xD000000000000020;
LABEL_18:
      sub_252CC3D90(v4, v3 | 0x8000000000000000, 0xD000000000000072, 0x8000000252E9F3C0);
      return 0;
    }

LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x2530ADF00](0, a1);
    goto LABEL_12;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = *(a1 + 32);
LABEL_12:
  v7 = v6;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544D30);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E9F4B0);
  v9 = [v7 description];
  v10 = sub_252E36F34();
  v12 = v11;

  MEMORY[0x2530AD570](v10, v12);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000072, 0x8000000252E9F3C0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252E3C130;
  *(v13 + 32) = v7;
  v14 = v7;
  v15 = sub_252A7564C(v13);
  LOBYTE(v10) = v16;

  type metadata accessor for ControlHomeFiltersResolutionResult();
  if (v10)
  {
    v17 = sub_252E2B004(v14);
  }

  else
  {
    v17 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  v20 = v17;

  return v20;
}

uint64_t sub_252E17400(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_252E378C4();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_2529AA7F8(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_252E378C4() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_252E378C4();
  v2 = sub_252DA9E88(v5, v6);
LABEL_10:

  return sub_2529AB248(a1, v2);
}

uint64_t sub_252E174F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_252E36324();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252E175F0, 0, 0);
}

uint64_t sub_252E175F0()
{
  v1 = v0[2];
  v2 = sub_252C2A5D8();
  if (v2 >> 62)
  {
    goto LABEL_43;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
LABEL_44:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v46 = sub_252E36AD4();
    __swift_project_value_buffer(v46, qword_27F544D18);
    sub_252CC3D90(0xD000000000000040, 0x8000000252E9C660, 0xD00000000000008FLL, 0x8000000252E6B430);
    v48 = v0[10];
    v47 = v0[11];
    v50 = v0[8];
    v49 = v0[9];
    v52 = v0[6];
    v51 = v0[7];

    v53 = v0[1];

    return v53(0);
  }

  while (1)
  {
    v4 = v0[2];
    v5 = sub_252C2E2D8();
    v6 = v5;
    v7 = v5 >> 62 ? sub_252E378C4() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = &off_279711000;
    v99 = v0;
    if (!v7)
    {
      break;
    }

    v9 = 0;
    v10 = v6 & 0xC000000000000001;
    v100 = v6 & 0xFFFFFFFFFFFFFF8;
    v87 = v0[5];
    v96 = (v87 + 32);
    v102 = MEMORY[0x277D84F90];
    v90 = v7;
    v93 = v6;
    v84 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v11 = MEMORY[0x2530ADF00](v9, v6);
      }

      else
      {
        if (v9 >= *(v100 + 16))
        {
          goto LABEL_40;
        }

        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = [v11 v8[221]];
      if (v14 && (v15 = v14, v16 = [v14 homeEntityName], v15, v16))
      {
        v18 = v0[10];
        v17 = v0[11];
        v19 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v20 = *v96;
        (*v96)(v17, v18, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_2529F7F74(0, v102[2] + 1, 1, v102);
        }

        v22 = v102[2];
        v21 = v102[3];
        v0 = v99;
        v8 = &off_279711000;
        v7 = v90;
        v10 = v84;
        if (v22 >= v21 >> 1)
        {
          v102 = sub_2529F7F74(v21 > 1, v22 + 1, 1, v102);
        }

        v23 = v99[11];
        v24 = v99[4];
        v102[2] = v22 + 1;
        v20(v102 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v22, v23, v24);
        v6 = v93;
      }

      else
      {
      }

      ++v9;
      if (v13 == v7)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v45 = sub_252E378C4();

    if (!v45)
    {
      goto LABEL_44;
    }
  }

  v102 = MEMORY[0x277D84F90];
LABEL_22:
  v0[12] = v102;
  v25 = v0[2];

  v26 = sub_252C2E2FC();
  v27 = v26;
  if (!(v26 >> 62))
  {
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_51;
    }

    goto LABEL_24;
  }

  v28 = sub_252E378C4();
  if (v28)
  {
LABEL_24:
    v29 = 0;
    v30 = v27 & 0xC000000000000001;
    v85 = v0[5];
    v94 = (v85 + 32);
    v97 = v27 & 0xFFFFFFFFFFFFFF8;
    v101 = MEMORY[0x277D84F90];
    v88 = v28;
    v91 = v27;
    v82 = v27 & 0xC000000000000001;
    while (1)
    {
      if (v30)
      {
        v31 = MEMORY[0x2530ADF00](v29, v27);
      }

      else
      {
        if (v29 >= *(v97 + 16))
        {
          goto LABEL_42;
        }

        v31 = *(v27 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_41;
      }

      v34 = [v31 v8[221]];
      if (v34 && (v35 = v34, v36 = [v34 homeEntityName], v35, v36))
      {
        v38 = v0[8];
        v37 = v0[9];
        v39 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v40 = *v94;
        (*v94)(v37, v38, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_2529F7F74(0, v101[2] + 1, 1, v101);
        }

        v0 = v99;
        v42 = v101[2];
        v41 = v101[3];
        v28 = v88;
        v27 = v91;
        v30 = v82;
        if (v42 >= v41 >> 1)
        {
          v101 = sub_2529F7F74(v41 > 1, v42 + 1, 1, v101);
        }

        v43 = v99[9];
        v44 = v99[4];
        v101[2] = v42 + 1;
        v40(v101 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v42, v43, v44);
        v8 = &off_279711000;
      }

      else
      {
      }

      ++v29;
      if (v33 == v28)
      {
        goto LABEL_52;
      }
    }
  }

LABEL_51:
  v101 = MEMORY[0x277D84F90];
LABEL_52:
  v0[13] = v101;
  v55 = v0[2];

  v56 = sub_252C2E688();
  v57 = v56;
  if (v56 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v59 = 0;
    v95 = v57 & 0xFFFFFFFFFFFFFF8;
    v98 = v57 & 0xC000000000000001;
    v81 = v0[5];
    v92 = (v81 + 32);
    v60 = MEMORY[0x277D84F90];
    v83 = i;
    v86 = v57;
    while (1)
    {
      if (v98)
      {
        v61 = MEMORY[0x2530ADF00](v59, v57);
      }

      else
      {
        if (v59 >= *(v95 + 16))
        {
          goto LABEL_70;
        }

        v61 = *(v57 + 8 * v59 + 32);
      }

      v62 = v61;
      v63 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      v64 = [v61 v8[221]];
      if (v64 && (v65 = v64, v66 = [v64 homeEntityName], v65, v66))
      {
        v68 = v0[6];
        v67 = v0[7];
        v89 = v60;
        v69 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v70 = *v92;
        v71 = v69;
        v60 = v89;
        (*v92)(v67, v68, v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_2529F7F74(0, v89[2] + 1, 1, v89);
        }

        v73 = v60[2];
        v72 = v60[3];
        v0 = v99;
        v8 = &off_279711000;
        v57 = v86;
        if (v73 >= v72 >> 1)
        {
          v60 = sub_2529F7F74(v72 > 1, v73 + 1, 1, v60);
        }

        v74 = v99[7];
        v75 = v99[4];
        v60[2] = v73 + 1;
        v70(v60 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v73, v74, v75);
        i = v83;
      }

      else
      {
      }

      ++v59;
      if (v63 == i)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_73:
  v0[14] = v60;
  v76 = v0[3];

  v77 = *__swift_project_boxed_opaque_existential_1((v76 + 24), *(v76 + 48));
  v78 = sub_252C07CF4(0, v102, v60, v101);
  v0[15] = v78;
  v79 = *(MEMORY[0x277D55BE8] + 4);
  v103 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v80 = swift_task_alloc();
  v0[16] = v80;
  *v80 = v0;
  v80[1] = sub_252E17EA0;

  return v103(0xD000000000000025, 0x8000000252E851C0, v78);
}

uint64_t sub_252E17EA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_252E1CED0;
  }

  else
  {
    v8 = *(v4 + 120);

    *(v4 + 144) = a1;
    v7 = sub_252E1CED4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252E17FD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_252E36324();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252E180CC, 0, 0);
}

uint64_t sub_252E180CC()
{
  v1 = v0[2];
  v2 = sub_252C2A5D8();
  if (v2 >> 62)
  {
    goto LABEL_43;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
LABEL_44:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v46 = sub_252E36AD4();
    __swift_project_value_buffer(v46, qword_27F544D18);
    sub_252CC3D90(0xD000000000000040, 0x8000000252E9C660, 0xD00000000000008FLL, 0x8000000252E6B430);
    v48 = v0[10];
    v47 = v0[11];
    v50 = v0[8];
    v49 = v0[9];
    v52 = v0[6];
    v51 = v0[7];

    v53 = v0[1];

    return v53(0);
  }

  while (1)
  {
    v4 = v0[2];
    v5 = sub_252C2E2D8();
    v6 = v5;
    v7 = v5 >> 62 ? sub_252E378C4() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = &off_279711000;
    v99 = v0;
    if (!v7)
    {
      break;
    }

    v9 = 0;
    v10 = v6 & 0xC000000000000001;
    v100 = v6 & 0xFFFFFFFFFFFFFF8;
    v87 = v0[5];
    v96 = (v87 + 32);
    v102 = MEMORY[0x277D84F90];
    v90 = v7;
    v93 = v6;
    v84 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v11 = MEMORY[0x2530ADF00](v9, v6);
      }

      else
      {
        if (v9 >= *(v100 + 16))
        {
          goto LABEL_40;
        }

        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = [v11 v8[221]];
      if (v14 && (v15 = v14, v16 = [v14 homeEntityName], v15, v16))
      {
        v18 = v0[10];
        v17 = v0[11];
        v19 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v20 = *v96;
        (*v96)(v17, v18, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_2529F7F74(0, v102[2] + 1, 1, v102);
        }

        v22 = v102[2];
        v21 = v102[3];
        v0 = v99;
        v8 = &off_279711000;
        v7 = v90;
        v10 = v84;
        if (v22 >= v21 >> 1)
        {
          v102 = sub_2529F7F74(v21 > 1, v22 + 1, 1, v102);
        }

        v23 = v99[11];
        v24 = v99[4];
        v102[2] = v22 + 1;
        v20(v102 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v22, v23, v24);
        v6 = v93;
      }

      else
      {
      }

      ++v9;
      if (v13 == v7)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v45 = sub_252E378C4();

    if (!v45)
    {
      goto LABEL_44;
    }
  }

  v102 = MEMORY[0x277D84F90];
LABEL_22:
  v0[12] = v102;
  v25 = v0[2];

  v26 = sub_252C2E2FC();
  v27 = v26;
  if (!(v26 >> 62))
  {
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_51;
    }

    goto LABEL_24;
  }

  v28 = sub_252E378C4();
  if (v28)
  {
LABEL_24:
    v29 = 0;
    v30 = v27 & 0xC000000000000001;
    v85 = v0[5];
    v94 = (v85 + 32);
    v97 = v27 & 0xFFFFFFFFFFFFFF8;
    v101 = MEMORY[0x277D84F90];
    v88 = v28;
    v91 = v27;
    v82 = v27 & 0xC000000000000001;
    while (1)
    {
      if (v30)
      {
        v31 = MEMORY[0x2530ADF00](v29, v27);
      }

      else
      {
        if (v29 >= *(v97 + 16))
        {
          goto LABEL_42;
        }

        v31 = *(v27 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_41;
      }

      v34 = [v31 v8[221]];
      if (v34 && (v35 = v34, v36 = [v34 homeEntityName], v35, v36))
      {
        v38 = v0[8];
        v37 = v0[9];
        v39 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v40 = *v94;
        (*v94)(v37, v38, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_2529F7F74(0, v101[2] + 1, 1, v101);
        }

        v0 = v99;
        v42 = v101[2];
        v41 = v101[3];
        v28 = v88;
        v27 = v91;
        v30 = v82;
        if (v42 >= v41 >> 1)
        {
          v101 = sub_2529F7F74(v41 > 1, v42 + 1, 1, v101);
        }

        v43 = v99[9];
        v44 = v99[4];
        v101[2] = v42 + 1;
        v40(v101 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v42, v43, v44);
        v8 = &off_279711000;
      }

      else
      {
      }

      ++v29;
      if (v33 == v28)
      {
        goto LABEL_52;
      }
    }
  }

LABEL_51:
  v101 = MEMORY[0x277D84F90];
LABEL_52:
  v0[13] = v101;
  v55 = v0[2];

  v56 = sub_252C2E688();
  v57 = v56;
  if (v56 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v59 = 0;
    v95 = v57 & 0xFFFFFFFFFFFFFF8;
    v98 = v57 & 0xC000000000000001;
    v81 = v0[5];
    v92 = (v81 + 32);
    v60 = MEMORY[0x277D84F90];
    v83 = i;
    v86 = v57;
    while (1)
    {
      if (v98)
      {
        v61 = MEMORY[0x2530ADF00](v59, v57);
      }

      else
      {
        if (v59 >= *(v95 + 16))
        {
          goto LABEL_70;
        }

        v61 = *(v57 + 8 * v59 + 32);
      }

      v62 = v61;
      v63 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      v64 = [v61 v8[221]];
      if (v64 && (v65 = v64, v66 = [v64 homeEntityName], v65, v66))
      {
        v68 = v0[6];
        v67 = v0[7];
        v89 = v60;
        v69 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v70 = *v92;
        v71 = v69;
        v60 = v89;
        (*v92)(v67, v68, v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_2529F7F74(0, v89[2] + 1, 1, v89);
        }

        v73 = v60[2];
        v72 = v60[3];
        v0 = v99;
        v8 = &off_279711000;
        v57 = v86;
        if (v73 >= v72 >> 1)
        {
          v60 = sub_2529F7F74(v72 > 1, v73 + 1, 1, v60);
        }

        v74 = v99[7];
        v75 = v99[4];
        v60[2] = v73 + 1;
        v70(v60 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v73, v74, v75);
        i = v83;
      }

      else
      {
      }

      ++v59;
      if (v63 == i)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_73:
  v0[14] = v60;
  v76 = v0[3];

  v77 = *__swift_project_boxed_opaque_existential_1((v76 + 24), *(v76 + 48));
  v78 = sub_252C07CF4(0, v102, v60, v101);
  v0[15] = v78;
  v79 = *(MEMORY[0x277D55BE8] + 4);
  v103 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v80 = swift_task_alloc();
  v0[16] = v80;
  *v80 = v0;
  v80[1] = sub_252E1897C;

  return v103(0xD000000000000025, 0x8000000252E851C0, v78);
}

uint64_t sub_252E1897C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_252E18B74;
  }

  else
  {
    v8 = *(v4 + 120);

    *(v4 + 144) = a1;
    v7 = sub_252E18AAC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252E18AAC()
{
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v10 = v0[6];
  v9 = v0[7];

  v11 = v0[1];

  return v11(v1);
}

uint64_t sub_252E18B74()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v10 = v0[6];
  v9 = v0[7];

  v11 = v0[1];
  v12 = v0[17];

  return v11();
}

uint64_t sub_252E18C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[280] = v3;
  v4[279] = a3;
  v4[278] = a2;
  v4[277] = a1;
  v5 = sub_252E34014();
  v4[281] = v5;
  v6 = *(v5 - 8);
  v4[282] = v6;
  v7 = *(v6 + 64) + 15;
  v4[283] = swift_task_alloc();
  v4[284] = swift_task_alloc();
  v4[285] = swift_task_alloc();
  v4[286] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252E18D40, 0, 0);
}

uint64_t sub_252E18D40()
{
  v153 = v0;
  v2 = v0;
  type metadata accessor for HomeStore();
  v3 = static HomeStore.shared.getter();
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  v139 = v0;
  if (v4 != 2 && (v4 & 1) == 0 || (v5 = [*(v0 + 2224) filters]) == 0)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v7 = *(v2 + 2224);
  *(v2 + 2296) = type metadata accessor for HomeFilter();
  v8 = sub_252E37264();

  v9 = [v7 userTask];
  v10 = HomeStore.accessories(matching:supporting:)(v8, v9);
  LOBYTE(v7) = v11;

  if (v7)
  {
    sub_252929F10(v10, 1);
LABEL_7:
    v12 = *(v2 + 2232);
    type metadata accessor for HomeAutomationEntityResponses.Builder();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D84F90];
    *(v13 + 16) = MEMORY[0x277D84F90];
    if (!v12 || (v15 = [v12 entityResponses]) == 0)
    {
LABEL_23:
      v24 = *(v2 + 2240);
      v25 = *(v2 + 2224);
      type metadata accessor for HomeAutomationCarbonOxideResponses();
      v26 = swift_allocObject();
      *(v2 + 2456) = v26;
      *(v26 + 16) = 0;
      swift_setDeallocating();
      swift_deallocClassInstance();
      *(v26 + 24) = v14;
      v27 = swift_allocObject();
      *(v2 + 2464) = v27;
      v27[2] = v24;
      v27[3] = v26;
      v27[4] = v25;
      v28 = v25;

      if (v12)
      {
        v29 = *(v2 + 2240);
        v30 = *(v2 + 2224);
        v31 = v29[6];
        v32 = *(v2 + 2232);
        v33 = *__swift_project_boxed_opaque_existential_1(v29 + 3, v31);
        memcpy((v2 + 16), v29 + 14, 0x1F8uLL);
        v34 = v30;

        memcpy(__dst, v29 + 14, 0x1F8uLL);
        v35 = v34;

        sub_2529D291C(v2 + 16, v2 + 520);
        v36 = sub_252953488(v30, __dst, 0);
        *(v2 + 2472) = v36;

        v37 = sub_252C07778(v26, 0, 0, v36);
        *(v2 + 2480) = v37;
        v38 = *(MEMORY[0x277D55BE8] + 4);
        v150 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
        v39 = swift_task_alloc();
        *(v2 + 2488) = v39;
        *v39 = v2;
        v39[1] = sub_252E1AC1C;
        v40 = v37;
        goto LABEL_25;
      }

      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v42 = *(v2 + 2272);
      v43 = *(v2 + 2240);
      v44 = sub_252E36AD4();
      __swift_project_value_buffer(v44, qword_27F544D18);
      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v46 = v43[12];
      v45 = v43[13];
      __swift_project_boxed_opaque_existential_1(v43 + 9, v46);
      sub_252AD7CC4();
      v47 = swift_task_alloc();
      *(v2 + 2536) = v47;
      *v47 = v2;
      v47[1] = sub_252E1B020;
      v48 = *(v2 + 2272);
      v155 = v45;
      v49 = &unk_252E61C58;
      v50 = v2 + 2032;
      v51 = v27;
      goto LABEL_31;
    }

    v16 = v15;
    type metadata accessor for HomeEntityResponse();
    v1 = sub_252E37264();

    v149 = v12;
    __dst[0] = v14;
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (!(v1 >> 62))
    {
      v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

LABEL_153:
    v17 = sub_252E378C4();
LABEL_11:
    v18 = 0;
    while (v17 != v18)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2530ADF00](v18, v1);
      }

      else
      {
        if (v18 >= *(v2 + 16))
        {
          goto LABEL_144;
        }

        v19 = *(v1 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_143;
      }

      v22 = sub_252DA124C(0);

      ++v18;
      if (v22)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v14 = __dst[0];
        v18 = v21;
      }
    }

    v2 = v139;
    v12 = v149;
    goto LABEL_23;
  }

  v52 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    v53 = sub_252E378C4();
  }

  else
  {
    v53 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v143 = (v2 + 2200);
  if (!v53)
  {
    v79 = MEMORY[0x277D84F90];
    *(v2 + 2200) = MEMORY[0x277D84F90];
    sub_25297A744(v79);
    sub_25297A744(v79);
    goto LABEL_130;
  }

  v14 = 0;
  v147 = v10 + 32;
  v148 = v10 & 0xC000000000000001;
  v54 = MEMORY[0x277D84F90];
  do
  {
    v55 = v14;
    while (1)
    {
      if (v148)
      {
        result = MEMORY[0x2530ADF00](v55, v10);
        v14 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
LABEL_156:
          __break(1u);
          return result;
        }

        v1 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v57 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

        swift_unknownObjectRelease();
        if (v57)
        {
          goto LABEL_49;
        }

        goto LABEL_43;
      }

      if ((v55 & 0x8000000000000000) != 0)
      {
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      if (v55 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_146;
      }

      v14 = v55 + 1;
      v56 = (*(v147 + 8 * v55) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v57 = v56[1];
      if (v57)
      {
        break;
      }

LABEL_43:
      v55 = v14;
      if (v14 == v53)
      {
        goto LABEL_54;
      }
    }

    v1 = *v56;
    v58 = v56[1];

LABEL_49:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_2529F7A80(0, *(v54 + 2) + 1, 1, v54);
    }

    v60 = *(v54 + 2);
    v59 = *(v54 + 3);
    if (v60 >= v59 >> 1)
    {
      v54 = sub_2529F7A80((v59 > 1), v60 + 1, 1, v54);
    }

    *(v54 + 2) = v60 + 1;
    v61 = &v54[16 * v60];
    *(v61 + 4) = v1;
    *(v61 + 5) = v57;
  }

  while (v14 != v53);
LABEL_54:
  v62 = 0;
  *v143 = v54;
  __dst[0] = MEMORY[0x277D84F90];
  v144 = v10;
  v145 = v10 & 0xFFFFFFFFFFFFFF8;
  v146 = v53;
  while (2)
  {
    if (v148)
    {
      v63 = MEMORY[0x2530ADF00](v62, v10);
      v64 = __OFADD__(v62++, 1);
      if (v64)
      {
        goto LABEL_147;
      }
    }

    else
    {
      if (v62 >= *(v52 + 16))
      {
        goto LABEL_148;
      }

      v63 = *(v147 + 8 * v62);

      v64 = __OFADD__(v62++, 1);
      if (v64)
      {
        goto LABEL_147;
      }
    }

    v65 = *(v63 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
    if (v65 >> 62)
    {
      if (v65 < 0)
      {
        v78 = *(v63 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
      }

      v66 = sub_252E378C4();
      v149 = v63;
      if (!v66)
      {
LABEL_55:
        v2 = MEMORY[0x277D84F90];
        goto LABEL_56;
      }
    }

    else
    {
      v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v149 = v63;
      if (!v66)
      {
        goto LABEL_55;
      }
    }

    v67 = 0;
    v14 = v65 & 0xC000000000000001;
    v1 = v65 & 0xFFFFFFFFFFFFFF8;
    v140 = v65;
    v68 = v65 + 32;
    v2 = MEMORY[0x277D84F90];
    while (2)
    {
      v69 = v67;
      while (!v14)
      {
        if ((v69 & 0x8000000000000000) != 0)
        {
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
          goto LABEL_145;
        }

        if (v69 >= *(v1 + 16))
        {
          goto LABEL_140;
        }

        v67 = v69 + 1;
        v70 = (*(v68 + 8 * v69) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v71 = v70[1];
        if (v71)
        {
          v141 = *v70;

          goto LABEL_74;
        }

LABEL_68:
        v69 = v67;
        if (v67 == v66)
        {
          goto LABEL_56;
        }
      }

      result = MEMORY[0x2530ADF00](v69, v140);
      v67 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        __break(1u);
        goto LABEL_156;
      }

      v72 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v71 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

      swift_unknownObjectRelease();
      if (!v71)
      {
        goto LABEL_68;
      }

      v141 = v72;
LABEL_74:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_2529F7A80(0, *(v2 + 16) + 1, 1, v2);
      }

      v74 = *(v2 + 16);
      v73 = *(v2 + 24);
      v75 = v141;
      if (v74 >= v73 >> 1)
      {
        v77 = sub_2529F7A80((v73 > 1), v74 + 1, 1, v2);
        v75 = v141;
        v2 = v77;
      }

      *(v2 + 16) = v74 + 1;
      v76 = v2 + 16 * v74;
      *(v76 + 32) = v75;
      *(v76 + 40) = v71;
      v10 = v144;
      if (v67 != v66)
      {
        continue;
      }

      break;
    }

LABEL_56:

    sub_25297A744(v2);
    v52 = v145;
    if (v62 != v146)
    {
      continue;
    }

    break;
  }

  sub_25297A744(__dst[0]);
  v80 = 0;
  v81 = MEMORY[0x277D84F90];
  do
  {
    if (v148)
    {
      MEMORY[0x2530ADF00](v80, v10);
      v14 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_149;
      }
    }

    else
    {
      if (v80 >= *(v145 + 16))
      {
        goto LABEL_150;
      }

      v82 = *(v10 + 8 * v80 + 32);

      v14 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_149;
      }
    }

    v83 = sub_252E32E24();
    v85 = v84;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_2529F7A80(0, *(v81 + 2) + 1, 1, v81);
    }

    v1 = *(v81 + 2);
    v86 = *(v81 + 3);
    if (v1 >= v86 >> 1)
    {
      v81 = sub_2529F7A80((v86 > 1), v1 + 1, 1, v81);
    }

    *(v81 + 2) = v1 + 1;
    v87 = &v81[16 * v1];
    *(v87 + 4) = v83;
    *(v87 + 5) = v85;
    ++v80;
  }

  while (v14 != v146);
  sub_25297A744(v81);
  v88 = 0;
  __dst[0] = MEMORY[0x277D84F90];
  do
  {
    if (v148)
    {
      v14 = MEMORY[0x2530ADF00](v88, v10);
      v64 = __OFADD__(v88, 1);
      v90 = v88 + 1;
      if (v64)
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (v88 >= *(v52 + 16))
      {
        goto LABEL_152;
      }

      v14 = *(v147 + 8 * v88);

      v64 = __OFADD__(v88, 1);
      v90 = v88 + 1;
      if (v64)
      {
        goto LABEL_151;
      }
    }

    v91 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
    if (v91 >> 62)
    {
      if (v91 < 0)
      {
        v100 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
      }

      v92 = sub_252E378C4();
      v142 = v90;
      if (v92)
      {
LABEL_109:
        v93 = 0;
        v149 = v91 & 0xC000000000000001;
        v14 = v91 & 0xFFFFFFFFFFFFFF8;
        v89 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v149)
          {
            v1 = MEMORY[0x2530ADF00](v93, v91);
            v94 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              goto LABEL_141;
            }
          }

          else
          {
            if (v93 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_142;
            }

            v1 = *(v91 + 8 * v93 + 32);

            v94 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              goto LABEL_141;
            }
          }

          v95 = sub_252E32E24();
          v97 = v96;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = sub_2529F7A80(0, *(v89 + 2) + 1, 1, v89);
          }

          v2 = *(v89 + 2);
          v98 = *(v89 + 3);
          v1 = v2 + 1;
          if (v2 >= v98 >> 1)
          {
            v89 = sub_2529F7A80((v98 > 1), v2 + 1, 1, v89);
          }

          *(v89 + 2) = v1;
          v99 = &v89[16 * v2];
          *(v99 + 4) = v95;
          *(v99 + 5) = v97;
          ++v93;
          if (v94 == v92)
          {
            goto LABEL_103;
          }
        }
      }
    }

    else
    {
      v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v142 = v90;
      if (v92)
      {
        goto LABEL_109;
      }
    }

    v89 = MEMORY[0x277D84F90];
LABEL_103:

    sub_25297A744(v89);
    v52 = v145;
    v88 = v142;
    v2 = v139;
    v10 = v144;
  }

  while (v142 != v146);
  v79 = __dst[0];
LABEL_130:
  sub_252929F10(v10, 0);
  sub_25297A744(v79);
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v101 = *(v2 + 2232);
  v102 = sub_252E36AD4();
  __swift_project_value_buffer(v102, qword_27F544D18);
  sub_252E379F4();

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E6F520;
  *(v2 + 2304) = *(v2 + 2200);
  v103 = MEMORY[0x2530AD730]();
  MEMORY[0x2530AD570](v103);

  sub_252CC3D90(__dst[0], __dst[1], 0xD0000000000000A0, 0x8000000252E9F830);

  v151 = v101;
  if (v101 && (v104 = [*(v2 + 2232) entityResponses]) != 0)
  {
    v105 = v104;
    type metadata accessor for HomeEntityResponse();
    v106 = sub_252E37264();
  }

  else
  {
    v106 = MEMORY[0x277D84F90];
  }

  v107 = *(v2 + 2240);
  v108 = *(v2 + 2224);
  v109 = sub_252C75D10(v106);

  strcpy(__dst, "responseSet ");
  BYTE5(__dst[1]) = 0;
  HIWORD(__dst[1]) = -5120;
  type metadata accessor for HomeEntityResponse();
  sub_2529C5FD4();
  v110 = sub_252E373B4();
  MEMORY[0x2530AD570](v110);

  sub_252CC3D90(__dst[0], __dst[1], 0xD0000000000000A0, 0x8000000252E9F830);

  v112 = sub_252E1C3F8(v111, v143);
  sub_2529C1764(v112);
  v114 = v113;
  *(v2 + 2312) = v113;
  v115 = sub_252E17400(v112, v109);

  sub_2529C1764(v115);
  v117 = v116;
  *(v2 + 2320) = v116;

  v118 = swift_allocObject();
  *(v2 + 2328) = v118;
  v118[2] = v107;
  v118[3] = v114;
  v118[4] = v108;
  v118[5] = v117;

  v119 = v108;

  if (!v151)
  {
    v135 = *(v2 + 2288);
    v136 = *(v2 + 2240);

    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v46 = v136[12];
    v137 = v136[13];
    __swift_project_boxed_opaque_existential_1(v136 + 9, v46);
    sub_252AD7CC4();
    v138 = swift_task_alloc();
    *(v2 + 2416) = v138;
    *v138 = v2;
    v138[1] = sub_252E1A33C;
    v48 = *(v2 + 2288);
    v155 = v137;
    v49 = &unk_252E61C80;
    v50 = v2 + 2112;
    v51 = v118;
LABEL_31:

    return sub_252BDB88C(v50, v49, v51, v48, 0, 0, 0, v46);
  }

  v120 = *(v2 + 2240);
  v121 = *(v2 + 2224);
  v122 = v120[6];
  v123 = *(v2 + 2232);
  v124 = *__swift_project_boxed_opaque_existential_1(v120 + 3, v122);
  type metadata accessor for HomeAutomationCarbonOxideResponses();
  v125 = swift_allocObject();
  *(v2 + 2336) = v125;
  *(v125 + 16) = 0;
  *(v125 + 24) = v114;
  memcpy((v2 + 1024), v120 + 14, 0x1F8uLL);

  v126 = v121;

  memcpy(__dst, v120 + 14, 0x1F8uLL);
  v127 = v126;

  sub_2529D291C(v2 + 1024, v2 + 1528);
  v128 = sub_252953488(v121, __dst, 0);
  *(v2 + 2344) = v128;

  v129 = swift_allocObject();
  *(v129 + 16) = 0;
  *(v129 + 24) = v117;

  v130 = sub_252B3D26C();
  *(v2 + 2352) = v130;
  swift_setDeallocating();

  v131 = *(v129 + 24);

  swift_deallocClassInstance();
  v132 = sub_252C07778(v125, v130, 0, v128);
  *(v2 + 2360) = v132;
  v133 = *(MEMORY[0x277D55BE8] + 4);
  v150 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v134 = swift_task_alloc();
  *(v2 + 2368) = v134;
  *v134 = v2;
  v134[1] = sub_252E19ED0;
  v40 = v132;
LABEL_25:

  return v150(0xD000000000000022, 0x8000000252E95560, v40);
}

uint64_t sub_252E19ED0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2368);
  v6 = *v2;
  *(v4 + 2376) = a1;
  *(v4 + 2384) = v1;

  v7 = *(v3 + 2360);

  if (v1)
  {
    v8 = sub_252E1A22C;
  }

  else
  {
    v8 = sub_252E1A010;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252E1A010()
{
  v1 = v0[294];
  v2 = v0[293];
  v3 = v0[292];
  v4 = v0[290];
  v5 = v0[289];
  v6 = v0[280];
  v7 = v0[279];
  v8 = v0[278];

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v9 = swift_task_alloc();
  v0[299] = v9;
  *v9 = v0;
  v9[1] = sub_252E1A114;
  v10 = v0[280];

  return sub_252E174F4(v7);
}

uint64_t sub_252E1A114(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2392);
  v7 = *v2;
  *(v3 + 2400) = a1;
  *(v3 + 2408) = v1;

  if (v1)
  {
    v5 = sub_252E1A600;
  }

  else
  {
    v5 = sub_252E1A4A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252E1A22C()
{
  v1 = v0[294];
  v2 = v0[293];
  v3 = v0[292];
  v4 = v0[291];
  v5 = v0[290];
  v6 = v0[289];
  v7 = v0[280];
  v8 = v0[279];
  v9 = v0[278];

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v10 = v0[298];
  v11 = v0[288];

  v12 = v0[286];
  v13 = v0[285];
  v14 = v0[284];
  v15 = v0[283];

  v16 = v0[1];

  return v16();
}

uint64_t sub_252E1A33C()
{
  v2 = *v1;
  v3 = *(*v1 + 2416);
  v4 = *v1;
  *(*v1 + 2424) = v0;

  (*(v2[282] + 8))(v2[286], v2[281]);
  if (v0)
  {
    v5 = sub_252E1AB7C;
  }

  else
  {
    v5 = sub_252E1AA40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252E1A4A4()
{
  v1 = v0 + 276;
  v2 = v0[300];
  v3 = v0[297];
  v0[276] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[285];
  v9 = v0[280];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[304] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[305] = v12;
  *v12 = v0;
  v12[1] = sub_252E1A6B4;
  v13 = v0[285];

  return sub_252BDB88C((v0 + 269), &unk_252E3FA50, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252E1A600()
{
  v1 = *(v0 + 2328);
  v2 = *(v0 + 2232);

  v3 = *(v0 + 2408);
  v4 = *(v0 + 2304);

  v5 = *(v0 + 2288);
  v6 = *(v0 + 2280);
  v7 = *(v0 + 2272);
  v8 = *(v0 + 2264);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252E1A6B4()
{
  v2 = *v1;
  v3 = *(*v1 + 2440);
  v7 = *v1;
  *(*v1 + 2448) = v0;

  if (v0)
  {
    (*(v2[282] + 8))(v2[285], v2[281]);
    v4 = sub_252E1A970;
  }

  else
  {
    v5 = v2[304];
    (*(v2[282] + 8))(v2[285], v2[281]);

    v4 = sub_252E1A80C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252E1A80C()
{
  v1 = *(v0 + 2240);
  v2 = *(v0 + 2224);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = *(v0 + 2296);
    v7 = v5;
    v8 = sub_252E37264();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v0 + 2400);
  v10 = *(v0 + 2376);
  v11 = *(v0 + 2328);
  v12 = *(v0 + 2232);
  v13 = *(v0 + 2216);
  (*(v4 + 112))(v8, v0 + 2152, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2152));

  v14 = *(v0 + 2304);

  v15 = *(v0 + 2288);
  v16 = *(v0 + 2280);
  v17 = *(v0 + 2272);
  v18 = *(v0 + 2264);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_252E1A970()
{
  v1 = *(v0 + 2432);
  v2 = *(v0 + 2400);
  v3 = *(v0 + 2328);
  v4 = *(v0 + 2232);

  v5 = *(v0 + 2448);
  v6 = *(v0 + 2304);

  v7 = *(v0 + 2288);
  v8 = *(v0 + 2280);
  v9 = *(v0 + 2272);
  v10 = *(v0 + 2264);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252E1AA40()
{
  v1 = v0[280];
  v2 = v0[278];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v0[287];
    v7 = v5;
    v8 = sub_252E37264();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = v0[291];
  v10 = v0[277];
  (*(v4 + 112))(v8, v0 + 264, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 264);

  v11 = v0[288];

  v12 = v0[286];
  v13 = v0[285];
  v14 = v0[284];
  v15 = v0[283];

  v16 = v0[1];

  return v16();
}

uint64_t sub_252E1AB7C()
{
  v1 = v0[291];

  v2 = v0[303];
  v3 = v0[288];

  v4 = v0[286];
  v5 = v0[285];
  v6 = v0[284];
  v7 = v0[283];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252E1AC1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2488);
  v6 = *v2;
  *(v4 + 2496) = a1;
  *(v4 + 2504) = v1;

  v7 = *(v3 + 2480);

  if (v1)
  {
    v8 = sub_252E1AF40;
  }

  else
  {
    v8 = sub_252E1AD5C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252E1AD5C()
{
  v1 = v0[309];
  v2 = v0[307];
  v3 = v0[280];
  v4 = v0[279];
  v5 = v0[278];

  v6 = swift_task_alloc();
  v0[314] = v6;
  *v6 = v0;
  v6[1] = sub_252E1AE28;
  v7 = v0[280];

  return sub_252E174F4(v4);
}

uint64_t sub_252E1AE28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2512);
  v7 = *v2;
  *(v3 + 2520) = a1;
  *(v3 + 2528) = v1;

  if (v1)
  {
    v5 = sub_252E1B2E4;
  }

  else
  {
    v5 = sub_252E1B188;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252E1AF40()
{
  v1 = v0[309];
  v2 = v0[308];
  v3 = v0[307];
  v4 = v0[280];
  v5 = v0[279];
  v6 = v0[278];

  v7 = v0[313];
  v8 = v0[307];

  v9 = v0[286];
  v10 = v0[285];
  v11 = v0[284];
  v12 = v0[283];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252E1B020()
{
  v2 = *v1;
  v3 = *(*v1 + 2536);
  v4 = *v1;
  *(*v1 + 2544) = v0;

  (*(v2[282] + 8))(v2[284], v2[281]);
  if (v0)
  {
    v5 = sub_252E1B878;
  }

  else
  {
    v5 = sub_252E1B730;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252E1B188()
{
  v1 = v0 + 274;
  v2 = v0[315];
  v3 = v0[312];
  v0[274] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[283];
  v9 = v0[280];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[319] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[320] = v12;
  *v12 = v0;
  v12[1] = sub_252E1B398;
  v13 = v0[283];

  return sub_252BDB88C((v0 + 259), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252E1B2E4()
{
  v1 = *(v0 + 2464);
  v2 = *(v0 + 2232);

  v3 = *(v0 + 2528);
  v4 = *(v0 + 2456);

  v5 = *(v0 + 2288);
  v6 = *(v0 + 2280);
  v7 = *(v0 + 2272);
  v8 = *(v0 + 2264);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252E1B398()
{
  v2 = *v1;
  v3 = *(*v1 + 2560);
  v7 = *v1;
  *(*v1 + 2568) = v0;

  if (v0)
  {
    (*(v2[282] + 8))(v2[283], v2[281]);
    v4 = sub_252E1B660;
  }

  else
  {
    v5 = v2[319];
    (*(v2[282] + 8))(v2[283], v2[281]);

    v4 = sub_252E1B4F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252E1B4F0()
{
  v1 = *(v0 + 2240);
  v2 = *(v0 + 2224);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2520);
  v9 = *(v0 + 2496);
  v10 = *(v0 + 2464);
  v11 = *(v0 + 2232);
  v12 = *(v0 + 2216);
  (*(v4 + 112))(v7, v0 + 2072, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2072));

  v13 = *(v0 + 2456);

  v14 = *(v0 + 2288);
  v15 = *(v0 + 2280);
  v16 = *(v0 + 2272);
  v17 = *(v0 + 2264);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_252E1B660()
{
  v1 = *(v0 + 2552);
  v2 = *(v0 + 2520);
  v3 = *(v0 + 2464);
  v4 = *(v0 + 2232);

  v5 = *(v0 + 2568);
  v6 = *(v0 + 2456);

  v7 = *(v0 + 2288);
  v8 = *(v0 + 2280);
  v9 = *(v0 + 2272);
  v10 = *(v0 + 2264);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252E1B730()
{
  v1 = v0[280];
  v2 = v0[278];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[308];
  v9 = v0[277];
  (*(v4 + 112))(v7, v0 + 254, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 254);

  v10 = v0[307];

  v11 = v0[286];
  v12 = v0[285];
  v13 = v0[284];
  v14 = v0[283];

  v15 = v0[1];

  return v15();
}

uint64_t sub_252E1B878()
{
  v1 = v0[308];

  v2 = v0[318];
  v3 = v0[307];

  v4 = v0[286];
  v5 = v0[285];
  v6 = v0[284];
  v7 = v0[283];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252E1B918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[130] = a3;
  v3[129] = a2;
  v3[128] = a1;
  return MEMORY[0x2822009F8](sub_252E1B940, 0, 0);
}

uint64_t sub_252E1B940()
{
  v14 = v0;
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[128];
  v4 = *__swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  memcpy(v0 + 2, v3 + 14, 0x1F8uLL);

  v5 = v1;

  memcpy(__dst, v3 + 14, sizeof(__dst));

  v6 = v5;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v7 = sub_252953488(v1, __dst, 0);
  v0[131] = v7;

  v8 = sub_252C07778(v2, 0, 0, v7);
  v0[132] = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[133] = v10;
  *v10 = v0;
  v10[1] = sub_252E1BABC;

  return v12(0xD000000000000022, 0x8000000252E95560, v8);
}

uint64_t sub_252E1BABC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1064);
  v6 = *(*v2 + 1056);
  v7 = *v2;
  *(*v2 + 1072) = v1;

  if (v1)
  {
    v8 = sub_252E1BC9C;
  }

  else
  {
    *(v4 + 1080) = a1;
    v8 = sub_252E1BC08;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252E1BC08()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];

  v5 = v0[1];
  v6 = v0[135];

  return v5(v6);
}

uint64_t sub_252E1BC9C()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];

  v5 = v0[1];
  v6 = v0[134];

  return v5();
}

uint64_t sub_252E1BD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[131] = a4;
  v4[130] = a3;
  v4[129] = a2;
  v4[128] = a1;
  return MEMORY[0x2822009F8](sub_252E1BD58, 0, 0);
}

uint64_t sub_252E1BD58()
{
  v19 = v0;
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  v5 = *__swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  type metadata accessor for HomeAutomationCarbonOxideResponses();
  v6 = swift_allocObject();
  v0[132] = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = v3;
  memcpy(v0 + 2, v4 + 14, 0x1F8uLL);

  v7 = v2;

  memcpy(__dst, v4 + 14, sizeof(__dst));

  v8 = v7;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v9 = sub_252953488(v2, __dst, 0);
  v0[133] = v9;

  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = v1;

  v11 = sub_252B3D26C();
  v0[134] = v11;
  swift_setDeallocating();

  v12 = *(v10 + 24);

  swift_deallocClassInstance();
  v13 = sub_252C07778(v6, v11, 0, v9);
  v0[135] = v13;
  v14 = *(MEMORY[0x277D55BE8] + 4);
  v17 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v15 = swift_task_alloc();
  v0[136] = v15;
  *v15 = v0;
  v15[1] = sub_252E1BF70;

  return v17(0xD000000000000022, 0x8000000252E95560, v13);
}

uint64_t sub_252E1BF70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1088);
  v6 = *(*v2 + 1080);
  v7 = *v2;
  *(*v2 + 1096) = v1;

  if (v1)
  {
    v8 = sub_252E1C178;
  }

  else
  {
    *(v4 + 1104) = a1;
    v8 = sub_252E1C0BC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252E1C0BC()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[131];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[128];

  v8 = v0[1];
  v9 = v0[138];

  return v8(v9);
}

uint64_t sub_252E1C178()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[131];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[128];

  v8 = v0[1];
  v9 = v0[137];

  return v8();
}

uint64_t sub_252E1C258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252E18C50(a1, a2, a3);
}

void *sub_252E1C30C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetCarbonOxideSensorStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

void *sub_252E1C370(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_252E1C9F0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_252E1C3F8(uint64_t a1, uint64_t *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_252E1C6B8(a1, a2);
  }

  v34 = v2;
  v4 = MEMORY[0x277D84FA0];
  v37 = MEMORY[0x277D84FA0];
  sub_252E37874();
  v5 = sub_252E37904();
  if (v5)
  {
    v33 = a2;
    v6 = v5;
    type metadata accessor for HomeEntityResponse();
    v7 = v6;
    v8 = MEMORY[0x277D84F68];
    do
    {
      v35[0] = v7;
      swift_dynamicCast();
      v9 = [v36 entity];
      if (!v9)
      {
        goto LABEL_4;
      }

      v10 = v9;
      v11 = [v9 entityIdentifier];

      if (!v11)
      {
        goto LABEL_4;
      }

      v12 = sub_252E36F34();
      v13 = v8;
      v15 = v14;

      v16 = *v33;
      v35[0] = v12;
      v35[1] = v15;
      MEMORY[0x28223BE20](v17);
      v32[2] = v35;

      v18 = v34;
      LOBYTE(v12) = sub_2529ED970(sub_25296A69C, v32, v16);
      v34 = v18;
      v8 = v13;

      if (v12)
      {
        v19 = v36;
        v20 = *(v4 + 16);
        if (*(v4 + 24) <= v20)
        {
          sub_252DAB4D0(v20 + 1);
        }

        v4 = v37;
        v21 = *(v37 + 40);
        result = sub_252E37684();
        v23 = v4 + 56;
        v24 = -1 << *(v4 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v4 + 56 + 8 * (v25 >> 6))) != 0)
        {
          v27 = __clz(__rbit64((-1 << v25) & ~*(v4 + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = 0;
          v29 = (63 - v24) >> 6;
          do
          {
            if (++v26 == v29 && (v28 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v30 = v26 == v29;
            if (v26 == v29)
            {
              v26 = 0;
            }

            v28 |= v30;
            v31 = *(v23 + 8 * v26);
          }

          while (v31 == -1);
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
        }

        *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        *(*(v4 + 48) + 8 * v27) = v19;
        ++*(v4 + 16);
      }

      else
      {
LABEL_4:
      }

      v7 = sub_252E37904();
    }

    while (v7);
  }

  return v4;
}

uint64_t sub_252E1C6B8(uint64_t a1, uint64_t *a2)
{
  v36 = a2;
  v3 = a1;
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v38 = v2;
    v31[1] = v31;
    v32 = v5;
    MEMORY[0x28223BE20](a1);
    v33 = v31 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v6);
    v34 = 0;
    v35 = v3;
    v5 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = v12 | (v5 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      v17 = [v16 entity];
      if (v17 && (v18 = v17, v19 = [v17 entityIdentifier], v18, v19))
      {
        v20 = sub_252E36F34();
        v22 = v21;

        v37 = v31;
        v23 = *v36;
        v39[0] = v20;
        v39[1] = v22;
        MEMORY[0x28223BE20](v24);
        v31[-2] = v39;

        v2 = v38;
        LOBYTE(v20) = sub_2529ED970(sub_25296A724, &v31[-4], v23);
        v38 = v2;

        v3 = v35;

        if (v20)
        {
          *&v33[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
          if (__OFADD__(v34++, 1))
          {
            __break(1u);
LABEL_19:
            result = sub_252C53CA8(v33, v32, v34, v3);
            goto LABEL_20;
          }
        }
      }

      else
      {
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v7 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = v3;
  v29 = swift_slowAlloc();
  v30 = sub_252E1C370(v29, v5, v28, v36);

  MEMORY[0x2530AED00](v29, -1, -1);
  result = v30;
LABEL_20:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_252E1C9F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v28 = 0;
  v29 = a4;
  v4 = a3;
  v26 = a2;
  v27 = a1;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v30 = a3;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = v11 | (v5 << 6);
    v15 = *(*(v4 + 48) + 8 * v14);
    v16 = [v15 entity];
    if (v16 && (v17 = v16, v18 = [v16 entityIdentifier], v17, v18))
    {
      v19 = sub_252E36F34();
      v21 = v20;

      v31 = &v26;
      v32[0] = v19;
      v22 = *v29;
      v32[1] = v21;
      MEMORY[0x28223BE20](v23);
      *(&v26 - 2) = v32;

      v24 = v33;
      LOBYTE(v19) = sub_2529ED970(sub_25296A724, (&v26 - 4), v22);
      v33 = v24;

      v4 = v30;

      if (v19)
      {
        *(v27 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_18:

          sub_252C53CA8(v27, v26, v28, v4);
          return;
        }
      }
    }

    else
    {
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_18;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_252E1CC18(void *a1, uint64_t a2)
{
  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = [a1 userTask];
  if (!v6)
  {
    sub_252C515AC();
    goto LABEL_16;
  }

  v7 = v6;
  if ([v6 taskType] == 4)
  {
  }

  else
  {
    v8 = [v7 taskType];

    if (v8 != 5)
    {
      goto LABEL_16;
    }
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v9 = sub_252C285F0();
  if (v9 >> 62)
  {
    v12 = sub_252E378C4();

    if (v12)
    {
      goto LABEL_10;
    }

LABEL_16:

    return 0;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ([v5 attribute] == 32 || objc_msgSend(v5, sel_attribute) == 35 || objc_msgSend(v5, sel_attribute) == 33)
  {

    return 1;
  }

  else
  {
    v11 = [v5 attribute];

    return v11 == 36;
  }
}

uint64_t sub_252E1CD7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252E1B918(v2, v3, v4);
}

uint64_t sub_252E1CE24()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B958;

  return sub_252E1BD2C(v2, v3, v5, v4);
}

id sub_252E1CED8()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E90B00, 0xD0000000000000A6, 0x8000000252E9F930);
  type metadata accessor for HomeAttributeValue();
  return HomeAttributeValue.__allocating_init(stringValue:unit:)(1869903201, 0xE400000000000000, 0);
}

id sub_252E1CF94(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v2 value];

  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [v4 rangeValue];

  if (!v5)
  {
    goto LABEL_9;
  }

  [v5 lowerValue];
  v36 = v6;

  v7 = [a1 userTask];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 value];

  if (v9 && (v10 = [v9 rangeValue], v9, v10))
  {
    [v10 upperValue];
    v35 = v11;

    v12 = sub_252C6E240(a1);
    v13.f64[0] = v36;
    v13.f64[1] = v35;
    if (v12 == 3)
    {
      v37 = v13;
    }

    else
    {
      v16 = vaddq_f64(v13, vdupq_n_s64(0xC040000000000000));
      __asm { FMOV            V1.2D, #5.0 }

      v22 = vmulq_f64(v16, _Q1);
      __asm { FMOV            V1.2D, #9.0 }

      v24 = vdivq_f64(v22, _Q1);
      v25 = vdupq_n_s64(0x4059000000000000uLL);
      v37 = vdivq_f64(vrndaq_f64(vmulq_f64(v24, v25)), v25);
    }

    v26 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
    v27 = sub_252E36F04();
    v28 = [v26 initWithIdentifier:0 displayString:v27];

    v29 = v28;
    [v29 setLowerValue_];
    [v29 setUpperValue_];

    v30 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v31 = sub_252E36F04();
    v32 = [v30 initWithIdentifier:0 displayString:v31];

    v33 = v32;
    [v33 setType_];
    v34 = v29;
    [v33 setRangeValue_];

    return v33;
  }

  else
  {
LABEL_9:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544C70);
    sub_252CC4050(0xD000000000000028, 0x8000000252E90AD0, 0xD0000000000000A6, 0x8000000252E9F930, 0xD000000000000069, 0x8000000252E9A930, 43);
    return 0;
  }
}

uint64_t sub_252E1D2C4()
{
  type metadata accessor for SetRangeClimateControlAppIntentHandleDelegate();

  return swift_allocObject();
}

void *sub_252E1D2F4(void *key, char a2)
{
  v3 = v2;
  LOBYTE(v2) = a2;
  v4 = key;
  if (objc_getAssociatedObject(v3, key))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    type metadata accessor for HomeAutomationBooleanResponses();
    if (swift_dynamicCast())
    {
      return v28;
    }
  }

  else
  {
    sub_252982F10(v31);
  }

  v6 = v3[3];
  *&v31[0] = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_40;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
LABEL_10:
    v23 = v4;
    v24 = v3;
    v8 = 0;
    v26 = v6 & 0xFFFFFFFFFFFFFF8;
    v27 = v6 & 0xC000000000000001;
    v22 = v6;
    v25 = (v6 + 32);
    v6 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
    v3 = (v2 & 1);
    do
    {
      if (v27)
      {
        v10 = MEMORY[0x2530ADF00](v8, v22);
        v11 = __OFADD__(v8++, 1);
        if (v11)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v8 >= *(v26 + 16))
        {
          goto LABEL_39;
        }

        v9 = v25[v8];

        v11 = __OFADD__(v8++, 1);
        if (v11)
        {
          goto LABEL_38;
        }
      }

      v2 = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v2 >> 62)
      {
        v12 = sub_252E378C4();
      }

      else
      {
        v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v12)
      {
        v13 = 0;
        v4 = (v2 & 0xC000000000000001);
        do
        {
          if (v4)
          {
            v15 = MEMORY[0x2530ADF00](v13, v2);
            v16 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v13 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v14 = *(v2 + 8 * v13 + 32);

            v16 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              v7 = sub_252E378C4();
              if (!v7)
              {
                goto LABEL_41;
              }

              goto LABEL_10;
            }
          }

          v17 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
          if (v17)
          {
            v18 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

            if (v18 == v3)
            {

              sub_252E37A94();
              v19 = *(*&v31[0] + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              v2 = v31;
              sub_252E37AA4();
              goto LABEL_12;
            }
          }

          else
          {
          }

          ++v13;
        }

        while (v16 != v12);
      }

LABEL_12:
      ;
    }

    while (v8 != v7);
    v20 = *&v31[0];
    v4 = v23;
    v3 = v24;
  }

  else
  {
LABEL_41:
    v20 = MEMORY[0x277D84F90];
  }

  type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = v20;
  objc_setAssociatedObject(v3, v4, v5, 1);
  return v5;
}

double sub_252E1D600@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (!v6 && (sub_252E37DB4() & 1) == 0)
  {
    if (a1 == 0xD00000000000001ALL && 0x8000000252E9FA90 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v10 = sub_252B4E1AC();
    }

    else if (a1 == 0xD00000000000001BLL && 0x8000000252E9FAB0 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v10 = sub_252B4DFA4();
    }

    else if (a1 == 0xD000000000000014 && 0x8000000252E9FAD0 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v10 = sub_252B4DDA4();
    }

    else
    {
      if ((a1 != 0xD000000000000013 || 0x8000000252E9FAF0 != a2) && (sub_252E37DB4() & 1) == 0)
      {
        goto LABEL_27;
      }

      v10 = sub_252B4DBA8();
    }

    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v10 & 1;
    return result;
  }

  v8 = *(v3 + 24);
  if (!v8)
  {
LABEL_27:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = type metadata accessor for HomeAutomationDialogTrigger(0);
  *a3 = v8;

  return result;
}

uint64_t sub_252E1D7D8()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252E1D844()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252E1D894@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_252E1D91C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_252E37B74();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_252E1D974(uint64_t a1)
{
  v2 = sub_252E1DF34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252E1D9B0(uint64_t a1)
{
  v2 = sub_252E1DF34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252E1D9EC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_252E1DA50(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546488, &unk_252E61EE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252E1DF34();
  sub_252E37F84();
  v11[1] = *(v2 + 24);
  type metadata accessor for HomeAutomationDialogTrigger(0);
  sub_252E1DF88(&qword_27F541A90, 255, type metadata accessor for HomeAutomationDialogTrigger);
  sub_252E37CD4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_252E1DBFC(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546478, &qword_252E61ED8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  *(v1 + 16) = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252E1DF34();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationAutomation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for HomeAutomationDialogTrigger(0);
    sub_252E1DF88(&qword_27F541A88, 255, type metadata accessor for HomeAutomationDialogTrigger);
    sub_252E37BE4();
    (*(v5 + 8))(v8, v4);
    *(v1 + 24) = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252E1DE28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationAutomation();
  v5 = swift_allocObject();
  result = sub_252E1DBFC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_252E1DF34()
{
  result = qword_27F546480;
  if (!qword_27F546480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546480);
  }

  return result;
}

uint64_t sub_252E1DF88(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t *sub_252E1DFD0(uint64_t a1)
{
  type metadata accessor for HomeAutomationAutomation();
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  v2[2] = 0;
  v2[3] = v3;
  if (v3)
  {
  }

  else
  {
    v4 = sub_252E36384();
    sub_252E374D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_252E3C290;
    v10 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546490, &qword_252E61EF0);
    v6 = sub_252E36F94();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_252987BC8();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_252E36A64();
  }

  return v2;
}

unint64_t sub_252E1E134()
{
  result = qword_27F546498;
  if (!qword_27F546498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546498);
  }

  return result;
}

unint64_t sub_252E1E18C()
{
  result = qword_27F5464A0;
  if (!qword_27F5464A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5464A0);
  }

  return result;
}

unint64_t sub_252E1E1E4()
{
  result = qword_27F5464A8;
  if (!qword_27F5464A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5464A8);
  }

  return result;
}

uint64_t sub_252E1E238()
{
  result = v0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 771;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 41) = 770;
  *(v0 + 43) = 4;
  *(v0 + 48) = v2;
  *(v0 + 56) = 4;
  *(v0 + 64) = v2;
  *(v0 + 72) = v2;
  *(v0 + 80) = 4;
  *(v0 + 88) = v2;
  *(v0 + 96) = v2;
  *(v0 + 104) = v2;
  *(v0 + 112) = v2;
  *(v0 + 120) = v2;
  *(v0 + 128) = v2;
  *(v0 + 136) = v2;
  *(v0 + 144) = v2;
  *(v0 + 152) = v2;
  *(v0 + 160) = v2;
  *(v0 + 168) = v2;
  *(v0 + 176) = v2;
  *(v0 + 184) = v2;
  *(v0 + 192) = v2;
  *(v0 + 200) = v2;
  *(v0 + 208) = v2;
  *(v0 + 216) = v2;
  *(v0 + 224) = 521;
  *(v0 + 232) = v2;
  *(v0 + 240) = v2;
  *(v0 + 248) = 1;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 272) = v2;
  *(v0 + 280) = 2;
  *(v0 + 288) = 0;
  *(v0 + 296) = 256;
  *(v0 + 304) = v2;
  *(v0 + 312) = v2;
  *(v0 + 320) = v2;
  *(v0 + 328) = v2;
  *(v0 + 336) = v2;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 368) = v2;
  *(v0 + 376) = 22;
  *(v0 + 377) = 0;
  *(v0 + 384) = v2;
  *(v0 + 392) = v2;
  *(v0 + 400) = v2;
  *(v0 + 408) = v2;
  *(v0 + 416) = v2;
  *(v0 + 424) = v2;
  *(v0 + 432) = v2;
  *(v0 + 440) = v2;
  *(v0 + 448) = v2;
  *(v0 + 456) = v2;
  *(v0 + 464) = v2;
  *(v0 + 472) = v2;
  v3 = MEMORY[0x277D84FA0];
  *(v0 + 480) = v2;
  *(v0 + 488) = v3;
  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  *(v0 + 512) = 0;
  return result;
}

uint64_t sub_252E1E320(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 488) + 16))
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    for (i = 0; v5; result = sub_2529AEC80(v21))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(a1 + 48) + 152 * (v10 | (v9 << 6));
      v12 = *(v11 + 16);
      v23[0] = *v11;
      v23[1] = v12;
      v13 = *(v11 + 80);
      v15 = *(v11 + 32);
      v14 = *(v11 + 48);
      v23[4] = *(v11 + 64);
      v23[5] = v13;
      v23[2] = v15;
      v23[3] = v14;
      v17 = *(v11 + 112);
      v16 = *(v11 + 128);
      v18 = *(v11 + 96);
      v24 = *(v11 + 144);
      v23[7] = v17;
      v23[8] = v16;
      v23[6] = v18;
      swift_beginAccess();
      sub_25297DE08(v23, v21);
      sub_252DA8480(v19, v23);
      swift_endAccess();
      v21[6] = v19[6];
      v21[7] = v19[7];
      v21[8] = v19[8];
      v22 = v20;
      v21[2] = v19[2];
      v21[3] = v19[3];
      v21[4] = v19[4];
      v21[5] = v19[5];
      v21[0] = v19[0];
      v21[1] = v19[1];
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

      v5 = *(a1 + 56 + 8 * v9);
      ++i;
      if (v5)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    *(v1 + 488) = a1;
  }

  return result;
}

double sub_252E1E4F8@<D0>(uint64_t a1@<X8>)
{
  v46 = *(v1 + 24);
  v3 = *(v1 + 32);
  v44 = *(v1 + 40);
  v42 = *(v1 + 41);
  v40 = *(v1 + 43);
  v4 = *(v1 + 48);
  v34 = *(v1 + 56);
  swift_beginAccess();
  v38 = *(v1 + 64);
  v39 = *(v1 + 72);
  v33 = *(v1 + 80);
  v6 = *(v1 + 88);
  v5 = *(v1 + 96);
  v47 = *(v1 + 104);
  v48 = *(v1 + 120);
  v49 = *(v1 + 112);
  v50 = *(v1 + 128);
  v51 = *(v1 + 136);
  v52 = *(v1 + 144);
  v53 = *(v1 + 152);
  v54 = *(v1 + 160);
  v55 = *(v1 + 168);
  swift_beginAccess();
  v56 = *(v1 + 176);
  v57 = *(v1 + 184);
  v58 = *(v1 + 192);
  v59 = *(v1 + 200);
  v60 = *(v1 + 208);
  v61 = *(v1 + 216);
  v62 = *(v1 + 232);
  v63 = *(v1 + 240);
  v29 = *(v1 + 248);
  v30 = *(v1 + 224);
  v28 = *(v1 + 256);
  v64 = *(v1 + 264);
  v65 = *(v1 + 272);
  v27 = *(v1 + 280);
  v26 = *(v1 + 288);
  v24 = *(v1 + 297);
  v25 = *(v1 + 296);
  v7 = *(v1 + 304);
  v66 = *(v1 + 328);
  v67 = *(v1 + 336);
  v68 = *(v1 + 312);
  v23 = *(v1 + 344);
  v69 = *(v1 + 352);
  v70 = *(v1 + 320);
  v36 = *(v1 + 360);
  v37 = *(v1 + 368);
  v21 = *(v1 + 377);
  v22 = *(v1 + 376);
  v31 = *(v1 + 378);
  v32 = *(v1 + 379);
  v77 = *(v1 + 480);
  v8 = *(v1 + 380);
  v9 = *(v1 + 448);
  v74 = *(v1 + 432);
  v75 = v9;
  v76 = *(v1 + 464);
  v10 = *(v1 + 416);
  v72 = *(v1 + 400);
  v73 = v10;
  v11 = *(v1 + 16);
  v12 = *(v1 + 384);
  v35 = *(v1 + 392);
  swift_beginAccess();
  v13 = MEMORY[0x277D84F90];
  *(a1 + 400) = MEMORY[0x277D84F90];
  *(a1 + 408) = v13;
  *(a1 + 416) = v13;
  *(a1 + 424) = v13;
  *(a1 + 432) = v13;
  *(a1 + 440) = v13;
  *(a1 + 448) = v13;
  *(a1 + 456) = v13;
  *(a1 + 464) = v13;
  *(a1 + 472) = v13;
  *(a1 + 480) = v13;
  *(a1 + 8) = v46;
  *(a1 + 10) = v44;
  *(a1 + 24) = v42;
  *(a1 + 26) = v40;
  *(a1 + 40) = v34;
  *(a1 + 64) = v33;
  *(a1 + 208) = v30;
  *(a1 + 232) = v29;
  *(a1 + 240) = v28;
  *(a1 + 312) = v27;
  *(a1 + 280) = v26;
  *(a1 + 288) = v25;
  *(a1 + 289) = v24;
  *(a1 + 320) = v23;
  *(a1 + 328) = v7;
  *(a1 + 384) = v22;
  *(a1 + 385) = v21;
  *(a1 + 388) = v31;
  v14 = *(v1 + 488);
  *(a1 + 386) = v32;
  LOBYTE(v46) = *(v1 + 496);
  *(a1 + 387) = v8;
  v79 = *(a1 + 480);
  v43 = v14;
  v45 = *(v1 + 504);
  v41 = *(v1 + 512);
  *(a1 + 496) = 0;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v38;
  *(a1 + 56) = v39;
  *(a1 + 72) = v6;
  *(a1 + 80) = v5;
  *(a1 + 88) = v47;
  *(a1 + 96) = v49;
  *(a1 + 104) = v48;
  *(a1 + 112) = v50;
  *(a1 + 120) = v51;
  *(a1 + 128) = v52;
  *(a1 + 136) = v53;
  *(a1 + 144) = v54;
  *(a1 + 152) = v55;
  *(a1 + 160) = v56;
  *(a1 + 168) = v57;
  *(a1 + 176) = v58;
  *(a1 + 184) = v59;
  *(a1 + 192) = v60;
  *(a1 + 200) = v61;
  *(a1 + 216) = v62;
  *(a1 + 224) = v63;
  *(a1 + 248) = v64;
  *(a1 + 256) = v65;
  *(a1 + 336) = v68;
  *(a1 + 344) = v70;
  *(a1 + 352) = v66;
  *(a1 + 360) = v67;
  *(a1 + 296) = v69;
  *(a1 + 304) = v36;
  *a1 = v11;
  *(a1 + 392) = v12;
  *(a1 + 368) = v35;
  *(a1 + 376) = v37;
  v15 = *(a1 + 464);
  v78[3] = *(a1 + 448);
  v78[4] = v15;
  v16 = *(a1 + 432);
  v78[1] = *(a1 + 416);
  v78[2] = v16;
  v78[0] = *(a1 + 400);

  sub_2529855F8(&v72, v71);

  sub_252937BEC(v78);
  v17 = v75;
  *(a1 + 432) = v74;
  *(a1 + 448) = v17;
  *(a1 + 464) = v76;
  v18 = v77;
  result = *&v72;
  v20 = v73;
  *(a1 + 400) = v72;
  *(a1 + 416) = v20;
  *(a1 + 480) = v18;
  *(a1 + 488) = v43;
  *(a1 + 389) = v46;
  *(a1 + 264) = v45;
  *(a1 + 272) = v41;
  return result;
}

void *sub_252E1E9A8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[23];

  v19 = v0[24];

  v20 = v0[25];

  v21 = v0[26];

  v22 = v0[27];

  v23 = v0[29];

  v24 = v0[30];

  v25 = v0[33];

  v26 = v0[34];

  v27 = v0[38];

  v28 = v0[39];

  v29 = v0[40];

  v30 = v0[41];

  v31 = v0[42];

  v32 = v0[44];

  v33 = v0[45];

  v34 = v0[46];

  v35 = v0[48];

  v36 = v0[49];

  v37 = v0[51];
  v50 = v0[50];
  v38 = v0[52];
  v39 = v0[53];
  v40 = v0[54];
  v41 = v0[55];
  v42 = v0[56];
  v43 = v0[57];
  v45 = v0[58];
  v44 = v0[59];
  v46 = v0[60];

  v47 = v0[61];

  v48 = v0[64];

  return v0;
}

uint64_t sub_252E1EB90()
{
  sub_252E1E9A8();

  return swift_deallocClassInstance();
}

uint64_t sub_252E1EBE8(uint64_t *a1)
{
  v73 = *a1;
  v2 = *(a1 + 4);
  v60 = *(a1 + 12);
  v61 = *(a1 + 10);
  v59 = *(a1 + 26);
  v48 = a1[4];
  v49 = a1[6];
  v50 = a1[2];
  v51 = a1[7];
  v62 = *(a1 + 40);
  v63 = *(a1 + 64);
  v52 = a1[9];
  v54 = a1[10];
  v55 = a1[11];
  v56 = a1[12];
  v57 = a1[13];
  v58 = a1[14];
  v89 = a1[15];
  v90 = a1[16];
  v91 = a1[17];
  v92 = a1[18];
  v93 = a1[19];
  v94 = a1[20];
  v95 = a1[21];
  v96 = a1[22];
  v106 = a1[61];
  v112 = a1[60];
  v3 = a1[23];
  v97 = a1[24];
  *(v1 + 24) = v2;
  v98 = a1[25];
  v99 = v3;
  v4 = *(a1 + 28);
  v109 = *(a1 + 27);
  v110 = v4;
  v111 = *(a1 + 29);
  v5 = *(a1 + 26);
  v66 = *(a1 + 104);
  v100 = a1[28];
  v69 = *(a1 + 232);
  v71 = a1[30];
  v101 = a1[31];
  v102 = a1[27];
  v88 = a1[33];
  v105 = a1[34];
  v78 = a1[35];
  v76 = *(a1 + 289);
  v77 = *(a1 + 288);
  v103 = a1[32];
  v104 = a1[37];
  v72 = *(a1 + 312);
  v80 = a1[38];
  v81 = a1[40];
  v75 = a1[41];
  v67 = a1[42];
  v68 = a1[43];
  v64 = a1[45];
  v65 = a1[44];
  v79 = a1[46];
  v70 = a1[47];
  v83 = *(a1 + 385);
  v84 = *(a1 + 384);
  v86 = *(a1 + 386);
  v85 = *(a1 + 387);
  v82 = *(a1 + 388);
  v87 = *(a1 + 389);
  v74 = a1[49];
  v107 = *(a1 + 25);
  v108 = v5;
  v53 = *(v1 + 32);
  *(v1 + 32) = v50;

  sub_2529855F8(&v107, v113);

  *(v1 + 40) = v61;
  *(v1 + 41) = v60;
  *(v1 + 43) = v59;
  v6 = *(v1 + 48);
  *(v1 + 48) = v48;

  *(v1 + 56) = v62;
  swift_beginAccess();
  v7 = *(v1 + 64);
  *(v1 + 64) = v49;

  v8 = *(v1 + 72);
  *(v1 + 72) = v51;

  *(v1 + 80) = v63;
  v9 = *(v1 + 88);
  *(v1 + 88) = v52;

  v10 = *(v1 + 96);
  *(v1 + 96) = v54;

  v11 = *(v1 + 112);
  *(v1 + 112) = v56;

  v12 = *(v1 + 104);
  *(v1 + 104) = v55;

  v13 = *(v1 + 120);
  *(v1 + 120) = v57;

  v14 = *(v1 + 128);
  *(v1 + 128) = v58;

  v15 = *(v1 + 136);
  *(v1 + 136) = v89;

  v16 = *(v1 + 144);
  *(v1 + 144) = v90;

  v17 = *(v1 + 152);
  *(v1 + 152) = v91;

  v18 = *(v1 + 160);
  *(v1 + 160) = v92;

  v19 = *(v1 + 168);
  *(v1 + 168) = v93;

  swift_beginAccess();
  v20 = *(v1 + 176);
  *(v1 + 176) = v94;

  v21 = *(v1 + 184);
  *(v1 + 184) = v95;

  v22 = *(v1 + 192);
  *(v1 + 192) = v96;

  v23 = *(v1 + 200);
  *(v1 + 200) = v99;

  v24 = *(v1 + 208);
  *(v1 + 208) = v97;

  v25 = *(v1 + 216);
  *(v1 + 216) = v98;

  *(v1 + 224) = v66;
  v26 = *(v1 + 232);
  *(v1 + 232) = v102;

  v27 = *(v1 + 240);
  *(v1 + 240) = v100;

  *(v1 + 248) = v69;
  v28 = *(v1 + 264);
  *(v1 + 256) = v71;
  *(v1 + 264) = v101;

  v29 = *(v1 + 272);
  *(v1 + 272) = v103;

  *(v1 + 280) = v72;
  *(v1 + 288) = v78;
  *(v1 + 296) = v77;
  *(v1 + 297) = v76;
  v30 = *(v1 + 336);
  *(v1 + 336) = v64;

  v31 = *(v1 + 328);
  *(v1 + 328) = v65;

  v32 = *(v1 + 312);
  *(v1 + 312) = v67;

  v33 = *(v1 + 320);
  *(v1 + 320) = v68;

  v34 = *(v1 + 304);
  *(v1 + 304) = v75;

  v35 = *(v1 + 352);
  *(v1 + 344) = v81;
  *(v1 + 352) = v104;

  v36 = *(v1 + 360);
  *(v1 + 360) = v80;

  v37 = *(v1 + 368);
  *(v1 + 368) = v70;

  *(v1 + 376) = v84;
  *(v1 + 377) = v83;
  *(v1 + 378) = v82;
  *(v1 + 379) = v86;
  *(v1 + 380) = v85;
  v38 = *(v1 + 16);
  *(v1 + 16) = v73;

  v39 = *(v1 + 384);
  *(v1 + 384) = v74;

  v40 = *(v1 + 392);
  *(v1 + 392) = v79;

  v41 = *(v1 + 448);
  v113[2] = *(v1 + 432);
  v113[3] = v41;
  v113[4] = *(v1 + 464);
  v114 = *(v1 + 480);
  v42 = *(v1 + 416);
  v113[0] = *(v1 + 400);
  v113[1] = v42;
  v43 = v110;
  *(v1 + 432) = v109;
  *(v1 + 448) = v43;
  *(v1 + 464) = v111;
  *(v1 + 480) = v112;
  v44 = v108;
  *(v1 + 400) = v107;
  *(v1 + 416) = v44;
  sub_252937BEC(v113);
  swift_beginAccess();
  v45 = *(v1 + 488);
  *(v1 + 488) = v106;

  *(v1 + 496) = v87;
  v46 = *(v1 + 512);
  *(v1 + 504) = v88;
  *(v1 + 512) = v105;

  return v1;
}

uint64_t sub_252E1F258(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 368);
  if (*(v3 + 16))
  {

    sub_25297B278(v4);
    v5 = sub_252DF90DC(v3);

    v6 = *(v2 + 368);
    *(v2 + 368) = v5;
  }

  else
  {
    *(v2 + 368) = a1;
  }

  return v2;
}

uint64_t sub_252E1F2EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      swift_beginAccess();
      v6 = *(v1 + 64);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 64) = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_2529F7A80(0, *(v6 + 2) + 1, 1, v6);
        *(v1 + 64) = v6;
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_2529F7A80((v8 > 1), v9 + 1, 1, v6);
      }

      *(v6 + 2) = v9 + 1;
      v10 = &v6[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v4;
      *(v1 + 64) = v6;
      swift_endAccess();
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return v1;
}

uint64_t sub_252E1F3E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      swift_beginAccess();
      v6 = *(v1 + 176);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 176) = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_2529F7A80(0, *(v6 + 2) + 1, 1, v6);
        *(v1 + 176) = v6;
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_2529F7A80((v8 > 1), v9 + 1, 1, v6);
      }

      *(v6 + 2) = v9 + 1;
      v10 = &v6[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v4;
      *(v1 + 176) = v6;
      swift_endAccess();
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return v1;
}

uint64_t sub_252E1F4E4(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v49 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v44 - v6;
  v8 = type metadata accessor for HomeAutomationAutomations();
  result = swift_allocObject();
  v10 = MEMORY[0x277D84F90];
  *(result + 16) = 0;
  *(result + 24) = v10;
  if (a1)
  {
    v11 = a1;
    v52 = v10;
    if (a1 >> 62)
    {
      v41 = result;
      v42 = v11;
      v43 = sub_252E378C4();
      v11 = v42;
      v12 = v43;
      result = v41;
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_4:
        if (v12 < 1)
        {
          __break(1u);
          return result;
        }

        v47 = v7;
        v44[1] = v8;
        v44[2] = result;
        v13 = 0;
        v45 = v11 & 0xC000000000000001;
        v48 = v11;
        v46 = v12;
        do
        {
          v50 = v13;
          if (v45)
          {
            v14 = MEMORY[0x2530ADF00](v13);
          }

          else
          {
            v14 = *(v11 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = type metadata accessor for HomeAutomationDialogTrigger.Builder(0);
          v17 = *(v16 + 48);
          v18 = *(v16 + 52);
          v19 = swift_allocObject();
          v20 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_event;
          v21 = sub_252E36324();
          v22 = *(*(v21 - 8) + 56);
          v23 = 1;
          v22(v19 + v20, 1, 1, v21);
          *(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_time) = 0;
          *(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_offset) = 0;
          v24 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_home;
          v22(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_home, 1, 1, v21);
          *(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isOffsetToPast) = 0;
          *(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isRecurrence) = 0;
          *(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekday) = 0;
          *(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekend) = 0;
          *(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isEveryday) = 0;
          *(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence) = 0;
          v51 = v15;
          v25 = [v15 homeEntityName];
          if (v25)
          {
            v26 = v25;
            sub_252E36F34();

            v27 = v47;
            sub_252E37024();

            v23 = 0;
          }

          else
          {
            v27 = v47;
          }

          v28 = 1;
          v22(v27, v23, 1, v21);
          swift_beginAccess();
          sub_252956BAC(v27, v19 + v20);
          swift_endAccess();
          sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
          v29 = [v51 home];
          if (v29)
          {
            v30 = v29;
            sub_252E36F34();

            v31 = v49;
            sub_252E37024();

            v28 = 0;
          }

          else
          {
            v31 = v49;
          }

          v22(v31, v28, 1, v21);
          swift_beginAccess();
          sub_252956BAC(v31, v19 + v24);
          swift_endAccess();
          sub_25293847C(v31, &qword_27F540298, &unk_252E3C270);
          v32 = type metadata accessor for HomeAutomationDialogTrigger(0);
          v33 = *(v32 + 48);
          v34 = *(v32 + 52);
          swift_allocObject();
          v35 = sub_252A09E4C(v19);
          type metadata accessor for HomeAutomationAutomation();
          v36 = swift_allocObject();
          *(v36 + 16) = 0;
          *(v36 + 24) = v35;
          MEMORY[0x2530AD700]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v39 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          v13 = v50 + 1;
          sub_252E372D4();

          swift_setDeallocating();
          sub_25293847C(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_event, &qword_27F540298, &unk_252E3C270);
          sub_25293847C(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_home, &qword_27F540298, &unk_252E3C270);
          v37 = *(*v19 + 48);
          v38 = *(*v19 + 52);
          swift_deallocClassInstance();
          v11 = v48;
        }

        while (v46 != v13);
        v40 = v52;

        goto LABEL_21;
      }
    }

    v40 = MEMORY[0x277D84F90];
LABEL_21:
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v40;
  }

  return result;
}

uint64_t sub_252E1FA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_252E1FA68, 0, 0);
}

uint64_t sub_252E1FA68()
{
  v1 = [*(v0 + 24) matchedEntities];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntity();
    v3 = sub_252E37264();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = sub_252E1F4E4(v3);

  v7 = *(sub_252BF6CBC() + 2);

  v8 = v4[12];
  v9 = v4[13];
  __swift_project_boxed_opaque_existential_1(v4 + 9, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v6;

  v11 = sub_252E1FE00();
  (*(v9 + 56))(sub_252E1FFC8, v10, v7 > 5, v11, 0, 0, v8, v9);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252E1FC18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  memcpy(__dst, (a1 + 112), sizeof(__dst));
  memcpy(v8, (a1 + 112), sizeof(v8));

  sub_2529D291C(__dst, v7);
  v5 = sub_252953488(0, v8, 0);
  sub_252BFDE5C(a2, v5);
}

uint64_t sub_252E1FCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252E1FA44(a1, v8, a3);
}

void *sub_252E1FD9C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DiscoverTriggerResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252E1FE00()
{
  v0 = sub_252E33C64();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_252E33C54();
  v13[3] = v0;
  v13[4] = MEMORY[0x277D5BD58];
  v13[0] = v3;
  sub_252E33F34();
  v4 = *(v0 + 48);
  v5 = *(v0 + 52);
  swift_allocObject();
  sub_252E33C54();
  v6 = sub_252E334C4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_252E334B4();
  v14[3] = v6;
  v14[4] = MEMORY[0x277D5B808];
  v14[0] = v9;
  sub_252947E5C(0);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

id sub_252E1FF00(void *a1)
{
  result = [a1 filters];
  if (result)
  {
    v3 = result;
    type metadata accessor for HomeFilter();
    v4 = sub_252E37264();

    if (v4 >> 62)
    {
      if (sub_252E378C4())
      {
LABEL_4:
        v5 = sub_252D9F9E0(v4);

        if (v5)
        {
          return ([a1 discoveryType] == 1);
        }

        return 0;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    return 0;
  }

  return result;
}

char *AutomateHomeIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id AutomateHomeIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutomateHomeIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AutomateHomeIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AutomateHomeIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AutomateHomeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_252E36F04();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id AutomateHomeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_252E36F04();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AutomateHomeIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id AutomateHomeIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id AutomateHomeIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for AutomateHomeIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_252E20664@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E213B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_252E20698@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 automationIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_252E32E64();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_252E32E84();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_252E2073C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_252C4AE84(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_252E32E84();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_252E32E44();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setAutomationIdentifier_];
}

void sub_252E20868(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 automatedEntityIdentifiers];
  if (v3)
  {
    v4 = v3;
    sub_252E32E84();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_252E208D8(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_252E32E84();
    v3 = sub_252E37254();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAutomatedEntityIdentifiers_];
}

uint64_t sub_252E20998()
{
  v1 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *AutomateHomeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id AutomateHomeIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AutomateHomeIntentResponse.init()()
{
  *&v0[OBJC_IVAR___AutomateHomeIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutomateHomeIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AutomateHomeIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AutomateHomeIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___AutomateHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AutomateHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AutomateHomeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id AutomateHomeIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___AutomateHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AutomateHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E20D9C(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___AutomateHomeIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for AutomateHomeIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id AutomateHomeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id AutomateHomeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AutomateHomeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for AutomateHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_252E20FC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E2136C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_252E20FF8(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

uint64_t sub_252E21090@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E21380(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id _s22HomeAutomationInternal08AutomateA23TriggerResolutionResultC14JSONDictionary6intentACSgSDySSypG_So8INIntentCtcfC_0(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id sub_252E2116C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_252E36E24();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_252E21234(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  sub_252E36E44();
  v8 = a4;
  v9 = sub_252E36E24();

  v13.receiver = a1;
  v13.super_class = a5(v10);
  v11 = objc_msgSendSuper2(&v13, sel_initWithJSONDictionary_forIntent_, v9, v8);

  if (v11)
  {
  }

  return v11;
}

id sub_252E21334(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_252E2136C(uint64_t result)
{
  if ((result - 7) < 0xFFFFFFFFFFFFFFFALL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_252E21380(uint64_t result)
{
  if ((result - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E213B8(unint64_t result)
{
  if (result - 100 >= 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_252E2144C()
{
  result = qword_27F5464B8;
  if (!qword_27F5464B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5464B8);
  }

  return result;
}

unint64_t sub_252E214A4()
{
  result = qword_27F5464C0;
  if (!qword_27F5464C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5464C0);
  }

  return result;
}

unint64_t sub_252E214FC()
{
  result = qword_27F5464C8;
  if (!qword_27F5464C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5464C8);
  }

  return result;
}

char *DiscoverHomeIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DiscoverHomeIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoverHomeIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DiscoverHomeIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DiscoverHomeIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DiscoverHomeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_252E36F04();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id DiscoverHomeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_252E36F04();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DiscoverHomeIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id DiscoverHomeIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id DiscoverHomeIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for DiscoverHomeIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_252E21CCC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E2275C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_252E21D00(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_252E37264();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_252E21D74(void *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_252E37254();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

uint64_t sub_252E21E40()
{
  v1 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *DiscoverHomeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DiscoverHomeIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiscoverHomeIntentResponse.init()()
{
  *&v0[OBJC_IVAR___DiscoverHomeIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoverHomeIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DiscoverHomeIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DiscoverHomeIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DiscoverHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DiscoverHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DiscoverHomeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id DiscoverHomeIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___DiscoverHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DiscoverHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E22268(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___DiscoverHomeIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DiscoverHomeIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id DiscoverHomeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id DiscoverHomeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DiscoverHomeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DiscoverHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

void *sub_252E224A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 1;
  *a2 = *result == 1;
  *(a2 + 8) = v2;
  return result;
}

id DiscoverHomeFiltersResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DiscoverHomeFiltersResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DiscoverHomeFiltersResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E22724(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E2275C(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_252E227C8()
{
  result = qword_27F5464D8;
  if (!qword_27F5464D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5464D8);
  }

  return result;
}

unint64_t sub_252E22820()
{
  result = qword_27F5464E0;
  if (!qword_27F5464E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5464E0);
  }

  return result;
}

char *ShowHomeIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

void sub_252E229CC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_252E22A3C(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for HomeFilter();
    v3 = sub_252E37254();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setFilters_];
}

id ShowHomeIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowHomeIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ShowHomeIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowHomeIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ShowHomeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_252E36F04();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ShowHomeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_252E36F04();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ShowHomeIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id ShowHomeIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id ShowHomeIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for ShowHomeIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_252E23078@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E23ACC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_252E230AC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 punchOutURL];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E36F34();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_252E23114(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_252E36F04();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setPunchOutURL_];
}

uint64_t sub_252E231CC()
{
  v1 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ShowHomeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ShowHomeIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShowHomeIntentResponse.init()()
{
  *&v0[OBJC_IVAR___ShowHomeIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowHomeIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ShowHomeIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ShowHomeIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ShowHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ShowHomeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ShowHomeIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___ShowHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E235F4(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ShowHomeIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ShowHomeIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ShowHomeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ShowHomeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ShowHomeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id ShowHomeFiltersResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ShowHomeFiltersResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ShowHomeFiltersResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E23A94(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E23ACC(unint64_t result)
{
  if (result - 100 >= 6)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_252E23B3C()
{
  result = qword_27F5464F0;
  if (!qword_27F5464F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5464F0);
  }

  return result;
}

unint64_t sub_252E23B94()
{
  result = qword_27F5464F8;
  if (!qword_27F5464F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5464F8);
  }

  return result;
}

id sub_252E23CA0()
{
  v1 = [*v0 userTask];

  return v1;
}

char *ControlHomeIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ControlHomeIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlHomeIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ControlHomeIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ControlHomeIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ControlHomeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_252E36F04();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ControlHomeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_252E36F04();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ControlHomeIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id ControlHomeIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id ControlHomeIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for ControlHomeIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_252E24354@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E24D98(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_252E24388(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_252E37264();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_252E243FC(void *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_252E37254();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

uint64_t sub_252E244C8()
{
  v1 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ControlHomeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ControlHomeIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ControlHomeIntentResponse.init()()
{
  *&v0[OBJC_IVAR___ControlHomeIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlHomeIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ControlHomeIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ControlHomeIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ControlHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ControlHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ControlHomeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ControlHomeIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___ControlHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ControlHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E248CC(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ControlHomeIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ControlHomeIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ControlHomeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ControlHomeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ControlHomeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ControlHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_252E24B48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E24DB4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_252E24B98(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_252E36E24();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_252E24C60(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  sub_252E36E44();
  v8 = a4;
  v9 = sub_252E36E24();

  v13.receiver = a1;
  v13.super_class = a5(v10);
  v11 = objc_msgSendSuper2(&v13, sel_initWithJSONDictionary_forIntent_, v9, v8);

  if (v11)
  {
  }

  return v11;
}

id sub_252E24D60(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E24D98(unint64_t result)
{
  if (result - 100 >= 0xE && result >= 7)
  {
    return 0;
  }

  return result;
}

uint64_t sub_252E24DB4(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E24E5C()
{
  result = qword_27F546508;
  if (!qword_27F546508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546508);
  }

  return result;
}

unint64_t sub_252E24EB4()
{
  result = qword_27F546510;
  if (!qword_27F546510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546510);
  }

  return result;
}

unint64_t sub_252E24F0C()
{
  result = qword_27F546518;
  if (!qword_27F546518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546518);
  }

  return result;
}

unint64_t sub_252E2508C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E2541C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_252E250C0(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id sub_252E2514C(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id TriggerEventResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id TriggerEventResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TriggerEventResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id TriggerEventResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TriggerEventResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E2541C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E25454()
{
  result = qword_27F546520;
  if (!qword_27F546520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546520);
  }

  return result;
}

unint64_t TriggerType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_252E2550C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id TriggerTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id TriggerTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TriggerTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id TriggerTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TriggerTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E25814()
{
  result = qword_27F546528;
  if (!qword_27F546528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546528);
  }

  return result;
}

unint64_t sub_252E258D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E25BD0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeEntityTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeEntityTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeEntityTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeEntityTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeEntityTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E25BD0(unint64_t result)
{
  if (result > 0xC)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E25C08()
{
  result = qword_27F546530;
  if (!qword_27F546530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546530);
  }

  return result;
}

unint64_t sub_252E25CCC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E25FC4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeDeviceTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeDeviceTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeDeviceTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeDeviceTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeDeviceTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E25FC4(unint64_t result)
{
  if (result > 0x2F)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E25FFC()
{
  result = qword_2814B0E40;
  if (!qword_2814B0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B0E40);
  }

  return result;
}

unint64_t sub_252E260C0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E263B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeSceneTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeSceneTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeSceneTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeSceneTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeSceneTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E263B8(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E263F0()
{
  result = qword_27F546538;
  if (!qword_27F546538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546538);
  }

  return result;
}

id DiscoveryTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DiscoveryTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DiscoveryTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id DiscoveryTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoveryTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E267A0()
{
  result = qword_27F546540;
  if (!qword_27F546540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546540);
  }

  return result;
}

unint64_t sub_252E26864@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E26B5C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeUserTaskTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeUserTaskTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeUserTaskTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeUserTaskTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeUserTaskTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E26B5C(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E26B94()
{
  result = qword_27F546548;
  if (!qword_27F546548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546548);
  }

  return result;
}

unint64_t sub_252E26C58@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E26F50(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeAttributeTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeAttributeTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeAttributeTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E26F50(unint64_t result)
{
  if (result > 0x43)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E26F88()
{
  result = qword_27F546550;
  if (!qword_27F546550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546550);
  }

  return result;
}

unint64_t sub_252E2704C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E27344(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeAttributeValueTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeValueTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeValueTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeAttributeValueTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeAttributeValueTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E27344(unint64_t result)
{
  if (result == 8)
  {
    v1 = 8;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_252E2738C()
{
  result = qword_27F546558;
  if (!qword_27F546558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546558);
  }

  return result;
}

unint64_t HomeAttributeLimit.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id HomeAttributeLimitResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeLimitResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeLimitResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeAttributeLimitResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeAttributeLimitResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E27730()
{
  result = qword_27F546560;
  if (!qword_27F546560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546560);
  }

  return result;
}

id HomeAttributeUnitResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeUnitResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeUnitResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeAttributeUnitResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeAttributeUnitResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E27AE0()
{
  result = qword_27F546568;
  if (!qword_27F546568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546568);
  }

  return result;
}

id RecurrenceFrequencyResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id RecurrenceFrequencyResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for RecurrenceFrequencyResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id RecurrenceFrequencyResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecurrenceFrequencyResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E27E90()
{
  result = qword_27F546570;
  if (!qword_27F546570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546570);
  }

  return result;
}

id DayOfWeekOptionsResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DayOfWeekOptionsResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DayOfWeekOptionsResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id DayOfWeekOptionsResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DayOfWeekOptionsResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E28240()
{
  result = qword_27F546578;
  if (!qword_27F546578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546578);
  }

  return result;
}

unint64_t sub_252E28304@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E285FC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeTaskOutcomeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeTaskOutcomeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeTaskOutcomeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeTaskOutcomeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeTaskOutcomeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E285FC(unint64_t result)
{
  if (result > 0x22)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E28634()
{
  result = qword_27F546580;
  if (!qword_27F546580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546580);
  }

  return result;
}

unint64_t sub_252E286F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E289F0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeAttributeModeTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeModeTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeModeTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeAttributeModeTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeAttributeModeTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E289F0(unint64_t result)
{
  if (result > 0xF)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E28A28()
{
  result = qword_27F546588;
  if (!qword_27F546588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546588);
  }

  return result;
}

unint64_t sub_252E28AEC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E28DE4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeAttributeStateTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeStateTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeStateTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeAttributeStateTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeAttributeStateTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E28DE4(unint64_t result)
{
  if (result > 0x11)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E28E1C()
{
  result = qword_27F546590;
  if (!qword_27F546590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F546590);
  }

  return result;
}

id sub_252E28EC0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AutomatableResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E28F24(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___AutomatableResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_252E2901C()
{
  result = qword_27F546598;
  if (!qword_27F546598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F546598);
  }

  return result;
}

id sub_252E29068(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AutomatableResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id Automatable.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id Automatable.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for Automatable();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id Automatable.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Automatable.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Automatable();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AutomatableResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AutomatableResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AutomatableResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E298CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id TriggerValue.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id TriggerValue.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for TriggerValue();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id TriggerValue.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TriggerValue.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TriggerValue();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E29D10(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TriggerValueResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E29DC4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___TriggerValueResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E29F28(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TriggerValueResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id TriggerValueResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id TriggerValueResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TriggerValueResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2A318(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_252E2A3A4(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TriggerConditionResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2A408(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___TriggerConditionResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2A500(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TriggerConditionResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void sub_252E2A564(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 recurrence];
  if (v3)
  {
    v4 = v3;
    sub_252E32BA4();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_252E2A5D4(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_252E32BA4();
    v3 = sub_252E37254();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setRecurrence_];
}

id TriggerCondition.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id TriggerCondition.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for TriggerCondition();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id TriggerCondition.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TriggerCondition.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TriggerCondition();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TriggerConditionResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id TriggerConditionResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TriggerConditionResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2AE4C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_252E2AF2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 outerDeviceType];
  *a2 = result;
  return result;
}

id sub_252E2AFBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceType];
  *a2 = result;
  return result;
}

id sub_252E2B004(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeFilterResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2B068(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeFilterResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2B160(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeFilterResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void sub_252E2B1C4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 entityIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_252E2B22C(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_252E37254();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setEntityIdentifiers_];
}

void sub_252E2B29C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E36F34();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_252E2B300(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

id HomeFilter.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeFilter.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeFilter();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeFilter.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeFilter.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeFilter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id HomeFilterResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeFilterResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeFilterResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2BB70(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_252E2BC5C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E37264();
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

void sub_252E2BCC0(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    v8 = sub_252E37254();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

id HomeEntity.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeEntity.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeEntity();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeEntity.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeEntity.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeEntity();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E2C0E4(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeEntityResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2C198(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeEntityResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2C2FC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeEntityResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeEntityResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeEntityResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeEntityResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2C6EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_252E2C7CC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeUserTaskResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2C830(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeUserTaskResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2C928(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeUserTaskResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeUserTask.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeUserTask.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeUserTask();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeUserTask.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeUserTask.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeUserTask();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id HomeUserTaskResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeUserTaskResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeUserTaskResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2D18C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_252E2D230(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 stringValue];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E36F34();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_252E2D298(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_252E36F04();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setStringValue_];
}

id HomeAttributeValue.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeAttributeValue.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeAttributeValue();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeAttributeValue.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeAttributeValue.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeAttributeValue();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E2D6C0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeValueResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2D774(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeAttributeValueResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2D8D8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeValueResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeAttributeValueResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeValueResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeValueResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2DCC8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id HomeAttributeRange.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeAttributeRange.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeAttributeRange();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeAttributeRange.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeAttributeRange.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeAttributeRange();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E2E16C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeRangeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2E220(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeAttributeRangeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2E384(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeRangeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeAttributeRangeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeRangeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeRangeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2E774(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id RecurrenceRule.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id RecurrenceRule.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for RecurrenceRule();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id RecurrenceRule.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RecurrenceRule.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RecurrenceRule();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E2EBD0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___RecurrenceRuleResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2EC84(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___RecurrenceRuleResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2EDE8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___RecurrenceRuleResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id RecurrenceRuleResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id RecurrenceRuleResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for RecurrenceRuleResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2F1D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id HomeUserTaskResponse.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeUserTaskResponse.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeUserTaskResponse();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeUserTaskResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeUserTaskResponse.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeUserTaskResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E2F640(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeUserTaskResponseResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2F6F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeUserTaskResponseResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2F858(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeUserTaskResponseResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeUserTaskResponseResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeUserTaskResponseResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeUserTaskResponseResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2FC48(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_252E2FCE0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 taskResponses];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeUserTaskResponse();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_252E2FD50(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for HomeUserTaskResponse();
    v3 = sub_252E37254();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTaskResponses_];
}

id HomeEntityResponse.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeEntityResponse.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeEntityResponse();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeEntityResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeEntityResponse.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeEntityResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E30180(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeEntityResponseResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E30234(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeEntityResponseResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E30398(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeEntityResponseResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeEntityResponseResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeEntityResponseResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeEntityResponseResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E30788(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_252E3082C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 cleanModes];
  v4 = sub_252E37264();

  *a2 = v4;
}

void sub_252E30888(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 targetAreas];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeAttributeTargetArea();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_252E308F8(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for HomeAttributeTargetArea();
    v3 = sub_252E37254();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTargetAreas_];
}

id HomeAttributeCleaningJob.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeAttributeCleaningJob.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeAttributeCleaningJob();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeAttributeCleaningJob.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeAttributeCleaningJob.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeAttributeCleaningJob();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E30D28(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeCleaningJobResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E30DDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeAttributeCleaningJobResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E30F40(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeCleaningJobResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeAttributeCleaningJobResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeCleaningJobResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeCleaningJobResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E31330(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_252E313E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E36F34();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_252E31448(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_252E36F04();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setName_];
}

id HomeAttributeTargetArea.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeAttributeTargetArea.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeAttributeTargetArea();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeAttributeTargetArea.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeAttributeTargetArea.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeAttributeTargetArea();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E31870(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeTargetAreaResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E31924(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeAttributeTargetAreaResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E31A88(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeTargetAreaResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeAttributeTargetAreaResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeTargetAreaResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeTargetAreaResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E31E78(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id HomeAttributeTargetMap.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeAttributeTargetMap.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeAttributeTargetMap();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeAttributeTargetMap.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeAttributeTargetMap.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeAttributeTargetMap();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E322E0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeTargetMapResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E32394(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeAttributeTargetMapResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E324F8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeTargetMapResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeAttributeTargetMapResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeTargetMapResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeTargetMapResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E328E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}