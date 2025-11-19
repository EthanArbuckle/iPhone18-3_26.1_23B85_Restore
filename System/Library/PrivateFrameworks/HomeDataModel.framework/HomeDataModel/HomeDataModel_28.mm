uint64_t sub_1D19303F4(uint64_t a1)
{
  v2 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  v14 = 0;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1951B4C(v10, type metadata accessor for WriteInProgressStatusViewModel.ID))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1951A7C(*(a1 + 48) + *(v3 + 72) * (v20 | (v19 << 6)), v13, type metadata accessor for WriteInProgressStatusViewModel.ID);
    sub_1D1951AE4(v13, v7, type metadata accessor for WriteInProgressStatusViewModel.ID);
    sub_1D17646BC(v10, v7);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19305E0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1D17657B4(&v10, *(*(v1 + 48) + ((v8 << 8) | (4 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1D19306D8(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v24 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_1D1762CB8(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19308E8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1D1765BC4(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1D19309C4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1D1766118(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1D1930AA4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D18BE688();
    sub_1D1E681BC();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_1D1716918();
      return;
    }

    while (1)
    {
      sub_1D1764A98(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D1E6877C())
      {
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1D1930C84(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v24 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_1D1762CB8(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1930E94(uint64_t a1)
{
  v2 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  v14 = 0;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1951B4C(v10, type metadata accessor for StaticAccessory.DeviceIdentifier))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1951A7C(*(a1 + 48) + *(v3 + 72) * (v20 | (v19 << 6)), v13, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1951AE4(v13, v7, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1768FF0(v10, v7);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1931098(uint64_t result, uint64_t (*a2)(char *, void))
{
  v3 = result;
  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      result = a2(&v12, *(*(v3 + 48) + (v11 | (v10 << 6))));
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }
}

double StaticRVCClusterGroup.bestFitSelectingPrimaryTags(vacuum:mop:withSecondaryTags:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2;
  v7 = a4;
  if (a1 & 1) != 0 || (a2)
  {
    if (a3)
    {
      v77 = a3;
    }

    else
    {
      v14 = (v4 + *(type metadata accessor for StaticRVCClusterGroup() + 28));
      v15 = *(v14 + 2);
      if (v15)
      {
        v16 = *(v14 + 3);
        v78 = *v14;
        v79 = v15;
        v80 = v16;
        v77 = StaticRVCClusterGroup.CleanMode.secondaryTags.getter();
      }

      else
      {
        v77 = MEMORY[0x1E69E7CD0];
      }
    }

    v7 = *(v4 + *(type metadata accessor for StaticRVCClusterGroup() + 44));
    if (v7)
    {
      v17 = v7[2];

      if (v17)
      {
        v18 = 0;
        v19 = MEMORY[0x1E69E7CC0];
        v74 = v5;
        v75 = v17;
        while (1)
        {
          if (v18 >= v7[2])
          {
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          v20 = &v7[4 * v18 + 4];
          v21 = *(v20 + 16);
          v22 = *(v20 + 24);
          if ((a1 & 1) == 0)
          {
            break;
          }

          if (v5)
          {
            v76 = *v20;

            if (sub_1D192D6B0(&unk_1F4D62178, v22))
            {
              goto LABEL_43;
            }

            if (*(v22 + 16))
            {
              v23 = *(v22 + 40);
              sub_1D1E6920C();
              sub_1D1E6923C();
              sub_1D1E678EC();
              v24 = sub_1D1E6926C();
              v25 = -1 << *(v22 + 32);
              v26 = v24 & ~v25;
              if ((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
              {
                v27 = ~v25;
                while ((*(*(v22 + 48) + v26) & 0xBF) != 0x83)
                {
                  v26 = (v26 + 1) & v27;
                  if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
                  {
                    goto LABEL_15;
                  }
                }

LABEL_43:
                v81 = v19;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1D178D7F8(0, *(v19 + 16) + 1, 1);
                  v19 = v81;
                }

                v39 = v76;
                v41 = *(v19 + 16);
                v40 = *(v19 + 24);
                if (v41 >= v40 >> 1)
                {
                  sub_1D178D7F8((v40 > 1), v41 + 1, 1);
                  v39 = v76;
                  v19 = v81;
                }

                *(v19 + 16) = v41 + 1;
                v42 = v19 + 32 * v41;
                *(v42 + 32) = v39;
                *(v42 + 48) = v21;
                *(v42 + 56) = v22;
                v5 = v74;
                v17 = v75;
                goto LABEL_16;
              }
            }

            goto LABEL_15;
          }

          if (!*(v22 + 16))
          {
            goto LABEL_16;
          }

          v76 = *v20;
          v33 = *(v22 + 40);
          sub_1D1E6920C();
          sub_1D1E6923C();

          sub_1D1E678EC();
          v34 = sub_1D1E6926C();
          v35 = -1 << *(v22 + 32);
          v36 = v34 & ~v35;
          if ((*(v22 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
          {
            v37 = ~v35;
            while ((*(*(v22 + 48) + v36) & 0xBF) != 0x81)
            {
              v36 = (v36 + 1) & v37;
              if (((*(v22 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            v38 = &unk_1F4D651C0;
LABEL_42:
            if (sub_1D1929D78(v38, v22))
            {
              goto LABEL_43;
            }
          }

LABEL_15:

LABEL_16:
          if (++v18 == v17)
          {
            v43 = *(v19 + 16);
            if (!v43)
            {

              v44 = 0;
              v45 = v7 + 7;
              v19 = MEMORY[0x1E69E7CC0];
              while (2)
              {
                v46 = &v45[4 * v44];
                v47 = v44;
LABEL_54:
                if (v47 >= v7[2])
                {
                  goto LABEL_90;
                }

                v48 = *(v46 - 3);
                v49 = *(v46 - 2);
                v50 = *(v46 - 1);
                v51 = *v46;
                if ((a1 & 1) == 0)
                {
                  if (v74)
                  {
                    *&v78 = *(v46 - 3);
                    *(&v78 + 1) = v49;
                    v79 = v50;
                    v80 = v51;

                    if (StaticRVCClusterGroup.CleanMode.isMop.getter())
                    {
LABEL_58:
                      v81 = v19;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_1D178D7F8(0, *(v19 + 16) + 1, 1);
                        v19 = v81;
                      }

                      v53 = *(v19 + 16);
                      v52 = *(v19 + 24);
                      v54 = v53 + 1;
                      if (v53 >= v52 >> 1)
                      {
                        sub_1D178D7F8((v52 > 1), v53 + 1, 1);
                        v54 = v53 + 1;
                        v19 = v81;
                      }

                      v44 = v47 + 1;
                      *(v19 + 16) = v54;
                      v55 = (v19 + 32 * v53);
                      v55[4] = v48;
                      v55[5] = v49;
                      v55[6] = v50;
                      v55[7] = v51;
                      v45 = v7 + 7;
                      if (v75 - 1 != v47)
                      {
                        continue;
                      }

                      goto LABEL_67;
                    }

LABEL_52:
                  }

                  ++v47;
                  v46 += 4;
                  if (v75 == v47)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_54;
                }

                break;
              }

              *&v78 = *(v46 - 3);
              *(&v78 + 1) = v49;
              v79 = v50;
              v80 = v51;

              if (StaticRVCClusterGroup.CleanMode.isVacuum.getter())
              {
                goto LABEL_58;
              }

              goto LABEL_52;
            }

LABEL_68:
            v56 = 0;
            v57 = v19 + 56;
            v58 = MEMORY[0x1E69E7CC0];
            do
            {
              v59 = (v57 + 32 * v56);
              v60 = v56;
              while (1)
              {
                if (v60 >= *(v19 + 16))
                {
                  __break(1u);
                  goto LABEL_89;
                }

                v61 = *(v59 - 3);
                v7 = *(v59 - 2);
                v56 = v60 + 1;
                v62 = *(v59 - 1);
                v63 = *v59;

                if (sub_1D192A784(v64, v77))
                {
                  break;
                }

                v59 += 4;
                ++v60;
                if (v43 == v56)
                {
                  goto LABEL_81;
                }
              }

              *&v78 = v58;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1D178D7F8(0, *(v58 + 16) + 1, 1);
                v58 = v78;
              }

              v66 = *(v58 + 16);
              v65 = *(v58 + 24);
              v67 = v66 + 1;
              if (v66 >= v65 >> 1)
              {
                sub_1D178D7F8((v65 > 1), v66 + 1, 1);
                v67 = v66 + 1;
                v58 = v78;
              }

              *(v58 + 16) = v67;
              v68 = (v58 + 32 * v66);
              v68[4] = v61;
              v68[5] = v7;
              v68[6] = v62;
              v68[7] = v63;
              v57 = v19 + 56;
            }

            while (v43 - 1 != v60);
            goto LABEL_81;
          }
        }

        if ((v5 & 1) == 0 || !*(v22 + 16))
        {
          goto LABEL_16;
        }

        v76 = *v20;
        v28 = *(v22 + 40);
        sub_1D1E6920C();
        sub_1D1E6923C();

        sub_1D1E678EC();
        v29 = sub_1D1E6926C();
        v30 = -1 << *(v22 + 32);
        v31 = v29 & ~v30;
        if (((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_15;
        }

        v32 = ~v30;
        while ((*(*(v22 + 48) + v31) & 0xBF) != 0x82)
        {
          v31 = (v31 + 1) & v32;
          if (((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v38 = &unk_1F4D651E8;
        goto LABEL_42;
      }

      v19 = MEMORY[0x1E69E7CC0];
      v43 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v43)
      {
        goto LABEL_68;
      }

LABEL_67:
      v43 = *(v19 + 16);
      if (v43)
      {
        goto LABEL_68;
      }

      v58 = MEMORY[0x1E69E7CC0];
LABEL_81:

      if (*(v58 + 16))
      {

        v19 = v58;
      }

      else
      {
      }

      *&v78 = v19;

      sub_1D1932F38(&v78, sub_1D1E0C080, &type metadata for StaticRVCClusterGroup.CleanMode, sub_1D19338D4, sub_1D19331E8);

      if (*(v78 + 16))
      {
        v69 = *(v78 + 32);
        v70 = *(v78 + 40);
        v71 = *(v78 + 48);
        v72 = *(v78 + 56);

        *a4 = v69;
        a4[1] = v70;
        a4[2] = v71;
        a4[3] = v72;
        return result;
      }
    }

    else
    {
    }

    result = 0.0;
    *a4 = 0u;
    *(a4 + 1) = 0u;
    return result;
  }

  if (qword_1EE07A0A8 != -1)
  {
LABEL_91:
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EE07A0B0);
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6833C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v78 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1D1B1312C(0xD00000000000003ALL, 0x80000001D1EBE4E0, &v78);
    _os_log_impl(&dword_1D16EC000, v9, v10, "%s Can't find primary mode tag without vacuum or mop!", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  result = 0.0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  return result;
}

void StaticRVCClusterGroup.bestFitSelectingSecondaryTag(_:existingTags:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for StaticRVCClusterGroup();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *a1;
  if (v12 < 0 && (v13 & 0x3F) - 1 < 2)
  {
    if (qword_1EE07A0A8 == -1)
    {
LABEL_4:
      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EE07A0B0);
      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6833C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v164 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_1D1B1312C(0xD00000000000002DLL, 0x80000001D1EBE520, &v164);
        _os_log_impl(&dword_1D16EC000, v15, v16, "%s Attempting to set a primary tag as a secondary tag.", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x1D3893640](v18, -1, -1);
        MEMORY[0x1D3893640](v17, -1, -1);
      }

      goto LABEL_7;
    }

LABEL_167:
    swift_once();
    goto LABEL_4;
  }

  if (!a2)
  {
    *&v161 = v11;
    v35 = v4 + *(v8 + 28);
    v36 = *(v35 + 16);
    if (v36)
    {
      v160 = a3;
      v37 = *(v35 + 24);
      v38 = *(v35 + 8);
      v164 = *v35;
      v39 = v164;
      v165 = v38;
      v166 = v36;
      v167 = v37;
      v34 = StaticRVCClusterGroup.CleanMode.isMop.getter();
      v164 = v39;
      v165 = v38;
      v166 = v36;
      v167 = v37;
      v40 = StaticRVCClusterGroup.CleanMode.isVacuum.getter();
      v27 = 0;
      v11 = v161;
      goto LABEL_53;
    }

    v41 = *(v4 + *(v8 + 44));
    if (!v41 || (v42 = *(v41 + 16)) == 0)
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    v43 = 0;
    v44 = v12 >> 6;
    LODWORD(v159) = v13 & 0x3F | 0x4000;
    while (1)
    {
      if (v43 >= *(v41 + 16))
      {
        __break(1u);
        goto LABEL_166;
      }

      v45 = v41 + 32 + 32 * v43;
      v46 = *(v45 + 24);
      if (*(v46 + 16))
      {
        v47 = a3;
        v161 = *v45;
        v48 = *(v45 + 16);
        v49 = *(v46 + 40);
        sub_1D1E6920C();
        sub_1D1E6923C();

        sub_1D1E678EC();
        v50 = sub_1D1E6926C();
        v51 = -1 << *(v46 + 32);
        v52 = v50 & ~v51;
        if ((*(v46 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
        {
          v53 = ~v51;
          do
          {
            v54 = *(*(v46 + 48) + v52);
            if (v54 >> 6)
            {
              if (v54 >> 6 == 1)
              {
                if (v44 != 1)
                {
                  goto LABEL_36;
                }
              }

              else if (v44 != 2)
              {
                goto LABEL_36;
              }

              if (((v54 ^ v13) & 0x3F) == 0)
              {
                goto LABEL_89;
              }
            }

            else if (v13 <= 0x3F && v54 == v13)
            {
LABEL_89:
              *v47 = v161;
              *(v47 + 16) = v48;
              *(v47 + 24) = v46;
              return;
            }

LABEL_36:
            v52 = (v52 + 1) & v53;
          }

          while (((*(v46 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0);
        }

        a3 = v47;
      }

      if (++v43 == v42)
      {
        goto LABEL_7;
      }
    }
  }

  v19 = *(a2 + 16);
  v160 = a3;
  if (!v19)
  {
    v40 = 0;
    v34 = 0;
    v27 = 0;
    goto LABEL_53;
  }

  v20 = *(a2 + 40);
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v21 = sub_1D1E6926C();
  v22 = a2 + 56;
  v23 = -1 << *(a2 + 32);
  v24 = v21 & ~v23;
  if (((*(a2 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    v27 = 0;
    if (*(a2 + 16))
    {
      goto LABEL_15;
    }

LABEL_25:
    v40 = 0;
    v34 = 0;
    goto LABEL_53;
  }

  v25 = ~v23;
  do
  {
    v26 = *(*(a2 + 48) + v24) & 0xBF;
    v27 = v26 == 131;
    if (v26 == 131)
    {
      break;
    }

    v24 = (v24 + 1) & v25;
  }

  while (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
  if (!*(a2 + 16))
  {
    goto LABEL_25;
  }

LABEL_15:
  v28 = *(a2 + 40);
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v29 = sub_1D1E6926C();
  v30 = -1 << *(a2 + 32);
  v31 = v29 & ~v30;
  if ((*(v22 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
  {
    v32 = ~v30;
    do
    {
      v33 = *(*(a2 + 48) + v31) & 0xBF;
      v34 = v33 == 130;
      if (v33 == 130)
      {
        break;
      }

      v31 = (v31 + 1) & v32;
    }

    while (((*(v22 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
    if (!*(a2 + 16))
    {
      goto LABEL_52;
    }
  }

  else
  {
    v34 = 0;
    if (!*(a2 + 16))
    {
LABEL_52:
      v40 = 0;
      goto LABEL_53;
    }
  }

  v55 = *(a2 + 40);
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v56 = sub_1D1E6926C();
  v57 = -1 << *(a2 + 32);
  v58 = v56 & ~v57;
  if (((*(v22 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
  {
    goto LABEL_52;
  }

  v59 = ~v57;
  do
  {
    v60 = *(*(a2 + 48) + v58) & 0xBF;
    v40 = v60 == 129;
    if (v60 == 129)
    {
      break;
    }

    v58 = (v58 + 1) & v59;
  }

  while (((*(v22 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) != 0);
LABEL_53:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433B0, &qword_1D1E71FD0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1D1E739C0;
  *(v61 + 32) = v13;
  v62 = sub_1D17847E8(v61);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v63 = MEMORY[0x1E69E7CD0];
  v163 = MEMORY[0x1E69E7CD0];
  if (v27)
  {
    v64 = *(v62 + 40);
    sub_1D1E6920C();
    sub_1D1E6923C();
    a3 = 0x6E61656C43637672;
    sub_1D1E678EC();
    v65 = sub_1D1E6926C();
    v66 = -1 << *(v62 + 32);
    v67 = v65 & ~v66;
    if ((*(v62 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
    {
      v68 = ~v66;
      while ((*(*(v62 + 48) + v67) & 0xBF) != 0x83)
      {
        v67 = (v67 + 1) & v68;
        if (((*(v62 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_137;
    }

LABEL_58:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v162 = v62;
    v70 = *(v62 + 16);
    if (*(v62 + 24) > v70)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1948290();
        v62 = v162;
      }

LABEL_87:
      *(v62 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v67;
      *(*(v62 + 48) + v67) = -125;
      v88 = *(v62 + 16);
      v89 = __OFADD__(v88, 1);
      v90 = v88 + 1;
      if (!v89)
      {
        *(v62 + 16) = v90;
        goto LABEL_137;
      }

LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1D193A134(v70 + 1);
    }

    else
    {
      sub_1D194D96C(v70 + 1);
    }

    v62 = v162;
    v84 = *(v162 + 40);
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    v85 = sub_1D1E6926C();
    v86 = -1 << *(v62 + 32);
    v67 = v85 & ~v86;
    if (((*(v62 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
    {
      goto LABEL_87;
    }

    v87 = ~v86;
    while ((*(*(v62 + 48) + v67) & 0xBF) != 0x83)
    {
      v67 = (v67 + 1) & v87;
      if (((*(v62 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

LABEL_173:
    sub_1D1E690EC();
    __break(1u);

    __break(1u);
    return;
  }

  if (v34)
  {
    v71 = *(v62 + 40);
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    v72 = sub_1D1E6926C();
    v73 = -1 << *(v62 + 32);
    v74 = v72 & ~v73;
    if ((*(v62 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
    {
      v75 = ~v73;
      while ((*(*(v62 + 48) + v74) & 0xBF) != 0x82)
      {
        v74 = (v74 + 1) & v75;
        if (((*(v62 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
        {
          goto LABEL_66;
        }
      }
    }

    else
    {
LABEL_66:
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v162 = v62;
      v77 = *(v62 + 16);
      if (*(v62 + 24) <= v77)
      {
        if (v76)
        {
          sub_1D193A134(v77 + 1);
        }

        else
        {
          sub_1D194D96C(v77 + 1);
        }

        v62 = v162;
        v91 = *(v162 + 40);
        sub_1D1E6920C();
        sub_1D1E6923C();
        sub_1D1E678EC();
        v92 = sub_1D1E6926C();
        v93 = -1 << *(v62 + 32);
        v74 = v92 & ~v93;
        if ((*(v62 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
        {
          v94 = ~v93;
          while ((*(*(v62 + 48) + v74) & 0xBF) != 0x82)
          {
            v74 = (v74 + 1) & v94;
            if (((*(v62 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
            {
              goto LABEL_95;
            }
          }

          goto LABEL_173;
        }
      }

      else if ((v76 & 1) == 0)
      {
        sub_1D1948290();
        v62 = v162;
      }

LABEL_95:
      *(v62 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v74;
      *(*(v62 + 48) + v74) = -126;
      v95 = *(v62 + 16);
      v89 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v89)
      {
        __break(1u);
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      *(v62 + 16) = v96;
      v63 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v78 = *(MEMORY[0x1E69E7CD0] + 40);
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    v79 = sub_1D1E6926C();
    v80 = -1 << *(v63 + 32);
    v74 = v79 & ~v80;
    if (((*(v63 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v74) & 1) == 0)
    {
LABEL_73:
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v162 = v63;
      v83 = *(v63 + 16);
      if (*(v63 + 24) > v83)
      {
        if ((v82 & 1) == 0)
        {
          goto LABEL_172;
        }

        v63 = MEMORY[0x1E69E7CD0];
        goto LABEL_112;
      }

      if (v82)
      {
        sub_1D193A134(v83 + 1);
      }

      else
      {
        sub_1D194D96C(v83 + 1);
      }

      v63 = v162;
      v103 = *(v162 + 40);
      sub_1D1E6920C();
      sub_1D1E6923C();
      sub_1D1E678EC();
      v104 = sub_1D1E6926C();
      v105 = -1 << *(v63 + 32);
      v74 = v104 & ~v105;
      if (((*(v63 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
      {
        goto LABEL_112;
      }

      v106 = ~v105;
      while ((*(*(v63 + 48) + v74) & 0xBF) != 0x82)
      {
        v74 = (v74 + 1) & v106;
        if (((*(v63 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_173;
    }

    v81 = ~v80;
    while ((*(*(v63 + 48) + v74) & 0xBF) != 0x82)
    {
      v74 = (v74 + 1) & v81;
      if (((*(v63 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v74) & 1) == 0)
      {
        goto LABEL_73;
      }
    }
  }

  if (!v40)
  {
    goto LABEL_114;
  }

LABEL_98:
  v97 = *(v62 + 40);
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v98 = sub_1D1E6926C();
  v99 = -1 << *(v62 + 32);
  v74 = v98 & ~v99;
  if ((*(v62 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
  {
    v100 = ~v99;
    while ((*(*(v62 + 48) + v74) & 0xBF) != 0x81)
    {
      v74 = (v74 + 1) & v100;
      if (((*(v62 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    goto LABEL_137;
  }

LABEL_102:
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v162 = v62;
  v102 = *(v62 + 16);
  if (*(v62 + 24) <= v102)
  {
    if (v101)
    {
      sub_1D193A134(v102 + 1);
    }

    else
    {
      sub_1D194D96C(v102 + 1);
    }

    v62 = v162;
    v115 = *(v162 + 40);
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    v116 = sub_1D1E6926C();
    v117 = -1 << *(v62 + 32);
    v74 = v116 & ~v117;
    if ((*(v62 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
    {
      v118 = ~v117;
      while ((*(*(v62 + 48) + v74) & 0xBF) != 0x81)
      {
        v74 = (v74 + 1) & v118;
        if (((*(v62 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
        {
          goto LABEL_128;
        }
      }

      goto LABEL_173;
    }
  }

  else if ((v101 & 1) == 0)
  {
    sub_1D1948290();
    v62 = v162;
  }

LABEL_128:
  *(v62 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v74;
  *(*(v62 + 48) + v74) = -127;
  v119 = *(v62 + 16);
  v89 = __OFADD__(v119, 1);
  v120 = v119 + 1;
  if (v89)
  {
LABEL_170:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_172:
      sub_1D1948290();
      v63 = v162;
LABEL_112:
      *(v63 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v74;
      *(*(v63 + 48) + v74) = -126;
      v107 = *(v63 + 16);
      v89 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v89)
      {
        goto LABEL_169;
      }

      *(v63 + 16) = v108;
      v163 = v63;
      if (v40)
      {
        goto LABEL_98;
      }

LABEL_114:
      v109 = *(v63 + 40);
      sub_1D1E6920C();
      sub_1D1E6923C();
      sub_1D1E678EC();
      v110 = sub_1D1E6926C();
      v111 = -1 << *(v63 + 32);
      v74 = v110 & ~v111;
      if ((*(v63 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
      {
        break;
      }

LABEL_118:
      v113 = swift_isUniquelyReferenced_nonNull_native();
      v162 = v63;
      v114 = *(v63 + 16);
      if (*(v63 + 24) <= v114)
      {
        if (v113)
        {
          sub_1D193A134(v114 + 1);
        }

        else
        {
          sub_1D194D96C(v114 + 1);
        }

        v63 = v162;
        v121 = *(v162 + 40);
        sub_1D1E6920C();
        sub_1D1E6923C();
        sub_1D1E678EC();
        v122 = sub_1D1E6926C();
        v123 = -1 << *(v63 + 32);
        v74 = v122 & ~v123;
        if ((*(v63 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
        {
          v124 = ~v123;
          while ((*(*(v63 + 48) + v74) & 0xBF) != 0x81)
          {
            v74 = (v74 + 1) & v124;
            if (((*(v63 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
            {
              goto LABEL_135;
            }
          }

          goto LABEL_173;
        }
      }

      else if ((v113 & 1) == 0)
      {
        sub_1D1948290();
        v63 = v162;
      }

LABEL_135:
      *(v63 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v74;
      *(*(v63 + 48) + v74) = -127;
      v125 = *(v63 + 16);
      v89 = __OFADD__(v125, 1);
      v126 = v125 + 1;
      if (!v89)
      {
        *(v63 + 16) = v126;
        v163 = v63;
        goto LABEL_137;
      }
    }

    v112 = ~v111;
    while ((*(*(v63 + 48) + v74) & 0xBF) != 0x81)
    {
      v74 = (v74 + 1) & v112;
      if (((*(v63 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
      {
        goto LABEL_118;
      }
    }

    goto LABEL_137;
  }

  *(v62 + 16) = v120;
LABEL_137:
  v127 = *(v4 + *(v8 + 44));
  if (v127)
  {
    *&v161 = v62;
    v4 = *(v127 + 16);

    v158[1] = v128;
    if (v4)
    {
      v62 = 0;
      v129 = v128 + 56;
      v130 = MEMORY[0x1E69E7CC0];
      v158[0] = v128 + 56;
      do
      {
        v159 = v130;
        v131 = (v129 + 32 * v62);
        v132 = v62;
        while (1)
        {
          if (v132 >= v4)
          {
            __break(1u);
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          v62 = v132 + 1;
          if (__OFADD__(v132, 1))
          {
            goto LABEL_163;
          }

          v13 = *(v131 - 1);
          v133 = *v131;
          v134 = *(v131 - 3);
          v11 = *(v131 - 2);

          v135 = v161;

          v8 = sub_1D192A784(v133, v135);

          if (v8)
          {
            break;
          }

          ++v132;
          v131 += 4;
          if (v62 == v4)
          {
            v130 = v159;
            goto LABEL_156;
          }
        }

        v130 = v159;
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v164 = v130;
        if ((v136 & 1) == 0)
        {
          sub_1D178D7F8(0, *(v130 + 2) + 1, 1);
          v130 = v164;
        }

        v129 = v158[0];
        v138 = *(v130 + 2);
        v137 = *(v130 + 3);
        v8 = v138 + 1;
        if (v138 >= v137 >> 1)
        {
          sub_1D178D7F8((v137 > 1), v138 + 1, 1);
          v130 = v164;
        }

        *(v130 + 2) = v8;
        v139 = &v130[32 * v138];
        *(v139 + 4) = v134;
        *(v139 + 5) = v11;
        *(v139 + 6) = v13;
        *(v139 + 7) = v133;
      }

      while (v62 != v4);
    }

    else
    {
      v130 = MEMORY[0x1E69E7CC0];
    }

LABEL_156:

    v164 = v130;

    sub_1D1932EC4(&v164, &v163);

    v152 = v160;
    if (*(v164 + 2))
    {
      v153 = *(v164 + 4);
      v154 = *(v164 + 5);
      v155 = *(v164 + 6);
      v156 = *(v164 + 7);
    }

    else
    {
      v153 = 0;
      v154 = 0;
      v155 = 0;
      v156 = 0;
    }

    *v152 = v153;
    v152[1] = v154;
    v152[2] = v155;
    v152[3] = v156;
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
LABEL_164:
      swift_once();
    }

    v140 = sub_1D1E6709C();
    __swift_project_value_buffer(v140, qword_1EE07A0B0);
    sub_1D1951A7C(v4, v11, type metadata accessor for StaticRVCClusterGroup);
    v141 = sub_1D1E6707C();
    v142 = sub_1D1E6833C();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v164 = v144;
      *v143 = 136315650;
      *(v143 + 4) = sub_1D1B1312C(0xD00000000000002DLL, 0x80000001D1EBE520, &v164);
      *&v161 = v62;
      *(v143 + 12) = 2082;
      LOBYTE(v162) = v13;
      v145 = sub_1D1E678BC();
      v147 = sub_1D1B1312C(v145, v146, &v164);

      *(v143 + 14) = v147;
      *(v143 + 22) = 2082;
      v162 = *&v11[*(v8 + 44)];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473A8, &qword_1D1E855B0);
      v148 = sub_1D1E678BC();
      v150 = v149;
      sub_1D1951B4C(v11, type metadata accessor for StaticRVCClusterGroup);
      v151 = sub_1D1B1312C(v148, v150, &v164);

      *(v143 + 24) = v151;
      _os_log_impl(&dword_1D16EC000, v141, v142, "%s Couldn't find a clean mode that contained the specified tag: %{public}s allRunningModes: %{public}s'", v143, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v144, -1, -1);
      MEMORY[0x1D3893640](v143, -1, -1);
    }

    else
    {

      sub_1D1951B4C(v11, type metadata accessor for StaticRVCClusterGroup);
    }

    v157 = v160;
    *v160 = 0u;
    v157[1] = 0u;
  }
}

uint64_t StaticRVCClusterGroup.cleanMode(containing:)@<X0>(_OWORD *a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup();
  v4 = *(v1 + *(result + 44));
  if (v4)
  {
    v14 = a1;
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 56);
      while (v6 < *(v4 + 16))
      {
        v9 = *(v7 - 3);
        v8 = *(v7 - 2);
        v10 = *(v7 - 1);
        v11 = *v7;

        v13 = sub_1D192D6B0(v12, v11);

        if (v13)
        {
          *v14 = v9;
          v14[1] = v8;
          v14[2] = v10;
          v14[3] = v11;
          return result;
        }

        ++v6;
        v7 += 4;
        if (v5 == v6)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      *v14 = 0u;
      *(v14 + 1) = 0u;
    }
  }

  else
  {
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1D1932EC4(char **a1, uint64_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D1E0C080(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_1D1932FD4(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_1D1932F38(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1D19330D8(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1D1932FD4(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v7 = sub_1D1E67C8C();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_1D1933E78(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1D193326C(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1D19330D8(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1D1E68F9C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1D1E67C8C();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1D19331E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 32 * a3 + 24);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (*(v7 + 16) >= *(*(v9 - 8) + 16))
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v10 = *(v9 + 16);
      v11 = *v9;
      v12 = *(v9 - 16);
      *v9 = *(v9 - 32);
      *(v9 + 16) = v12;
      *(v9 - 16) = v10;
      *(v9 - 8) = v7;
      *(v9 - 32) = v11;
      v9 -= 32;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D193326C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 != a2)
  {
    v29 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_6:
    v26 = v5;
    v27 = a3;
    v7 = v29 + 32 * a3;
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v25 = v6;
    while (1)
    {
      v10 = *(v5 - 16);
      v11 = *(v5 - 8);
      v12 = *a5;

      v14 = sub_1D1A46BE0(v13, v9);

      v15 = *a5;

      v17 = sub_1D1A46BE0(v16, v11);

      if (v14)
      {
        if ((v17 & 1) == 0)
        {

          goto LABEL_12;
        }
      }

      else if (v17)
      {

LABEL_5:
        a3 = v27 + 1;
        v5 = v26 + 32;
        v6 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v18 = *(v9 + 16);
      v19 = *(v11 + 16);

      if (v18 >= v19)
      {
        goto LABEL_5;
      }

LABEL_12:
      if (!v29)
      {
        __break(1u);
        return result;
      }

      v20 = *(v5 + 16);
      v9 = *(v5 + 24);
      v21 = *v5;
      v22 = *(v5 - 16);
      *v5 = *(v5 - 32);
      *(v5 + 16) = v22;
      *(v5 - 16) = v20;
      *(v5 - 8) = v9;
      *(v5 - 32) = v21;
      v5 -= 32;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D1933420(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + a3);
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *(v10 - 1);
      if (v8 >> 6)
      {
        if (v8 >> 6 == 1)
        {
          v12 = 0;
          v13 = 0xE000000000000000;
          v14 = v11 >> 6;
          if (v11 >> 6)
          {
            goto LABEL_58;
          }

          goto LABEL_10;
        }

        v19 = v8 & 0x3F;
        if (v19 <= 1)
        {
          if (v19)
          {
            v17 = 0xD000000000000018;
            v18 = "HFVacuumCleanMode_Mop";
          }

          else
          {
            v17 = 0xD00000000000001BLL;
            v18 = "HFVacuumCleanMode_Vacuum";
          }

          goto LABEL_53;
        }

        if (v19 != 2)
        {
          v17 = 0xD00000000000001FLL;
          v18 = "HFVacuumCleanMode_Auto";
          goto LABEL_53;
        }

        v20 = "HFVacuumCleanMode_VacuumThenMop";
      }

      else
      {
        if (v8 <= 4u)
        {
          if (v8 <= 1u)
          {
            if (v8)
            {
              v17 = 0xD000000000000017;
              v18 = "HFVacuumCleanMode_Quiet";
            }

            else
            {
              v17 = 0xD000000000000016;
              v18 = "HFVacuumCleanMode_Quick";
            }
          }

          else if (v8 == 2)
          {
            v17 = 0xD000000000000017;
            v18 = "HFVacuumCleanMode_LowNoise";
          }

          else if (v8 == 3)
          {
            v17 = 0xD00000000000001ALL;
            v18 = "HFVacuumCleanMode_LowEnergy";
          }

          else
          {
            v17 = 0xD00000000000001BLL;
            v18 = "HFVacuumCleanMode_Vacation";
          }

          goto LABEL_53;
        }

        if (v8 <= 6u)
        {
          if (v8 == 5)
          {
            v17 = 0xD00000000000001ALL;
            v18 = "HFVacuumCleanMode_Min";
            goto LABEL_53;
          }

          v20 = "HFVacuumCleanMode_Max";
        }

        else if (v8 == 7)
        {
          v20 = "HFVacuumCleanMode_Night";
        }

        else
        {
          if (v8 == 8)
          {
            v17 = 0xD000000000000017;
            v18 = "HFVacuumCleanMode_Day";
LABEL_53:
            v22 = v18 | 0x8000000000000000;
            goto LABEL_57;
          }

          v20 = "SecondaryTag(_:existingTags:)";
        }
      }

      v22 = v20 | 0x8000000000000000;
      v17 = 0xD000000000000015;
LABEL_57:
      v12 = static String.hfLocalized(_:)(v17, v22);
      v13 = v23;
      v14 = v11 >> 6;
      if (v11 >> 6)
      {
LABEL_58:
        if (v14 == 1)
        {
          v24 = 0xE000000000000000;
          if (v12)
          {
            goto LABEL_72;
          }

          goto LABEL_71;
        }

        if ((v11 & 0x3Fu) > 1)
        {
          if ((v11 & 0x3F) == 2)
          {
            v21 = "HFVacuumCleanMode_VacuumThenMop";
            goto LABEL_66;
          }

          v15 = 0xD00000000000001FLL;
          v16 = "HFVacuumCleanMode_Auto";
        }

        else if ((v11 & 0x3F) != 0)
        {
          v15 = 0xD000000000000018;
          v16 = "HFVacuumCleanMode_Mop";
        }

        else
        {
          v15 = 0xD00000000000001BLL;
          v16 = "HFVacuumCleanMode_Vacuum";
        }

        goto LABEL_69;
      }

LABEL_10:
      if (v11 > 4)
      {
        if (v11 <= 6)
        {
          if (v11 != 5)
          {
            v21 = "HFVacuumCleanMode_Max";
            goto LABEL_66;
          }

          v15 = 0xD00000000000001ALL;
          v16 = "HFVacuumCleanMode_Min";
        }

        else
        {
          if (v11 == 7)
          {
            v21 = "HFVacuumCleanMode_Night";
LABEL_66:
            v25 = v21 | 0x8000000000000000;
            v15 = 0xD000000000000015;
            goto LABEL_70;
          }

          if (v11 != 8)
          {
            v21 = "SecondaryTag(_:existingTags:)";
            goto LABEL_66;
          }

          v15 = 0xD000000000000017;
          v16 = "HFVacuumCleanMode_Day";
        }
      }

      else if (v11 <= 1)
      {
        if (v11)
        {
          v15 = 0xD000000000000017;
          v16 = "HFVacuumCleanMode_Quiet";
        }

        else
        {
          v15 = 0xD000000000000016;
          v16 = "HFVacuumCleanMode_Quick";
        }
      }

      else if (v11 == 2)
      {
        v15 = 0xD000000000000017;
        v16 = "HFVacuumCleanMode_LowNoise";
      }

      else if (v11 == 3)
      {
        v15 = 0xD00000000000001ALL;
        v16 = "HFVacuumCleanMode_LowEnergy";
      }

      else
      {
        v15 = 0xD00000000000001BLL;
        v16 = "HFVacuumCleanMode_Vacation";
      }

LABEL_69:
      v25 = v16 | 0x8000000000000000;
LABEL_70:
      v26 = static String.hfLocalized(_:)(v15, v25);
      v24 = v27;
      if (v12 != v26)
      {
        goto LABEL_72;
      }

LABEL_71:
      if (v13 == v24)
      {

LABEL_5:
        ++v4;
        ++v6;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_72:
      v28 = sub_1D1E6904C();

      if ((v28 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        __break(1u);
        return result;
      }

      v8 = *v10;
      *v10 = *(v10 - 1);
      *--v10 = v8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D19338D4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1D1E0BE44(v10);
      v10 = result;
    }

    v85 = *(v10 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = *&v10[16 * v85];
        v87 = *&v10[16 * v85 + 24];
        sub_1D1935960((*a3 + 32 * v86), (*a3 + 32 * *&v10[16 * v85 + 16]), (*a3 + 32 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D1E0BE44(v10);
        }

        if (v85 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v88 = &v10[16 * v85];
        *v88 = v86;
        *(v88 + 1) = v87;
        result = sub_1D1E0BDB8(v85 - 1);
        v85 = *(v10 + 2);
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = 32 * v11;
      v13 = *a3 + 32 * v11;
      v14 = *(*(*a3 + 32 * v9 + 24) + 16);
      v15 = *(*(v13 + 24) + 16);
      v16 = v11 + 2;
      v17 = (v13 + 88);
      v18 = v14;
      while (v7 != v16)
      {
        v19 = *v17;
        v17 += 4;
        v20 = (v14 < v15) ^ (*(v19 + 16) >= v18);
        ++v16;
        v18 = *(v19 + 16);
        if ((v20 & 1) == 0)
        {
          v9 = v16 - 1;
          if (v14 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v14 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v21 = 0;
        v22 = 32 * v9;
        v23 = v11;
        do
        {
          if (v23 != v9 + v21 - 1)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v29 + v12);
            v25 = v29 + v22;
            v26 = *v24;
            v27 = v24[1];
            v28 = *(v25 - 16);
            *v24 = *(v25 - 32);
            v24[1] = v28;
            *(v25 - 32) = v26;
            *(v25 - 16) = v27;
          }

          ++v23;
          --v21;
          v22 -= 32;
          v12 += 32;
        }

        while (v23 < v9 + v21);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v40 = *(v10 + 3);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_1D177D070((v40 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v41;
    v42 = &v10[16 * v5];
    *(v42 + 4) = v11;
    *(v42 + 5) = v9;
    v43 = *v90;
    if (!*v90)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v10 + 4);
          v46 = *(v10 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_57:
          if (v48)
          {
            goto LABEL_104;
          }

          v61 = &v10[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_107;
          }

          v67 = &v10[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_111;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v71 = &v10[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_71:
        if (v66)
        {
          goto LABEL_106;
        }

        v74 = &v10[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_109;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_78:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v83 = *&v10[16 * v82 + 32];
        v5 = *&v10[16 * v44 + 40];
        sub_1D1935960((*a3 + 32 * v83), (*a3 + 32 * *&v10[16 * v44 + 32]), (*a3 + 32 * v5), v43);
        if (v4)
        {
        }

        if (v5 < v83)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D1E0BE44(v10);
        }

        if (v82 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v84 = &v10[16 * v82];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        result = sub_1D1E0BDB8(v44);
        v41 = *(v10 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v10[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_102;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_103;
      }

      v56 = &v10[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_105;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_108;
      }

      if (v60 >= v52)
      {
        v78 = &v10[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_112;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 32 * v9;
  v32 = v11 - v9;
LABEL_30:
  v33 = *(v30 + 32 * v9 + 24);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (*(v33 + 16) >= *(*(v35 - 8) + 16))
    {
LABEL_29:
      ++v9;
      v31 += 32;
      --v32;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 16);
    v37 = *v35;
    v38 = *(v35 - 16);
    *v35 = *(v35 - 32);
    *(v35 + 16) = v38;
    *(v35 - 16) = v36;
    *(v35 - 8) = v33;
    *(v35 - 32) = v37;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D1933E78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v160 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_181:
    v9 = *v160;
    if (!*v160)
    {
      goto LABEL_221;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_183:
      v154 = *(v7 + 2);
      if (v154 >= 2)
      {
        while (*a3)
        {
          v155 = *&v7[16 * v154];
          v156 = *&v7[16 * v154 + 24];
          sub_1D1935B74((*a3 + 32 * v155), (*a3 + 32 * *&v7[16 * v154 + 16]), (*a3 + 32 * v156), v9, a5);
          if (v167)
          {
          }

          if (v156 < v155)
          {
            goto LABEL_207;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1D1E0BE44(v7);
          }

          if (v154 - 2 >= *(v7 + 2))
          {
            goto LABEL_208;
          }

          v157 = &v7[16 * v154];
          *v157 = v155;
          *(v157 + 1) = v156;
          result = sub_1D1E0BDB8(v154 - 1);
          v154 = *(v7 + 2);
          if (v154 <= 1)
          {
          }
        }

        goto LABEL_219;
      }
    }

LABEL_215:
    result = sub_1D1E0BE44(v7);
    v7 = result;
    goto LABEL_183;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v8 = v6;
  v9 = v6 + 1;
  v166 = v7;
  v164 = v6;
  if (v6 + 1 >= v5)
  {
    goto LABEL_34;
  }

  v173 = v5;
  v10 = *a3 + 32 * v9;
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v13 = *a3 + 32 * v6;
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  v16 = *a5;

  v18 = sub_1D1A46BE0(v17, v12);

  v19 = *a5;

  v21 = sub_1D1A46BE0(v20, v15);

  if (v18)
  {
    if ((v21 & 1) == 0)
    {

      v22 = 1;
LABEL_11:
      v174 = v22;
      goto LABEL_12;
    }

LABEL_10:
    v23 = *(v12 + 16);
    v24 = *(v15 + 16);

    v22 = v23 < v24;
    goto LABEL_11;
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

  v174 = 0;
LABEL_12:
  v7 = v166;
  v9 = v8 + 2;
  if (v8 + 2 >= v173)
  {
    goto LABEL_25;
  }

  v25 = (v13 + 88);
  do
  {
    v29 = v9;
    v30 = *(v25 - 1);
    v31 = *v25;
    v32 = *(v25 - 5);
    v33 = *(v25 - 4);
    v34 = *a5;

    v36 = sub_1D1A46BE0(v35, v31);

    v37 = *a5;

    v39 = sub_1D1A46BE0(v38, v33);

    if (v36)
    {
      if (v39)
      {
        goto LABEL_14;
      }

      v7 = v166;
      v9 = v29;
      if (!v174)
      {
        v8 = v164;
        goto LABEL_34;
      }
    }

    else
    {
      if ((v39 & 1) == 0)
      {
LABEL_14:
        v26 = *(v31 + 16);
        v27 = *(v33 + 16);

        v28 = v26 >= v27;
        v7 = v166;
        v9 = v29;
        if (((v174 ^ v28) & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_15;
      }

      v7 = v166;
      v9 = v29;
      if (v174)
      {
        v8 = v164;
        goto LABEL_26;
      }
    }

LABEL_15:
    ++v9;
    v25 += 4;
  }

  while (v173 != v9);
  v9 = v173;
LABEL_24:
  v8 = v164;
LABEL_25:
  if (v174)
  {
LABEL_26:
    if (v9 >= v8)
    {
      if (v8 < v9)
      {
        v40 = 0;
        v41 = 32 * v9;
        v42 = 32 * v8;
        v43 = v8;
        do
        {
          if (v43 != v9 + v40 - 1)
          {
            v49 = *a3;
            if (!*a3)
            {
              goto LABEL_218;
            }

            v44 = (v49 + v42);
            v45 = v49 + v41;
            v46 = *v44;
            v47 = v44[1];
            v48 = *(v45 - 16);
            *v44 = *(v45 - 32);
            v44[1] = v48;
            *(v45 - 32) = v46;
            *(v45 - 16) = v47;
          }

          ++v43;
          --v40;
          v41 -= 32;
          v42 += 32;
        }

        while (v43 < v9 + v40);
      }

      goto LABEL_34;
    }

LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

LABEL_34:
  v50 = a3[1];
  if (v9 >= v50)
  {
    goto LABEL_130;
  }

  if (__OFSUB__(v9, v8))
  {
LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  if (v9 - v8 >= a4)
  {
    goto LABEL_130;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_213;
  }

  if (v8 + a4 < v50)
  {
    v50 = v8 + a4;
  }

  if (v50 < v8)
  {
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  if (v9 == v50)
  {
    goto LABEL_130;
  }

  v159 = v50;
  v51 = *a3;
  v163 = *a3;
LABEL_46:
  v52 = v51 + 32 * v9;
  v53 = *(v52 + 16);
  v54 = *(v52 + 24);
  v55 = v9;
  v161 = v9;
  while (1)
  {
    v170 = v55;
    v56 = v55 - 1;
    v57 = (v51 + 32 * (v55 - 1));
    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    v169 = v57;
    v60 = *(v54 + 16);
    if (!v60 || (v61 = *(*a5 + 16)) == 0)
    {

      v79 = 1;
      v80 = *(v58 + 16);
      if (v80)
      {
        goto LABEL_85;
      }

      goto LABEL_117;
    }

    if (v60 >= v61)
    {
      v62 = *a5;
    }

    else
    {
      v62 = v54;
    }

    v63 = *a5;
    if (v60 >= v61)
    {
      v9 = v54;
    }

    else
    {
      v9 = *a5;
    }

    v64 = 1 << *(v62 + 32);
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v66 = v65 & *(v62 + 56);
    v67 = (v64 + 63) >> 6;
    v7 = (v9 + 56);

    v171 = v54;

    v68 = 0;
    v175 = v58;
    while (1)
    {
LABEL_59:
      if (!v66)
      {
        v54 = v171;
        while (1)
        {
          v70 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            break;
          }

          if (v70 >= v67)
          {

            v79 = 1;
            v7 = v166;
            v51 = v163;
            v8 = v164;
            v80 = *(v58 + 16);
            if (v80)
            {
              goto LABEL_85;
            }

            goto LABEL_117;
          }

          v69 = *(v62 + 56 + 8 * v70);
          ++v68;
          if (v69)
          {
            v68 = v70;
            goto LABEL_66;
          }
        }

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
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
        goto LABEL_211;
      }

      v69 = v66;
LABEL_66:
      v66 = (v69 - 1) & v69;
      if (*(v9 + 16))
      {
        v71 = *(*(v62 + 48) + (__clz(__rbit64(v69)) | (v68 << 6)));
        v72 = *(v9 + 40);
        sub_1D1E6920C();
        v73 = v71 >> 6;
        sub_1D1E6923C();
        sub_1D1E678EC();
        v74 = sub_1D1E6926C();
        v75 = -1 << *(v9 + 32);
        v76 = v74 & ~v75;
        v58 = v175;
        if ((*&v7[(v76 >> 3) & 0xFFFFFFFFFFFFFF8] >> v76))
        {
          break;
        }
      }
    }

    v77 = ~v75;
    while (1)
    {
      v78 = *(*(v9 + 48) + v76);
      if (!(v78 >> 6))
      {
        break;
      }

      if (v78 >> 6 == 1)
      {
        if (v73 == 1)
        {
          goto LABEL_69;
        }
      }

      else if (v73 == 2)
      {
LABEL_69:
        if (((v78 ^ v71) & 0x3F) == 0)
        {
          goto LABEL_84;
        }
      }

LABEL_70:
      v76 = (v76 + 1) & v77;
      if (((*&v7[(v76 >> 3) & 0xFFFFFFFFFFFFFF8] >> v76) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    if (v71 > 0x3F || v78 != v71)
    {
      goto LABEL_70;
    }

LABEL_84:

    v79 = 0;
    v7 = v166;
    v51 = v163;
    v8 = v164;
    v54 = v171;
    v80 = *(v175 + 16);
    if (!v80)
    {
      goto LABEL_117;
    }

LABEL_85:
    v81 = *(*a5 + 16);
    if (!v81)
    {
LABEL_117:
      if (v79)
      {
        v99 = v8;
        goto LABEL_124;
      }

      goto LABEL_44;
    }

    v162 = v79;
    v172 = v54;
    v168 = v56;
    if (v80 >= v81)
    {
      v82 = *a5;
    }

    else
    {
      v82 = v58;
    }

    if (v80 >= v81)
    {
      v83 = v58;
    }

    else
    {
      v83 = *a5;
    }

    v7 = (v82 + 56);
    v84 = 1 << *(v82 + 32);
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    else
    {
      v85 = -1;
    }

    v86 = v85 & *(v82 + 56);
    v87 = (v84 + 63) >> 6;
    v9 = v83 + 56;

    v88 = 0;
    v176 = v58;
    while (1)
    {
LABEL_96:
      if (!v86)
      {
        v54 = v172;
        while (1)
        {
          v90 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            goto LABEL_193;
          }

          if (v90 >= v87)
          {
            break;
          }

          v89 = *&v7[8 * v90];
          ++v88;
          if (v89)
          {
            v88 = v90;
            goto LABEL_103;
          }
        }

        if (v162)
        {
          v7 = v166;
          v51 = v163;
          v99 = v164;
          v56 = v168;
          goto LABEL_124;
        }

        v7 = v166;
        v51 = v163;
        v8 = v164;
LABEL_44:

        goto LABEL_45;
      }

      v89 = v86;
LABEL_103:
      v86 = (v89 - 1) & v89;
      if (*(v83 + 16))
      {
        v91 = *(*(v82 + 48) + (__clz(__rbit64(v89)) | (v88 << 6)));
        v92 = *(v83 + 40);
        sub_1D1E6920C();
        v93 = v91 >> 6;
        sub_1D1E6923C();
        sub_1D1E678EC();
        v94 = sub_1D1E6926C();
        v95 = -1 << *(v83 + 32);
        v96 = v94 & ~v95;
        v58 = v176;
        if ((*(v9 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96))
        {
          break;
        }
      }
    }

    v97 = ~v95;
    while (2)
    {
      v98 = *(*(v83 + 48) + v96);
      if (v98 >> 6)
      {
        if (v98 >> 6 == 1)
        {
          if (v93 != 1)
          {
            goto LABEL_107;
          }

LABEL_106:
          if (((v98 ^ v91) & 0x3F) == 0)
          {
            goto LABEL_121;
          }
        }

        else if (v93 == 2)
        {
          goto LABEL_106;
        }

LABEL_107:
        v96 = (v96 + 1) & v97;
        if (((*(v9 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
        {
          goto LABEL_96;
        }

        continue;
      }

      break;
    }

    if (v91 > 0x3F || v98 != v91)
    {
      goto LABEL_107;
    }

LABEL_121:

    if (v162)
    {

      v7 = v166;
      v51 = v163;
      v8 = v164;
      v56 = v168;
      v100 = v170;
      goto LABEL_125;
    }

    v7 = v166;
    v51 = v163;
    v99 = v164;
    v56 = v168;
    v54 = v172;
LABEL_124:
    v101 = *(v54 + 16);
    v102 = *(v58 + 16);

    v103 = v101 >= v102;
    v100 = v170;
    v8 = v99;
    if (v103)
    {
LABEL_45:
      v9 = v161 + 1;
      if (v161 + 1 == v159)
      {
        v9 = v159;
LABEL_130:
        if (v9 >= v8)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v6 = v9;
          if ((result & 1) == 0)
          {
            result = sub_1D177D070(0, *(v7 + 2) + 1, 1, v7);
            v7 = result;
          }

          v109 = *(v7 + 2);
          v108 = *(v7 + 3);
          v110 = v109 + 1;
          if (v109 >= v108 >> 1)
          {
            result = sub_1D177D070((v108 > 1), v109 + 1, 1, v7);
            v7 = result;
          }

          *(v7 + 2) = v110;
          v111 = &v7[16 * v109];
          *(v111 + 4) = v8;
          *(v111 + 5) = v9;
          v9 = *v160;
          if (!*v160)
          {
            goto LABEL_220;
          }

          if (!v109)
          {
LABEL_3:
            v5 = a3[1];
            if (v6 >= v5)
            {
              goto LABEL_181;
            }

            goto LABEL_4;
          }

          while (1)
          {
            v112 = v110 - 1;
            if (v110 >= 4)
            {
              break;
            }

            if (v110 == 3)
            {
              v113 = *(v7 + 4);
              v114 = *(v7 + 5);
              v123 = __OFSUB__(v114, v113);
              v115 = v114 - v113;
              v116 = v123;
LABEL_150:
              if (v116)
              {
                goto LABEL_199;
              }

              v129 = &v7[16 * v110];
              v131 = *v129;
              v130 = *(v129 + 1);
              v132 = __OFSUB__(v130, v131);
              v133 = v130 - v131;
              v134 = v132;
              if (v132)
              {
                goto LABEL_202;
              }

              v135 = &v7[16 * v112 + 32];
              v137 = *v135;
              v136 = *(v135 + 1);
              v123 = __OFSUB__(v136, v137);
              v138 = v136 - v137;
              if (v123)
              {
                goto LABEL_205;
              }

              if (__OFADD__(v133, v138))
              {
                goto LABEL_206;
              }

              if (v133 + v138 >= v115)
              {
                if (v115 < v138)
                {
                  v112 = v110 - 2;
                }

                goto LABEL_171;
              }

              goto LABEL_164;
            }

            v139 = &v7[16 * v110];
            v141 = *v139;
            v140 = *(v139 + 1);
            v123 = __OFSUB__(v140, v141);
            v133 = v140 - v141;
            v134 = v123;
LABEL_164:
            if (v134)
            {
              goto LABEL_201;
            }

            v142 = &v7[16 * v112];
            v144 = *(v142 + 4);
            v143 = *(v142 + 5);
            v123 = __OFSUB__(v143, v144);
            v145 = v143 - v144;
            if (v123)
            {
              goto LABEL_204;
            }

            if (v145 < v133)
            {
              goto LABEL_3;
            }

LABEL_171:
            v150 = v112 - 1;
            if (v112 - 1 >= v110)
            {
              goto LABEL_194;
            }

            if (!*a3)
            {
              goto LABEL_217;
            }

            v151 = *&v7[16 * v150 + 32];
            v152 = *&v7[16 * v112 + 40];
            sub_1D1935B74((*a3 + 32 * v151), (*a3 + 32 * *&v7[16 * v112 + 32]), (*a3 + 32 * v152), v9, a5);
            if (v167)
            {
            }

            if (v152 < v151)
            {
              goto LABEL_195;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_1D1E0BE44(v7);
            }

            if (v150 >= *(v7 + 2))
            {
              goto LABEL_196;
            }

            v153 = &v7[16 * v150];
            *(v153 + 4) = v151;
            *(v153 + 5) = v152;
            result = sub_1D1E0BDB8(v112);
            v110 = *(v7 + 2);
            if (v110 <= 1)
            {
              goto LABEL_3;
            }
          }

          v117 = &v7[16 * v110 + 32];
          v118 = *(v117 - 64);
          v119 = *(v117 - 56);
          v123 = __OFSUB__(v119, v118);
          v120 = v119 - v118;
          if (v123)
          {
            goto LABEL_197;
          }

          v122 = *(v117 - 48);
          v121 = *(v117 - 40);
          v123 = __OFSUB__(v121, v122);
          v115 = v121 - v122;
          v116 = v123;
          if (v123)
          {
            goto LABEL_198;
          }

          v124 = &v7[16 * v110];
          v126 = *v124;
          v125 = *(v124 + 1);
          v123 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v123)
          {
            goto LABEL_200;
          }

          v123 = __OFADD__(v115, v127);
          v128 = v115 + v127;
          if (v123)
          {
            goto LABEL_203;
          }

          if (v128 >= v120)
          {
            v146 = &v7[16 * v112 + 32];
            v148 = *v146;
            v147 = *(v146 + 1);
            v123 = __OFSUB__(v147, v148);
            v149 = v147 - v148;
            if (v123)
            {
              goto LABEL_209;
            }

            if (v115 < v149)
            {
              v112 = v110 - 2;
            }

            goto LABEL_171;
          }

          goto LABEL_150;
        }

        goto LABEL_210;
      }

      goto LABEL_46;
    }

LABEL_125:
    if (!v51)
    {
      break;
    }

    v104 = (v51 + 32 * v100);
    v105 = *(v104 + 2);
    v54 = *(v104 + 3);
    v106 = *v104;
    v107 = v169[1];
    *v104 = *v169;
    v104[1] = v107;
    *v169 = v106;
    *(v169 + 2) = v105;
    *(v169 + 3) = v54;
    v55 = v56;
    if (v56 == v8)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
  return result;
}

uint64_t sub_1D1934C4C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3;
  v120 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_226:
    v6 = *v120;
    if (!*v120)
    {
      goto LABEL_264;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_228:
      v128 = v7;
      v114 = *(v7 + 2);
      if (v114 >= 2)
      {
        while (*v4)
        {
          v115 = *&v7[16 * v114];
          v116 = *&v7[16 * v114 + 24];
          sub_1D1935F8C((*v4 + v115), (*v4 + *&v7[16 * v114 + 16]), *v4 + v116, v6);
          if (v125)
          {
          }

          if (v116 < v115)
          {
            goto LABEL_251;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1D1E0BE44(v7);
          }

          if (v114 - 2 >= *(v7 + 2))
          {
            goto LABEL_252;
          }

          v117 = &v7[16 * v114];
          *v117 = v115;
          *(v117 + 1) = v116;
          v128 = v7;
          result = sub_1D1E0BDB8(v114 - 1);
          v7 = v128;
          v114 = *(v128 + 2);
          if (v114 <= 1)
          {
          }
        }

        goto LABEL_262;
      }
    }

LABEL_258:
    result = sub_1D1E0BE44(v7);
    v7 = result;
    goto LABEL_228;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v8 = v6++;
    if (v6 >= v5)
    {
      goto LABEL_91;
    }

    v123 = *v4;
    v9 = *(*v4 + v8);
    v127[0] = v6[*v4];
    v10 = _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(v127);
    v12 = v11;
    v126 = v9;
    if (v10 == _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(&v126) && v12 == v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_1D1E6904C();
    }

    v6 = (v8 + 2);
    if (v8 + 2 >= v5)
    {
LABEL_81:
      if (v14)
      {
        goto LABEL_82;
      }

      goto LABEL_91;
    }

    while (1)
    {
      v16 = v6[v123];
      v17 = v6[v123 - 1];
      if (v16 >> 6)
      {
        if (v16 >> 6 == 1)
        {
          v18 = 0;
          v19 = 0xE000000000000000;
          v20 = v17 >> 6;
          if (v17 >> 6)
          {
            goto LABEL_64;
          }

          goto LABEL_16;
        }

        v25 = v16 & 0x3F;
        if (v25 <= 1)
        {
          if (v25)
          {
            v23 = 0xD000000000000018;
            v24 = "HFVacuumCleanMode_Mop";
          }

          else
          {
            v23 = 0xD00000000000001BLL;
            v24 = "HFVacuumCleanMode_Vacuum";
          }

          goto LABEL_59;
        }

        if (v25 != 2)
        {
          v23 = 0xD00000000000001FLL;
          v24 = "HFVacuumCleanMode_Auto";
          goto LABEL_59;
        }

        v26 = "HFVacuumCleanMode_VacuumThenMop";
      }

      else
      {
        if (v6[v123] <= 4u)
        {
          if (v6[v123] <= 1u)
          {
            if (v6[v123])
            {
              v23 = 0xD000000000000017;
              v24 = "HFVacuumCleanMode_Quiet";
            }

            else
            {
              v23 = 0xD000000000000016;
              v24 = "HFVacuumCleanMode_Quick";
            }
          }

          else if (v16 == 2)
          {
            v23 = 0xD000000000000017;
            v24 = "HFVacuumCleanMode_LowNoise";
          }

          else if (v16 == 3)
          {
            v23 = 0xD00000000000001ALL;
            v24 = "HFVacuumCleanMode_LowEnergy";
          }

          else
          {
            v23 = 0xD00000000000001BLL;
            v24 = "HFVacuumCleanMode_Vacation";
          }

          goto LABEL_59;
        }

        if (v6[v123] <= 6u)
        {
          if (v16 == 5)
          {
            v23 = 0xD00000000000001ALL;
            v24 = "HFVacuumCleanMode_Min";
            goto LABEL_59;
          }

          v26 = "HFVacuumCleanMode_Max";
        }

        else if (v16 == 7)
        {
          v26 = "HFVacuumCleanMode_Night";
        }

        else
        {
          if (v16 == 8)
          {
            v23 = 0xD000000000000017;
            v24 = "HFVacuumCleanMode_Day";
LABEL_59:
            v28 = v24 | 0x8000000000000000;
            goto LABEL_63;
          }

          v26 = "SecondaryTag(_:existingTags:)";
        }
      }

      v28 = v26 | 0x8000000000000000;
      v23 = 0xD000000000000015;
LABEL_63:
      v18 = static String.hfLocalized(_:)(v23, v28);
      v19 = v29;
      v20 = v17 >> 6;
      if (v17 >> 6)
      {
LABEL_64:
        if (v20 == 1)
        {
          v30 = 0xE000000000000000;
          if (v18)
          {
            goto LABEL_11;
          }

          goto LABEL_77;
        }

        if ((v17 & 0x3Fu) <= 1)
        {
          if ((v17 & 0x3F) != 0)
          {
            v21 = 0xD000000000000018;
            v22 = "HFVacuumCleanMode_Mop";
          }

          else
          {
            v21 = 0xD00000000000001BLL;
            v22 = "HFVacuumCleanMode_Vacuum";
          }

          goto LABEL_75;
        }

        if ((v17 & 0x3F) == 2)
        {
          v27 = "HFVacuumCleanMode_VacuumThenMop";
          goto LABEL_72;
        }

        v21 = 0xD00000000000001FLL;
        v22 = "HFVacuumCleanMode_Auto";
        goto LABEL_75;
      }

LABEL_16:
      if (v17 <= 4)
      {
        if (v17 <= 1)
        {
          if (v17)
          {
            v21 = 0xD000000000000017;
            v22 = "HFVacuumCleanMode_Quiet";
          }

          else
          {
            v21 = 0xD000000000000016;
            v22 = "HFVacuumCleanMode_Quick";
          }
        }

        else if (v17 == 2)
        {
          v21 = 0xD000000000000017;
          v22 = "HFVacuumCleanMode_LowNoise";
        }

        else if (v17 == 3)
        {
          v21 = 0xD00000000000001ALL;
          v22 = "HFVacuumCleanMode_LowEnergy";
        }

        else
        {
          v21 = 0xD00000000000001BLL;
          v22 = "HFVacuumCleanMode_Vacation";
        }

        goto LABEL_75;
      }

      if (v17 <= 6)
      {
        if (v17 == 5)
        {
          v21 = 0xD00000000000001ALL;
          v22 = "HFVacuumCleanMode_Min";
          goto LABEL_75;
        }

        v27 = "HFVacuumCleanMode_Max";
LABEL_72:
        v31 = v27 | 0x8000000000000000;
        v21 = 0xD000000000000015;
        goto LABEL_76;
      }

      if (v17 == 7)
      {
        v27 = "HFVacuumCleanMode_Night";
        goto LABEL_72;
      }

      if (v17 != 8)
      {
        v27 = "SecondaryTag(_:existingTags:)";
        goto LABEL_72;
      }

      v21 = 0xD000000000000017;
      v22 = "HFVacuumCleanMode_Day";
LABEL_75:
      v31 = v22 | 0x8000000000000000;
LABEL_76:
      v32 = static String.hfLocalized(_:)(v21, v31);
      v30 = v33;
      if (v18 != v32)
      {
        goto LABEL_11;
      }

LABEL_77:
      if (v19 == v30)
      {

        if (v14)
        {
          v4 = a3;
          goto LABEL_82;
        }

        goto LABEL_12;
      }

LABEL_11:
      v15 = sub_1D1E6904C();

      if ((v14 ^ v15))
      {
        break;
      }

LABEL_12:
      ++v6;
      v4 = a3;
      if (v5 == v6)
      {
        v6 = v5;
        goto LABEL_81;
      }
    }

    v4 = a3;
    if ((v14 & 1) == 0)
    {
      goto LABEL_91;
    }

LABEL_82:
    if (v6 < v8)
    {
      goto LABEL_255;
    }

    if (v8 < v6)
    {
      v34 = v6 - 1;
      v35 = v8;
      do
      {
        if (v35 != v34)
        {
          v37 = *v4;
          if (!*v4)
          {
            goto LABEL_261;
          }

          v38 = v35[v37];
          v35[v37] = v34[v37];
          v34[v37] = v38;
        }
      }

      while (++v35 < v34--);
    }

LABEL_91:
    v39 = v4[1];
    if (v6 >= v39)
    {
      goto LABEL_174;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_254;
    }

    if (&v6[-v8] >= a4)
    {
LABEL_174:
      if (v6 < v8)
      {
        goto LABEL_253;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D177D070(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v68 = *(v7 + 2);
      v67 = *(v7 + 3);
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        result = sub_1D177D070((v67 > 1), v68 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v69;
      v70 = &v7[16 * v68];
      *(v70 + 4) = v8;
      *(v70 + 5) = v6;
      v71 = *v120;
      if (!*v120)
      {
        goto LABEL_263;
      }

      if (!v68)
      {
LABEL_3:
        v5 = v4[1];
        if (v6 >= v5)
        {
          goto LABEL_226;
        }

        continue;
      }

      while (1)
      {
        v72 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v73 = *(v7 + 4);
          v74 = *(v7 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_194:
          if (v76)
          {
            goto LABEL_242;
          }

          v89 = &v7[16 * v69];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_245;
          }

          v95 = &v7[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_248;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_249;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v69 - 2;
            }

            goto LABEL_215;
          }

          goto LABEL_208;
        }

        v99 = &v7[16 * v69];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_208:
        if (v94)
        {
          goto LABEL_244;
        }

        v102 = &v7[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_247;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_215:
        v110 = v72 - 1;
        if (v72 - 1 >= v69)
        {
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
          goto LABEL_257;
        }

        if (!*v4)
        {
          goto LABEL_260;
        }

        v111 = v6;
        v112 = *&v7[16 * v110 + 32];
        v6 = *&v7[16 * v72 + 40];
        sub_1D1935F8C((*v4 + v112), (*v4 + *&v7[16 * v72 + 32]), &v6[*v4], v71);
        if (v125)
        {
        }

        if (v6 < v112)
        {
          goto LABEL_238;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D1E0BE44(v7);
        }

        if (v110 >= *(v7 + 2))
        {
          goto LABEL_239;
        }

        v113 = &v7[16 * v110];
        *(v113 + 4) = v112;
        *(v113 + 5) = v6;
        v128 = v7;
        result = sub_1D1E0BDB8(v72);
        v7 = v128;
        v69 = *(v128 + 2);
        v6 = v111;
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v7[16 * v69 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_240;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_241;
      }

      v84 = &v7[16 * v69];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_243;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_246;
      }

      if (v88 >= v80)
      {
        v106 = &v7[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_250;
        }

        if (v75 < v109)
        {
          v72 = v69 - 2;
        }

        goto LABEL_215;
      }

      goto LABEL_194;
    }

    break;
  }

  v40 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_256;
  }

  if (v40 >= v39)
  {
    v40 = v4[1];
  }

  if (v40 < v8)
  {
LABEL_257:
    __break(1u);
    goto LABEL_258;
  }

  if (v6 == v40)
  {
    goto LABEL_174;
  }

  v41 = *v4;
  v42 = v6;
  v43 = &v6[v41];
  v118 = v8;
  v44 = v8 - v42;
  v121 = v40;
  while (2)
  {
    v124 = v42;
    v45 = v42[v41];
    v46 = v44;
    v47 = v43;
LABEL_103:
    v48 = *(v47 - 1);
    if (!(v45 >> 6))
    {
      if (v45 <= 4u)
      {
        if (v45 <= 1u)
        {
          if (v45)
          {
            v54 = 0xD000000000000017;
            v55 = "HFVacuumCleanMode_Quiet";
          }

          else
          {
            v54 = 0xD000000000000016;
            v55 = "HFVacuumCleanMode_Quick";
          }
        }

        else if (v45 == 2)
        {
          v54 = 0xD000000000000017;
          v55 = "HFVacuumCleanMode_LowNoise";
        }

        else if (v45 == 3)
        {
          v54 = 0xD00000000000001ALL;
          v55 = "HFVacuumCleanMode_LowEnergy";
        }

        else
        {
          v54 = 0xD00000000000001BLL;
          v55 = "HFVacuumCleanMode_Vacation";
        }

        goto LABEL_149;
      }

      if (v45 <= 6u)
      {
        if (v45 != 5)
        {
          v57 = "HFVacuumCleanMode_Max";
          goto LABEL_152;
        }

        v54 = 0xD00000000000001ALL;
        v55 = "HFVacuumCleanMode_Min";
      }

      else
      {
        if (v45 == 7)
        {
          v57 = "HFVacuumCleanMode_Night";
          goto LABEL_152;
        }

        if (v45 != 8)
        {
          v57 = "SecondaryTag(_:existingTags:)";
          goto LABEL_152;
        }

        v54 = 0xD000000000000017;
        v55 = "HFVacuumCleanMode_Day";
      }

LABEL_149:
      v59 = v55 | 0x8000000000000000;
LABEL_153:
      v49 = static String.hfLocalized(_:)(v54, v59);
      v50 = v60;
      v51 = v48 >> 6;
      if (v48 >> 6)
      {
        goto LABEL_154;
      }

LABEL_106:
      if (v48 <= 4)
      {
        if (v48 <= 1)
        {
          if (v48)
          {
            v52 = 0xD000000000000017;
            v53 = "HFVacuumCleanMode_Quiet";
          }

          else
          {
            v52 = 0xD000000000000016;
            v53 = "HFVacuumCleanMode_Quick";
          }
        }

        else if (v48 == 2)
        {
          v52 = 0xD000000000000017;
          v53 = "HFVacuumCleanMode_LowNoise";
        }

        else if (v48 == 3)
        {
          v52 = 0xD00000000000001ALL;
          v53 = "HFVacuumCleanMode_LowEnergy";
        }

        else
        {
          v52 = 0xD00000000000001BLL;
          v53 = "HFVacuumCleanMode_Vacation";
        }

        goto LABEL_165;
      }

      if (v48 <= 6)
      {
        if (v48 == 5)
        {
          v52 = 0xD00000000000001ALL;
          v53 = "HFVacuumCleanMode_Min";
          goto LABEL_165;
        }

        v58 = "HFVacuumCleanMode_Max";
      }

      else if (v48 == 7)
      {
        v58 = "HFVacuumCleanMode_Night";
      }

      else
      {
        if (v48 == 8)
        {
          v52 = 0xD000000000000017;
          v53 = "HFVacuumCleanMode_Day";
          goto LABEL_165;
        }

        v58 = "SecondaryTag(_:existingTags:)";
      }

      goto LABEL_162;
    }

    if (v45 >> 6 != 1)
    {
      v56 = v45 & 0x3F;
      if (v56 <= 1)
      {
        if (v56)
        {
          v54 = 0xD000000000000018;
          v55 = "HFVacuumCleanMode_Mop";
        }

        else
        {
          v54 = 0xD00000000000001BLL;
          v55 = "HFVacuumCleanMode_Vacuum";
        }

        goto LABEL_149;
      }

      if (v56 == 2)
      {
        v57 = "HFVacuumCleanMode_VacuumThenMop";
LABEL_152:
        v59 = v57 | 0x8000000000000000;
        v54 = 0xD000000000000015;
        goto LABEL_153;
      }

      v54 = 0xD00000000000001FLL;
      v55 = "HFVacuumCleanMode_Auto";
      goto LABEL_149;
    }

    v49 = 0;
    v50 = 0xE000000000000000;
    v51 = v48 >> 6;
    if (!(v48 >> 6))
    {
      goto LABEL_106;
    }

LABEL_154:
    if (v51 == 1)
    {
      v61 = 0xE000000000000000;
      if (v49)
      {
        break;
      }

      goto LABEL_167;
    }

    if ((v48 & 0x3Fu) > 1)
    {
      if ((v48 & 0x3F) != 2)
      {
        v52 = 0xD00000000000001FLL;
        v53 = "HFVacuumCleanMode_Auto";
        goto LABEL_165;
      }

      v58 = "HFVacuumCleanMode_VacuumThenMop";
LABEL_162:
      v62 = v58 | 0x8000000000000000;
      v52 = 0xD000000000000015;
      goto LABEL_166;
    }

    if ((v48 & 0x3F) != 0)
    {
      v52 = 0xD000000000000018;
      v53 = "HFVacuumCleanMode_Mop";
    }

    else
    {
      v52 = 0xD00000000000001BLL;
      v53 = "HFVacuumCleanMode_Vacuum";
    }

LABEL_165:
    v62 = v53 | 0x8000000000000000;
LABEL_166:
    v63 = static String.hfLocalized(_:)(v52, v62);
    v61 = v64;
    if (v49 != v63)
    {
      break;
    }

LABEL_167:
    if (v50 == v61)
    {

LABEL_101:
      v42 = v124 + 1;
      ++v43;
      --v44;
      if (v124 + 1 == v121)
      {
        v6 = v121;
        v4 = a3;
        v8 = v118;
        goto LABEL_174;
      }

      continue;
    }

    break;
  }

  v65 = sub_1D1E6904C();

  if ((v65 & 1) == 0)
  {
    goto LABEL_101;
  }

  if (v41)
  {
    v45 = *v47;
    *v47 = *(v47 - 1);
    *--v47 = v45;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_101;
    }

    goto LABEL_103;
  }

  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
  return result;
}

uint64_t sub_1D1935960(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(*(v6 + 3) + 16) < *(*(v4 + 3) + 16))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(*(v14 - 1) + 16) < *(*(v6 - 1) + 16))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_1D1935B74(char *__dst, char *a2, char *a3, char *__src, uint64_t *a5)
{
  v5 = __src;
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 31;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - a2;
  v12 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (__src != __dst || &__dst[32 * v10] <= __src)
    {
      v14 = a2;
      memmove(__src, __dst, 32 * v10);
      a2 = v14;
    }

    v15 = &v5[32 * v10];
    if (v8 < 32 || a2 >= v6)
    {
LABEL_24:
      a2 = v7;
      goto LABEL_47;
    }

    v51 = &v5[32 * v10];
    while (1)
    {
      v17 = *(a2 + 2);
      v16 = *(a2 + 3);
      v55 = a2;
      v53 = v5;
      v18 = *(v5 + 2);
      v19 = *(v5 + 3);
      v20 = *a5;

      v22 = sub_1D1A46BE0(v21, v16);

      v23 = *a5;

      v25 = sub_1D1A46BE0(v24, v19);

      if (v22)
      {
        if ((v25 & 1) == 0)
        {

          goto LABEL_18;
        }
      }

      else if (v25)
      {

LABEL_20:
        v28 = v53;
        v5 = v53 + 32;
        a2 = v55;
        if (v7 == v53)
        {
          goto LABEL_22;
        }

LABEL_21:
        v29 = *(v28 + 1);
        *v7 = *v28;
        *(v7 + 1) = v29;
        goto LABEL_22;
      }

      v26 = *(v16 + 16);
      v27 = *(v19 + 16);

      if (v26 >= v27)
      {
        goto LABEL_20;
      }

LABEL_18:
      v28 = v55;
      a2 = v55 + 32;
      v5 = v53;
      if (v7 != v55)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 32;
      v15 = v51;
      if (v5 >= v51 || a2 >= v6)
      {
        goto LABEL_24;
      }
    }
  }

  if (__src != a2 || &a2[32 * v13] <= __src)
  {
    v30 = a2;
    memmove(__src, a2, 32 * v13);
    a2 = v30;
  }

  v15 = &v5[32 * v13];
  if (v11 >= 32 && a2 > v7)
  {
    v54 = v5;
    while (2)
    {
      v6 -= 32;
      v56 = a2;
      while (1)
      {
        v32 = *(v15 - 2);
        v31 = *(v15 - 1);
        v52 = v15;
        v33 = *(a2 - 2);
        v34 = *(a2 - 1);
        v35 = *a5;

        v37 = sub_1D1A46BE0(v36, v31);

        v38 = *a5;

        v40 = sub_1D1A46BE0(v39, v34);

        if (v37)
        {
          break;
        }

        if ((v40 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_39:
        v5 = v54;
        v43 = v52 - 32;
        a2 = v56;
        if (v6 + 32 != v52)
        {
          v44 = *(v52 - 1);
          *v6 = *v43;
          *(v6 + 1) = v44;
        }

        v6 -= 32;
        v15 = v52 - 32;
        if (v43 <= v54)
        {
          v15 = v52 - 32;
          goto LABEL_47;
        }
      }

      if ((v40 & 1) == 0)
      {

LABEL_41:
        v45 = v56 - 32;
        v5 = v54;
        if (v6 + 32 != v56)
        {
          v46 = *(v56 - 1);
          *v6 = *v45;
          *(v6 + 1) = v46;
        }

        v15 = v52;
        if (v52 <= v54 || (a2 = v56 - 32, v45 <= v7))
        {
          a2 = v56 - 32;
          goto LABEL_47;
        }

        continue;
      }

      break;
    }

LABEL_38:
    v41 = *(v31 + 16);
    v42 = *(v34 + 16);

    if (v41 < v42)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

LABEL_47:
  v47 = v15 - v5;
  v48 = v15 - v5 + 31;
  if (v47 < 0)
  {
    v47 = v48;
  }

  if (a2 != v5 || a2 >= &v5[v47 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(a2, v5, 32 * (v47 >> 5));
  }

  return 1;
}

uint64_t sub_1D1935F8C(_BYTE *__dst, _BYTE *__src, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < (a3 - __src))
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v36 = *v6;
        v12 = _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(&v36);
        v14 = v13;
        v35 = v11;
        if (v12 == _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(&v35) && v14 == v15)
        {
        }

        else
        {
          v17 = sub_1D1E6904C();

          if (v17)
          {
            v18 = v6 + 1;
            v19 = v6;
            if (v7 >= v6 && v7 < v18)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }
        }

        v20 = v4 + 1;
        v19 = v4;
        v18 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v20)
          {
            goto LABEL_21;
          }
        }

LABEL_20:
        *v7 = *v19;
LABEL_21:
        ++v7;
        if (v4 < v10)
        {
          v6 = v18;
          if (v18 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_54;
    }

LABEL_53:
    if (v6 >= v10)
    {
      goto LABEL_54;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_52:
    if (v6 != v4)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v34 = v4;
  do
  {
    v21 = v6 - 1;
    --v5;
    v22 = v10;
    while (1)
    {
      v23 = *--v22;
      v24 = v21;
      v25 = *v21;
      v38 = v23;
      v26 = _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(&v38);
      v28 = v27;
      v37 = v25;
      if (v26 != _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(&v37) || v28 != v29)
      {
        break;
      }

LABEL_41:
      v21 = v24;
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = *v22;
      }

      --v5;
      v10 = v22;
      v4 = v34;
      if (v22 <= v34)
      {
        v10 = v22;
        goto LABEL_52;
      }
    }

    v31 = sub_1D1E6904C();

    if ((v31 & 1) == 0)
    {
      goto LABEL_41;
    }

    v32 = v24;
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = *v24;
    }

    v4 = v34;
    if (v10 <= v34)
    {
      break;
    }

    v6 = v32;
  }

  while (v32 > v7);
  v6 = v32;
  if (v32 == v34)
  {
    goto LABEL_53;
  }

LABEL_54:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_1D193628C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439E0, &qword_1D1E72F60);
  result = sub_1D1E6880C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      sub_1D1E6920C();
      v20 = dword_1D1E856A4[v18];
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D19364E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticCameraProfile();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647448, &qword_1D1E85628);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_1D1951AE4(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for StaticCameraProfile);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      StaticCameraProfile.hash(into:)(v36);
      result = sub_1D1E6926C();
      v25 = -1 << *(v11 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v23, type metadata accessor for StaticCameraProfile);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D19367F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaProfile();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647438, &unk_1D1E8EAE0);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_1D1951AE4(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for StaticMediaProfile);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      StaticMediaProfile.hash(into:)(v36);
      result = sub_1D1E6926C();
      v25 = -1 << *(v11 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v23, type metadata accessor for StaticMediaProfile);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D1936AF8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaSystem();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647440, &qword_1D1E85620);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_1D1951AE4(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for StaticMediaSystem);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      StaticMediaSystem.hash(into:)(v36);
      result = sub_1D1E6926C();
      v25 = -1 << *(v11 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v23, type metadata accessor for StaticMediaSystem);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D1936E00(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticAccessory(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647450, &qword_1D1E85630);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_1D1951AE4(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for StaticAccessory);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      StaticAccessory.hash(into:)(v36);
      result = sub_1D1E6926C();
      v25 = -1 << *(v11 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v23, type metadata accessor for StaticAccessory);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D1937108(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticServiceGroup();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647430, &unk_1D1E8EAB0);
  result = sub_1D1E6880C();
  v10 = result;
  if (*(v7 + 16))
  {
    v28 = v2;
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
    v29 = result + 56;
    for (i = v30; v15; ++*(v10 + 16))
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v21 = *(v31 + 72);
      sub_1D1951AE4(*(v7 + 48) + v21 * (v18 | (v11 << 6)), i, type metadata accessor for StaticServiceGroup);
      v22 = *(v10 + 40);
      sub_1D1E6920C();
      StaticServiceGroup.hash(into:)(v32);
      sub_1D1E6926C();
      v23 = -1 << *(v10 + 32);
      v24 = v29;
      v25 = sub_1D1E686CC();
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = sub_1D1951AE4(i, *(v10 + 48) + v25 * v21, type metadata accessor for StaticServiceGroup);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v7 + 32);
    if (v26 >= 64)
    {
      bzero((v7 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v26;
    }

    v2 = v28;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1D19373A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticServiceGroup();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647430, &unk_1D1E8EAB0);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_1D1951AE4(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for StaticServiceGroup);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      StaticServiceGroup.hash(into:)(v36);
      result = sub_1D1E6926C();
      v25 = -1 << *(v11 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v23, type metadata accessor for StaticServiceGroup);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D19376AC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1D1E66A7C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F8, &qword_1D1E72F70);
  result = sub_1D1E6880C();
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
      sub_1D174A5FC(qword_1EE07DD78);
      result = sub_1D1E676DC();
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

uint64_t sub_1D19379F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647458, &qword_1D1E85638);
  result = sub_1D1E6880C();
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
      sub_1D1E6920C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
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

uint64_t sub_1D1937C68(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Action();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474B8, &qword_1D1E85690);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_1D1951AE4(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for Action);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      Action.hash(into:)(v36);
      result = sub_1D1E6926C();
      v25 = -1 << *(v11 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v23, type metadata accessor for Action);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D1937F70(uint64_t a1)
{
  v2 = v1;
  v70 = type metadata accessor for Event.CharacteristicEvent();
  v4 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Event.TimeEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Event();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v65 - v14;
  v16 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v17 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474C0, &qword_1D1E85698);
  result = sub_1D1E6880C();
  v19 = result;
  if (*(v16 + 16))
  {
    v67 = v2;
    v20 = 0;
    v21 = (v16 + 56);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 56);
    v25 = (v22 + 63) >> 6;
    v26 = result + 56;
    v71 = v16;
    v73 = v15;
    v74 = v13;
    while (1)
    {
      if (!v24)
      {
        v29 = v20;
        while (1)
        {
          v20 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            __break(1u);
            goto LABEL_61;
          }

          if (v20 >= v25)
          {
            break;
          }

          v30 = v21[v20];
          ++v29;
          if (v30)
          {
            v28 = __clz(__rbit64(v30));
            v24 = (v30 - 1) & v30;
            goto LABEL_17;
          }
        }

        v64 = 1 << *(v16 + 32);
        if (v64 >= 64)
        {
          bzero(v21, ((v64 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v21 = -1 << v64;
        }

        v2 = v67;
        *(v16 + 16) = 0;
        goto LABEL_59;
      }

      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v31 = *(v16 + 48);
      v77 = *(v75 + 72);
      sub_1D1951AE4(v31 + v77 * (v28 | (v20 << 6)), v15, type metadata accessor for Event);
      v32 = *(v19 + 40);
      sub_1D1E6920C();
      sub_1D1951A7C(v15, v13, type metadata accessor for Event);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v46 = v13;
        v47 = v72;
        sub_1D1951AE4(v46, v72, type metadata accessor for Event.CharacteristicEvent);
        MEMORY[0x1D3892850](2);
        sub_1D1E66A7C();
        sub_1D174A5FC(qword_1EE07DD78);
        sub_1D1E676EC();
        v48 = v70;
        LOBYTE(v78) = *(v47 + *(v70 + 20));
        CharacteristicKind.rawValue.getter();
        sub_1D1E678EC();

        v49 = v47 + *(v48 + 24);
        v51 = *v49;
        v50 = *(v49 + 8);
        v52 = *(v49 + 16);
        v53 = v52 >> 6;
        if (v52 >> 6)
        {
          LOBYTE(v52) = v52 & 0x3F;
          if (v53 == 1)
          {
            v54 = 1;
          }

          else
          {
            v54 = 2;
          }
        }

        else
        {
          v54 = 0;
        }

        MEMORY[0x1D3892850](v54);
        v78 = v51;
        v79 = v50;
        v80 = v52;
        CharacteristicKind.Value.hash(into:)();
        sub_1D1951B4C(v72, type metadata accessor for Event.CharacteristicEvent);
        v16 = v71;
LABEL_44:
        v13 = v74;
        goto LABEL_45;
      }

      v34 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48));
      v35 = v13;
      v36 = v69;
      sub_1D1951AE4(v35, v69, type metadata accessor for Event.TimeEvent);
      MEMORY[0x1D3892850](1);
      Event.TimeEvent.hash(into:)(v81);
      MEMORY[0x1D3892850](v34);
      v37 = v36;
      v13 = v74;
      sub_1D1951B4C(v37, type metadata accessor for Event.TimeEvent);
LABEL_45:
      v15 = v73;
LABEL_46:
      result = sub_1D1E6926C();
      v57 = -1 << *(v19 + 32);
      v58 = result & ~v57;
      v59 = v58 >> 6;
      if (((-1 << v58) & ~*(v26 + 8 * (v58 >> 6))) == 0)
      {
        v60 = 0;
        v61 = (63 - v57) >> 6;
        while (++v59 != v61 || (v60 & 1) == 0)
        {
          v62 = v59 == v61;
          if (v59 == v61)
          {
            v59 = 0;
          }

          v60 |= v62;
          v63 = *(v26 + 8 * v59);
          if (v63 != -1)
          {
            v27 = __clz(__rbit64(~v63)) + (v59 << 6);
            goto LABEL_9;
          }
        }

LABEL_61:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v58) & ~*(v26 + 8 * (v58 >> 6)))) | v58 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      result = sub_1D1951AE4(v15, *(v19 + 48) + v27 * v77, type metadata accessor for Event);
      ++*(v19 + 16);
    }

    v68 = v24;
    v38 = v13;
    v39 = *v13;
    v40 = v13[1];
    v41 = v38[2];
    v42 = *(v38 + 24);
    MEMORY[0x1D3892850](0);
    if (v42 == 1)
    {
      MEMORY[0x1D3892850](1);
      if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v43 = v39;
      }

      else
      {
        v43 = 0;
      }

      MEMORY[0x1D3892890](v43);
      if ((v40 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v44 = v40;
      }

      else
      {
        v44 = 0;
      }

      MEMORY[0x1D3892890](v44);
      if ((v41 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v45 = v41;
      }

      else
      {
        v45 = 0;
      }

      MEMORY[0x1D3892890](v45);
      goto LABEL_41;
    }

    v66 = v41;
    MEMORY[0x1D3892850](0);
    MEMORY[0x1D3892850](v39);
    if (!v40)
    {
      MEMORY[0x1D3892850](0);
      sub_1D1771BD4(v39, 0, v66, 0);
LABEL_41:
      v16 = v71;
      v15 = v73;
      v13 = v74;
      v24 = v68;
      goto LABEL_46;
    }

    v16 = v71;
    v24 = v68;
    if (v40 == 1)
    {
      MEMORY[0x1D3892850](1);
      v55 = v39;
      v56 = 1;
    }

    else
    {
      MEMORY[0x1D3892850](2);
      sub_1D176D4E8(v81, v40);
      v55 = v39;
      v56 = v40;
    }

    sub_1D1771BD4(v55, v56, v66, 0);
    goto LABEL_44;
  }

LABEL_59:

  *v2 = v19;
  return result;
}

uint64_t sub_1D1938654(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticZone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647420, &qword_1D1E85610);
  result = sub_1D1E6880C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_1D176C7A8(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_1D1951AE4(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8, type metadata accessor for StaticZone);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1D193885C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439B8, &qword_1D1E72F48);
  result = sub_1D1E6880C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
    while (1)
    {
      if (!v11)
      {
        v16 = v7;
        while (1)
        {
          v7 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_39;
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

        v28 = 1 << *(v3 + 32);
        if (v28 >= 64)
        {
          bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v28;
        }

        v2 = v29;
        *(v3 + 16) = 0;
        goto LABEL_37;
      }

      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1D1E6920C();
      if (v18 == 2)
      {
        break;
      }

      if (v18 == 1)
      {
        v20 = 0;
LABEL_21:
        MEMORY[0x1D3892850](v20);
        goto LABEL_24;
      }

      MEMORY[0x1D3892850](1);
      sub_1D1E6922C();
      if (v18)
      {
        sub_1D176D4E8(v30, v18);
      }

LABEL_24:
      result = sub_1D1E6926C();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v20 = 2;
    goto LABEL_21;
  }

LABEL_37:

  *v2 = v6;
  return result;
}

uint64_t sub_1D1938AF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_1D1E6920C();
      MEMORY[0x1D3892850](v20);
      result = sub_1D1E6926C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1D1938D40(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473D0, &unk_1D1E8EA80);
  result = sub_1D1E6880C();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v2;
    v40 = v10;
    v14 = 0;
    v15 = (v10 + 56);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = *(v10 + 48);
      v43 = *(v42 + 72);
      sub_1D1951AE4(v25 + v43 * (v22 | (v14 << 6)), v9, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v26 = *(v13 + 40);
      sub_1D1E6920C();
      v27 = v9;
      v28 = v9;
      v29 = v41;
      sub_1D1951A7C(v28, v41, type metadata accessor for WriteInProgressStatusViewModel.ID);
      MEMORY[0x1D3892850](0);
      v30 = sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      (*(*(v30 - 8) + 8))(v29, v30);
      result = sub_1D1E6926C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v9 = v27;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v9 = v27;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_1D1951AE4(v9, *(v13 + 48) + v21 * v43, type metadata accessor for WriteInProgressStatusViewModel.ID);
      ++*(v13 + 16);
      v10 = v40;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    v38 = 1 << *(v10 + 32);
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    v2 = v39;
    *(v10 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

uint64_t sub_1D193912C(uint64_t a1)
{
  v2 = v1;
  v51 = type metadata accessor for StaticResident();
  v47 = *(v51 - 1);
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v8 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474B0, &qword_1D1E85688);
  result = sub_1D1E6880C();
  v10 = result;
  if (*(v7 + 16))
  {
    v45 = v1;
    v46 = result;
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
    v17 = result + 56;
    while (1)
    {
      if (!v15)
      {
        v20 = v11;
        while (1)
        {
          v11 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_50;
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
            v49 = (v21 - 1) & v21;
            goto LABEL_17;
          }
        }

        v44 = 1 << *(v7 + 32);
        if (v44 >= 64)
        {
          bzero(v12, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v12 = -1 << v44;
        }

        v2 = v45;
        *(v7 + 16) = 0;
        break;
      }

      v19 = __clz(__rbit64(v15));
      v49 = (v15 - 1) & v15;
LABEL_17:
      v22 = v7;
      v23 = *(v7 + 48);
      v48 = *(v47 + 72);
      sub_1D1951AE4(v23 + v48 * (v19 | (v11 << 6)), v6, type metadata accessor for StaticResident);
      v24 = *(v10 + 40);
      sub_1D1E6920C();
      sub_1D1E66A7C();
      v50 = sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      v25 = v51;
      v26 = &v6[v51[5]];
      v27 = *v26;
      v28 = *(v26 + 1);
      sub_1D1E678EC();
      v29 = &v6[v25[6]];
      if (*(v29 + 1))
      {
        v30 = *v29;
        sub_1D1E6922C();
        sub_1D1E678EC();
      }

      else
      {
        sub_1D1E6922C();
      }

      v31 = v51;
      sub_1D1771CBC(v52, *&v6[v51[7]]);
      sub_1D1771CBC(v52, *&v6[v31[8]]);
      v32 = &v6[v31[9]];
      v33 = *v32;
      v34 = v32[8];
      if (v34 > 1)
      {
        v7 = v22;
        if (v34 == 2)
        {
          MEMORY[0x1D3892850](5);
          sub_1D1E6922C();
          sub_1D1E6922C();
LABEL_27:
          v10 = v46;
          goto LABEL_35;
        }

        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v35 = 2;
          }

          else
          {
            v35 = 6;
          }
        }

        else
        {
          v35 = v33 != 0;
        }

        MEMORY[0x1D3892850](v35);
        v10 = v46;
      }

      else
      {
        v7 = v22;
        if (v34)
        {
          MEMORY[0x1D3892850](4);
          MEMORY[0x1D3892850](v33);
          goto LABEL_27;
        }

        MEMORY[0x1D3892850](3);
        sub_1D1E6922C();
        if (v33)
        {
          sub_1D176D4E8(v52, v33);
        }

        v10 = v46;
      }

LABEL_35:
      v36 = &v6[v51[10]];
      sub_1D1E676EC();
      result = sub_1D1E6926C();
      v37 = -1 << *(v10 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v17 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v17 + 8 * v39);
          if (v43 != -1)
          {
            v18 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_50:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v38) & ~*(v17 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D1951AE4(v6, *(v10 + 48) + v18 * v48, type metadata accessor for StaticResident);
      ++*(v10 + 16);
      v15 = v49;
    }
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1D1939608(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473C0, &qword_1D1E855D0);
  result = sub_1D1E6880C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
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
      v18 = *(*(v3 + 48) + 2 * (v15 | (v7 << 6)));
      result = MEMORY[0x1D3892820](*(v6 + 40), v18, 2);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 2 * v14) = v18;
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D1939830(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439D8, &qword_1D1E72F58);
  result = sub_1D1E6880C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
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
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      result = MEMORY[0x1D3892820](*(v6 + 40), v18, 4);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D1939A6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473C8, &qword_1D1E855D8);
  result = sub_1D1E6880C();
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
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1D1E6920C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
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
      *(*(v6 + 48) + 4 * v14) = v18;
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

uint64_t sub_1D1939CBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439C8, &qword_1D1E8EB10);
  result = sub_1D1E6880C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      sub_1D1E6920C();
      v20 = dword_1D1E8571C[v18];
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D1939F18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474A0, &qword_1D1E85678);
  result = sub_1D1E6880C();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
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
    v26 = result + 56;
    for (i = v3; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = (*(v3 + 48) + 32 * (v13 | (v7 << 6)));
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      v21 = *(v6 + 40);
      sub_1D1E6920C();
      MEMORY[0x1D3892850](v17);
      sub_1D1E678EC();
      sub_1D176D34C(v28, v20);
      sub_1D1E6926C();
      v22 = -1 << *(v6 + 32);
      result = sub_1D1E686CC();
      *(v26 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v23 = (*(v6 + 48) + 32 * result);
      *v23 = v17;
      v23[1] = v18;
      v3 = i;
      v23[2] = v19;
      v23[3] = v20;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero(v8, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v24;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D193A134(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647488, &qword_1D1E85660);
  result = sub_1D1E6880C();
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
      sub_1D1E6920C();
      sub_1D1E6923C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
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

uint64_t sub_1D193A3F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647498, &qword_1D1E85670);
  result = sub_1D1E6880C();
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
      v19 = (*(v3 + 48) + 2 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1D1E6920C();
      sub_1D1E6922C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
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
      v15 = (*(v6 + 48) + 2 * v14);
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

uint64_t sub_1D193A6B8(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
  v9 = result;
  if (*(v6 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(*(v6 + 48) + (v18 | (v10 << 6)));
      v22 = *(v9 + 40);
      v23 = sub_1D1E6920C();
      a4(v23);
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v6 + 32);
    if (v31 >= 64)
    {
      bzero((v6 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    v5 = v32;
    *(v6 + 16) = 0;
  }

  *v5 = v9;
  return result;
}

uint64_t sub_1D193A92C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    v29 = v4;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1D1E691FC();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    if (v11 >= 64)
    {
      bzero((v5 + 56), 8 * v14);
    }

    else
    {
      *v10 = -1 << v11;
    }

    v4 = v29;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1D193AB48(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v39 - v6);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473F0, &unk_1D1E8EA90);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v43 = *(v41 + 72);
      sub_1D1741A90(v23 + v43 * (v20 | (v12 << 6)), v7, &qword_1EC643018, &qword_1D1E9AC00);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      v25 = v7[3];
      v26 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v25);
      (*(v26 + 8))(v25, v26);
      sub_1D1E678EC();

      v27 = v7[3];
      v28 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v27);
      (*(v28 + 16))(v27, v28);
      sub_1D1E678EC();

      v29 = v42;
      v30 = *(v42 + 36);
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      MEMORY[0x1D3892890](*(v7 + *(v29 + 40)));
      result = sub_1D1E6926C();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v8 = v40;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v8 = v40;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1741A90(v7, *(v11 + 48) + v19 * v43, &qword_1EC643018, &qword_1D1E9AC00);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v38 = 1 << *(v8 + 32);
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    v2 = v39;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D193AF6C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v41 - v6);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473E8, &unk_1D1E8EAA0);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v42 = v2;
    v43 = v8;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v47 = (v16 - 1) & v16;
LABEL_17:
      v23 = *(v8 + 48);
      v46 = *(v44 + 72);
      sub_1D1741A90(v23 + v46 * (v20 | (v12 << 6)), v7, &qword_1EC643010, &qword_1D1E90E20);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      v25 = v7[3];
      v26 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v25);
      v27 = v11;
      (*(v26 + 8))(v25, v26);
      sub_1D1E678EC();

      v28 = v7[3];
      v29 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v28);
      (*(v29 + 16))(v28, v29);
      sub_1D1E678EC();

      v30 = v45;
      v31 = *(v45 + 36);
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      v32 = v7 + *(v30 + 40);
      sub_1D1E676EC();
      result = sub_1D1E6926C();
      v11 = v27;
      v33 = -1 << *(v27 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v8 = v43;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v8 = v43;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1741A90(v7, *(v27 + 48) + v19 * v46, &qword_1EC643010, &qword_1D1E90E20);
      ++*(v27 + 16);
      v16 = v47;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v40 = 1 << *(v8 + 32);
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    v2 = v42;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D193B3C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v48 - v10;
  v12 = _s7MergeIdVMa();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v16 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473D8, &qword_1D1E855E0);
  result = sub_1D1E6880C();
  v18 = result;
  if (*(v15 + 16))
  {
    v55 = v4;
    v49 = v2;
    v19 = 0;
    v20 = (v15 + 56);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 56);
    v24 = (v21 + 63) >> 6;
    v54 = (v5 + 48);
    v50 = (v5 + 8);
    v51 = (v5 + 32);
    v25 = result + 56;
    v52 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = *(v15 + 48);
      v58 = *(v56 + 72);
      v31 = v59;
      sub_1D1951AE4(v30 + v58 * (v27 | (v19 << 6)), v59, _s7MergeIdVMa);
      v32 = v18;
      v33 = *(v18 + 40);
      sub_1D1E6920C();
      sub_1D1741C08(v31, v11, &qword_1EC642590, qword_1D1E71260);
      v34 = v55;
      if ((*v54)(v11, 1, v55) == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        v35 = v53;
        (*v51)(v53, v11, v34);
        sub_1D1E6922C();
        sub_1D174A5FC(qword_1EE07DD78);
        sub_1D1E676EC();
        v36 = v35;
        v15 = v52;
        (*v50)(v36, v34);
      }

      v37 = (v59 + *(v57 + 20));
      v38 = *v37;
      v39 = v37[1];
      sub_1D1E678EC();
      result = sub_1D1E6926C();
      v18 = v32;
      v40 = -1 << *(v32 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v25 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v25 + 8 * v42);
          if (v46 != -1)
          {
            v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v41) & ~*(v25 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_1D1951AE4(v59, *(v32 + 48) + v26 * v58, _s7MergeIdVMa);
      ++*(v32 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    v47 = 1 << *(v15 + 32);
    if (v47 >= 64)
    {
      bzero(v20, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v47;
    }

    v2 = v49;
    *(v15 + 16) = 0;
  }

  *v2 = v18;
  return result;
}

uint64_t sub_1D193B8B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaSystemComponent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474A8, &qword_1D1E85680);
  result = sub_1D1E6880C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_1D176CA00(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_1D1951AE4(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8, type metadata accessor for StaticMediaSystemComponent);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1D193BABC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473B8, &qword_1D1E855C8);
  result = sub_1D1E6880C();
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
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_1D1E6920C();
      sub_1D1E6922C();
      if (v20)
      {
        sub_1D1E678EC();
      }

      result = sub_1D1E6926C();
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

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
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

uint64_t sub_1D193BD38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MatterTilePath(0);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647480, &unk_1D1E8EB00);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v40 + 72);
      sub_1D1951AE4(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for MatterTilePath);
      v25 = *(v11 + 40);
      sub_1D1E6920C();
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78);
      sub_1D1E676EC();
      v26 = v41;
      MEMORY[0x1D3892890](*&v7[*(v41 + 20)]);
      v27 = &v7[*(v26 + 24)];
      if (v27[2] == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        v28 = *v27;
        sub_1D1E6922C();
        sub_1D1E6923C();
      }

      result = sub_1D1E6926C();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v24, type metadata accessor for MatterTilePath);
      ++*(v11 + 16);
      v8 = v39;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v36 = 1 << *(v8 + 32);
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    v2 = v38;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D193C0D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647468, &qword_1D1E85648);
  result = sub_1D1E6880C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_1D176CCD4(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_1D1951AE4(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}