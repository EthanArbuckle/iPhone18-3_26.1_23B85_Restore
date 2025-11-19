uint64_t sub_24AC60070(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E338, &qword_24ACD4C50);
  result = sub_24ACD09F0();
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
      sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0);
      result = sub_24ACD0520();
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

uint64_t sub_24AC603D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E330, &qword_24ACD4C48);
  result = sub_24ACD09F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_24ACD0D10();
      MEMORY[0x24C22D480](qword_24ACD4C88[v18]);
      result = sub_24ACD0D50();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AC6062C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2E8, &qword_24ACD4C00);
  result = sub_24ACD09F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_24ACD0D10();
      sub_24ACD05E0();
      result = sub_24ACD0D50();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AC6088C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_24ACD0420();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2E0, &qword_24ACD4BF8);
  result = sub_24ACD09F0();
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
      sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0]);
      result = sub_24ACD0520();
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

uint64_t sub_24AC60BE8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v26 = *a5;
        v25 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v25 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v26;
        a5[1] = v25;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_24AC212F4(v12, &unk_27EF9E110, &unk_24ACD4540);
          v48 = v64;

          return sub_24AC61598(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
        v38 = sub_24ACD0520();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0);
        v46 = sub_24ACD0550();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_24AC610C0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v26 = *a5;
        v25 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v25 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v26;
        a5[1] = v25;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_24AC212F4(v12, &qword_27EF9DFE0, &qword_24ACD4098);
          v48 = v64;

          return sub_24AC618C4(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0);
        v38 = sub_24ACD0520();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0);
        v46 = sub_24ACD0550();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_24AC61598(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - v10;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E348, &qword_24ACD4C60);
  result = sub_24ACD0A00();
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
    sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
    result = sub_24ACD0520();
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

uint64_t sub_24AC618C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - v10;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E338, &qword_24ACD4C50);
  result = sub_24ACD0A00();
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
    sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0);
    result = sub_24ACD0520();
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

void *sub_24AC61BF0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *v4;
  v14 = sub_24ACD09E0();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v7;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v9 + 32;
    for (i = v9 + 16; v22; result = (*(v9 + 32))(*(v15 + 48) + v27, v12, v8))
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, *(v13 + 48) + v27, v8);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v7 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v15;
  }

  return result;
}

void *sub_24AC61E1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E330, &qword_24ACD4C48);
  v2 = *v0;
  v3 = sub_24ACD09E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_24AC61F5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2E8, &qword_24ACD4C00);
  v2 = *v0;
  v3 = sub_24ACD09E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_24AC620B8()
{
  v1 = v0;
  v2 = sub_24ACD0420();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2E0, &qword_24ACD4BF8);
  v7 = *v0;
  v8 = sub_24ACD09E0();
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

uint64_t sub_24AC622F0(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E348, &qword_24ACD4C60);
  v10 = sub_24ACD09F0();
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
      sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
      result = sub_24ACD0520();
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

uint64_t sub_24AC62610(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E338, &qword_24ACD4C50);
  v10 = sub_24ACD09F0();
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
      sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0);
      result = sub_24ACD0520();
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

uint64_t sub_24AC62930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E330, &qword_24ACD4C48);
  result = sub_24ACD09F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_24ACD0D10();
      MEMORY[0x24C22D480](qword_24ACD4C88[v17]);
      result = sub_24ACD0D50();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24AC62B5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2E8, &qword_24ACD4C00);
  result = sub_24ACD09F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_24ACD0D10();

      sub_24ACD05E0();
      result = sub_24ACD0D50();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24AC62D94(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24ACD0420();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2E0, &qword_24ACD4BF8);
  v10 = sub_24ACD09F0();
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
      sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0]);
      result = sub_24ACD0520();
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

uint64_t sub_24AC630B0(int64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = v7[8];
  result = MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  v12 = *v4;
  v13 = *v4 + 56;
  v14 = -1 << *(*v4 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;
    v17 = *v4;

    v18 = sub_24ACD09B0();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v41 = (v18 + 1) & v16;
      v40 = v7[2];
      v46 = v7[9];
      v42 = v7 + 2;
      v19 = (v7 + 1);
      v20 = v12;
      v21 = v16;
      while (1)
      {
        v22 = v13;
        v23 = v46 * v15;
        v24 = v21;
        v40(v11, *(v20 + 48) + v46 * v15, v6);
        v25 = v20;
        v26 = *(v20 + 40);
        sub_24AC2B6A8(v45, v43, v44);
        v27 = sub_24ACD0520();
        (*v19)(v11, v6);
        v21 = v24;
        v28 = v27 & v24;
        if (a1 >= v41)
        {
          if (v28 < v41 || a1 < v28)
          {
LABEL_4:
            v20 = v25;
            goto LABEL_5;
          }
        }

        else if (v28 < v41 && a1 < v28)
        {
          goto LABEL_4;
        }

        v20 = v25;
        v31 = *(v25 + 48);
        v32 = v46 * a1;
        v33 = v31 + v46 * a1;
        v34 = v31 + v23 + v46;
        if (v46 * a1 < v23 || v33 >= v34)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v21 = v24;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v32 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v21;
        v13 = v22;
        if (((*(v22 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v20 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v20 = v12;
  }

  v36 = *(v20 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v38;
    ++*(v20 + 36);
  }

  return result;
}

uint64_t sub_24AC633D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24ACD0420();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24AC2ABC8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_24AC5E3F0();
      goto LABEL_7;
    }

    sub_24AC5BF4C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_24AC2ABC8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_24AC5E094(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_24AC635C8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = *v5;
  v17 = sub_24AC2ACC8(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_24AC5EB0C(&unk_27EF9E090, &qword_24ACD37C0, v30, v31);
      goto LABEL_7;
    }

    sub_24AC5CDC8(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = sub_24AC2ACC8(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_24AC5E210(v17, v14, a1, v23, &unk_27EF9E090, &qword_24ACD37C0);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_24AC637CC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = *v5;
  v17 = sub_24AC2A3B8(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_24AC5EB0C(&qword_27EF9DDE8, &unk_24ACD37D0, v30, v31);
      goto LABEL_7;
    }

    sub_24AC5C5F4(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = sub_24AC2A3B8(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_24AC5E210(v17, v14, a1, v23, &qword_27EF9DDE8, &unk_24ACD37D0);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_24AC639E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = *v5;
  v17 = sub_24AC2AC60(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_24AC5E860(v30, v31);
      goto LABEL_7;
    }

    sub_24AC5C9D4(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = sub_24AC2AC60(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_24AC5E14C(v17, v14, a1, v23);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_24AC63BDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24ACD0420();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24AC2ABC8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_24AC5EEE4();
      goto LABEL_7;
    }

    sub_24AC5D424(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_24AC2ABC8(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_24AC5E2CC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_24AC63DEC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = *v3;
  v15 = sub_24AC2AC60(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_24AC5F240();
      goto LABEL_7;
    }

    sub_24AC5D8D4(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_24AC2AC60(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_24AC5E14C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_24AC63FC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = *v3;
  v15 = sub_24AC2AC60(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_24AC5F4C8();
      goto LABEL_7;
    }

    sub_24AC5DCB4(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_24AC2AC60(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_24AC5E14C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_24AC64194(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AC5FD10(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24AC61BF0(&qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9E348, &qword_24ACD4C60);
      goto LABEL_12;
    }

    sub_24AC622F0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
  v15 = sub_24ACD0520();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0);
      v23 = sub_24ACD0550();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
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
  result = sub_24ACD0C70();
  __break(1u);
  return result;
}

uint64_t sub_24AC64458(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AC60070(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24AC61BF0(&unk_27EF9E090, &qword_24ACD37C0, &qword_27EF9E338, &qword_24ACD4C50);
      goto LABEL_12;
    }

    sub_24AC62610(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0);
  v15 = sub_24ACD0520();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0);
      v23 = sub_24ACD0550();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
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
  result = sub_24ACD0C70();
  __break(1u);
  return result;
}

uint64_t sub_24AC6471C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AC603D0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24AC61E1C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24AC62930(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_24ACD0D10();
  v10 = qword_24ACD4C88[v4];
  MEMORY[0x24C22D480](v10);
  result = sub_24ACD0D50();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (qword_24ACD4C88[*(*(v8 + 48) + a2)] != v10)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24ACD0C70();
  __break(1u);
  return result;
}

uint64_t sub_24AC64884(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AC6062C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AC61F5C();
      goto LABEL_16;
    }

    sub_24AC62B5C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24ACD0D10();
  sub_24ACD05E0();
  result = sub_24ACD0D50();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24ACD0C40();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24ACD0C70();
  __break(1u);
  return result;
}

uint64_t sub_24AC64A04(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_24ACD0420();
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
    sub_24AC6088C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24AC620B8();
      goto LABEL_12;
    }

    sub_24AC62D94(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0]);
  v15 = sub_24ACD0520();
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
      sub_24AC66384(&unk_2814AE1F0, MEMORY[0x277CC95F0]);
      v23 = sub_24ACD0550();
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
  result = sub_24ACD0C70();
  __break(1u);
  return result;
}

size_t sub_24AC64CA8(size_t a1, int64_t a2, char a3)
{
  result = sub_24AC64D88(a1, a2, a3, *v3, &qword_27EF9DDE0, &qword_24ACD37C8, &qword_27EF9DDE8, &unk_24ACD37D0);
  *v3 = result;
  return result;
}

size_t sub_24AC64CE8(size_t a1, int64_t a2, char a3)
{
  result = sub_24AC64D88(a1, a2, a3, *v3, &unk_27EF9DDD0, &qword_24ACD37B8, &unk_27EF9E090, &qword_24ACD37C0);
  *v3 = result;
  return result;
}

void *sub_24AC64D28(void *a1, int64_t a2, char a3)
{
  result = sub_24AC64F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24AC64D48(size_t a1, int64_t a2, char a3)
{
  result = sub_24AC650B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AC64D68(char *a1, int64_t a2, char a3)
{
  result = sub_24AC65290(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24AC64D88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_24AC64F70(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E308, &qword_24ACD4C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E310, &qword_24ACD4C28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24AC650B8(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E328, &qword_24ACD4C40);
  v10 = *(sub_24ACD0420() - 8);
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
  v15 = *(sub_24ACD0420() - 8);
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

char *sub_24AC65290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E318, &qword_24ACD4C30);
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

uint64_t sub_24AC65400(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(char *, char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = *(a1 + 16);
  v19 = sub_24AC2B6A8(a4, a2, a3);
  result = MEMORY[0x24C22D040](v18, v10, v19);
  v27 = result;
  if (v18)
  {
    v21 = v11 + 16;
    v26 = *(v11 + 16);
    v22 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v23 = *(v11 + 72);
    v24 = a5;
    v25 = (v21 - 8);
    do
    {
      v26(v15, v22, v10);
      v24(v17, v15);
      (*v25)(v17, v10);
      v22 += v23;
      --v18;
    }

    while (v18);
    return v27;
  }

  return result;
}

uint64_t sub_24AC655B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24AC66330();
  result = MEMORY[0x24C22D040](v2, &type metadata for CentralManager.State, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_24AC5A0D8(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24AC6562C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C22D040](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AC5A1F0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24AC656C4(uint64_t a1)
{
  v2 = sub_24ACD0420();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0]);
  result = MEMORY[0x24C22D040](v10, v2, v11);
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
      sub_24AC5A340(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_24AC65860(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 88) = a3;
  *(v4 + 16) = a1;
  v5 = sub_24ACD0420();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC65990, 0, 0);
}

uint64_t sub_24AC65990()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v12 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v11 = *(v0 + 88);
  v8 = *(v0 + 16);
  swift_defaultActor_initialize();
  swift_weakInit();
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockCharacteristics) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_characteristics) = MEMORY[0x277D84F98];
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_discoveryInProgress) = 0;
  v9 = (v6 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 10000000000000000;
  swift_weakAssign();
  (*(v5 + 16))(v3, v7, v4);
  type metadata accessor for Service();
  sub_24ACD0000();
  (*(v2 + 32))(v6 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_id, v1, v12);
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_isPrimary) = v11;

  return MEMORY[0x2822009F8](sub_24AC65B14, v6, 0);
}

uint64_t sub_24AC65B14()
{
  v1 = v0[10];
  v2 = v0[7];
  (*(v0[6] + 8))(v0[3], v0[5]);

  v3 = v0[1];
  v4 = v0[4];

  return v3(v4);
}

uint64_t sub_24AC65BEC(uint64_t a1)
{
  *(a1 + 8) = sub_24AC66384(&qword_27EF9E2B0, type metadata accessor for MockService);
  result = sub_24AC66384(&qword_27EF9DFB8, type metadata accessor for MockService);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MockService()
{
  result = qword_27EF9E2C0;
  if (!qword_27EF9E2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AC65D0C()
{
  sub_24AC2AA24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of MockService.setMockingBehavior(_:)(uint64_t a1)
{
  v4 = *(*v1 + 264);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC20274;

  return v8(a1);
}

uint64_t dispatch thunk of MockService.__allocating_init(peripheral:identifier:isPrimary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = (*(v3 + 272) + **(v3 + 272));
  v8 = *(*(v3 + 272) + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AC2A800;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MockService.discover(characteristicIdentifiers:)(uint64_t a1)
{
  v4 = *(*v1 + 280);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

uint64_t dispatch thunk of MockService.subscript.getter(uint64_t a1)
{
  v4 = *(*v1 + 288);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

unint64_t sub_24AC66330()
{
  result = qword_2814AD8E8;
  if (!qword_2814AD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AD8E8);
  }

  return result;
}

uint64_t sub_24AC66384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AC663D0()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_27EF9E380);
  v1 = __swift_project_value_buffer(v0, qword_27EF9E380);
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814AD280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t MockPeripheral.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC665C4@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24AC66618(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_24AC666C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_lastSeen;
  swift_beginAccess();
  v5 = sub_24ACD0360();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24AC66754(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24ACD0360();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_lastSeen;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_24AC6686C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_lastSeen;
  swift_beginAccess();
  v4 = sub_24ACD0360();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24AC668F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_lastSeen;
  swift_beginAccess();
  v4 = sub_24ACD0360();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_24AC669F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

void sub_24AC66A54(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (*a2 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_24AC56E10(v2, v3, v4);
  sub_24AC56E90(v6, v7, v8);
}

id sub_24AC66AEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

__n128 sub_24AC66B48(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v3 = v8;
  v3[2] = v2;
  sub_24AC56E90(v4, v5, v6);
  return result;
}

uint64_t sub_24AC66C18(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24AC66C84()
{
  v1 = (v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_24AC66CDC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24AC66D9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  sub_24AC2B5DC(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  sub_24AC463C4(v14, v15 + v16, a5, a6);
  return swift_endAccess();
}

uint64_t sub_24AC66E90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_24AC2B5DC(v4 + v8, a4, a2, a3);
}

uint64_t sub_24AC66F18(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_24AC463C4(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

BOOL sub_24AC66FEC()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  return *(v0 + v1) == 3;
}

uint64_t sub_24AC67038(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AC67058, v1, 0);
}

uint64_t sub_24AC67058()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC67180, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24AC67180()
{
  v12 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_24ACD0020();
  v3 = sub_24ACD0200();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v10 = 0x1000000000;
  v11 = sub_24ACD01D0();
  sub_24AC6CD24(&v10, 1);
  v6 = v10;
  v7 = v11 | 0x4000000000000000;
  v8 = (v2 + *(type metadata accessor for PeripheralPairingInfo() + 20));
  *v8 = v6;
  v8[1] = v7;

  return MEMORY[0x2822009F8](sub_24AC2D400, v1, 0);
}

uint64_t sub_24AC67274(uint64_t a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = *a1;
  *(v2 + 88) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_24AC672A4, v1, 0);
}

uint64_t sub_24AC672A4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = (v0[8] + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v3;
  v4[1] = v1;
  v4[2] = v2;
  sub_24AC56E10(v3, v1, v2);
  sub_24AC56E90(v5, v6, v7);
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v9 = Strong;
    Strong = sub_24AC67390;
    v10 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](Strong, v9, v10);
}

uint64_t sub_24AC67390()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v4 = (v0[12] + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  sub_24AC56E10(v3, v2, v1);
  sub_24AC56E90(v5, v6, v7);

  v8 = v0[1];

  return v8();
}

uint64_t MockPeripheral.__allocating_init(centralManager:identifier:macAddress:isConnectable:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 120) = a4;
  *(v5 + 48) = a2;
  *(v5 + 56) = a3;
  *(v5 + 40) = a1;
  v6 = sub_24ACD0420();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  *(v5 + 88) = v9;
  v10 = *(v9 - 8);
  *(v5 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v12 = *(v4 + 48);
  v13 = *(v4 + 52);
  *(v5 + 112) = swift_allocObject();

  return MEMORY[0x2822009F8](sub_24AC675A8, 0, 0);
}

uint64_t sub_24AC675A8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v17 = *(v0 + 104);
  v18 = *(v0 + 88);
  v3 = *(v0 + 72);
  v20 = *(v0 + 120);
  v4 = *(v0 + 64);
  v19 = *(v0 + 56);
  v15 = *(v0 + 48);
  v16 = *(v0 + 80);
  v13 = v4;
  v14 = *(v0 + 40);
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress;
  v6 = sub_24ACD0090();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_advertisementData) = 0;
  sub_24ACD0350();
  v7 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  *v7 = 10000000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v8 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  *v8 = 0;
  v8[1] = 0;
  (*(v3 + 56))(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBeaconIdentifier, 1, 1, v4);
  swift_weakInit();
  v9 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_connectContinuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v11 = *(*(v10 - 8) + 56);
  v11(v1 + v9, 1, 1, v10);
  v11(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_cancelConnectContinuation, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockServices) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_services) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_discoveryInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral__isPaired) = 0;
  swift_weakAssign();
  (*(v3 + 16))(v16, v15, v13);
  type metadata accessor for Peripheral();
  sub_24ACD0000();
  (*(v2 + 32))(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id, v17, v18);
  swift_beginAccess();
  sub_24AC46BE8(v19, v1 + v5);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_isConnectable) = v20;
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state) = 1;

  return MEMORY[0x2822009F8](sub_24AC6789C, v1, 0);
}

uint64_t sub_24AC6789C()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  sub_24AC212F4(v5, &qword_27EF9E048, &qword_24ACD5910);
  (*(v3 + 8))(v7, v4);

  v8 = v0[1];
  v9 = v0[14];

  return v8(v9);
}

uint64_t MockPeripheral.init(centralManager:identifier:macAddress:isConnectable:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 120) = a4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  v6 = sub_24ACD0420();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  *(v5 + 104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC67A90, 0, 0);
}

uint64_t sub_24AC67A90()
{
  v1 = *(v0 + 104);
  v17 = *(v0 + 112);
  v18 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v20 = *(v0 + 120);
  v4 = *(v0 + 64);
  v19 = *(v0 + 56);
  v15 = *(v0 + 48);
  v16 = *(v0 + 88);
  v13 = v2;
  v14 = *(v0 + 40);
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress;
  v6 = sub_24ACD0090();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_advertisementData) = 0;
  sub_24ACD0350();
  v7 = (v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  *v7 = 10000000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v8 = (v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  *v8 = 0;
  v8[1] = 0;
  (*(v3 + 56))(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBeaconIdentifier, 1, 1, v2);
  swift_weakInit();
  v9 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_connectContinuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v11 = *(*(v10 - 8) + 56);
  v11(v4 + v9, 1, 1, v10);
  v11(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_cancelConnectContinuation, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockServices) = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_services) = MEMORY[0x277D84F98];
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_discoveryInProgress) = 0;
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral__isPaired) = 0;
  swift_weakAssign();
  (*(v3 + 16))(v16, v15, v13);
  type metadata accessor for Peripheral();
  sub_24ACD0000();
  (*(v1 + 32))(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id, v17, v18);
  swift_beginAccess();
  sub_24AC46BE8(v19, v4 + v5);
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_isConnectable) = v20;
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state) = 1;

  return MEMORY[0x2822009F8](sub_24AC67D84, v4, 0);
}

uint64_t sub_24AC67D84()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  sub_24AC212F4(v5, &qword_27EF9E048, &qword_24ACD5910);
  (*(v3 + 8))(v6, v4);

  v8 = v0[1];
  v9 = v0[8];

  return v8(v9);
}

uint64_t sub_24AC67E4C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockServices);
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockServices) = a1;
}

uint64_t sub_24AC67E90()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC67F2C, v0, 0);
}

uint64_t sub_24AC67F2C()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = 20;
  v2 = type metadata accessor for Peripheral.Options();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_24AC2F5A4;
  v4 = *(v0 + 16);

  return sub_24AC68008();
}

uint64_t sub_24AC68008()
{
  *(v1 + 64) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC680A4, v0, 0);
}

uint64_t sub_24AC680A4()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  if (*(v1 + v2) != 3)
  {
    if (*(v0[8] + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_isConnectable) == 1 && (Strong = swift_weakLoadStrong(), (v0[10] = Strong) != 0))
    {
      v4 = Strong;
      v6 = v0[8];
      v5 = v0[9];
      v7 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_connectContinuation;
      swift_beginAccess();
      sub_24AC2B5DC(v6 + v7, v5, &qword_27EF9E4F0, &unk_24ACD4130);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
      LODWORD(v6) = (*(*(v8 - 8) + 48))(v5, 1, v8);
      sub_24AC212F4(v5, &qword_27EF9E4F0, &unk_24ACD4130);
      if (v6 == 1)
      {
        v9 = v0[8];
        v10 = sub_24AC6CFB4(&qword_27EF9E3B8, type metadata accessor for MockPeripheral);
        v11 = swift_task_alloc();
        v0[11] = v11;
        *(v11 + 16) = v9;
        *(v11 + 24) = v4;
        v12 = *(MEMORY[0x277D85A40] + 4);
        v13 = swift_task_alloc();
        v0[12] = v13;
        *v13 = v0;
        v13[1] = sub_24AC68498;
        v14 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x2822008A0](v13, v9, v10, 0xD000000000000019, 0x800000024ACD9A90, sub_24AC6CE18, v11, v14);
      }

      type metadata accessor for CentralManager.Error();
      sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      type metadata accessor for CentralManager.Error();
      sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_24AC68498()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_24AC6E9E4;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 64);

    v5 = sub_24AC6E9E8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC685C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_24AC68660;

  return sub_24ACC37E4(a5);
}

uint64_t sub_24AC68660()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_24AC6E9F0, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24AC68794()
{
  *(v1 + 32) = v0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_24AC317A4;

  return sub_24AC68830();
}

uint64_t sub_24AC68830()
{
  *(v1 + 64) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC688CC, v0, 0);
}

uint64_t sub_24AC688CC()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  if (*(v1 + v2) != 1)
  {
    v3 = v0[8];
    Strong = swift_weakLoadStrong();
    v0[10] = Strong;
    if (Strong)
    {
      v5 = Strong;
      v7 = v0[8];
      v6 = v0[9];
      v8 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_cancelConnectContinuation;
      swift_beginAccess();
      sub_24AC2B5DC(v7 + v8, v6, &qword_27EF9E4F0, &unk_24ACD4130);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
      LODWORD(v7) = (*(*(v9 - 8) + 48))(v6, 1, v9);
      sub_24AC212F4(v6, &qword_27EF9E4F0, &unk_24ACD4130);
      if (v7 == 1)
      {
        v10 = v0[8];
        v11 = sub_24AC6CFB4(&qword_27EF9E3B8, type metadata accessor for MockPeripheral);
        v12 = swift_task_alloc();
        v0[11] = v12;
        *(v12 + 16) = v10;
        *(v12 + 24) = v5;
        v13 = *(MEMORY[0x277D85A40] + 4);
        v14 = swift_task_alloc();
        v0[12] = v14;
        *v14 = v0;
        v14[1] = sub_24AC68C44;
        v15 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x2822008A0](v14, v10, v11, 0xD00000000000001ALL, 0x800000024ACD93B0, sub_24AC6CE58, v12, v15);
      }

      type metadata accessor for CentralManager.Error();
      sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      type metadata accessor for CentralManager.Error();
      sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_24AC68C44()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_24AC68DD8;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 64);

    v5 = sub_24AC68D6C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC68D6C()
{
  v1 = v0[10];

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AC68DD8()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[13];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC68E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v31 = a3;
  v32 = a6;
  v29 = a4;
  v30 = a5;
  v28 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v28 - v19;
  v21 = *(v9 + 16);
  v21(&v28 - v19, a1, v8);
  (*(v9 + 56))(v20, 0, 1, v8);
  v22 = *v29;
  swift_beginAccess();
  sub_24AC463C4(v20, a2 + v22, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v23 = sub_24ACD07C0();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  v21(v12, v28, v8);
  v24 = sub_24AC6CFB4(&qword_27EF9E3B8, type metadata accessor for MockPeripheral);
  v25 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = a2;
  *(v26 + 3) = v24;
  *(v26 + 4) = v31;
  *(v26 + 5) = a2;
  (*(v9 + 32))(&v26[v25], v12, v8);
  swift_retain_n();

  sub_24AC7EA6C(0, 0, v16, v32, v26);
}

uint64_t sub_24AC6914C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_24AC691EC;

  return sub_24ACC3CA4(a5);
}

uint64_t sub_24AC691EC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_24AC69320, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24AC69320()
{
  v1 = v0[4];
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  sub_24ACD0750();
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AC693C8()
{
  v1 = *(v0 + 16);
  if (swift_weakLoadStrong())
  {
    v2 = *(v0 + 16);

    v3 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral__isPaired);
    v4 = *(v0 + 8);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v4 = *(v0 + 8);
    v3 = 0;
  }

  return v4(v3);
}

uint64_t sub_24AC694F8()
{
  v1 = *(v0 + 40);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_isPairingCentralManager) == 1)
    {
      v3 = *(v0 + 40);
      v4 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
      swift_beginAccess();
      if (*(v3 + v4) == 3)
      {
        v5 = *(v0 + 40);

        *(v5 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral__isPaired) = 1;
        v6 = *(v0 + 8);
        goto LABEL_8;
      }
    }

    type metadata accessor for CentralManager.Error();
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v6 = *(v0 + 8);
LABEL_8:

  return v6();
}

uint64_t sub_24AC69758()
{
  v1 = *(v0 + 16);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_isPairingCentralManager) == 1)
    {
      v3 = *(v0 + 16);

      *(v3 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral__isPaired) = 0;
      v4 = *(v0 + 8);
      goto LABEL_7;
    }

    type metadata accessor for CentralManager.Error();
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v4 = *(v0 + 8);
LABEL_7:

  return v4();
}

uint64_t sub_24AC698F8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = sub_24ACD0AF0();
  v2[26] = v6;
  v7 = *(v6 - 8);
  v2[27] = v7;
  v8 = *(v7 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC69A5C, v1, 0);
}

uint64_t sub_24AC69A5C()
{
  v1 = v0[18];
  if (swift_weakLoadStrong() && (v2 = v0[18], , v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state, swift_beginAccess(), *(v2 + v3) == 3) && (v4 = v0[18], v5 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_discoveryInProgress, v0[30] = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_discoveryInProgress, (*(v4 + v5) & 1) == 0))
  {
    v15 = (v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
    swift_beginAccess();
    v16 = *v15;
    v0[31] = *v15;
    v17 = v15[1];
    v0[32] = v17;
    v18 = v15[2];
    v0[33] = v18;
    if (v18 < 0)
    {
      v22 = v0[28];
      *(v4 + v5) = 1;
      v23 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      sub_24ACD0CB0();
      v24 = swift_task_alloc();
      v0[34] = v24;
      *v24 = v0;
      v24[1] = sub_24AC69E08;
      v25 = v0[28];
    }

    else
    {
      v19 = v0[29];
      *(v4 + v5) = 1;
      sub_24ACD0CB0();
      v20 = swift_task_alloc();
      v0[36] = v20;
      *v20 = v0;
      v20[1] = sub_24AC69F84;
      v21 = v0[29];
    }

    return sub_24AC59658(v16, v17, 0, 0, 1);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v0[28];
    v6 = v0[29];
    v9 = v0[24];
    v8 = v0[25];
    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[21];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_24AC69E08()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[18];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_24AC6AD10;
  }

  else
  {
    v9 = sub_24AC6AC3C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24AC69F84()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = v2[29];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[18];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_24AC6AB84;
  }

  else
  {
    v9 = sub_24AC6A100;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

unint64_t sub_24AC6A100()
{
  v1 = *(v0 + 144);
  if (*(v0 + 136))
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v107 = sub_24AC653D0(v2);

  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockServices;
  v4 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockServices);
  if (v4 >> 62)
  {
    goto LABEL_36;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v6 = MEMORY[0x277D84F90];
  v129 = v0;
  if (v5)
  {
    v133 = MEMORY[0x277D84F90];
    v7 = v4;

    result = sub_24AC64CE8(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_87;
    }

    v123 = v3;
    v126 = v1;
    v9 = 0;
    v10 = *(v0 + 160);
    v6 = v133;
    v11 = v7;
    v12 = (v10 + 16);
    do
    {
      v13 = *(v0 + 200);
      v14 = *(v0 + 152);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C22D1B0](v9);
        (*v12)(v13, v15 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_id, v14);
        v0 = v129;
        swift_unknownObjectRelease();
      }

      else
      {
        (*v12)(*(v0 + 200), *(v11 + 8 * v9 + 32) + OBJC_IVAR____TtC15FindMyBluetooth11MockService_id, *(v0 + 152));
      }

      v17 = *(v133 + 16);
      v16 = *(v133 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_24AC64CE8(v16 > 1, v17 + 1, 1);
      }

      v18 = *(v0 + 200);
      v19 = *(v0 + 152);
      ++v9;
      *(v133 + 16) = v17 + 1;
      (*(v10 + 32))(v133 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v18, v19);
      v11 = v7;
    }

    while (v5 != v9);

    v3 = v123;
    v1 = v126;
  }

  v127 = sub_24AC653D0(v6);

  v20 = *&v3[v1];
  if (v20 >> 62)
  {
    v38 = *&v3[v1];
    v3 = sub_24ACD0B30();
    v20 = v38;
    v1 = &unk_27EF9E000;
    if (v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v3 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1 = &unk_27EF9E000;
    if (v3)
    {
LABEL_18:
      v116 = v20 & 0xC000000000000001;
      v108 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_services;
      v109 = *(v0 + 144);
      v110 = v20 + 32;
      v111 = v20 & 0xFFFFFFFFFFFFFF8;
      v124 = v127 + 56;
      v112 = *(v0 + 160);
      v113 = v20;
      v21 = (v112 + 8);

      v22 = 0;
      v114 = v3;
      while (1)
      {
        if (v116)
        {
          v4 = MEMORY[0x24C22D1B0](v22, v113);
          v130 = v4;
          v26 = __OFADD__(v22, 1);
          v27 = v22 + 1;
          if (v26)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v22 >= *(v111 + 16))
          {
            goto LABEL_35;
          }

          v130 = *(v110 + 8 * v22);

          v26 = __OFADD__(v22, 1);
          v27 = v22 + 1;
          if (v26)
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v37 = v4;
            v5 = sub_24ACD0B30();
            v4 = v37;
            goto LABEL_6;
          }
        }

        v118 = v27;
        if (*(v127 + 16))
        {
          v1 = v129[19];
          v28 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_id;
          v29 = *(v127 + 40);
          sub_24AC6CE98(&qword_27EF9DFD8);
          v30 = sub_24ACD0520();
          v31 = -1 << *(v127 + 32);
          v0 = v30 & ~v31;
          if ((*(v124 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v0))
          {
            v32 = ~v31;
            v33 = *(v112 + 72);
            v3 = *(v112 + 16);
            while (1)
            {
              v1 = v129[24];
              v34 = v129[19];
              (v3)(v1, *(v127 + 48) + v0 * v33, v34);
              sub_24AC6CE98(&qword_27EF9E140);
              v35 = sub_24ACD0550();
              v36 = *v21;
              (*v21)(v1, v34);
              if (v35)
              {
                break;
              }

              v0 = (v0 + 1) & v32;
              if (((*(v124 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v0) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v0 = v129;
            v1 = v129[24];
            v23 = v129[19];
            (v3)(v1, v130 + v28, v23);
            v3 = v109;
            swift_beginAccess();

            v24 = *&v109[v108];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v134 = *&v109[v108];
            *&v109[v108] = 0x8000000000000000;
            sub_24AC63BC8(v130, v1, isUniquelyReferenced_nonNull_native);
            v36(v1, v23);
            *&v109[v108] = v134;
            swift_endAccess();
          }
        }

LABEL_20:

        v22 = v118;
        if (v118 == v114)
        {

          v0 = v129;
          v1 = 0x27EF9E000;
          break;
        }
      }
    }
  }

  v39 = *(v0 + 160);
  v40 = *(v0 + 144);

  v41 = *(v1 + 928);
  swift_beginAccess();
  v131 = v40;
  v128 = v41;
  v42 = *(v40 + v41);
  v43 = -1;
  v44 = -1 << *(v42 + 32);
  if (-v44 < 64)
  {
    v43 = ~(-1 << -v44);
  }

  v45 = v43 & *(v42 + 64);
  v46 = (63 - v44) >> 6;
  v122 = v39;
  v125 = (v39 + 16);
  v47 = (v39 + 32);
  result = swift_bridgeObjectRetain_n();
  v48 = 0;
  v49 = MEMORY[0x277D84F90];
  if (!v45)
  {
    goto LABEL_43;
  }

  do
  {
LABEL_41:
    while (1)
    {
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = *(*(v42 + 56) + ((v48 << 9) | (8 * v50)));
      if (v51)
      {
        break;
      }

      if (!v45)
      {
        goto LABEL_43;
      }
    }

    v53 = *(v0 + 176);
    v119 = *(v0 + 184);
    v54 = *(v0 + 152);
    (*v125)(v53, v51 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_id, v54);
    v55 = v47;
    v56 = *v47;
    v57 = v119;
    v120 = v55;
    v56(v57, v53, v54);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_24AC1D2F8(0, v49[2] + 1, 1, v49);
    }

    v59 = v49[2];
    v58 = v49[3];
    if (v59 >= v58 >> 1)
    {
      v49 = sub_24AC1D2F8(v58 > 1, v59 + 1, 1, v49);
    }

    v60 = *(v0 + 184);
    v61 = *(v0 + 152);
    v49[2] = v59 + 1;
    result = (v56)(v49 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v59, v60, v61);
    v47 = v120;
  }

  while (v45);
  while (1)
  {
LABEL_43:
    v52 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_84;
    }

    if (v52 >= v46)
    {
      break;
    }

    v45 = *(v42 + 64 + 8 * v52);
    ++v48;
    if (v45)
    {
      v48 = v52;
      goto LABEL_41;
    }
  }

  v62 = sub_24AC653D0(v49);

  if (*(v62 + 16) <= *(v107 + 16) >> 3)
  {
    sub_24AC5A844(v62);

    v63 = v107;
  }

  else
  {
    v63 = sub_24AC5B4D0(v62, v107);
  }

  v64 = *(v0 + 160);
  v65 = v63 + 56;
  v66 = -1 << *(v63 + 32);
  if (-v66 < 64)
  {
    v67 = ~(-1 << -v66);
  }

  else
  {
    v67 = -1;
  }

  v68 = v67 & *(v63 + 56);
  result = swift_beginAccess();
  v69 = 0;
  v70 = (63 - v66) >> 6;
  v115 = (v64 + 8);
  v117 = v63 + 56;
  v121 = v63;
  while (v68)
  {
LABEL_67:
    v76 = *(v0 + 168);
    v77 = *(v122 + 72);
    v78 = *(v63 + 48) + v77 * (__clz(__rbit64(v68)) | (v69 << 6));
    v79 = *(v122 + 16);
    v79(v76, v78, *(v0 + 152));
    v80 = *(v131 + v128);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v135 = *(v131 + v128);
    v82 = v135;
    *(v131 + v128) = 0x8000000000000000;
    result = sub_24AC2ACC8(v76);
    v84 = v135[2];
    v85 = (v83 & 1) == 0;
    v26 = __OFADD__(v84, v85);
    v86 = v84 + v85;
    if (v26)
    {
      goto LABEL_85;
    }

    v87 = v83;
    if (v135[3] < v86)
    {
      v88 = v129[21];
      sub_24AC5CDB4(v86, v81);
      v82 = v135;
      result = sub_24AC2ACC8(v88);
      if ((v87 & 1) != (v89 & 1))
      {
        v106 = v129[19];

        return sub_24ACD0C80();
      }

LABEL_72:
      if (v87)
      {
        goto LABEL_60;
      }

      goto LABEL_73;
    }

    if (v81)
    {
      goto LABEL_72;
    }

    v95 = result;
    sub_24AC5EAE8();
    result = v95;
    v82 = v135;
    if (v87)
    {
LABEL_60:
      v71 = v82[7];
      v72 = *(v71 + 8 * result);
      *(v71 + 8 * result) = 0;
      goto LABEL_61;
    }

LABEL_73:
    v90 = v129[21];
    v91 = v129[19];
    v82[(result >> 6) + 8] |= 1 << result;
    v92 = result;
    result = v79(v82[6] + result * v77, v90, v91);
    *(v82[7] + 8 * v92) = 0;
    v93 = v82[2];
    v26 = __OFADD__(v93, 1);
    v94 = v93 + 1;
    if (v26)
    {
      goto LABEL_86;
    }

    v82[2] = v94;
    v72 = 1;
LABEL_61:
    v68 &= v68 - 1;
    v0 = v129;
    v73 = v129[21];
    v74 = v129[19];
    *(v131 + v128) = v82;
    sub_24AC2B7BC(v72);
    result = (*v115)(v73, v74);
    v65 = v117;
    v63 = v121;
  }

  while (1)
  {
    v75 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v75 >= v70)
    {
      v96 = *(v0 + 232);
      v97 = *(v0 + 240);
      v98 = *(v0 + 224);
      v100 = *(v0 + 192);
      v99 = *(v0 + 200);
      v102 = *(v0 + 176);
      v101 = *(v0 + 184);
      v132 = *(v0 + 168);
      v103 = *(v0 + 144);
      swift_endAccess();

      *(v103 + v97) = 0;

      v104 = *(v0 + 8);
      v105 = MEMORY[0x277D84F90];

      return v104(v105);
    }

    v68 = *(v65 + 8 * v75);
    ++v69;
    if (v68)
    {
      v69 = v75;
      goto LABEL_67;
    }
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_24AC6AB84()
{
  v1 = v0[37];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AC6AC3C()
{
  v1 = v0[33];
  *(v0[18] + v0[30]) = 0;
  swift_willThrow();
  v2 = v0[33];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AC6AD10()
{
  sub_24AC56E90(v0[31], v0[32], v0[33]);
  v1 = v0[35];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AC6ADD4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC6ADF4, v1, 0);
}

uint64_t sub_24AC6ADF4()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_services;
  *(v0 + 56) = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_services;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = *(v0 + 40);

    v5 = sub_24AC2ACC8(v4);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);

      if (v7)
      {
        v8 = *(v0 + 8);

        return v8(v7);
      }
    }

    else
    {
    }
  }

  v10 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9DDD0, &qword_24ACD37B8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  *(v0 + 64) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = *(v12 + 80);
  *(v0 + 96) = v14;
  v15 = (v14 + 32) & ~v14;
  v16 = swift_allocObject();
  *(v0 + 72) = v16;
  *(v16 + 16) = xmmword_24ACD39E0;
  (*(v12 + 16))(v16 + v15, v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v17[1] = sub_24AC6B014;
  v18 = *(v0 + 48);

  return sub_24AC698F8(v16);
}

uint64_t sub_24AC6B014()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v12 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_24AC59164;
  }

  else
  {
    v6 = *(v2 + 96);
    v8 = *(v2 + 64);
    v7 = *(v2 + 72);
    v9 = *(v2 + 48);

    swift_setDeallocating();
    v10 = *(v7 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v5 = sub_24AC6B188;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC6B188()
{
  v1 = *(v0[6] + v0[7]);
  if (*(v1 + 16))
  {
    v2 = v0[5];
    v3 = *(v0[6] + v0[7]);

    v4 = sub_24AC2ACC8(v2);
    if (v5)
    {
      v6 = *(*(v1 + 56) + 8 * v4);

      if (v6)
      {
        v7 = v0[1];

        return v7(v6);
      }
    }

    else
    {
    }
  }

  type metadata accessor for CentralManager.Error();
  sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v9 = v0[1];

  return v9();
}

uint64_t sub_24AC6B2E4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC6B380, v1, 0);
}

uint64_t sub_24AC6B380()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_24ACD0090();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress;
  swift_beginAccess();
  sub_24AC463C4(v1, v2 + v6, &qword_27EF9E048, &qword_24ACD5910);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AC6B4B0()
{
  v1[8] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v1[11] = v3;
  v4 = *(v3 - 8);
  v1[12] = v4;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC6B5C0, v0, 0);
}

uint64_t sub_24AC6B5C0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AC212F4(v0[10], &qword_27EF9E4F0, &unk_24ACD4130);
    if (qword_27EF9DC50 != -1)
    {
      swift_once();
    }

    v6 = sub_24ACD0490();
    __swift_project_value_buffer(v6, qword_27EF9E380);
    v7 = sub_24ACD0470();
    v8 = sub_24ACD0910();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AC18000, v7, v8, "Missing connectContinuation!", v9, 2u);
      MEMORY[0x24C22DC60](v9, -1, -1);
    }
  }

  else
  {
    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[11];
    v13 = v0[9];
    (*(v11 + 32))(v10, v0[10], v12);
    sub_24ACD0760();
    (*(v11 + 8))(v10, v12);
    (*(v11 + 56))(v13, 1, 1, v12);
    swift_beginAccess();
    sub_24AC463C4(v13, v4 + v5, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();
  }

  v14 = v0[13];
  v15 = v0[9];
  v16 = v0[10];

  v17 = v0[1];

  return v17();
}

uint64_t sub_24AC6B820(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC6B930, v1, 0);
}

uint64_t sub_24AC6B930()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AC212F4(v0[12], &qword_27EF9E4F0, &unk_24ACD4130);
    if (qword_27EF9DC50 != -1)
    {
      swift_once();
    }

    v6 = sub_24ACD0490();
    __swift_project_value_buffer(v6, qword_27EF9E380);
    v7 = sub_24ACD0470();
    v8 = sub_24ACD0910();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AC18000, v7, v8, "Missing connectContinuation!", v9, 2u);
      MEMORY[0x24C22DC60](v9, -1, -1);
    }
  }

  else
  {
    v10 = v0[9];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];
    if (v10)
    {
      v14 = v0[9];
      v0[8] = v14;
      v15 = v14;
      sub_24ACD0750();
    }

    else
    {
      v16 = v0[13];
      sub_24ACD0760();
    }

    (*(v12 + 8))(v11, v13);
    v17 = v0[11];
    (*(v0[14] + 56))(v17, 1, 1, v0[13]);
    swift_beginAccess();
    sub_24AC463C4(v17, v4 + v5, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();
  }

  v18 = v0[15];
  v19 = v0[11];
  v20 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_24AC6BBAC(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC6BCBC, v1, 0);
}

uint64_t sub_24AC6BCBC()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_cancelConnectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AC212F4(v0[12], &qword_27EF9E4F0, &unk_24ACD4130);
    if (qword_27EF9DC50 != -1)
    {
      swift_once();
    }

    v6 = sub_24ACD0490();
    __swift_project_value_buffer(v6, qword_27EF9E380);
    v7 = sub_24ACD0470();
    v8 = sub_24ACD0910();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AC18000, v7, v8, "Missing cancelConnectContinuation!", v9, 2u);
      MEMORY[0x24C22DC60](v9, -1, -1);
    }
  }

  else
  {
    v10 = v0[9];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];
    if (v10)
    {
      v14 = v0[9];
      v0[8] = v14;
      v15 = v14;
      sub_24ACD0750();
    }

    else
    {
      v16 = v0[13];
      sub_24ACD0760();
    }

    (*(v12 + 8))(v11, v13);
    v17 = v0[11];
    (*(v0[14] + 56))(v17, 1, 1, v0[13]);
    swift_beginAccess();
    sub_24AC463C4(v17, v4 + v5, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();
  }

  v18 = v0[15];
  v19 = v0[11];
  v20 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t MockPeripheral.deinit()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress, &qword_27EF9E048, &qword_24ACD5910);
  v3 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_advertisementData);

  v4 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_lastSeen;
  v5 = sub_24ACD0360();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_24AC56E90(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior + 8), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior + 16));
  v6 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber + 8);

  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBeaconIdentifier, &qword_27EF9EC40, &qword_24ACD8620);
  swift_weakDestroy();
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_connectContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_cancelConnectContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  v7 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockServices);

  v8 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_services);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MockPeripheral.__deallocating_deinit()
{
  MockPeripheral.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC6C118@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC6C19C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC6C1BC, v1, 0);
}

uint64_t sub_24AC6C1BC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v3, v2, &qword_27EF9E048, &qword_24ACD5910);
  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC6C268(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC6C288, v1, 0);
}

uint64_t sub_24AC6C288()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *v1 = *(v2 + v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC6C310(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC6C330, v1, 0);
}

uint64_t sub_24AC6C330()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_lastSeen;
  swift_beginAccess();
  v4 = sub_24ACD0360();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC6C3FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AC6C41C, v1, 0);
}

uint64_t sub_24AC6C41C()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC6C544, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24AC6C544()
{
  v12 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_24ACD0020();
  v3 = sub_24ACD0200();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v10 = 0x1000000000;
  v11 = sub_24ACD01D0();
  sub_24AC6CD24(&v10, 1);
  v6 = v10;
  v7 = v11 | 0x4000000000000000;
  v8 = (v2 + *(type metadata accessor for PeripheralPairingInfo() + 20));
  *v8 = v6;
  v8[1] = v7;

  return MEMORY[0x2822009F8](sub_24AC47C24, v1, 0);
}

uint64_t sub_24AC6C638()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC6C6D4, v0, 0);
}

uint64_t sub_24AC6C6D4()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = 20;
  v2 = type metadata accessor for Peripheral.Options();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_24AC38644;
  v4 = *(v0 + 16);

  return sub_24AC68008();
}

uint64_t sub_24AC6C7B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24AC68008();
}

uint64_t sub_24AC6C83C()
{
  *(v1 + 32) = v0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_24AC315CC;

  return sub_24AC68830();
}

uint64_t sub_24AC6C8D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC20274;

  return sub_24AC68830();
}

uint64_t sub_24AC6C984()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24AC694D8();
}

uint64_t sub_24AC6CA10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24AC69738();
}

uint64_t sub_24AC6CA9C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC6E9F4, v1, 0);
}

uint64_t sub_24AC6CB38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC1E290;

  return sub_24AC698F8(a1);
}

uint64_t sub_24AC6CBCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC6ADD4(a1);
}

uint64_t sub_24AC6CC60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC283BC;

  return sub_24AC8106C();
}

uint64_t sub_24AC6CD24(int *a1, int a2)
{
  result = sub_24ACD0250();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_24ACD01C0();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_24ACD01F0();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_24ACD01E0();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t type metadata accessor for MockPeripheral()
{
  result = qword_27EF9E3D0;
  if (!qword_27EF9E3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AC6CE98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF9E090, &qword_24ACD37C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AC6CF30(uint64_t a1)
{
  *(a1 + 8) = sub_24AC6CFB4(&qword_27EF9E3C8, type metadata accessor for MockPeripheral);
  result = sub_24AC6CFB4(&qword_27EF9E100, type metadata accessor for MockPeripheral);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24AC6CFB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_24AC2B5DC(v8 + v9, a5, a3, a4);
}

void sub_24AC6D0BC()
{
  sub_24AC6E578(319, &qword_2814AE260, type metadata accessor for Peripheral, MEMORY[0x277D088B0]);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_24AC6E578(319, &qword_2814AE218, MEMORY[0x277D088D0], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_24ACD0360();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_24AC6E578(319, &qword_27EF9E3E0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_24AC2AA7C();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of MockPeripheral.pairingInfo.getter(uint64_t a1)
{
  v4 = *(*v1 + 544);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC20274;

  return v8(a1);
}

uint64_t dispatch thunk of MockPeripheral.setMockingBehavior(_:)(uint64_t a1)
{
  v4 = *(*v1 + 552);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t dispatch thunk of MockPeripheral.__allocating_init(centralManager:identifier:macAddress:isConnectable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = (*(v4 + 560) + **(v4 + 560));
  v10 = *(*(v4 + 560) + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24AC2A800;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MockPeripheral.connect()()
{
  v2 = *(*v0 + 576);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return v6();
}

uint64_t dispatch thunk of MockPeripheral.connect(useCase:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 584);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AC214AC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MockPeripheral.cancelConnection()()
{
  v2 = *(*v0 + 592);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return v6();
}

uint64_t dispatch thunk of MockPeripheral.cancelConnection(options:)(uint64_t a1)
{
  v4 = *(*v1 + 600);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t dispatch thunk of MockPeripheral.isPaired.getter()
{
  v2 = *(*v0 + 608);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC2A800;

  return v6();
}

uint64_t dispatch thunk of MockPeripheral.pair()()
{
  v2 = *(*v0 + 616);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return v6();
}

uint64_t dispatch thunk of MockPeripheral.unpair()()
{
  v2 = *(*v0 + 624);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return v6();
}

uint64_t dispatch thunk of MockPeripheral.discover(serviceIdentifiers:)(uint64_t a1)
{
  v4 = *(*v1 + 632);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

uint64_t dispatch thunk of MockPeripheral.subscript.getter(uint64_t a1)
{
  v4 = *(*v1 + 640);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

uint64_t dispatch thunk of MockPeripheral.set(macAddress:)(uint64_t a1)
{
  v4 = *(*v1 + 656);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

void sub_24AC6E578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AC6E5FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 16) >> 57) >> 6) | (2 * ((*(a1 + 16) >> 57) & 0x38 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AC6E658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_24AC6E6E4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AC20274;

  return sub_24AC6914C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroyTm_2()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AC6E8D4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AC214AC;

  return sub_24AC685C0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t CharacteristicProtocol.isolatedDescription.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_24ACD0A20();
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v21 = v2;
  v10 = *(a2 + 16);
  v11 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v12 = MEMORY[0x24C22D370](a1, v10);
  MEMORY[0x24C22CD50](v12);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(a2 + 24))(a1, a2);
  sub_24AC537F4();
  v13 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v13);

  (*(v6 + 8))(v9, v5);
  MEMORY[0x24C22CD50](0x7265706F7270202CLL, 0xEF203D2073656974);
  (*(a2 + 32))(&v21, a1, a2);
  v14 = Characteristic.Properties.description.getter();
  MEMORY[0x24C22CD50](v14);

  MEMORY[0x24C22CD50](0xD000000000000010, 0x800000024ACD9DF0);
  v15 = (*(a2 + 40))(a1, a2);
  v16 = (v15 & 1) == 0;
  if (v15)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  MEMORY[0x24C22CD50](v17, v18);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v22;
}

uint64_t CharacteristicProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_24ACD0A20();

  v17 = 60;
  v18 = 0xE100000000000000;
  v16 = v2;
  v10 = *(a2 + 16);
  v11 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v12 = MEMORY[0x24C22D370](a1, v10);
  MEMORY[0x24C22CD50](v12);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(a2 + 24))(a1, a2);
  sub_24AC537F4();
  v13 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v13);

  (*(v6 + 8))(v9, v5);
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v17;
}

uint64_t dispatch thunk of CharacteristicProtocol.mtu.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC2A800;

  return v9(a1, a2);
}

uint64_t dispatch thunk of CharacteristicProtocol.read()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CharacteristicProtocol.readUnderlying()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC20274;

  return v9(a1, a2);
}

uint64_t dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CharacteristicProtocol.write(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AC214AC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CharacteristicProtocol.notify()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3);
}

uint64_t TLVSequence.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_24ACD0300();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v12)
    {
      goto LABEL_10;
    }

    v13 = BYTE6(a2);
    if (BYTE6(a2))
    {
LABEL_8:
      do
      {
        v16 = sub_24AC7055C(v13, 0);
        v17 = sub_24ACD0270();
        sub_24AC46698(a1, a2);
        v18 = *(v7 + 8);
        v7 += 8;
        result = v18(v11, v6);
        if (v17 == v13)
        {
          goto LABEL_13;
        }

        __break(1u);
LABEL_10:
        v19 = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_15;
        }

        v13 = v19;
      }

      while (v19);
    }

LABEL_12:
    result = sub_24AC46698(a1, a2);
    v16 = MEMORY[0x277D84F90];
LABEL_13:
    *a3 = v16;
    a3[1] = 0;
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_12;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v13 = v14 - v15;
  if (!__OFSUB__(v14, v15))
  {
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t TLVSequence.makeIterator()@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t TLVSequence.next()@<X0>(void *a1@<X8>)
{
  v6 = *v1;
  v7 = v1[1];
  v8 = (*v1)[2];
  if (v7 >= v8)
  {
    goto LABEL_18;
  }

  if (v7 + 1 >= v8)
  {
    v33 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E3E8, &qword_24ACD50A0);
    sub_24AC2B6A8(&qword_27EF9E3F0, &qword_27EF9E3E8, &qword_24ACD50A0);
    v3 = sub_24ACD0180();
    v2 = v17;
    if (qword_2814AD278 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_10:
    v18 = sub_24ACD0490();
    __swift_project_value_buffer(v18, qword_2814AD280);

    v19 = sub_24ACD0470();
    v20 = sub_24ACD0910();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136446210;
      v23 = sub_24AC29E20(v3, v2, &v33);

      *(v21 + 4) = v23;
      v24 = "Missing length: %{public}s";
      v25 = v20;
      v26 = v19;
      v27 = v21;
      v28 = 12;
LABEL_15:
      _os_log_impl(&dword_24AC18000, v26, v25, v24, v27, v28);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C22DC60](v22, -1, -1);
      MEMORY[0x24C22DC60](v21, -1, -1);
LABEL_17:

LABEL_18:
      v4 = 0;
      result = 0;
      v9 = 0;
      v11 = 0;
      v15 = 0;
      goto LABEL_19;
    }

LABEL_16:

    goto LABEL_17;
  }

  v9 = (v6 + 4);
  v10 = *(v6 + v7 + 33);
  v11 = v7 + 2;
  v12 = v7 + 2 + v10;
  if (__OFADD__(v7 + 2, v10))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v12 < v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = *(v9 + v7);
  if (v12 - 1 >= v8)
  {
    v33 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E3E8, &qword_24ACD50A0);
    sub_24AC2B6A8(&qword_27EF9E3F0, &qword_27EF9E3E8, &qword_24ACD50A0);
    v11 = sub_24ACD0180();
    v9 = v29;
    if (qword_2814AD278 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  v13 = __OFADD__(v7, v10 + 2);
  v14 = v7 + v10 + 2;
  if (v13)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
LABEL_13:
    v30 = sub_24ACD0490();
    __swift_project_value_buffer(v30, qword_2814AD280);

    v19 = sub_24ACD0470();
    v31 = sub_24ACD0910();

    if (os_log_type_enabled(v19, v31))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 16777986;
      *(v21 + 4) = v4;
      *(v21 + 5) = 256;
      *(v21 + 7) = v10;
      *(v21 + 8) = 2082;
      v32 = sub_24AC29E20(v11, v9, &v33);

      *(v21 + 10) = v32;
      v24 = "Truncated data for T:%hhu L:%hhu: %{public}s";
      v25 = v31;
      v26 = v19;
      v27 = v21;
      v28 = 18;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v15 = (2 * v12) | 1;
  v1[1] = v14;

LABEL_19:
  *a1 = v4;
  a1[1] = result;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v15;
  return result;
}

uint64_t sub_24AC6FB34(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v69 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 >= 2)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
LABEL_21:
    v22 = sub_24ACD0490();
    __swift_project_value_buffer(v22, qword_2814AD280);
    sub_24AC46630(v4, v3);
    v11 = sub_24ACD0470();
    v12 = sub_24ACD0910();
    sub_24AC46698(v4, v3);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v64[0] = v14;
      *v13 = 136446210;
      v65 = v4;
      v66 = v3;
      sub_24AC467AC();
      v23 = sub_24ACD0180();
      v25 = sub_24AC29E20(v23, v24, v64);

      *(v13 + 4) = v25;
      v18 = "TLV too large: %{public}s";
      goto LABEL_30;
    }

LABEL_31:

    result = sub_24AC9EFAC(MEMORY[0x277D84F90]);
LABEL_32:
    v31 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_13;
      }

LABEL_8:
      if (qword_2814AD278 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_57;
    }

    goto LABEL_59;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_8;
  }

LABEL_13:
  if (v5 == 2)
  {
    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v8 = __OFSUB__(v19, v20);
    v21 = v19 - v20;
    if (v8)
    {
      goto LABEL_62;
    }

    if (v21 > 31)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v5 == 1)
    {
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        if (HIDWORD(a1) - a1 <= 31)
        {
          goto LABEL_24;
        }

LABEL_20:
        if (qword_2814AD278 == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_60;
      }

      __break(1u);
LABEL_62:
      __break(1u);
    }

    if (BYTE6(a2) > 0x1FuLL)
    {
      goto LABEL_20;
    }
  }

LABEL_24:
  if (sub_24ACD02B0() != 76 || sub_24ACD02B0())
  {
    if (qword_2814AD278 != -1)
    {
      swift_once();
    }

    v26 = sub_24ACD0490();
    __swift_project_value_buffer(v26, qword_2814AD280);
    sub_24AC46630(v4, v3);
    v11 = sub_24ACD0470();
    v12 = sub_24ACD0910();
    sub_24AC46698(v4, v3);
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_31;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v64[0] = v14;
    *v13 = 136446210;
    v65 = v4;
    v66 = v3;
    sub_24AC467AC();
    v27 = sub_24ACD0180();
    v29 = sub_24AC29E20(v27, v28, v64);

    *(v13 + 4) = v29;
    v18 = "Not parsing non-Apple TLV data: %{public}s";
    goto LABEL_30;
  }

  if (v5 == 2)
  {
    v32 = *(v4 + 24);
  }

  else if (v5 == 1)
  {
    v32 = v4 >> 32;
  }

  else
  {
    v32 = BYTE6(v3);
  }

  if (v32 >= 2)
  {
    v33 = sub_24ACD02A0();
    TLVSequence.init(_:)(v33, v34, &v65);
    v36 = v65;
    v35 = v66;
    v63 = MEMORY[0x277D84F90];
    sub_24AC64D28(0, 0, 0);
    v3 = v63;
    v61 = v36;
    v62 = v35;

    TLVSequence.next()(&v65);
    v37 = v66;
    if (!v66)
    {
LABEL_52:

      if (*(v3 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E300, &qword_24ACD5DC0);
        v57 = sub_24ACD0B60();
      }

      else
      {
        v57 = MEMORY[0x277D84F98];
      }

      v64[0] = v57;
      sub_24AC7087C(v3, 1, v64);

      result = v64[0];
      goto LABEL_32;
    }

    v38 = sub_24AC2B6A8(&qword_27EF9E410, &qword_27EF9E408, &qword_24ACD5178);
    while (1)
    {
      v39 = v68;
      v58 = v67;
      v40 = v65;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E408, &qword_24ACD5178);
      v64[3] = v41;
      v64[4] = v38;
      v42 = swift_allocObject();
      v64[0] = v42;
      *(v42 + 16) = v37;
      *(v42 + 24) = v58;
      *(v42 + 40) = v39;
      v43 = __swift_project_boxed_opaque_existential_0(v64, v41);
      v4 = v43[2];
      v44 = v43[3] >> 1;
      v45 = v44 - v4;
      if (__OFSUB__(v44, v4))
      {
        break;
      }

      if (v45)
      {
        v46 = v43[1];
        if (v45 < 15)
        {
          memset(__dst, 0, sizeof(__dst));
          v60 = v44 - v4;
          memcpy(__dst, (v46 + v4), v44 - v4);
          v52 = *__dst;
          v2 = v2 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v60 << 16)) << 32);
          v53 = v2;
        }

        else
        {
          v47 = sub_24ACD0200();
          v48 = *(v47 + 48);
          v49 = *(v47 + 52);
          swift_allocObject();
          v50 = sub_24ACD01B0();
          v51 = v50;
          if (v45 >= 0x7FFFFFFF)
          {
            sub_24ACD0280();
            v52 = swift_allocObject();
            *(v52 + 16) = 0;
            *(v52 + 24) = v45;
            v53 = v51 | 0x8000000000000000;
          }

          else
          {
            v52 = v45 << 32;
            v53 = v50 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v52 = 0;
        v53 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_0(v64);
      v63 = v3;
      v55 = *(v3 + 16);
      v54 = *(v3 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_24AC64D28((v54 > 1), v55 + 1, 1);
        v3 = v63;
      }

      *(v3 + 16) = v55 + 1;
      v56 = v3 + 24 * v55;
      *(v56 + 32) = v40;
      *(v56 + 40) = v52;
      *(v56 + 48) = v53;
      TLVSequence.next()(&v65);
      v37 = v66;
      if (!v66)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_57:
    swift_once();
LABEL_9:
    v10 = sub_24ACD0490();
    __swift_project_value_buffer(v10, qword_2814AD280);
    sub_24AC46630(v4, v3);
    v11 = sub_24ACD0470();
    v12 = sub_24ACD0910();
    sub_24AC46698(v4, v3);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v64[0] = v14;
      *v13 = 136446210;
      v65 = v4;
      v66 = v3;
      sub_24AC467AC();
      v15 = sub_24ACD0180();
      v17 = sub_24AC29E20(v15, v16, v64);

      *(v13 + 4) = v17;
      v18 = "No TLV header: %{public}s";
LABEL_30:
      _os_log_impl(&dword_24AC18000, v11, v12, v18, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C22DC60](v14, -1, -1);
      MEMORY[0x24C22DC60](v13, -1, -1);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_24AC702C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E408, &qword_24ACD5178);
  v16[3] = v8;
  v16[4] = sub_24AC2B6A8(&qword_27EF9E410, &qword_27EF9E408, &qword_24ACD5178);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_0(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_24ACC1348((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

void sub_24AC703D8(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_24AC703F4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_24AC705D0();

  return v3;
}

void *sub_24AC70434(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result;
  v12 = a4;
  v13 = a5;
  if (!a2)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_13;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = a5;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = 1;
    while (1)
    {
      TLVSequence.next()(&v14);
      v9 = v15;
      if (!v15)
      {
        a4 = v12;
        a5 = v13;
        v6 = v8 - 1;
        goto LABEL_13;
      }

      v10 = v16;
      *v7 = v14;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 24) = v17;
      if (v6 == v8)
      {
        break;
      }

      v7 += 40;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 = v12;
    a5 = v13;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

double sub_24AC70518@<D0>(uint64_t a1@<X8>)
{
  TLVSequence.next()(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void *sub_24AC7055C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDF0, &qword_24ACD8480);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_24AC705D0()
{

  result = TLVSequence.next()(&v21);
  v1 = v22;
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (v22)
  {
    v4 = v24;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = v23;
    while (1)
    {
      v7 = v21;
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v20 = v4;
        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E400, &qword_24ACD5170);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 40;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[5 * v14 + 4])
          {
            memmove(v11 + 4, v2 + 4, 40 * v14);
          }

          v2[2] = 0;
        }

        v5 = v13 + 40 * v14;
        v3 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v2 = v11;
        v4 = v20;
      }

      v16 = __OFSUB__(v3--, 1);
      if (v16)
      {
        break;
      }

      *v5 = v7;
      *(v5 + 8) = v1;
      *(v5 + 16) = v6;
      *(v5 + 24) = v4;
      result = TLVSequence.next()(&v21);
      v1 = v22;
      v6 = v23;
      v5 += 40;
      v4 = v24;
      if (!v22)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v17 = v2[3];
  if (v17 < 2)
  {
    return v2;
  }

  v18 = v17 >> 1;
  v16 = __OFSUB__(v18, v3);
  v19 = v18 - v3;
  if (!v16)
  {
    v2[2] = v19;
    return v2;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_24AC70788()
{
  result = qword_27EF9E3F8;
  if (!qword_27EF9E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E3F8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24AC707E8(uint64_t *a1, int a2)
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

uint64_t sub_24AC70830(uint64_t result, int a2, int a3)
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

unint64_t sub_24AC7087C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 32);
  v9 = *(result + 40);
  v8 = *(result + 48);
  result = sub_24AC46630(v9, v8);
  if (v8 >> 60 == 15)
  {
    return result;
  }

  v10 = *a3;
  result = sub_24AC2ADA0(v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_24AC5D1A8(v15, a2 & 1);
    v17 = *a3;
    result = sub_24AC2ADA0(v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    result = sub_24ACD0C80();
    __break(1u);
  }

  if (a2)
  {
LABEL_8:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v23 = result;
  sub_24AC5ED7C();
  result = v23;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
LABEL_12:
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v7;
    v24 = (v19[7] + 16 * result);
    *v24 = v9;
    v24[1] = v8;
    v25 = v19[2];
    v14 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v14)
    {
      v19[2] = v26;
      v16 = v3 - 1;
      if (v3 == 1)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
    return result;
  }

LABEL_9:
  v20 = (v19[7] + 16 * result);
  v21 = *v20;
  v22 = v20[1];
  *v20 = v9;
  v20[1] = v8;
  result = sub_24AC46698(v21, v22);
  v16 = v3 - 1;
  if (v3 == 1)
  {
    return result;
  }

LABEL_15:
  v3 = (v6 + 72);
  a2 = 1;
  do
  {
    v9 = *(v3 - 16);
    v8 = *(v3 - 1);
    v6 = *v3;
    result = sub_24AC46630(v8, *v3);
    if (v6 >> 60 == 15)
    {
      break;
    }

    v30 = *a3;
    result = sub_24AC2ADA0(v9);
    v32 = v30[2];
    v33 = (v31 & 1) == 0;
    v14 = __OFADD__(v32, v33);
    v34 = v32 + v33;
    if (v14)
    {
      goto LABEL_25;
    }

    v7 = v31;
    if (v30[3] < v34)
    {
      sub_24AC5D1A8(v34, 1);
      v35 = *a3;
      result = sub_24AC2ADA0(v9);
      if ((v7 & 1) != (v36 & 1))
      {
        goto LABEL_6;
      }
    }

    v37 = *a3;
    if (v7)
    {
      v27 = (v37[7] + 16 * result);
      v28 = *v27;
      v29 = v27[1];
      *v27 = v8;
      v27[1] = v6;
      result = sub_24AC46698(v28, v29);
    }

    else
    {
      v37[(result >> 6) + 8] |= 1 << result;
      *(v37[6] + result) = v9;
      v38 = (v37[7] + 16 * result);
      *v38 = v8;
      v38[1] = v6;
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      v37[2] = v40;
    }

    v3 += 3;
    --v16;
  }

  while (v16);
  return result;
}

uint64_t ConnectUseCase.hashValue.getter()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

unint64_t ConnectUseCase.description.getter()
{
  result = 0x41794D646E69662ELL;
  switch(*v0)
  {
    case 1:
    case 0xD:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x50794D646E69662ELL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0x55794D646E69662ELL;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0xD000000000000012;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    case 0x10:
      result = 0x726961706E752ELL;
      break;
    case 0x11:
      result = 0x48726961706E752ELL;
      break;
    case 0x12:
    case 0x13:
      result = 0x756F5379616C702ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24AC70DB8()
{
  result = qword_27EF9E418;
  if (!qword_27EF9E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E418);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectUseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ServiceProtocol.isolatedDescription.getter(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v5 = sub_24ACD0420();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = *(*(a2 + 8) + 8);
  v13 = sub_24ACD0740();

  return MEMORY[0x2822009F8](sub_24AC710B4, v13, v12);
}

uint64_t sub_24AC710B4()
{
  v1 = v0[11];
  v2 = v0[9];
  v20 = v0[8];
  v3 = v0[7];
  v21 = v0[6];
  v22 = v0[10];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  sub_24ACD0A20();

  v0[2] = v5;
  v7 = *(v4 + 16);
  v8 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v9 = MEMORY[0x24C22D370](v6, v7);
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(v4 + 40))(v6, v4);
  sub_24AC716B4();
  v10 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v11 = shortCBUUIDDescription(uuid:)(v20);
  v13 = v12;
  (*(v3 + 8))(v20, v21);
  MEMORY[0x24C22CD50](v11, v13);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  (*(v22 + 8))(v1, v2);
  MEMORY[0x24C22CD50](91, 0xE100000000000000);

  MEMORY[0x24C22CD50](0x6D6972507369202CLL, 0xED0000203A797261);
  v14 = (*(v4 + 48))(v6, v4);
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x24C22CD50](v16, v17);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);

  v18 = v0[1];

  return v18(60, 0xE100000000000000);
}

uint64_t ServiceProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v24 = sub_24ACD0420();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_24ACD0A20();

  v27 = 60;
  v28 = 0xE100000000000000;
  v25 = v2;
  v13 = *(a2 + 16);
  v14 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v14);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v15 = MEMORY[0x24C22D370](a1, v13);
  MEMORY[0x24C22CD50](v15);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(a2 + 40))(a1, a2);
  v25 = 91;
  v26 = 0xE100000000000000;
  sub_24AC716B4();
  v16 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v16);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v17 = shortCBUUIDDescription(uuid:)(v8);
  v19 = v18;
  (*(v5 + 8))(v8, v24);
  MEMORY[0x24C22CD50](v17, v19);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  v20 = v25;
  v21 = v26;
  (*(v23 + 8))(v12, v9);
  MEMORY[0x24C22CD50](v20, v21);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v27;
}

unint64_t sub_24AC716B4()
{
  result = qword_27EF9E0D0;
  if (!qword_27EF9E0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF9E090, &qword_24ACD37C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E0D0);
  }

  return result;
}

uint64_t Identifier.init(stringLiteral:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620) - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v47 = &v46 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v46 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v19 = sub_24ACD0420();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a4;
  v24 = sub_24ACCFFF0();
  if (v24 != __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0) && v24 != __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0))
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_24ACD0A20();
    MEMORY[0x24C22CD50](0xD000000000000061, 0x800000024ACD9FF0);
    v51 = v24;
    swift_getMetatypeMetadata();
    v41 = sub_24ACD05A0();
    LOBYTE(v24) = v42;
    MEMORY[0x24C22CD50](v41);

    goto LABEL_36;
  }

  sub_24ACD03B0();
  v50 = *(v20 + 48);
  if (v50(v18, 1, v19) == 1)
  {
    sub_24AC563B4(v18);
    goto LABEL_36;
  }

  LOBYTE(v24) = a3;
  v25 = v23;
  (*(v20 + 32))(v23, v18, v19);
  if (v24)
  {
    goto LABEL_17;
  }

  if (!a1)
  {
    __break(1u);
LABEL_17:
    v32 = HIDWORD(a1);
    if (HIDWORD(a1))
    {
      goto LABEL_26;
    }

    v26 = a1;
    if ((a1 & 0xFFFFF800) == 0xD800)
    {
      __break(1u);
      goto LABEL_35;
    }

    v32 = a1 >> 16;
    if (a1 >> 16 > 0x10)
    {
      goto LABEL_27;
    }

    if (a1 > 0x7F)
    {
      goto LABEL_28;
    }

    v37 = a1 + 1;
    while (1)
    {
      v52 = (v37 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v37) >> 3))));
      sub_24ACD05D0();
      if ((v24 & 2) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        v38 = (v26 & 0x3F) << 8;
        if (v26 <= 0x7FF)
        {
          v39 = (v26 >> 6) + v38;
          v40 = 33217;
          goto LABEL_30;
        }
      }

      else
      {
LABEL_36:
        sub_24ACD0B20();
        __break(1u);
      }

      v45 = (v38 | (v26 >> 6) & 0x3F) << 8;
      if (v32)
      {
        v39 = (v26 >> 18) + ((v45 | (v26 >> 12) & 0x3F) << 8);
        v40 = -2122219023;
LABEL_30:
        v37 = v39 + v40;
      }

      else
      {
        v37 = (v26 >> 12) + v45 + 8487393;
      }
    }
  }

  sub_24ACD05D0();
  if ((v24 & 2) == 0)
  {
    goto LABEL_36;
  }

  if (a2 == 36)
  {
    goto LABEL_11;
  }

  if (a2 != 8)
  {
    if (a2 == 4)
    {

      v27 = sub_24ACD0230();
      v25 = v34;
      v28 = v23;
      v52 = sub_24ACD0370();
      v53 = v35;
      sub_24AC46630(v27, v25);
      sub_24AC71FE8(v27, v25, 2, 3);
      sub_24AC46698(v27, v25);
      LOBYTE(v24) = v52;
      sub_24AC46630(v52, v53);
      v36 = v46;
      sub_24ACD0380();
      if (v50(v36, 1, v19) == 1)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

LABEL_35:
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_24ACD0A20();

    v52 = 0xD000000000000014;
    v53 = 0x800000024ACDA060;
    v51 = a2;
    v43 = sub_24ACD0C20();
    LOBYTE(v24) = v44;
    MEMORY[0x24C22CD50](v43);

    goto LABEL_36;
  }

  v27 = sub_24ACD0230();
  v28 = v23;
  v25 = v29;
  v52 = sub_24ACD0370();
  v53 = v30;
  sub_24AC46630(v27, v25);
  sub_24AC71FE8(v27, v25, 0, 3);
  sub_24AC46698(v27, v25);
  LOBYTE(v24) = v52;
  v12 = v53;
  sub_24AC46630(v52, v53);
  v31 = v47;
  sub_24ACD0380();
  if (v50(v31, 1, v19) != 1)
  {
LABEL_15:

    sub_24ACD0000();
    sub_24AC46698(v27, v25);
    sub_24AC46698(v52, v53);
    return (*(v20 + 8))(v28, v19);
  }

  __break(1u);
LABEL_11:
  sub_24ACD03B0();
  if (v50(v12, 1, v19) == 1)
  {
    goto LABEL_24;
  }

  sub_24ACD0000();
  return (*(v20 + 8))(v25, v19);
}

uint64_t sub_24AC71E10(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = sub_24ACD01C0();
    if (a1)
    {
      a1 = sub_24ACD01F0();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
LABEL_13:
      sub_24ACD01E0();
      goto LABEL_14;
    }

    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_24ACD01C0() || !__OFSUB__(v5, sub_24ACD01F0()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_14:
  result = sub_24ACD0290();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AC71FE8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    v9 = 0;
    v8 = 0;
    if (v7 == 2)
    {
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v6);
    v9 = v5;
    v10 = v5 >> 32;
    if (v7)
    {
      v8 = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v9 > a4)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v8 <= a4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a4 + 1 >= a3)
  {
    return sub_24AC71E10(result, a2);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC2A800;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ServiceProtocol.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC2BA00;

  return v11(a1, a2, a3);
}

uint64_t sub_24AC72360()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_2814ADB70);
  v1 = __swift_project_value_buffer(v0, qword_2814ADB70);
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814AD280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AC72428(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4B8, &qword_24ACD54D0);
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC72524, 0, 0);
}

uint64_t sub_24AC72524()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  swift_defaultActor_initialize();
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_delegateTrampoline) = 0;
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals) = MEMORY[0x277D84F98];
  sub_24ACD0410();
  *(v0 + 96) = type metadata accessor for PairingAgent();
  sub_24ACD0000();
  (*(v2 + 32))(v5 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_id, v1, v3);
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) = v6;
  if (*(v7 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_isPairingCentralManager) == 1)
  {
    v8 = qword_2814ADB68;
    v9 = *(v0 + 48);
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_24ACD0490();
    __swift_project_value_buffer(v10, qword_2814ADB70);
    v11 = sub_24ACD0470();
    v12 = sub_24ACD0930();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24AC18000, v11, v12, "Setting CBPairingAgent delegate", v13, 2u);
      MEMORY[0x24C22DC60](v13, -1, -1);
    }

    v14 = *(v0 + 56);

    *(v14 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_isPairingAllowed) = 1;
    v15 = sub_24AC72740;
    v16 = v14;
  }

  else
  {
    v17 = *(v0 + 48);
    v18 = *(v0 + 56);
    *(v18 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_isPairingAllowed) = 0;
    v19 = v17;
    v15 = sub_24AC72A6C;
    v16 = v18;
  }

  return MEMORY[0x2822009F8](v15, v16, 0);
}

uint64_t sub_24AC72740()
{
  v31 = v0;
  super_class = v0[3].super_class;
  v2 = *(v0[2].super_class + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateQueue);
  v3 = type metadata accessor for DelegateTrampoline_CBPairingAgentDelegate();
  v4 = objc_allocWithZone(v3);
  swift_weakInit();
  *&v4[OBJC_IVAR____TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate_delegateQueue] = v2;
  swift_weakAssign();
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(v0 + 1, sel_init);
  v7 = *(super_class + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_delegateTrampoline);
  *(super_class + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_delegateTrampoline) = v6;

  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v8 = v0[3].super_class;
  v9 = sub_24ACD0490();
  __swift_project_value_buffer(v9, qword_2814ADB70);

  v10 = sub_24ACD0470();
  v11 = sub_24ACD0900();

  if (os_log_type_enabled(v10, v11))
  {
    receiver = v0[6].receiver;
    v13 = v0[3].super_class;
    v26 = v0[3].receiver;
    v27 = v0[2].super_class;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315138;
    v28 = v15;
    v29 = 60;
    v30 = 0xE100000000000000;
    v0[2].receiver = v13;
    v16 = sub_24AC78D78(&qword_27EF9E4C8, type metadata accessor for PairingAgent);

    v17 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v17);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v18 = MEMORY[0x24C22D370](receiver, v16);
    MEMORY[0x24C22CD50](v18);

    MEMORY[0x24C22CD50](62, 0xE100000000000000);

    v19 = sub_24AC29E20(v29, v30, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_24AC18000, v10, v11, "[%s] init", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C22DC60](v15, -1, -1);
    MEMORY[0x24C22DC60](v14, -1, -1);
  }

  else
  {
    v20 = v0[2].super_class;
  }

  v21 = v0[5].super_class;
  v22 = v0[4].receiver;

  v23 = v0->super_class;
  v24 = v0[3].super_class;

  return v23(v24);
}

uint64_t sub_24AC72A6C()
{
  v24 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0900();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v19 = *(v0 + 48);
    v20 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v21 = v8;
    v22 = 60;
    v23 = 0xE100000000000000;
    *(v0 + 32) = v6;
    v9 = sub_24AC78D78(&qword_27EF9E4C8, type metadata accessor for PairingAgent);

    v10 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v10);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v11 = MEMORY[0x24C22D370](v5, v9);
    MEMORY[0x24C22CD50](v11);

    MEMORY[0x24C22CD50](62, 0xE100000000000000);

    v12 = sub_24AC29E20(v22, v23, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_24AC18000, v3, v4, "[%s] init", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C22DC60](v8, -1, -1);
    MEMORY[0x24C22DC60](v7, -1, -1);
  }

  else
  {
    v13 = *(v0 + 40);
  }

  v14 = *(v0 + 88);
  v15 = *(v0 + 64);

  v16 = *(v0 + 8);
  v17 = *(v0 + 56);

  return v16(v17);
}

uint64_t sub_24AC72D0C()
{
  v1 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0900();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v16 = v6;
    v7 = type metadata accessor for PairingAgent();
    v8 = sub_24AC78D78(&qword_27EF9E4C8, type metadata accessor for PairingAgent);
    v9 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v9);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v10 = MEMORY[0x24C22D370](v7, v8);
    MEMORY[0x24C22CD50](v10);

    MEMORY[0x24C22CD50](62, 0xE100000000000000);
    v11 = sub_24AC29E20(60, 0xE100000000000000, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_24AC18000, v3, v4, "[%s] deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v12 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_id;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4B8, &qword_24ACD54D0);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);

  v14 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_24AC72FAC()
{
  sub_24AC72D0C();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for PairingAgent()
{
  result = qword_2814ADB58;
  if (!qword_2814ADB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AC7302C()
{
  sub_24AC7496C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24AC730F8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v4 = sub_24ACD0420();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC73224, v1, 0);
}

uint64_t sub_24AC73224()
{
  if (*(v0[15] + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_isPairingAllowed) == 1)
  {
    v1 = v0[14];

    return MEMORY[0x2822009F8](sub_24AC73368, v1, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC78D78(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[17];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24AC73368()
{
  v1 = *(v0[14] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v0[22] = v1;
  v2 = [v1 state];
  v3 = v0[15];
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v4 = sub_24AC791D4;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v4 = sub_24AC73540;
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v4 = sub_24AC73450;
        goto LABEL_11;
      }

LABEL_8:
      v4 = sub_24AC791D4;
      goto LABEL_11;
    }

    v4 = sub_24AC791D4;
  }

LABEL_11:

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC73450()
{
  type metadata accessor for CentralManager.Error();
  sub_24AC78D78(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[17];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC73540()
{
  v1 = v0[22];
  v2 = *(v0[15] + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject);
  v0[23] = v2;
  if ([v2 isPeerPaired_])
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[17];

    v6 = v0[1];
LABEL_6:

    return v6();
  }

  v7 = v0[21];
  v8 = v0[14];
  v9 = v0[15];
  v0[24] = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v10 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  v0[26] = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  swift_beginAccess();
  v11 = *(v9 + v10);
  if (*(v11 + 16))
  {
    v12 = v0[21];
    v13 = *(v9 + v10);

    v14 = sub_24AC2ABC8(v12);
    if (v15)
    {
      v16 = v0[21];
      v17 = v0[18];
      v18 = *(*(v11 + 56) + 8 * v14);
      v19 = *(v0[19] + 8);

      v19(v16, v17);

      type metadata accessor for CentralManager.Error();
      sub_24AC78D78(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v21 = v0[20];
      v20 = v0[21];
      v22 = v0[17];

      v6 = v0[1];
      goto LABEL_6;
    }
  }

  v24 = v0[20];
  v25 = v0[18];
  v35 = v0[16];
  v33 = v25;
  v34 = v0[15];
  v32 = v0[14];
  v26 = *(v0[19] + 8);
  (v26)(v0[21]);
  sub_24ACCFFE0();
  swift_beginAccess();

  v27 = *(v9 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v9 + v10);
  *(v9 + v10) = 0x8000000000000000;
  sub_24AC633D4(v32, v24, isUniquelyReferenced_nonNull_native);
  v26(v24, v33);
  *(v9 + v10) = v36;
  swift_endAccess();
  [v2 setDelegate_];
  sub_24AC78D78(&qword_27EF9E4A8, type metadata accessor for PairingAgent);
  v29 = swift_task_alloc();
  v0[27] = v29;
  v29[2] = v34;
  v29[3] = v32;
  v29[4] = v35;
  v30 = *(MEMORY[0x277D85A40] + 4);
  v31 = swift_task_alloc();
  v0[28] = v31;
  *v31 = v0;
  v31[1] = sub_24AC7394C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24AC7394C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v9 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_24AC73C60;
  }

  else
  {
    v6 = *(v2 + 216);
    v7 = *(v2 + 120);

    v5 = sub_24AC73A74;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC73A90()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v1, v3 + v5);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24AC73B7C, v2, 0);
}

uint64_t sub_24AC73B7C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[15];
  v6 = v0[14] + v0[24];
  sub_24ACCFFE0();
  swift_beginAccess();
  sub_24AC7F32C(0, v4);
  swift_endAccess();
  [v3 setDelegate_];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[17];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AC73C60()
{
  v1 = v0[27];

  v2 = v0[29];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AC73CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC73D8C, a6, 0);
}

uint64_t sub_24AC73D8C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v1, v2 + v7);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24AC73EB4, v3, 0);
}

uint64_t sub_24AC73EB4()
{
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0930();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&dword_24AC18000, v3, v4, "Calling pairPeer() on %@", v6, 0xCu);
    sub_24AC78B24(v7);
    MEMORY[0x24C22DC60](v7, -1, -1);
    MEMORY[0x24C22DC60](v6, -1, -1);
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[5];

  [*(v12 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) pairPeer_];

  v13 = v0[1];

  return v13();
}

uint64_t sub_24AC74064(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v4 = sub_24ACD0420();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC74190, v1, 0);
}

uint64_t sub_24AC74190()
{
  v1 = v0[15];
  if (*(v1 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_isPairingAllowed) != 1)
  {
    goto LABEL_6;
  }

  v2 = v0[14];
  v3 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject);
  v0[22] = v3;
  v4 = [v3 isPeerPaired_];
  v5 = v0[21];
  if (!v4)
  {
    v22 = v0[20];
    v23 = v0[17];
    v24 = v0[21];

    v21 = v0[1];
    goto LABEL_8;
  }

  v6 = v0[14];
  v7 = v0[15];
  v0[23] = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
  v0[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v8 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  v0[25] = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (*(v9 + 16))
  {
    v10 = v0[21];
    v11 = *(v7 + v8);

    v12 = sub_24AC2ABC8(v10);
    if (v13)
    {
      v14 = v0[21];
      v15 = v0[18];
      v16 = *(*(v9 + 56) + 8 * v12);
      v17 = *(v0[19] + 8);

      v17(v14, v15);

LABEL_6:
      type metadata accessor for CentralManager.Error();
      sub_24AC78D78(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v19 = v0[20];
      v18 = v0[21];
      v20 = v0[17];

      v21 = v0[1];
LABEL_8:

      return v21();
    }
  }

  v26 = v0[20];
  v27 = v0[18];
  v37 = v0[16];
  v35 = v27;
  v36 = v0[15];
  v34 = v0[14];
  v28 = *(v0[19] + 8);
  (v28)(v0[21]);
  sub_24ACCFFE0();
  swift_beginAccess();

  v29 = *(v7 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v7 + v8);
  *(v7 + v8) = 0x8000000000000000;
  sub_24AC633D4(v34, v26, isUniquelyReferenced_nonNull_native);
  v28(v26, v35);
  *(v7 + v8) = v38;
  swift_endAccess();
  [v3 setDelegate_];
  sub_24AC78D78(&qword_27EF9E4A8, type metadata accessor for PairingAgent);
  v31 = swift_task_alloc();
  v0[26] = v31;
  v31[2] = v36;
  v31[3] = v34;
  v31[4] = v37;
  v32 = *(MEMORY[0x277D85A40] + 4);
  v33 = swift_task_alloc();
  v0[27] = v33;
  *v33 = v0;
  v33[1] = sub_24AC745D0;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24AC745D0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_24AC748E4;
  }

  else
  {
    v6 = *(v2 + 208);
    v7 = *(v2 + 120);

    v5 = sub_24AC746F8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC74714()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v1, v3 + v5);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24AC74800, v2, 0);
}

uint64_t sub_24AC74800()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[15];
  v6 = v0[14] + v0[23];
  sub_24ACCFFE0();
  swift_beginAccess();
  sub_24AC7F32C(0, v4);
  swift_endAccess();
  [v3 setDelegate_];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[17];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AC748E4()
{
  v1 = v0[26];

  v2 = v0[28];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];

  v6 = v0[1];

  return v6();
}

void sub_24AC7496C()
{
  if (!qword_27EF9E428)
  {
    type metadata accessor for PairingAgent();
    v0 = sub_24ACCFFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF9E428);
    }
  }
}

uint64_t sub_24AC749C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v27 = a6;
  v25 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = sub_24ACD07C0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = sub_24AC78D78(&qword_27EF9E4A8, type metadata accessor for PairingAgent);
  v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = v18;
  *(v21 + 4) = a2;
  (*(v9 + 32))(&v21[v19], v12, v8);
  v22 = v26;
  *&v21[v20] = v25;
  *&v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8] = v22;
  swift_retain_n();

  sub_24AC7EA6C(0, 0, v16, v27, v21);
}

uint64_t sub_24AC74C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC74CBC, a6, 0);
}

uint64_t sub_24AC74CBC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v1, v2 + v7);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24AC74DE4, v3, 0);
}

uint64_t sub_24AC74DE4()
{
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0930();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&dword_24AC18000, v3, v4, "Calling unpairPeer() on %@", v6, 0xCu);
    sub_24AC78B24(v7);
    MEMORY[0x24C22DC60](v7, -1, -1);
    MEMORY[0x24C22DC60](v6, -1, -1);
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[5];

  [*(v12 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) unpairPeer_];

  v13 = v0[1];

  return v13();
}

uint64_t sub_24AC74F94@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_id;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4B8, &qword_24ACD54D0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24AC7503C()
{
  v0[2] = v0[3];
  v1 = type metadata accessor for PairingAgent();
  v2 = sub_24AC78D78(&qword_27EF9E4C8, type metadata accessor for PairingAgent);
  v3 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v4 = MEMORY[0x24C22D370](v1, v2);
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v5 = v0[1];

  return v5(60, 0xE100000000000000);
}

uint64_t sub_24AC75168(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v4 = type metadata accessor for PairingAgent();
  v5 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v6 = MEMORY[0x24C22D370](v4, a2);
  MEMORY[0x24C22CD50](v6);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC75228(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_24ACD04C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate_delegateQueue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_24ACD04D0();
  result = (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v17 = result;
  if (*(result + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) != a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = sub_24ACD07C0();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v19[5] = a1;
  v19[6] = a2;
  v20 = a1;
  v21 = a2;
  sub_24AC7EA6C(0, 0, v8, &unk_24ACD55B8, v19);
}

uint64_t sub_24AC75464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_24AC75488, 0, 0);
}

void sub_24AC75488()
{
  if (v0[3])
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_24AC791D8;
    v2 = v0[4];
    v3 = v0[2];

    sub_24AC76734(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AC755C0(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  v11 = sub_24ACD04C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + OBJC_IVAR____TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate_delegateQueue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_24ACD04D0();
  result = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v19 = result;
  if (*(result + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) != a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = sub_24ACD07C0();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v19;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  sub_24AC7EA6C(0, 0, v10, &unk_24ACD55A0, v21);
}

uint64_t sub_24AC75810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_24AC75834, 0, 0);
}

void sub_24AC75834()
{
  if (!v0[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v0[4];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_24AC758FC;
  v3 = v0[5];
  v4 = v0[2];

  sub_24AC7708C(v1, v3);
}

uint64_t sub_24AC758FC()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AC75A88(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_24ACD04C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate_delegateQueue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_24ACD04D0();
  result = (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v17 = result;
  if (*(result + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) != a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = sub_24ACD07C0();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v19[5] = a1;
  v19[6] = a2;
  v20 = a2;
  v21 = a1;
  sub_24AC7EA6C(0, 0, v8, &unk_24ACD5580, v19);
}

uint64_t sub_24AC75CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_24AC75CE8, 0, 0);
}

void sub_24AC75CE8()
{
  if (!v0[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v0[4];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_24AC75DAC;
  v3 = v0[2];

  sub_24AC77B84(v1);
}

uint64_t sub_24AC75DAC()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AC75F28(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_24ACD04C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v4 + OBJC_IVAR____TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate_delegateQueue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  LOBYTE(v18) = sub_24ACD04D0();
  result = (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v21 = result;
  if (*(result + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) != a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v22 = sub_24ACD07C0();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = a1;
  v23[6] = a2;
  v23[7] = a3;
  v23[8] = a4;
  v24 = a4;
  v25 = a1;
  v26 = a2;
  sub_24AC7EA6C(0, 0, v12, &unk_24ACD5568, v23);
}

uint64_t sub_24AC7617C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_24AC761A4, 0, 0);
}