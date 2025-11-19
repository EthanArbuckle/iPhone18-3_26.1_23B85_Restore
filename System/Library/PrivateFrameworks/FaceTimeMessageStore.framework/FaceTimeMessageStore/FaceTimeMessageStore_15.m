void sub_1BC8D9660()
{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6598, &qword_1BC909C50);
  v4 = OUTLINED_FUNCTION_12_20();
  if (*(v1 + 16))
  {
    v5 = OUTLINED_FUNCTION_3_26();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_2_29();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_16_17();
LABEL_15:
        v20 = v16 | (v10 << 6);
        v21 = (*(v1 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = (*(v4 + 48) + 16 * v20);
        *v23 = *v21;
        v23[1] = v22;
      }

      while (v13);
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
        goto LABEL_17;
      }

      ++v17;
      if (*(v2 + v10))
      {
        OUTLINED_FUNCTION_5_26();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
  }
}

void sub_1BC8D977C()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6(0);
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v31 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  v15 = *v0;
  v16 = sub_1BC8F8554();
  v17 = v16;
  if (*(v15 + 16))
  {
    v32 = v5;
    v18 = (v16 + 56);
    v19 = ((1 << *(v17 + 32)) + 63) >> 6;
    if (v17 != v15 || v18 >= v15 + 56 + 8 * v19)
    {
      memmove(v18, (v15 + 56), 8 * v19);
    }

    v21 = 0;
    *(v17 + 16) = *(v15 + 16);
    v22 = 1 << *(v15 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v15 + 56);
    v25 = (v22 + 63) >> 6;
    v33 = v10 + 32;
    v34 = v10 + 16;
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v30 = *(v10 + 72) * (v26 | (v21 << 6));
      (*(v10 + 16))(v14, *(v15 + 48) + v30, v7);
      (*(v10 + 32))(*(v17 + 48) + v30, v14, v7);
    }

    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {

        v5 = v32;
        goto LABEL_21;
      }

      ++v27;
      if (*(v15 + 56 + 8 * v21))
      {
        OUTLINED_FUNCTION_5_26();
        v24 = v29 & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v17;
    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC8D9990()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6548, &unk_1BC909C40);
  v4 = OUTLINED_FUNCTION_12_20();
  if (*(v1 + 16))
  {
    v5 = OUTLINED_FUNCTION_3_26();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_2_29();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_15:
        v20 = v16 | (v10 << 6);
        v21 = (*(v1 + 48) + 32 * v20);
        v22 = v21[1];
        v23 = v21[2];
        v24 = v21[3];
        v25 = (*(v4 + 48) + 32 * v20);
        *v25 = *v21;
        v25[1] = v22;
        v25[2] = v23;
        v25[3] = v24;
      }

      while (v13);
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
        goto LABEL_17;
      }

      ++v17;
      if (*(v2 + v10))
      {
        OUTLINED_FUNCTION_5_26();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC8D9AA0()
{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6570, &qword_1BC907718);
  v4 = OUTLINED_FUNCTION_12_20();
  if (*(v1 + 16))
  {
    v5 = OUTLINED_FUNCTION_3_26();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_2_29();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_16_17();
LABEL_15:
        *(*(v4 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v1 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v13);
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
        goto LABEL_17;
      }

      ++v17;
      if (*(v2 + v10))
      {
        OUTLINED_FUNCTION_5_26();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
  }
}

uint64_t sub_1BC8D9B8C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = (v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1BC8D83A8(0, v6, v8);
    v9 = sub_1BC8DA440(v8, v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_1BC8D9D54(v12, v6, a2, a1);

    MEMORY[0x1BFB2AA50](v12, -1, -1);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

unint64_t *sub_1BC8D9D54(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1BC8DA440(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1BC8D9DE4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v10 = sub_1BC8DB7C8(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void sub_1BC8D9EA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a2;
  v77 = a1;
  v6 = sub_1BC8F73D4();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v85 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v71 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v84 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v71 - v19;
  v20 = *(a3 + 16);
  v21 = *(a4 + 16);
  v88 = v9 + 16;
  v86 = a4;
  v87 = a3;
  v79 = v9;
  if (v21 >= v20)
  {
    v80 = 0;
    v49 = 0;
    v50 = *(a3 + 56);
    v76 = (a3 + 56);
    OUTLINED_FUNCTION_9_20();
    v83 = a4 + 56;
    v84 = (v9 + 8);
    v78 = v52;
LABEL_18:
    while (v51)
    {
      OUTLINED_FUNCTION_82_0();
      v82 = v54;
LABEL_25:
      v58 = v53 | (v49 << 6);
      v59 = *(a3 + 48);
      v60 = *(v9 + 72);
      v81 = v58;
      v61 = *(v9 + 16);
      OUTLINED_FUNCTION_18_17();
      v61();
      v62 = *(a4 + 40);
      OUTLINED_FUNCTION_0_31();
      sub_1BC8DC0FC(&qword_1EBCF5678, v63);
      v64 = sub_1BC8F7B54();
      v65 = ~(-1 << *(a4 + 32));
      do
      {
        v66 = v64 & v65;
        if (((*(v83 + (((v64 & v65) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v64 & v65)) & 1) == 0)
        {
          (*v84)(v85, v6);
          a4 = v86;
          a3 = v87;
          v52 = v78;
          v9 = v79;
          v51 = v82;
          goto LABEL_18;
        }

        v67 = *(v86 + 48);
        OUTLINED_FUNCTION_18_17();
        v61();
        OUTLINED_FUNCTION_0_31();
        sub_1BC8DC0FC(&qword_1EBCF6510, v68);
        v69 = sub_1BC8F7BC4();
        v70 = *v84;
        (*v84)(v16, v6);
        v64 = v66 + 1;
      }

      while ((v69 & 1) == 0);
      v70(v85, v6);
      *(v77 + ((v81 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v81;
      v9 = v79;
      v48 = __OFADD__(v80++, 1);
      a4 = v86;
      a3 = v87;
      v52 = v78;
      v51 = v82;
      if (v48)
      {
        goto LABEL_36;
      }
    }

    v55 = v49;
    while (1)
    {
      v49 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v49 >= v52)
      {
LABEL_32:

        sub_1BC8DAAA8(v77, v73, v80, a3);
        return;
      }

      ++v55;
      if (*&v76[8 * v49])
      {
        OUTLINED_FUNCTION_5_26();
        v82 = (v57 & v56);
        goto LABEL_25;
      }
    }
  }

  else
  {
    v22 = 0;
    v23 = *(a4 + 56);
    v72 = a4 + 56;
    OUTLINED_FUNCTION_9_20();
    v74 = v25;
    v75 = v9 + 32;
    v80 = 0;
    v81 = a3 + 56;
    v85 = (v9 + 8);
LABEL_3:
    while (v24)
    {
      OUTLINED_FUNCTION_82_0();
      v78 = v27;
LABEL_10:
      v31 = *(a4 + 48) + *(v9 + 72) * (v26 | (v22 << 6));
      v32 = *(v9 + 16);
      v33 = v76;
      OUTLINED_FUNCTION_18_17();
      v82 = v34;
      v83 = v35;
      v34();
      (*(v9 + 32))(v84, v33, v6);
      v36 = *(a3 + 40);
      OUTLINED_FUNCTION_0_31();
      sub_1BC8DC0FC(&qword_1EBCF5678, v37);
      v38 = sub_1BC8F7B54();
      v39 = ~(-1 << *(a3 + 32));
      do
      {
        v40 = v38 & v39;
        v41 = (v38 & v39) >> 6;
        v42 = 1 << (v38 & v39);
        if ((v42 & *(v81 + 8 * v41)) == 0)
        {
          (*v85)(v84, v6);
          a4 = v86;
          a3 = v87;
          v24 = v78;
          v9 = v79;
          v25 = v74;
          goto LABEL_3;
        }

        v43 = *(v87 + 48);
        OUTLINED_FUNCTION_18_17();
        v44();
        OUTLINED_FUNCTION_0_31();
        sub_1BC8DC0FC(&qword_1EBCF6510, v45);
        v46 = sub_1BC8F7BC4();
        v47 = *v85;
        (*v85)(v16, v6);
        v38 = v40 + 1;
      }

      while ((v46 & 1) == 0);
      v47(v84, v6);
      v24 = v78;
      v77[v41] |= v42;
      v9 = v79;
      v48 = __OFADD__(v80++, 1);
      a4 = v86;
      a3 = v87;
      v25 = v74;
      if (v48)
      {
        goto LABEL_35;
      }
    }

    v28 = v22;
    while (1)
    {
      v22 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v22 >= v25)
      {
        goto LABEL_32;
      }

      ++v28;
      if (*(v72 + 8 * v22))
      {
        OUTLINED_FUNCTION_5_26();
        v78 = v30 & v29;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1BC8DA440(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_1BC8F7264();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v74 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v60 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v73 = &v60 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v65 = &v60 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v77 = v7 + 16;
  v75 = a4;
  v76 = a3;
  v68 = v7;
  if (v19 >= v18)
  {
    v69 = 0;
    v41 = 0;
    v42 = *(a3 + 56);
    v65 = (a3 + 56);
    v43 = 1 << *(a3 + 32);
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v45 = v44 & v42;
    v46 = (v43 + 63) >> 6;
    v72 = a4 + 56;
    v73 = (v7 + 8);
    v67 = v46;
LABEL_24:
    while (v45)
    {
      v47 = __clz(__rbit64(v45));
      v71 = ((v45 - 1) & v45);
LABEL_31:
      v50 = v47 | (v41 << 6);
      v51 = *(a3 + 48);
      v52 = *(v7 + 72);
      v70 = v50;
      v53 = *(v7 + 16);
      v53(v74, v51 + v52 * v50, v6);
      v54 = *(a4 + 40);
      sub_1BC8DC0FC(&unk_1EDC20600, MEMORY[0x1E69695A8]);
      v55 = sub_1BC8F7B54();
      v56 = ~(-1 << *(a4 + 32));
      do
      {
        v57 = v55 & v56;
        if (((*(v72 + (((v55 & v56) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v55 & v56)) & 1) == 0)
        {
          result = (*v73)(v74, v6);
          a4 = v75;
          a3 = v76;
          v46 = v67;
          v7 = v68;
          v45 = v71;
          goto LABEL_24;
        }

        v53(v13, *(v75 + 48) + v57 * v52, v6);
        sub_1BC8DC0FC(&unk_1EDC205F0, MEMORY[0x1E69695A8]);
        v58 = sub_1BC8F7BC4();
        v59 = *v73;
        (*v73)(v13, v6);
        v55 = v57 + 1;
      }

      while ((v58 & 1) == 0);
      result = v59(v74, v6);
      *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      v7 = v68;
      v40 = __OFADD__(v69++, 1);
      a4 = v75;
      a3 = v76;
      v46 = v67;
      v45 = v71;
      if (v40)
      {
        goto LABEL_42;
      }
    }

    v48 = v41;
    while (1)
    {
      v41 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v41 >= v46)
      {
LABEL_38:

        return sub_1BC8DADC8(v66, v62, v69, a3);
      }

      v49 = *&v65[8 * v41];
      ++v48;
      if (v49)
      {
        v47 = __clz(__rbit64(v49));
        v71 = ((v49 - 1) & v49);
        goto LABEL_31;
      }
    }
  }

  else
  {
    v20 = 0;
    v21 = *(a4 + 56);
    v61 = a4 + 56;
    v22 = 1 << *(a4 + 32);
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
    v63 = v25;
    v64 = v7 + 32;
    v69 = 0;
    v70 = a3 + 56;
    v74 = (v7 + 8);
LABEL_6:
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v67 = (v24 - 1) & v24;
LABEL_13:
      v29 = *(v7 + 72);
      v30 = *(a4 + 48) + v29 * (v26 | (v20 << 6));
      v31 = v65;
      v71 = *(v7 + 16);
      v72 = v29;
      v71(v65, v30, v6);
      (*(v7 + 32))(v73, v31, v6);
      v32 = *(a3 + 40);
      sub_1BC8DC0FC(&unk_1EDC20600, MEMORY[0x1E69695A8]);
      v33 = sub_1BC8F7B54();
      v34 = ~(-1 << *(a3 + 32));
      do
      {
        v35 = v33 & v34;
        v36 = (v33 & v34) >> 6;
        v37 = 1 << (v33 & v34);
        if ((v37 & *(v70 + 8 * v36)) == 0)
        {
          result = (*v74)(v73, v6);
          a4 = v75;
          a3 = v76;
          v24 = v67;
          v7 = v68;
          v25 = v63;
          goto LABEL_6;
        }

        v71(v13, *(v76 + 48) + v35 * v72, v6);
        sub_1BC8DC0FC(&unk_1EDC205F0, MEMORY[0x1E69695A8]);
        v38 = sub_1BC8F7BC4();
        v39 = *v74;
        (*v74)(v13, v6);
        v33 = v35 + 1;
      }

      while ((v38 & 1) == 0);
      result = v39(v73, v6);
      v24 = v67;
      v66[v36] |= v37;
      v7 = v68;
      v40 = __OFADD__(v69++, 1);
      a4 = v75;
      a3 = v76;
      v25 = v63;
      if (v40)
      {
        goto LABEL_41;
      }
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {
        goto LABEL_38;
      }

      v28 = *(v61 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v67 = (v28 - 1) & v28;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1BC8DAAA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1BC8F73D4();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6518, &qword_1BC907698);
  result = sub_1BC8F8574();
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
    sub_1BC8DC0FC(&qword_1EBCF5678, MEMORY[0x1E6993530]);
    result = sub_1BC8F7B54();
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_27:

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
      goto LABEL_27;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BC8DADC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1BC8F7264();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF64F0, &unk_1BC907680);
  result = sub_1BC8F8574();
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
    sub_1BC8DC0FC(&unk_1EDC20600, MEMORY[0x1E69695A8]);
    result = sub_1BC8F7B54();
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_27:

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
      goto LABEL_27;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BC8DB0E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_1BC8F7264();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_1BC7F1790(v6, &unk_1EBCF5D70, &qword_1BC8FC740))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_1BC8DBACC(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BC8DB304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47[5] = *MEMORY[0x1E69E9840];
  v43 = sub_1BC8F7264();
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
    goto LABEL_24;
  }

  while (2)
  {
    v37 = a3;
    v42 = a2;
    v44 = v4;
    v33 = &v33;
    MEMORY[0x1EEE9AC00](v14);
    v34 = v12;
    v35 = (&v33 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1BC8D83A8(0, v12, v35);
    v36 = 0;
    a2 = 0;
    a3 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v12 = (v15 + 63) >> 6;
    v39 = v8 + 16;
    v40 = (v8 + 8);
    v18 = v8;
    v13 = v38;
    v41 = a1;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v8 = v19 | (a2 << 6);
      v22 = v18;
      v23 = (*(v18 + 16))(v13, *(a1 + 48) + *(v18 + 72) * v8, v43);
      MEMORY[0x1EEE9AC00](v23);
      *(&v33 - 2) = v13;
      v24 = v44;
      sub_1BC8D6128(sub_1BC8DB7A8, (&v33 - 4), v42);
      v44 = v24;
      if (v25)
      {
        v4 = v25;
        sub_1BC8E7410(v13, v37);
        if (!v46)
        {

          sub_1BC7F1790(&v45, &qword_1EBCF6780, &qword_1BC908A10);
          v13 = v38;
          goto LABEL_19;
        }

        sub_1BC7CF5EC(&v45, v47);
        v26 = sub_1BC7EAD54(v47);

        __swift_destroy_boxed_opaque_existential_1(v47);
        v13 = v38;
        if (v26)
        {
          goto LABEL_19;
        }

        (*v40)(v38, v43);
        *(v35 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        v27 = __OFADD__(v36++, 1);
        a1 = v41;
        v18 = v22;
        if (v27)
        {
          __break(1u);
        }
      }

      else
      {
LABEL_19:
        (*v40)(v13, v43);
        a1 = v41;
        v18 = v22;
      }
    }

    v20 = a2;
    while (1)
    {
      a2 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (a2 >= v12)
      {
        v28 = sub_1BC8DADC8(v35, v34, v36, a1);

        goto LABEL_21;
      }

      v21 = *(a3 + 8 * a2);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_24:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = a1;
  v32 = swift_slowAlloc();

  v28 = sub_1BC8D9DE4(v32, v12, v31, a2, a3);

  MEMORY[0x1BFB2AA50](v32, -1, -1);

  if (v4)
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {

LABEL_21:
  }

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t sub_1BC8DB7C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v47 = a4;
  v35 = a2;
  v36 = a1;
  v6 = sub_1BC8F7264();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v12 = 0;
  v42 = v9;
  v43 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v40 = (v9 + 8);
  v41 = v9 + 16;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = *(v43 + 48);
    v25 = *(v42 + 72);
    v38 = v23;
    v26 = v6;
    v27 = (*(v42 + 16))(v11, v24 + v25 * v23, v6);
    MEMORY[0x1EEE9AC00](v27);
    *(&v34 - 2) = v11;
    sub_1BC8D6128(sub_1BC8DC1AC, (&v34 - 4), v47);
    if (v28)
    {
      v29 = v28;
      sub_1BC8E7410(v11, v39);
      if (!v45)
      {

        sub_1BC7F1790(&v44, &qword_1EBCF6780, &qword_1BC908A10);
        goto LABEL_18;
      }

      sub_1BC7CF5EC(&v44, v46);
      v30 = sub_1BC7EAD54(v46);

      __swift_destroy_boxed_opaque_existential_1(v46);
      if (v30)
      {
        goto LABEL_18;
      }

      v6 = v26;
      result = (*v40)(v11, v26);
      *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      if (__OFADD__(v37++, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_18:
      v6 = v26;
      result = (*v40)(v11, v26);
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      v32 = v43;

      v33 = sub_1BC8DADC8(v36, v35, v37, v32);

      return v33;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BC8DBACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1BC8DC0FC(&unk_1EDC20600, MEMORY[0x1E69695A8]);
  v28 = a1;
  v11 = sub_1BC8F7B54();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_1BC8DC0FC(&unk_1EDC205F0, MEMORY[0x1E69695A8]);
    v15 = sub_1BC8F7BC4();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BC8D977C();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_1BC8DBD64(v13);
  v16 = 0;
  *v18 = v29;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
}

uint64_t sub_1BC8DBD64(int64_t a1)
{
  v3 = sub_1BC8F7264();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1BC8F84E4();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_1BC8DC0FC(&unk_1EDC20600, MEMORY[0x1E69695A8]);
        v27 = sub_1BC8F7B54();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

uint64_t sub_1BC8DC0FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC8DC144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutgoingVideoMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static Int.megabytes(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1BC8DC734(v3, v1, v2);
}

uint64_t static Int.kilobyte(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  v4 = *(v1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_30();
  v8 = v6 - v7;
  (*(v4 + 16))(v6 - v7);
  v9 = *(v2 + 8);
  OUTLINED_FUNCTION_1_31();
  if (sub_1BC8F8464())
  {
    OUTLINED_FUNCTION_0_32();
    if (sub_1BC8F8454() > 64)
    {
      v36 = 0x8000000000000000;
      OUTLINED_FUNCTION_1_31();
      if (sub_1BC8F8464())
      {
        OUTLINED_FUNCTION_0_32();
        v10 = sub_1BC8F8454();
        if (v10 < 64)
        {
          goto LABEL_13;
        }

LABEL_8:
        MEMORY[0x1EEE9AC00](v10);
        OUTLINED_FUNCTION_2_30();
        v14 = v12 - v13;
        sub_1BC8B5AF8();
        sub_1BC8F8434();
        v15 = *(*(v9 + 32) + 8);
        sub_1BC8F7B84();
        OUTLINED_FUNCTION_3_27();
        result = v16(v14, v1);
        if (v1)
        {
LABEL_26:
          __break(1u);
          return result;
        }

        goto LABEL_14;
      }

      OUTLINED_FUNCTION_1_31();
      v11 = sub_1BC8F8464();
      OUTLINED_FUNCTION_0_32();
      v10 = sub_1BC8F8454();
      if (v11)
      {
        if (v10 <= 64)
        {
          v18 = *(*(v9 + 24) + 16);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v35 = &v35;
          v20 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          swift_getAssociatedConformanceWitness();
          v21 = sub_1BC8F8B14();
          MEMORY[0x1EEE9AC00](v21);
          OUTLINED_FUNCTION_2_30();
          v24 = v22 - v23;
          sub_1BC8F8A84();
          v25 = *(*(v9 + 32) + 8);
          sub_1BC8F7B84();
          OUTLINED_FUNCTION_3_27();
          result = v26(v24, v1);
          if (v1)
          {
            goto LABEL_26;
          }

          goto LABEL_13;
        }

        goto LABEL_8;
      }

      if (v10 < 64)
      {
LABEL_13:
        OUTLINED_FUNCTION_0_32();
        sub_1BC8F8444();
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_0_32();
  if (sub_1BC8F8454() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_1_31();
    v27 = sub_1BC8F8464();
    OUTLINED_FUNCTION_0_32();
    v28 = sub_1BC8F8454();
    if ((v27 & 1) == 0)
    {
      break;
    }

    if (v28 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    MEMORY[0x1EEE9AC00](v28);
    OUTLINED_FUNCTION_2_30();
    v31 = v29 - v30;
    sub_1BC8B5AF8();
    sub_1BC8F8434();
    v32 = *(*(v9 + 32) + 8);
    sub_1BC8F7B84();
    OUTLINED_FUNCTION_3_27();
    v33(v31, v1);
    if (v1)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_0_32();
      if (sub_1BC8F8454() == 64)
      {
        OUTLINED_FUNCTION_1_31();
        if ((sub_1BC8F8464() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_24;
  }

  if (v28 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  OUTLINED_FUNCTION_0_32();
  sub_1BC8F8444();
LABEL_24:
  OUTLINED_FUNCTION_0_32();
  v34 = sub_1BC8F8444();
  (*(v4 + 8))(v8, v1);
  result = 1000 * v34;
  if ((v34 * 1000) >> 64 != (1000 * v34) >> 63)
  {
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

Swift::Int __swiftcall Int.init(kilobytes:)(Swift::Int kilobytes)
{
  result = 1000 * kilobytes;
  if ((kilobytes * 1000) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Int.init(megabytes:)(Swift::Int megabytes)
{
  v1 = 1000 * megabytes;
  if ((megabytes * 1000) >> 64 != (1000 * megabytes) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  megabytes *= 1000000;
  if ((v1 * 1000) >> 64 != megabytes >> 63)
  {
LABEL_5:
    __break(1u);
  }

  return megabytes;
}

uint64_t Int.description.getter(uint64_t a1)
{
  v1 = [objc_opt_self() stringFromByteCount:a1 countStyle:0];
  v2 = sub_1BC8F7C24();

  return v2;
}

uint64_t sub_1BC8DC734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v8 = v36;
  v7 = v37;
  v9 = __swift_project_boxed_opaque_existential_1(v35, v36);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v10 + 16))(v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v7 + 8);
  if ((sub_1BC8F8464() & 1) == 0 || sub_1BC8F8454() < 65)
  {
    goto LABEL_14;
  }

  v34 = 0x8000000000000000;
  if (sub_1BC8F8464())
  {
    v13 = sub_1BC8F8454();
    if (v13 < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v14 = sub_1BC8F8464();
  v13 = sub_1BC8F8454();
  if ((v14 & 1) == 0)
  {
    if (v13 >= 64)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v13 > 64)
  {
LABEL_8:
    v33 = v32;
    MEMORY[0x1EEE9AC00](v13);
    sub_1BC8B5AF8();
    sub_1BC8F8434();
    v15 = *(*(v12 + 32) + 8);
    v16 = sub_1BC8F7B84();
    result = (*(v10 + 8))(v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    if (v16)
    {
      goto LABEL_30;
    }

LABEL_14:
    v24 = *(a3 + 8);
    if (sub_1BC8F8454() <= 64 && (sub_1BC8F8454() != 64 || (sub_1BC8F8464() & 1) != 0))
    {
      goto LABEL_24;
    }

    v34 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = sub_1BC8F8464();
    v26 = sub_1BC8F8454();
    if (v25)
    {
      if (v26 <= 64)
      {
        goto LABEL_22;
      }
    }

    else if (v26 < 64)
    {
LABEL_22:
      sub_1BC8F8444();
      goto LABEL_24;
    }

    MEMORY[0x1EEE9AC00](v26);
    sub_1BC8B5AF8();
    sub_1BC8F8434();
    v27 = *(*(v12 + 32) + 8);
    v28 = sub_1BC8F7B84();
    result = (*(v10 + 8))(v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    if (v28)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_24:
    v29 = sub_1BC8F8444();
    result = (*(v10 + 8))(v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v30 = 1000 * v29;
    if ((v29 * 1000) >> 64 == (1000 * v29) >> 63)
    {
      v31 = 1000000 * v29;
      if ((v30 * 1000) >> 64 == v31 >> 63)
      {
        __swift_destroy_boxed_opaque_existential_1(v35);
        return v31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v33 = *(*(v12 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32[2] = v32;
  v19 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32[0] = v32 - v20;
  swift_getAssociatedConformanceWitness();
  v21 = sub_1BC8F8B14();
  v32[1] = v32;
  MEMORY[0x1EEE9AC00](v21);
  sub_1BC8F8A84();
  v22 = *(*(v12 + 32) + 8);
  v23 = sub_1BC8F7B84();
  result = (*(v10 + 8))(v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  if ((v23 & 1) == 0)
  {
LABEL_13:
    sub_1BC8F8444();
    goto LABEL_14;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1BC8DCCA4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1BC8DCCD4()
{
  sub_1BC8DCCA4();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

id sub_1BC8DCD2C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BC8F7BE4();

  v2 = [v0 initWithStringValue_];

  return v2;
}

id sub_1BC8DCDA0(void *a1)
{
  v2 = [a1 type];
  if (v2 == 2)
  {
    sub_1BC870714(a1);
    if (!v5)
    {
      v11 = [a1 value];
      sub_1BC8F7C24();
    }

    v12 = objc_opt_self();
    sub_1BC7D9730(0, &unk_1EBCF6900, 0x1E695CF50);
    v3 = sub_1BC8DCD2C();
    v4 = [v12 predicateForContactsMatchingPhoneNumber_];
  }

  else if (v2 == 3)
  {
    v3 = [a1 value];
    if (!v3)
    {
      sub_1BC8F7C24();
      v3 = sub_1BC8F7BE4();
    }

    v4 = [objc_opt_self() predicateForContactsMatchingEmailAddress_];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC8FC230;
    v7 = sub_1BC870714(a1);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
    }

    else
    {
      v13 = [a1 value];
      v9 = sub_1BC8F7C24();
      v10 = v14;
    }

    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    v15 = objc_opt_self();
    v3 = sub_1BC8F7E34();

    v4 = [v15 predicateForContactsMatchingHandleStrings_];
  }

  v16 = v4;

  return v16;
}

uint64_t sub_1BC8DCF90(uint64_t a1)
{
  sub_1BC7D9730(0, &qword_1EDC1DD30, 0x1E69D8C00);
  v2 = sub_1BC8F7AD4();
  v3 = 0;
  v72 = a1 & 0xC000000000000001;
  v75 = sub_1BC7C0454(a1);
  v70 = a1 & 0xFFFFFFFFFFFFFF8;
  v71 = a1;
  while (v75 != v3)
  {
    if (v72)
    {
      v4 = MEMORY[0x1BFB29A00](v3, v71);
    }

    else
    {
      if (v3 >= *(v70 + 16))
      {
        goto LABEL_44;
      }

      v4 = *(v71 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
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
      goto LABEL_50;
    }

    v6 = sub_1BC870714(v4);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
    }

    else
    {
      v10 = [v5 value];
      v8 = sub_1BC8F7C24();
      v9 = v11;
    }

    v12 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1BC803CBC(v8, v9);
    v13 = v2[2];
    OUTLINED_FUNCTION_3_28();
    if (__OFADD__(v16, v17))
    {
      goto LABEL_45;
    }

    v18 = v14;
    v19 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6930, &qword_1BC909D58);
    if (sub_1BC8F8734())
    {
      v20 = sub_1BC803CBC(v8, v9);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_50;
      }

      v18 = v20;
    }

    if (v19)
    {

      v22 = v2[7];
      v23 = *(v22 + 8 * v18);
      *(v22 + 8 * v18) = v12;
    }

    else
    {
      OUTLINED_FUNCTION_37_10(&v2[v18 >> 6]);
      v24 = (v2[6] + 16 * v18);
      *v24 = v8;
      v24[1] = v9;
      *(v2[7] + 8 * v18) = v12;

      v25 = v2[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_46;
      }

      v2[2] = v27;
    }

    ++v3;
  }

  v29 = sub_1BC8B47F0(v28);
  v30 = sub_1BC8DD430(v29);
  if (v68)
  {
  }

  else
  {
    v32 = v30;

    v33 = 0;
    v35 = v32 + 64;
    v34 = *(v32 + 64);
    v36 = *(v32 + 32);
    OUTLINED_FUNCTION_45_0();
    v39 = v38 & v37;
    v41 = (v40 + 63) >> 6;
    v73 = MEMORY[0x1E69E7CC8];
    v76 = v32;
LABEL_23:
    if (v39)
    {
      v42 = v39;
      goto LABEL_29;
    }

    while (1)
    {
      v43 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_47;
      }

      if (v43 >= v41)
      {
        break;
      }

      v42 = *(v35 + 8 * v43);
      ++v33;
      if (v42)
      {
        v33 = v43;
LABEL_29:
        v39 = (v42 - 1) & v42;
        if (!v2[2])
        {
          goto LABEL_23;
        }

        v44 = __clz(__rbit64(v42)) | (v33 << 6);
        v45 = *(*(v32 + 56) + 8 * v44);
        v46 = (*(v32 + 48) + 16 * v44);
        v47 = *v46;
        v48 = v46[1];

        v49 = sub_1BC803CBC(v47, v48);
        v51 = v50;

        if ((v51 & 1) == 0)
        {
          goto LABEL_31;
        }

        v52 = *(v2[7] + 8 * v49);
        swift_isUniquelyReferenced_nonNull_native();
        v77 = v73;
        v69 = v52;
        sub_1BC83CAA8();
        v53 = *(v73 + 16);
        v74 = v54;
        OUTLINED_FUNCTION_3_28();
        if (__OFADD__(v56, v57))
        {
          goto LABEL_48;
        }

        v58 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6938, &unk_1BC909D60);
        if (sub_1BC8F8734())
        {
          v59 = v69;
          v60 = sub_1BC83CAA8();
          v62 = v74;
          if ((v74 & 1) == (v61 & 1))
          {
            v58 = v60;
            goto LABEL_38;
          }

          while (1)
          {
LABEL_50:
            sub_1BC8F8B44();
            __break(1u);
          }
        }

        v59 = v69;
        v62 = v74;
LABEL_38:
        v73 = v77;
        if ((v62 & 1) == 0)
        {
          OUTLINED_FUNCTION_37_10(v77 + 8 * (v58 >> 6));
          *(v65[6] + 8 * v58) = v59;
          *(v65[7] + 8 * v58) = v45;
          v66 = v65[2];
          v26 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (!v26)
          {
            v65[2] = v67;
            goto LABEL_32;
          }

          goto LABEL_49;
        }

        v63 = *(v77 + 56);
        v64 = *(v63 + 8 * v58);
        *(v63 + 8 * v58) = v45;

LABEL_31:

LABEL_32:
        v32 = v76;
        goto LABEL_23;
      }
    }

    return v73;
  }
}

uint64_t sub_1BC8DD430(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v2 = v1;
    sub_1BC7D9730(0, &qword_1EDC1DDE0, 0x1E695CD78);

    v3 = sub_1BC8DDEA4();
    v4 = objc_opt_self();
    v5 = sub_1BC8F7E34();
    v6 = [v4 predicateForContactsMatchingHandleStrings_];

    [v3 setPredicate_];
    if (qword_1EDC20728 != -1)
    {
      swift_once();
    }

    v7 = sub_1BC8F7734();
    __swift_project_value_buffer(v7, qword_1EDC2B3A8);
    v8 = v3;
    v9 = sub_1BC8F7714();
    v10 = sub_1BC8F8204();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138477827;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1BC7A3000, v9, v10, "Executing contact fetch request %{private}@", v11, 0xCu);
      sub_1BC8504B8(v12);
      MEMORY[0x1BFB2AA50](v12, -1, -1);
      MEMORY[0x1BFB2AA50](v11, -1, -1);
    }

    v23[0] = 0;
    v14 = [v2 executeFetchRequest:v8 error:v23];
    v15 = v23[0];
    if (v14)
    {
      v16 = v14;
      v17 = v23[0];
      v23[0] = [v16 value];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6910, &qword_1BC909D40);
      if (swift_dynamicCast())
      {

        v15 = v22;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E00, &qword_1BC9041D8);
        v15 = sub_1BC8F7AD4();
      }
    }

    else
    {
      v20 = v23[0];
      sub_1BC8F6EA4();

      swift_willThrow();
    }

    v21 = *MEMORY[0x1E69E9840];
    return v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E00, &qword_1BC9041D8);
    result = sub_1BC8F7AD4();
    v19 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1BC8DD798(uint64_t a1, uint64_t a2)
{
  v112 = a2;
  v3 = sub_1BC8F73D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v111 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v126 = &v110 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v110 - v10;
  v12 = sub_1BC8F7AD4();
  v14 = a1 + 56;
  v13 = *(a1 + 56);
  v15 = *(a1 + 32);
  OUTLINED_FUNCTION_45_0();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v119 = v4 + 8;
  v121 = v4;
  v114 = v4 + 40;
  v115 = v4 + 32;
  v123 = a1;

  v21 = v20;
  v22 = 0;
  v116 = v21;
  v117 = a1 + 56;
  v122 = v3;
  v120 = v4 + 16;
  v118 = v11;
  if (v18)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_2:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v23 >= v21)
    {

      v51 = sub_1BC8B47F0(v50);
      v52 = v113;
      v53 = sub_1BC8DD430(v51);
      if (v52)
      {
      }

      v55 = v53;
      v124 = 0;

      v56 = 0;
      v58 = v55 + 64;
      v57 = *(v55 + 8);
      v59 = v55[32];
      OUTLINED_FUNCTION_45_0();
      v62 = v61 & v60;
      v64 = (v63 + 63) >> 6;
      v125 = MEMORY[0x1E69E7CC8];
      v126 = v55;
      while (v62)
      {
        v65 = v62;
LABEL_28:
        v62 = (v65 - 1) & v65;
        if (v12[2])
        {
          v67 = __clz(__rbit64(v65)) | (v56 << 6);
          v68 = *(v55 + 6);
          v69 = *(*(v55 + 7) + 8 * v67);
          v70 = (v68 + 16 * v67);
          v71 = *v70;
          v72 = v70[1];

          v73 = sub_1BC803CBC(v71, v72);
          v75 = v74;

          if (v75)
          {
            (*(v121 + 16))(v111, v12[7] + *(v121 + 72) * v73, v122);
            sub_1BC8F73A4();
            if (v76)
            {

              v77 = v125;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              OUTLINED_FUNCTION_2_31(isUniquelyReferenced_nonNull_native);
              v79 = v77[2];
              LODWORD(v125) = v80;
              OUTLINED_FUNCTION_3_28();
              if (__OFADD__(v82, v83))
              {
                goto LABEL_59;
              }

              v84 = v81;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6920, &qword_1BC909D50);
              if (OUTLINED_FUNCTION_8_29())
              {
                v85 = v123;
                sub_1BC803CBC(v118, v123);
                OUTLINED_FUNCTION_5_27();
                if (!v88)
                {
                  goto LABEL_62;
                }

                v84 = v86;
              }

              else
              {
                v85 = v123;
                v87 = v125;
              }

              if (v87)
              {

                OUTLINED_FUNCTION_4_17();
              }

              else
              {
                OUTLINED_FUNCTION_37_10(&v127[v84 >> 6]);
                v90 = (v89[6] + 16 * v84);
                *v90 = v118;
                v90[1] = v85;
                *(v89[7] + 8 * v84) = v69;
                v91 = v89[2];
                v48 = __OFADD__(v91, 1);
                v92 = v91 + 1;
                if (v48)
                {
                  goto LABEL_61;
                }

                v125 = v89;
                v89[2] = v92;
              }
            }

            sub_1BC8F73C4();
            v93 = v125;
            v94 = swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_2_31(v94);
            v95 = v93[2];
            LODWORD(v125) = v96;
            OUTLINED_FUNCTION_3_28();
            if (__OFADD__(v98, v99))
            {
              goto LABEL_58;
            }

            v100 = v97;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6920, &qword_1BC909D50);
            if (OUTLINED_FUNCTION_8_29())
            {
              sub_1BC803CBC(v118, v123);
              OUTLINED_FUNCTION_5_27();
              if (!v88)
              {
                goto LABEL_62;
              }

              v100 = v101;
            }

            else
            {
              v102 = v125;
            }

            if (v102)
            {

              OUTLINED_FUNCTION_4_17();
              OUTLINED_FUNCTION_6_24();
              v103(v111, v122);
            }

            else
            {
              v104 = v127;
              OUTLINED_FUNCTION_37_10(&v127[v100 >> 6]);
              v105 = (v104[6] + 16 * v100);
              v106 = v123;
              *v105 = v118;
              v105[1] = v106;
              *(v104[7] + 8 * v100) = v69;
              OUTLINED_FUNCTION_6_24();
              v107(v111);
              v108 = v104[2];
              v48 = __OFADD__(v108, 1);
              v109 = v108 + 1;
              if (v48)
              {
                goto LABEL_60;
              }

              v125 = v104;
              v104[2] = v109;
            }
          }

          else
          {
          }

          v55 = v126;
        }
      }

      while (1)
      {
        v66 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_55;
        }

        if (v66 >= v64)
        {

          return v125;
        }

        v65 = *&v58[8 * v66];
        ++v56;
        if (v65)
        {
          v56 = v66;
          goto LABEL_28;
        }
      }
    }

    v18 = *(v14 + 8 * v23);
    ++v22;
  }

  while (!v18);
  v22 = v23;
LABEL_6:
  while (1)
  {
    v24 = v12;
    v25 = *(v123 + 48);
    v125 = *(v121 + 72);
    v26 = *(v121 + 16);
    v26(v11, v25 + v125 * (__clz(__rbit64(v18)) | (v22 << 6)), v3);
    v27 = sub_1BC8F73A4();
    if (v28)
    {
      v29 = v28;
      v30 = v27;
    }

    else
    {
      v30 = sub_1BC8F73C4();
      v29 = v31;
    }

    v26(v126, v11, v3);
    swift_isUniquelyReferenced_nonNull_native();
    v127 = v24;
    v124 = v30;
    sub_1BC803CBC(v30, v29);
    v32 = v24[2];
    OUTLINED_FUNCTION_3_28();
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v3 = v33;
    v37 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6918, &qword_1BC909D48);
    if (sub_1BC8F8734())
    {
      v38 = sub_1BC803CBC(v124, v29);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_62;
      }

      v3 = v38;
    }

    v11 = v118;
    if (v37)
    {

      v12 = v127;
      v40 = v127[7];
      OUTLINED_FUNCTION_7_22();
      v41();
      OUTLINED_FUNCTION_6_24();
      v42(v11, v3);
    }

    else
    {
      v12 = v127;
      OUTLINED_FUNCTION_37_10(&v127[v3 >> 6]);
      v43 = (v12[6] + 16 * v3);
      *v43 = v124;
      v43[1] = v29;
      v44 = v12[7];
      OUTLINED_FUNCTION_7_22();
      v45();
      OUTLINED_FUNCTION_6_24();
      v46(v11, v3);
      v47 = v12[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_57;
      }

      v12[2] = v49;
    }

    v18 &= v18 - 1;
    v21 = v116;
    v14 = v117;
    if (!v18)
    {
      goto LABEL_2;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = sub_1BC8F8B44();
  __break(1u);
  return result;
}

id sub_1BC8DDEA4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF60A0, &qword_1BC905378);
  v1 = sub_1BC8F7E34();

  v2 = [v0 initWithKeysToFetch_];

  return v2;
}

id sub_1BC8DDF28(uint64_t a1, SEL *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v3 = [v2 *a2];
  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

id sub_1BC8DDFE0(void *a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  sub_1BC7D9730(0, &qword_1EDC1DDE0, 0x1E695CD78);
  v4 = sub_1BC8DDEA4();
  v5 = sub_1BC8DCDA0(a1);
  [v4 setPredicate_];

  v13[0] = 0;
  v6 = [v2 countForFetchRequest:v4 error:v13];
  if (v6)
  {
    v7 = v6;
    v8 = v13[0];
    v9 = [v7 value];

    v10 = [v9 integerValue];
  }

  else
  {
    v10 = v13[0];
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1BC8DE294(void *a1)
{
  v1 = [a1 currentHistoryToken];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BC8F70D4();

  return v3;
}

void sub_1BC8DE31C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BC8F7014();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v4);
  v6 = 0;
  if (EnumTagSinglePayload != 1)
  {
    v7 = sub_1BC8F6F44();
    (*(*(v4 - 8) + 8))(a1, v4);
    v6 = v7;
  }

  v8 = v6;
  [v2 setOutputURL_];
}

id sub_1BC8DE400()
{
  v1 = [v0 error];

  return v1;
}

void sub_1BC8DE494(void *a1)
{
  [v1 setOutputFileType_];
}

uint64_t sub_1BC8DE500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5();
  v13 = swift_task_alloc();
  *(v12 + 24) = v13;
  *v13 = v12;
  v13[1] = sub_1BC8DE5A8;
  v19 = *(v12 + 16);

  return sub_1BC8DE690(0, 0, sub_1BC8DE690, v14, v15, v16, v17, v18, a9, a10, a11, a12);
}

uint64_t sub_1BC8DE5A8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 24);
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1BC8DE690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13[2] = v13;
  v13[3] = sub_1BC8DE7A0;
  v14 = swift_continuation_init();
  v13[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DE8, &qword_1BC9041C8);
  v13[10] = MEMORY[0x1E69E9820];
  v13[11] = 1107296256;
  v13[12] = sub_1BC860308;
  v13[13] = &block_descriptor_10;
  v13[14] = v14;
  [v12 exportAsynchronouslyWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v13 + 2, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1BC8DE7A0()
{
  OUTLINED_FUNCTION_5();
  v5 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BC8DE884@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for FaceTimeMessageStore_Summary() + 24);
  return sub_1BC8F7424();
}

uint64_t sub_1BC8DE8C4()
{
  v0 = sub_1BC8F7614();
  __swift_allocate_value_buffer(v0, qword_1EBD068D8);
  __swift_project_value_buffer(v0, qword_1EBD068D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67E8, &qword_1BC9090E8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67F0, &unk_1BC9090F0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC8FEAA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1BC8F75F4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1BC8F7604();
}

uint64_t sub_1BC8DEA8C()
{
  while (1)
  {
    result = sub_1BC8F74A4();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1BC8F74F4();
    }

    else if (result == 1)
    {
      sub_1BC8F74B4();
    }
  }

  return result;
}

uint64_t sub_1BC8DEB10()
{
  if (!*v0 || (result = sub_1BC8F7594(), !v1))
  {
    v3 = *(v0 + 16);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_1BC8F75B4(), !v1))
    {
      v5 = v0 + *(type metadata accessor for FaceTimeMessageStore_Summary() + 24);
      return sub_1BC8F7414();
    }
  }

  return result;
}

uint64_t sub_1BC8DEBDC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 && (sub_1BC8F8AA4() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for FaceTimeMessageStore_Summary() + 24);
  sub_1BC8F7434();
  sub_1BC8DF0B8(&qword_1EBCF4F18, MEMORY[0x1E69AAC08]);
  return sub_1BC8F7BC4() & 1;
}

uint64_t sub_1BC8DECAC()
{
  sub_1BC8F8C04();
  type metadata accessor for FaceTimeMessageStore_Summary();
  sub_1BC8DF0B8(&qword_1EBCF6948, type metadata accessor for FaceTimeMessageStore_Summary);
  sub_1BC8F7B64();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8DED84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8DF0B8(&qword_1EBCF6958, type metadata accessor for FaceTimeMessageStore_Summary);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1BC8DEE00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBCF47A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7614();
  v3 = __swift_project_value_buffer(v2, qword_1EBD068D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BC8DEEA8(uint64_t a1)
{
  v2 = sub_1BC8DF0B8(&qword_1EBCF5B58, type metadata accessor for FaceTimeMessageStore_Summary);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1BC8DEF18()
{
  sub_1BC8DF0B8(&qword_1EBCF5B58, type metadata accessor for FaceTimeMessageStore_Summary);

  return sub_1BC8F7584();
}

uint64_t sub_1BC8DF0B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC8DF128()
{
  result = sub_1BC8F7434();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BC8DF1AC(char a1)
{
  if (((1 << a1) & 0x1F) != 0)
  {
    return 0xD000000000000027;
  }

  if (((1 << a1) & 0xE0) != 0)
  {
    return 0xD000000000000025;
  }

  v2 = sub_1BC8DF268(a1);
  MEMORY[0x1BFB29120](v2);

  return 0xD000000000000016;
}

unint64_t sub_1BC8DF268(char a1)
{
  result = 7173740;
  switch(a1)
  {
    case 1:
      v3 = 1701602660;
      goto LABEL_9;
    case 2:
      result = 1684104562;
      break;
    case 3:
      v3 = 1633972341;
LABEL_9:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      result = 0x7246657461647075;
      break;
    case 5:
      return result;
    case 6:
      result = 7173750;
      break;
    case 7:
      result = 28022;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 6579297;
      break;
  }

  return result;
}

uint64_t sub_1BC8DF360()
{
  *(v0 + 24) = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6960, &qword_1BC90A0F8);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_1BC8F78A4();
  swift_allocObject();
  swift_weakInit();

  sub_1BC8F7864();

  return v0;
}

uint64_t sub_1BC8DF424()
{
  if (qword_1EDC20720 != -1)
  {
    swift_once();
  }

  v0 = sub_1BC8F7734();
  __swift_project_value_buffer(v0, qword_1EDC2B390);
  v1 = sub_1BC8F7714();
  v2 = sub_1BC8F8204();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BC7A3000, v1, v2, "Server disconnected", v3, 2u);
    MEMORY[0x1BFB2AA50](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    atomic_store(0, (result + 24));
  }

  return result;
}

uint64_t sub_1BC8DF534()
{
  OUTLINED_FUNCTION_5();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1BC8F7014();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8DF5F0, 0, 0);
}

uint64_t sub_1BC8DF5F0()
{
  v34 = v0;
  if (qword_1EDC20720 != -1)
  {
    swift_once();
  }

  v1 = sub_1BC8F7734();
  __swift_project_value_buffer(v1, qword_1EDC2B390);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v33 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1BC7A9A4C(0xD000000000000014, 0x80000001BC90E5E0, &v33);
    _os_log_impl(&dword_1BC7A3000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
    MEMORY[0x1BFB2AA50](v4, -1, -1);
  }

  v6 = v0[5];
  v7 = sub_1BC8F6CB4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1BC8F6CA4();
  v10 = type metadata accessor for OutgoingVideoMessage();
  sub_1BC8DFB4C();
  v11 = sub_1BC8F6C94();
  v0[10] = v11;
  v0[11] = v12;
  v13 = v11;
  v14 = v12;
  v16 = v0[8];
  v15 = v0[9];
  v18 = v0[6];
  v17 = v0[7];
  v19 = v0[5];

  (*(v16 + 16))(v15, v19 + *(v10 + 32), v17);
  v20 = objc_allocWithZone(type metadata accessor for SandboxExtendedURL());
  v21 = SandboxExtendedURL.init(url:)(v15);
  v0[12] = v21;
  v22 = *(v18 + 16);
  v0[2] = v13;
  v0[3] = v14;
  v0[4] = v21;
  sub_1BC7EC5DC(v13, v14);
  v23 = *(MEMORY[0x1E69937F0] + 4);
  v24 = v21;
  v25 = swift_task_alloc();
  v0[13] = v25;
  v26 = sub_1BC8DFBA4();
  *v25 = v0;
  v25[1] = sub_1BC8DF8E4;

  return MEMORY[0x1EEDF2E08](v0 + 2, &type metadata for SendVideoMessage, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_1BC8DF8E4()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  v2[14] = v0;

  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  sub_1BC7D4C94(v4, v5);

  if (v0)
  {
    v7 = sub_1BC8DFA84;
  }

  else
  {
    v7 = sub_1BC8DFA04;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BC8DFA04()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  sub_1BC7D4C94(v2, v1);

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_1BC8DFA84()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[12];
  sub_1BC7D4C94(v0[10], v0[11]);

  v2 = v0[14];
  v3 = v0[9];

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_1BC8DFAF0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

unint64_t sub_1BC8DFB4C()
{
  result = qword_1EBCF5720;
  if (!qword_1EBCF5720)
  {
    type metadata accessor for OutgoingVideoMessage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5720);
  }

  return result;
}

unint64_t sub_1BC8DFBA4()
{
  result = qword_1EDC1FA18;
  if (!qword_1EDC1FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FA18);
  }

  return result;
}

uint64_t sub_1BC8DFC10()
{
  v0 = sub_1BC8F7794();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BC8F7764();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1BC8F7754();
  sub_1BC8F7744();
  if (sub_1BC8F7774())
  {
    (*(v1 + 8))(v4, v0);

    v8 = 1;
  }

  else
  {
    v8 = sub_1BC8F7784();

    (*(v1 + 8))(v4, v0);
  }

  return v8 & 1;
}

uint64_t sub_1BC8DFD48(uint64_t a1)
{
  v43 = sub_1BC8F73D4();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v34[1] = v1;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1BC7AD404();
    v8 = v47;
    v11 = sub_1BC83053C(a1);
    result = v8;
    v12 = 0;
    v13 = a1 + 56;
    v39 = v3 + 8;
    v40 = v3 + 16;
    v35 = a1 + 64;
    v36 = v6;
    v37 = v3;
    v38 = a1;
    v41 = a1 + 56;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(a1 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_25;
        }

        v46 = v10;
        v44 = v12;
        v45 = v9;
        v15 = v42;
        v16 = v43;
        v17 = result;
        (*(v3 + 16))(v42, *(a1 + 48) + *(v3 + 72) * v11, v43);
        v18 = sub_1BC8F7394();
        v20 = v19;
        (*(v3 + 8))(v15, v16);
        result = v17;
        v47 = v17;
        v21 = *(v17 + 16);
        if (v21 >= *(v17 + 24) >> 1)
        {
          sub_1BC7AD404();
          result = v47;
        }

        *(result + 16) = v21 + 1;
        v22 = result + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v20;
        v13 = v41;
        if (v46)
        {
          goto LABEL_29;
        }

        v3 = v37;
        a1 = v38;
        v23 = 1 << *(v38 + 32);
        if (v11 >= v23)
        {
          goto LABEL_26;
        }

        v24 = *(v41 + 8 * v14);
        if ((v24 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v38 + 36) != v45)
        {
          goto LABEL_28;
        }

        v25 = v24 & (-2 << (v11 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
          v26 = v36;
        }

        else
        {
          v27 = v14 << 6;
          v28 = v14 + 1;
          v26 = v36;
          v29 = (v35 + 8 * v14);
          while (v28 < (v23 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              v32 = result;
              sub_1BC7FBED8(v11, v45, 0);
              result = v32;
              v23 = __clz(__rbit64(v30)) + v27;
              goto LABEL_19;
            }
          }

          v33 = result;
          sub_1BC7FBED8(v11, v45, 0);
          result = v33;
        }

LABEL_19:
        v12 = v44 + 1;
        if (v44 + 1 == v26)
        {
          return result;
        }

        v10 = 0;
        v9 = *(a1 + 36);
        v11 = v23;
        if (v23 < 0)
        {
          break;
        }
      }
    }

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
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC8E0074(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1BC8F8504();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t Person.description.getter()
{
  v43[23] = *MEMORY[0x1E69E9840];
  v1 = sub_1BC8F7C64();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v8 = v0[2];
  v7 = v0[3];
  v9 = sub_1BC8E0074(v8);
  if (v9)
  {
    v10 = v9;
    v43[0] = MEMORY[0x1E69E7CC0];
    v11 = v9 & ~(v9 >> 63);

    sub_1BC7DD9E4(0, v11, 0);
    if (v10 < 0)
    {
      goto LABEL_22;
    }

    v39 = v6;
    v40 = v5;
    v41 = v7;
    v42 = v4;
    v12 = 0;
    v13 = v43[0];
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1BFB29A00](v12, v8);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
        }

        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v14 = *(v8 + 8 * v12 + 32);
      }

      v15 = v14;
      sub_1BC8E15CC(v14);
      v17 = v16;

      v43[0] = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        sub_1BC7DD9E4(v18 > 1, v19 + 1, 1);
        v13 = v43[0];
      }

      ++v12;
      v13[2] = v19 + 1;
      v13[v19 + 4] = v17;
      if (v10 == v12)
      {
        v7 = v41;
        v5 = v40;
        v6 = v39;
        goto LABEL_14;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55B0, &qword_1BC90A130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FE840;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v21 = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  *(inited + 72) = v21;
  *(inited + 80) = 0x73746361746E6F63;
  *(inited + 88) = 0xE800000000000000;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55B8, &qword_1BC900668);
  *(inited + 96) = v13;
  *(inited + 120) = v22;
  *(inited + 128) = 0x73656C646E6168;
  *(inited + 136) = 0xE700000000000000;
  v23 = sub_1BC8DFD48(v7);
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  *(inited + 144) = v23;
  v24 = sub_1BC8F7AD4();
  v25 = objc_opt_self();
  v43[0] = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5030, &unk_1BC8FC7D0);
  v26 = sub_1BC8F8B24();
  v43[0] = 0;
  v27 = [v25 dataWithJSONObject:v26 options:1 error:v43];
  swift_unknownObjectRelease();
  v28 = v43[0];
  if (!v27)
  {
    v35 = v28;
    v36 = sub_1BC8F6EA4();

    swift_willThrow();
    goto LABEL_18;
  }

  v29 = sub_1BC8F70D4();
  v31 = v30;

  sub_1BC8F7C54();
  v32 = sub_1BC8F7C34();
  v34 = v33;
  sub_1BC7D4C94(v29, v31);
  if (!v34)
  {
LABEL_18:

    v32 = 32123;
    goto LABEL_19;
  }

LABEL_19:
  v37 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t sub_1BC8E04AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BC83053C(a1);
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_1BC8E2298(result, v5, a1, a2);
    v7 = 0;
  }

  v8 = sub_1BC8F73D4();

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

double sub_1BC8E0544@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1BC7A792C(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t Person.init(contacts:handles:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56B8, &unk_1BC900B80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - v8;
  if (sub_1BC8E0074(a1))
  {
    v10 = sub_1BC8E0074(a1);
    v11 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
LABEL_12:
      v31 = v11;

      sub_1BC7F8024(&v31);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
      sub_1BC7ADBA4();
      v22 = sub_1BC8F7B74();
      v24 = v23;

LABEL_17:
      *a3 = v22;
      a3[1] = v24;
      a3[2] = a1;
      a3[3] = a2;
      return result;
    }

    v12 = v10;
    v31 = MEMORY[0x1E69E7CC0];

    sub_1BC7AD404();
    if ((v12 & 0x8000000000000000) == 0)
    {
      v29 = a3;
      v30 = a2;
      v13 = 0;
      v11 = v31;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1BFB29A00](v13, a1);
        }

        else
        {
          v14 = *(a1 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = [v15 identifier];
        v17 = sub_1BC8F7C24();
        v19 = v18;

        v31 = v11;
        v20 = *(v11 + 16);
        if (v20 >= *(v11 + 24) >> 1)
        {
          sub_1BC7AD404();
          v11 = v31;
        }

        ++v13;
        *(v11 + 16) = v20 + 1;
        v21 = v11 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v19;
      }

      while (v12 != v13);

      a3 = v29;
      a2 = v30;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {

    sub_1BC8E04AC(v26, v9);

    v12 = sub_1BC8F73D4();
    if (__swift_getEnumTagSinglePayload(v9, 1, v12) != 1)
    {
      sub_1BC8F73A4();
      if (!v27)
      {
        sub_1BC8F73C4();
      }

      v22 = sub_1BC8F7C84();
      v24 = v28;

      result = (*(*(v12 - 8) + 8))(v9, v12);
      goto LABEL_17;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t Person.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1BC8E087C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (OUTLINED_FUNCTION_0_4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_0_4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BC8E0970(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x73746361746E6F63;
  }

  return 0x73656C646E6168;
}

uint64_t sub_1BC8E09D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8E087C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8E0A08(uint64_t a1)
{
  v2 = sub_1BC8E1EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8E0A44(uint64_t a1)
{
  v2 = sub_1BC8E1EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Person.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6968, &qword_1BC90A138);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8E1EB4();
  sub_1BC8F8C84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6978, &unk_1BC90A140);
  v39 = 1;
  sub_1BC8E1FD4(&qword_1EBCF6980, sub_1BC872C5C);
  OUTLINED_FUNCTION_2_32();
  v14 = v40;
  LOBYTE(v40) = 0;
  v15 = sub_1BC8F88A4();
  v17 = v16;
  v35 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F50, &qword_1BC8FC6F8);
  v39 = 2;
  sub_1BC8E1F08(&qword_1EBCF6988, &qword_1EBCF6990);
  result = OUTLINED_FUNCTION_2_32();
  v31 = v17;
  v32 = v8;
  v33 = v5;
  v19 = 0;
  v30 = v40;
  v34 = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  v37 = *(v14 + 16);
  v38 = v14;
  v20 = v14 + 40;
  v29[0] = v14 + 40;
  v29[1] = 0;
  v36 = a1;
LABEL_4:
  v21 = (v20 + 16 * v19);
  while (1)
  {
    if (v37 == v19)
    {
      (*(v32 + 8))(v12, v33);

      v26 = v34;
      v28 = v30;
      v27 = v31;
      *a2 = v35;
      a2[1] = v27;
      a2[2] = v26;
      a2[3] = v28;

      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v19 >= *(v38 + 16))
    {
      break;
    }

    v22 = a2;
    v23 = *(v21 - 1);
    v24 = *v21;
    sub_1BC7D9730(0, &qword_1EBCF5548, 0x1E696ACD0);
    sub_1BC7D9730(0, &qword_1EBCF4FB0, 0x1E695CD58);
    sub_1BC7EC5DC(v23, v24);
    v25 = sub_1BC8F8214();
    ++v19;
    v21 += 2;
    result = sub_1BC7D4C94(v23, v24);
    a2 = v22;
    a1 = v36;
    if (v25)
    {
      MEMORY[0x1BFB29230](result);
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BC8F7E94();
      }

      result = sub_1BC8F7ED4();
      v34 = v40;
      v20 = v29[0];
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t Person.encode(to:)(void *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6998, &qword_1BC90A150);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v36 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[3];
  v43 = v1[2];
  v41 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8E1EB4();
  sub_1BC8F8CA4();
  LOBYTE(v45) = 0;
  v15 = v42;
  sub_1BC8F89A4();
  if (!v15)
  {
    v45 = v41;
    LOBYTE(v44) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F50, &qword_1BC8FC6F8);
    sub_1BC8E1F08(&qword_1EBCF69A0, &qword_1EBCF69A8);
    OUTLINED_FUNCTION_3_29();
    v18 = v43;
    v19 = sub_1BC8E0074(v43);
    v20 = MEMORY[0x1E69E7CC0];
    if (!v19)
    {
      goto LABEL_19;
    }

    v21 = v19;
    v36[1] = 0;
    v37 = v6;
    v38 = v10;
    v39 = v3;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDE5C(0, v19 & ~(v19 >> 63), 0);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = v21;
      v20 = v45;
      v23 = 0;
      v41 = objc_opt_self();
      v42 = v18 & 0xC000000000000001;
      v40 = v18 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v42)
        {
          v25 = MEMORY[0x1BFB29A00](v23, v18);
        }

        else
        {
          if (v23 >= *(v40 + 16))
          {
            goto LABEL_21;
          }

          v25 = *(v18 + 8 * v23 + 32);
        }

        v26 = v25;
        v44 = 0;
        v27 = [v41 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v44];
        v28 = v44;
        if (!v27)
        {
          v35 = v28;
          sub_1BC8F6EA4();

          swift_willThrow();
          (*(v37 + 8))(v38, v39);

          goto LABEL_4;
        }

        v29 = sub_1BC8F70D4();
        v31 = v30;

        v45 = v20;
        v33 = v20[2];
        v32 = v20[3];
        if (v33 >= v32 >> 1)
        {
          sub_1BC7DDE5C((v32 > 1), v33 + 1, 1);
          v20 = v45;
        }

        v20[2] = v33 + 1;
        v34 = &v20[2 * v33];
        v34[4] = v29;
        v34[5] = v31;
        ++v23;
        v18 = v43;
        if (v24 == v22)
        {
          v10 = v38;
          v3 = v39;
          v6 = v37;
LABEL_19:
          v45 = v20;
          LOBYTE(v44) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6978, &unk_1BC90A140);
          sub_1BC8E1FD4(&qword_1EBCF69B0, sub_1BC872CB0);
          OUTLINED_FUNCTION_3_29();
          (*(v6 + 8))(v10, v3);

          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
  }

  result = (*(v6 + 8))(v10, v3);
LABEL_4:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void Person.hash(into:)()
{
  v1 = sub_1BC8F73D4();
  v2 = OUTLINED_FUNCTION_0(v1);
  v28 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v27 = v26 - v9;
  v10 = *(v0 + 16);
  v29 = *(v0 + 24);
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    v16 = v29 + 56;
    v17 = 1 << *(v29 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v29 + 56);
    v20 = (v17 + 63) >> 6;
    v26[1] = v28 + 32;
    v26[2] = v28 + 16;
    v26[0] = v28 + 8;

    v21 = 0;
    if (v19)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        return;
      }

      v19 = *(v16 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        do
        {
LABEL_18:
          v23 = v28;
          v24 = v27;
          (*(v28 + 16))(v27, *(v29 + 48) + *(v28 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v1);
          (*(v23 + 32))(v8, v24, v1);
          sub_1BC8F73A4();
          if (!v25)
          {
            sub_1BC8F73C4();
          }

          sub_1BC8F7C84();

          v19 &= v19 - 1;
          sub_1BC8F7CD4();

          (*v26[0])(v8, v1);
        }

        while (v19);
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v11 = sub_1BC8F8504();
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v11 < 1)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v12 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB29A00](v12, v10);
    }

    else
    {
      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    ++v12;
    v15 = [v13 identifier];
    sub_1BC8F7C24();

    sub_1BC8F7CD4();
  }

  while (v11 != v12);
}

void sub_1BC8E15CC(void *a1)
{
  v2 = sub_1BC8F6CE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 givenName];
  v8 = sub_1BC8F7C24();
  v10 = v9;

  v63 = v8;
  v64 = v10;
  MEMORY[0x1BFB29120](32, 0xE100000000000000);
  v11 = [a1 familyName];
  v12 = sub_1BC8F7C24();
  v14 = v13;

  MEMORY[0x1BFB29120](v12, v14);

  sub_1BC8F6CC4();
  sub_1BC7B7A9C();
  v15 = sub_1BC8F8414();
  v55 = v16;
  (*(v3 + 8))(v6, v2);

  v57 = a1;
  v17 = [a1 phoneNumbers];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6500, &qword_1BC907690);
  v19 = sub_1BC8F7E54();

  v20 = sub_1BC8E0074(v19);
  v21 = MEMORY[0x1E69E7CC0];
  v56 = v15;
  if (v20)
  {
    v22 = v20;
    v63 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDE7C(0, v20 & ~(v20 >> 63), 0);
    if ((v22 & 0x8000000000000000) == 0)
    {
      v54[1] = v18;
      v23 = 0;
      v24 = v63;
      v59 = v19;
      v60 = v19 & 0xC000000000000001;
      v58 = v19 & 0xFFFFFFFFFFFFFF8;
      v25 = v22;
      while (1)
      {
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v60)
        {
          v27 = MEMORY[0x1BFB29A00](v23, v19);
        }

        else
        {
          if (v23 >= *(v58 + 16))
          {
            goto LABEL_25;
          }

          v27 = *(v19 + 8 * v23 + 32);
        }

        v28 = v27;
        v61 = v27;
        sub_1BC8E1B44(&v61, &v62);

        v29 = v62;
        v63 = v24;
        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1BC7DDE7C(v30 > 1, v31 + 1, 1);
          v24 = v63;
        }

        *(v24 + 16) = v31 + 1;
        *(v24 + 8 * v31 + 32) = v29;
        ++v23;
        v19 = v59;
        if (v26 == v25)
        {

          v21 = MEMORY[0x1E69E7CC0];
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v32 = [v57 emailAddresses];
  v33 = sub_1BC8F7E54();

  v34 = sub_1BC8E0074(v33);
  if (!v34)
  {
LABEL_23:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55B0, &qword_1BC90A130);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC8FC240;
    *(inited + 32) = 0x696669746E656469;
    *(inited + 40) = 0xEA00000000007265;
    v46 = [v57 identifier];
    v47 = sub_1BC8F7C24();
    v49 = v48;

    *(inited + 48) = v47;
    *(inited + 56) = v49;
    v50 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 80) = 1701667182;
    v51 = v55;
    v52 = v56;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v52;
    *(inited + 104) = v51;
    *(inited + 120) = v50;
    strcpy((inited + 128), "phoneNumbers");
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF69D8, &qword_1BC90A378);
    *(inited + 144) = v24;
    *(inited + 168) = v53;
    strcpy((inited + 176), "emailAddresses");
    *(inited + 191) = -18;
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    *(inited + 192) = v21;
    sub_1BC8F7AD4();
    return;
  }

  v35 = v34;
  v63 = v21;
  sub_1BC7AD404();
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v21 = v63;
    v59 = v33 & 0xC000000000000001;
    v60 = v33;
    do
    {
      if (v59)
      {
        v37 = MEMORY[0x1BFB29A00](v36, v33);
      }

      else
      {
        v37 = *(v33 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = [v37 value];
      v40 = sub_1BC8F7C24();
      v42 = v41;

      v63 = v21;
      v43 = *(v21 + 16);
      if (v43 >= *(v21 + 24) >> 1)
      {
        sub_1BC7AD404();
        v21 = v63;
      }

      ++v36;
      *(v21 + 16) = v43 + 1;
      v44 = v21 + 16 * v43;
      *(v44 + 32) = v40;
      *(v44 + 40) = v42;
      v33 = v60;
    }

    while (v35 != v36);
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
}

void sub_1BC8E1B44(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 value];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EB0, &qword_1BC90A380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FC230;
  *(inited + 32) = 0x7265626D756ELL;
  *(inited + 40) = 0xE600000000000000;
  v5 = [v3 stringValue];
  v6 = sub_1BC8F7C24();
  v8 = v7;

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  v9 = sub_1BC8F7AD4();
  v10 = sub_1BC8F7BE4();
  v11 = [v3 valueForKey_];

  if (v11)
  {
    sub_1BC8F8474();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast())
    {
      swift_isUniquelyReferenced_nonNull_native();
      *&v14[0] = v9;
      sub_1BC83E138();
    }
  }

  else
  {

    sub_1BC803774(v14);
  }

  *a2 = v9;
}

void static Person.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1BC8F8AA4()) && (sub_1BC7DAD3C(v2, v5))
  {

    sub_1BC7F56A4();
  }
}

uint64_t Person.hashValue.getter()
{
  OUTLINED_FUNCTION_1_32();
  sub_1BC8F8C04();
  Person.hash(into:)();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8E1E4C()
{
  OUTLINED_FUNCTION_1_32();
  sub_1BC8F8C04();
  Person.hash(into:)();
  return sub_1BC8F8C64();
}

unint64_t sub_1BC8E1E90(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1BC8E1EB4()
{
  result = qword_1EBCF6970;
  if (!qword_1EBCF6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6970);
  }

  return result;
}

uint64_t sub_1BC8E1F08(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4F50, &qword_1BC8FC6F8);
    sub_1BC8E1F90(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC8E1F90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BC8F73D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC8E1FD4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF6978, &unk_1BC90A140);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC8E2050()
{
  result = qword_1EBCF69B8;
  if (!qword_1EBCF69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF69B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Person.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC8E2194()
{
  result = qword_1EBCF69C0;
  if (!qword_1EBCF69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF69C0);
  }

  return result;
}

unint64_t sub_1BC8E21EC()
{
  result = qword_1EBCF69C8;
  if (!qword_1EBCF69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF69C8);
  }

  return result;
}

unint64_t sub_1BC8E2244()
{
  result = qword_1EBCF69D0;
  if (!qword_1EBCF69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF69D0);
  }

  return result;
}

uint64_t sub_1BC8E2298@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1BC8F73D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t VideoMessagingService.__allocating_init()()
{
  v0 = swift_allocObject();
  VideoMessagingService.init()();
  return v0;
}

void *VideoMessagingService.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v31 - v5;
  v7 = sub_1BC8F7014();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v12 = sub_1BC8F7734();
  __swift_project_value_buffer(v12, qword_1EDC2B3A8);
  v13 = sub_1BC8F7714();
  v14 = sub_1BC8F8204();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BC7A3000, v13, v14, "Initialising video messaging service", v15, 2u);
    MEMORY[0x1BFB2AA50](v15, -1, -1);
  }

  *(swift_allocObject() + 16) = v2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF69E0, &qword_1BC90A388);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v1[2] = sub_1BC8F77E4();
  if (qword_1EDC1E220 != -1)
  {
    swift_once();
  }

  v31[5] = &type metadata for RadioNetworkQualityProvider;
  v31[6] = &off_1F3B3E120;
  v31[0] = sub_1BC841570;
  v31[1] = 0;
  v19 = qword_1EDC1E948;
  v20 = qword_1EDC2B2F8;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v7, qword_1EDC1E950);
  (*(v8 + 16))(v11, v21, v7);
  v22 = type metadata accessor for OutgoingMessageCache(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1BC7FDA14(v11);
  type metadata accessor for VideoMessagingServer();
  v26 = swift_allocObject();
  v26[2] = v20;
  v26[3] = &off_1F3B3ACC8;
  sub_1BC8E2878(v31, (v26 + 4));
  v26[11] = v25;
  *&v20[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_outgoingDelegate + 8] = &off_1F3B3C410;
  swift_unknownObjectWeakAssign();
  v27 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v25;
  v28[5] = v26;
  swift_retain_n();
  v29 = v20;

  sub_1BC8333D4();

  sub_1BC890B18(v31);
  v1[3] = v26;
  return v1;
}

uint64_t sub_1BC8E28D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BC7B0168;

  return sub_1BC888138(a1, v4, v5, v7, v6);
}

uint64_t sub_1BC8E2994()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF69F0, &unk_1BC90A400);
  v0 = sub_1BC8F77F4();
  v1 = v14;
  if (v14)
  {
    v14 = 0xD000000000000019;
    v15 = 0x80000001BC90C970;
    MEMORY[0x1EEE9AC00](v0);
    v13 = &v14;
    v2 = sub_1BC7AFC0C(sub_1BC7AFCBC, v12, v1);
    if (v2)
    {

LABEL_5:
      if (qword_1EDC20728 != -1)
      {
        swift_once();
      }

      v4 = sub_1BC8F7734();
      __swift_project_value_buffer(v4, qword_1EDC2B3A8);
      v5 = sub_1BC8F7714();
      v6 = sub_1BC8F8204();
      if (!os_log_type_enabled(v5, v6))
      {
        v8 = 1;
        goto LABEL_16;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BC7A3000, v5, v6, "Accepting incoming XPC connection request", v7, 2u);
      v8 = 1;
      goto LABEL_13;
    }

    v14 = 0xD000000000000019;
    v15 = 0x80000001BC90C990;
    MEMORY[0x1EEE9AC00](v2);
    v13 = &v14;
    v3 = sub_1BC7AFC0C(sub_1BC7E8C84, v12, v1);

    if (v3)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v9 = sub_1BC8F7734();
  __swift_project_value_buffer(v9, qword_1EDC2B3A8);
  v5 = sub_1BC8F7714();
  v10 = sub_1BC8F8204();
  if (!os_log_type_enabled(v5, v10))
  {
    v8 = 0;
    goto LABEL_16;
  }

  v7 = swift_slowAlloc();
  *v7 = 0;
  _os_log_impl(&dword_1BC7A3000, v5, v10, "Rejecting connection from unentitled process", v7, 2u);
  v8 = 0;
LABEL_13:
  MEMORY[0x1BFB2AA50](v7, -1, -1);
LABEL_16:

  return v8;
}

Swift::Void __swiftcall VideoMessagingService.start()()
{
  v1 = v0;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B3A8);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Starting video messaging service", v5, 2u);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  sub_1BC8DFBA4();

  sub_1BC8F7824();

  sub_1BC8F7834();
}

uint64_t sub_1BC8E2DA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BC7B0168;

  return sub_1BC8E2E38(a1);
}

uint64_t sub_1BC8E2E38(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BC8E2E58, 0, 0);
}

uint64_t sub_1BC8E2E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v13 = sub_1BC8F7734();
  __swift_project_value_buffer(v13, qword_1EDC2B3A8);
  v14 = sub_1BC8F7714();
  v15 = sub_1BC8F8204();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1BC7A3000, v14, v15, "Handling incoming SendVideoMessage message", v16, 2u);
    MEMORY[0x1BFB2AA50](v16, -1, -1);
  }

  v17 = v12[18];
  v18 = v12[19];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF69E8, &qword_1BC90A3F8);
  sub_1BC8F77C4();
  v19 = v12[11];
  v12[20] = v12[10];
  v12[21] = v19;
  v20 = v12[12];
  v12[22] = v20;
  v21 = *(v18 + 24);
  v22 = sub_1BC8F70C4();
  v12[23] = v22;
  v12[2] = v12;
  v12[3] = sub_1BC8E3064;
  v23 = swift_continuation_init();
  v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
  v12[10] = MEMORY[0x1E69E9820];
  v12[11] = 1107296256;
  v12[12] = sub_1BC8E3268;
  v12[13] = &block_descriptor_11;
  v12[14] = v23;
  [v21 sendVideoMessageWithData:v22 url:v20 completionHandler:v12 + 10];

  return MEMORY[0x1EEE6DEC8](v12 + 2, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1BC8E3064()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 192) = v4;
  if (v4)
  {
    v5 = sub_1BC8E31D8;
  }

  else
  {
    v5 = sub_1BC8E316C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BC8E316C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[22];
  v2 = v0[23];
  sub_1BC7D4C94(v0[20], v0[21]);

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC8E31D8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  swift_willThrow();
  sub_1BC7D4C94(v5, v3);

  OUTLINED_FUNCTION_27();
  v7 = v0[24];

  return v6();
}

uint64_t sub_1BC8E3268(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_1BC899994(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t VideoMessagingService.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t VideoMessagingService.__deallocating_deinit()
{
  VideoMessagingService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BC8E3334()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1BC7B0168;

  return sub_1BC8E2DA0(v2);
}

uint64_t _s20FaceTimeMessageStore16AsyncSerialQueueV8priority15bufferingPolicy18executorPreferenceACScPSg_ScS12ContinuationV09BufferingJ0OyyyYaYbc__GSch_pSgtcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v57 = a3;
  v58 = a2;
  v52 = a5;
  v53 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E80, &unk_1BC8FC3C0);
  OUTLINED_FUNCTION_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v51 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E78, &qword_1BC8FC3B8);
  v28 = OUTLINED_FUNCTION_25(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_20_0();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v49 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
  v56 = v12;
  (*(v12 + 16))(v17, v58, v10);
  v59 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E90, &qword_1BC8FC3D0);
  sub_1BC8F8014();
  v55 = v36;
  sub_1BC7D9558(v36, v33, &qword_1EBCF4E78, &qword_1BC8FC3B8);
  result = __swift_getEnumTagSinglePayload(v33, 1, v37);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10(v37);
    (*(v39 + 32))(v52, v33, v37);
    v40 = v51;
    (*(v21 + 16))(v51, v26, v18);
    v41 = *(v21 + 80);
    OUTLINED_FUNCTION_23_15();
    v42 = swift_allocObject();
    (*(v21 + 32))(&v17[v42], v40, v18);
    v44 = v53;
    v43 = v54;
    sub_1BC7D9558(v53, v54, &qword_1EBCF63D0, &qword_1BC902140);
    v45 = sub_1BC8F7FC4();
    if (__swift_getEnumTagSinglePayload(v43, 1, v45) == 1)
    {
      sub_1BC7C1744(v43, &qword_1EBCF63D0, &qword_1BC902140);
    }

    else
    {
      sub_1BC8F7FB4();
      OUTLINED_FUNCTION_10(v45);
      (*(v46 + 8))(v43, v45);
    }

    v47 = v57;
    OUTLINED_FUNCTION_34();
    v48 = swift_allocObject();
    *(v48 + 16) = &unk_1BC8FC3D8;
    *(v48 + 24) = v42;
    swift_unknownObjectRetain();
    if (v47 != 1)
    {
      v60 = 6;
      v61 = 0;
      v62 = v47;
      v63 = v50;
    }

    swift_task_create();
    swift_unknownObjectRelease();

    (*(v56 + 8))(v58, v10);
    sub_1BC7C1744(v44, &qword_1EBCF63D0, &qword_1BC902140);
    (*(v21 + 8))(v26, v18);
    return sub_1BC7C1744(v55, &qword_1EBCF4E78, &qword_1BC8FC3B8);
  }

  return result;
}

uint64_t AsyncSerialQueue.perform(_:)(uint64_t a1, uint64_t a2)
{
  return sub_1BC8E413C(a1, a2, &unk_1F3B3E320, &unk_1BC8FC280);
}

{
  return sub_1BC8E413C(a1, a2, &unk_1F3B3E398, &unk_1BC902CF8);
}

uint64_t AsyncSerialQueue.init(priority:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v62 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  v5 = OUTLINED_FUNCTION_0(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v63 = v10;
  v64 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E78, &qword_1BC8FC3B8);
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_0();
  v70 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E80, &unk_1BC8FC3C0);
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_0();
  v30 = (v28 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v61 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v35 = OUTLINED_FUNCTION_25(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_20_0();
  v61 = v38 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v61 - v41;
  v69 = a1;
  sub_1BC7D9558(a1, &v61 - v41, &qword_1EBCF63D0, &qword_1BC902140);
  v43 = v25;
  v44 = *(v25 + 16);
  v44(v33, v72, v22);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v45);
  v67 = v33;
  v68 = v22;
  v44(v30, v33, v22);
  v46 = v21;
  v73 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E90, &qword_1BC8FC3D0);
  v71 = v12;
  v47 = v70;
  sub_1BC8F8014();
  sub_1BC7D9558(v21, v47, &qword_1EBCF4E78, &qword_1BC8FC3B8);
  result = __swift_getEnumTagSinglePayload(v47, 1, v45);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10(v45);
    (*(v49 + 32))(v62, v47, v45);
    v50 = v64;
    v51 = v65;
    v52 = v66;
    (*(v65 + 16))(v64, v71, v66);
    v53 = *(v51 + 80);
    OUTLINED_FUNCTION_23_15();
    v54 = swift_allocObject();
    (*(v51 + 32))(&v33[v54], v50, v52);
    v55 = v61;
    sub_1BC7D9558(v42, v61, &qword_1EBCF63D0, &qword_1BC902140);
    v56 = sub_1BC8F7FC4();
    if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
    {
      sub_1BC7C1744(v55, &qword_1EBCF63D0, &qword_1BC902140);
    }

    else
    {
      sub_1BC8F7FB4();
      OUTLINED_FUNCTION_10(v56);
      (*(v57 + 8))(v55, v56);
    }

    OUTLINED_FUNCTION_34();
    v58 = swift_allocObject();
    *(v58 + 16) = &unk_1BC90A450;
    *(v58 + 24) = v54;
    swift_task_create();

    v59 = *(v43 + 8);
    v60 = v68;
    v59(v72, v68);
    sub_1BC7C1744(v69, &qword_1EBCF63D0, &qword_1BC902140);
    (*(v51 + 8))(v71, v52);
    v59(v67, v60);
    sub_1BC7C1744(v42, &qword_1EBCF63D0, &qword_1BC902140);
    return sub_1BC7C1744(v46, &qword_1EBCF4E78, &qword_1BC8FC3B8);
  }

  return result;
}

uint64_t AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC8E3EEC()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_21_18(v1);
  v2 = OUTLINED_FUNCTION_25_17(dword_1BC90A468);
  v3 = OUTLINED_FUNCTION_19_20(v2);
  *v3 = v4;
  v3[1] = sub_1BC8E3FA0;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_13_21();

  return v8();
}

uint64_t sub_1BC8E3FA0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_27();

    return v13();
  }
}

uint64_t sub_1BC8E40C0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1BC8E413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  OUTLINED_FUNCTION_34();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v17[0] = a4;
  v17[1] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  sub_1BC8F7FD4();
  return (*(v9 + 8))(v14, v7);
}

uint64_t sub_1BC8E4250(uint64_t a1, uint64_t a2)
{
  sub_1BC7C1744(a2, &qword_1EBCF4E78, &qword_1BC8FC3B8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_4_1(v4);
  (*(v5 + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_1BC8E42F8()
{
  OUTLINED_FUNCTION_5();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF69F8, &qword_1BC90A4E0);
  v0[5] = v2;
  v3 = *(v2 - 8);
  v0[6] = v3;
  v4 = *(v3 + 64) + 15;
  v0[7] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC8E43BC()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  sub_1BC8F7FF4();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19_20(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_8_30(v5);
  v7 = v0[7];
  v8 = v0[5];
  OUTLINED_FUNCTION_13_21();

  return MEMORY[0x1EEE6D9C8]();
}

uint64_t sub_1BC8E445C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC8E4544()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v6 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1BC8E468C;

    return v6();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    OUTLINED_FUNCTION_27();

    return v5();
  }
}

uint64_t sub_1BC8E468C()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = v1[11];
  v5 = v1[10];
  v6 = v1[9];
  v7 = *v0;
  *v3 = *v0;

  sub_1BC7BE108(v6);
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v2[8] = v9;
  *v9 = v7;
  OUTLINED_FUNCTION_8_30();
  v10 = v1[7];
  v11 = v1[5];
  OUTLINED_FUNCTION_13_21();

  return MEMORY[0x1EEE6D9C8]();
}

uint64_t sub_1BC8E4808()
{
  OUTLINED_FUNCTION_5();
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1BC8E48EC;

  return v5();
}

uint64_t sub_1BC8E48EC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v12();
  }
}

uint64_t sub_1BC8E4A04()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC8E4A78()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_21_18(v1);
  v2 = OUTLINED_FUNCTION_25_17(&unk_1BC90A488);
  v3 = OUTLINED_FUNCTION_19_20(v2);
  *v3 = v4;
  v3[1] = sub_1BC8E4B2C;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_13_21();

  return v8();
}

uint64_t sub_1BC8E4B2C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_1BC8E4C28(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = *(*(a4 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[4] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1BC8E4D50;

  return v11(v7);
}

uint64_t sub_1BC8E4D50()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC8E4E38()
{
  OUTLINED_FUNCTION_5();
  sub_1BC8E4EA0(v0[4], v0[2], v0[3]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC8E4EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_resume();
}

uint64_t sub_1BC8E4F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1BC8F7F54();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1BC8E4FAC, v6, v8);
}

uint64_t sub_1BC8E4FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v14 = v12[11];
  v13 = v12[12];
  v15 = v12[10];
  v12[2] = v12;
  v12[7] = v15;
  v12[3] = sub_1BC8E5050;
  v16 = swift_continuation_init();
  v14(v16);

  return MEMORY[0x1EEE6DEC8](v12 + 2, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1BC8E5050()
{
  OUTLINED_FUNCTION_5();
  v5 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC8E5118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[0] = a8;
  v24[1] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  OUTLINED_FUNCTION_0(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v24 - v19;
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a1;
  v21[4] = a3;
  v21[5] = a4;
  OUTLINED_FUNCTION_34();
  v22 = swift_allocObject();
  *(v22 + 16) = v24[0];
  *(v22 + 24) = v21;
  v24[2] = a9;
  v24[3] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  sub_1BC8F7FD4();
  return (*(v15 + 8))(v20, v13);
}

uint64_t sub_1BC8E5268(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v6 = *(*(a4 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[5] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1BC8E5390;

  return v11(v7);
}

uint64_t sub_1BC8E5390()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8E548C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  sub_1BC8E55C4(v2, v3, v1);
  v4 = v0[5];

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_1BC8E5524()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[7];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  sub_1BC8E563C((v0 + 2), v1, v2, v3);
  v4 = v0[5];

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_1BC8E55C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_1BC8E563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  return MEMORY[0x1EEE6DEE8](a2, v7);
}

uint64_t sub_1BC8E56D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1BC8F7F54();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1BC8E5764, v6, v8);
}

uint64_t sub_1BC8E5764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v14 = v12[11];
  v13 = v12[12];
  v15 = v12[10];
  v12[2] = v12;
  v12[7] = v15;
  v12[3] = sub_1BC8E5808;
  v16 = swift_continuation_init();
  v14(v16);

  return MEMORY[0x1EEE6DEC8](v12 + 2, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1BC8E5808()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_11_3();
  *v3 = v1;
  if (*(v2 + 48))
  {
    v4 = *(v2 + 48);
    swift_willThrow();
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1BC8E5904()
{
  OUTLINED_FUNCTION_32();
  v7 = (v0 + *v0);
  v1 = v0[1];
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  v3[1] = sub_1BC7B0968;
  v5 = OUTLINED_FUNCTION_12_21();

  return v7(v5);
}

uint64_t objectdestroyTm_3()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC8E5A78()
{
  OUTLINED_FUNCTION_32();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_23_15();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v4[1] = sub_1BC7B0248;
  OUTLINED_FUNCTION_12_21();

  return sub_1BC8E42F8();
}

uint64_t sub_1BC8E5B48()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16(v1);

  return v4(v3);
}

uint64_t type metadata accessor for AsyncSerialQueue()
{
  result = qword_1EDC20980;
  if (!qword_1EDC20980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC8E5D0C()
{
  sub_1BC811D20();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1BC8E5D78()
{
  OUTLINED_FUNCTION_32();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_18_18(v6);

  return sub_1BC8E4C28(v7, v8, v9, v10);
}

uint64_t sub_1BC8E5E0C()
{
  OUTLINED_FUNCTION_32();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_18_18(v6);

  return sub_1BC8E5268(v7, v8, v9, v10);
}

unint64_t CustomStringConvertible<>.description.getter()
{
  v0 = sub_1BC8F7C64();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1BC8F6C74();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1BC8F6CB4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1BC8F6CA4();
  sub_1BC8F6C64();
  sub_1BC8F6C84();
  v7 = sub_1BC8F6C94();
  v9 = v8;
  sub_1BC8F7C54();
  v10 = sub_1BC8F7C34();
  v12 = v11;
  sub_1BC7D4C94(v7, v9);

  if (!v12)
  {
    return 0xD000000000000012;
  }

  return v10;
}

uint64_t sub_1BC8E6040()
{
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_weakAssign();

  return v0;
}

uint64_t sub_1BC8E60AC()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1BC8E6180;

    return sub_1BC85CBA0();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1BC8E6180()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1BC8E6290, v2, 0);
}

uint64_t sub_1BC8E6290()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BC8E62F0()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BC8E636C()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1BC8E6440;

    return sub_1BC85D254();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1BC8E6440()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1BC8E65D0;
  }

  else
  {
    v6 = sub_1BC8E656C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1BC8E656C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BC8E65D0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1BC8E6658(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC8E66F4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 104) + 8));
  return v0;
}

uint64_t sub_1BC8E6784()
{
  sub_1BC8E66F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1BC8E6824()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t sub_1BC8E6860(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

id sub_1BC8E6870()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1BC8E6824();
  v5[0] = 0;
  v1 = [v0 setTaskExpiredWithRetryAfter:v5 error:sub_1BC8F8CB4()];

  if (v1)
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1BC8F6EA4();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BC8E6940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8E6824();
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1BC80CE70;
  v6[3] = &block_descriptor_12;
  v5 = _Block_copy(v6);

  [v4 setExpirationHandler_];
  _Block_release(v5);
}

uint64_t sub_1BC8E6A04()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BC8E6A6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BC8F85C4();
  *a1 = result;
  return result;
}

unint64_t sub_1BC8E6A98(uint64_t a1)
{
  result = sub_1BC8E6AC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC8E6AC0()
{
  result = qword_1EBCF6A10;
  if (!qword_1EBCF6A10)
  {
    type metadata accessor for SendableBGSystemTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6A10);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC8E6B2C()
{
  v0 = [objc_opt_self() sharedScheduler];
  type metadata accessor for SystemTaskScheduler();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v0;
  qword_1EDC2B318 = result;
  return result;
}

void sub_1BC8E6B8C(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_1EDC1E218 != -1)
    {
      OUTLINED_FUNCTION_6_1();
    }

    v1 = sub_1BC8F7734();
    __swift_project_value_buffer(v1, qword_1EDC2B2E0);

    v2 = sub_1BC8F7714();
    v3 = sub_1BC8F8204();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_28();
      *v4 = 136446210;
      *(v4 + 4) = OUTLINED_FUNCTION_2_33(v16, v5, v6);
      _os_log_impl(&dword_1BC7A3000, v2, v3, "Handling expiration for ScheduledActivity(%{public}s)", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    sub_1BC8E6870();
    goto LABEL_11;
  }

  v7 = sub_1BC8E6824();
  [v7 setTaskCompleted];

  if (qword_1EDC1E218 != -1)
  {
    OUTLINED_FUNCTION_6_1();
  }

  v8 = sub_1BC8F7734();
  __swift_project_value_buffer(v8, qword_1EDC2B2E0);

  oslog = sub_1BC8F7714();
  v9 = sub_1BC8F8204();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_28();
    *v10 = 136446210;
    *(v10 + 4) = OUTLINED_FUNCTION_2_33(v17, v11, v12);
    _os_log_impl(&dword_1BC7A3000, oslog, v9, "Finished running ScheduledActivity(%{public}s)", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

LABEL_11:
    OUTLINED_FUNCTION_62();
    return;
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_1BC8E6F30(uint64_t a1, unint64_t a2)
{
  if (qword_1EDC1E218 != -1)
  {
    OUTLINED_FUNCTION_6_1();
  }

  v4 = sub_1BC8F7734();
  __swift_project_value_buffer(v4, qword_1EDC2B2E0);

  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F8204();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_28();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1BC7A9A4C(a1, a2, &v10);
    _os_log_impl(&dword_1BC7A3000, v5, v6, "ScheduledActivity(%{public}s) deferred", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  return sub_1BC8F8024();
}

uint64_t sub_1BC8E70B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25_18(a1, a2);
  if (v4 && (v5 = v3, v6 = sub_1BC83C928(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for TrackedOutgoingMessage(0);
    sub_1BC8EA7FC(v9 + *(*(v10 - 8) + 72) * v8, v2);
    v11 = v2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for TrackedOutgoingMessage(0);
    v11 = v2;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

double sub_1BC8E715C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25_18(a1, a2);
  if (!v2)
  {
    return OUTLINED_FUNCTION_24_15();
  }

  v3 = sub_1BC83C8E8();
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_15();
  }

  v5 = OUTLINED_FUNCTION_10_26(v3);

  sub_1BC7ABB48(v5, v6);
  return result;
}

double sub_1BC8E71B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_24_15();
  }

  v3 = sub_1BC803CBC(a1, a2);
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_15();
  }

  v5 = OUTLINED_FUNCTION_10_26(v3);

  sub_1BC7ABB48(v5, v6);
  return result;
}

uint64_t sub_1BC8E7208(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1BC83C928();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_1BC8E7258(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1BC83C928();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) + 32 * v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];

  return v6;
}

void *sub_1BC8E72D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1BC803CBC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_1BC8E731C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25_18(a1, a2);
  if (!v3)
  {
    return OUTLINED_FUNCTION_24_15();
  }

  v4 = sub_1BC83CA14(v2);
  if ((v5 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_15();
  }

  v6 = OUTLINED_FUNCTION_10_26(v4);

  sub_1BC7ABB48(v6, v7);
  return result;
}

uint64_t sub_1BC8E7370(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1BC83CAA8();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_1BC8E73C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1BC803CBC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_1BC8E7410(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25_18(a1, a2);
  if (v4 && (v5 = v3, v6 = sub_1BC83C928(), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 40 * v6;

    sub_1BC7A792C(v8, v2);
  }

  else
  {
    *(v2 + 32) = 0;
    return OUTLINED_FUNCTION_24_15();
  }

  return result;
}

uint64_t sub_1BC8E7474(uint64_t a1)
{
  v2 = sub_1BC8F6D24();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  sub_1BC8F6D04();

  v12(v10);

  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_1BC8E7554(void *a1, void *a2)
{
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 2;
  *(v2 + 152) = a1;
  v4 = a1;
  v5 = [a2 deviceType];

  *(v2 + 160) = v5;
  return v2;
}

void sub_1BC8E75C8()
{
  OUTLINED_FUNCTION_20_17();
  if (!v0)
  {

    OUTLINED_FUNCTION_14_19();
  }
}

void *sub_1BC8E7650@<X0>(void *(*a1)(void *__return_ptr, void *)@<X0>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];
  result = a1(a4, a2);
  if (!v4)
  {
    result = [a2 hasChanges];
    if (result)
    {
      v11[0] = 0;
      if ([a2 save_])
      {
        result = v11[0];
      }

      else
      {
        v9 = v11[0];
        sub_1BC8F6EA4();

        swift_willThrow();
        result = (*(*(a3 - 8) + 8))(a4, a3);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BC8E776C(void *a1)
{
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B3A8);
  v3 = a1;
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_21_1();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Attempting to recover from error %{public}@", v6, 0xCu);
    sub_1BC8504B8(v7);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  sub_1BC8E78A4();
}

void sub_1BC8E78A4()
{
  v169 = sub_1BC8F7014();
  v0 = OUTLINED_FUNCTION_0(v169);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_20_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_4();
  v163 = v9;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_4();
  v161 = v11;
  OUTLINED_FUNCTION_17_0();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v158 - v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_4();
  v164 = v16;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_4();
  v168 = v18;
  OUTLINED_FUNCTION_17_0();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v158 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v158 - v23;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v162 = v15;
  v160 = v7;
  v25 = sub_1BC8F7734();
  v159 = __swift_project_value_buffer(v25, qword_1EDC2B3A8);
  v26 = sub_1BC8F7714();
  v27 = sub_1BC8F8204();
  v28 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_45();
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1BC7A3000, v26, v27, "Loading persistent store", v30, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  type metadata accessor for CoreDataMessageStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = objc_opt_self();
  v33 = [v32 bundleForClass_];
  v34 = sub_1BC8F7BE4();
  v35 = sub_1BC8EA670(v34, 1684893549, 0xE400000000000000, v33);

  if (v35)
  {
    sub_1BC8F6FB4();

    v36 = *(v2 + 32);
    v37 = v24;
    v167 = v24;
    v38 = v169;
    v36(v37, v22, v169);
    v39 = [v32 bundleForClass_];
    v40 = sub_1BC8F7BE4();
    v41 = sub_1BC8EA670(v40, 1684893549, 0xE400000000000000, v39);

    if (v41)
    {
      v158 = v2;
      v42 = v164;
      sub_1BC8F6FB4();

      v43 = v168;
      v36(v168, v42, v38);
      v44 = v165;
      sub_1BC8E889C(v167, 1, v45, v46, v47, v48, v49, v50, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169);
      v165 = v57;
      if (v44)
      {
        v59 = v166;
        v60 = v166[12];
        v61 = v166[13];
        v62 = v166[14];
        v63 = v166[15];
        v64 = v166[16];
        v65 = v166[17];
        v166[12] = v44;
        *(v59 + 13) = 0u;
        *(v59 + 15) = 0u;
        v59[17] = 0;
        v66 = *(v59 + 144);
        *(v59 + 144) = 1;
        v67 = v44;
        v68 = OUTLINED_FUNCTION_16_18();
        sub_1BC8EA6E4(v68, v69, v70, v71, v72, v65, v66);
        swift_willThrow();
        v73 = *(v158 + 8);
        v74 = v169;
        v73(v168, v169);
        v73(v167, v74);
      }

      else
      {
        v58 = v38;
        sub_1BC8E889C(v43, 0, v51, v52, v53, v54, v55, v56, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169);
        v164 = v77;
        v78 = v161;
        _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
        v79 = v162;
        sub_1BC8F6F64();
        v80 = v158 + 8;
        v81 = *(v158 + 8);
        v81(v78, v58);
        _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
        sub_1BC8F6F64();
        v81(v78, v58);
        v82 = v166;
        sub_1BC8E8DF0();
        v161 = v83;
        v84 = OUTLINED_FUNCTION_22_14();
        (v81)(v84);
        v81(v79, v58);
        sub_1BC8D321C();
        sub_1BC8E96D8();
        v163 = 0;
        v86 = v82;
        v162 = v85;
        v87 = OUTLINED_FUNCTION_22_14();
        v158 = v80;
        (v81)(v87);
        v88 = sub_1BC8F7714();
        v89 = sub_1BC8F8204();
        v90 = OUTLINED_FUNCTION_36_0();
        v92 = v81;
        if (os_log_type_enabled(v90, v91))
        {
          OUTLINED_FUNCTION_45();
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&dword_1BC7A3000, v88, v89, "Loading primary context", v93, 2u);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        v161 = v161;
        v94 = [v161 viewContext];
        [v94 setAutomaticallyMergesChangesFromParent_];
        [v94 setShouldRefreshAfterSave_];
        v95 = v86[19];
        v96 = *MEMORY[0x1E695D350];
        v173 = sub_1BC8EA770;
        v174 = v86;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v171 = sub_1BC8E7474;
        v172 = &block_descriptor_13;
        v97 = _Block_copy(aBlock);
        v98 = v95;
        v160 = v94;
        v99 = v94;

        v100 = OUTLINED_FUNCTION_11_17();
        _Block_release(v97);
        swift_unknownObjectRelease();

        v101 = v166[19];
        v102 = *MEMORY[0x1E695D348];
        v173 = sub_1BC8EA790;
        v174 = v166;
        aBlock[0] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_0_33();
        v171 = v103;
        v172 = &block_descriptor_36;
        v104 = _Block_copy(aBlock);
        v105 = v99;

        v106 = v101;

        v107 = OUTLINED_FUNCTION_11_17();
        _Block_release(v104);
        swift_unknownObjectRelease();

        v108 = v166;
        v109 = v108[19];
        v110 = *MEMORY[0x1E695D2E0];
        v173 = sub_1BC8EA798;
        v174 = v108;
        aBlock[0] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_0_33();
        v171 = v111;
        v172 = &block_descriptor_39;
        _Block_copy(aBlock);

        v112 = v109;
        v113 = v110;

        v114 = OUTLINED_FUNCTION_13_22();
        v115 = OUTLINED_FUNCTION_10_2();
        _Block_release(v115);
        swift_unknownObjectRelease();

        v116 = v108[19];
        v117 = *MEMORY[0x1E695D2D0];
        v173 = sub_1BC8EA7A0;
        v174 = v108;
        aBlock[0] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_0_33();
        v171 = v118;
        v172 = &block_descriptor_42;
        _Block_copy(aBlock);

        v119 = v116;
        v120 = v117;

        v121 = OUTLINED_FUNCTION_13_22();
        v122 = OUTLINED_FUNCTION_10_2();
        _Block_release(v122);
        swift_unknownObjectRelease();

        v123 = v108[19];
        v124 = *MEMORY[0x1E695B710];
        v173 = sub_1BC8EA7A8;
        v174 = v108;
        aBlock[0] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_0_33();
        v171 = v125;
        v172 = &block_descriptor_45;
        _Block_copy(aBlock);

        v126 = v123;

        v127 = OUTLINED_FUNCTION_12_22();
        v128 = OUTLINED_FUNCTION_16_3();
        _Block_release(v128);
        swift_unknownObjectRelease();

        v129 = v108[19];
        v130 = *MEMORY[0x1E695B770];
        v173 = sub_1BC8EA898;
        v174 = v108;
        aBlock[0] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_0_33();
        v171 = v131;
        v172 = &block_descriptor_48;
        _Block_copy(aBlock);

        v132 = v129;

        v133 = OUTLINED_FUNCTION_12_22();
        v134 = OUTLINED_FUNCTION_16_3();
        _Block_release(v134);
        swift_unknownObjectRelease();

        v135 = v159;
        v136 = sub_1BC8F7714();
        v137 = sub_1BC8F8204();
        if (OUTLINED_FUNCTION_7_23(v137))
        {
          OUTLINED_FUNCTION_45();
          v138 = swift_slowAlloc();
          *v138 = 0;
          _os_log_impl(&dword_1BC7A3000, v136, v135, "Loading temporary context", v138, 2u);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        v139 = v162;
        v159 = [v162 viewContext];
        v140 = v161;

        v141 = v169;
        v92(v168, v169);
        v92(v167, v141);
        v142 = v108[12];
        v143 = v108[13];
        v144 = v108;
        v145 = v108[14];
        v146 = v108[15];
        v148 = v144[16];
        v147 = v144[17];
        v149 = v165;
        v144[12] = v165;
        v144[13] = v140;
        v150 = v164;
        v144[14] = v160;
        v144[15] = v150;
        v151 = v159;
        v144[16] = v139;
        v144[17] = v151;
        LOBYTE(v139) = *(v144 + 144);
        *(v144 + 144) = 0;
        v152 = v149;
        v153 = OUTLINED_FUNCTION_16_18();
        sub_1BC8EA6E4(v153, v154, v155, v156, v157, v147, v139);
      }
    }

    else
    {
      sub_1BC8EA61C();
      OUTLINED_FUNCTION_225();
      OUTLINED_FUNCTION_28_15(v76, 1);
      (*(v2 + 8))(v167, v38);
    }
  }

  else
  {
    sub_1BC8EA61C();
    OUTLINED_FUNCTION_225();
    *v75 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1BC8E84D8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v3 = result;
    v4 = *(a2 + 40);

    v2(v3);

    return sub_1BC7BE108(v2);
  }

  return result;
}

uint64_t sub_1BC8E854C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(a2 + 24);

    v2(v3);

    return sub_1BC7BE108(v2);
  }

  return result;
}

void sub_1BC8E85C0(uint64_t a1, uint64_t a2)
{
  if (qword_1EDC1E1D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1BC8F7734();
  __swift_project_value_buffer(v4, qword_1EDC2B280);
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F8204();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BC7A3000, v5, v6, "willResetSync!", v7, 2u);
    MEMORY[0x1BFB2AA50](v7, -1, -1);
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);

    v8(a1);

    sub_1BC7BE108(v8);
  }
}

void sub_1BC8E86F4(uint64_t a1, uint64_t a2)
{
  if (qword_1EDC1E1D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1BC8F7734();
  __swift_project_value_buffer(v4, qword_1EDC2B280);
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F8204();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BC7A3000, v5, v6, "didResetSync!", v7, 2u);
    MEMORY[0x1BFB2AA50](v7, -1, -1);
  }

  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *(a2 + 72);

    v8(a1);

    sub_1BC7BE108(v8);
  }
}

uint64_t sub_1BC8E8828(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2)
  {
    v3 = result;
    v4 = *(a2 + 88);

    v2(v3);

    return sub_1BC7BE108(v2);
  }

  return result;
}

void sub_1BC8E889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v21;
  a20 = v22;
  v71 = v20;
  v72 = v23;
  v25 = v24;
  v26 = sub_1BC8F7014();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_20_0();
  v34 = (v32 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v71 - v36;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v38 = sub_1BC8F7734();
  v39 = __swift_project_value_buffer(v38, qword_1EDC2B3A8);
  v40 = sub_1BC8F7714();
  v41 = sub_1BC8F8204();
  v42 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v42, v43))
  {
    OUTLINED_FUNCTION_45();
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1BC7A3000, v40, v41, "MessageContainer: Attempting to load managed object model", v44, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  sub_1BC7D9730(0, &unk_1EDC1DDE8, 0x1E695D638);
  v45 = *(v29 + 16);
  v45(v37, v25, v26);
  v46 = sub_1BC8B5518(v37);
  if (v46)
  {
    v47 = v46;
    if (v72 - 1 <= 1)
    {
      v48 = [v46 entitiesByName];
      sub_1BC7D9730(0, &qword_1EDC1DE00, 0x1E695D5B8);
      v49 = sub_1BC8F7AA4();

      v50 = sub_1BC8E72D4(0x654D6465726F7453, 0xED00006567617373, v49);

      if (v50)
      {
        v51 = [v50 attributesByName];
        sub_1BC7D9730(0, &unk_1EDC1DDC0, 0x1E695D530);
        v52 = sub_1BC8F7AA4();

        v53 = sub_1BC8E72D4(0x466567617373656DLL, 0xEB00000000656C69, v52);

        if (v53)
        {
          [v53 setIsFileBackedFuture_];
        }

        else
        {
          v67 = sub_1BC8F7714();
          v68 = sub_1BC8F81E4();
          if (OUTLINED_FUNCTION_7_23(v68))
          {
            OUTLINED_FUNCTION_45();
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_1BC7A3000, v67, v39, "MessageContainer: Failed to get attributes for the messageFile!", v69, 2u);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
          }

          sub_1BC8EA61C();
          OUTLINED_FUNCTION_225();
          OUTLINED_FUNCTION_28_15(v70, 4);
        }
      }

      else
      {
        v63 = sub_1BC8F7714();
        v64 = sub_1BC8F81E4();
        if (OUTLINED_FUNCTION_7_23(v64))
        {
          OUTLINED_FUNCTION_45();
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_1BC7A3000, v63, v39, "MessageContainer: Failed to get StoredMessage entity! Check for CoreData errors!", v65, 2u);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        sub_1BC8EA61C();
        OUTLINED_FUNCTION_225();
        OUTLINED_FUNCTION_28_15(v66, 3);
      }
    }
  }

  else
  {
    v45(v34, v25, v26);
    v54 = sub_1BC8F7714();
    v55 = sub_1BC8F81E4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_21_1();
      v57 = swift_slowAlloc();
      a10 = v57;
      *v56 = 136446210;
      sub_1BC80DFB0();
      v58 = sub_1BC8F8A54();
      v60 = v59;
      (*(v29 + 8))(v34, v26);
      v61 = sub_1BC7A9A4C(v58, v60, &a10);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_1BC7A3000, v54, v55, "MessageContainer: Error initializing mom from: %{public}s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      (*(v29 + 8))(v34, v26);
    }

    sub_1BC8EA61C();
    OUTLINED_FUNCTION_225();
    OUTLINED_FUNCTION_28_15(v62, 2);
  }

  OUTLINED_FUNCTION_23();
}

void sub_1BC8E8DF0()
{
  OUTLINED_FUNCTION_22();
  v71 = v1;
  v79 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  LODWORD(v72) = v8;
  v81[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1BC8F7014();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_0();
  v77 = v15 - v16;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_4();
  v76 = v18;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v22 = objc_allocWithZone(MEMORY[0x1E695D668]);
  v23 = sub_1BC8EA5B8(0xD000000000000014, 0x80000001BC90A760, v3);
  v24 = [v23 viewContext];
  [v24 setMergePolicy_];

  v25 = [v23 viewContext];
  v26 = OUTLINED_FUNCTION_19_21();
  [v25 setTransactionAuthor_];

  v80 = v23;
  v27 = [v23 viewContext];
  [v27 setAutomaticallyMergesChangesFromParent_];

  v28 = sub_1BC7D9730(0, &qword_1EDC1DD88, 0x1E695D6C8);
  v78 = v12;
  isa = v12[2].isa;
  v74 = v5;
  isa(v21, v5, v9);
  v29 = sub_1BC8E95C8(v21);
  sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
  v30 = sub_1BC8F8374();
  [v29 setOption:v30 forKey:*MEMORY[0x1E695D3C0]];

  sub_1BC7C3588(0x6C61636F4CLL, 0xE500000000000000, v29, &selRef_setConfiguration_);
  v75 = v7;
  v31 = sub_1BC8E9AD8(v7);
  sub_1BC7C3588(0x64756F6C43, 0xE500000000000000, v31, &selRef_setConfiguration_);
  v79 = sub_1BC8E9C78();
  if (v72 == 1)
  {
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_0_19();
    }

    v32 = sub_1BC8F7734();
    __swift_project_value_buffer(v32, qword_1EDC2B3A8);
    v33 = sub_1BC8F7714();
    v34 = sub_1BC8F8204();
    v35 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_45();
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1BC7A3000, v33, v34, "MessageContainer: Cloud mirroring enabled, setting container options", v37, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    sub_1BC7D9730(0, &qword_1EDC1DD80, 0x1E695D680);
    v38 = sub_1BC8E9664();
    v39 = sub_1BC8F7BE4();
    [v38 setApsConnectionMachServiceName_];

    [v38 setAutomaticallyDownloadFileBackedFutures_];
    v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v38 setOperationMemoryThresholdBytes_];

    [v38 setUseDeviceToDeviceEncryption_];
    [v38 setContainerOptions_];
    v41 = sub_1BC8F8384();
    [v38 setCkAssetThresholdBytes_];

    [v31 setCloudKitContainerOptions_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1BC8FEA90;
  *(v42 + 32) = v31;
  *(v42 + 40) = v29;
  v43 = v31;
  v44 = v29;
  sub_1BC8F7E34();
  OUTLINED_FUNCTION_16_3();

  v45 = v80;
  [v80 setPersistentStoreDescriptions_];

  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v46 = sub_1BC8F7734();
  v47 = __swift_project_value_buffer(v46, qword_1EDC2B3A8);
  v48 = v76;
  v49 = isa;
  isa(v76, v74, v9);
  v50 = v77;
  v49(v77, v75, v9);
  v51 = sub_1BC8F7714();
  v52 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_7_23(v52))
  {
    v53 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v81[0] = v74;
    *v53 = 136446466;
    sub_1BC80DFB0();
    v75 = v43;
    v54 = v50;
    LODWORD(isa) = v47;
    v55 = sub_1BC8F8A54();
    v72 = v51;
    v56 = v44;
    v58 = v57;
    v59 = v78[1].isa;
    v59(v48, v9);
    v60 = sub_1BC7A9A4C(v55, v58, v81);
    v44 = v56;

    *(v53 + 4) = v60;
    *(v53 + 12) = 2082;
    v61 = sub_1BC8F8A54();
    v63 = v62;
    v64 = v54;
    v43 = v75;
    v59(v64, v9);
    v65 = sub_1BC7A9A4C(v61, v63, v81);

    *(v53 + 14) = v65;
    v66 = v72;
    _os_log_impl(&dword_1BC7A3000, v72, isa, "MessageContainer: Attempting to load persistent stores. local store: %{public}s, cloudStore: %{public}s", v53, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v45 = v80;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v66 = v78 + 1;
    v67 = v78[1].isa;
    v67(v50, v9);
    v67(v48, v9);
  }

  v81[0] = 0;
  if ([v45 load_])
  {
    v68 = v81[0];
  }

  else
  {
    v69 = v81[0];
    OUTLINED_FUNCTION_10_2();
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  v70 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_23();
}

id sub_1BC8E95C8(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BC8F6F44();
  v4 = [v2 initWithURL_];

  v5 = sub_1BC8F7014();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_1BC8E9664()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BC8F7BE4();

  v2 = [v0 initWithContainerIdentifier_];

  return v2;
}

void sub_1BC8E96D8()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v4 = v3;
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BC8F7014();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  v14 = objc_allocWithZone(MEMORY[0x1E695D688]);
  v15 = sub_1BC8EA5B8(0xD000000000000014, 0x80000001BC90A760, v2);
  v16 = sub_1BC8E9AD8(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC904010;
  *(v17 + 32) = v16;
  sub_1BC7D9730(0, &qword_1EDC1DD88, 0x1E695D6C8);
  v37 = v16;
  v18 = sub_1BC8F7E34();

  [v15 setPersistentStoreDescriptions_];

  v19 = &off_1E7FF5000;
  v20 = [v15 viewContext];
  [v20 setMergePolicy_];

  v21 = [v15 viewContext];
  v22 = OUTLINED_FUNCTION_19_21();
  [v21 setTransactionAuthor_];

  v23 = [v15 viewContext];
  [v23 setAutomaticallyMergesChangesFromParent_];

  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v24 = sub_1BC8F7734();
  __swift_project_value_buffer(v24, qword_1EDC2B3A8);
  (*(v8 + 16))(v13, v4, v5);
  v25 = sub_1BC8F7714();
  v26 = v13;
  v27 = sub_1BC8F8204();
  if (os_log_type_enabled(v25, v27))
  {
    v28 = OUTLINED_FUNCTION_21_1();
    v29 = swift_slowAlloc();
    v38[0] = v29;
    *v28 = 136446210;
    sub_1BC80DFB0();
    v30 = sub_1BC8F8A54();
    v31 = v8;
    v32 = v30;
    v19 = v33;
    (*(v31 + 8))(v26, v5);
    sub_1BC7A9A4C(v32, v19, v38);
    OUTLINED_FUNCTION_10_2();

    *(v28 + 4) = v26;
    _os_log_impl(&dword_1BC7A3000, v25, v27, "MessageContainer: Attempting to load persistent store at: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    (*(v8 + 8))(v26, v5);
  }

  v38[0] = 0;
  if ([v15 load_])
  {
    v34 = v38[0];
  }

  else
  {
    v35 = v38[0];
    OUTLINED_FUNCTION_16_3();
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  v36 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_23();
}

id sub_1BC8E9AD8(uint64_t a1)
{
  v2 = sub_1BC8F7014();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  sub_1BC7D9730(0, &qword_1EDC1DD88, 0x1E695D6C8);
  (*(v5 + 16))(v10, a1, v2);
  v11 = sub_1BC8E95C8(v10);
  [v11 setType_];
  sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
  v12 = sub_1BC8F8374();
  [v11 setOption:v12 forKey:*MEMORY[0x1E695D3C0]];

  v13 = sub_1BC8F8374();
  [v11 setOption:v13 forKey:*MEMORY[0x1E695D380]];

  v14 = sub_1BC8F8374();
  [v11 setOption:v14 forKey:*MEMORY[0x1E695D430]];

  return v11;
}

id sub_1BC8E9C78()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
  v2 = sub_1BC84A1F4(*(v0 + 160) != 2);
  sub_1BC7C3588(v2, v3, v1, &selRef_setApplicationBundleIdentifierOverrideForNetworkAttribution_);
  sub_1BC7C3588(0xD000000000000012, 0x80000001BC90B6C0, v1, &selRef_setApplicationBundleIdentifierOverrideForPushTopicGeneration_);
  [v1 setMmcsEncryptionSupport_];
  return v1;
}

uint64_t sub_1BC8E9D10()
{
  v1 = *(v0 + 24);
  sub_1BC7BE108(*(v0 + 16));
  v2 = *(v0 + 40);
  sub_1BC7BE108(*(v0 + 32));
  v3 = *(v0 + 56);
  sub_1BC7BE108(*(v0 + 48));
  v4 = *(v0 + 72);
  sub_1BC7BE108(*(v0 + 64));
  v5 = *(v0 + 88);
  sub_1BC7BE108(*(v0 + 80));
  sub_1BC8EA6E4(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  return v0;
}

uint64_t sub_1BC8E9D6C()
{
  sub_1BC8E9D10();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

uint64_t get_enum_tag_for_layout_string_20FaceTimeMessageStore23CloudKitContextProviderC5State33_7E350AE206DE3E3E724D8207B39219CFLLO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BC8E9DFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 49))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC8E9E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BC8E9E90(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1BC8E9EC8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 40);
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  return sub_1BC7BE108(v4);
}

uint64_t sub_1BC8E9EE0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 72);
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  return sub_1BC7BE108(v4);
}

uint64_t sub_1BC8E9EF8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  return sub_1BC7BE108(v4);
}

uint64_t sub_1BC8E9F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (qword_1EDC1E1D8 != -1)
  {
    swift_once();
  }

  v13 = sub_1BC8F7734();
  __swift_project_value_buffer(v13, qword_1EDC2B280);
  v14 = sub_1BC8F7714();
  v15 = sub_1BC8F8204();
  v16 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_45();
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1BC7A3000, v14, v15, "Fetching account info from CloudKit!", v18, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v19 = v12[19];

  sub_1BC7D9730(0, &unk_1EDC1DE90, 0x1E695B888);
  sub_1BC7D9730(0, &qword_1EDC1DE68, 0x1E695B8A0);
  v20 = sub_1BC8EA450(0xD00000000000001FLL, 0x80000001BC90E8B0, 1);
  v21 = sub_1BC8E9C78();
  v22 = sub_1BC8EA4CC(v20, v21);
  v12[20] = v22;
  v12[2] = v12;
  v12[7] = v12 + 18;
  v12[3] = sub_1BC8EA1A0;
  v23 = swift_continuation_init();
  v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6A28, &qword_1BC90A870);
  v12[10] = MEMORY[0x1E69E9820];
  v12[11] = 1107296256;
  v12[12] = sub_1BC8EA528;
  v12[13] = &block_descriptor_51_0;
  v12[14] = v23;
  [v22 accountInfoWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v12 + 2, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1BC8EA1A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1BC8EA3E0;
  }

  else
  {
    v3 = sub_1BC8EA2B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BC8EA2B0()
{
  v1 = v0[18];
  sub_1BC887800([v1 accountStatus]);
  if (([v1 supportsDeviceToDeviceEncryption] & 1) == 0)
  {
    [v1 deviceToDeviceEncryptionAvailability];
  }

  if ([v1 hasValidCredentials])
  {
    [v1 supportsDeviceToDeviceEncryption];
  }

  v2 = v0[20];
  [v1 hasValidCredentials];
  v3 = objc_allocWithZone(type metadata accessor for AccountInfo());
  v4 = AccountInfo.init(accountStatus:deviceToDeviceEncryption:hasValidCredentials:)();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1BC8EA3E0()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

id sub_1BC8EA450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1BC8F7BE4();

  v6 = [v4 initWithContainerIdentifier:v5 environment:a3];

  return v6;
}

id sub_1BC8EA4CC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainerID:a1 options:a2];

  return v4;
}

uint64_t *sub_1BC8EA528(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1BC899994(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1BC891000(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BC8EA5B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1BC8F7BE4();

  v6 = [v3 initWithName:v5 managedObjectModel:a3];

  return v6;
}

unint64_t sub_1BC8EA61C()
{
  result = qword_1EBCF6A20;
  if (!qword_1EBCF6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6A20);
  }

  return result;
}

id sub_1BC8EA670(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1BC8F7BE4();

  v7 = [a4 URLForResource:a1 withExtension:v6];

  return v7;
}

void sub_1BC8EA6E4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  if (a7 == 1)
  {
  }

  else
  {
    if (a7)
    {
      return;
    }

    a1 = a6;
  }
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC8EA7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrackedOutgoingMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

FaceTimeMessageStore::Caption __swiftcall Caption.init(confidence:range:)(Swift::Double confidence, FaceTimeMessageStore::CaptionRange_optional range)
{
  v3 = *(range.value.location + 16);
  *v2 = *range.value.location;
  *(v2 + 16) = v3;
  *(v2 + 24) = confidence;
  result.range = range;
  result.confidence = confidence;
  return result;
}

__n128 Caption.range.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

BOOL static Caption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    return v2 == *(a2 + 24);
  }

  result = 0;
  if ((*(a2 + 16) & 1) == 0 && *a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == *(a2 + 24);
  }

  return result;
}

uint64_t sub_1BC8EA91C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BC8EA9E8(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_1BC8EAA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8EA91C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8EAA50(uint64_t a1)
{
  v2 = sub_1BC8EAC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8EAA8C(uint64_t a1)
{
  v2 = sub_1BC8EAC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Caption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6A30, &qword_1BC90A8C0);
  v4 = OUTLINED_FUNCTION_0(v3);
  v18 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = *(v1 + 16);
  v13 = v1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8EAC54();
  sub_1BC8F8CA4();
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v19 = 0;
  sub_1BC8EACA8();
  v15 = v17;
  sub_1BC8F8974();
  if (!v15)
  {
    LOBYTE(v20) = 1;
    sub_1BC8F89C4();
  }

  return (*(v18 + 8))(v9, v3);
}

unint64_t sub_1BC8EAC54()
{
  result = qword_1EDC206F8;
  if (!qword_1EDC206F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206F8);
  }

  return result;
}

unint64_t sub_1BC8EACA8()
{
  result = qword_1EDC1F1F0;
  if (!qword_1EDC1F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F1F0);
  }

  return result;
}

uint64_t Caption.hash(into:)()
{
  v1 = v0[3];
  if (*(v0 + 16) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    v3 = *v0;
    v2 = *(v0 + 1);
    sub_1BC8F8C24();
    MEMORY[0x1BFB2A020](*&v3);
    MEMORY[0x1BFB2A020](v2);
  }

  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  return MEMORY[0x1BFB2A060](*&v4);
}

uint64_t Caption.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_1BC8F8C04();
  sub_1BC8F8C24();
  if (v3 != 1)
  {
    MEMORY[0x1BFB2A020](*&v2);
    MEMORY[0x1BFB2A020](v1);
  }

  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  MEMORY[0x1BFB2A060](*&v5);
  return sub_1BC8F8C64();
}

uint64_t Caption.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6A38, &qword_1BC90A8C8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8EAC54();
  sub_1BC8F8C84();
  if (!v2)
  {
    v20 = 0;
    sub_1BC8EB0C4();
    sub_1BC8F8864();
    v14 = v21;
    v15 = v22;
    v19 = v23;
    LOBYTE(v21) = 1;
    sub_1BC8F88C4();
    v17 = v16;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 8) = v15;
    *(a2 + 16) = v19;
    *(a2 + 24) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BC8EB024()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_1BC8F8C04();
  sub_1BC8F8C24();
  if (v3 != 1)
  {
    MEMORY[0x1BFB2A020](*&v2);
    MEMORY[0x1BFB2A020](v1);
  }

  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  MEMORY[0x1BFB2A060](*&v5);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC8EB0C4()
{
  result = qword_1EDC202E0;
  if (!qword_1EDC202E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC202E0);
  }

  return result;
}

unint64_t sub_1BC8EB11C()
{
  result = qword_1EBCF6A40;
  if (!qword_1EBCF6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6A40);
  }

  return result;
}

uint64_t sub_1BC8EB174(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC8EB194(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Caption.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC8EB2B0()
{
  result = qword_1EBCF6A48;
  if (!qword_1EBCF6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6A48);
  }

  return result;
}

unint64_t sub_1BC8EB308()
{
  result = qword_1EDC206E8;
  if (!qword_1EDC206E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206E8);
  }

  return result;
}

unint64_t sub_1BC8EB360()
{
  result = qword_1EDC206F0;
  if (!qword_1EDC206F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206F0);
  }

  return result;
}

uint64_t sub_1BC8EB3B4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore21ProtectedAppsProvider_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BC8EB400()
{
  *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore21ProtectedAppsProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProtectedAppsProvider();
  v1 = objc_msgSendSuper2(&v6, sel_init);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [objc_msgSend(v2 subjectMonitorRegistry)];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1BC8EB4EC(uint64_t a1)
{
  if (qword_1EDC1E208 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B2C8);

  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_1BC8F83C4();
    v8 = MEMORY[0x1BFB29280](a1, v7);
    v10 = sub_1BC7A9A4C(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Posting appProtectionSubjectsChanged notification for subjects: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BC87C68C();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BC8EB704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtectedAppsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BC8EB798()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BC8F7BE4();

  v2 = [v0 initWithString_];

  return v2;
}

id sub_1BC8EB80C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
    v5 = sub_1BC8F7A94();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1BC8EB8A8(char a1, uint64_t a2)
{
  v3 = sub_1BC8DF1AC(a1);
  v5 = v4;
  if (qword_1EDC1FFC8 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v6 = sub_1BC8F7734();
  __swift_project_value_buffer(v6, qword_1EDC2B350);

  v7 = sub_1BC8F7714();
  v8 = sub_1BC8F8204();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_1BC7A9A4C(v3, v5, v22);
    *(v9 + 12) = 2082;
    sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
    v10 = sub_1BC8F7AB4();
    v12 = sub_1BC7A9A4C(v10, v11, v22);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_1BC7A3000, v7, v8, "Reporting analytics with event %{public}s and payload %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v13 = sub_1BC8F7BE4();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v22[4] = sub_1BC8ED8F0;
  v22[5] = v14;
  OUTLINED_FUNCTION_1_34();
  v22[1] = 1107296256;
  v22[2] = sub_1BC8EB80C;
  v22[3] = &block_descriptor_14;
  v15 = _Block_copy(v22);

  v16 = AnalyticsSendEventLazy();
  _Block_release(v15);

  if (v16)
  {
  }

  else
  {

    v17 = sub_1BC8F7714();
    v18 = sub_1BC8F81E4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22[0] = v20;
      *v19 = 136446210;
      v21 = sub_1BC7A9A4C(v3, v5, v22);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_1BC7A3000, v17, v18, "CoreAnalytics rejected report with event %{public}s. Check that the event is enabled in the current config.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }
  }
}

uint64_t sub_1BC8EBC08(uint64_t a1, char a2)
{
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  if (a2)
  {
    v3 = *MEMORY[0x1E69E9C50];
    OUTLINED_FUNCTION_1_34();
    v6[1] = 1107296256;
    v6[2] = sub_1BC8342F0;
    v6[3] = &block_descriptor_27;
    v4 = _Block_copy(v6);

    xpc_activity_register("com.apple.telephonyutilities.facetimemessagestored.analytics.daily", v3, v4);

    _Block_release(v4);
  }

  return v2;
}

void sub_1BC8EBCEC(_xpc_activity_s *a1)
{
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    sub_1BC8EBFD0(a1);
    return;
  }

  if (!state)
  {
    if (qword_1EDC1FFC8 != -1)
    {
      swift_once();
    }

    v3 = sub_1BC8F7734();
    __swift_project_value_buffer(v3, qword_1EDC2B350);
    swift_unknownObjectRetain();
    oslog = sub_1BC8F7714();
    v4 = sub_1BC8F8204();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 136315138;
      if (xpc_activity_copy_criteria(a1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6AC8, qword_1BC90ABE8);
        v7 = sub_1BC8F7C94();
        v9 = v8;
      }

      else
      {
        v9 = 0xE300000000000000;
        v7 = 7104878;
      }

      v13 = sub_1BC7A9A4C(v7, v9, &v15);

      *(v5 + 4) = v13;
      _os_log_impl(&dword_1BC7A3000, oslog, v4, "XPC activity checked in. Criteria: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1BFB2AA50](v6, -1, -1);
      MEMORY[0x1BFB2AA50](v5, -1, -1);

      return;
    }

    goto LABEL_13;
  }

  if (qword_1EDC1FFC8 != -1)
  {
    swift_once();
  }

  v10 = sub_1BC8F7734();
  __swift_project_value_buffer(v10, qword_1EDC2B350);
  swift_unknownObjectRetain();
  oslog = sub_1BC8F7714();
  v11 = sub_1BC8F8204();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = xpc_activity_get_state(a1);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1BC7A3000, oslog, v11, "unhandled xpc activity state %ld", v12, 0xCu);
    MEMORY[0x1BFB2AA50](v12, -1, -1);
LABEL_13:

    return;
  }

  swift_unknownObjectRelease();
}

void sub_1BC8EBFD0(_xpc_activity_s *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  OUTLINED_FUNCTION_17_1();
  sub_1BC8ECDAC(v1 + 16, &v19);
  if (v20)
  {
    sub_1BC7CF5EC(&v19, v21);
    if (qword_1EDC1FFC8 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v8 = sub_1BC8F7734();
    __swift_project_value_buffer(v8, qword_1EDC2B350);
    v9 = sub_1BC8F7714();
    v10 = sub_1BC8F8204();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BC7A3000, v9, v10, "beginDailyMaintenance", v11, 2u);
      OUTLINED_FUNCTION_6();
    }

    xpc_activity_set_state(a1, 4);
    v12 = sub_1BC8F7FC4();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
    sub_1BC7A792C(v21, &v19);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v2;
    sub_1BC7CF5EC(&v19, (v13 + 5));
    v13[10] = a1;

    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_85();
    sub_1BC8333D4();

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_1BC7E6180(&v19, &qword_1EBCF5AF8, &qword_1BC9034C8);
    if (qword_1EDC1FFC8 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v14 = sub_1BC8F7734();
    __swift_project_value_buffer(v14, qword_1EDC2B350);
    v15 = sub_1BC8F7714();
    v16 = sub_1BC8F81E4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BC7A3000, v15, v16, "Can't perform daily maintenance because data source is nil!", v17, 2u);
      OUTLINED_FUNCTION_6();
    }
  }
}

uint64_t sub_1BC8EC280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v8 = *__swift_project_boxed_opaque_existential_1(a5, a5[3]);
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_1BC8EC344;

  return (sub_1BC8ECED0)(v8, a4);
}

uint64_t sub_1BC8EC344()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 24);
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BC8EC434, 0, 0);
}

uint64_t sub_1BC8EC434()
{
  OUTLINED_FUNCTION_5();
  xpc_activity_set_state(*(v0 + 16), 5);
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC8EC490(char a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - v13;
  sub_1BC8F7FA4();
  v15 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;
  *(v16 + 64) = a5;
  *(v16 + 72) = v5;

  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();
}

uint64_t sub_1BC8EC5A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a8;
  *(v8 + 120) = v10;
  *(v8 + 96) = a6;
  *(v8 + 104) = a7;
  *(v8 + 128) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BC8EC5D4, 0, 0);
}

uint64_t sub_1BC8EC5D4()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6AC0, &qword_1BC90ABA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FEAA0;
  v12 = sub_1BC8DF268(v3);
  v14 = v5;

  MEMORY[0x1BFB29120](0x746E756F635FLL, 0xE600000000000000);

  *(inited + 32) = v12;
  *(inited + 40) = v14;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v13 = sub_1BC8DF268(v3);
  v15 = v6;

  MEMORY[0x1BFB29120](0x5F646165726E755FLL, 0xED0000746E756F63);

  *(inited + 56) = v13;
  *(inited + 64) = v15;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
  v7 = sub_1BC8F7AD4();
  if (v1)
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    sub_1BC8DF268(*(v0 + 128));

    MEMORY[0x1BFB29120](0x7A69735F6576615FLL, 0xE900000000000065);

    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    swift_isUniquelyReferenced_nonNull_native();
    sub_1BC83E268();
  }

  sub_1BC8EB8A8(*(v0 + 128), v7);

  OUTLINED_FUNCTION_27();

  return v10();
}

uint64_t sub_1BC8EC824(char a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  sub_1BC8F7FA4();
  v9 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = v2;
  v11 = a2;

  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();
}

uint64_t sub_1BC8EC920(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 192) = a5;
  *(v6 + 200) = a6;
  *(v6 + 208) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BC8EC944, 0, 0);
}

uint64_t sub_1BC8EC944()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6AC0, &qword_1BC90ABA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FC240;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 1701869940;
  *(inited + 64) = 0xE400000000000000;
  sub_1BC7D9730(0, &qword_1EDC20640, 0x1E696AEC0);
  v4 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_17_1();
  sub_1BC80BFE8(*(v1 + v4));
  *(inited + 72) = sub_1BC8EB798();
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  v5 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_17_1();
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 104) = 1702521203;
  *(inited + 112) = 0xE400000000000000;
  v6 = sub_1BC8657DC();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
  v9 = sub_1BC8F7AD4();
  sub_1BC86EC18();
  if ((v11 & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    swift_isUniquelyReferenced_nonNull_native();
    sub_1BC83E268();
  }

  sub_1BC8EB8A8(*(v0 + 208), v9);

  OUTLINED_FUNCTION_27();

  return v12();
}

uint64_t sub_1BC8ECBA8()
{
  sub_1BC7E6180(v0 + 16, &qword_1EBCF5AF8, &qword_1BC9034C8);
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1BC8ECC1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_19(v6);
  *v7 = v8;
  v7[1] = sub_1BC80E420;
  v9 = OUTLINED_FUNCTION_3_31();

  return sub_1BC8EC920(v9, v10, v11, v5, v3, v4);
}

uint64_t sub_1BC8ECCD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 40);
  v8 = *(v0 + 32);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_19(v9);
  *v10 = v11;
  v10[1] = sub_1BC80E420;
  v12 = OUTLINED_FUNCTION_3_31();

  return sub_1BC8EC5A4(v12, v13, v14, v8, v7, v3, v4, v5);
}

uint64_t sub_1BC8ECDAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AF8, &qword_1BC9034C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC8ECE1C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[10];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v6[1] = sub_1BC80E234;
  v8 = OUTLINED_FUNCTION_3_31();

  return sub_1BC8EC280(v8, v9, v10, v3, v11, v4);
}

uint64_t sub_1BC8ECED0(uint64_t a1, uint64_t a2)
{
  v2[28] = a2;
  v4 = sub_1BC8F7014();
  v2[29] = v4;
  v5 = *(v4 - 8);
  v2[30] = v5;
  v6 = *(v5 + 64) + 15;
  v2[31] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v2[32] = Request;
  v8 = *(*(Request - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v9 = type metadata accessor for MessageStoreProviderDataSource();
  v2[34] = v9;
  v2[5] = v9;
  v2[6] = &off_1F3B3B9B8;
  v2[2] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BC8ECFEC, 0, 0);
}

uint64_t sub_1BC8ECFEC()
{
  v1 = v0[33];
  v2 = v0[32];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[34]);
  sub_1BC8F7254();
  *(v1 + v2[5]) = 0xE000000000000000;
  *(v1 + v2[6]) = 512;
  *(v1 + v2[7]) = 0;
  v4 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  v5 = (v1 + v2[8]);
  *v5 = v4;
  v5[1] = v6;
  *(v1 + v2[9]) = 0x7FFFFFFFFFFFFFFFLL;
  *(v1 + v2[10]) = 0;
  v7 = *v3;
  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_1BC8ED104;
  v9 = v0[33];

  return sub_1BC7BED60();
}

uint64_t sub_1BC8ED104()
{
  OUTLINED_FUNCTION_5();
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 264);
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v7 + 288) = v6;
  *(v7 + 296) = v0;

  sub_1BC7ADC24(v3);
  if (v0)
  {
    v8 = sub_1BC8ED74C;
  }

  else
  {
    v8 = sub_1BC8ED22C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

void sub_1BC8ED22C()
{
  v70 = sub_1BC7C0454(*(v0 + 288));
  if (v70)
  {
    v1 = 0;
    OUTLINED_FUNCTION_12_24();
    v2 = *(v0 + 288);
    v3 = *(v0 + 240);
    v69 = v2 & 0xC000000000000001;
    v58 = v2 + 32;
    v59 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v69)
      {
        v4 = MEMORY[0x1BFB29A00](v1, *(v0 + 288));
      }

      else
      {
        if (v1 >= *(v59 + 16))
        {
          goto LABEL_47;
        }

        v4 = *(v58 + 8 * v1);
      }

      v5 = v4;
      v6 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
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
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      if (qword_1EDC1FFC8 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v7 = sub_1BC8F7734();
      __swift_project_value_buffer(v7, qword_1EDC2B350);
      v8 = v5;
      v9 = sub_1BC8F7714();
      v10 = sub_1BC8F8204();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v8;
        *v12 = v8;
        v13 = v8;
        _os_log_impl(&dword_1BC7A3000, v9, v10, "%@", v11, 0xCu);
        sub_1BC7E6180(v12, &unk_1EBCF5DB0, &unk_1BC900410);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v14 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
      OUTLINED_FUNCTION_17_1();
      v15 = *&v8[v14];
      if (*&v8[v14])
      {
        if (v15 == 2)
        {
          OUTLINED_FUNCTION_17_1();
          OUTLINED_FUNCTION_10_28();
          if (__CFADD__(v68, v29))
          {
            goto LABEL_49;
          }

          if (v65 == -1)
          {
            goto LABEL_51;
          }

          v68 += v29;
          ++v65;
          v30 = *(v0 + 248);
          v31 = *(v0 + 232);
          OUTLINED_FUNCTION_17_1();
          v32 = OUTLINED_FUNCTION_2_34();
          v33(v32);
          sub_1BC7EF368();
          v35 = v34;
          v37 = v36;

          v38 = OUTLINED_FUNCTION_8_32();
          v39(v38);
          if (v37)
          {
            v40 = 0;
          }

          else
          {
            v40 = v35;
          }

          v28 = __CFADD__(v62, v40);
          v62 += v40;
          if (v28)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v15 != 1)
          {
            *(v0 + 304) = v15;

            sub_1BC8F8B04();
            return;
          }

          OUTLINED_FUNCTION_17_1();
          OUTLINED_FUNCTION_10_28();
          if (__CFADD__(v67, v16))
          {
            goto LABEL_48;
          }

          if (v64 == -1)
          {
            goto LABEL_53;
          }

          v67 += v16;
          ++v64;
          v17 = *(v0 + 248);
          v18 = *(v0 + 232);
          OUTLINED_FUNCTION_17_1();
          v19 = OUTLINED_FUNCTION_2_34();
          v20(v19);
          sub_1BC7EF368();
          v22 = v21;
          v24 = v23;

          v25 = OUTLINED_FUNCTION_8_32();
          v26(v25);
          if (v24)
          {
            v27 = 0;
          }

          else
          {
            v27 = v22;
          }

          v28 = __CFADD__(v61, v27);
          v61 += v27;
          if (v28)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_10_28();
        if (__CFADD__(v66, v41))
        {
          goto LABEL_50;
        }

        if (v63 == -1)
        {
          goto LABEL_52;
        }

        v66 += v41;
        ++v63;
        v42 = *(v0 + 248);
        v43 = *(v0 + 232);
        OUTLINED_FUNCTION_17_1();
        v44 = OUTLINED_FUNCTION_2_34();
        v45(v44);
        sub_1BC7EF368();
        v47 = v46;
        v49 = v48;

        v50 = OUTLINED_FUNCTION_8_32();
        v51(v50);
        if (v49)
        {
          v52 = 0;
        }

        else
        {
          v52 = v47;
        }

        v28 = __CFADD__(v60, v52);
        v60 += v52;
        if (v28)
        {
          goto LABEL_55;
        }
      }

      ++v1;
      if (v6 == v70)
      {
        goto LABEL_40;
      }
    }
  }

  OUTLINED_FUNCTION_12_24();
LABEL_40:
  v53 = *(v0 + 288);
  v54 = *(v0 + 224);

  sub_1BC8EC490(5, 0, v66, v63, v60);
  sub_1BC8EC490(6, 1, v67, v64, v61);
  sub_1BC8EC490(7, 2, v68, v65, v62);
  v55 = *(v0 + 264);
  v56 = *(v0 + 248);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_27();

  v57();
}

uint64_t sub_1BC8ED74C()
{
  if (qword_1EDC1FFC8 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B350);
  v3 = v1;
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F81E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[37];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Got an error while fetching messages for daily maintenance: %{public}@", v8, 0xCu);
    sub_1BC7E6180(v9, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  v12 = v0[33];
  v13 = v0[31];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_27();

  return v14();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 MessageUpdate.__allocating_init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, char a10, int a11, uint64_t a12, uint64_t a13, int a14, char a15, __int128 a16, uint64_t a17, char a18)
{
  v19 = objc_allocWithZone(v18);
  LOBYTE(v23) = a18;
  BYTE4(v22) = a15;
  LODWORD(v22) = a14 & 0x1FFFF;
  HIDWORD(v21) = a11 & 0x1FFFF;
  LOBYTE(v21) = a10 & 1;
  MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)(a1, a2, a3, a4, a5, a6, a7 & 1, a8, a9, v21, a12, a13, v22, a16, *(&a16 + 1), a17, v23, v24, a16, *(&a16 + 1), v25, v26, v27, a7, SBYTE2(a7), a1, a2, a3, SBYTE2(a3), SBYTE3(a3), BYTE4(a3), a4, a5, a6, a8);
  return result;
}

id MessageUpdate.__allocating_init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:reminderUUID:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, uint64_t a12, uint64_t a13, int a14, char a15, __int128 a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t *a20, char a21, uint64_t a22)
{
  v23 = objc_allocWithZone(v22);
  v34 = a19 | ((HIDWORD(a19) & 1) << 32);
  OUTLINED_FUNCTION_67_4();
  return MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:reminderUUID:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10 & 1, v33, a11, (a11 & 0x1FFFFu) >> 16, a12, a13, a14, (a14 & 0x1FFFFu) >> 16, (a14 & 0x1FFFFu) >> 24, a15, a16, *(&a16 + 1), a17, a18, v34, SBYTE4(v34), a20, a21, a22);
}

id MessageUpdate.__allocating_init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, uint64_t a12, uint64_t a13, int a14, char a15, __int128 a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t *a20, char a21)
{
  v22 = objc_allocWithZone(v21);
  v33 = a19 | ((HIDWORD(a19) & 1) << 32);
  OUTLINED_FUNCTION_67_4();
  return MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10 & 1, v32, a11, (a11 & 0x1FFFFu) >> 16, a12, a13, a14, (a14 & 0x1FFFFu) >> 16, (a14 & 0x1FFFFu) >> 24, a15, a16, *(&a16 + 1), a17, a18, v33, SBYTE4(v33), a20, a21);
}

uint64_t MessageUpdate.recordUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID;
  v4 = sub_1BC8F7264();
  OUTLINED_FUNCTION_10(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MessageUpdate.duration.getter()
{
  result = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration);
  v2 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration + 8);
  return result;
}

uint64_t MessageUpdate.summary.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary);
  *(a1 + 16) = v2;
}

id MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t *a26, char a27)
{
  v28 = v27;
  ObjectType = swift_getObjectType();
  v57 = a26[1];
  v58 = *a26;
  v56 = a26[2];
  v33 = OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID;
  v34 = sub_1BC8F7264();
  v35 = *(v34 - 8);
  (*(v35 + 16))(&v28[v33], a1, v34);
  OUTLINED_FUNCTION_74_5(a2, &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID]);
  OUTLINED_FUNCTION_74_5(a3, &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID]);
  v36 = 0;
  v37 = 0;
  v38 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from];
  *v38 = a4;
  v38[1] = a5;
  if ((a7 & 1) == 0)
  {
    v36 = MessageStoreProvider.identifierString.getter(a6);
  }

  v39 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider];
  *v39 = v36;
  v39[1] = v37;
  v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead] = a8;
  v40 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration];
  *v40 = a9;
  v40[8] = a10 & 1;
  v41 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType];
  *v41 = a12;
  v41[2] = a13 & 1;
  v42 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient];
  *v42 = a14;
  v42[1] = a15;
  v43 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus];
  *v43 = a16;
  v43[2] = a17 & 1;
  v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT] = a19;
  sub_1BC8EEA08(a20, &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL], &qword_1EBCF5A20, &qword_1BC901BF0);
  v44 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID];
  *v44 = a21;
  v44[1] = a22;
  sub_1BC8EEA08(a23, &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated], &unk_1EBCF5D80, &qword_1BC8FEA60);
  v45 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID];
  *v45 = a24;
  v45[4] = a25 & 1;
  v46 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary];
  *v46 = v58;
  v46[1] = v57;
  v46[2] = v56;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v34);
  v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete] = a27 & 1;
  v60.receiver = v28;
  v60.super_class = ObjectType;
  v50 = objc_msgSendSuper2(&v60, sel_init);
  sub_1BC862F74(a23, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_51_9(a20);
  OUTLINED_FUNCTION_51_9(a3);
  OUTLINED_FUNCTION_51_9(a2);
  (*(v35 + 8))(a1, v34);
  return v50;
}

void MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, __int16 a23, __int16 a24, char a25, uint64_t a26, uint64_t a27, __int16 a28, char a29, char a30, unsigned __int8 a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned __int8 a35)
{
  OUTLINED_FUNCTION_29_0();
  v36 = v35;
  v85 = v37;
  v81 = v38;
  v78 = v40;
  v79 = v39;
  v80 = v41;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v91 = a35;
  v88 = a33;
  v89 = a34;
  v92 = a32;
  v87 = a31;
  v86 = a27;
  v84 = a26;
  v83 = a22;
  v82 = a21;
  ObjectType = swift_getObjectType();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v77 - v52;
  v54 = OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID;
  v55 = sub_1BC8F7264();
  v56 = *(v55 - 8);
  v57 = *(v56 + 16);
  v95 = v47;
  v57(&v36[v54], v47, v55);
  v94 = v45;
  OUTLINED_FUNCTION_74_5(v45, &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID]);
  v93 = v43;
  OUTLINED_FUNCTION_74_5(v43, &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID]);
  v58 = 0;
  v59 = 0;
  v60 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from];
  v61 = v80;
  *v60 = v79;
  v60[1] = v61;
  if ((v81 & 1) == 0)
  {
    v58 = MessageStoreProvider.identifierString.getter(v78);
  }

  v62 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider];
  *v62 = v58;
  v62[1] = v59;
  v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead] = v85;
  v63 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration];
  *v63 = v82;
  v63[8] = v83 & 1;
  v64 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType];
  *v64 = a24;
  v64[2] = a25 & 1;
  v65 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient];
  v66 = v86;
  *v65 = v84;
  v65[1] = v66;
  v67 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus];
  *v67 = a28;
  v67[2] = a29 & 1;
  v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT] = v87;
  v68 = v92;
  sub_1BC8EEA08(v92, &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL], &qword_1EBCF5A20, &qword_1BC901BF0);
  v69 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID];
  v70 = v89;
  *v69 = v88;
  v69[1] = v70;
  sub_1BC8F71D4();
  v71 = sub_1BC8F71E4();
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v71);
  sub_1BC8EF81C(v53, &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated], &unk_1EBCF5D80, &qword_1BC8FEA60);
  v72 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID];
  *v72 = 0;
  v72[4] = 1;
  v73 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary];
  *v73 = 0;
  v73[1] = 0;
  v73[2] = 0;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v55);
  v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete] = v91 & 1;
  v96.receiver = v36;
  v96.super_class = ObjectType;
  objc_msgSendSuper2(&v96, sel_init);
  OUTLINED_FUNCTION_51_9(v68);
  OUTLINED_FUNCTION_51_9(v93);
  OUTLINED_FUNCTION_51_9(v94);
  (*(v56 + 8))(v95, v55);
  OUTLINED_FUNCTION_24();
}

id MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:reminderUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t *a26, char a27, uint64_t a28)
{
  v29 = v28;
  ObjectType = swift_getObjectType();
  v64 = a26[1];
  v65 = *a26;
  v63 = a26[2];
  v35 = OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID;
  v36 = sub_1BC8F7264();
  v37 = *(v36 - 8);
  v67 = v36;
  (*(v37 + 16))(&v29[v35], a1);
  sub_1BC8EEA08(a2, &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID], &unk_1EBCF5D70, &qword_1BC8FC740);
  sub_1BC8EEA08(a3, &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID], &unk_1EBCF5D70, &qword_1BC8FC740);
  v38 = 0;
  v39 = 0;
  v40 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from];
  *v40 = a4;
  v40[1] = a5;
  if ((a7 & 1) == 0)
  {
    v38 = MessageStoreProvider.identifierString.getter(a6);
  }

  v41 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider];
  *v41 = v38;
  v41[1] = v39;
  v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead] = a8;
  v42 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration];
  *v42 = a9;
  v42[8] = a10 & 1;
  v43 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType];
  *v43 = a12;
  v43[2] = a13 & 1;
  v44 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient];
  *v44 = a14;
  v44[1] = a15;
  v45 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus];
  *v45 = a16;
  v45[2] = a17 & 1;
  v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT] = a19;
  sub_1BC8EEA08(a20, &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL], &qword_1EBCF5A20, &qword_1BC901BF0);
  v46 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID];
  *v46 = a21;
  v46[1] = a22;
  sub_1BC8EEA08(a23, &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated], &unk_1EBCF5D80, &qword_1BC8FEA60);
  v47 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID];
  *v47 = a24;
  v47[4] = a25 & 1;
  v48 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary];
  *v48 = v65;
  v48[1] = v64;
  v48[2] = v63;
  sub_1BC8EEA08(a28, &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_reminderUUID], &unk_1EBCF5D70, &qword_1BC8FC740);
  v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete] = a27 & 1;
  v68.receiver = v29;
  v68.super_class = ObjectType;
  v49 = objc_msgSendSuper2(&v68, sel_init);
  OUTLINED_FUNCTION_50_8();
  sub_1BC862F74(v50, v51, v52);
  sub_1BC862F74(a23, &unk_1EBCF5D80, &qword_1BC8FEA60);
  sub_1BC862F74(a20, &qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_50_8();
  sub_1BC862F74(v53, v54, v55);
  OUTLINED_FUNCTION_50_8();
  sub_1BC862F74(v56, v57, v58);
  (*(v37 + 8))(a1, v67);
  return v49;
}

uint64_t sub_1BC8EEA08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_29();
  v9(v8);
  return v4;
}

void MessageUpdate.init(coder:)()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v0;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v7 = OUTLINED_FUNCTION_25(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  v161 = v10;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v11);
  v162 = &v156 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31();
  v159 = v17;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v18);
  v160 = &v156 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v21 = OUTLINED_FUNCTION_25(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_31();
  v163 = v24;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v25);
  v164 = &v156 - v26;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_3();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v156 - v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15_5();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v156 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v156 - v36;
  v38 = sub_1BC8F7264();
  v39 = OUTLINED_FUNCTION_0(v38);
  v167 = v40;
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v39);
  v45 = &v156 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v166 = &v156 - v46;
  v169 = sub_1BC7D9730(0, &qword_1EDC20648, 0x1E696AFB0);
  v47 = sub_1BC8F8364();
  if (!v47)
  {

    goto LABEL_6;
  }

  v48 = v47;
  v168 = v3;
  v165 = v5;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v38);
  OUTLINED_FUNCTION_5_28();
  v158 = sub_1BC8F322C(v52, v53);
  sub_1BC8F87F4();

  OUTLINED_FUNCTION_28_16(v37);
  if (v54)
  {

    v3 = v168;
LABEL_6:
    v55 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v56 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
LABEL_70:
    OUTLINED_FUNCTION_24();
    return;
  }

  v57 = v167;
  v58 = *(v167 + 32);
  v58(v45, v37, v38);
  v59 = v166;
  v157 = v58;
  v58(v166, v45, v38);
  (*(v57 + 16))(v168 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v59, v38);
  v60 = sub_1BC8F8364();
  if (v60)
  {
    v61 = v60;
    v62 = 1;
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v38);
    OUTLINED_FUNCTION_52_7();

    OUTLINED_FUNCTION_28_16(v1);
    if (!v54)
    {
      v157(v35, v1, v38);
      v62 = 0;
    }
  }

  else
  {
    v62 = 1;
  }

  v66 = 1;
  __swift_storeEnumTagSinglePayload(v35, v62, 1, v38);
  sub_1BC8EF81C(v35, v168 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID, &unk_1EBCF5D70, &qword_1BC8FC740);
  v67 = v165;
  v68 = v165;
  v69 = sub_1BC8F8364();
  if (v69)
  {
    v70 = v69;
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v38);
    OUTLINED_FUNCTION_52_7();

    OUTLINED_FUNCTION_28_16(v2);
    v74 = v161;
    v75 = v159;
    if (!v54)
    {
      v157(v31, v2, v38);
      v66 = 0;
    }
  }

  else
  {
    v74 = v161;
    v75 = v159;
  }

  __swift_storeEnumTagSinglePayload(v31, v66, 1, v38);
  v76 = v168;
  sub_1BC8EF81C(v31, v168 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID, &unk_1EBCF5D70, &qword_1BC8FC740);
  sub_1BC7D9730(0, &qword_1EDC20640, 0x1E696AEC0);
  if (OUTLINED_FUNCTION_55_5())
  {
    OUTLINED_FUNCTION_45_13();

    OUTLINED_FUNCTION_32_11();
  }

  else
  {
    OUTLINED_FUNCTION_63_6();
  }

  OUTLINED_FUNCTION_62_4(v77);
  if (sub_1BC8F8364())
  {
    OUTLINED_FUNCTION_45_13();

    OUTLINED_FUNCTION_32_11();
  }

  else
  {
    OUTLINED_FUNCTION_63_6();
  }

  OUTLINED_FUNCTION_62_4(v78);
  sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
  v79 = OUTLINED_FUNCTION_55_5();
  v80 = 2;
  if (v79)
  {
    v81 = v79;
    LOBYTE(v171) = 2;
    MEMORY[0x1BFB29350](v79, &v171);

    v80 = v171;
  }

  v76[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead] = v80;
  v82 = OUTLINED_FUNCTION_53_9();
  v83 = 1;
  if (v82)
  {
    v84 = v82;
    *&v171 = 0;
    BYTE8(v171) = 1;
    MEMORY[0x1BFB294E0](v82, &v171);

    v85 = v171;
    v83 = BYTE8(v171);
  }

  else
  {
    v85 = 0;
  }

  v86 = &v76[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration];
  *v86 = v85;
  v86[8] = v83;
  v87 = OUTLINED_FUNCTION_53_9();
  v88 = 2;
  if (v87)
  {
    v89 = v87;
    LOBYTE(v171) = 2;
    MEMORY[0x1BFB29350](v87, &v171);

    v88 = v171;
  }

  v76[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT] = v88;
  if (sub_1BC8F8364())
  {
    OUTLINED_FUNCTION_45_13();

    OUTLINED_FUNCTION_32_11();
  }

  else
  {
    OUTLINED_FUNCTION_63_6();
  }

  OUTLINED_FUNCTION_62_4(v90);
  sub_1BC7D9730(0, &qword_1EDC1FF38, 0x1E695DFF8);
  v91 = OUTLINED_FUNCTION_55_5();
  if (v91)
  {
    v92 = v91;
    v93 = sub_1BC8F7014();
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
    OUTLINED_FUNCTION_4_20();
    sub_1BC8F322C(v97, v98);
    sub_1BC8F87F4();

    OUTLINED_FUNCTION_43(v75, 1, v93);
    if (v54)
    {
      v102 = v160;
      v103 = v160;
      v104 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_10(v93);
      v102 = v160;
      (*(v101 + 32))(v160, v75, v93);
      v103 = v102;
      v104 = 0;
    }

    v99 = 1;
    v100 = v93;
  }

  else
  {
    sub_1BC8F7014();
    v102 = v160;
    OUTLINED_FUNCTION_122();
  }

  __swift_storeEnumTagSinglePayload(v103, v104, v99, v100);
  sub_1BC8EF81C(v102, &v76[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL], &qword_1EBCF5A20, &qword_1BC901BF0);
  if (sub_1BC8F8364())
  {
    OUTLINED_FUNCTION_45_13();

    OUTLINED_FUNCTION_32_11();
  }

  else
  {
    OUTLINED_FUNCTION_63_6();
  }

  v106 = v163;
  OUTLINED_FUNCTION_62_4(v105);
  sub_1BC7D9730(0, &qword_1EDC1FF30, 0x1E695DF00);
  v107 = OUTLINED_FUNCTION_55_5();
  if (v107)
  {
    v108 = v107;
    v109 = sub_1BC8F71E4();
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v109);
    OUTLINED_FUNCTION_3_32();
    sub_1BC8F322C(v113, v114);
    OUTLINED_FUNCTION_46_10();
    sub_1BC8F87F4();

    OUTLINED_FUNCTION_43(v74, 1, v109);
    if (v54)
    {
      v119 = v162;
      v122 = v162;
      v123 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_10(v109);
      v118 = *(v117 + 32);
      v119 = v162;
      v120 = OUTLINED_FUNCTION_46_10();
      v121(v120);
      v122 = v119;
      v123 = 0;
    }

    v115 = 1;
    v116 = v109;
  }

  else
  {
    sub_1BC8F71E4();
    v119 = v162;
    OUTLINED_FUNCTION_122();
  }

  __swift_storeEnumTagSinglePayload(v122, v123, v115, v116);
  sub_1BC8EF81C(v119, &v76[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated], &unk_1EBCF5D80, &qword_1BC8FEA60);
  v124 = OUTLINED_FUNCTION_53_9();
  v125 = 1;
  if (v124)
  {
    v126 = v124;
    LODWORD(v171) = 0;
    BYTE4(v171) = 1;
    sub_1BC8F8BF4();

    v127 = v171;
    v125 = BYTE4(v171);
  }

  else
  {
    v127 = 0;
  }

  v128 = &v76[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID];
  *v128 = v127;
  v128[4] = v125;
  v129 = OUTLINED_FUNCTION_53_9();
  if (v129)
  {
    v130 = v129;
    LOBYTE(v171) = 2;
    MEMORY[0x1BFB29350](v129, &v171);

    v131 = v171;
  }

  else
  {
    v131 = 0;
  }

  v76[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete] = v131 & 1;
  v132 = OUTLINED_FUNCTION_55_5();
  if (v132)
  {
    v133 = v132;
    v134 = 1;
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v38);
    OUTLINED_FUNCTION_52_7();

    OUTLINED_FUNCTION_28_16(v106);
    v138 = v164;
    if (!v54)
    {
      v157(v164, v106, v38);
      v134 = 0;
    }
  }

  else
  {
    v134 = 1;
    v138 = v164;
  }

  v139 = 1;
  __swift_storeEnumTagSinglePayload(v138, v134, 1, v38);
  sub_1BC8EF81C(v138, &v76[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_reminderUUID], &unk_1EBCF5D70, &qword_1BC8FC740);
  v140 = OUTLINED_FUNCTION_53_9();
  if (v140)
  {
    v141 = v140;
    LOWORD(v171) = 0;
    BYTE2(v171) = 1;
    sub_1BC8F8BD4();

    if (BYTE2(v171))
    {
      LOWORD(v140) = 0;
    }

    else
    {
      v140 = MailboxType.init(rawValue:)(v171);
      if ((v140 & 0x10000) != 0)
      {
        __break(1u);
        goto LABEL_72;
      }

      v139 = 0;
    }
  }

  v142 = &v76[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType];
  *v142 = v140;
  v142[2] = v139;
  v143 = OUTLINED_FUNCTION_53_9();
  v144 = 1;
  if (!v143)
  {
LABEL_66:
    v146 = &v76[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus];
    *v146 = v143;
    v146[2] = v144;
    type metadata accessor for XPCWrapper();
    v147 = OUTLINED_FUNCTION_55_5();
    if (v147)
    {
      v148 = v147;
      sub_1BC864600();
      v152 = OUTLINED_FUNCTION_47_10();
      v153(v152);

      v154 = v172;
      v155 = &v76[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary];
      *v155 = v171;
      *(v155 + 2) = v154;
    }

    else
    {
      v149 = OUTLINED_FUNCTION_47_10();
      v150(v149);
      v151 = &v76[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary];
      v151[1] = 0;
      v151[2] = 0;
      *v151 = 0;
    }

    v173.receiver = v76;
    v173.super_class = ObjectType;
    objc_msgSendSuper2(&v173, sel_init);

    goto LABEL_70;
  }

  v145 = v143;
  LOWORD(v171) = 0;
  BYTE2(v171) = 1;
  sub_1BC8F8BD4();

  if (BYTE2(v171))
  {
    LOWORD(v143) = 0;
    goto LABEL_66;
  }

  v143 = TranscriptionStatus.init(rawValue:)(v171);
  if ((v143 & 0x10000) == 0)
  {
    v144 = 0;
    goto LABEL_66;
  }

LABEL_72:
  __break(1u);
}

uint64_t sub_1BC8EF81C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_29();
  v9(v8);
  return v4;
}

Swift::Void __swiftcall MessageUpdate.encode(with:)(NSCoder with)
{
  OUTLINED_FUNCTION_29_0();
  v3 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v77 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v19 = OUTLINED_FUNCTION_25(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_31();
  v78 = v22;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v77 - v25;
  v28 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary);
  v27 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 8);
  v29 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 16);
  v30 = objc_allocWithZone(type metadata accessor for XPCWrapper());

  v77 = sub_1BC8642A4(v28, v27, v29);
  v31 = sub_1BC8F7214();
  v32 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_68_1();

  sub_1BC8EEA08(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID, v26, &unk_1EBCF5D70, &qword_1BC8FC740);
  v33 = sub_1BC8F7264();
  if (__swift_getEnumTagSinglePayload(v26, 1, v33) != 1)
  {
    sub_1BC8F7214();
    OUTLINED_FUNCTION_10(v33);
    (*(v34 + 8))(v26, v33);
  }

  v35 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v35);
  swift_unknownObjectRelease();

  sub_1BC8EEA08(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID, v2, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_43(v2, 1, v33);
  if (!v36)
  {
    sub_1BC8F7214();
    OUTLINED_FUNCTION_10(v33);
    (*(v37 + 8))(v2, v33);
  }

  v38 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v38);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_61_5(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from);
  if (v40)
  {
    v41 = *v39;
    sub_1BC8F7BE4();
  }

  v42 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v42);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_61_5(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider);
  if (v44)
  {
    v45 = *v43;
    sub_1BC8F7BE4();
  }

  v46 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v46);
  swift_unknownObjectRelease();

  if (*(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead) != 2)
  {
    sub_1BC8F7F34();
  }

  v47 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v47);
  swift_unknownObjectRelease();

  if ((*(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration + 8) & 1) == 0)
  {
    v48 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration);
    sub_1BC8F80C4();
  }

  v49 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v49);
  swift_unknownObjectRelease();

  if ((*(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType + 2) & 1) == 0)
  {
    v80 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType);
    sub_1BC8F8A94();
  }

  v50 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v50);
  swift_unknownObjectRelease();

  if ((*(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus + 2) & 1) == 0)
  {
    v79 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus);
    sub_1BC8F8A94();
  }

  v51 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v51);
  swift_unknownObjectRelease();

  if (*(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT) != 2)
  {
    sub_1BC8F7F34();
  }

  v52 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v52);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_61_5(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient);
  if (v54)
  {
    v55 = *v53;
    sub_1BC8F7BE4();
  }

  v56 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v56);
  swift_unknownObjectRelease();

  sub_1BC8EEA08(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL, v17, &qword_1EBCF5A20, &qword_1BC901BF0);
  v57 = sub_1BC8F7014();
  if (__swift_getEnumTagSinglePayload(v17, 1, v57) != 1)
  {
    sub_1BC8F6F44();
    OUTLINED_FUNCTION_10(v57);
    (*(v58 + 8))(v17, v57);
  }

  v59 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v59);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_61_5(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID);
  if (v61)
  {
    v62 = *v60;
    sub_1BC8F7BE4();
  }

  v63 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v63);
  swift_unknownObjectRelease();

  sub_1BC8EEA08(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated, v11, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v64 = sub_1BC8F71E4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v64) != 1)
  {
    sub_1BC8F7174();
    OUTLINED_FUNCTION_10(v64);
    (*(v65 + 8))(v11, v64);
  }

  v66 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v66);
  swift_unknownObjectRelease();

  if ((*(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID + 4) & 1) == 0)
  {
    v67 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID);
    sub_1BC8F8BE4();
  }

  v68 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v68);
  swift_unknownObjectRelease();

  v69 = v77;
  v70 = sub_1BC8F7BE4();
  [v5 encodeObject:v69 forKey:v70];

  v71 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete);
  v72 = sub_1BC8F7BE4();
  [v5 encodeBool:v71 forKey:v72];

  v73 = v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_reminderUUID;
  v74 = v78;
  sub_1BC8EEA08(v73, v78, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_43(v74, 1, v33);
  if (!v36)
  {
    sub_1BC8F7214();
    OUTLINED_FUNCTION_10(v33);
    (*(v75 + 8))(v74, v33);
  }

  v76 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_68_1();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_24();
}

void MessageUpdate.description.getter()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v0;
  v129[5] = *MEMORY[0x1E69E9840];
  v3 = sub_1BC8F7C64();
  v4 = OUTLINED_FUNCTION_25(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_18_1(v7);
  v119 = sub_1BC8F7134();
  v8 = OUTLINED_FUNCTION_0(v119);
  v118 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_18_1(v12);
  v117 = sub_1BC8F7154();
  v13 = OUTLINED_FUNCTION_0(v117);
  v115 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_18_1(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_1(v114 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v114 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v30 = OUTLINED_FUNCTION_25(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_31();
  v121 = v33;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v114 - v36;
  *&v127 = 0x555564726F636572;
  *(&v127 + 1) = 0xEA00000000004449;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_50_8();
  sub_1BC8F8544();
  v38 = sub_1BC8F7204();
  OUTLINED_FUNCTION_66_5(v38, v39);
  sub_1BC7F0E58(&v127, &v125);
  v40 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_37_13();
  OUTLINED_FUNCTION_65_5(0x444955556C6C6163);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_50_8();
  sub_1BC8F8544();
  sub_1BC8EEA08(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID, v37, &unk_1EBCF5D70, &qword_1BC8FC740);
  v41 = sub_1BC8F7264();
  if (__swift_getEnumTagSinglePayload(v37, 1, v41) == 1)
  {
    sub_1BC862F74(v37, &unk_1EBCF5D70, &qword_1BC8FC740);
    OUTLINED_FUNCTION_87();
    if (v42)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_27_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_26_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v43 = sub_1BC8F7204();
    OUTLINED_FUNCTION_66_5(v43, v44);
    OUTLINED_FUNCTION_10(v41);
    (*(v45 + 8))(v37, v41);
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  strcpy(&v127, "conversationID");
  HIBYTE(v127) = -18;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  sub_1BC8EEA08(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID, v1, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_43(v1, 1, v41);
  if (v46)
  {
    sub_1BC862F74(v1, &unk_1EBCF5D70, &qword_1BC8FC740);
    OUTLINED_FUNCTION_87();
    if (v47)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v48 = sub_1BC8F7204();
    OUTLINED_FUNCTION_66_5(v48, v49);
    OUTLINED_FUNCTION_10(v41);
    (*(v50 + 8))(v1, v41);
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  *&v127 = 1836020326;
  *(&v127 + 1) = 0xE400000000000000;
  v51 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v52 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from + 8);
  if (v52)
  {
    sub_1BC7EB6B4(*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from), v52);
    v128 = v51;
    *&v127 = v53;
    *(&v127 + 1) = v54;
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  else
  {
    OUTLINED_FUNCTION_87();
    if (v55)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  OUTLINED_FUNCTION_65_5(0x72656469766F7270);
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  if (*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider + 8))
  {
    OUTLINED_FUNCTION_59_8((v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  else
  {
    OUTLINED_FUNCTION_15_10();
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
    OUTLINED_FUNCTION_87();
    if (v56)
    {
      OUTLINED_FUNCTION_39_7();
      *&v123 = v40;
      v40 = *(v40 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      sub_1BC8F8734();
      OUTLINED_FUNCTION_71_5();
      sub_1BC7F0E58(*(v40 + 56), &v125);
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      v125 = 0u;
      v126 = 0u;
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v125, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v127 = 0x646165527369;
  *(&v127 + 1) = 0xE600000000000000;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v57 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead);
  v58 = MEMORY[0x1E69E6370];
  if (v57 == 2)
  {
    OUTLINED_FUNCTION_87();
    if (v59)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v128 = MEMORY[0x1E69E6370];
    LOBYTE(v127) = v57 & 1;
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  OUTLINED_FUNCTION_65_5(0x6E6F697461727564);
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  if (*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration + 8))
  {
    OUTLINED_FUNCTION_87();
    if (v60)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v61 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration);
    v128 = MEMORY[0x1E69E63B0];
    *&v127 = v61;
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  OUTLINED_FUNCTION_58_7(0x54786F626C69616DLL);
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  if (*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType + 2))
  {
    OUTLINED_FUNCTION_87();
    if (v62)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v63 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType);
    v128 = MEMORY[0x1E69E7290];
    LOWORD(v127) = v63;
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  *&v127 = 0xD000000000000013;
  *(&v127 + 1) = 0x80000001BC90B210;
  v64 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  if (*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus + 2))
  {
    OUTLINED_FUNCTION_87();
    if (v65)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v66 = sub_1BC8C21C4(*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus));
    v128 = v64;
    *&v127 = v66;
    *(&v127 + 1) = v67;
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  *&v127 = 0x5454527369;
  *(&v127 + 1) = 0xE500000000000000;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v68 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT);
  if (v68 == 2)
  {
    OUTLINED_FUNCTION_87();
    if (v69)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v128 = v58;
    LOBYTE(v127) = v68 & 1;
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  *&v127 = 0x6E65697069636572;
  *(&v127 + 1) = 0xE900000000000074;
  v70 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v71 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient + 8);
  if (v71)
  {
    sub_1BC7EB6B4(*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient), v71);
    v128 = v70;
    *&v127 = v72;
    *(&v127 + 1) = v73;
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  else
  {
    OUTLINED_FUNCTION_87();
    if (v74)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  OUTLINED_FUNCTION_58_7(0x7263736E6172745FLL);
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  sub_1BC8EEA08(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL, v28, &qword_1EBCF5A20, &qword_1BC901BF0);
  v75 = sub_1BC8F7014();
  OUTLINED_FUNCTION_43(v28, 1, v75);
  if (v46)
  {
    sub_1BC862F74(v28, &qword_1EBCF5A20, &qword_1BC901BF0);
    OUTLINED_FUNCTION_87();
    if (v76)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_27_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_26_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v77 = sub_1BC8F6EF4();
    OUTLINED_FUNCTION_66_5(v77, v78);
    OUTLINED_FUNCTION_10(v75);
    (*(v79 + 8))(v28, v75);
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  *&v127 = 0x44496D6973;
  *(&v127 + 1) = 0xE500000000000000;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  if (*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID + 8))
  {
    OUTLINED_FUNCTION_59_8((v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
    v80 = v120;
  }

  else
  {
    OUTLINED_FUNCTION_15_10();
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
    OUTLINED_FUNCTION_87();
    if (v81)
    {
      OUTLINED_FUNCTION_39_7();
      *&v123 = v40;
      v40 = *(v40 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      sub_1BC8F8734();
      OUTLINED_FUNCTION_71_5();
      sub_1BC7F0E58(*(v40 + 56), &v125);
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      v125 = 0u;
      v126 = 0u;
    }

    v80 = v120;
    sub_1BC8037DC(v129);
    sub_1BC862F74(&v125, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  OUTLINED_FUNCTION_58_7(0x6165724365746164);
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  sub_1BC8EEA08(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated, v80, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v82 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_28_16(v80);
  if (v46)
  {
    sub_1BC862F74(v80, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_87();
    if (v83)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_27_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_26_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v84 = v114[1];
    sub_1BC8F7144();
    v85 = v58;
    v86 = v116;
    sub_1BC8F7124();
    v87 = sub_1BC8F71C4();
    v89 = v88;
    v90 = v86;
    v58 = v85;
    (*(v118 + 8))(v90, v119);
    (*(v115 + 8))(v84, v117);
    OUTLINED_FUNCTION_10(v82);
    (*(v91 + 8))(v80, v82);
    v128 = MEMORY[0x1E69E6158];
    *&v127 = v87;
    *(&v127 + 1) = v89;
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  OUTLINED_FUNCTION_58_7(0x69616D6563696F76);
  v92 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  if (*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID + 4))
  {
    OUTLINED_FUNCTION_87();
    if (v93)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v94 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID);
    v128 = MEMORY[0x1E69E72F0];
    LODWORD(v127) = v94;
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  *&v127 = 0x7972616D6D7573;
  *(&v127 + 1) = 0xE700000000000000;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v95 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 16);
  v123 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary);
  v124 = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5EC0, &qword_1BC9048A0);
  v96 = sub_1BC8F83E4();
  v128 = v92;
  *&v127 = v96;
  *(&v127 + 1) = v97;
  OUTLINED_FUNCTION_16_11();
  v122 = v40;
  sub_1BC83D6F0(&v125, v129);
  sub_1BC8037DC(v129);
  strcpy(&v127, "reminderUUID");
  BYTE13(v127) = 0;
  HIWORD(v127) = -5120;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v98 = v121;
  sub_1BC8EEA08(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_reminderUUID, v121, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_43(v98, 1, v41);
  if (v46)
  {
    sub_1BC862F74(v98, &unk_1EBCF5D70, &qword_1BC8FC740);
    OUTLINED_FUNCTION_87();
    if (v99)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_27_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_26_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v129);
    sub_1BC862F74(&v127, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v100 = sub_1BC8F7204();
    v128 = v92;
    *&v127 = v100;
    *(&v127 + 1) = v101;
    OUTLINED_FUNCTION_10(v41);
    (*(v102 + 8))(v98, v41);
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_37_13();
  }

  OUTLINED_FUNCTION_65_5(0x6574656C65646E75);
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v103 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete);
  v128 = v58;
  LOBYTE(v127) = v103;
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_37_13();
  v104 = objc_opt_self();
  v105 = sub_1BC8F7A94();
  v129[0] = 0;
  v106 = [v104 dataWithJSONObject:v105 options:11 error:v129];

  v107 = v129[0];
  if (v106)
  {
    v108 = sub_1BC8F70D4();
    v110 = v109;

    sub_1BC8F7C54();
    OUTLINED_FUNCTION_46_10();
    sub_1BC8F7C34();
    sub_1BC7D4C94(v108, v110);
  }

  else
  {
    v111 = v107;

    v112 = sub_1BC8F6EA4();

    swift_willThrow();
    v129[0] = 0;
    v129[1] = 0xE000000000000000;
    swift_getErrorValue();
    sub_1BC8F8A64();
  }

  v113 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();
}

id MessageUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BC8F17BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x555564726F636572 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1836020326 && a2 == 0xE400000000000000;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
          if (v9 || (sub_1BC8F8AA4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x646165527369 && a2 == 0xE600000000000000;
            if (v10 || (sub_1BC8F8AA4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
              if (v11 || (sub_1BC8F8AA4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x54786F626C69616DLL && a2 == 0xEB00000000657079;
                if (v12 || (sub_1BC8F8AA4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E65697069636572 && a2 == 0xE900000000000074;
                  if (v13 || (sub_1BC8F8AA4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x80000001BC90B210 == a2;
                    if (v14 || (sub_1BC8F8AA4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x5454527369 && a2 == 0xE500000000000000;
                      if (v15 || (sub_1BC8F8AA4() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x697263736E617274 && a2 == 0xED00004C52557470;
                        if (v16 || (sub_1BC8F8AA4() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x44496D6973 && a2 == 0xE500000000000000;
                          if (v17 || (sub_1BC8F8AA4() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6165724365746164 && a2 == 0xEB00000000646574;
                            if (v18 || (sub_1BC8F8AA4() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x69616D6563696F76 && a2 == 0xEB0000000044496CLL;
                              if (v19 || (sub_1BC8F8AA4() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
                                if (v20 || (sub_1BC8F8AA4() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x7265646E696D6572 && a2 == 0xEC00000044495555;
                                  if (v21 || (sub_1BC8F8AA4() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0x6574656C65646E75 && a2 == 0xE800000000000000)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_1BC8F8AA4();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BC8F1D38(char a1)
{
  result = 0x555564726F636572;
  switch(a1)
  {
    case 1:
      result = 0x444955556C6C6163;
      break;
    case 2:
      result = 0x61737265766E6F63;
      break;
    case 3:
      result = 1836020326;
      break;
    case 4:
      v3 = 0x6469766F7270;
      goto LABEL_7;
    case 5:
      result = 0x646165527369;
      break;
    case 6:
      result = 0x6E6F697461727564;
      break;
    case 7:
      result = 0x54786F626C69616DLL;
      break;
    case 8:
      result = 0x6E65697069636572;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x5454527369;
      break;
    case 11:
      result = 0x697263736E617274;
      break;
    case 12:
      result = 0x44496D6973;
      break;
    case 13:
      result = 0x6165724365746164;
      break;
    case 14:
      result = 0x69616D6563696F76;
      break;
    case 15:
      result = 0x7972616D6D7573;
      break;
    case 16:
      v3 = 0x646E696D6572;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    case 17:
      result = 0x6574656C65646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC8F1F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8F17BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8F1F68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC8F1D30();
  *a1 = result;
  return result;
}

uint64_t sub_1BC8F1F90(uint64_t a1)
{
  v2 = sub_1BC8F31D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8F1FCC(uint64_t a1)
{
  v2 = sub_1BC8F31D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id MessageUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MessageUpdate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6AF0, &qword_1BC90AC10);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8F31D8();
  sub_1BC8F8CA4();
  LOBYTE(v29) = 0;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_5_28();
  sub_1BC8F322C(v14, v15);
  OUTLINED_FUNCTION_8_33();
  sub_1BC8F89F4();
  if (!v2)
  {
    LOBYTE(v29) = 1;
    OUTLINED_FUNCTION_8_33();
    sub_1BC8F8974();
    LOBYTE(v29) = 2;
    OUTLINED_FUNCTION_8_33();
    sub_1BC8F8974();
    OUTLINED_FUNCTION_51_5(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from);
    OUTLINED_FUNCTION_2_35(3);
    sub_1BC8F8944();
    OUTLINED_FUNCTION_51_5(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider);
    OUTLINED_FUNCTION_2_35(4);
    sub_1BC8F8944();
    v16 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead);
    OUTLINED_FUNCTION_160(5);
    OUTLINED_FUNCTION_18_19();
    sub_1BC8F8954();
    v17 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration);
    v18 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration + 8);
    OUTLINED_FUNCTION_2_35(6);
    sub_1BC8F8964();
    OUTLINED_FUNCTION_45_10(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType);
    v31 = 7;
    sub_1BC7B5C78();
    OUTLINED_FUNCTION_18_19();
    sub_1BC8F8974();
    OUTLINED_FUNCTION_51_5(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient);
    OUTLINED_FUNCTION_2_35(8);
    sub_1BC8F8944();
    OUTLINED_FUNCTION_45_10(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus);
    v31 = 9;
    sub_1BC7C4F00();
    OUTLINED_FUNCTION_18_19();
    sub_1BC8F8974();
    v19 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT);
    OUTLINED_FUNCTION_160(10);
    OUTLINED_FUNCTION_18_19();
    sub_1BC8F8954();
    LOBYTE(v29) = 11;
    sub_1BC8F7014();
    OUTLINED_FUNCTION_4_20();
    sub_1BC8F322C(v20, v21);
    OUTLINED_FUNCTION_42_14();
    OUTLINED_FUNCTION_51_5(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID);
    OUTLINED_FUNCTION_2_35(12);
    sub_1BC8F8944();
    LOBYTE(v29) = 13;
    sub_1BC8F71E4();
    OUTLINED_FUNCTION_3_32();
    sub_1BC8F322C(v22, v23);
    OUTLINED_FUNCTION_42_14();
    v24 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID);
    v25 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID + 4);
    LOBYTE(v29) = 14;
    v31 = v25;
    OUTLINED_FUNCTION_18_19();
    sub_1BC8F8984();
    v26 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 16);
    v29 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary);
    v30 = v26;
    v31 = 15;
    sub_1BC7C518C();

    sub_1BC8F8974();

    LOBYTE(v29) = 16;
    OUTLINED_FUNCTION_8_33();
    sub_1BC8F8974();
    v27 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete);
    OUTLINED_FUNCTION_160(17);
    OUTLINED_FUNCTION_18_19();
    sub_1BC8F89B4();
  }

  return (*(v7 + 8))(v12, v5);
}

void *MessageUpdate.init(from:)(uint64_t *a1)
{
  v4 = v1;
  v114 = v4;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v104 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v17 = OUTLINED_FUNCTION_25(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31();
  v105 = v20;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v104 - v23;
  v25 = sub_1BC8F7264();
  v26 = OUTLINED_FUNCTION_0(v25);
  v109 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_4();
  v115 = v30;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6B00, &qword_1BC90AC18);
  OUTLINED_FUNCTION_0(v112);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v104 - v36;
  v39 = a1[3];
  v38 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1BC8F31D8();
  v111 = v37;
  sub_1BC8F8C84();
  v40 = &unk_1EDC2B000;
  v108 = v25;
  if (v2)
  {
    v115 = v2;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    OUTLINED_FUNCTION_16_19();
  }

  else
  {
    v41 = v3;
    v104 = v32;
    LOBYTE(v117) = 0;
    OUTLINED_FUNCTION_5_28();
    v44 = sub_1BC8F322C(v42, v43);
    OUTLINED_FUNCTION_48_11();
    sub_1BC8F88F4();
    v56 = v114;
    (*(v109 + 32))(&v114[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID], v115, v25);
    OUTLINED_FUNCTION_160(1);
    OUTLINED_FUNCTION_48_11();
    sub_1BC8F8864();
    v57 = v44;
    sub_1BC8EF81C(v24, &v56[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID], &unk_1EBCF5D70, &qword_1BC8FC740);
    OUTLINED_FUNCTION_160(2);
    v3 = v41;
    v45 = v57;
    v46 = v111;
    sub_1BC8F8864();
    sub_1BC8EF81C(v3, &v56[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID], &unk_1EBCF5D70, &qword_1BC8FC740);
    OUTLINED_FUNCTION_12_25(3);
    v58 = sub_1BC8F8834();
    v59 = &v56[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from];
    *v59 = v58;
    v59[1] = v60;
    OUTLINED_FUNCTION_12_25(4);
    v61 = sub_1BC8F8834();
    v62 = &v56[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider];
    *v62 = v61;
    v62[1] = v63;
    OUTLINED_FUNCTION_12_25(5);
    v56[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead] = sub_1BC8F8844();
    OUTLINED_FUNCTION_12_25(6);
    v64 = sub_1BC8F8854();
    v65 = &v56[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration];
    *v65 = v64;
    v65[8] = v66 & 1;
    v119 = 7;
    sub_1BC7C7198();
    OUTLINED_FUNCTION_30_13();
    sub_1BC8F8864();
    v67 = BYTE2(v117);
    v68 = &v56[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType];
    *v68 = v117;
    v68[2] = v67;
    OUTLINED_FUNCTION_12_25(8);
    v69 = sub_1BC8F8834();
    v115 = 0;
    v47 = v45;
    v71 = &v56[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient];
    *v71 = v69;
    v71[1] = v70;
    v119 = 9;
    sub_1BC7C7244();
    OUTLINED_FUNCTION_30_13();
    v72 = v115;
    sub_1BC8F8864();
    v115 = v72;
    if (v72)
    {
      v78 = OUTLINED_FUNCTION_6_27();
      v79(v78);
      LODWORD(v111) = 0;
      LODWORD(v112) = 0;
      OUTLINED_FUNCTION_14_20();
      LODWORD(v40) = 1;
      LODWORD(v3) = 1;
    }

    else
    {
      v73 = BYTE2(v117);
      v74 = &v114[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus];
      *v74 = v117;
      v74[2] = v73;
      OUTLINED_FUNCTION_12_25(10);
      v75 = sub_1BC8F8844();
      v115 = 0;
      v114[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT] = v75;
      v46 = sub_1BC8F7014();
      LOBYTE(v117) = 11;
      OUTLINED_FUNCTION_4_20();
      sub_1BC8F322C(v76, v77);
      OUTLINED_FUNCTION_70_5();
      v115 = 0;
      sub_1BC8EF81C(v107, &v114[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL], &qword_1EBCF5A20, &qword_1BC901BF0);
      OUTLINED_FUNCTION_12_25(12);
      v80 = v115;
      v81 = sub_1BC8F8834();
      v115 = v80;
      if (!v80)
      {
        v85 = &v114[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID];
        *v85 = v81;
        v85[1] = v82;
        sub_1BC8F71E4();
        LOBYTE(v117) = 13;
        OUTLINED_FUNCTION_3_32();
        sub_1BC8F322C(v86, v87);
        OUTLINED_FUNCTION_70_5();
        v115 = 0;
        sub_1BC8EF81C(v106, &v114[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated], &unk_1EBCF5D80, &qword_1BC8FEA60);
        OUTLINED_FUNCTION_12_25(14);
        v88 = v115;
        v89 = sub_1BC8F8874();
        v115 = v88;
        if (v88)
        {
          goto LABEL_35;
        }

        v90 = &v114[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID];
        *v90 = v89;
        v90[4] = BYTE4(v89) & 1;
        v119 = 15;
        sub_1BC7C75C4();
        OUTLINED_FUNCTION_30_13();
        v91 = v115;
        sub_1BC8F8864();
        v115 = v91;
        if (v91)
        {
LABEL_35:
          v92 = OUTLINED_FUNCTION_6_27();
          v93(v92);
          v51 = 0;
          v50 = 0;
        }

        else
        {
          v95 = v118;
          v96 = &v114[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary];
          *v96 = v117;
          *(v96 + 2) = v95;
          OUTLINED_FUNCTION_160(16);
          sub_1BC8F8864();
          v115 = 0;
          sub_1BC8EF81C(v105, &v114[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_reminderUUID], &unk_1EBCF5D70, &qword_1BC8FC740);
          OUTLINED_FUNCTION_12_25(17);
          v97 = v115;
          v98 = sub_1BC8F88B4();
          v115 = v97;
          if (!v97)
          {
            v101 = v114;
            v114[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete] = v98 & 1;
            v116.receiver = v101;
            v116.super_class = ObjectType;
            v48 = objc_msgSendSuper2(&v116, sel_init);
            v102 = OUTLINED_FUNCTION_6_27();
            v103(v102);
            __swift_destroy_boxed_opaque_existential_1(v110);
            return v48;
          }

          v99 = OUTLINED_FUNCTION_6_27();
          v100(v99);
          v51 = 1;
          v50 = 1;
        }

        __swift_destroy_boxed_opaque_existential_1(v110);
        LOBYTE(v46) = 1;
        v47 = 1;
        OUTLINED_FUNCTION_31_11();
        LODWORD(v112) = v94;
        v52 = 1;
        v48 = v114;
        (*(v109 + 8))(&v114[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID], v108);
LABEL_5:
        sub_1BC862F74(v48 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID, &unk_1EBCF5D70, &qword_1BC8FC740);
        if (v46)
        {
          goto LABEL_17;
        }

LABEL_6:
        if (!v47)
        {
          goto LABEL_18;
        }

LABEL_7:
        OUTLINED_FUNCTION_132(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from);

        if (v40)
        {
          goto LABEL_19;
        }

LABEL_8:
        if (!v3)
        {
          goto LABEL_20;
        }

LABEL_9:
        OUTLINED_FUNCTION_132(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient);

        if (v111)
        {
          goto LABEL_21;
        }

LABEL_10:
        if (!v112)
        {
          goto LABEL_22;
        }

LABEL_11:
        OUTLINED_FUNCTION_132(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID);

        if (v52)
        {
          goto LABEL_23;
        }

LABEL_12:
        if (!v51)
        {
          goto LABEL_24;
        }

LABEL_13:
        v49 = *(v48 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 16);

        if ((v50 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v83 = OUTLINED_FUNCTION_6_27();
      v84(v83);
      LODWORD(v112) = 0;
      OUTLINED_FUNCTION_14_20();
      OUTLINED_FUNCTION_31_11();
    }
  }

  v48 = v114;
  __swift_destroy_boxed_opaque_existential_1(v110);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (v45)
  {
    goto LABEL_5;
  }

  if (!v46)
  {
    goto LABEL_6;
  }

LABEL_17:
  sub_1BC862F74(v48 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID, &unk_1EBCF5D70, &qword_1BC8FC740);
  if (v47)
  {
    goto LABEL_7;
  }

LABEL_18:
  if (!v40)
  {
    goto LABEL_8;
  }

LABEL_19:
  OUTLINED_FUNCTION_132(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider);

  if (v3)
  {
    goto LABEL_9;
  }

LABEL_20:
  if (!v111)
  {
    goto LABEL_10;
  }

LABEL_21:
  sub_1BC862F74(v48 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL, &qword_1EBCF5A20, &qword_1BC901BF0);
  if (v112)
  {
    goto LABEL_11;
  }

LABEL_22:
  if (!v52)
  {
    goto LABEL_12;
  }

LABEL_23:
  sub_1BC862F74(v48 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated, &unk_1EBCF5D80, &qword_1BC8FEA60);
  if (v51)
  {
    goto LABEL_13;
  }

LABEL_24:
  if (v50)
  {
LABEL_25:
    sub_1BC862F74(v48 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_reminderUUID, &unk_1EBCF5D70, &qword_1BC8FC740);
  }

LABEL_26:
  v53 = *((*MEMORY[0x1E69E7D40] & *v48) + 0x30);
  v54 = *((*MEMORY[0x1E69E7D40] & *v48) + 0x34);
  swift_deallocPartialClassInstance();
  return v48;
}

void *sub_1BC8F3188@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = MessageUpdate.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1BC8F31D8()
{
  result = qword_1EDC20548;
  if (!qword_1EDC20548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20548);
  }

  return result;
}

uint64_t sub_1BC8F322C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MessageUpdate()
{
  result = qword_1EDC211E0;
  if (!qword_1EDC211E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC8F32C8()
{
  v0 = sub_1BC8F7264();
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    sub_1BC8F3714(319, &unk_1EDC21200, MEMORY[0x1E69695A8]);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_1BC8F3714(319, &qword_1EDC21220, MEMORY[0x1E6968FB0]);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_1BC8F3714(319, &unk_1EDC21210, MEMORY[0x1E6969530]);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of MessageUpdate.__allocating_init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = *(v7 + 224);
  v10 = a7 & 1;

  return v9(a1, a2, a3, a4, a5, a6, v10);
}

uint64_t dispatch thunk of MessageUpdate.__allocating_init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = *(v7 + 232);
  v10 = a7 & 1;

  return v9(a1, a2, a3, a4, a5, a6, v10);
}

uint64_t dispatch thunk of MessageUpdate.__allocating_init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:reminderUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = *(v7 + 240);
  v10 = a7 & 1;

  return v9(a1, a2, a3, a4, a5, a6, v10);
}

void sub_1BC8F3714(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BC8F83F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MessageUpdate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC8F38D0()
{
  result = qword_1EBCF6B08;
  if (!qword_1EBCF6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6B08);
  }

  return result;
}

unint64_t sub_1BC8F3928()
{
  result = qword_1EDC20530;
  if (!qword_1EDC20530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20530);
  }

  return result;
}

unint64_t sub_1BC8F3980()
{
  result = qword_1EDC20538;
  if (!qword_1EDC20538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20538);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_7()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1BC8F3A04(void *a1, uint64_t a2, uint64_t a3)
{
  if (((*(a3 + 8))(a2, a3) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  return (*(v5 + 80))(v4, v5) & 1;
}

void sub_1BC8F3A88(id a1, uint64_t (*a2)(uint64_t *))
{
  v4 = [v2 allVoicemails];
  v21 = sub_1BC8F5238();
  v5 = sub_1BC8F7E54();

  v22[0] = MEMORY[0x1E69E7CC0];
  v6 = sub_1BC7C0454(v5);
  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB29A00](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    if ([v8 mailboxType] == a1)
    {
      sub_1BC8F8654();
      v10 = *(v22[0] + 16);
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }
  }

  v11 = v22[0];
  v23 = MEMORY[0x1E69E7CC0];
  v12 = sub_1BC7C0454(v22[0]);
  for (j = 0; v12 != j; ++j)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1BFB29A00](j, v11);
    }

    else
    {
      if (j >= *(v11 + 16))
      {
        goto LABEL_27;
      }

      v14 = *(v11 + 8 * j + 32);
    }

    v15 = v14;
    if (__OFADD__(j, 1))
    {
      goto LABEL_26;
    }

    v22[3] = v21;
    OUTLINED_FUNCTION_4_21();
    v22[4] = sub_1BC7AABA4(&qword_1EDC1DE80, v16);
    v22[0] = v15;
    v17 = v15;
    v18 = a2(v22);
    __swift_destroy_boxed_opaque_existential_1(v22);
    if (v18)
    {
      sub_1BC8F8654();
      v19 = *(v23 + 16);
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }
  }

  sub_1BC8F3D18(v23);
}

void sub_1BC8F3D18(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BC8F8504();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDDE4();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v19;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1BFB29A00](v3, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = sub_1BC8F5238();
        v17 = v7;
        v8 = sub_1BC7AABA4(&qword_1EDC1DE80, sub_1BC8F5238);
        v18 = v8;
        v19 = v4;
        v16[0] = v6;
        v9 = *(v4 + 16);
        if (v9 >= *(v4 + 24) >> 1)
        {
          sub_1BC7DDDE4();
          v7 = v17;
          v10 = v18;
        }

        else
        {
          v10 = v8;
        }

        ++v3;
        v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v7);
        v12 = *(*(v7 - 8) + 64);
        MEMORY[0x1EEE9AC00](v11);
        v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v14);
        sub_1BC8F5354(v9, v14, &v19, v7, v10);
        __swift_destroy_boxed_opaque_existential_1(v16);
        v4 = v19;
      }

      while (v2 != v3);
    }
  }
}

void sub_1BC8F3F38()
{
  OUTLINED_FUNCTION_29_0();
  v24 = v0;
  v2 = v1;
  v3 = sub_1BC8F7264();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v22 = v6 + 32;
  v23 = v9;
  v12 = *(v6 + 16);
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v21 = v2;
  while (v11 != 32)
  {
    v13 = *(&unk_1F3B36D08 + v11 + 32);
    v12(v10, v24, v3);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    (*(v6 + 32))(v15 + v14, v10, v3);
    sub_1BC8F3A88(v13, sub_1BC8F527C);
    v17 = v16;

    if (*(v17 + 16))
    {
      sub_1BC8E0544(v17, v25);

      v18 = v21;
      sub_1BC8F52EC(v21);
      v19 = v25[1];
      *v18 = v25[0];
      *(v18 + 16) = v19;
      *(v18 + 32) = v26;
      break;
    }

    v11 += 8;
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8F40F4(void *a1)
{
  v2 = sub_1BC8F7264();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 128))(v7, v8);
  v9 = sub_1BC8F7234();
  (*(v3 + 8))(v6, v2);
  return v9 & 1;
}

void sub_1BC8F420C()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_1BC8F7264();
  v6 = OUTLINED_FUNCTION_0(v5);
  v99 = v7;
  v100 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v95 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v96 = (&v91 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v97 = (&v91 - v14);
  v15 = [v0 allVoicemails];
  v16 = sub_1BC8F5238();
  v17 = sub_1BC8F7E54();

  v102 = MEMORY[0x1E69E7CC0];
  v18 = sub_1BC7C0454(v17);
  v19 = 0;
  v20 = v17 & 0xC000000000000001;
  v21 = v17 & 0xFFFFFFFFFFFFFF8;
  v98 = v18;
  while (v18 != v19)
  {
    if (v20)
    {
      v22 = MEMORY[0x1BFB29A00](v19, v17);
    }

    else
    {
      if (v19 >= *(v21 + 16))
      {
        goto LABEL_90;
      }

      v22 = *(v17 + 8 * v19 + 32);
    }

    v23 = v22;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v101[3] = v16;
    OUTLINED_FUNCTION_4_21();
    v101[4] = sub_1BC7AABA4(&qword_1EDC1DE80, v24);
    v101[0] = v23;
    v25 = v23;
    v26 = (v4)(v101);
    __swift_destroy_boxed_opaque_existential_1(v101);
    if (v26)
    {
      sub_1BC8F8654();
      v27 = v17;
      v28 = v21;
      v29 = v20;
      v30 = v16;
      v31 = v4;
      v32 = v2;
      v33 = *(v102 + 16);
      sub_1BC8F8694();
      v2 = v32;
      v4 = v31;
      v16 = v30;
      v20 = v29;
      v21 = v28;
      v17 = v27;
      v18 = v98;
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }

    ++v19;
  }

  v21 = v102;
  if (qword_1EDC1E1A0 == -1)
  {
    goto LABEL_13;
  }

LABEL_97:
  OUTLINED_FUNCTION_1_1();
LABEL_13:
  v34 = sub_1BC8F7734();
  v35 = __swift_project_value_buffer(v34, qword_1EDC2B208);

  v36 = sub_1BC8F7714();
  v37 = sub_1BC8F8204();

  v38 = os_log_type_enabled(v36, v37);
  v39 = &off_1E7FF5000;
  v98 = v35;
  if (v38)
  {
    LODWORD(v93) = v37;
    v94 = v36;
    OUTLINED_FUNCTION_21_1();
    v91 = OUTLINED_FUNCTION_14_21();
    v101[0] = v91;
    v92 = v36;
    LODWORD(v36->isa) = 136446210;
    v102 = MEMORY[0x1E69E7CC0];
    sub_1BC7C0454(v21);
    OUTLINED_FUNCTION_10_30();
    while (&unk_1BC8FB000 != v18)
    {
      if (v4)
      {
        v40 = MEMORY[0x1BFB29A00](v18, v21);
      }

      else
      {
        if (v18 >= *(v21 + 16))
        {
          goto LABEL_92;
        }

        v40 = *(v21 + 8 * v18 + 32);
      }

      v41 = v40;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_91;
      }

      if ([v40 mailboxType] == 1)
      {
        sub_1BC8F8654();
        OUTLINED_FUNCTION_15_16();
        sub_1BC8F86A4();
        sub_1BC8F8664();
      }

      else
      {
      }

      ++v18;
    }

    v42 = v102;
    v43 = sub_1BC7C0454(v102);
    if (v43)
    {
      v4 = v43;
      OUTLINED_FUNCTION_5_29(MEMORY[0x1E69E7CC0]);
      if (v4 < 0)
      {
        __break(1u);
        goto LABEL_99;
      }

      v44 = 0;
      v45 = v102;
      v18 = v42 & 0xC000000000000001;
      v46 = v97;
      do
      {
        if (v18)
        {
          v47 = MEMORY[0x1BFB29A00](v44, v42);
        }

        else
        {
          v47 = *(v42 + 8 * v44 + 32);
        }

        v48 = v47;
        v49 = [v48 uuid];
        sub_1BC8F7244();

        OUTLINED_FUNCTION_7_25();
        if (v50)
        {
          OUTLINED_FUNCTION_6_28();
          v45 = v102;
        }

        v44 = (v44 + 1);
        v51 = OUTLINED_FUNCTION_0_37();
        v52(v51, v46);
      }

      while (v4 != v44);

      v39 = &off_1E7FF5000;
    }

    else
    {

      v45 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1BFB29280](v45, v100);
    OUTLINED_FUNCTION_16_20();
    v53 = OUTLINED_FUNCTION_12_26();

    *(&v92->isa + 4) = v53;
    v54 = v94;
    OUTLINED_FUNCTION_13_23(&dword_1BC7A3000, v55, v93, "Inbox messages: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v91);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    v35 = v98;
  }

  else
  {
  }

  v56 = sub_1BC8F7714();
  v57 = sub_1BC8F8204();

  if (os_log_type_enabled(v56, v57))
  {
    LODWORD(v97) = v57;
    OUTLINED_FUNCTION_21_1();
    v93 = OUTLINED_FUNCTION_14_21();
    v101[0] = v93;
    v94 = v57;
    LODWORD(v57->isa) = 136446210;
    v102 = MEMORY[0x1E69E7CC0];
    sub_1BC7C0454(v21);
    OUTLINED_FUNCTION_10_30();
    while (&unk_1BC8FB000 != v18)
    {
      if (v4)
      {
        v58 = MEMORY[0x1BFB29A00](v18, v21);
      }

      else
      {
        if (v18 >= *(v21 + 16))
        {
          goto LABEL_94;
        }

        v58 = *(v21 + 8 * v18 + 32);
      }

      v59 = v58;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_93;
      }

      if ([v58 v39[123]] == 2)
      {
        sub_1BC8F8654();
        OUTLINED_FUNCTION_15_16();
        sub_1BC8F86A4();
        sub_1BC8F8664();
      }

      else
      {
      }

      ++v18;
    }

    v92 = v56;
    v60 = v102;
    v61 = sub_1BC7C0454(v102);
    if (!v61)
    {

      v63 = MEMORY[0x1E69E7CC0];
LABEL_62:
      MEMORY[0x1BFB29280](v63, v100);
      OUTLINED_FUNCTION_16_20();
      v70 = OUTLINED_FUNCTION_12_26();

      *(&v94->isa + 4) = v70;
      v71 = v92;
      OUTLINED_FUNCTION_13_23(&dword_1BC7A3000, v72, v97, "Junk messages: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v93);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();

      v35 = v98;
      goto LABEL_63;
    }

    v4 = v61;
    OUTLINED_FUNCTION_5_29(MEMORY[0x1E69E7CC0]);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v62 = 0;
      v63 = v102;
      v18 = v60 & 0xC000000000000001;
      v64 = v96;
      do
      {
        if (v18)
        {
          v65 = MEMORY[0x1BFB29A00](v62, v60);
        }

        else
        {
          v65 = *(v60 + 8 * v62 + 32);
        }

        v66 = v65;
        v67 = [v66 uuid];
        sub_1BC8F7244();

        OUTLINED_FUNCTION_7_25();
        if (v50)
        {
          OUTLINED_FUNCTION_6_28();
          v63 = v102;
        }

        v62 = (v62 + 1);
        v68 = OUTLINED_FUNCTION_0_37();
        v69(v68, v64);
      }

      while (v4 != v62);

      v39 = &off_1E7FF5000;
      goto LABEL_62;
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

LABEL_63:

  v73 = sub_1BC8F7714();
  v74 = sub_1BC8F8204();

  if (!os_log_type_enabled(v73, v74))
  {

LABEL_88:
    sub_1BC8F3D18(v21);

    OUTLINED_FUNCTION_24();
    return;
  }

  OUTLINED_FUNCTION_21_1();
  v97 = OUTLINED_FUNCTION_14_21();
  v101[0] = v97;
  v98 = v35;
  *v35 = 136446210;
  v102 = MEMORY[0x1E69E7CC0];
  sub_1BC7C0454(v21);
  OUTLINED_FUNCTION_10_30();
  while (&unk_1BC8FB000 != v18)
  {
    if (v4)
    {
      v75 = MEMORY[0x1BFB29A00](v18, v21);
    }

    else
    {
      if (v18 >= *(v21 + 16))
      {
        goto LABEL_96;
      }

      v75 = *(v21 + 8 * v18 + 32);
    }

    v76 = v75;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_95;
    }

    if ([v75 v39[123]] == 3)
    {
      sub_1BC8F8654();
      OUTLINED_FUNCTION_15_16();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }

    ++v18;
  }

  LODWORD(v94) = v74;
  v96 = v73;
  v77 = v102;
  v78 = sub_1BC7C0454(v102);
  if (!v78)
  {

    v81 = MEMORY[0x1E69E7CC0];
LABEL_87:
    MEMORY[0x1BFB29280](v81, v100);
    OUTLINED_FUNCTION_16_20();
    v88 = OUTLINED_FUNCTION_12_26();

    *(v98 + 1) = v88;
    v89 = v96;
    OUTLINED_FUNCTION_13_23(&dword_1BC7A3000, v90, v94, "Trash messages: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v97);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    goto LABEL_88;
  }

  v79 = v78;
  OUTLINED_FUNCTION_5_29(MEMORY[0x1E69E7CC0]);
  if ((v79 & 0x8000000000000000) == 0)
  {
    v80 = 0;
    v81 = v102;
    do
    {
      if ((v77 & 0xC000000000000001) != 0)
      {
        v82 = MEMORY[0x1BFB29A00](v80, v77);
      }

      else
      {
        v82 = *(v77 + 8 * v80 + 32);
      }

      v83 = v82;
      v84 = [v83 uuid];
      v85 = v95;
      sub_1BC8F7244();

      OUTLINED_FUNCTION_7_25();
      if (v50)
      {
        OUTLINED_FUNCTION_6_28();
        v81 = v102;
      }

      ++v80;
      v86 = OUTLINED_FUNCTION_0_37();
      v87(v86, v85);
    }

    while (v79 != v80);

    goto LABEL_87;
  }

LABEL_100:
  __break(1u);
}

void sub_1BC8F4BDC()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v8 = sub_1BC8F7264();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_20();
  sub_1BC7A792C(v7, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
  sub_1BC8F5238();
  if (swift_dynamicCast())
  {
    v30 = v4;
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B208);
    v13 = v31;
    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F8204();

    if (os_log_type_enabled(v14, v15))
    {
      v28 = v2;
      v16 = OUTLINED_FUNCTION_21_1();
      v29 = v5;
      v17 = swift_slowAlloc();
      v32[0] = v17;
      *v16 = 136446210;
      v18 = [v13 uuid];
      sub_1BC8F7244();

      OUTLINED_FUNCTION_3_33();
      sub_1BC7AABA4(v19, v20);
      v21 = sub_1BC8F8A54();
      v23 = v22;
      v24 = OUTLINED_FUNCTION_9_22();
      v25(v24);
      v26 = sub_1BC7A9A4C(v21, v23, v32);

      *(v16 + 4) = v26;
      _os_log_impl(&dword_1BC7A3000, v14, v15, v30, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v5 = v29;
      OUTLINED_FUNCTION_6();
      v2 = v28;
      OUTLINED_FUNCTION_6();
    }

    v27 = [v5 *v2];
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC8F4E5C()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_1BC8F7264();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_20();
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v13 = sub_1BC8F7734();
  __swift_project_value_buffer(v13, qword_1EDC2B208);
  (*(v10 + 16))(v1, v6, v7);
  v14 = sub_1BC8F7714();
  v15 = sub_1BC8F8204();
  if (os_log_type_enabled(v14, v15))
  {
    v29 = v0;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 67240450;
    *(v16 + 4) = v4 & 1;
    *(v16 + 8) = 2082;
    OUTLINED_FUNCTION_3_33();
    sub_1BC7AABA4(v18, v19);
    v20 = sub_1BC8F8A54();
    v22 = v21;
    v23 = OUTLINED_FUNCTION_9_22();
    v24(v23);
    v25 = sub_1BC7A9A4C(v20, v22, &v30);

    *(v16 + 10) = v25;
    _os_log_impl(&dword_1BC7A3000, v14, v15, "Reporting transcription wasAccurate %{BOOL,public}d for voicemail with recordUUID %{public}s", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_6();
    v2 = v29;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v26 = OUTLINED_FUNCTION_9_22();
    v27(v26);
  }

  v28 = sub_1BC8F7214();
  [v2 reportTranscriptionRatedAccurateForUUID:v4 & 1 forVoicemailUUID:v28];

  OUTLINED_FUNCTION_24();
}

unint64_t sub_1BC8F5238()
{
  result = qword_1EDC1DE78;
  if (!qword_1EDC1DE78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC1DE78);
  }

  return result;
}

uint64_t sub_1BC8F527C(void *a1)
{
  v2 = *(*(sub_1BC8F7264() - 8) + 80);

  return sub_1BC8F40F4(a1);
}

uint64_t sub_1BC8F52EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6780, &qword_1BC908A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC8F5354(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1BC7CF5EC(&v12, v10 + 40 * a1 + 32);
}

id FTLocalMessage.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id FTLocalMessage.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FTLocalMessage();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id FTLocalMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTLocalMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static FTLocalMessage.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1BC8F7BE4();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1BC8F55B4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BC8F62A8(a1, &v11 - v6, &unk_1EBCF5D70, &qword_1BC8FC740);
  v8 = *a2;
  v9 = sub_1BC8F7264();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1BC8F7214();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setCallUUID_];
}

void sub_1BC8F56D0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BC8F62A8(a1, &v11 - v6, &unk_1EBCF5D70, &qword_1BC8FC740);
  v8 = *a2;
  v9 = sub_1BC8F7264();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1BC8F7214();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setConversationID_];
}

void sub_1BC8F57EC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BC8F62A8(a1, &v11 - v6, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v8 = *a2;
  v9 = sub_1BC8F71E4();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1BC8F7174();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setDateCreated_];
}

void sub_1BC8F5908(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BC8F62A8(a1, &v11 - v6, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v8 = *a2;
  v9 = sub_1BC8F71E4();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1BC8F7174();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setDateModified_];
}

void sub_1BC8F5A24(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BC8F62A8(a1, &v11 - v6, &qword_1EBCF5A20, &qword_1BC901BF0);
  v8 = *a2;
  v9 = sub_1BC8F7014();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1BC8F6F44();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setMessageFile_];
}

void sub_1BC8F5B40(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BC8F62A8(a1, &v11 - v6, &qword_1EBCF5A20, &qword_1BC901BF0);
  v8 = *a2;
  v9 = sub_1BC8F7014();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1BC8F6F44();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setMessageThumbnail_];
}

void sub_1BC8F5C5C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BC8F62A8(a1, &v11 - v6, &unk_1EBCF5D70, &qword_1BC8FC740);
  v8 = *a2;
  v9 = sub_1BC8F7264();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1BC8F7214();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setRecordUUID_];
}

void sub_1BC8F5D78(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BC8F62A8(a1, &v11 - v6, &unk_1EBCF5D70, &qword_1BC8FC740);
  v8 = *a2;
  v9 = sub_1BC8F7264();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1BC8F7214();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setReminderUUID_];
}

uint64_t sub_1BC8F5E94@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);

  return __swift_storeEnumTagSinglePayload(a5, v10, 1, v11);
}

void sub_1BC8F5F28(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BC8F62A8(a1, &v11 - v6, &qword_1EBCF5A20, &qword_1BC901BF0);
  v8 = *a2;
  v9 = sub_1BC8F7014();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1BC8F6F44();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setTranscript_];
}

void sub_1BC8F6044(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_34(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BC8F70D4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *v1 = v6;
  v1[1] = v8;
}

void sub_1BC8F60A4(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_4_3(a1, a2);
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = *v4;
    v6 = sub_1BC8F70C4();
  }

  v8 = v6;
  [v3 *v2];
}

void sub_1BC8F6110(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_4_3(a1, a2);
  if (v5)
  {
    v6 = *v4;
    v7 = sub_1BC8F7BE4();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v3 *v2];
}

uint64_t sub_1BC8F6174@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for FTLocalMessage();
  result = sub_1BC8F85C4();
  *a1 = result;
  return result;
}

uint64_t sub_1BC8F62A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id FTLocalMessageProperties.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id FTLocalMessageProperties.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FTLocalMessageProperties();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id FTLocalMessageProperties.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTLocalMessageProperties();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static FTLocalMessageProperties.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1BC8F7BE4();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_1BC8F64D4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 recordUUID];
  if (v3)
  {
    v4 = v3;
    sub_1BC8F7244();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1BC8F7264();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void sub_1BC8F6554(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BC7E8B8C(a1, &v11 - v6);
  v8 = *a2;
  v9 = sub_1BC8F7264();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1BC8F7214();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setRecordUUID_];
}

uint64_t sub_1BC8F6658@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for FTLocalMessageProperties();
  result = sub_1BC8F85C4();
  *a1 = result;
  return result;
}

id FTStoredMessage.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id FTStoredMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTStoredMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BC8F6740(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  sub_1BC8F6BB0(a1, &v16 - v10, &unk_1EBCF5D70, &qword_1BC8FC740);
  v12 = *a2;
  v13 = sub_1BC8F7264();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) != 1)
  {
    v14 = sub_1BC8F7214();
    OUTLINED_FUNCTION_10(v13);
    (*(v15 + 8))(v11, v13);
  }

  [v12 *a5];
}

void sub_1BC8F687C(uint64_t a1, void **a2)
{
  v5 = &unk_1EBCF5D80;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_3_35(v8, v13);
  v9 = *a2;
  v10 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_6_29(v10);
  if (!v11)
  {
    v5 = sub_1BC8F7174();
    OUTLINED_FUNCTION_10(a1);
    (*(v12 + 8))(v2, a1);
  }

  [v9 setDateCreated_];
}

void sub_1BC8F6960(uint64_t a1, void **a2)
{
  v5 = &unk_1EBCF5D80;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_3_35(v8, v13);
  v9 = *a2;
  v10 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_6_29(v10);
  if (!v11)
  {
    v5 = sub_1BC8F7174();
    OUTLINED_FUNCTION_10(a1);
    (*(v12 + 8))(v2, a1);
  }

  [v9 setDateModified_];
}

void sub_1BC8F6A44(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BC8F6BB0(a1, &v11 - v6, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v8 = *a2;
  v9 = sub_1BC8F71E4();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1BC8F7174();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setDateDeleted_];
}

uint64_t sub_1BC8F6B60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for FTStoredMessage();
  result = sub_1BC8F85C4();
  *a1 = result;
  return result;
}

uint64_t sub_1BC8F6BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}