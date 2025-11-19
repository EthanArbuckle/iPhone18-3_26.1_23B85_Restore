uint64_t sub_1B0B5DB58(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (result + 36);
    do
    {
      v5 = *v4 - *(v4 - 1) + 1;
      v6 = __OFADD__(v3, v5);
      v3 += v5;
      if (v6)
      {
        __break(1u);
        goto LABEL_17;
      }

      v4 += 2;
      --v2;
    }

    while (v2);
    v7 = *(a2 + 16);
    if (v7)
    {
      goto LABEL_10;
    }

    if (v3)
    {
LABEL_14:

      sub_1B0B5E67C();
      swift_allocError();
      return swift_willThrow();
    }
  }

  else
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v3 = 0;
LABEL_10:
      v8 = 0;
      v9 = (a2 + 36);
      while (1)
      {
        v10 = *v9 - *(v9 - 1) + 1;
        v6 = __OFADD__(v8, v10);
        v8 += v10;
        if (v6)
        {
          break;
        }

        v9 += 2;
        if (!--v7)
        {
          if (v3 == v8)
          {
            return result;
          }

          goto LABEL_14;
        }
      }

LABEL_17:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0B5DC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = sub_1B0B5DB58(a2, a3);
  if (v4)
  {
    return v5;
  }

  v12 = v11;
  v13 = sub_1B0B562C8(v10);
  v14 = sub_1B0B562C8(v12);
  v15 = v14;
  v49 = *(v13 + 16);
  if (!v49)
  {

    v5 = MEMORY[0x1E69E7CC8];
LABEL_23:

    return v5;
  }

  v16 = 0;
  v47 = a1 << 32;
  v48 = v13 + 32;
  v5 = MEMORY[0x1E69E7CC8];
  v45 = v13;
  v46 = a4;
  v44 = v14;
  while (v16 < *(v13 + 16))
  {
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_26;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_27;
    }

    v20 = *(v48 + 4 * v16);
    v21 = *(v15 + 4 * v16 + 32);
    v22 = sub_1B03FE284(v20);
    if ((v23 & 1) == 0)
    {
      goto LABEL_28;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_29;
    }

    v24 = *(*(a4 + 56) + 24 * v22);
    v25 = sub_1B03FE284(v20);
    if ((v26 & 1) == 0)
    {
      goto LABEL_30;
    }

    v27 = *(a4 + 56) + 24 * v25;
    v28 = *(v27 + 8);
    v50 = *(v27 + 16);
    v51 = v21;
    sub_1B03B2000(v28, v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_1B03FE284(v20);
    v32 = v5[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_31;
    }

    v35 = v30;
    if (v5[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B0B8EE54();
      }
    }

    else
    {
      sub_1B0B3342C(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_1B03FE284(v20);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_33;
      }

      v31 = v36;
    }

    v38 = v47 | v51;
    if (v35)
    {
      v17 = v5[7] + 40 * v31;
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      *v17 = v24;
      *(v17 + 8) = v28;
      *(v17 + 16) = v50;
      *(v17 + 24) = v38;
      *(v17 + 32) = 0;
      sub_1B0391D50(v18, v19);
    }

    else
    {
      v5[(v31 >> 6) + 8] |= 1 << v31;
      *(v5[6] + 4 * v31) = v20;
      v39 = v5[7] + 40 * v31;
      *v39 = v24;
      *(v39 + 8) = v28;
      *(v39 + 16) = v50;
      *(v39 + 24) = v38;
      *(v39 + 32) = 0;
      v40 = v5[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_32;
      }

      v5[2] = v42;
    }

    ++v16;
    v13 = v45;
    a4 = v46;
    v15 = v44;
    if (v49 == v16)
    {

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0B5DF14(uint64_t a1, char a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4830, &qword_1B0EC5FC8);
  result = sub_1B0E46688();
  v7 = result;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = result + 64;
  v14 = a2 & 1;
  if (v11)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v18 = v15 | (v8 << 6);
      v19 = *(*(a3 + 48) + 4 * v18);
      v20 = *(a3 + 56) + 24 * v18;
      v21 = *v20;
      result = *(v20 + 8);
      v22 = *(v20 + 16);
      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v7[6] + 4 * v18) = v19;
      v23 = v7[7] + 40 * v18;
      *v23 = v21;
      *(v23 + 8) = result;
      *(v23 + 16) = v22;
      *(v23 + 24) = a1;
      *(v23 + 32) = v14;
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v7[2] = v26;
      result = sub_1B03B2000(result, v22);
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return v7;
      }

      v17 = *(a3 + 64 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B5E084()
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v59 = *(v2 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v52 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v14 = *(v0 + 128);
  v57 = (v0 + 128);
  v58 = &v52 - v15;
  v64 = v16;
  v17 = sub_1B0B5C4EC(&qword_1EB6DD960);
  v65 = v17;
  KeyPath = swift_getKeyPath();

  v19 = sub_1B0B582AC(v14, KeyPath);

  v20 = sub_1B0B3876C(v19);

  v21 = sub_1B0B56B48(v20);
  v55 = v17;
  v56 = v21;
  v61 = v2;
  v62 = v2;
  v63 = v17;
  v22 = swift_getKeyPath();

  v23 = sub_1B0B582AC(v14, v22);
  v60 = v1;

  v24 = sub_1B0B3876C(v23);

  v26 = 0;
  v27 = 1 << *(v24 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v24 + 56);
  v30 = (v27 + 63) >> 6;
  while (v29)
  {
LABEL_11:
    v36 = v58;
    sub_1B0B5E6D0(*(v24 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v26 << 6)), v58, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E798(v36, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E6D0(v12, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
LABEL_4:
        v31 = sub_1B0B5E738(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
        MEMORY[0x1EEE9AC00](v31);
        *(&v52 - 2) = v12;
        v32 = v56;

        v33 = v60;
        v34 = sub_1B0B57294(sub_1B0B5E63C, (&v52 - 4), v32);
        v60 = v33;
        sub_1B0B4F414(v12, v34);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_4;
      }

      sub_1B0B5E738(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    }

    v29 &= v29 - 1;
    result = sub_1B0B5E738(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
  }

  while (1)
  {
    v35 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return result;
    }

    if (v35 >= v30)
    {
      break;
    }

    v29 = *(v24 + 56 + 8 * v35);
    ++v26;
    if (v29)
    {
      v26 = v35;
      goto LABEL_11;
    }
  }

  v39 = *v57;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v55;
  *(&v52 - 2) = v61;
  *(&v52 - 1) = v40;
  v41 = swift_getKeyPath();

  v42 = sub_1B0B582AC(v39, v41);

  v43 = sub_1B0B3876C(v42);

  v44 = sub_1B0B56EF0(v43);
  if (!*(v44 + 16))
  {
  }

  v45 = v44;
  v46 = v54;
  swift_storeEnumTagMultiPayload();
  v47 = v53;
  sub_1B0B5E6D0(v46, v53, type metadata accessor for MoveAndCopyMessages.CommandID);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  v51 = swift_allocObject();
  sub_1B0B5E798(v47, v51 + *(*v51 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B028E4(&v66, v51);
  sub_1B0B5E738(v46, type metadata accessor for MoveAndCopyMessages.CommandID);

  swift_storeEnumTagMultiPayload();
  sub_1B0B4F414(v46, v45);

  return sub_1B0B5E738(v46, type metadata accessor for MoveAndCopyMessages.CommandID);
}

unint64_t sub_1B0B5E67C()
{
  result = qword_1EB6E49C0;
  if (!qword_1EB6E49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E49C0);
  }

  return result;
}

uint64_t sub_1B0B5E6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B5E738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0B5E798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B5E800(uint64_t a1, void (*a2)(uint64_t *__return_ptr, int *), uint64_t a3, char a4, uint64_t *a5)
{
  v58 = a5;
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
  v44 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v11 = 0;
  v45 = v6;
  while (1)
  {
    v15 = v9;
    v16 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = *(*(a1 + 48) + 4 * v18);
    v20 = *(a1 + 56) + 24 * v18;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v50 = v19;
    v51 = v21;
    v52 = v22;
    v53 = v23;
    sub_1B03B2000(v22, v23);
    a2(&v54, &v50);
    sub_1B0391D50(v52, v53);
    v24 = v55;
    if (v55 == 2)
    {
LABEL_22:
      sub_1B03D91F8();
    }

    v25 = v54;
    v48 = v56;
    v49 = v57;
    v26 = *v58;
    v28 = sub_1B03FE284(v54);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_24;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_1B0B8F148();
      }
    }

    else
    {
      v33 = v58;
      sub_1B0B33990(v31, a4 & 1);
      v34 = *v33;
      v35 = sub_1B03FE284(v25);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_26;
      }

      v28 = v35;
    }

    v37 = (v15 - 1) & v15;
    v38 = *v58;
    if (v32)
    {
      v12 = v38[7] + 24 * v28;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      *v12 = v24 & 1;
      *(v12 + 8) = v48;
      *(v12 + 16) = v49;
      sub_1B0391D50(v13, v14);
    }

    else
    {
      v38[(v28 >> 6) + 8] |= 1 << v28;
      *(v38[6] + 4 * v28) = v25;
      v39 = v38[7] + 24 * v28;
      *v39 = v24 & 1;
      *(v39 + 8) = v48;
      *(v39 + 16) = v49;
      v40 = v38[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_25;
      }

      v38[2] = v42;
    }

    a4 = 1;
    v11 = v16;
    v6 = v45;
    v9 = v37;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      goto LABEL_22;
    }

    v15 = *(v6 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0B5EAA8(uint64_t a1, void (*a2)(void *__return_ptr, int *), uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
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
  v40 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v11 = 0;
  v41 = v10;
  v42 = v6;
  while (1)
  {
    v15 = v9;
    v16 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = *(a1 + 56);
    v45 = *(*(a1 + 48) + 4 * v18);
    v46 = *(v19 + 16 * v18);
    sub_1B03B2000(v46, *(&v46 + 1));
    a2(v47, &v45);
    sub_1B0391D50(v46, *(&v46 + 1));
    v20 = v48;
    if (v48 >> 60 == 15)
    {
LABEL_22:
      sub_1B03D91F8();
    }

    v21 = LODWORD(v47[0]);
    v22 = v47[1];
    v23 = *v49;
    v25 = sub_1B03FE284(LODWORD(v47[0]));
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_1B0B8EFE0();
      }
    }

    else
    {
      v30 = v49;
      sub_1B0B336FC(v28, a4 & 1);
      v31 = *v30;
      v32 = sub_1B03FE284(v21);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_26;
      }

      v25 = v32;
    }

    v34 = *v49;
    if (v29)
    {
      v12 = (v34[7] + 16 * v25);
      v13 = *v12;
      v14 = v12[1];
      *v12 = v22;
      v12[1] = v20;
      sub_1B0391D50(v13, v14);
    }

    else
    {
      v34[(v25 >> 6) + 8] |= 1 << v25;
      *(v34[6] + 4 * v25) = v21;
      v35 = (v34[7] + 16 * v25);
      *v35 = v22;
      v35[1] = v20;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_25;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v16;
    v10 = v41;
    v6 = v42;
    v9 = (v15 - 1) & v15;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      goto LABEL_22;
    }

    v15 = *(v6 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0B5ED40(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0B5ED84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0B5EDEC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0B5EE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B0B5EE8C()
{
  result = qword_1EB6E4A08;
  if (!qword_1EB6E4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A08);
  }

  return result;
}

unint64_t sub_1B0B5EEE4()
{
  result = qword_1EB6E4A10;
  if (!qword_1EB6E4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A10);
  }

  return result;
}

uint64_t sub_1B0B5EF68()
{
  result = sub_1B043B29C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0B5EFE4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() > 520)
  {
    v14 = sub_1B0B4AAF0();
    if ((v14 & 0x100000000) != 0)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    sub_1B03D08AC(a1, v7);
    v16 = MessageIdentifierSet.startIndex.getter(v13);
    v18 = v17;
    if (v16 != MessageIdentifierSet.endIndex.getter(v13) || v18 != v19)
    {
      do
      {
        MessageIdentifierSet.subscript.getter(v18, v13, &v34);
        v21 = v34;
        v16 = MessageIdentifierSet.index(_:offsetBy:)(v16, v18, 1);
        v18 = v22;
        if (v15 < v21)
        {
          v32 = v21;
          MessageIdentifierSet.insert(_:)(v33, &v32, v13);
        }
      }

      while (v16 != MessageIdentifierSet.endIndex.getter(v13) || v18 != v23);
    }

    v24 = &v7[*(v4 + 36)];
    *v24 = v16;
    v24[1] = v18;
    sub_1B03D09B8(v7);
  }

  else
  {
    (*(v9 + 16))(v12, a1, v8);
    sub_1B0E46ED8();
  }

  v25 = MessageIdentifierSet.count.getter();
  result = type metadata accessor for NewestMessages();
  v27 = *(result + 20);
  v28 = *(v2 + v27);
  v29 = __OFADD__(v28, v25);
  v30 = v28 + v25;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v27) = v30;
  }

  return result;
}

uint64_t type metadata accessor for NewServerMessages()
{
  result = qword_1EB6DDAD0;
  if (!qword_1EB6DDAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B0B5F34C()
{
  sub_1B09AFEB4();
  if (v0 <= 0x3F)
  {
    sub_1B0B5F3FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B5F3FC()
{
  if (!qword_1EB6DB3B8)
  {
    type metadata accessor for MessageMetadata(255);
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB3B8);
    }
  }
}

uint64_t sub_1B0B5F454@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for NewServerMessages();
  v8 = *(v1 + v7[8]);
  if ((*(v1 + v7[7]) & 1) == 0)
  {
    if (*(v1 + v7[8]))
    {
      v9 = &unk_1F2710C88;
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41A0, &unk_1B0EF9FA0);
    v9 = swift_allocObject();
    v9[1] = xmmword_1B0EC4700;
    *(v9 + 4) = 7;
    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *(v9 + 7) = 0;
    *(v9 + 68) = -64;
    *(v9 + 16) = 0;
    *(v9 + 9) = 2;
    *(v9 + 10) = 0;
    *(v9 + 11) = 0;
    *(v9 + 12) = 0;
    *(v9 + 108) = -64;
    *(v9 + 26) = 0;
    *(v9 + 14) = 5;
    *(v9 + 15) = 0;
    *(v9 + 16) = 0;
    *(v9 + 17) = 0;
    *(v9 + 148) = -64;
    *(v9 + 36) = 0;
    *(v9 + 19) = 1;
    *(v9 + 20) = 0;
    *(v9 + 21) = 0;
    *(v9 + 22) = 0;
    *(v9 + 188) = -64;
    *(v9 + 46) = 0;
    v14 = SectionSpecifier.header.unsafeMutableAddressor();
    v15 = *v14;
    v12 = v14[1];
    v13 = *(v14 + 16);
    *(v9 + 24) = 1;
    *(v9 + 25) = v15;
    *(v9 + 26) = v12;
    *(v9 + 27) = v13;
    *(v9 + 228) = 33;
    *(v9 + 56) = 0;
    *(v9 + 29) = 11;
    *(v9 + 30) = 0;
    *(v9 + 31) = 0;
    *(v9 + 32) = 0;
    *(v9 + 268) = -64;
    *(v9 + 66) = 0;
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0ACE964(v12, v13);
    goto LABEL_9;
  }

  if ((*(v1 + v7[8]) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41A0, &unk_1B0EF9FA0);
    v9 = swift_allocObject();
    v9[1] = xmmword_1B0EC60E0;
    *(v9 + 4) = 7;
    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *(v9 + 7) = 0;
    *(v9 + 68) = -64;
    *(v9 + 16) = 0;
    *(v9 + 9) = 2;
    *(v9 + 10) = 0;
    *(v9 + 11) = 0;
    *(v9 + 12) = 0;
    *(v9 + 108) = -64;
    *(v9 + 26) = 0;
    *(v9 + 14) = 5;
    *(v9 + 15) = 0;
    *(v9 + 16) = 0;
    *(v9 + 17) = 0;
    *(v9 + 148) = -64;
    *(v9 + 36) = 0;
    *(v9 + 19) = 1;
    *(v9 + 20) = 0;
    *(v9 + 21) = 0;
    *(v9 + 22) = 0;
    *(v9 + 188) = -64;
    *(v9 + 46) = 0;
    v10 = SectionSpecifier.header.unsafeMutableAddressor();
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 16);
    *(v9 + 24) = 1;
    *(v9 + 25) = v11;
    *(v9 + 26) = v12;
    *(v9 + 27) = v13;
    *(v9 + 228) = 33;
    *(v9 + 56) = 0;
    goto LABEL_8;
  }

  v9 = &unk_1F2710D70;
LABEL_9:
  sub_1B03B5C80(v1 + v7[5], v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
  sub_1B03B5C80(v6, a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  *v16 = v9;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  type metadata accessor for ClientCommand(0);
  swift_storeEnumTagMultiPayload();
  return sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

void sub_1B0B5F730(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v146 = a2;
  v150 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v150 - 8) + 64);
  MEMORY[0x1EEE9AC00](v150);
  v7 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v128 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v128 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v128 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v142 = &v128 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v128 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v144 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v145 = &v128 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v147 = &v128 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v128 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v148 = &v128 - v37;
  v38 = type metadata accessor for MessageMetadata(0);
  v39 = *(*(v38 - 1) + 64);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v128 - v42;
  MEMORY[0x1EEE9AC00](v44);
  if (*(a1 + 12))
  {
    sub_1B0B60AE4(a3, v10, type metadata accessor for MailboxTaskLogger);
    sub_1B0B60AE4(a3, v7, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v49 = sub_1B0E43988();
    v50 = sub_1B0E458D8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v154[0] = v52;
      *v51 = 68159235;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v53 = v150;
      v54 = &v7[*(v150 + 20)];
      *(v51 + 10) = *v54;
      *(v51 + 11) = 2082;
      v55 = &v10[*(v53 + 20)];
      *(v51 + 13) = sub_1B0399D64(*(v55 + 1), *(v55 + 2), v154);
      *(v51 + 21) = 1040;
      *(v51 + 23) = 2;
      *(v51 + 27) = 512;
      LOWORD(v54) = *(v54 + 12);
      sub_1B0B60BB4(v7, type metadata accessor for MailboxTaskLogger);
      *(v51 + 29) = v54;
      *(v51 + 31) = 2160;
      *(v51 + 33) = 0x786F626C69616DLL;
      *(v51 + 41) = 2085;
      v56 = *(v55 + 4);
      LODWORD(v55) = *(v55 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B60BB4(v10, type metadata accessor for MailboxTaskLogger);
      v152 = v56;
      v153 = v55;
      v57 = sub_1B0E44BA8();
      v59 = sub_1B0399D64(v57, v58, v154);

      *(v51 + 43) = v59;
      _os_log_impl(&dword_1B0389000, v49, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No Message UID found.", v51, 0x33u);
      swift_arrayDestroy();
      v60 = v52;
LABEL_9:
      MEMORY[0x1B272C230](v60, -1, -1);
      MEMORY[0x1B272C230](v51, -1, -1);

      return;
    }

    sub_1B0B60BB4(v7, type metadata accessor for MailboxTaskLogger);

    v75 = v10;
LABEL_12:
    v76 = type metadata accessor for MailboxTaskLogger;
LABEL_13:
    sub_1B0B60BB4(v75, v76);
    return;
  }

  v138 = v46;
  v139 = v48;
  v137 = v47;
  v140 = (&v128 - v45);
  v141 = a3;
  v61 = *(a1 + 8);
  v62 = type metadata accessor for NewServerMessages();
  if (*(a1 + 536) & 1) != 0 || (v63 = *(a1 + 512)) == 0 || (*(a1 + 544))
  {
    v64 = v141;
    sub_1B0B60AE4(v141, v16, type metadata accessor for MailboxTaskLogger);
    sub_1B0B60AE4(v64, v13, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v49 = sub_1B0E43988();
    v65 = sub_1B0E458D8();
    if (os_log_type_enabled(v49, v65))
    {
      v51 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v154[0] = v66;
      *v51 = 68159235;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v67 = v150;
      v68 = &v13[*(v150 + 20)];
      *(v51 + 10) = *v68;
      *(v51 + 11) = 2082;
      v69 = &v16[*(v67 + 20)];
      *(v51 + 13) = sub_1B0399D64(*(v69 + 1), *(v69 + 2), v154);
      *(v51 + 21) = 1040;
      *(v51 + 23) = 2;
      *(v51 + 27) = 512;
      LOWORD(v68) = *(v68 + 12);
      sub_1B0B60BB4(v13, type metadata accessor for MailboxTaskLogger);
      *(v51 + 29) = v68;
      *(v51 + 31) = 2160;
      *(v51 + 33) = 0x786F626C69616DLL;
      *(v51 + 41) = 2085;
      v70 = *(v69 + 4);
      v71 = *(v69 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B60BB4(v16, type metadata accessor for MailboxTaskLogger);
      v152 = v70;
      v153 = v71;
      v72 = sub_1B0E44BA8();
      v74 = sub_1B0399D64(v72, v73, v154);

      *(v51 + 43) = v74;
      _os_log_impl(&dword_1B0389000, v49, v65, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Ignoring message data.", v51, 0x33u);
      swift_arrayDestroy();
      v60 = v66;
      goto LABEL_9;
    }

    sub_1B0B60BB4(v13, type metadata accessor for MailboxTaskLogger);

    v75 = v16;
    goto LABEL_12;
  }

  v136 = v62;
  v77 = (v149 + *(v62 + 24));
  v133 = *v77;
  v132 = v77[1];
  v131 = v77[2];
  v130 = v77[3];
  v129 = v77[4];
  v78 = *(a1 + 540);
  v134 = *(a1 + 528);
  v135 = v78;
  sub_1B0B606B8(v34);
  sub_1B07B4B30(v34, v31);
  v79 = sub_1B0E443C8();
  v80 = *(v79 - 8);
  v81 = 1;
  if ((*(v80 + 48))(v31, 1, v79) != 1)
  {
    (*(v80 + 32))(v148, v31, v79);
    v81 = 0;
  }

  v146 = v61 < v146;
  v82 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v83 = *(*(v82 - 8) + 56);
  v83(v148, v81, 1, v82);
  v84 = 0x100000000;
  if (!v129)
  {
    v84 = 0;
  }

  v85 = 0x1000000;
  if (!v130)
  {
    v85 = 0;
  }

  v86 = 0x10000;
  if (!v131)
  {
    v86 = 0;
  }

  v87 = 256;
  if (!v132)
  {
    v87 = 0;
  }

  v88 = FlagDecoder.decode(_:)(v63, v87 | v133 | v86 | v85 | v84);
  v90 = v89;
  v154[0] = *(a1 + 520);
  v91 = v38[8];
  v83(&v43[v91], 1, 1, v82);
  *v43 = v61;
  *(v43 + 1) = v134;
  sub_1B03B5C80(v154, &v152, &qword_1EB6E4898, &qword_1B0EC6340);
  sub_1B0B60A74(v148, &v43[v91]);
  *(v43 + 2) = v88;
  v43[24] = v90;
  *(v43 + 4) = v154[0];
  *&v43[v38[9]] = v135;
  v43[v38[10]] = v146;
  v92 = v140;
  sub_1B0B60B4C(v43, v140, type metadata accessor for MessageMetadata);
  v93 = *(v136 + 20);
  v94 = v147;
  sub_1B03B5C80(v149 + v93, v147, &unk_1EB6E26C0, &unk_1B0E9DE10);
  LODWORD(v152) = *v92;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  LOBYTE(v91) = MessageIdentifierSet.contains(_:)(&v152, v95);
  sub_1B0398EFC(v94, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if ((v91 & 1) == 0)
  {
    v101 = v145;
    sub_1B03B5C80(v149 + v93, v145, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v102 = v141;
    v103 = v143;
    sub_1B0B60AE4(v141, v143, type metadata accessor for MailboxTaskLogger);
    v104 = v142;
    sub_1B0B60AE4(v102, v142, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v105 = v138;
    sub_1B0B60AE4(v92, v138, type metadata accessor for MessageMetadata);
    v106 = v144;
    sub_1B03B5C80(v101, v144, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v107 = sub_1B0E43988();
    v108 = sub_1B0E458D8();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      LODWORD(v148) = v108;
      v110 = v109;
      v149 = swift_slowAlloc();
      v151 = v149;
      *v110 = 68159747;
      *(v110 + 4) = 2;
      *(v110 + 8) = 256;
      v111 = v150;
      v112 = v104;
      v113 = v104 + *(v150 + 20);
      *(v110 + 10) = *v113;
      *(v110 + 11) = 2082;
      v114 = v103;
      v115 = v103 + *(v111 + 20);
      *(v110 + 13) = sub_1B0399D64(*(v115 + 8), *(v115 + 16), &v151);
      *(v110 + 21) = 1040;
      *(v110 + 23) = 2;
      *(v110 + 27) = 512;
      LOWORD(v113) = *(v113 + 24);
      sub_1B0B60BB4(v112, type metadata accessor for MailboxTaskLogger);
      *(v110 + 29) = v113;
      *(v110 + 31) = 2160;
      *(v110 + 33) = 0x786F626C69616DLL;
      *(v110 + 41) = 2085;
      v116 = *(v115 + 32);
      LODWORD(v115) = *(v115 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B60BB4(v114, type metadata accessor for MailboxTaskLogger);
      v152 = v116;
      v153 = v115;
      v117 = sub_1B0E44BA8();
      v119 = sub_1B0399D64(v117, v118, &v151);

      *(v110 + 43) = v119;
      *(v110 + 51) = 1024;
      v120 = *v105;
      sub_1B0B60BB4(v105, type metadata accessor for MessageMetadata);
      *(v110 + 53) = v120;
      *(v110 + 57) = 2082;
      v121 = v144;
      v122 = v147;
      sub_1B03B5C80(v144, v147, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v123 = MessageIdentifierSet.debugDescription.getter(v95);
      v125 = v124;
      sub_1B0398EFC(v121, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v122, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v126 = sub_1B0399D64(v123, v125, &v151);

      *(v110 + 59) = v126;
      _os_log_impl(&dword_1B0389000, v107, v148, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Ignoring UID %u outside of range-of-interest %{public}s.", v110, 0x43u);
      v127 = v149;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v127, -1, -1);
      MEMORY[0x1B272C230](v110, -1, -1);

      sub_1B0398EFC(v145, &unk_1EB6E26C0, &unk_1B0E9DE10);
    }

    else
    {
      sub_1B0B60BB4(v105, type metadata accessor for MessageMetadata);
      sub_1B0B60BB4(v104, type metadata accessor for MailboxTaskLogger);

      sub_1B0398EFC(v106, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0B60BB4(v103, type metadata accessor for MailboxTaskLogger);
      sub_1B0398EFC(v101, &unk_1EB6E26C0, &unk_1B0E9DE10);
    }

    v75 = v92;
    v76 = type metadata accessor for MessageMetadata;
    goto LABEL_13;
  }

  sub_1B0B60AE4(v92, v139, type metadata accessor for MessageMetadata);
  v96 = *(v136 + 36);
  v97 = v149;
  v98 = *(v149 + v96);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v98 = sub_1B0AFFFAC(0, v98[2] + 1, 1, v98);
  }

  v100 = v98[2];
  v99 = v98[3];
  if (v100 >= v99 >> 1)
  {
    v98 = sub_1B0AFFFAC(v99 > 1, v100 + 1, 1, v98);
  }

  sub_1B0B60BB4(v140, type metadata accessor for MessageMetadata);
  v98[2] = v100 + 1;
  sub_1B0B60B4C(v139, v98 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v100, type metadata accessor for MessageMetadata);
  *(v97 + v96) = v98;
}

uint64_t sub_1B0B606B8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v31 = type metadata accessor for MessageData.BodySection();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v30 - v10;
  v11 = *(v1 + 200);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    while (1)
    {
      sub_1B0B60AE4(v13, v5, type metadata accessor for MessageData.BodySection);
      v15 = *v5;
      v16 = *(v5 + 1);
      v17 = v5[16];
      v18 = SectionSpecifier.header.unsafeMutableAddressor();
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v18 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE964(v19, v21);
      LOBYTE(v15) = static SectionSpecifier.__derived_struct_equals(_:_:)(v15, v16, v17, v20, v19, v21);

      sub_1B0ACE978(v19, v21);
      if ((v15 & 1) != 0 && v5[24] == 1)
      {
        break;
      }

      sub_1B0B60BB4(v5, type metadata accessor for MessageData.BodySection);
      v13 += v14;
      if (!--v12)
      {
        goto LABEL_8;
      }
    }

    v22 = v30;
    sub_1B0B60B4C(v5, v30, type metadata accessor for MessageData.BodySection);
    v23 = v32;
    sub_1B03B5C80(v22 + *(v31 + 24), v32, &qword_1EB6E4178, &unk_1B0EE7570);
    sub_1B0B60BB4(v22, type metadata accessor for MessageData.BodySection);
    v24 = type metadata accessor for MessageData.BodyData();
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) != 1)
    {
      v27 = sub_1B0E443C8();
      v28 = *(v27 - 8);
      v29 = v33;
      (*(v28 + 16))(v33, v23, v27);
      sub_1B0B60BB4(v23, type metadata accessor for MessageData.BodyData);
      return (*(v28 + 56))(v29, 0, 1, v27);
    }

    sub_1B0398EFC(v23, &qword_1EB6E4178, &unk_1B0EE7570);
  }

LABEL_8:
  v25 = sub_1B0E443C8();
  return (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
}

uint64_t sub_1B0B60A74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B60AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B60B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B60BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0B60C14@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v30 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - v21;
  sub_1B03B5C80(a2, v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v23 = 1;
  }

  else
  {
    sub_1B03C60A4(v7, v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v20, v11, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v23 = 0;
  }

  (*(v13 + 56))(v11, v23, 1, v12);
  v24 = (*(v13 + 48))(v11, 1, v12);
  v25 = v31;
  if (v24 == 1)
  {
    sub_1B0398EFC(a2, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v26 = v30;
    v34 = *v30;
    sub_1B039E440(&v34);
    v32 = *(v26 + 3);
    v33 = *(v26 + 8);
    sub_1B039E440(&v32);
    sub_1B0398EFC(v11, &unk_1EB6E3670, &unk_1B0E9B260);
    v27 = 1;
  }

  else
  {
    sub_1B03C60A4(v11, v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B03B5C80(v22, v17, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0B60FD4(v30, v17, v25);
    sub_1B0398EFC(a2, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v27 = 0;
  }

  v28 = type metadata accessor for NotifyMessagesVanished();
  return (*(*(v28 - 8) + 56))(v25, v27, 1, v28);
}

uint64_t sub_1B0B60FAC()
{
  result = sub_1B03D0770(&unk_1F2710F70);
  qword_1EB737D58 = result;
  return result;
}

uint64_t sub_1B0B60FD4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NotifyMessagesVanished();
  v7 = (a3 + v6[7]);
  *v7 = 0xD000000000000016;
  v7[1] = 0x80000001B0EC72E0;
  *(a3 + v6[9]) = MEMORY[0x1E69E7CD0];
  *(a3 + v6[10]) = 1;
  v8 = a1[1];
  v17 = *a1;
  v15 = *(a1 + 3);
  v16 = *(a1 + 8);
  LODWORD(v7) = v16;
  *a3 = v17;
  *(a3 + 16) = v8;
  *(a3 + 32) = v7;
  sub_1B03B5C80(a2, a3 + v6[6], &unk_1EB6E26C0, &unk_1B0E9DE10);
  v13 = *(a1 + 3);
  v14 = *(a1 + 8);
  *(a3 + 40) = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08A6A60(&v15, &v11);
  sub_1B03D091C(&v17, &v11);
  sub_1B0451F2C();
  sub_1B0E461E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B0EC1E70;
  v11 = v15;
  v12 = v16;
  *(v9 + 32) = &type metadata for MoveAndCopyMessages;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  sub_1B039E440(&v17);
  sub_1B039E440(&v15);
  result = sub_1B0398EFC(a2, &unk_1EB6E26C0, &unk_1B0E9DE10);
  *(a3 + v6[8]) = v9;
  return result;
}

uint64_t sub_1B0B611A4(uint64_t a1)
{
  v90 = type metadata accessor for MailboxTaskLogger(0);
  v3 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v89 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v89 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v89 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v89 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v97 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v89 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v89 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v89 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v89 - v29;
  v31 = type metadata accessor for NotifyMessagesVanished();
  sub_1B03B5C80(v1 + *(v31 + 24), v30, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v32 = sub_1B0E46E18();
  v33 = sub_1B0E46E28();
  v34 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v32 < v34 || result < v32)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = sub_1B0E46E18();
  v37 = sub_1B0E46E28();
  result = sub_1B0398EFC(v16, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v33 < v36 || v37 < v33)
  {
    goto LABEL_19;
  }

  if (__OFSUB__(v33, v32))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v33 - v32 <= 9)
  {
    v38 = v94;
    sub_1B0A92638(a1, v94);
    v39 = v92;
    sub_1B0A92638(a1, v92);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B03B5C80(v30, v27, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v40 = v96;
    sub_1B03B5C80(v30, v96, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v41 = sub_1B0E43988();
    v42 = sub_1B0E45908();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v100 = v97;
      *v43 = 68159747;
      *(v43 + 4) = 2;
      *(v43 + 8) = 256;
      v44 = v90;
      v45 = v39 + *(v90 + 20);
      *(v43 + 10) = *v45;
      *(v43 + 11) = 2082;
      v46 = v38 + *(v44 + 20);
      *(v43 + 13) = sub_1B0399D64(*(v46 + 8), *(v46 + 16), &v100);
      *(v43 + 21) = 1040;
      *(v43 + 23) = 2;
      *(v43 + 27) = 512;
      v47 = *(v45 + 24);
      sub_1B0A9269C(v39);
      *(v43 + 29) = v47;
      *(v43 + 31) = 2160;
      *(v43 + 33) = 0x786F626C69616DLL;
      *(v43 + 41) = 2085;
      v48 = *(v46 + 32);
      LODWORD(v45) = *(v46 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v38);
      v98 = v48;
      v99 = v45;
      v49 = sub_1B0E44BA8();
      v51 = sub_1B0399D64(v49, v50, &v100);

      *(v43 + 43) = v51;
      *(v43 + 51) = 2048;
      v52 = v91;
      v53 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v27, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *(v43 + 53) = v53;
      *(v43 + 61) = 2082;
      v54 = v96;
      v55 = MessageIdentifierSet.debugDescription.getter(v52);
      v57 = v56;
      sub_1B0398EFC(v54, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v58 = sub_1B0399D64(v55, v57, &v100);

      *(v43 + 63) = v58;
      _os_log_impl(&dword_1B0389000, v41, v42, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID(s) vanished: %{public}s", v43, 0x47u);
      v59 = v97;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v59, -1, -1);
      MEMORY[0x1B272C230](v43, -1, -1);
    }

    else
    {
      sub_1B0398EFC(v27, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0A9269C(v39);

      sub_1B0398EFC(v40, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0A9269C(v38);
    }

    v60 = v30;
    return sub_1B0398EFC(v60, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }

  v61 = v95;
  sub_1B0A92638(a1, v95);
  v62 = v93;
  sub_1B0A92638(a1, v93);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03B5C80(v30, v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v63 = v97;
  sub_1B03B5C80(v30, v97, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v64 = sub_1B0E43988();
  v65 = sub_1B0E45908();
  if (!os_log_type_enabled(v64, v65))
  {
    sub_1B0398EFC(v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0A9269C(v62);

    sub_1B0398EFC(v63, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0A9269C(v61);
    v60 = v30;
    return sub_1B0398EFC(v60, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }

  v66 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  v100 = v96;
  *v66 = 68159747;
  *(v66 + 4) = 2;
  *(v66 + 8) = 256;
  v67 = v90;
  v68 = v62 + *(v90 + 20);
  *(v66 + 10) = *v68;
  *(v66 + 11) = 2082;
  v69 = v61;
  v70 = v61 + *(v67 + 20);
  *(v66 + 13) = sub_1B0399D64(*(v70 + 8), *(v70 + 16), &v100);
  *(v66 + 21) = 1040;
  *(v66 + 23) = 2;
  *(v66 + 27) = 512;
  v71 = *(v68 + 24);
  sub_1B0A9269C(v62);
  *(v66 + 29) = v71;
  *(v66 + 31) = 2160;
  *(v66 + 33) = 0x786F626C69616DLL;
  *(v66 + 41) = 2085;
  v72 = *(v70 + 32);
  LODWORD(v68) = *(v70 + 40);
  v73 = v97;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A9269C(v69);
  v98 = v72;
  v99 = v68;
  v74 = sub_1B0E44BA8();
  v76 = sub_1B0399D64(v74, v75, &v100);

  *(v66 + 43) = v76;
  *(v66 + 51) = 2048;
  v77 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
  *(v66 + 53) = v77;
  *(v66 + 61) = 2082;
  result = sub_1B0B4AAF0();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_22;
  }

  v78 = result;
  v79 = v89;
  MessageIdentifierSet.ranges.getter(v89);
  v80 = sub_1B0B4A3E8();
  v82 = v81;
  result = sub_1B0398EFC(v79, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if ((v82 & 1) == 0)
  {
    if (HIDWORD(v80) >= v78)
    {
      v98 = __PAIR64__(HIDWORD(v80), v78);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v84 = MessageIdentifierRange.debugDescription.getter(v83);
      v86 = v85;
      sub_1B0398EFC(v73, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v87 = sub_1B0399D64(v84, v86, &v100);

      *(v66 + 63) = v87;
      _os_log_impl(&dword_1B0389000, v64, v65, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID(s) vanished in range %{public}s.", v66, 0x47u);
      v88 = v96;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v88, -1, -1);
      MEMORY[0x1B272C230](v66, -1, -1);

      v60 = v30;
      return sub_1B0398EFC(v60, &unk_1EB6E26C0, &unk_1B0E9DE10);
    }

    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0B61B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v126 = a3;
  v129 = a2;
  v123 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v122 = &v116 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v119 = &v116 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v116 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v117 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v127 = &v116 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v116 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v116 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v130 = &v116 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v125 = &v116 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v118 = &v116 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v116 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v128 = &v116 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v116 - v41;
  v43 = type metadata accessor for NotifyMessagesVanished();
  sub_1B03B5C80(v129 + *(v43 + 24), v42, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v44 = a1 + *(type metadata accessor for MailboxSyncState() + 48);
  v45 = *(type metadata accessor for PendingServerResponses() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0E46EC8();
  sub_1B0398EFC(v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v44 + v45, v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v129 = v17;
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v46 = 1;
  }

  else
  {
    sub_1B03C60A4(v20, v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v37, v24, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v46 = 0;
  }

  (*(v26 + 56))(v24, v46, 1, v25);
  v47 = (*(v26 + 48))(v24, 1, v25);
  v48 = v130;
  if (v47 == 1)
  {
    v49 = &unk_1EB6E3670;
    v50 = &unk_1B0E9B260;
    v51 = v24;
    return sub_1B0398EFC(v51, v49, v50);
  }

  v52 = v24;
  v53 = v128;
  sub_1B03C60A4(v52, v128, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v54 = v127;
  MessageIdentifierSet.ranges.getter(v127);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v55 = sub_1B0E46E18();
  v56 = sub_1B0E46E28();
  v57 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v55 < v57 || result < v55)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v59 = sub_1B0E46E18();
  v60 = sub_1B0E46E28();
  result = sub_1B0398EFC(v54, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v56 < v59 || v60 < v56)
  {
    goto LABEL_25;
  }

  if (__OFSUB__(v56, v55))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v56 - v55 <= 9)
  {
    v61 = v126;
    v62 = v121;
    sub_1B0A92638(v126, v121);
    v63 = v119;
    sub_1B0A92638(v61, v119);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v64 = v118;
    sub_1B03B5C80(v53, v118, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v65 = v125;
    sub_1B03B5C80(v53, v125, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v66 = sub_1B0E43988();
    v67 = sub_1B0E45908();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      LODWORD(v127) = v67;
      v69 = v68;
      v130 = swift_slowAlloc();
      v133 = v130;
      *v69 = 68159747;
      *(v69 + 4) = 2;
      *(v69 + 8) = 256;
      v70 = v123;
      v71 = v64;
      v72 = v62;
      v73 = v63 + *(v123 + 20);
      *(v69 + 10) = *v73;
      *(v69 + 11) = 2082;
      v74 = v129;
      v75 = v72 + *(v70 + 20);
      *(v69 + 13) = sub_1B0399D64(*(v75 + 8), *(v75 + 16), &v133);
      *(v69 + 21) = 1040;
      *(v69 + 23) = 2;
      *(v69 + 27) = 512;
      v76 = *(v73 + 24);
      sub_1B0A9269C(v63);
      *(v69 + 29) = v76;
      *(v69 + 31) = 2160;
      *(v69 + 33) = 0x786F626C69616DLL;
      *(v69 + 41) = 2085;
      v77 = *(v75 + 32);
      LODWORD(v73) = *(v75 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v72);
      v131 = v77;
      v132 = v73;
      v78 = sub_1B0E44BA8();
      v80 = sub_1B0399D64(v78, v79, &v133);

      *(v69 + 43) = v80;
      *(v69 + 51) = 2048;
      v81 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v71, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *(v69 + 53) = v81;
      *(v69 + 61) = 2082;
      v82 = v125;
      v83 = MessageIdentifierSet.debugDescription.getter(v74);
      v85 = v84;
      sub_1B0398EFC(v82, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v86 = sub_1B0399D64(v83, v85, &v133);

      *(v69 + 63) = v86;
      _os_log_impl(&dword_1B0389000, v66, v127, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Done. Still %ld vanished UID(s) remaining: %{public}s", v69, 0x47u);
      v87 = v130;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v87, -1, -1);
      MEMORY[0x1B272C230](v69, -1, -1);

      v51 = v53;
      v49 = &unk_1EB6E26C0;
      v50 = &unk_1B0E9DE10;
      return sub_1B0398EFC(v51, v49, v50);
    }

    sub_1B0398EFC(v64, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0A9269C(v63);

    sub_1B0398EFC(v65, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v115 = v62;
    goto LABEL_21;
  }

  v88 = v126;
  v89 = v122;
  sub_1B0A92638(v126, v122);
  v90 = v120;
  sub_1B0A92638(v88, v120);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03B5C80(v53, v48, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v91 = v124;
  sub_1B03B5C80(v53, v124, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v92 = sub_1B0E43988();
  v93 = sub_1B0E45908();
  if (!os_log_type_enabled(v92, v93))
  {
    sub_1B0398EFC(v48, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0A9269C(v90);

    sub_1B0398EFC(v91, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v115 = v89;
LABEL_21:
    sub_1B0A9269C(v115);
    goto LABEL_22;
  }

  LODWORD(v127) = v93;
  v94 = swift_slowAlloc();
  v126 = swift_slowAlloc();
  v133 = v126;
  *v94 = 68159747;
  *(v94 + 4) = 2;
  *(v94 + 8) = 256;
  v95 = v123;
  v96 = v90 + *(v123 + 20);
  *(v94 + 10) = *v96;
  *(v94 + 11) = 2082;
  v97 = v89 + *(v95 + 20);
  *(v94 + 13) = sub_1B0399D64(*(v97 + 8), *(v97 + 16), &v133);
  *(v94 + 21) = 1040;
  *(v94 + 23) = 2;
  *(v94 + 27) = 512;
  v98 = *(v96 + 24);
  sub_1B0A9269C(v90);
  *(v94 + 29) = v98;
  *(v94 + 31) = 2160;
  *(v94 + 33) = 0x786F626C69616DLL;
  *(v94 + 41) = 2085;
  v99 = *(v97 + 32);
  LODWORD(v96) = *(v97 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A9269C(v89);
  v131 = v99;
  v132 = v96;
  v100 = sub_1B0E44BA8();
  v102 = sub_1B0399D64(v100, v101, &v133);

  *(v94 + 43) = v102;
  *(v94 + 51) = 2048;
  v103 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v48, &unk_1EB6E26C0, &unk_1B0E9DE10);
  *(v94 + 53) = v103;
  *(v94 + 61) = 2082;
  result = sub_1B0B4AAF0();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_28;
  }

  v104 = result;
  v105 = v117;
  MessageIdentifierSet.ranges.getter(v117);
  v106 = sub_1B0B4A3E8();
  v108 = v107;
  result = sub_1B0398EFC(v105, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if ((v108 & 1) == 0)
  {
    if (HIDWORD(v106) >= v104)
    {
      v131 = __PAIR64__(HIDWORD(v106), v104);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v110 = MessageIdentifierRange.debugDescription.getter(v109);
      v112 = v111;
      sub_1B0398EFC(v124, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v113 = sub_1B0399D64(v110, v112, &v133);

      *(v94 + 63) = v113;
      _os_log_impl(&dword_1B0389000, v92, v127, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Done. Still %ld vanished UID(s) remaining in range %{public}s.", v94, 0x47u);
      v114 = v126;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v114, -1, -1);
      MEMORY[0x1B272C230](v94, -1, -1);

LABEL_22:
      v51 = v53;
      v49 = &unk_1EB6E26C0;
      v50 = &unk_1B0E9DE10;
      return sub_1B0398EFC(v51, v49, v50);
    }

    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B0B627BC()
{
  if (qword_1EB6DD888 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t type metadata accessor for NotifyMessagesVanished()
{
  result = qword_1EB6DD868;
  if (!qword_1EB6DD868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B0B62880@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  result = sub_1B0A9FB20(a1, a2);
  if (result)
  {
    v8 = 0xF000000000000007;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390);
    v10 = swift_allocBox();
    v11 = *(v9 + 48);
    v12 = v4[1];
    *v13 = *v4;
    v13[1] = v12;
    sub_1B03B5C80(v4 + *(a3 + 24), v13 + v11, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v8 = v10 | 0x3000000000000000;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a4 = v8;
  return result;
}

uint64_t sub_1B0B62928(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (*(result + 192) == 1)
  {
    v5 = *(result + 176);
    v4 = *(result + 184);
    v9 = *(result + 168);
    v6 = v9;
    v7 = result;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v9, v2, v3, 0, sub_1B0B62D00);
    result = sub_1B03BB638(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

uint64_t sub_1B0B629E0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v3;
}

void sub_1B0B62A40()
{
  sub_1B0B62BC4(319, qword_1EB6DE250, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v0 <= 0x3F)
  {
    sub_1B0B62B74();
    if (v1 <= 0x3F)
    {
      sub_1B0B62BC4(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep, MEMORY[0x1E69E64E8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0B62B74()
{
  if (!qword_1EB6DB460)
  {
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB460);
    }
  }
}

void sub_1B0B62BC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1B0B62C2C()
{
  result = qword_1EB6DD880;
  if (!qword_1EB6DD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD880);
  }

  return result;
}

unint64_t sub_1B0B62C80(uint64_t a1)
{
  result = sub_1B0B62CA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B62CA8()
{
  result = qword_1EB6DD878;
  if (!qword_1EB6DD878)
  {
    type metadata accessor for NotifyMessagesVanished();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD878);
  }

  return result;
}

void sub_1B0B62D1C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Task.Logger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-v9 - 8];
  sub_1B0B3DA68(a1, &v29[-v9 - 8]);
  sub_1B0B3DA68(a1, v7);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B6351C(v2, v31);
  sub_1B0B6351C(v2, v29);
  v11 = sub_1B0E43988();
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 68158722;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v15 = *&v7[*(v4 + 20)];
    sub_1B0B63664(v7);
    *(v13 + 10) = v15;
    *(v13 + 11) = 2082;
    v16 = &v10[*(v4 + 20)];
    v17 = *(v16 + 1);
    v18 = *(v16 + 2);
    v19 = *(v16 + 3);
    v20 = *(v16 + 4);
    v21 = *(v16 + 10);
    sub_1B0A982D8(*v16, v17, v18, v19);
    sub_1B0B63664(v10);
    if (v19 < 0)
    {
    }

    v22 = sub_1B0399D64(v17, v18, &v28);

    *(v13 + 13) = v22;
    *(v13 + 21) = 2048;
    v23 = *(v32 + 16);
    sub_1B0B63554(v31);
    *(v13 + 23) = v23;
    *(v13 + 31) = 2082;
    v24 = sub_1B0B88A40(v30);
    v26 = v25;
    sub_1B0B63554(v29);
    v27 = sub_1B0399D64(v24, v26, &v28);

    *(v13 + 33) = v27;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] Created task to notify that %ld sync requests completed: %{public}s.", v13, 0x29u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v14, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B0B63554(v31);
    sub_1B0B63664(v7);

    sub_1B0B63664(v10);
    sub_1B0B63554(v29);
  }
}

void sub_1B0B62FCC(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for Task.Logger(0);
  v5 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v11 = *(v2 + 64);
  v14 = *(v11 + 56);
  v13 = v11 + 56;
  v12 = v14;
  v15 = 1 << *(*(v2 + 64) + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v70 = *(v2 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = 0;
  *&v20 = 68158978;
  v58 = v20;
  v61 = a2;
  v64 = a1;
  v65 = v10;
  v59 = v7;
  while (v17)
  {
LABEL_10:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = *(*(v70 + 48) + ((v19 << 8) | (4 * v22)));
    v24 = *(a1 + 64);
    v25 = sub_1B03FE284(v23);
    if (v26)
    {
      v68 = v23;
      v27 = v25;
      v28 = *(a1 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(a1 + 64);
      v71 = v30;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1B03FE454();
        v30 = v71;
      }

      v31 = v27;
      v32 = (*(v30 + 56) + 32 * v27);
      v33 = *v32;
      v69 = *(v32 + 1);
      v34 = *(v32 + 3);
      sub_1B0B9027C(v31, v30);
      *(a1 + 64) = v30;
      v35 = static MonotonicTime.now()();
      v36 = v35 - v34;
      if (v35 >= v34)
      {
        v37 = v65;
        if (__OFSUB__(v35, v34))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v37 = v65;
        if (__OFSUB__(v34, v35))
        {
          goto LABEL_31;
        }

        v36 = v35 - v34;
        if (__OFSUB__(0, v34 - v35))
        {
          goto LABEL_33;
        }
      }

      v38 = v36 / 1000000000.0;
      if (COERCE__INT64(fabs(v38)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      if (v38 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v38 >= 9.22337204e18)
      {
        goto LABEL_30;
      }

      v67 = v33;
      sub_1B0B3DA68(a2, v37);
      sub_1B0B3DA68(a2, v7);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v39 = sub_1B0E43988();
      v40 = sub_1B0E45908();

      v66 = v40;
      if (os_log_type_enabled(v39, v40))
      {
        v63 = v39;
        v41 = v7;
        v42 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v71 = v62;
        *v42 = v58;
        *(v42 + 4) = 2;
        *(v42 + 8) = 256;
        v43 = v60;
        v44 = v37;
        v45 = *(v41 + *(v60 + 20));
        sub_1B0B63664(v41);
        *(v42 + 10) = v45;
        *(v42 + 11) = 2082;
        v46 = v44 + *(v43 + 20);
        v47 = *(v46 + 8);
        v49 = *(v46 + 16);
        v48 = *(v46 + 24);
        v50 = *(v46 + 32);
        v51 = *(v46 + 40);
        sub_1B0A982D8(*v46, v47, v49, v48);
        sub_1B0B63664(v44);
        if (v48 < 0)
        {
        }

        v52 = sub_1B0399D64(v47, v49, &v71);

        *(v42 + 13) = v52;
        *(v42 + 21) = 1024;
        *(v42 + 23) = v68;
        *(v42 + 27) = 2082;

        v53 = v63;
        a1 = v64;
        v54 = sub_1B0E462C8();
        v56 = sub_1B0399D64(v54, v55, &v71);

        *(v42 + 29) = v56;
        *(v42 + 37) = 2048;
        *(v42 + 39) = v38;
        _os_log_impl(&dword_1B0389000, v53, v66, "[%.*hhx-%{public}s] Sync request #%u (%{public}s) completed after %ld seconds.", v42, 0x2Fu);
        v57 = v62;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v57, -1, -1);
        MEMORY[0x1B272C230](v42, -1, -1);

        a2 = v61;
        v7 = v59;
      }

      else
      {
        sub_1B0B63664(v7);

        sub_1B0B63664(v37);
        a1 = v64;
      }
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      return;
    }

    v17 = *(v13 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

unint64_t sub_1B0B634B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = sub_1B0A9D76C(a1, a2);
  if (result)
  {
    v6 = 0xF000000000000007;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = *(v3 + 64);
    v6 = v7 | 2;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a3 = v6;
  return result;
}

unint64_t sub_1B0B63594()
{
  result = qword_1EB6DD498;
  if (!qword_1EB6DD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD498);
  }

  return result;
}

unint64_t sub_1B0B635E8(uint64_t a1)
{
  result = sub_1B0B63610();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B63610()
{
  result = qword_1EB6DD490;
  if (!qword_1EB6DD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD490);
  }

  return result;
}

uint64_t sub_1B0B63664(uint64_t a1)
{
  v2 = type metadata accessor for Task.Logger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B636FC()
{
  result = type metadata accessor for MessagesPendingDownloadPerPass();
  if (v1 <= 0x3F)
  {
    result = sub_1B043B29C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B0B637C4()
{
  result = sub_1B0B63850();
  if (v1 <= 0x3F)
  {
    result = sub_1B043B29C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B0B63850()
{
  result = qword_1EB6DE040;
  if (!qword_1EB6DE040)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB6DE040);
  }

  return result;
}

uint64_t sub_1B0B638C4(uint64_t result)
{
  if (result >= 1)
  {
    v4 = *v1;
    if (*(v1 + 8))
    {
      v5 = v4 - result;
      if (!__OFSUB__(v4, result))
      {
        v6 = v5 > 0;
        if (v5 <= 0)
        {
          v7 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v7 = v4 - result;
        }

        goto LABEL_16;
      }

      __break(1u);
    }

    else
    {
      v3 = *(v4 + 16);
      v8 = v3 - result;
      if (v3 < result)
      {
        result = sub_1B0AA93E0(*v1, 0);
        v6 = 0;
        v7 = MEMORY[0x1E69E7CC0];
LABEL_16:
        *v1 = v7;
        *(v1 + 8) = v6;
        return result;
      }

      v2 = result;
      sub_1B0E46AD8();
      swift_unknownObjectRetain_n();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {
        swift_unknownObjectRelease();
        v9 = MEMORY[0x1E69E7CC0];
      }

      v10 = *(v9 + 16);

      if (v10 == v8)
      {
        v7 = swift_dynamicCastClass();
        result = swift_unknownObjectRelease();
        if (v7)
        {
LABEL_15:
          v6 = 0;
          goto LABEL_16;
        }

        v7 = MEMORY[0x1E69E7CC0];
LABEL_14:
        result = swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    swift_unknownObjectRelease();
    sub_1B0B21B54(v4, v4 + 32, v2, (2 * v3) | 1);
    v7 = v11;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B0B63A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v3 = (a1 + 48);
      v4 = (a2 + 48);
      do
      {
        v6 = *(v3 - 1);
        v5 = *v3;
        v7 = *(v3 - 4);
        v8 = *(v4 - 4);
        v9 = *(v4 - 1);
        v10 = *v4;
        sub_1B09AFB1C(v6, *v3);
        sub_1B09AFB1C(v9, v10);
        v11 = static SearchRequest.__derived_struct_equals(_:_:)(v7, v6, v5, v8, v9, v10);
        sub_1B09AFBA0(v9, v10);
        sub_1B09AFBA0(v6, v5);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v3 += 3;
        v4 += 3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1B0B63AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 16);
        v11[0] = *v3;
        v11[1] = v5;
        v11[2] = *(v3 + 32);
        v12 = *(v3 + 48);
        v6 = *(v4 + 16);
        v13[0] = *v4;
        v7 = *(v4 + 32);
        v13[1] = v6;
        v13[2] = v7;
        v14 = *(v4 + 48);
        sub_1B0B66688(v11, v10);
        sub_1B0B66688(v13, v10);
        v8 = static DownloadRequest.__derived_struct_equals(_:_:)(v11, v13);
        sub_1B0B666E4(v13);
        sub_1B0B666E4(v11);
        if ((v8 & 1) == 0)
        {
          break;
        }

        v4 += 56;
        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL sub_1B0B63BF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[9];
        v18[8] = v3[8];
        v18[9] = v5;
        v18[10] = v3[10];
        v6 = v3[5];
        v18[4] = v3[4];
        v18[5] = v6;
        v7 = v3[7];
        v18[6] = v3[6];
        v18[7] = v7;
        v8 = v3[1];
        v18[0] = *v3;
        v18[1] = v8;
        v9 = v3[3];
        v18[2] = v3[2];
        v18[3] = v9;
        v10 = v4[9];
        v19[8] = v4[8];
        v19[9] = v10;
        v19[10] = v4[10];
        v11 = v4[5];
        v19[4] = v4[4];
        v19[5] = v11;
        v12 = v4[7];
        v19[6] = v4[6];
        v19[7] = v12;
        v13 = v4[1];
        v19[0] = *v4;
        v19[1] = v13;
        v14 = v4[3];
        v19[2] = v4[2];
        v19[3] = v14;
        sub_1B03A35B8(v18, v17);
        sub_1B03A35B8(v19, v17);
        v15 = sub_1B03B5F54(v18, v19);
        sub_1B03A3614(v19);
        sub_1B03A3614(v18);
        if (!v15)
        {
          break;
        }

        v3 += 11;
        v4 += 11;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v15;
}

uint64_t sub_1B0B63D20(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_159:
    result = 0;
    goto LABEL_160;
  }

  if (!v2 || a1 == a2)
  {
    result = 1;
LABEL_160:
    v81 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = 0;
  v4 = a1 + 32;
  v90 = a2 + 32;
  v87 = a1 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_162;
    }

    v5 = v4 + 48 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v10 = *(v5 + 24);
    v9 = *(v5 + 32);
    v11 = *(v5 + 40);
    v12 = v90 + 48 * v3;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v17 = *(v12 + 24);
    v16 = *(v12 + 32);
    v18 = *(v12 + 40);
    v19 = v6 >> 62;
    v20 = v13 >> 62;
    v97 = v14;
    v91 = v18;
    v92 = v11;
    v93 = v16;
    v94 = v9;
    v95 = v15;
    v96 = v8;
    if (v6 >> 62 == 3)
    {
      if (v7)
      {
        v21 = 0;
      }

      else
      {
        v21 = v6 == 0xC000000000000000;
      }

      if (v21 && v13 >> 62 == 3 && !v14 && v13 == 0xC000000000000000)
      {
        sub_1B03B2000(0, 0xC000000000000000);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = 0;
        v25 = 0xC000000000000000;
        goto LABEL_50;
      }

LABEL_30:
      v26 = 0;
      if (v20 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_30;
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_165;
      }

      if (v20 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v19)
    {
      LODWORD(v26) = HIDWORD(v7) - v7;
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_166;
      }

      v26 = v26;
      if (v20 <= 1)
      {
LABEL_28:
        if (v20)
        {
          LODWORD(v30) = HIDWORD(v14) - v14;
          if (__OFSUB__(HIDWORD(v14), v14))
          {
            goto LABEL_163;
          }

          v30 = v30;
        }

        else
        {
          v30 = BYTE6(v13);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v26 = BYTE6(v6);
      if (v20 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    if (v20 != 2)
    {
      if (v26)
      {
        goto LABEL_159;
      }

LABEL_49:
      sub_1B03B2000(v7, v6);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24 = v14;
      v25 = v13;
LABEL_50:
      sub_1B03B2000(v24, v25);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      goto LABEL_142;
    }

    v32 = *(v14 + 16);
    v31 = *(v14 + 24);
    v29 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v29)
    {
      goto LABEL_164;
    }

LABEL_37:
    if (v26 != v30)
    {
      goto LABEL_159;
    }

    if (v26 < 1)
    {
      goto LABEL_49;
    }

    v88 = v6;
    if (v19 <= 1)
    {
      if (!v19)
      {
        __s1[0] = v7;
        LOWORD(__s1[1]) = v6;
        BYTE2(__s1[1]) = BYTE2(v6);
        BYTE3(__s1[1]) = BYTE3(v6);
        BYTE4(__s1[1]) = BYTE4(v6);
        BYTE5(__s1[1]) = BYTE5(v6);
        if (v20)
        {
          if (v20 == 1)
          {
            v33 = v14;
            v89 = (v14 >> 32) - v14;
            if (v14 >> 32 < v14)
            {
              goto LABEL_170;
            }

            sub_1B03B2000(v7, v6);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03B2000(v14, v13);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v34 = sub_1B0E42A98();
            if (!v34)
            {
              goto LABEL_197;
            }

            v35 = v34;
            v36 = sub_1B0E42AC8();
            if (__OFSUB__(v33, v36))
            {
              goto LABEL_175;
            }

            v37 = (v33 - v36 + v35);
            result = sub_1B0E42AB8();
            if (!v37)
            {
              goto LABEL_196;
            }

LABEL_110:
            if (result >= v89)
            {
              v66 = v89;
            }

            else
            {
              v66 = result;
            }

            v61 = memcmp(__s1, v37, v66);
            goto LABEL_114;
          }

          v58 = *(v14 + 16);
          v86 = *(v14 + 24);
          sub_1B03B2000(v7, v6);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v14, v13);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v46 = sub_1B0E42A98();
          if (v46)
          {
            v59 = sub_1B0E42AC8();
            if (__OFSUB__(v58, v59))
            {
              goto LABEL_180;
            }

            v46 += v58 - v59;
          }

          v48 = v86 - v58;
          if (__OFSUB__(v86, v58))
          {
            goto LABEL_173;
          }

          result = sub_1B0E42AB8();
          if (!v46)
          {
            goto LABEL_195;
          }

          goto LABEL_102;
        }

LABEL_70:
        v98 = v14;
        v99 = v13;
        v100 = BYTE2(v13);
        v101 = BYTE3(v13);
        v102 = BYTE4(v13);
        v103 = BYTE5(v13);
        sub_1B03B2000(v7, v6);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B2000(v14, v13);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v49 = __s1;
        v50 = &v98;
        v51 = BYTE6(v13);
        v4 = v87;
        goto LABEL_141;
      }

      if (v7 > v7 >> 32)
      {
        goto LABEL_167;
      }

      sub_1B03B2000(v7, v6);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B2000(v14, v13);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v42 = sub_1B0E42A98();
      if (v42)
      {
        v43 = v42;
        v44 = sub_1B0E42AC8();
        if (__OFSUB__(v7, v44))
        {
          goto LABEL_169;
        }

        v82 = (v7 - v44 + v43);
      }

      else
      {
        v82 = 0;
      }

      sub_1B0E42AB8();
      if (v20 == 2)
      {
        v72 = *(v97 + 16);
        v73 = *(v97 + 24);
        v52 = sub_1B0E42A98();
        if (v52)
        {
          v74 = sub_1B0E42AC8();
          if (__OFSUB__(v72, v74))
          {
            goto LABEL_183;
          }

          v52 += v72 - v74;
        }

        v29 = __OFSUB__(v73, v72);
        v75 = v73 - v72;
        if (v29)
        {
          goto LABEL_179;
        }

        v76 = sub_1B0E42AB8();
        if (v76 >= v75)
        {
          v55 = v75;
        }

        else
        {
          v55 = v76;
        }

        v49 = v82;
        if (!v82)
        {
          goto LABEL_194;
        }

        v4 = v87;
        v6 = v88;
        if (!v52)
        {
          goto LABEL_193;
        }

        goto LABEL_137;
      }

      if (v20 == 1)
      {
        if (v97 >> 32 < v97)
        {
          goto LABEL_178;
        }

        v52 = sub_1B0E42A98();
        if (v52)
        {
          v56 = sub_1B0E42AC8();
          if (__OFSUB__(v97, v56))
          {
            goto LABEL_185;
          }

          v52 += v97 - v56;
        }

        v57 = sub_1B0E42AB8();
        if (v57 >= (v97 >> 32) - v97)
        {
          v55 = (v97 >> 32) - v97;
        }

        else
        {
          v55 = v57;
        }

        v49 = v82;
        if (!v82)
        {
          goto LABEL_192;
        }

        v4 = v87;
        if (!v52)
        {
          goto LABEL_191;
        }

        goto LABEL_137;
      }

      v4 = v87;
      v49 = v82;
      __s1[0] = v97;
      LOWORD(__s1[1]) = v13;
      BYTE2(__s1[1]) = BYTE2(v13);
      BYTE3(__s1[1]) = BYTE3(v13);
      BYTE4(__s1[1]) = BYTE4(v13);
      BYTE5(__s1[1]) = BYTE5(v13);
      if (!v82)
      {
        goto LABEL_190;
      }

      goto LABEL_140;
    }

    if (v19 != 2)
    {
      memset(__s1, 0, 14);
      if (v20)
      {
        if (v20 != 2)
        {
          v62 = v14;
          v89 = (v14 >> 32) - v14;
          if (v14 >> 32 < v14)
          {
            goto LABEL_171;
          }

          sub_1B03B2000(v7, v6);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v14, v13);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v63 = sub_1B0E42A98();
          if (!v63)
          {
            goto LABEL_198;
          }

          v64 = v63;
          v65 = sub_1B0E42AC8();
          if (__OFSUB__(v62, v65))
          {
            goto LABEL_176;
          }

          v37 = (v62 - v65 + v64);
          result = sub_1B0E42AB8();
          if (!v37)
          {
            goto LABEL_199;
          }

          goto LABEL_110;
        }

        v45 = *(v14 + 16);
        v85 = *(v14 + 24);
        sub_1B03B2000(v7, v6);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B2000(v14, v13);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v46 = sub_1B0E42A98();
        if (v46)
        {
          v47 = sub_1B0E42AC8();
          if (__OFSUB__(v45, v47))
          {
            goto LABEL_181;
          }

          v46 += v45 - v47;
        }

        v48 = v85 - v45;
        if (__OFSUB__(v85, v45))
        {
          goto LABEL_172;
        }

        result = sub_1B0E42AB8();
        if (!v46)
        {
          goto LABEL_200;
        }

LABEL_102:
        if (result >= v48)
        {
          v60 = v48;
        }

        else
        {
          v60 = result;
        }

        v61 = memcmp(__s1, v46, v60);
        v6 = v88;
LABEL_114:
        v4 = v87;
        if (v61)
        {
          goto LABEL_157;
        }

        goto LABEL_142;
      }

      goto LABEL_70;
    }

    v83 = *(v7 + 16);
    sub_1B03B2000(v7, v6);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B2000(v14, v13);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v39 = sub_1B0E42A98();
    if (v39)
    {
      v40 = v39;
      v41 = sub_1B0E42AC8();
      if (__OFSUB__(v83, v41))
      {
        goto LABEL_168;
      }

      v84 = (v83 - v41 + v40);
    }

    else
    {
      v84 = 0;
    }

    sub_1B0E42AB8();
    if (v20 == 2)
    {
      v67 = *(v97 + 16);
      v68 = *(v97 + 24);
      v52 = sub_1B0E42A98();
      if (v52)
      {
        v69 = sub_1B0E42AC8();
        if (__OFSUB__(v67, v69))
        {
          goto LABEL_182;
        }

        v52 += v67 - v69;
      }

      v29 = __OFSUB__(v68, v67);
      v70 = v68 - v67;
      if (v29)
      {
        goto LABEL_177;
      }

      v71 = sub_1B0E42AB8();
      if (v71 >= v70)
      {
        v55 = v70;
      }

      else
      {
        v55 = v71;
      }

      v49 = v84;
      if (!v84)
      {
        goto LABEL_189;
      }

      v4 = v87;
      v6 = v88;
      if (!v52)
      {
        goto LABEL_188;
      }

      goto LABEL_137;
    }

    if (v20 == 1)
    {
      if (v97 >> 32 < v97)
      {
        goto LABEL_174;
      }

      v52 = sub_1B0E42A98();
      if (v52)
      {
        v53 = sub_1B0E42AC8();
        if (__OFSUB__(v97, v53))
        {
          goto LABEL_184;
        }

        v52 += v97 - v53;
      }

      v54 = sub_1B0E42AB8();
      if (v54 >= (v97 >> 32) - v97)
      {
        v55 = (v97 >> 32) - v97;
      }

      else
      {
        v55 = v54;
      }

      v49 = v84;
      if (!v84)
      {
        goto LABEL_187;
      }

      v4 = v87;
      if (!v52)
      {
        goto LABEL_186;
      }

LABEL_137:
      if (v49 == v52)
      {
        goto LABEL_142;
      }

      v51 = v55;
      v50 = v52;
      goto LABEL_141;
    }

    v49 = v84;
    v4 = v87;
    __s1[0] = v97;
    LOWORD(__s1[1]) = v13;
    BYTE2(__s1[1]) = BYTE2(v13);
    BYTE3(__s1[1]) = BYTE3(v13);
    BYTE4(__s1[1]) = BYTE4(v13);
    BYTE5(__s1[1]) = BYTE5(v13);
    if (!v84)
    {
      break;
    }

LABEL_140:
    v51 = BYTE6(v13);
    v50 = __s1;
LABEL_141:
    if (memcmp(v49, v50, v51))
    {
      goto LABEL_157;
    }

LABEL_142:
    if (v96 != v95)
    {
LABEL_157:
      v77 = v97;
LABEL_158:
      sub_1B0391D50(v77, v13);

      sub_1B0391D50(v7, v6);

      goto LABEL_159;
    }

    v77 = v97;
    if (v94 != v93)
    {
      goto LABEL_158;
    }

    v78 = *(v10 + 16);
    if (v78 != *(v17 + 16))
    {
      goto LABEL_158;
    }

    if (v78)
    {
      v79 = v10 == v17;
    }

    else
    {
      v79 = 1;
    }

    if (!v79)
    {
      v80 = 32;
      while (v78)
      {
        if (*(v10 + v80) != *(v17 + v80))
        {
          goto LABEL_158;
        }

        ++v80;
        if (!--v78)
        {
          goto LABEL_153;
        }
      }

      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
    }

LABEL_153:
    sub_1B0391D50(v97, v13);

    sub_1B0391D50(v7, v6);

    if (v92 != v91)
    {
      goto LABEL_159;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      goto LABEL_160;
    }
  }

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
  sub_1B0E42AB8();
  __break(1u);
LABEL_198:
  result = sub_1B0E42AB8();
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
  return result;
}

uint64_t sub_1B0B64774(uint64_t a1, uint64_t a2)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F8, &unk_1B0EC4440);
  v11 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v13 = &v43 - v12;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v14 = *(*(SearchResult - 8) + 64);
  MEMORY[0x1EEE9AC00](SearchResult);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v43 - v19);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v46 = (v4 + 48);
  v25 = *(v18 + 72);
  v44 = v10;
  v45 = v25;
  v47 = (&v43 - v19);
  while (1)
  {
    sub_1B0B66A7C(v23, v20, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    sub_1B0B66A7C(v24, v16, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    if (*v20 != *v16)
    {
      sub_1B0B66AE4(v16, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v41 = v20;
LABEL_20:
      sub_1B0B66AE4(v41, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      return 0;
    }

    v26 = *(SearchResult + 20);
    v27 = v20 + v26;
    v28 = v16 + v26;
    sub_1B03D06F8();
    if ((sub_1B0E46E08() & 1) == 0)
    {
      v42 = v16;
LABEL_19:
      sub_1B0B66AE4(v42, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v41 = v47;
      goto LABEL_20;
    }

    v51 = v23;
    v29 = v16;
    MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
    v31 = *(MessagesVMa + 20);
    if ((sub_1B0E46E08() & 1) == 0)
    {
      v42 = v29;
      goto LABEL_19;
    }

    v32 = *(MessagesVMa + 24);
    v33 = *(v49 + 48);
    sub_1B0B66738(&v27[v32], v13);
    v34 = &v28[v32];
    v35 = v52;
    sub_1B0B66738(v34, &v13[v33]);
    v36 = *v46;
    if ((*v46)(v13, 1, v35) != 1)
    {
      break;
    }

    sub_1B0B66AE4(v29, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    v20 = v47;
    sub_1B0B66AE4(v47, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    if (v36(&v13[v33], 1, v52) != 1)
    {
      goto LABEL_22;
    }

    sub_1B0398EFC(v13, &qword_1EB6E3920, &qword_1B0E9B070);
    v16 = v29;
LABEL_5:
    v24 += v45;
    v23 = v51 + v45;
    if (!--v21)
    {
      return 1;
    }
  }

  v37 = v44;
  sub_1B0B66738(v13, v44);
  if (v36(&v13[v33], 1, v52) != 1)
  {
    v38 = v48;
    sub_1B074BA2C(&v13[v33], v48);
    v39 = sub_1B0E46E08();
    sub_1B0398EFC(v38, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v16 = v29;
    sub_1B0B66AE4(v29, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    v20 = v47;
    sub_1B0B66AE4(v47, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    sub_1B0398EFC(v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v13, &qword_1EB6E3920, &qword_1B0E9B070);
    if ((v39 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_1B0B66AE4(v29, type metadata accessor for FetchSearchResultMessages.Requests.Search);
  sub_1B0B66AE4(v47, type metadata accessor for FetchSearchResultMessages.Requests.Search);
  sub_1B0398EFC(v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_22:
  sub_1B0398EFC(v13, &qword_1EB6E41F8, &unk_1B0EC4440);
  return 0;
}

uint64_t sub_1B0B64D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    for (i = (a1 + 40); *(v3 - 2) == *(i - 2); i += 12)
    {
      result = 0;
      if (*(v3 - 1) != *(i - 1) || ((*i ^ *v3) & 1) != 0)
      {
        return result;
      }

      v3 += 12;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0B64DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1B0B66A7C(v14, v11, type metadata accessor for TaskHistory.Running);
        sub_1B0B66A7C(v15, v7, type metadata accessor for TaskHistory.Running);
        v17 = sub_1B0BB1D80(v11, v7);
        sub_1B0B66AE4(v7, type metadata accessor for TaskHistory.Running);
        sub_1B0B66AE4(v11, type metadata accessor for TaskHistory.Running);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B0B64F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A30, &qword_1B0EC7698);
  v7 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v9 = &v41 - v8;
  v10 = type metadata accessor for TaskHistory.Previous(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v41 - v19;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v24 = *(v17 + 72);
  v41 = v18;
  v42 = v24;
  v25 = v47;
  v43 = v10;
  while (1)
  {
    sub_1B0B66A7C(v22, v25, type metadata accessor for TaskHistory.Previous);
    v26 = v48;
    sub_1B0B66A7C(v23, v48, type metadata accessor for TaskHistory.Previous);
    v27 = &v9[*(v46 + 48)];
    sub_1B0B66A7C(v25, v9, type metadata accessor for TaskHistory.Previous);
    sub_1B0B66A7C(v26, v27, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v28 = v45;
    sub_1B0B66A7C(v9, v45, type metadata accessor for TaskHistory.Previous);
    v29 = *v28;
    v30 = *(v28 + 8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B03E1BE8(v29);
      goto LABEL_19;
    }

    v31 = *v27;
    v32 = *(v27 + 8);
    v33 = static Action.__derived_enum_equals(_:_:)(v29, *v27);
    sub_1B03E1BE8(v31);
    sub_1B03E1BE8(v29);
    if ((v33 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1B0B66AE4(v9, type metadata accessor for TaskHistory.Previous);
    v25 = v47;
    if (v30 != v32)
    {
      goto LABEL_20;
    }

LABEL_5:
    sub_1B0B66AE4(v48, type metadata accessor for TaskHistory.Previous);
    sub_1B0B66AE4(v25, type metadata accessor for TaskHistory.Previous);
    v23 += v42;
    v22 += v42;
    if (!--v20)
    {
      return 1;
    }
  }

  v34 = v41;
  sub_1B0B66A7C(v9, v41, type metadata accessor for TaskHistory.Previous);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48);
  v36 = *(v34 + v35);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = *(v27 + v35);
    v38 = v44;
    sub_1B0423B48(v27, v44, type metadata accessor for ClientCommand);
    v39 = static ClientCommand.__derived_enum_equals(_:_:)(v34, v38);
    sub_1B0B66AE4(v38, type metadata accessor for ClientCommand);
    sub_1B0B66AE4(v34, type metadata accessor for ClientCommand);
    if ((v39 & 1) == 0)
    {
LABEL_16:
      sub_1B0B66AE4(v9, type metadata accessor for TaskHistory.Previous);
      v25 = v47;
      goto LABEL_20;
    }

    sub_1B0B66AE4(v9, type metadata accessor for TaskHistory.Previous);
    v25 = v47;
    if (v36 != v37)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  sub_1B0B66AE4(v34, type metadata accessor for ClientCommand);
LABEL_19:
  sub_1B0398EFC(v9, &qword_1EB6E4A30, &qword_1B0EC7698);
LABEL_20:
  sub_1B0B66AE4(v48, type metadata accessor for TaskHistory.Previous);
  sub_1B0B66AE4(v25, type metadata accessor for TaskHistory.Previous);
  return 0;
}

uint64_t sub_1B0B65458@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1B0BCC1A8(MEMORY[0x1E69E7CC0]);
  v9 = v8;
  v11 = v10;
  v17 = &_s18CondStoreResponsesVN;
  v18 = sub_1B0B667A8();
  v12 = swift_allocObject();
  *&v16 = v12;
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 48) = v6;
  *(v12 + 56) = 0;
  *(v12 + 64) = 1;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0450C74(&v16, a1);
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  v13 = type metadata accessor for PendingServerResponses();
  return sub_1B074BA2C(v5, a1 + *(v13 + 24));
}

uint64_t sub_1B0B6557C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1B0BCC1A8(MEMORY[0x1E69E7CC0]);
  v9 = v8;
  v11 = v10;
  v17 = &_s14BasicResponsesVN;
  v18 = sub_1B0B667FC();
  v12 = swift_allocObject();
  *&v16 = v12;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = v6;
  *(v12 + 48) = 1;
  *(v12 + 56) = 1;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0450C74(&v16, a1);
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  v13 = type metadata accessor for PendingServerResponses();
  return sub_1B074BA2C(v5, a1 + *(v13 + 24));
}

uint64_t sub_1B0B656A0(uint64_t result)
{
  v2 = *v1;
  if ((*(v1 + 8) & 1) == 0)
  {
    v3 = *(v2 + 16);
    if (v3 <= 0x294)
    {
      v4 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4418, &qword_1B0EC76A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0EC1E70;
      *(inited + 32) = v4;
      result = sub_1B0AFC818(inited);
      v6 = 0;
      v7 = v2;
LABEL_7:
      *v1 = v7;
      *(v1 + 8) = v6;
      return result;
    }

    result = sub_1B0AA93E0(*v1, 0);
    v2 = v3;
  }

  v7 = v2 + 1;
  if (!__OFADD__(v2, 1))
  {
    v6 = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B6577C()
{
  sub_1B0B66E0C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B657B8()
{
  sub_1B0B66E0C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B657F4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A58, &qword_1B0EC7908);
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v28[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A60, &qword_1B0EC7910);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A68, &qword_1B0EC7918);
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28[-v13];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0B66D10();
  sub_1B0E46D48();
  v17 = *v2;
  v16 = v2[1];
  v19 = v2[2];
  v18 = v2[3];
  v20 = *(v2 + 48);
  if (v20 < 0)
  {
    v24 = v2 + 4;
    v23 = v2[4];
    v33 = v24[1];
    v29 = v20 & 0x7F;
    LOBYTE(v36) = 1;
    sub_1B0B66D64();
    v25 = v30;
    v26 = v35;
    sub_1B0E468B8();
    v36 = v17;
    v37 = v16;
    v38 = v19;
    v39 = v18;
    v40 = v23;
    v41 = v33;
    v42 = v29;
    sub_1B0B66DB8();
    v27 = v32;
    sub_1B0E46958();
    (*(v31 + 8))(v25, v27);
    return (*(v34 + 8))(v14, v26);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_1B0B66E0C();
    v21 = v35;
    sub_1B0E468B8();
    v36 = v17;
    v37 = v16;
    v38 = v19;
    v39 = v18;
    sub_1B0B66E60();
    sub_1B0E46958();
    (*(v33 + 8))(v10, v7);
    return (*(v34 + 8))(v14, v21);
  }
}

uint64_t sub_1B0B65B60()
{
  if (*v0)
  {
    result = 0x726F7453646E6F63;
  }

  else
  {
    result = 0x6369736162;
  }

  *v0;
  return result;
}

uint64_t sub_1B0B65B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369736162 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F7453646E6F63 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0B65C7C()
{
  sub_1B0B66D10();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B65CB8()
{
  sub_1B0B66D10();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B65CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0B65D74()
{
  sub_1B0B66D64();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B65DB0()
{
  sub_1B0B66D64();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B65E04(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B0B66404(v8, v9) & 1;
}

uint64_t sub_1B0B65E9C(uint64_t a1, char a2, uint64_t a3)
{
  sub_1B0E46C28();
  if (a1 != 2)
  {
    sub_1B0E46C68();
    FlagsUpdate.hash(into:)(v7, a1 & 0xFFFFFFFF01010101, a2);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B0E46C68();
    return sub_1B0E46CB8();
  }

  sub_1B0E46C68();
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B0E46C68();
  sub_1B0B0AC94(v7, a3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B65F60(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[2];
  if (*v1 != 2)
  {
    v6 = *(v1 + 8);
    sub_1B0E46C68();
    FlagsUpdate.hash(into:)(a1, v3 & 0xFFFFFFFF01010101, v6);
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  if (!v4)
  {
    return sub_1B0E46C68();
  }

LABEL_3:
  sub_1B0E46C68();

  return sub_1B0B0AC94(a1, v4);
}

uint64_t sub_1B0B66024()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  sub_1B0E46C28();
  if (v1 != 2)
  {
    sub_1B0E46C68();
    FlagsUpdate.hash(into:)(v5, v1 & 0xFFFFFFFF01010101, v2);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B0E46C68();
    return sub_1B0E46CB8();
  }

  sub_1B0E46C68();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B0E46C68();
  sub_1B0B0AC94(v5, v3);
  return sub_1B0E46CB8();
}

uint64_t *sub_1B0B660F4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(result + 8) == 1)
  {
    v5 = v3 == 0;
    if (v3)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (!v5)
    {
      v4 = 0;
    }

    if (v2)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  else if ((v3 | v2) < 0)
  {
    __break(1u);
  }

  else
  {
    return (v3 == v2);
  }

  return result;
}

uint64_t sub_1B0B66148(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *(v3 + 16);
      if (v7 == v9)
      {
        break;
      }

      if (v7 >= v9)
      {
        __break(1u);
        goto LABEL_32;
      }

      v10 = *(a1 + v6 + 40);
      v11 = *(a1 + v6 + 48);
      v12 = *(a1 + v6 + 56);
      v13 = *(v3 + v6 + 32);
      v14 = *(v3 + v6 + 40);
      v15 = *(v3 + v6 + 48);
      v16 = *(v3 + v6 + 56);
      LODWORD(v26) = *(a1 + v6 + 32);
      *(&v26 + 1) = v10;
      LOBYTE(v27) = v11;
      *(&v27 + 1) = v12;
      LODWORD(v28) = v13;
      *(&v28 + 1) = v14;
      LOBYTE(v29) = v15;
      *(&v29 + 1) = v16;
      if (v13 != v26)
      {
        goto LABEL_23;
      }

      if (v10 == 2)
      {
        if (v14 != 2)
        {
          goto LABEL_23;
        }
      }

      else if (v14 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(v10 & 0xFFFFFFFF01010101, v11, v14 & 0xFFFFFFFF01010101, v15) & 1) == 0)
      {
LABEL_23:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_24:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_25:
        sub_1B0398EFC(&v26, &qword_1EB6E4A50, &qword_1B0EC77A0);
        break;
      }

      if (v12)
      {
        if (!v16)
        {
          goto LABEL_24;
        }

        swift_bridgeObjectRetain_n();
        v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v18 = sub_1B0AFDF14(v17, v16);

        if ((v18 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v16)
      {
        goto LABEL_24;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v8;
      if ((result & 1) == 0)
      {
        result = sub_1B0B09F84(0, *(v8 + 16) + 1, 1);
        v8 = v30;
      }

      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1B0B09F84((v19 > 1), v20 + 1, 1);
        v8 = v30;
      }

      ++v7;
      *(v8 + 16) = v20 + 1;
      v21 = (v8 + (v20 << 6));
      v22 = v26;
      v23 = v27;
      v24 = v29;
      v21[4] = v28;
      v21[5] = v24;
      v21[2] = v22;
      v21[3] = v23;
      v6 += 32;
    }

    while (v4 != v7);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v8 + 16);

  if (v25)
  {
    if (*(v3 + 16) < v25)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      return sub_1B0BACF58(0, v25);
    }
  }

  return result;
}

uint64_t sub_1B0B663A8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v4 == v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    return v7 & 1;
  }

  else if (v6)
  {
    return 0;
  }

  else
  {
    return sub_1B03D2D0C(v4, v5) & 1;
  }
}

uint64_t sub_1B0B66404(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v17 = *a2;
  v18 = *(a2 + 2);
  if (v4 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v17 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(v4 & 0xFFFFFFFF01010101, v5, v17 & 0xFFFFFFFF01010101, BYTE8(v17)) & 1) == 0)
  {
    goto LABEL_32;
  }

  v7 = v18;
  if (v6)
  {
    if (!v18)
    {
      sub_1B0B66A14(&v17, v16);
      goto LABEL_32;
    }

    sub_1B0B66A14(&v17, v16);
    v8 = sub_1B0AFDF14(v6, v7);
    result = sub_1B0B66A4C(&v17);
    if ((v8 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v18)
    {
      goto LABEL_32;
    }

    result = sub_1B0B66A14(&v17, v16);
  }

  v10 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*(a2 + 6) != *(a1 + 6))
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_32;
    }
  }

  v11 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*(a2 + 8) != *(a1 + 8))
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_32;
    }
  }

  v12 = *(a2 + 48);
  if (a1[6])
  {
    if ((a2[3] & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_31:
    v15 = static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(*(a1 + 14), a1[8], a1[9], *(a2 + 14), *(a2 + 8), *(a2 + 9));
    return v15 & 1;
  }

  if (a2[3])
  {
LABEL_32:
    v15 = 0;
    return v15 & 1;
  }

  v13 = a1[5];
  v14 = *(a2 + 5);
  if (((v14 | v13) & 0x8000000000000000) == 0)
  {
    if (v14 == v13)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

BOOL sub_1B0B6658C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (a4 == 2)
    {
      return 0;
    }

    v7 = a6;
    v8 = static FlagsUpdate.__derived_struct_equals(_:_:)(a1 & 0xFFFFFFFF01010101, a2, a4 & 0xFFFFFFFF01010101, a5);
    a6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    v9 = a6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = sub_1B0AFDF14(a3, v9);

    return (v10 & 1) != 0;
  }

  return !a6;
}

uint64_t sub_1B0B66738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0B667A8()
{
  result = qword_1EB6DD818;
  if (!qword_1EB6DD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD818);
  }

  return result;
}

unint64_t sub_1B0B667FC()
{
  result = qword_1EB6E4A40;
  if (!qword_1EB6E4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A40);
  }

  return result;
}

uint64_t sub_1B0B66850(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0B66898(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_1B0B668FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1B0B66958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1B0B669C0()
{
  result = qword_1EB6E4A48;
  if (!qword_1EB6E4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A48);
  }

  return result;
}

uint64_t sub_1B0B66A7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B66AE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0B66B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1B0B66BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0B66C20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 49))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 48) & 0x7E | (*(a1 + 48) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0B66C70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_1B0B66D10()
{
  result = qword_1EB6DD810;
  if (!qword_1EB6DD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD810);
  }

  return result;
}

unint64_t sub_1B0B66D64()
{
  result = qword_1EB6DD7E8;
  if (!qword_1EB6DD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7E8);
  }

  return result;
}

unint64_t sub_1B0B66DB8()
{
  result = qword_1EB6DD828;
  if (!qword_1EB6DD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD828);
  }

  return result;
}

unint64_t sub_1B0B66E0C()
{
  result = qword_1EB6E4A70;
  if (!qword_1EB6E4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A70);
  }

  return result;
}

unint64_t sub_1B0B66E60()
{
  result = qword_1EB6E4A78;
  if (!qword_1EB6E4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A78);
  }

  return result;
}

unint64_t sub_1B0B66EE8()
{
  result = qword_1EB6E4A80;
  if (!qword_1EB6E4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A80);
  }

  return result;
}

unint64_t sub_1B0B66F40()
{
  result = qword_1EB6E4A88;
  if (!qword_1EB6E4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A88);
  }

  return result;
}

unint64_t sub_1B0B66F98()
{
  result = qword_1EB6E4A90;
  if (!qword_1EB6E4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A90);
  }

  return result;
}

unint64_t sub_1B0B66FF0()
{
  result = qword_1EB6DD7F0;
  if (!qword_1EB6DD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7F0);
  }

  return result;
}

unint64_t sub_1B0B67048()
{
  result = qword_1EB6DD7F8;
  if (!qword_1EB6DD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7F8);
  }

  return result;
}

unint64_t sub_1B0B670A0()
{
  result = qword_1EB6DD7D8;
  if (!qword_1EB6DD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7D8);
  }

  return result;
}

unint64_t sub_1B0B670F8()
{
  result = qword_1EB6DD7E0;
  if (!qword_1EB6DD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7E0);
  }

  return result;
}

unint64_t sub_1B0B67150()
{
  result = qword_1EB6DD800;
  if (!qword_1EB6DD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD800);
  }

  return result;
}

unint64_t sub_1B0B671A8()
{
  result = qword_1EB6DD808;
  if (!qword_1EB6DD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD808);
  }

  return result;
}

uint64_t sub_1B0B67204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1B0B6724C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B672A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((sub_1B0B66400(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B03D2E18(v2, v6) & 1) == 0)
  {
    return 0;
  }

  result = sub_1B03D2F14(v3, v7);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v4)
    {
      if (v9)
      {
        return v8 != 0;
      }
    }

    else if (v9)
    {
      return v8 == 0;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

  if (((v8 | v4) & 0x8000000000000000) == 0)
  {
    return v8 == v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B673E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  return v1;
}

uint64_t sub_1B0B67434()
{
  v1 = sub_1B0BCC1A8(MEMORY[0x1E69E7CC0]);
  v3 = v2;
  v5 = v4;
  v6 = *v0;

  v7 = v0[1];

  v8 = v0[2];

  *v0 = v1;
  v0[1] = v3;
  v0[2] = v5;
  return result;
}

uint64_t sub_1B0B67498()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

double sub_1B0B674B4@<D0>(uint64_t a1@<X8>)
{
  sub_1B0B684E0(*(v1 + 8), *(v1 + 24), v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

unint64_t sub_1B0B67508(uint64_t a1)
{
  result = sub_1B0B67530();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B67530()
{
  result = qword_1EB6E4A98;
  if (!qword_1EB6E4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A98);
  }

  return result;
}

uint64_t sub_1B0B67584(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AA0, &qword_1B0EC7D60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0B68824();
  sub_1B0E46D48();
  v16 = 0;
  sub_1B0E468C8();
  if (!v5)
  {
    v15 = 1;
    sub_1B0E468C8();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1B0B67718()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x577365676E616863;
  }

  *v0;
  return result;
}

uint64_t sub_1B0B67764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x577365676E616863 && a2 == 0xEE00444955687469;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B590 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0B67850()
{
  sub_1B0B68824();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B6788C()
{
  sub_1B0B68824();

  return sub_1B0E46F38();
}

void sub_1B0B678E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v89 = a3;
  v87 = a1;
  v88 = a2;
  v86 = _s12LocalMailboxV6LoggerVMa();
  v9 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v84 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v84 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v84 - v30;
  v85 = a5;
  if ((a5 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) != 0)
    {
      v62 = v32;
      v63 = v31;
      sub_1B0B6874C(a6, v31, _s12LocalMailboxV6LoggerVMa);
      sub_1B0B6874C(a6, v12, _s12LocalMailboxV6LoggerVMa);
      sub_1B0B6874C(a6, v62, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v64 = sub_1B0E43988();
      v65 = sub_1B0E458E8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v93 = v90;
        *v66 = 68158979;
        *(v66 + 4) = 2;
        *(v66 + 8) = 256;
        v67 = v86;
        v68 = v12[*(v86 + 20)];
        sub_1B0B687B4(v12, _s12LocalMailboxV6LoggerVMa);
        *(v66 + 10) = v68;
        *(v66 + 11) = 1040;
        *(v66 + 13) = 2;
        *(v66 + 17) = 512;
        v69 = *(v62 + *(v67 + 20) + 2);
        sub_1B0B687B4(v62, _s12LocalMailboxV6LoggerVMa);
        *(v66 + 19) = v69;
        *(v66 + 21) = 2160;
        *(v66 + 23) = 0x786F626C69616DLL;
        *(v66 + 31) = 2085;
        v70 = v63 + *(v67 + 20);
        v71 = *(v70 + 8);
        v72 = *(v70 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B687B4(v63, _s12LocalMailboxV6LoggerVMa);
        v91 = v71;
        v92 = v72;
        v73 = sub_1B0E44BA8();
        v75 = sub_1B0399D64(v73, v74, &v93);

        *(v66 + 33) = v75;
        _os_log_impl(&dword_1B0389000, v64, v65, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Flag/label change without UID and without sequence number.", v66, 0x29u);
        v76 = v90;
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x1B272C230](v76, -1, -1);
        MEMORY[0x1B272C230](v66, -1, -1);
      }

      else
      {
        sub_1B0B687B4(v62, _s12LocalMailboxV6LoggerVMa);
        sub_1B0B687B4(v12, _s12LocalMailboxV6LoggerVMa);

        sub_1B0B687B4(v63, _s12LocalMailboxV6LoggerVMa);
      }
    }

    else
    {
      v49 = a4;
      sub_1B0B6874C(a6, v22, _s12LocalMailboxV6LoggerVMa);
      sub_1B0B6874C(a6, v19, _s12LocalMailboxV6LoggerVMa);
      sub_1B0B6874C(a6, v16, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v50 = sub_1B0E43988();
      v51 = sub_1B0E458D8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v93 = v84;
        *v52 = 68159235;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v53 = v86;
        v54 = v19[*(v86 + 20)];
        v85 = v49;
        sub_1B0B687B4(v19, _s12LocalMailboxV6LoggerVMa);
        *(v52 + 10) = v54;
        *(v52 + 11) = 1040;
        *(v52 + 13) = 2;
        *(v52 + 17) = 512;
        v55 = *&v16[*(v53 + 20) + 2];
        sub_1B0B687B4(v16, _s12LocalMailboxV6LoggerVMa);
        *(v52 + 19) = v55;
        *(v52 + 21) = 2160;
        *(v52 + 23) = 0x786F626C69616DLL;
        *(v52 + 31) = 2085;
        v56 = &v22[*(v53 + 20)];
        v57 = *(v56 + 1);
        v58 = *(v56 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B687B4(v22, _s12LocalMailboxV6LoggerVMa);
        v91 = v57;
        v92 = v58;
        v59 = sub_1B0E44BA8();
        v49 = sub_1B0399D64(v59, v60, &v93);

        *(v52 + 33) = v49;
        LODWORD(v49) = v85;
        *(v52 + 41) = 1024;
        *(v52 + 43) = v49;
        _os_log_impl(&dword_1B0389000, v50, v51, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Inserting flag/label change without UID. Sequence number %u.", v52, 0x2Fu);
        v61 = v84;
        __swift_destroy_boxed_opaque_existential_0(v84);
        MEMORY[0x1B272C230](v61, -1, -1);
        MEMORY[0x1B272C230](v52, -1, -1);
      }

      else
      {
        sub_1B0B687B4(v16, _s12LocalMailboxV6LoggerVMa);
        sub_1B0B687B4(v19, _s12LocalMailboxV6LoggerVMa);

        sub_1B0B687B4(v22, _s12LocalMailboxV6LoggerVMa);
      }

      v78 = v89;
      v77 = v90;
      v79 = v90[3];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_1B0AFF688(0, *(v79 + 2) + 1, 1, v79);
      }

      v81 = *(v79 + 2);
      v80 = *(v79 + 3);
      if (v81 >= v80 >> 1)
      {
        v79 = sub_1B0AFF688((v80 > 1), v81 + 1, 1, v79);
      }

      *(v79 + 2) = v81 + 1;
      v82 = &v79[32 * v81];
      *(v82 + 8) = v49;
      v83 = v88;
      *(v82 + 5) = v87;
      v82[48] = v83;
      *(v82 + 7) = v78;
      v77[3] = v79;
    }
  }

  else
  {
    sub_1B0B6874C(a6, &v84 - v30, _s12LocalMailboxV6LoggerVMa);
    sub_1B0B6874C(a6, v28, _s12LocalMailboxV6LoggerVMa);
    sub_1B0B6874C(a6, v25, _s12LocalMailboxV6LoggerVMa);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v34 = sub_1B0E43988();
    v35 = sub_1B0E458D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v93 = v84;
      *v36 = 68159235;
      *(v36 + 4) = 2;
      *(v36 + 8) = 256;
      v37 = v86;
      v38 = v28[*(v86 + 20)];
      sub_1B0B687B4(v28, _s12LocalMailboxV6LoggerVMa);
      *(v36 + 10) = v38;
      *(v36 + 11) = 1040;
      *(v36 + 13) = 2;
      *(v36 + 17) = 512;
      v39 = *&v25[*(v37 + 20) + 2];
      sub_1B0B687B4(v25, _s12LocalMailboxV6LoggerVMa);
      *(v36 + 19) = v39;
      *(v36 + 21) = 2160;
      *(v36 + 23) = 0x786F626C69616DLL;
      *(v36 + 31) = 2085;
      v40 = &v33[*(v37 + 20)];
      v41 = *(v40 + 1);
      v42 = *(v40 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B687B4(v33, _s12LocalMailboxV6LoggerVMa);
      v91 = v41;
      v92 = v42;
      v43 = sub_1B0E44BA8();
      v45 = sub_1B0399D64(v43, v44, &v93);

      *(v36 + 33) = v45;
      *(v36 + 41) = 1024;
      v46 = v85;
      *(v36 + 43) = v85;
      _os_log_impl(&dword_1B0389000, v34, v35, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Inserting flag/label change for UID %u.", v36, 0x2Fu);
      v47 = v84;
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x1B272C230](v47, -1, -1);
      MEMORY[0x1B272C230](v36, -1, -1);

      v48 = v89;
    }

    else
    {
      sub_1B0B687B4(v25, _s12LocalMailboxV6LoggerVMa);
      sub_1B0B687B4(v28, _s12LocalMailboxV6LoggerVMa);

      sub_1B0B687B4(v33, _s12LocalMailboxV6LoggerVMa);
      v48 = v89;
      v46 = v85;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BC8FC4(v87, v88, v48, v46);
  }
}

void sub_1B0B6820C(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  sub_1B0B6874C(a1, v21 - v7, type metadata accessor for MailboxTaskLogger);
  sub_1B0B6874C(a1, v5, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v9 = sub_1B0E43988();
  v10 = sub_1B0E458E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 68159235;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v13 = &v5[*(v2 + 20)];
    *(v11 + 10) = *v13;
    *(v11 + 11) = 2082;
    v14 = &v8[*(v2 + 20)];
    *(v11 + 13) = sub_1B0399D64(*(v14 + 1), *(v14 + 2), &v23);
    *(v11 + 21) = 1040;
    *(v11 + 23) = 2;
    *(v11 + 27) = 512;
    v15 = *(v13 + 12);
    sub_1B0B687B4(v5, type metadata accessor for MailboxTaskLogger);
    *(v11 + 29) = v15;
    *(v11 + 31) = 2160;
    *(v11 + 33) = 0x786F626C69616DLL;
    *(v11 + 41) = 2085;
    v16 = *(v14 + 4);
    v17 = *(v14 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B687B4(v8, type metadata accessor for MailboxTaskLogger);
    v21[1] = v16;
    v22 = v17;
    v18 = sub_1B0E44BA8();
    v20 = sub_1B0399D64(v18, v19, &v23);

    *(v11 + 43) = v20;
    _os_log_impl(&dword_1B0389000, v9, v10, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Attempting to store HIGHESTMODSEQ, but PendingServerResponses does not support CONDSTORE.", v11, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v12, -1, -1);
    MEMORY[0x1B272C230](v11, -1, -1);
  }

  else
  {
    sub_1B0B687B4(v5, type metadata accessor for MailboxTaskLogger);

    sub_1B0B687B4(v8, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1B0B684E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (a1 + 32);
    do
    {
      v21 = *v20++;
      v34 = v21;
      MessageIdentifierSet.insert(_:)(v35, &v34, v12);
      --v19;
    }

    while (v19);
  }

  sub_1B03C60A4(v15, v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v32 = sub_1B0B963BC();
  v23 = v22;
  sub_1B0398EFC(v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0E46EE8();
  v24 = *(v33 + 16);
  if (v24)
  {
    v25 = (v33 + 32);
    do
    {
      v26 = *v25;
      v25 += 8;
      v34 = v26;
      MessageIdentifierSet.insert(_:)(v35, &v34, v5);
      --v24;
    }

    while (v24);
  }

  sub_1B03C60A4(v8, v11, &qword_1EB6E4030, &qword_1B0EC2B00);
  v27 = sub_1B0B969A8();
  v29 = v28;
  result = sub_1B0398EFC(v11, &qword_1EB6E4030, &qword_1B0EC2B00);
  *a3 = v32;
  *(a3 + 8) = v23;
  *(a3 + 16) = v27;
  *(a3 + 24) = v29;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return result;
}

uint64_t sub_1B0B6874C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B687B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B0B68824()
{
  result = qword_1EB6E4AA8;
  if (!qword_1EB6E4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4AA8);
  }

  return result;
}

unint64_t sub_1B0B6888C()
{
  result = qword_1EB6E4AB0;
  if (!qword_1EB6E4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4AB0);
  }

  return result;
}

unint64_t sub_1B0B688E4()
{
  result = qword_1EB6E4AB8;
  if (!qword_1EB6E4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4AB8);
  }

  return result;
}

unint64_t sub_1B0B6893C()
{
  result = qword_1EB6E4AC0;
  if (!qword_1EB6E4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4AC0);
  }

  return result;
}

uint64_t sub_1B0B68990(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  result = static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16));
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (((v3 | v2) & 0x8000000000000000) == 0)
  {
    return v3 == v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B689F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v53 = v2;
  v18 = v2[2];
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 32);
    do
    {
      v21 = *v20++;
      v55 = v21;
      MessageIdentifierSet.insert(_:)(&v54, &v55, v11);
      --v19;
    }

    while (v19);
  }

  sub_1B03C60A4(v14, v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v22 = sub_1B0B963BC();
  v51 = v23;
  v52 = v22;
  sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v24 = v53;
  v25 = v53[4];
  sub_1B0E46EE8();
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = (v25 + 32);
    do
    {
      v28 = *v27;
      v27 += 8;
      v55 = v28;
      MessageIdentifierSet.insert(_:)(&v54, &v55, v4);
      --v26;
    }

    while (v26);
  }

  sub_1B03C60A4(v7, v10, &qword_1EB6E4030, &qword_1B0EC2B00);
  v29 = sub_1B0B969A8();
  v31 = v30;
  result = sub_1B0398EFC(v10, &qword_1EB6E4030, &qword_1B0EC2B00);
  v33 = *v24;
  v34 = *(*v24 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v49 = v31;
    v50 = v29;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A5A4(0, v34, 0);
    v35 = v54;
    v36 = (v33 + 56);
    do
    {
      v37 = *(v36 - 6);
      v38 = *(v36 - 2);
      v39 = *(v36 - 1);
      v40 = *v36;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v41 = sub_1B0B6A03C(v38);

      v54 = v35;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        result = sub_1B0B0A5A4((v42 > 1), v43 + 1, 1);
        v35 = v54;
      }

      v36 += 4;
      *(v35 + 16) = v43 + 1;
      v44 = v35 + 16 * v43;
      *(v44 + 32) = v41;
      *(v44 + 40) = v40;
      --v34;
    }

    while (v34);
    v24 = v53;
    v31 = v49;
    v29 = v50;
  }

  v45 = v24[5];
  v46 = *(v24 + 48);
  if (v46)
  {
    v45 = 0;
  }

  v47 = v51;
  v48 = v52;
  *a1 = v35;
  *(a1 + 8) = v48;
  *(a1 + 16) = v47;
  *(a1 + 24) = v29;
  *(a1 + 32) = v31;
  *(a1 + 40) = v45;
  *(a1 + 48) = v46 | 0x80;
  return result;
}

void sub_1B0B68DA4(uint64_t a1, uint64_t a2)
{
  v5 = _s12LocalMailboxV6LoggerVMa();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v76 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - v19;
  MEMORY[0x1EEE9AC00](v21);
  if ((*(a1 + 36) & 1) == 0)
  {
    v77 = v22;
    v78 = &v76 - v23;
    v39 = *(a1 + 32);
    v40 = *a1;
    v41 = *(a1 + 8);
    v42 = *(a1 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v43 = v2;
    sub_1B0BC8FC4(v40, v41, v42, v39);
    if (*(a1 + 48))
    {
      v44 = v78;
      sub_1B0B6A28C(a2, v78);
      sub_1B0B6A28C(a2, v20);
      sub_1B0B6A28C(a2, v17);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v25 = sub_1B0E43988();
      v45 = sub_1B0E458F8();
      if (os_log_type_enabled(v25, v45))
      {
        v27 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v81 = v46;
        *v27 = 68158979;
        *(v27 + 4) = 2;
        *(v27 + 8) = 256;
        v47 = v77;
        v48 = v20[*(v77 + 20)];
        sub_1B0B6A2F0(v20);
        *(v27 + 10) = v48;
        *(v27 + 11) = 1040;
        *(v27 + 13) = 2;
        *(v27 + 17) = 512;
        v49 = *&v17[*(v47 + 20) + 2];
        sub_1B0B6A2F0(v17);
        *(v27 + 19) = v49;
        *(v27 + 21) = 2160;
        *(v27 + 23) = 0x786F626C69616DLL;
        *(v27 + 31) = 2085;
        v50 = v44 + *(v47 + 20);
        v51 = *(v50 + 8);
        v52 = *(v50 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B6A2F0(v44);
        v79 = v51;
        v80 = v52;
        v53 = sub_1B0E44BA8();
        v55 = sub_1B0399D64(v53, v54, &v81);

        *(v27 + 33) = v55;
        _os_log_impl(&dword_1B0389000, v25, v45, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Mailbox supports CONDSTORE, but flag change has no MODSEQ.", v27, 0x29u);
        __swift_destroy_boxed_opaque_existential_0(v46);
        v38 = v46;
        goto LABEL_8;
      }

      sub_1B0B6A2F0(v17);
      sub_1B0B6A2F0(v20);

      v75 = v44;
      goto LABEL_30;
    }

    v65 = *(a1 + 40);
    v66 = *(a1 + 56);
    v68 = *(a1 + 64);
    v67 = *(a1 + 72);
    v69 = *v43;
    v70 = *(*v43 + 2);
    if (!v70 || (static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(v66, v68, v67, *&v69[32 * v70], *&v69[32 * v70 + 8], *&v69[32 * v70 + 16]) & 1) == 0)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_1B0AFF794(0, *(v69 + 2) + 1, 1, v69);
      }

      v73 = *(v69 + 2);
      v72 = *(v69 + 3);
      if (v73 >= v72 >> 1)
      {
        v69 = sub_1B0AFF794((v72 > 1), v73 + 1, 1, v69);
      }

      *(v69 + 2) = v73 + 1;
      v74 = &v69[32 * v73];
      *(v74 + 8) = v66;
      *(v74 + 5) = v68;
      *(v74 + 6) = v67;
      *(v74 + 7) = v65;
      *v43 = v69;
      return;
    }

    v71 = *(v69 + 2);
    if (v71)
    {
      if (v65 <= *&v69[32 * v71 + 24])
      {
        v67 = *&v69[32 * v71 + 24];
      }

      else
      {
        v67 = v65;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    v69 = sub_1B0B8C978(v69);
LABEL_21:
    if (v71 > *(v69 + 2))
    {
      __break(1u);
    }

    else
    {
      *&v69[32 * v71 + 24] = v67;
      *v43 = v69;
    }

    return;
  }

  if (*(a1 + 28))
  {
    v24 = v22;
    sub_1B0B6A28C(a2, v14);
    sub_1B0B6A28C(a2, v11);
    sub_1B0B6A28C(a2, v8);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v25 = sub_1B0E43988();
    v26 = sub_1B0E458E8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v81 = v28;
      *v27 = 68158979;
      v29 = v24;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v30 = v11[*(v24 + 20)];
      sub_1B0B6A2F0(v11);
      *(v27 + 10) = v30;
      *(v27 + 11) = 1040;
      *(v27 + 13) = 2;
      *(v27 + 17) = 512;
      v31 = *&v8[*(v24 + 20) + 2];
      sub_1B0B6A2F0(v8);
      *(v27 + 19) = v31;
      *(v27 + 21) = 2160;
      *(v27 + 23) = 0x786F626C69616DLL;
      *(v27 + 31) = 2085;
      v32 = &v14[*(v29 + 20)];
      v33 = *(v32 + 1);
      v34 = *(v32 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B6A2F0(v14);
      v79 = v33;
      v80 = v34;
      v35 = sub_1B0E44BA8();
      v37 = sub_1B0399D64(v35, v36, &v81);

      *(v27 + 33) = v37;
      _os_log_impl(&dword_1B0389000, v25, v26, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Flag change has no UID and no sequence number.", v27, 0x29u);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v38 = v28;
LABEL_8:
      MEMORY[0x1B272C230](v38, -1, -1);
      MEMORY[0x1B272C230](v27, -1, -1);

      return;
    }

    sub_1B0B6A2F0(v8);
    sub_1B0B6A2F0(v11);

    v75 = v14;
LABEL_30:
    sub_1B0B6A2F0(v75);
    return;
  }

  v56 = *(a1 + 24);
  v57 = *a1;
  v58 = *(a1 + 8);
  v59 = *(a1 + 16);
  v60 = v2;
  v61 = v2[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v61 = sub_1B0AFF688(0, *(v61 + 2) + 1, 1, v61);
  }

  v63 = *(v61 + 2);
  v62 = *(v61 + 3);
  if (v63 >= v62 >> 1)
  {
    v61 = sub_1B0AFF688((v62 > 1), v63 + 1, 1, v61);
  }

  *(v61 + 2) = v63 + 1;
  v64 = &v61[32 * v63];
  *(v64 + 8) = v56;
  *(v64 + 5) = v57;
  v64[48] = v58;
  *(v64 + 7) = v59;
  v60[4] = v61;
}

uint64_t sub_1B0B69484()
{
  v1 = sub_1B0BCC1A8(MEMORY[0x1E69E7CC0]);
  v3 = v2;
  v5 = v4;
  v6 = v0[1];

  v7 = v0[2];

  v8 = v0[3];

  v0[1] = v1;
  v0[2] = v3;
  v0[3] = v5;
  return result;
}

uint64_t sub_1B0B694E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 16);
  if (!v5)
  {
LABEL_15:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    LODWORD(v18) = 1;
    v22 = v26;
    goto LABEL_16;
  }

  v7 = result;
  v8 = 0;
  v9 = v4 + 6;
  while (1)
  {
    if (v8 >= v4[2])
    {
      __break(1u);
      goto LABEL_28;
    }

    v11 = v4;
    v12 = *(v9 - 4);
    v13 = *(v9 - 1);
    v14 = *v9;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v12) = ConnectionCommandIDSet.isDisjoint(with:)(v7, a2, a3, v12, v13);

    if ((v12 & 1) == 0)
    {
      break;
    }

    ++v8;
    v9 += 4;
    v4 = v11;
    if (v5 == v8)
    {
      v8 = v5;
      goto LABEL_8;
    }
  }

  v4 = v11;
LABEL_8:
  if (v4[2] < v8)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  v27 = MEMORY[0x1E69E7CC0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B0A2C4(0, v8, 0);
  v15 = v27;
  v16 = *(v27 + 16);
  v17 = v4 + 7;
  v18 = v8;
  do
  {
    v20 = *v17;
    v17 += 4;
    v19 = v20;
    v21 = *(v27 + 24);
    if (v16 >= v21 >> 1)
    {
      sub_1B0B0A2C4((v21 > 1), v16 + 1, 1);
    }

    *(v27 + 16) = v16 + 1;
    *(v27 + 8 * v16++ + 32) = v19;
    --v18;
  }

  while (v18);
  v22 = v26;
  v4 = v11;
LABEL_16:
  v23 = sub_1B0B203CC(v15);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
    if ((*(v22 + 48) & 1) == 0 && v23 <= *(v22 + 40))
    {
      v23 = *(v22 + 40);
    }

    *(v22 + 40) = v23;
    *(v22 + 48) = 0;
  }

  if (v18)
  {
LABEL_24:
  }

  else
  {
    if (v4[2] >= v8)
    {
      sub_1B0BAD404(0, v8);
      goto LABEL_24;
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B69704(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v4 = static ConnectionCommandIDSet.empty.getter();
    v6 = v5;
    v8 = v7;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF794(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
    }

    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_1B0AFF794((v9 > 1), v10 + 1, 1, v3);
      v3 = result;
    }

    *(v3 + 16) = v10 + 1;
    v11 = v3 + 32 * v10;
    *(v11 + 32) = v4;
    *(v11 + 40) = v6;
    *(v11 + 48) = v8;
    *(v11 + 56) = v2;
    *v1 = v3;
  }

  else
  {
    *(v1 + 40) = result;
    *(v1 + 48) = 0;
  }

  return result;
}

double sub_1B0B697E8@<D0>(uint64_t a1@<X8>)
{
  sub_1B0B689F0(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1B0B69834(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AD8, &unk_1B0EC8038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0B6A530();
  sub_1B0E46D48();
  v13 = a2;
  v12[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0B6A584();
  sub_1B0E46958();
  if (!v2)
  {
    v12[14] = 1;
    sub_1B0E46998();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0B699E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AC8, &qword_1B0EC8028);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0B6A404();
  sub_1B0E46D48();
  v19 = *v3;
  v18[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AD0, &qword_1B0EC8030);
  sub_1B0B6A458();
  sub_1B0E46958();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v3[1];
  v12 = v3[2];
  v18[6] = 1;
  sub_1B0E468C8();
  v13 = v3[3];
  v14 = v3[4];
  v18[5] = 2;
  sub_1B0E468C8();
  v16 = v3[5];
  v17 = *(v3 + 48);
  v18[4] = 3;
  sub_1B0E46918();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B0B69BD8()
{
  if (*v0)
  {
    result = 0x65636E6575716573;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1B0B69C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001B0F2B5D0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xED000065756C6156)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B0E46A78();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1B0B69D14()
{
  sub_1B0B6A530();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B69D50()
{
  sub_1B0B6A530();

  return sub_1B0E46F38();
}

unint64_t sub_1B0B69DA8()
{
  v1 = 0x65636E6575716573;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x577365676E616863;
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

uint64_t sub_1B0B69E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0B6A830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0B69E68()
{
  sub_1B0B6A404();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B69EA4()
{
  sub_1B0B6A404();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B69EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if ((sub_1B03D2D68(a1, a7) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B0B66400(a2, a8) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B03D2E18(a3, a9) & 1) == 0)
  {
    return 0;
  }

  result = sub_1B03D2F14(a4, a10);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (a6)
  {
    return (a12 & 1) != 0;
  }

  if (a12)
  {
    return 0;
  }

  if (((a11 | a5) & 0x8000000000000000) == 0)
  {
    return a11 == a5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0B69FC0(uint64_t a1)
{
  result = sub_1B0B69FE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B69FE8()
{
  result = qword_1EB6DD820;
  if (!qword_1EB6DD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD820);
  }

  return result;
}

uint64_t sub_1B0B6A03C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = result;
  v8 = 0;
  v21 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v22 = v8;
    v23 = *(a1 + 36);
    v24 = *(*(a1 + 48) + 4 * v7);
    result = sub_1B0E46508();
    v12 = *(v25 + 16);
    v11 = *(v25 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_1B041D32C((v11 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v13 = v25 + 16 * v12;
    *(v13 + 32) = HIDWORD(v24);
    *(v13 + 40) = 0xE000000000000000;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v10);
    if ((v14 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v7 & 0x3F));
    if (v15)
    {
      v9 = __clz(__rbit64(v15)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v18 = (a1 + 64 + 8 * v10);
      while (v17 < (v9 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1B0425168(v7, v23, 0);
          v9 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v7, v23, 0);
    }

LABEL_4:
    v8 = v22 + 1;
    v7 = v9;
    if (v22 + 1 == v21)
    {
      return v2;
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
  return result;
}

uint64_t sub_1B0B6A28C(uint64_t a1, uint64_t a2)
{
  v4 = _s12LocalMailboxV6LoggerVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B6A2F0(uint64_t a1)
{
  v2 = _s12LocalMailboxV6LoggerVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B6A36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B0B6A3B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0B6A404()
{
  result = qword_1EB6DD860;
  if (!qword_1EB6DD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD860);
  }

  return result;
}

unint64_t sub_1B0B6A458()
{
  result = qword_1EB6DB478;
  if (!qword_1EB6DB478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E4AD0, &qword_1B0EC8030);
    sub_1B0B6A4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB478);
  }

  return result;
}

unint64_t sub_1B0B6A4DC()
{
  result = qword_1EB6DD830;
  if (!qword_1EB6DD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD830);
  }

  return result;
}

unint64_t sub_1B0B6A530()
{
  result = qword_1EB6DD848;
  if (!qword_1EB6DD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD848);
  }

  return result;
}

unint64_t sub_1B0B6A584()
{
  result = qword_1EB6DB080;
  if (!qword_1EB6DB080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB080);
  }

  return result;
}

unint64_t sub_1B0B6A624()
{
  result = qword_1EB6E4AE0;
  if (!qword_1EB6E4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4AE0);
  }

  return result;
}

unint64_t sub_1B0B6A67C()
{
  result = qword_1EB6E4AE8;
  if (!qword_1EB6E4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4AE8);
  }

  return result;
}

unint64_t sub_1B0B6A6D4()
{
  result = qword_1EB6DD838;
  if (!qword_1EB6DD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD838);
  }

  return result;
}

unint64_t sub_1B0B6A72C()
{
  result = qword_1EB6DD840;
  if (!qword_1EB6DD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD840);
  }

  return result;
}

unint64_t sub_1B0B6A784()
{
  result = qword_1EB6DD850;
  if (!qword_1EB6DD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD850);
  }

  return result;
}

unint64_t sub_1B0B6A7DC()
{
  result = qword_1EB6DD858;
  if (!qword_1EB6DD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD858);
  }

  return result;
}

uint64_t sub_1B0B6A830(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEF73657461647055;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x577365676E616863 && a2 == 0xEE00444955687469 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B590 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B0F2B5B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B0B6A9B8()
{
  result = sub_1B03D0770(&unk_1F2710F98);
  qword_1EB737D20 = result;
  return result;
}

uint64_t sub_1B0B6A9E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B0EC4700;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v1 + 32) = type metadata accessor for FindMissingMessages(0);
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 80) = type metadata accessor for FetchSearchResultMessages(0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 128) = &type metadata for DetectChangesToMessages;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 176) = &type metadata for DetectChangesToMessagesInRecent;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 224) = &type metadata for DetectRemovedMessages;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 272) = &type metadata for DetectRemovedMessagesInRecent;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  return v1;
}

void sub_1B0B6AB80(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  if (*(v1 + 112))
  {
    sub_1B0A92638(a1, v9);
    sub_1B0A92638(a1, v6);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v16 = sub_1B0E43988();
    v17 = sub_1B0E45908();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v50 = v19;
      *v18 = 68159235;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v20 = &v6[*(v3 + 20)];
      *(v18 + 10) = *v20;
      *(v18 + 11) = 2082;
      v21 = &v9[*(v3 + 20)];
      *(v18 + 13) = sub_1B0399D64(*(v21 + 1), *(v21 + 2), &v50);
      *(v18 + 21) = 1040;
      *(v18 + 23) = 2;
      *(v18 + 27) = 512;
      v22 = *(v20 + 12);
      sub_1B0A9269C(v6);
      *(v18 + 29) = v22;
      *(v18 + 31) = 2160;
      *(v18 + 33) = 0x786F626C69616DLL;
      *(v18 + 41) = 2085;
      v23 = *(v21 + 4);
      v24 = *(v21 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v9);
      v48 = v23;
      v49 = v24;
      v25 = sub_1B0E44BA8();
      v27 = sub_1B0399D64(v25, v26, &v50);

      *(v18 + 43) = v27;
      _os_log_impl(&dword_1B0389000, v16, v17, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Not purging any messages.", v18, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v19, -1, -1);
      MEMORY[0x1B272C230](v18, -1, -1);

      return;
    }

    sub_1B0A9269C(v6);

    v46 = v9;
  }

  else
  {
    v28 = *(v1 + 104);
    sub_1B0A92638(a1, &v47 - v14);
    sub_1B0A92638(a1, v12);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v29 = sub_1B0E43988();
    v30 = sub_1B0E45908();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v47 = v28;
      v32 = v31;
      v33 = swift_slowAlloc();
      v50 = v33;
      *v32 = 68159491;
      *(v32 + 4) = 2;
      *(v32 + 8) = 256;
      v34 = &v12[*(v3 + 20)];
      *(v32 + 10) = *v34;
      *(v32 + 11) = 2082;
      v35 = &v15[*(v3 + 20)];
      *(v32 + 13) = sub_1B0399D64(*(v35 + 1), *(v35 + 2), &v50);
      *(v32 + 21) = 1040;
      *(v32 + 23) = 2;
      *(v32 + 27) = 512;
      v36 = *(v34 + 12);
      sub_1B0A9269C(v12);
      *(v32 + 29) = v36;
      *(v32 + 31) = 2160;
      *(v32 + 33) = 0x786F626C69616DLL;
      *(v32 + 41) = 2085;
      v37 = *(v35 + 4);
      v38 = *(v35 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v15);
      v48 = v37;
      v49 = v38;
      v39 = sub_1B0E44BA8();
      v41 = sub_1B0399D64(v39, v40, &v50);

      *(v32 + 43) = v41;
      *(v32 + 51) = 2082;
      v48 = v47;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v43 = MessageIdentifierRange.debugDescription.getter(v42);
      v45 = sub_1B0399D64(v43, v44, &v50);

      *(v32 + 53) = v45;
      _os_log_impl(&dword_1B0389000, v29, v30, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task purging UIDs %{public}s", v32, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v33, -1, -1);
      MEMORY[0x1B272C230](v32, -1, -1);

      return;
    }

    sub_1B0A9269C(v12);

    v46 = v15;
  }

  sub_1B0A9269C(v46);
}

uint64_t sub_1B0B6B070()
{
  if (qword_1EB6DD2C0 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

void sub_1B0B6B0D0(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  if (*(v3 + 112) & 1) != 0 || (v5 = *(v3 + 104), (sub_1B0A9FCC0(a1, a2)))
  {
    v6 = 0xF000000000000007;
  }

  else
  {
    v7 = swift_allocObject();
    v8 = *(v3 + 24);
    *(v7 + 16) = *(v3 + 16);
    *(v7 + 24) = v8;
    *(v7 + 32) = v5;
    v9 = *(v3 + 124);
    *(v7 + 40) = *(v3 + 116);
    *(v7 + 48) = v9;
    v6 = v7 | 0x3000000000000002;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a3 = v6;
}

__n128 __swift_memcpy125_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1B0B6B1B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 125))
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

uint64_t sub_1B0B6B200(uint64_t result, int a2, int a3)
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
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 125) = 1;
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

    *(result + 125) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0B6B274()
{
  result = qword_1EB6DD2B8;
  if (!qword_1EB6DD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD2B8);
  }

  return result;
}

unint64_t sub_1B0B6B2C8(uint64_t a1)
{
  result = sub_1B0B6B2F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B6B2F0()
{
  result = qword_1EB6DD2B0;
  if (!qword_1EB6DD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD2B0);
  }

  return result;
}

uint64_t sub_1B0B6B358()
{
  result = sub_1B03D0770(&unk_1F2711010);
  qword_1EB737D50 = result;
  return result;
}

void sub_1B0B6B380(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  sub_1B0A92638(a1, v25 - v9);
  sub_1B0A92638(a1, v7);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B23F10(v2, v30);
  sub_1B0B23F10(v2, v29);
  sub_1B0B23F10(v2, v28);
  v11 = sub_1B0E43988();
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 68160003;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v15 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v15;
    *(v13 + 11) = 2082;
    v16 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_1B0399D64(*(v16 + 1), *(v16 + 2), &v27);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    v17 = *(v15 + 12);
    sub_1B0A9269C(v7);
    *(v13 + 29) = v17;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v18 = *(v16 + 4);
    LODWORD(v16) = *(v16 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v10);
    v25[1] = v18;
    v26 = v16;
    v19 = sub_1B0E44BA8();
    v21 = sub_1B0399D64(v19, v20, &v27);

    *(v13 + 43) = v21;
    *(v13 + 51) = 2048;
    v22 = v31;
    sub_1B0B23EB0(v30);
    *(v13 + 53) = v22;
    *(v13 + 61) = 2048;
    v23 = *(v29[15] + 16);
    sub_1B0B23EB0(v29);
    *(v13 + 63) = v23;
    *(v13 + 71) = 2048;
    v24 = v28[14];
    sub_1B0B23EB0(v28);
    *(v13 + 73) = v24;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. highest-mod-seq local: %llu, changes without UID: %ld, server: %llu", v13, 0x51u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v14, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B0B23EB0(v28);
    sub_1B0B23EB0(v29);
    sub_1B0B23EB0(v30);
    sub_1B0A9269C(v7);

    sub_1B0A9269C(v10);
  }
}

uint64_t sub_1B0B6B688@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 104);
  if ((v5 < *(v3 + 112) || *(*(v3 + 120) + 16)) && (sub_1B0B71C68(a1, a2) & 1) == 0)
  {
    if (*(v3 + 128))
    {
      v9 = &unk_1F27115E8;
    }

    else
    {
      v9 = &unk_1F2711528;
    }

    v10 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
    v11 = sub_1B041C1E8();
    static MessageIdentifierRange.all.getter(&type metadata for UID, v11, &v14);
    v13 = v14;
    Range<>.init<A>(_:)(&v13, &type metadata for UID, v11);
    sub_1B03D06F8();
    sub_1B0E46F08();
    *v10 = v9;
    *(v10 + 8) = v5;
    *(v10 + 16) = 0;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AF0, &qword_1B0EC8470);
    return (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AF0, &qword_1B0EC8470);
    v7 = *(*(v6 - 8) + 56);

    return v7(a3, 1, 1, v6);
  }
}

void sub_1B0B6B854(uint64_t a1)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  if ((v3 | v2) < 0)
  {
    __break(1u);
  }

  else if (v3 != v2)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
    MEMORY[0x1EEE9AC00](a1);
    if (*(v6 + 192))
    {
      v8 = *(v6 + 176);
      v7 = *(v6 + 184);
      v12 = *(v6 + 168);
      v9 = v12;
      v10 = v6;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B2BE00(&v12, v4, v5, 0, sub_1B0B6BF28);
      sub_1B03BB638(v9, v8, v7, 1);
      v11 = v12;
      *(v10 + 176) = 0;
      *(v10 + 184) = 0;
      *(v10 + 168) = v11;
      *(v10 + 192) = 1;
    }
  }
}

uint64_t sub_1B0B6B950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = *(a2 + 120);
  v14 = (a1 + *(type metadata accessor for MailboxSyncState() + 48));
  v15 = v14[3];
  v16 = v14[4];
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  (*(v16 + 32))(v13, v15, v16);
  v17 = v14[3];
  v18 = v14[4];
  __swift_project_boxed_opaque_existential_0(v14, v17);
  (*(v18 + 40))(v17, v18);
  v20 = *(v19 + 16);

  sub_1B0A92638(a3, v12);
  sub_1B0A92638(a3, v9);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v21 = sub_1B0E43988();
  v22 = sub_1B0E45908();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38 = v20;
    v25 = v24;
    v42 = v24;
    *v23 = 68159491;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v26 = *(v6 + 20);
    v39 = a2;
    v27 = &v9[v26];
    *(v23 + 10) = v9[v26];
    *(v23 + 11) = 2082;
    v28 = &v12[*(v6 + 20)];
    *(v23 + 13) = sub_1B0399D64(*(v28 + 1), *(v28 + 2), &v42);
    *(v23 + 21) = 1040;
    *(v23 + 23) = 2;
    *(v23 + 27) = 512;
    LOWORD(v27) = *(v27 + 12);
    sub_1B0A9269C(v9);
    *(v23 + 29) = v27;
    *(v23 + 31) = 2160;
    *(v23 + 33) = 0x786F626C69616DLL;
    *(v23 + 41) = 2085;
    v29 = *(v28 + 4);
    LODWORD(v27) = *(v28 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v12);
    v40 = v29;
    v41 = v27;
    a2 = v39;
    v30 = sub_1B0E44BA8();
    v32 = sub_1B0399D64(v30, v31, &v42);

    *(v23 + 43) = v32;
    *(v23 + 51) = 2048;
    *(v23 + 53) = v38;
    _os_log_impl(&dword_1B0389000, v21, v22, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Number of changes to-be-sent to the persistence: %ld.", v23, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v25, -1, -1);
    MEMORY[0x1B272C230](v23, -1, -1);
  }

  else
  {
    sub_1B0A9269C(v9);

    sub_1B0A9269C(v12);
  }

  v33 = *(a2 + 112);
  v34 = v14[3];
  v35 = v14[4];
  __swift_mutable_project_boxed_opaque_existential_1(v14, v34);
  return (*(v35 + 64))(v33, a3, v34, v35);
}

uint64_t sub_1B0B6BCD8()
{
  if (qword_1EB6DD7B8 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B0B6BD9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_1B0B6BDE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0B6BE58()
{
  result = qword_1EB6DD7B0;
  if (!qword_1EB6DD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7B0);
  }

  return result;
}

unint64_t sub_1B0B6BEAC(uint64_t a1)
{
  result = sub_1B0B6BED4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B6BED4()
{
  result = qword_1EB6DD7A8;
  if (!qword_1EB6DD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7A8);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1B0B6BF60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1B0B6BFBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t (*sub_1B0B6C038(uint64_t **a1, uint64_t a2, unsigned int a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1B0B6C7A8(v6, a2, a3);
  return sub_1B0B6C0C0;
}

uint64_t (*sub_1B0B6C0C4(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B0B6C858(v4, a2);
  return sub_1B0B6E68C;
}

void sub_1B0B6C13C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1B0B6C188(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(v3 + 48);
  if (!v4)
  {
    goto LABEL_16;
  }

  if (!*(v4 + 16) || (v5 = sub_1B03AB888(a1, a2), (v6 & 1) == 0))
  {
    v20 = 0;
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  v7 = *(v4 + 56) + 72 * v5;
  v31 = *v7;
  v8 = *(v7 + 64);
  v10 = *(v7 + 32);
  v9 = *(v7 + 48);
  v32 = *(v7 + 16);
  v33 = v10;
  v34 = v9;
  v35 = v8;
  v11 = *(&v31 + 1);
  v12 = v31;
  v14 = *(&v32 + 1);
  v13 = v32;
  v16 = *(&v10 + 1);
  v15 = v10;
  v17 = *(&v9 + 1);
  v18 = v9;
  v19 = v8;
  v20 = HIBYTE(v8);
  sub_1B03BB0B4(&v31, v30);
  if (!v12)
  {
LABEL_15:
    *&v31 = 0;
    *(&v31 + 1) = v11;
    *&v32 = v13;
    *(&v32 + 1) = v14;
    *&v33 = v15;
    *(&v33 + 1) = v16;
    *&v34 = v18;
    *(&v34 + 1) = v17;
    LOBYTE(v35) = v19;
    HIBYTE(v35) = v20;
    sub_1B0398EFC(&v31, &qword_1EB6E4568, &qword_1B0EC55C0);
    goto LABEL_16;
  }

  v31 = __PAIR128__(v11, v12);
  v32 = __PAIR128__(v14, v13);
  v33 = __PAIR128__(v16, v15);
  v34 = __PAIR128__(v17, v18);
  v35 = __PAIR16__(v20, v19);
  result = sub_1B0398EFC(&v31, &qword_1EB6E4568, &qword_1B0EC55C0);
  if (v20)
  {
LABEL_16:
    v25 = 0;
    v26 = 1;
LABEL_17:
    LOBYTE(v31) = v26;
    return v25 | (v26 << 32);
  }

  if (a3 != -1)
  {
    if (a3 + 1 > v15)
    {
      v22 = a3 + 1;
    }

    else
    {
      v22 = v15;
    }

    v24 = sub_1B0B6C038(v30, a1, a2);
    if (*v23 && *(v23 + 65) != 1)
    {
      *(v23 + 32) = v22;
    }

    (v24)(v30, 0);
    v26 = v15 > a3;
    if (v15 <= a3)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B6C37C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1B0B6DAF4(v9, v10) & 1;
}

uint64_t sub_1B0B6C428(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0B6C464(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 11) = *(a1 + 27);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 11) = *(a2 + 27);
  return sub_1B0B6D9B8(&v5, &v7) & 1;
}

uint64_t sub_1B0B6C4B0(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 48))
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    sub_1B03BB0B4(a1, v17);
    v6 = *(v1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17[0] = *(v1 + 48);
    result = sub_1B0A9BF5C(a1, v3, v4, isUniquelyReferenced_nonNull_native);
    v9 = v17[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AF8, &qword_1B0EC85E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0EC1E70;
    v12 = *a1;
    *(inited + 40) = *(a1 + 8);
    *(inited + 32) = v12;
    v13 = inited + 32;
    *(inited + 48) = *a1;
    v14 = *(a1 + 16);
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    *(inited + 112) = *(a1 + 64);
    *(inited + 80) = v15;
    *(inited + 96) = v16;
    *(inited + 64) = v14;
    v9 = sub_1B0BAB530(inited);
    swift_setDeallocating();
    sub_1B03BB0B4(a1, v17);
    sub_1B03BB0B4(a1, v17);
    result = sub_1B0398EFC(v13, &qword_1EB6E4B00, &qword_1B0EC85E8);
  }

  *(v2 + 48) = v9;
  return result;
}

uint64_t sub_1B0B6C5E0()
{
  if (*v0)
  {
    result = 0x616C696176616E75;
  }

  else
  {
    result = 0x6574726F70707573;
  }

  *v0;
  return result;
}

uint64_t sub_1B0B6C628(__int16 a1)
{
  LOBYTE(v1) = a1;
  if ((a1 & 0x100) != 0)
  {
    if (!a1)
    {
      return 0x31303533636672;
    }

    v1 = a1;
    v5 = 0;
  }

  else
  {
    result = 0x2D6C616963657073;
    if (!v1)
    {
      return result;
    }

    v1 = v1;
    v5 = 0x2D6C616963657073;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0x6174732D7473696CLL;
  }

  if (v1 == 2)
  {
    v4 = 0x80000001B0F2B5F0;
  }

  else
  {
    v4 = 0xEB00000000737574;
  }

  MEMORY[0x1B2726E80](v3, v4);

  return v5;
}

uint64_t sub_1B0B6C71C()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1B0B6C628(v1 | *v0);
}

uint64_t sub_1B0B6C738()
{
  v1 = 0x6174732D7473696CLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C696176616E75;
  }
}

uint64_t (*sub_1B0B6C7A8(uint64_t *a1, uint64_t a2, unsigned int a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1B0B6CE4C(v8);
  v8[9] = sub_1B0B6C95C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1B0B6C854;
}

uint64_t (*sub_1B0B6C858(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1B0B6CE80(v6);
  v6[9] = sub_1B0B6CC44(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1B0B6E690;
}

void sub_1B0B6C8FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1B0B6C95C(uint64_t *a1, uint64_t a2, unsigned int a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x1C8uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 68) = a3;
  *(v10 + 432) = a2;
  *(v10 + 440) = v4;
  v12 = *v4;
  v13 = sub_1B03AB888(a2, a3);
  *(v11 + 66) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1B0B8D330();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1B0B2F69C(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1B03AB888(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1B0E46BA8();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v11 + 448) = v13;
  if (v19)
  {
    memmove((v11 + 144), (*(*v5 + 56) + 72 * v13), 0x42uLL);
  }

  else
  {
    *(v11 + 208) = 0;
    *(v11 + 176) = 0u;
    *(v11 + 192) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 160) = 0u;
  }

  return sub_1B0B6CACC;
}

void sub_1B0B6CACC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 160);
  *(v2 + 216) = *(*a1 + 144);
  *(v2 + 232) = v3;
  v4 = *(v2 + 192);
  *(v2 + 248) = *(v2 + 176);
  *(v2 + 264) = v4;
  *(v2 + 280) = *(v2 + 208);
  v5 = *(v2 + 216);
  v6 = *(v2 + 66);
  if (a2)
  {
    if (v5)
    {
      v8 = *(v2 + 440);
      v7 = *(v2 + 448);
      if ((*(v2 + 66) & 1) == 0)
      {
        v9 = *(v2 + 68);
        v10 = *(v2 + 432);
        v11 = *v8;
        v12 = *(v2 + 192);
        *(v2 + 32) = *(v2 + 176);
        *(v2 + 48) = v12;
        *(v2 + 64) = *(v2 + 208);
        v13 = *(v2 + 160);
        *v2 = *(v2 + 144);
        *(v2 + 16) = v13;
        v14 = v10;
        v15 = v2;
LABEL_11:
        sub_1B0A9BBD4(v7, v14, v9, v15, v11);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v5)
  {
    v8 = *(v2 + 440);
    v7 = *(v2 + 448);
    if ((*(v2 + 66) & 1) == 0)
    {
      v9 = *(v2 + 68);
      v18 = *(v2 + 432);
      v11 = *v8;
      v19 = *(v2 + 144);
      *(v2 + 88) = *(v2 + 160);
      v20 = *(v2 + 192);
      *(v2 + 104) = *(v2 + 176);
      *(v2 + 120) = v20;
      *(v2 + 136) = *(v2 + 208);
      *(v2 + 72) = v19;
      v15 = v2 + 72;
      v14 = v18;
      goto LABEL_11;
    }

LABEL_7:
    memmove((*(*v8 + 56) + 72 * v7), (v2 + 144), 0x42uLL);
    goto LABEL_12;
  }

  if (*(v2 + 66))
  {
    v16 = *(v2 + 448);
    v17 = **(v2 + 440);
    sub_1B039E440((*(v17 + 48) + 16 * v16));
    sub_1B0B900C4(v16, v17);
  }

LABEL_12:
  v21 = *(v2 + 192);
  *(v2 + 320) = *(v2 + 176);
  *(v2 + 336) = v21;
  *(v2 + 352) = *(v2 + 208);
  v22 = *(v2 + 160);
  *(v2 + 288) = *(v2 + 144);
  *(v2 + 304) = v22;
  sub_1B0B6DD98(v2 + 216, v2 + 360);
  sub_1B0398EFC(v2 + 288, &qword_1EB6E4568, &qword_1B0EC55C0);

  free(v2);
}

void (*sub_1B0B6CC44(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
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
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1B0AE00C4(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1B0B8E9DC();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1B0B325B0(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_1B0AE00C4(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
    result = sub_1B0E46BA8();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_1B0B6CD98;
}

void sub_1B0B6CD98(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1B0A9BD3C(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];
    v8 = *(*(v7 + 48) + 8 * v6);

    sub_1B0B90958(v6, v7);
  }

  v9 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  free(v1);
}

uint64_t (*sub_1B0B6CE4C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B0B6CE74;
}

uint64_t (*sub_1B0B6CE80(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B0B6E678;
}

unsigned __int8 *sub_1B0B6CEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0E44ED8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B0A6C2B0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B0E46368();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1B0B6D434(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0E44ED8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B0A6C2B0();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B0E46368();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}