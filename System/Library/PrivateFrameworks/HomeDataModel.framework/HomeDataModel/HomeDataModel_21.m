unint64_t sub_1D18A7CD8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BF8, &qword_1D1E7BE08);
    v2 = sub_1D1E68BCC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v32 >= v25)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v32);
      ++v26;
      if (v7)
      {
        while (1)
        {
          v33 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v34 = (v32 << 9) | (8 * v33);
          v39 = *(*(a1 + 56) + v34);
          v35 = *(*(a1 + 48) + v34);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
          swift_dynamicCast();
          result = sub_1D171DC34(v35);
          if (v36)
          {
            v27 = *(v2 + 48);
            v28 = *(v27 + 8 * result);
            *(v27 + 8 * result) = v35;
            v29 = result;

            v30 = *(v2 + 56);
            v31 = *(v30 + 8 * v29);
            *(v30 + 8 * v29) = v40;

            v26 = v32;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v37 = *(v2 + 16);
            if (v37 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v35;
            *(*(v2 + 56) + 8 * result) = v40;
            *(v2 + 16) = v37 + 1;
            v26 = v32;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v32 = v26;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
      v38 = *(*(a1 + 56) + v15);
      v16 = *(*(a1 + 48) + v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      swift_dynamicCast();
      v17 = *(v2 + 40);
      result = sub_1D1E684EC();
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v2 + 48) + 8 * v13) = v16;
      *(*(v2 + 56) + 8 * v13) = v40;
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1D18A80B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BF0, &unk_1D1E7E8B0);
    v2 = sub_1D1E68BCC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);

        v20 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
        swift_dynamicCast();
        sub_1D16EEE38(&v26, v28);
        sub_1D16EEE38(v28, v29);
        sub_1D16EEE38(v29, &v27);
        result = sub_1D171D2F0(v18, v17);
        if (v21)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1D16EEE38(&v27, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v2[6] + 16 * result);
          *v22 = v18;
          v22[1] = v17;
          result = sub_1D16EEE38(&v27, (v2[7] + 32 * result));
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D18A8328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642958, &unk_1D1EB2A00);
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v52 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC0, &qword_1D1E7BDF0);
  v5 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v52 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC8, &unk_1D1EB2A50);
  v7 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v52 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BD0, &qword_1D1E96B30);
  v54 = *(v62 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v11 = &v52 - v10;
  v74 = sub_1D1E66A7C();
  v70 = *(v74 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BD8, &qword_1D1E7BDF8);
  v14 = *(*(v60 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v52 - v17;
  v71 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BE0, &unk_1D1E7E600);
    v18 = sub_1D1E68BCC();
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC8];
  }

  v19 = v71 + 64;
  v20 = 1 << *(v71 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v71 + 64);
  v23 = (v20 + 63) >> 6;
  v56 = v70 + 16;
  v75 = v70 + 32;

  v25 = 0;
  v53 = v19;
  v61 = v11;
  v57 = v18;
  v52 = v23;
  v55 = v18 + 64;
  v26 = v74;
  while (v22)
  {
LABEL_15:
    v29 = __clz(__rbit64(v22)) | (v25 << 6);
    v30 = v70;
    v31 = v71;
    v32 = *(v71 + 48);
    v73 = *(v70 + 72);
    v33 = v58;
    (*(v70 + 16))(v58, v32 + v73 * v29, v26);
    v34 = v60;
    sub_1D18A9B8C(*(v31 + 56) + *(v68 + 72) * v29, &v33[*(v60 + 48)]);
    v35 = v33;
    v36 = v59;
    sub_1D1741A90(v35, v59, &qword_1EC645BD8, &qword_1D1E7BDF8);
    v37 = *(v34 + 48);
    v38 = *(v66 + 48);
    v39 = *(v30 + 32);
    v40 = v65;
    v39(v65, v36, v26);
    sub_1D1741A90(v36 + v37, v67, &qword_1EC642958, &unk_1D1EB2A00);
    swift_dynamicCast();
    v41 = v63;
    v42 = *(v64 + 48);
    v39(v63, v40, v26);
    sub_1D1741A90(&v40[v38], &v41[v42], &qword_1EC645BD0, &qword_1D1E96B30);
    v72 = v39;
    v39(v76, v41, v26);
    v43 = v61;
    sub_1D1741A90(&v41[v42], v61, &qword_1EC645BD0, &qword_1D1E96B30);
    v18 = v57;
    v44 = *(v57 + 40);
    sub_1D17579AC();
    result = sub_1D1E676DC();
    v45 = -1 << *(v18 + 32);
    v46 = result & ~v45;
    v47 = v46 >> 6;
    if (((-1 << v46) & ~*(v55 + 8 * (v46 >> 6))) == 0)
    {
      v48 = 0;
      v49 = (63 - v45) >> 6;
      while (++v47 != v49 || (v48 & 1) == 0)
      {
        v50 = v47 == v49;
        if (v47 == v49)
        {
          v47 = 0;
        }

        v48 |= v50;
        v51 = *(v55 + 8 * v47);
        if (v51 != -1)
        {
          v27 = __clz(__rbit64(~v51)) + (v47 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v27 = __clz(__rbit64((-1 << v46) & ~*(v55 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v22 &= v22 - 1;
    *(v55 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v72(*(v18 + 48) + v27 * v73, v76, v74);
    result = sub_1D1741A90(v43, *(v18 + 56) + *(v54 + 72) * v27, &qword_1EC645BD0, &qword_1D1E96B30);
    ++*(v18 + 16);
    v19 = v53;
    v23 = v52;
  }

  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v28 >= v23)
    {

      return v18;
    }

    v22 = *(v19 + 8 * v28);
    ++v25;
    if (v22)
    {
      v25 = v28;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D18A89CC(uint64_t a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v4 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v12, qword_1EE07DCE0);
  *v6 = [a2 home];
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  return (*(v8 + 8))(v11, v7);
}

void (*HMActionSet.iconTint.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = HMActionSet.iconTint.getter();
  return sub_1D18A8BCC;
}

void sub_1D18A8BCC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    HMActionSet.iconTint.setter(v5);
  }

  else
  {
    HMActionSet.iconTint.setter(*a1);
  }
}

uint64_t HMActionSet.iconTintDictionary.getter()
{
  v1 = [v0 applicationData];
  v2 = [v1 dictionary];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  v3 = sub_1D1E675FC();

  if (*(v3 + 16) && (v4 = sub_1D171D2F0(0xD00000000000001FLL, 0x80000001D1EBB8B0), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643420, &qword_1D1E718A0);
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t (*HMActionSet.statusIcon.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x188uLL);
  }

  *a1 = v3;
  *(v3 + 384) = v1;
  HMActionSet.icon.getter(v3);
  return sub_1D18A8DD0;
}

void sub_1D18A8DD4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[2];
    v3 = v2[3];
    v5 = v2[1];
    v2[14] = v4;
    v2[15] = v3;
    v6 = v2[3];
    v2[16] = v2[4];
    *(v2 + 265) = *(v2 + 73);
    v7 = v2[1];
    v8 = *v2;
    v2[12] = *v2;
    v2[13] = v7;
    v17 = v4;
    v18 = v6;
    v19[0] = v2[4];
    *(v19 + 9) = *(v2 + 73);
    v9 = *(v2 + 48);
    v15 = v8;
    v16 = v5;
    sub_1D18A9844((v2 + 12), (v2 + 18));
    HMActionSet.icon.setter(&v15);
    v10 = v2[3];
    v2[8] = v2[2];
    v2[9] = v10;
    v2[10] = v2[4];
    *(v2 + 169) = *(v2 + 73);
    v11 = v2[1];
    v2[6] = *v2;
    v2[7] = v11;
    sub_1D18A98A0((v2 + 6));
  }

  else
  {
    v12 = *(v2 + 48);
    v13 = v2[3];
    v17 = v2[2];
    v18 = v13;
    v19[0] = v2[4];
    *(v19 + 9) = *(v2 + 73);
    v14 = v2[1];
    v15 = *v2;
    v16 = v14;
    HMActionSet.icon.setter(&v15);
  }

  free(v2);
}

void (*HMActionSet.statusIconTint.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 48) = HMActionSet.iconTint.getter();
  return sub_1D18A8F64;
}

void sub_1D18A8FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = Color.colorDictionary.getter();
    if (v7)
    {
      v8 = v7;
      v9 = [v4 applicationData];
      sub_1D18A72A4(v8);

      v10 = sub_1D1E675DC();

      v11 = sub_1D1E677EC();
      [v9 setObject:v10 forKeyedSubscript:v11];

      v12 = [v4 applicationData];
      v13 = swift_allocObject();
      *(v13 + 16) = v4;
      v16[4] = a3;
      v16[5] = v13;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 1107296256;
      v16[2] = sub_1D1C40BA8;
      v16[3] = a4;
      v14 = _Block_copy(v16);
      v15 = v4;

      [v15 updateApplicationData:v12 completionHandler:v14];
      _Block_release(v14);
    }

    else
    {
    }
  }
}

void (*HMActionSet.tileIconTint.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 48) = HMActionSet.iconTint.getter();
  return sub_1D18A9238;
}

void sub_1D18A9274(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v6 = *a1;
  if (a2)
  {
    v8 = v6[7];
    v9 = *(*a1 + 48);

    a6(v10);
    v11 = v6[6];
  }

  else
  {
    if (!*(*a1 + 48))
    {
      goto LABEL_7;
    }

    v14 = *(*a1 + 48);
    v15 = Color.colorDictionary.getter();
    if (v15)
    {
      v16 = v15;
      v17 = v6[7];
      v18 = [v17 applicationData];
      sub_1D18A72A4(v16);

      v19 = sub_1D1E675DC();

      v20 = sub_1D1E677EC();
      [v18 setObject:v19 forKeyedSubscript:v20];

      v21 = [v17 applicationData];
      v22 = swift_allocObject();
      *(v22 + 16) = v17;
      v6[4] = a4;
      v6[5] = v22;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_1D1C40BA8;
      v6[3] = a5;
      v23 = _Block_copy(v6);
      v24 = v6[5];
      v25 = v17;

      [v25 updateApplicationData:v21 completionHandler:v23];
      _Block_release(v23);
    }
  }

LABEL_7:

  free(v6);
}

uint64_t HMActionSet.iconSymbol.getter()
{
  v1 = v0;
  v2 = [v0 applicationData];
  v3 = sub_1D1E677EC();
  v4 = [v2 objectForKeyedSubscript_];

  if (v4)
  {
    v19 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = v18;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [v1 applicationData];
  v8 = sub_1D1E677EC();
  v9 = [v7 objectForKeyedSubscript_];

  if (v9)
  {
    v19 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = v17;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

    if (!v4)
    {
      if (v12)
      {

        v6 = v11;
        goto LABEL_21;
      }

LABEL_25:
      v15 = [v1 actionSetType];
      sub_1D1E6781C();

      HMActionSet.ActionSetKind.init(rawValue:)(&v17);
      if (v17 <= 1u)
      {
        if (!v17)
        {
          return 0xD000000000000013;
        }

        if (v17 == 1)
        {
          return 0xD000000000000015;
        }
      }

      else
      {
        switch(v17)
        {
          case 2u:
            return 0x2E78616D2E6E7573;
          case 3u:
            return 0x6174732E6E6F6F6DLL;
          case 7u:
            goto LABEL_29;
        }
      }

      return 0x69662E6573756F68;
    }
  }

  else if (!v4)
  {
    goto LABEL_25;
  }

LABEL_21:

  if (sub_1D1E679AC())
  {

    v6 = sub_1D18A98F4();
    v14 = v13;

    if (!v14)
    {
LABEL_29:
      v6 = 0x69662E6573756F68;
    }
  }

  else
  {
  }

  return v6;
}

uint64_t HMActionSet.backupTint.getter()
{
  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_1D18A98F4()
{

  v0 = _s13HomeDataModel24LegacyHFImageIdentifiersO8rawValueACSgSS_tcfC_0();
  if (v0 <= 0x42)
  {
    if (v0 > 63)
    {
      if (v0 != 64)
      {
        if (v0 == 65)
        {
          return 0x696E6B2E6B726F66;
        }

        else
        {
          return 0xD000000000000015;
        }
      }
    }

    else if (v0 != 61)
    {
      if (v0 != 62)
      {
        if (v0 == 63)
        {
          return 0xD000000000000011;
        }

        return 0x69662E6573756F68;
      }

      return 0x702E676E69797266;
    }

    return 0xD000000000000013;
  }

  if (v0 > 69)
  {
    if (v0 == 72)
    {
      return 0x69662E6573756F68;
    }

    if (v0 != 71)
    {
      if (v0 == 70)
      {
        return 0x6174732E6E6F6F6DLL;
      }

      return 0x69662E6573756F68;
    }

    return 0x2E78616D2E6E7573;
  }

  else if (v0 == 67)
  {
    return 0x2E6E726F63706F70;
  }

  else if (v0 == 68)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x69662E7472616568;
  }
}

void keypath_set_45Tm(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v3;
  v8[0] = *(a1 + 64);
  *(v8 + 9) = *(a1 + 73);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *a2;
  sub_1D18A9844(v7, &v6);
  HMActionSet.icon.setter(a1);
}

uint64_t keypath_set_47Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1D18A9B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642958, &unk_1D1EB2A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

HomeDataModel::TileSize_optional __swiftcall TileSize.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t TileSize.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_1D18A9D0C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D1E68C2C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D18A9D6C(unint64_t *a1@<X8>)
{
  v2 = "HFTileResizableSizeSmall";
  v3 = 0xD000000000000018;
  if (*v1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v2 = "40-A849-215882E2F008";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1D18A9DA8()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18A9E24()
{
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D18A9E8C()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18A9F04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  if (v3)
  {
    v5 = "40-A849-215882E2F008";
  }

  else
  {
    v5 = "HFTileResizableSizeSmall";
  }

  if (*a2)
  {
    v6 = 0xD000000000000019;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (*a2)
  {
    v7 = "HFTileResizableSizeSmall";
  }

  else
  {
    v7 = "40-A849-215882E2F008";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();
  }

  return v9 & 1;
}

uint64_t HMApplicationData.isDoubleHigh.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    swift_dynamicCast();
  }

  v4 = sub_1D1E68C2C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void HMApplicationData.isDoubleHigh.setter(char a1)
{
  if (a1 != 2)
  {
    v2 = [v1 applicationData];
    v3 = sub_1D1E677EC();

    v4 = sub_1D1E677EC();
    [v2 setObject:v3 forKeyedSubscript:v4];

    v5 = [v1 applicationData];
    v7[4] = sub_1D18AA2EC;
    v7[5] = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1D1C40BA8;
    v7[3] = &block_descriptor_12;
    v6 = _Block_copy(v7);
    [v1 updateApplicationData:v5 completionHandler:v6];
    _Block_release(v6);
  }
}

uint64_t sub_1D18AA2EC()
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v1 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v7, qword_1EE07DCE0);
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMApplicationData.isDoubleHigh.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = HMApplicationData.isDoubleHigh.getter();
  return sub_1D18AA4E4;
}

unint64_t sub_1D18AA510()
{
  result = qword_1EC645C00;
  if (!qword_1EC645C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645C00);
  }

  return result;
}

unint64_t sub_1D18AA574()
{
  result = qword_1EC645C08;
  if (!qword_1EC645C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645C08);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall HMApplicationData.array(forKey:)(Swift::String forKey)
{
  v1 = sub_1D18AB0A0(forKey._countAndFlagsBits, forKey._object, &qword_1EC645C10, qword_1D1E7BF20);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

Swift::Void __swiftcall HMApplicationData.set(_:forKey:)(Swift::OpaquePointer _, Swift::String forKey)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  v3 = sub_1D1E67BFC();
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];
}

{
  v3 = sub_1D1E675DC();
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];
}

{
  v3 = sub_1D1E67BFC();
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];
}

Swift::Void __swiftcall HMApplicationData.set(_:forKey:)(Swift::Bool _, Swift::String forKey)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void sub_1D18AA740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v7 = sub_1D1E677EC();
  [v5 setObject:v6 forKeyedSubscript:v7];
}

Swift::String_optional __swiftcall HMApplicationData.string(forKey:)(Swift::String forKey)
{
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    v4 = swift_dynamicCast();
    v5 = v4 == 0;
    if (v4)
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v10;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::OpaquePointer_optional __swiftcall HMApplicationData.stringArray(forKey:)(Swift::String forKey)
{
  v1 = sub_1D18AB0A0(forKey._countAndFlagsBits, forKey._object, &qword_1EC643CB0, &qword_1D1E73640);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

Swift::Bool_optional __swiftcall HMApplicationData.BOOL(forKey:)(Swift::String forKey)
{
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  v4.value = 2;
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 2;
    }
  }

  return v4;
}

uint64_t HMApplicationData.data(forKey:)()
{
  v1 = sub_1D1E677EC();
  v2 = [v0 objectForKeyedSubscript_];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t HMApplicationData.date(forKey:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E677EC();
  v4 = [v1 objectForKeyedSubscript_];

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    v5 = sub_1D1E669FC();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    v8 = sub_1D1E669FC();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

void HMApplicationData.set(_:forKey:)()
{
  v1 = v0;
  v2 = sub_1D1E6694C();
  v3 = sub_1D1E677EC();
  [v1 setObject:v2 forKeyedSubscript:v3];
}

Swift::Double_optional __swiftcall HMApplicationData.double(forKey:)(Swift::String forKey)
{
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    if (swift_dynamicCast())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

Swift::Void __swiftcall HMApplicationData.set(_:forKey:)(Swift::Double _, Swift::String forKey)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __swiftcall HMApplicationData.float(forKey:)(Swift::Float_optional *__return_ptr retstr, Swift::String forKey)
{
  v3 = sub_1D1E677EC();
  v4 = [v2 objectForKeyedSubscript_];

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    swift_dynamicCast();
  }
}

Swift::Void __swiftcall HMApplicationData.set(_:forKey:)(Swift::Float _, Swift::String forKey)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v5 = _;
  v6 = [v4 initWithFloat_];
  v7 = sub_1D1E677EC();
  [v2 setObject:v6 forKeyedSubscript:v7];
}

Swift::Int_optional __swiftcall HMApplicationData.int(forKey:)(Swift::String forKey)
{
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::Void __swiftcall HMApplicationData.set(_:forKey:)(Swift::Int _, Swift::String forKey)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];
}

Swift::OpaquePointer_optional __swiftcall HMApplicationData.dictionary(forKey:)(Swift::String forKey)
{
  v1 = sub_1D18AB0A0(forKey._countAndFlagsBits, forKey._object, &unk_1EC64A340, &qword_1D1E71800);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1D18AB0A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_1D1E677EC();
  v8 = [v4 objectForKeyedSubscript_];

  if (!v8)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall HMApplicationData.clear(forKey:)(Swift::String forKey)
{
  v2 = sub_1D1E677EC();
  [v1 setObject:0 forKeyedSubscript:v2];
}

char *sub_1D18AB1A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - v3;
  v30 = sub_1D1E66A7C();
  v25 = *(v30 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 applicationData];
  v8 = sub_1D1E677EC();
  v9 = [v7 objectForKeyedSubscript_];

  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v31 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C10, qword_1D1E7BF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = v32;
  if (v32 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v13 = 0;
    v27 = v11 & 0xFFFFFFFFFFFFFF8;
    v28 = v11 & 0xC000000000000001;
    v14 = (v25 + 48);
    v26 = (v25 + 32);
    v15 = MEMORY[0x1E69E7CC0];
    v24 = v10;
    while (v28)
    {
      v16 = MEMORY[0x1D3891EF0](v13, v11);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      v18 = v11;
      v32 = v16;
      swift_unknownObjectRetain();
      swift_dynamicCast();
      sub_1D1E66A0C();
      swift_unknownObjectRelease();

      v19 = v30;
      if ((*v14)(v4, 1, v30) == 1)
      {
        sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        v20 = *v26;
        (*v26)(v29, v4, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D177D0AC(0, *(v15 + 2) + 1, 1, v15);
        }

        v22 = *(v15 + 2);
        v21 = *(v15 + 3);
        if (v22 >= v21 >> 1)
        {
          v15 = sub_1D177D0AC(v21 > 1, v22 + 1, 1, v15);
        }

        *(v15 + 2) = v22 + 1;
        v20(&v15[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22], v29, v30);
        v10 = v24;
      }

      v11 = v18;
      ++v13;
      if (v17 == i)
      {
        goto LABEL_25;
      }
    }

    if (v13 >= *(v27 + 16))
    {
      goto LABEL_22;
    }

    v16 = *(v11 + 8 * v13 + 32);
    swift_unknownObjectRetain();
    v17 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_11;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_25:

  return v15;
}

uint64_t sub_1D18AB598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - v10;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v4 applicationData];
  v18 = v17;
  v39 = MEMORY[0x1E69E7CC0];
  v19 = a1;
  v20 = *(a1 + 16);
  if (v20)
  {
    v33 = v17;
    v34 = a2;
    v35 = a3;
    v36 = v11;
    v22 = *(v13 + 16);
    v21 = v13 + 16;
    v37 = v4;
    v38 = v22;
    v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v24 = *(v21 + 56);
    do
    {
      v38(v16, v23, v12);
      sub_1D1E66A1C();
      sub_1D1E677EC();

      v25 = (*(v21 - 8))(v16, v12);
      MEMORY[0x1D3891220](v25);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      v23 += v24;
      --v20;
    }

    while (v20);
    v11 = v36;
    v4 = v37;
    v18 = v33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  v26 = sub_1D1E67BFC();

  v27 = sub_1D1E677EC();
  [v18 setObject:v26 forKeyedSubscript:v27];

  v28 = sub_1D1E67E7C();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v4;
  v30 = v4;
  sub_1D1B02368(0, 0, v11, &unk_1D1E7BF60, v29);
}

uint64_t sub_1D18AB8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v4[19] = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v4[21] = v7;
  v8 = *(v7 - 8);
  v4[22] = v8;
  v9 = *(v8 + 64) + 15;
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18AB9B0, 0, 0);
}

uint64_t sub_1D18AB9B0()
{
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v7, qword_1EE07DCE0);
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v1 + 8))(v2, v4);
  v8 = [v5 applicationData];
  v0[24] = v8;
  v0[2] = v0;
  v0[3] = sub_1D18ABB9C;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_49;
  v0[14] = v9;
  [v5 updateApplicationData:v8 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D18ABB9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1D18ABD24;
  }

  else
  {
    v3 = sub_1D18ABCAC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D18ABCAC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D18ABD24()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[25];

  return v5();
}

uint64_t HMHome.sectionsSortOrder.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640), (swift_dynamicCast() & 1) != 0))
  {
    return v5;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void HMHome.sectionsSortOrder.setter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E67BFC();

  v3 = sub_1D1E677EC();
  [v1 setObject:v2 forKeyedSubscript:v3];

  v4 = [v0 applicationData];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v8[4] = sub_1D18AC124;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D1C40BA8;
  v8[3] = &block_descriptor_13;
  v6 = _Block_copy(v8);
  v7 = v0;

  [v7 updateApplicationData:v4 completionHandler:v6];
  _Block_release(v6);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_13(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

void (*HMHome.sectionsSortOrder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = HMHome.sectionsSortOrder.getter();
  return sub_1D18AC1A0;
}

void sub_1D18AC1A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    HMHome.sectionsSortOrder.setter();
  }

  else
  {
    v5 = *a1;
    HMHome.sectionsSortOrder.setter();
  }
}

uint64_t HMHome.showPredictedScenesOnDashboard.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void HMHome.showPredictedScenesOnDashboard.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18AF4D0;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_6_2;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMHome.showPredictedScenesOnDashboard.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HMHome.showPredictedScenesOnDashboard.getter() & 1;
  return sub_1D18AC4A0;
}

uint64_t HMHome.actionSetsSortOrder.setter(uint64_t a1)
{
  sub_1D18AB598(a1, 0xD000000000000028, 0x80000001D1EBB9B0);
}

uint64_t (*HMHome.actionSetsSortOrder.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D18AB1A8();
  return sub_1D18AC5A8;
}

uint64_t sub_1D18AC5A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    sub_1D18AB598(v5, 0xD000000000000028, 0x80000001D1EBB9B0);
  }

  else
  {
    sub_1D18AB598(*a1, 0xD000000000000028, 0x80000001D1EBB9B0);
  }
}

uint64_t HMHome.camerasSortOrder.setter(uint64_t a1)
{
  sub_1D18AB598(a1, 0xD000000000000025, 0x80000001D1EBB9E0);
}

uint64_t (*HMHome.camerasSortOrder.modify(char **a1))()
{
  a1[1] = v1;
  *a1 = sub_1D18AB1A8();
  return sub_1D18AC70C;
}

uint64_t HMHome.sidebarRoomsSortOrder.setter(uint64_t a1)
{
  sub_1D18AB598(a1, 0xD000000000000023, 0x80000001D1EBBA70);
}

uint64_t (*HMHome.sidebarRoomsSortOrder.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D18AB1A8();
  return sub_1D18AC7F0;
}

uint64_t sub_1D18AC7F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    sub_1D18AB598(v5, 0xD000000000000023, 0x80000001D1EBBA70);
  }

  else
  {
    sub_1D18AB598(*a1, 0xD000000000000023, 0x80000001D1EBBA70);
  }
}

uint64_t HMHome.servicesSortOrder.setter(uint64_t a1)
{
  sub_1D18AB598(a1, 0xD000000000000026, 0x80000001D1EBBA10);
}

uint64_t (*HMHome.servicesSortOrder.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D18AB1A8();
  return sub_1D18AC954;
}

uint64_t sub_1D18AC954(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    sub_1D18AB598(v5, 0xD000000000000026, 0x80000001D1EBBA10);
  }

  else
  {
    sub_1D18AB598(*a1, 0xD000000000000026, 0x80000001D1EBBA10);
  }
}

uint64_t (*HMHome.cameraProfilesSortOrder.modify(char **a1))()
{
  a1[1] = v1;
  *a1 = sub_1D18AB1A8();
  return sub_1D18AF4C8;
}

uint64_t sub_1D18ACA38(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    sub_1D18AB598(v5, 0xD000000000000025, 0x80000001D1EBB9E0);
  }

  else
  {
    sub_1D18AB598(*a1, 0xD000000000000025, 0x80000001D1EBB9E0);
  }
}

uint64_t HMHome.umbrellaCategoriesSortOrder.setter(uint64_t a1)
{
  sub_1D18AB598(a1, 0xD000000000000030, 0x80000001D1EBBAD0);
}

uint64_t (*HMHome.umbrellaCategoriesSortOrder.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D18AB1A8();
  return sub_1D18ACB9C;
}

uint64_t sub_1D18ACB9C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    sub_1D18AB598(v5, 0xD000000000000030, 0x80000001D1EBBAD0);
  }

  else
  {
    sub_1D18AB598(*a1, 0xD000000000000030, 0x80000001D1EBBAD0);
  }
}

uint64_t HMHome.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = [v1 applicationData];
  v8 = sub_1D1E677EC();
  v9 = [v7 objectForKeyedSubscript_];

  if (!v9)
  {
    goto LABEL_5;
  }

  v21[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = v21[1];
  v10 = v21[2];
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
  v12 = sub_1D1E6836C();
  if (!v12)
  {
    sub_1D174E7C4(v11, v10);
LABEL_5:
    v13 = sub_1D1E669FC();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  v15 = v12;
  v16 = sub_1D1E669FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v6, 1, 1, v16);
  sub_1D18A52E4();
  sub_1D1E68C1C();
  sub_1D174E7C4(v11, v10);

  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {
    v19 = a1;
    v20 = 1;
  }

  else
  {
    (*(v17 + 32))(a1, v6, v16);
    v19 = a1;
    v20 = 0;
  }

  return (v18)(v19, v20, 1, v16);
}

uint64_t sub_1D18ACF08(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D174A548(a1, &v10 - v6);
  v8 = *a2;
  return HMHome.dateAdded.setter(v7);
}

uint64_t HMHome.dateAdded.setter(uint64_t a1)
{
  v2 = v1;
  aBlock[7] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = aBlock - v6;
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D174A548(a1, v7);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_1D1E669EC();
    if (v13(v7, 1, v8) != 1)
    {
      sub_1D1741A30(v7, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  v14 = objc_opt_self();
  v15 = sub_1D1E6694C();
  (*(v9 + 8))(v12, v8);
  aBlock[0] = 0;
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:aBlock];

  v17 = aBlock[0];
  if (v16)
  {
    v18 = sub_1D1E668BC();
    v20 = v19;

    v21 = [v2 applicationData];
    v22 = sub_1D1E6688C();
    v23 = sub_1D1E677EC();
    [v21 setObject:v22 forKeyedSubscript:v23];

    v24 = [v2 applicationData];
    v25 = swift_allocObject();
    v25[2] = v2;
    aBlock[4] = sub_1D18AF4D0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1C40BA8;
    aBlock[3] = &block_descriptor_17;
    v26 = _Block_copy(aBlock);
    v27 = v2;

    [v27 updateApplicationData:v24 completionHandler:v26];
    _Block_release(v26);

    sub_1D174E7C4(v18, v20);
  }

  else
  {
    v28 = v17;
    v29 = sub_1D1E6656C();

    swift_willThrow();
  }

  result = sub_1D1741A30(a1, &qword_1EC642570, &qword_1D1E6C6A0);
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D18AD378(uint64_t a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v4 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v12, qword_1EE07DCE0);
  *v6 = a2;
  swift_storeEnumTagMultiPayload();
  v13 = a2;
  sub_1D1E67ECC();
  return (*(v8 + 8))(v11, v7);
}

void (*HMHome.dateAdded.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  HMHome.dateAdded.getter(v4);
  return sub_1D18AD5D8;
}

void sub_1D18AD5D8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1D174A548(v3, v2);
    HMHome.dateAdded.setter(v2);
    sub_1D1741A30(v3, &qword_1EC642570, &qword_1D1E6C6A0);
  }

  else
  {
    HMHome.dateAdded.setter(v3);
  }

  free(v3);

  free(v2);
}

unint64_t HMHome.colorPickerFavorites.getter()
{
  result = sub_1D18AD70C();
  if (!result)
  {
    result = sub_1D18ADE40();
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

unint64_t sub_1D18AD690@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D18AD70C();
  if (!result)
  {
    result = sub_1D18ADE40();
    if (!result)
    {
      result = MEMORY[0x1E69E7CC0];
    }
  }

  *a2 = result;
  return result;
}

uint64_t HMHome.colorPickerFavorites.setter(uint64_t a1)
{
  sub_1D18AE40C(a1);
}

void *sub_1D18AD70C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C28, &qword_1D1E7BF50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v65 - v3;
  v72 = type metadata accessor for ColorPickerFavorite();
  v70 = *(v72 - 8);
  v5 = *(v70 + 64);
  v6 = MEMORY[0x1EEE9AC00](v72);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v65 - v9;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v0 applicationData];
  v16 = [v0 currentUser];
  v17 = [v16 uniqueIdentifier];

  sub_1D1E66A5C();
  v18 = sub_1D1E66A1C();
  v20 = v19;
  v21 = *(v11 + 8);
  v78 = v11 + 8;
  v79 = v10;
  v77 = v21;
  v21(v14, v10);
  v22 = sub_1D1E677EC();
  v23 = [v15 objectForKeyedSubscript_];

  if (!v23)
  {
    goto LABEL_55;
  }

  v81 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C20, &qword_1D1E7BF48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_55;
  }

  v24 = v80;
  if (!*(v80 + 16))
  {

    goto LABEL_55;
  }

  v25 = sub_1D171D2F0(v18, v20);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_55:

    return 0;
  }

  v28 = *(*(v24 + 56) + 8 * v25);

  v76 = *(v28 + 16);
  if (v76)
  {
    v30 = 0;
    v73 = (v70 + 56);
    v74 = v28 + 32;
    v69 = MEMORY[0x1E69E7CC0];
    v67 = (v70 + 48);
    v31 = v72;
    v75 = v28;
    while (1)
    {
      if (v30 >= *(v28 + 16))
      {
        __break(1u);
        return result;
      }

      v32 = *(v74 + 8 * v30);
      v33 = *(v31 + 24);

      sub_1D1E66A6C();
      if (!*(v32 + 16))
      {
LABEL_7:

        v77(&v8[v33], v79);
        (*v73)(v4, 1, 1, v31);
        goto LABEL_8;
      }

      v34 = sub_1D171D2F0(114, 0xE100000000000000);
      if (v35 & 1) != 0 && *(v32 + 16) && (v36 = *(*(v32 + 56) + 8 * v34), v37 = sub_1D171D2F0(103, 0xE100000000000000), (v38) && *(v32 + 16) && (v39 = *(*(v32 + 56) + 8 * v37), v40 = sub_1D171D2F0(98, 0xE100000000000000), (v41))
      {
        v42 = *(*(v32 + 56) + 8 * v40);

        v43 = *(v32 + 16);
        if (!v43)
        {
          goto LABEL_39;
        }

        v68 = v39;
        v44 = 0;
      }

      else
      {

        if (!*(v32 + 16))
        {
          goto LABEL_7;
        }

        v42 = 0;
        v68 = 0;
        v36 = 0;
        v44 = 1;
      }

      v45 = sub_1D171D2F0(0x74617265706D6574, 0xEB00000000657275);
      v47 = v46;
      v48 = 0.0;
      if (v46)
      {
        v48 = *(*(v32 + 56) + 8 * v45);
      }

      if (*(v32 + 16))
      {
        v49 = sub_1D171D2F0(6649192, 0xE300000000000000);
        if (v50)
        {
          if (*(v32 + 16))
          {
            v66 = *(*(v32 + 56) + 8 * v49);
            v51 = sub_1D171D2F0(0x6974617275746173, 0xEA00000000006E6FLL);
            if (v52)
            {
              break;
            }
          }
        }
      }

      if (v47)
      {
        goto LABEL_30;
      }

      v31 = v72;
      if (v44)
      {
        goto LABEL_7;
      }

      LOBYTE(v43) = 0;
      v39 = v68;
LABEL_39:
      *v8 = v36;
      *(v8 + 1) = v39;
      *(v8 + 2) = v42;
      v8[24] = v43;
      v56 = 1.0;
      if (*(v32 + 16))
      {
        v57 = sub_1D171D2F0(0x656E746867697262, 0xEA00000000007373);
        if (v58)
        {
          v56 = *(*(v32 + 56) + 8 * v57);
        }
      }

      if (v56 > 0.0)
      {
        v59 = v56;
      }

      else
      {
        v59 = 0.0;
      }

      if (v59 > 1.0)
      {
        v59 = 1.0;
      }

      *(v8 + 4) = v59;
      sub_1D1839588(v8, v4);
      (*v73)(v4, 0, 1, v31);
      sub_1D18395EC(v8);
      if ((*v67)(v4, 1, v31) != 1)
      {
        sub_1D18AF378(v4, v71);
        v60 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_1D177D81C(0, v60[2] + 1, 1, v60);
        }

        v62 = v60[2];
        v61 = v60[3];
        v69 = v60;
        if (v62 >= v61 >> 1)
        {
          v69 = sub_1D177D81C(v61 > 1, v62 + 1, 1, v69);
        }

        v64 = v69;
        v63 = v70;
        v69[2] = v62 + 1;
        result = sub_1D18AF378(v71, v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v62);
        goto LABEL_9;
      }

LABEL_8:
      result = sub_1D1741A30(v4, &qword_1EC645C28, &qword_1D1E7BF50);
LABEL_9:
      v28 = v75;
      if (v76 == ++v30)
      {
        goto LABEL_57;
      }
    }

    if ((v47 & 1) == 0)
    {
      v42 = 0;
      v39 = *(*(v32 + 56) + 8 * v51);
      LOBYTE(v43) = 1;
      v36 = v66;
      v31 = v72;
      goto LABEL_39;
    }

LABEL_30:
    v39 = 0;
    v42 = 0;
    v53 = round(v48);
    HIDWORD(v54) = 1089470464;
    v55 = v53 >= 65536.0 || v53 <= -1.0;
    LODWORD(v54) = llround(v48);
    if (v55)
    {
      v36 = 100;
    }

    else
    {
      v36 = v54;
    }

    LOBYTE(v43) = 2;
    v31 = v72;
    goto LABEL_39;
  }

  v69 = MEMORY[0x1E69E7CC0];
LABEL_57:

  return v69;
}

unint64_t sub_1D18ADE40()
{
  v1 = type metadata accessor for ColorPickerFavorite();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v51 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - v12;
  v14 = [v0 applicationData];
  v15 = sub_1D1E677EC();
  v16 = [v14 objectForKeyedSubscript_];

  if (!v16 || (v58 = v16, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C18, &qword_1D1E7BF40), result = swift_dynamicCast(), (result & 1) == 0))
  {
    v36 = sub_1D1E677EC();
    v37 = [v14 objectForKeyedSubscript_];

    if (v37 && (v58 = v37, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C18, &qword_1D1E7BF40), result = swift_dynamicCast(), (result & 1) != 0))
    {
      v54 = v14;
      v38 = v57;
      v39 = *(v57 + 16);
      if (v39)
      {
        v40 = 0;
        v21 = MEMORY[0x1E69E7CC0];
        while (v40 < *(v38 + 16))
        {
          v41 = *(v38 + 32 + 8 * v40);
          if (*(v41 + 16))
          {
            v42 = *(v38 + 32 + 8 * v40);

            result = sub_1D171D2F0(1886217588, 0xE400000000000000);
            if (v43)
            {
              v44 = *(*(v41 + 56) + 8 * result);
              if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_50;
              }

              if (v44 <= -9.22337204e18)
              {
                goto LABEL_51;
              }

              if (v44 >= 9.22337204e18)
              {
                goto LABEL_52;
              }

              if (v44 <= 1)
              {
                v45 = 1;
              }

              else
              {
                v45 = v44;
              }

              v46 = (0xF4240 / v45);
              if (v44 >= 16)
              {
                v47 = v46;
              }

              else
              {
                v47 = 0xFFFFLL;
              }

              v48 = &v5[*(v56 + 24)];
              sub_1D1E66A6C();

              *(v5 + 1) = 0;
              *(v5 + 2) = 0;
              *v5 = v47;
              v5[24] = 2;
              *(v5 + 4) = 0x3FF0000000000000;
              sub_1D18AF378(v5, v8);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = sub_1D177D81C(0, v21[2] + 1, 1, v21);
              }

              v50 = v21[2];
              v49 = v21[3];
              if (v50 >= v49 >> 1)
              {
                v21 = sub_1D177D81C(v49 > 1, v50 + 1, 1, v21);
              }

              v21[2] = v50 + 1;
              result = sub_1D18AF378(v8, v21 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v50);
            }

            else
            {
            }
          }

          if (v39 == ++v40)
          {
            goto LABEL_46;
          }
        }

        goto LABEL_49;
      }

      v21 = MEMORY[0x1E69E7CC0];
LABEL_46:
    }

    else
    {

      return 0;
    }

    return v21;
  }

  v18 = v57;
  v19 = *(v57 + 16);
  if (!v19)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_44:

    return v21;
  }

  v53 = v11;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  while (v20 < *(v18 + 16))
  {
    v22 = *(v18 + 32 + 8 * v20);
    if (*(v22 + 16))
    {
      v23 = *(v18 + 32 + 8 * v20);

      v24 = sub_1D171D2F0(114, 0xE100000000000000);
      if (v25 & 1) != 0 && *(v22 + 16) && (v26 = *(*(v22 + 56) + 8 * v24), v27 = sub_1D171D2F0(103, 0xE100000000000000), (v28) && *(v22 + 16) && (v29 = *(*(v22 + 56) + 8 * v27), v30 = sub_1D171D2F0(98, 0xE100000000000000), (v31))
      {
        v54 = v14;
        v52 = *(*(v22 + 56) + 8 * v30);
        v32 = v53;
        v33 = &v53[*(v56 + 24)];
        sub_1D1E66A6C();

        *v32 = v26;
        *(v32 + 8) = v29;
        *(v32 + 16) = v52;
        *(v32 + 24) = 0;
        *(v32 + 32) = 0x3FF0000000000000;
        sub_1D18AF378(v32, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D177D81C(0, v21[2] + 1, 1, v21);
        }

        v35 = v21[2];
        v34 = v21[3];
        v14 = v54;
        if (v35 >= v34 >> 1)
        {
          v21 = sub_1D177D81C(v34 > 1, v35 + 1, 1, v21);
        }

        v21[2] = v35 + 1;
        result = sub_1D18AF378(v13, v21 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v35);
      }

      else
      {
      }
    }

    if (v19 == ++v20)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void sub_1D18AE40C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ColorPickerFavorite();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v2 applicationData];
  v112 = v2;
  v15 = [v2 currentUser];
  v16 = [v15 uniqueIdentifier];

  sub_1D1E66A5C();
  v113 = sub_1D1E66A1C();
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  v116 = sub_1D18D9738(MEMORY[0x1E69E7CC0]);
  v19 = sub_1D1E677EC();
  v20 = [v14 objectForKeyedSubscript_];

  v114 = v18;
  v111 = "essoryCategories";
  if (v20)
  {
    aBlock[0] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C20, &qword_1D1E7BF48);
    if (swift_dynamicCast())
    {
      v21 = v117;

      v116 = v21;
    }
  }

  v115 = v14;
  v22 = *(a1 + 16);
  if (!v22)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_43:
    v95 = v116;
    v97 = v113;
    v96 = v114;
    if (*(v116 + 16) && (v98 = sub_1D171D2F0(v113, v114), (v99 & 1) != 0) && (v100 = *(*(v95 + 56) + 8 * v98), , , v101 = sub_1D177C1EC(v100, v25), , , (v101 & 1) != 0))
    {

      v102 = v115;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v95;
      sub_1D1754740(v25, v97, v96, isUniquelyReferenced_nonNull_native);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C18, &qword_1D1E7BF40);
      v104 = sub_1D1E675DC();
      v105 = sub_1D1E677EC();
      v102 = v115;
      [v115 setObject:v104 forKeyedSubscript:{v105, v111}];

      v106 = swift_allocObject();
      v107 = v112;
      *(v106 + 16) = v112;
      aBlock[4] = sub_1D18AF370;
      aBlock[5] = v106;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D1C40BA8;
      aBlock[3] = &block_descriptor_42_1;
      v108 = _Block_copy(aBlock);
      v109 = v102;
      v110 = v107;

      [v110 updateApplicationData:v109 completionHandler:v108];

      _Block_release(v108);
    }

    return;
  }

  v23 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v24 = *(v5 + 72);
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D1839588(v23, v8);
    v26 = *v8;
    if (v8[24] <= 1u)
    {
      break;
    }

    if (v8[24] == 2)
    {
      v133 = 0x74617265706D6574;
      v134 = 0xEB00000000657275;
      v135 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C10, &qword_1D1E6E960);
      v29 = sub_1D1E68BCC();

      v56 = v133;
      v57 = v134;
      v58 = v135;

      v59 = sub_1D171D2F0(v56, v57);
      if (v60)
      {
        goto LABEL_55;
      }

      v29[(v59 >> 6) + 8] |= 1 << v59;
      v61 = (v29[6] + 16 * v59);
      *v61 = v56;
      v61[1] = v57;
      *(v29[7] + 8 * v59) = v58;
      v62 = v29[2];
      v38 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v38)
      {
        goto LABEL_56;
      }

      v29[2] = v63;

      sub_1D1741A30(&v133, qword_1EC644948, &qword_1D1E76918);
LABEL_26:
      v79 = *(v8 + 4);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v29;
      v82 = sub_1D171D2F0(0x656E746867697262, 0xEA00000000007373);
      v83 = v29[2];
      v84 = (v81 & 1) == 0;
      v85 = v83 + v84;
      if (__OFADD__(v83, v84))
      {
        goto LABEL_51;
      }

      v86 = v81;
      if (v29[3] >= v85)
      {
        if (v80)
        {
          v89 = aBlock[0];
          if ((v81 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_1D17382E8();
          v89 = aBlock[0];
          if ((v86 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_1D17271B8(v85, v80);
        v87 = sub_1D171D2F0(0x656E746867697262, 0xEA00000000007373);
        if ((v86 & 1) != (v88 & 1))
        {
          goto LABEL_57;
        }

        v82 = v87;
        v89 = aBlock[0];
        if ((v86 & 1) == 0)
        {
LABEL_30:
          v89[(v82 >> 6) + 8] |= 1 << v82;
          v90 = (v89[6] + 16 * v82);
          *v90 = 0x656E746867697262;
          v90[1] = 0xEA00000000007373;
          *(v89[7] + 8 * v82) = v79;
          v91 = v89[2];
          v38 = __OFADD__(v91, 1);
          v92 = v91 + 1;
          if (v38)
          {
            goto LABEL_54;
          }

          v89[2] = v92;
          goto LABEL_35;
        }
      }

      *(v89[7] + 8 * v82) = v79;
LABEL_35:
      sub_1D18395EC(v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D177DD3C(0, v25[2] + 1, 1, v25);
      }

      v94 = v25[2];
      v93 = v25[3];
      if (v94 >= v93 >> 1)
      {
        v25 = sub_1D177DD3C((v93 > 1), v94 + 1, 1, v25);
      }

      v25[2] = v94 + 1;
      v25[v94 + 4] = v89;
      goto LABEL_7;
    }

    sub_1D18395EC(v8);
LABEL_7:
    v23 += v24;
    if (!--v22)
    {
      goto LABEL_43;
    }
  }

  v27 = *(v8 + 1);
  if (v8[24])
  {
    v127 = 6649192;
    v128 = 0xE300000000000000;
    v129 = v26;
    v130 = 0x6974617275746173;
    v131 = 0xEA00000000006E6FLL;
    v132 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C10, &qword_1D1E6E960);
    v29 = sub_1D1E68BCC();

    v64 = v127;
    v65 = v128;
    v66 = v129;

    v67 = sub_1D171D2F0(v64, v65);
    if (v68)
    {
      goto LABEL_52;
    }

    *(v29 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v67;
    v69 = (v29[6] + 16 * v67);
    *v69 = v64;
    v69[1] = v65;
    *(v29[7] + 8 * v67) = v66;
    v70 = v29[2];
    v38 = __OFADD__(v70, 1);
    v71 = v70 + 1;
    if (v38)
    {
      goto LABEL_53;
    }

    v29[2] = v71;
    v72 = v130;
    v73 = v131;
    v74 = v132;

    v75 = sub_1D171D2F0(v72, v73);
    if (v76)
    {
      goto LABEL_52;
    }

    *(v29 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v75;
    v77 = (v29[6] + 16 * v75);
    *v77 = v72;
    v77[1] = v73;
    *(v29[7] + 8 * v75) = v74;
    v78 = v29[2];
    v38 = __OFADD__(v78, 1);
    v55 = v78 + 1;
    if (v38)
    {
      goto LABEL_53;
    }

LABEL_25:
    v29[2] = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC644948, &qword_1D1E76918);
    swift_arrayDestroy();
    goto LABEL_26;
  }

  v28 = *(v8 + 2);
  v118 = 114;
  v119 = 0xE100000000000000;
  v120 = v26;
  v121 = 103;
  v122 = 0xE100000000000000;
  v123 = v27;
  v124 = 98;
  v125 = 0xE100000000000000;
  v126 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C10, &qword_1D1E6E960);
  v29 = sub_1D1E68BCC();

  v30 = v118;
  v31 = v119;
  v32 = v120;

  v33 = sub_1D171D2F0(v30, v31);
  if ((v34 & 1) == 0)
  {
    v35 = v29 + 8;
    *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v33;
    v36 = (v29[6] + 16 * v33);
    *v36 = v30;
    v36[1] = v31;
    *(v29[7] + 8 * v33) = v32;
    v37 = v29[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_50;
    }

    v29[2] = v39;
    v40 = v121;
    v41 = v122;
    v42 = v123;

    v43 = sub_1D171D2F0(v40, v41);
    if ((v44 & 1) == 0)
    {
      *(v35 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v45 = (v29[6] + 16 * v43);
      *v45 = v40;
      v45[1] = v41;
      *(v29[7] + 8 * v43) = v42;
      v46 = v29[2];
      v38 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v38)
      {
        goto LABEL_50;
      }

      v29[2] = v47;
      v48 = v124;
      v49 = v125;
      v50 = v126;

      v51 = sub_1D171D2F0(v48, v49);
      if ((v52 & 1) == 0)
      {
        *(v35 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v53 = (v29[6] + 16 * v51);
        *v53 = v48;
        v53[1] = v49;
        *(v29[7] + 8 * v51) = v50;
        v54 = v29[2];
        v38 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v38)
        {
          goto LABEL_50;
        }

        goto LABEL_25;
      }
    }
  }

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
  sub_1D1E690FC();
  __break(1u);
}

uint64_t (*HMHome.colorPickerFavorites.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = sub_1D18AD70C();
  if (!v3)
  {
    v3 = sub_1D18ADE40();
    if (!v3)
    {
      v3 = MEMORY[0x1E69E7CC0];
    }
  }

  *a1 = v3;
  return sub_1D18AEEF8;
}

uint64_t sub_1D18AEEF8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    sub_1D18AE40C(v4);
  }

  else
  {
    sub_1D18AE40C(v3);
  }
}

void sub_1D18AEF4C(NSObject *a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  if (a1)
  {
    v13 = a1;
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D1E6709C();
    __swift_project_value_buffer(v14, qword_1EE07B5D8);
    v15 = a1;
    v29 = sub_1D1E6707C();
    v16 = sub_1D1E6833C();

    if (os_log_type_enabled(v29, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1D16EC000, v29, v16, "Updating color picker favorites FAILED %@", v17, 0xCu);
      sub_1D1741A30(v18, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);

      v21 = v29;
    }

    else
    {

      v21 = a1;
    }
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D1E6709C();
    __swift_project_value_buffer(v22, qword_1EE07B5D8);
    v23 = sub_1D1E6707C();
    v24 = sub_1D1E6835C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D16EC000, v23, v24, "Updated color picker favorites", v25, 2u);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    if (qword_1EE07DC88 != -1)
    {
      swift_once();
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
    __swift_project_value_buffer(v26, qword_1EE07DCE0);
    *v7 = a2;
    swift_storeEnumTagMultiPayload();
    v27 = a2;
    sub_1D1E67ECC();
    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1D18AF378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorPickerFavorite();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18AF3DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return sub_1D18AB8B4(a1, v4, v5, v6);
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  return sub_1D1741970(a2 + 32, a1 + 32);
}

{
  return sub_1D1741970(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_48(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t HMHomeManager.homesSortOrder.setter(uint64_t a1)
{
  sub_1D18AF55C(a1, 0xD000000000000026, 0x80000001D1EBBB50);
}

uint64_t sub_1D18AF55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - v10;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v4 applicationData];
  v18 = v17;
  v39 = MEMORY[0x1E69E7CC0];
  v19 = a1;
  v20 = *(a1 + 16);
  if (v20)
  {
    v33 = v17;
    v34 = a2;
    v35 = a3;
    v36 = v11;
    v22 = *(v13 + 16);
    v21 = v13 + 16;
    v37 = v4;
    v38 = v22;
    v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v24 = *(v21 + 56);
    do
    {
      v38(v16, v23, v12);
      sub_1D1E66A1C();
      sub_1D1E677EC();

      v25 = (*(v21 - 8))(v16, v12);
      MEMORY[0x1D3891220](v25);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      v23 += v24;
      --v20;
    }

    while (v20);
    v11 = v36;
    v4 = v37;
    v18 = v33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  v26 = sub_1D1E67BFC();

  v27 = sub_1D1E677EC();
  [v18 setObject:v26 forKeyedSubscript:v27];

  v28 = sub_1D1E67E7C();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v4;
  v30 = v4;
  sub_1D1B02368(0, 0, v11, &unk_1D1E7BF90, v29);
}

uint64_t (*HMHomeManager.homesSortOrder.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D16F8F48(0xD000000000000026, 0x80000001D1EBBB50);
  return sub_1D18AF8D8;
}

uint64_t sub_1D18AF8D8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    sub_1D18AF55C(v5, 0xD000000000000026, 0x80000001D1EBBB50);
  }

  else
  {
    sub_1D18AF55C(*a1, 0xD000000000000026, 0x80000001D1EBBB50);
  }
}

uint64_t sub_1D18AF95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v4[22] = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v4[24] = v7;
  v8 = *(v7 - 8);
  v4[25] = v8;
  v9 = *(v8 + 64) + 15;
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18AFA58, 0, 0);
}

uint64_t sub_1D18AFA58()
{
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v7, qword_1EE07DCE0);
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v1 + 8))(v2, v4);
  v8 = [v5 applicationData];
  v0[27] = v8;
  v0[2] = v0;
  v0[3] = sub_1D18AFC44;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_14;
  v0[14] = v9;
  [v5 updateApplicationData:v8 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D18AFC44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1D18AFE14;
  }

  else
  {
    v3 = sub_1D18AFD54;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D18AFD54()
{
  swift_beginAccess();
  v1 = off_1EC645C30;
  if (off_1EC645C30)
  {

    v1(v2);
    sub_1D17169C0(v1);
  }

  v3 = *(v0 + 208);
  v4 = *(v0 + 184);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D18AFE14()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[28];

  return v5();
}

void *static HMHomeManager.applicationDataWriteCompletion.getter()
{
  swift_beginAccess();
  v0 = off_1EC645C30;
  sub_1D18AFEFC(off_1EC645C30);
  return v0;
}

uint64_t sub_1D18AFEFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static HMHomeManager.applicationDataWriteCompletion.setter(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = off_1EC645C30;
  off_1EC645C30 = a1;
  qword_1EC645C38 = a2;
  return sub_1D17169C0(v4);
}

uint64_t sub_1D18AFFC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return sub_1D18AF95C(a1, v4, v5, v6);
}

uint64_t HMMediaSystem.shouldShowInDashboard.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void HMMediaSystem.shouldShowInDashboard.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18B139C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_15;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMMediaSystem.shouldShowInDashboard.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HMMediaSystem.shouldShowInDashboard.getter() & 1;
  return sub_1D18B034C;
}

uint64_t HMMediaSystem.isFavorite.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

void HMMediaSystem.isFavorite.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18B139C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_6_3;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMMediaSystem.isFavorite.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HMMediaSystem.isFavorite.getter() & 1;
  return sub_1D18B061C;
}

uint64_t HMMediaSystem.contributesToHomeStatus.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void HMMediaSystem.contributesToHomeStatus.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18B08A0;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_13_1;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMMediaSystem.contributesToHomeStatus.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HMMediaSystem.contributesToHomeStatus.getter() & 1;
  return sub_1D18B0908;
}

uint64_t HMMediaSystem.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = [v1 applicationData];
  v8 = sub_1D1E677EC();
  v9 = [v7 objectForKeyedSubscript_];

  if (!v9)
  {
    goto LABEL_5;
  }

  v21[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = v21[1];
  v10 = v21[2];
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
  v12 = sub_1D1E6836C();
  if (!v12)
  {
    sub_1D174E7C4(v11, v10);
LABEL_5:
    v13 = sub_1D1E669FC();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  v15 = v12;
  v16 = sub_1D1E669FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v6, 1, 1, v16);
  sub_1D18A52E4();
  sub_1D1E68C1C();
  sub_1D174E7C4(v11, v10);

  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {
    v19 = a1;
    v20 = 1;
  }

  else
  {
    (*(v17 + 32))(a1, v6, v16);
    v19 = a1;
    v20 = 0;
  }

  return (v18)(v19, v20, 1, v16);
}

uint64_t sub_1D18B0C18(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D174A548(a1, &v10 - v6);
  v8 = *a2;
  return HMMediaSystem.dateAdded.setter(v7);
}

uint64_t HMMediaSystem.dateAdded.setter(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29[-v5];
  sub_1D174A548(a1, &v29[-v5]);
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC642570, &qword_1D1E6C6A0);
    v35 = 0u;
    v36 = 0u;
    v9 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v32 = sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
    *&aBlock = v9;
    if (*(&v36 + 1))
    {
      sub_1D1741A30(&v35, &qword_1EC649700, &qword_1D1E6E910);
    }
  }

  else
  {
    *(&v36 + 1) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    sub_1D1742194(&v35, &aBlock);
  }

  v11 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&aBlock, v32);
  v12 = sub_1D1E6903C();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *&aBlock = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&aBlock];
  swift_unknownObjectRelease();
  v14 = aBlock;
  if (v13)
  {
    v15 = sub_1D1E668BC();
    v17 = v16;

    v18 = [v1 applicationData];
    v19 = sub_1D1E6688C();
    v20 = sub_1D1E677EC();
    [v18 setObject:v19 forKeyedSubscript:v20];

    v21 = [v1 applicationData];
    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    v33 = sub_1D18B139C;
    v34 = v22;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v31 = sub_1D1C40BA8;
    v32 = &block_descriptor_20_2;
    v23 = _Block_copy(&aBlock);
    v24 = v1;

    [v24 updateApplicationData:v21 completionHandler:v23];
    _Block_release(v23);

    sub_1D174E7C4(v15, v17);
  }

  else
  {
    v25 = v14;
    v26 = sub_1D1E6656C();

    swift_willThrow();
  }

  result = sub_1D1741A30(a1, &qword_1EC642570, &qword_1D1E6C6A0);
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D18B1090(uint64_t a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v4 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v12, qword_1EE07DCE0);
  *v6 = [a2 home];
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  return (*(v8 + 8))(v11, v7);
}

void (*HMMediaSystem.dateAdded.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  HMMediaSystem.dateAdded.getter(v4);
  return sub_1D18B1304;
}

void sub_1D18B1304(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1D174A548(v3, v2);
    HMMediaSystem.dateAdded.setter(v2);
    sub_1D1741A30(v3, &qword_1EC642570, &qword_1D1E6C6A0);
  }

  else
  {
    HMMediaSystem.dateAdded.setter(v3);
  }

  free(v3);

  free(v2);
}

unint64_t sub_1D18B13F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v53 - v3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 applicationData];
  v11 = [v10 dictionary];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  v12 = sub_1D1E675FC();

  v13 = sub_1D18B1930(v12);

  if (v13)
  {
    v60 = v9;
    v61 = v4;
    v62 = v5;
    v63 = sub_1D18D52F0(MEMORY[0x1E69E7CC0]);
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;
    v57 = v6;
    v58 = (v6 + 32);
    v59 = (v6 + 48);

    v20 = 0;
    v64 = "erStrings_roomServices";
    v65 = v13;
    while (v17)
    {
LABEL_11:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = (*(v13 + 48) + ((v20 << 10) | (16 * v22)));
      v24 = *v23;
      v25 = v23[1];

      if ((sub_1D1E679AC() & 1) == 0)
      {
        goto LABEL_5;
      }

      v26 = sub_1D1E678FC();
      v27 = sub_1D18B1E64(v26, v24, v25);
      v29 = v28;
      v31 = v30;
      v33 = v32;

      MEMORY[0x1D3890F10](v27, v29, v31, v33);

      v13 = v65;
      v34 = sub_1D1E68C2C();

      if (v34 > 7)
      {
        goto LABEL_5;
      }

      if (*(v13 + 16))
      {
        v35 = sub_1D171D2F0(v24, v25);
        v37 = v36;

        if (v37)
        {
          v38 = *(*(*(v13 + 56) + 8 * v35) + 16);

          v55 = v38;
          if (v38)
          {
            v39 = 0;
            v40 = (result + 40);
            v56 = MEMORY[0x1E69E7CC0];
            v54 = result;
            while (v39 < *(result + 16))
            {
              v42 = *(v40 - 1);
              v41 = *v40;

              v43 = v61;
              sub_1D1E66A0C();

              v44 = v62;
              if ((*v59)(v43, 1, v62) == 1)
              {
                sub_1D1835548(v43);
              }

              else
              {
                v45 = *v58;
                (*v58)(v60, v43, v44);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v56 = sub_1D177D0AC(0, *(v56 + 2) + 1, 1, v56);
                }

                v47 = *(v56 + 2);
                v46 = *(v56 + 3);
                if (v47 >= v46 >> 1)
                {
                  v56 = sub_1D177D0AC(v46 > 1, v47 + 1, 1, v56);
                }

                v49 = v56;
                v48 = v57;
                *(v56 + 2) = v47 + 1;
                v45(&v49[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47], v60, v62);
              }

              ++v39;
              v40 += 2;
              result = v54;
              if (v55 == v39)
              {
                goto LABEL_27;
              }
            }

            goto LABEL_33;
          }

          v56 = MEMORY[0x1E69E7CC0];
LABEL_27:

          v50 = v63;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v50;
          result = sub_1D1753640(v56, v34, isUniquelyReferenced_nonNull_native);
          v13 = v65;
          v63 = v66;
        }
      }

      else
      {
LABEL_5:
      }
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        return v63;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        v20 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];

    return sub_1D18D52F0(v52);
  }

  return result;
}

unint64_t sub_1D18B1930(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C40, qword_1D1E7BFB0);
    v2 = sub_1D1E68BCC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v25 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1D171D2F0(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v24;

          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D18B1B7C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = [v1 applicationData];
  v8 = sub_1D1E677EC();
  v9 = [v7 objectForKeyedSubscript_];

  if (!v9)
  {
    goto LABEL_5;
  }

  v21[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = v21[1];
  v10 = v21[2];
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
  v12 = sub_1D1E6836C();
  if (!v12)
  {
    sub_1D174E7C4(v11, v10);
LABEL_5:
    v13 = sub_1D1E669FC();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  v15 = v12;
  v16 = sub_1D1E669FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v6, 1, 1, v16);
  sub_1D18A52E4();
  sub_1D1E68C1C();
  sub_1D174E7C4(v11, v10);

  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {
    v19 = a1;
    v20 = 1;
  }

  else
  {
    (*(v17 + 32))(a1, v6, v16);
    v19 = a1;
    v20 = 0;
  }

  return (v18)(v19, v20, 1, v16);
}

unint64_t sub_1D18B1E64(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1D1E6791C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1D1E67A0C();
}

uint64_t HMService.shouldShowInDashboard.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void HMService.shouldShowInDashboard.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18B3BB4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_16;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMService.shouldShowInDashboard.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HMService.shouldShowInDashboard.getter() & 1;
  return sub_1D18B2244;
}

uint64_t HMService.isFavorite.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

void HMService.isFavorite.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18B3BB4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_6_4;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMService.isFavorite.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HMService.isFavorite.getter() & 1;
  return sub_1D18B2514;
}

uint64_t HMService.contributesToHomeStatus.getter()
{
  v1 = v0;
  v2 = [v0 serviceType];
  v3 = sub_1D1E6781C();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  ServiceKind.init(rawValue:)(v6);
  if (ServiceKind.rawValue.getter() != 0xD000000000000024 || 0x80000001D1EB3430 != v7)
  {
    v9 = sub_1D1E6904C();

    v8 = 0;
    if (v9)
    {
      goto LABEL_8;
    }

    v10 = [v1 serviceType];
    v11 = sub_1D1E6781C();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    ServiceKind.init(rawValue:)(v14);
    if (ServiceKind.rawValue.getter() != 0xD000000000000024 || 0x80000001D1EB3400 != v15)
    {
      v16 = sub_1D1E6904C();

      v8 = v16 ^ 1;
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:
  v17 = [v1 applicationData];
  v18 = sub_1D1E677EC();
  v19 = [v17 objectForKeyedSubscript_];

  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    if (swift_dynamicCast())
    {
      v8 = v21;
    }
  }

  return v8 & 1;
}

void HMService.contributesToHomeStatus.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18B3AC4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_13_2;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMService.contributesToHomeStatus.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HMService.contributesToHomeStatus.getter() & 1;
  return sub_1D18B2930;
}

uint64_t HMService.customIconSFSymbol.getter()
{
  v0 = HMService.customIconSymbol.getter();
  v2 = v1;
  if (v1)
  {

    v3._countAndFlagsBits = v0;
    v3._object = v2;
    HFCAPackageIconIdentifier.init(rawValue:)(v3);
    if (v7 != 65)
    {

      v6 = v7;
      static IconSymbol.convertFromCAPackageIcon(iconIdentifier:)(&v6, &v5);
      return IconSymbol.rawValue.getter();
    }
  }

  return v0;
}

uint64_t HMService.customIconSymbol.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    v19 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    if (swift_dynamicCast())
    {
      if ((sub_1D1E679AC() & 1) == 0)
      {
        return v18;
      }

      v4 = _s13HomeDataModel24LegacyHFImageIdentifiersO8rawValueACSgSS_tcfC_0();
      if (v4 != 73)
      {
        if (qword_1EC642240 != -1)
        {
          v16 = v4;
          swift_once();
          v4 = v16;
        }

        v5 = qword_1EC6BE110;
        v6 = LegacyHFImageIdentifiers.rawValue.getter(v4);
        if (*(v5 + 16))
        {
          v8 = sub_1D171D2F0(v6, v7);
          v10 = v9;

          if (v10)
          {
            v11 = (*(v5 + 56) + 16 * v8);
            v12 = *v11;
            v13 = v11[1];

            v14._countAndFlagsBits = v12;
            v14._object = v13;
            HFCAPackageIconIdentifier.init(rawValue:)(v14);
            if (v18 != 65)
            {
              LOBYTE(v19) = v18;
              static IconSymbol.convertFromCAPackageIcon(iconIdentifier:)(&v19, &v17);
              return IconSymbol.rawValue.getter();
            }
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

void HMService.customIconSymbol.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [v2 applicationData];
    v4 = sub_1D1E677EC();

    v5 = sub_1D1E677EC();
    [v3 setObject:v4 forKeyedSubscript:v5];
  }

  else
  {
    v4 = [v2 applicationData];
    v5 = sub_1D1E677EC();
    [v4 setObject:0 forKeyedSubscript:v5];
  }

  v6 = [v2 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v10[4] = sub_1D18B3BB4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_20_3;
  v8 = _Block_copy(v10);
  v9 = v2;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

uint64_t (*HMService.customIconSFSymbol.modify(uint64_t *a1))()
{
  a1[2] = v1;
  v3 = HMService.customIconSymbol.getter();
  v5 = v4;
  if (v4)
  {

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    HFCAPackageIconIdentifier.init(rawValue:)(v6);
    if (v11 != 65)
    {

      v10 = v11;
      static IconSymbol.convertFromCAPackageIcon(iconIdentifier:)(&v10, &v9);
      v3 = IconSymbol.rawValue.getter();
      v5 = v7;
    }
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D18B2EF0;
}

void (*HMService.customIconSymbol.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = HMService.customIconSymbol.getter();
  a1[1] = v3;
  return sub_1D18B300C;
}

void sub_1D18B300C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    HMService.customIconSymbol.setter(v3, v2);
  }

  else
  {
    HMService.customIconSymbol.setter(*a1, v2);
  }
}

uint64_t HMService.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = [v1 applicationData];
  v8 = sub_1D1E677EC();
  v9 = [v7 objectForKeyedSubscript_];

  if (!v9)
  {
    goto LABEL_5;
  }

  v21[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = v21[1];
  v10 = v21[2];
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
  v12 = sub_1D1E6836C();
  if (!v12)
  {
    sub_1D174E7C4(v11, v10);
LABEL_5:
    v13 = sub_1D1E669FC();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  v15 = v12;
  v16 = sub_1D1E669FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v6, 1, 1, v16);
  sub_1D18A52E4();
  sub_1D1E68C1C();
  sub_1D174E7C4(v11, v10);

  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {
    v19 = a1;
    v20 = 1;
  }

  else
  {
    (*(v17 + 32))(a1, v6, v16);
    v19 = a1;
    v20 = 0;
  }

  return (v18)(v19, v20, 1, v16);
}

uint64_t sub_1D18B3368(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D174A548(a1, &v10 - v6);
  v8 = *a2;
  return HMService.dateAdded.setter(v7);
}

uint64_t HMService.dateAdded.setter(uint64_t a1)
{
  v2 = v1;
  aBlock[7] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = aBlock - v6;
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D174A548(a1, v7);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_1D1E669EC();
    if (v13(v7, 1, v8) != 1)
    {
      sub_1D18B3AE0(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  v14 = objc_opt_self();
  v15 = sub_1D1E6694C();
  (*(v9 + 8))(v12, v8);
  aBlock[0] = 0;
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:aBlock];

  v17 = aBlock[0];
  if (v16)
  {
    v18 = sub_1D1E668BC();
    v20 = v19;

    v21 = [v2 applicationData];
    v22 = sub_1D1E6688C();
    v23 = sub_1D1E677EC();
    [v21 setObject:v22 forKeyedSubscript:v23];

    v24 = [v2 applicationData];
    v25 = swift_allocObject();
    v25[2] = v2;
    aBlock[4] = sub_1D18B3BB4;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1C40BA8;
    aBlock[3] = &block_descriptor_27_1;
    v26 = _Block_copy(aBlock);
    v27 = v2;

    [v27 updateApplicationData:v24 completionHandler:v26];
    _Block_release(v26);

    sub_1D174E7C4(v18, v20);
  }

  else
  {
    v28 = v17;
    v29 = sub_1D1E6656C();

    swift_willThrow();
  }

  result = sub_1D18B3AE0(a1);
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D18B37B8(uint64_t a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v4 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v12, qword_1EE07DCE0);
  v13 = [a2 accessory];
  v14 = [v13 home];

  *v6 = v14;
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  return (*(v8 + 8))(v11, v7);
}

void (*HMService.dateAdded.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  HMService.dateAdded.getter(v4);
  return sub_1D18B3A54;
}

void sub_1D18B3A54(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1D174A548(v3, v2);
    HMService.dateAdded.setter(v2);
    sub_1D18B3AE0(v3);
  }

  else
  {
    HMService.dateAdded.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t sub_1D18B3AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t keypath_set_33Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t HMServiceGroup.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = [v1 applicationData];
  v8 = sub_1D1E677EC();
  v9 = [v7 objectForKeyedSubscript_];

  if (!v9)
  {
    goto LABEL_5;
  }

  v21[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = v21[1];
  v10 = v21[2];
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
  v12 = sub_1D1E6836C();
  if (!v12)
  {
    sub_1D174E7C4(v11, v10);
LABEL_5:
    v13 = sub_1D1E669FC();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  v15 = v12;
  v16 = sub_1D1E669FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v6, 1, 1, v16);
  sub_1D18A52E4();
  sub_1D1E68C1C();
  sub_1D174E7C4(v11, v10);

  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {
    v19 = a1;
    v20 = 1;
  }

  else
  {
    (*(v17 + 32))(a1, v6, v16);
    v19 = a1;
    v20 = 0;
  }

  return (v18)(v19, v20, 1, v16);
}

uint64_t sub_1D18B3EA0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D174A548(a1, &v10 - v6);
  v8 = *a2;
  return HMServiceGroup.dateAdded.setter(v7);
}

uint64_t HMServiceGroup.dateAdded.setter(uint64_t a1)
{
  v2 = v1;
  aBlock[7] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = aBlock - v6;
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D174A548(a1, v7);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_1D1E669EC();
    if (v13(v7, 1, v8) != 1)
    {
      sub_1D18B3AE0(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  v14 = objc_opt_self();
  v15 = sub_1D1E6694C();
  (*(v9 + 8))(v12, v8);
  aBlock[0] = 0;
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:aBlock];

  v17 = aBlock[0];
  if (v16)
  {
    v18 = sub_1D1E668BC();
    v20 = v19;

    v21 = [v2 applicationData];
    v22 = sub_1D1E6688C();
    v23 = sub_1D1E677EC();
    [v21 setObject:v22 forKeyedSubscript:v23];

    v24 = [v2 applicationData];
    v25 = swift_allocObject();
    v25[2] = v2;
    aBlock[4] = sub_1D18B462C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1C40BA8;
    aBlock[3] = &block_descriptor_17;
    v26 = _Block_copy(aBlock);
    v27 = v2;

    [v27 updateApplicationData:v24 completionHandler:v26];
    _Block_release(v26);

    sub_1D174E7C4(v18, v20);
  }

  else
  {
    v28 = v17;
    v29 = sub_1D1E6656C();

    swift_willThrow();
  }

  result = sub_1D18B3AE0(a1);
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D18B42F0(uint64_t a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v4 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_1EE07DCE0);
  (*(v8 + 16))(v11, v17, v7);
  v18 = [a2 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v19 = sub_1D1E67C1C();

  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  result = sub_1D1E6873C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1D3891EF0](0, v19);
    goto LABEL_8;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v19 + 32);
LABEL_8:
    v22 = v21;
LABEL_11:

    v23 = [v22 accessory];

    v24 = [v23 home];
    *v6 = v24;
    swift_storeEnumTagMultiPayload();
    sub_1D1E67ECC();
    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMServiceGroup.dateAdded.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  HMServiceGroup.dateAdded.getter(v4);
  return sub_1D18B4708;
}

void sub_1D18B4708(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1D174A548(v3, v2);
    HMServiceGroup.dateAdded.setter(v2);
    sub_1D18B3AE0(v3);
  }

  else
  {
    HMServiceGroup.dateAdded.setter(v3);
  }

  free(v3);

  free(v2);
}

void sub_1D18B47DC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = [a1 home];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D1E682DC();
    if (v16)
    {
    }

    else
    {
      v17 = v15;
      v24 = *(v2 + 152);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
      inited = swift_initStackObject();
      v26 = v9;
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v17;
      v19 = sub_1D179CDAC(inited);
      swift_setDeallocating();
      v25 = *(*v24 + 120);
      v20 = *(v4 + 44);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
      (*(*(v21 - 8) + 56))(&v7[v20], 1, 1, v21);
      *v7 = v19;
      *(v7 + 1) = v14;
      v7[16] = 1;
      v22 = v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
      sub_1D1E67ECC();

      (*(v26 + 8))(v12, v8);
    }
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_1D18B4A8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650100, &qword_1D1E7BFE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6 + 32;
  v8 = [a1 home];
  if (!v8)
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v9 = v8;
  v10 = sub_1D1E682DC();
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    if (qword_1EE07DC68 != -1)
    {
      swift_once();
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500F0, &unk_1D1E7C000);
    v20 = __swift_project_value_buffer(v13, qword_1EE07DCC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v12;
    v15 = sub_1D179CDAC(inited);
    swift_setDeallocating();
    v23[0] = v15;
    v23[1] = v9;
    v24 = 1;
    v16 = v9;
    sub_1D1E67ECC();
    (*(v4 + 8))(v7, v3);
  }

  v27 = a1;
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C48, &qword_1D1E7BFF0);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(v21, v23);
    swift_beginAccess();
    if (!qword_1EE07AE00)
    {
      v18 = v25;
      v19 = v26;
      __swift_project_boxed_opaque_existential_1(v23, v25);
      (*(v19 + 8))(v18, v19);
    }

    __swift_destroy_boxed_opaque_existential_1(v23);
    if (!_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0())
    {
      goto LABEL_16;
    }
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1D1741A30(v21, &qword_1EC645C50, &qword_1D1E7BFF8);
    if (!_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0())
    {
      goto LABEL_16;
    }
  }

  sub_1D18B47DC(v17);
  if (v1)
  {

    return;
  }

LABEL_16:
}

void sub_1D18B4DB8(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650100, &qword_1D1E7BFE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  v10 = [a1 home];
  if (!v10)
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v11 = v10;
  v12 = sub_1D1E682DC();
  if ((v13 & 1) == 0)
  {
    v14 = v12;
    v23 = a2;
    if (qword_1EE07DC68 != -1)
    {
      swift_once();
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500F0, &unk_1D1E7C000);
    v22[1] = __swift_project_value_buffer(v15, qword_1EE07DCC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v14;
    v17 = sub_1D179CDAC(inited);
    swift_setDeallocating();
    v26[0] = v17;
    v26[1] = v11;
    v27 = 1;
    v18 = v11;
    sub_1D1E67ECC();
    (*(v6 + 8))(v9, v5);
    a2 = v23;
  }

  v30 = v11;
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644920, &qword_1D1E768A0);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(v24, v26);
    swift_beginAccess();
    if (!qword_1EE07AE00)
    {
      v20 = v28;
      v21 = v29;
      __swift_project_boxed_opaque_existential_1(v26, v28);
      (*(v21 + 24))(a2, a1, v20, v21);
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
    if (!_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0())
    {
      goto LABEL_16;
    }
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_1D1741A30(v24, &qword_1EC644928, &qword_1D1E768A8);
    if (!_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0())
    {
      goto LABEL_16;
    }
  }

  sub_1D18B47DC(a1);
  if (v2)
  {

    return;
  }

LABEL_16:
}

void sub_1D18B50F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650100, &qword_1D1E7BFE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6 + 32;
  v8 = [a1 home];
  if (!v8)
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v9 = v8;
  v10 = sub_1D1E682DC();
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    if (qword_1EE07DC68 != -1)
    {
      swift_once();
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500F0, &unk_1D1E7C000);
    v20 = __swift_project_value_buffer(v13, qword_1EE07DCC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v12;
    v15 = sub_1D179CDAC(inited);
    swift_setDeallocating();
    v23[0] = v15;
    v23[1] = v9;
    v24 = 1;
    v16 = v9;
    sub_1D1E67ECC();
    (*(v4 + 8))(v7, v3);
  }

  v27 = a1;
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C48, &qword_1D1E7BFF0);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(v21, v23);
    swift_beginAccess();
    if (!qword_1EE07AE00)
    {
      v18 = v25;
      v19 = v26;
      __swift_project_boxed_opaque_existential_1(v23, v25);
      (*(v19 + 16))(v18, v19);
    }

    __swift_destroy_boxed_opaque_existential_1(v23);
    if (!_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0())
    {
      goto LABEL_16;
    }
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1D1741A30(v21, &qword_1EC645C50, &qword_1D1E7BFF8);
    if (!_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0())
    {
      goto LABEL_16;
    }
  }

  sub_1D18B47DC(v17);
  if (v1)
  {

    return;
  }

LABEL_16:
}

uint64_t HMAccessory.supportsAlarmsAndTimers.getter()
{
  v1 = [v0 category];
  v2 = [v1 categoryType];

  v3 = sub_1D1E6781C();
  v5 = v4;

  v6 = *MEMORY[0x1E696C9B0];
  if (v3 == sub_1D1E6781C() && v5 == v7)
  {
  }

  else
  {
    v9 = sub_1D1E6904C();

    if ((v9 & 1) == 0)
    {
      result = [v0 siriEndpointProfile];
      if (!result)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t HMAccessory.categoryType.getter()
{
  v1 = [v0 category];
  v2 = [v1 categoryType];

  v3 = sub_1D1E6781C();
  return v3;
}

unint64_t HMAccessory.specialMediaCategory.getter@<X0>(uint64_t a1@<X8>)
{
  static StaticAccessory.SpecialMediaCategory.siriEndpoint(from:)(v1, &v33);
  v3 = v34;
  if (v34 != 255)
  {
    result = v33;
    goto LABEL_18;
  }

  v5 = [v1 category];
  v6 = [v5 categoryType];

  v7 = sub_1D1E6781C();
  v9 = v8;

  v10 = *MEMORY[0x1E696C9B8];
  if (sub_1D1E6781C() == v7 && v11 == v9)
  {
    goto LABEL_16;
  }

  v13 = sub_1D1E6904C();

  if (v13)
  {
LABEL_17:

    result = HMAccessory.customNearbyAccessoryIdentifiers.getter();
    v3 = 0;
    goto LABEL_18;
  }

  v14 = *MEMORY[0x1E696CA40];
  if (sub_1D1E6781C() == v7 && v15 == v9)
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = sub_1D1E6904C();

  if (v17)
  {
    goto LABEL_17;
  }

  v18 = *MEMORY[0x1E696C960];
  if (sub_1D1E6781C() == v7 && v19 == v9)
  {

LABEL_20:

    result = 0;
    v3 = 3;
    goto LABEL_18;
  }

  v20 = sub_1D1E6904C();

  if (v20)
  {
    goto LABEL_20;
  }

  v21 = *MEMORY[0x1E696C970];
  if (sub_1D1E6781C() == v7 && v22 == v9)
  {

LABEL_25:

    v3 = 3;
    result = 1;
    goto LABEL_18;
  }

  v23 = sub_1D1E6904C();

  if (v23)
  {
    goto LABEL_25;
  }

  v24 = *MEMORY[0x1E696C978];
  if (sub_1D1E6781C() == v7 && v25 == v9)
  {

LABEL_30:

    v3 = 3;
    result = 2;
    goto LABEL_18;
  }

  v26 = sub_1D1E6904C();

  if (v26)
  {
    goto LABEL_30;
  }

  v27 = *MEMORY[0x1E696C9B0];
  if (sub_1D1E6781C() == v7 && v28 == v9)
  {
  }

  else
  {
    v29 = sub_1D1E6904C();

    if ((v29 & 1) == 0)
    {
      v30 = *MEMORY[0x1E696CA00];
      if (sub_1D1E6781C() == v7 && v31 == v9)
      {

        result = 3;
        v3 = 3;
      }

      else
      {
        v32 = sub_1D1E6904C();

        if (v32)
        {
          result = 3;
        }

        else
        {
          result = 0;
        }

        if (v32)
        {
          v3 = 3;
        }

        else
        {
          v3 = -1;
        }
      }

      goto LABEL_18;
    }
  }

  result = [v1 homePodVariant];
  if (result >= 4)
  {
    result = 1;
  }

  v3 = 1;
LABEL_18:
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

void *HMAccessory.subscript.getter(char *a1)
{
  v20 = *a1;
  v2 = [v1 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v3 = sub_1D1E67C1C();

  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3891EF0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 serviceType];
      v10 = sub_1D1E6781C();
      v12 = v11;

      v13._countAndFlagsBits = v10;
      v13._object = v12;
      ServiceKind.init(rawValue:)(v13);
      v14 = ServiceKind.rawValue.getter();
      v16 = v15;
      if (v14 == ServiceKind.rawValue.getter() && v16 == v17)
      {

LABEL_15:

        return v7;
      }

      v18 = sub_1D1E6904C();

      if (v18)
      {
        goto LABEL_15;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  return 0;
}

void *HMAccessory.subscript.getter(char *a1, char *a2)
{
  v19 = *a2;
  v20 = *a1;
  v2 = HMAccessory.subscript.getter(&v20);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 characteristics];
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    v5 = sub_1D1E67C1C();

    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1D3891EF0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 characteristicType];
        v12 = sub_1D1E6781C();
        v14 = v13;

        if (v12 == CharacteristicKind.rawValue.getter() && v14 == v15)
        {

          return v9;
        }

        v17 = sub_1D1E6904C();

        if (v17)
        {

          return v9;
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  return 0;
}

uint64_t sub_1D18B5D24(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v18 = *v7;
      v19[0] = v9;
      *(v19 + 9) = *(v7 + 25);
      v10 = v7[1];
      v16 = *v7;
      v17[0] = v10;
      *(v17 + 9) = *(v7 + 25);
      sub_1D18B869C(&v18, &v14);
      v11 = a1(&v16);
      if (v3)
      {
        break;
      }

      v4 = v11;
      v14 = v16;
      v15[0] = v17[0];
      *(v15 + 9) = *(v17 + 9);
      sub_1D18B86F8(&v14);
      v12 = v8-- == 0;
      v7 += 3;
      if ((v4 | v12))
      {
        return v4 & 1;
      }
    }

    v14 = v16;
    v15[0] = v17[0];
    *(v15 + 9) = *(v17 + 9);
    sub_1D18B86F8(&v14);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D18B5E18(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_1D1771B38(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_1D1716AA4(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1D18B5EC8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D18B5F74(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v15 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      result = a1(&v15);
      if (v3)
      {

        return v14 & 1;
      }

      if (result)
      {
        break;
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v14 = 1;
    return v14 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v14 = 0;
        return v14 & 1;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D18B609C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12 = *(v7 - 1);
      v13 = v9;
      sub_1D1771B4C(v12, v9);
      v10 = a1(&v12);
      sub_1D1771B5C(v12, v13);
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 16;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1D18B6154(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1D3891EF0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1D1E6873C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1D18B629C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D18B63B8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C60, &qword_1D1EABE80);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_18;
  v0[14] = v2;
  [v1 fetchThermostatSleepScheduleWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D18B63B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1D18B6780;
  }

  else
  {
    v3 = sub_1D18B64C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D18B64C8()
{
  v21 = v0;
  v1 = v0[18];
  v2 = [v1 scheduleRules];
  sub_1D1741B10(0, &qword_1EC645C68, 0x1E696CCC0);
  v3 = sub_1D1E67C1C();

  if (v3 >> 62)
  {
    v4 = sub_1D1E6873C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    if (qword_1EC642478 != -1)
    {
      swift_once();
    }

    v5 = v0[19];
    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EC64F458);
    v7 = v5;
    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6835C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[19];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315650;
      *(v11 + 4) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EBBD10, &v20);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EBBD40, &v20);
      *(v11 + 22) = 2080;
      v13 = [v10 name];
      v14 = sub_1D1E6781C();
      v16 = v15;

      v17 = sub_1D1B1312C(v14, v16, &v20);

      *(v11 + 24) = v17;
      _os_log_impl(&dword_1D16EC000, v8, v9, "%s - %s: Accessory: %s already has a sleep schedule.", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D18B6780()
{
  v19 = v0;
  v1 = v0[20];
  swift_willThrow();
  if (qword_1EC642478 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F458);
  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[19];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EBBD10, v18);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EBBD40, v18);
    *(v8 + 22) = 2080;
    v10 = [v7 name];
    v11 = sub_1D1E6781C();
    v13 = v12;

    v14 = sub_1D1B1312C(v11, v13, v18);

    *(v8 + 24) = v14;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%s - %s: Accessory: %s has no sleep schedule. Updating with default schedule", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_1D18B69F4;
  v16 = v0[19];

  return sub_1D18B75EC();
}

uint64_t sub_1D18B69F4()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1D18B6B6C;
  }

  else
  {
    v3 = sub_1D18B6B08;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D18B6B08()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D18B6B6C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 176);

  return v1();
}

uint64_t HMAccessory.updateDefaultSleepSchedule(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4BFC;

  return sub_1D18B75EC();
}

uint64_t HMAccessory.thermostatCluster()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for StaticEndpoint();
  v67 = *(v13 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v63 - v18;
  v20 = type metadata accessor for StaticMatterDevice();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D1E682DC();
  if ((v26 & 1) == 0)
  {
    v27 = v25;
    v28 = [v1 home];
    if (v28)
    {
      v29 = v28;
      v30 = HMHome.device(for:)(v27);
      v31 = v24;
      v32 = v10;
      v33 = v12;
      v34 = v13;
      v35 = v30;
      v64 = v36;

      v37 = v35;
      if (v35)
      {
        v38 = v34;
        v39 = v33;
        v40 = v32;
        v41 = v31;
        swift_unknownObjectRetain();
        v42 = v2;
        StaticMatterDevice.init(device:accessory:)(v37, v64, v42, v19);
        if ((*(v21 + 48))(v19, 1, v20) == 1)
        {
          swift_unknownObjectRelease();
          v43 = &qword_1EC643650;
          v44 = &qword_1D1E71D40;
          v45 = v19;
        }

        else
        {
          v46 = sub_1D18B8634(v19, v31, type metadata accessor for StaticMatterDevice);
          v47 = *(v31 + *(v20 + 56));
          MEMORY[0x1EEE9AC00](v46);
          *(&v63 - 2) = v31;

          sub_1D1746B78(sub_1D18076C8, v47, v40);

          v48 = v67;
          v49 = *(v67 + 48);
          if (v49(v40, 1, v38) == 1)
          {

            sub_1D1771D7C(v50, v39);

            if (v49(v40, 1, v38) != 1)
            {
              sub_1D1741A30(v40, &qword_1EC644780, &qword_1D1E91AA0);
            }
          }

          else
          {
            sub_1D18B8634(v40, v39, type metadata accessor for StaticEndpoint);
            (*(v48 + 56))(v39, 0, 1, v38);
          }

          if (v49(v39, 1, v38) == 1)
          {
            sub_1D18B8564(v41, type metadata accessor for StaticMatterDevice);
            swift_unknownObjectRelease();
            v43 = &qword_1EC644780;
            v44 = &qword_1D1E91AA0;
            v45 = v39;
          }

          else
          {
            v51 = v65;
            sub_1D18B8634(v39, v65, type metadata accessor for StaticEndpoint);
            v69[3] = &type metadata for HomeKitFeatures;
            v69[4] = sub_1D18076E8();
            LOBYTE(v69[0]) = 3;
            v52 = sub_1D1E66D5C();
            swift_unknownObjectRelease();
            sub_1D18B8564(v41, type metadata accessor for StaticMatterDevice);
            __swift_destroy_boxed_opaque_existential_1(v69);
            if (v52)
            {
              v53 = *(v38 + 40);
              v54 = type metadata accessor for StaticClusterGroups();
              v55 = v66;
              sub_1D18B85C4(v51 + v53 + *(v54 + 20), v66);
              sub_1D18B8564(v51, type metadata accessor for StaticEndpoint);
              v56 = type metadata accessor for StaticThermostatClusterGroup();
              v57 = *(v56 - 8);
              if ((*(v57 + 48))(v55, 1, v56) != 1)
              {
                v58 = v55;
                v59 = v68;
                sub_1D18B8634(v58, v68, type metadata accessor for StaticThermostatClusterGroup);
                return (*(v57 + 56))(v59, 0, 1, v56);
              }
            }

            else
            {
              sub_1D18B8564(v51, type metadata accessor for StaticEndpoint);
              v61 = type metadata accessor for StaticThermostatClusterGroup();
              v55 = v66;
              (*(*(v61 - 8) + 56))(v66, 1, 1, v61);
            }

            v43 = &qword_1EC644790;
            v44 = &unk_1D1E75B48;
            v45 = v55;
          }
        }

        sub_1D1741A30(v45, v43, v44);
      }
    }
  }

  v62 = type metadata accessor for StaticThermostatClusterGroup();
  return (*(*(v62 - 8) + 56))(v68, 1, 1, v62);
}

Swift::Bool __swiftcall HMAccessory.isClimateAccessory()()
{
  v1 = [v0 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v2 = sub_1D1E67C1C();

  if (v2 >> 62)
  {
LABEL_25:
    v23 = sub_1D1E6873C();
  }

  else
  {
    v23 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = *MEMORY[0x1E696CAA0];
  v5 = *MEMORY[0x1E696CA90];
  do
  {
    v7 = v3;
    if (v23 == v3)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1D3891EF0](v3, v2);
    }

    else
    {
      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v8 = *(v2 + 8 * v3 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = [v8 serviceType];
    v11 = sub_1D1E6781C();
    v13 = v12;

    if (v11 == sub_1D1E6781C() && v13 == v14)
    {

      break;
    }

    v16 = sub_1D1E6904C();

    if (v16)
    {

      break;
    }

    v17 = [v9 serviceType];
    v18 = sub_1D1E6781C();
    v20 = v19;

    if (v18 == sub_1D1E6781C() && v20 == v21)
    {

      return v23 != v7;
    }

    v6 = sub_1D1E6904C();

    v3 = v7 + 1;
  }

  while ((v6 & 1) == 0);

  return v23 != v7;
}

uint64_t sub_1D18B75EC()
{
  v1[18] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643968, &qword_1D1E72CE0) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v4 = sub_1D1E662EC();
  v1[21] = v4;
  v5 = *(v4 - 8);
  v1[22] = v5;
  v6 = *(v5 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18B7728, 0, 0);
}

uint64_t sub_1D18B7728()
{
  v60 = v0;
  v55 = v0[23];
  v57 = v0[24];
  v2 = v0[19];
  v1 = v0[20];
  sub_1D1E66B9C();
  v3 = sub_1D1E66BBC();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 0, 1, v3);
  v5 = sub_1D1E66C5C();
  v6 = *(*(v5 - 8) + 56);
  v6(v2, 1, 1, v5);
  sub_1D1E662BC();
  sub_1D1E66B9C();
  v4(v1, 0, 1, v3);
  v6(v2, 1, 1, v5);
  LOBYTE(v54) = 1;
  LOBYTE(v53) = 1;
  LOBYTE(v52) = 1;
  LOBYTE(v51) = 1;
  LOBYTE(v50) = 1;
  LOBYTE(v49) = 1;
  LOBYTE(v48) = 1;
  LOBYTE(v47) = 1;
  LOBYTE(v46) = 0;
  LOBYTE(v45) = 0;
  LOBYTE(v44) = 1;
  sub_1D1E662BC();
  v7 = objc_allocWithZone(MEMORY[0x1E696CCC0]);
  v8 = sub_1D1E661FC();
  v9 = sub_1D1E661FC();
  v10 = [v7 initWithStartTime:v8 endTime:v9 daysOfTheWeek:{127, 0, v44, 6, v45, 0, v46, 0, v47, 0, v48, 0, v49, 0, v50, 0, v51, 0, v52, 0, v53, 0, v54}];
  v0[25] = v10;

  if (v10)
  {
    v11 = v0[18];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D1E73FA0;
    *(v12 + 32) = v10;
    v13 = objc_allocWithZone(MEMORY[0x1E696CCB8]);
    sub_1D1741B10(0, &qword_1EC645C68, 0x1E696CCC0);
    v14 = v10;
    v15 = sub_1D1E67BFC();

    v16 = [v13 initWithScheduleRules_];
    v0[26] = v16;

    v0[2] = v0;
    v0[3] = sub_1D18B7DAC;
    v17 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17B04C8;
    v0[13] = &block_descriptor_7;
    v0[14] = v17;
    [v11 setThermostatSleepSchedule:v16 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1EC642478 != -1)
    {
      swift_once();
    }

    v18 = v0[18];
    v19 = sub_1D1E6709C();
    __swift_project_value_buffer(v19, qword_1EC64F458);
    v20 = v18;
    v21 = sub_1D1E6707C();
    v22 = sub_1D1E6833C();

    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[23];
    v24 = v0[24];
    v26 = v0[21];
    v27 = v0[22];
    if (v23)
    {
      v28 = v0[18];
      v58 = v0[24];
      v29 = swift_slowAlloc();
      v56 = v25;
      v30 = swift_slowAlloc();
      v59[0] = v30;
      *v29 = 136315650;
      *(v29 + 4) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EBBD10, v59);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EBBD60, v59);
      *(v29 + 22) = 2080;
      v31 = [v28 name];
      v32 = sub_1D1E6781C();
      v34 = v33;

      v35 = sub_1D1B1312C(v32, v34, v59);

      *(v29 + 24) = v35;
      _os_log_impl(&dword_1D16EC000, v21, v22, "%s - %s: Failed to create default sleep schedule for accessory: %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v30, -1, -1);
      MEMORY[0x1D3893640](v29, -1, -1);

      v36 = *(v27 + 8);
      v36(v56, v26);
      v37 = v58;
    }

    else
    {

      v36 = *(v27 + 8);
      v36(v25, v26);
      v37 = v24;
    }

    v36(v37, v26);
    v39 = v0[23];
    v38 = v0[24];
    v41 = v0[19];
    v40 = v0[20];

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_1D18B7DAC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_1D18B81F8;
  }

  else
  {
    v3 = sub_1D18B7EBC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D18B7EBC()
{
  v39 = v0;
  if (qword_1EC642478 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[18];
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F458);
  v4 = v1;
  v5 = v2;
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6835C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  if (v8)
  {
    v15 = v0[18];
    v37 = v0[21];
    v16 = swift_slowAlloc();
    v36 = v10;
    v17 = swift_slowAlloc();
    v35 = v12;
    v18 = swift_slowAlloc();
    v38 = v18;
    *v16 = 136315906;
    *(v16 + 4) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EBBD10, &v38);
    v34 = v11;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EBBD60, &v38);
    *(v16 + 22) = 2112;
    *(v16 + 24) = v9;
    *v17 = v9;
    *(v16 + 32) = 2080;
    v33 = v9;
    v19 = [v15 name];
    v20 = sub_1D1E6781C();
    v22 = v21;

    v23 = sub_1D1B1312C(v20, v22, &v38);

    *(v16 + 34) = v23;
    _os_log_impl(&dword_1D16EC000, v6, v7, "%s - %s: Successfully set default sleep schedule: %@ for accessory: %s", v16, 0x2Au);
    sub_1D1741A30(v17, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v18, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);

    v24 = *(v13 + 8);
    v24(v35, v37);
    v25 = v34;
    v26 = v37;
  }

  else
  {

    v24 = *(v13 + 8);
    v24(v12, v14);
    v25 = v11;
    v26 = v14;
  }

  v24(v25, v26);
  v28 = v0[23];
  v27 = v0[24];
  v30 = v0[19];
  v29 = v0[20];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D18B81F8()
{
  v43 = v0;
  v1 = v0[27];
  swift_willThrow();
  if (qword_1EC642478 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v3 = v0[18];
  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC64F458);
  v5 = v3;
  v6 = v2;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[24];
  v13 = v0[25];
  v15 = v0[22];
  v14 = v0[23];
  v16 = v0[21];
  if (v9)
  {
    v41 = v0[25];
    v17 = v0[18];
    v40 = v0[23];
    v18 = swift_slowAlloc();
    v39 = v11;
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42[0] = v37;
    *v18 = 136315906;
    *(v18 + 4) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EBBD10, v42);
    v38 = v12;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EBBD60, v42);
    *(v18 + 22) = 2080;
    v20 = [v17 name];
    v36 = v16;
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, v42);

    *(v18 + 24) = v24;
    *(v18 + 32) = 2112;
    v25 = v10;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 34) = v26;
    *v19 = v26;
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s - %s: Failed to set default sleep schedule for accessory: %s due to error: %@", v18, 0x2Au);
    sub_1D1741A30(v19, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v37, -1, -1);
    MEMORY[0x1D3893640](v18, -1, -1);

    v27 = *(v15 + 8);
    v27(v40, v36);
    v28 = v38;
    v29 = v36;
  }

  else
  {

    v27 = *(v15 + 8);
    v27(v14, v16);
    v28 = v12;
    v29 = v16;
  }

  v27(v28, v29);
  v31 = v0[23];
  v30 = v0[24];
  v33 = v0[19];
  v32 = v0[20];

  v34 = v0[1];

  return v34();
}

uint64_t sub_1D18B8564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D18B85C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18B8634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t HMActionSet.actionSetKind.getter@<X0>(char *a1@<X8>)
{
  v3 = [v1 actionSetType];
  sub_1D1E6781C();

  return HMActionSet.ActionSetKind.init(rawValue:)(a1);
}

uint64_t HMActionSet.ActionSetKind.defaultIconSymbolName.getter()
{
  v1 = *v0;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x6174732E6E6F6F6DLL;
      }

      return 0x69662E6573756F68;
    }

    return 0x2E78616D2E6E7573;
  }

  else
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        return 0xD000000000000015;
      }

      return 0x69662E6573756F68;
    }

    return 0xD000000000000013;
  }
}

uint64_t HMActionSet.ActionSetKind.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D1E68C2C();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t HMActionSet.ActionSetKind.rawValue.getter()
{
  v1 = 0xD00000000000001ALL;
  v2 = *v0;
  v3 = 0xD000000000000021;
  if (v2 == 5)
  {
    v3 = 0xD00000000000001BLL;
  }

  v4 = 0xD000000000000014;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001CLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1D18B89E4()
{
  *v0;
  *v0;
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D18B8ADC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return HMActionSet.ActionSetKind.init(rawValue:)(a1);
}

void sub_1D18B8AE8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ALL;
  v3 = *v1;
  v4 = "5291";
  v5 = "HMActionSetTypeUserDefined";
  v6 = 0xD000000000000021;
  if (v3 == 5)
  {
    v6 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = "HMActionSetTypeTriggerOwned";
  }

  v7 = "HMActionSetTypeWakeUp";
  v8 = 0xD000000000000014;
  if (v3 != 3)
  {
    v8 = 0xD00000000000001ALL;
    v7 = "HMActionSetTypeSleep";
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "HMActionSetTypeHomeArrival";
  v10 = 0xD00000000000001CLL;
  if (v3 != 1)
  {
    v10 = 0xD000000000000015;
    v9 = "HMActionSetTypeHomeDeparture";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 > 2u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t HMActionSet.defaultTint.getter()
{
  v1 = [v0 actionSetType];
  sub_1D1E6781C();

  HMActionSet.ActionSetKind.init(rawValue:)(&v3);
  result = 0;
  if (v3 > 1u)
  {
    if (v3 == 2)
    {
      return sub_1D1E673FC();
    }

    else if (v3 == 3)
    {
      return sub_1D1E673DC();
    }
  }

  else if (!v3 || v3 == 1)
  {
    return sub_1D1E673EC();
  }

  return result;
}

unint64_t sub_1D18B8D24()
{
  result = qword_1EC645C70;
  if (!qword_1EC645C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645C70);
  }

  return result;
}

unint64_t sub_1D18B8D7C()
{
  result = qword_1EC645C78;
  if (!qword_1EC645C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC645C80, &qword_1D1E7C0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645C78);
  }

  return result;
}

unint64_t sub_1D18B8DF0()
{
  result = qword_1EC645C88;
  if (!qword_1EC645C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645C88);
  }

  return result;
}

HomeDataModel::CharacteristicKind_optional HMCharacteristic.characteristicKind.getter@<W0>(unsigned __int8 *a1@<X8>)
{
  v3 = [v1 characteristicType];
  v4 = sub_1D1E6781C();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  result.value = CharacteristicKind.init(rawValue:)(v7).value;
  v9 = v10;
  if (v10 == 174)
  {
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t HMCharacteristic.BOOL.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1D18B8F54;

  return HMCharacteristic.fetchedValue()(v0 + 16);
}

uint64_t sub_1D18B8F54()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18B9050, 0, 0);
}

uint64_t sub_1D18B9050()
{
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 56);
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    sub_1D18B9B30(v0 + 16);
    v1 = 2;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t HMCharacteristic.int.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D18B9188;

  return HMCharacteristic.fetchedValue()(v0 + 16);
}

uint64_t sub_1D18B9188()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18B9284, 0, 0);
}

uint64_t sub_1D18B9284()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    if (v1)
    {
      v2 = v0[6];
    }

    else
    {
      v2 = 0;
    }

    v3 = v1 ^ 1u;
  }

  else
  {
    sub_1D18B9B30((v0 + 2));
    v2 = 0;
    v3 = 1;
  }

  v4 = v0[1];

  return v4(v2, v3);
}

id sub_1D18B9330(void *a1)
{
  v1 = a1;
  HMCharacteristic.description.getter();

  v2 = sub_1D1E677EC();

  return v2;
}

uint64_t HMCharacteristic.description.getter()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  v3 = [v0 service];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 accessory];

    if (v5 && (v6 = [v5 home], v5, v6))
    {
      v7 = [v6 name];

      v8 = sub_1D1E6781C();
      v2 = v9;

      v3 = v8;
    }

    else
    {
      v3 = 0;
      v2 = 0xE000000000000000;
    }
  }

  MEMORY[0x1D3890F70](v3, v2);

  MEMORY[0x1D3890F70](58, 0xE100000000000000);
  v10 = [v1 service];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 accessory];

    if (v12)
    {
      v13 = [v12 name];

      v14 = sub_1D1E6781C();
      v16 = v15;

      v10 = v14;
      goto LABEL_11;
    }

    v10 = 0;
  }

  v16 = 0xE000000000000000;
LABEL_11:
  MEMORY[0x1D3890F70](v10, v16);

  MEMORY[0x1D3890F70](58, 0xE100000000000000);
  v17 = [v1 service];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 serviceType];
    v20 = sub_1D1E6781C();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    ServiceKind.init(rawValue:)(v23);

    v17 = ServiceKind.localizedDescription.getter();
    v25 = v24;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  MEMORY[0x1D3890F70](v17, v25);

  MEMORY[0x1D3890F70](58, 0xE100000000000000);
  v26 = [v1 metadata];
  if (v26 && (v27 = v26, v28 = [v26 manufacturerDescription], v27, v28))
  {
    v29 = sub_1D1E6781C();
    v31 = v30;

    v32 = v29;
  }

  else
  {
    v31 = 0x80000001D1EBBD80;
    v32 = 0xD000000000000010;
  }

  MEMORY[0x1D3890F70](v32, v31);

  MEMORY[0x1D3890F70](58, 0xE100000000000000);
  if ([v1 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  v33 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v33);

  return 0;
}

uint64_t HMCharacteristic.bestNameForAccessory.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = [v0 service];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 accessory];

    if (v4)
    {
      v5 = [v4 name];

      v1 = sub_1D1E6781C();
    }
  }

  return v1;
}

uint64_t HMCharacteristic.fetchedValue()(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D18B97C8, 0, 0);
}

uint64_t sub_1D18B97C8()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D18B98DC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_19;
  v0[14] = v2;
  [v1 readValueWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D18B98DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1D18B9A80;
  }

  else
  {
    v3 = sub_1D18B99EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D18B99EC()
{
  v1 = [*(v0 + 152) value];
  v2 = *(v0 + 144);
  if (v1)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v2 = 0u;
    v2[1] = 0u;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D18B9A80()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = [*(v0 + 152) value];
  v3 = *(v0 + 144);
  if (v2)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v3 = 0u;
    v3[1] = 0u;
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D18B9B30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double HMCharacteristic.cachedValue.getter@<D0>(_OWORD *a1@<X8>)
{
  if ([v1 value])
  {
    sub_1D1E6866C();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t HMCharacteristic.cachedBool.getter()
{
  if ([v0 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 2;
  }
}

uint64_t HMCharacteristic.cachedInt.getter()
{
  if ([v0 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 0;
  }
}

uint64_t HMCharacteristic.float.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D18B9E0C;

  return HMCharacteristic.fetchedValue()(v0 + 16);
}

uint64_t sub_1D18B9E0C()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18B9F08, 0, 0);
}

uint64_t sub_1D18B9F08()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    if (v1)
    {
      v2 = v0[6];
    }

    else
    {
      v2 = 0;
    }

    v3 = v1 ^ 1u;
  }

  else
  {
    sub_1D18B9B30((v0 + 2));
    v2 = 0;
    v3 = 1;
  }

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t HMCharacteristic.cachedFloat.getter()
{
  if ([v0 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 0;
  }
}

uint64_t HMCharacteristic.data.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D18BA104;

  return HMCharacteristic.fetchedValue()(v0 + 16);
}

uint64_t sub_1D18BA104()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18BA200, 0, 0);
}

uint64_t sub_1D18BA200()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    v2 = v1 == 0;
    if (v1)
    {
      v3 = v0[6];
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = 0xF000000000000000;
    }

    else
    {
      v4 = v0[7];
    }
  }

  else
  {
    sub_1D18B9B30((v0 + 2));
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t HMCharacteristic.tlv8.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D18BA344;

  return HMCharacteristic.fetchedValue()(v0 + 16);
}

uint64_t sub_1D18BA344()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18BB198, 0, 0);
}

uint64_t _sSo16HMCharacteristicC13HomeDataModelE06cachedC010Foundation0C0VSgvg_0()
{
  if ([v0 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 0;
  }
}

uint64_t HMCharacteristic.currentValue<A>()(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_1D1E669FC();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18BA5CC, 0, 0);
}

uint64_t sub_1D18BA5CC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = [v5 valueUpdatedTime];
  sub_1D1E669BC();

  v7 = [v5 notificationEnabledTime];
  sub_1D1E669BC();

  LOBYTE(v7) = sub_1D1E6695C();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  if (v7)
  {
    if ([*(v0 + 96) value])
    {
      sub_1D1E6866C();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    *(v0 + 48) = v18;
    *(v0 + 64) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
    v14 = swift_dynamicCast();
    (*(*(v13 - 8) + 56))(v12, v14 ^ 1u, 1, v13);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_1D18BA810;
    v10 = *(v0 + 96);

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }
}

uint64_t sub_1D18BA810()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18BA90C, 0, 0);
}

uint64_t sub_1D18BA90C()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  v3 = swift_dynamicCast();
  (*(*(v2 - 8) + 56))(v1, v3 ^ 1u, 1, v2);
  v5 = v0[15];
  v4 = v0[16];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D18BA9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(a2 + 8))();
  if (result == 2 || (result & 1) == 0)
  {
    result = (*(a2 + 16))(a1, a2);
    if (result == 2 || (result & 1) == 0)
    {
      result = (*(a2 + 24))(&v9, a1, a2);
      v7 = v10;
      if (v10)
      {
        *a3 = v9;
        *(a3 + 16) = v7;
        v8 = 2;
      }

      else
      {
        result = (*(a2 + 32))(a1, a2);
        if (result == 2 || (result & 1) == 0)
        {
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          v8 = -1;
        }

        else
        {
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *a3 = 1;
          v8 = 3;
        }
      }

      *(a3 + 24) = v8;
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = 1;
      *(a3 + 24) = 1;
    }
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 1;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t sub_1D18BADF0(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a2;
  *a2 = a1;
}

uint64_t sub_1D18BAEA0@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
}

unint64_t sub_1D18BAF08()
{
  result = qword_1EC645CB0;
  if (!qword_1EC645CB0)
  {
    type metadata accessor for HMCharacteristicValueAirQuality(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645CB0);
  }

  return result;
}

HomeDataModel::CharacteristicKind_optional sub_1D18BB070@<W0>(unsigned __int8 *a1@<X8>)
{
  v3 = [*v1 characteristicType];
  v4 = sub_1D1E6781C();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  result.value = CharacteristicKind.init(rawValue:)(v7).value;
  v9 = v10;
  if (v10 == 174)
  {
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1D18BB0EC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4BFC;

  return HMCharacteristic.currentValue<A>()(a1, a2);
}

Swift::Bool __swiftcall HMHome.shouldShowNoAccessOutsideOfSchedule(forRestrictedUser:)(HMUser forRestrictedUser)
{
  v2 = v1;
  v4 = sub_1D1E66C5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E669FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = forRestrictedUser.super.isa;
  v14 = [v2 homeAccessControlForUser_];
  v15 = [v14 restrictedGuestAccessSettings];
  if (!v15)
  {
    if (qword_1EC642450 != -1)
    {
      swift_once();
    }

    v56 = sub_1D1E6709C();
    __swift_project_value_buffer(v56, qword_1EC64F3E0);
    v57 = isa;
    v58 = v14;
    v59 = sub_1D1E6707C();
    v60 = sub_1D1E6835C();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v96 = v63;
      *v61 = 136315650;
      *(v61 + 4) = sub_1D1B1312C(0xD000000000000037, 0x80000001D1EBBDA0, &v96);
      *(v61 + 12) = 2080;
      v64 = [v57 name];
      v65 = sub_1D1E6781C();
      v67 = v66;

      v68 = sub_1D1B1312C(v65, v67, &v96);

      *(v61 + 14) = v68;
      *(v61 + 22) = 2112;
      *(v61 + 24) = v58;
      *v62 = v58;
      v69 = v58;
      _os_log_impl(&dword_1D16EC000, v59, v60, "%s: user = %s. Returning false because restrictedGuestAccessSettings is nil. accessControl = %@", v61, 0x20u);
      sub_1D179F28C(v62);
      MEMORY[0x1D3893640](v62, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v63, -1, -1);
      MEMORY[0x1D3893640](v61, -1, -1);

LABEL_19:
      LOBYTE(v27) = 0;
      return v27;
    }

LABEL_17:
    goto LABEL_19;
  }

  v16 = v15;
  v94 = v14;
  v17 = v2;
  v18 = [v15 guestAccessSchedule];
  if (!v18)
  {
    if (qword_1EC642450 != -1)
    {
      swift_once();
    }

    v70 = sub_1D1E6709C();
    __swift_project_value_buffer(v70, qword_1EC64F3E0);
    v71 = isa;
    v72 = v94;
    v73 = v16;
    v74 = sub_1D1E6707C();
    v75 = sub_1D1E6835C();

    if (!os_log_type_enabled(v74, v75))
    {

      goto LABEL_19;
    }

    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    isa = swift_slowAlloc();
    v96 = isa;
    *v76 = 136315906;
    *(v76 + 4) = sub_1D1B1312C(0xD000000000000037, 0x80000001D1EBBDA0, &v96);
    *(v76 + 12) = 2080;
    v78 = [v71 name];
    v79 = sub_1D1E6781C();
    v80 = v16;
    v82 = v81;

    v83 = sub_1D1B1312C(v79, v82, &v96);

    *(v76 + 14) = v83;
    *(v76 + 22) = 2112;
    *(v76 + 24) = v72;
    *(v76 + 32) = 2112;
    *(v76 + 34) = v73;
    *v77 = v72;
    v77[1] = v80;
    v59 = v72;
    v84 = v73;
    _os_log_impl(&dword_1D16EC000, v74, v75, "%s: user = %s. Returning false because rgAccessSchedule is nil. accessControl = %@. rgAccessSettings = %@.", v76, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v77, -1, -1);
    v85 = isa;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v85, -1, -1);
    MEMORY[0x1D3893640](v76, -1, -1);

    goto LABEL_17;
  }

  v19 = v18;
  v93 = v16;
  v20 = objc_opt_self();
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v21 = v8;
  v22 = sub_1D1E6694C();
  (*(v10 + 8))(v13, v9);
  v23 = v17;
  v24 = [v17 timeZone];
  sub_1D1E66C3C();

  v25 = sub_1D1E66C0C();
  v26 = *(v5 + 8);
  v90 = v21;
  v91 = v5 + 8;
  v92 = v4;
  v89 = v26;
  v26(v21, v4);
  LODWORD(v21) = [v20 isDate:v22 withinAllowedTimeForSchedule:v19 forHomeInTimeZone:v25];

  v27 = v21 ^ 1;
  v28 = v19;
  if (qword_1EC642450 != -1)
  {
    swift_once();
  }

  v29 = sub_1D1E6709C();
  __swift_project_value_buffer(v29, qword_1EC64F3E0);
  v30 = isa;
  v31 = v94;
  v32 = v19;
  v33 = v23;
  v34 = sub_1D1E6707C();
  v35 = sub_1D1E6835C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v88 = v33;
    v38 = v37;
    isa = swift_slowAlloc();
    v96 = isa;
    *v36 = 136316418;
    *(v36 + 4) = sub_1D1B1312C(0xD000000000000037, 0x80000001D1EBBDA0, &v96);
    *(v36 + 12) = 2080;
    v39 = [v30 name];
    v40 = sub_1D1E6781C();
    LODWORD(v94) = v35;
    v41 = v40;
    v43 = v42;

    v44 = sub_1D1B1312C(v41, v43, &v96);

    *(v36 + 14) = v44;
    *(v36 + 22) = 1024;
    *(v36 + 24) = v27;
    *(v36 + 28) = 2112;
    *(v36 + 30) = v31;
    *(v36 + 38) = 2112;
    *(v36 + 40) = v32;
    *v38 = v31;
    v38[1] = v28;
    v45 = v38;
    *(v36 + 48) = 2080;
    v46 = v31;
    v47 = v32;
    v48 = [v88 timeZone];
    v49 = v90;
    sub_1D1E66C3C();

    sub_1D18BBB04();
    v50 = v92;
    v51 = sub_1D1E68FAC();
    v53 = v52;
    v89(v49, v50);
    v54 = sub_1D1B1312C(v51, v53, &v96);

    *(v36 + 50) = v54;
    _os_log_impl(&dword_1D16EC000, v34, v94, "%s: user = %s. Returning %{BOOL}d. accessControl = %@. guestAccessSchedule = %@. timeZone = %s", v36, 0x3Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v45, -1, -1);
    v55 = isa;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v55, -1, -1);
    MEMORY[0x1D3893640](v36, -1, -1);
  }

  else
  {
  }

  return v27;
}

unint64_t sub_1D18BBB04()
{
  result = qword_1EC643940;
  if (!qword_1EC643940)
  {
    sub_1D1E66C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643940);
  }

  return result;
}

void sub_1D18BBB5C(unint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3891EF0](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_1D18BD600(&v14, a2, a3, a4 & 1);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1D18BBC70(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D18BE798(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = *(v1 + *(a1 + 20));
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18BBD38(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D18BE798(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v5 = *(v2 + *(a2 + 20));
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();
}

uint64_t sub_1D18BBDFC(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D18BE798(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v5 = *(v2 + *(a2 + 20));
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18BBEC0(uint64_t a1, uint64_t a2, void *a3)
{

  v6 = a3;

  v21[0] = sub_1D18D8A70(MEMORY[0x1E69E7CC0]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D18BE688();
    sub_1D1E681BC();
    a1 = v21[1];
    v7 = v21[2];
    v8 = v21[3];
    v9 = v21[4];
    v10 = v21[5];
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

  v14 = (v8 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v8 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v8)
    {
LABEL_18:

      sub_1D1716918();
      return v21[0];
    }

    while (1)
    {
      v20 = v8;
      sub_1D18BC124(v21, &v20, a2);

      v9 = v17;
      v10 = v18;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D1E6877C())
      {
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        swift_dynamicCast();
        v8 = v20;
        v17 = v9;
        v18 = v10;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_18;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);

  sub_1D1716918();

  __break(1u);
  return result;
}

id sub_1D18BC124(uint64_t *a1, void **a2, uint64_t a3)
{
  v64 = a3;
  v62 = type metadata accessor for BatchRequestError.ID();
  v6 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v57 - v17;
  v19 = *a2;
  result = [v19 service];
  if (result)
  {
    v21 = result;
    v60 = a1;
    v61 = v3;
    v22 = [result uniqueIdentifier];

    sub_1D1E66A5C();
    v23 = *(v9 + 32);
    v23(v18, v16, v8);
    v58 = v18;
    v59 = v9;
    (*(v9 + 16))(v13, v18, v8);
    v24 = [v19 characteristicType];
    v25 = sub_1D1E6781C();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    CharacteristicKind.init(rawValue:)(v28);
    if (v65 == 174)
    {
      v29 = 0;
    }

    else
    {
      v29 = v65;
    }

    v30 = v63;
    v23(v63, v13, v8);
    *(v30 + *(v62 + 20)) = v29;
    v31 = v64;
    v32 = v8;
    if (*(v64 + 16) && (v33 = sub_1D171D54C(v30), (v34 & 1) != 0))
    {
      v35 = *(*(v31 + 56) + 8 * v33);
      v36 = v35;
      sub_1D18BE73C(v30);
      v37 = v60;
      if (v35)
      {
        v38 = sub_1D1E6655C();
        v39 = v19;
        v40 = [v38 code];
        v41 = [v38 domain];
        v42 = sub_1D1E6781C();
        v44 = v43;

        v45 = *v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = *v37;
        sub_1D1753978(v40, v42, v44, 2, v39, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v54 = v19;
        v55 = *v37;
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v65 = *v37;
        sub_1D1753978(1, 0, 0, 3, v54, v56);
      }
    }

    else
    {
      sub_1D18BE73C(v30);
      v47 = *MEMORY[0x1E696CA80];
      v48 = sub_1D1E6781C();
      v50 = v49;
      v51 = v19;
      v37 = v60;
      v52 = *v60;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v65 = *v37;
      sub_1D1753978(8, v48, v50, 2, v51, v53);
    }

    *v37 = v65;
    return (*(v59 + 8))(v58, v32);
  }

  return result;
}

uint64_t HMHome.perform(batchCharacteristicRequest:timeout:inProgressSnapshots:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 32) = a2;
  *(v5 + 40) = v4;
  *(v5 + 89) = a4;
  *(v5 + 88) = a3;
  *(v5 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18BC550, 0, 0);
}

uint64_t sub_1D18BC550()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 89);
  v4 = *(v0 + 88);
  v5 = *(v0 + 24);
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = sub_1D18D888C(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v0 + 56) = v8;
  *(v8 + 16) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645CF8, &qword_1D1E7C3C8);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *(v10 + 16) = v5;
  *(v10 + 24) = v8;
  *(v10 + 32) = v6;
  *(v10 + 40) = v3;
  *(v10 + 48) = v1;
  *(v10 + 56) = v2;
  *(v10 + 64) = v4 & 1;
  v11 = *(MEMORY[0x1E69E88A0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_1D18BC6DC;

  return MEMORY[0x1EEE6DD58](v0 + 16, v9, v9, 0, 0, &unk_1D1E7C3D8, v10, v9);
}

uint64_t sub_1D18BC6DC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1D18BC868;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1D18BC7F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D18BC7F8()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1D18BC868()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_1D18BC8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 105) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 104) = a6;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18BC998, 0, 0);
}

uint64_t sub_1D18BC998()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 105);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 104);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = sub_1D1E67E7C();
  v28 = *(*(v9 - 8) + 56);
  v29 = v9;
  v28(v1, 1, 1);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v3;
  *(v10 + 56) = v5;
  *(v10 + 64) = v4;
  v11 = v6;

  v12 = v4;
  sub_1D1A01DC8(v1, &unk_1D1E7C4A8, v10);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  if ((v2 & 1) == 0)
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EE07B5D8);
    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6835C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 72);
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v16;
      _os_log_impl(&dword_1D16EC000, v14, v15, "performing batch request with timeout: %f", v17, 0xCu);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 56);
    v21 = *(v0 + 32);

    (v28)(v18, 1, 1, v29);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = v20;

    sub_1D1A01DC8(v18, &unk_1D1E7C4C8, v22);
    sub_1D1741A30(v18, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v23 = *(MEMORY[0x1E69E8708] + 4);
  v24 = swift_task_alloc();
  *(v0 + 88) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D00, &unk_1D1E7C4B0);
  *v24 = v0;
  v24[1] = sub_1D18BCCA4;
  v26 = *(v0 + 32);

  return MEMORY[0x1EEE6DAC8](v0 + 16, 0, 0, v25);
}

uint64_t sub_1D18BCCA4()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1D18BCFE8;
  }

  else
  {
    v3 = sub_1D18BCDB8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D18BCDB8()
{
  v18 = v0;
  v1 = *(v0 + 16);
  v2 = **(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645CF8, &qword_1D1E7C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE07B5D8);

  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    if (v1)
    {
      v8 = sub_1D1741B10(0, &qword_1EC645D08, 0x1E696CB58);
      v9 = MEMORY[0x1D3891260](v1, v8);
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = sub_1D1B1312C(v9, v11, &v17);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1D16EC000, v4, v5, "batch request has completed with result: %s, cancelling timeout", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  v13 = *(v0 + 80);
  v14 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = v1;
  }

  **(v0 + 24) = v14;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D18BCFE8()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1D18BD04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 80) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18BD078, 0, 0);
}

uint64_t sub_1D18BD078()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 24);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645CF8, &qword_1D1E7C3C8);
  *v6 = v0;
  v6[1] = sub_1D18BD19C;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000040, 0x80000001D1EBBDE0, sub_1D18BE9D8, v4, v7);
}

uint64_t sub_1D18BD19C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D18BD2D8, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D18BD2D8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

id sub_1D18BD33C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v25 = a1;
  v26 = a6;
  v24 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D18, &unk_1D1E7C4D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  v31 = sub_1D18BE9EC;
  v32 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1D1E0290C;
  v30 = &block_descriptor_20;
  v16 = _Block_copy(&aBlock);

  [a2 setProgressHandler_];
  _Block_release(v16);
  (*(v11 + 16))(v14, v25, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v17, v14, v10);
  *(v19 + v18) = a4;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v31 = sub_1D18BEA40;
  v32 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1D1C40BA8;
  v30 = &block_descriptor_28_0;
  v20 = _Block_copy(&aBlock);

  v21 = v24;
  [v24 setCompletionHandler_];
  _Block_release(v20);
  return [v26 performBatchCharacteristicRequest_];
}

void sub_1D18BD600(void **a1, unint64_t *a2, uint64_t a3, int a4)
{
  LODWORD(v77) = a4;
  v76 = a3;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v7 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v74 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v72 = *(v73 - 8);
  v9 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v67 - v10;
  v75 = type metadata accessor for BatchRequestError.ID();
  v11 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D1E66A7C();
  v79 = *(v14 - 8);
  v15 = *(v79 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v67 - v19;
  v20 = *a1;
  swift_beginAccess();
  v21 = *a2;
  v82 = v20;
  v81 = &v82;

  v22 = sub_1D18B8754(sub_1D18BEAF4, v80, v21);

  if ((v22 & 1) == 0)
  {
    v23 = [v20 request];
    v24 = [v23 characteristic];

    v25 = [v24 service];
    if (v25)
    {
      v68 = a2;
      v69 = updated;
      v26 = [v25 uniqueIdentifier];

      sub_1D1E66A5C();
      v27 = v14;
      v28 = v79;
      v29 = v78;
      (*(v79 + 32))(v78, v18, v27);
      v30 = [v20 request];
      v31 = [v30 characteristic];

      v32 = [v31 characteristicType];
      v33 = sub_1D1E6781C();
      v35 = v34;

      v36._countAndFlagsBits = v33;
      v36._object = v35;
      CharacteristicKind.init(rawValue:)(v36);
      v37 = v82;
      if (v82 == 174)
      {
        (*(v28 + 8))(v29, v27);
      }

      else
      {
        v70 = v27;
        v38 = [v20 error];
        if (v38)
        {
          v39 = v38;
          v40 = v79;
          v41 = v78;
          (*(v79 + 16))(v13, v78, v70);
          v13[*(v75 + 20)] = v37;
          v42 = v76;
          swift_beginAccess();
          v43 = v39;
          v44 = *v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = *v42;
          *v42 = 0x8000000000000000;
          v46 = v39;
          v47 = v41;
          sub_1D1754D80(v46, v13, isUniquelyReferenced_nonNull_native);
          sub_1D18BE73C(v13);
          *v42 = v83;
          swift_endAccess();
        }

        else
        {
          v40 = v79;
          v47 = v78;
          (*(v79 + 16))(v13, v78, v70);
          v13[*(v75 + 20)] = v37;
          v48 = v76;
          swift_beginAccess();
          v49 = *v48;
          v50 = swift_isUniquelyReferenced_nonNull_native();
          v83 = *v48;
          *v48 = 0x8000000000000000;
          sub_1D1754D80(0, v13, v50);
          sub_1D18BE73C(v13);
          *v48 = v83;
          swift_endAccess();
        }

        v51 = v68;
        if (v77)
        {
          v52 = [v20 error];
          if (v52)
          {
            v53 = v52;
            v54 = sub_1D1E6655C();
            v77 = [v54 code];
            v55 = [v54 domain];
            v76 = sub_1D1E6781C();
            v75 = v56;

            LODWORD(v69) = 2;
          }

          else
          {
            v76 = 0;
            v75 = 0;
            LODWORD(v69) = 3;
            v77 = 1;
          }

          if (qword_1EE07DC88 != -1)
          {
            swift_once();
          }

          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
          __swift_project_value_buffer(v57, qword_1EE07DCE0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E40, &qword_1D1E7C4E8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D1E739C0;
          v59 = [v20 request];
          v60 = [v59 characteristic];

          *(inited + 32) = v60;
          v61 = v76;
          *(inited + 40) = v77;
          *(inited + 48) = v61;
          *(inited + 56) = v75;
          *(inited + 64) = v69;
          v62 = sub_1D18D8A70(inited);
          swift_setDeallocating();
          sub_1D1741A30(inited + 32, &qword_1EC645D20, qword_1D1E7C4F0);
          v63 = v74;
          *v74 = v62;
          v63[1] = 0;
          *(v63 + 16) = 1;
          swift_storeEnumTagMultiPayload();
          v64 = v71;
          sub_1D1E67ECC();
          (*(v72 + 8))(v64, v73);
          v40 = v79;
          v47 = v78;
        }

        swift_beginAccess();
        v65 = v20;
        MEMORY[0x1D3891220]();
        if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v66 = *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D1E67C5C();
          v47 = v78;
          v40 = v79;
        }

        sub_1D1E67CAC();
        swift_endAccess();
        (*(v40 + 8))(v47, v70);
      }
    }
  }
}

uint64_t sub_1D18BDE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(a3 + 16);
    sub_1D18BE984();
    swift_allocError();
    *v7 = v6;
    v7[1] = a1;
    v8 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D18, &unk_1D1E7C4D0);
    return sub_1D1E67D5C();
  }

  else
  {
    swift_beginAccess();
    v11 = *(a4 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D18, &unk_1D1E7C4D0);
    return sub_1D1E67D6C();
  }
}

uint64_t sub_1D18BDF5C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  v6 = sub_1D1E68A4C();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18BE020, 0, 0);
}

uint64_t sub_1D18BE020()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = sub_1D1E693AC();
  v5 = v4;
  sub_1D1E6912C();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1D18BE0FC;
  v7 = v0[9];

  return sub_1D1A01910(v3, v5, 0, 0, 1);
}

uint64_t sub_1D18BE0FC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v5 = sub_1D18BE3D8;
  }

  else
  {
    v5 = sub_1D18BE264;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D18BE264()
{
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE07B5D8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "batch request timeout has been hit", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v5 = v0[6];

  swift_beginAccess();
  v6 = *(v5 + 16);
  sub_1D18BE984();
  swift_allocError();
  *v7 = v6;
  v7[1] = 0;
  swift_willThrow();
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D18BE3D8()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D18BE43C(uint64_t a1, uint64_t a2)
{
  if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
  {
    v4 = *(type metadata accessor for BatchRequestError.ID() + 20);
    v12 = *(a1 + v4);
    v11 = *(a2 + v4);
    v5 = CharacteristicKind.rawValue.getter();
    v7 = v6;
    if (v5 == CharacteristicKind.rawValue.getter() && v7 == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_1D1E6904C();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D18BE500(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = *(v2 + 64);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D18BC8E0(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D18BE5F4(uint64_t *a1, int a2)
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

uint64_t sub_1D18BE63C(uint64_t result, int a2, int a3)
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

unint64_t sub_1D18BE688()
{
  result = qword_1EC643038;
  if (!qword_1EC643038)
  {
    sub_1D1741B10(255, &qword_1EE079CD0, 0x1E696CB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643038);
  }

  return result;
}

uint64_t type metadata accessor for BatchRequestError.ID()
{
  result = qword_1EC645D28;
  if (!qword_1EC645D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D18BE73C(uint64_t a1)
{
  v2 = type metadata accessor for BatchRequestError.ID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D18BE798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D18BE7E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D18BD04C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D18BE8C0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D18BDF5C(v6, a1, v4, v5, v7);
}

unint64_t sub_1D18BE984()
{
  result = qword_1EC645D10;
  if (!qword_1EC645D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645D10);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D18BEA40(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D18, &unk_1D1E7C4D0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D18BDE6C(a1, v1 + v4, v6, v7);
}

uint64_t sub_1D18BEAF4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1D1741B10(0, &qword_1EC645D08, 0x1E696CB58);
  return sub_1D1E684FC() & 1;
}

uint64_t sub_1D18BEB5C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D18BEBAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D18BEC00(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D18BEC50()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}