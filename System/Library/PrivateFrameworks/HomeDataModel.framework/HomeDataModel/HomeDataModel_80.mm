uint64_t sub_1D1DC7BE0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v25 = a4;
  v24 = a1;
  v23 = sub_1D1E66A7C();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticHome();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return 0;
  }

  else
  {
    v22[1] = v4;
    v18 = (v7 + 8);
    if (a2 <= v17)
    {
      v19 = a3 >> 1;
    }

    else
    {
      v19 = a2;
    }

    while (v19 != a2)
    {
      sub_1D1DC9148(v24 + *(v12 + 72) * a2, v16, type metadata accessor for StaticHome);
      v20 = [v25 uniqueIdentifier];
      sub_1D1E66A5C();

      v21 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      (*v18)(v10, v23);
      result = sub_1D1DC91B0(v16, type metadata accessor for StaticHome);
      if (v21)
      {
        return a2;
      }

      if (v17 == ++a2)
      {
        return 0;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1DC7E10(uint64_t a1, uint64_t *a2, void *a3)
{
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v53 - v9;
  v61 = type metadata accessor for StaticEndpoint();
  v10 = *(v61 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v53 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticMatterDevice();
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v59 = (v10 + 48);
  v56 = (v10 + 56);

  v22 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  v58 = a2;
  v63 = a1;
  v60 = v13;
LABEL_4:
  v23 = v71;
  while (v19)
  {
LABEL_14:
    v28 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    sub_1D1DC9148(*(a1 + 56) + *(v68 + 72) * (v28 | (v22 << 6)), v23, type metadata accessor for StaticMatterDevice);
    v29 = *a2;
    if (*(*a2 + 16))
    {
      v30 = sub_1D17420B0(*(v23 + *(v13 + 20)));
      if (v31)
      {
        v32 = (*(v29 + 56) + 16 * v30);
        v33 = *v32;
        v55 = v32[1];
        v34 = v66;
        v35 = *(v23 + *(v13 + 56));
        v36 = MEMORY[0x1EEE9AC00](v33);
        *(&v53 - 2) = v23;
        v65 = v36;
        swift_unknownObjectRetain();

        v37 = v67;
        sub_1D1746B78(sub_1D18076C8, v35, v34);
        v67 = v37;

        v38 = *v59;
        v39 = v61;
        v40 = (*v59)(v34, 1, v61);
        v64 = v38;
        if (v40 == 1)
        {

          v25 = v62;
          sub_1D1771D7C(v41, v62);

          v42 = v66;
          if (v38(v66, 1, v39) != 1)
          {
            sub_1D1741A30(v42, &qword_1EC644780, &qword_1D1E91AA0);
          }
        }

        else
        {
          v24 = v34;
          v25 = v62;
          sub_1D1DCF39C(v24, v62, type metadata accessor for StaticEndpoint);
          (*v56)(v25, 0, 1, v39);
        }

        v26 = v64(v25, 1, v39);
        a1 = v63;
        if (v26 != 1)
        {
          v43 = v53;
          sub_1D1DCF39C(v25, v53, type metadata accessor for StaticEndpoint);
          v44 = [v54 matterControllerID];
          v64 = sub_1D1E6781C();
          v46 = v45;

          sub_1D1DD75D0(v65, v55, v64, v46, v43, v69);

          swift_unknownObjectRelease();
          sub_1D1DC91B0(v43, type metadata accessor for StaticEndpoint);
          sub_1D1DC91B0(v71, type metadata accessor for StaticMatterDevice);
          result = swift_isUniquelyReferenced_nonNull_native();
          a2 = v58;
          if ((result & 1) == 0)
          {
            result = sub_1D177E7E0(0, *(v57 + 2) + 1, 1, v57);
            v57 = result;
          }

          v48 = *(v57 + 2);
          v47 = *(v57 + 3);
          v13 = v60;
          if (v48 >= v47 >> 1)
          {
            result = sub_1D177E7E0((v47 > 1), v48 + 1, 1, v57);
            v57 = result;
          }

          v49 = v57;
          *(v57 + 2) = v48 + 1;
          v50 = &v49[40 * v48];
          v51 = v69[0];
          v52 = v69[1];
          *(v50 + 8) = v70;
          *(v50 + 2) = v51;
          *(v50 + 3) = v52;
          a1 = v63;
          goto LABEL_4;
        }

        swift_unknownObjectRelease();
        sub_1D1741A30(v25, &qword_1EC644780, &qword_1D1E91AA0);
        a2 = v58;
        v13 = v60;
      }
    }

    v23 = v71;
    result = sub_1D1DC91B0(v71, type metadata accessor for StaticMatterDevice);
  }

  while (1)
  {
    v27 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v27 >= v20)
    {

      return v57;
    }

    v19 = *(v16 + 8 * v27);
    ++v22;
    if (v19)
    {
      v22 = v27;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1DC83E4(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v29)
  {
    v5 = 0;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x1E69E7CC0];
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = i;
    v34 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v36)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v5, v31);
      }

      else
      {
        if (v5 >= *(v35 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v34 + 8 * v5);
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        break;
      }

      v41 = isUniquelyReferenced_nonNull_bridgeObject;
      v9 = v3;
      sub_1D1DB7124(&v41, a2, &selRef_actionSets, &qword_1EE07B680, 0x1E696CAF0, &v40);
      if (v3)
      {
        goto LABEL_42;
      }

      v10 = v40;
      v7 = (v40 >> 62);
      if (v40 >> 62)
      {
        v11 = sub_1D1E6873C();
      }

      else
      {
        v11 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v6 >> 62;
      if (v6 >> 62)
      {
        v28 = sub_1D1E6873C();
        v14 = v28 + v11;
        if (__OFADD__(v28, v11))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v6;
        }
      }

      else
      {
        v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v12)
        {
          goto LABEL_22;
        }

        v15 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v12)
        {
LABEL_22:
          sub_1D1E6873C();
          goto LABEL_23;
        }

        v15 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = *(v15 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v7)
      {
        v20 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v15 = v20;
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19)
      {
        if (((v18 >> 1) - v17) < v11)
        {
          goto LABEL_46;
        }

        v38 = v6;
        v21 = v15 + 8 * v17 + 32;
        v32 = v15;
        if (v7)
        {
          if (v19 < 1)
          {
            goto LABEL_48;
          }

          sub_1D17D8EA8(&qword_1EC64FD80, &qword_1EC64FD78, &unk_1D1EB0860);
          for (j = 0; j != v19; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD78, &unk_1D1EB0860);
            v23 = sub_1D1790CDC(v39, j, v10);
            v25 = *v24;
            (v23)(v39, 0);
            *(v21 + 8 * j) = v25;
          }
        }

        else
        {
          sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
          swift_arrayInitWithCopy();
        }

        v3 = v9;
        v6 = v38;
        if (v11 >= 1)
        {
          v26 = *(v32 + 16);
          v8 = __OFADD__(v26, v11);
          v27 = v26 + v11;
          if (v8)
          {
            goto LABEL_47;
          }

          *(v32 + 16) = v27;
        }
      }

      else
      {

        if (v11 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v5 == v33)
      {
        return v6;
      }
    }

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
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_1D1E6873C();
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D1DC8780(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v29)
  {
    v5 = 0;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x1E69E7CC0];
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = i;
    v34 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v36)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v5, v31);
      }

      else
      {
        if (v5 >= *(v35 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v34 + 8 * v5);
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        break;
      }

      v41 = isUniquelyReferenced_nonNull_bridgeObject;
      v9 = v3;
      sub_1D1DB7124(&v41, a2, &selRef_characteristics, &qword_1EE079CD0, 0x1E696CB38, &v40);
      if (v3)
      {
        goto LABEL_42;
      }

      v10 = v40;
      v7 = (v40 >> 62);
      if (v40 >> 62)
      {
        v11 = sub_1D1E6873C();
      }

      else
      {
        v11 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v6 >> 62;
      if (v6 >> 62)
      {
        v28 = sub_1D1E6873C();
        v14 = v28 + v11;
        if (__OFADD__(v28, v11))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v6;
        }
      }

      else
      {
        v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v12)
        {
          goto LABEL_22;
        }

        v15 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v12)
        {
LABEL_22:
          sub_1D1E6873C();
          goto LABEL_23;
        }

        v15 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = *(v15 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v7)
      {
        v20 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v15 = v20;
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19)
      {
        if (((v18 >> 1) - v17) < v11)
        {
          goto LABEL_46;
        }

        v38 = v6;
        v21 = v15 + 8 * v17 + 32;
        v32 = v15;
        if (v7)
        {
          if (v19 < 1)
          {
            goto LABEL_48;
          }

          sub_1D17D8EA8(&qword_1EC649B78, &qword_1EC649B80, &unk_1D1E95B60);
          for (j = 0; j != v19; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B80, &unk_1D1E95B60);
            v23 = sub_1D1790CDC(v39, j, v10);
            v25 = *v24;
            (v23)(v39, 0);
            *(v21 + 8 * j) = v25;
          }
        }

        else
        {
          sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
          swift_arrayInitWithCopy();
        }

        v3 = v9;
        v6 = v38;
        if (v11 >= 1)
        {
          v26 = *(v32 + 16);
          v8 = __OFADD__(v26, v11);
          v27 = v26 + v11;
          if (v8)
          {
            goto LABEL_47;
          }

          *(v32 + 16) = v27;
        }
      }

      else
      {

        if (v11 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v5 == v33)
      {
        return v6;
      }
    }

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
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_1D1E6873C();
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D1DC8BA4(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, SEL *a3, unint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v6 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v6)
  {
    v7 = 0;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v8 = MEMORY[0x1E69E7CC0];
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = v6;
    v34 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v36)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v7, v32);
      }

      else
      {
        if (v7 >= *(v35 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v34 + 8 * v7);
      }

      v9 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        break;
      }

      v11 = [isUniquelyReferenced_nonNull_bridgeObject *a3];
      sub_1D1741B10(0, a4, a5);
      v12 = sub_1D1E67C1C();

      v13 = a6(v12, a2);

      v14 = v13 >> 62;
      if (v13 >> 62)
      {
        v15 = sub_1D1E6873C();
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v8 >> 62;
      if (v8 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v17 = isUniquelyReferenced_nonNull_bridgeObject + v15;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = isUniquelyReferenced_nonNull_bridgeObject + v15;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v16)
        {
          goto LABEL_21;
        }

        v18 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v16)
        {
LABEL_21:
          sub_1D1E6873C();
          goto LABEL_22;
        }

        v18 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = *(v18 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v8 = isUniquelyReferenced_nonNull_bridgeObject;
      v18 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v44 = v8;
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v14)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v22 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v21 >> 1) - v20) < v15)
          {
            goto LABEL_44;
          }

          v23 = v18 + 8 * v20 + 32;
          v42 = v15;
          if (v14)
          {
            if (v22 < 1)
            {
              goto LABEL_46;
            }

            sub_1D17D8EA8(&qword_1EC649B78, &qword_1EC649B80, &unk_1D1E95B60);
            for (i = 0; i != v22; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B80, &unk_1D1E95B60);
              v25 = sub_1D1790CDC(v43, i, v13);
              v27 = *v26;
              (v25)(v43, 0);
              *(v23 + 8 * i) = v27;
            }
          }

          else
          {
            sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
            swift_arrayInitWithCopy();
          }

          v8 = v44;
          if (v42 >= 1)
          {
            v28 = *(v18 + 16);
            v10 = __OFADD__(v28, v42);
            v29 = v28 + v42;
            if (v10)
            {
              goto LABEL_45;
            }

            *(v18 + 16) = v29;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      v8 = v44;
      if (v15 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v7 == v33)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v6 = sub_1D1E6873C();
    isUniquelyReferenced_nonNull_bridgeObject = v30;
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1D1DC8F84(uint64_t a1)
{
  if (qword_1EC642300 != -1)
  {
    swift_once();
  }

  v2 = objc_allocWithZone(MEMORY[0x1E696CC08]);

  v3 = [v2 initWithOptions:a1 cachePolicy:0];
  [v3 setDiscretionary_];
  [v3 setInactiveUpdatingLevel_];
  v4 = HomeState._Client.createHomeManagerIfNecessary(configuration:)(v3);

  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  qword_1EE07AE40 = 3;
  swift_beginAccess();
  if (!qword_1EE07AE00)
  {
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v5 = qword_1EE07DC60;
    v6 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
    swift_beginAccess();
    v7 = *(v5 + v6);
    *(v5 + v6) = v4;
    v8 = v4;
  }

  return v4;
}

uint64_t sub_1D1DC9148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1DC91B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id _s13HomeDataModel06WidgetbC0C11homeManagerSo06HMHomeF0CSgvg_0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = sub_1D1E6781C();
  v4 = v3;

  if (v2 == 0xD000000000000015 && 0x80000001D1EC9E10 == v4)
  {
  }

  else
  {
    v6 = sub_1D1E6904C();

    if ((v6 & 1) == 0)
    {
LABEL_7:
      if (qword_1EC642300 != -1)
      {
        swift_once();
      }

      v7 = off_1EC649B88;
      swift_getKeyPath();
      sub_1D1DC9C14(&qword_1EC649B98, 255, type metadata accessor for HomeState._Client);

      sub_1D1E66CAC();

      v8 = v7[2];
      v9 = v8;

      if (!v8)
      {
        if (qword_1EC6424B8 != -1)
        {
          swift_once();
        }

        os_unfair_lock_lock(&dword_1EC64F958);
        v10 = qword_1EC64F960;
        os_unfair_lock_unlock(&dword_1EC64F958);
        return sub_1D1DC8F84(v10);
      }

      return v8;
    }
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EE0813C8);
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6833C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D16EC000, v12, v13, "Attempting to use WidgetDataModel in Springboard, this is not supported", v14, 2u);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE07DC60;
  v16 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v8 = *(v15 + v16);
  v17 = v8;
  return v8;
}

unint64_t sub_1D1DC9524()
{
  result = qword_1EC64F970;
  if (!qword_1EC64F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F970);
  }

  return result;
}

uint64_t sub_1D1DC9578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = a5;
  v31 = a2;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticHome();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x1EEE9AC00](v12 - 8);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v17 >> 1;
  v21 = v16;
  if (v17 >> 1 != v16)
  {
    v26 = a1;
    v27 = v16;
    v28 = v17;
    v29 = v5;
    v22 = (v8 + 8);
    v21 = v16;
    if (v16 <= v20)
    {
      v23 = v17 >> 1;
    }

    else
    {
      v23 = v16;
    }

    while (1)
    {
      if (v23 == v21)
      {
        __break(1u);
        goto LABEL_15;
      }

      sub_1D1DC9148(v31 + *(v13 + 72) * v21, v19, type metadata accessor for StaticHome);
      v24 = [v30 uniqueIdentifier];
      sub_1D1E66A5C();

      LOBYTE(v24) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      (*v22)(v11, v7);
      result = sub_1D1DC91B0(v19, type metadata accessor for StaticHome);
      if ((v24 & 1) == 0)
      {
        break;
      }

      if (v20 == ++v21)
      {
        v21 = v20;
        break;
      }
    }

    v16 = v27;
    a1 = v26;
    if (v21 >= v27)
    {
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (v20 < v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v20 < v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    return a1;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D1DC97E8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD90, &qword_1D1EB0890);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1DC9524();
  sub_1D1E692FC();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1D1E68D2C();
    v11 = 1;
    sub_1D1E68D2C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1D1DC9A1C()
{
  result = qword_1EC64F9A8;
  if (!qword_1EC64F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9A8);
  }

  return result;
}

unint64_t sub_1D1DC9A70()
{
  result = qword_1EC64F9B0;
  if (!qword_1EC64F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9B0);
  }

  return result;
}

unint64_t sub_1D1DC9AC4()
{
  result = qword_1EC64F9B8;
  if (!qword_1EC64F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9B8);
  }

  return result;
}

unint64_t sub_1D1DC9B18()
{
  result = qword_1EC64F9C0;
  if (!qword_1EC64F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9C0);
  }

  return result;
}

unint64_t sub_1D1DC9B6C()
{
  result = qword_1EC64F9C8;
  if (!qword_1EC64F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9C8);
  }

  return result;
}

unint64_t sub_1D1DC9BC0()
{
  result = qword_1EC64F9D0;
  if (!qword_1EC64F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9D0);
  }

  return result;
}

uint64_t sub_1D1DC9C14(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D1DC9C74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticHome();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1DC9D80()
{
  result = qword_1EC64F9F0;
  if (!qword_1EC64F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9F0);
  }

  return result;
}

void sub_1D1DC9E70(uint64_t a1)
{
  sub_1D177868C();
  if (v3 <= 0x3F)
  {
    v9 = *(v2 - 8) + 64;
    v4 = *(a1 + 16);
    v5 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v10 = *(v5 - 8) + 64;
      v7 = sub_1D1E66FDC();
      if (v8 <= 0x3F)
      {
        v11 = *(v7 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t sub_1D1DC9F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(*(a2 + 16) - 8) + 8;
  v7 = v6;
  v8 = *(v5 + 64) + a1;
  if (!*(v5 + 84))
  {
    ++v8;
  }

  v9 = (v8 + *(v6 + 72)) & ~*(v6 + 72);
  (*v6)(v9);
  v10 = (*(v7 + 56) + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = sub_1D1E66FDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v14 = (v10 + *(v12 + 80) + 4) & ~*(v12 + 80);

  return v13(v14, v11);
}

void *sub_1D1DCA0EC(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 32))(v18, v19);
  v20 = *(v15 + 32) + 3;
  v21 = ((v20 + v18) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v20 + v19) & 0xFFFFFFFFFFFFFFFCLL);
  *v21 = *v22;
  v23 = sub_1D1E66FDC();
  v24 = *(v23 - 8);
  (*(v24 + 32))((v21 + *(v24 + 80) + 4) & ~*(v24 + 80), (v22 + *(v24 + 80) + 4) & ~*(v24 + 80), v23);
  return a1;
}

void *sub_1D1DCA2C0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 40;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (a1 + v18) & ~v17;
  v20 = (a2 + v18) & ~v17;
  (*(v15 + 40))(v19, v20);
  v21 = *(v16 + 24) + 3;
  v22 = ((v21 + v19) & 0xFFFFFFFFFFFFFFFCLL);
  v23 = ((v21 + v20) & 0xFFFFFFFFFFFFFFFCLL);
  *v22 = *v23;
  v24 = sub_1D1E66FDC();
  v25 = *(v24 - 8);
  (*(v25 + 40))((v22 + *(v25 + 80) + 4) & ~*(v25 + 80), (v23 + *(v25 + 80) + 4) & ~*(v25 + 80), v24);
  return a1;
}

uint64_t sub_1D1DCA510(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v37 = v6;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v36 = *(a3 + 16);
  v10 = *(v36 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(sub_1D1E66FDC() - 8);
  v14 = v13;
  if (*(v13 + 84) <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(v10 + 80);
  v17 = *(v13 + 80);
  v18 = *(v13 + 64);
  if (v8)
  {
    v19 = *(v7 + 64);
  }

  else
  {
    v19 = *(v7 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v19 + v16;
  v21 = *(v10 + 64) + 3;
  v22 = v17 + 4;
  if (a2 <= v15)
  {
    goto LABEL_37;
  }

  v23 = ((v22 + ((v21 + (v20 & ~v16)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v17) + v18;
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v26 = ((a2 - v15 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v26))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v26 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v26 < 2)
    {
LABEL_36:
      if (v15)
      {
LABEL_37:
        if (v9 == v15)
        {
          v30 = (*(v7 + 48))(a1, v8, v37);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v32 = (a1 + v20) & ~v16;
          if (v11 == v15)
          {
            v33 = *(v10 + 48);

            return v33(v32, v11, v36);
          }

          else
          {
            v34 = *(v14 + 48);
            v35 = (v22 + ((v21 + v32) & 0xFFFFFFFFFFFFFFFCLL)) & ~v17;

            return v34(v35);
          }
        }
      }

      return 0;
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_36;
  }

LABEL_23:
  v27 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v27 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v28 = v23;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v15 + (v29 | v27) + 1;
}

void sub_1D1DCA860(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v37 = v7;
  v38 = v6;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v36 = *(a4 + 16);
  v10 = *(v36 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = 0;
  v14 = *(sub_1D1E66FDC() - 8);
  v15 = v14;
  v16 = *(v7 + 64);
  if (*(v14 + 84) <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  if (!v8)
  {
    ++v16;
  }

  v18 = *(v10 + 80);
  v19 = v16 + v18;
  v20 = (v16 + v18) & ~v18;
  v21 = *(v10 + 64) + 3;
  v22 = *(v14 + 80);
  v23 = ((v22 + 4 + ((v21 + v20) & 0xFFFFFFFFFFFFFFFCLL)) & ~v22) + *(v14 + 64);
  if (a3 > v17)
  {
    if (v23 <= 3)
    {
      v24 = ((a3 - v17 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v24))
      {
        v13 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v13 = v25;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  v26 = a2;
  if (v17 < a2)
  {
    v27 = ~v17 + a2;
    if (v23 < 4)
    {
      v28 = (v27 >> (8 * v23)) + 1;
      if (v23)
      {
        v30 = v27 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v30;
            if (v13 > 1)
            {
LABEL_56:
              if (v13 == 2)
              {
                *&a1[v23] = v28;
              }

              else
              {
                *&a1[v23] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v13 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v13 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v27;
      v28 = 1;
      if (v13 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v13)
    {
      a1[v23] = v28;
    }

    return;
  }

  v29 = a1;
  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v13 == 2)
  {
    *&a1[v23] = 0;
    goto LABEL_38;
  }

  *&a1[v23] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v9 == v17)
  {
    v31 = v38;
    v32 = *(v37 + 56);
    v26 = a2 + 1;
    v33 = v8;
LABEL_43:

    v32(v29, v26, v33, v31);
    return;
  }

  v29 = (&a1[v19] & ~v18);
  if (v11 == v17)
  {
    v32 = *(v10 + 56);
    v33 = v11;
    v31 = v36;
    goto LABEL_43;
  }

  v34 = *(v15 + 56);
  v35 = (v22 + 4 + (&v29[v21] & 0xFFFFFFFFFFFFFFFCLL)) & ~v22;

  v34(v35);
}

void sub_1D1DCAC1C(uint64_t a1)
{
  sub_1D177868C();
  if (v3 <= 0x3F)
  {
    v9 = *(v2 - 8) + 64;
    v4 = *(a1 + 16);
    v5 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v10 = *(v5 - 8) + 64;
      v7 = sub_1D1E66FDC();
      if (v8 <= 0x3F)
      {
        v11 = *(v7 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t sub_1D1DCAD4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = a1 + *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v6;
  }

  v7 = v6 + 7;
  v9 = (v7 & 0xFFFFFFFFFFFFFFF8) + 15;
  v8 = *(v7 & 0xFFFFFFFFFFFFFFF8);

  v9 &= 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;

  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;

  v13 = *(*(a2 + 16) - 8);
  v14 = v13 + 8;
  v15 = (v11 + *(v13 + 80) + 8) & ~*(v13 + 80);
  (*(v13 + 8))(v15);
  v16 = (*(v14 + 56) + v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = sub_1D1E66FDC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v20 = (v16 + *(v18 + 80) + 5) & ~*(v18 + 80);

  return v19(v20, v17);
}

void *sub_1D1DCAEE0(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = v13 + 7;
  v15 = ((a1 + v14) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((a2 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = *(*(a3 + 16) - 8);
  v22 = v21 + 32;
  v23 = *(v21 + 80);
  v24 = (v19 + v23 + 8) & ~v23;
  v25 = (v20 + v23 + 8) & ~v23;
  (*(v21 + 32))(v24, v25);
  v26 = *(v22 + 32) + 3;
  v27 = (v26 + v24) & 0xFFFFFFFFFFFFFFFCLL;
  v28 = (v26 + v25) & 0xFFFFFFFFFFFFFFFCLL;
  *v27 = *v28;
  *(v27 + 4) = *(v28 + 4);
  v29 = sub_1D1E66FDC();
  v30 = *(v29 - 8);
  (*(v30 + 32))((*(v30 + 80) + 5 + v27) & ~*(v30 + 80), (*(v30 + 80) + 5 + v28) & ~*(v30 + 80), v29);
  return a1;
}

void *sub_1D1DCB0F8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = v14 + 7;
  v16 = ((a1 + v15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((a2 + v15) & 0xFFFFFFFFFFFFFFF8);
  v18 = *v16;
  *v16 = *v17;

  v19 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = *v19;
  *v19 = *v20;

  v22 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = *v22;
  *v22 = *v23;

  v25 = *(*(a3 + 16) - 8);
  v26 = v25 + 40;
  v27 = *(v25 + 80);
  v28 = (v22 + v27 + 8) & ~v27;
  v29 = (v23 + v27 + 8) & ~v27;
  (*(v25 + 40))(v28, v29);
  v30 = *(v26 + 24) + 3;
  v31 = (v30 + v28) & 0xFFFFFFFFFFFFFFFCLL;
  v32 = (v30 + v29) & 0xFFFFFFFFFFFFFFFCLL;
  *v31 = *v32;
  *(v31 + 4) = *(v32 + 4);
  v33 = sub_1D1E66FDC();
  v34 = *(v33 - 8);
  (*(v34 + 40))((*(v34 + 80) + 5 + v31) & ~*(v34 + 80), (*(v34 + 80) + 5 + v32) & ~*(v34 + 80), v33);
  return a1;
}

uint64_t sub_1D1DCB3A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v39 = v6;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v38 = *(a3 + 16);
  v10 = *(v38 - 8);
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v9;
  }

  v13 = sub_1D1E66FDC();
  v14 = *(v13 - 8);
  v15 = *(v10 + 80);
  v16 = *(v14 + 80);
  if (v12 <= *(v14 + 84))
  {
    v17 = *(v14 + 84);
  }

  else
  {
    v17 = v12;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (v8)
  {
    v19 = *(v7 + 64);
  }

  else
  {
    v19 = *(v7 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 + 8;
  v21 = *(v10 + 64) + 3;
  v22 = v16 + 5;
  if (a2 > v18)
  {
    v23 = ((v22 + ((v21 + ((v20 + ((((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v16) + *(*(v13 - 8) + 64);
    v24 = 8 * v23;
    if (v23 > 3)
    {
      goto LABEL_19;
    }

    v26 = ((a2 - v18 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v26))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v26 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v26 >= 2)
    {
LABEL_19:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_39;
      }

LABEL_26:
      v27 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v27 = 0;
      }

      if (v23)
      {
        if (v23 <= 3)
        {
          v28 = v23;
        }

        else
        {
          v28 = 4;
        }

        if (v28 > 2)
        {
          if (v28 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v29 = *a1;
          }
        }

        else if (v28 == 1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *a1;
        }
      }

      else
      {
        v29 = 0;
      }

      return v18 + (v29 | v27) + 1;
    }
  }

LABEL_39:
  if (v9 == v18)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v33 = (*(v7 + 48))(a1, v8, v39);
    if (v33 >= 2)
    {
      return v33 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v31 = ((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v17 & 0x80000000) != 0)
    {
      v34 = (v20 + ((((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
      if (v11 == v18)
      {
        v35 = *(v10 + 48);

        return v35(v34, v11, v38);
      }

      else
      {
        v36 = *(v14 + 48);
        v37 = (v22 + ((v21 + v34) & 0xFFFFFFFFFFFFFFFCLL)) & ~v16;

        return v36(v37);
      }
    }

    else
    {
      v32 = *v31;
      if (*v31 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }
  }
}

void sub_1D1DCB758(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v38 = v7;
  v39 = v6;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v37 = *(a4 + 16);
  v10 = *(v37 - 8);
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v9;
  }

  v13 = 0;
  v14 = *(sub_1D1E66FDC() - 8);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = *(v14 + 80);
  if (v12 <= *(v14 + 84))
  {
    v18 = *(v14 + 84);
  }

  else
  {
    v18 = v12;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v8)
  {
    v20 = *(v7 + 64);
  }

  else
  {
    v20 = *(v7 + 64) + 1;
  }

  v21 = v16 + 3;
  v22 = ((v17 + 5 + ((v16 + 3 + ((v15 + 8 + ((((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v17) + *(v14 + 64);
  if (a3 > v19)
  {
    if (v22 <= 3)
    {
      v23 = ((a3 - v19 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
      if (HIWORD(v23))
      {
        v13 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v13 = v24;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  v25 = a2;
  if (v19 < a2)
  {
    v26 = ~v19 + a2;
    if (v22 >= 4)
    {
      bzero(a1, v22);
      *a1 = v26;
      v27 = 1;
      if (v13 > 1)
      {
        goto LABEL_30;
      }

      goto LABEL_59;
    }

    v27 = (v26 >> (8 * v22)) + 1;
    if (v22)
    {
      v29 = v26 & ~(-1 << (8 * v22));
      bzero(a1, v22);
      if (v22 != 3)
      {
        if (v22 == 2)
        {
          *a1 = v29;
          if (v13 > 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *a1 = v26;
          if (v13 > 1)
          {
LABEL_30:
            if (v13 == 2)
            {
              *&a1[v22] = v27;
            }

            else
            {
              *&a1[v22] = v27;
            }

            return;
          }
        }

LABEL_59:
        if (v13)
        {
          a1[v22] = v27;
        }

        return;
      }

      *a1 = v29;
      a1[2] = BYTE2(v29);
    }

    if (v13 > 1)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

  v28 = a1;
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&a1[v22] = 0;
  }

  else if (v13)
  {
    a1[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v9 == v19)
  {
    v30 = v39;
    v31 = *(v38 + 56);
    v25 = a2 + 1;
    v32 = v8;
LABEL_46:

    v31(v28, v25, v32, v30);
    return;
  }

  v33 = (&a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8);
  if ((v18 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v34 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v34 = a2 - 1;
    }

    *v33 = v34;
    return;
  }

  v28 = (v15 + 8 + ((((v33 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
  if (v11 == v19)
  {
    v31 = *(v10 + 56);
    v32 = v11;
    v30 = v37;
    goto LABEL_46;
  }

  v35 = *(v14 + 56);
  v36 = (v17 + 5 + ((v21 + v28) & 0xFFFFFFFFFFFFFFFCLL)) & ~v17;

  v35(v36);
}

uint64_t sub_1D1DCBB6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_1D1E66FDC();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1DCBC54(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = (a1 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v5 + 8))(v7);
  v8 = (*(v6 + 56) + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = sub_1D1E66FDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v12 = (v8 + *(v10 + 80) + 4) & ~*(v10 + 80);

  return v11(v12, v9);
}

void *sub_1D1DCBD28(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 3;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = sub_1D1E66FDC();
  v13 = *(v12 - 8);
  (*(v13 + 32))((v10 + *(v13 + 80) + 4) & ~*(v13 + 80), (v11 + *(v13 + 80) + 4) & ~*(v13 + 80), v12);
  return a1;
}

uint64_t *sub_1D1DCBE14(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (a1 + v9 + 8) & ~v9;
  v11 = (a2 + v9 + 8) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24) + 3;
  v13 = ((v12 + v10) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + v11) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = sub_1D1E66FDC();
  v16 = *(v15 - 8);
  (*(v16 + 40))((v13 + *(v16 + 80) + 4) & ~*(v16 + 80), (v14 + *(v16 + 80) + 4) & ~*(v16 + 80), v15);
  return a1;
}

uint64_t sub_1D1DCBF10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1D1E66FDC();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + 3;
  v15 = v11 + 4;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v16 = ((v15 + ((v14 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v11) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (a1 + v10 + 8) & ~v10;
        if (v7 == v13)
        {
          v26 = *(v6 + 48);

          return v26(v25, v7, v5);
        }

        else
        {
          v27 = *(v9 + 48);
          v28 = (v15 + ((v14 + v25) & 0xFFFFFFFFFFFFFFFCLL)) & ~v11;

          return v27(v28);
        }
      }

      else
      {
        v24 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v21) + 1;
}

void sub_1D1DCC1C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = sub_1D1E66FDC();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = v13 + 3;
  v18 = ((v14 + 4 + ((v13 + 3 + ((v12 + 8) & ~v12)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v16 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v16 < a2)
  {
    v20 = ~v16 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_54:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v26 = &a1[v12 + 8] & ~v12;
    if (v9 == v16)
    {
      v27 = *(v30 + 56);

      v27(v26, a2, v9, v7);
    }

    else
    {
      v28 = *(v11 + 56);
      v29 = (v14 + 4 + ((v17 + v26) & 0xFFFFFFFFFFFFFFFCLL)) & ~v14;

      v28(v29, a2);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = (a2 - 1);
    }

    *a1 = v25;
  }
}

void sub_1D1DCC51C()
{
  sub_1D177868C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D1DCC650(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for WidgetRefresh();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = type metadata accessor for WidgetDetailUpdate();
    if (v5 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = type metadata accessor for WidgetWriteRequests();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D1DCC774(unsigned __int16 *a1, uint64_t a2)
{
  v35 = sub_1D1E66A7C();
  v4 = *(v35 - 8);
  if (*(v4 + 84))
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = *(v4 + 64) + 1;
  }

  v38 = *(a2 + 16);
  v6 = *(v38 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64) + 3;
  v9 = sub_1D1E66FDC();
  v10 = *(*(v9 - 8) + 80);
  v11 = *(*(v9 - 8) + 64);
  v12 = ((v10 + 4 + ((v8 + ((v5 + v7) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v10) + v11;
  v13 = v7 + 8;
  v14 = ((v10 + 4 + ((v8 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v10) + v11;
  v15 = ((v10 + ((v8 + ((v7 + 8 + ((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v10) + v11;
  if (v15 <= v12)
  {
    v15 = v12;
  }

  if (v14 > v15)
  {
    v15 = v14;
  }

  v16 = *(a1 + v15);
  v17 = v16 - 3;
  if (v16 >= 3)
  {
    if (v15 <= 3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v19 = *a1;
        if (v15 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v18 == 3)
        {
          v19 = *a1 | (*(a1 + 2) << 16);
          if (v15 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v16 = v19 + 3;
          goto LABEL_24;
        }

        v19 = *a1;
        if (v15 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v16 = (v19 | (v17 << (8 * v15))) + 3;
      goto LABEL_24;
    }

    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = *a1;
    if (v15 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_24:
  v20 = ~v7;
  v36 = v9;
  v37 = *(v9 - 8);
  if (v16 == 2)
  {
    v29 = *a1;

    v27 = a1 + v7 + 8;
    v28 = 4;
LABEL_30:
    v30 = v38;
    goto LABEL_34;
  }

  if (v16 == 1)
  {
    if (!(*(v4 + 48))(a1, 1, v35))
    {
      (*(v4 + 8))(a1, v35);
    }

    v21 = a1 + v5 + 7;
    v23 = (v21 & 0xFFFFFFFFFFFFFFF8) + 15;
    v22 = *(v21 & 0xFFFFFFFFFFFFFFF8);

    v23 &= 0xFFFFFFFFFFFFFFF8;
    v24 = *v23;

    v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    v26 = *v25;

    v27 = v25 + v13;
    v28 = 5;
    goto LABEL_30;
  }

  v31 = (*(v4 + 48))(a1, 1, v35);
  v30 = v38;
  if (!v31)
  {
    (*(v4 + 8))(a1, v35);
    v30 = v38;
  }

  v27 = a1 + v5 + v7;
  v28 = 4;
LABEL_34:
  v32 = v27 & v20;
  (*(v6 + 8))(v27 & v20, v30);
  v33 = *(v37 + 8);

  return v33((((v8 + v32) & 0xFFFFFFFFFFFFFFFCLL) + v28 + v10) & ~v10, v36);
}

void *sub_1D1DCCB20(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v46 = sub_1D1E66A7C();
  v5 = *(v46 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v47 = *(a3 + 16);
  v7 = *(v47 - 8);
  v8 = *(v7 + 80);
  v45 = v6 + v8;
  v9 = *(v7 + 64) + 3;
  v10 = sub_1D1E66FDC();
  v11 = *(*(v10 - 8) + 80);
  v12 = *(*(v10 - 8) + 64);
  v13 = ((v11 + 4 + ((v9 + ((v6 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v11) + v12;
  v14 = v8 + 8;
  v15 = ((v11 + 4 + ((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v11) + v12;
  v16 = ((v11 + ((v9 + ((v8 + 8 + ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v11) + v12;
  if (v16 <= v13)
  {
    v16 = v13;
  }

  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = *(a2 + v17);
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a2;
        if (v17 >= 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = *a2 | (*(a2 + 2) << 16);
          if (v17 < 4)
          {
            goto LABEL_24;
          }

LABEL_22:
          v18 = v21 + 3;
          goto LABEL_25;
        }

        v21 = *a2;
        if (v17 >= 4)
        {
          goto LABEL_22;
        }
      }

LABEL_24:
      v18 = (v21 | (v19 << (8 * v17))) + 3;
      goto LABEL_25;
    }

    if (!v20)
    {
      goto LABEL_25;
    }

    v21 = *a2;
    if (v17 < 4)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_25:
  v22 = ~v8;
  v48 = *(v10 - 8);
  v49 = v10;
  if (v18 == 2)
  {
    v23 = a1;
    *a1 = *a2;
    (*(v7 + 32))((a1 + v8 + 8) & v22, (a2 + v8 + 8) & v22, v47);
    v24 = ((v9 + ((a1 + v8 + 8) & v22)) & 0xFFFFFFFFFFFFFFFCLL);
    v25 = ((v9 + ((a2 + v8 + 8) & v22)) & 0xFFFFFFFFFFFFFFFCLL);
    v27 = *v25;
    v26 = v25 + 1;
    *v24 = v27;
    v28 = v24 + 1;
    v29 = 2;
  }

  else if (v18 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v46))
    {
      v23 = a1;
      memcpy(a1, a2, v6);
    }

    else
    {
      (*(v5 + 32))(a1, a2, v46);
      (*(v5 + 56))(a1, 0, 1, v46);
      v23 = a1;
    }

    v30 = ((v23 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v30 = *v31;
    v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v32 = *v33;
    v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v35;
    v36 = (v34 + v14) & v22;
    v37 = (v35 + v14) & v22;
    (*(v7 + 32))(v36, v37, v47);
    v38 = (v9 + v36) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = (v9 + v37) & 0xFFFFFFFFFFFFFFFCLL;
    *v38 = *v39;
    *(v38 + 4) = *(v39 + 4);
    v28 = (v38 + 5);
    v26 = (v39 + 5);
    v29 = 1;
  }

  else
  {
    if ((*(v5 + 48))(a2, 1, v46))
    {
      v23 = a1;
      memcpy(a1, a2, v6);
    }

    else
    {
      (*(v5 + 32))(a1, a2, v46);
      (*(v5 + 56))(a1, 0, 1, v46);
      v23 = a1;
    }

    v40 = (a2 + v45) & v22;
    (*(v7 + 32))((v23 + v45) & v22, v40, v47);
    v29 = 0;
    v41 = ((v9 + ((v23 + v45) & v22)) & 0xFFFFFFFFFFFFFFFCLL);
    v42 = ((v9 + v40) & 0xFFFFFFFFFFFFFFFCLL);
    v43 = *v42;
    v26 = v42 + 1;
    *v41 = v43;
    v28 = v41 + 1;
  }

  (*(v48 + 32))((v28 + v11) & ~v11, (v26 + v11) & ~v11, v49);
  *(v23 + v17) = v29;
  return v23;
}

unsigned __int8 *sub_1D1DCD020(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = sub_1D1E66A7C();
    v7 = *(v6 - 8);
    v65 = v7;
    if (*(v7 + 84))
    {
      v8 = *(v7 + 64);
    }

    else
    {
      v8 = *(v7 + 64) + 1;
    }

    v69 = *(a3 + 16);
    v9 = *(v69 - 8);
    v10 = *(v9 + 80);
    v62 = v8 + v10;
    v11 = *(v9 + 64) + 3;
    v12 = sub_1D1E66FDC();
    v67 = *(v12 - 8);
    v13 = *(v67 + 80);
    v14 = *(v67 + 64);
    v15 = ((v13 + 4 + ((v11 + ((v8 + v10) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v13) + v14;
    v16 = ((v13 + 4 + ((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v13) + v14;
    __n = v8;
    v61 = v10 + 8;
    v17 = ((v13 + ((v11 + ((v10 + 8 + ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v13) + v14;
    if (v17 <= v15)
    {
      v17 = v15;
    }

    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    v19 = a1[v18];
    v20 = v19 - 3;
    if (v19 < 3)
    {
LABEL_26:
      v68 = ~v10;
      v66 = ~v13;
      v63 = v6;
      v23 = v12;
      if (v19 == 2)
      {
        v32 = *a1;

        v30 = &a1[v10 + 8];
      }

      else
      {
        if (v19 == 1)
        {
          if (!(*(v65 + 48))(a1, 1, v6))
          {
            (*(v65 + 8))(a1, v6);
          }

          v24 = &a1[__n + 7];
          v26 = (v24 & 0xFFFFFFFFFFFFFFF8) + 15;
          v25 = *(v24 & 0xFFFFFFFFFFFFFFF8);

          v26 &= 0xFFFFFFFFFFFFFFF8;
          v27 = *v26;

          v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
          v29 = *v28;

          v30 = v28 + v61;
          v31 = 5;
LABEL_36:
          v33 = v30 & v68;
          (*(v9 + 8))(v30 & v68, v69);
          (*(v67 + 8))((((v11 + v33) & 0xFFFFFFFFFFFFFFFCLL) + v31 + v13) & v66, v23);
          v34 = a2[v18];
          v35 = v34 - 3;
          if (v34 < 3)
          {
            goto LABEL_50;
          }

          if (v18 <= 3)
          {
            v36 = v18;
          }

          else
          {
            v36 = 4;
          }

          if (v36 <= 1)
          {
            if (!v36)
            {
              goto LABEL_50;
            }

            v37 = *a2;
            if (v18 < 4)
            {
LABEL_61:
              v56 = v37 | (v35 << (8 * v18));
              v34 = v56 + 3;
              if (v56 == -1)
              {
                goto LABEL_62;
              }

              goto LABEL_51;
            }
          }

          else if (v36 == 2)
          {
            v37 = *a2;
            if (v18 < 4)
            {
              goto LABEL_61;
            }
          }

          else if (v36 == 3)
          {
            v37 = *a2 | (a2[2] << 16);
            if (v18 < 4)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v37 = *a2;
            if (v18 < 4)
            {
              goto LABEL_61;
            }
          }

          v34 = v37 + 3;
LABEL_50:
          if (v34 == 2)
          {
LABEL_62:
            *a1 = *a2;
            (*(v9 + 32))(&a1[v10 + 8] & v68, &a2[v10 + 8] & v68, v69);
            v57 = ((v11 + (&a1[v10 + 8] & v68)) & 0xFFFFFFFFFFFFFFFCLL);
            v58 = ((v11 + (&a2[v10 + 8] & v68)) & 0xFFFFFFFFFFFFFFFCLL);
            v59 = *v58;
            v50 = v58 + 1;
            *v57 = v59;
            v49 = v57 + 1;
            v51 = 2;
LABEL_63:
            (*(v67 + 32))((v49 + v13) & v66, (v50 + v13) & v66, v23);
            a1[v18] = v51;
            return a1;
          }

LABEL_51:
          if (v34 == 1)
          {
            if ((*(v65 + 48))(a2, 1, v63))
            {
              v38 = __n;
              memcpy(a1, a2, __n);
            }

            else
            {
              (*(v65 + 32))(a1, a2, v63);
              (*(v65 + 56))(a1, 0, 1, v63);
              v38 = __n;
            }

            v39 = (&a1[v38 + 7] & 0xFFFFFFFFFFFFFFF8);
            v40 = (&a2[v38 + 7] & 0xFFFFFFFFFFFFFFF8);
            *v39 = *v40;
            v41 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
            v42 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
            *v41 = *v42;
            v43 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
            v44 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
            *v43 = *v44;
            v45 = (v43 + v61) & v68;
            v46 = (v44 + v61) & v68;
            (*(v9 + 32))(v45, v46, v69);
            v47 = (v11 + v45) & 0xFFFFFFFFFFFFFFFCLL;
            v48 = (v11 + v46) & 0xFFFFFFFFFFFFFFFCLL;
            *v47 = *v48;
            *(v47 + 4) = *(v48 + 4);
            v49 = (v47 + 5);
            v50 = (v48 + 5);
            v51 = 1;
          }

          else
          {
            if ((*(v65 + 48))(a2, 1, v63))
            {
              memcpy(a1, a2, __n);
            }

            else
            {
              (*(v65 + 32))(a1, a2, v63);
              (*(v65 + 56))(a1, 0, 1, v63);
            }

            v52 = &a2[v62] & v68;
            (*(v9 + 32))(&a1[v62] & v68, v52, v69);
            v51 = 0;
            v53 = ((v11 + (&a1[v62] & v68)) & 0xFFFFFFFFFFFFFFFCLL);
            v54 = ((v11 + v52) & 0xFFFFFFFFFFFFFFFCLL);
            v55 = *v54;
            v50 = v54 + 1;
            *v53 = v55;
            v49 = v53 + 1;
          }

          goto LABEL_63;
        }

        if (!(*(v65 + 48))(a1, 1, v6))
        {
          (*(v65 + 8))(a1, v6);
        }

        v30 = &a1[v62];
      }

      v31 = 4;
      goto LABEL_36;
    }

    if (v18 <= 3)
    {
      v21 = v18;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *a1;
        if (v18 >= 4)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = *a1 | (a1[2] << 16);
          if (v18 < 4)
          {
            goto LABEL_25;
          }

LABEL_23:
          v19 = v22 + 3;
          goto LABEL_26;
        }

        v22 = *a1;
        if (v18 >= 4)
        {
          goto LABEL_23;
        }
      }

LABEL_25:
      v19 = (v22 | (v20 << (8 * v18))) + 3;
      goto LABEL_26;
    }

    if (!v21)
    {
      goto LABEL_26;
    }

    v22 = *a1;
    if (v18 < 4)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  return a1;
}

uint64_t sub_1D1DCD70C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D1E66A7C() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1D1E66FDC() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v15 = v11 + 3;
  v16 = ((v13 + 4 + ((v11 + 3 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v13) + v14;
  if (v7)
  {
    v17 = v8;
  }

  else
  {
    v17 = v8 + 1;
  }

  v18 = ((v13 + 4 + ((v15 + ((v17 + v10) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v13) + v14;
  v19 = ((((v15 + ((v10 + 8 + ((((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL) + v13 + 5) & ~v13) + v14;
  if (v19 <= v18)
  {
    v19 = v18;
  }

  if (v16 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_31;
  }

  v21 = v20 + 1;
  v22 = 8 * (v20 + 1);
  if ((v20 + 1) <= 3)
  {
    v25 = ((a2 + ~(-1 << v22) - 253) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v25 < 2)
    {
LABEL_31:
      v27 = *(a1 + v20);
      if (v27 >= 3)
      {
        return (v27 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_31;
  }

LABEL_20:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 > 3)
    {
      LODWORD(v21) = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        LODWORD(v21) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v21) = *a1;
      }
    }

    else if (v21 == 1)
    {
      LODWORD(v21) = *a1;
    }

    else
    {
      LODWORD(v21) = *a1;
    }
  }

  return (v21 | v26) + 254;
}

void sub_1D1DCD99C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1D1E66A7C() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1D1E66FDC() - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 64);
  v17 = v13 + 3;
  v18 = ((v15 + 4 + ((v13 + 3 + ((v12 + 8) & ~v12)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v15) + v16;
  if (v9)
  {
    v19 = v10;
  }

  else
  {
    v19 = v10 + 1;
  }

  v20 = ((v15 + 4 + ((v17 + ((v19 + v12) & ~v12)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v15) + v16;
  v21 = ((((v17 + ((v12 + 8 + ((((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & 0xFFFFFFFFFFFFFFFCLL) + v15 + 5) & ~v15) + v16;
  if (v21 <= v20)
  {
    v21 = v20;
  }

  if (v18 > v21)
  {
    v21 = v18;
  }

  v22 = v21 + 1;
  if (a3 < 0xFE)
  {
    v23 = 0;
  }

  else if (v22 <= 3)
  {
    v26 = ((a3 + ~(-1 << (8 * v22)) - 253) >> (8 * v22)) + 1;
    if (HIWORD(v26))
    {
      v23 = 4;
    }

    else
    {
      if (v26 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 >= 2)
      {
        v23 = v27;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  if (a2 > 0xFD)
  {
    v24 = a2 - 254;
    if (v22 >= 4)
    {
      bzero(a1, v21 + 1);
      *a1 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v25 = (v24 >> (8 * v22)) + 1;
    if (v21 != -1)
    {
      v28 = v24 & ~(-1 << (8 * v22));
      bzero(a1, v22);
      if (v22 != 3)
      {
        if (v22 == 2)
        {
          *a1 = v28;
          if (v23 > 1)
          {
LABEL_44:
            if (v23 == 2)
            {
              *&a1[v22] = v25;
            }

            else
            {
              *&a1[v22] = v25;
            }

            return;
          }
        }

        else
        {
          *a1 = v24;
          if (v23 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v23)
        {
          a1[v22] = v25;
        }

        return;
      }

      *a1 = v28;
      a1[2] = BYTE2(v28);
    }

    if (v23 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v21] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v23 == 2)
  {
    *&a1[v22] = 0;
    goto LABEL_29;
  }

  *&a1[v22] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

uint64_t sub_1D1DCDCAC(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *(sub_1D1E66A7C() - 8);
  if (*(v4 + 84))
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = *(v4 + 64) + 1;
  }

  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64) + 3;
  v9 = *(sub_1D1E66FDC() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((v10 + 4 + ((v8 + ((v5 + v7) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v10) + v11;
  v13 = ((v10 + 4 + ((v8 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v10) + v11;
  v14 = ((((v8 + ((v7 + 8 + ((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 5) & ~v10) + v11;
  if (v14 <= v12)
  {
    v14 = v12;
  }

  if (v13 > v14)
  {
    v14 = v13;
  }

  result = *(a1 + v14);
  if (result >= 3)
  {
    if (v14 <= 3)
    {
      v16 = v14;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a1;
        if (v14 >= 4)
        {
          return (v17 + 3);
        }
      }

      else
      {
        if (v16 == 3)
        {
          v17 = *a1 | (*(a1 + 2) << 16);
          if (v14 < 4)
          {
            return (v17 | ((result - 3) << (8 * v14))) + 3;
          }

          return (v17 + 3);
        }

        v17 = *a1;
        if (v14 >= 4)
        {
          return (v17 + 3);
        }
      }

      return (v17 | ((result - 3) << (8 * v14))) + 3;
    }

    if (!v16)
    {
      return result;
    }

    v17 = *a1;
    if (v14 < 4)
    {
      return (v17 | ((result - 3) << (8 * v14))) + 3;
    }

    return (v17 + 3);
  }

  return result;
}

void sub_1D1DCDED8(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D1E66A7C() - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 80);
  v10 = ~v9;
  v11 = *(v8 + 64) + 3;
  v12 = (v11 + ((v7 + v9) & ~v9)) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(sub_1D1E66FDC() - 8);
  v14 = *(v13 + 80);
  v15 = ~v14;
  v16 = v14 + 4;
  v17 = *(v13 + 64);
  v18 = ((v14 + 4 + v12) & ~v14) + v17;
  if (a2 > 2)
  {
    v21 = ((((v11 + ((v9 + 8 + ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v10)) & 0xFFFFFFFFFFFFFFFCLL) + v14 + 5) & v15) + v17;
    if (v21 > v18)
    {
      v18 = v21;
    }

    v22 = ((v16 + ((v11 + ((v9 + 8) & v10)) & 0xFFFFFFFFFFFFFFFCLL)) & v15) + v17;
    if (v22 <= v18)
    {
      v22 = v18;
    }

    v23 = a2 - 3;
    if (v22 < 4)
    {
      a1[v22] = (v23 >> (8 * v22)) + 3;
      if (!v22)
      {
        return;
      }

      v23 &= ~(-1 << (8 * v22));
    }

    else
    {
      a1[v22] = 3;
    }

    if (v22 >= 4)
    {
      v24 = 4;
    }

    else
    {
      v24 = v22;
    }

    bzero(a1, v22);
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      else
      {
        *a1 = v23;
      }
    }

    else if (v24 == 1)
    {
      *a1 = v23;
    }

    else
    {
      *a1 = v23;
    }
  }

  else
  {
    v19 = ((v16 + ((v11 + ((v9 + 8) & v10)) & 0xFFFFFFFFFFFFFFFCLL)) & v15) + v17;
    v20 = ((((v11 + ((v9 + 8 + ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v10)) & 0xFFFFFFFFFFFFFFFCLL) + v14 + 5) & v15) + v17;
    if (v20 <= v18)
    {
      v20 = ((v14 + 4 + v12) & ~v14) + v17;
    }

    if (v19 > v20)
    {
      v20 = v19;
    }

    a1[v20] = a2;
  }
}

unint64_t sub_1D1DCE1EC(uint64_t a1)
{
  result = sub_1D1DCE854();
  if (v3 <= 0x3F)
  {
    result = sub_1D1E66A7C();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D1DCE28C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D1E66A7C() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) + *(v8 + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v24 = *(v6 + 48);

          return v24((a1 + v10 + 40) & ~v10);
        }

        else
        {
          v25 = *(v8 + 48);

          return v25((((a1 + v10 + 40) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v23 = *(a1 + 3);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) + *(v8 + 64);
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_1D1DCE514(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1D1E66A7C() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + ((v12 + 40) & ~v12) + v14) & ~v14) + *(v10 + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v24 = *(v8 + 56);

      v24((a1 + v12 + 40) & ~v12, a2);
    }

    else
    {
      v25 = *(v10 + 56);

      v25((((a1 + v12 + 40) & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 4) = 0u;
    *(a1 + 12) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = (a2 - 1);
  }
}

unint64_t sub_1D1DCE854()
{
  result = qword_1EC64FC90;
  if (!qword_1EC64FC90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC64FC90);
  }

  return result;
}

uint64_t sub_1D1DCE8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

unint64_t sub_1D1DCE9D0()
{
  result = qword_1EC64FCA8;
  if (!qword_1EC64FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCA8);
  }

  return result;
}

unint64_t sub_1D1DCEA28()
{
  result = qword_1EC64FCB0;
  if (!qword_1EC64FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCB0);
  }

  return result;
}

unint64_t sub_1D1DCEA80()
{
  result = qword_1EC64FCB8;
  if (!qword_1EC64FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCB8);
  }

  return result;
}

unint64_t sub_1D1DCEB40()
{
  result = qword_1EC64FCC8;
  if (!qword_1EC64FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCC8);
  }

  return result;
}

unint64_t sub_1D1DCEB98()
{
  result = qword_1EC64FCD0;
  if (!qword_1EC64FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCD0);
  }

  return result;
}

unint64_t sub_1D1DCEBF0()
{
  result = qword_1EC64FCD8;
  if (!qword_1EC64FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCD8);
  }

  return result;
}

unint64_t sub_1D1DCEC48()
{
  result = qword_1EC64FCE0;
  if (!qword_1EC64FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCE0);
  }

  return result;
}

unint64_t sub_1D1DCECA0()
{
  result = qword_1EC64FCE8;
  if (!qword_1EC64FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCE8);
  }

  return result;
}

unint64_t sub_1D1DCECF8()
{
  result = qword_1EC64FCF0;
  if (!qword_1EC64FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCF0);
  }

  return result;
}

unint64_t sub_1D1DCED50()
{
  result = qword_1EC64FCF8;
  if (!qword_1EC64FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCF8);
  }

  return result;
}

unint64_t sub_1D1DCEDA8()
{
  result = qword_1EC64FD00;
  if (!qword_1EC64FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD00);
  }

  return result;
}

unint64_t sub_1D1DCEE00()
{
  result = qword_1EC64FD08;
  if (!qword_1EC64FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD08);
  }

  return result;
}

unint64_t sub_1D1DCEE58()
{
  result = qword_1EC64FD10;
  if (!qword_1EC64FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD10);
  }

  return result;
}

unint64_t sub_1D1DCEEB0()
{
  result = qword_1EC64FD18;
  if (!qword_1EC64FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD18);
  }

  return result;
}

unint64_t sub_1D1DCEF08()
{
  result = qword_1EC64FD20;
  if (!qword_1EC64FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD20);
  }

  return result;
}

unint64_t sub_1D1DCEF60()
{
  result = qword_1EC64FD28;
  if (!qword_1EC64FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD28);
  }

  return result;
}

unint64_t sub_1D1DCEFB8()
{
  result = qword_1EC64FD30;
  if (!qword_1EC64FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD30);
  }

  return result;
}

uint64_t sub_1D1DCF00C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D6F486F6ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC9D30 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x48676E697373696DLL && a2 == 0xEB00000000656D6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5464696C61766E69 && a2 == 0xEB00000000657079 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

unint64_t sub_1D1DCF1D0()
{
  result = qword_1EC64FD50;
  if (!qword_1EC64FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD50);
  }

  return result;
}

unint64_t sub_1D1DCF224()
{
  result = qword_1EC64FD58;
  if (!qword_1EC64FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD58);
  }

  return result;
}

unint64_t sub_1D1DCF278()
{
  result = qword_1EC64FD60;
  if (!qword_1EC64FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD60);
  }

  return result;
}

uint64_t sub_1D1DCF39C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1DCF4D4()
{
  result = qword_1EC64FD98;
  if (!qword_1EC64FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD98);
  }

  return result;
}

unint64_t sub_1D1DCF52C()
{
  result = qword_1EC64FDA0;
  if (!qword_1EC64FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDA0);
  }

  return result;
}

unint64_t sub_1D1DCF584()
{
  result = qword_1EC64FDA8;
  if (!qword_1EC64FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDA8);
  }

  return result;
}

unint64_t sub_1D1DCF5DC()
{
  result = qword_1EC64FDB0;
  if (!qword_1EC64FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDB0);
  }

  return result;
}

unint64_t sub_1D1DCF634()
{
  result = qword_1EC64FDB8;
  if (!qword_1EC64FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDB8);
  }

  return result;
}

unint64_t sub_1D1DCF68C()
{
  result = qword_1EC64FDC0;
  if (!qword_1EC64FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDC0);
  }

  return result;
}

unint64_t sub_1D1DCF6E4()
{
  result = qword_1EC64FDC8;
  if (!qword_1EC64FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDC8);
  }

  return result;
}

unint64_t sub_1D1DCF73C()
{
  result = qword_1EC64FDD0;
  if (!qword_1EC64FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDD0);
  }

  return result;
}

uint64_t sub_1D1DCF7D4(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr), uint64_t a6)
{
  v30 = a5;
  v7 = v6;
  v29 = a6;
  v32 = a2;
  v33 = a1;
  v10 = sub_1D1E66FDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D1E66FFC();
  v16 = sub_1D1E683EC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {

    goto LABEL_11;
  }

  v28 = a3;
  v27 = v6;
  if (a3)
  {
    if (!(v33 >> 32))
    {
      if ((v33 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v33 >> 16 <= 0x10)
      {
        v18 = &v35;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v33)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v33;
LABEL_10:
  v19 = swift_slowAlloc();
  *v19 = 0;
  v20 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v15, v16, v20, v18, "", v19, 2u);
  MEMORY[0x1D3893640](v19, -1, -1);

  a3 = v28;
  v7 = v27;
LABEL_11:
  (*(v11 + 16))(v14, a4, v10);
  v21 = sub_1D1E6705C();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_1D1E6704C();
  v25 = v31;
  v30(&v34);
  if (v25)
  {
    sub_1D1760838(v7, v33, v32, a3, v24);
  }

  else
  {
    sub_1D1760838(v7, v33, v32, a3, v24);

    return v34;
  }
}

void sub_1D1DCFA28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v3[3]);
      sub_1D1E65EDC();
      v5 = sub_1D1E677EC();

      v3 += 5;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D1DCFAD0()
{
  v0 = sub_1D1E66FDC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7CC0];
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v5 = sub_1D1E6701C();
  v6 = __swift_project_value_buffer(v5, qword_1EC6BE2B8);
  MEMORY[0x1EEE9AC00](v6);
  *(&v11 - 2) = &v12;
  sub_1D1E66FCC();
  v7 = sub_1D1DCF7D4("IFObjectHasher.GenerateHash.AppIntentIDs", 40, 2, v4, sub_1D1DD049C, (&v11 - 4));
  v9 = v8;
  result = (*(v1 + 8))(v4, v0);
  qword_1EC64FDD8 = v7;
  unk_1EC64FDE0 = v9;
  return result;
}

uint64_t sub_1D1DCFC90()
{
  if (qword_1EC6424B0 != -1)
  {
    swift_once();
  }

  qword_1EC64FDE8 = qword_1EC6BE2D0;
  unk_1EC64FDF0 = *algn_1EC6BE2D8;
}

uint64_t sub_1D1DCFD24(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t static WidgetManagerIdentity.singleControl<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66FDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE00, &qword_1D1EB0B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v19 = inited;
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6701C();
  v14 = __swift_project_value_buffer(v13, qword_1EC6BE2B8);
  MEMORY[0x1EEE9AC00](v14);
  *&v18[-16] = &v19;
  sub_1D1E66FCC();
  v15 = sub_1D1DCF7D4("IFObjectHasher.GenerateHash.AppIntentIDs", 40, 2, v10, sub_1D1DD0470, &v18[-32]);
  (*(v7 + 8))(v10, v6);
  swift_setDeallocating();
  v16 = *(inited + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE08, &qword_1D1EB0B88);
  swift_arrayDestroy();
  return v15;
}

INIntent_optional __swiftcall AppIntent.asINIntent()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x1EEE9AC00])();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741B10(0, &qword_1EC64FE10, 0x1E696E730);
  (*(v3 + 16))(v6, v1, v2);
  v7 = sub_1D1DA9170(v6, v2);
  result.value.super.isa = v7;
  result.is_nil = v8;
  return result;
}

id AppIntent.indexingHash.getter()
{
  v0 = AppIntent.asINIntent()();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 _indexingHash];
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EE0813C8);
    v1 = sub_1D1E6707C();
    v4 = sub_1D1E6833C();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D16EC000, v1, v4, "widgetManagerIdentifier: Failed to convert intent to INAppIntent", v5, 2u);
      MEMORY[0x1D3893640](v5, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

uint64_t WidgetConfigurationIntent<>.accessoriesAndScenesAsConfigured.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741B10(0, &qword_1EC64FE10, 0x1E696E730);
  (*(v5 + 16))(v8, v2, a1);
  v9 = *(*(a2 + 8) + 8);
  v10 = sub_1D1DA9170(v8, a1);
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D1DA953C();
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EE0813C8);
    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6833C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D16EC000, v14, v15, "widgetManagerIdentifier: Failed to convert intent to INAppIntent", v16, 2u);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    return 0;
  }

  return v12;
}

void sub_1D1DD03D0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69AA8A0]) init];
  sub_1D1DCFA28(v3);
  [v4 finalize];
  v5 = sub_1D1E68FAC();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t WidgetDataModelConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t WidgetDataModelBundle<A>(configuration:content:)(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  if (qword_1EC6424B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC64F958);
  qword_1EC64F960 = v3;
  os_unfair_lock_unlock(&dword_1EC64F958);
  return a2();
}

unint64_t sub_1D1DD05E4()
{
  result = qword_1EC64FE18;
  if (!qword_1EC64FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FE18);
  }

  return result;
}

uint64_t sub_1D1DD0648(uint64_t a1, double a2)
{
  *(v3 + 72) = v2;
  *(v3 + 64) = a2;
  *(v3 + 56) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD06F8, v2, 0);
}

uint64_t sub_1D1DD06F8()
{
  v49 = v0;
  v1 = *(v0 + 72);
  v2 = *(v1 + 112);
  *(v0 + 96) = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x1E69E86A8] + 4);

    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v4 = v0;
    v4[1] = sub_1D1DD0D78;
    v6 = MEMORY[0x1E69E7288];
    v7 = v0 + 153;
    v8 = v2;
LABEL_24:

    return MEMORY[0x1EEE6DA10](v7, v8, &type metadata for WidgetHomeDataSync.DataSyncState, v5, v6);
  }

  if ([*(v0 + 56) dataSyncState] != 1 || ((v9 = objc_msgSend(*(v0 + 56), sel_homes), sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98), v10 = sub_1D1E67C1C(), v9, v10 >> 62) ? (v11 = sub_1D1E6873C()) : (v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v11))
  {
    v20 = [*(v0 + 56) delegate];
    *(v0 + 120) = v20;
    if (v20)
    {
      v21 = v20;
      v22 = qword_1EE07A0A0;
      swift_unknownObjectRetain();
      if (v22 != -1)
      {
        swift_once();
      }

      v23 = sub_1D1E6709C();
      __swift_project_value_buffer(v23, qword_1EE0813E0);
      swift_unknownObjectRetain();
      v24 = sub_1D1E6707C();
      v25 = sub_1D1E6832C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v48 = v27;
        *v26 = 136315138;
        *(v0 + 48) = v21;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FE50, &qword_1D1EB0F88);
        v28 = sub_1D1E678BC();
        v30 = sub_1D1B1312C(v28, v29, &v48);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_1D16EC000, v24, v25, "performDataSync(homeManager:) overriding existing delegate until first sync: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x1D3893640](v27, -1, -1);
        MEMORY[0x1D3893640](v26, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    v32 = *(v0 + 80);
    v31 = *(v0 + 88);
    v33 = *(v0 + 64);
    v34 = *(v0 + 56);
    sub_1D1E67E3C();
    v35 = sub_1D1E67E7C();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v31, 0, 1, v35);
    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    *(v37 + 24) = v33;
    sub_1D1A08410(v31, v32);
    LODWORD(v32) = (*(v36 + 48))(v32, 1, v35);
    v38 = v34;
    v39 = *(v0 + 80);
    if (v32 == 1)
    {
      sub_1D1741A30(*(v0 + 80), &unk_1EC6442C0, &qword_1D1E741A0);
    }

    else
    {
      sub_1D1E67E6C();
      (*(v36 + 8))(v39, v35);
    }

    v40 = *(v0 + 88);
    type metadata accessor for SerialWidgetExecutor();
    inited = swift_initStaticObject();
    v43 = sub_1D1DD5060(&unk_1EE07A728, v42, type metadata accessor for SerialWidgetExecutor);
    *(v0 + 16) = 6;
    *(v0 + 24) = 0;
    *(v0 + 32) = inited;
    *(v0 + 40) = v43;
    swift_unknownObjectRetain();
    v44 = swift_task_create();
    *(v0 + 128) = v44;
    sub_1D1741A30(v40, &unk_1EC6442C0, &qword_1D1E741A0);
    v45 = *(v1 + 112);
    *(v1 + 112) = v44;

    v46 = *(MEMORY[0x1E69E86A8] + 4);
    v47 = swift_task_alloc();
    *(v0 + 136) = v47;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v47 = v0;
    v47[1] = sub_1D1DD0F20;
    v6 = MEMORY[0x1E69E7288];
    v7 = v0 + 152;
    v8 = v44;
    goto LABEL_24;
  }

  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EE0813E0);
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D16EC000, v13, v14, "performDataSync(homeManager:) HMHomeManager already in good state with homes", v15, 2u);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v17 = *(v0 + 80);
  v16 = *(v0 + 88);

  v18 = *(v0 + 8);

  return v18(2);
}

uint64_t sub_1D1DD0D78()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1D1DD11A8;
  }

  else
  {
    v6 = sub_1D1DD0EA4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1DD0EA4()
{
  v1 = *(v0 + 96);

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 153);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1D1DD0F20()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1D1DD121C;
  }

  else
  {
    v6 = sub_1D1DD104C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1DD104C()
{
  v1 = *(v0 + 152);
  if (v1 != 2)
  {
    if (qword_1EE07A0A0 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    __swift_project_value_buffer(v2, qword_1EE0813E0);
    v3 = sub_1D1E6707C();
    v4 = sub_1D1E6833C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D16EC000, v3, v4, "performDataSync(homeManager:) did not complete", v5, 2u);
      MEMORY[0x1D3893640](v5, -1, -1);
    }
  }

  v6 = *(v0 + 128);
  sub_1D1DD433C(*(v0 + 72), *(v0 + 56), *(v0 + 120));

  swift_unknownObjectRelease();
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_1D1DD11A8()
{
  v1 = v0[12];

  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1DD121C()
{
  v1 = *(v0 + 128);
  sub_1D1DD433C(*(v0 + 72), *(v0 + 56), *(v0 + 120));

  swift_unknownObjectRelease();
  v2 = *(v0 + 144);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1DD12AC(uint64_t a1, double a2)
{
  *(v3 + 64) = v2;
  *(v3 + 56) = a2;
  *(v3 + 48) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD135C, v2, 0);
}

uint64_t sub_1D1DD135C()
{
  v1 = v0[8];
  v2 = *(v1 + 120);
  v3 = MEMORY[0x1E69E7CA8];
  if (v2)
  {
    goto LABEL_6;
  }

  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[6];
  sub_1D1E67E3C();
  v8 = sub_1D1E67E7C();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v4, 0, 1, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  sub_1D1A08410(v4, v5);
  LODWORD(v5) = (*(v9 + 48))(v5, 1, v8);
  v11 = v7;
  v12 = v0[9];
  if (v5 == 1)
  {
    sub_1D1741A30(v0[9], &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v9 + 8))(v12, v8);
  }

  v13 = v0[10];
  type metadata accessor for SerialWidgetExecutor();
  inited = swift_initStaticObject();
  v16 = sub_1D1DD5060(&unk_1EE07A728, v15, type metadata accessor for SerialWidgetExecutor);
  v0[2] = 6;
  v0[3] = 0;
  v0[4] = inited;
  v0[5] = v16;

  v17 = swift_task_create();
  sub_1D1741A30(v13, &unk_1EC6442C0, &qword_1D1E741A0);

  v18 = *(v1 + 120);
  *(v1 + 120) = v17;

  v2 = *(v1 + 120);
  if (v2)
  {
LABEL_6:
    v0[11] = v2;
    v19 = *(MEMORY[0x1E69E86A8] + 4);

    v20 = swift_task_alloc();
    v0[12] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v20 = v0;
    v20[1] = sub_1D1DD168C;
    v22 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v21, v2, v3 + 8, v21, v22);
  }

  else
  {
    v24 = v0[9];
    v23 = v0[10];
    *(v0[8] + 120) = 0;

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1D1DD168C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = *(v2 + 64);

    v6 = sub_1D1DD1840;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 64);
    v6 = sub_1D1DD17B4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1D1DD17B4()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = *(v2 + 120);
  v4 = v0[9];
  v5 = v0[10];
  *(v0[8] + 120) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1DD1840()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = *(v3 + 120);
  *(v3 + 120) = 0;

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_1D1DD18C0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD196C, v2, 0);
}

uint64_t sub_1D1DD196C()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 128);
  if (v2)
  {
    goto LABEL_6;
  }

  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v24 = *(v0 + 56);
  sub_1D1E67E3C();
  v5 = sub_1D1E67E7C();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = v24;
  sub_1D1A08410(v3, v4);
  LODWORD(v4) = (*(v6 + 48))(v4, 1, v5);
  swift_unknownObjectRetain();
  v8 = *(v0 + 80);
  if (v4 == 1)
  {
    sub_1D1741A30(*(v0 + 80), &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v6 + 8))(v8, v5);
  }

  v9 = *(v0 + 88);
  type metadata accessor for SerialWidgetExecutor();
  inited = swift_initStaticObject();
  v12 = sub_1D1DD5060(&unk_1EE07A728, v11, type metadata accessor for SerialWidgetExecutor);
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_1D1EB0F28;
  *(v13 + 24) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE40, &qword_1D1EB0F40);
  *(v0 + 16) = 6;
  *(v0 + 24) = 0;
  *(v0 + 32) = inited;
  *(v0 + 40) = v12;
  v14 = swift_task_create();
  sub_1D1741A30(v9, &unk_1EC6442C0, &qword_1D1E741A0);

  v15 = *(v1 + 128);
  *(v1 + 128) = v14;

  v2 = *(v1 + 128);
  if (v2)
  {
LABEL_6:
    *(v0 + 96) = v2;
    v16 = *(MEMORY[0x1E69E86C0] + 4);

    v17 = swift_task_alloc();
    *(v0 + 104) = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE40, &qword_1D1EB0F40);
    *v17 = v0;
    v17[1] = sub_1D1DD1CD0;

    return MEMORY[0x1EEE6DA40](v0 + 48, v2, v18);
  }

  else
  {
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    *(*(v0 + 72) + 128) = 0;

    v21 = *(v0 + 8);
    v22 = MEMORY[0x1E69E7CC0];

    return v21(v22);
  }
}

uint64_t sub_1D1DD1CD0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1DD1DFC, v3, 0);
}

uint64_t sub_1D1DD1DFC()
{
  v1 = v0[6];
  v2 = v0[9];
  v3 = v0[10];
  v4 = *(v2 + 128);
  v5 = v0[11];
  *(v2 + 128) = 0;

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_1D1DD1E88()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EE0813E0);
  __swift_project_value_buffer(v0, qword_1EE0813E0);
  return sub_1D1E6708C();
}

uint64_t sub_1D1DD1F18()
{
  v0 = sub_1D1E6845C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = sub_1D1E683AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E6753C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1D1741B10(0, &qword_1EE079CA0, 0x1E69E9620);
  sub_1D1E6752C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8098], v2);
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1D1DD5060(&qword_1EE079CA8, 255, MEMORY[0x1E69E8120]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FE30, &qword_1D1E92AC8);
  sub_1D17D8EA8(&qword_1EE079E20, &unk_1EC64FE30, &qword_1D1E92AC8);
  sub_1D1E6868C();
  result = sub_1D1E6846C();
  qword_1EE0813B8 = result;
  return result;
}

uint64_t sub_1D1DD2190(uint64_t a1)
{
  v3 = sub_1D1E674FC();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E6753C();
  v15 = *(v7 - 8);
  v16 = v7;
  v8 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  if (qword_1EE079CC0 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v1;
  aBlock[4] = sub_1D1DD5040;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1845F94;
  aBlock[3] = &block_descriptor_62;
  v13 = _Block_copy(aBlock);

  sub_1D1E6751C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D1DD5060(&qword_1EE07A040, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EA0, &unk_1D1EB0F00);
  sub_1D17D8EA8(&qword_1EE079E30, &qword_1EC648EA0, &unk_1D1EB0F00);
  sub_1D1E6868C();
  MEMORY[0x1D38919F0](0, v10, v6, v13);
  _Block_release(v13);
  (*(v17 + 8))(v6, v3);
  (*(v15 + 8))(v10, v16);
}

uint64_t sub_1D1DD24C4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  sub_1D1DD5060(&unk_1EE07A728, v3, type metadata accessor for SerialWidgetExecutor);
  return swift_job_run_on_task_executor();
}

uint64_t sub_1D1DD254C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1D1DD5060(&unk_1EE07A738, a2, type metadata accessor for SerialWidgetExecutor);

  return a4(a1, v6, v7);
}

uint64_t sub_1D1DD2608()
{
  if (qword_1EE079CC0 != -1)
  {
    swift_once();
  }

  return sub_1D1E6847C();
}

uint64_t sub_1D1DD273C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D1DD27EC;
  v5[3] = &block_descriptor_16_1;
  v3 = _Block_copy(v5);

  [v2 fetchPredictionsWithCompletion_];
  _Block_release(v3);
}

uint64_t sub_1D1DD27EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
  v3 = sub_1D1E67C1C();

  v2(v3);
}

id HMHomeManagerDataSyncState.description.getter()
{
  result = HMHomeManagerDataSyncStateToString();
  if (result)
  {
    v1 = result;
    v2 = sub_1D1E6781C();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D1DD28C4()
{
  v1 = *v0;
  result = HMHomeManagerDataSyncStateToString();
  if (result)
  {
    v3 = result;
    v4 = sub_1D1E6781C();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1DD2940()
{
  type metadata accessor for WidgetHomeDataSync();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  qword_1EE081460 = v0;
  return result;
}

uint64_t sub_1D1DD2984()
{
  v1 = 0x676E69636E7973;
  if (*v0 != 1)
  {
    v1 = 0x64656873696E6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_1D1DD29D8(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE68, &qword_1D1EB0F98);
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE70, &qword_1D1EB0FA0);
  *(v3 + 64) = v7;
  v8 = *(v7 - 8);
  *(v3 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE78, &qword_1D1EB0FA8);
  *(v3 + 96) = v10;
  v11 = *(v10 - 8);
  *(v3 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD2B84, 0, 0);
}

uint64_t sub_1D1DD2B84()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v9 = v0[4];
  v16 = v0[3];
  *v6 = 1;
  (*(v7 + 104))(v6, *MEMORY[0x1E69E8788], v8);
  sub_1D1E6804C();
  (*(v7 + 8))(v6, v8);
  type metadata accessor for HDMHomeManagerDataSyncProxy();
  (*(v5 + 16))(v3, v2, v4);
  v10 = sub_1D1DA0E98(v3);
  v0[15] = v10;
  [v16 setDelegate_];
  v11 = swift_task_alloc();
  v0[16] = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v1;
  v12 = *(MEMORY[0x1E69E88A0] + 4);
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_1D1DD2D64;
  v14 = v0[2];

  return MEMORY[0x1EEE6DD58](v14, &type metadata for WidgetHomeDataSync.DataSyncState, &type metadata for WidgetHomeDataSync.DataSyncState, 0, 0, &unk_1D1EB0FB8, v11, &type metadata for WidgetHomeDataSync.DataSyncState);
}

uint64_t sub_1D1DD2D64()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1D1DD2F70;
  }

  else
  {
    v4 = sub_1D1DD2E94;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1DD2E94()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  (*(v7 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D1DD2F70()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  (*(v7 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v9 = *(v0 + 8);
  v10 = *(v0 + 144);

  return v9();
}

uint64_t sub_1D1DD304C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE78, &qword_1D1EB0FA8);
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 + 64);
  *(v4 + 72) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD3160, 0, 0);
}

uint64_t sub_1D1DD3160()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v18 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = v0[3];
  v8 = sub_1D1E67E7C();
  v9 = *(*(v8 - 8) + 56);
  v9(v1, 1, 1, v8);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v6;
  sub_1D1A02004(v1, &unk_1D1EB0FC8, v10);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v9(v1, 1, 1, v8);
  (*(v3 + 16))(v2, v5, v4);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v3 + 32))(v12 + v11, v2, v4);
  sub_1D1A02004(v1, &unk_1D1EB0FD8, v12);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v13 = *(MEMORY[0x1E69E8708] + 4);
  v14 = swift_task_alloc();
  v0[11] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FE80, &qword_1D1EB0FE0);
  *v14 = v0;
  v14[1] = sub_1D1DD33B0;
  v16 = v0[3];

  return MEMORY[0x1EEE6DAC8](v0 + 13, 0, 0, v15);
}

uint64_t sub_1D1DD33B0()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1D1DD36C0;
  }

  else
  {
    v3 = sub_1D1DD34C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1DD34C4()
{
  v1 = *(v0 + 104);
  if (v1 == 3)
  {
    if (qword_1EE07A0A0 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    __swift_project_value_buffer(v2, qword_1EE0813E0);
    v3 = sub_1D1E6707C();
    v4 = sub_1D1E6833C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D16EC000, v3, v4, "performDataSync(homeManager:) no result from task group", v5, 2u);
      MEMORY[0x1D3893640](v5, -1, -1);
    }

    sub_1D1DA1910();
    swift_allocError();
    swift_willThrow();
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = **(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    sub_1D1E67FFC();

    v9 = *(v0 + 8);
  }

  else
  {
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = *(v0 + 24);
    **(v0 + 16) = v1;
    v13 = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    sub_1D1E67FFC();

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_1D1DD36C0()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = **(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1DD3770(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1D1E68A4C();
  *(v1 + 24) = v2;
  v3 = *(v2 - 8);
  *(v1 + 32) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD3830, 0, 0);
}

uint64_t sub_1D1DD3830()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_1D1E693AC();
  v5 = v4;
  sub_1D1E6912C();
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1D1DD390C;
  v7 = v0[5];

  return sub_1D1A01910(v3, v5, 0, 0, 1);
}

uint64_t sub_1D1DD390C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 56) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1D1A03B0C;
  }

  else
  {
    v6 = sub_1D1DD3A7C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1DD3A7C()
{
  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE0813E0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6833C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D16EC000, v2, v3, "performDataSync(homeManager:) timed out after %fs", v5, 0xCu);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  sub_1D1DA1910();
  swift_allocError();
  swift_willThrow();
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D1DD3BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE78, &qword_1D1EB0FA8);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE90, &qword_1D1EB0FE8);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD3D0C, 0, 0);
}

uint64_t sub_1D1DD3D0C()
{
  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  v0[10] = __swift_project_value_buffer(v1, qword_1EE0813E0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "performDataSync(homeManager:) starting data sync", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v5 = v0[9];
  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  (*(v7 + 16))(v6, v9, v8);
  sub_1D17D8EA8(&qword_1EC64FE98, &qword_1EC64FE78, &qword_1D1EB0FA8);
  sub_1D1E6801C();
  v10 = sub_1D17D8EA8(&qword_1EC64FEA0, &qword_1EC64FE90, &qword_1D1EB0FE8);
  v11 = *(MEMORY[0x1E69E85A8] + 4);
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1D1DD3F18;
  v13 = v0[9];
  v14 = v0[7];

  return MEMORY[0x1EEE6D8C8](v0 + 13, v14, v10);
}

uint64_t sub_1D1DD3F18()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    (*(v2[8] + 8))(v2[9], v2[7]);
    v4 = sub_1D1DD42CC;
  }

  else
  {
    v4 = sub_1D1DD4044;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1DD4044()
{
  v23 = v0;
  v1 = *(v0 + 104);
  if ((v1 & 0xFE) == 2)
  {
    v2 = *(v0 + 80);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    if (v1 == 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = v1;
    }

    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      v8 = 0xE700000000000000;
      v9 = 0x676E69636E7973;
      if (v3 != 1)
      {
        v9 = 0x64656873696E6966;
        v8 = 0xE800000000000000;
      }

      if (v3)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1701602409;
      }

      if (v3)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      v12 = sub_1D1B1312C(v10, v11, &v22);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_1D16EC000, v4, v5, "performDataSync(homeManager:) first data sync completed with state: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1D3893640](v7, -1, -1);
      MEMORY[0x1D3893640](v6, -1, -1);
    }

    v13 = *(v0 + 72);
    v14 = *(v0 + 48);
    **(v0 + 16) = v3;

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = sub_1D17D8EA8(&qword_1EC64FEA0, &qword_1EC64FE90, &qword_1D1EB0FE8);
    v18 = *(MEMORY[0x1E69E85A8] + 4);
    v19 = swift_task_alloc();
    *(v0 + 88) = v19;
    *v19 = v0;
    v19[1] = sub_1D1DD3F18;
    v20 = *(v0 + 72);
    v21 = *(v0 + 56);

    return MEMORY[0x1EEE6D8C8](v0 + 104, v21, v17);
  }
}

uint64_t sub_1D1DD42CC()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

void sub_1D1DD433C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 112);
  *(a1 + 112) = 0;

  [a2 setDelegate_];
  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EE0813E0);
  swift_unknownObjectRetain();
  oslog = sub_1D1E6707C();
  v7 = sub_1D1E6832C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE60, &qword_1D1EB0F90);
    v10 = sub_1D1E678BC();
    v12 = sub_1D1B1312C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D16EC000, oslog, v7, "performDataSync(homeManager:) resetting HMHomeManager's delegate to: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D1DD4508(double a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 16) = a3;
  v4 = sub_1D1E669FC();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD45D8, 0, 0);
}

uint64_t sub_1D1DD45D8()
{
  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  v0[8] = __swift_project_value_buffer(v1, qword_1EE0813E0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "refresh(homeManager:timeout:) starting refresh", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[3];

  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D1E6690C();
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1D1DD4750;
  v9 = v0[7];
  v10 = v0[2];

  return sub_1D18BEEB4(v9);
}

uint64_t sub_1D1DD4750()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  (*(v2[5] + 8))(v2[7], v2[4]);
  if (v0)
  {
    v5 = sub_1D1DD49A0;
  }

  else
  {
    v5 = sub_1D1DD48B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1DD48B8()
{
  v1 = v0[8];
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "refresh(homeManager:timeout:) finished successfully", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D1DD49A0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D16EC000, v4, v5, "refresh(homeManager:timeout:) failed to refresh %@", v7, 0xCu);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v11 = v0[10];
  v13 = v0[6];
  v12 = v0[7];

  swift_willThrow();

  v14 = v0[1];
  v15 = v0[10];

  return v14();
}

uint64_t sub_1D1DD4B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1DD4B2C, 0, 0);
}

uint64_t sub_1D1DD4B2C()
{
  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE0813E0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "fetchPredictions(controller:) fetching user predictions", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v11 = *(v0 + 24);

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v11;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE40, &qword_1D1EB0F40);
  *v7 = v0;
  v7[1] = sub_1D1AE793C;
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v9, 0, 0, 0xD00000000000001DLL, 0x80000001D1EC9F00, sub_1D1DD520C, v5, v8);
}

void sub_1D1DD4CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE48, &qword_1D1EB0F48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  ObjectType = swift_getObjectType();
  (*(v6 + 16))(v9, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v9, v5);
  (*(a3 + 8))(sub_1D1DD5214, v12, ObjectType, a3);

  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EE0813E0);
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D16EC000, v14, v15, "fetchPredictions(controller:) finished fetching user predictions", v16, 2u);
    MEMORY[0x1D3893640](v16, -1, -1);
  }
}

uint64_t sub_1D1DD4F1C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE48, &qword_1D1EB0F48);
  return sub_1D1E67D6C();
}

uint64_t sub_1D1DD4F6C()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1D1DD4FEC()
{
  result = qword_1EC64FE20;
  if (!qword_1EC64FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FE20);
  }

  return result;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1DD5060(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D1DD50A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4BFC;

  return sub_1D1DD4B08(a1, v5, v4);
}

uint64_t sub_1D1DD5154(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D17C9354(a1, v5);
}

uint64_t sub_1D1DD5214()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE48, &qword_1D1EB0F48) - 8) + 80);

  return sub_1D1DD4F1C();
}

uint64_t sub_1D1DD5290(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1DD4508(v5, a1, v4);
}

uint64_t sub_1D1DD5340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1DD29D8(a1, v4, v5);
}

uint64_t sub_1D1DD53F0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1DD304C(a1, a2, v7, v6);
}

uint64_t sub_1D1DD54A8()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1DD3770(v4);
}

uint64_t sub_1D1DD5564(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE78, &qword_1D1EB0FA8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1DD3BD8(a1, v6, v7, v1 + v5);
}

unint64_t sub_1D1DD5674()
{
  result = qword_1EC64FEA8;
  if (!qword_1EC64FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FEA8);
  }

  return result;
}

uint64_t WidgetRefreshOptions.coverages.getter()
{
  if ((*v0 & 0x61) != 0)
  {
    if (qword_1EE07CD90 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v2 = sub_1D179B6E8(&unk_1F4D666B8);
    swift_arrayDestroy();
    return v2;
  }
}

uint64_t WidgetRefreshOptions.matterSnapshotFilter.getter@<X0>(uint64_t a1@<X8>)
{
  if ((*v1 & 0x1000001) != 0)
  {
    result = sub_1D179C134(&unk_1F4D666E8);
    v4 = 2;
  }

  else
  {
    result = 0;
    v4 = 3;
  }

  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

void WidgetRefreshOptions.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v1;
  }

  v5 = v1;
  while (v4 != v5)
  {
    v6 = dword_1F4D5F4A8[v5 + 8];
    if ((v6 & ~v3) == 0)
    {
      if (v6 > 31)
      {
        if (v6 > 4095)
        {
          if (v6 == 4096)
          {
            v7 = 0x6465725072657375;
            v8 = 0xEF736E6F69746369;
LABEL_28:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_1D177CF00(0, *(v2 + 2) + 1, 1, v2);
            }

            v10 = *(v2 + 2);
            v9 = *(v2 + 3);
            if (v10 >= v9 >> 1)
            {
              v2 = sub_1D177CF00((v9 > 1), v10 + 1, 1, v2);
            }

            v1 = v5 + 1;
            *(v2 + 2) = v10 + 1;
            v11 = &v2[16 * v10];
            *(v11 + 4) = v7;
            *(v11 + 5) = v8;
            if (v5 == 7)
            {
LABEL_33:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
              sub_1D17B3684();
              sub_1D1E6770C();

              return;
            }

            goto LABEL_2;
          }

          if (v6 == 0x1000000)
          {
            v7 = 0x636156746F626F72;
            v8 = 0xEC000000736D7575;
            goto LABEL_28;
          }
        }

        else
        {
          if (v6 == 32)
          {
            v8 = 0xE700000000000000;
            v7 = 0x736172656D6163;
            goto LABEL_28;
          }

          if (v6 == 64)
          {
            v7 = 0x6E6F43616964656DLL;
            v8 = 0xED0000736C6F7274;
            goto LABEL_28;
          }
        }
      }

      else if (v6 > 3)
      {
        if (v6 == 4)
        {
          v7 = 0x536574616D696C63;
          v8 = 0xEE0073726F736E65;
          goto LABEL_28;
        }

        if (v6 == 16)
        {
          v8 = 0xEA00000000007374;
          v7 = 0x65536E6F69746361;
          goto LABEL_28;
        }
      }

      else
      {
        if (v6 == 1)
        {
          v8 = 0xE300000000000000;
          v7 = 7105633;
          goto LABEL_28;
        }

        if (v6 == 2)
        {
          v7 = 0x726F737365636361;
          v8 = 0xEB00000000736569;
          goto LABEL_28;
        }
      }
    }

    if (++v5 == 8)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
}

unint64_t sub_1D1DD5B3C()
{
  result = qword_1EC64FEB0;
  if (!qword_1EC64FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FEB0);
  }

  return result;
}

unint64_t sub_1D1DD5B94()
{
  result = qword_1EC64FEB8;
  if (!qword_1EC64FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FEB8);
  }

  return result;
}

unint64_t sub_1D1DD5BE8()
{
  result = qword_1EC64FEC0;
  if (!qword_1EC64FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FEC0);
  }

  return result;
}

unint64_t sub_1D1DD5C40()
{
  result = qword_1EC64FEC8;
  if (!qword_1EC64FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FEC8);
  }

  return result;
}

uint64_t Collection<>.staticMatterDevices.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StaticMatterDevice();
  v3 = *(a2 + 8);
  return sub_1D1E67A4C();
}

uint64_t sub_1D1DD5D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticMatterDevice();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17419CC(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  if (swift_dynamicCast())
  {
    sub_1D1DD7568(v8, a2, type metadata accessor for StaticMatterDevice);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  (*(v5 + 56))(a2, v9, 1, v4);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t StateSnapshot.widgetCharacteristics(of:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D1DD61C8(v2, &v33);
      if (v34)
      {
        sub_1D16EEE20(&v33, v36);
        sub_1D16EEE20(v36, &v33);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = sub_1D177F2B8(0, v3[2] + 1, 1, v3);
          v37 = v3;
        }

        v6 = v3[2];
        v5 = v3[3];
        if (v6 >= v5 >> 1)
        {
          v3 = sub_1D177F2B8((v5 > 1), v6 + 1, 1, v3);
          v37 = v3;
        }

        v7 = v34;
        v8 = v35;
        v9 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
        v10 = *(*(v7 - 8) + 64);
        MEMORY[0x1EEE9AC00](v9);
        v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v13 + 16))(v12);
        sub_1D1D20B74(v6, v12, &v37, v7, v8);
        __swift_destroy_boxed_opaque_existential_1(&v33);
      }

      else
      {
        sub_1D1741A30(&v33, &qword_1EC643668, &qword_1D1E71D60);
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v14 = v3[2];
  if (!v14)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_31:

    return v17;
  }

  v15 = 0;
  v16 = (v3 + 4);
  v17 = MEMORY[0x1E69E7CC0];
  while (v15 < v3[2])
  {
    sub_1D17419CC(v16, v36);
    sub_1D1DD67CC(v36, &v33);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v18 = v33;
    v19 = *(v33 + 16);
    v20 = v17[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_33;
    }

    v22 = swift_isUniquelyReferenced_nonNull_native();
    if (v22 && v21 <= v17[3] >> 1)
    {
      if (*(v18 + 16))
      {
        goto LABEL_26;
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

      v17 = sub_1D17800B4(v22, v23, 1, v17);
      if (*(v18 + 16))
      {
LABEL_26:
        v24 = (v17[3] >> 1) - v17[2];
        v25 = *(type metadata accessor for StaticCharacteristic() - 8);
        if (v24 < v19)
        {
          goto LABEL_35;
        }

        v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v27 = *(v25 + 72);
        swift_arrayInitWithCopy();

        if (v19)
        {
          v28 = v17[2];
          v29 = __OFADD__(v28, v19);
          v30 = v28 + v19;
          if (v29)
          {
            goto LABEL_36;
          }

          v17[2] = v30;
        }

        goto LABEL_15;
      }
    }

    if (v19)
    {
      goto LABEL_34;
    }

LABEL_15:
    ++v15;
    v16 += 40;
    if (v14 == v15)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);

  __swift_destroy_boxed_opaque_existential_1(v36);

  __break(1u);
  return result;
}

uint64_t sub_1D1DD61C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC40, &unk_1D1EAADA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v42 - v6;
  v7 = type metadata accessor for StaticServiceGroup();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for StaticService(0);
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v42 - v19;
  v21 = type metadata accessor for StaticAccessory(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17419CC(a1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1D17419CC(a1, a2);
  }

  v26 = v49;
  sub_1D17419CC(v49 + 16, v50);
  v27 = swift_dynamicCast();
  (*(v22 + 56))(v20, v27 ^ 1u, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D1741A30(v20, &qword_1EC6436C8, &unk_1D1E97C40);
    sub_1D17419CC(v26 + 16, v50);
    v28 = swift_dynamicCast();
    v29 = v48;
    (*(v48 + 56))(v13, v28 ^ 1u, 1, v14);
    if ((*(v29 + 48))(v13, 1, v14) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC6436F0, &qword_1D1E99BC0);
      sub_1D17419CC(v26 + 16, v50);
      v31 = v46;
      v30 = v47;
      v32 = swift_dynamicCast();
      v33 = v45;
      (*(v45 + 56))(v30, v32 ^ 1u, 1, v31);
      if ((*(v33 + 48))(v30, 1, v31) == 1)
      {

        result = sub_1D1741A30(v30, &qword_1EC64CC40, &unk_1D1EAADA0);
        *a2 = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0;
        return result;
      }

      v35 = type metadata accessor for StaticServiceGroup;
      v41 = v30;
      v38 = v43;
      sub_1D1DD7568(v41, v43, type metadata accessor for StaticServiceGroup);
      *(a2 + 24) = v31;
      v39 = &qword_1EC64BA10;
      v40 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v35 = type metadata accessor for StaticService;
      v38 = v44;
      sub_1D1DD7568(v13, v44, type metadata accessor for StaticService);
      *(a2 + 24) = v14;
      v39 = &qword_1EC646AF0;
      v40 = type metadata accessor for StaticService;
    }

    *(a2 + 32) = sub_1D1DD7520(v39, v40);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    v37 = v38;
  }

  else
  {
    v35 = type metadata accessor for StaticAccessory;
    sub_1D1DD7568(v20, v25, type metadata accessor for StaticAccessory);
    *(a2 + 24) = v21;
    *(a2 + 32) = sub_1D1DD7520(&qword_1EC64BA18, type metadata accessor for StaticAccessory);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    v37 = v25;
  }

  sub_1D1DD7568(v37, boxed_opaque_existential_1, v35);
}

uint64_t sub_1D1DD67CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v103 = a2;
  v94 = type metadata accessor for StaticMediaProfile();
  v3 = *(*(v94 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v94);
  v92 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v92 - v6;
  v96 = type metadata accessor for StaticMediaSystem();
  v7 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for StaticServiceGroup();
  v9 = *(*(v101 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v101);
  v97 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v98 = &v92 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v92 - v14;
  v15 = type metadata accessor for StaticService(0);
  v102 = *(v15 - 8);
  v16 = *(v102 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v104 = (&v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v92 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v99 = &v92 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v92 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v92 - v27;
  v29 = type metadata accessor for StaticAccessory(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v92 - v34;
  sub_1D17419CC(a1, v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  if (swift_dynamicCast())
  {
    v36 = sub_1D1DD7568(v35, v33, type metadata accessor for StaticAccessory);
    v37 = *&v33[*(v29 + 84)];
    MEMORY[0x1EEE9AC00](v36);
    *(&v92 - 2) = v33;
    v39 = sub_1D17868B8(sub_1D1820ECC, (&v92 - 4), v38);
    v105 = MEMORY[0x1E69E7CC0];
    v40 = v39[2];
    if (v40)
    {
      v101 = v33;
      v41 = *(v15 + 104);
      v42 = *(v102 + 80);
      v104 = v39;
      v43 = v39 + ((v42 + 32) & ~v42);
      v44 = *(v102 + 72);
      do
      {
        sub_1D1DD74B8(v43, v28, type metadata accessor for StaticService);
        v107 = v28[v41];
        v45 = ServiceKind.requiredCharacteristicKinds.getter();
        MEMORY[0x1EEE9AC00](v45);
        *(&v92 - 2) = v28;
        v46 = sub_1D178A0E8(sub_1D1DD78C4, (&v92 - 4), v45);

        sub_1D1DD7458(v28, type metadata accessor for StaticService);
        sub_1D17A6418(v46);
        v43 += v44;
        --v40;
      }

      while (v40);

      v47 = v105;
      v48 = v103;
      v33 = v101;
    }

    else
    {

      v47 = MEMORY[0x1E69E7CC0];
      v48 = v103;
    }

    v51 = type metadata accessor for StaticAccessory;
    goto LABEL_14;
  }

  v49 = v15;
  if (swift_dynamicCast())
  {
    v33 = v99;
    sub_1D1DD7568(v26, v99, type metadata accessor for StaticService);
    LOBYTE(v105) = v33[*(v15 + 104)];
    v50 = ServiceKind.requiredCharacteristicKinds.getter();
    MEMORY[0x1EEE9AC00](v50);
    *(&v92 - 2) = v33;
    v47 = sub_1D178A0E8(sub_1D1DD743C, (&v92 - 4), v50);

    v48 = v103;
    v51 = type metadata accessor for StaticService;
LABEL_14:
    v66 = v51;
    v67 = v33;
LABEL_15:
    sub_1D1DD7458(v67, v66);
LABEL_16:
    result = __swift_destroy_boxed_opaque_existential_1(v106);
    *v48 = v47;
    return result;
  }

  v52 = v100;
  v53 = v101;
  if (!swift_dynamicCast())
  {
    v68 = v95;
    if (swift_dynamicCast())
    {
      sub_1D1DD7458(v68, type metadata accessor for StaticMediaSystem);
    }

    else
    {
      v69 = v93;
      v70 = v94;
      if (swift_dynamicCast())
      {
        v71 = v69;
        v72 = v92;
        sub_1D1DD7568(v71, v92, type metadata accessor for StaticMediaProfile);
        v73 = *(v72 + *(v70 + 68));
        v74 = v73[2];
        v75 = MEMORY[0x1E69E7CC0];
        if (v74)
        {
          v101 = v49;
          v76 = sub_1D18042C8(v74, 0);
          v77 = sub_1D1804A58(&v105, v76 + ((*(v102 + 80) + 32) & ~*(v102 + 80)), v74, v73);

          result = sub_1D1716918();
          if (v77 != v74)
          {
            goto LABEL_39;
          }

          v48 = v103;
          v78 = v104;
          v49 = v101;
          v75 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v76 = MEMORY[0x1E69E7CC0];
          v48 = v103;
          v78 = v104;
        }

        v105 = v75;
        v86 = *(v76 + 16);
        if (v86)
        {
          v87 = *(v49 + 104);
          v88 = v76 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
          v89 = *(v102 + 72);
          do
          {
            sub_1D1DD74B8(v88, v78, type metadata accessor for StaticService);
            v107 = *(v78 + v87);
            v90 = ServiceKind.requiredCharacteristicKinds.getter();
            MEMORY[0x1EEE9AC00](v90);
            *(&v92 - 2) = v104;
            v91 = sub_1D178A0E8(sub_1D1DD78C4, (&v92 - 4), v90);

            v78 = v104;
            sub_1D1DD7458(v104, type metadata accessor for StaticService);
            sub_1D17A6418(v91);
            v88 += v89;
            --v86;
          }

          while (v86);

          v47 = v105;
          v48 = v103;
        }

        else
        {

          v47 = MEMORY[0x1E69E7CC0];
        }

        v66 = type metadata accessor for StaticMediaProfile;
        v67 = v92;
        goto LABEL_15;
      }
    }

    v47 = MEMORY[0x1E69E7CC0];
    v48 = v103;
    goto LABEL_16;
  }

  v54 = v52;
  v55 = v98;
  sub_1D1DD7568(v54, v98, type metadata accessor for StaticServiceGroup);
  v56 = v55;
  v57 = v97;
  sub_1D1DD74B8(v56, v97, type metadata accessor for StaticServiceGroup);
  v58 = *(v57 + *(v53 + 56));
  v59 = v58[2];
  v60 = MEMORY[0x1E69E7CC0];
  if (!v59)
  {
    v65 = MEMORY[0x1E69E7CC0];
    v48 = v103;
    goto LABEL_25;
  }

  v101 = v49;
  v61 = sub_1D18042C8(v59, 0);
  v62 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v104 = v61;
  v63 = sub_1D1804A58(&v105, v61 + v62, v59, v58);

  result = sub_1D1716918();
  if (v63 == v59)
  {
    v48 = v103;
    v65 = v104;
    v49 = v101;
    v60 = MEMORY[0x1E69E7CC0];
LABEL_25:
    sub_1D1DD7458(v97, type metadata accessor for StaticServiceGroup);
    v105 = v60;
    v79 = *(v65 + 16);
    if (v79)
    {
      v80 = *(v49 + 104);
      v81 = *(v102 + 80);
      v104 = v65;
      v82 = v65 + ((v81 + 32) & ~v81);
      v83 = *(v102 + 72);
      do
      {
        sub_1D1DD74B8(v82, v21, type metadata accessor for StaticService);
        v107 = v21[v80];
        v84 = ServiceKind.requiredCharacteristicKinds.getter();
        MEMORY[0x1EEE9AC00](v84);
        *(&v92 - 2) = v21;
        v85 = sub_1D178A0E8(sub_1D1DD78C4, (&v92 - 4), v84);

        sub_1D1DD7458(v21, type metadata accessor for StaticService);
        sub_1D17A6418(v85);
        v82 += v83;
        --v79;
      }

      while (v79);

      v47 = v105;
      v48 = v103;
    }

    else
    {

      v47 = MEMORY[0x1E69E7CC0];
    }

    v66 = type metadata accessor for StaticServiceGroup;
    v67 = v98;
    goto LABEL_15;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1D1DD729C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for StaticService(0) + 128));
  if (*(v5 + 16))
  {
    v6 = *a1;

    v7 = sub_1D171D140(v6);
    if (v8)
    {
      v9 = v7;
      v10 = *(v5 + 56);
      v11 = type metadata accessor for StaticCharacteristic();
      v12 = *(v11 - 8);
      sub_1D1DD74B8(v10 + *(v12 + 72) * v9, a3, type metadata accessor for StaticCharacteristic);
      (*(v12 + 56))(a3, 0, 1, v11);
    }

    else
    {
      v15 = type metadata accessor for StaticCharacteristic();
      (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
    }
  }

  else
  {
    v13 = type metadata accessor for StaticCharacteristic();
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_1D1DD7458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1DD74B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1DD7520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1DD7568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1DD75D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  StaticEndpoint.primaryCluster.getter(v37);
  v12 = v38;
  if (v38)
  {
    v13 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v14 = (*(v13 + 32))(v12, v13);
    v15 = __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v15 = sub_1D1741A30(v37, &qword_1EC646BC8, &qword_1D1E82230);
    v14 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v15);
  v33[2] = a5;
  v16 = sub_1D1892D24(sub_1D1A4565C, v33, v14);

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v17 = sub_1D1E6709C();
  __swift_project_value_buffer(v17, qword_1EE0813C8);
  swift_unknownObjectRetain();

  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6835C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = a3;
    v22 = v21;
    v36[0] = v21;
    *v20 = 136315394;
    v37[0] = a1;
    v37[1] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A370, &qword_1D1EAF8F0);
    v23 = sub_1D1E678BC();
    v35 = a4;
    v24 = a2;
    v26 = sub_1D1B1312C(v23, v25, v36);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = sub_1D1A53944();
    v28 = MEMORY[0x1D3891260](v16, v27);
    v30 = sub_1D1B1312C(v28, v29, v36);

    *(v20 + 14) = v30;
    a2 = v24;
    a4 = v35;
    _os_log_impl(&dword_1D16EC000, v18, v19, "buildRelevantAttributeDescriptors: for %s found %s", v20, 0x16u);
    swift_arrayDestroy();
    v31 = v22;
    a3 = v34;
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v20, -1, -1);
  }

  *a6 = a3;
  a6[1] = a4;
  a6[2] = a1;
  a6[3] = a2;
  a6[4] = v16;
  swift_unknownObjectRetain();
}

uint64_t sub_1D1DD78DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v28 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v28 = v1;
  v38 = MEMORY[0x1E69E7CC0];
  v30 = v5;
  sub_1D178D784(0, v7, 0);
  v8 = v38;
  v9 = v30 + 56;
  v10 = -1 << *(v30 + 32);
  result = sub_1D1E6869C();
  v12 = result;
  v13 = v30;
  v14 = 0;
  v29 = v30 + 64;
  v31 = v7;
  v32 = v9;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v13 + 32))
  {
    v17 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v36 = *(v13 + 36);
    v18 = v33;
    sub_1D1741C08(*(v13 + 48) + *(v34 + 72) * v12, v33, &qword_1EC643018, &qword_1D1E9AC00);
    v37 = *(v18 + *(v35 + 40));
    result = sub_1D1741A30(v18, &qword_1EC643018, &qword_1D1E9AC00);
    v38 = v8;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_1D178D784((v19 > 1), v20 + 1, 1);
      v8 = v38;
    }

    *(v8 + 16) = v20 + 1;
    *(v8 + 8 * v20 + 32) = v37;
    v15 = 1 << *(v13 + 32);
    if (v12 >= v15)
    {
      goto LABEL_22;
    }

    v9 = v32;
    v21 = *(v32 + 8 * v17);
    if ((v21 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v36 != *(v13 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v12 & 0x3F));
    if (v22)
    {
      v15 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
    }

    else
    {
      v23 = v17 << 6;
      v24 = v17 + 1;
      v25 = (v29 + 8 * v17);
      v16 = v31;
      while (v24 < (v15 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1D18A2E20(v12, v36, 0);
          v13 = v30;
          v15 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1D18A2E20(v12, v36, 0);
      v13 = v30;
    }

LABEL_4:
    ++v14;
    v12 = v15;
    if (v14 == v16)
    {
      return v8;
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

uint64_t sub_1D1DD7BEC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v34 - v5;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v41 = v10;
  v34 = v1;
  v48 = MEMORY[0x1E69E7CC0];
  sub_1D178CEFC(0, v11, 0);
  v12 = v48;
  v13 = a1 + 56;
  v14 = -1 << *(a1 + 32);
  result = sub_1D1E6869C();
  v16 = v7;
  v17 = result;
  v18 = 0;
  v42 = v16;
  v39 = v16 + 32;
  v40 = (v16 + 16);
  v35 = a1 + 64;
  v36 = v11;
  v37 = a1 + 56;
  v38 = a1;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 36);
    v46 = v18;
    v47 = v21;
    v22 = v43;
    v23 = v6;
    sub_1D1741C08(*(a1 + 48) + *(v44 + 72) * v17, v43, &qword_1EC643010, &qword_1D1E90E20);
    v24 = v41;
    (*v40)(v41, v22 + *(v45 + 40), v6);
    sub_1D1741A30(v22, &qword_1EC643010, &qword_1D1E90E20);
    v48 = v12;
    v25 = *(v12 + 16);
    v26 = *(v12 + 24);
    if (v25 >= v26 >> 1)
    {
      sub_1D178CEFC(v26 > 1, v25 + 1, 1);
      v12 = v48;
    }

    *(v12 + 16) = v25 + 1;
    result = (*(v42 + 32))(v12 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25, v24, v23);
    a1 = v38;
    v19 = 1 << *(v38 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v6 = v23;
    v13 = v37;
    v27 = *(v37 + 8 * v20);
    if ((v27 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    if (v47 != *(v38 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v17 & 0x3F));
    if (v28)
    {
      v19 = __clz(__rbit64(v28)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v20 << 6;
      v30 = v20 + 1;
      v31 = (v35 + 8 * v20);
      while (v30 < (v19 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_1D18A2E20(v17, v47, 0);
          v19 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_1D18A2E20(v17, v47, 0);
    }

LABEL_4:
    v18 = v46 + 1;
    v17 = v19;
    if (v46 + 1 == v36)
    {
      return v12;
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

uint64_t sub_1D1DD7FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a3;
  v7[14] = a5;
  v7[11] = a1;
  v7[12] = a2;
  v8 = *(a5 - 8);
  v7[17] = v8;
  v9 = *(v8 + 64) + 15;
  v7[18] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v11 = type metadata accessor for WidgetDetailUpdate();
  v7[20] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD8104, v6, 0);
}

uint64_t sub_1D1DD8104()
{
  v30 = v0;
  v27 = v0[18];
  v28 = v0[21];
  v1 = v0[16];
  v25 = v0[19];
  v26 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v24 = v0[13];
  swift_beginAccess();
  v5 = v1[16];
  v6 = swift_task_alloc();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;

  v7 = sub_1D1B52D1C(sub_1D1DDBE10, v6, v5);

  v8 = sub_1D1DD7BEC(v7);

  swift_beginAccess();
  v9 = v1[17];
  v10 = swift_task_alloc();
  v10[2] = v2;
  v10[3] = v3;
  v10[4] = v4;

  v11 = sub_1D1B52D1C(sub_1D1DDBDEC, v10, v9);

  v12 = sub_1D1DD7BEC(v11);

  swift_beginAccess();
  v13 = v1[18];
  v14 = swift_task_alloc();
  v14[2] = v2;
  v14[3] = v3;
  v14[4] = v4;

  v15 = sub_1D1B525A0(sub_1D1DDBE10, v14, v13);

  v16 = sub_1D1DD78DC(v15);

  sub_1D1741C08(v24, v25, &qword_1EC642590, qword_1D1E71260);
  (*(v26 + 16))(v27, v4, v2);
  v29[0] = dword_1F4D666B0;
  WidgetDetailUpdate.init(homeID:characteristics:actionSets:matterDevices:configuration:isMonitoring:filtered:)(v25, v8, v12, v16, v27, 0, v29, v2, v28);
  v17 = swift_task_alloc();
  v0[22] = v17;
  *v17 = v0;
  v17[1] = sub_1D1DD83B8;
  v18 = v0[21];
  v19 = v0[15];
  v20 = v0[16];
  v21 = v0[14];
  v22 = v0[11];

  return sub_1D1DBC3B8(v22, v18, v21, v19);
}

uint64_t sub_1D1DD83B8()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {
    v4 = v3[16];

    return MEMORY[0x1EEE6DFA0](sub_1D1DD85C4, v4, 0);
  }

  else
  {
    v6 = v3[20];
    v5 = v3[21];
    v8 = v3[18];
    v7 = v3[19];
    v9 = v3[17];
    v10 = v3[14];
    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    v11 = *(v5 + v6[9]);

    v12 = *(v5 + v6[10]);

    v13 = *(v5 + v6[11]);

    (*(v9 + 8))(v5 + v6[12], v10);
    v14 = v6[15];
    v15 = sub_1D1E66FDC();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);

    v16 = v3[1];

    return v16();
  }
}

uint64_t sub_1D1DD85C4()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[14];
  sub_1D1741A30(v1, &qword_1EC642590, qword_1D1E71260);
  v7 = *(v1 + v2[9]);

  v8 = *(v1 + v2[10]);

  v9 = *(v1 + v2[11]);

  (*(v5 + 8))(v1 + v2[12], v6);
  v10 = v2[15];
  v11 = sub_1D1E66FDC();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);

  v12 = v0[1];
  v13 = v0[23];

  return v12();
}

uint64_t sub_1D1DD86EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 8))(a3, a4);
  v9 = v8;
  v11 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if (v7 == (*(v10 + 8))(v11, v10) && v9 == v12)
  {
  }

  else
  {
    v14 = sub_1D1E6904C();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      return v15 & 1;
    }
  }

  v16 = (*(a4 + 16))(a3, a4);
  v18 = v17;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if (v16 == (*(v20 + 16))(v19, v20) && v18 == v21)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D1E6904C();
  }

  return v15 & 1;
}

uint64_t WidgetDataModel.toggle<A>(configuration:homeID:targetID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[82] = v5;
  v6[81] = a5;
  v6[80] = a4;
  v6[79] = a3;
  v6[78] = a2;
  v6[77] = a1;
  v7 = sub_1D1E66A7C();
  v6[83] = v7;
  v8 = *(v7 - 8);
  v6[84] = v8;
  v9 = *(v8 + 64) + 15;
  v6[85] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC40, &unk_1D1EAADA0) - 8) + 64) + 15;
  v6[86] = swift_task_alloc();
  v11 = type metadata accessor for StaticServiceGroup();
  v6[87] = v11;
  v12 = *(v11 - 8);
  v6[88] = v12;
  v13 = *(v12 + 64) + 15;
  v6[89] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70) - 8) + 64) + 15;
  v6[90] = swift_task_alloc();
  v15 = type metadata accessor for StaticActionSet();
  v6[91] = v15;
  v16 = *(v15 - 8);
  v6[92] = v16;
  v17 = *(v16 + 64) + 15;
  v6[93] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0) - 8) + 64) + 15;
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v20 = type metadata accessor for StaticService(0);
  v6[98] = v20;
  v21 = *(v20 - 8);
  v6[99] = v21;
  v22 = *(v21 + 64) + 15;
  v6[100] = swift_task_alloc();
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();
  v6[104] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40) - 8) + 64) + 15;
  v6[105] = swift_task_alloc();
  v24 = type metadata accessor for StaticAccessory(0);
  v6[106] = v24;
  v25 = *(v24 - 8);
  v6[107] = v25;
  v26 = *(v25 + 64) + 15;
  v6[108] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v6[109] = swift_task_alloc();
  v6[110] = swift_task_alloc();
  v28 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  v6[111] = swift_task_alloc();
  v6[112] = swift_task_alloc();
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  v6[113] = qword_1EE07B4E0;
  v29 = swift_task_alloc();
  v6[114] = v29;
  *v29 = v6;
  v29[1] = sub_1D1DD8D1C;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DD8D1C(uint64_t a1)
{
  v2 = *(*v1 + 912);
  v3 = *(*v1 + 904);
  v5 = *v1;
  *(*v1 + 920) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1DD8E34, v3, 0);
}

uint64_t sub_1D1DD8E34()
{
  v1 = v0[110];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[78];
  v5 = *(v2 + 16);
  v0[116] = v5;
  v0[117] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 56);
  v0[118] = v6;
  v0[119] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 0, 1, v3);
  v7 = swift_task_alloc();
  v0[120] = v7;
  *v7 = v0;
  v7[1] = sub_1D1DD8F54;
  v8 = v0[115];
  v9 = v0[112];
  v10 = v0[110];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[77];

  return sub_1D1DD7FC4(v9, v13, v10, 0, v12, v11);
}

uint64_t sub_1D1DD8F54()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v4 = *(*v1 + 920);
  v5 = *(*v1 + 880);
  v6 = *v1;
  *(*v1 + 968) = v0;

  sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);

  v7 = *(v2 + 904);
  if (v0)
  {
    v8 = sub_1D1DDB7C4;
  }

  else
  {
    v8 = sub_1D1DD90D0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D1DD90D0()
{
  v166 = v0;
  v1 = *(v0 + 896);
  StateSnapshot.tileInfo(for:)(*(v0 + 632), (v0 + 56));
  if (!*(v0 + 80))
  {
    sub_1D1741A30(v0 + 56, &qword_1EC643668, &qword_1D1E71D60);
    if (qword_1EE07A098 != -1)
    {
LABEL_64:
      swift_once();
    }

    v13 = *(v0 + 936);
    v14 = *(v0 + 928);
    v15 = *(v0 + 680);
    v16 = *(v0 + 664);
    v17 = *(v0 + 632);
    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EE0813C8);
    v14(v15, v17, v16);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6833C();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 896);
    v23 = *(v0 + 680);
    v24 = *(v0 + 672);
    v25 = *(v0 + 664);
    if (v21)
    {
      v162 = *(v0 + 896);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v165[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v165);
      *(v26 + 12) = 2080;
      sub_1D1886B8C();
      v28 = sub_1D1E68FAC();
      v30 = v29;
      (*(v24 + 8))(v23, v25);
      v31 = sub_1D1B1312C(v28, v30, v165);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_1D16EC000, v19, v20, "%s - tile info not found for id %s cannot be toggled", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v27, -1, -1);
      MEMORY[0x1D3893640](v26, -1, -1);

      v32 = v162;
    }

    else
    {

      (*(v24 + 8))(v23, v25);
      v32 = v22;
    }

    sub_1D1DDBD8C(v32, type metadata accessor for StateSnapshot);
    goto LABEL_25;
  }

  sub_1D16EEE20((v0 + 56), v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  if (((*(v3 + 168))(v2, v3) & 1) == 0)
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v33 = sub_1D1E6709C();
    __swift_project_value_buffer(v33, qword_1EE0813C8);
    sub_1D17419CC(v0 + 16, v0 + 96);
    v34 = sub_1D1E6707C();
    v35 = sub_1D1E6835C();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 896);
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v165[0] = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v165);
      *(v38 + 12) = 2080;
      sub_1D17419CC(v0 + 96, v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
      v40 = sub_1D1E678BC();
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      v43 = sub_1D1B1312C(v40, v42, v165);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_1D16EC000, v34, v35, "%s - tile %s cannot be toggled", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v39, -1, -1);
      MEMORY[0x1D3893640](v38, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    }

    sub_1D1DDBD8C(v37, type metadata accessor for StateSnapshot);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_25:
    v164 = 1;
LABEL_26:
    v78 = *(v0 + 896);
    v79 = *(v0 + 888);
    v80 = *(v0 + 880);
    v81 = *(v0 + 872);
    v82 = *(v0 + 864);
    v83 = *(v0 + 840);
    v84 = *(v0 + 832);
    v85 = *(v0 + 824);
    v86 = *(v0 + 816);
    v87 = *(v0 + 808);
    v149 = *(v0 + 800);
    v150 = *(v0 + 776);
    v151 = *(v0 + 768);
    v152 = *(v0 + 760);
    v153 = *(v0 + 752);
    v154 = *(v0 + 744);
    v155 = *(v0 + 720);
    v157 = *(v0 + 712);
    v159 = *(v0 + 688);
    v161 = *(v0 + 680);

    v88 = *(v0 + 8);

    return v88(v164);
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EE0813C8);
  sub_1D17419CC(v0 + 16, v0 + 176);
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v165[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v165);
    *(v7 + 12) = 2080;
    sub_1D17419CC(v0 + 176, v0 + 376);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    v9 = sub_1D1E678BC();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
    v12 = sub_1D1B1312C(v9, v11, v165);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%s - tileInfo is %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  }

  v44 = *(v0 + 856);
  v45 = *(v0 + 848);
  v46 = *(v0 + 840);
  v47 = *(v0 + 648);
  v48 = *(v0 + 640);
  v49 = *(v0 + 616);
  v158 = (*(v47 + 8))(v48, v47);
  v160 = v50;
  v156 = (*(v47 + 16))(v48, v47);
  v163 = v51;
  v52 = *(v0 + 40);
  v53 = __swift_project_boxed_opaque_existential_1((v0 + 16), v52);
  Description = v52[-1].Description;
  v55 = Description[8] + 15;
  v56 = swift_task_alloc();
  (Description[2])(v56, v53, v52);
  AnyTileInfoBearer.init<A>(_:)(v56, v52, v165);

  v57 = v165[0];
  *(v0 + 976) = v165[0];
  sub_1D17419CC((v57 + 2), v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v58 = swift_dynamicCast();
  (*(v44 + 56))(v46, v58 ^ 1u, 1, v45);
  if ((*(v44 + 48))(v46, 1, v45) != 1)
  {
    sub_1D1DDBD24(*(v0 + 840), *(v0 + 864), type metadata accessor for StaticAccessory);
    v90 = sub_1D1E6707C();
    v91 = sub_1D1E6835C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v165[0] = v93;
      *v92 = 136315138;
      *(v92 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v165);
      _os_log_impl(&dword_1D16EC000, v90, v91, "%s - is accessory", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x1D3893640](v93, -1, -1);
      MEMORY[0x1D3893640](v92, -1, -1);
    }

    v94 = *(v0 + 864);
    v95 = *(v0 + 792);
    v96 = *(v0 + 784);
    v97 = *(v0 + 776);
    StaticAccessory.primaryStaticService.getter(v97);
    if ((*(v95 + 48))(v97, 1, v96) == 1)
    {
      v98 = *(v0 + 864);
      sub_1D1741A30(*(v0 + 776), &qword_1EC6436F0, &qword_1D1E99BC0);
      v99 = StaticAccessory.visibleStaticServices.getter();
      v100 = *(v99 + 16);
      if (!v100)
      {
LABEL_37:

        v103 = sub_1D1E6707C();
        v104 = sub_1D1E6835C();
        v105 = os_log_type_enabled(v103, v104);
        v75 = *(v0 + 896);
        v106 = *(v0 + 864);
        if (v105)
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v165[0] = v108;
          *v107 = 136315138;
          *(v107 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v165);
          _os_log_impl(&dword_1D16EC000, v103, v104, "%s - no possible services to toggle", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v108);
          MEMORY[0x1D3893640](v108, -1, -1);
          MEMORY[0x1D3893640](v107, -1, -1);
        }

        sub_1D1DDBD8C(v106, type metadata accessor for StaticAccessory);
        goto LABEL_40;
      }

      v101 = 0;
      v102 = *(v0 + 792);
      while (1)
      {
        if (v101 >= *(v99 + 16))
        {
          __break(1u);
          goto LABEL_64;
        }

        sub_1D18DC660(v99 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v101, *(v0 + 816));
        if (StaticService.canBeToggled.getter())
        {
          break;
        }

        ++v101;
        sub_1D1DDBD8C(*(v0 + 816), type metadata accessor for StaticService);
        if (v100 == v101)
        {
          goto LABEL_37;
        }
      }

      v127 = *(v0 + 824);
      v128 = *(v0 + 816);
      v129 = *(v0 + 808);

      sub_1D1DDBD24(v128, v127, type metadata accessor for StaticService);
      sub_1D18DC660(v127, v129);
      v130 = sub_1D1E6707C();
      v131 = sub_1D1E6835C();
      v132 = os_log_type_enabled(v130, v131);
      v133 = *(v0 + 808);
      if (v132)
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v165[0] = v135;
        *v134 = 136315394;
        *(v134 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v165);
        *(v134 + 12) = 2080;
        v136 = StaticService.description.getter();
        v138 = v137;
        sub_1D1DDBD8C(v133, type metadata accessor for StaticService);
        v139 = sub_1D1B1312C(v136, v138, v165);

        *(v134 + 14) = v139;
        _os_log_impl(&dword_1D16EC000, v130, v131, "%s - service found: %s", v134, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v135, -1, -1);
        MEMORY[0x1D3893640](v134, -1, -1);
      }

      else
      {

        sub_1D1DDBD8C(v133, type metadata accessor for StaticService);
      }

      *(v0 + 600) = 1030;
      *(v0 + 512) = v158;
      *(v0 + 520) = v160;
      *(v0 + 528) = v156;
      *(v0 + 536) = v163;
      v147 = swift_task_alloc();
      *(v0 + 992) = v147;
      *v147 = v0;
      v147[1] = sub_1D1DDA920;
      v148 = *(v0 + 824);
      v118 = *(v0 + 760);
      v119 = (v0 + 600);
      v120 = (v0 + 512);
    }

    else
    {
      sub_1D1DDBD24(*(v0 + 776), *(v0 + 832), type metadata accessor for StaticService);
      *(v0 + 608) = 1030;
      *(v0 + 544) = v158;
      *(v0 + 552) = v160;
      *(v0 + 560) = v156;
      *(v0 + 568) = v163;
      v116 = swift_task_alloc();
      *(v0 + 984) = v116;
      *v116 = v0;
      v116[1] = sub_1D1DDA6B4;
      v117 = *(v0 + 832);
      v118 = *(v0 + 760);
      v119 = (v0 + 608);
      v120 = (v0 + 544);
    }

    goto LABEL_59;
  }

  v59 = *(v0 + 736);
  v60 = *(v0 + 728);
  v61 = *(v0 + 720);
  sub_1D1741A30(*(v0 + 840), &qword_1EC6436C8, &unk_1D1E97C40);
  sub_1D17419CC((v57 + 2), v0 + 256);
  v62 = swift_dynamicCast();
  (*(v59 + 56))(v61, v62 ^ 1u, 1, v60);
  if ((*(v59 + 48))(v61, 1, v60) != 1)
  {
    sub_1D1DDBD24(*(v0 + 720), *(v0 + 744), type metadata accessor for StaticActionSet);
    v109 = sub_1D1E6707C();
    v110 = sub_1D1E6835C();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v165[0] = v112;
      *v111 = 136315138;
      *(v111 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v165);
      _os_log_impl(&dword_1D16EC000, v109, v110, "%s - is actionSet", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x1D3893640](v112, -1, -1);
      MEMORY[0x1D3893640](v111, -1, -1);
    }

    *(v0 + 480) = v158;
    *(v0 + 488) = v160;
    *(v0 + 496) = v156;
    *(v0 + 504) = v163;
    *(v0 + 592) = 1028;
    v113 = swift_task_alloc();
    *(v0 + 1000) = v113;
    *v113 = v0;
    v113[1] = sub_1D1DDAB8C;
    v114 = *(v0 + 752);
    v115 = *(v0 + 744);

    return StaticActionSet.toggle(options:context:)(v114, (v0 + 592), (v0 + 480));
  }

  v63 = *(v0 + 792);
  v64 = *(v0 + 784);
  v65 = *(v0 + 768);
  sub_1D1741A30(*(v0 + 720), &qword_1EC643718, &qword_1D1E71E70);
  sub_1D17419CC((v57 + 2), v0 + 296);
  v66 = swift_dynamicCast();
  (*(v63 + 56))(v65, v66 ^ 1u, 1, v64);
  if ((*(v63 + 48))(v65, 1, v64) != 1)
  {
    sub_1D1DDBD24(*(v0 + 768), *(v0 + 800), type metadata accessor for StaticService);
    v121 = sub_1D1E6707C();
    v122 = sub_1D1E6835C();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v165[0] = v124;
      *v123 = 136315138;
      *(v123 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v165);
      _os_log_impl(&dword_1D16EC000, v121, v122, "%s - is service", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v124);
      MEMORY[0x1D3893640](v124, -1, -1);
      MEMORY[0x1D3893640](v123, -1, -1);
    }

    *(v0 + 584) = 1030;
    *(v0 + 448) = v158;
    *(v0 + 456) = v160;
    *(v0 + 464) = v156;
    *(v0 + 472) = v163;
    v125 = swift_task_alloc();
    *(v0 + 1016) = v125;
    *v125 = v0;
    v125[1] = sub_1D1DDADC4;
    v126 = *(v0 + 800);
    v118 = *(v0 + 760);
    v119 = (v0 + 584);
    v120 = (v0 + 448);
LABEL_59:

    return StaticService.toggle(options:context:)(v118, v119, v120);
  }

  v67 = *(v0 + 704);
  v68 = *(v0 + 696);
  v69 = *(v0 + 688);
  sub_1D1741A30(*(v0 + 768), &qword_1EC6436F0, &qword_1D1E99BC0);
  sub_1D17419CC((v57 + 2), v0 + 336);
  v70 = swift_dynamicCast();
  (*(v67 + 56))(v69, v70 ^ 1u, 1, v68);
  if ((*(v67 + 48))(v69, 1, v68) == 1)
  {
    v71 = *(v0 + 688);

    sub_1D1741A30(v71, &qword_1EC64CC40, &unk_1D1EAADA0);
    v72 = sub_1D1E6707C();
    v73 = sub_1D1E6835C();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 896);
    if (v74)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v165[0] = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v165);
      _os_log_impl(&dword_1D16EC000, v72, v73, "%s - is unknown", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x1D3893640](v77, -1, -1);
      MEMORY[0x1D3893640](v76, -1, -1);
    }

    else
    {
    }

LABEL_40:
    sub_1D1DDBD8C(v75, type metadata accessor for StateSnapshot);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v164 = 0;
    goto LABEL_26;
  }

  sub_1D1DDBD24(*(v0 + 688), *(v0 + 712), type metadata accessor for StaticServiceGroup);
  v140 = sub_1D1E6707C();
  v141 = sub_1D1E6835C();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v165[0] = v143;
    *v142 = 136315138;
    *(v142 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v165);
    _os_log_impl(&dword_1D16EC000, v140, v141, "%s - is serviceGroup", v142, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v143);
    MEMORY[0x1D3893640](v143, -1, -1);
    MEMORY[0x1D3893640](v142, -1, -1);
  }

  *(v0 + 576) = 1030;
  *(v0 + 416) = v158;
  *(v0 + 424) = v160;
  *(v0 + 432) = v156;
  *(v0 + 440) = v163;
  v144 = swift_task_alloc();
  *(v0 + 1024) = v144;
  *v144 = v0;
  v144[1] = sub_1D1DDB010;
  v145 = *(v0 + 760);
  v146 = *(v0 + 712);

  return StaticServiceGroup.toggle(options:context:)(v145, (v0 + 576), (v0 + 416));
}

uint64_t sub_1D1DDA6B4()
{
  v1 = *v0;
  v2 = (*v0)[123];
  v3 = (*v0)[113];
  v4 = (*v0)[95];
  v8 = *v0;

  v5 = v1[70];
  v6 = v1[71];
  sub_1D1DDBCDC(v1[68], v1[69]);
  sub_1D1741A30(v4, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D1DDA850, v3, 0);
}

uint64_t sub_1D1DDA850()
{
  v1 = v0[108];
  sub_1D1DDBD8C(v0[104], type metadata accessor for StaticService);
  sub_1D1DDBD8C(v1, type metadata accessor for StaticAccessory);
  v2 = swift_task_alloc();
  v0[129] = v2;
  *v2 = v0;
  v2[1] = sub_1D1DDB25C;
  v3 = v0[82];

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DDA920()
{
  v1 = *v0;
  v2 = (*v0)[124];
  v3 = (*v0)[113];
  v4 = (*v0)[95];
  v8 = *v0;

  v5 = v1[66];
  v6 = v1[67];
  sub_1D1DDBCDC(v1[64], v1[65]);
  sub_1D1741A30(v4, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D1DDAABC, v3, 0);
}

uint64_t sub_1D1DDAABC()
{
  v1 = v0[108];
  sub_1D1DDBD8C(v0[103], type metadata accessor for StaticService);
  sub_1D1DDBD8C(v1, type metadata accessor for StaticAccessory);
  v2 = swift_task_alloc();
  v0[129] = v2;
  *v2 = v0;
  v2[1] = sub_1D1DDB25C;
  v3 = v0[82];

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DDAB8C()
{
  v2 = *v1;
  v3 = (*v1)[125];
  v4 = *v1;
  v2[126] = v0;

  v5 = v2[62];
  v6 = v2[63];
  sub_1D1DDBCDC(v2[60], v2[61]);
  if (v0)
  {
    v7 = v2[113];
    v8 = sub_1D1DDB94C;
  }

  else
  {
    v9 = v2[113];
    sub_1D1741A30(v2[94], &unk_1EC649E30, &unk_1D1E91250);
    v8 = sub_1D1DDAD14;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D1DDAD14()
{
  sub_1D1DDBD8C(v0[93], type metadata accessor for StaticActionSet);
  v1 = swift_task_alloc();
  v0[129] = v1;
  *v1 = v0;
  v1[1] = sub_1D1DDB25C;
  v2 = v0[82];

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DDADC4()
{
  v1 = *v0;
  v2 = (*v0)[127];
  v3 = (*v0)[113];
  v4 = (*v0)[95];
  v8 = *v0;

  v5 = v1[58];
  v6 = v1[59];
  sub_1D1DDBCDC(v1[56], v1[57]);
  sub_1D1741A30(v4, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D1DDAF60, v3, 0);
}

uint64_t sub_1D1DDAF60()
{
  sub_1D1DDBD8C(v0[100], type metadata accessor for StaticService);
  v1 = swift_task_alloc();
  v0[129] = v1;
  *v1 = v0;
  v1[1] = sub_1D1DDB25C;
  v2 = v0[82];

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DDB010()
{
  v1 = *v0;
  v2 = (*v0)[128];
  v3 = (*v0)[113];
  v4 = (*v0)[95];
  v8 = *v0;

  v5 = v1[54];
  v6 = v1[55];
  sub_1D1DDBCDC(v1[52], v1[53]);
  sub_1D1741A30(v4, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D1DDB1AC, v3, 0);
}

uint64_t sub_1D1DDB1AC()
{
  sub_1D1DDBD8C(v0[89], type metadata accessor for StaticServiceGroup);
  v1 = swift_task_alloc();
  v0[129] = v1;
  *v1 = v0;
  v1[1] = sub_1D1DDB25C;
  v2 = v0[82];

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DDB25C(uint64_t a1)
{
  v2 = *(*v1 + 1032);
  v3 = *(*v1 + 904);
  v5 = *v1;
  *(*v1 + 1040) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1DDB374, v3, 0);
}

uint64_t sub_1D1DDB374()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v3 = *(v0 + 936);
  v4 = *(v0 + 872);
  v5 = *(v0 + 664);
  (*(v0 + 928))(v4, *(v0 + 624), v5);
  v2(v4, 0, 1, v5);
  v6 = swift_task_alloc();
  *(v0 + 1048) = v6;
  *v6 = v0;
  v6[1] = sub_1D1DDB464;
  v7 = *(v0 + 1040);
  v8 = *(v0 + 888);
  v9 = *(v0 + 872);
  v10 = *(v0 + 648);
  v11 = *(v0 + 640);
  v12 = *(v0 + 616);

  return sub_1D1DD7FC4(v8, v12, v9, 0, v11, v10);
}

uint64_t sub_1D1DDB464()
{
  v2 = *v1;
  v3 = (*v1)[131];
  v4 = *v1;
  v2[132] = v0;

  v5 = v2[130];
  v6 = v2[113];
  if (v0)
  {
    sub_1D1741A30(v2[109], &qword_1EC642590, qword_1D1E71260);

    v7 = sub_1D1DDBB24;
  }

  else
  {
    v8 = v2[111];
    v9 = v2[109];

    sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
    sub_1D1DDBD8C(v8, type metadata accessor for StateSnapshot);
    v7 = sub_1D1DDB614;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D1DDB614()
{
  v1 = v0[122];
  v2 = v0[112];

  sub_1D1DDBD8C(v2, type metadata accessor for StateSnapshot);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[108];
  v8 = v0[105];
  v9 = v0[104];
  v10 = v0[103];
  v11 = v0[102];
  v12 = v0[101];
  v15 = v0[100];
  v16 = v0[97];
  v17 = v0[96];
  v18 = v0[95];
  v19 = v0[94];
  v20 = v0[93];
  v21 = v0[90];
  v22 = v0[89];
  v23 = v0[86];
  v24 = v0[85];

  v13 = v0[1];

  return v13(1);
}

uint64_t sub_1D1DDB7C4()
{
  v23 = v0[121];
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[105];
  v7 = v0[104];
  v8 = v0[103];
  v9 = v0[102];
  v10 = v0[101];
  v13 = v0[100];
  v14 = v0[97];
  v15 = v0[96];
  v16 = v0[95];
  v17 = v0[94];
  v18 = v0[93];
  v19 = v0[90];
  v20 = v0[89];
  v21 = v0[86];
  v22 = v0[85];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1D1DDB94C()
{
  v1 = v0[122];
  v2 = v0[112];
  v3 = v0[93];

  sub_1D1DDBD8C(v3, type metadata accessor for StaticActionSet);
  sub_1D1DDBD8C(v2, type metadata accessor for StateSnapshot);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v26 = v0[126];
  v4 = v0[112];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[109];
  v8 = v0[108];
  v9 = v0[105];
  v10 = v0[104];
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];
  v16 = v0[100];
  v17 = v0[97];
  v18 = v0[96];
  v19 = v0[95];
  v20 = v0[94];
  v21 = v0[93];
  v22 = v0[90];
  v23 = v0[89];
  v24 = v0[86];
  v25 = v0[85];

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_1D1DDBB24()
{
  v1 = v0[122];
  v2 = v0[112];

  sub_1D1DDBD8C(v2, type metadata accessor for StateSnapshot);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v25 = v0[132];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[108];
  v8 = v0[105];
  v9 = v0[104];
  v10 = v0[103];
  v11 = v0[102];
  v12 = v0[101];
  v15 = v0[100];
  v16 = v0[97];
  v17 = v0[96];
  v18 = v0[95];
  v19 = v0[94];
  v20 = v0[93];
  v21 = v0[90];
  v22 = v0[89];
  v23 = v0[86];
  v24 = v0[85];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_1D1DDBCDC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D1DDBD24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1DDBD8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D1DDBE2C()
{
  result = [objc_allocWithZone(type metadata accessor for AccessoryControlTransitionModel()) init];
  qword_1EC64FED0 = result;
  return result;
}

id AccessoryControlTransitionModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AccessoryControlTransitionModel.shared.getter()
{
  if (qword_1EC6424D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64FED0;

  return v1;
}

uint64_t sub_1D1DDBEFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  sub_1D1741C08(a1, &v15 - v10, &qword_1EC6436F0, &qword_1D1E99BC0);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  sub_1D1DDC1AC(v11, v12 + v13);
  return swift_endAccess();
}

uint64_t sub_1D1DDBFE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1D1741C08(v2 + v4, a2, &qword_1EC6436F0, &qword_1D1E99BC0);
}

uint64_t sub_1D1DDC044(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  sub_1D18DC660(a1, &v14 - v7);
  v9 = type metadata accessor for StaticService(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_oldAccessoryControlsBearer;
  swift_beginAccess();
  sub_1D1DDC1AC(v8, v2 + v11);
  swift_endAccess();
  sub_1D18DC660(a2, v8);
  v10(v8, 0, 1, v9);
  v12 = OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_newAccessoryControlsBearer;
  swift_beginAccess();
  sub_1D1DDC1AC(v8, v2 + v12);
  return swift_endAccess();
}

uint64_t sub_1D1DDC1AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1DDC21C(uint64_t a1)
{
  v100 = a1;
  v2 = sub_1D1E66A7C();
  v97 = *(v2 - 8);
  v3 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v80 = &v76[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v5 = *(*(v99 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v99);
  v94 = &v76[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v76[-v8];
  v10 = type metadata accessor for StaticService(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v91 = &v76[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v82 = &v76[-v20];
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v76[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v81 = &v76[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x1EEE9AC00](v25);
  v96 = &v76[-v28];
  v29 = MEMORY[0x1EEE9AC00](v27);
  v93 = &v76[-v30];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v79 = &v76[-v32];
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v76[-v34];
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v76[-v36];
  v38 = OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_oldAccessoryControlsBearer;
  swift_beginAccess();
  v95 = v1;
  v78 = v38;
  sub_1D1741C08(v1 + v38, v22, &qword_1EC6436F0, &qword_1D1E99BC0);
  v83 = v11;
  v39 = *(v11 + 48);
  v98 = v10;
  v87 = v11 + 48;
  v86 = v39;
  v40 = v39(v22, 1, v10);
  v92 = v14;
  if (v40)
  {
    sub_1D1741A30(v22, &qword_1EC6436F0, &qword_1D1E99BC0);
    v41 = v97;
    v42 = *(v97 + 56);
    v43 = (v97 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v37, 1, 1, v2);
    v44 = *(v41 + 16);
    v45 = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    sub_1D18DC660(v22, v14);
    sub_1D1741A30(v22, &qword_1EC6436F0, &qword_1D1E99BC0);
    v41 = v97;
    v44 = *(v97 + 16);
    v45 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v37, v14, v2);
    sub_1D1797870(v14);
    v42 = *(v41 + 56);
    v43 = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v37, 0, 1, v2);
  }

  v88 = v44;
  v84 = v45;
  v44(v35, v100, v2);
  v90 = v42;
  v42(v35, 0, 1, v2);
  v46 = *(v99 + 48);
  sub_1D1741C08(v37, v9, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v35, &v9[v46], &qword_1EC642590, qword_1D1E71260);
  v47 = *(v41 + 48);
  v48 = v47(v9, 1, v2);
  v89 = v43;
  v85 = v47;
  if (v48 != 1)
  {
    v53 = v79;
    sub_1D1741C08(v9, v79, &qword_1EC642590, qword_1D1E71260);
    if (v47(&v9[v46], 1, v2) != 1)
    {
      v54 = v80;
      (*(v41 + 32))(v80, &v9[v46], v2);
      sub_1D1797998();
      v55 = v41;
      v77 = sub_1D1E6775C();
      v56 = v53;
      v57 = *(v55 + 8);
      v57(v54, v2);
      sub_1D1741A30(v35, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
      v57(v56, v2);
      sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
      v49 = v95;
      v50 = v92;
      v51 = v93;
      v52 = v91;
      if ((v77 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    sub_1D1741A30(v35, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
    (*(v41 + 8))(v53, v2);
LABEL_9:
    sub_1D1741A30(v9, &qword_1EC642980, &unk_1D1E6E6E0);
    v49 = v95;
    v50 = v92;
    v51 = v93;
    v52 = v91;
    goto LABEL_12;
  }

  sub_1D1741A30(v35, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
  if (v47(&v9[v46], 1, v2) != 1)
  {
    goto LABEL_9;
  }

  sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
  v49 = v95;
  v50 = v92;
  v51 = v93;
  v52 = v91;
LABEL_11:
  v58 = v82;
  (*(v83 + 56))(v82, 1, 1, v98);
  v59 = v78;
  swift_beginAccess();
  sub_1D1DDC1AC(v58, v49 + v59);
  swift_endAccess();
LABEL_12:
  v60 = OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_newAccessoryControlsBearer;
  swift_beginAccess();
  sub_1D1741C08(v49 + v60, v52, &qword_1EC6436F0, &qword_1D1E99BC0);
  v61 = v86(v52, 1, v98);
  v62 = v96;
  if (v61)
  {
    sub_1D1741A30(v52, &qword_1EC6436F0, &qword_1D1E99BC0);
    v63 = 1;
    v64 = v88;
  }

  else
  {
    sub_1D18DC660(v52, v50);
    sub_1D1741A30(v52, &qword_1EC6436F0, &qword_1D1E99BC0);
    v64 = v88;
    v88(v51, v50, v2);
    sub_1D1797870(v50);
    v63 = 0;
  }

  v65 = v90;
  v90(v51, v63, 1, v2);
  v64(v62, v100, v2);
  v65(v62, 0, 1, v2);
  v66 = *(v99 + 48);
  v67 = v94;
  sub_1D1741C08(v51, v94, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v62, &v67[v66], &qword_1EC642590, qword_1D1E71260);
  v68 = v85;
  if (v85(v67, 1, v2) != 1)
  {
    v69 = v81;
    sub_1D1741C08(v67, v81, &qword_1EC642590, qword_1D1E71260);
    if (v68(&v67[v66], 1, v2) != 1)
    {
      v71 = v97;
      v72 = v80;
      (*(v97 + 32))(v80, &v67[v66], v2);
      sub_1D1797998();
      v73 = sub_1D1E6775C();
      v74 = *(v71 + 8);
      v74(v72, v2);
      sub_1D1741A30(v96, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v51, &qword_1EC642590, qword_1D1E71260);
      v74(v81, v2);
      result = sub_1D1741A30(v67, &qword_1EC642590, qword_1D1E71260);
      if ((v73 & 1) == 0)
      {
        return result;
      }

      goto LABEL_22;
    }

    sub_1D1741A30(v96, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v51, &qword_1EC642590, qword_1D1E71260);
    (*(v97 + 8))(v69, v2);
    return sub_1D1741A30(v67, &qword_1EC642980, &unk_1D1E6E6E0);
  }

  v100 = v60;
  sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v51, &qword_1EC642590, qword_1D1E71260);
  if (v68(&v67[v66], 1, v2) != 1)
  {
    return sub_1D1741A30(v67, &qword_1EC642980, &unk_1D1E6E6E0);
  }

  sub_1D1741A30(v67, &qword_1EC642590, qword_1D1E71260);
  v60 = v100;
LABEL_22:
  v75 = v82;
  (*(v83 + 56))(v82, 1, 1, v98);
  swift_beginAccess();
  sub_1D1DDC1AC(v75, v49 + v60);
  return swift_endAccess();
}

id AccessoryControlTransitionModel.init()()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_oldAccessoryControlsBearer;
  v2 = type metadata accessor for StaticService(0);
  v3 = *(*(v2 - 8) + 56);
  v3(&v0[v1], 1, 1, v2);
  v3(&v0[OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_newAccessoryControlsBearer], 1, 1, v2);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AccessoryControlTransitionModel();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t type metadata accessor for AccessoryControlTransitionModel()
{
  result = qword_1EC64FED8;
  if (!qword_1EC64FED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AccessoryControlTransitionModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryControlTransitionModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1D1741C08(v4 + v5, a3, &qword_1EC6436F0, &qword_1D1E99BC0);
}

void sub_1D1DDD090()
{
  sub_1D1DDD208();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D1DDD208()
{
  if (!qword_1EC64FEE8)
  {
    type metadata accessor for StaticService(255);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC64FEE8);
    }
  }
}

unint64_t sub_1D1DDD260(unint64_t result, void *a2)
{
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v9 = v7;
        sub_1D1DDDDA0(&v9, a2);

        if (!v2)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1D1E6873C();
      v5 = result;
    }

    while (result);
  }

  return result;
}