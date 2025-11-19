uint64_t sub_2556C26BC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v44 = &v37 - v16;
  result = MEMORY[0x28223BE20](v15);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    return sub_2556C2F84(v38, v37, v39, a3);
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
    v27 = sub_255750090();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_6:
      result = (v23)(v50, v9);
      goto LABEL_7;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      v46(v14, *(v32 + 48) + v29 * v47, v9);
      sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
      v34 = sub_255750100();
      v23 = *v49;
      (*v49)(v14, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_6;
      }
    }

    result = (v23)(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_7:
      v10 = v43;
      goto LABEL_8;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_21;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return MEMORY[0x277D84FA0];
    }

LABEL_8:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2556C2AB0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_25574F0D0();
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
        v25 = *a5;
        v26 = a5[1];
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

            v29 = *(v26 + 8 * v30);
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
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_255674B20(v12, &unk_27F7BED20, &unk_2557551D0);
          v48 = v64;

          return sub_2556C2F84(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
        v38 = sub_255750090();
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
        sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
        v46 = sub_255750100();
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

uint64_t sub_2556C2F84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_25574F0D0();
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE838, &qword_255758008);
  result = sub_255750AE0();
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
    sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
    result = sub_255750090();
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

uint64_t sub_2556C32AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE840, &unk_25575BD70);
  result = sub_255750AE0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_255750930();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_2556C34A0(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_2556C38C0(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

objc_class *sub_2556C3584(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43 = sub_25574F0D0();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v33[1] = v2;
    v46 = MEMORY[0x277D84F90];
    sub_255750BD0();
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    v11 = sub_2557509B0();
    v12 = *(a1 + 36);
    type metadata accessor for JournalMO();
    result = swift_getObjCClassFromMetadata();
    v13 = 0;
    v38 = v4 + 16;
    v39 = result;
    v40 = a1;
    v41 = v4;
    v36 = v7;
    v37 = v4 + 8;
    v34 = a1 + 64;
    v35 = v12;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_21;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v45 = v13;
      v12 = v9;
      v16 = *(a1 + 48);
      v18 = v41;
      v17 = v42;
      v19 = v43;
      (*(v41 + 16))(v42, v16 + *(v41 + 72) * v11, v43);
      v20 = objc_allocWithZone(v39);
      v21 = [v20 initWithContext_];
      v22 = sub_25574F050();
      [v21 setId_];

      v23 = v17;
      a1 = v40;
      (*(v18 + 8))(v23, v19);
      sub_255750BB0();
      v24 = *(v46 + 16);
      sub_255750BE0();
      sub_255750BF0();
      result = sub_255750BC0();
      v14 = 1 << *(a1 + 32);
      if (v11 >= v14)
      {
        goto LABEL_23;
      }

      v25 = *(v12 + 8 * v15);
      v26 = v36;
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v9 = v12;
      LODWORD(v12) = v35;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v27 = v25 & (-2 << (v11 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v34 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_2556A719C(v11, v35, 0);
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_2556A719C(v11, v35, 0);
      }

LABEL_4:
      v13 = v45 + 1;
      v11 = v14;
      if (v45 + 1 == v26)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_2556C38C0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a2;
  v49 = a1;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v20 = 0;
  v21 = *(a3 + 56);
  v50 = 0;
  v51 = a3 + 56;
  v22 = 1 << *(a3 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v57 = (v7 + 48);
  v58 = (v7 + 56);
  v54 = a3;
  v55 = (v7 + 32);
  v62 = v7 + 16;
  v63 = a4 + 7;
  v47 = v7;
  v64 = (v7 + 8);
  v65 = a4;
  v26 = v19;
  v59 = v25;
  v52 = v19;
  v53 = v17;
  while (v24)
  {
    v27 = __clz(__rbit64(v24));
    v61 = (v24 - 1) & v24;
LABEL_14:
    v30 = v27 | (v20 << 6);
    v31 = *(a3 + 48);
    v56 = v30;
    v60 = *(v31 + 8 * v30);
    v32 = [v60 id];
    if (v32)
    {
      v33 = v32;
      sub_25574F080();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    (*v58)(v26, v34, 1, v6);
    sub_255663294(v26, v17, &unk_27F7BED20, &unk_2557551D0);
    if ((*v57)(v17, 1, v6) == 1)
    {
LABEL_6:
      sub_255674B20(v26, &unk_27F7BED20, &unk_2557551D0);

      v25 = v59;
      v24 = v61;
    }

    else
    {
      (*v55)(v66, v17, v6);
      if (!v65[2] || (v35 = v65, v36 = v65[5], sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]), v37 = sub_255750090(), v38 = -1 << *(v35 + 32), v39 = v37 & ~v38, ((*(v63 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0))
      {
LABEL_5:
        (*v64)(v66, v6);
        v17 = v53;
        a3 = v54;
        v26 = v52;
        goto LABEL_6;
      }

      v40 = ~v38;
      v41 = *(v47 + 72);
      v42 = *(v47 + 16);
      while (1)
      {
        v42(v11, v65[6] + v41 * v39, v6);
        sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
        v43 = sub_255750100();
        v44 = *v64;
        (*v64)(v11, v6);
        if (v43)
        {
          break;
        }

        v39 = (v39 + 1) & v40;
        if (((*(v63 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v44(v66, v6);
      v26 = v52;
      sub_255674B20(v52, &unk_27F7BED20, &unk_2557551D0);

      *(v49 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      v45 = __OFADD__(v50++, 1);
      v17 = v53;
      a3 = v54;
      v25 = v59;
      v24 = v61;
      if (v45)
      {
        __break(1u);
LABEL_27:

        sub_2556C32AC(v49, v48, v50, a3);
        return;
      }
    }
  }

  v28 = v20;
  while (1)
  {
    v20 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v20 >= v25)
    {
      goto LABEL_27;
    }

    v29 = *(v51 + 8 * v20);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v61 = (v29 - 1) & v29;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_2556C3E00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v77 = *MEMORY[0x277D85DE8];
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = MEMORY[0x28223BE20](v6);
  v72 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v63 = v54 - v17;
  v18 = *(a1 + 32);
  v19 = v18 & 0x3F;
  v20 = ((1 << v18) + 63) >> 6;
  v21 = (8 * v20);

  if (v19 > 0xD)
  {
    goto LABEL_31;
  }

  while (2)
  {
    v76 = v6;
    v55 = v20;
    v56 = v3;
    v54[1] = v54;
    MEMORY[0x28223BE20](v22);
    v57 = v54 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v57, v21);
    v3 = 0;
    v23 = *(a1 + 56);
    v58 = 0;
    v59 = a1 + 56;
    v24 = 1 << *(a1 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v23;
    v20 = (v24 + 63) >> 6;
    v65 = (v7 + 48);
    v66 = (v7 + 56);
    v60 = (v7 + 32);
    v73 = a2 + 56;
    v71 = v7 + 16;
    v54[0] = v7;
    v74 = (v7 + 8);
    v7 = &property descriptor for JournalMO.isUploadedToCloud;
    v21 = &unk_27F7BED20;
    v27 = v63;
    v67 = a1;
    v61 = v20;
    v62 = v16;
    while (v26)
    {
      v28 = __clz(__rbit64(v26));
      v69 = (v26 - 1) & v26;
LABEL_15:
      v31 = v28 | (v3 << 6);
      v32 = *(a1 + 48);
      v64 = v31;
      v33 = *(v32 + 8 * v31);
      v34 = *(v7 + 125);
      v68 = v33;
      v35 = [v33 v34];
      if (v35)
      {
        v6 = v27;
        v36 = v35;
        sub_25574F080();

        v21 = &unk_27F7BED20;
        v37 = 0;
      }

      else
      {
        v37 = 1;
        v6 = v27;
      }

      v38 = v76;
      (*v66)(v6, v37, 1, v76);
      sub_255663294(v6, v16, &unk_27F7BED20, &unk_2557551D0);
      if ((*v65)(v16, 1, v38) == 1)
      {
LABEL_7:
        v27 = v6;
        sub_255674B20(v6, &unk_27F7BED20, &unk_2557551D0);

        a1 = v67;
        v26 = v69;
      }

      else
      {
        (*v60)(v75, v16, v38);
        if (!*(a2 + 16) || (v39 = *(a2 + 40), sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]), v40 = sub_255750090(), v41 = -1 << *(a2 + 32), v42 = v40 & ~v41, ((*(v73 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0))
        {
LABEL_6:
          (*v74)(v75, v76);
          v16 = v62;
          v6 = v63;
          v20 = v61;
          v7 = &property descriptor for JournalMO.isUploadedToCloud;
          v21 = &unk_27F7BED20;
          goto LABEL_7;
        }

        v70 = ~v41;
        v43 = *(v54[0] + 72);
        v44 = *(v54[0] + 16);
        while (1)
        {
          v45 = a2;
          v6 = v72;
          v46 = v76;
          v44(v72, *(a2 + 48) + v43 * v42, v76);
          sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
          v47 = sub_255750100();
          v48 = *v74;
          (*v74)(v6, v46);
          if (v47)
          {
            break;
          }

          v42 = (v42 + 1) & v70;
          a2 = v45;
          if (((*(v73 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v48(v75, v76);
        v27 = v63;
        v21 = &unk_27F7BED20;
        sub_255674B20(v63, &unk_27F7BED20, &unk_2557551D0);

        *&v57[(v64 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v64;
        v49 = __OFADD__(v58++, 1);
        a2 = v45;
        a1 = v67;
        v20 = v61;
        v16 = v62;
        v7 = &property descriptor for JournalMO.isUploadedToCloud;
        v26 = v69;
        if (v49)
        {
          __break(1u);
LABEL_28:
          v50 = sub_2556C32AC(v57, v55, v58, a1);

          goto LABEL_29;
        }
      }
    }

    v29 = v3;
    while (1)
    {
      v3 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v3 >= v20)
      {
        goto LABEL_28;
      }

      v30 = *(v59 + 8 * v3);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v69 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v53 = swift_slowAlloc();

  v50 = sub_2556C34A0(v53, v20, a1, a2);

  MEMORY[0x259C3F520](v53, -1, -1);

LABEL_29:
  v51 = *MEMORY[0x277D85DE8];
  return v50;
}

uint64_t sub_2556C44C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F0D0();
  v53 = *(v4 - 8);
  v5 = v53[8];
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v51 - v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0) - 8) + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v51 - v15;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_2556C3E00(v14, a2);
  }

  v17 = MEMORY[0x277D84FA0];
  v67 = MEMORY[0x277D84FA0];

  v18 = sub_2557509F0();
  v19 = sub_255750A60();
  if (v19)
  {
    v20 = v19;
    v60 = type metadata accessor for JournalMO();
    v21 = v20;
    v22 = (v53 + 7);
    v59 = (v53 + 6);
    v54 = (v53 + 4);
    v61 = v53 + 2;
    v62 = a2 + 56;
    v63 = (v53 + 1);
    v52 = MEMORY[0x277D84FA0];
    v57 = v16;
    v58 = v13;
    v55 = (v53 + 7);
    v56 = v18;
    while (1)
    {
      v65 = v21;
      swift_dynamicCast();
      v23 = [v66 id];
      if (v23)
      {
        v24 = v23;
        sub_25574F080();

        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

      (*v22)(v16, v25, 1, v4);
      sub_255663294(v16, v13, &unk_27F7BED20, &unk_2557551D0);
      if ((*v59)(v13, 1, v4) == 1)
      {
        goto LABEL_5;
      }

      (*v54)(v64, v13, v4);
      if (*(a2 + 16) && (v26 = *(a2 + 40), sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]), v27 = sub_255750090(), v28 = -1 << *(a2 + 32), v29 = v27 & ~v28, ((*(v62 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
      {
        v30 = ~v28;
        v31 = v53[9];
        v32 = v53[2];
        while (1)
        {
          v33 = a2;
          v32(v8, *(a2 + 48) + v31 * v29, v4);
          sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
          v34 = sub_255750100();
          v35 = *v63;
          (*v63)(v8, v4);
          if (v34)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          a2 = v33;
          if (((*(v62 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v35(v64, v4);
        v16 = v57;
        sub_255674B20(v57, &unk_27F7BED20, &unk_2557551D0);
        v36 = v66;
        v37 = v52[2];
        if (v52[3] <= v37)
        {
          sub_2557008C8(v37 + 1);
        }

        v38 = v67;
        v39 = *(v67 + 40);
        v52 = v36;
        result = sub_255750930();
        v41 = v38 + 56;
        v42 = -1 << *(v38 + 32);
        v43 = result & ~v42;
        v44 = v43 >> 6;
        a2 = v33;
        v13 = v58;
        v22 = v55;
        if (((-1 << v43) & ~*(v38 + 56 + 8 * (v43 >> 6))) != 0)
        {
          v45 = __clz(__rbit64((-1 << v43) & ~*(v38 + 56 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v46 = 0;
          v47 = (63 - v42) >> 6;
          do
          {
            if (++v44 == v47 && (v46 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v48 = v44 == v47;
            if (v44 == v47)
            {
              v44 = 0;
            }

            v46 |= v48;
            v49 = *(v41 + 8 * v44);
          }

          while (v49 == -1);
          v45 = __clz(__rbit64(~v49)) + (v44 << 6);
        }

        *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        *(*(v38 + 48) + 8 * v45) = v52;
        v50 = *(v38 + 16) + 1;
        v52 = v38;
        *(v38 + 16) = v50;
        v21 = sub_255750A60();
        if (!v21)
        {
          goto LABEL_32;
        }
      }

      else
      {
LABEL_4:
        (*v63)(v64, v4);
        v16 = v57;
        v13 = v58;
        v22 = v55;
LABEL_5:
        sub_255674B20(v16, &unk_27F7BED20, &unk_2557551D0);

        v21 = sub_255750A60();
        if (!v21)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v52 = v17;
LABEL_32:

  return v52;
}

uint64_t ProtectedData.stateStream.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE860, &qword_255758010);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - v2, *MEMORY[0x277D85778]);
  return sub_255750520();
}

uint64_t sub_2556C4BCC(uint64_t a1, os_unfair_lock_s *a2)
{
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE178, &unk_255758110);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = sub_25574F0D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  sub_25574F0C0();
  os_unfair_lock_lock(a2 + 4);
  v19 = *(v8 + 16);
  v19(v11, v13, v7);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6, v20, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  sub_25569F4B4(v6, v11);
  os_unfair_lock_unlock(a2 + 4);
  v19(v11, v13, v7);
  v16 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v8 + 32))(v17 + v16, v11, v7);

  sub_2557504E0();
  return (*(v8 + 8))(v13, v7);
}

void sub_2556C4E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a2 + 16));
  sub_2556C4ED8((a2 + 24), a3);

  os_unfair_lock_unlock((a2 + 16));
}

uint64_t sub_2556C4ED8(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE178, &unk_255758110);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = *a1;
  v9 = sub_25567AF04(a2);
  if (v10)
  {
    v11 = v9;
    v12 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a1;
    v23 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_255742E24();
      v14 = v23;
    }

    v15 = *(v14 + 48);
    v16 = sub_25574F0D0();
    (*(*(v16 - 8) + 8))(v15 + *(*(v16 - 8) + 72) * v11, v16);
    v17 = *(v14 + 56);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
    v19 = *(v18 - 8);
    (*(v19 + 32))(v7, v17 + *(v19 + 72) * v11, v18);
    sub_2556C6050(v11, v14);
    *a1 = v14;
    (*(v19 + 56))(v7, 0, 1, v18);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  }

  return sub_255674B20(v7, &qword_27F7BE178, &unk_255758110);
}

uint64_t ProtectedData.ProtectedDataState.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t sub_2556C5174(uint64_t a1, os_unfair_lock_s *a2)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE898, &qword_255758120);
  v3 = *(v29 - 8);
  v4 = (*(v3 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v28 = &v23[-v5];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  v30 = *(v27 - 8);
  v6 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v23[-v7];
  v9 = MKBGetDeviceLockState();
  if (v9 == 1)
  {
    v24 = 2;
  }

  else
  {
    if (v9 == 2)
    {
      v10 = [objc_opt_self() defaultCenter];
      if (qword_27F7BD728 != -1)
      {
LABEL_22:
        swift_once();
      }

      v24 = 1;
      v11 = &qword_27F7BE850;
    }

    else
    {
      v10 = [objc_opt_self() defaultCenter];
      if (qword_27F7BD720 != -1)
      {
        swift_once();
      }

      v24 = 0;
      v11 = &qword_27F7BE848;
    }

    [v10 postNotificationName:*v11 object:a2];
  }

  swift_getKeyPath();
  os_unfair_lock_lock(a2 + 4);
  v32 = *&a2[6]._os_unfair_lock_opaque;

  swift_getAtKeyPath();

  v10 = v31;
  os_unfair_lock_unlock(a2 + 4);

  v12 = 0;
  a2 = (v10 + 64);
  v13 = 1 << v10[32];
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 8);
  v16 = (v13 + 63) >> 6;
  v25 = v30 + 8;
  v26 = v30 + 16;
  v17 = (v3 + 8);
  v18 = v30;
  if (v15)
  {
    while (1)
    {
      v19 = v12;
LABEL_18:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v27;
      (*(v18 + 16))(v8, *(v10 + 7) + *(v18 + 72) * (v20 | (v19 << 6)), v27);
      LOBYTE(v32) = v24;
      v3 = v28;
      sub_2557504F0();
      (*(v18 + 8))(v8, v21);
      (*v17)(v3, v29);
      if (!v15)
      {
        goto LABEL_14;
      }
    }
  }

  while (1)
  {
LABEL_14:
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v19 >= v16)
    {
    }

    v15 = *&a2[2 * v19]._os_unfair_lock_opaque;
    ++v12;
    if (v15)
    {
      v12 = v19;
      goto LABEL_18;
    }
  }
}

uint64_t sub_2556C5530(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t ProtectedData.suspendUntilProtectedDataIsAvailable()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE860, &qword_255758010);
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE868, &qword_255758020);
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v3[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE870, &qword_255758028);
  v3[11] = v11;
  v12 = *(v11 - 8);
  v3[12] = v12;
  v13 = *(v12 + 64) + 15;
  v3[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v14 = sub_255750490();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v3[14] = v14;
  v3[15] = v16;

  return MEMORY[0x2822009F8](sub_2556C5788, v14, v16);
}

uint64_t sub_2556C5788()
{
  if (MKBGetDeviceLockState() - 1 > 1)
  {
    v12 = v0[13];
    v13 = v0[10];
    v14 = v0[7];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v1 = v0[13];
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[8];
    v5 = v0[4];
    (*(v0[6] + 104))(v0[7], *MEMORY[0x277D85778], v0[5]);
    sub_255750520();
    sub_255750500();
    (*(v3 + 8))(v2, v4);
    v6 = *(MEMORY[0x277D85798] + 4);
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_2556C5934;
    v8 = v0[13];
    v9 = v0[11];
    v10 = v0[2];
    v11 = v0[3];

    return MEMORY[0x2822003E8](v0 + 17, v10, v11, v9);
  }
}

uint64_t sub_2556C5934()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_2556C5A54, v4, v3);
}

uint64_t sub_2556C5A54()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136) == 3;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 56);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(MEMORY[0x277D85798] + 4);
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v8[1] = sub_2556C5934;
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);
    v11 = *(v0 + 16);
    v12 = *(v0 + 24);

    return MEMORY[0x2822003E8](v0 + 136, v11, v12, v10);
  }
}

uint64_t ProtectedData.__deallocating_deinit()
{
  sub_255674B20(v0 + 24, &qword_27F7BE878, &qword_255758030);

  return swift_deallocClassInstance();
}

unint64_t sub_2556C5BF0()
{
  result = qword_27F7BE880;
  if (!qword_27F7BE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE880);
  }

  return result;
}

void sub_2556C5C5C(uint64_t a1)
{
  v3 = *(sub_25574F0D0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_2556C4E78(a1, v4, v5);
}

uint64_t sub_2556C5CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25567AF04(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_255742E24();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_25574F0D0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_2556C6050(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

void sub_2556C5E88(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2557509C0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_2557501B0();
      sub_255750F80();
      v11 = v10;
      sub_2557501F0();
      v12 = sub_255750FD0();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_2556C6050(int64_t a1, uint64_t a2)
{
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_2557509C0();
    v15 = v13;
    v43 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v44 = *(v16 + 56);
    v41 = (v16 - 8);
    v42 = v17;
    do
    {
      v18 = v10;
      v19 = v44 * v12;
      v20 = v15;
      v21 = v16;
      v42(v9, *(a2 + 48) + v44 * v12, v4);
      v22 = *(a2 + 40);
      sub_2556C635C();
      v23 = sub_255750090();
      result = (*v41)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          v28 = v27 + v44 * a1;
          v29 = v27 + v19 + v44;
          v30 = v44 * a1 < v19 || v28 >= v29;
          v16 = v21;
          if (v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31 = *(a2 + 56);
          v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10) - 8) + 72);
          v33 = v32 * a1;
          result = v31 + v32 * a1;
          v34 = v32 * v12;
          v35 = v31 + v32 * v12 + v32;
          if (v33 < v34 || result >= v35)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v18;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v37 = v33 == v34;
            v10 = v18;
            v15 = v20;
            if (!v37)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v38 = *(a2 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v40;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2556C635C()
{
  result = qword_27F7BE0B0;
  if (!qword_27F7BE0B0)
  {
    sub_25574F0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE0B0);
  }

  return result;
}

uint64_t CRAttributedString<>.minimumAppVersion.getter@<X0>(_BYTE *a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8A8, &unk_255758170);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B0, &unk_25575B400);
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B8, &unk_255758180);
  v43 = *(v10 - 8);
  v11 = v43[8];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F9C0();
  KeyPath = swift_getKeyPath();
  sub_2556C6C48(&qword_27F7BE8C8);
  v20 = sub_2557502A0();
  v53 = MEMORY[0x277D84F90];
  sub_2556A9C98(0, v20 & ~(v20 >> 63), 0);
  v21 = v53;
  v22 = v43[2];
  v40 = v19;
  v22(v14, v19, v10);
  v49 = v17;
  v50 = v10;
  result = sub_255750290();
  if (v20 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v20)
  {
    v24 = (v44 + 48);
    v25 = (v44 + 8);
    v47 = sub_2556C6C48(&qword_27F7BE8D0);
    do
    {
      sub_255750960();
      result = (*v24)(v5, 1, v7);
      if (result == 1)
      {
        goto LABEL_18;
      }

      swift_getAtKeyPath();
      (*v25)(v5, v7);
      v26 = v52;
      v53 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2556A9C98((v27 > 1), v28 + 1, 1);
        v21 = v53;
      }

      *(v21 + 16) = v28 + 1;
      *(v21 + v28 + 32) = v26;
    }

    while (--v20);
  }

  v29 = sub_2556C6C48(&qword_27F7BE8D0);
  v30 = v41;
  v47 = v29;
  sub_255750960();
  v31 = v44;
  v45 = *(v44 + 48);
  if (v45(v30, 1, v7) != 1)
  {
    v44 = *(v31 + 32);
    v35 = (v31 + 8);
    do
    {
      v36 = v46;
      (v44)(v46, v30, v7);
      swift_getAtKeyPath();
      (*v35)(v36, v7);
      v37 = v51;
      v53 = v21;
      v39 = *(v21 + 16);
      v38 = *(v21 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2556A9C98((v38 > 1), v39 + 1, 1);
        v21 = v53;
      }

      *(v21 + 16) = v39 + 1;
      *(v21 + v39 + 32) = v37;
      sub_255750960();
    }

    while (v45(v30, 1, v7) != 1);
  }

  v32 = v43[1];
  v33 = v50;
  v32(v49, v50);
  v32(v40, v33);
  sub_2556C6C98(v30);
  sub_2556C6920(v21, &v54);

  v34 = v54;
  if (v54 == 3)
  {
    v34 = 0;
  }

  *v42 = v34;
  return result;
}

uint64_t sub_2556C6920@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 32);
    v4 = v2 - 1;
    if (v4)
    {
      v5 = (result + 33);
      do
      {
        v7 = *v5++;
        v6 = v7;
        if ((0x3F203E90000uLL >> (16 * v3)) < (0x3F203E90000uLL >> (16 * v7)))
        {
          v3 = v6;
        }

        --v4;
      }

      while (v4);
    }

    *a2 = v3;
  }

  else
  {
    *a2 = 3;
  }

  return result;
}

uint64_t sub_2556C6980@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 32);
    v4 = *(result + 33);
    v5 = v2 - 1;
    if (!v5)
    {
LABEL_3:
      *a2 = v3 | (v4 << 8);
      return result;
    }

    v6 = (result + 35);
    while (1)
    {
      result = *(v6 - 1);
      v8 = *v6;
      v9 = (0x3F203E90000uLL >> (16 * v3));
      v10 = (0x3F203E90000uLL >> (16 * result));
      if (v9 == v10)
      {
        break;
      }

      v7 = v9 < v10;
LABEL_7:
      v6 += 2;
      if (v7)
      {
        v3 = result;
        v4 = v8;
      }

      if (!--v5)
      {
        goto LABEL_3;
      }
    }

    if (*v6 <= 1u)
    {
      if (*v6)
      {
        v11 = -1;
        if (!v4)
        {
LABEL_32:
          v12 = 0x7FFF;
LABEL_33:
          v7 = v11 < v12;
          goto LABEL_7;
        }
      }

      else
      {
        v12 = 0x7FFF;
        v11 = 0x7FFF;
        if (!v4)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (v8 == 3)
      {
        v11 = 2;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 2)
      {
        v11 = 1;
      }

      if (!v4)
      {
        goto LABEL_32;
      }
    }

    if (v4 == 3)
    {
      v13 = 2;
    }

    else
    {
      v13 = 10;
    }

    if (v4 == 1)
    {
      v14 = -1;
    }

    else
    {
      v14 = 1;
    }

    if (v4 <= 2u)
    {
      v12 = v14;
    }

    else
    {
      v12 = v13;
    }

    goto LABEL_33;
  }

  *a2 = 3;
  return result;
}

uint64_t static MergeableTitleAttributeScope.attributeTypes.getter()
{
  if (qword_27F7BD738 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2556C6B04()
{
  if (qword_27F7BD738 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2556C6B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8D8, &unk_255758230);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B0, &unk_25575B400);
  return sub_25574F960();
}

uint64_t sub_2556C6C48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BE8B8, &unk_255758180);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2556C6C98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8A8, &unk_255758170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556C6D10@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA38, &qword_255758A90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA40, &qword_255758A98);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8D8, &unk_255758230);
  sub_2556C73DC();
  sub_25574F890();

  v10 = type metadata accessor for MergeableFollowUpPromptAttachment();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  result = sub_255674B20(v9, &qword_27F7BEA40, &qword_255758A98);
  if (v11 == 1)
  {
    swift_getKeyPath();
    sub_2556C74E8();
    sub_25574F890();

    v13 = type metadata accessor for MergeableAssetTextAttachment(0);
    v14 = (*(*(v13 - 8) + 48))(v5, 1, v13) != 1;
    result = sub_255674B20(v5, &qword_27F7BEA38, &qword_255758A90);
    v15 = 2 * v14;
  }

  else
  {
    v15 = 2;
  }

  *a1 = v15;
  return result;
}

uint64_t static MergeableTextAttributeScope.attributeTypes.getter()
{
  if (qword_27F7BD740 != -1)
  {
    swift_once();
  }
}

unint64_t sub_2556C73B4(uint64_t a1)
{
  result = sub_2556C73DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C73DC()
{
  result = qword_27F7BE8E8;
  if (!qword_27F7BE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE8E8);
  }

  return result;
}

unint64_t sub_2556C74C0(uint64_t a1)
{
  result = sub_2556C74E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C74E8()
{
  result = qword_27F7BE908;
  if (!qword_27F7BE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE908);
  }

  return result;
}

unint64_t sub_2556C75CC(uint64_t a1)
{
  result = sub_2556C75F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C75F4()
{
  result = qword_27F7BE928;
  if (!qword_27F7BE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE928);
  }

  return result;
}

unint64_t sub_2556C76D8(uint64_t a1)
{
  result = sub_2556C7700();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C7700()
{
  result = qword_27F7BE948;
  if (!qword_27F7BE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE948);
  }

  return result;
}

unint64_t sub_2556C776C(uint64_t a1)
{
  result = sub_2556C7794();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C7794()
{
  result = qword_27F7BE958;
  if (!qword_27F7BE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE958);
  }

  return result;
}

unint64_t sub_2556C77E8(uint64_t a1)
{
  result = sub_25566F59C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C7810(uint64_t a1)
{
  result = sub_2556C7838();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C7838()
{
  result = qword_27F7BE980;
  if (!qword_27F7BE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE980);
  }

  return result;
}

unint64_t sub_2556C78A4(uint64_t a1)
{
  result = sub_2556C78CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C78CC()
{
  result = qword_27F7BE990;
  if (!qword_27F7BE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE990);
  }

  return result;
}

unint64_t sub_2556C79B0(uint64_t a1)
{
  result = sub_25566E8D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C79D8(uint64_t a1)
{
  result = sub_25566BC28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C7A00(uint64_t a1)
{
  result = sub_2556C7A28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2556C7A28()
{
  result = qword_27F7BEA00;
  if (!qword_27F7BEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEA00);
  }

  return result;
}

unint64_t sub_2556C7A80()
{
  result = qword_27F7BEA08;
  if (!qword_27F7BEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEA08);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppStorageMO.cacheCustomJournalsSidebarOrder()()
{
  v1 = [v0 managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x28223BE20](v1);
    MEMORY[0x28223BE20](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE280, &qword_255756620);
    sub_255750870();
  }
}

id static AppStorageMO.sharedStorage(context:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v47 - v9;
  v11 = sub_25574F0D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F7BD750 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, qword_27F7C0558);
  sub_255663294(v16, v10, &unk_27F7BED20, &unk_2557551D0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_255674B20(v10, &unk_27F7BED20, &unk_2557551D0);
    if (qword_27F7BD748 != -1)
    {
      swift_once();
    }

    v17 = sub_25574F2C0();
    __swift_project_value_buffer(v17, qword_27F7BEA48);
    v18 = sub_25574F2A0();
    v19 = sub_255750780();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_255661000, v18, v19, "Failed to retrieve explicit UUID for shared app storage.", v20, 2u);
      MEMORY[0x259C3F520](v20, -1, -1);
    }

    return 0;
  }

  (*(v12 + 32))(v15, v10, v11);
  sub_2556CC0AC(&qword_27F7BEA60, type metadata accessor for AppStorageMO);
  static Identifiable<>.fetch(id:context:)(v15, a1, v1);
  if (v21)
  {
    v22 = v21;
    (*(v12 + 8))(v15, v11);
    return v22;
  }

  v24 = [a1 persistentStoreCoordinator];
  if (!v24)
  {
    goto LABEL_22;
  }

  v25 = v24;
  v26 = [v24 persistentStores];

  sub_255669A88(0, &qword_27F7BE278, 0x277CBE4D0);
  v27 = sub_255750380();

  if (v27 >> 62)
  {
    v42 = sub_255750A30();

    if (v42)
    {
      goto LABEL_16;
    }

LABEL_22:
    if (qword_27F7BD748 != -1)
    {
      swift_once();
    }

    v43 = sub_25574F2C0();
    __swift_project_value_buffer(v43, qword_27F7BEA48);
    v44 = sub_25574F2A0();
    v45 = sub_255750780();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_255661000, v44, v45, "Database not open. Won't create a temporary app storage object", v46, 2u);
      MEMORY[0x259C3F520](v46, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    return 0;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v28)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (qword_27F7BD748 != -1)
  {
    swift_once();
  }

  v29 = sub_25574F2C0();
  __swift_project_value_buffer(v29, qword_27F7BEA48);
  v30 = sub_25574F2A0();
  v31 = sub_2557507A0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_255661000, v30, v31, "Creating new app storage object", v32, 2u);
    MEMORY[0x259C3F520](v32, -1, -1);
  }

  type metadata accessor for AppStorageMO();
  v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v34 = sub_25574F050();
  [v33 setId_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
  v47[0] = MEMORY[0x277CFB528];
  sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790);
  sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790);
  sub_25574FD10();
  v35 = type metadata accessor for SidebarPreferences(0);
  v36 = &v6[v35[5]];
  sub_25574F720();
  v37 = v35[6];
  sub_2556CC0AC(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  sub_25574F720();
  v38 = &v6[v35[7]];
  sub_25574F850();
  v39 = type metadata accessor for MergeableAppStorage(0);
  v40 = *(v39 + 20);
  v47[1] = 2;
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA80, &qword_255758AE8);
  sub_255669798(&qword_27F7BEA88, &qword_27F7BEA80, &qword_255758AE8);
  sub_25574F340();
  v41 = &v6[*(v39 + 24)];
  sub_25574F850();
  (*(*(v39 - 8) + 56))(v6, 0, 1, v39);
  sub_2556B736C(v6);
  [v33 setIsUploadedToCloud_];
  (*(v12 + 8))(v15, v11);
  return v33;
}

uint64_t AppStorageMO.sidebarSortOrderForCustomJournal(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  AppStorageMO.customJournalsSidebarOrder.getter(v14 - v6);
  v8 = sub_25566CA68();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v7, v0);
  if (v10)
  {
    return 0;
  }

  AppStorageMO.customJournalsSidebarOrder.getter(v7);
  AppStorageMO.customJournalsSidebarOrder.getter(v5);
  sub_255669798(&qword_27F7BEA98, &qword_27F7BEA90, &unk_25575B390);
  sub_255750650();
  v11(v5, v0);
  v14[1] = v8;
  v14[2] = v14[3];
  v12 = sub_2557506A0();
  result = (v11)(v7, v0);
  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v12 <= 0x7FFFFFFF)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2556C87D4()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BEA48);
  __swift_project_value_buffer(v0, qword_27F7BEA48);
  return sub_25574F2B0();
}

uint64_t sub_2556C8850()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  __swift_allocate_value_buffer(v0, qword_27F7C0558);
  __swift_project_value_buffer(v0, qword_27F7C0558);
  return sub_25574F030();
}

uint64_t AppStorageMO.defaultMapSize.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = [v1 mergeableAttributes];
  if (v7)
  {
    v8 = v7;
    sub_2556CB860(v7 + OBJC_IVAR___WrappedMergeableAppStorage_value, v6);

    v9 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  }

  else
  {
    v9 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  type metadata accessor for MergeableAppStorage(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9))
  {
    result = sub_255674B20(v6, &qword_27F7BE5E8, &qword_255757420);
LABEL_7:
    v12 = 3;
    goto LABEL_8;
  }

  v11 = *(v9 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  sub_25574F360();
  v12 = v14;
  v13 = v15;
  result = sub_255674B20(v6, &qword_27F7BE5E8, &qword_255757420);
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_8:
  *a1 = v12;
  return result;
}

void AppStorageMO.defaultMapSize.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = *a1;
  if (v11 != 3)
  {
    AppStorageMO.defaultMapSize.getter(&v28);
    if (v28 == 3 || v11 != v28)
    {
      v21 = [v2 mergeableAttributes];
      if (v21)
      {
        v22 = v21;
        sub_2556CB860(v21 + OBJC_IVAR___WrappedMergeableAppStorage_value, v10);

        v23 = type metadata accessor for MergeableAppStorage(0);
        (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
      }

      else
      {
        v23 = type metadata accessor for MergeableAppStorage(0);
        (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
      }

      type metadata accessor for MergeableAppStorage(0);
      if ((*(*(v23 - 8) + 48))(v10, 1, v23))
      {
        sub_255663294(v10, v8, &qword_27F7BE5E8, &qword_255757420);
        sub_2556B736C(v8);
        sub_255674B20(v10, &qword_27F7BE5E8, &qword_255757420);
      }

      else
      {
        v28 = v11;
        v29 = 0;
        v24 = *(v23 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
        sub_25574F370();
        sub_2556B736C(v10);
      }

      [v2 setIsUploadedToCloud_];
    }

    else
    {
      if (qword_27F7BD748 != -1)
      {
        swift_once();
      }

      v12 = sub_25574F2C0();
      __swift_project_value_buffer(v12, qword_27F7BEA48);
      v27 = sub_25574F2A0();
      v13 = sub_255750770();
      if (os_log_type_enabled(v27, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v28 = v15;
        *v14 = 136315138;
        v16 = 0xE400000000000000;
        v17 = 1684632167;
        if (v11 != 1)
        {
          v17 = 0x6C6C616D73;
          v16 = 0xE500000000000000;
        }

        if (v11)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0x6E6564646968;
        }

        if (v11)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0xE600000000000000;
        }

        v20 = sub_2556E474C(v18, v19, &v28);

        *(v14 + 4) = v20;
        _os_log_impl(&dword_255661000, v27, v13, "Setting default map size to the same value as before (%s).", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x259C3F520](v15, -1, -1);
        MEMORY[0x259C3F520](v14, -1, -1);
      }

      else
      {
        v25 = v27;
      }
    }
  }
}

void (*AppStorageMO.defaultMapSize.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  AppStorageMO.defaultMapSize.getter((a1 + 8));
  return sub_2556C8EBC;
}

void sub_2556C8EBC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v5 = *(a1 + 8);
    v4 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  AppStorageMO.defaultMapSize.setter(v4);
}

uint64_t AppStorageMO.sidebarBrickOrder.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAB0, &qword_255758AF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAB8, &qword_255758B00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v21 = [v2 mergeableAttributes];
  if (v21)
  {
    v22 = v21;
    sub_2556CB860(v21 + OBJC_IVAR___WrappedMergeableAppStorage_value, v11);

    v23 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  }

  else
  {
    v23 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  }

  type metadata accessor for MergeableAppStorage(0);
  if ((*(*(v23 - 8) + 48))(v11, 1, v23))
  {
    sub_255674B20(v11, &qword_27F7BE5E8, &qword_255757420);
    (*(v17 + 56))(v15, 1, 1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
    sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790);
    sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790);
    sub_25574F720();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_255674B20(v15, &qword_27F7BEAB8, &qword_255758B00);
    }
  }

  else
  {
    v24 = type metadata accessor for SidebarPreferences(0);
    (*(v17 + 16))(v15, &v11[*(v24 + 20)], v16);
    sub_255674B20(v11, &qword_27F7BE5E8, &qword_255757420);
    (*(v17 + 56))(v15, 0, 1, v16);
    (*(v17 + 32))(v20, v15, v16);
  }

  v25 = *(v17 + 32);
  v25(v7, v20, v16);
  v25(a1, v7, v16);
  v26 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC8, &qword_255758B08) + 44)];
  *v26 = sub_2556C9A58;
  *(v26 + 1) = 0;
  v27 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAD0, &qword_255758B10) + 36)];
  *v27 = sub_2556CBE10;
  v27[1] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAD8, &qword_255758B18);
  v29 = &a1[*(result + 44)];
  *v29 = sub_2556CBE20;
  *(v29 + 1) = 0;
  return result;
}

_BYTE *sub_2556C9A58@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  if (result[8])
  {
    *a2 = 2;
  }

  else
  {
    *a2 = *result & 1;
  }

  return result;
}

uint64_t sub_2556C9D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[1] = a1;
  v5 = sub_255750B40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEA68, &qword_25575D790);
  v10 = sub_255750C00();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v26 = *(v12 - 8);
  v27 = v12;
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - v14;
  v25 = sub_25574F500();
  v16 = *(v25 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v25);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x259C3DFD0](a2, a3);
  swift_getWitnessTable();
  sub_255750CA0();
  (*(v6 + 8))(v9, v5);
  sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790);
  sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790);
  swift_getWitnessTable();
  sub_25574F740();
  v20 = type metadata accessor for SidebarPreferences(0);
  v21 = v27;
  v22 = v28 + *(v20 + 20);
  sub_25574F6A0();
  (*(v26 + 8))(v15, v21);
  return (*(v16 + 8))(v19, v25);
}

uint64_t AppStorageMO.customJournalsSidebarOrder.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAE0, &qword_255758B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = [v2 mergeableAttributes];
  if (v12)
  {
    v13 = v12;
    sub_2556CB860(v12 + OBJC_IVAR___WrappedMergeableAppStorage_value, v7);

    v14 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v14 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  type metadata accessor for MergeableAppStorage(0);
  if ((*(*(v14 - 8) + 48))(v7, 1, v14))
  {
    sub_255674B20(v7, &qword_27F7BE5E8, &qword_255757420);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    v16 = *(v15 - 8);
    (*(v16 + 56))(v11, 1, 1, v15);
    sub_25574F0D0();
    sub_2556CC0AC(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
    sub_25574F720();
    result = (*(v16 + 48))(v11, 1, v15);
    if (result != 1)
    {
      return sub_255674B20(v11, &qword_27F7BEAE0, &qword_255758B20);
    }
  }

  else
  {
    v18 = *(type metadata accessor for SidebarPreferences(0) + 24);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    v20 = *(v19 - 8);
    (*(v20 + 16))(v11, &v7[v18], v19);
    sub_255674B20(v7, &qword_27F7BE5E8, &qword_255757420);
    (*(v20 + 56))(v11, 0, 1, v19);
    return (*(v20 + 32))(a1, v11, v19);
  }

  return result;
}

uint64_t AppStorageMO.moveCustomJournalInSidebar(_:after:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = [v0 mergeableAttributes];
  if (v8)
  {
    v9 = v8;
    sub_2556CB860(v8 + OBJC_IVAR___WrappedMergeableAppStorage_value, v7);

    v10 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v10 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  type metadata accessor for MergeableAppStorage(0);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    sub_255663294(v7, v5, &qword_27F7BE5E8, &qword_255757420);
    sub_2556B736C(v5);
    sub_255674B20(v7, &qword_27F7BE5E8, &qword_255757420);
    return 0;
  }

  v11 = *(type metadata accessor for SidebarPreferences(0) + 24);
  sub_25566CA68();
  if (v12 & 1) != 0 || (result = sub_25566CA68(), (v14))
  {
    sub_2556B736C(v7);
    return 0;
  }

  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    sub_25574F650();
    sub_2556B736C(v7);
    [v0 setIsUploadedToCloud_];
    return 1;
  }

  return result;
}

id sub_2556CA6E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = [v6 mergeableAttributes];
  if (v17)
  {
    v18 = v17;
    sub_2556CB860(v17 + OBJC_IVAR___WrappedMergeableAppStorage_value, v16);

    v19 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  }

  else
  {
    v19 = type metadata accessor for MergeableAppStorage(0);
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  type metadata accessor for MergeableAppStorage(0);
  if ((*(*(v19 - 8) + 48))(v16, 1, v19))
  {
    sub_255663294(v16, v14, &qword_27F7BE5E8, &qword_255757420);
    sub_2556B736C(v14);
    sub_255674B20(v16, &qword_27F7BE5E8, &qword_255757420);
  }

  else
  {
    a4(a1, a2, a3);
    sub_2556B736C(v16);
  }

  return [v6 setIsUploadedToCloud_];
}

uint64_t sub_2556CA914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[0] = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  v14 = sub_25574F500();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, a2);
  sub_25574F0D0();
  sub_2556CC0AC(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  sub_25574F740();
  v19 = v21[1] + *(type metadata accessor for SidebarPreferences(0) + 24);
  sub_25574F6A0();
  (*(v10 + 8))(v13, v9);
  return (*(v15 + 8))(v18, v14);
}

void sub_2556CAB9C(unint64_t a1)
{
  v2 = v1;
  v94[4] = *MEMORY[0x277D85DE8];
  v89 = sub_25574F0D0();
  v4 = *(v89 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v89);
  v77 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v73 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB18, &qword_255758B48);
  v11 = *(*(v90 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v90);
  v88 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v87 = &v73 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4C8, &qword_255757018);
  v84 = *(v86 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB20, &qword_255758B50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v73 - v19;
  AppStorageMO.customJournalsSidebarOrder.getter(&v73 - v19);
  v21 = sub_255669798(&qword_27F7BEA98, &qword_27F7BEA90, &unk_25575B390);
  v22 = sub_255750680();
  v76 = v4;
  if (v22)
  {
    v23 = v22;
    v93 = MEMORY[0x277D84F90];
    sub_2556A9CB8(0, v22 & ~(v22 >> 63), 0);
    *&v91 = v93;
    sub_255750650();
    if (v23 < 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v73 = v1;
    v74 = v10;
    v75 = a1;
    a1 = 0;
    v24 = v94[0];
    v82 = (v4 + 32);
    v83 = (v4 + 16);
    v80 = v21;
    v81 = v20;
    v79 = v23;
    v78 = v7;
    do
    {
      v25 = *(v90 + 48);
      v92 = v24;
      sub_255750650();
      if (v24 < v94[0])
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      sub_2557506B0();
      if (v24 >= v94[0])
      {
        goto LABEL_42;
      }

      v26 = sub_255750710();
      v20 = *v83;
      v27 = v87;
      v28 = v89;
      (*v83)(&v87[v25]);
      v26(v94, 0);
      v29 = v88;
      *v88 = a1;
      v30 = *(v90 + 48);
      v31 = &v27[v25];
      v32 = v29;
      (*v82)(v29 + v30, v31, v28);
      v33 = v85;
      v34 = *(v86 + 48);
      (v20)(v85, v32 + v30, v28);
      if (a1 == 0x80000000)
      {
        goto LABEL_43;
      }

      *(v33 + v34) = a1;
      sub_255674B20(v32, &qword_27F7BEB18, &qword_255758B48);
      v35 = v91;
      v93 = v91;
      v37 = *(v91 + 16);
      v36 = *(v91 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2556A9CB8(v36 > 1, v37 + 1, 1);
        v35 = v93;
      }

      ++a1;
      *(v35 + 16) = v37 + 1;
      v38 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      *&v91 = v35;
      sub_2556CC0F4(v33, v35 + v38 + *(v84 + 72) * v37);
      v92 = v24;
      v20 = v81;
      sub_255750690();
      v24 = v94[0];
    }

    while (v79 != a1);
    sub_255674B20(v20, &qword_27F7BEB20, &qword_255758B50);
    v10 = v74;
    v2 = v73;
    if (!*(v91 + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_255674B20(v20, &qword_27F7BEB20, &qword_255758B50);
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB28, &qword_255758B58);
    v39 = sub_255750C90();
    goto LABEL_14;
  }

LABEL_13:
  v39 = MEMORY[0x277D84F98];
LABEL_14:
  v94[0] = v39;

  sub_2556CB8C4(v40, 1, v94);
  if (!v2)
  {

    v20 = v94[0];
    v41 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v42 = sub_255750180();
    v43 = [v41 initWithEntityName_];

    sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
    v44 = swift_allocObject();
    v91 = xmmword_255755060;
    *(v44 + 16) = xmmword_255755060;
    AppStorageMO.customJournalsSidebarOrder.getter(v10);
    sub_255669798(&qword_27F7BEB30, &qword_27F7BEA90, &unk_25575B390);
    v45 = sub_2557502B0();
    *(v44 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB38, &qword_25575EA60);
    *(v44 + 64) = sub_255669798(&qword_27F7BF1E0, &qword_27F7BEB38, &qword_25575EA60);
    *(v44 + 32) = v45;
    v46 = sub_255750750();
    [v43 setPredicate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4B0, &qword_255757000);
    v47 = swift_allocObject();
    v48 = MEMORY[0x277D837D0];
    *(v47 + 16) = v91;
    *(v47 + 56) = v48;
    *(v47 + 32) = 25705;
    *(v47 + 40) = 0xE200000000000000;
    v49 = sub_255750370();

    [v43 setPropertiesToFetch_];

    v94[0] = 0;
    v50 = [v43 execute_];
    v51 = v94[0];
    if (!v50)
    {
      v71 = v94[0];

      sub_25574ED90();

      swift_willThrow();
LABEL_40:
      v72 = *MEMORY[0x277D85DE8];
      return;
    }

    v52 = v50;
    type metadata accessor for JournalMO();
    a1 = sub_255750380();
    v53 = v51;

    v90 = 0;
    *&v91 = a1 >> 62;
    v88 = v43;
    if (!(a1 >> 62))
    {
      v54 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
      v55 = v77;
      if (v54)
      {
        if (v54 < 1)
        {
          __break(1u);
        }

        v56 = 0;
        v57 = (v76 + 8);
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x259C3E830](v56, a1);
          }

          else
          {
            v58 = *(a1 + 8 * v56 + 32);
          }

          v59 = v58;
          v60 = [v58 id];
          if (v60)
          {
            v61 = v60;
            sub_25574F080();

            if (*(v20 + 2))
            {
              v62 = sub_25567AF04(v55);
              if (v63)
              {
                [v59 setSortOrder_];
              }
            }

            (*v57)(v55, v89);
          }

          else
          {
          }

          ++v56;
        }

        while (v54 != v56);
      }

      if (qword_27F7BD748 != -1)
      {
        swift_once();
      }

      v64 = sub_25574F2C0();
      __swift_project_value_buffer(v64, qword_27F7BEA48);

      v65 = sub_25574F2A0();
      v66 = sub_255750760();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v88;
      if (v67)
      {
        v69 = swift_slowAlloc();
        *v69 = 134217984;
        if (v91)
        {
          v70 = sub_255750A30();
        }

        else
        {
          v70 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v69 + 4) = v70;

        _os_log_impl(&dword_255661000, v65, v66, "Updated the sort hint for %ld custom journals", v69, 0xCu);
        MEMORY[0x259C3F520](v69, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      goto LABEL_40;
    }

LABEL_45:
    v54 = sub_255750A30();
    goto LABEL_18;
  }

  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_2556CB698(uint64_t a1, char a2)
{
  v12 = a1;
  v13 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_255669798(&qword_27F7BEB08, &qword_27F7BEAC0, &unk_25575D730);
  sub_255750670();
  if ((v10 & 1) == 0)
  {
    return v8;
  }

  sub_255750650();
  sub_2557506B0();
  v2 = v11;
  if (v11 == v8)
  {
    return 0;
  }

  while (1)
  {
    v3 = sub_255750710();
    v5 = *v4;
    v6 = *(v4 + 8);
    v3(&v8, 0);
    v8 = v5;
    v9 = v6;
    sub_2556CC058();
    if (sub_25574F520())
    {
      break;
    }

    sub_2557506C0();
    sub_2557506B0();
    v2 = v11;
    if (v11 == v8)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2556CB860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableAppStorage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2556CB8C4(uint64_t a1, char a2, void *a3)
{
  v7 = sub_25574F0D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4C8, &qword_255757018);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = v58 - v16;
  v63 = *(a1 + 16);
  if (!v63)
  {
    goto LABEL_22;
  }

  v58[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v62 = *(v15 + 72);
  v64 = a1;
  sub_255663294(a1 + v19, v58 - v16, &qword_27F7BE4C8, &qword_255757018);
  v59 = v8;
  v65 = *(v8 + 32);
  v66 = v7;
  v65(v11, v17, v7);
  v61 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_25567AF04(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_255744768(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_25567AF04(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_255750F10();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v33 = v20;
  v34 = v22;
  sub_255743180();
  v22 = v34;
  v20 = v33;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v69 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v59 + 8))(v11, v66);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v35 = v20;
  v36 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v37 = v36[6];
  v60 = *(v59 + 72);
  v38 = v22;
  v65((v37 + v60 * v22), v11, v66);
  *(v36[7] + 4 * v38) = v35;
  v39 = v36[2];
  v26 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v26)
  {
    v36[2] = v40;
    v41 = v64;
    if (v63 == 1)
    {
LABEL_22:

      return;
    }

    v42 = v64 + v62 + v19;
    v43 = 1;
    while (v43 < *(v41 + 16))
    {
      sub_255663294(v42, v17, &qword_27F7BE4C8, &qword_255757018);
      v65(v11, v17, v66);
      v44 = *&v17[v61];
      v45 = *a3;
      v46 = sub_25567AF04(v11);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v26 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v26)
      {
        goto LABEL_23;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        sub_255744768(v50, 1);
        v52 = *a3;
        v46 = sub_25567AF04(v11);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v51)
      {
        goto LABEL_9;
      }

      v54 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v55 = v46;
      v65((v54[6] + v60 * v46), v11, v66);
      *(v54[7] + 4 * v55) = v44;
      v56 = v54[2];
      v26 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v43;
      v54[2] = v57;
      v42 += v62;
      v41 = v64;
      if (v63 == v43)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

unsigned __int8 *sub_2556CBE20@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = v2 & 1;
  }

  return result;
}

unint64_t sub_2556CBE90()
{
  result = qword_27F7BEAF0;
  if (!qword_27F7BEAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEAD8, &qword_255758B18);
    sub_2556CBF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEAF0);
  }

  return result;
}

unint64_t sub_2556CBF14()
{
  result = qword_27F7BEAF8;
  if (!qword_27F7BEAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEAD0, &qword_255758B10);
    sub_2556CBF98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEAF8);
  }

  return result;
}

unint64_t sub_2556CBF98()
{
  result = qword_27F7BEB00;
  if (!qword_27F7BEB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEAC8, &qword_255758B08);
    sub_255669798(&qword_27F7BEB08, &qword_27F7BEAC0, &unk_25575D730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEB00);
  }

  return result;
}

unsigned __int8 *sub_2556CC048@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_2556CC058()
{
  result = qword_27F7BEB10;
  if (!qword_27F7BEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEB10);
  }

  return result;
}

uint64_t sub_2556CC0AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2556CC0F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4C8, &qword_255757018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutIconAssetMetadata.duration.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t WorkoutIconAssetMetadata.groupWorkoutStartDates.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 56));
}

uint64_t WorkoutIconAssetMetadata.groupWorkoutEndDates.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 60));
}

uint64_t WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurntWithUnit.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutIconAssetMetadata.init(type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:numberOfWorkouts:totalGroupWorkoutDuration:groupWorkoutStartDates:groupWorkoutEndDates:averageGroupHeartRateBPM:totalGroupWorkoutCaloriesBurnt:totalGroupWorkoutCaloriesBurntWithUnit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  v30 = type metadata accessor for WorkoutIconAssetMetadata(0);
  sub_2556719B8(a5, a9 + v30[6]);
  result = sub_2556719B8(a6, a9 + v30[7]);
  v32 = a9 + v30[8];
  *v32 = a7;
  *(v32 + 8) = a8 & 1;
  v33 = a9 + v30[9];
  *v33 = a10;
  *(v33 + 8) = a11 & 1;
  v34 = (a9 + v30[10]);
  *v34 = a12;
  v34[1] = a13;
  v35 = (a9 + v30[11]);
  *v35 = a14;
  v35[1] = a15;
  v36 = a9 + v30[12];
  *v36 = a16;
  *(v36 + 8) = a17 & 1;
  v37 = a9 + v30[13];
  *v37 = a18;
  *(v37 + 8) = a19 & 1;
  *(a9 + v30[14]) = a20;
  *(a9 + v30[15]) = a21;
  v38 = a9 + v30[16];
  *v38 = a22;
  *(v38 + 8) = a23 & 1;
  v39 = a9 + v30[17];
  *v39 = a24;
  *(v39 + 8) = a25 & 1;
  v40 = (a9 + v30[18]);
  *v40 = a26;
  v40[1] = a27;
  return result;
}

uint64_t sub_2556CC3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2556CE5F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2556CC42C(uint64_t a1)
{
  v2 = sub_25567BC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556CC468(uint64_t a1)
{
  v2 = sub_25567BC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutIconAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB48, &qword_255758B68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25567BC2C();
  sub_255750FF0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v48) = 0;
  sub_255750DB0();
  if (!v2)
  {
    v13 = v3[2];
    v14 = *(v3 + 24);
    LOBYTE(v48) = 1;
    sub_255750DD0();
    v15 = type metadata accessor for WorkoutIconAssetMetadata(0);
    v16 = v15[6];
    LOBYTE(v48) = 2;
    sub_25574F020();
    sub_255671808(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v17 = v15[7];
    LOBYTE(v48) = 3;
    sub_255750DF0();
    v18 = (v3 + v15[8]);
    v19 = *v18;
    v20 = *(v18 + 8);
    LOBYTE(v48) = 4;
    sub_255750DD0();
    v21 = (v3 + v15[9]);
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v48) = 5;
    sub_255750DD0();
    v24 = (v3 + v15[10]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v48) = 6;
    sub_255750DB0();
    v27 = (v3 + v15[11]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v48) = 7;
    sub_255750DB0();
    v30 = (v3 + v15[12]);
    v31 = *v30;
    v32 = *(v30 + 8);
    LOBYTE(v48) = 8;
    sub_255750DE0();
    v33 = (v3 + v15[13]);
    v34 = *v33;
    v35 = *(v33 + 8);
    LOBYTE(v48) = 9;
    sub_255750DD0();
    v48 = *(v3 + v15[14]);
    v47 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB60, &qword_255758B70);
    sub_25567BFBC(&qword_27F7BEB68, &qword_27F7BDC18);
    sub_255750DF0();
    v48 = *(v3 + v15[15]);
    v47 = 11;
    sub_255750DF0();
    v36 = (v3 + v15[16]);
    v37 = *v36;
    v38 = *(v36 + 8);
    LOBYTE(v48) = 12;
    sub_255750DD0();
    v39 = (v3 + v15[17]);
    v40 = *v39;
    v41 = *(v39 + 8);
    LOBYTE(v48) = 13;
    sub_255750DD0();
    v42 = (v3 + v15[18]);
    v43 = *v42;
    v44 = v42[1];
    LOBYTE(v48) = 14;
    sub_255750DB0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WorkoutRouteAssetMetadata.routeData.getter()
{
  v1 = *v0;
  sub_25567625C(*v0, *(v0 + 8));
  return v1;
}

uint64_t WorkoutRouteAssetMetadata.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WorkoutRouteAssetMetadata.duration.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t WorkoutRouteAssetMetadata.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutRouteAssetMetadata(0) + 32);

  return sub_2556700F4(v3, a1);
}

uint64_t WorkoutRouteAssetMetadata.caloriesBurnt.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutRouteAssetMetadata(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t WorkoutRouteAssetMetadata.distance.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutRouteAssetMetadata(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a1)
  {
    sub_2556CCC9C(a1);

    v22 = objc_allocWithZone(MEMORY[0x277CBEA60]);
    v23 = sub_255750370();

    v24 = [v22 initWithArray:v23 copyItems:1];

    v25 = sub_2556CCE98();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xF000000000000000;
  }

  *a9 = v25;
  *(a9 + 8) = v27;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5 & 1;
  v28 = type metadata accessor for WorkoutRouteAssetMetadata(0);
  sub_2556719B8(a6, a9 + v28[7]);
  result = sub_2556719B8(a7, a9 + v28[8]);
  v30 = a9 + v28[9];
  *v30 = a8;
  *(v30 + 8) = a10 & 1;
  v31 = a9 + v28[10];
  *v31 = a11;
  *(v31 + 8) = a12 & 1;
  v32 = (a9 + v28[11]);
  *v32 = a13;
  v32[1] = a14;
  v33 = (a9 + v28[12]);
  *v33 = a15;
  v33[1] = a16;
  return result;
}

char *sub_2556CCC9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_255750A30();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2556A9CF8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x259C3E830](i, a1);
        sub_255669A88(0, &qword_27F7BEC68, 0x277CE41F8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2556A9CF8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_255663374(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_255669A88(0, &qword_27F7BEC68, 0x277CE41F8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2556A9CF8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_255663374(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2556CCE98()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v18[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v18];
  v2 = v18[0];
  if (v1)
  {
    v3 = sub_25574EF90();
  }

  else
  {
    v4 = v2;
    v5 = sub_25574ED90();

    swift_willThrow();
    if (qword_27F7BD830 != -1)
    {
      swift_once();
    }

    v6 = sub_25574F2C0();
    __swift_project_value_buffer(v6, qword_27F7C0390);
    v7 = v0;
    v8 = v5;
    v9 = sub_25574F2A0();
    v10 = sub_255750780();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      *(v11 + 4) = v7;
      *v12 = v7;
      *(v11 + 12) = 2112;
      v13 = v7;
      v14 = v5;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      v12[1] = v15;
      _os_log_impl(&dword_255661000, v9, v10, "Error converting %@ to Data: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEC80, &qword_255757E90);
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v12, -1, -1);
      MEMORY[0x259C3F520](v11, -1, -1);
    }

    else
    {
    }

    v3 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t WorkoutRouteAssetMetadata.route.getter()
{
  v1 = v0[1];
  if (v1 >> 60 != 15)
  {
    v2 = *v0;
    sub_255674F54(v2, v1);
    v3 = sub_2556CD2BC();
    if (v3)
    {
      v4 = v3;
      v14 = MEMORY[0x277D84F90];
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 >> 62)
      {
LABEL_24:
        v6 = sub_255750A30();
        v13 = v2;
        if (v6)
        {
LABEL_5:
          v7 = 0;
          v2 = MEMORY[0x277D84F90];
          do
          {
            v8 = v7;
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                MEMORY[0x259C3E830](v8, v4);
                v7 = v8 + 1;
                if (__OFADD__(v8, 1))
                {
                  goto LABEL_22;
                }
              }

              else
              {
                if (v8 >= *(v5 + 16))
                {
                  goto LABEL_23;
                }

                v9 = *(v4 + 8 * v8 + 32);
                swift_unknownObjectRetain();
                v7 = v8 + 1;
                if (__OFADD__(v8, 1))
                {
LABEL_22:
                  __break(1u);
LABEL_23:
                  __break(1u);
                  goto LABEL_24;
                }
              }

              objc_opt_self();
              v10 = swift_dynamicCastObjCClass();
              if (v10)
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v8;
              if (v7 == v6)
              {
                goto LABEL_26;
              }
            }

            MEMORY[0x259C3E030](v10);
            if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2557503B0();
            }

            sub_255750400();
            v2 = v14;
          }

          while (v7 != v6);
          goto LABEL_26;
        }
      }

      else
      {
        v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v2;
        if (v6)
        {
          goto LABEL_5;
        }
      }

      v2 = MEMORY[0x277D84F90];
LABEL_26:
      sub_2556A15B8(v13, v1);

      return v2;
    }

    sub_2556A15B8(v2, v1);
  }

  return 0;
}

unint64_t sub_2556CD2BC()
{
  sub_255669A88(0, &qword_27F7BEC68, 0x277CE41F8);
  sub_255669A88(0, &unk_27F7BEC70, 0x277CBEA60);
  sub_255669A88(0, &qword_27F7C03B0, 0x277CCAAC8);
  result = sub_255750820();
  if (result)
  {
    if (result >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEC88, &qword_255758F88);
      v1 = sub_255750C50();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v1 = result;

      sub_255750EC0();
    }

    return v1;
  }

  return result;
}

unint64_t sub_2556CD578(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7461446574756F72;
    v6 = 0x6E6F697461727564;
    if (a1 != 2)
    {
      v6 = 0x6D69547472617473;
    }

    if (a1)
    {
      v5 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736569726F6C6163;
    v2 = 0x736569726F6C6163;
    if (a1 != 7)
    {
      v2 = 0x65636E6174736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656D6954646E65;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2556CD6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2556CEA98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2556CD6D0(uint64_t a1)
{
  v2 = sub_2556CDA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556CD70C(uint64_t a1)
{
  v2 = sub_2556CDA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutRouteAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB88, &qword_255758B80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556CDA90();
  sub_255750FF0();
  v11 = *(v3 + 8);
  v32 = *v3;
  v33 = v11;
  v34 = 0;
  sub_25567625C(v32, v11);
  sub_255687198();
  sub_255750DF0();
  if (v2)
  {
    sub_2556A15B8(v32, v33);
  }

  else
  {
    sub_2556A15B8(v32, v33);
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    LOBYTE(v32) = 1;
    sub_255750DB0();
    v14 = *(v3 + 32);
    v15 = *(v3 + 40);
    LOBYTE(v32) = 2;
    sub_255750DD0();
    v16 = type metadata accessor for WorkoutRouteAssetMetadata(0);
    v17 = v16[7];
    LOBYTE(v32) = 3;
    sub_25574F020();
    sub_255671808(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v18 = v16[8];
    LOBYTE(v32) = 4;
    sub_255750DF0();
    v19 = (v3 + v16[9]);
    v20 = *v19;
    v21 = *(v19 + 8);
    LOBYTE(v32) = 5;
    sub_255750DD0();
    v22 = (v3 + v16[10]);
    v23 = *v22;
    v24 = *(v22 + 8);
    LOBYTE(v32) = 6;
    sub_255750DD0();
    v25 = (v3 + v16[11]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v32) = 7;
    sub_255750DB0();
    v28 = (v3 + v16[12]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v32) = 8;
    sub_255750DB0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2556CDA90()
{
  result = qword_27F7BEB90;
  if (!qword_27F7BEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEB90);
  }

  return result;
}

uint64_t WorkoutRouteAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BEBA0, &qword_255758B88);
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = type metadata accessor for WorkoutRouteAssetMetadata(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v18 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2556CDA90();
  v20 = v44;
  sub_255750FE0();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v21 = v9;
  v22 = v42;
  v47 = 0;
  sub_255675208();
  sub_255750D40();
  *v17 = v46;
  LOBYTE(v46) = 1;
  *(v17 + 2) = sub_255750D00();
  *(v17 + 3) = v23;
  LOBYTE(v46) = 2;
  v24 = sub_255750D20();
  v44 = 0;
  *(v17 + 4) = v24;
  v17[40] = v25 & 1;
  sub_25574F020();
  LOBYTE(v46) = 3;
  sub_255671808(&qword_27F7BDC38, MEMORY[0x277CC9578]);
  sub_255750D40();
  sub_2556719B8(v21, &v17[v14[7]]);
  LOBYTE(v46) = 4;
  sub_255750D40();
  sub_2556719B8(v7, &v17[v14[8]]);
  LOBYTE(v46) = 5;
  v26 = sub_255750D20();
  v27 = &v17[v14[9]];
  *v27 = v26;
  v27[8] = v28 & 1;
  LOBYTE(v46) = 6;
  v29 = sub_255750D20();
  v30 = &v17[v14[10]];
  *v30 = v29;
  v30[8] = v31 & 1;
  LOBYTE(v46) = 7;
  v32 = sub_255750D00();
  v33 = &v17[v14[11]];
  *v33 = v32;
  v33[1] = v34;
  LOBYTE(v46) = 8;
  v35 = sub_255750D00();
  v37 = v36;
  (*(v22 + 8))(v13, v43);
  v38 = &v17[v14[12]];
  *v38 = v35;
  v38[1] = v37;
  sub_25567C058(v17, v41, type metadata accessor for WorkoutRouteAssetMetadata);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_25567C0C0(v17, type metadata accessor for WorkoutRouteAssetMetadata);
}

uint64_t sub_2556CE0E0(uint64_t a1)
{
  *(a1 + 8) = sub_255671808(&qword_27F7BEBB0, type metadata accessor for WorkoutIconAssetMetadata);
  result = sub_255671808(&qword_27F7BEBB8, type metadata accessor for WorkoutIconAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556CE164(uint64_t a1)
{
  *(a1 + 8) = sub_255671808(&qword_27F7BEBC0, type metadata accessor for WorkoutRouteAssetMetadata);
  result = sub_255671808(&unk_27F7BEBC8, type metadata accessor for WorkoutRouteAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

void sub_2556CE240()
{
  sub_25566BFA8(319, &unk_27F7BEC28);
  if (v0 <= 0x3F)
  {
    sub_25566BFA8(319, &qword_27F7BE538);
    if (v1 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BEBF0);
      if (v2 <= 0x3F)
      {
        sub_25566E80C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutIconAssetMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutIconAssetMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2556CE494()
{
  result = qword_27F7BEC38;
  if (!qword_27F7BEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEC38);
  }

  return result;
}

unint64_t sub_2556CE4EC()
{
  result = qword_27F7BEC40;
  if (!qword_27F7BEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEC40);
  }

  return result;
}

unint64_t sub_2556CE544()
{
  result = qword_27F7BEC48;
  if (!qword_27F7BEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEC48);
  }

  return result;
}

unint64_t sub_2556CE59C()
{
  result = qword_27F7BEC50;
  if (!qword_27F7BEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEC50);
  }

  return result;
}

uint64_t sub_2556CE5F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000255752B20 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736569726F6C6163 && a2 == 0xED0000746E727542 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736569726F6C6163 && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000255752B40 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000255752B60 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000255752B80 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000255752BA0 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000255752BC0 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000255752BE0 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000026 && 0x8000000255752C00 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_2556CEA98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446574756F72 && a2 == 0xE900000000000061;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000255752B20 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736569726F6C6163 && a2 == 0xED0000746E727542 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736569726F6C6163 && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t CRDT.serializedData.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27F7BD768 != -1)
  {
    swift_once();
  }

  if (qword_27F7BD760 != -1)
  {
    swift_once();
  }

  v3 = sub_25574F770();
  __swift_project_value_buffer(v3, qword_27F7C0570);
  v4 = *(a2 + 8);
  return sub_25574F4B0();
}

BOOL CRDT.requiresMerging(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_255750950();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_25574FD60();
  v10 = (*(*(AssociatedTypeWitness - 8) + 48))(v9, 1, AssociatedTypeWitness) != 1;
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_2556CEFC8()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BEC90);
  v1 = __swift_project_value_buffer(v0, qword_27F7BEC90);
  if (qword_27F7BD5E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C0528);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2556CF090()
{
  v0 = sub_25574F770();
  __swift_allocate_value_buffer(v0, qword_27F7C0570);
  v1 = __swift_project_value_buffer(v0, qword_27F7C0570);
  v2 = *MEMORY[0x277CFB5F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_2556CF118()
{
  result = sub_2556CF138();
  qword_27F7C0588 = result;
  return result;
}

uint64_t sub_2556CF138()
{
  v0 = sub_25574F2C0();
  v23 = *(v0 - 8);
  v1 = *(v23 + 64);
  MEMORY[0x28223BE20](v0);
  v22[3] = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v22 - v5;
  v7 = sub_25574EF10();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v22 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v22 - v16;
  if (qword_27F7BD7F8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FileStoreConfiguration();
  __swift_project_value_buffer(v18, qword_27F7BFDF0);
  FileStoreConfiguration.applicationSupportDirectoryURL.getter(v15);
  sub_25574EEA0();
  v19 = *(v8 + 8);
  v19(v15, v7);
  sub_25574FE80();
  (*(v8 + 16))(v12, v17, v7);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  (*(v8 + 56))(v6, 1, 1, v7);
  v20 = sub_25574FE70();
  v19(v17, v7);
  return v20;
}

uint64_t CRValue.serializedData.getter()
{
  if (qword_27F7BD768 != -1)
  {
    swift_once();
  }

  if (qword_27F7BD760 != -1)
  {
    swift_once();
  }

  v0 = sub_25574F770();
  __swift_project_value_buffer(v0, qword_27F7C0570);
  return sub_25574FDC0();
}

id WrappedMergeableJournalAttributes.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2556BBB3C(a1, v3 + OBJC_IVAR___WrappedMergeableJournalAttributes_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2556CF788(a1);
  return v4;
}

id WrappedMergeableJournalAttributes.init(_:)(uint64_t a1)
{
  sub_2556BBB3C(a1, v1 + OBJC_IVAR___WrappedMergeableJournalAttributes_value);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WrappedMergeableJournalAttributes(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2556CF788(a1);
  return v3;
}

uint64_t sub_2556CF788(uint64_t a1)
{
  v2 = type metadata accessor for MergeableJournalAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WrappedMergeableJournalAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2556CF8A0(uint64_t a1)
{
  v2 = type metadata accessor for WrappedMergeableJournalAttributes(0);
  v3 = objc_allocWithZone(v2);
  sub_2556BBB3C(a1, v3 + OBJC_IVAR___WrappedMergeableJournalAttributes_value);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2556CF788(a1);
  return v4;
}

id sub_2556CF97C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2556CF9C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x69746375646F7250;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 16721;
    }

    else
    {
      v5 = 0x69746375646F7250;
    }

    if (v4)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xEA00000000006E6FLL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE400000000000000;
    v5 = 1953719636;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6D706F6C65766544;
    }

    else
    {
      v5 = 0x676E6967617453;
    }

    if (v4 == 3)
    {
      v6 = 0xEB00000000746E65;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1953719636;
  v9 = 0x6D706F6C65766544;
  v10 = 0xEB00000000746E65;
  if (a2 != 3)
  {
    v9 = 0x676E6967617453;
    v10 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 16721;
    v2 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_255750EB0();
  }

  return v13 & 1;
}

uint64_t sub_2556CFB34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F746F6870;
    }

    else
    {
      v4 = 0x746E656D6F6DLL;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6E6F697461657263;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F746F6870;
    }

    else
    {
      v9 = 0x746E656D6F6DLL;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x6D6F74737563;
    if (a2 != 3)
    {
      v6 = 0x6E776F6E6B6E75;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6E6F697461657263;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_255750EB0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t EntrySource.init(rawValue:)@<X0>(uint64_t a1@<X8>)
{

  v2 = type metadata accessor for EntrySource();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t EntrySource.rawValue.getter()
{
  v1 = type metadata accessor for EntrySource();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556CFEB0(v0, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BECD0, &qword_255759028);
  v6 = (*(*(v5 - 8) + 48))(v4, 2, v5);
  if (v6)
  {
    if (v6 == 1)
    {
      return 0x746E456B6E616C62;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v8 = *(v5 + 48);
    v9 = sub_25574F020();
    (*(*(v9 - 8) + 8))(&v4[v8], v9);
    v10 = sub_25574F0D0();
    (*(*(v10 - 8) + 8))(v4, v10);
    return 0x6574736567677573;
  }
}

uint64_t sub_2556CFEB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntrySource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556CFF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);

  v6 = *(*(a2 - 8) + 56);

  return v6(a3, 1, 1, a2);
}

uint64_t sub_2556CFF84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556CFEB0(v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BECD0, &qword_255759028);
  result = (*(*(v7 - 8) + 48))(v5, 2, v7);
  if (result)
  {
    if (result == 1)
    {
      v9 = 0xEA00000000007972;
      v10 = 0x746E456B6E616C62;
    }

    else
    {
      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v11 = *(v7 + 48);
    v12 = sub_25574F020();
    (*(*(v12 - 8) + 8))(&v5[v11], v12);
    v13 = sub_25574F0D0();
    result = (*(*(v13 - 8) + 8))(v5, v13);
    v9 = 0xEE007972746E4564;
    v10 = 0x6574736567677573;
  }

  *a2 = v10;
  a2[1] = v9;
  return result;
}

uint64_t EntryDateSource.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E656D6F6DLL;
  v3 = 0x6E6F697461657263;
  v4 = 0x6D6F74737563;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F746F6870;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2556D01BC()
{
  v1 = *v0;
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556D0294()
{
  *v0;
  *v0;
  *v0;
  sub_2557501F0();
}

uint64_t sub_2556D0358()
{
  v1 = *v0;
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

void sub_2556D0438(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x746E656D6F6DLL;
  v5 = 0xE800000000000000;
  v6 = 0x6E6F697461657263;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74737563;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F746F6870;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2556D04F4(uint64_t a1, const char **a2, SEL *a3)
{
  v43 = a3;
  v5 = v3;
  v41 = a1;
  v42 = sub_25574F150();
  v40 = *(v42 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25574F160();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = sub_25574F020();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v37 - v26;
  v28 = *a2;
  v44 = v5;
  v29 = [v5 v28];
  if (v29)
  {
    v30 = v29;
    sub_25574EFF0();

    v31 = *(v21 + 32);
    v31(v19, v25, v20);
    (*(v21 + 56))(v19, 0, 1, v20);
    v31(v27, v19, v20);
  }

  else
  {
    (*(v21 + 56))(v19, 1, 1, v20);
    sub_25574F010();
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      sub_255687634(v19);
    }
  }

  sub_25574F140();
  v32 = v40;
  v33 = v42;
  (*(v40 + 104))(v8, *MEMORY[0x277CC9968], v42);
  sub_25574F130();
  (*(v32 + 8))(v8, v33);
  (*(v38 + 8))(v12, v39);
  if ((*(v21 + 48))(v17, 1, v20) == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_25574EFC0();
    (*(v21 + 8))(v17, v20);
  }

  v35 = v44;
  [v44 *v43];

  [v35 setIsUploadedToCloud_];
  return (*(v21 + 8))(v27, v20);
}

unint64_t sub_2556D0948()
{
  result = qword_27F7BECD8;
  if (!qword_27F7BECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BECD8);
  }

  return result;
}

void sub_2556D0A04(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  a3(0);
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_255755060;
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB38, &qword_25575EA60);
  *(v8 + 64) = sub_2556D3AD0();
  *(v8 + 32) = a1;

  v9 = sub_255750750();
  [v7 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  sub_2557508C0();
  if (!v4)
  {
    a4();
  }
}

uint64_t sub_2556D0B8C()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BED00);
  v1 = __swift_project_value_buffer(v0, qword_27F7BED00);
  if (qword_27F7BD5C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id static JournalDataUtilities.fetchObjectID(objectURI:context:)(uint64_t a1, void *a2)
{
  v3 = sub_25574EEE0();
  if (!v4)
  {
    return 0;
  }

  if (v3 == 0x616465726F632D78 && v4 == 0xEA00000000006174)
  {

    goto LABEL_6;
  }

  v5 = sub_255750EB0();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  result = [a2 persistentStoreCoordinator];
  if (result)
  {
    v7 = result;
    v8 = sub_25574EE80();
    v9 = [v7 managedObjectIDForURIRepresentation_];

    return v9;
  }

  return result;
}

uint64_t static JournalDataUtilities.fetchJournalEntryMOs(objectURIs:context:)(uint64_t a1, void *a2)
{
  v2 = _s13JournalShared0A13DataUtilitiesO14fetchObjectIds10objectURIs7contextSaySo09NSManagedF2IDCGSay10Foundation3URLVG_So0kF7ContextCtFZ_0(a1, a2);
  v3 = v2;
  v17 = MEMORY[0x277D84F90];
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = sub_255750A30();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x259C3E830](v8, v3);
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_22;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = [a2 objectWithID_];
      type metadata accessor for JournalEntryMO();
      if (swift_dynamicCastClass())
      {
        break;
      }

      type metadata accessor for JournalEntryAssetMO();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = [v12 entry];

        if (v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

LABEL_17:
    MEMORY[0x259C3E030]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2557503B0();
    }

    sub_255750400();
    v7 = v17;
  }

  while (v6 != v5);
LABEL_25:

  return v7;
}

uint64_t static JournalDataUtilities.getValidEntriesCount(from:to:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a3;
  v7 = sub_2557508A0();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40) - 8);
  v5[9] = v10;
  v5[10] = *(v10 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = sub_255750490();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v5[13] = v11;
  v5[14] = v13;

  return MEMORY[0x2822009F8](sub_2556D10DC, v11, v13);
}

uint64_t sub_2556D10DC()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v19 = v0[6];
  v20 = v0[8];
  v18 = v0[5];
  v6 = v0[4];
  sub_2556700F4(v0[3], v1);
  sub_2556700F4(v6, v2);
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (v3 + v7 + v8) & ~v7;
  v10 = swift_allocObject();
  v0[15] = v10;
  sub_255675060(v1, v10 + v8, &qword_27F7BEB40, &unk_255754E40);
  sub_255675060(v2, v10 + v9, &qword_27F7BEB40, &unk_255754E40);
  *(v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  (*(v5 + 104))(v20, *MEMORY[0x277CBE110], v19);
  v11 = *(MEMORY[0x277CBE118] + 4);
  v12 = v18;
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_2556D1294;
  v14 = v0[8];
  v15 = v0[5];
  v16 = MEMORY[0x277D83B88];

  return MEMORY[0x28210EE50](v0 + 2, v14, sub_2556D3704, v10, v16);
}

uint64_t sub_2556D1294()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 136) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 112);
  v10 = *(v2 + 104);
  if (v0)
  {
    v11 = sub_2556D14D8;
  }

  else
  {
    v11 = sub_2556D1450;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2556D1450()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_2556D14D8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

void sub_2556D1550(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_2556D2D64(a1, a2, 0, 1);
  type metadata accessor for JournalEntryMO();
  v6 = sub_2557508B0();

  if (!v3)
  {
    *a3 = v6;
  }
}

uint64_t static JournalDataUtilities.getValidEntriesCount(from:to:fetchLimit:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_2556D2D64(a1, a2, a3, a4 & 1);
  type metadata accessor for JournalEntryMO();
  v5 = sub_2557508B0();

  return v5;
}

uint64_t static JournalDataUtilities.getTimelineEntriesIDs(fetchLimit:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 24) = a3;
  *(v5 + 32) = a5;
  v7 = sub_2557508A0();
  *(v5 + 40) = v7;
  v8 = *(v7 - 8);
  *(v5 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = sub_255750490();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v5 + 64) = v10;
  *(v5 + 72) = v12;

  return MEMORY[0x2822009F8](sub_2556D1718, v10, v12);
}

uint64_t sub_2556D1718()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 96);
  v6 = *(v0 + 24);
  v7 = swift_allocObject();
  *(v0 + 80) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5 & 1;
  *(v7 + 32) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v8 = *(MEMORY[0x277CBE118] + 4);
  v9 = v4;
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB38, &qword_25575EA60);
  *v10 = v0;
  v10[1] = sub_2556D1868;
  v12 = *(v0 + 56);
  v13 = *(v0 + 32);

  return MEMORY[0x28210EE50](v0 + 16, v12, sub_2556D37B8, v7, v11);
}

void sub_2556D1868()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[10];
    (*(v2[6] + 8))(v2[7], v2[5]);

    v6 = v2[8];
    v7 = v2[9];

    MEMORY[0x2822009F8](sub_2556D19BC, v6, v7);
  }
}

uint64_t sub_2556D19BC()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2556D1A24@<X0>(char *a1@<X0>, char a2@<W1>, char **a3@<X8>)
{
  v45 = a3;
  v58 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v57 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v55 = &v43 - v11;
  v12 = sub_25574F0D0();
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v12);
  v56 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v22 = sub_25574F020();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 1, 1, v22);
  v23(v19, 1, 1, v22);
  v43 = v21;
  v44 = v19;
  v24 = sub_2556D34B0(v21, v19, v58, a2 & 1);
  v25 = v24;
  if (v24 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_255750A30())
  {
    v27 = 0;
    v53 = v25 & 0xFFFFFFFFFFFFFF8;
    v54 = v25 & 0xC000000000000001;
    v51 = (v47 + 48);
    v52 = (v47 + 56);
    v58 = MEMORY[0x277D84F90];
    v49 = i;
    v50 = (v47 + 32);
    v46 = v8;
    v48 = v25;
    while (v54)
    {
      v28 = MEMORY[0x259C3E830](v27, v25);
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v30 = v28;
      v31 = [v30 id];
      if (v31)
      {
        v32 = v31;
        sub_25574F080();

        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      (*v52)(v8, v33, 1, v12);
      v34 = v57;
      sub_255675060(v8, v57, &unk_27F7BED20, &unk_2557551D0);
      v35 = v34;
      v36 = v55;
      sub_255675060(v35, v55, &unk_27F7BED20, &unk_2557551D0);

      v37 = v36;
      if ((*v51)(v36, 1, v12) == 1)
      {
        sub_255674B20(v36, &unk_27F7BED20, &unk_2557551D0);
        v25 = v48;
      }

      else
      {
        v38 = *v50;
        (*v50)(v56, v37, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_255698A7C(0, *(v58 + 2) + 1, 1, v58);
        }

        v40 = *(v58 + 2);
        v39 = *(v58 + 3);
        if (v40 >= v39 >> 1)
        {
          v58 = sub_255698A7C(v39 > 1, v40 + 1, 1, v58);
        }

        v41 = v58;
        *(v58 + 2) = v40 + 1;
        v38(&v41[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v40], v56, v12);
        v8 = v46;
        v25 = v48;
      }

      ++v27;
      if (v29 == v49)
      {
        goto LABEL_24;
      }
    }

    if (v27 >= *(v53 + 16))
    {
      goto LABEL_21;
    }

    v28 = *(v25 + 8 * v27 + 32);
    v29 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v58 = MEMORY[0x277D84F90];
LABEL_24:

  sub_255674B20(v44, &qword_27F7BEB40, &unk_255754E40);
  result = sub_255674B20(v43, &qword_27F7BEB40, &unk_255754E40);
  *v45 = v58;
  return result;
}

char *static JournalDataUtilities.getTimelineEntriesIDs(from:to:fetchLimit:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v47 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = sub_25574F0D0();
  v39 = *(v17 - 8);
  v18 = *(v39 + 64);
  MEMORY[0x28223BE20](v17);
  v46 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2556D34B0(a1, a2, a3, a4 & 1);
  v21 = v20;
  if (v20 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_255750A30())
  {
    v23 = 0;
    v44 = v21 & 0xFFFFFFFFFFFFFF8;
    v45 = v21 & 0xC000000000000001;
    v42 = (v39 + 48);
    v43 = (v39 + 56);
    v48 = MEMORY[0x277D84F90];
    v40 = v16;
    v41 = (v39 + 32);
    v38 = v12;
    while (v45)
    {
      v24 = MEMORY[0x259C3E830](v23, v21);
      v16 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v25 = v21;
      v26 = v24;
      v27 = [v26 id];
      if (v27)
      {
        v28 = v27;
        sub_25574F080();

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      (*v43)(v12, v29, 1, v17);
      v30 = v47;
      sub_255675060(v12, v47, &unk_27F7BED20, &unk_2557551D0);
      v31 = v40;
      sub_255675060(v30, v40, &unk_27F7BED20, &unk_2557551D0);

      if ((*v42)(v31, 1, v17) == 1)
      {
        sub_255674B20(v31, &unk_27F7BED20, &unk_2557551D0);
      }

      else
      {
        v32 = *v41;
        (*v41)(v46, v31, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_255698A7C(0, *(v48 + 2) + 1, 1, v48);
        }

        v34 = *(v48 + 2);
        v33 = *(v48 + 3);
        if (v34 >= v33 >> 1)
        {
          v48 = sub_255698A7C(v33 > 1, v34 + 1, 1, v48);
        }

        v35 = v48;
        *(v48 + 2) = v34 + 1;
        v32(&v35[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v34], v46, v17);
        v12 = v38;
      }

      v21 = v25;
      ++v23;
      if (v16 == i)
      {
        goto LABEL_24;
      }
    }

    if (v23 >= *(v44 + 16))
    {
      goto LABEL_21;
    }

    v24 = *(v21 + 8 * v23 + 32);
    v16 = (v23 + 1);
    if (!__OFADD__(v23, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v48 = MEMORY[0x277D84F90];
LABEL_24:

  return v48;
}

void *sub_2556D2364()
{
  result = sub_2556D2384();
  off_27F7BED18 = result;
  return result;
}

uint64_t sub_2556D2384()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED60, &qword_255755C50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255759150;
  v1 = type metadata accessor for JournalEntryMO();
  v2 = sub_2556D3A88(&unk_27F7BF040, type metadata accessor for JournalEntryMO);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v4 = sub_2556D3A88(&qword_27F7BED70, type metadata accessor for JournalEntryAssetFileAttachmentMO);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for JournalEntryAssetMO();
  v6 = sub_2556D3A88(&qword_27F7BED78, type metadata accessor for JournalEntryAssetMO);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for JournalMO();
  v8 = sub_2556D3A88(&unk_27F7BED80, type metadata accessor for JournalMO);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for AppStorageMO();
  v10 = sub_2556D3A88(&qword_27F7BE610, type metadata accessor for AppStorageMO);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  if (static Runtime.Environment.useCloudKitStagingEnvironment.getter())
  {
    sub_25574A830(MEMORY[0x277D84F90]);
  }

  return v0;
}

uint64_t static JournalDataUtilities.markAllLocalDataForReuploading(context:)(uint64_t a1)
{
  if (qword_27F7BD778 != -1)
  {
LABEL_8:
    swift_once();
  }

  v3 = off_27F7BED18;
  v4 = *(off_27F7BED18 + 2);

  v5 = (v3 + 5);
  v6 = -1;
  while (v6 - v4 != -1)
  {
    if (++v6 >= v3[2])
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = v5 + 16;
    v8 = *(v5 - 1);
    (*(*v5 + 80))(a1);
    v5 = v7;
    if (v1)
    {
    }
  }
}

void static JournalDataUtilities.deleteAllUserContent(context:)(void *a1)
{
  sub_2556D37DC(a1);
  if (!v1)
  {
    if (qword_27F7BD7F8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for FileStoreConfiguration();
    __swift_project_value_buffer(v2, qword_27F7BFDF0);
    FileStoreConfiguration.deleteLocalFiles()();
  }
}

void static JournalDataUtilities.deleteAllLocalData(context:)(void *a1)
{
  sub_2556D37DC(a1);
  if (!v1)
  {
    if (qword_27F7BD7F8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for FileStoreConfiguration();
    __swift_project_value_buffer(v3, qword_27F7BFDF0);
    FileStoreConfiguration.deleteLocalFiles()();
    sub_2556AC8A4(a1);
    type metadata accessor for AppStorageMO();
    static NSManagedObject.batchDeleteAll(context:)(a1);
  }
}

uint64_t static NSPredicate.entryDateInterval(interval:)()
{
  v28 = sub_25574F160();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v28);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25574F020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v29 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v27 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v27 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  v17 = sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v27[0] = "bundleId bundleDate ";
  v27[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_255755020;
  sub_25574EB60();
  sub_25574F140();
  sub_25574F110();
  (*(v0 + 8))(v3, v28);
  v19 = *(v5 + 8);
  v19(v16, v4);
  v20 = sub_25574EFC0();
  v19(v14, v4);
  v21 = sub_255669A88(0, &qword_27F7BDD60, 0x277CBEAA8);
  *(v18 + 56) = v21;
  v22 = sub_2556D3A10();
  *(v18 + 64) = v22;
  *(v18 + 32) = v20;
  sub_25574EB50();
  v23 = v29;
  Date.endOfDay.getter(v29);
  v19(v11, v4);
  v24 = v23;
  v25 = sub_25574EFC0();
  v19(v24, v4);
  *(v18 + 96) = v21;
  *(v18 + 104) = v22;
  *(v18 + 72) = v25;
  return sub_255750750();
}

uint64_t sub_2556D2A64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BED48, &qword_255759198);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27F7BED50;
    v3 = &unk_2557591A0;
  }

  else
  {
    v2 = &unk_27F7C0010;
    v3 = "*}";
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t _s13JournalShared0A13DataUtilitiesO14fetchObjectIds10objectURIs7contextSaySo09NSManagedF2IDCGSay10Foundation3URLVG_So0kF7ContextCtFZ_0(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = sub_25574EF10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277D84F90];
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v26 = v10;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    v24 = MEMORY[0x277D84F90];
    v10(v7, v11, v3);
    while (1)
    {
      v14 = sub_25574EEE0();
      if (!v15)
      {
        break;
      }

      if (v14 == 0x616465726F632D78 && v15 == 0xEA00000000006174)
      {
      }

      else
      {
        v16 = sub_255750EB0();

        if ((v16 & 1) == 0)
        {
          break;
        }
      }

      v17 = [v25 persistentStoreCoordinator];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v19 = sub_25574EE80();
      v20 = [v18 managedObjectIDForURIRepresentation_];

      v21 = (*v13)(v7, v3);
      if (v20)
      {
        MEMORY[0x259C3E030](v21);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2557503B0();
        }

        sub_255750400();
        v24 = v27;
      }

LABEL_4:
      v11 += v12;
      if (!--v8)
      {
        return v24;
      }

      v26(v7, v11, v3);
    }

    (*v13)(v7, v3);
    goto LABEL_4;
  }

  return MEMORY[0x277D84F90];
}

id sub_2556D2D64(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v57 = a4;
  v52 = a3;
  v55 = a2;
  v5 = sub_25574F160();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v47 - v13;
  v15 = sub_25574F020();
  v58 = *(v15 - 8);
  v16 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v51 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v53 = v47 - v20;
  MEMORY[0x28223BE20](v19);
  v54 = v47 - v21;
  v22 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v23 = sub_255750180();
  v24 = [v22 initWithEntityName_];

  v59 = MEMORY[0x277D84F90];
  if (qword_27F7BD650 != -1)
  {
    swift_once();
  }

  v25 = qword_27F7BDCF0;
  MEMORY[0x259C3E030]();
  if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2557503B0();
  }

  sub_255750400();
  sub_2556700F4(a1, v14);
  v26 = v58;
  v27 = *(v58 + 48);
  v28 = v27(v14, 1, v15);
  v29 = MEMORY[0x277D837D0];
  v56 = v24;
  if (v28 == 1)
  {
    sub_255674B20(v14, &qword_27F7BEB40, &unk_255754E40);
  }

  else
  {
    (*(v26 + 32))(v54, v14, v15);
    v47[1] = sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
    v30 = v26;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_255755020;
    *(v31 + 56) = v29;
    *(v31 + 64) = sub_255666F5C();
    *(v31 + 32) = 0x7461447972746E65;
    *(v31 + 40) = 0xE900000000000065;
    v32 = v48;
    sub_25574F140();
    v33 = v53;
    sub_25574F110();
    (*(v49 + 8))(v32, v50);
    v34 = sub_25574EFC0();
    v35 = *(v30 + 8);
    v35(v33, v15);
    *(v31 + 96) = sub_255669A88(0, &qword_27F7BDD60, 0x277CBEAA8);
    *(v31 + 104) = sub_2556D3A10();
    *(v31 + 72) = v34;
    sub_255750750();
    MEMORY[0x259C3E030]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v45 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2557503B0();
    }

    sub_255750400();
    v35(v54, v15);
    v26 = v58;
  }

  sub_2556700F4(v55, v12);
  if (v27(v12, 1, v15) == 1)
  {
    sub_255674B20(v12, &qword_27F7BEB40, &unk_255754E40);
  }

  else
  {
    v36 = v51;
    (*(v26 + 32))(v51, v12, v15);
    sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_255755020;
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 64) = sub_255666F5C();
    *(v37 + 32) = 0x7461447972746E65;
    *(v37 + 40) = 0xE900000000000065;
    v38 = v53;
    Date.endOfDay.getter(v53);
    v39 = sub_25574EFC0();
    v40 = *(v26 + 8);
    v40(v38, v15);
    *(v37 + 96) = sub_255669A88(0, &qword_27F7BDD60, 0x277CBEAA8);
    *(v37 + 104) = sub_2556D3A10();
    *(v37 + 72) = v39;
    sub_255750750();
    MEMORY[0x259C3E030]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v46 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2557503B0();
    }

    sub_255750400();
    v40(v36, v15);
  }

  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v41 = sub_255750370();

  v42 = [objc_opt_self() andPredicateWithSubpredicates_];

  v43 = v56;
  [v56 setPredicate_];

  if ((v57 & 1) == 0)
  {
    [v43 setFetchLimit_];
  }

  return v43;
}

uint64_t sub_2556D34B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_2556D2D64(a1, a2, a3, a4 & 1);
  [v4 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255755E40;
  sub_255669A88(0, &qword_27F7BE228, 0x277CCAC98);
  swift_getKeyPath();
  *(v5 + 32) = sub_2557507B0();
  v6 = sub_255750370();

  [v4 setSortDescriptors_];

  type metadata accessor for JournalEntryMO();
  v7 = sub_2557508C0();

  return v7;
}

void sub_2556D3704(uint64_t *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = (v4 + 16) & ~v4;
  v7 = (v5 + v4 + v6) & ~v4;
  v8 = *(v1 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2556D1550(v1 + v6, v1 + v7, a1);
}

void sub_2556D37DC(void *a1)
{
  v2 = v1;
  sub_2556D2A64();
  inited = swift_initStackObject();
  inited[4] = type metadata accessor for JournalEntryMO();
  inited[5] = type metadata accessor for JournalEntryAssetMO();
  inited[6] = type metadata accessor for JournalEntryAssetFileAttachmentMO();
  if (qword_27F7BD770 != -1)
  {
    swift_once();
  }

  v5 = sub_25574F2C0();
  v6 = 4;
  v16 = v5;
  v17 = a1;
  while (1)
  {
    v7 = inited[v6];
    __swift_project_value_buffer(v5, qword_27F7BED00);
    v8 = sub_25574F2A0();
    v9 = sub_2557507A0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v10 = 136315138;
      v11 = sub_255751020();
      v13 = v2;
      v14 = inited;
      v15 = sub_2556E474C(v11, v12, &v19);
      a1 = v17;

      *(v10 + 4) = v15;
      inited = v14;
      v2 = v13;
      _os_log_impl(&dword_255661000, v8, v9, "Deleting all %s records", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v5 = v16;
      MEMORY[0x259C3F520](v18, -1, -1);
      MEMORY[0x259C3F520](v10, -1, -1);
    }

    static NSManagedObject.iterativeDeleteAll(context:)(a1);
    if (v2)
    {
      break;
    }

    if (++v6 == 7)
    {
      swift_setDeallocating();
      type metadata accessor for JournalMO();
      static NSManagedObject.batchDeleteAll(context:)(a1);
      return;
    }
  }

  swift_setDeallocating();
}

unint64_t sub_2556D3A10()
{
  result = qword_27F7BED40;
  if (!qword_27F7BED40)
  {
    sub_255669A88(255, &qword_27F7BDD60, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BED40);
  }

  return result;
}

uint64_t sub_2556D3A88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2556D3AD0()
{
  result = qword_27F7BF1E0;
  if (!qword_27F7BF1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEB38, &qword_25575EA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF1E0);
  }

  return result;
}

void sub_2556D3B3C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v1 = sub_255750180();
  v2 = [v0 initWithZoneName_];

  qword_27F7BED98 = v2;
}

id static CloudKitStackConfiguration.zone.getter()
{
  if (qword_27F7BD780 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BED98;

  return v1;
}

id CloudKitStackConfiguration.createContainer(options:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v5 = sub_255750180();
  v6 = [v4 initWithContainerIdentifier:v5 environment:v3];

  v7 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v6 options:a1];
  return v7;
}

uint64_t CloudKitStackConfiguration.init(storeFileProtectionType:environment:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  result = sub_2556D3CF4(&v6);
  *a3 = a1;
  a3[1] = result;
  return result;
}

uint64_t sub_2556D3CF4(_BYTE *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (qword_27F7BD810 != -1)
  {
    swift_once();
  }

  if (byte_27F7BFE4A)
  {
    return 2;
  }

  if (qword_27F7BD5B0 != -1)
  {
    swift_once();
  }

  v2 = sub_25574F2C0();
  __swift_project_value_buffer(v2, qword_27F7C0498);
  v3 = sub_25574F2A0();
  v4 = sub_255750790();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_255661000, v3, v4, "Trying to use non-production environment on an external build.", v5, 2u);
    MEMORY[0x259C3F520](v5, -1, -1);
  }

  return 1;
}

uint64_t sub_2556D3E28(uint64_t *a1, int a2)
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

uint64_t sub_2556D3E70(uint64_t result, int a2, int a3)
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

void *static JournalEntryMO.create(type:context:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v141 = a1;
  v5 = sub_25574F0D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v109 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v129 = *(v9 - 8);
  v10 = *(v129 + 64);
  MEMORY[0x28223BE20](v9);
  v140 = &v107 - v11;
  v12 = sub_25574F860();
  v146 = *(v12 - 8);
  v147 = v12;
  v13 = *(v146 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v139 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v145 = &v107 - v16;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v149 = *(v138 - 8);
  v17 = v149[8];
  MEMORY[0x28223BE20](v138);
  v144 = &v107 - v18;
  v127 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v19 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v137 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v143 = &v107 - v23;
  v24 = type metadata accessor for EntrySource();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v128 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v107 - v28;
  v133 = sub_25574F020();
  v131 = *(v133 - 8);
  v30 = *(v131 + 64);
  MEMORY[0x28223BE20](v133);
  v132 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v32 = *(*(v142 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v142);
  v126 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v125 = &v107 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v148 = &v107 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v107 - v39;
  type metadata accessor for JournalEntryMO();
  v41 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_25567B1A4(a3, v40);
  v42 = 0;
  if ((*(v6 + 48))(v40, 1, v5) != 1)
  {
    v42 = sub_25574F050();
    (*(v6 + 8))(v40, v5);
  }

  [v41 setId_];

  v43 = v132;
  sub_25574F010();
  v44 = v41;
  v45 = sub_25574EFC0();
  v47 = v131 + 8;
  v46 = *(v131 + 8);
  v48 = v133;
  v46(v43, v133);
  [v44 setCreatedDate_];

  sub_25574F010();
  v49 = sub_25574EFC0();
  v46(v43, v48);
  [v44 setUpdatedDate_];

  sub_25574F010();
  v50 = sub_25574EFC0();
  v111 = v47;
  v110 = v46;
  v46(v43, v48);
  v136 = v44;
  [v44 setEntryDate_];

  sub_2556CFEB0(v141, v29);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BECD0, &qword_255759028);
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v54 = v52 + 48;
  v55 = v53(v29, 2, v51);
  v130 = v9;
  v124 = v51;
  v123 = v53;
  v122 = v54;
  if (!v55)
  {
    v110(&v29[*(v51 + 48)], v133);
    (*(v6 + 8))(v29, v5);
  }

  v56 = v136;
  v57 = sub_255750180();

  [v56 setEntryType_];

  sub_2556D4CDC();
  sub_25574FAB0();
  v135 = type metadata accessor for MergeableEntryAttributes(0);
  v58 = v135[5];
  sub_25566464C();
  sub_25574FAB0();
  v108 = v6;
  v59 = *(v6 + 56);
  v59(v148, 1, 1, v5);
  v114 = v59;
  v113 = v6 + 56;
  v134 = sub_2556C635C();
  sub_25574F720();
  v60 = v127;
  v61 = v137;
  v62 = v137 + *(v127 + 24);
  sub_25574FD10();
  v63 = v61 + v60[7];
  sub_25574FD10();
  sub_25574F850();
  v64 = v60[5];
  v65 = v125;
  v59(v125, 1, 1, v5);
  v66 = v126;
  sub_25567B1A4(v65, v126);
  v112 = sub_255663D60();
  sub_25574F340();
  sub_2556B224C(v65);
  v67 = v60[8];
  sub_25574F850();
  v120 = v149[2];
  v121 = v149 + 2;
  v68 = v61;
  v69 = v61;
  v70 = v144;
  v71 = v138;
  v120(v68, v144, v138);
  sub_25567B1A4(v148, v65);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v72 = *(v118 - 8);
  v117 = *(v72 + 8);
  v119 = v72 + 8;
  v117(v69 + v64, v118);
  sub_25567B1A4(v65, v66);
  sub_25574F340();
  sub_2556B224C(v65);
  v73 = v149[1];
  ++v149;
  v116 = v73;
  v73(v70, v71);
  v74 = v148;
  sub_2556B224C(v148);
  v75 = *(v146 + 40);
  v146 += 40;
  v115 = v75;
  v75(v69 + v67, v145, v147);
  sub_25574FD10();
  sub_25574F850();
  v76 = &v143[v135[6]];
  v77 = v74;
  v78 = v114;
  v114(v77, 1, 1, v5);
  sub_25574F720();
  v79 = &v76[v60[6]];
  sub_25574FD10();
  v80 = &v76[v60[7]];
  sub_25574FD10();
  sub_25574F850();
  v81 = v60[5];
  v78(v65, 1, 1, v5);
  sub_25567B1A4(v65, v66);
  sub_25574F340();
  sub_2556B224C(v65);
  v127 = v60[8];
  sub_25574F850();
  v82 = v138;
  v120(v76, v70, v138);
  v83 = v148;
  sub_25567B1A4(v148, v65);
  v84 = v5;
  v117(&v76[v81], v118);
  sub_25567B1A4(v65, v66);
  sub_25574F340();
  sub_2556B224C(v65);
  v116(v144, v82);
  sub_2556B224C(v83);
  v85 = v115;
  v115(&v76[v127], v139, v147);
  v86 = v135;
  v87 = v135[7];
  v88 = v143;
  v149 = v84;
  sub_25574FD10();
  v89 = v86[8];
  sub_25574F850();
  v90 = v76;
  v91 = v136;
  sub_255677F7C(v137, v90);
  v93 = v129;
  v92 = v130;
  v94 = v140;
  (*(v129 + 24))(v88 + v87, v140, v130);
  v85(v88 + v89, v145, v147);
  (*(v93 + 40))(v88 + v87, v94, v92);
  (*(*(v86 - 1) + 56))(v88, 0, 1, v86);
  sub_2556B7918(v88);
  v95 = v128;
  sub_2556CFEB0(v141, v128);
  v96 = v124;
  if (!v123(v95, 2, v124))
  {
    v97 = *(v96 + 48);
    v98 = v108;
    v99 = v109;
    v100 = v149;
    (*(v108 + 32))(v109, v95, v149);
    v101 = v132;
    v102 = v95 + v97;
    v103 = v133;
    (*(v131 + 32))(v132, v102, v133);
    v104 = sub_25574F050();
    [v91 setBundleId_];

    v105 = sub_25574EFC0();
    [v91 setBundleDate_];

    v110(v101, v103);
    (*(v98 + 8))(v99, v100);
  }

  return v91;
}

unint64_t sub_2556D4CDC()
{
  result = qword_27F7BEDA0;
  if (!qword_27F7BEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEDA0);
  }

  return result;
}

uint64_t WorkoutHeartRateFormatStyle.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25574F100();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutHeartRateFormatStyle.locale.setter(uint64_t a1)
{
  v3 = sub_25574F100();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WorkoutHeartRateFormatStyle.locale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2556D4EA0(v2, a2);
  v5 = sub_25574F100();
  v6 = *(*(v5 - 8) + 24);

  return v6(a2, a1, v5);
}

uint64_t sub_2556D4EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutHeartRateFormatStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556D4F04@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_255750E80();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_25574EE10();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25574F100();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB8, &qword_255759250);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v25 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  _s10Foundation11FormatStyleP13JournalSharedAD016WorkoutHeartRatebC0VRszrlE14beatsPerMinuteAFvgZ_0();
  sub_2556D5E6C();
  sub_25574EDA0();
  sub_25574EE00();
  MEMORY[0x259C3CAA0](v8, v11);
  (*(v5 + 8))(v8, v25);
  v22 = *(v12 + 8);
  v22(v16, v11);
  v23 = v26;
  (*(v1 + 104))(v4, *MEMORY[0x277D84678], v26);
  MEMORY[0x259C3CA90](v4, 0, 1, v11);
  (*(v1 + 8))(v4, v23);
  v22(v19, v11);
  MEMORY[0x259C3CA80](v28, v11);
  return (v22)(v21, v11);
}

unint64_t sub_2556D524C()
{
  result = qword_27F7BEDC0;
  if (!qword_27F7BEDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEDB8, &qword_255759250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEDC0);
  }

  return result;
}

uint64_t sub_2556D52C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255750EB0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2556D534C(uint64_t a1)
{
  v2 = sub_2556D553C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556D5388(uint64_t a1)
{
  v2 = sub_2556D553C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutHeartRateFormatStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDD0, &qword_255759258);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556D553C();
  sub_255750FF0();
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE0, MEMORY[0x277CC9788]);
  sub_255750E30();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2556D553C()
{
  result = qword_27F7BEDD8;
  if (!qword_27F7BEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEDD8);
  }

  return result;
}

uint64_t WorkoutHeartRateFormatStyle.hash(into:)()
{
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE8, MEMORY[0x277CC9788]);

  return sub_2557500A0();
}

uint64_t WorkoutHeartRateFormatStyle.hashValue.getter()
{
  sub_255750F80();
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE8, MEMORY[0x277CC9788]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t WorkoutHeartRateFormatStyle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_25574F100();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDF0, &qword_255759260);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for WorkoutHeartRateFormatStyle();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation11FormatStyleP13JournalSharedAD016WorkoutHeartRatebC0VRszrlE14beatsPerMinuteAFvgZ_0();
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556D553C();
  v16 = v23;
  sub_255750FE0();
  if (!v16)
  {
    v17 = v21;
    sub_25567D770(&qword_27F7BEDF8, MEMORY[0x277CC9788]);
    sub_255750D80();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 40))(v14, v22, v3);
    sub_2556D4EA0(v14, v20);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2556D5CCC(v14);
}

uint64_t sub_2556D592C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2556D4EA0(v2, a2);
  v5 = sub_25574F100();
  v6 = *(*(v5 - 8) + 24);

  return v6(a2, a1, v5);
}

uint64_t sub_2556D59C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDD0, &qword_255759258);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556D553C();
  sub_255750FF0();
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE0, MEMORY[0x277CC9788]);
  sub_255750E30();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2556D5B3C()
{
  sub_255750F80();
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE8, MEMORY[0x277CC9788]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556D5BC4()
{
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE8, MEMORY[0x277CC9788]);

  return sub_2557500A0();
}

uint64_t sub_2556D5C48()
{
  sub_255750F80();
  sub_25574F100();
  sub_25567D770(&qword_27F7BEDE8, MEMORY[0x277CC9788]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556D5CCC(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutHeartRateFormatStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2556D5D68()
{
  result = qword_27F7BEE30;
  if (!qword_27F7BEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEE30);
  }

  return result;
}

unint64_t sub_2556D5DC0()
{
  result = qword_27F7BEE38;
  if (!qword_27F7BEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEE38);
  }

  return result;
}

unint64_t sub_2556D5E18()
{
  result = qword_27F7BEE40;
  if (!qword_27F7BEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEE40);
  }

  return result;
}

unint64_t sub_2556D5E6C()
{
  result = qword_27F7BEE48;
  if (!qword_27F7BEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEE48);
  }

  return result;
}

uint64_t type metadata accessor for ConfettiAssetMetadata()
{
  result = qword_27F7BEE90;
  if (!qword_27F7BEE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfettiAssetMetadata.placeName.getter()
{
  v1 = (v0 + *(type metadata accessor for ConfettiAssetMetadata() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ConfettiAssetMetadata.init(isHost:title:placeName:startDate:endDate:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = a1;
  v13 = type metadata accessor for ConfettiAssetMetadata();
  sub_255675060(a2, &a7[v13[5]], &qword_27F7BEE50, &unk_2557594C0);
  v14 = &a7[v13[6]];
  *v14 = a3;
  v14[1] = a4;
  sub_255675060(a5, &a7[v13[7]], &qword_27F7BEB40, &unk_255754E40);
  return sub_255675060(a6, &a7[v13[8]], &qword_27F7BEB40, &unk_255754E40);
}

uint64_t sub_2556D60F4()
{
  v1 = *v0;
  v2 = 0x74736F487369;
  v3 = 0x6D614E6563616C70;
  v4 = 0x7461447472617473;
  if (v1 != 3)
  {
    v4 = 0x65746144646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2556D6190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2556D6ECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2556D61C4(uint64_t a1)
{
  v2 = sub_2556D64D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556D6200(uint64_t a1)
{
  v2 = sub_2556D64D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfettiAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEE58, &qword_2557594D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556D64D8();
  sub_255750FF0();
  v11 = *v3;
  v25 = 0;
  sub_255750DC0();
  if (!v2)
  {
    v12 = type metadata accessor for ConfettiAssetMetadata();
    v13 = v12[5];
    v24 = 1;
    sub_25574ED30();
    sub_2556D6BB4(&qword_27F7BEE68, MEMORY[0x277CC8C40]);
    sub_255750DF0();
    v14 = &v3[v12[6]];
    v15 = *v14;
    v16 = *(v14 + 1);
    v23 = 2;
    sub_255750DB0();
    v17 = v12[7];
    v22 = 3;
    sub_25574F020();
    sub_2556D6BB4(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v18 = v12[8];
    v21 = 4;
    sub_255750DF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2556D64D8()
{
  result = qword_27F7BEE60;
  if (!qword_27F7BEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEE60);
  }

  return result;
}

uint64_t ConfettiAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEE50, &unk_2557594C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEE70, &qword_2557594D8);
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = type metadata accessor for ConfettiAssetMetadata();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556D64D8();
  v21 = v34;
  sub_255750FE0();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = 0;
  *v19 = sub_255750D10();
  sub_25574ED30();
  v38 = 1;
  sub_2556D6BB4(&qword_27F7BEE78, MEMORY[0x277CC8C40]);
  sub_255750D40();
  sub_255675060(v11, &v19[v16[5]], &qword_27F7BEE50, &unk_2557594C0);
  v37 = 2;
  v22 = sub_255750D00();
  v23 = &v19[v16[6]];
  *v23 = v22;
  v23[1] = v24;
  sub_25574F020();
  v36 = 3;
  sub_2556D6BB4(&qword_27F7BDC38, MEMORY[0x277CC9578]);
  v25 = v31;
  sub_255750D40();
  sub_255675060(v25, &v19[v16[7]], &qword_27F7BEB40, &unk_255754E40);
  v35 = 4;
  v26 = v30;
  v27 = v33;
  sub_255750D40();
  (*(v32 + 8))(v15, v27);
  sub_255675060(v26, &v19[v16[8]], &qword_27F7BEB40, &unk_255754E40);
  sub_2556D6A70(v19, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2556D6AD4(v19);
}

uint64_t sub_2556D6A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfettiAssetMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556D6AD4(uint64_t a1)
{
  v2 = type metadata accessor for ConfettiAssetMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556D6B30(uint64_t a1)
{
  *(a1 + 8) = sub_2556D6BB4(&qword_27F7BEE80, type metadata accessor for ConfettiAssetMetadata);
  result = sub_2556D6BB4(&qword_27F7BEE88, type metadata accessor for ConfettiAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556D6BB4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2556D6C54()
{
  sub_25566BFA8(319, &qword_27F7BEEA0);
  if (v0 <= 0x3F)
  {
    sub_2556D6D60(319, &qword_27F7BEEA8, MEMORY[0x277CC8C40]);
    if (v1 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BE538);
      if (v2 <= 0x3F)
      {
        sub_2556D6D60(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2556D6D60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2556D6DC8()
{
  result = qword_27F7BEEB0;
  if (!qword_27F7BEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEEB0);
  }

  return result;
}

unint64_t sub_2556D6E20()
{
  result = qword_27F7BEEB8;
  if (!qword_27F7BEEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEEB8);
  }

  return result;
}

unint64_t sub_2556D6E78()
{
  result = qword_27F7BEEC0;
  if (!qword_27F7BEEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEEC0);
  }

  return result;
}

uint64_t sub_2556D6ECC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736F487369 && a2 == 0xE600000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6563616C70 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_255750EB0();

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

uint64_t sub_2556D70AC()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BEEC8);
  v1 = __swift_project_value_buffer(v0, qword_27F7BEEC8);
  if (qword_27F7BD5E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C0528);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2556D717C()
{
  sub_2556D7174();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_2556D71A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  v40 = *MEMORY[0x277D85000] & *v2;
  v7 = sub_25574F2C0();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = *((v6 & v5) + 0x58);
  v13 = *((v6 & v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v39 - v17;
  sub_25566CDF8(a1, &v45);
  if (v46)
  {
    v39 = a2;
    sub_255663374(&v45, v47);
    sub_255678EBC(v47, &v45);
    if (swift_dynamicCast())
    {
      (*(v12 + 24))(v13, v12);
      v34 = CRDT.serializedData.getter(AssociatedTypeWitness, *(v40 + 96));
      v36 = v35;
      v37 = v39;
      v39[3] = MEMORY[0x277CC9318];
      swift_unknownObjectRelease();
      *v37 = v34;
      v37[1] = v36;
      (*(v15 + 8))(v18, AssociatedTypeWitness);
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    else
    {
      if (qword_27F7BD788 != -1)
      {
        swift_once();
      }

      v19 = v42;
      v20 = __swift_project_value_buffer(v42, qword_27F7BEEC8);
      v21 = v41;
      (*(v41 + 16))(v11, v20, v19);
      sub_255678EBC(v47, &v45);
      v22 = sub_25574F2A0();
      v23 = sub_255750780();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v44 = v25;
        *v24 = 136315394;
        v26 = sub_255751020();
        v28 = sub_2556E474C(v26, v27, &v44);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        sub_255678EBC(&v45, v43);
        v29 = sub_2557501D0();
        v31 = v30;
        __swift_destroy_boxed_opaque_existential_1(&v45);
        v32 = sub_2556E474C(v29, v31, &v44);

        *(v24 + 14) = v32;
        _os_log_impl(&dword_255661000, v22, v23, "Can't serialize CRDT value because it isn't of type %s. Value: %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v25, -1, -1);
        MEMORY[0x259C3F520](v24, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v45);
      }

      (*(v21 + 8))(v11, v19);
      result = __swift_destroy_boxed_opaque_existential_1(v47);
      v33 = v39;
      *v39 = 0u;
      *(v33 + 1) = 0u;
    }
  }

  else
  {
    result = sub_255674B20(&v45, &qword_27F7BE250, &qword_255756600);
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

id sub_2556D77F8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MergeableDataValueTransformer();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

unint64_t sub_2556D787C()
{
  result = qword_27F7BE1D8;
  if (!qword_27F7BE1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE1D8);
  }

  return result;
}

uint64_t MergeableAssetTextAttachment.assetID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25574F0D0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MergeableAssetTextAttachment.assetID.setter(uint64_t a1)
{
  v3 = sub_25574F0D0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MergeableAssetTextAttachment.preferredSize.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MergeableAssetTextAttachment(0) + 20);

  return sub_2556D7A4C(a1, v3);
}

uint64_t sub_2556D7A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableSize(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MergeableAssetTextAttachment.anchorAlignment.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for MergeableAssetTextAttachment(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t MergeableAssetTextAttachment.anchorAlignment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for MergeableAssetTextAttachment(0);
  v5 = v1 + *(result + 24);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t static MergeableSize.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for MergeableSize(0) + 24);

  return sub_25574FAF0();
}

uint64_t MergeableAssetTextAttachment.hash(into:)()
{
  v1 = v0;
  sub_25574F0D0();
  sub_2556647AC(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  sub_2557500A0();
  v2 = type metadata accessor for MergeableAssetTextAttachment(0);
  v3 = (v0 + v2[5]);
  v4 = *v3;
  if (*v3 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v4);
  v5 = v3[1];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v5);
  v6 = *(type metadata accessor for MergeableSize(0) + 24);
  sub_25574FB30();
  sub_2556647AC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  v7 = (v1 + v2[6]);
  v10 = *v7;
  v11 = *(v7 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA18, &unk_255759730);
  sub_25574F530();
  v8 = v1 + v2[7];
  return sub_2557500A0();
}

uint64_t MergeableAssetTextAttachment.init(assetID:preferredSize:anchorAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4, a1, v8);
  v10 = type metadata accessor for MergeableAssetTextAttachment(0);
  sub_2556DB0C0(a2, a4 + v10[5], type metadata accessor for MergeableSize);
  sub_25567890C();
  sub_25574F550();
  v11 = a4 + v10[7];
  sub_25574FB20();
  sub_2556DB064(a2);
  result = (*(v9 + 8))(a1, v8);
  v13 = a4 + v10[6];
  *v13 = v14;
  *(v13 + 8) = v15;
  return result;
}

uint64_t MergeableSize.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v2);
  v3 = *(type metadata accessor for MergeableSize(0) + 24);
  sub_25574FB30();
  sub_2556647AC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  return sub_2557500A0();
}

uint64_t sub_2556D80C0(void (*a1)(_BYTE *))
{
  sub_255750F80();
  a1(v3);
  return sub_255750FD0();
}

uint64_t sub_2556D8120(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_255750F80();
  a3(v5);
  return sub_255750FD0();
}

uint64_t sub_2556D8184(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_255750F80();
  a4(v6);
  return sub_255750FD0();
}

uint64_t sub_2556D81C8(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  return sub_25574FAF0();
}

JournalShared::MergeableAnchorAlignment_optional __swiftcall MergeableAnchorAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2556D8224()
{
  sub_2556DB498();
  sub_2556DB274();

  return sub_25574FDD0();
}

uint64_t sub_2556D8294()
{
  sub_2556DB498();
  sub_25567890C();
  return sub_25574FDF0();
}

uint64_t sub_2556D8300()
{
  sub_2556DB498();
  sub_25567890C();
  return sub_25574FE00();
}

uint64_t sub_2556D835C(uint64_t a1)
{
  v2 = sub_2556DB498();
  v3 = sub_25567890C();
  v4 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E330](a1, v2, v3, v4);
}

uint64_t sub_2556D8414(uint64_t a1, uint64_t a2)
{
  v4 = sub_25567890C();
  v5 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E590](a1, a2, v4, v5);
}

uint64_t _s13JournalShared13MergeableSizeV5width6heightACSd_SdtcfC_0@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = a1 + *(type metadata accessor for MergeableSize(0) + 24);
  result = sub_25574FB20();
  *a1 = a2;
  a1[1] = a3;
  return result;
}

double MergeableSize.cgSize.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t MergeableSize.debugDescription.getter()
{
  sub_255750B00();
  MEMORY[0x259C3DED0](0x203A6874646977, 0xE700000000000000);
  v1 = *v0;
  sub_255750530();
  MEMORY[0x259C3DED0](0x746867696568202CLL, 0xEA0000000000203ALL);
  v2 = v0[1];
  sub_255750530();
  return 0;
}

uint64_t sub_2556D857C()
{
  sub_255750B00();
  MEMORY[0x259C3DED0](0x203A6874646977, 0xE700000000000000);
  v1 = *v0;
  sub_255750530();
  MEMORY[0x259C3DED0](0x746867696568202CLL, 0xEA0000000000203ALL);
  v2 = v0[1];
  sub_255750530();
  return 0;
}

uint64_t MergeableAnchorAlignment.debugDescription.getter()
{
  v1 = 0x676E696461656CLL;
  v2 = 0x7265746E6563;
  if (*v0 != 2)
  {
    v2 = 1701736302;
  }

  if (*v0)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2556D86B0()
{
  v1 = 0x676E696461656CLL;
  v2 = 0x7265746E6563;
  if (*v0 != 2)
  {
    v2 = 1701736302;
  }

  if (*v0)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t MergeableAssetTextAttachment.debugDescription.getter()
{
  v1 = v0;
  sub_255750B00();
  MEMORY[0x259C3DED0](0x3A44497465737341, 0xE900000000000020);
  sub_25574F0D0();
  sub_2556647AC(&qword_27F7BF200, MEMORY[0x277CC95F0]);
  v2 = sub_255750E60();
  MEMORY[0x259C3DED0](v2);

  MEMORY[0x259C3DED0](0xD000000000000010, 0x8000000255752D90);
  v3 = type metadata accessor for MergeableAssetTextAttachment(0);
  v4 = *(v3 + 20);
  type metadata accessor for MergeableSize(0);
  sub_255750C20();
  MEMORY[0x259C3DED0](0xD000000000000012, 0x8000000255752DB0);
  v5 = (v1 + *(v3 + 24));
  v7 = *v5;
  v8 = *(v5 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA18, &unk_255759730);
  sub_255750C20();
  return 0;
}

uint64_t MergeableAssetTextAttachment.copy(renamingReferences:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25574FB30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MergeableSize(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556DB0C0(v1, a1, type metadata accessor for MergeableAssetTextAttachment);
  v14 = sub_25574F0D0();
  (*(*(v14 - 8) + 24))(a1, v1, v14);
  v15 = type metadata accessor for MergeableAssetTextAttachment(0);
  v16 = (v1 + v15[5]);
  sub_2556DB0C0(v16, v13, type metadata accessor for MergeableSize);
  *v13 = *v16;
  v17 = v16 + *(v10 + 32);
  sub_25574FB00();
  v18 = *(v5 + 40);
  v18(&v13[*(v10 + 32)], v8, v4);
  sub_2556D7A4C(v13, a1 + v15[5]);
  v19 = v15[6];
  v20 = *(v2 + v19);
  v21 = *(v2 + v19 + 8);
  v22 = a1 + v19;
  *v22 = v20;
  *(v22 + 8) = v21;
  v23 = v2 + v15[7];
  sub_25574FB00();
  return (v18)(a1 + v15[7], v8, v4);
}

uint64_t MergeableSize.copy(renamingReferences:)@<X0>(char *a1@<X8>)
{
  v3 = sub_25574FB30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556DB0C0(v1, a1, type metadata accessor for MergeableSize);
  *a1 = *v1;
  v8 = type metadata accessor for MergeableSize(0);
  v9 = v1 + *(v8 + 24);
  sub_25574FB00();
  return (*(v4 + 40))(&a1[*(v8 + 24)], v7, v3);
}

uint64_t MergeableAssetTextAttachment.visitReferences(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for MergeableAssetTextAttachment(0);
  v3 = v0 + *(v2 + 20);
  v4 = v3 + *(type metadata accessor for MergeableSize(0) + 24);
  sub_25574FAE0();
  v5 = v1 + *(v2 + 28);
  return sub_25574FAE0();
}

uint64_t MergeableAssetTextAttachment.encode(to:)()
{
  result = sub_25574FF70();
  if (!v1)
  {
    sub_25574F0D0();
    sub_25574FF80();
    v3 = type metadata accessor for MergeableAssetTextAttachment(0);
    v4 = v3[5];
    type metadata accessor for MergeableSize(0);
    sub_2556647AC(&qword_27F7BEF68, type metadata accessor for MergeableSize);
    sub_25574FF80();
    v5 = (v0 + v3[6]);
    v7 = *v5;
    v8 = *(v5 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA18, &unk_255759730);
    sub_2556DB190(&qword_27F7BEF70);
    sub_25574FF80();
    v6 = v0 + v3[7];
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableAssetTextAttachment.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v88 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = (&v71 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v76 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v71 - v10;
  v11 = sub_25574FB30();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  MEMORY[0x28223BE20](v11);
  v77 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MergeableSize(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25574F0D0();
  v81 = *(v19 - 8);
  v20 = *(v81 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v71 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v71 - v27;
  v29 = type metadata accessor for MergeableAssetTextAttachment(0);
  v30 = &a2[*(v29 + 20)];
  v31 = &v30[*(v15 + 32)];
  sub_25574FB20();
  *v30 = 0;
  *(v30 + 1) = 0;
  v86 = a2;
  v87 = v30;
  v82 = *(v29 + 28);
  sub_25574FB20();
  v32 = v85;
  v33 = sub_25574FEE0();
  if (v32)
  {

    v34 = v86;
LABEL_3:
    sub_2556DB064(v87);
    return (*(v83 + 8))(&v34[v82], v84);
  }

  else
  {
    v36 = v33;
    v73 = v18;
    v74 = v19;
    if (sub_25574FF00())
    {
      sub_25574F0B0();
      v37 = v86;
      v85 = v36;
      (*(v81 + 32))(v86, v23, v74);
    }

    else
    {
      v38 = v74;
      sub_25574FE10();
      v37 = v86;
      v85 = v36;
      v39 = *(v81 + 32);
      v39(v28, v26, v38);
      v39(v37, v28, v38);
    }

    v40 = sub_25574FF00();
    v41 = v29;
    if (v40)
    {
      v42 = v73;
      MergeableSize.init(from:)(v40, v73);
      sub_2556D7A4C(v42, v87);
    }

    if (sub_25574FF00())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA18, &unk_255759730);
      sub_2556DB190(&qword_27F7BEA10);
      sub_2556DB190(&qword_27F7BEF78);
      sub_25574FDF0();
    }

    else
    {
      sub_25567890C();
      sub_25574F510();
    }

    v43 = v90;
    v44 = &v37[*(v41 + 24)];
    *v44 = v89;
    v44[8] = v43;
    v45 = sub_25574FEF0();
    v46 = sub_255676334(v45);

    v89 = v46;
    sub_255676690(1);
    sub_255676690(2);
    sub_255676690(3);
    v47 = v89 + 56;
    v48 = 1 << *(v89 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v89 + 56);
    v51 = (v48 + 63) >> 6;
    v73 = (v78 + 56);
    v52 = v89;

    v53 = 0;
    v72 = MEMORY[0x277D84F90];
    while (1)
    {
      v54 = v53;
      if (!v50)
      {
        break;
      }

LABEL_19:
      v55 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v56 = *(*(v52 + 48) + ((v53 << 9) | (8 * v55)));
      if (sub_25574FF00())
      {
        v58 = v79;
        v59 = v80;
        v60 = *(v79 + 48);
        *v80 = v56;
        sub_25574F310();
        (*v73)(v59, 0, 1, v58);
        v61 = v75;
        sub_2556AA69C(v59, v75);
        sub_2556AA69C(v61, v76);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_25569874C(0, v72[2] + 1, 1, v72);
        }

        v37 = v86;
        v62 = v78;
        v64 = v72[2];
        v63 = v72[3];
        v65 = v76;
        if (v64 >= v63 >> 1)
        {
          v67 = sub_25569874C(v63 > 1, v64 + 1, 1, v72);
          v62 = v78;
          v72 = v67;
          v65 = v76;
        }

        v66 = v72;
        v72[2] = v64 + 1;
        sub_2556AA69C(v65, v66 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v64);
      }

      else
      {
        v57 = v80;
        (*v73)(v80, 1, 1, v79);
        sub_2556DB128(v57);
      }
    }

    while (1)
    {
      v53 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        __break(1u);

        v34 = v86;
        (*(v81 + 8))(v86, v74);
        goto LABEL_3;
      }

      if (v53 >= v51)
      {
        break;
      }

      v50 = *(v47 + 8 * v53);
      ++v54;
      if (v50)
      {
        goto LABEL_19;
      }
    }

    v68 = v72;
    if (v72[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v69 = sub_255750C90();
    }

    else
    {
      v69 = MEMORY[0x277D84F98];
    }

    v70 = v77;
    v91 = v69;
    sub_2556DA988(v68, 1, &v91);
    sub_25574FB40();

    return (*(v83 + 40))(&v37[v82], v70, v84);
  }
}

uint64_t MergeableSize.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - v14;
  v16 = sub_25574FB30();
  v71 = *(v16 - 8);
  v72 = v16;
  v17 = *(v71 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  v73 = *(type metadata accessor for MergeableSize(0) + 24);
  sub_25574FB20();
  v21 = sub_25574FEE0();
  if (v2)
  {

    v23 = v71;
    v22 = v72;
    v24 = v73;
    return (*(v23 + 8))(&v20[v24], v22);
  }

  else
  {
    v26 = v21;
    v65 = v13;
    v66 = v19;
    v64 = v15;
    v68 = v9;
    v69 = v8;
    if (sub_25574FF00())
    {
      sub_255750550();
    }

    else
    {
      sub_255750540();
    }

    *v20 = v27;
    if (sub_25574FF00())
    {
      sub_255750550();
      v61 = a1;
    }

    else
    {
      v61 = a1;
      sub_255750540();
    }

    v62 = v20;
    *(v20 + 1) = v28;
    v67 = v26;
    v29 = sub_25574FEF0();
    v30 = sub_255676334(v29);

    v75 = v30;
    sub_255676690(1);
    sub_255676690(2);
    v31 = v75;
    v32 = v75 + 56;
    v33 = 1 << *(v75 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v75 + 56);
    v36 = (v33 + 63) >> 6;
    v37 = (v70 + 56);

    v38 = 0;
    v63 = MEMORY[0x277D84F90];
    while (1)
    {
      v39 = v38;
      if (!v35)
      {
        break;
      }

LABEL_17:
      v40 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v41 = *(*(v31 + 48) + ((v38 << 9) | (8 * v40)));
      if (sub_25574FF00())
      {
        v44 = v68;
        v43 = v69;
        v45 = *(v68 + 48);
        *v69 = v41;
        v46 = v43;
        sub_25574F310();
        (*v37)(v46, 0, 1, v44);
        v47 = v64;
        sub_2556AA69C(v46, v64);
        sub_2556AA69C(v47, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_25569874C(0, v63[2] + 1, 1, v63);
        }

        v48 = v70;
        v50 = v63[2];
        v49 = v63[3];
        v51 = v65;
        if (v50 >= v49 >> 1)
        {
          v53 = sub_25569874C(v49 > 1, v50 + 1, 1, v63);
          v48 = v70;
          v63 = v53;
          v51 = v65;
        }

        v52 = v63;
        v63[2] = v50 + 1;
        sub_2556AA69C(v51, v52 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50);
      }

      else
      {
        v42 = v69;
        (*v37)(v69, 1, 1, v68);
        sub_2556DB128(v42);
      }
    }

    while (1)
    {
      v38 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);

        v20 = v62;
        v22 = v72;
        v24 = v73;
        v23 = v71;
        return (*(v23 + 8))(&v20[v24], v22);
      }

      if (v38 >= v36)
      {
        break;
      }

      v35 = *(v32 + 8 * v38);
      ++v39;
      if (v35)
      {
        goto LABEL_17;
      }
    }

    v54 = v63;
    if (v63[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v55 = sub_255750C90();
    }

    else
    {
      v55 = MEMORY[0x277D84F98];
    }

    v56 = v62;
    v58 = v72;
    v57 = v73;
    v59 = v66;
    v60 = v71;
    v74 = v55;
    sub_2556DA3BC(v54, 1, &v74);
    sub_25574FB40();

    return (*(v60 + 40))(&v56[v57], v59, v58);
  }
}

uint64_t sub_2556D9EB8()
{
  sub_2556647AC(&qword_27F7BE918, type metadata accessor for MergeableAssetTextAttachment);
  sub_2556647AC(&qword_27F7BEF80, type metadata accessor for MergeableAssetTextAttachment);

  return sub_25574FDD0();
}

uint64_t sub_2556D9F84(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = v2 + *(a2 + 20);
  v6 = v5 + *(type metadata accessor for MergeableSize(0) + 24);
  sub_25574FAE0();
  v7 = v4 + *(a2 + 28);
  return sub_25574FAE0();
}

uint64_t _s13JournalShared17MergeableTextListV18minEncodingVersion9Coherence09CRCodableH0Ovg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CFB5F0];
  v3 = sub_25574F770();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t MergeableSize.encode(to:)()
{
  result = sub_25574FF70();
  if (!v1)
  {
    v4 = *v0;
    sub_25574FF80();
    v5 = v0[1];
    sub_25574FF80();
    v3 = v0 + *(type metadata accessor for MergeableSize(0) + 24);
    sub_25574FB10();
  }

  return result;
}

uint64_t sub_2556DA180@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = sub_25574FB30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556DB0C0(v2, a2, type metadata accessor for MergeableSize);
  *a2 = *v2;
  v10 = v2 + *(a1 + 24);
  sub_25574FB00();
  return (*(v6 + 40))(&a2[*(a1 + 24)], v9, v5);
}

uint64_t sub_2556DA298()
{
  sub_2556647AC(&qword_27F7BEFE8, type metadata accessor for MergeableSize);
  sub_2556647AC(&qword_27F7BEF88, type metadata accessor for MergeableSize);

  return sub_25574FDD0();
}

void sub_2556DA3BC(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (&v59 - v16);
  v66 = *(a1 + 16);
  if (!v66)
  {
    goto LABEL_23;
  }

  LODWORD(v63) = a2;
  v61 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v65 = *(v15 + 72);
  v67 = a1;
  v60 = v19;
  sub_2556AAA64(a1 + v19, &v59 - v16);
  v62 = v8;
  v20 = *(v8 + 32);
  v73 = *v17;
  v21 = v73;
  v64 = v18;
  v68 = v7;
  v69 = v11;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v24 = sub_255742798(v21);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (v63)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v27, v63 & 1);
  v29 = *a3;
  v30 = sub_255742798(v21);
  if ((v28 & 1) == (v31 & 1))
  {
    v24 = v30;
    if ((v28 & 1) == 0)
    {
LABEL_13:
      v36 = *a3;
      *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      *(v36[6] + 8 * v24) = v21;
      v37 = v36[7];
      v63 = *(v62 + 72);
      v38 = (v37 + v63 * v24);
      v39 = v68;
      v20(v38, v69, v68);
      v40 = v36[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (!v41)
      {
        v36[2] = v42;
        v43 = v67;
        if (v66 != 1)
        {
          v44 = v67 + v65 + v60;
          v45 = 1;
          while (v45 < *(v43 + 16))
          {
            sub_2556AAA64(v44, v17);
            v73 = *v17;
            v46 = v73;
            v20(v69, v17 + v64, v39);
            v47 = *a3;
            v48 = sub_255742798(v46);
            v50 = v47[2];
            v51 = (v49 & 1) == 0;
            v41 = __OFADD__(v50, v51);
            v52 = v50 + v51;
            if (v41)
            {
              goto LABEL_24;
            }

            v53 = v49;
            if (v47[3] < v52)
            {
              sub_255743F6C(v52, 1);
              v54 = *a3;
              v48 = sub_255742798(v46);
              if ((v53 & 1) != (v55 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v53)
            {
              goto LABEL_10;
            }

            v56 = *a3;
            *(*a3 + 8 * (v48 >> 6) + 64) |= 1 << v48;
            *(v56[6] + 8 * v48) = v46;
            v39 = v68;
            v20((v56[7] + v63 * v48), v69, v68);
            v57 = v56[2];
            v41 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v41)
            {
              goto LABEL_25;
            }

            ++v45;
            v56[2] = v58;
            v44 += v65;
            v43 = v67;
            if (v66 == v45)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v32 = sub_25574F750();
    sub_2556647AC(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v33 = swift_allocError();
    *v34 = 0xD000000000000027;
    v34[1] = 0x8000000255752E60;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277CFB5A8], v32);
    swift_willThrow();
    v72 = v33;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v62 + 8))(v69, v68);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

void sub_2556DA988(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (&v59 - v16);
  v66 = *(a1 + 16);
  if (!v66)
  {
    goto LABEL_23;
  }

  LODWORD(v63) = a2;
  v61 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v65 = *(v15 + 72);
  v67 = a1;
  v60 = v19;
  sub_2556AAA64(a1 + v19, &v59 - v16);
  v62 = v8;
  v20 = *(v8 + 32);
  v73 = *v17;
  v21 = v73;
  v64 = v18;
  v68 = v7;
  v69 = v11;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v24 = sub_255742798(v21);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (v63)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v27, v63 & 1);
  v29 = *a3;
  v30 = sub_255742798(v21);
  if ((v28 & 1) == (v31 & 1))
  {
    v24 = v30;
    if ((v28 & 1) == 0)
    {
LABEL_13:
      v36 = *a3;
      *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      *(v36[6] + 8 * v24) = v21;
      v37 = v36[7];
      v63 = *(v62 + 72);
      v38 = (v37 + v63 * v24);
      v39 = v68;
      v20(v38, v69, v68);
      v40 = v36[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (!v41)
      {
        v36[2] = v42;
        v43 = v67;
        if (v66 != 1)
        {
          v44 = v67 + v65 + v60;
          v45 = 1;
          while (v45 < *(v43 + 16))
          {
            sub_2556AAA64(v44, v17);
            v73 = *v17;
            v46 = v73;
            v20(v69, v17 + v64, v39);
            v47 = *a3;
            v48 = sub_255742798(v46);
            v50 = v47[2];
            v51 = (v49 & 1) == 0;
            v41 = __OFADD__(v50, v51);
            v52 = v50 + v51;
            if (v41)
            {
              goto LABEL_24;
            }

            v53 = v49;
            if (v47[3] < v52)
            {
              sub_255743F6C(v52, 1);
              v54 = *a3;
              v48 = sub_255742798(v46);
              if ((v53 & 1) != (v55 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v53)
            {
              goto LABEL_10;
            }

            v56 = *a3;
            *(*a3 + 8 * (v48 >> 6) + 64) |= 1 << v48;
            *(v56[6] + 8 * v48) = v46;
            v39 = v68;
            v20((v56[7] + v63 * v48), v69, v68);
            v57 = v56[2];
            v41 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v41)
            {
              goto LABEL_25;
            }

            ++v45;
            v56[2] = v58;
            v44 += v65;
            v43 = v67;
            if (v66 == v45)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v32 = sub_25574F750();
    sub_2556647AC(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v33 = swift_allocError();
    *v34 = 0xD000000000000036;
    v34[1] = 0x8000000255752E90;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277CFB5A8], v32);
    swift_willThrow();
    v72 = v33;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v62 + 8))(v69, v68);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

uint64_t _s13JournalShared28MergeableAssetTextAttachmentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_25574F070() & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = type metadata accessor for MergeableAssetTextAttachment(0);
  v5 = *(v4 + 20);
  if (*(a1 + v5) != *(a2 + v5))
  {
    goto LABEL_7;
  }

  if (*(a1 + v5 + 8) != *(a2 + v5 + 8))
  {
    goto LABEL_7;
  }

  v6 = v4;
  v7 = *(type metadata accessor for MergeableSize(0) + 24);
  if ((sub_25574FAF0() & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(v6 + 24);
  v15 = *(a1 + v8);
  v16 = *(a1 + v8 + 8);
  v9 = (a2 + v8);
  v13 = *v9;
  v14 = *(v9 + 8);
  sub_25567890C();
  if (sub_25574F520())
  {
    v10 = *(v6 + 28);
    v11 = sub_25574FAF0();
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2556DB064(uint64_t a1)
{
  v2 = type metadata accessor for MergeableSize(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556DB0C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2556DB128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556DB190(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEA18, &unk_255759730);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2556DB274()
{
  result = qword_27F7BEF90;
  if (!qword_27F7BEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEF90);
  }

  return result;
}

unint64_t sub_2556DB2CC()
{
  result = qword_27F7BEF98;
  if (!qword_27F7BEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEF98);
  }

  return result;
}

unint64_t sub_2556DB324()
{
  result = qword_27F7BEFA0;
  if (!qword_27F7BEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEFA0);
  }

  return result;
}

unint64_t sub_2556DB498()
{
  result = qword_27F7BEFF0;
  if (!qword_27F7BEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEFF0);
  }

  return result;
}

uint64_t sub_2556DB520(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v62 = a5;
  v63 = a6;
  v8 = v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v55 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v55 - v21;
  result = sub_2556E2EE0(a3, a4, &v55 - v21);
  if (!v7)
  {
    v57 = a3;
    v58 = v17;
    v24 = v63;
    v60 = v8;
    v61 = a1;
    v59 = 0;
    v25 = sub_25574F020();
    v26 = *(*(v25 - 8) + 48);
    if (v26(v22, 1, v25) == 1)
    {
      v65 = v60;
      v27 = v60;
      v56 = v22;
      v28 = v27;
      swift_getAtKeyPath();

      LODWORD(v28) = v26(v20, 1, v25);
      sub_255674B20(v20, &qword_27F7BEB40, &unk_255754E40);
      v22 = v56;
      if (v28 != 1)
      {
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v29 = sub_25574F2C0();
        __swift_project_value_buffer(v29, qword_27F7BDD70);
        v30 = a2;
        v31 = v61;

        v32 = a4;

        v33 = sub_25574F2A0();
        v34 = sub_255750760();

        v35 = os_log_type_enabled(v33, v34);
        v36 = v57;
        v37 = v62;
        if (v35)
        {
          v38 = v24;
          v39 = v30;
          v40 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v65 = v55;
          *v40 = 136446978;
          v64 = v31;

          __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
          v41 = sub_2557501D0();
          v43 = sub_2556E474C(v41, v42, &v65);

          *(v40 + 4) = v43;
          *(v40 + 12) = 2082;
          v44 = sub_255750920();
          v46 = sub_2556E474C(v44, v45, &v65);

          *(v40 + 14) = v46;
          *(v40 + 22) = 2082;
          *(v40 + 24) = sub_2556E474C(v36, v32, &v65);
          *(v40 + 32) = 2080;
          v47 = [v39 recordID];
          v48 = [v47 recordName];

          v49 = sub_2557501B0();
          v51 = v50;

          v52 = sub_2556E474C(v49, v51, &v65);

          *(v40 + 34) = v52;
          _os_log_impl(&dword_255661000, v33, v34, "Intentionally setting an existing value to nil for keyPath %{public}s from %{public}s.%{public}s. ID: %s", v40, 0x2Au);
          v53 = v55;
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v53, -1, -1);
          MEMORY[0x259C3F520](v40, -1, -1);
        }

        v22 = v56;
      }
    }

    sub_2556700F4(v22, v58);
    v65 = v60;
    v54 = v60;
    swift_setAtReferenceWritableKeyPath();

    return sub_255674B20(v22, &qword_27F7BEB40, &unk_255754E40);
  }

  return result;
}

uint64_t sub_2556DB978(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  result = sub_2556E27C4(a3, a4);
  if (!v5)
  {
    v13 = v12;
    if (!v12)
    {
      v39 = v6;
      v36 = result;
      v15 = v6;
      swift_getAtKeyPath();

      result = v36;
      if (v38)
      {
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v16 = sub_25574F2C0();
        __swift_project_value_buffer(v16, qword_27F7BDD70);
        v17 = a2;

        v18 = sub_25574F2A0();
        v19 = sub_255750760();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v37 = v35;
          *v20 = 136446978;
          v39 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF090, &qword_25575A0B0);
          v21 = sub_2557501D0();
          log = v18;
          v33 = v19;
          v23 = sub_2556E474C(v21, v22, &v37);

          *(v20 + 4) = v23;
          *(v20 + 12) = 2082;
          v24 = sub_255750920();
          v26 = sub_2556E474C(v24, v25, &v37);

          *(v20 + 14) = v26;
          *(v20 + 22) = 2082;
          *(v20 + 24) = sub_2556E474C(a3, a4, &v37);
          *(v20 + 32) = 2080;
          v27 = [v17 recordID];
          v28 = [v27 recordName];

          v29 = sub_2557501B0();
          v31 = v30;

          v32 = sub_2556E474C(v29, v31, &v37);

          *(v20 + 34) = v32;
          _os_log_impl(&dword_255661000, log, v33, "Intentionally setting an existing value to nil for keyPath %{public}s from %{public}s.%{public}s. ID: %s", v20, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v35, -1, -1);
          MEMORY[0x259C3F520](v20, -1, -1);
        }

        else
        {
        }

        result = v36;
      }
    }

    v37 = result;
    v38 = v13;
    v39 = v6;

    v14 = v6;
    swift_setAtReferenceWritableKeyPath();
  }

  return result;
}