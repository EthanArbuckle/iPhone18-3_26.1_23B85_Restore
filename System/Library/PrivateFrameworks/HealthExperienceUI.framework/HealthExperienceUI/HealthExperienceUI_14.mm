void sub_1BA08B990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3A28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_1BA08FE28();
        v26 = sub_1BA4A6698();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_1BA08FE5C();
          v31 = sub_1BA4A6728();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1BA08BD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void, double), void (*a5)(char *))
{
  v25 = a3;
  v26 = a5;
  v24 = a2;
  sub_1B9F3D488(0, a2, a3, MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  v12 = a4(0, v9);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - v14;
  if (*(*v5 + 16))
  {
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    v23[1] = v13 + 8;
    v23[2] = v13 + 16;

    v20 = 0;
    while (v18)
    {
      v21 = v20;
LABEL_10:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v13 + 16))(v15, *(a1 + 48) + *(v13 + 72) * (v22 | (v21 << 6)), v12);
      v26(v15);
      (*(v13 + 8))(v15, v12);
      sub_1BA091A88(v11, v24, v25);
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v18 = *(a1 + 56 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BA08BF54(uint64_t a1, uint64_t a2)
{
  v96 = *MEMORY[0x1E69E9840];
  sub_1B9F3D488(0, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v67 - v8);
  v10 = sub_1BA4A3A28();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v87 = (&v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v67 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v82 = (&v67 - v17);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v68 = v9;
  v70 = v6;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v81 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v89 = (v21 & v18);
  v73 = (63 - v20) >> 6;
  v88 = v11 + 2;
  v78 = (v11 + 6);
  v79 = (v11 + 7);
  v77 = (v11 + 4);
  v84 = (a2 + 56);
  v90 = (v11 + 1);
  v80 = a1;

  v23 = 0;
  v69 = v11;
  for (i = a1 + 56; ; v19 = i)
  {
    v24 = v89;
    v25 = v23;
    if (v89)
    {
LABEL_14:
      v6 = (v24 - 1) & v24;
      v29 = v80;
      v30 = v80[6] + v11[9] * (__clz(__rbit64(v24)) | (v25 << 6));
      v31 = v11[2];
      v32 = v68;
      v31(v68, v30, v10);
      v33 = 0;
      v27 = v25;
    }

    else
    {
      v26 = v73 <= (v23 + 1) ? v23 + 1 : v73;
      v27 = v26 - 1;
      v28 = v23;
      while (1)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_57;
        }

        if (v25 >= v73)
        {
          break;
        }

        v24 = *(v19 + 8 * v25);
        ++v28;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      v6 = 0;
      v33 = 1;
      v32 = v68;
      v29 = v80;
    }

    v75 = *v79;
    v75(v32, v33, 1, v10);
    v91 = v29;
    v92 = v19;
    v93 = v81;
    v94 = v27;
    v95 = v6;
    v74 = *v78;
    if (v74(v32, 1, v10) == 1)
    {
      sub_1BA091A88(v32, &qword_1EBBEA078, MEMORY[0x1E69A3910]);
      goto LABEL_52;
    }

    v72 = *v77;
    v72(v82, v32, v10);
    v71 = sub_1BA08FE28();
    v34 = sub_1BA4A6698();
    v35 = -1 << *(a2 + 32);
    v23 = v34 & ~v35;
    v25 = v23 >> 6;
    v19 = 1 << v23;
    if (((1 << v23) & v84[v23 >> 6]) != 0)
    {
      break;
    }

    v11 = v69;
    (*v90)(v82, v10);
LABEL_22:
    v23 = v27;
    v89 = v6;
  }

  v67 = v90 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v83 = ~v35;
  v36 = v69[9];
  v85 = v69[2];
  v86 = v36;
  while (1)
  {
    v85(v15, *(a2 + 48) + v86 * v23, v10);
    v37 = sub_1BA08FE5C();
    v38 = sub_1BA4A6728();
    v89 = *v90;
    v89(v15, v10);
    if (v38)
    {
      break;
    }

    v23 = (v23 + 1) & v83;
    v25 = v23 >> 6;
    v19 = 1 << v23;
    if (((1 << v23) & v84[v23 >> 6]) == 0)
    {
      v11 = v69;
      v89(v82, v10);
      goto LABEL_22;
    }
  }

  v83 = v37;
  v39 = (v89)(v82, v10);
  v40 = *(a2 + 32);
  v67 = ((1 << v40) + 63) >> 6;
  v22 = 8 * v67;
  v11 = v80;
  if ((v40 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v68 = &v67;
    MEMORY[0x1EEE9AC00](v39);
    v42 = &v67 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v42, v84, v41);
    v43 = *&v42[8 * v25] & ~v19;
    v44 = *(a2 + 16);
    v82 = v42;
    *&v42[8 * v25] = v43;
    v45 = v44 - 1;
    v46 = v70;
    v25 = i;
    v47 = v73;
LABEL_26:
    v69 = v45;
    while (v6)
    {
      v48 = v27;
LABEL_38:
      v51 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v85(v46, v11[6] + (v51 | (v48 << 6)) * v86, v10);
      v52 = 0;
LABEL_39:
      v75(v46, v52, 1, v10);
      v91 = v11;
      v92 = v25;
      v93 = v81;
      v94 = v27;
      v95 = v6;
      if (v74(v46, 1, v10) == 1)
      {
        sub_1BA091A88(v46, &qword_1EBBEA078, MEMORY[0x1E69A3910]);
        a2 = sub_1BA3070E4(v82, v67, v69, a2);
        goto LABEL_52;
      }

      v72(v87, v46, v10);
      v53 = sub_1BA4A6698();
      v54 = a2;
      v55 = -1 << *(a2 + 32);
      v23 = v53 & ~v55;
      v56 = v23 >> 6;
      v19 = 1 << v23;
      if (((1 << v23) & v84[v23 >> 6]) != 0)
      {
        v85(v15, *(v54 + 48) + v23 * v86, v10);
        v57 = sub_1BA4A6728();
        v89(v15, v10);
        if ((v57 & 1) == 0)
        {
          v58 = ~v55;
          do
          {
            v23 = (v23 + 1) & v58;
            v56 = v23 >> 6;
            v19 = 1 << v23;
            if (((1 << v23) & v84[v23 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v85(v15, *(v54 + 48) + v23 * v86, v10);
            v59 = sub_1BA4A6728();
            v89(v15, v10);
          }

          while ((v59 & 1) == 0);
        }

        v89(v87, v10);
        v60 = v82[v56];
        v82[v56] = v60 & ~v19;
        a2 = v54;
        v11 = v80;
        v46 = v70;
        v25 = i;
        v47 = v73;
        if ((v60 & v19) != 0)
        {
          v45 = v69 - 1;
          if (__OFSUB__(v69, 1))
          {
            __break(1u);
          }

          if (v69 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v89(v87, v10);
        a2 = v54;
        v11 = v80;
        v46 = v70;
        v25 = i;
        v47 = v73;
      }
    }

    if (v47 <= (v27 + 1))
    {
      v49 = v27 + 1;
    }

    else
    {
      v49 = v47;
    }

    v50 = v49 - 1;
    while (1)
    {
      v48 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v48 >= v47)
      {
        v6 = 0;
        v52 = 1;
        v27 = v50;
        goto LABEL_39;
      }

      v6 = *(v25 + 8 * v48);
      ++v27;
      if (v6)
      {
        v27 = v48;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v62 = v22;

    v82 = a2;
    v63 = v62;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v64 = v82;

      a2 = v64;
      continue;
    }

    break;
  }

  v65 = swift_slowAlloc();
  memcpy(v65, v84, v63);
  sub_1BA08E838(v65, v67, v82, v23, &v91);
  a2 = v66;

  MEMORY[0x1BFAF43A0](v65, -1, -1);
LABEL_52:
  sub_1B9F52E48();
  return a2;
}

uint64_t sub_1BA08C9A4(uint64_t a1, uint64_t a2)
{
  v63[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1BA4A3A28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v57 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v49 - v8;
  MEMORY[0x1EEE9AC00](v10);
  i = v49 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v63[0] = a1;
  v12 = *(a1 + 16);

  v51 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v53 = a1;
  v54 = a1 + ((v16 + 32) & ~v16);
  v60 = *(v14 + 56);
  v61 = v15;
  v58 = (a2 + 56);
  v59 = a2;
  v62 = v14;
  v17 = (v14 - 8);
  v50 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v55 = v13 + 1;
    v63[1] = v13 + 1;
    v61(i, v54 + v60 * v13, v4);
    v52 = sub_1BA08FE28();
    v18 = sub_1BA4A6698();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v55;
    if (v55 == v51)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v61(v9, *(v59 + 48) + v20 * v60, v4);
    sub_1BA08FE5C();
    v24 = sub_1BA4A6728();
    v25 = *v17;
    (*v17)(v9, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) == 0)
    {
      a2 = v59;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v59;
  v28 = *(v59 + 32);
  v49[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v49[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v49[1] = v49;
    MEMORY[0x1EEE9AC00](v26);
    v31 = v49 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v58, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v50 = v31;
    v51 = (v32 - 1);
    v33 = *(v53 + 16);
    v34 = v55;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_1BA3070E4(v50, v49[0], v51, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v53 + 16))
      {
        break;
      }

      v55 = v34;
      v61(v57, v54 + v34 * v60, v4);
      v36 = sub_1BA4A6698();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v58[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v61(v9, *(v59 + 48) + v20 * v60, v4);
      v38 = sub_1BA4A6728();
      v25(v9, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v58[v20 >> 6]) == 0)
          {
            break;
          }

          v61(v9, *(v59 + 48) + v20 * v60, v4);
          v40 = sub_1BA4A6728();
          v25(v9, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v57, v4);
        v27 = v59;
LABEL_16:
        v35 = v55;
        goto LABEL_17;
      }

LABEL_25:
      v25(v57, v4);
      v41 = v50[v22];
      v50[v22] = v41 & ~v21;
      v27 = v59;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v51 - 1;
      v35 = v55;
      if (__OFSUB__(v51, 1))
      {
        goto LABEL_33;
      }

      --v51;
      if (!v42)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v59;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v58, v45);
  sub_1BA08F464(v47, v49[0], v59, v20, v63, MEMORY[0x1E69A3910], sub_1BA08FE28, sub_1BA3070E4, sub_1BA08FE5C);
  a2 = v48;

  MEMORY[0x1BFAF43A0](v47, -1, -1);
LABEL_30:

  return a2;
}

uint64_t sub_1BA08D058(uint64_t a1, uint64_t a2)
{
  v93 = *MEMORY[0x1E69E9840];
  sub_1B9F3D488(0, &qword_1EBBEB198, MEMORY[0x1E69A3C80], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v64 - v8);
  v10 = sub_1BA4A1E88();
  MEMORY[0x1EEE9AC00](v10);
  v84 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v64 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v79 = (&v64 - v17);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v65 = v9;
  v67 = v6;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v78 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v86 = (v21 & v18);
  v71 = (63 - v20) >> 6;
  v85 = v16 + 16;
  v76 = (v16 + 48);
  v77 = (v16 + 56);
  v75 = (v16 + 32);
  v81 = (a2 + 56);
  v66 = v16;
  v87 = (v16 + 8);

  v23 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v19 = i)
  {
    v24 = v86;
    v25 = v23;
    if (v86)
    {
LABEL_14:
      v6 = (v24 - 1) & v24;
      v29 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v10);
      v30 = 0;
      v27 = v25;
    }

    else
    {
      v26 = v71 <= (v23 + 1) ? v23 + 1 : v71;
      v27 = v26 - 1;
      v28 = v23;
      while (1)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_57;
        }

        if (v25 >= v71)
        {
          break;
        }

        v24 = *(v19 + 8 * v25);
        ++v28;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      v6 = 0;
      v30 = 1;
      v29 = v65;
    }

    v73 = *v77;
    v73(v29, v30, 1, v10);
    v88 = a1;
    v89 = v19;
    v90 = v78;
    v91 = v27;
    v92 = v6;
    v72 = *v76;
    if (v72(v29, 1, v10) == 1)
    {
      sub_1BA091A88(v29, &qword_1EBBEB198, MEMORY[0x1E69A3C80]);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v29, v10);
    v69 = sub_1BA091AF8(&qword_1EBBEA650, MEMORY[0x1E69A3C80]);
    v31 = sub_1BA4A6698();
    v32 = -1 << *(a2 + 32);
    v23 = v31 & ~v32;
    v25 = v23 >> 6;
    v19 = 1 << v23;
    if (((1 << v23) & v81[v23 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v10);
LABEL_22:
    v23 = v27;
    v86 = v6;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v32;
  v33 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v33;
  while (1)
  {
    v82(v14, *(a2 + 48) + v83 * v23, v10);
    v34 = sub_1BA091AF8(&unk_1EBBEA658, MEMORY[0x1E69A3C80]);
    v35 = sub_1BA4A6728();
    v86 = *v87;
    v86(v14, v10);
    if (v35)
    {
      break;
    }

    v23 = (v23 + 1) & v80;
    v25 = v23 >> 6;
    v19 = 1 << v23;
    if (((1 << v23) & v81[v23 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v10);
      goto LABEL_22;
    }
  }

  v80 = v34;
  v36 = (v86)(v79, v10);
  v37 = *(a2 + 32);
  v64 = ((1 << v37) + 63) >> 6;
  v22 = 8 * v64;
  a1 = v68;
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    MEMORY[0x1EEE9AC00](v36);
    v39 = &v64 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v81, v38);
    v40 = *&v39[8 * v25] & ~v19;
    v41 = *(a2 + 16);
    v79 = v39;
    *&v39[8 * v25] = v40;
    v42 = v41 - 1;
    v43 = v67;
    v25 = i;
    v44 = v71;
LABEL_26:
    v66 = v42;
    while (v6)
    {
      v45 = v27;
LABEL_38:
      v48 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v82(v43, *(a1 + 48) + (v48 | (v45 << 6)) * v83, v10);
      v49 = 0;
LABEL_39:
      v73(v43, v49, 1, v10);
      v88 = a1;
      v89 = v25;
      v90 = v78;
      v91 = v27;
      v92 = v6;
      if (v72(v43, 1, v10) == 1)
      {
        sub_1BA091A88(v43, &qword_1EBBEB198, MEMORY[0x1E69A3C80]);
        a2 = sub_1BA30762C(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v43, v10);
      v50 = sub_1BA4A6698();
      v51 = a2;
      v52 = -1 << *(a2 + 32);
      v23 = v50 & ~v52;
      v53 = v23 >> 6;
      v19 = 1 << v23;
      if (((1 << v23) & v81[v23 >> 6]) != 0)
      {
        v82(v14, *(v51 + 48) + v23 * v83, v10);
        v54 = sub_1BA4A6728();
        v86(v14, v10);
        if ((v54 & 1) == 0)
        {
          v55 = ~v52;
          do
          {
            v23 = (v23 + 1) & v55;
            v53 = v23 >> 6;
            v19 = 1 << v23;
            if (((1 << v23) & v81[v23 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v14, *(v51 + 48) + v23 * v83, v10);
            v56 = sub_1BA4A6728();
            v86(v14, v10);
          }

          while ((v56 & 1) == 0);
        }

        v86(v84, v10);
        v57 = v79[v53];
        v79[v53] = v57 & ~v19;
        a2 = v51;
        a1 = v68;
        v43 = v67;
        v25 = i;
        v44 = v71;
        if ((v57 & v19) != 0)
        {
          v42 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v10);
        a2 = v51;
        a1 = v68;
        v43 = v67;
        v25 = i;
        v44 = v71;
      }
    }

    if (v44 <= (v27 + 1))
    {
      v46 = v27 + 1;
    }

    else
    {
      v46 = v44;
    }

    v47 = v46 - 1;
    while (1)
    {
      v45 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v45 >= v44)
      {
        v6 = 0;
        v49 = 1;
        v27 = v47;
        goto LABEL_39;
      }

      v6 = *(v25 + 8 * v45);
      ++v27;
      if (v6)
      {
        v27 = v45;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v59 = v22;

    v79 = a2;
    v60 = v59;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v61 = v79;

      a2 = v61;
      continue;
    }

    break;
  }

  v62 = swift_slowAlloc();
  memcpy(v62, v81, v60);
  sub_1BA08ECDC(v62, v64, v79, v23, &v88);
  a2 = v63;

  MEMORY[0x1BFAF43A0](v62, -1, -1);
LABEL_52:
  sub_1B9F52E48();
  return a2;
}

uint64_t sub_1BA08DAFC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v82 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BA4A7C88();
    sub_1BA4A27B8();
    sub_1BA091AF8(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0]);
    sub_1BA4A6DA8();
    v5 = v77;
    v7 = v78;
    v8 = v79;
    v9 = v80;
    v10 = v81;
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

  v72 = v5;
  v73 = v7;
  v74 = v8;
  v75 = v9;
  v63 = v8;
  v14 = (v8 + 64) >> 6;
  v69 = (v4 + 56);
  v76 = v10;
  v66 = v5;
  v67 = v14;
  v65 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_1BA4A7CF8();
      if (!v22)
      {
        goto LABEL_62;
      }

      v70 = v22;
      sub_1BA4A27B8();
      swift_dynamicCast();
      v20 = v71;
      v18 = v9;
      v2 = v10;
      if (!v71)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v72 = v5;
      v73 = v7;
      v74 = v63;
      v75 = v18;
      v76 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = v20;
    v24 = sub_1BA4A7788();
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v65;
    v5 = v66;
    v14 = v67;
  }

  v3 = ~v25;
  v26 = sub_1BA4A27B8();
  v27 = *(*(v4 + 48) + 8 * v7);
  v68 = v26;
  while (1)
  {
    v28 = sub_1BA4A7798();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v4 + 48) + 8 * v7);
  }

  v30 = *(v4 + 32);
  v60 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v60;
  v3 = v67;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v61 = &v59;
    MEMORY[0x1EEE9AC00](v29);
    v32 = &v59 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v69, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = *(v4 + 16);
    v62 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v65;
    v35 = v66;
LABEL_33:
    v64 = v5;
    while (v35 < 0)
    {
      v37 = sub_1BA4A7CF8();
      if (!v37)
      {
        goto LABEL_61;
      }

      v70 = v37;
      swift_dynamicCast();
      v38 = v71;
      if (!v71)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = sub_1BA4A7788();
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v69[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(*(v44 + 48) + 8 * v7);
          v50 = sub_1BA4A7798();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v69[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v67;

        v51 = v62[v46];
        v62[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v65;
        v35 = v66;
        v5 = v64;
        if (!v52)
        {
          v5 = v64 - 1;
          if (__OFSUB__(v64, 1))
          {
            __break(1u);
          }

          if (v64 == 1)
          {

            v4 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v65;
        v35 = v66;
        v3 = v67;
        v5 = v64;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v72 = v35;
      v73 = v36;
      v74 = v63;
      v75 = v40;
      v18 = v40;
      v76 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_1BA307B44(v62, v60, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v54 = v6;

    v55 = v54;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v56 = swift_slowAlloc();
  memcpy(v56, v69, v55);
  sub_1BA08F1E0(v56, v60, v4, v7, &v72);
  v58 = v57;

  MEMORY[0x1BFAF43A0](v56, -1, -1);
  v4 = v58;
LABEL_62:
  sub_1B9F52E48();
  return v4;
}

uint64_t sub_1BA08E184(uint64_t a1, uint64_t a2)
{
  v63[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1BA4A3B48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v57 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v49 - v8;
  MEMORY[0x1EEE9AC00](v10);
  i = v49 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v63[0] = a1;
  v12 = *(a1 + 16);

  v51 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v53 = a1;
  v54 = a1 + ((v16 + 32) & ~v16);
  v60 = *(v14 + 56);
  v61 = v15;
  v58 = (a2 + 56);
  v59 = a2;
  v62 = v14;
  v17 = (v14 - 8);
  v50 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v55 = v13 + 1;
    v63[1] = v13 + 1;
    v61(i, v54 + v60 * v13, v4);
    v52 = sub_1BA091A20();
    v18 = sub_1BA4A6698();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v55;
    if (v55 == v51)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v61(v9, *(v59 + 48) + v20 * v60, v4);
    sub_1BA091A54();
    v24 = sub_1BA4A6728();
    v25 = *v17;
    (*v17)(v9, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) == 0)
    {
      a2 = v59;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v59;
  v28 = *(v59 + 32);
  v49[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v49[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v49[1] = v49;
    MEMORY[0x1EEE9AC00](v26);
    v31 = v49 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v58, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v50 = v31;
    v51 = (v32 - 1);
    v33 = *(v53 + 16);
    v34 = v55;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_1BA307D70(v50, v49[0], v51, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v53 + 16))
      {
        break;
      }

      v55 = v34;
      v61(v57, v54 + v34 * v60, v4);
      v36 = sub_1BA4A6698();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v58[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v61(v9, *(v59 + 48) + v20 * v60, v4);
      v38 = sub_1BA4A6728();
      v25(v9, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v58[v20 >> 6]) == 0)
          {
            break;
          }

          v61(v9, *(v59 + 48) + v20 * v60, v4);
          v40 = sub_1BA4A6728();
          v25(v9, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v57, v4);
        v27 = v59;
LABEL_16:
        v35 = v55;
        goto LABEL_17;
      }

LABEL_25:
      v25(v57, v4);
      v41 = v50[v22];
      v50[v22] = v41 & ~v21;
      v27 = v59;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v51 - 1;
      v35 = v55;
      if (__OFSUB__(v51, 1))
      {
        goto LABEL_33;
      }

      --v51;
      if (!v42)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v59;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v58, v45);
  sub_1BA08F464(v47, v49[0], v59, v20, v63, MEMORY[0x1E69A3E18], sub_1BA091A20, sub_1BA307D70, sub_1BA091A54);
  a2 = v48;

  MEMORY[0x1BFAF43A0](v47, -1, -1);
LABEL_30:

  return a2;
}

void sub_1BA08E838(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  sub_1B9F3D488(0, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1BA4A3A28();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
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
        v24 = *a5;
        v23 = a5[1];
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

            v27 = *(v23 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v24 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v24;
        a5[1] = v23;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1BA091A88(v11, &qword_1EBBEA078, MEMORY[0x1E69A3910]);
          v45 = v61;

          sub_1BA3070E4(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1BA08FE28();
        v35 = sub_1BA4A6698();
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
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1BA08FE5C();
        v43 = sub_1BA4A6728();
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

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1BA08ECDC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  sub_1B9F3D488(0, &qword_1EBBEB198, MEMORY[0x1E69A3C80], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1BA4A1E88();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
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
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
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
          sub_1BA091A88(v11, &qword_1EBBEB198, MEMORY[0x1E69A3C80]);
          v45 = v61;

          sub_1BA30762C(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1BA091AF8(&qword_1EBBEA650, MEMORY[0x1E69A3C80]);
        v35 = sub_1BA4A6698();
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
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1BA091AF8(&unk_1EBBEA658, MEMORY[0x1E69A3C80]);
        v43 = sub_1BA4A6728();
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

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1BA08F1E0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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
          if (!sub_1BA4A7CF8())
          {
            goto LABEL_29;
          }

          sub_1BA4A27B8();
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

            sub_1BA307B44(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_1BA4A7788();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1BA4A27B8();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_1BA4A7798();

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
          v27 = sub_1BA4A7798();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
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

void sub_1BA08F464(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (*a6)(void), void (*a7)(uint64_t), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a9)(uint64_t))
{
  v44 = a8;
  v52 = a7;
  v43 = a2;
  v13 = a6(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v42 - v18;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v59 = &v42 - v21;
  v22 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v45 = a1;
  v46 = v22 - 1;
  v23 = *a5;
  v24 = a5[1];
  v25 = *(*a5 + 16);
  if (v24 == v25)
  {
LABEL_2:

    v44(v45, v43, v46, a3);
    return;
  }

  v26 = a5;
  v57 = v14 + 16;
  v49 = v14 + 32;
  v50 = v14;
  v53 = a9;
  v54 = a3 + 56;
  v58 = (v14 + 8);
  v47 = a5;
  while (v24 < v25)
  {
    v28 = *(v14 + 80);
    v56 = *(v14 + 72);
    v29 = v51;
    v55 = *(v14 + 16);
    v55(v51, v23 + ((v28 + 32) & ~v28) + v56 * v24, v13, v20);
    v26[1] = v24 + 1;
    v30 = (*(v14 + 32))(v59, v29, v13);
    v52(v30);
    v31 = sub_1BA4A6698();
    v32 = -1 << *(a3 + 32);
    v33 = v31 & ~v32;
    v34 = v33 >> 6;
    v35 = 1 << v33;
    if (((1 << v33) & *(v54 + 8 * (v33 >> 6))) == 0)
    {
      v27 = *v58;
LABEL_5:
      v27(v59, v13);
      goto LABEL_6;
    }

    v48 = v58 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36 = a3;
    v37 = ~v32;
    while (1)
    {
      v38 = (v55)(v16, *(v36 + 48) + v33 * v56, v13);
      v53(v38);
      v39 = sub_1BA4A6728();
      v27 = *v58;
      (*v58)(v16, v13);
      if (v39)
      {
        break;
      }

      v33 = (v33 + 1) & v37;
      v34 = v33 >> 6;
      v35 = 1 << v33;
      if (((1 << v33) & *(v54 + 8 * (v33 >> 6))) == 0)
      {
        a3 = v36;
        v26 = v47;
        goto LABEL_5;
      }
    }

    v27(v59, v13);
    v40 = *(v45 + 8 * v34);
    *(v45 + 8 * v34) = v40 & ~v35;
    if ((v40 & v35) == 0)
    {
      a3 = v36;
      v26 = v47;
LABEL_6:
      v14 = v50;
      goto LABEL_7;
    }

    v41 = v46 - 1;
    v14 = v50;
    if (__OFSUB__(v46, 1))
    {
      goto LABEL_20;
    }

    a3 = v36;
    v26 = v47;
    --v46;
    if (!v41)
    {
      return;
    }

LABEL_7:
    v23 = *v26;
    v24 = v26[1];
    v25 = *(*v26 + 16);
    if (v24 == v25)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1BA08F824(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1BA4A1798() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  sub_1BA08AE08(a1, a2, v6, v7, v8, v9);
}

void sub_1BA08F8AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1B9F0D950(255, &qword_1EDC6E310);
    v7 = a3(a1, MEMORY[0x1E69E6370], v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BA08F944()
{
  result = qword_1EBBEB038;
  if (!qword_1EBBEB038)
  {
    sub_1BA091330(255, &qword_1EBBEB018, sub_1BA08B238, sub_1BA08B468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB038);
  }

  return result;
}

void sub_1BA08FA0C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA08FA74()
{
  if (!qword_1EBBEB040)
  {
    v0 = MEMORY[0x1E695C028];
    sub_1BA08F8AC(255, &qword_1EBBEB028, MEMORY[0x1E695C028]);
    sub_1BA08B424(&qword_1EBBEB030, &qword_1EBBEB028, v0);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB040);
    }
  }
}

void sub_1BA08FB30()
{
  if (!qword_1EBBEB048)
  {
    sub_1BA08FA74();
    v0 = MEMORY[0x1E69E6370];
    sub_1BA091C38(255, &qword_1EDC5F4A0, MEMORY[0x1E69E6370], MEMORY[0x1E695BED0]);
    sub_1BA091AF8(&qword_1EBBEB050, sub_1BA08FA74);
    sub_1BA091CA0(&qword_1EDC5F4A8, &qword_1EDC5F4A0, v0);
    v1 = sub_1BA4A4BB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB048);
    }
  }
}

unint64_t sub_1BA08FC30()
{
  result = qword_1EDC5F440;
  if (!qword_1EDC5F440)
  {
    sub_1BA0909B8(255, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F440);
  }

  return result;
}

uint64_t sub_1BA08FCAC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA083F00(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BA08FCD8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BA08B49C(*a1, *(v2 + 16));
  *a2 = result & 1;
  return result;
}

uint64_t sub_1BA08FD0C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA08B658(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1BA08FD94(uint64_t a1, uint64_t a2)
{
  sub_1B9F3D488(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA08FE90(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = sub_1BA4A3A28();
  v58 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - v7;
  v9 = sub_1BA4A3EA8();
  v59 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  sub_1BA4154C8();
  v15 = v60;
  v16 = v61;
  v17 = sub_1BA4A3B58();
  v61 = v16;
  if (v16)
  {
  }

  else
  {
    v19 = v17;
    v55 = v5;
    v57 = v14;
    v60 = v9;

    v20 = sub_1BA1B05F0(v19);
    if (v20)
    {
      v22 = v20;
      v23 = v21;
      v56 = v19;
      ObjectType = swift_getObjectType();
      v25 = a1;
      v26 = (*(v23 + 16))(a1, ObjectType, v23);
      if (v27)
      {
        v28 = v26;
        v29 = v27;
        v30 = v57;
        sub_1BA4A3D88();

        v31 = sub_1BA4A3E88();
        v32 = sub_1BA4A6FC8();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v62 = v34;
          *v33 = 136315394;
          *(v33 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4BACE0, &v62);
          *(v33 + 12) = 2080;

          v35 = sub_1B9F0B82C(v28, v29, &v62);

          *(v33 + 14) = v35;
          _os_log_impl(&dword_1B9F07000, v31, v32, "[%s] Fetched feed item identifier: %s", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v34, -1, -1);
          MEMORY[0x1BFAF43A0](v33, -1, -1);
        }

        (*(v59 + 8))(v30, v60);
        sub_1BA4A27B8();
        v15 = sub_1BA4A26A8();
        swift_unknownObjectRelease();
      }

      else
      {
        v57 = v22;
        v36 = v11;
        sub_1BA4A3D88();
        v37 = v58;
        v38 = *(v58 + 16);
        v39 = v3;
        v38(v8, v25, v3);
        v54 = v36;
        v40 = sub_1BA4A3E88();
        v41 = sub_1BA4A6FA8();
        v53 = v40;
        v42 = os_log_type_enabled(v40, v41);
        v43 = v59;
        if (v42)
        {
          v44 = v8;
          v45 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v62 = v52;
          *v45 = 136315394;
          *(v45 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4BACE0, &v62);
          *(v45 + 12) = 2080;
          v38(v55, v8, v39);
          v46 = sub_1BA4A6808();
          v48 = v47;
          (*(v37 + 8))(v44, v39);
          v49 = sub_1B9F0B82C(v46, v48, &v62);

          *(v45 + 14) = v49;
          v50 = v53;
          _os_log_impl(&dword_1B9F07000, v53, v41, "[%s] Did not receive a feed item identifier for auth identifier: %s", v45, 0x16u);
          v51 = v52;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v51, -1, -1);
          MEMORY[0x1BFAF43A0](v45, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          (*(v37 + 8))(v8, v39);
        }

        (*(v43 + 8))(v54, v60);
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return v15;
}

uint64_t sub_1BA090428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3A28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v4, v9);
      sub_1BA0E2238(v11, v7);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

void sub_1BA090588()
{
  if (!qword_1EBBEB068)
  {
    sub_1BA090874(255, &unk_1EBBEDFE0, &qword_1EBBEB070, MEMORY[0x1E69A3340], MEMORY[0x1E695BED0]);
    sub_1BA08FA0C(255, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
    sub_1BA090668();
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB068);
    }
  }
}

unint64_t sub_1BA090668()
{
  result = qword_1EBBEDFF0;
  if (!qword_1EBBEDFF0)
  {
    sub_1BA090874(255, &unk_1EBBEDFE0, &qword_1EBBEB070, MEMORY[0x1E69A3340], MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDFF0);
  }

  return result;
}

void sub_1BA0906F8()
{
  if (!qword_1EBBEB078)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1BA090874(255, &unk_1EBBEE000, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BED0]);
    sub_1B9F3D488(255, &qword_1EBBEB070, MEMORY[0x1E69A3340], MEMORY[0x1E69E6720]);
    sub_1BA090810(&qword_1EBBEE010, &unk_1EBBEE000, v0);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB078);
    }
  }
}

uint64_t sub_1BA090810(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA090874(255, a2, &qword_1EBBEA318, MEMORY[0x1E69A3430], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA090874(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1B9F3D488(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA09091C()
{
  if (!qword_1EBBEB090)
  {
    sub_1BA090984(255);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB090);
    }
  }
}

void sub_1BA0909B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA090A08()
{
  if (!qword_1EBBEB0A0)
  {
    sub_1BA090AF4(255, &qword_1EBBEB0A8, sub_1BA090B9C, sub_1BA090C60);
    sub_1BA090C94();
    sub_1BA090D44();
    sub_1BA091AF8(&qword_1EBBEB0D0, sub_1BA090C94);
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB0A0);
    }
  }
}

void sub_1BA090AF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_1B9F0D950(255, &qword_1EDC6E310);
    a4();
    v6 = sub_1BA4A4B38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1BA090BD8()
{
  result = qword_1EBBEA908;
  if (!qword_1EBBEA908)
  {
    sub_1B9F3D488(255, &qword_1EBBEA900, MEMORY[0x1E69A3910], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA908);
  }

  return result;
}

void sub_1BA090C94()
{
  if (!qword_1EBBEB0C0)
  {
    sub_1B9F3D488(255, &qword_1EBBEA900, MEMORY[0x1E69A3910], MEMORY[0x1E69E62F8]);
    sub_1B9F0D950(255, &qword_1EDC6E310);
    v0 = sub_1BA4A4E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB0C0);
    }
  }
}

unint64_t sub_1BA090D44()
{
  result = qword_1EBBEB0C8;
  if (!qword_1EBBEB0C8)
  {
    sub_1BA090AF4(255, &qword_1EBBEB0A8, sub_1BA090B9C, sub_1BA090C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB0C8);
  }

  return result;
}

void sub_1BA090DCC()
{
  if (!qword_1EBBEB0D8)
  {
    sub_1BA090A08();
    sub_1B9F0ADF8(255, &qword_1EDC6B630);
    sub_1BA091AF8(&qword_1EBBEB0E0, sub_1BA090A08);
    v0 = sub_1BA4A4B18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB0D8);
    }
  }
}

void sub_1BA090EBC()
{
  if (!qword_1EBBEB0F8)
  {
    sub_1BA091540(255, &qword_1EBBEB0E8, sub_1BA090DCC, sub_1BA090E88);
    sub_1B9F3D488(255, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E62F8]);
    sub_1BA090F98();
    v0 = sub_1BA4A4C08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB0F8);
    }
  }
}

unint64_t sub_1BA090F98()
{
  result = qword_1EBBEB100;
  if (!qword_1EBBEB100)
  {
    sub_1BA091540(255, &qword_1EBBEB0E8, sub_1BA090DCC, sub_1BA090E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB100);
  }

  return result;
}

void sub_1BA091020()
{
  if (!qword_1EBBEB108)
  {
    sub_1BA090AF4(255, &qword_1EBBEB110, sub_1BA09110C, sub_1BA091274);
    sub_1BA090EBC();
    sub_1BA0912A8();
    sub_1BA091AF8(&qword_1EBBEB130, sub_1BA090EBC);
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB108);
    }
  }
}

void sub_1BA091148(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1B9F3D488(255, a3, a4, MEMORY[0x1E69E62F8]);
    a5();
    v7 = sub_1BA4A4C98();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BA0911EC()
{
  result = qword_1EBBEA8F8;
  if (!qword_1EBBEA8F8)
  {
    sub_1B9F3D488(255, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA8F8);
  }

  return result;
}

unint64_t sub_1BA0912A8()
{
  result = qword_1EBBEB128;
  if (!qword_1EBBEB128)
  {
    sub_1BA090AF4(255, &qword_1EBBEB110, sub_1BA09110C, sub_1BA091274);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB128);
  }

  return result;
}

void sub_1BA091330(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    a4();
    sub_1B9F3DC80();
    v6 = sub_1BA4A4CC8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA09140C()
{
  if (!qword_1EBBEB148)
  {
    sub_1BA091330(255, &qword_1EBBEB138, sub_1BA091020, sub_1BA0913D8);
    type metadata accessor for SummarySharingSelectableDataTypeItem(255);
    sub_1BA0914B8();
    v0 = sub_1BA4A4AC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB148);
    }
  }
}

unint64_t sub_1BA0914B8()
{
  result = qword_1EBBEB150;
  if (!qword_1EBBEB150)
  {
    sub_1BA091330(255, &qword_1EBBEB138, sub_1BA091020, sub_1BA0913D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB150);
  }

  return result;
}

void sub_1BA091540(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1BA4A4C18();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA0915E4()
{
  if (!qword_1EBBEB168)
  {
    sub_1BA091540(255, &qword_1EBBEB158, sub_1BA09140C, sub_1BA0915B0);
    sub_1BA09091C();
    sub_1BA0916D0();
    sub_1BA091AF8(&qword_1EBBEB098, sub_1BA09091C);
    v0 = sub_1BA4A4BB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB168);
    }
  }
}

unint64_t sub_1BA0916D0()
{
  result = qword_1EBBEB170;
  if (!qword_1EBBEB170)
  {
    sub_1BA091540(255, &qword_1EBBEB158, sub_1BA09140C, sub_1BA0915B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB170);
  }

  return result;
}

uint64_t sub_1BA091758@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA08FE90(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BA0917A4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SummarySharingSelectionFlow(0) - 8);
  v6 = *a1;
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BA08397C(v6, v7, a2);
}

unint64_t sub_1BA091828()
{
  result = qword_1EBBEB188;
  if (!qword_1EBBEB188)
  {
    sub_1B9F3D488(255, &qword_1EBBEB180, sub_1BA090984, MEMORY[0x1E695C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB188);
  }

  return result;
}

uint64_t sub_1BA0918B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA091918()
{
  result = qword_1EBBE9DF8;
  if (!qword_1EBBE9DF8)
  {
    type metadata accessor for SummarySharingSelectableDataTypeCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DF8);
  }

  return result;
}

void sub_1BA091960()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_pausedStateChanged) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___doneButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___activitySpinnerItem) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_updateAuthorizationsCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations) = MEMORY[0x1E69E7CD0];
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA091A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F3D488(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA091AF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA091B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA091BA8()
{
  result = qword_1EBBEB1A8;
  if (!qword_1EBBEB1A8)
  {
    sub_1BA091C38(255, &qword_1EBBEB1A0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB1A8);
  }

  return result;
}

void sub_1BA091C38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA091CA0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BA091C38(255, a2, a3, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA091D04()
{
  result = qword_1EDC5E6B8;
  if (!qword_1EDC5E6B8)
  {
    sub_1B9F3D488(255, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E6B8);
  }

  return result;
}

uint64_t sub_1BA091D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

float64x2_t static NSDirectionalEdgeInsets.+= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3, float64x2_t a4, float64_t a5)
{
  a2.f64[1] = a3;
  result = vaddq_f64(*a1, a2);
  a4.f64[1] = a5;
  v6 = vaddq_f64(a1[1], a4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

void UIViewController.presentPDF(provider:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = [objc_allocWithZone(MEMORY[0x1E69A4418]) initWithRootViewController_];
  [v2 hk:v6 presentModalCardViewController:1 fullScreen:1 animated:0 completion:?];
}

uint64_t sub_1BA091F1C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA091F8C();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA091F8C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v6], v28);
  if (v28[3])
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
    sub_1B9F0D9AC(0, &unk_1EBBEB1D0);
    if (swift_dynamicCast())
    {
      v7 = v27[0];
      v8 = v27[1];
      v9 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_pickerView];
      ObjectType = swift_getObjectType();
      [v9 setDelegate_];
      [v9 setDataSource_];
      [v9 reloadAllComponents];
      v11 = (*(v8 + 8))(ObjectType, v8);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = (v11 + 40);
        do
        {
          [v9 selectRow:*(v13 - 1) inComponent:*v13 animated:0];
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      if (([v7 respondsToSelector_] & 1) == 0)
      {
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRetain();
      [v7 pickerView:v9 didSelectRow:objc_msgSend(v9 inComponent:{sel_selectedRowInComponent_, 0), 0}];
      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    sub_1B9F7B644(v28);
  }

  sub_1BA4A3DE8();
  v15 = v1;
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[0] = v19;
    *v18 = 136446722;
    v20 = sub_1BA4A85D8();
    v22 = sub_1B9F0B82C(v20, v21, v28);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1B9F0B82C(1835365481, 0xE400000000000000, v28);
    *(v18 + 22) = 2082;
    sub_1B9F7B6F8();
    v27[0] = v23;
    sub_1BA0928CC();
    v24 = sub_1BA4A6808();
    v26 = sub_1B9F0B82C(v24, v25, v28);

    *(v18 + 24) = v26;
    _os_log_impl(&dword_1B9F07000, v16, v17, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to PickerTableViewCellSource", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v19, -1, -1);
    MEMORY[0x1BFAF43A0](v18, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BA092364@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA0923BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA091F8C();
  return sub_1B9F7B644(a1);
}

uint64_t (*sub_1BA092428(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA09248C;
}

uint64_t sub_1BA09248C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA091F8C();
  }

  return result;
}

id PickerTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PickerTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BA092678(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCD78]) init];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_pickerView] = v5;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v15.receiver = v2;
  v15.super_class = type metadata accessor for PickerTableViewCell();
  v7 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_, 0, v6);

  v8 = OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_pickerView;
  v9 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_pickerView];
  v10 = v7;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v10 contentView];
  [v11 addSubview_];

  v12 = *&v7[v8];
  v13 = [v10 contentView];

  [v12 hk:v13 alignConstraintsWithView:?];
  return v10;
}

unint64_t sub_1BA0928CC()
{
  result = qword_1EBBEFBD0;
  if (!qword_1EBBEFBD0)
  {
    sub_1B9F7B6F8();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEFBD0);
  }

  return result;
}

uint64_t SharableModelVersionCoding.modelVersion.setter(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  sub_1BA081E08();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A2338();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA092B34(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BA092B98(v8);
    a3[2](0, a2, a3);
    a3[8](0, a2, a3);
    return sub_1BA092B98(a1);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = sub_1BA4A2318();
    a3[5](v14, a2, a3);
    v15 = sub_1BA4A2328();
    a3[11](v15, a2, a3);
    sub_1BA092B98(a1);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1BA092B34(uint64_t a1, uint64_t a2)
{
  sub_1BA081E08();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA092B98(uint64_t a1)
{
  sub_1BA081E08();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SharableModelVersionCoding.modelVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a2 + 8))() & 1) != 0 && ((*(a2 + 32))(a1, a2), ((*(a2 + 56))(a1, a2)))
  {
    (*(a2 + 80))(a1, a2);
    sub_1BA4A2308();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1BA4A2338();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

uint64_t sub_1BA092D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  sub_1BA081E08();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA092B34(a1, v9);
  return SharableModelVersionCoding.modelVersion.setter(v9, v5, v6);
}

void (*SharableModelVersionCoding.modelVersion.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  sub_1BA081E08();
  v11 = *(*(v10 - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(v11);
    v12 = malloc(v11);
  }

  v9[4] = v12;
  SharableModelVersionCoding.modelVersion.getter(a2, a3, v12);
  return sub_1BA092EA0;
}

void sub_1BA092EA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = **a1;
  if (a2)
  {
    sub_1BA092B34(v4, v3);
    SharableModelVersionCoding.modelVersion.setter(v3, v6, v5);
    sub_1BA092B98(v4);
  }

  else
  {
    SharableModelVersionCoding.modelVersion.setter(v4, v6, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1BA093068()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarySharingPreviewButtonDataSource()
{
  result = qword_1EBBEB1E0;
  if (!qword_1EBBEB1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA0931F8(uint64_t a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    v10 = v3;
    swift_once();
    v3 = v10;
  }

  v7 = __swift_project_value_buffer(v3, qword_1EDC6CB90);
  sub_1B9F37E38(v7, v5);
  *(v5 + 8) = 0x403E000000000000;
  v8 = ListLayoutConfiguration.layout(for:)(v6);
  sub_1BA047354(v5);
  return v8;
}

uint64_t sub_1BA093310(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SummarySharingPreviewSummariesCell();
  sub_1BA093894();
  *(a4 + 32) = sub_1BA4A6808();
  *(a4 + 40) = v12;
  *(a4 + 64) = 0;
  *(a4 + 136) = 1;
  *(a4 + 152) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 160) = 0;
  *(a4 + 168) = 0;
  v22 = sub_1BA4A85D8();
  v23 = v13;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  sub_1BA0938DC(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v14 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v14);

  (*(v9 + 8))(v11, v8);
  v15 = v23;
  *(a4 + 16) = v22;
  *(a4 + 24) = v15;
  if (qword_1EBBE84A8 != -1)
  {
    swift_once();
  }

  v16 = unk_1EBBED760;
  *(a4 + 48) = qword_1EBBED758;
  *(a4 + 56) = v16;
  v17 = qword_1EBBE84B0;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBBED768;
  v19 = *(a4 + 64);
  *(a4 + 64) = qword_1EBBED768;
  v20 = v18;

  *(a4 + 112) = a2;
  sub_1B9F25598(a1, a4 + 72);
  *(a4 + 120) = a3;
  *(a4 + 128) = &protocol witness table for CellRegistering<A>;
  return a4;
}

uint64_t sub_1BA093594(uint64_t a1, void *a2)
{
  v3 = v2;
  v29 = a1;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v31);
  sub_1B9F0A534(v31, v30);
  v10 = a2;
  v11 = sub_1BA2603BC(v10);
  v12 = type metadata accessor for SummarySharingPreviewSummariesItem();
  v13 = swift_allocObject();
  v14 = sub_1BA093310(v30, v10, v11, v13);
  __swift_destroy_boxed_opaque_existential_1(v31);
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingPreviewButtonDataSource_previewItem) = v14;
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v28 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360();
  v16 = swift_allocObject();
  *(v16 + 16) = v28;
  *(v16 + 56) = v12;
  *(v16 + 64) = sub_1BA0938DC(&qword_1EBBEB1F0, type metadata accessor for SummarySharingPreviewSummariesItem);
  *(v16 + 32) = v14;

  sub_1BA4A1788();
  v17 = sub_1BA4A1748();
  v19 = v18;
  v20 = *(v7 + 8);
  v20(v9, v6);
  v21 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v21);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v16;
  v22 = Array<A>.identifierToIndexDict()(v16);

  *(inited + 56) = v22;
  *(inited + 64) = v17;
  *(inited + 72) = v19;
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v31, "MutableArray<");
  HIWORD(v31[1]) = -4864;
  sub_1BA4A1788();
  v23 = sub_1BA4A1748();
  v25 = v24;
  v20(v9, v6);
  MEMORY[0x1BFAF1350](v23, v25);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v26 = MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v31[0], v31[1]);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v26;
}

unint64_t sub_1BA093894()
{
  result = qword_1EBBE9D28;
  if (!qword_1EBBE9D28)
  {
    type metadata accessor for SummarySharingPreviewSummariesCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9D28);
  }

  return result;
}

uint64_t sub_1BA0938DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static DataTypeDetailConfiguration.standardWithChart(hkType:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B9F1B3E0(0, &qword_1EDC5DC68, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5460;
  *(v3 + 56) = &type metadata for DataTypeDetailConfiguration.ChartComponent;
  *(v3 + 64) = sub_1BA093DC8();
  *(v3 + 32) = a1;
  *(v3 + 40) = 0;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 hk_chartBackgroundColor];
  sub_1B9F0ADF8(0, &qword_1EDC5E540);
  v7 = sub_1BA4A7068();
  *(v3 + 96) = &type metadata for DataTypeDetailConfiguration.MessageButtonComponent;
  *(v3 + 104) = sub_1BA093E1C();
  *(v3 + 72) = v5;
  *(v3 + 80) = v6;
  *(v3 + 88) = v7;
  v29 = v3;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4BAF00;
  *(inited + 56) = &type metadata for DataTypeDetailConfiguration.PromptsComponent;
  v27 = sub_1BA093E70();
  *(inited + 64) = v27;
  v9 = v5;
  DataTypeDetailConfiguration.PromptsComponent.init(hkType:prominentPrompts:)(v9, 1, (inited + 32));
  *(inited + 96) = &type metadata for DataTypeDetailConfiguration.GetMoreFromHealthComponent;
  *(inited + 104) = sub_1BA093EC4();
  *(inited + 72) = v9;
  *(inited + 80) = 0;
  *(inited + 136) = &type metadata for DataTypeDetailConfiguration.TrendsComponent;
  *(inited + 144) = sub_1BA094F08();
  *(inited + 112) = v9;
  *(inited + 120) = 3;
  v10 = v9;
  v11 = sub_1B9FDCB68(&unk_1F37FBCB8);
  *(inited + 176) = &type metadata for DataTypeDetailConfiguration.HighlightsComponent;
  *(inited + 184) = sub_1BA094F5C();
  *(inited + 152) = v9;
  *(inited + 160) = v11;
  *(inited + 216) = &type metadata for DataTypeDetailConfiguration.DescriptionComponent;
  *(inited + 224) = sub_1BA094FB0();
  *(inited + 208) = 3;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(inited + 192) = sub_1BA095004;
  *(inited + 200) = v12;
  *(inited + 256) = &type metadata for DataTypeDetailConfiguration.ArticlesComponent;
  *(inited + 264) = sub_1BA09500C();
  v13 = swift_allocObject();
  *(inited + 232) = v13;
  *(v13 + 16) = v9;
  *(v13 + 24) = 0;
  *(v13 + 32) = 3;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5460;
  *(v14 + 56) = &type metadata for DataTypeDetailConfiguration.AppsComponent;
  *(v14 + 64) = sub_1BA095060();
  *(v14 + 32) = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B9FD0;
  type metadata accessor for DataTypeDetailViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = v10;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 bundleForClass_];
  v21 = sub_1BA4A1318();
  v23 = v22;

  *(v15 + 56) = &type metadata for DataTypeDetailConfiguration.FavoriteToggleComponent;
  *(v15 + 64) = sub_1BA0950B4();
  v24 = swift_allocObject();
  *(v15 + 32) = v24;
  v24[2] = v19;
  v24[3] = v21;
  v24[4] = v23;
  v24[5] = 3;
  *(v15 + 96) = &type metadata for DataTypeDetailConfiguration.DataManagementComponent;
  *(v15 + 104) = sub_1BA095108();
  v25 = swift_allocObject();
  *(v15 + 72) = v25;
  *(v25 + 16) = v19;
  *(v25 + 24) = 1;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  *(v25 + 48) = 3;
  *(v15 + 136) = &type metadata for DataTypeDetailConfiguration.FeatureStatusComponent;
  *(v15 + 144) = sub_1BA09515C();
  *(v15 + 112) = v19;
  *(v15 + 120) = 0;
  *(v14 + 96) = &type metadata for DataTypeDetailConfiguration.VerticalGroupComponent;
  *(v14 + 104) = sub_1BA0951B0();
  *(v14 + 72) = 0x736E6F6974704FLL;
  *(v14 + 80) = 0xE700000000000000;
  *(v14 + 88) = v15;
  *(inited + 296) = &type metadata for DataTypeDetailConfiguration.HorizontalGroupComponent;
  *(inited + 304) = sub_1BA095204();
  strcpy((inited + 272), "AppsAndOptions");
  *(inited + 287) = -18;
  *(inited + 288) = v14;
  *(inited + 336) = &type metadata for DataTypeDetailConfiguration.PromptsComponent;
  *(inited + 344) = v27;
  DataTypeDetailConfiguration.PromptsComponent.init(hkType:prominentPrompts:)(v19, 0, (inited + 312));
  result = sub_1B9FE1E74(inited);
  *a2 = v29;
  return result;
}

unint64_t sub_1BA093DC8()
{
  result = qword_1EDC64F08;
  if (!qword_1EDC64F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F08);
  }

  return result;
}

unint64_t sub_1BA093E1C()
{
  result = qword_1EDC64ED0;
  if (!qword_1EDC64ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64ED0);
  }

  return result;
}

unint64_t sub_1BA093E70()
{
  result = qword_1EDC64EF8;
  if (!qword_1EDC64EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EF8);
  }

  return result;
}

unint64_t sub_1BA093EC4()
{
  result = qword_1EDC64F48;
  if (!qword_1EDC64F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F48);
  }

  return result;
}

uint64_t static DataTypeDetailConfiguration.standardWithSampleList(sampleType:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  static DataTypeDetailConfiguration.standardWithChart(hkType:)(v3, a2);
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v16 = &type metadata for DataTypeDetailConfiguration.SampleListComponent;
  v17 = sub_1BA095258();
  v4 = swift_allocObject();
  v15[0] = v4;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0u;
  v5 = v4 + 24;
  v6 = v3;
  sub_1BA0952AC(&v12, v5);
  sub_1BA0940EC(0x7472616843, 0xE500000000000000, v15);
  sub_1BA09533C(v15);
  v7 = [objc_opt_self() clearColor];
  sub_1B9F0ADF8(0, &qword_1EDC5E540);
  v8 = sub_1BA4A7068();
  v16 = &type metadata for DataTypeDetailConfiguration.MessageButtonComponent;
  v9 = sub_1BA093E1C();
  v15[0] = v6;
  v15[1] = v7;
  v17 = v9;
  v15[2] = v8;
  sub_1BA0940EC(0x426567617373654DLL, 0xED00006E6F747475, v15);
  sub_1BA09533C(v15);
  v16 = &type metadata for DataTypeDetailConfiguration.DataManagementComponent;
  v17 = sub_1BA095108();
  v10 = swift_allocObject();
  v15[0] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 3;
  sub_1BA0940EC(0x616E614D61746144, 0xEE00746E656D6567, v15);
  return sub_1BA09533C(v15);
}

uint64_t sub_1BA0940EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = *v4 + 32;
  while (1)
  {
    v11 = v9;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    if (v7 != v9)
    {
      if (v7 >= v8[2])
      {
        __break(1u);
LABEL_31:
        v8 = sub_1BA2F67AC(v8);
        *v9 = v8;
LABEL_19:
        if ((v32 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v32 < v8[2])
        {
          v23 = &v8[5 * v32];
          __swift_destroy_boxed_opaque_existential_1((v23 + 4));
          sub_1B9F1134C(&v40, (v23 + 4));
          *v9 = v8;
          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_34;
      }

      v11 = (v7 + 1);
      *&v40 = v7;
      sub_1B9F0A534(v10 + 40 * v7, &v40 + 8);
      v12 = v40;
      v13 = v41;
      v14 = v42;
    }

    v43[0] = v12;
    v43[1] = v13;
    v3 = v14;
    v43[2] = v14;
    if (!v14)
    {
      return v3 != 0;
    }

    v32 = v12;
    sub_1B9F1134C((v43 + 8), v37);
    sub_1B9F0A534(v37, v36);
    sub_1B9F0D950(0, &unk_1EDC66C80);
    sub_1BA095560();
    if (swift_dynamicCast())
    {
      break;
    }

    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    sub_1BA0955CC(&v33);
LABEL_10:
    v17 = v38;
    v18 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    if ((*(v18 + 24))(v17, v18) == a1 && v19 == a2)
    {

LABEL_17:
      sub_1BA095658(a3, &v33);
      if (*(&v34 + 1))
      {
        sub_1B9F1134C(&v33, &v40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v9 = v30;
        *v30 = v8;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }

      sub_1BA09533C(&v33);
      sub_1BA0F0A1C(v32, &v40);
LABEL_27:
      __swift_destroy_boxed_opaque_existential_1(&v40);
LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(v37);
      return v3 != 0;
    }

    v21 = sub_1BA4A8338();

    if (v21)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
    v7 = v11;
  }

  sub_1BA0956E8(&v33, &v40);
  v15 = *(&v41 + 1);
  v16 = v42;
  __swift_mutable_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
  if (((*(v16 + 32))(a1, a2, a3, v15, v16) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v40);
    goto LABEL_10;
  }

  v24 = *(&v41 + 1);
  v25 = *(&v42 + 1);
  v26 = __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
  *(&v34 + 1) = v24;
  *&v35 = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = v30;
  *v30 = v8;
  if (result)
  {
    goto LABEL_24;
  }

LABEL_34:
  result = sub_1BA2F67AC(v8);
  v8 = result;
  *v9 = result;
LABEL_24:
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v32 < v8[2])
  {
    v29 = &v8[5 * v32];
    __swift_destroy_boxed_opaque_existential_1((v29 + 4));
    sub_1B9F1134C(&v33, (v29 + 4));
    *v9 = v8;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA094470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = *(v4 + 16);
  v28 = (v4 + 16);
  v9 = v8[2];
  while (1)
  {
    v10 = v9;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    if (v7 != v9)
    {
      if (v7 >= v8[2])
      {
        __break(1u);
LABEL_31:
        v8 = sub_1BA2F67AC(v8);
LABEL_19:
        if ((v30 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v30 < v8[2])
        {
          v21 = &v8[5 * v30];
          __swift_destroy_boxed_opaque_existential_1((v21 + 4));
          sub_1B9F1134C(&v38, (v21 + 4));
          *v28 = v8;
          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_34;
      }

      v10 = v7 + 1;
      *&v38 = v7;
      sub_1B9F0A534(&v8[5 * v7 + 4], &v38 + 8);
      v11 = v38;
      v12 = v39;
      v13 = v40;
    }

    v41[0] = v11;
    v41[1] = v12;
    v3 = v13;
    v41[2] = v13;
    if (!v13)
    {
      return v3 != 0;
    }

    v30 = v11;
    sub_1B9F1134C((v41 + 8), v35);
    sub_1B9F0A534(v35, v34);
    sub_1B9F0D950(0, &unk_1EDC66C80);
    sub_1BA095560();
    if (swift_dynamicCast())
    {
      break;
    }

    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    sub_1BA0955CC(&v31);
LABEL_10:
    v16 = v36;
    v17 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    if ((*(v17 + 24))(v16, v17) == a1 && v18 == a2)
    {

LABEL_17:
      sub_1BA095658(a3, &v31);
      if (*(&v32 + 1))
      {
        sub_1B9F1134C(&v31, &v38);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }

      sub_1BA09533C(&v31);
      sub_1BA0F0A1C(v30, &v38);
LABEL_27:
      __swift_destroy_boxed_opaque_existential_1(&v38);
LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(v35);
      return v3 != 0;
    }

    v20 = sub_1BA4A8338();

    if (v20)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
    v7 = v10;
  }

  sub_1BA0956E8(&v31, &v38);
  v14 = *(&v39 + 1);
  v15 = v40;
  __swift_mutable_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
  if (((*(v15 + 32))(a1, a2, a3, v14, v15) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v38);
    goto LABEL_10;
  }

  v22 = *(&v39 + 1);
  v23 = *(&v40 + 1);
  v24 = __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
  *(&v32 + 1) = v22;
  *&v33 = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v24, v22);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_24;
  }

LABEL_34:
  result = sub_1BA2F67AC(v8);
  v8 = result;
LABEL_24:
  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v30 < v8[2])
  {
    v27 = &v8[5 * v30];
    __swift_destroy_boxed_opaque_existential_1((v27 + 4));
    sub_1B9F1134C(&v31, (v27 + 4));
    *v28 = v8;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t static DataTypeDetailConfiguration.standardWithChart(measureIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a1;
  v61 = a2;
  v3 = sub_1BA4A1A48();
  v4 = *(v3 - 8);
  v59 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F1B3E0(0, &qword_1EDC5DC68, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v67 = xmmword_1BA4B5480;
  *(v7 + 16) = xmmword_1BA4B5480;
  *(v7 + 56) = &type metadata for DataTypeDetailConfiguration.MeasureChartComponent;
  *(v7 + 64) = sub_1BA0953C4();
  v68 = v7;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9A90;
  v51 = v4;
  v9 = *(v4 + 16);
  v50 = v3;
  v9(v6, a1, v3);
  v10 = v4 + 16;
  v11 = v9;
  v52 = v9;
  *(inited + 56) = &type metadata for DataTypeDetailConfiguration.PromptsComponent;
  v60 = sub_1BA093E70();
  *(inited + 64) = v60;
  v12 = sub_1BA4A27B8();
  sub_1BA095418(0, &qword_1EBBEB208, MEMORY[0x1E69A30D0], MEMORY[0x1E69E6F90]);
  v63 = v13;
  v64 = *(v4 + 72);
  v14 = *(v4 + 80);
  v54 = (v14 + 32) & ~v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v67;
  v11(v15 + ((v14 + 32) & ~v14), v6, v3);
  v53 = v12;
  v16 = sub_1BA4A2618();

  sub_1BA4A2118();
  v17 = sub_1BA4A2628();

  sub_1B9F109F8();
  v58 = v18;
  v19 = swift_allocObject();
  v57 = xmmword_1BA4B7510;
  *(v19 + 16) = xmmword_1BA4B7510;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  v56 = sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v20 = v16;
  v21 = v17;
  v22 = sub_1BA4A6AE8();

  v55 = objc_opt_self();
  v23 = [v55 andPredicateWithSubpredicates_];

  v24 = v51;
  v25 = *(v51 + 8);
  v65 = v51 + 8;
  v66 = v25;
  v26 = v50;
  v25(v6, v50);
  *(inited + 32) = v23;
  *(inited + 96) = &type metadata for DataTypeDetailConfiguration.ContributingFactorsComponent;
  *(inited + 104) = sub_1BA09547C();
  v27 = v62;
  v28 = v52;
  v52(v6, v62, v26);
  *(inited + 136) = &type metadata for DataTypeDetailConfiguration.DescriptionComponent;
  *(inited + 144) = sub_1BA094FB0();
  *(inited + 128) = 3;
  v49 = v14;
  v29 = swift_allocObject();
  v30 = *(v24 + 32);
  v48 = v6;
  v30(v29 + ((v14 + 16) & ~v14), v6, v26);
  *(inited + 112) = sub_1BA0954D0;
  *(inited + 120) = v29;
  v28(v6, v27, v26);
  v47 = v10;
  *(inited + 176) = &type metadata for DataTypeDetailConfiguration.ArticlesComponent;
  *(inited + 184) = sub_1BA09500C();
  v31 = swift_allocObject();
  *(inited + 152) = v31;
  v32 = v54;
  v33 = swift_allocObject();
  *(v33 + 16) = v67;
  v34 = v48;
  v35 = v26;
  v28((v33 + v32), v48, v26);
  v36 = sub_1BA4A2618();

  v66(v34, v26);
  *(v31 + 16) = v36;
  *(v31 + 24) = 1;
  *(v31 + 40) = 0;
  *(v31 + 48) = 0;
  *(v31 + 32) = 3;
  v28(v34, v62, v26);
  v37 = v60;
  *(inited + 216) = &type metadata for DataTypeDetailConfiguration.PromptsComponent;
  *(inited + 224) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = v67;
  v28((v38 + v32), v34, v26);
  v39 = sub_1BA4A2618();

  sub_1BA4A2108();
  v40 = sub_1BA4A2628();

  v41 = swift_allocObject();
  *(v41 + 16) = v57;
  *(v41 + 32) = v39;
  *(v41 + 40) = v40;
  v42 = v39;
  v43 = v40;
  v44 = sub_1BA4A6AE8();

  v45 = [v55 andPredicateWithSubpredicates_];

  v66(v34, v35);
  *(inited + 192) = v45;
  result = sub_1B9FE1E74(inited);
  *v61 = v68;
  return result;
}

unint64_t sub_1BA094F08()
{
  result = qword_1EDC64F00;
  if (!qword_1EDC64F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F00);
  }

  return result;
}

unint64_t sub_1BA094F5C()
{
  result = qword_1EDC64EE8;
  if (!qword_1EDC64EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EE8);
  }

  return result;
}

unint64_t sub_1BA094FB0()
{
  result = qword_1EDC64EE0;
  if (!qword_1EDC64EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EE0);
  }

  return result;
}

unint64_t sub_1BA09500C()
{
  result = qword_1EDC64EF0;
  if (!qword_1EDC64EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EF0);
  }

  return result;
}

unint64_t sub_1BA095060()
{
  result = qword_1EDC64F38;
  if (!qword_1EDC64F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F38);
  }

  return result;
}

unint64_t sub_1BA0950B4()
{
  result = qword_1EDC64EC0;
  if (!qword_1EDC64EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EC0);
  }

  return result;
}

unint64_t sub_1BA095108()
{
  result = qword_1EDC64F40;
  if (!qword_1EDC64F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F40);
  }

  return result;
}

unint64_t sub_1BA09515C()
{
  result = qword_1EDC64ED8;
  if (!qword_1EDC64ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64ED8);
  }

  return result;
}

unint64_t sub_1BA0951B0()
{
  result = qword_1EDC64EC8;
  if (!qword_1EDC64EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EC8);
  }

  return result;
}

unint64_t sub_1BA095204()
{
  result = qword_1EDC64EB8;
  if (!qword_1EDC64EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EB8);
  }

  return result;
}

unint64_t sub_1BA095258()
{
  result = qword_1EBBEB1F8;
  if (!qword_1EBBEB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB1F8);
  }

  return result;
}

uint64_t sub_1BA0952AC(uint64_t a1, uint64_t a2)
{
  sub_1B9F1B3E0(0, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA09533C(uint64_t a1)
{
  sub_1B9F1B3E0(0, &qword_1EDC66C78, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA0953C4()
{
  result = qword_1EBBEB200;
  if (!qword_1EBBEB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB200);
  }

  return result;
}

void sub_1BA095418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA09547C()
{
  result = qword_1EBBEB210;
  if (!qword_1EBBEB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB210);
  }

  return result;
}

uint64_t sub_1BA0954D0@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA4A1A48();

  return sub_1BA42B38C(a1);
}

unint64_t sub_1BA095560()
{
  result = qword_1EDC60ED0;
  if (!qword_1EDC60ED0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC60ED0);
  }

  return result;
}

uint64_t sub_1BA0955CC(uint64_t a1)
{
  sub_1BA095418(0, &qword_1EDC60EC8, sub_1BA095560, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA095658(uint64_t a1, uint64_t a2)
{
  sub_1B9F1B3E0(0, &qword_1EDC66C78, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1BA0956E8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1BA095704()
{
  result = sub_1BA4A6758();
  qword_1EDC5E458 = result;
  return result;
}

id static NSNotificationName.emergencyOnboardingCompleted.getter()
{
  if (qword_1EDC5E450 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC5E458;

  return v1;
}

double sub_1BA095798()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BA0957DC(double a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant;
  swift_beginAccess();
  *&v1[v3] = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong font];
    if (v6)
    {
      v7 = v6;
      [v6 _scaledValueForValue_];
      v9 = v8;

      [v1 setConstant_];
    }

    else
    {
      __break(1u);
    }
  }
}

void (*sub_1BA0958B0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA095938;
}

void sub_1BA095938(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong font];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      v8 = v3[3];
      [v6 _scaledValueForValue_];
      v10 = v9;

      [v8 setConstant_];
    }
  }

  free(v3);
}

void sub_1BA095B10(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA095B6C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_referenceLabel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA095C04;
}

void sub_1BA095C04(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_1BA095D78()
{
  [v0 constant];
  v2 = v1;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant;
  swift_beginAccess();
  *&v0[v3] = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v5 = Strong;
  v6 = [Strong font];
  if (v6)
  {
    v7 = v6;
    [v6 _scaledValueForValue_];
    v9 = v8;

    [v0 setConstant_];
LABEL_4:
    v10 = [objc_opt_self() defaultCenter];
    [v10 addObserver:v0 selector:sel_textSizeChanged name:*MEMORY[0x1E69DDC48] object:0];

    return;
  }

  __break(1u);
}

void sub_1BA095EAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong font];
    if (v3)
    {
      v4 = v3;
      v5 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant;
      swift_beginAccess();
      [v4 _scaledValueForValue_];
      v7 = v6;

      [v0 setConstant_];
    }

    else
    {
      __break(1u);
    }
  }
}

id ScaledLabelConstraint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScaledLabelConstraint.init()()
{
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScaledLabelConstraint();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ScaledLabelConstraint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScaledLabelConstraint();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UIViewController.resolve<A>(providerBlock:resolverBlock:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X8>)
{
  v66 = a4;
  v67 = a3;
  v68 = a6;
  v10 = sub_1BA4A7AA8();
  v76 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v62 = &v58 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v64 = &v58 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v58 - v28;
  v71 = sub_1B9F21ADC();
  v78 = v71;
  v77[0] = v6;
  v30 = v6;
  v72 = a1;
  v73 = a2;
  a1(v77);
  __swift_destroy_boxed_opaque_existential_1(v77);
  v74 = v20[6];
  v75 = v20 + 6;
  if (v74(v19, 1, a5) == 1)
  {
    v31 = v76 + 8;
    v70 = *(v76 + 8);
    v70(v19, v10);
    v59 = v30;
    v32 = sub_1BA096838();
    v33 = v32;
    v60 = v20;
    v76 = v31;
    if (v32 >> 62)
    {
      goto LABEL_17;
    }

    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      while (1)
      {
        v29 = 0;
        v69 = v33 & 0xC000000000000001;
        while (v69)
        {
          v35 = MEMORY[0x1BFAF2860](v29, v33);
          v20 = (v29 + 1);
          if (__OFADD__(v29, 1))
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }

LABEL_8:
          v78 = v71;
          v77[0] = v35;
          v19 = a5;
          v36 = v35;
          v72(v77);

          a5 = v19;
          __swift_destroy_boxed_opaque_existential_1(v77);
          if (v74(v16, 1, v19) != 1)
          {

            v41 = v60;
            v42 = v60[4];
            v43 = v64;
            v42(v64, v16, v19);
            v44 = v68;
            v42(v68, v43, v19);
            return (v41[7])(v44, 0, 1, v19);
          }

          v70(v16, v10);
          ++v29;
          if (v20 == v34)
          {
            goto LABEL_18;
          }
        }

        if (v29 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v34 = sub_1BA4A7CC8();
        if (!v34)
        {
          goto LABEL_18;
        }
      }

      v35 = *(v33 + 8 * v29 + 32);
      v20 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_18:

    v46 = v59;
    v47 = [v59 parentViewController];
    v49 = v67;
    v48 = v68;
    v50 = v60;
    if (v47)
    {
      v51 = v65;
      v52 = v47;
      v67();

      if (v74(v51, 1, a5) != 1)
      {
        v56 = v50[4];
        v57 = v62;
        v56(v62, v51, a5);
LABEL_27:
        v56(v48, v57, a5);
        v39 = v50[7];
        v40 = v48;
        return v39(v40, 0, 1, a5);
      }

      v70(v51, v10);
    }

    v53 = [v46 presentingViewController];
    if (!v53)
    {
      return (v50[7])(v48, 1, 1, a5);
    }

    v54 = v63;
    v55 = v53;
    v49();

    if (v74(v54, 1, a5) == 1)
    {
      v70(v54, v10);
      return (v50[7])(v48, 1, 1, a5);
    }

    v56 = v50[4];
    v57 = v61;
    v56(v61, v54, a5);
    goto LABEL_27;
  }

LABEL_14:
  v37 = v20[4];
  v37(v29, v19, a5);
  v38 = v68;
  v37(v68, v29, a5);
  v39 = v20[7];
  v40 = v38;
  return v39(v40, 0, 1, a5);
}

unint64_t sub_1BA096838()
{
  v1 = v0;
  v2 = [v0 navigationController];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v27 = v2;
  v3 = [v2 viewControllers];
  v4 = sub_1B9F21ADC();
  v5 = sub_1BA4A6B08();

  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  v7 = v5 >> 62;
  if (v5 >> 62)
  {
LABEL_45:
    v8 = sub_1BA4A7CC8();
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = v5 & 0xC000000000000001;
  while (v8 != v9)
  {
    if (v10)
    {
      v11 = MEMORY[0x1BFAF2860](v9, v5);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v11 = *(v5 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = sub_1BA4A7798();

    if (v13)
    {
      v8 = v9;
      break;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_44;
    }
  }

  if (v7)
  {
    if (v5 < 0)
    {
      v1 = v5;
    }

    else
    {
      v1 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1BA4A7CC8() < 0)
    {
      goto LABEL_47;
    }

    v16 = sub_1BA4A7CC8();
  }

  else
  {
    v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 < v8)
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v10)
  {

    if (v8)
    {
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        sub_1BA4A7E08();
        v17 = v18;
      }

      while (v8 != v18);
    }
  }

  else
  {
  }

  if (v7)
  {
    v6 = sub_1BA4A8058();
    v1 = v19;
    v4 = v20;
    v8 = v21;

    if (v8)
    {
      goto LABEL_35;
    }

LABEL_34:
    sub_1BA2A11C0(v6, v1, v4, v8);
    v23 = v22;
LABEL_41:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v4 = 0;
  v1 = v6 + 32;
  v8 = (2 * v8) | 1;
  if ((v8 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_35:
  sub_1BA4A8368();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(v8 >> 1, v4))
  {
    goto LABEL_48;
  }

  if (v25 != (v8 >> 1) - v4)
  {
LABEL_49:
    swift_unknownObjectRelease_n();
    goto LABEL_34;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v23)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

LABEL_42:
  v26 = sub_1BA3265F4(v23);

  return v26;
}

char *UIViewController.resolutionDebugDescription.getter()
{
  v1 = v0;
  swift_getObjectType();
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000001FLL, 0x80000001BA4E76A0);
  swift_getMetatypeMetadata();
  v2 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v2);

  MEMORY[0x1BFAF1350](0x7461676976614E0ALL, 0xED0000203A6E6F69);
  v3 = sub_1BA096838();
  v4 = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v12 = sub_1BA096F44(0, &qword_1EDC5E4C0, sub_1B9F21ADC);
    v13 = MEMORY[0x1BFAF1560](v8, v12);
    v15 = v14;

    MEMORY[0x1BFAF1350](v13, v15);

    MEMORY[0x1BFAF1350](0x3A746E657261500ALL, 0xE900000000000020);
    v16 = [v1 parentViewController];
    sub_1BA096EEC();
    v17 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v17);

    MEMORY[0x1BFAF1350](0x203A65707974202CLL, 0xE800000000000000);

    sub_1BA096F44(0, &unk_1EDC5E4C8, sub_1BA096EEC);
    v18 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v18);

    MEMORY[0x1BFAF1350](0x746E65736572500ALL, 0xED0000203A676E69);
    v19 = [v1 presentingViewController];
    v20 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v20);

    MEMORY[0x1BFAF1350](0x203A65707974202CLL, 0xE800000000000000);

    v21 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v21);

    return 0;
  }

  v5 = sub_1BA4A7CC8();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1BA066F90(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v22;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFAF2860](v7, v4);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRelease();
      }

      else
      {
        ObjectType = swift_getObjectType();
      }

      v11 = *(v22 + 16);
      v10 = *(v22 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1BA066F90((v10 > 1), v11 + 1, 1);
      }

      ++v7;
      *(v22 + 16) = v11 + 1;
      *(v22 + 8 * v11 + 32) = ObjectType;
    }

    while (v5 != v7);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1BA096EEC()
{
  if (!qword_1EDC5E4D8)
  {
    sub_1B9F21ADC();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E4D8);
    }
  }
}

uint64_t sub_1BA096F44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t PlatformCellHostingConfiguration.delegate.setter(uint64_t a1, uint64_t a2)
{
  sub_1B9F7CE88(a1, a2);

  return swift_unknownObjectRelease();
}

void (*PlatformCellHostingConfiguration.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1BA0970B4;
}

void sub_1BA0970B4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlatformCellHostingConfiguration.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t PlatformCellHostingConfiguration.makeBackgroundConfiguration(cellState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BA4A4168();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t PlatformCellHostingConfiguration.__deallocating_deinit()
{
  sub_1B9FAB600(v0 + 16);

  return swift_deallocClassInstance();
}

void (*sub_1BA097250(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = PlatformCellHostingConfiguration.delegate.modify(v2);
  return sub_1B9FCDD98;
}

uint64_t sub_1BA097308(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void CollectionViewHeaderItem.init(text:makeConfiguration:respectsSuperviewXLayoutMargins:iconConfig:accessories:automationIdentifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v30 = a6[2];
  v31 = a6[3];
  v32 = *(a6 + 64);
  v28 = *a6;
  v29 = a6[1];
  type metadata accessor for CollectionViewHeaderCell();
  sub_1BA09A120(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
  v18 = sub_1BA4A6808();
  *(a9 + 72) = v29;
  *(a9 + 88) = v30;
  *(a9 + 104) = v31;
  *a9 = v18;
  *(a9 + 8) = v19;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 120) = v32;
  *(a9 + 56) = v28;
  *(a9 + 128) = a7;
  if (a10)
  {

    v20 = a10;
  }

  else
  {
    sub_1B9F252FC();

    a8 = sub_1BA4A7B58();
    v20 = v21;
  }

  sub_1B9F216C8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5480;
  *(v22 + 32) = a8;
  *(v22 + 40) = v20;

  v23 = sub_1BA4A6AE8();

  v24 = HKUIJoinStringsForAutomationIdentifier();

  if (v24)
  {

    v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v27 = v26;

    *(a9 + 136) = v25;
    *(a9 + 144) = v27;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static CollectionViewHeaderCell.defaultMaximumIconSize.setter(double a1, double a2)
{
  result = swift_beginAccess();
  *&xmmword_1EBBEB228 = a1;
  *(&xmmword_1EBBEB228 + 1) = a2;
  return result;
}

uint64_t static CollectionViewHeaderCell.defaultImageHorizontalPadding.setter(double a1)
{
  result = swift_beginAccess();
  qword_1EBBEB238 = *&a1;
  return result;
}

uint64_t static CollectionViewHeaderCell.leadingTrailingMargin.setter(double a1)
{
  result = swift_beginAccess();
  qword_1EBBEB240 = *&a1;
  return result;
}

uint64_t sub_1BA097994(uint64_t a1, void **a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1BA097B20(a1, v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v8, v4 + v5);
  v6 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x78))(v6);
  return sub_1BA09AD18(v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3, sub_1B9F0CDE8);
}

uint64_t sub_1BA097A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  return sub_1BA097B20(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t sub_1BA097B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA097B94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))(v4);
  return sub_1BA09AD18(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t (*sub_1BA097C5C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA097CC0;
}

uint64_t sub_1BA097CC0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x78))(result);
  }

  return result;
}

void *CollectionViewHeaderCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item];
  v10 = type metadata accessor for CollectionViewHeaderCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v15.receiver = v4;
  v15.super_class = v10;
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x70);
  v13 = v11;
  v12();

  return v13;
}

uint64_t sub_1BA097F40()
{
  sub_1B9F6621C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-1] - v1;
  v3 = sub_1BA4A4168();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = sub_1BA4A4428();
  v10[4] = MEMORY[0x1E69DC110];
  __swift_allocate_boxed_opaque_existential_1(v10);
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  MEMORY[0x1BFAF1EF0](v10);
  sub_1BA4A40F8();
  v7 = [objc_opt_self() clearColor];
  sub_1BA4A4118();
  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  MEMORY[0x1BFAF1F10](v2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BA098110()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A4428();
  v56 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_1BA097B20(v1 + v10, v57, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  if (v58)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBEB278);
    if (swift_dynamicCast())
    {
      if (*(&v64 + 1))
      {
        sub_1B9F1134C(&v63, v69);
        v11 = v70;
        v12 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v13 = (*(v12 + 16))(v11, v12);
        v13();

        v14 = v70;
        v15 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        (*(v15 + 8))(v14, v15);
        sub_1BA4A43B8();
        v16 = v70;
        v17 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        (*(v17 + 40))(v16, v17);
        sub_1BA4A75F8();
        v18 = v70;
        v19 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        (*(v19 + 32))(&v63, v18, v19);
        if (v63 != 1)
        {
          v20 = *(&v63 + 1);
          v21 = BYTE8(v64);
          v22 = v67;
          v54 = v66;
          v55 = v68;
          v23 = v70;
          v24 = v71;
          __swift_project_boxed_opaque_existential_1(v69, v70);
          (*(v24 + 32))(v57, v23, v24);
          v25 = v57[0];
          if (v57[0] != 1)
          {
            v26 = v57[0];
            sub_1BA09AD18(v57, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
            if (v25)
            {
              v53 = v26;
              sub_1BA4A43D8();
              v27 = v20;
              v28 = sub_1BA4A42D8();
              sub_1BA4A42B8();
              v28(v62, 0);
              if (v21)
              {
                swift_beginAccess();
              }

              sub_1BA4A42F8();
              if (v54)
              {
                swift_beginAccess();
              }

              v29 = sub_1BA4A42D8();
              sub_1BA4A4268();
              v29(v62, 0);
              if (v55)
              {
                swift_beginAccess();
                v22 = qword_1EBBEB238;
              }

              v30 = sub_1BA4A4328();
              *(v31 + 8) = v22;
              v30(v62, 0);

              sub_1BA09AD18(&v63, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
              goto LABEL_21;
            }
          }

          sub_1BA09AD18(&v63, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
        }

        swift_beginAccess();
        v40 = qword_1EBBEB240;
        v41 = sub_1BA4A4328();
        *(v42 + 8) = v40;
        v41(v57, 0);
LABEL_21:
        v43 = v70;
        v44 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        if (((*(v44 + 24))(v43, v44) & 1) == 0)
        {
          v45 = sub_1BA4A4388();
          *v46 &= ~1uLL;
          v45(v57, 0);
        }

        v58 = v7;
        v59 = MEMORY[0x1E69DC110];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
        v48 = v56;
        (*(v56 + 16))(boxed_opaque_existential_1, v9, v7);
        MEMORY[0x1BFAF1EF0](v57);
        sub_1B9F0A534(v69, v62);
        sub_1B9F0D950(0, qword_1EDC61778);
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(v60, v57);
          v49 = v58;
          v50 = v59;
          __swift_project_boxed_opaque_existential_1(v57, v58);
          (*(v50 + 8))(v49, v50);
          if (v51)
          {
            v52 = sub_1BA4A6758();
            [v1 setAccessibilityIdentifier_];
          }

          (*(v48 + 8))(v9, v7);
          __swift_destroy_boxed_opaque_existential_1(v57);
        }

        else
        {
          (*(v48 + 8))(v9, v7);
          v61 = 0;
          memset(v60, 0, sizeof(v60));
          sub_1BA09AD18(v60, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0CDE8);
        }

        return __swift_destroy_boxed_opaque_existential_1(v69);
      }
    }

    else
    {
      v65 = 0;
      v63 = 0u;
      v64 = 0u;
    }
  }

  else
  {
    sub_1BA09AD18(v57, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    v63 = 0u;
    v64 = 0u;
    v65 = 0;
  }

  sub_1BA09AD18(&v63, &unk_1EBBEB270, &qword_1EBBEB278, &protocol descriptor for CollectionViewHeaderProviding, sub_1B9F0CDE8);
  sub_1BA4A3E48();
  v32 = sub_1BA4A3E88();
  v33 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v57[0] = v35;
    *v34 = 136446210;
    *&v63 = ObjectType;
    swift_getMetatypeMetadata();
    v36 = sub_1BA4A6808();
    v38 = sub_1B9F0B82C(v36, v37, v57);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1B9F07000, v32, v33, "[%{public}s] item is not an CollectionViewHeaderItem", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1BFAF43A0](v35, -1, -1);
    MEMORY[0x1BFAF43A0](v34, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1BA098A44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];
  }
}

uint64_t (*sub_1BA098B08(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA09AE28;
}

uint64_t sub_1BA098B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  return sub_1BA097B20(v3 + v4, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t sub_1BA098BF4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))(v5);
  return sub_1BA09AD18(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t (*sub_1BA098CC0(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1BA098D28;
}

void sub_1BA098D2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *v2;
    v4 = sub_1BA4A6758();
    [v3 setAccessibilityIdentifier_];
  }
}

uint64_t CollectionViewHeaderItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CollectionViewHeaderItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CollectionViewHeaderItem.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CollectionViewHeaderItem.makeConfiguration.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CollectionViewHeaderItem.iconConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 104);
  v9 = *(v1 + 88);
  v10 = v3;
  v11 = *(v1 + 120);
  v4 = v11;
  v8[0] = *(v1 + 56);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1BA097B20(v8, v7, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
}

uint64_t CollectionViewHeaderItem.accessories.setter(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

uint64_t CollectionViewHeaderItem.baseIdentifier.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t CollectionViewHeaderItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t sub_1BA09903C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1BA099074@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 104);
  v9 = *(v1 + 88);
  v10 = v3;
  v11 = *(v1 + 120);
  v4 = v11;
  v8[0] = *(v1 + 56);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1BA097B20(v8, v7, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
}

uint64_t sub_1BA099108()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t sub_1BA099138(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t sub_1BA0991E4(uint64_t a1)
{
  v2 = sub_1BA09ADCC();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t CollectionViewHeaderItem.IconConfiguration.init(icon:tintColor:imageToTextPadding:maximumIconSize:imageLeadingPadding:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  return result;
}

uint64_t static CollectionViewHeaderWithLinkCell.textToSecondaryTextHorizontalPadding.setter(double a1)
{
  result = swift_beginAccess();
  qword_1EBBEB248 = *&a1;
  return result;
}

void sub_1BA09934C()
{
  sub_1BA097F40();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_linkWasTapped];
  [v0 addGestureRecognizer_];
}

uint64_t sub_1BA0993C8()
{
  v1 = v0;
  sub_1B9F6621C(0, &qword_1EBBEA748, MEMORY[0x1E69DC118]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30[-v3];
  v5 = sub_1BA4A4428();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA098110();
  v9 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_1BA097B20(&v1[v9], v51, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  if (!v52)
  {
    return sub_1BA09AD18(v51, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v34[9] = v47;
  v35 = v48;
  v36 = v49;
  v37 = v50;
  v34[5] = v43;
  v34[6] = v44;
  v34[7] = v45;
  v34[8] = v46;
  v34[3] = v41;
  v34[4] = v42;
  v34[1] = v39;
  v34[2] = v40;
  v34[0] = v38;
  MEMORY[0x1BFAF1EE0](v31);
  if (!v32)
  {
    sub_1BA09AC70(v34);
    sub_1BA09AD18(v31, &qword_1EBBEA750, &unk_1EDC5F8B0, MEMORY[0x1E69DC068], sub_1B9F0CDE8);
    (*(v6 + 56))(v4, 1, 1, v5);
    return sub_1BA09ACA0(v4);
  }

  sub_1B9F0D950(0, &unk_1EDC5F8B0);
  v11 = swift_dynamicCast();
  (*(v6 + 56))(v4, v11 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1BA09AC70(v34);
    return sub_1BA09ACA0(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_1BA4A4188();

  sub_1BA4A41A8();
  v12 = [objc_opt_self() preferredFontForTextStyle_];
  v13 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v13(v31, 0);
  v14 = BYTE8(v35);
  v15 = objc_opt_self();
  if (v14 == 1)
  {
    v16 = [v15 systemBlueColor];
    v17 = sub_1BA4A4318();
    sub_1BA4A41F8();
    v17(v31, 0);
    v18 = *(&v36 + 1);
    v19 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink];
    v20 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink];
    *v19 = v36;
    *(v19 + 1) = v18;

    v21 = v20;
  }

  else
  {
    v22 = [v15 hk_appInteractionDisabledColor];
    v23 = sub_1BA4A4318();
    sub_1BA4A41F8();
    v23(v31, 0);
    v24 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink];
    v21 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink];
    *v24 = 0;
    *(v24 + 1) = 0;
  }

  sub_1B9F0E310(v21);
  swift_beginAccess();
  sub_1BA4A4398();
  swift_beginAccess();
  v25 = qword_1EBBEB240;
  v26 = sub_1BA4A4328();
  *(v27 + 24) = v25;
  v26(v31, 0);
  v32 = v5;
  v33 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
  MEMORY[0x1BFAF1EF0](v31);
  if (*(&v37 + 1))
  {
    v29 = sub_1BA4A6758();
    [v1 setAccessibilityIdentifier_];
  }

  sub_1BA09AC70(v34);
  return (*(v6 + 8))(v8, v5);
}

id CollectionViewHeaderWithLinkCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink];
  v10 = type metadata accessor for CollectionViewHeaderWithLinkCell();
  *v9 = 0;
  *(v9 + 1) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1BA099C1C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t CollectionViewHeaderWithLinkItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CollectionViewHeaderWithLinkItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CollectionViewHeaderWithLinkItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CollectionViewHeaderWithLinkItem.text.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CollectionViewHeaderWithLinkItem.makeConfiguration.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CollectionViewHeaderWithLinkItem.iconConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v9 = *(v1 + 104);
  v10 = v3;
  v11 = *(v1 + 136);
  v4 = v11;
  v8[0] = *(v1 + 72);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1BA097B20(v8, v7, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
}

uint64_t CollectionViewHeaderWithLinkItem.linkText.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t CollectionViewHeaderWithLinkItem.didTapLink.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t CollectionViewHeaderWithLinkItem.baseIdentifier.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t CollectionViewHeaderWithLinkItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return result;
}

double CollectionViewHeaderWithLinkItem.init(text:makeConfiguration:respectsSuperviewXLayoutMargins:iconConfig:accessories:linkText:linkEnabled:uniqueIdentifier:didTapLink:automationIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = a13;
  v35 = a6[3];
  v36 = *(a6 + 64);
  v33 = a6[1];
  v34 = a6[2];
  v32 = *a6;
  type metadata accessor for CollectionViewHeaderWithLinkCell();
  sub_1BA09A120(0, &qword_1EBBE9DC0, type metadata accessor for CollectionViewHeaderWithLinkCell);
  v22 = sub_1BA4A6808();
  v24 = v23;
  *&v31[23] = v33;
  *&v31[39] = v34;
  *&v31[55] = v35;
  v31[71] = v36;
  *&v31[7] = v32;
  if (!a13)
  {

    sub_1BA4A7DF8();

    MEMORY[0x1BFAF1350](a1, a2);

    MEMORY[0x1BFAF1350](95, 0xE100000000000000);
    MEMORY[0x1BFAF1350](a8, a10);

    a12 = 0xD000000000000013;
    v21 = 0x80000001BA4E76C0;
  }

  *(a9 + 81) = *&v31[16];
  result = *&v31[32];
  *(a9 + 97) = *&v31[32];
  *(a9 + 113) = *&v31[48];
  *a9 = v22;
  *(a9 + 8) = v24;
  *(a9 + 16) = a12;
  *(a9 + 24) = v21;
  *(a9 + 32) = a1;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5 & 1;
  *(a9 + 129) = *&v31[64];
  *(a9 + 65) = *v31;
  *(a9 + 144) = a7;
  *(a9 + 152) = a8;
  *(a9 + 160) = a10;
  *(a9 + 168) = a11 & 1;
  *(a9 + 176) = a14;
  *(a9 + 184) = a15;
  *(a9 + 192) = a16;
  *(a9 + 200) = a17;
  return result;
}

uint64_t sub_1BA09A120(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  result = *a2;
  if (!*a2)
  {
    a3();
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA09A168()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1BA09A1A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v9 = *(v1 + 104);
  v10 = v3;
  v11 = *(v1 + 136);
  v4 = v11;
  v8[0] = *(v1 + 72);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1BA097B20(v8, v7, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
}

uint64_t sub_1BA09A234()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t sub_1BA09A264(uint64_t a1, uint64_t a2)
{

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return result;
}

uint64_t sub_1BA09A2BC(uint64_t a1)
{
  v2 = sub_1BA09AD78();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void static CollectionViewHeaderItem.forSummarySharingSelection(text:iconConfig:)(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[3];
  v25 = a3[2];
  v26 = v7;
  v27 = *(a3 + 64);
  v8 = a3[1];
  v23 = *a3;
  v24 = v8;
  type metadata accessor for CollectionViewHeaderCell();
  sub_1BA097B20(&v23, v22, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
  sub_1BA09A120(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
  *a4 = sub_1BA4A6808();
  *(a4 + 8) = v9;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  v10 = v23;
  *(a4 + 72) = v24;
  v11 = v26;
  *(a4 + 88) = v25;
  *(a4 + 104) = v11;
  *(a4 + 32) = sub_1BA09AE24;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 120) = v27;
  *(a4 + 56) = v10;
  *(a4 + 128) = 0;
  v22[0] = a1;
  v22[1] = a2;
  sub_1B9F252FC();

  v12 = MEMORY[0x1E69E6158];
  v13 = sub_1BA4A7B58();
  v15 = v14;
  sub_1B9F216C8(0, &qword_1EDC6E330, v12, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5480;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;

  v17 = sub_1BA4A6AE8();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  if (v18)
  {

    v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v21 = v20;

    *(a4 + 136) = v19;
    *(a4 + 144) = v21;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static CollectionViewHeaderWithLinkItem.forSummarySharingSelection(text:iconConfig:linkText:linkEnabled:uniqueIdentifier:didTapLink:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *a3;
  v34 = a3[1];
  v18 = a3[3];
  v35 = a3[2];
  v36 = v18;
  v37 = *(a3 + 64);
  v33 = v17;
  v31 = type metadata accessor for CollectionViewHeaderWithLinkCell();
  sub_1BA097B20(&v33, &v29, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
  sub_1BA09A120(0, &qword_1EBBE9DC0, type metadata accessor for CollectionViewHeaderWithLinkCell);
  v19 = sub_1BA4A6808();
  v21 = v20;
  *&v32[23] = v34;
  *&v32[39] = v35;
  *&v32[55] = v36;
  v32[71] = v37;
  *&v32[7] = v33;
  if (a8)
  {

    v22 = a8;
    v23 = a1;
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;

    sub_1BA4A7DF8();

    v29 = 0xD000000000000013;
    v30 = 0x80000001BA4E76C0;
    v23 = a1;
    MEMORY[0x1BFAF1350](a1, a2);
    MEMORY[0x1BFAF1350](95, 0xE100000000000000);
    MEMORY[0x1BFAF1350](a4, a5);
    a7 = v29;
    v22 = v30;
  }

  *a9 = v19;
  *(a9 + 8) = v21;
  *(a9 + 16) = a7;
  *(a9 + 24) = v22;
  *(a9 + 32) = v23;
  *(a9 + 40) = a2;
  v24 = *v32;
  *(a9 + 81) = *&v32[16];
  v25 = *&v32[48];
  *(a9 + 97) = *&v32[32];
  *(a9 + 113) = v25;
  *(a9 + 48) = sub_1BA09AE24;
  *(a9 + 56) = 0;
  *(a9 + 64) = 1;
  *(a9 + 129) = *&v32[64];
  *(a9 + 65) = v24;
  *(a9 + 144) = 0;
  *(a9 + 152) = a4;
  *(a9 + 160) = a5;
  *(a9 + 168) = a6 & 1;
  *(a9 + 176) = a10;
  *(a9 + 184) = a11;
  *(a9 + 192) = 0;
  *(a9 + 200) = 0;
}

unint64_t sub_1BA09A7A4()
{
  result = qword_1EBBEB268;
  if (!qword_1EBBEB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB268);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI24CollectionViewHeaderItemV17IconConfigurationVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1BA09A99C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1BA09A9E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BA09AA7C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BA09AAD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1BA09ABA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_1BA09ABEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA09ACA0(uint64_t a1)
{
  sub_1B9F6621C(0, &qword_1EBBEA748, MEMORY[0x1E69DC118]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA09AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1BA09AD78()
{
  result = qword_1EBBEB280;
  if (!qword_1EBBEB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB280);
  }

  return result;
}

unint64_t sub_1BA09ADCC()
{
  result = qword_1EBBEB288;
  if (!qword_1EBBEB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB288);
  }

  return result;
}

uint64_t sub_1BA09AE2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1BA066EC0(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_1BA066EC0((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t PrimarySecondaryDataSource.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(void *a1, uint64_t a2)
{
  sub_1B9F39CEC();
  sub_1B9F0D9AC(0, &qword_1EDC63A40);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v4 = *(&v10 + 1);
    v5 = v11;
    __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
    TraitCollectionChangeHandling.notifyIfChangedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(a1, a2, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_1B9F3BB6C(&v9);
  }

  sub_1B9F40328();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v6 = *(&v10 + 1);
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
    TraitCollectionChangeHandling.notifyIfChangedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(a1, a2, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    return sub_1B9F3BB6C(&v9);
  }
}

uint64_t _ConditionalDataSource.observedTraits.getter()
{
  sub_1B9F0D9AC(0, &qword_1EDC63A40);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    v0 = *(&v5 + 1);
    v1 = v6;
    __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
    v2 = (*(v1 + 8))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(&v4);
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    sub_1B9F3BB6C(&v4);
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t _ConditionalDataSource.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(uint64_t a1, uint64_t a2)
{
  sub_1BA2499F8();
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, &qword_1EDC63A40);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v4 = *(&v8 + 1);
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    (*(v5 + 16))(a1, a2, v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    return sub_1B9F3BB6C(&v7);
  }
}

uint64_t HideableDataSource<>.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B9F437D0();
  v8 = *(a3 + 16);
  v9 = *(v7 + 80);
  swift_unknownObjectRetain();
  v8(a1, a2, v9, a3);
  return swift_unknownObjectRelease();
}

uint64_t MappedDataSourceWithContext<>.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(*v3 + 472);
  swift_unknownObjectRetain();
  v7(a1, a2, v8, a3);
  return swift_unknownObjectRelease();
}

uint64_t DataSourceWrapper<>.observedTraits.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 32))();
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = v4(AssociatedTypeWitness, a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t DataSourceWrapper<>.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a4 + 32))(a3, a4);
  v8 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8(a1, a2, AssociatedTypeWitness, a5);
  return swift_unknownObjectRelease();
}

uint64_t sub_1BA09B760(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return DataSourceWrapper<>.observedTraits.getter(a1, WitnessTable, v3);
}

uint64_t sub_1BA09B7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return DataSourceWrapper<>.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BA09B830(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return DataSourceWrapper<>.observedTraits.getter(a1, WitnessTable, v3);
}

uint64_t sub_1BA09B88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return DataSourceWrapper<>.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BA09B900(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return DataSourceWrapper<>.observedTraits.getter(a1, WitnessTable, v3);
}

uint64_t sub_1BA09B95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return DataSourceWrapper<>.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BA09B9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA09BDD0();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10];
  v15 = a3 + *(type metadata accessor for SummarySharingProfileHeaderCell.Item() + 20);
  sub_1BA09BE4C();
  sub_1BA4A59B8();
  sub_1BA4A5B68();
  sub_1BA4A59A8();
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_1BA4A5BD8();
  v16[3] = v5;
  v16[4] = sub_1BA09BEF4();
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_1BA4A59A8();
  v12(v11, v5);
  return MEMORY[0x1BFAF1EF0](v16);
}

uint64_t *sub_1BA09BBAC@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = sub_1BA4A33C8();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  type metadata accessor for SummarySharingProfileHeaderView.ViewModel();
  swift_allocObject();
  result = sub_1BA31FFA0(v7);
  *a2 = result;
  return result;
}

id sub_1BA09BD78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingProfileHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA09BDD0()
{
  if (!qword_1EBBEB290)
  {
    sub_1BA09BE4C();
    v0 = sub_1BA4A59C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB290);
    }
  }
}

unint64_t sub_1BA09BE4C()
{
  result = qword_1EBBEB298;
  if (!qword_1EBBEB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB298);
  }

  return result;
}

uint64_t type metadata accessor for SummarySharingProfileHeaderCell.Item()
{
  result = qword_1EBBEB2A8;
  if (!qword_1EBBEB2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA09BEF4()
{
  result = qword_1EBBEB2A0;
  if (!qword_1EBBEB2A0)
  {
    sub_1BA09BDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB2A0);
  }

  return result;
}

uint64_t sub_1BA09BF74()
{
  result = sub_1BA4A33C8();
  if (v1 <= 0x3F)
  {
    result = sub_1BA4A3428();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SummaryAlertDataModel.hkType.getter()
{
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920);

  return sub_1BA4A65C8();
}

uint64_t SummaryAlertDataModel.hkType.setter()
{
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920);

  return sub_1BA4A65D8();
}

void (*SummaryAlertDataModel.hkType.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920);
  *(v3 + 32) = sub_1BA4A65B8();
  return sub_1BA09E1C0;
}

uint64_t SummaryAlertDataModel.alertTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for SummaryAlertDataModel() + 20));

  return v1;
}

uint64_t type metadata accessor for SummaryAlertDataModel()
{
  result = qword_1EDC67318;
  if (!qword_1EDC67318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryAlertDataModel.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummaryAlertDataModel() + 24);
  v4 = sub_1BA4A1728();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummaryAlertDataModel.alertDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummaryAlertDataModel() + 28);
  v4 = sub_1BA4A1728();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummaryAlertDataModel.imageRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummaryAlertDataModel() + 32);
  v4 = sub_1BA4A2BF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummaryAlertDataModel.imageAccentColor.getter()
{
  type metadata accessor for SummaryAlertDataModel();
  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380);
  return sub_1BA4A65C8();
}

void sub_1BA09C38C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B9F0ADF8(255, a3);
    v4 = sub_1BA4A65E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA09C3E4(void **a1)
{
  v1 = *a1;
  type metadata accessor for SummaryAlertDataModel();
  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380);
  v2 = v1;
  return sub_1BA4A65D8();
}

uint64_t SummaryAlertDataModel.imageAccentColor.setter()
{
  type metadata accessor for SummaryAlertDataModel();
  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380);
  return sub_1BA4A65D8();
}

void (*SummaryAlertDataModel.imageAccentColor.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SummaryAlertDataModel();
  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380);
  *(v3 + 32) = sub_1BA4A65B8();
  return sub_1BA09C55C;
}

uint64_t SummaryAlertDataModel.headerText.getter()
{
  v1 = *(v0 + *(type metadata accessor for SummaryAlertDataModel() + 40));

  return v1;
}

uint64_t SummaryAlertDataModel.bodyMessage.getter()
{
  v1 = *(v0 + *(type metadata accessor for SummaryAlertDataModel() + 44));

  return v1;
}

uint64_t SummaryAlertDataModel.init(hkType:alertTitle:startDate:alertDate:imageRepresentation:imageAccentColor:bodyMessage:headerText:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1B9F0ADF8(0, &qword_1EDC6E920);
  v17 = a1;
  sub_1BA4A65F8();
  v18 = type metadata accessor for SummaryAlertDataModel();
  v19 = (a8 + v18[5]);
  *v19 = a2;
  v19[1] = a3;
  v20 = v18[6];
  v21 = sub_1BA4A1728();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v23(a8 + v20, a4, v21);
  v23(a8 + v18[7], a5, v21);
  v24 = v18[8];
  v25 = sub_1BA4A2BF8();
  v26 = *(v25 - 8);
  (*(v26 + 16))(a8 + v24, a6, v25);
  sub_1B9F0ADF8(0, &qword_1EDC6E380);
  sub_1BA4A65F8();

  (*(v26 + 8))(a6, v25);
  v27 = *(v22 + 8);
  v27(a5, v21);
  result = (v27)(a4, v21);
  v29 = (a8 + v18[10]);
  *v29 = a10;
  v29[1] = a11;
  v30 = (a8 + v18[11]);
  *v30 = a7;
  v30[1] = a9;
  return result;
}

uint64_t SummaryAlertDataModel.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  type metadata accessor for SummaryAlertDataModel();
  sub_1BA09DA54(&qword_1EBBEB2B8, type metadata accessor for SummaryAlertDataModel);
  sub_1BA4A0E98();

  return sub_1B9F2BB4C(a1, a2);
}

uint64_t SummaryAlertDataModel.encode()()
{
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  type metadata accessor for SummaryAlertDataModel();
  sub_1BA09DA54(&qword_1EDC67328, type metadata accessor for SummaryAlertDataModel);
  v0 = sub_1BA4A0EC8();

  return v0;
}

unint64_t sub_1BA09C9A4()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6554726564616568;
    if (v1 != 6)
    {
      v5 = 0x7373654D79646F62;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x657079546B68;
    v3 = 0x7461447472617473;
    if (v1 != 2)
    {
      v3 = 0x7461447472656C61;
    }

    if (*v0)
    {
      v2 = 0x7469547472656C61;
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
}

uint64_t sub_1BA09CAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA09DF10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA09CAEC(uint64_t a1)
{
  v2 = sub_1BA09CF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA09CB28(uint64_t a1)
{
  v2 = sub_1BA09CF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummaryAlertDataModel.encode(to:)(void *a1)
{
  sub_1BA09D994(0, &qword_1EDC5DD90, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA09CF34();
  sub_1BA4A8548();
  v17 = 0;
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920);
  sub_1BA09D9F8(&qword_1EDC5E8C8);
  sub_1BA4A8288();
  if (!v1)
  {
    type metadata accessor for SummaryAlertDataModel();
    v16 = 1;
    sub_1BA4A8248();
    v15 = 2;
    sub_1BA4A1728();
    sub_1BA09DA54(&qword_1EDC6AE80, MEMORY[0x1E6969530]);
    sub_1BA4A8288();
    v14 = 3;
    sub_1BA4A8288();
    v13 = 4;
    sub_1BA4A2BF8();
    sub_1BA09DA54(&qword_1EDC6AD68, MEMORY[0x1E69A32A0]);
    sub_1BA4A8288();
    v12 = 5;
    sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380);
    sub_1BA09CF88(&unk_1EDC5E8A0);
    sub_1BA4A8288();
    v11 = 6;
    sub_1BA4A8208();
    v10 = 7;
    sub_1BA4A8208();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BA09CF34()
{
  result = qword_1EDC67340;
  if (!qword_1EDC67340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67340);
  }

  return result;
}

uint64_t sub_1BA09CF88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BA09C38C(255, &qword_1EDC5E898, &qword_1EDC6E380);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SummaryAlertDataModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380);
  v58 = v3;
  v56 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v53 = v49 - v4;
  v59 = sub_1BA4A2BF8();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v54 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A1728();
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v55 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v49 - v10;
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920);
  v13 = v12;
  v62 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v63 = v49 - v14;
  sub_1BA09D994(0, &qword_1EBBEB2C0, MEMORY[0x1E69E6F48]);
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v49 - v16;
  v18 = type metadata accessor for SummaryAlertDataModel();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA09CF34();
  v66 = v17;
  v21 = v67;
  sub_1BA4A8528();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v67 = v18;
  v22 = v20;
  v75 = 0;
  sub_1BA09D9F8(&qword_1EBBEB2C8);
  v23 = v63;
  sub_1BA4A81C8();
  (*(v62 + 32))(v22, v23, v13);
  v74 = 1;
  v24 = sub_1BA4A8188();
  v51 = v13;
  v25 = v67;
  v26 = &v22[*(v67 + 20)];
  *v26 = v24;
  v26[1] = v27;
  v73 = 2;
  sub_1BA09DA54(&qword_1EDC6AE70, MEMORY[0x1E6969530]);
  v28 = v11;
  v63 = v22;
  v29 = v60;
  v49[1] = 0;
  sub_1BA4A81C8();
  v50 = a1;
  v30 = v25;
  v31 = *(v61 + 32);
  v31(&v63[v25[6]], v28, v29);
  v72 = 3;
  v32 = v55;
  sub_1BA4A81C8();
  v33 = v29;
  v34 = v63;
  v31(&v63[v25[7]], v32, v33);
  v71 = 4;
  sub_1BA09DA54(&qword_1EDC6AD58, MEMORY[0x1E69A32A0]);
  v35 = v54;
  v36 = v59;
  sub_1BA4A81C8();
  (*(v57 + 32))(v34 + v30[8], v35, v36);
  v70 = 5;
  sub_1BA09CF88(&qword_1EBBEB2D0);
  v37 = v53;
  v38 = v58;
  sub_1BA4A81C8();
  v39 = v64;
  (*(v56 + 32))(v34 + v30[9], v37, v38);
  v69 = 6;
  v40 = v65;
  v41 = sub_1BA4A8138();
  v42 = (v34 + v30[10]);
  *v42 = v41;
  v42[1] = v43;
  v68 = 7;
  v44 = sub_1BA4A8138();
  v46 = v45;
  (*(v39 + 8))(v66, v40);
  v47 = (v34 + v30[11]);
  *v47 = v44;
  v47[1] = v46;
  sub_1BA09DA9C(v34, v52);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_1BA09DB00(v34);
}

void sub_1BA09D994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA09CF34();
    v7 = a3(a1, &type metadata for SummaryAlertDataModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA09D9F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BA09C38C(255, &qword_1EDC5E8C0, &qword_1EDC6E920);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA09DA54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA09DA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryAlertDataModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA09DB00(uint64_t a1)
{
  v2 = type metadata accessor for SummaryAlertDataModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA09DBB4()
{
  sub_1BA09C38C(319, &qword_1EDC5E8C0, &qword_1EDC6E920);
  if (v0 <= 0x3F)
  {
    sub_1BA4A1728();
    if (v1 <= 0x3F)
    {
      sub_1BA4A2BF8();
      if (v2 <= 0x3F)
      {
        sub_1BA09C38C(319, &qword_1EDC5E898, &qword_1EDC6E380);
        if (v3 <= 0x3F)
        {
          sub_1B9F2F388();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SummaryAlertDataModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SummaryAlertDataModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BA09DE0C()
{
  result = qword_1EBBEB2D8;
  if (!qword_1EBBEB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB2D8);
  }

  return result;
}

unint64_t sub_1BA09DE64()
{
  result = qword_1EDC67330;
  if (!qword_1EDC67330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67330);
  }

  return result;
}

unint64_t sub_1BA09DEBC()
{
  result = qword_1EDC67338;
  if (!qword_1EDC67338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67338);
  }

  return result;
}

uint64_t sub_1BA09DF10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546B68 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469547472656C61 && a2 == 0xEA0000000000656CLL || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472656C61 && a2 == 0xE900000000000065 || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1630 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4E77F0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6554726564616568 && a2 == 0xEA00000000007478 || (sub_1BA4A8338() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7373654D79646F62 && a2 == 0xEB00000000656761)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t GridLayoutEngine.WidthConfiguration.init(defaultWidth:widthsPerWidthDesignation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a3 <= 0.0)
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
    *a2 = a3;
    *(a2 + 8) = result;
  }

  return result;
}

unint64_t sub_1BA09E24C()
{
  result = sub_1B9FDBA04(&unk_1F37FC138);
  qword_1EBBEB2E0 = 1;
  *algn_1EBBEB2E8 = result;
  return result;
}

HealthExperienceUI::GridLayoutEngine::AccessibilityConfiguration __swiftcall GridLayoutEngine.AccessibilityConfiguration.init(defaultRowItems:rowItemsPerWidth:)(Swift::Int defaultRowItems, Swift::OpaquePointer rowItemsPerWidth)
{
  v2->_rawValue = (defaultRowItems & ~(defaultRowItems >> 63));
  v2[1]._rawValue = rowItemsPerWidth._rawValue;
  result.rowItemsPerWidth = rowItemsPerWidth;
  result.defaultRowItems = defaultRowItems;
  return result;
}

uint64_t static GridLayoutEngine.AccessibilityConfiguration.defaultConfig.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBBE82C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EBBEB2E8;
  *a1 = qword_1EBBEB2E0;
  a1[1] = v2;
}

uint64_t GridLayoutEngine.AccessibilityConfiguration.rowItems(for:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v2 + 16))
  {
    v3 = sub_1B9F82C68();
    if (v4)
    {
      return *(*(v2 + 56) + 8 * v3);
    }
  }

  return v1;
}

uint64_t GridLayoutEngine.minWidthsOfItem.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t GridLayoutEngine.maxWidthsOfItem.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t GridLayoutEngine.init(minWidthOfItem:maxWidthOfItem:estimatedHeight:interItemSpacingProvider:interSectionSpacing:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v16 = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
  if (a7 > 0.0)
  {
    v17 = v16;
    if (a2)
    {
      a1 = 0.0;
      result = 0;
LABEL_5:
      *a6 = a7;
      *(a6 + 8) = v17;
      *(a6 + 16) = a1;
      *(a6 + 24) = result;
      *(a6 + 32) = a8;
      *(a6 + 40) = a5;
      *(a6 + 48) = 0;
      *(a6 + 56) = 0;
      *(a6 + 64) = a3;
      *(a6 + 72) = a4;
      return result;
    }

    result = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
    if (a1 > 0.0)
    {
      goto LABEL_5;
    }
  }

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

__n128 GridLayoutEngine.init(minWidthsOfItem:maxWidthsOfItem:estimatedHeight:interItemSpacingProvider:interSectionSpacing:accessibilityRowItems:)@<Q0>(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = a1[1];
  *a7 = *a1;
  *(a7 + 8) = v8;
  *(a7 + 16) = *a2;
  *(a7 + 32) = a8;
  *(a7 + 64) = a3;
  *(a7 + 72) = a4;
  *(a7 + 40) = a5;
  result = *a6;
  *(a7 + 48) = *a6;
  return result;
}

uint64_t static GridLayoutEngine.standardMinimumWidth.setter(double a1)
{
  result = swift_beginAccess();
  qword_1EDC68DF0 = *&a1;
  return result;
}

uint64_t static GridLayoutEngine.smallCard.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = *&qword_1EDC68DF0;
  v3 = sub_1B9F58798(&unk_1F37FC1F8);
  if (v2 <= 0.0)
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
    v4 = v3;
    sub_1B9F5869C();
    result = sub_1BA4A7648();
    *a1 = v2;
    *(a1 + 8) = v4;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0x4049000000000000;
    *(a1 + 64) = sub_1B9F58BC4;
    *(a1 + 72) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = result;
  }

  return result;
}

uint64_t static GridLayoutEngine.maximumOfTwoItemsLayout.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = *&qword_1EDC68DF0;
  sub_1B9F5869C();
  v3 = sub_1BA4A7648();
  v4 = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
  if (v2 <= 0.0)
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
    v5 = v4;
    result = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
    *a1 = v2;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0x4082C00000000000;
    *(a1 + 24) = result;
    *(a1 + 32) = 0x4062C00000000000;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = v3;
    *(a1 + 64) = sub_1B9F58BC4;
    *(a1 + 72) = 0;
  }

  return result;
}

void sub_1BA09E7C8()
{
  if (!qword_1EDC5E460)
  {
    type metadata accessor for HKWidthDesignation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E460);
    }
  }
}

uint64_t sub_1BA09E830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BA09E878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PDFTable.Configuration.init(columnSpacings:rowSpacing:minimumRowHeight:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

uint64_t PDFTable.__allocating_init(_:configuration:pageContinuationRenderables:)(uint64_t (*a1)(void), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a1();
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  swift_allocObject();
  v11 = sub_1BA0A1410(v10, v13, a4, a5);
  sub_1B9F0E310(a4);

  return v11;
}

uint64_t PDFTable.__allocating_init(_:configuration:pageContinuationRenderables:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1BA0A1410(a1, a2, a3, a4);
  sub_1B9F0E310(a3);

  return v8;
}

uint64_t PDFTable.init(_:configuration:pageContinuationRenderables:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BA0A1410(a1, a2, a3, a4);
  sub_1B9F0E310(a3);

  return v5;
}

uint64_t sub_1BA09EA80@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return result;
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *v1 + 40 * v3;
  v1[1] = v3 + 1;
  v6 = v1[2];
  *&v9[0] = v6;
  result = sub_1B9F0A534(v5 + 32, v9 + 8);
  if (__OFADD__(v6, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v6 + 1;
  v8 = v9[1];
  *a1 = v9[0];
  a1[1] = v8;
  a1[2] = v9[2];
  return result;
}

void sub_1BA09EB20(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *v1 + 48 * v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  v8 = *(v4 + 56);
  v9 = *(v4 + 72);
  v1[1] = v2 + 1;
  v10 = v1[2];
  if (__OFADD__(v10, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v1[2] = v10 + 1;
  *a1 = v10;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
}

uint64_t PDFTable.render(context:document:)(objc_class *a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  if (v4 == 1)
  {
    v5 = sub_1BA09F214(a2);
  }

  else
  {
    v5 = sub_1BA09F420(a2);
  }

  v70 = v5;
  v6 = *(v2 + 16);
  v86 = 0;
  v87 = 0;
  v85 = v6;
  v65 = v6;

  sub_1BA09EA80(&v79);
  v83 = v80;
  v84 = v81;
  v82 = v79;
  if (v81)
  {
    v67 = v2;
    do
    {
      v66 = v82;
      sub_1B9F1134C((&v82 + 8), v76);
      v7 = v77;
      v8 = v78;
      __swift_project_boxed_opaque_existential_1(v76, v77);
      v9 = (*(v8 + 8))(v7, v8);
      sub_1BA09F568(v9, a2);
      v11 = v10;

      v12.super.super.isa = a1;
      sub_1BA09FD84(a2, v12, v11);
      v13 = v77;
      v14 = v78;
      __swift_project_boxed_opaque_existential_1(v76, v77);
      v15 = (*(v14 + 8))(v13, v14);
      v16 = *(v15 + 16);
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      result = swift_beginAccess();
      v18 = 0;
      v68 = v15 + 32;
      v69 = v15;
      while (1)
      {
        v32 = 0uLL;
        v33 = v16;
        v34 = 0uLL;
        v35 = 0uLL;
        if (v18 != v16)
        {
          if (v18 >= *(v69 + 16))
          {
            goto LABEL_26;
          }

          v33 = v18 + 1;
          *&v73 = v18;
          sub_1B9F0A534(v68 + 40 * v18, &v73 + 8);
          v32 = v73;
          v34 = v74;
          v35 = v75;
        }

        v79 = v32;
        v80 = v34;
        v81 = v35;
        if (!v35)
        {
          break;
        }

        v72 = v32;
        result = sub_1B9F1134C((&v79 + 8), &v73);
        if ((v72 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        if (v72 >= *(v70 + 16))
        {
          goto LABEL_25;
        }

        v36 = *(v70 + 32 + 8 * v72);
        type metadata accessor for PDFBuilder.Document();
        v37 = swift_allocObject();
        *(v37 + 104) = 1;
        *(v37 + 112) = 1;
        *(v37 + 120) = 0u;
        *(v37 + 136) = 0u;
        *(v37 + 152) = 256;
        *(v37 + 160) = 1;
        *(v37 + 168) = 0u;
        *(v37 + 184) = 0u;
        *(v37 + 200) = 257;
        v38 = *(a2 + 64);
        *(v37 + 48) = *(a2 + 48);
        *(v37 + 64) = v38;
        *(v37 + 80) = *(a2 + 80);
        v39 = *(a2 + 32);
        *(v37 + 16) = *(a2 + 16);
        *(v37 + 32) = v39;
        v40 = *(a2 + 201);
        swift_beginAccess();
        *(v37 + 201) = v40;
        *(v37 + 96) = v4;
        v41 = *(a2 + 216);
        *(v37 + 208) = *(a2 + 208);
        *(v37 + 216) = v41;
        *(v37 + 168) = PDFBuilder.Document.drawingContext.getter();
        *(v37 + 176) = v42;
        *(v37 + 184) = v43;
        *(v37 + 192) = v44;
        *(v37 + 200) = 0;
        *(v37 + 104) = *(a2 + 104);
        *(v37 + 120) = *(a2 + 120);
        v45 = *(a2 + 160);
        swift_beginAccess();
        *(v37 + 160) = v45;
        if (!v4)
        {
          v19 = PDFBuilder.Document.drawingContext.getter();
          v21 = v20;
          v23 = v22;
          v25 = v24;

          v88.origin.x = v19;
          v88.origin.y = v21;
          v88.size.width = v23;
          v88.size.height = v25;
          v26 = v36 + CGRectGetMinX(v88);
          v89.origin.x = v19;
          v89.origin.y = v21;
          v89.size.width = v23;
          v89.size.height = v25;
          v27 = CGRectGetMinY(v89) + 0.0;
          v90.origin.x = v19;
          v90.origin.y = v21;
          v90.size.width = v23;
          v90.size.height = v25;
          v28 = CGRectGetWidth(v90) - v36;
          v91.origin.x = v19;
          v91.origin.y = v21;
          v91.size.width = v23;
          v91.size.height = v25;
          Height = CGRectGetHeight(v91);
          *(v37 + 168) = v26;
          *(v37 + 176) = v27;
          *(v37 + 184) = v28;
          *(v37 + 192) = Height;
LABEL_9:
          *(v37 + 200) = 0;
          goto LABEL_10;
        }

        if (v72 < *(*(v67 + 24) + 16))
        {

          v47 = sub_1BA0A0BDC(v46, v37);

          v48 = *(&v74 + 1);
          v49 = v75;
          __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
          v92.origin.x = (*(v49 + 24))(v37, v48, v49);
          v50 = v36 + v47 - CGRectGetWidth(v92);
          PDFBuilder.Document.drawingContext.getter();
          *(v37 + 168) = v50;
          *(v37 + 176) = v51;
          goto LABEL_9;
        }

LABEL_10:
        v30 = *(&v74 + 1);
        v31 = v75;
        __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
        (*(v31 + 16))(a1, v37, v30, v31);

        result = __swift_destroy_boxed_opaque_existential_1(&v73);
        v18 = v33;
      }

      v93.origin.x = PDFBuilder.Document.drawingContext.getter();
      x = v93.origin.x;
      y = v93.origin.y;
      width = v93.size.width;
      v55 = v93.size.height;
      v56 = CGRectGetMinX(v93) + 0.0;
      v94.origin.x = x;
      v94.origin.y = y;
      v94.size.width = width;
      v94.size.height = v55;
      v57 = v11 + CGRectGetMinY(v94);
      v95.origin.x = x;
      v95.origin.y = y;
      v95.size.width = width;
      v95.size.height = v55;
      v58 = CGRectGetWidth(v95);
      v96.origin.x = x;
      v96.origin.y = y;
      v96.size.width = width;
      v96.size.height = v55;
      v59 = CGRectGetHeight(v96) - v11;
      *(a2 + 168) = v56;
      *(a2 + 176) = v57;
      *(a2 + 184) = v58;
      *(a2 + 192) = v59;
      *(a2 + 200) = 0;
      if (v66 < *(v65 + 16) - 1)
      {
        v60 = *(v67 + 56);
        v97.origin.x = v56;
        v97.origin.y = v57;
        v97.size.width = v58;
        v97.size.height = v59;
        v61 = CGRectGetMinX(v97) + 0.0;
        v98.origin.x = v56;
        v98.origin.y = v57;
        v98.size.width = v58;
        v98.size.height = v59;
        v62 = v60 + CGRectGetMinY(v98);
        v99.origin.x = v56;
        v99.origin.y = v57;
        v99.size.width = v58;
        v99.size.height = v59;
        v63 = CGRectGetWidth(v99);
        v100.origin.x = v56;
        v100.origin.y = v57;
        v100.size.width = v58;
        v100.size.height = v59;
        v64 = CGRectGetHeight(v100);
        *(a2 + 168) = v61;
        *(a2 + 176) = v62;
        *(a2 + 184) = v63;
        *(a2 + 192) = v64 - v60;
        *(a2 + 200) = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v76);
      sub_1BA09EA80(&v79);
      v83 = v80;
      v84 = v81;
      v82 = v79;
    }

    while (v81);
  }
}

char *sub_1BA09F214(uint64_t a1)
{
  v6 = v1;
  v7 = *(v1 + 24);
  if (!*(v7 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v24.origin.x = PDFBuilder.Document.drawingContext.getter();
  MaxX = CGRectGetMaxX(v24);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = MaxX;

  v13 = sub_1BA0A0BDC(v12, a1);

  v5 = v11 - v13;
  v2 = sub_1BA27FB08(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v10 = *(v2 + 3);
  v3 = v4 + 1;
  if (v4 >= v10 >> 1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    *(v2 + 2) = v3;
    *&v2[8 * v4 + 32] = v5;
    v3 = *(v7 + 16);

    if (v3 < 2)
    {
      break;
    }

    v4 = 0;
    v17 = v3 - 1;
    while (v17 != v4)
    {
      v18 = *(v6 + 48);
      if (v4 >= *(v18 + 16))
      {
        v19 = v5 + -10.0;
      }

      else
      {
        v19 = v5 - *(v18 + 8 * v4 + 32);
      }

      v21 = sub_1BA0A0BDC(v20, a1);

      v23 = *(v2 + 2);
      v22 = *(v2 + 3);
      v3 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v2 = sub_1BA27FB08((v22 > 1), v23 + 1, 1, v2);
      }

      ++v4;
      v5 = v19 - v21;
      *(v2 + 2) = v3;
      v10 = &v2[8 * v23];
      *(v10 + 32) = v5;
      if (v17 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v2 = sub_1BA27FB08((v10 > 1), v3, 1, v2);
  }

LABEL_5:

  v15 = *(v2 + 2);
  v14 = *(v2 + 3);
  if (v15 >= v14 >> 1)
  {
    v2 = sub_1BA27FB08((v14 > 1), v15 + 1, 1, v2);
  }

  *(v2 + 2) = v15 + 1;
  *&v2[8 * v15 + 32] = 0;
  return v2;
}

uint64_t sub_1BA09F420(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    v6 = 0.0;
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v2 + 16))
    {
      v8 = *(v2 + 32 + 8 * v5);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1BA27FB08(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1BA27FB08((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v6;
      v11 = sub_1BA0A0BDC(v8, v4);

      v12 = *(v1 + 48);
      v13 = 10.0;
      if (v5 < *(v12 + 16))
      {
        v13 = *(v12 + 8 * v5 + 32);
      }

      ++v5;
      v6 = v6 + v11 + v13;
      if (v3 == v5)
      {
        return v7;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1BA09F568(uint64_t result, uint64_t a2)
{
  v80 = *(result + 16);
  if (v80)
  {
    v2 = 0;
    v79 = result + 32;
    v3 = 0.0;
    do
    {
      sub_1B9F0A534(v79 + 40 * v2, v94);
      type metadata accessor for PDFBuilder.Document();
      swift_allocObject();
      v7 = sub_1BA20F244(a2);
      swift_beginAccess();
      v8 = *(v7 + 208);
      v9 = *(v8 + 16);
      if (v9)
      {
        v93 = MEMORY[0x1E69E7CC0];

        sub_1BA066F50(0, v9, 0);
        v10 = v93;
        v11 = v8 + 32;
        swift_beginAccess();
        swift_beginAccess();
        do
        {
          v88 = v10;
          sub_1B9F0A534(v11, v90);
          v12 = v92;
          v86 = v91;
          __swift_project_boxed_opaque_existential_1(v90, v91);
          v13 = swift_allocObject();
          *(v13 + 104) = 1;
          *(v13 + 112) = 1;
          *(v13 + 120) = 0u;
          *(v13 + 136) = 0u;
          *(v13 + 152) = 256;
          *(v13 + 160) = 1;
          *(v13 + 168) = 0u;
          *(v13 + 184) = 0u;
          *(v13 + 200) = 257;
          memmove((v13 + 16), (v7 + 16), 0x50uLL);
          v14 = *(v7 + 201);
          swift_beginAccess();
          *(v13 + 201) = v14;
          *(v13 + 96) = *(v7 + 96);
          *(v13 + 208) = *(v7 + 208);
          *(v13 + 216) = *(v7 + 216);
          *(v13 + 168) = PDFBuilder.Document.drawingContext.getter();
          *(v13 + 176) = v15;
          *(v13 + 184) = v16;
          *(v13 + 192) = v17;
          *(v13 + 200) = 0;
          *(v13 + 104) = *(v7 + 104);
          *(v13 + 120) = *(v7 + 120);
          swift_beginAccess();
          v18 = *(v7 + 160);
          swift_beginAccess();
          *(v13 + 160) = v18;
          v19 = *(v13 + 48);
          *(v13 + 168) = *(v13 + 32);
          *(v13 + 184) = v19;
          *(v13 + 200) = 0;
          v20 = *(v12 + 24);

          v10 = v88;
          v21 = v20(v13, v86, v12);
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v98.origin.x = v21;
          v98.origin.y = v23;
          v98.size.width = v25;
          v98.size.height = v27;
          Height = CGRectGetHeight(v98);
          __swift_destroy_boxed_opaque_existential_1(v90);
          v93 = v88;
          v30 = *(v88 + 16);
          v29 = *(v88 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1BA066F50((v29 > 1), v30 + 1, 1);
            v10 = v93;
          }

          *(v10 + 16) = v30 + 1;
          *(v10 + 8 * v30 + 32) = Height;
          v11 += 40;
          --v9;
        }

        while (v9);

        v31 = *(v10 + 16);
        if (!v31)
        {
LABEL_15:

          v34 = 11.0;
          goto LABEL_24;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E7CC0];
        v31 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v31)
        {
          goto LABEL_15;
        }
      }

      if (v31 > 3)
      {
        v32 = v31 & 0x7FFFFFFFFFFFFFFCLL;
        v35 = (v10 + 48);
        v33 = 0.0;
        v36 = v31 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v33 = v33 + *(v35 - 2) + *(v35 - 1) + *v35 + v35[1];
          v35 += 4;
          v36 -= 4;
        }

        while (v36);
        if (v31 == v32)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v32 = 0;
        v33 = 0.0;
      }

      v37 = v31 - v32;
      v38 = (v10 + 8 * v32 + 32);
      do
      {
        v39 = *v38++;
        v33 = v33 + v39;
        --v37;
      }

      while (v37);
LABEL_21:

      v40 = 0.0;
      if (v33 + 1.0 > 0.0)
      {
        v40 = 10.0;
      }

      v34 = v33 + 1.0 + v40;
LABEL_24:
      v41 = 0.0;
      if ((*(v7 + 153) & 1) == 0 && *(v7 + 152) != 1)
      {
        v41 = *(v7 + 144);
      }

      v85 = v41;
      v43 = *(v7 + 32);
      v42 = *(v7 + 40);
      v44 = *(v7 + 48);
      v45 = *(v7 + 56);
      v99.origin.x = v43;
      v99.origin.y = v42;
      v99.size.width = v44;
      v99.size.height = v45;
      v84 = CGRectGetHeight(v99);
      swift_beginAccess();
      v46 = *(v7 + 216);
      v47 = *(v46 + 16);
      if (v47)
      {
        v82 = v34;
        v83 = v3;
        v93 = MEMORY[0x1E69E7CC0];

        sub_1BA066F50(0, v47, 0);
        v48 = v93;
        v49 = v46 + 32;
        swift_beginAccess();
        do
        {
          v89 = v48;
          sub_1B9F0A534(v49, v90);
          v50 = v92;
          v87 = v91;
          __swift_project_boxed_opaque_existential_1(v90, v91);
          v51 = swift_allocObject();
          *(v51 + 104) = 1;
          *(v51 + 112) = 1;
          *(v51 + 120) = 0u;
          *(v51 + 136) = 0u;
          *(v51 + 152) = 256;
          *(v51 + 160) = 1;
          *(v51 + 168) = 0u;
          *(v51 + 184) = 0u;
          *(v51 + 200) = 257;
          memmove((v51 + 16), (v7 + 16), 0x50uLL);
          v52 = *(v7 + 201);
          swift_beginAccess();
          *(v51 + 201) = v52;
          *(v51 + 96) = *(v7 + 96);
          *(v51 + 208) = *(v7 + 208);
          *(v51 + 216) = *(v7 + 216);
          *(v51 + 168) = PDFBuilder.Document.drawingContext.getter();
          *(v51 + 176) = v53;
          *(v51 + 184) = v54;
          *(v51 + 192) = v55;
          *(v51 + 200) = 0;
          *(v51 + 104) = *(v7 + 104);
          *(v51 + 120) = *(v7 + 120);
          swift_beginAccess();
          v56 = *(v7 + 160);
          swift_beginAccess();
          *(v51 + 160) = v56;
          v57 = *(v51 + 48);
          *(v51 + 168) = *(v51 + 32);
          *(v51 + 184) = v57;
          *(v51 + 200) = 0;
          v58 = *(v50 + 24);

          v48 = v89;
          v59 = v58(v51, v87, v50);
          v61 = v60;
          v63 = v62;
          v65 = v64;

          v100.origin.x = v59;
          v100.origin.y = v61;
          v100.size.width = v63;
          v100.size.height = v65;
          v66 = CGRectGetHeight(v100);
          __swift_destroy_boxed_opaque_existential_1(v90);
          v93 = v89;
          v68 = *(v89 + 16);
          v67 = *(v89 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_1BA066F50((v67 > 1), v68 + 1, 1);
            v48 = v93;
          }

          *(v48 + 16) = v68 + 1;
          *(v48 + 8 * v68 + 32) = v66;
          v49 += 40;
          --v47;
        }

        while (v47);

        v34 = v82;
        v3 = v83;
      }

      else
      {
        v48 = MEMORY[0x1E69E7CC0];
      }

      v69 = *(v48 + 16);
      if (v69)
      {
        if (v69 > 3)
        {
          v70 = v69 & 0x7FFFFFFFFFFFFFFCLL;
          v72 = (v48 + 48);
          v71 = 0.0;
          v73 = v69 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v71 = v71 + *(v72 - 2) + *(v72 - 1) + *v72 + v72[1];
            v72 += 4;
            v73 -= 4;
          }

          while (v73);
          if (v69 == v70)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v70 = 0;
          v71 = 0.0;
        }

        v74 = v69 - v70;
        v75 = (v48 + 8 * v70 + 32);
        do
        {
          v76 = *v75++;
          v71 = v71 + v76;
          --v74;
        }

        while (v74);
      }

      else
      {
        v71 = 0.0;
      }

LABEL_43:

      if ((*(v7 + 153) & 1) != 0 || *(v7 + 136) == 1)
      {
        v101.origin.x = v43;
        v101.origin.y = v42;
        v101.size.width = v44;
        v101.size.height = v45;
        Width = CGRectGetWidth(v101);
      }

      else
      {
        Width = *(v7 + 128);
      }

      v102.origin.x = v43;
      v102.origin.y = v42;
      v102.size.width = v44;
      v102.size.height = v45;
      v78 = CGRectGetWidth(v102);
      if (Width >= v78)
      {
        Width = v78;
      }

      if (*(v7 + 96) == 1)
      {
        v103.origin.x = v43;
        v103.origin.y = v42;
        v103.size.width = v44;
        v103.size.height = v45;
        v43 = CGRectGetMaxX(v103) - Width;
      }

      ++v2;
      *(v7 + 168) = v43;
      *(v7 + 176) = v85 + v34 + v42;
      *(v7 + 184) = Width;
      *(v7 + 192) = v84 - v34 - v85 - v71 + -10.0;
      *(v7 + 200) = 0;
      v4 = v95;
      v5 = v96;
      __swift_project_boxed_opaque_existential_1(v94, v95);
      v97.origin.x = (*(v5 + 24))(v7, v4, v5);
      v6 = CGRectGetHeight(v97);

      if (v6 > v3)
      {
        v3 = v6;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v94);
    }

    while (v2 != v80);
  }

  return result;
}

void sub_1BA09FD84(uint64_t a1, UIGraphicsPDFRendererContext a2, CGFloat a3)
{
  v7 = PDFBuilder.Document.drawingContext.getter();
  v9 = v8;
  v20.size.width = CGRectGetWidth(*(a1 + 168));
  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.height = a3;
  if (!CGRectContainsRect(*(a1 + 168), v20))
  {
    swift_beginAccess();
    v10 = *(a1 + 160);
    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a2);
    if (v10 != *(a1 + 160))
    {
      v11 = *(v3 + 32);
      if (v11)
      {
        v12 = v11(a1);
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = v12 + 32;
          do
          {
            sub_1B9F0A534(v14, v17);
            v15 = v18;
            v16 = v19;
            __swift_project_boxed_opaque_existential_1(v17, v18);
            (*(v16 + 16))(a2, a1, v15, v16);
            __swift_destroy_boxed_opaque_existential_1(v17);
            v14 += 40;
            --v13;
          }

          while (v13);
        }
      }
    }
  }
}

void sub_1BA09FEE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v96 = *(a1 + 16);
    v97 = a1 + 32;
    v100 = 0.0;
    v101 = 0.0;
    v95 = v3 - 1;
    do
    {
      v6 = *(v97 + 8 * v4);
      v98 = v4;
      v99 = v4 + 1;
      v105 = *(v6 + 16);
      v102 = v6 + 32;
      v107 = v6;

      v7 = 0;
      v8 = 0.0;
      while (1)
      {
        v9 = 0uLL;
        v10 = v105;
        v11 = 0uLL;
        v12 = 0uLL;
        if (v7 != v105)
        {
          if (v7 >= *(v107 + 16))
          {
            __break(1u);
            return;
          }

          v10 = v7 + 1;
          *&v122 = v7;
          sub_1B9F0A534(v102 + 40 * v7, &v122 + 8);
          v9 = v122;
          v11 = v123;
          v12 = v124;
        }

        v125[0] = v9;
        v125[1] = v11;
        v125[2] = v12;
        if (!v12)
        {
          break;
        }

        v111 = v9;
        v112 = v10;
        sub_1B9F1134C((v125 + 8), &v122);
        type metadata accessor for PDFBuilder.Document();
        swift_allocObject();
        v13 = sub_1BA20F244(a2);
        swift_beginAccess();
        v14 = *(v13 + 208);
        v15 = *(v14 + 16);
        if (v15)
        {
          v121 = MEMORY[0x1E69E7CC0];

          sub_1BA066F50(0, v15, 0);
          v16 = v121;
          v17 = v14 + 32;
          swift_beginAccess();
          swift_beginAccess();
          do
          {
            v116 = v16;
            sub_1B9F0A534(v17, v118);
            v18 = v120;
            v114 = v119;
            __swift_project_boxed_opaque_existential_1(v118, v119);
            v19 = swift_allocObject();
            *(v19 + 104) = 1;
            *(v19 + 112) = 1;
            *(v19 + 120) = 0u;
            *(v19 + 136) = 0u;
            *(v19 + 152) = 256;
            *(v19 + 160) = 1;
            *(v19 + 168) = 0u;
            *(v19 + 184) = 0u;
            *(v19 + 200) = 257;
            memmove((v19 + 16), (v13 + 16), 0x50uLL);
            v20 = *(v13 + 201);
            swift_beginAccess();
            *(v19 + 201) = v20;
            *(v19 + 96) = *(v13 + 96);
            *(v19 + 208) = *(v13 + 208);
            *(v19 + 216) = *(v13 + 216);
            *(v19 + 168) = PDFBuilder.Document.drawingContext.getter();
            *(v19 + 176) = v21;
            *(v19 + 184) = v22;
            *(v19 + 192) = v23;
            *(v19 + 200) = 0;
            *(v19 + 104) = *(v13 + 104);
            *(v19 + 120) = *(v13 + 120);
            swift_beginAccess();
            v24 = *(v13 + 160);
            swift_beginAccess();
            *(v19 + 160) = v24;
            v25 = *(v19 + 48);
            *(v19 + 168) = *(v19 + 32);
            *(v19 + 184) = v25;
            *(v19 + 200) = 0;
            v26 = *(v18 + 24);

            v16 = v116;
            v27 = v26(v19, v114, v18);
            v29 = v28;
            v31 = v30;
            v33 = v32;

            v126.origin.x = v27;
            v126.origin.y = v29;
            v126.size.width = v31;
            v126.size.height = v33;
            Height = CGRectGetHeight(v126);
            __swift_destroy_boxed_opaque_existential_1(v118);
            v121 = v116;
            v36 = *(v116 + 16);
            v35 = *(v116 + 24);
            if (v36 >= v35 >> 1)
            {
              sub_1BA066F50((v35 > 1), v36 + 1, 1);
              v16 = v121;
            }

            *(v16 + 16) = v36 + 1;
            *(v16 + 8 * v36 + 32) = Height;
            v17 += 40;
            --v15;
          }

          while (v15);

          v37 = *(v16 + 16);
          if (!v37)
          {
LABEL_20:

            v40 = 1.0;
            v41 = 10.0;
            goto LABEL_28;
          }
        }

        else
        {
          v16 = MEMORY[0x1E69E7CC0];
          v37 = *(MEMORY[0x1E69E7CC0] + 16);
          if (!v37)
          {
            goto LABEL_20;
          }
        }

        if (v37 <= 3)
        {
          v38 = 0;
          v39 = 0.0;
LABEL_24:
          v44 = v37 - v38;
          v45 = (v16 + 8 * v38 + 32);
          do
          {
            v46 = *v45++;
            v39 = v39 + v46;
            --v44;
          }

          while (v44);
          goto LABEL_26;
        }

        v38 = v37 & 0x7FFFFFFFFFFFFFFCLL;
        v42 = (v16 + 48);
        v39 = 0.0;
        v43 = v37 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v39 = v39 + *(v42 - 2) + *(v42 - 1) + *v42 + v42[1];
          v42 += 4;
          v43 -= 4;
        }

        while (v43);
        if (v37 != v38)
        {
          goto LABEL_24;
        }

LABEL_26:

        v40 = v39 + 1.0;
        v41 = 10.0;
        if (v39 + 1.0 <= 0.0)
        {
          v41 = 0.0;
        }

LABEL_28:
        v47 = 0.0;
        v113 = v8;
        v110 = v41;
        if ((*(v13 + 153) & 1) == 0 && *(v13 + 152) != 1)
        {
          v47 = *(v13 + 144);
        }

        v109 = v47;
        v49 = *(v13 + 32);
        v48 = *(v13 + 40);
        v50 = *(v13 + 48);
        v51 = *(v13 + 56);
        v127.origin.x = v49;
        v127.origin.y = v48;
        v127.size.width = v50;
        v127.size.height = v51;
        v108 = CGRectGetHeight(v127);
        swift_beginAccess();
        v52 = *(v13 + 216);
        v53 = *(v52 + 16);
        if (v53)
        {
          v106 = v40;
          v121 = MEMORY[0x1E69E7CC0];

          sub_1BA066F50(0, v53, 0);
          v54 = v121;
          v55 = v52 + 32;
          swift_beginAccess();
          do
          {
            v117 = v54;
            sub_1B9F0A534(v55, v118);
            v56 = v120;
            v115 = v119;
            __swift_project_boxed_opaque_existential_1(v118, v119);
            v57 = swift_allocObject();
            *(v57 + 104) = 1;
            *(v57 + 112) = 1;
            *(v57 + 120) = 0u;
            *(v57 + 136) = 0u;
            *(v57 + 152) = 256;
            *(v57 + 160) = 1;
            *(v57 + 168) = 0u;
            *(v57 + 184) = 0u;
            *(v57 + 200) = 257;
            memmove((v57 + 16), (v13 + 16), 0x50uLL);
            v58 = *(v13 + 201);
            swift_beginAccess();
            *(v57 + 201) = v58;
            *(v57 + 96) = *(v13 + 96);
            *(v57 + 208) = *(v13 + 208);
            *(v57 + 216) = *(v13 + 216);
            *(v57 + 168) = PDFBuilder.Document.drawingContext.getter();
            *(v57 + 176) = v59;
            *(v57 + 184) = v60;
            *(v57 + 192) = v61;
            *(v57 + 200) = 0;
            *(v57 + 104) = *(v13 + 104);
            *(v57 + 120) = *(v13 + 120);
            swift_beginAccess();
            v62 = *(v13 + 160);
            swift_beginAccess();
            *(v57 + 160) = v62;
            v63 = *(v57 + 48);
            *(v57 + 168) = *(v57 + 32);
            *(v57 + 184) = v63;
            *(v57 + 200) = 0;
            v64 = *(v56 + 24);

            v54 = v117;
            v65 = v64(v57, v115, v56);
            v67 = v66;
            v69 = v68;
            v71 = v70;

            v128.origin.x = v65;
            v128.origin.y = v67;
            v128.size.width = v69;
            v128.size.height = v71;
            v72 = CGRectGetHeight(v128);
            __swift_destroy_boxed_opaque_existential_1(v118);
            v121 = v117;
            v74 = *(v117 + 16);
            v73 = *(v117 + 24);
            if (v74 >= v73 >> 1)
            {
              sub_1BA066F50((v73 > 1), v74 + 1, 1);
              v54 = v121;
            }

            *(v54 + 16) = v74 + 1;
            *(v54 + 8 * v74 + 32) = v72;
            v55 += 40;
            --v53;
          }

          while (v53);

          v40 = v106;
          v75 = *(v54 + 16);
          if (!v75)
          {
LABEL_40:
            v77 = 0.0;
            goto LABEL_46;
          }
        }

        else
        {
          v54 = MEMORY[0x1E69E7CC0];
          v75 = *(MEMORY[0x1E69E7CC0] + 16);
          if (!v75)
          {
            goto LABEL_40;
          }
        }

        if (v75 <= 3)
        {
          v76 = 0;
          v77 = 0.0;
LABEL_44:
          v80 = v75 - v76;
          v81 = (v54 + 8 * v76 + 32);
          do
          {
            v82 = *v81++;
            v77 = v77 + v82;
            --v80;
          }

          while (v80);
          goto LABEL_46;
        }

        v76 = v75 & 0x7FFFFFFFFFFFFFFCLL;
        v78 = (v54 + 48);
        v77 = 0.0;
        v79 = v75 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v77 = v77 + *(v78 - 2) + *(v78 - 1) + *v78 + v78[1];
          v78 += 4;
          v79 -= 4;
        }

        while (v79);
        if (v75 != v76)
        {
          goto LABEL_44;
        }

LABEL_46:

        if ((*(v13 + 153) & 1) != 0 || *(v13 + 136) == 1)
        {
          v129.origin.x = v49;
          v129.origin.y = v48;
          v129.size.width = v50;
          v129.size.height = v51;
          Width = CGRectGetWidth(v129);
        }

        else
        {
          Width = *(v13 + 128);
        }

        v130.origin.x = v49;
        v130.origin.y = v48;
        v130.size.width = v50;
        v130.size.height = v51;
        v84 = CGRectGetWidth(v130);
        if (Width >= v84)
        {
          v85 = v84;
        }

        else
        {
          v85 = Width;
        }

        if (*(v13 + 96) == 1)
        {
          v131.origin.x = v49;
          v131.origin.y = v48;
          v131.size.width = v50;
          v131.size.height = v51;
          v49 = CGRectGetMaxX(v131) - v85;
        }

        *(v13 + 168) = v49;
        *(v13 + 176) = v109 + v110 + v40 + v48;
        *(v13 + 184) = v85;
        *(v13 + 192) = v108 - (v110 + v40) - v109 - v77 + -10.0;
        *(v13 + 200) = 0;
        v86 = *(&v123 + 1);
        v87 = v124;
        __swift_project_boxed_opaque_existential_1(&v122, *(&v123 + 1));
        v132.origin.x = (*(v87 + 24))(v13, v86, v87);
        v88 = CGRectGetHeight(v132);

        v2 = v103;
        v89 = *(v103 + 64);
        if (v88 > v89)
        {
          v89 = v88;
        }

        v8 = v113 + v89;
        if (v111 < *(v107 + 16) - 1)
        {
          v8 = v8 + *(v103 + 56);
        }

        __swift_destroy_boxed_opaque_existential_1(&v122);
        v7 = v112;
      }

      v90 = v100;
      if (v8 > v100)
      {
        v90 = v8;
      }

      v100 = v90;
      v91 = sub_1BA0A0BDC(v107, a2);

      v92 = v101 + v91;
      if (v98 >= v95)
      {
        v5 = v96;
        v4 = v99;
      }

      else
      {
        v93 = *(v2 + 48);
        v4 = v99;
        if (v98 >= *(v93 + 16))
        {
          v94 = 10.0;
        }

        else
        {
          v94 = *(v93 + 8 * v98 + 32);
        }

        v92 = v92 + v94;
        v5 = v96;
      }

      v101 = v92;
    }

    while (v4 != v5);
  }

  PDFBuilder.Document.drawingContext.getter();
}

uint64_t PDFTable.minimumBoundingRectForContent(in:)(uint64_t a1)
{
  v22 = a1;
  sub_1BA0A1808(0, &qword_1EBBEB2F0, sub_1BA0A17D4, MEMORY[0x1E69E6F90]);
  result = swift_initStackObject();
  v21 = result;
  *(result + 16) = xmmword_1BA4B5480;
  v23 = v1;
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v3 + 16))
    {
      v14 = *(v3 + 32 + 8 * v5);
      if (*(v14 + 16))
      {
        sub_1B9F0A534(v14 + 32, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v6 = sub_1BA27FAAC(0, v6[2] + 1, 1, v6);
          v27 = v6;
        }

        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          v6 = sub_1BA27FAAC((v16 > 1), v17 + 1, 1, v6);
          v27 = v6;
        }

        v7 = v25;
        v8 = v26;
        v9 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
        v10 = MEMORY[0x1EEE9AC00](v9);
        v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v13 + 16))(v12, v10);
        sub_1B9F1C4F4(v17, v12, &v27, v7, v8);
        result = __swift_destroy_boxed_opaque_existential_1(v24);
      }

      if (v4 == ++v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v19 = v21;
    v18 = v22;
    v20 = v21;
    *(v21 + 32) = v6;
    sub_1BA09FEE0(v19, v18);
    swift_setDeallocating();
    return sub_1BA0A18D0(v20 + 32);
  }

  return result;
}

uint64_t PDFTable.deinit()
{

  sub_1B9F0E310(*(v0 + 32));

  return v0;
}

uint64_t PDFTable.__deallocating_deinit()
{

  sub_1B9F0E310(*(v0 + 32));

  return swift_deallocClassInstance();
}

double sub_1BA0A0BDC(uint64_t a1, uint64_t a2)
{
  v82 = *(a1 + 16);
  if (v82)
  {
    v2 = 0;
    v81 = a1 + 32;
    v3 = 0.0;
    while (1)
    {
      sub_1B9F0A534(v81 + 40 * v2, v96);
      swift_allocObject();
      v7 = sub_1BA20F244(a2);
      swift_beginAccess();
      v8 = *(v7 + 208);
      v9 = *(v8 + 16);
      if (v9)
      {
        v95 = MEMORY[0x1E69E7CC0];

        sub_1BA066F50(0, v9, 0);
        v10 = v95;
        v11 = v8 + 32;
        swift_beginAccess();
        swift_beginAccess();
        do
        {
          v90 = v10;
          sub_1B9F0A534(v11, v92);
          v12 = v94;
          v88 = v93;
          __swift_project_boxed_opaque_existential_1(v92, v93);
          v13 = swift_allocObject();
          *(v13 + 104) = 1;
          *(v13 + 112) = 1;
          *(v13 + 120) = 0u;
          *(v13 + 136) = 0u;
          *(v13 + 152) = 256;
          *(v13 + 160) = 1;
          *(v13 + 168) = 0u;
          *(v13 + 184) = 0u;
          *(v13 + 200) = 257;
          memmove((v13 + 16), (v7 + 16), 0x50uLL);
          v14 = *(v7 + 201);
          swift_beginAccess();
          *(v13 + 201) = v14;
          *(v13 + 96) = *(v7 + 96);
          *(v13 + 208) = *(v7 + 208);
          *(v13 + 216) = *(v7 + 216);
          *(v13 + 168) = PDFBuilder.Document.drawingContext.getter();
          *(v13 + 176) = v15;
          *(v13 + 184) = v16;
          *(v13 + 192) = v17;
          *(v13 + 200) = 0;
          *(v13 + 104) = *(v7 + 104);
          *(v13 + 120) = *(v7 + 120);
          swift_beginAccess();
          v18 = *(v7 + 160);
          swift_beginAccess();
          *(v13 + 160) = v18;
          v19 = *(v13 + 48);
          *(v13 + 168) = *(v13 + 32);
          *(v13 + 184) = v19;
          *(v13 + 200) = 0;
          v20 = *(v12 + 24);

          v10 = v90;
          v21 = v20(v13, v88, v12);
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v100.origin.x = v21;
          v100.origin.y = v23;
          v100.size.width = v25;
          v100.size.height = v27;
          Height = CGRectGetHeight(v100);
          __swift_destroy_boxed_opaque_existential_1(v92);
          v95 = v90;
          v30 = *(v90 + 16);
          v29 = *(v90 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1BA066F50((v29 > 1), v30 + 1, 1);
            v10 = v95;
          }

          *(v10 + 16) = v30 + 1;
          *(v10 + 8 * v30 + 32) = Height;
          v11 += 40;
          --v9;
        }

        while (v9);

        v31 = *(v10 + 16);
        if (!v31)
        {
LABEL_15:

          v34 = 11.0;
          goto LABEL_24;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E7CC0];
        v31 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v31)
        {
          goto LABEL_15;
        }
      }

      if (v31 > 3)
      {
        v32 = v31 & 0x7FFFFFFFFFFFFFFCLL;
        v35 = (v10 + 48);
        v33 = 0.0;
        v36 = v31 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v33 = v33 + *(v35 - 2) + *(v35 - 1) + *v35 + v35[1];
          v35 += 4;
          v36 -= 4;
        }

        while (v36);
        if (v31 == v32)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v32 = 0;
        v33 = 0.0;
      }

      v37 = v31 - v32;
      v38 = (v10 + 8 * v32 + 32);
      do
      {
        v39 = *v38++;
        v33 = v33 + v39;
        --v37;
      }

      while (v37);
LABEL_21:

      v40 = 0.0;
      if (v33 + 1.0 > 0.0)
      {
        v40 = 10.0;
      }

      v34 = v33 + 1.0 + v40;
LABEL_24:
      v41 = 0.0;
      v87 = v34;
      if ((*(v7 + 153) & 1) == 0 && *(v7 + 152) != 1)
      {
        v41 = *(v7 + 144);
      }

      v86 = v41;
      v43 = *(v7 + 32);
      v42 = *(v7 + 40);
      v44 = *(v7 + 48);
      v45 = *(v7 + 56);
      v101.origin.x = v43;
      v101.origin.y = v42;
      v101.size.width = v44;
      v101.size.height = v45;
      v85 = CGRectGetHeight(v101);
      swift_beginAccess();
      v46 = *(v7 + 216);
      v47 = *(v46 + 16);
      if (v47)
      {
        v84 = v3;
        v95 = MEMORY[0x1E69E7CC0];

        sub_1BA066F50(0, v47, 0);
        v48 = v95;
        v49 = v46 + 32;
        swift_beginAccess();
        do
        {
          v91 = v48;
          sub_1B9F0A534(v49, v92);
          v50 = v94;
          v89 = v93;
          __swift_project_boxed_opaque_existential_1(v92, v93);
          v51 = swift_allocObject();
          *(v51 + 104) = 1;
          *(v51 + 112) = 1;
          *(v51 + 120) = 0u;
          *(v51 + 136) = 0u;
          *(v51 + 152) = 256;
          *(v51 + 160) = 1;
          *(v51 + 168) = 0u;
          *(v51 + 184) = 0u;
          *(v51 + 200) = 257;
          memmove((v51 + 16), (v7 + 16), 0x50uLL);
          v52 = *(v7 + 201);
          swift_beginAccess();
          *(v51 + 201) = v52;
          *(v51 + 96) = *(v7 + 96);
          *(v51 + 208) = *(v7 + 208);
          *(v51 + 216) = *(v7 + 216);
          *(v51 + 168) = PDFBuilder.Document.drawingContext.getter();
          *(v51 + 176) = v53;
          *(v51 + 184) = v54;
          *(v51 + 192) = v55;
          *(v51 + 200) = 0;
          *(v51 + 104) = *(v7 + 104);
          *(v51 + 120) = *(v7 + 120);
          swift_beginAccess();
          v56 = *(v7 + 160);
          swift_beginAccess();
          *(v51 + 160) = v56;
          v57 = *(v51 + 48);
          *(v51 + 168) = *(v51 + 32);
          *(v51 + 184) = v57;
          *(v51 + 200) = 0;
          v58 = *(v50 + 24);

          v48 = v91;
          v59 = v58(v51, v89, v50);
          v61 = v60;
          v63 = v62;
          v65 = v64;

          v102.origin.x = v59;
          v102.origin.y = v61;
          v102.size.width = v63;
          v102.size.height = v65;
          v66 = CGRectGetHeight(v102);
          __swift_destroy_boxed_opaque_existential_1(v92);
          v95 = v91;
          v68 = *(v91 + 16);
          v67 = *(v91 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_1BA066F50((v67 > 1), v68 + 1, 1);
            v48 = v95;
          }

          *(v48 + 16) = v68 + 1;
          *(v48 + 8 * v68 + 32) = v66;
          v49 += 40;
          --v47;
        }

        while (v47);

        v3 = v84;
      }

      else
      {
        v48 = MEMORY[0x1E69E7CC0];
      }

      v69 = *(v48 + 16);
      if (v69)
      {
        if (v69 > 3)
        {
          v70 = v69 & 0x7FFFFFFFFFFFFFFCLL;
          v72 = (v48 + 48);
          v71 = 0.0;
          v73 = v69 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v71 = v71 + *(v72 - 2) + *(v72 - 1) + *v72 + v72[1];
            v72 += 4;
            v73 -= 4;
          }

          while (v73);
          if (v69 == v70)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v70 = 0;
          v71 = 0.0;
        }

        v74 = v69 - v70;
        v75 = (v48 + 8 * v70 + 32);
        do
        {
          v76 = *v75++;
          v71 = v71 + v76;
          --v74;
        }

        while (v74);
      }

      else
      {
        v71 = 0.0;
      }

LABEL_43:

      if ((*(v7 + 153) & 1) != 0 || *(v7 + 136) == 1)
      {
        v103.origin.x = v43;
        v103.origin.y = v42;
        v103.size.width = v44;
        v103.size.height = v45;
        Width = CGRectGetWidth(v103);
      }

      else
      {
        Width = *(v7 + 128);
      }

      v104.origin.x = v43;
      v104.origin.y = v42;
      v104.size.width = v44;
      v104.size.height = v45;
      v78 = CGRectGetWidth(v104);
      if (Width >= v78)
      {
        v79 = v78;
      }

      else
      {
        v79 = Width;
      }

      if (*(v7 + 96) == 1)
      {
        v105.origin.x = v43;
        v105.origin.y = v42;
        v105.size.width = v44;
        v105.size.height = v45;
        v43 = CGRectGetMaxX(v105) - v79;
      }

      ++v2;
      *(v7 + 168) = v43;
      *(v7 + 176) = v86 + v87 + v42;
      *(v7 + 184) = v79;
      *(v7 + 192) = v85 - v87 - v86 - v71 + -10.0;
      *(v7 + 200) = 0;
      v4 = v97;
      v5 = v98;
      __swift_project_boxed_opaque_existential_1(v96, v97);
      v99.origin.x = (*(v5 + 24))(v7, v4, v5);
      v6 = CGRectGetWidth(v99);

      if (v6 > v3)
      {
        v3 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v96);
      if (v2 == v82)
      {
        return v3;
      }
    }
  }

  return 0.0;
}